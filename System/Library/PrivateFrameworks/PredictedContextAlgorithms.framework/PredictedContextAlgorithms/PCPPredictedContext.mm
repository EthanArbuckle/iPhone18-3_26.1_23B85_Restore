@interface PCPPredictedContext
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsContextType:(id)type;
- (int)contextType;
- (unint64_t)hash;
- (void)addSources:(id)sources;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasContextType:(BOOL)type;
- (void)writeTo:(id)to;
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

- (void)setHasContextType:(BOOL)type
{
  if (type)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (int)StringAsContextType:(id)type
{
  typeCopy = type;
  if ([typeCopy isEqualToString:@"Unknown"])
  {
    v4 = 0;
  }

  else if ([typeCopy isEqualToString:@"Location"])
  {
    v4 = 1;
  }

  else if ([typeCopy isEqualToString:@"Transition"])
  {
    v4 = 2;
  }

  else if ([typeCopy isEqualToString:@"Activity"])
  {
    v4 = 3;
  }

  else if ([typeCopy isEqualToString:@"Workout"])
  {
    v4 = 4;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)addSources:(id)sources
{
  sourcesCopy = sources;
  sources = self->_sources;
  v8 = sourcesCopy;
  if (!sources)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_sources;
    self->_sources = v6;

    sourcesCopy = v8;
    sources = self->_sources;
  }

  [(NSMutableArray *)sources addObject:sourcesCopy];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = PCPPredictedContext;
  v4 = [(PCPPredictedContext *)&v8 description];
  dictionaryRepresentation = [(PCPPredictedContext *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  v24 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
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

    [dictionary setObject:v6 forKey:@"contextType"];

    has = self->_has;
  }

  if (has)
  {
    v7 = [MEMORY[0x1E696AD98] numberWithDouble:self->_probability];
    [dictionary setObject:v7 forKey:@"probability"];
  }

  dateInterval = self->_dateInterval;
  if (dateInterval)
  {
    dictionaryRepresentation = [(PCPPredictedContextDateInterval *)dateInterval dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation forKey:@"dateInterval"];
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

          dictionaryRepresentation2 = [*(*(&v19 + 1) + 8 * i) dictionaryRepresentation];
          [v10 addObject:dictionaryRepresentation2];
        }

        v13 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v13);
    }

    [dictionary setObject:v10 forKey:@"sources"];
  }

  v17 = *MEMORY[0x1E69E9840];

  return dictionary;
}

- (void)writeTo:(id)to
{
  v20 = *MEMORY[0x1E69E9840];
  toCopy = to;
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

- (void)copyTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if ((has & 2) != 0)
  {
    toCopy[4] = self->_contextType;
    *(toCopy + 40) |= 2u;
    has = self->_has;
  }

  if (has)
  {
    *(toCopy + 1) = *&self->_probability;
    *(toCopy + 40) |= 1u;
  }

  v10 = toCopy;
  if (self->_dateInterval)
  {
    [toCopy setDateInterval:?];
  }

  if ([(PCPPredictedContext *)self sourcesCount])
  {
    [v10 clearSources];
    sourcesCount = [(PCPPredictedContext *)self sourcesCount];
    if (sourcesCount)
    {
      v7 = sourcesCount;
      for (i = 0; i != v7; ++i)
      {
        v9 = [(PCPPredictedContext *)self sourcesAtIndex:i];
        [v10 addSources:v9];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v23 = *MEMORY[0x1E69E9840];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
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

  v8 = [(PCPPredictedContextDateInterval *)self->_dateInterval copyWithZone:zone];
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

        v15 = [*(*(&v18 + 1) + 8 * i) copyWithZone:{zone, v18}];
        [v6 addSources:v15];
      }

      v12 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v12);
  }

  v16 = *MEMORY[0x1E69E9840];
  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_16;
  }

  v5 = *(equalCopy + 40);
  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 40) & 2) == 0 || self->_contextType != *(equalCopy + 4))
    {
      goto LABEL_16;
    }
  }

  else if ((*(equalCopy + 40) & 2) != 0)
  {
LABEL_16:
    v8 = 0;
    goto LABEL_17;
  }

  if (*&self->_has)
  {
    if ((*(equalCopy + 40) & 1) == 0 || self->_probability != *(equalCopy + 1))
    {
      goto LABEL_16;
    }
  }

  else if (*(equalCopy + 40))
  {
    goto LABEL_16;
  }

  dateInterval = self->_dateInterval;
  if (dateInterval | *(equalCopy + 3) && ![(PCPPredictedContextDateInterval *)dateInterval isEqual:?])
  {
    goto LABEL_16;
  }

  sources = self->_sources;
  if (sources | *(equalCopy + 4))
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

- (void)mergeFrom:(id)from
{
  v20 = *MEMORY[0x1E69E9840];
  fromCopy = from;
  v5 = fromCopy;
  v6 = *(fromCopy + 40);
  if ((v6 & 2) != 0)
  {
    self->_contextType = *(fromCopy + 4);
    *&self->_has |= 2u;
    v6 = *(fromCopy + 40);
  }

  if (v6)
  {
    self->_probability = *(fromCopy + 1);
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