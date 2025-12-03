@interface DODMLASRSchemaDODMLASRResultInfo
- (BOOL)isEqual:(id)equal;
- (DODMLASRSchemaDODMLASRResultInfo)initWithDictionary:(id)dictionary;
- (DODMLASRSchemaDODMLASRResultInfo)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)addChoices:(id)choices;
- (void)writeTo:(id)to;
@end

@implementation DODMLASRSchemaDODMLASRResultInfo

- (DODMLASRSchemaDODMLASRResultInfo)initWithDictionary:(id)dictionary
{
  v26 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v24.receiver = self;
  v24.super_class = DODMLASRSchemaDODMLASRResultInfo;
  v5 = [(DODMLASRSchemaDODMLASRResultInfo *)&v24 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"stageName"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(DODMLASRSchemaDODMLASRResultInfo *)v5 setStageName:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"isAligned"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[DODMLASRSchemaDODMLASRResultInfo setIsAligned:](v5, "setIsAligned:", [v8 BOOLValue]);
    }

    v9 = [dictionaryCopy objectForKeyedSubscript:@"choices"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v19 = v8;
      v22 = 0u;
      v23 = 0u;
      v20 = 0u;
      v21 = 0u;
      v10 = v9;
      v11 = [v10 countByEnumeratingWithState:&v20 objects:v25 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = *v21;
        do
        {
          for (i = 0; i != v12; ++i)
          {
            if (*v21 != v13)
            {
              objc_enumerationMutation(v10);
            }

            v15 = *(*(&v20 + 1) + 8 * i);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v16 = [[DODMLASRSchemaDODMLASRChoiceInfo alloc] initWithDictionary:v15];
              [(DODMLASRSchemaDODMLASRResultInfo *)v5 addChoices:v16];
            }
          }

          v12 = [v10 countByEnumeratingWithState:&v20 objects:v25 count:16];
        }

        while (v12);
      }

      v8 = v19;
    }

    v17 = v5;
  }

  return v5;
}

- (DODMLASRSchemaDODMLASRResultInfo)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(DODMLASRSchemaDODMLASRResultInfo *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(DODMLASRSchemaDODMLASRResultInfo *)self dictionaryRepresentation];
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
  v21 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if ([(NSArray *)self->_choices count])
  {
    array = [MEMORY[0x1E695DF70] array];
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v5 = self->_choices;
    v6 = [(NSArray *)v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v17;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v17 != v8)
          {
            objc_enumerationMutation(v5);
          }

          dictionaryRepresentation = [*(*(&v16 + 1) + 8 * i) dictionaryRepresentation];
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

        v7 = [(NSArray *)v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v7);
    }

    [dictionary setObject:array forKeyedSubscript:@"choices"];
  }

  if (*&self->_has)
  {
    v12 = [MEMORY[0x1E696AD98] numberWithBool:{-[DODMLASRSchemaDODMLASRResultInfo isAligned](self, "isAligned")}];
    [dictionary setObject:v12 forKeyedSubscript:@"isAligned"];
  }

  if (self->_stageName)
  {
    stageName = [(DODMLASRSchemaDODMLASRResultInfo *)self stageName];
    v14 = [stageName copy];
    [dictionary setObject:v14 forKeyedSubscript:@"stageName"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary, v16];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_stageName hash];
  if (*&self->_has)
  {
    v4 = 2654435761 * self->_isAligned;
  }

  else
  {
    v4 = 0;
  }

  return v4 ^ v3 ^ [(NSArray *)self->_choices hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_15;
  }

  stageName = [(DODMLASRSchemaDODMLASRResultInfo *)self stageName];
  stageName2 = [equalCopy stageName];
  if ((stageName != 0) == (stageName2 == 0))
  {
    goto LABEL_14;
  }

  stageName3 = [(DODMLASRSchemaDODMLASRResultInfo *)self stageName];
  if (stageName3)
  {
    v8 = stageName3;
    stageName4 = [(DODMLASRSchemaDODMLASRResultInfo *)self stageName];
    stageName5 = [equalCopy stageName];
    v11 = [stageName4 isEqual:stageName5];

    if (!v11)
    {
      goto LABEL_15;
    }
  }

  else
  {
  }

  if ((*&self->_has & 1) != (equalCopy[32] & 1))
  {
    goto LABEL_15;
  }

  if (*&self->_has)
  {
    isAligned = self->_isAligned;
    if (isAligned != [equalCopy isAligned])
    {
      goto LABEL_15;
    }
  }

  stageName = [(DODMLASRSchemaDODMLASRResultInfo *)self choices];
  stageName2 = [equalCopy choices];
  if ((stageName != 0) != (stageName2 == 0))
  {
    choices = [(DODMLASRSchemaDODMLASRResultInfo *)self choices];
    if (!choices)
    {

LABEL_18:
      v18 = 1;
      goto LABEL_16;
    }

    v14 = choices;
    choices2 = [(DODMLASRSchemaDODMLASRResultInfo *)self choices];
    choices3 = [equalCopy choices];
    v17 = [choices2 isEqual:choices3];

    if (v17)
    {
      goto LABEL_18;
    }
  }

  else
  {
LABEL_14:
  }

LABEL_15:
  v18 = 0;
LABEL_16:

  return v18;
}

- (void)writeTo:(id)to
{
  v16 = *MEMORY[0x1E69E9840];
  toCopy = to;
  stageName = [(DODMLASRSchemaDODMLASRResultInfo *)self stageName];

  if (stageName)
  {
    PBDataWriterWriteStringField();
  }

  if (*&self->_has)
  {
    PBDataWriterWriteBOOLField();
  }

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v6 = self->_choices;
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

- (void)addChoices:(id)choices
{
  choicesCopy = choices;
  choices = self->_choices;
  v8 = choicesCopy;
  if (!choices)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_choices;
    self->_choices = array;

    choicesCopy = v8;
    choices = self->_choices;
  }

  [(NSArray *)choices addObject:choicesCopy];
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  v9.receiver = self;
  v9.super_class = DODMLASRSchemaDODMLASRResultInfo;
  policyCopy = policy;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:policyCopy];
  v6 = [(DODMLASRSchemaDODMLASRResultInfo *)self choices:v9.receiver];
  v7 = [(SISchemaInstrumentationMessage *)self _pruneSuppressedMessagesFromArray:v6 underConditions:policyCopy];

  [(DODMLASRSchemaDODMLASRResultInfo *)self setChoices:v7];

  return v5;
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end