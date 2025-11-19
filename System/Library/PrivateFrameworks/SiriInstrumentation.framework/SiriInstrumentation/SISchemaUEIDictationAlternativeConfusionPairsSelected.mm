@interface SISchemaUEIDictationAlternativeConfusionPairsSelected
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (SISchemaUEIDictationAlternativeConfusionPairsSelected)initWithDictionary:(id)a3;
- (SISchemaUEIDictationAlternativeConfusionPairsSelected)initWithJSON:(id)a3;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)addAlternativeSelections:(id)a3;
- (void)setHasNumInsertions:(BOOL)a3;
- (void)setHasNumSubstitutions:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation SISchemaUEIDictationAlternativeConfusionPairsSelected

- (SISchemaUEIDictationAlternativeConfusionPairsSelected)initWithDictionary:(id)a3
{
  v26 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v24.receiver = self;
  v24.super_class = SISchemaUEIDictationAlternativeConfusionPairsSelected;
  v5 = [(SISchemaUEIDictationAlternativeConfusionPairsSelected *)&v24 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"alternativeSelections"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v22 = 0u;
      v23 = 0u;
      v20 = 0u;
      v21 = 0u;
      v7 = v6;
      v8 = [v7 countByEnumeratingWithState:&v20 objects:v25 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v21;
        do
        {
          v11 = 0;
          do
          {
            if (*v21 != v10)
            {
              objc_enumerationMutation(v7);
            }

            v12 = *(*(&v20 + 1) + 8 * v11);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v13 = [ASRSchemaASRConfusionPairToken alloc];
              v14 = [(ASRSchemaASRConfusionPairToken *)v13 initWithDictionary:v12, v20];
              [(SISchemaUEIDictationAlternativeConfusionPairsSelected *)v5 addAlternativeSelections:v14];
            }

            ++v11;
          }

          while (v9 != v11);
          v9 = [v7 countByEnumeratingWithState:&v20 objects:v25 count:16];
        }

        while (v9);
      }
    }

    v15 = [v4 objectForKeyedSubscript:{@"numDeletions", v20}];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[SISchemaUEIDictationAlternativeConfusionPairsSelected setNumDeletions:](v5, "setNumDeletions:", [v15 intValue]);
    }

    v16 = [v4 objectForKeyedSubscript:@"numInsertions"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[SISchemaUEIDictationAlternativeConfusionPairsSelected setNumInsertions:](v5, "setNumInsertions:", [v16 intValue]);
    }

    v17 = [v4 objectForKeyedSubscript:@"numSubstitutions"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[SISchemaUEIDictationAlternativeConfusionPairsSelected setNumSubstitutions:](v5, "setNumSubstitutions:", [v17 intValue]);
    }

    v18 = v5;
  }

  return v5;
}

- (SISchemaUEIDictationAlternativeConfusionPairsSelected)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(SISchemaUEIDictationAlternativeConfusionPairsSelected *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(SISchemaUEIDictationAlternativeConfusionPairsSelected *)self dictionaryRepresentation];
  if ([MEMORY[0x1E696ACB0] isValidJSONObject:v2])
  {
    v3 = [MEMORY[0x1E696ACB0] dataWithJSONObject:v2 options:0 error:0];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)dictionaryRepresentation
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if ([(NSArray *)self->_alternativeSelections count])
  {
    v4 = [MEMORY[0x1E695DF70] array];
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v5 = self->_alternativeSelections;
    v6 = [(NSArray *)v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v18;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v18 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = [*(*(&v17 + 1) + 8 * i) dictionaryRepresentation];
          if (v10)
          {
            [v4 addObject:v10];
          }

          else
          {
            v11 = [MEMORY[0x1E695DFB0] null];
            [v4 addObject:v11];
          }
        }

        v7 = [(NSArray *)v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v7);
    }

    [v3 setObject:v4 forKeyedSubscript:@"alternativeSelections"];
  }

  has = self->_has;
  if (has)
  {
    v15 = [MEMORY[0x1E696AD98] numberWithInt:{-[SISchemaUEIDictationAlternativeConfusionPairsSelected numDeletions](self, "numDeletions")}];
    [v3 setObject:v15 forKeyedSubscript:@"numDeletions"];

    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_15:
      if ((has & 4) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_16;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_15;
  }

  v16 = [MEMORY[0x1E696AD98] numberWithInt:{-[SISchemaUEIDictationAlternativeConfusionPairsSelected numInsertions](self, "numInsertions", v17)}];
  [v3 setObject:v16 forKeyedSubscript:@"numInsertions"];

  if ((*&self->_has & 4) != 0)
  {
LABEL_16:
    v13 = [MEMORY[0x1E696AD98] numberWithInt:{-[SISchemaUEIDictationAlternativeConfusionPairsSelected numSubstitutions](self, "numSubstitutions", v17)}];
    [v3 setObject:v13 forKeyedSubscript:@"numSubstitutions"];
  }

LABEL_17:
  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3, v17];

  return v3;
}

- (unint64_t)hash
{
  v3 = [(NSArray *)self->_alternativeSelections hash];
  if ((*&self->_has & 1) == 0)
  {
    v4 = 0;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    v5 = 0;
    if ((*&self->_has & 4) != 0)
    {
      goto LABEL_4;
    }

LABEL_7:
    v6 = 0;
    return v4 ^ v3 ^ v5 ^ v6;
  }

  v4 = 2654435761 * self->_numDeletions;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  v5 = 2654435761 * self->_numInsertions;
  if ((*&self->_has & 4) == 0)
  {
    goto LABEL_7;
  }

LABEL_4:
  v6 = 2654435761 * self->_numSubstitutions;
  return v4 ^ v3 ^ v5 ^ v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_20;
  }

  v5 = [(SISchemaUEIDictationAlternativeConfusionPairsSelected *)self alternativeSelections];
  v6 = [v4 alternativeSelections];
  v7 = v6;
  if ((v5 != 0) == (v6 == 0))
  {

    goto LABEL_20;
  }

  v8 = [(SISchemaUEIDictationAlternativeConfusionPairsSelected *)self alternativeSelections];
  if (v8)
  {
    v9 = v8;
    v10 = [(SISchemaUEIDictationAlternativeConfusionPairsSelected *)self alternativeSelections];
    v11 = [v4 alternativeSelections];
    v12 = [v10 isEqual:v11];

    if (!v12)
    {
      goto LABEL_20;
    }
  }

  else
  {
  }

  has = self->_has;
  v14 = v4[28];
  if ((*&has & 1) != (v14 & 1))
  {
LABEL_20:
    v20 = 0;
    goto LABEL_21;
  }

  if (*&has)
  {
    numDeletions = self->_numDeletions;
    if (numDeletions != [v4 numDeletions])
    {
      goto LABEL_20;
    }

    has = self->_has;
    v14 = v4[28];
  }

  v16 = (*&has >> 1) & 1;
  if (v16 != ((v14 >> 1) & 1))
  {
    goto LABEL_20;
  }

  if (v16)
  {
    numInsertions = self->_numInsertions;
    if (numInsertions == [v4 numInsertions])
    {
      has = self->_has;
      v14 = v4[28];
      goto LABEL_16;
    }

    goto LABEL_20;
  }

LABEL_16:
  v18 = (*&has >> 2) & 1;
  if (v18 != ((v14 >> 2) & 1))
  {
    goto LABEL_20;
  }

  if (v18)
  {
    numSubstitutions = self->_numSubstitutions;
    if (numSubstitutions != [v4 numSubstitutions])
    {
      goto LABEL_20;
    }
  }

  v20 = 1;
LABEL_21:

  return v20;
}

- (void)writeTo:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = self->_alternativeSelections;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        PBDataWriterWriteSubmessage();
      }

      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  has = self->_has;
  if ((has & 1) == 0)
  {
    if ((*&self->_has & 2) == 0)
    {
      goto LABEL_10;
    }

LABEL_14:
    PBDataWriterWriteInt32Field();
    if ((*&self->_has & 4) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((has & 2) != 0)
  {
    goto LABEL_14;
  }

LABEL_10:
  if ((has & 4) != 0)
  {
LABEL_11:
    PBDataWriterWriteInt32Field();
  }

LABEL_12:
}

- (void)setHasNumSubstitutions:(BOOL)a3
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

- (void)setHasNumInsertions:(BOOL)a3
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

- (void)addAlternativeSelections:(id)a3
{
  v4 = a3;
  alternativeSelections = self->_alternativeSelections;
  v8 = v4;
  if (!alternativeSelections)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_alternativeSelections;
    self->_alternativeSelections = v6;

    v4 = v8;
    alternativeSelections = self->_alternativeSelections;
  }

  [(NSArray *)alternativeSelections addObject:v4];
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = SISchemaUEIDictationAlternativeConfusionPairsSelected;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:v4];
  if ([v4 isConditionSet:2])
  {
    [(SISchemaUEIDictationAlternativeConfusionPairsSelected *)self deleteAlternativeSelections];
  }

  if ([v4 isConditionSet:4])
  {
    [(SISchemaUEIDictationAlternativeConfusionPairsSelected *)self deleteAlternativeSelections];
  }

  if ([v4 isConditionSet:5])
  {
    [(SISchemaUEIDictationAlternativeConfusionPairsSelected *)self deleteAlternativeSelections];
  }

  if ([v4 isConditionSet:6])
  {
    [(SISchemaUEIDictationAlternativeConfusionPairsSelected *)self deleteAlternativeSelections];
  }

  if ([v4 isConditionSet:7])
  {
    [(SISchemaUEIDictationAlternativeConfusionPairsSelected *)self deleteAlternativeSelections];
  }

  v6 = [(SISchemaUEIDictationAlternativeConfusionPairsSelected *)self alternativeSelections];
  v7 = [(SISchemaInstrumentationMessage *)self _pruneSuppressedMessagesFromArray:v6 underConditions:v4];
  [(SISchemaUEIDictationAlternativeConfusionPairsSelected *)self setAlternativeSelections:v7];

  return v5;
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end