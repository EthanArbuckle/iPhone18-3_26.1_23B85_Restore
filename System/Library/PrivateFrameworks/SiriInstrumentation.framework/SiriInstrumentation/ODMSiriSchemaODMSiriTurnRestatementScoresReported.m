@interface ODMSiriSchemaODMSiriTurnRestatementScoresReported
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (ODMSiriSchemaODMSiriTurnRestatementScoresReported)initWithDictionary:(id)a3;
- (ODMSiriSchemaODMSiriTurnRestatementScoresReported)initWithJSON:(id)a3;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (void)addSiriTurnRestatementScores:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation ODMSiriSchemaODMSiriTurnRestatementScoresReported

- (ODMSiriSchemaODMSiriTurnRestatementScoresReported)initWithDictionary:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v21.receiver = self;
  v21.super_class = ODMSiriSchemaODMSiriTurnRestatementScoresReported;
  v5 = [(ODMSiriSchemaODMSiriTurnRestatementScoresReported *)&v21 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"siriTurnRestatementScores"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v19 = 0u;
      v20 = 0u;
      v17 = 0u;
      v18 = 0u;
      v7 = v6;
      v8 = [v7 countByEnumeratingWithState:&v17 objects:v22 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v18;
        do
        {
          v11 = 0;
          do
          {
            if (*v18 != v10)
            {
              objc_enumerationMutation(v7);
            }

            v12 = *(*(&v17 + 1) + 8 * v11);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v13 = [ODMSiriSchemaODMSiriTurnRestatementScore alloc];
              v14 = [(ODMSiriSchemaODMSiriTurnRestatementScore *)v13 initWithDictionary:v12, v17];
              [(ODMSiriSchemaODMSiriTurnRestatementScoresReported *)v5 addSiriTurnRestatementScores:v14];
            }

            ++v11;
          }

          while (v9 != v11);
          v9 = [v7 countByEnumeratingWithState:&v17 objects:v22 count:16];
        }

        while (v9);
      }
    }

    v15 = v5;
  }

  return v5;
}

- (ODMSiriSchemaODMSiriTurnRestatementScoresReported)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(ODMSiriSchemaODMSiriTurnRestatementScoresReported *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(ODMSiriSchemaODMSiriTurnRestatementScoresReported *)self dictionaryRepresentation];
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
  v18 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if ([(NSArray *)self->_siriTurnRestatementScores count])
  {
    v4 = [MEMORY[0x1E695DF70] array];
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v5 = self->_siriTurnRestatementScores;
    v6 = [(NSArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v14;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v14 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = [*(*(&v13 + 1) + 8 * i) dictionaryRepresentation];
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

        v7 = [(NSArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v7);
    }

    [v3 setObject:v4 forKeyedSubscript:@"siriTurnRestatementScores"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3, v13];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()])
  {
    v5 = [(ODMSiriSchemaODMSiriTurnRestatementScoresReported *)self siriTurnRestatementScores];
    v6 = [v4 siriTurnRestatementScores];
    v7 = v6;
    if ((v5 != 0) != (v6 == 0))
    {
      v8 = [(ODMSiriSchemaODMSiriTurnRestatementScoresReported *)self siriTurnRestatementScores];
      if (!v8)
      {

LABEL_10:
        v13 = 1;
        goto LABEL_8;
      }

      v9 = v8;
      v10 = [(ODMSiriSchemaODMSiriTurnRestatementScoresReported *)self siriTurnRestatementScores];
      v11 = [v4 siriTurnRestatementScores];
      v12 = [v10 isEqual:v11];

      if (v12)
      {
        goto LABEL_10;
      }
    }

    else
    {
    }
  }

  v13 = 0;
LABEL_8:

  return v13;
}

- (void)writeTo:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = self->_siriTurnRestatementScores;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        PBDataWriterWriteSubmessage();
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (void)addSiriTurnRestatementScores:(id)a3
{
  v4 = a3;
  siriTurnRestatementScores = self->_siriTurnRestatementScores;
  v8 = v4;
  if (!siriTurnRestatementScores)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_siriTurnRestatementScores;
    self->_siriTurnRestatementScores = v6;

    v4 = v8;
    siriTurnRestatementScores = self->_siriTurnRestatementScores;
  }

  [(NSArray *)siriTurnRestatementScores addObject:v4];
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v9.receiver = self;
  v9.super_class = ODMSiriSchemaODMSiriTurnRestatementScoresReported;
  v4 = a3;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:v4];
  v6 = [(ODMSiriSchemaODMSiriTurnRestatementScoresReported *)self siriTurnRestatementScores:v9.receiver];
  v7 = [(SISchemaInstrumentationMessage *)self _pruneSuppressedMessagesFromArray:v6 underConditions:v4];

  [(ODMSiriSchemaODMSiriTurnRestatementScoresReported *)self setSiriTurnRestatementScores:v7];

  return v5;
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end