@interface EXPSearchSchemaEXPSearchSessionExperiments
- (BOOL)isEqual:(id)equal;
- (EXPSearchSchemaEXPSearchSessionExperiments)initWithDictionary:(id)dictionary;
- (EXPSearchSchemaEXPSearchSessionExperiments)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (void)addActiveExperiments:(id)experiments;
- (void)writeTo:(id)to;
@end

@implementation EXPSearchSchemaEXPSearchSessionExperiments

- (EXPSearchSchemaEXPSearchSessionExperiments)initWithDictionary:(id)dictionary
{
  v25 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v23.receiver = self;
  v23.super_class = EXPSearchSchemaEXPSearchSessionExperiments;
  v5 = [(EXPSearchSchemaEXPSearchSessionExperiments *)&v23 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"searchSessionId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaUUID alloc] initWithDictionary:v6];
      [(EXPSearchSchemaEXPSearchSessionExperiments *)v5 setSearchSessionId:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"activeExperiments"];
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
              v15 = [[EXPSchemaEXPTrialExperiment alloc] initWithDictionary:v14];
              [(EXPSearchSchemaEXPSearchSessionExperiments *)v5 addActiveExperiments:v15];
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

- (EXPSearchSchemaEXPSearchSessionExperiments)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(EXPSearchSchemaEXPSearchSessionExperiments *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(EXPSearchSchemaEXPSearchSessionExperiments *)self dictionaryRepresentation];
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
  if ([(NSArray *)self->_activeExperiments count])
  {
    array = [MEMORY[0x1E695DF70] array];
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v5 = self->_activeExperiments;
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

    [dictionary setObject:array forKeyedSubscript:@"activeExperiments"];
  }

  if (self->_searchSessionId)
  {
    searchSessionId = [(EXPSearchSchemaEXPSearchSessionExperiments *)self searchSessionId];
    dictionaryRepresentation2 = [searchSessionId dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"searchSessionId"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"searchSessionId"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary, v16];

  return dictionary;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  searchSessionId = [(EXPSearchSchemaEXPSearchSessionExperiments *)self searchSessionId];
  searchSessionId2 = [equalCopy searchSessionId];
  if ((searchSessionId != 0) == (searchSessionId2 == 0))
  {
    goto LABEL_11;
  }

  searchSessionId3 = [(EXPSearchSchemaEXPSearchSessionExperiments *)self searchSessionId];
  if (searchSessionId3)
  {
    v8 = searchSessionId3;
    searchSessionId4 = [(EXPSearchSchemaEXPSearchSessionExperiments *)self searchSessionId];
    searchSessionId5 = [equalCopy searchSessionId];
    v11 = [searchSessionId4 isEqual:searchSessionId5];

    if (!v11)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  searchSessionId = [(EXPSearchSchemaEXPSearchSessionExperiments *)self activeExperiments];
  searchSessionId2 = [equalCopy activeExperiments];
  if ((searchSessionId != 0) != (searchSessionId2 == 0))
  {
    activeExperiments = [(EXPSearchSchemaEXPSearchSessionExperiments *)self activeExperiments];
    if (!activeExperiments)
    {

LABEL_15:
      v17 = 1;
      goto LABEL_13;
    }

    v13 = activeExperiments;
    activeExperiments2 = [(EXPSearchSchemaEXPSearchSessionExperiments *)self activeExperiments];
    activeExperiments3 = [equalCopy activeExperiments];
    v16 = [activeExperiments2 isEqual:activeExperiments3];

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
  v17 = *MEMORY[0x1E69E9840];
  toCopy = to;
  searchSessionId = [(EXPSearchSchemaEXPSearchSessionExperiments *)self searchSessionId];

  if (searchSessionId)
  {
    searchSessionId2 = [(EXPSearchSchemaEXPSearchSessionExperiments *)self searchSessionId];
    PBDataWriterWriteSubmessage();
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v7 = self->_activeExperiments;
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
}

- (void)addActiveExperiments:(id)experiments
{
  experimentsCopy = experiments;
  activeExperiments = self->_activeExperiments;
  v8 = experimentsCopy;
  if (!activeExperiments)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_activeExperiments;
    self->_activeExperiments = array;

    experimentsCopy = v8;
    activeExperiments = self->_activeExperiments;
  }

  [(NSArray *)activeExperiments addObject:experimentsCopy];
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v12.receiver = self;
  v12.super_class = EXPSearchSchemaEXPSearchSessionExperiments;
  v5 = [(SISchemaInstrumentationMessage *)&v12 applySensitiveConditionsPolicy:policyCopy];
  searchSessionId = [(EXPSearchSchemaEXPSearchSessionExperiments *)self searchSessionId];
  v7 = [searchSessionId applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(EXPSearchSchemaEXPSearchSessionExperiments *)self deleteSearchSessionId];
  }

  activeExperiments = [(EXPSearchSchemaEXPSearchSessionExperiments *)self activeExperiments];
  v10 = [(SISchemaInstrumentationMessage *)self _pruneSuppressedMessagesFromArray:activeExperiments underConditions:policyCopy];
  [(EXPSearchSchemaEXPSearchSessionExperiments *)self setActiveExperiments:v10];

  return v5;
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end