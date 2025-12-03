@interface FLOWSchemaFLOWCrossIntentRankerResponse
- (BOOL)isEqual:(id)equal;
- (FLOWSchemaFLOWCrossIntentRankerResponse)initWithDictionary:(id)dictionary;
- (FLOWSchemaFLOWCrossIntentRankerResponse)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (void)addCrossDomainRankerScoreKeeper:(id)keeper;
- (void)addCrossIntentRankerScoreKeeper:(id)keeper;
- (void)writeTo:(id)to;
@end

@implementation FLOWSchemaFLOWCrossIntentRankerResponse

- (FLOWSchemaFLOWCrossIntentRankerResponse)initWithDictionary:(id)dictionary
{
  v35 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v32.receiver = self;
  v32.super_class = FLOWSchemaFLOWCrossIntentRankerResponse;
  v5 = [(FLOWSchemaFLOWCrossIntentRankerResponse *)&v32 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"crossDomainRankerScoreKeeper"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v30 = 0u;
      v31 = 0u;
      v28 = 0u;
      v29 = 0u;
      v7 = v6;
      v8 = [v7 countByEnumeratingWithState:&v28 objects:v34 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v29;
        do
        {
          v11 = 0;
          do
          {
            if (*v29 != v10)
            {
              objc_enumerationMutation(v7);
            }

            v12 = *(*(&v28 + 1) + 8 * v11);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v13 = [v12 copy];
              [(FLOWSchemaFLOWCrossIntentRankerResponse *)v5 addCrossDomainRankerScoreKeeper:v13];
            }

            ++v11;
          }

          while (v9 != v11);
          v9 = [v7 countByEnumeratingWithState:&v28 objects:v34 count:16];
        }

        while (v9);
      }
    }

    v14 = [dictionaryCopy objectForKeyedSubscript:@"crossIntentRankerScoreKeeper"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v26 = 0u;
      v27 = 0u;
      v24 = 0u;
      v25 = 0u;
      v15 = v14;
      v16 = [v15 countByEnumeratingWithState:&v24 objects:v33 count:16];
      if (v16)
      {
        v17 = v16;
        v18 = *v25;
        do
        {
          v19 = 0;
          do
          {
            if (*v25 != v18)
            {
              objc_enumerationMutation(v15);
            }

            v20 = *(*(&v24 + 1) + 8 * v19);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v21 = [v20 copy];
              [(FLOWSchemaFLOWCrossIntentRankerResponse *)v5 addCrossIntentRankerScoreKeeper:v21];
            }

            ++v19;
          }

          while (v17 != v19);
          v17 = [v15 countByEnumeratingWithState:&v24 objects:v33 count:16];
        }

        while (v17);
      }
    }

    v22 = v5;
  }

  return v5;
}

- (FLOWSchemaFLOWCrossIntentRankerResponse)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(FLOWSchemaFLOWCrossIntentRankerResponse *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(FLOWSchemaFLOWCrossIntentRankerResponse *)self dictionaryRepresentation];
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
  if (self->_crossDomainRankerScoreKeepers)
  {
    crossDomainRankerScoreKeepers = [(FLOWSchemaFLOWCrossIntentRankerResponse *)self crossDomainRankerScoreKeepers];
    v5 = [crossDomainRankerScoreKeepers copy];
    [dictionary setObject:v5 forKeyedSubscript:@"crossDomainRankerScoreKeeper"];
  }

  if (self->_crossIntentRankerScoreKeepers)
  {
    crossIntentRankerScoreKeepers = [(FLOWSchemaFLOWCrossIntentRankerResponse *)self crossIntentRankerScoreKeepers];
    v7 = [crossIntentRankerScoreKeepers copy];
    [dictionary setObject:v7 forKeyedSubscript:@"crossIntentRankerScoreKeeper"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  crossDomainRankerScoreKeepers = [(FLOWSchemaFLOWCrossIntentRankerResponse *)self crossDomainRankerScoreKeepers];
  crossDomainRankerScoreKeepers2 = [equalCopy crossDomainRankerScoreKeepers];
  if ((crossDomainRankerScoreKeepers != 0) == (crossDomainRankerScoreKeepers2 == 0))
  {
    goto LABEL_11;
  }

  crossDomainRankerScoreKeepers3 = [(FLOWSchemaFLOWCrossIntentRankerResponse *)self crossDomainRankerScoreKeepers];
  if (crossDomainRankerScoreKeepers3)
  {
    v8 = crossDomainRankerScoreKeepers3;
    crossDomainRankerScoreKeepers4 = [(FLOWSchemaFLOWCrossIntentRankerResponse *)self crossDomainRankerScoreKeepers];
    crossDomainRankerScoreKeepers5 = [equalCopy crossDomainRankerScoreKeepers];
    v11 = [crossDomainRankerScoreKeepers4 isEqual:crossDomainRankerScoreKeepers5];

    if (!v11)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  crossDomainRankerScoreKeepers = [(FLOWSchemaFLOWCrossIntentRankerResponse *)self crossIntentRankerScoreKeepers];
  crossDomainRankerScoreKeepers2 = [equalCopy crossIntentRankerScoreKeepers];
  if ((crossDomainRankerScoreKeepers != 0) != (crossDomainRankerScoreKeepers2 == 0))
  {
    crossIntentRankerScoreKeepers = [(FLOWSchemaFLOWCrossIntentRankerResponse *)self crossIntentRankerScoreKeepers];
    if (!crossIntentRankerScoreKeepers)
    {

LABEL_15:
      v17 = 1;
      goto LABEL_13;
    }

    v13 = crossIntentRankerScoreKeepers;
    crossIntentRankerScoreKeepers2 = [(FLOWSchemaFLOWCrossIntentRankerResponse *)self crossIntentRankerScoreKeepers];
    crossIntentRankerScoreKeepers3 = [equalCopy crossIntentRankerScoreKeepers];
    v16 = [crossIntentRankerScoreKeepers2 isEqual:crossIntentRankerScoreKeepers3];

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
  v25 = *MEMORY[0x1E69E9840];
  toCopy = to;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v5 = self->_crossDomainRankerScoreKeepers;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v19 objects:v24 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v20;
    do
    {
      v9 = 0;
      do
      {
        if (*v20 != v8)
        {
          objc_enumerationMutation(v5);
        }

        PBDataWriterWriteStringField();
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v19 objects:v24 count:16];
    }

    while (v7);
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v10 = self->_crossIntentRankerScoreKeepers;
  v11 = [(NSArray *)v10 countByEnumeratingWithState:&v15 objects:v23 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v16;
    do
    {
      v14 = 0;
      do
      {
        if (*v16 != v13)
        {
          objc_enumerationMutation(v10);
        }

        PBDataWriterWriteStringField();
        ++v14;
      }

      while (v12 != v14);
      v12 = [(NSArray *)v10 countByEnumeratingWithState:&v15 objects:v23 count:16];
    }

    while (v12);
  }
}

- (void)addCrossIntentRankerScoreKeeper:(id)keeper
{
  keeperCopy = keeper;
  crossIntentRankerScoreKeepers = self->_crossIntentRankerScoreKeepers;
  v8 = keeperCopy;
  if (!crossIntentRankerScoreKeepers)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_crossIntentRankerScoreKeepers;
    self->_crossIntentRankerScoreKeepers = array;

    keeperCopy = v8;
    crossIntentRankerScoreKeepers = self->_crossIntentRankerScoreKeepers;
  }

  [(NSArray *)crossIntentRankerScoreKeepers addObject:keeperCopy];
}

- (void)addCrossDomainRankerScoreKeeper:(id)keeper
{
  keeperCopy = keeper;
  crossDomainRankerScoreKeepers = self->_crossDomainRankerScoreKeepers;
  v8 = keeperCopy;
  if (!crossDomainRankerScoreKeepers)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_crossDomainRankerScoreKeepers;
    self->_crossDomainRankerScoreKeepers = array;

    keeperCopy = v8;
    crossDomainRankerScoreKeepers = self->_crossDomainRankerScoreKeepers;
  }

  [(NSArray *)crossDomainRankerScoreKeepers addObject:keeperCopy];
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end