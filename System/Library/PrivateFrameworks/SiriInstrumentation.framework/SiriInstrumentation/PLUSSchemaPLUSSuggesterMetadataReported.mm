@interface PLUSSchemaPLUSSuggesterMetadataReported
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (PLUSSchemaPLUSSuggesterMetadataReported)initWithDictionary:(id)dictionary;
- (PLUSSchemaPLUSSuggesterMetadataReported)initWithJSON:(id)n;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)to;
@end

@implementation PLUSSchemaPLUSSuggesterMetadataReported

- (PLUSSchemaPLUSSuggesterMetadataReported)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v15.receiver = self;
  v15.super_class = PLUSSchemaPLUSSuggesterMetadataReported;
  v5 = [(PLUSSchemaPLUSSuggesterMetadataReported *)&v15 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"suggestionDomainMetadata"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[PLUSSchemaPLUSSuggestionDomainMetadata alloc] initWithDictionary:v6];
      [(PLUSSchemaPLUSSuggesterMetadataReported *)v5 setSuggestionDomainMetadata:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"originalRequestId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[SISchemaUUID alloc] initWithDictionary:v8];
      [(PLUSSchemaPLUSSuggesterMetadataReported *)v5 setOriginalRequestId:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"isSuggesterEnabled"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[PLUSSchemaPLUSSuggesterMetadataReported setIsSuggesterEnabled:](v5, "setIsSuggesterEnabled:", [v10 BOOLValue]);
    }

    v11 = [dictionaryCopy objectForKeyedSubscript:@"domainConfiguredState"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = [[PLUSSchemaPLUSDomainConfiguredState alloc] initWithDictionary:v11];
      [(PLUSSchemaPLUSSuggesterMetadataReported *)v5 setDomainConfiguredState:v12];
    }

    v13 = v5;
  }

  return v5;
}

- (PLUSSchemaPLUSSuggesterMetadataReported)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(PLUSSchemaPLUSSuggesterMetadataReported *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(PLUSSchemaPLUSSuggesterMetadataReported *)self dictionaryRepresentation];
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
  if (self->_domainConfiguredState)
  {
    domainConfiguredState = [(PLUSSchemaPLUSSuggesterMetadataReported *)self domainConfiguredState];
    dictionaryRepresentation = [domainConfiguredState dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"domainConfiguredState"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"domainConfiguredState"];
    }
  }

  if (*&self->_has)
  {
    v7 = [MEMORY[0x1E696AD98] numberWithBool:{-[PLUSSchemaPLUSSuggesterMetadataReported isSuggesterEnabled](self, "isSuggesterEnabled")}];
    [dictionary setObject:v7 forKeyedSubscript:@"isSuggesterEnabled"];
  }

  if (self->_originalRequestId)
  {
    originalRequestId = [(PLUSSchemaPLUSSuggesterMetadataReported *)self originalRequestId];
    dictionaryRepresentation2 = [originalRequestId dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"originalRequestId"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"originalRequestId"];
    }
  }

  if (self->_suggestionDomainMetadata)
  {
    suggestionDomainMetadata = [(PLUSSchemaPLUSSuggesterMetadataReported *)self suggestionDomainMetadata];
    dictionaryRepresentation3 = [suggestionDomainMetadata dictionaryRepresentation];
    if (dictionaryRepresentation3)
    {
      [dictionary setObject:dictionaryRepresentation3 forKeyedSubscript:@"suggestionDomainMetadata"];
    }

    else
    {
      null3 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null3 forKeyedSubscript:@"suggestionDomainMetadata"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(PLUSSchemaPLUSSuggestionDomainMetadata *)self->_suggestionDomainMetadata hash];
  v4 = [(SISchemaUUID *)self->_originalRequestId hash];
  if (*&self->_has)
  {
    v5 = 2654435761 * self->_isSuggesterEnabled;
  }

  else
  {
    v5 = 0;
  }

  return v4 ^ v3 ^ v5 ^ [(PLUSSchemaPLUSDomainConfiguredState *)self->_domainConfiguredState hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_20;
  }

  suggestionDomainMetadata = [(PLUSSchemaPLUSSuggesterMetadataReported *)self suggestionDomainMetadata];
  suggestionDomainMetadata2 = [equalCopy suggestionDomainMetadata];
  if ((suggestionDomainMetadata != 0) == (suggestionDomainMetadata2 == 0))
  {
    goto LABEL_19;
  }

  suggestionDomainMetadata3 = [(PLUSSchemaPLUSSuggesterMetadataReported *)self suggestionDomainMetadata];
  if (suggestionDomainMetadata3)
  {
    v8 = suggestionDomainMetadata3;
    suggestionDomainMetadata4 = [(PLUSSchemaPLUSSuggesterMetadataReported *)self suggestionDomainMetadata];
    suggestionDomainMetadata5 = [equalCopy suggestionDomainMetadata];
    v11 = [suggestionDomainMetadata4 isEqual:suggestionDomainMetadata5];

    if (!v11)
    {
      goto LABEL_20;
    }
  }

  else
  {
  }

  suggestionDomainMetadata = [(PLUSSchemaPLUSSuggesterMetadataReported *)self originalRequestId];
  suggestionDomainMetadata2 = [equalCopy originalRequestId];
  if ((suggestionDomainMetadata != 0) == (suggestionDomainMetadata2 == 0))
  {
    goto LABEL_19;
  }

  originalRequestId = [(PLUSSchemaPLUSSuggesterMetadataReported *)self originalRequestId];
  if (originalRequestId)
  {
    v13 = originalRequestId;
    originalRequestId2 = [(PLUSSchemaPLUSSuggesterMetadataReported *)self originalRequestId];
    originalRequestId3 = [equalCopy originalRequestId];
    v16 = [originalRequestId2 isEqual:originalRequestId3];

    if (!v16)
    {
      goto LABEL_20;
    }
  }

  else
  {
  }

  if ((*&self->_has & 1) != (equalCopy[40] & 1))
  {
    goto LABEL_20;
  }

  if (*&self->_has)
  {
    isSuggesterEnabled = self->_isSuggesterEnabled;
    if (isSuggesterEnabled != [equalCopy isSuggesterEnabled])
    {
      goto LABEL_20;
    }
  }

  suggestionDomainMetadata = [(PLUSSchemaPLUSSuggesterMetadataReported *)self domainConfiguredState];
  suggestionDomainMetadata2 = [equalCopy domainConfiguredState];
  if ((suggestionDomainMetadata != 0) != (suggestionDomainMetadata2 == 0))
  {
    domainConfiguredState = [(PLUSSchemaPLUSSuggesterMetadataReported *)self domainConfiguredState];
    if (!domainConfiguredState)
    {

LABEL_23:
      v23 = 1;
      goto LABEL_21;
    }

    v19 = domainConfiguredState;
    domainConfiguredState2 = [(PLUSSchemaPLUSSuggesterMetadataReported *)self domainConfiguredState];
    domainConfiguredState3 = [equalCopy domainConfiguredState];
    v22 = [domainConfiguredState2 isEqual:domainConfiguredState3];

    if (v22)
    {
      goto LABEL_23;
    }
  }

  else
  {
LABEL_19:
  }

LABEL_20:
  v23 = 0;
LABEL_21:

  return v23;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  suggestionDomainMetadata = [(PLUSSchemaPLUSSuggesterMetadataReported *)self suggestionDomainMetadata];

  if (suggestionDomainMetadata)
  {
    suggestionDomainMetadata2 = [(PLUSSchemaPLUSSuggesterMetadataReported *)self suggestionDomainMetadata];
    PBDataWriterWriteSubmessage();
  }

  originalRequestId = [(PLUSSchemaPLUSSuggesterMetadataReported *)self originalRequestId];

  if (originalRequestId)
  {
    originalRequestId2 = [(PLUSSchemaPLUSSuggesterMetadataReported *)self originalRequestId];
    PBDataWriterWriteSubmessage();
  }

  if (*&self->_has)
  {
    PBDataWriterWriteBOOLField();
  }

  domainConfiguredState = [(PLUSSchemaPLUSSuggesterMetadataReported *)self domainConfiguredState];

  v9 = toCopy;
  if (domainConfiguredState)
  {
    domainConfiguredState2 = [(PLUSSchemaPLUSSuggesterMetadataReported *)self domainConfiguredState];
    PBDataWriterWriteSubmessage();

    v9 = toCopy;
  }
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v16.receiver = self;
  v16.super_class = PLUSSchemaPLUSSuggesterMetadataReported;
  v5 = [(SISchemaInstrumentationMessage *)&v16 applySensitiveConditionsPolicy:policyCopy];
  suggestionDomainMetadata = [(PLUSSchemaPLUSSuggesterMetadataReported *)self suggestionDomainMetadata];
  v7 = [suggestionDomainMetadata applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(PLUSSchemaPLUSSuggesterMetadataReported *)self deleteSuggestionDomainMetadata];
  }

  originalRequestId = [(PLUSSchemaPLUSSuggesterMetadataReported *)self originalRequestId];
  v10 = [originalRequestId applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v10 suppressMessage];

  if (suppressMessage2)
  {
    [(PLUSSchemaPLUSSuggesterMetadataReported *)self deleteOriginalRequestId];
  }

  domainConfiguredState = [(PLUSSchemaPLUSSuggesterMetadataReported *)self domainConfiguredState];
  v13 = [domainConfiguredState applySensitiveConditionsPolicy:policyCopy];
  suppressMessage3 = [v13 suppressMessage];

  if (suppressMessage3)
  {
    [(PLUSSchemaPLUSSuggesterMetadataReported *)self deleteDomainConfiguredState];
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