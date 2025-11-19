@interface PLUSSchemaPLUSMediaSuggestion
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (PLUSSchemaPLUSMediaSuggestion)initWithDictionary:(id)a3;
- (PLUSSchemaPLUSMediaSuggestion)initWithJSON:(id)a3;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)addContributingGroundTruth:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation PLUSSchemaPLUSMediaSuggestion

- (PLUSSchemaPLUSMediaSuggestion)initWithDictionary:(id)a3
{
  v26 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v24.receiver = self;
  v24.super_class = PLUSSchemaPLUSMediaSuggestion;
  v5 = [(PLUSSchemaPLUSMediaSuggestion *)&v24 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"source"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[PLUSSchemaPLUSMediaSuggestionSource alloc] initWithDictionary:v6];
      [(PLUSSchemaPLUSMediaSuggestion *)v5 setSource:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"contributingGroundTruth"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v19 = v6;
      v22 = 0u;
      v23 = 0u;
      v20 = 0u;
      v21 = 0u;
      v9 = v8;
      v10 = [v9 countByEnumeratingWithState:&v20 objects:v25 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v21;
        do
        {
          v13 = 0;
          do
          {
            if (*v21 != v12)
            {
              objc_enumerationMutation(v9);
            }

            v14 = *(*(&v20 + 1) + 8 * v13);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v15 = [[PLUSSchemaPLUSMediaGroundTruthSummary alloc] initWithDictionary:v14];
              [(PLUSSchemaPLUSMediaSuggestion *)v5 addContributingGroundTruth:v15];
            }

            ++v13;
          }

          while (v11 != v13);
          v11 = [v9 countByEnumeratingWithState:&v20 objects:v25 count:16];
        }

        while (v11);
      }

      v6 = v19;
    }

    v16 = [v4 objectForKeyedSubscript:@"locality"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[PLUSSchemaPLUSMediaSuggestion setLocality:](v5, "setLocality:", [v16 intValue]);
    }

    v17 = v5;
  }

  return v5;
}

- (PLUSSchemaPLUSMediaSuggestion)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(PLUSSchemaPLUSMediaSuggestion *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(PLUSSchemaPLUSMediaSuggestion *)self dictionaryRepresentation];
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
  v23 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if ([(NSArray *)self->_contributingGroundTruths count])
  {
    v4 = [MEMORY[0x1E695DF70] array];
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v5 = self->_contributingGroundTruths;
    v6 = [(NSArray *)v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v19;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v19 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = [*(*(&v18 + 1) + 8 * i) dictionaryRepresentation];
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

        v7 = [(NSArray *)v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v7);
    }

    [v3 setObject:v4 forKeyedSubscript:@"contributingGroundTruth"];
  }

  if (*&self->_has)
  {
    v12 = [(PLUSSchemaPLUSMediaSuggestion *)self locality]- 1;
    if (v12 > 2)
    {
      v13 = @"PLUSMEDIASUGGESTIONLOCALITY_UNKNOWN";
    }

    else
    {
      v13 = off_1E78E0870[v12];
    }

    [v3 setObject:v13 forKeyedSubscript:{@"locality", v18}];
  }

  if (self->_source)
  {
    v14 = [(PLUSSchemaPLUSMediaSuggestion *)self source];
    v15 = [v14 dictionaryRepresentation];
    if (v15)
    {
      [v3 setObject:v15 forKeyedSubscript:@"source"];
    }

    else
    {
      v16 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v16 forKeyedSubscript:@"source"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3, v18];

  return v3;
}

- (unint64_t)hash
{
  v3 = [(PLUSSchemaPLUSMediaSuggestionSource *)self->_source hash];
  v4 = [(NSArray *)self->_contributingGroundTruths hash];
  if (*&self->_has)
  {
    v5 = 2654435761 * self->_locality;
  }

  else
  {
    v5 = 0;
  }

  return v4 ^ v3 ^ v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  v5 = [(PLUSSchemaPLUSMediaSuggestion *)self source];
  v6 = [v4 source];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_11;
  }

  v7 = [(PLUSSchemaPLUSMediaSuggestion *)self source];
  if (v7)
  {
    v8 = v7;
    v9 = [(PLUSSchemaPLUSMediaSuggestion *)self source];
    v10 = [v4 source];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  v5 = [(PLUSSchemaPLUSMediaSuggestion *)self contributingGroundTruths];
  v6 = [v4 contributingGroundTruths];
  if ((v5 != 0) == (v6 == 0))
  {
LABEL_11:

    goto LABEL_12;
  }

  v12 = [(PLUSSchemaPLUSMediaSuggestion *)self contributingGroundTruths];
  if (v12)
  {
    v13 = v12;
    v14 = [(PLUSSchemaPLUSMediaSuggestion *)self contributingGroundTruths];
    v15 = [v4 contributingGroundTruths];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  if ((*&self->_has & 1) == (v4[28] & 1))
  {
    if ((*&self->_has & 1) == 0 || (locality = self->_locality, locality == [v4 locality]))
    {
      v17 = 1;
      goto LABEL_13;
    }
  }

LABEL_12:
  v17 = 0;
LABEL_13:

  return v17;
}

- (void)writeTo:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(PLUSSchemaPLUSMediaSuggestion *)self source];

  if (v5)
  {
    v6 = [(PLUSSchemaPLUSMediaSuggestion *)self source];
    PBDataWriterWriteSubmessage();
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v7 = self->_contributingGroundTruths;
  v8 = [(NSArray *)v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v13;
    do
    {
      v11 = 0;
      do
      {
        if (*v13 != v10)
        {
          objc_enumerationMutation(v7);
        }

        PBDataWriterWriteSubmessage();
        ++v11;
      }

      while (v9 != v11);
      v9 = [(NSArray *)v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v9);
  }

  if (*&self->_has)
  {
    PBDataWriterWriteInt32Field();
  }
}

- (void)addContributingGroundTruth:(id)a3
{
  v4 = a3;
  contributingGroundTruths = self->_contributingGroundTruths;
  v8 = v4;
  if (!contributingGroundTruths)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_contributingGroundTruths;
    self->_contributingGroundTruths = v6;

    v4 = v8;
    contributingGroundTruths = self->_contributingGroundTruths;
  }

  [(NSArray *)contributingGroundTruths addObject:v4];
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = PLUSSchemaPLUSMediaSuggestion;
  v5 = [(SISchemaInstrumentationMessage *)&v12 applySensitiveConditionsPolicy:v4];
  v6 = [(PLUSSchemaPLUSMediaSuggestion *)self source];
  v7 = [v6 applySensitiveConditionsPolicy:v4];
  v8 = [v7 suppressMessage];

  if (v8)
  {
    [(PLUSSchemaPLUSMediaSuggestion *)self deleteSource];
  }

  v9 = [(PLUSSchemaPLUSMediaSuggestion *)self contributingGroundTruths];
  v10 = [(SISchemaInstrumentationMessage *)self _pruneSuppressedMessagesFromArray:v9 underConditions:v4];
  [(PLUSSchemaPLUSMediaSuggestion *)self setContributingGroundTruths:v10];

  return v5;
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end