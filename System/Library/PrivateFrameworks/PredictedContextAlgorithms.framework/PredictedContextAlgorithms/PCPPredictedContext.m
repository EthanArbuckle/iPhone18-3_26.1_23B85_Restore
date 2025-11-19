@interface PCPPredictedContext
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsContextType:(id)a3;
- (int)contextType;
- (unint64_t)hash;
- (void)addSources:(id)a3;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasContextType:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation PCPPredictedContext

- (int)contextType
{
  if ((*&self->_has & 2) != 0)
  {
    return self->_contextType;
  }

  else
  {
    return 0;
  }
}

- (void)setHasContextType:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (int)StringAsContextType:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"Unknown"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"Location"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"Transition"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"Activity"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"Workout"])
  {
    v4 = 4;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)addSources:(id)a3
{
  v4 = a3;
  sources = self->_sources;
  v8 = v4;
  if (!sources)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_sources;
    self->_sources = v6;

    v4 = v8;
    sources = self->_sources;
  }

  [(NSMutableArray *)sources addObject:v4];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = PCPPredictedContext;
  v4 = [(PCPPredictedContext *)&v8 description];
  v5 = [(PCPPredictedContext *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  has = self->_has;
  if ((has & 2) != 0)
  {
    contextType = self->_contextType;
    if (contextType >= 5)
    {
      v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_contextType];
    }

    else
    {
      v6 = off_1E83B8530[contextType];
    }

    [v3 setObject:v6 forKey:@"contextType"];

    has = self->_has;
  }

  if (has)
  {
    v7 = [MEMORY[0x1E696AD98] numberWithDouble:self->_probability];
    [v3 setObject:v7 forKey:@"probability"];
  }

  dateInterval = self->_dateInterval;
  if (dateInterval)
  {
    v9 = [(PCPPredictedContextDateInterval *)dateInterval dictionaryRepresentation];
    [v3 setObject:v9 forKey:@"dateInterval"];
  }

  if ([(NSMutableArray *)self->_sources count])
  {
    v10 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_sources, "count")}];
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v11 = self->_sources;
    v12 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v20;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v20 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = [*(*(&v19 + 1) + 8 * i) dictionaryRepresentation];
          [v10 addObject:v16];
        }

        v13 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v13);
    }

    [v3 setObject:v10 forKey:@"sources"];
  }

  v17 = *MEMORY[0x1E69E9840];

  return v3;
}

- (void)writeTo:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  has = self->_has;
  if ((has & 2) != 0)
  {
    contextType = self->_contextType;
    PBDataWriterWriteInt32Field();
    has = self->_has;
  }

  if (has)
  {
    probability = self->_probability;
    PBDataWriterWriteDoubleField();
  }

  if (self->_dateInterval)
  {
    PBDataWriterWriteSubmessage();
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v8 = self->_sources;
  v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v16;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v16 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v15 + 1) + 8 * i);
        PBDataWriterWriteSubmessage();
      }

      v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v10);
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  if ((has & 2) != 0)
  {
    v4[4] = self->_contextType;
    *(v4 + 40) |= 2u;
    has = self->_has;
  }

  if (has)
  {
    *(v4 + 1) = *&self->_probability;
    *(v4 + 40) |= 1u;
  }

  v10 = v4;
  if (self->_dateInterval)
  {
    [v4 setDateInterval:?];
  }

  if ([(PCPPredictedContext *)self sourcesCount])
  {
    [v10 clearSources];
    v6 = [(PCPPredictedContext *)self sourcesCount];
    if (v6)
    {
      v7 = v6;
      for (i = 0; i != v7; ++i)
      {
        v9 = [(PCPPredictedContext *)self sourcesAtIndex:i];
        [v10 addSources:v9];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  has = self->_has;
  if ((has & 2) != 0)
  {
    *(v5 + 16) = self->_contextType;
    *(v5 + 40) |= 2u;
    has = self->_has;
  }

  if (has)
  {
    *(v5 + 8) = self->_probability;
    *(v5 + 40) |= 1u;
  }

  v8 = [(PCPPredictedContextDateInterval *)self->_dateInterval copyWithZone:a3];
  v9 = v6[3];
  v6[3] = v8;

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v10 = self->_sources;
  v11 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v19;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v19 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = [*(*(&v18 + 1) + 8 * i) copyWithZone:{a3, v18}];
        [v6 addSources:v15];
      }

      v12 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v12);
  }

  v16 = *MEMORY[0x1E69E9840];
  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_16;
  }

  v5 = *(v4 + 40);
  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 40) & 2) == 0 || self->_contextType != *(v4 + 4))
    {
      goto LABEL_16;
    }
  }

  else if ((*(v4 + 40) & 2) != 0)
  {
LABEL_16:
    v8 = 0;
    goto LABEL_17;
  }

  if (*&self->_has)
  {
    if ((*(v4 + 40) & 1) == 0 || self->_probability != *(v4 + 1))
    {
      goto LABEL_16;
    }
  }

  else if (*(v4 + 40))
  {
    goto LABEL_16;
  }

  dateInterval = self->_dateInterval;
  if (dateInterval | *(v4 + 3) && ![(PCPPredictedContextDateInterval *)dateInterval isEqual:?])
  {
    goto LABEL_16;
  }

  sources = self->_sources;
  if (sources | *(v4 + 4))
  {
    v8 = [(NSMutableArray *)sources isEqual:?];
  }

  else
  {
    v8 = 1;
  }

LABEL_17:

  return v8;
}

- (unint64_t)hash
{
  if ((*&self->_has & 2) != 0)
  {
    v5 = 2654435761 * self->_contextType;
    if (*&self->_has)
    {
      goto LABEL_3;
    }

LABEL_8:
    v9 = 0;
    goto LABEL_9;
  }

  v5 = 0;
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_8;
  }

LABEL_3:
  probability = self->_probability;
  if (probability < 0.0)
  {
    probability = -probability;
  }

  *v2.i64 = floor(probability + 0.5);
  v7 = (probability - *v2.i64) * 1.84467441e19;
  *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
  v8.f64[0] = NAN;
  v8.f64[1] = NAN;
  v9 = 2654435761u * *vbslq_s8(vnegq_f64(v8), v3, v2).i64;
  if (v7 >= 0.0)
  {
    if (v7 > 0.0)
    {
      v9 += v7;
    }
  }

  else
  {
    v9 -= fabs(v7);
  }

LABEL_9:
  v10 = v9 ^ v5 ^ [(PCPPredictedContextDateInterval *)self->_dateInterval hash];
  return v10 ^ [(NSMutableArray *)self->_sources hash];
}

- (void)mergeFrom:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = v4;
  v6 = *(v4 + 40);
  if ((v6 & 2) != 0)
  {
    self->_contextType = *(v4 + 4);
    *&self->_has |= 2u;
    v6 = *(v4 + 40);
  }

  if (v6)
  {
    self->_probability = *(v4 + 1);
    *&self->_has |= 1u;
  }

  dateInterval = self->_dateInterval;
  v8 = *(v5 + 3);
  if (dateInterval)
  {
    if (v8)
    {
      [(PCPPredictedContextDateInterval *)dateInterval mergeFrom:?];
    }
  }

  else if (v8)
  {
    [(PCPPredictedContext *)self setDateInterval:?];
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v9 = *(v5 + 4);
  v10 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v16;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v16 != v12)
        {
          objc_enumerationMutation(v9);
        }

        [(PCPPredictedContext *)self addSources:*(*(&v15 + 1) + 8 * i), v15];
      }

      v11 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v11);
  }

  v14 = *MEMORY[0x1E69E9840];
}

@end