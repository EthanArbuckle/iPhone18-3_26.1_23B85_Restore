@interface PRSiriSchemaPRResponseGenerationRequestStart
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (PRSiriSchemaPRResponseGenerationRequestStart)initWithDictionary:(id)dictionary;
- (PRSiriSchemaPRResponseGenerationRequestStart)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unsigned)actionStatementIdAtIndex:(unint64_t)index;
- (void)addActionStatementId:(unsigned int)id;
- (void)writeTo:(id)to;
@end

@implementation PRSiriSchemaPRResponseGenerationRequestStart

- (PRSiriSchemaPRResponseGenerationRequestStart)initWithDictionary:(id)dictionary
{
  v21 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v19.receiver = self;
  v19.super_class = PRSiriSchemaPRResponseGenerationRequestStart;
  v5 = [(PRSiriSchemaPRResponseGenerationRequestStart *)&v19 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"actionStatementId"];
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

- (PRSiriSchemaPRResponseGenerationRequestStart)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(PRSiriSchemaPRResponseGenerationRequestStart *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(PRSiriSchemaPRResponseGenerationRequestStart *)self dictionaryRepresentation];
  if ([MEMORY[0x1E696ACB0] isValidJSONObject:dictionaryRepresentation])
  {
    v3 = [MEMORY[0x1E696ACB0] dataWithJSONObject:dictionaryRepresentation options:0 error:0];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if ([(NSArray *)self->_actionStatementIds count])
  {
    actionStatementIds = [(PRSiriSchemaPRResponseGenerationRequestStart *)self actionStatementIds];
    v5 = [actionStatementIds copy];
    [dictionary setObject:v5 forKeyedSubscript:@"actionStatementId"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    actionStatementIds = [(PRSiriSchemaPRResponseGenerationRequestStart *)self actionStatementIds];
    actionStatementIds2 = [equalCopy actionStatementIds];
    v7 = actionStatementIds2;
    if ((actionStatementIds != 0) != (actionStatementIds2 == 0))
    {
      actionStatementIds3 = [(PRSiriSchemaPRResponseGenerationRequestStart *)self actionStatementIds];
      if (!actionStatementIds3)
      {

LABEL_10:
        v13 = 1;
        goto LABEL_8;
      }

      v9 = actionStatementIds3;
      actionStatementIds4 = [(PRSiriSchemaPRResponseGenerationRequestStart *)self actionStatementIds];
      actionStatementIds5 = [equalCopy actionStatementIds];
      v12 = [actionStatementIds4 isEqual:actionStatementIds5];

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

- (void)writeTo:(id)to
{
  v15 = *MEMORY[0x1E69E9840];
  toCopy = to;
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

- (unsigned)actionStatementIdAtIndex:(unint64_t)index
{
  v3 = [(NSArray *)self->_actionStatementIds objectAtIndexedSubscript:index];
  unsignedIntValue = [v3 unsignedIntValue];

  return unsignedIntValue;
}

- (void)addActionStatementId:(unsigned int)id
{
  v3 = *&id;
  actionStatementIds = self->_actionStatementIds;
  if (!actionStatementIds)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_actionStatementIds;
    self->_actionStatementIds = array;

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