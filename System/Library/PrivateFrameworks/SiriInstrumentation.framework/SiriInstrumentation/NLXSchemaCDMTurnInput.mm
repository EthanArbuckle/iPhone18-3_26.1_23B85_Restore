@interface NLXSchemaCDMTurnInput
- (BOOL)isEqual:(id)equal;
- (NLXSchemaCDMTurnInput)initWithDictionary:(id)dictionary;
- (NLXSchemaCDMTurnInput)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)addAsrHypothesisIds:(id)ids;
- (void)writeTo:(id)to;
@end

@implementation NLXSchemaCDMTurnInput

- (NLXSchemaCDMTurnInput)initWithDictionary:(id)dictionary
{
  v26 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v24.receiver = self;
  v24.super_class = NLXSchemaCDMTurnInput;
  v5 = [(NLXSchemaCDMTurnInput *)&v24 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"asrHypothesisIds"];
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
              v13 = [SISchemaUUID alloc];
              v14 = [(SISchemaUUID *)v13 initWithDictionary:v12, v20];
              [(NLXSchemaCDMTurnInput *)v5 addAsrHypothesisIds:v14];
            }

            ++v11;
          }

          while (v9 != v11);
          v9 = [v7 countByEnumeratingWithState:&v20 objects:v25 count:16];
        }

        while (v9);
      }
    }

    v15 = [dictionaryCopy objectForKeyedSubscript:{@"turnContext", v20}];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v16 = [[NLXSchemaCDMTurnContext alloc] initWithDictionary:v15];
      [(NLXSchemaCDMTurnInput *)v5 setTurnContext:v16];
    }

    v17 = [dictionaryCopy objectForKeyedSubscript:@"isTapToEdit"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[NLXSchemaCDMTurnInput setIsTapToEdit:](v5, "setIsTapToEdit:", [v17 BOOLValue]);
    }

    v18 = v5;
  }

  return v5;
}

- (NLXSchemaCDMTurnInput)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(NLXSchemaCDMTurnInput *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(NLXSchemaCDMTurnInput *)self dictionaryRepresentation];
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
  v22 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if ([(NSArray *)self->_asrHypothesisIds count])
  {
    array = [MEMORY[0x1E695DF70] array];
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v5 = self->_asrHypothesisIds;
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

          dictionaryRepresentation = [*(*(&v17 + 1) + 8 * i) dictionaryRepresentation];
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

        v7 = [(NSArray *)v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v7);
    }

    [dictionary setObject:array forKeyedSubscript:@"asrHypothesisIds"];
  }

  if (*(&self->_isTapToEdit + 1))
  {
    v12 = [MEMORY[0x1E696AD98] numberWithBool:{-[NLXSchemaCDMTurnInput isTapToEdit](self, "isTapToEdit")}];
    [dictionary setObject:v12 forKeyedSubscript:@"isTapToEdit"];
  }

  if (self->_turnContext)
  {
    turnContext = [(NLXSchemaCDMTurnInput *)self turnContext];
    dictionaryRepresentation2 = [turnContext dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"turnContext"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"turnContext"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary, v17];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(NSArray *)self->_asrHypothesisIds hash];
  v4 = [(NLXSchemaCDMTurnContext *)self->_turnContext hash];
  if (*(&self->_isTapToEdit + 1))
  {
    v5 = 2654435761 * self->_isTapToEdit;
  }

  else
  {
    v5 = 0;
  }

  return v4 ^ v3 ^ v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  asrHypothesisIds = [(NLXSchemaCDMTurnInput *)self asrHypothesisIds];
  asrHypothesisIds2 = [equalCopy asrHypothesisIds];
  if ((asrHypothesisIds != 0) == (asrHypothesisIds2 == 0))
  {
    goto LABEL_11;
  }

  asrHypothesisIds3 = [(NLXSchemaCDMTurnInput *)self asrHypothesisIds];
  if (asrHypothesisIds3)
  {
    v8 = asrHypothesisIds3;
    asrHypothesisIds4 = [(NLXSchemaCDMTurnInput *)self asrHypothesisIds];
    asrHypothesisIds5 = [equalCopy asrHypothesisIds];
    v11 = [asrHypothesisIds4 isEqual:asrHypothesisIds5];

    if (!v11)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  asrHypothesisIds = [(NLXSchemaCDMTurnInput *)self turnContext];
  asrHypothesisIds2 = [equalCopy turnContext];
  if ((asrHypothesisIds != 0) == (asrHypothesisIds2 == 0))
  {
LABEL_11:

    goto LABEL_12;
  }

  turnContext = [(NLXSchemaCDMTurnInput *)self turnContext];
  if (turnContext)
  {
    v13 = turnContext;
    turnContext2 = [(NLXSchemaCDMTurnInput *)self turnContext];
    turnContext3 = [equalCopy turnContext];
    v16 = [turnContext2 isEqual:turnContext3];

    if (!v16)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  if (*(&self->_isTapToEdit + 1) == (equalCopy[25] & 1))
  {
    if (!*(&self->_isTapToEdit + 1) || (isTapToEdit = self->_isTapToEdit, isTapToEdit == [equalCopy isTapToEdit]))
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

- (void)writeTo:(id)to
{
  v17 = *MEMORY[0x1E69E9840];
  toCopy = to;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = self->_asrHypothesisIds;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      v9 = 0;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        PBDataWriterWriteSubmessage();
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  turnContext = [(NLXSchemaCDMTurnInput *)self turnContext];

  if (turnContext)
  {
    turnContext2 = [(NLXSchemaCDMTurnInput *)self turnContext];
    PBDataWriterWriteSubmessage();
  }

  if (*(&self->_isTapToEdit + 1))
  {
    PBDataWriterWriteBOOLField();
  }
}

- (void)addAsrHypothesisIds:(id)ids
{
  idsCopy = ids;
  asrHypothesisIds = self->_asrHypothesisIds;
  v8 = idsCopy;
  if (!asrHypothesisIds)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_asrHypothesisIds;
    self->_asrHypothesisIds = array;

    idsCopy = v8;
    asrHypothesisIds = self->_asrHypothesisIds;
  }

  [(NSArray *)asrHypothesisIds addObject:idsCopy];
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  v11.receiver = self;
  v11.super_class = NLXSchemaCDMTurnInput;
  policyCopy = policy;
  v5 = [(SISchemaInstrumentationMessage *)&v11 applySensitiveConditionsPolicy:policyCopy];
  v6 = [(NLXSchemaCDMTurnInput *)self asrHypothesisIds:v11.receiver];
  v7 = [(SISchemaInstrumentationMessage *)self _pruneSuppressedMessagesFromArray:v6 underConditions:policyCopy];
  [(NLXSchemaCDMTurnInput *)self setAsrHypothesisIds:v7];

  turnContext = [(NLXSchemaCDMTurnInput *)self turnContext];
  v9 = [turnContext applySensitiveConditionsPolicy:policyCopy];

  LODWORD(policyCopy) = [v9 suppressMessage];
  if (policyCopy)
  {
    [(NLXSchemaCDMTurnInput *)self deleteTurnContext];
  }

  return v5;
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end