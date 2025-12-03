@interface DODMLASRSchemaDODMLASREntityScoringResult
- (BOOL)isEqual:(id)equal;
- (DODMLASRSchemaDODMLASREntityScoringResult)initWithDictionary:(id)dictionary;
- (DODMLASRSchemaDODMLASREntityScoringResult)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (void)addEntityScores:(id)scores;
- (void)writeTo:(id)to;
@end

@implementation DODMLASRSchemaDODMLASREntityScoringResult

- (DODMLASRSchemaDODMLASREntityScoringResult)initWithDictionary:(id)dictionary
{
  v25 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v23.receiver = self;
  v23.super_class = DODMLASRSchemaDODMLASREntityScoringResult;
  v5 = [(DODMLASRSchemaDODMLASREntityScoringResult *)&v23 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"referenceName"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(DODMLASRSchemaDODMLASREntityScoringResult *)v5 setReferenceName:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"entityScores"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v18 = v6;
      v21 = 0u;
      v22 = 0u;
      v19 = 0u;
      v20 = 0u;
      v9 = v8;
      v10 = [v9 countByEnumeratingWithState:&v19 objects:v24 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v20;
        do
        {
          v13 = 0;
          do
          {
            if (*v20 != v12)
            {
              objc_enumerationMutation(v9);
            }

            v14 = *(*(&v19 + 1) + 8 * v13);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v15 = [[DODMLASRSchemaDODMLASREntityScore alloc] initWithDictionary:v14];
              [(DODMLASRSchemaDODMLASREntityScoringResult *)v5 addEntityScores:v15];
            }

            ++v13;
          }

          while (v11 != v13);
          v11 = [v9 countByEnumeratingWithState:&v19 objects:v24 count:16];
        }

        while (v11);
      }

      v6 = v18;
    }

    v16 = v5;
  }

  return v5;
}

- (DODMLASRSchemaDODMLASREntityScoringResult)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(DODMLASRSchemaDODMLASREntityScoringResult *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(DODMLASRSchemaDODMLASREntityScoringResult *)self dictionaryRepresentation];
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
  v20 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if ([(NSArray *)self->_entityScores count])
  {
    array = [MEMORY[0x1E695DF70] array];
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v5 = self->_entityScores;
    v6 = [(NSArray *)v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v16;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v16 != v8)
          {
            objc_enumerationMutation(v5);
          }

          dictionaryRepresentation = [*(*(&v15 + 1) + 8 * i) dictionaryRepresentation];
          if (dictionaryRepresentation)
          {
            [array addObject:dictionaryRepresentation];
          }

          else
          {
            null = [MEMORY[0x1E695DFB0] null];
            [array addObject:null];
          }
        }

        v7 = [(NSArray *)v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v7);
    }

    [dictionary setObject:array forKeyedSubscript:@"entityScores"];
  }

  if (self->_referenceName)
  {
    referenceName = [(DODMLASRSchemaDODMLASREntityScoringResult *)self referenceName];
    v13 = [referenceName copy];
    [dictionary setObject:v13 forKeyedSubscript:@"referenceName"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary, v15];

  return dictionary;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  referenceName = [(DODMLASRSchemaDODMLASREntityScoringResult *)self referenceName];
  referenceName2 = [equalCopy referenceName];
  if ((referenceName != 0) == (referenceName2 == 0))
  {
    goto LABEL_11;
  }

  referenceName3 = [(DODMLASRSchemaDODMLASREntityScoringResult *)self referenceName];
  if (referenceName3)
  {
    v8 = referenceName3;
    referenceName4 = [(DODMLASRSchemaDODMLASREntityScoringResult *)self referenceName];
    referenceName5 = [equalCopy referenceName];
    v11 = [referenceName4 isEqual:referenceName5];

    if (!v11)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  referenceName = [(DODMLASRSchemaDODMLASREntityScoringResult *)self entityScores];
  referenceName2 = [equalCopy entityScores];
  if ((referenceName != 0) != (referenceName2 == 0))
  {
    entityScores = [(DODMLASRSchemaDODMLASREntityScoringResult *)self entityScores];
    if (!entityScores)
    {

LABEL_15:
      v17 = 1;
      goto LABEL_13;
    }

    v13 = entityScores;
    entityScores2 = [(DODMLASRSchemaDODMLASREntityScoringResult *)self entityScores];
    entityScores3 = [equalCopy entityScores];
    v16 = [entityScores2 isEqual:entityScores3];

    if (v16)
    {
      goto LABEL_15;
    }
  }

  else
  {
LABEL_11:
  }

LABEL_12:
  v17 = 0;
LABEL_13:

  return v17;
}

- (void)writeTo:(id)to
{
  v16 = *MEMORY[0x1E69E9840];
  toCopy = to;
  referenceName = [(DODMLASRSchemaDODMLASREntityScoringResult *)self referenceName];

  if (referenceName)
  {
    PBDataWriterWriteStringField();
  }

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v6 = self->_entityScores;
  v7 = [(NSArray *)v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v12;
    do
    {
      v10 = 0;
      do
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(v6);
        }

        PBDataWriterWriteSubmessage();
        ++v10;
      }

      while (v8 != v10);
      v8 = [(NSArray *)v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }
}

- (void)addEntityScores:(id)scores
{
  scoresCopy = scores;
  entityScores = self->_entityScores;
  v8 = scoresCopy;
  if (!entityScores)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_entityScores;
    self->_entityScores = array;

    scoresCopy = v8;
    entityScores = self->_entityScores;
  }

  [(NSArray *)entityScores addObject:scoresCopy];
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  v9.receiver = self;
  v9.super_class = DODMLASRSchemaDODMLASREntityScoringResult;
  policyCopy = policy;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:policyCopy];
  v6 = [(DODMLASRSchemaDODMLASREntityScoringResult *)self entityScores:v9.receiver];
  v7 = [(SISchemaInstrumentationMessage *)self _pruneSuppressedMessagesFromArray:v6 underConditions:policyCopy];

  [(DODMLASRSchemaDODMLASREntityScoringResult *)self setEntityScores:v7];

  return v5;
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end