@interface PRSiriSchemaPRResponseGenerationRequestStart
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (PRSiriSchemaPRResponseGenerationRequestStart)initWithDictionary:(id)a3;
- (PRSiriSchemaPRResponseGenerationRequestStart)initWithJSON:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unsigned)actionStatementIdAtIndex:(unint64_t)a3;
- (void)addActionStatementId:(unsigned int)a3;
- (void)writeTo:(id)a3;
@end

@implementation PRSiriSchemaPRResponseGenerationRequestStart

- (PRSiriSchemaPRResponseGenerationRequestStart)initWithDictionary:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v19.receiver = self;
  v19.super_class = PRSiriSchemaPRResponseGenerationRequestStart;
  v5 = [(PRSiriSchemaPRResponseGenerationRequestStart *)&v19 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"actionStatementId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = 0u;
      v18 = 0u;
      v15 = 0u;
      v16 = 0u;
      v7 = v6;
      v8 = [v7 countByEnumeratingWithState:&v15 objects:v20 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v16;
        do
        {
          v11 = 0;
          do
          {
            if (*v16 != v10)
            {
              objc_enumerationMutation(v7);
            }

            v12 = *(*(&v15 + 1) + 8 * v11);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              -[PRSiriSchemaPRResponseGenerationRequestStart addActionStatementId:](v5, "addActionStatementId:", [v12 unsignedIntValue]);
            }

            ++v11;
          }

          while (v9 != v11);
          v9 = [v7 countByEnumeratingWithState:&v15 objects:v20 count:16];
        }

        while (v9);
      }
    }

    v13 = v5;
  }

  return v5;
}

- (PRSiriSchemaPRResponseGenerationRequestStart)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(PRSiriSchemaPRResponseGenerationRequestStart *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(PRSiriSchemaPRResponseGenerationRequestStart *)self dictionaryRepresentation];
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
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if ([(NSArray *)self->_actionStatementIds count])
  {
    v4 = [(PRSiriSchemaPRResponseGenerationRequestStart *)self actionStatementIds];
    v5 = [v4 copy];
    [v3 setObject:v5 forKeyedSubscript:@"actionStatementId"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()])
  {
    v5 = [(PRSiriSchemaPRResponseGenerationRequestStart *)self actionStatementIds];
    v6 = [v4 actionStatementIds];
    v7 = v6;
    if ((v5 != 0) != (v6 == 0))
    {
      v8 = [(PRSiriSchemaPRResponseGenerationRequestStart *)self actionStatementIds];
      if (!v8)
      {

LABEL_10:
        v13 = 1;
        goto LABEL_8;
      }

      v9 = v8;
      v10 = [(PRSiriSchemaPRResponseGenerationRequestStart *)self actionStatementIds];
      v11 = [v4 actionStatementIds];
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
  v5 = self->_actionStatementIds;
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

        [*(*(&v10 + 1) + 8 * v9) unsignedIntValue];
        PBDataWriterWriteUint32Field();
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (unsigned)actionStatementIdAtIndex:(unint64_t)a3
{
  v3 = [(NSArray *)self->_actionStatementIds objectAtIndexedSubscript:a3];
  v4 = [v3 unsignedIntValue];

  return v4;
}

- (void)addActionStatementId:(unsigned int)a3
{
  v3 = *&a3;
  actionStatementIds = self->_actionStatementIds;
  if (!actionStatementIds)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_actionStatementIds;
    self->_actionStatementIds = v6;

    actionStatementIds = self->_actionStatementIds;
  }

  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v3];
  [(NSArray *)actionStatementIds addObject:v8];
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end