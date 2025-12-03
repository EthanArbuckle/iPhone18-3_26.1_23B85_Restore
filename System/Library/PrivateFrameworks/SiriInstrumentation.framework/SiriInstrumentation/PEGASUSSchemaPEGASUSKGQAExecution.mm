@interface PEGASUSSchemaPEGASUSKGQAExecution
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (PEGASUSSchemaPEGASUSKGQAExecution)initWithDictionary:(id)dictionary;
- (PEGASUSSchemaPEGASUSKGQAExecution)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)addAttributes:(id)attributes;
- (void)setHasIsDisputedResponse:(BOOL)response;
- (void)setHasIsWebExtractedFact:(BOOL)fact;
- (void)writeTo:(id)to;
@end

@implementation PEGASUSSchemaPEGASUSKGQAExecution

- (PEGASUSSchemaPEGASUSKGQAExecution)initWithDictionary:(id)dictionary
{
  v27 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v25.receiver = self;
  v25.super_class = PEGASUSSchemaPEGASUSKGQAExecution;
  v5 = [(PEGASUSSchemaPEGASUSKGQAExecution *)&v25 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"kgQAUsecase"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[PEGASUSSchemaPEGASUSKGQAExecution setKgQAUsecase:](v5, "setKgQAUsecase:", [v6 intValue]);
    }

    v7 = [dictionaryCopy objectForKeyedSubscript:@"attributes"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v23 = 0u;
      v24 = 0u;
      v21 = 0u;
      v22 = 0u;
      v8 = v7;
      v9 = [v8 countByEnumeratingWithState:&v21 objects:v26 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v22;
        do
        {
          v12 = 0;
          do
          {
            if (*v22 != v11)
            {
              objc_enumerationMutation(v8);
            }

            v13 = *(*(&v21 + 1) + 8 * v12);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v14 = [v13 copy];
              [(PEGASUSSchemaPEGASUSKGQAExecution *)v5 addAttributes:v14];
            }

            ++v12;
          }

          while (v10 != v12);
          v10 = [v8 countByEnumeratingWithState:&v21 objects:v26 count:16];
        }

        while (v10);
      }
    }

    v15 = [dictionaryCopy objectForKeyedSubscript:{@"isDisputedResponse", v21}];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[PEGASUSSchemaPEGASUSKGQAExecution setIsDisputedResponse:](v5, "setIsDisputedResponse:", [v15 BOOLValue]);
    }

    v16 = [dictionaryCopy objectForKeyedSubscript:@"nlgKey"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = [v16 copy];
      [(PEGASUSSchemaPEGASUSKGQAExecution *)v5 setNlgKey:v17];
    }

    v18 = [dictionaryCopy objectForKeyedSubscript:@"isWebExtractedFact"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[PEGASUSSchemaPEGASUSKGQAExecution setIsWebExtractedFact:](v5, "setIsWebExtractedFact:", [v18 BOOLValue]);
    }

    v19 = v5;
  }

  return v5;
}

- (PEGASUSSchemaPEGASUSKGQAExecution)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(PEGASUSSchemaPEGASUSKGQAExecution *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(PEGASUSSchemaPEGASUSKGQAExecution *)self dictionaryRepresentation];
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
  if (self->_attributes)
  {
    attributes = [(PEGASUSSchemaPEGASUSKGQAExecution *)self attributes];
    v5 = [attributes copy];
    [dictionary setObject:v5 forKeyedSubscript:@"attributes"];
  }

  v6 = *(&self->_isWebExtractedFact + 1);
  if ((v6 & 2) != 0)
  {
    v7 = [MEMORY[0x1E696AD98] numberWithBool:{-[PEGASUSSchemaPEGASUSKGQAExecution isDisputedResponse](self, "isDisputedResponse")}];
    [dictionary setObject:v7 forKeyedSubscript:@"isDisputedResponse"];

    v6 = *(&self->_isWebExtractedFact + 1);
    if ((v6 & 4) == 0)
    {
LABEL_5:
      if ((v6 & 1) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_9;
    }
  }

  else if ((*(&self->_isWebExtractedFact + 1) & 4) == 0)
  {
    goto LABEL_5;
  }

  v8 = [MEMORY[0x1E696AD98] numberWithBool:{-[PEGASUSSchemaPEGASUSKGQAExecution isWebExtractedFact](self, "isWebExtractedFact")}];
  [dictionary setObject:v8 forKeyedSubscript:@"isWebExtractedFact"];

  if (!*(&self->_isWebExtractedFact + 1))
  {
    goto LABEL_13;
  }

LABEL_9:
  v9 = [(PEGASUSSchemaPEGASUSKGQAExecution *)self kgQAUsecase]- 1;
  if (v9 > 6)
  {
    v10 = @"PEGASUSKGQAUSECASE_UNKNOWN";
  }

  else
  {
    v10 = off_1E78DF8B0[v9];
  }

  [dictionary setObject:v10 forKeyedSubscript:@"kgQAUsecase"];
LABEL_13:
  if (self->_nlgKey)
  {
    nlgKey = [(PEGASUSSchemaPEGASUSKGQAExecution *)self nlgKey];
    v12 = [nlgKey copy];
    [dictionary setObject:v12 forKeyedSubscript:@"nlgKey"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  if (*(&self->_isWebExtractedFact + 1))
  {
    v3 = 2654435761 * self->_kgQAUsecase;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(NSArray *)self->_attributes hash];
  if ((*(&self->_isWebExtractedFact + 1) & 2) != 0)
  {
    v5 = 2654435761 * self->_isDisputedResponse;
  }

  else
  {
    v5 = 0;
  }

  v6 = [(NSString *)self->_nlgKey hash];
  if ((*(&self->_isWebExtractedFact + 1) & 4) != 0)
  {
    v7 = 2654435761 * self->_isWebExtractedFact;
  }

  else
  {
    v7 = 0;
  }

  return v4 ^ v3 ^ v5 ^ v6 ^ v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_18;
  }

  if (*(&self->_isWebExtractedFact + 1) != (equalCopy[41] & 1))
  {
    goto LABEL_18;
  }

  if (*(&self->_isWebExtractedFact + 1))
  {
    kgQAUsecase = self->_kgQAUsecase;
    if (kgQAUsecase != [equalCopy kgQAUsecase])
    {
      goto LABEL_18;
    }
  }

  attributes = [(PEGASUSSchemaPEGASUSKGQAExecution *)self attributes];
  attributes2 = [equalCopy attributes];
  if ((attributes != 0) == (attributes2 == 0))
  {
    goto LABEL_17;
  }

  attributes3 = [(PEGASUSSchemaPEGASUSKGQAExecution *)self attributes];
  if (attributes3)
  {
    v9 = attributes3;
    attributes4 = [(PEGASUSSchemaPEGASUSKGQAExecution *)self attributes];
    attributes5 = [equalCopy attributes];
    v12 = [attributes4 isEqual:attributes5];

    if (!v12)
    {
      goto LABEL_18;
    }
  }

  else
  {
  }

  v13 = (*(&self->_isWebExtractedFact + 1) >> 1) & 1;
  if (v13 != ((equalCopy[41] >> 1) & 1))
  {
    goto LABEL_18;
  }

  if (v13)
  {
    isDisputedResponse = self->_isDisputedResponse;
    if (isDisputedResponse != [equalCopy isDisputedResponse])
    {
      goto LABEL_18;
    }
  }

  attributes = [(PEGASUSSchemaPEGASUSKGQAExecution *)self nlgKey];
  attributes2 = [equalCopy nlgKey];
  if ((attributes != 0) == (attributes2 == 0))
  {
LABEL_17:

    goto LABEL_18;
  }

  nlgKey = [(PEGASUSSchemaPEGASUSKGQAExecution *)self nlgKey];
  if (nlgKey)
  {
    v16 = nlgKey;
    nlgKey2 = [(PEGASUSSchemaPEGASUSKGQAExecution *)self nlgKey];
    nlgKey3 = [equalCopy nlgKey];
    v19 = [nlgKey2 isEqual:nlgKey3];

    if (!v19)
    {
      goto LABEL_18;
    }
  }

  else
  {
  }

  v22 = (*(&self->_isWebExtractedFact + 1) >> 2) & 1;
  if (v22 == ((equalCopy[41] >> 2) & 1))
  {
    if (!v22 || (isWebExtractedFact = self->_isWebExtractedFact, isWebExtractedFact == [equalCopy isWebExtractedFact]))
    {
      v20 = 1;
      goto LABEL_19;
    }
  }

LABEL_18:
  v20 = 0;
LABEL_19:

  return v20;
}

- (void)writeTo:(id)to
{
  v16 = *MEMORY[0x1E69E9840];
  toCopy = to;
  if (*(&self->_isWebExtractedFact + 1))
  {
    PBDataWriterWriteInt32Field();
  }

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = self->_attributes;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        PBDataWriterWriteStringField();
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  if ((*(&self->_isWebExtractedFact + 1) & 2) != 0)
  {
    PBDataWriterWriteBOOLField();
  }

  nlgKey = [(PEGASUSSchemaPEGASUSKGQAExecution *)self nlgKey];

  if (nlgKey)
  {
    PBDataWriterWriteStringField();
  }

  if ((*(&self->_isWebExtractedFact + 1) & 4) != 0)
  {
    PBDataWriterWriteBOOLField();
  }
}

- (void)setHasIsWebExtractedFact:(BOOL)fact
{
  if (fact)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_isWebExtractedFact + 1) = *(&self->_isWebExtractedFact + 1) & 0xFB | v3;
}

- (void)setHasIsDisputedResponse:(BOOL)response
{
  if (response)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_isWebExtractedFact + 1) = *(&self->_isWebExtractedFact + 1) & 0xFD | v3;
}

- (void)addAttributes:(id)attributes
{
  attributesCopy = attributes;
  attributes = self->_attributes;
  v8 = attributesCopy;
  if (!attributes)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_attributes;
    self->_attributes = array;

    attributesCopy = v8;
    attributes = self->_attributes;
  }

  [(NSArray *)attributes addObject:attributesCopy];
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end