@interface AWDCoreRoutineMagicalMomentsExperts
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addExperts:(id)a3;
- (void)addSuggestions:(id)a3;
- (void)copyTo:(id)a3;
- (void)dealloc;
- (void)mergeFrom:(id)a3;
- (void)setHasDurationSinceLastSuccessfulTraining:(BOOL)a3;
- (void)setHasTrainingTime:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation AWDCoreRoutineMagicalMomentsExperts

- (void)dealloc
{
  [(AWDCoreRoutineMagicalMomentsExperts *)self setExperts:0];
  [(AWDCoreRoutineMagicalMomentsExperts *)self setSuggestions:0];
  v3.receiver = self;
  v3.super_class = AWDCoreRoutineMagicalMomentsExperts;
  [(AWDCoreRoutineMagicalMomentsExperts *)&v3 dealloc];
}

- (void)setHasDurationSinceLastSuccessfulTraining:(BOOL)a3
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

- (void)setHasTrainingTime:(BOOL)a3
{
  if (a3)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)addExperts:(id)a3
{
  experts = self->_experts;
  if (!experts)
  {
    experts = objc_alloc_init(MEMORY[0x29EDB8DE8]);
    self->_experts = experts;
  }

  [(NSMutableArray *)experts addObject:a3];
}

- (void)addSuggestions:(id)a3
{
  suggestions = self->_suggestions;
  if (!suggestions)
  {
    suggestions = objc_alloc_init(MEMORY[0x29EDB8DE8]);
    self->_suggestions = suggestions;
  }

  [(NSMutableArray *)suggestions addObject:a3];
}

- (id)description
{
  v3.receiver = self;
  v3.super_class = AWDCoreRoutineMagicalMomentsExperts;
  return [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ %@", -[AWDCoreRoutineMagicalMomentsExperts description](&v3, sel_description), -[AWDCoreRoutineMagicalMomentsExperts dictionaryRepresentation](self, "dictionaryRepresentation")];
}

- (id)dictionaryRepresentation
{
  v29 = *MEMORY[0x29EDCA608];
  v3 = [MEMORY[0x29EDB8E00] dictionary];
  has = self->_has;
  if (has)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_timestamp), @"timestamp"}];
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_3;
  }

  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithInt:", self->_durationSinceLastSuccessfulTraining), @"durationSinceLastSuccessfulTraining"}];
  if ((*&self->_has & 4) != 0)
  {
LABEL_4:
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithInt:", self->_trainingTime), @"trainingTime"}];
  }

LABEL_5:
  if ([(NSMutableArray *)self->_experts count])
  {
    v5 = [objc_alloc(MEMORY[0x29EDB8DE8]) initWithCapacity:{-[NSMutableArray count](self->_experts, "count")}];
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    experts = self->_experts;
    v7 = [(NSMutableArray *)experts countByEnumeratingWithState:&v23 objects:v28 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v24;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v24 != v9)
          {
            objc_enumerationMutation(experts);
          }

          [v5 addObject:{objc_msgSend(*(*(&v23 + 1) + 8 * i), "dictionaryRepresentation")}];
        }

        v8 = [(NSMutableArray *)experts countByEnumeratingWithState:&v23 objects:v28 count:16];
      }

      while (v8);
    }

    [v3 setObject:v5 forKey:@"experts"];
  }

  if ([(NSMutableArray *)self->_suggestions count])
  {
    v11 = [objc_alloc(MEMORY[0x29EDB8DE8]) initWithCapacity:{-[NSMutableArray count](self->_suggestions, "count")}];
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    suggestions = self->_suggestions;
    v13 = [(NSMutableArray *)suggestions countByEnumeratingWithState:&v19 objects:v27 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v20;
      do
      {
        for (j = 0; j != v14; ++j)
        {
          if (*v20 != v15)
          {
            objc_enumerationMutation(suggestions);
          }

          [v11 addObject:{objc_msgSend(*(*(&v19 + 1) + 8 * j), "dictionaryRepresentation")}];
        }

        v14 = [(NSMutableArray *)suggestions countByEnumeratingWithState:&v19 objects:v27 count:16];
      }

      while (v14);
    }

    [v3 setObject:v11 forKey:@"suggestions"];
  }

  v17 = *MEMORY[0x29EDCA608];
  return v3;
}

- (void)writeTo:(id)a3
{
  v31 = *MEMORY[0x29EDCA608];
  has = self->_has;
  if (has)
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteUint64Field();
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_3;
  }

  durationSinceLastSuccessfulTraining = self->_durationSinceLastSuccessfulTraining;
  PBDataWriterWriteInt32Field();
  if ((*&self->_has & 4) != 0)
  {
LABEL_4:
    trainingTime = self->_trainingTime;
    PBDataWriterWriteInt32Field();
  }

LABEL_5:
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  experts = self->_experts;
  v7 = [(NSMutableArray *)experts countByEnumeratingWithState:&v25 objects:v30 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v26;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v26 != v9)
        {
          objc_enumerationMutation(experts);
        }

        v11 = *(*(&v25 + 1) + 8 * i);
        PBDataWriterWriteSubmessage();
      }

      v8 = [(NSMutableArray *)experts countByEnumeratingWithState:&v25 objects:v30 count:16];
    }

    while (v8);
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  suggestions = self->_suggestions;
  v13 = [(NSMutableArray *)suggestions countByEnumeratingWithState:&v21 objects:v29 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v22;
    do
    {
      for (j = 0; j != v14; ++j)
      {
        if (*v22 != v15)
        {
          objc_enumerationMutation(suggestions);
        }

        v17 = *(*(&v21 + 1) + 8 * j);
        PBDataWriterWriteSubmessage();
      }

      v14 = [(NSMutableArray *)suggestions countByEnumeratingWithState:&v21 objects:v29 count:16];
    }

    while (v14);
  }

  v18 = *MEMORY[0x29EDCA608];
}

- (void)copyTo:(id)a3
{
  has = self->_has;
  if ((has & 1) == 0)
  {
    if ((*&self->_has & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_15:
    *(a3 + 4) = self->_durationSinceLastSuccessfulTraining;
    *(a3 + 44) |= 2u;
    if ((*&self->_has & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  *(a3 + 1) = self->_timestamp;
  *(a3 + 44) |= 1u;
  has = self->_has;
  if ((has & 2) != 0)
  {
    goto LABEL_15;
  }

LABEL_3:
  if ((has & 4) != 0)
  {
LABEL_4:
    *(a3 + 10) = self->_trainingTime;
    *(a3 + 44) |= 4u;
  }

LABEL_5:
  if ([(AWDCoreRoutineMagicalMomentsExperts *)self expertsCount])
  {
    [a3 clearExperts];
    v6 = [(AWDCoreRoutineMagicalMomentsExperts *)self expertsCount];
    if (v6)
    {
      v7 = v6;
      for (i = 0; i != v7; ++i)
      {
        [a3 addExperts:{-[AWDCoreRoutineMagicalMomentsExperts expertsAtIndex:](self, "expertsAtIndex:", i)}];
      }
    }
  }

  if ([(AWDCoreRoutineMagicalMomentsExperts *)self suggestionsCount])
  {
    [a3 clearSuggestions];
    v9 = [(AWDCoreRoutineMagicalMomentsExperts *)self suggestionsCount];
    if (v9)
    {
      v10 = v9;
      for (j = 0; j != v10; ++j)
      {
        [a3 addSuggestions:{-[AWDCoreRoutineMagicalMomentsExperts suggestionsAtIndex:](self, "suggestionsAtIndex:", j)}];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v32 = *MEMORY[0x29EDCA608];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  has = self->_has;
  if (has)
  {
    *(v5 + 8) = self->_timestamp;
    *(v5 + 44) |= 1u;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_3;
  }

  *(v5 + 16) = self->_durationSinceLastSuccessfulTraining;
  *(v5 + 44) |= 2u;
  if ((*&self->_has & 4) != 0)
  {
LABEL_4:
    *(v5 + 40) = self->_trainingTime;
    *(v5 + 44) |= 4u;
  }

LABEL_5:
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  experts = self->_experts;
  v9 = [(NSMutableArray *)experts countByEnumeratingWithState:&v26 objects:v31 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v27;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v27 != v11)
        {
          objc_enumerationMutation(experts);
        }

        v13 = [*(*(&v26 + 1) + 8 * i) copyWithZone:a3];
        [v6 addExperts:v13];
      }

      v10 = [(NSMutableArray *)experts countByEnumeratingWithState:&v26 objects:v31 count:16];
    }

    while (v10);
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  suggestions = self->_suggestions;
  v15 = [(NSMutableArray *)suggestions countByEnumeratingWithState:&v22 objects:v30 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v23;
    do
    {
      for (j = 0; j != v16; ++j)
      {
        if (*v23 != v17)
        {
          objc_enumerationMutation(suggestions);
        }

        v19 = [*(*(&v22 + 1) + 8 * j) copyWithZone:a3];
        [v6 addSuggestions:v19];
      }

      v16 = [(NSMutableArray *)suggestions countByEnumeratingWithState:&v22 objects:v30 count:16];
    }

    while (v16);
  }

  v20 = *MEMORY[0x29EDCA608];
  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v5 = [a3 isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    v6 = *(a3 + 44);
    if (*&self->_has)
    {
      if ((*(a3 + 44) & 1) == 0 || self->_timestamp != *(a3 + 1))
      {
        goto LABEL_21;
      }
    }

    else if (*(a3 + 44))
    {
LABEL_21:
      LOBYTE(v5) = 0;
      return v5;
    }

    if ((*&self->_has & 2) != 0)
    {
      if ((*(a3 + 44) & 2) == 0 || self->_durationSinceLastSuccessfulTraining != *(a3 + 4))
      {
        goto LABEL_21;
      }
    }

    else if ((*(a3 + 44) & 2) != 0)
    {
      goto LABEL_21;
    }

    if ((*&self->_has & 4) != 0)
    {
      if ((*(a3 + 44) & 4) == 0 || self->_trainingTime != *(a3 + 10))
      {
        goto LABEL_21;
      }
    }

    else if ((*(a3 + 44) & 4) != 0)
    {
      goto LABEL_21;
    }

    experts = self->_experts;
    if (!(experts | *(a3 + 3)) || (v5 = [(NSMutableArray *)experts isEqual:?]) != 0)
    {
      suggestions = self->_suggestions;
      if (suggestions | *(a3 + 4))
      {

        LOBYTE(v5) = [(NSMutableArray *)suggestions isEqual:?];
      }

      else
      {
        LOBYTE(v5) = 1;
      }
    }
  }

  return v5;
}

- (unint64_t)hash
{
  if ((*&self->_has & 1) == 0)
  {
    v3 = 0;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    v4 = 0;
    if ((*&self->_has & 4) != 0)
    {
      goto LABEL_4;
    }

LABEL_7:
    v5 = 0;
    goto LABEL_8;
  }

  v3 = 2654435761u * self->_timestamp;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  v4 = 2654435761 * self->_durationSinceLastSuccessfulTraining;
  if ((*&self->_has & 4) == 0)
  {
    goto LABEL_7;
  }

LABEL_4:
  v5 = 2654435761 * self->_trainingTime;
LABEL_8:
  v6 = v4 ^ v3 ^ v5 ^ [(NSMutableArray *)self->_experts hash];
  return v6 ^ [(NSMutableArray *)self->_suggestions hash];
}

- (void)mergeFrom:(id)a3
{
  v27 = *MEMORY[0x29EDCA608];
  v5 = *(a3 + 44);
  if (v5)
  {
    self->_timestamp = *(a3 + 1);
    *&self->_has |= 1u;
    v5 = *(a3 + 44);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*(a3 + 44) & 2) == 0)
  {
    goto LABEL_3;
  }

  self->_durationSinceLastSuccessfulTraining = *(a3 + 4);
  *&self->_has |= 2u;
  if ((*(a3 + 44) & 4) != 0)
  {
LABEL_4:
    self->_trainingTime = *(a3 + 10);
    *&self->_has |= 4u;
  }

LABEL_5:
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v6 = *(a3 + 3);
  v7 = [v6 countByEnumeratingWithState:&v21 objects:v26 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v22;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v22 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [(AWDCoreRoutineMagicalMomentsExperts *)self addExperts:*(*(&v21 + 1) + 8 * i)];
      }

      v8 = [v6 countByEnumeratingWithState:&v21 objects:v26 count:16];
    }

    while (v8);
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v11 = *(a3 + 4);
  v12 = [v11 countByEnumeratingWithState:&v17 objects:v25 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v18;
    do
    {
      for (j = 0; j != v13; ++j)
      {
        if (*v18 != v14)
        {
          objc_enumerationMutation(v11);
        }

        [(AWDCoreRoutineMagicalMomentsExperts *)self addSuggestions:*(*(&v17 + 1) + 8 * j)];
      }

      v13 = [v11 countByEnumeratingWithState:&v17 objects:v25 count:16];
    }

    while (v13);
  }

  v16 = *MEMORY[0x29EDCA608];
}

@end