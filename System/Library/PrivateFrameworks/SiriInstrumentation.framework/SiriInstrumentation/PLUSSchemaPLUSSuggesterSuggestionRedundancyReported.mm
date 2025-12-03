@interface PLUSSchemaPLUSSuggesterSuggestionRedundancyReported
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (PLUSSchemaPLUSSuggesterSuggestionRedundancyReported)initWithDictionary:(id)dictionary;
- (PLUSSchemaPLUSSuggesterSuggestionRedundancyReported)initWithJSON:(id)n;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)to;
@end

@implementation PLUSSchemaPLUSSuggesterSuggestionRedundancyReported

- (PLUSSchemaPLUSSuggesterSuggestionRedundancyReported)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v15.receiver = self;
  v15.super_class = PLUSSchemaPLUSSuggesterSuggestionRedundancyReported;
  v5 = [(PLUSSchemaPLUSSuggesterSuggestionRedundancyReported *)&v15 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"suggestionDomainMetadata"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[PLUSSchemaPLUSSuggestionDomainMetadata alloc] initWithDictionary:v6];
      [(PLUSSchemaPLUSSuggesterSuggestionRedundancyReported *)v5 setSuggestionDomainMetadata:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"suggestionLinkId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[SISchemaUUID alloc] initWithDictionary:v8];
      [(PLUSSchemaPLUSSuggesterSuggestionRedundancyReported *)v5 setSuggestionLinkId:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"originalRequestId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[SISchemaUUID alloc] initWithDictionary:v10];
      [(PLUSSchemaPLUSSuggesterSuggestionRedundancyReported *)v5 setOriginalRequestId:v11];
    }

    v12 = [dictionaryCopy objectForKeyedSubscript:@"suggestionRedundancyState"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[PLUSSchemaPLUSSuggesterSuggestionRedundancyReported setSuggestionRedundancyState:](v5, "setSuggestionRedundancyState:", [v12 intValue]);
    }

    v13 = v5;
  }

  return v5;
}

- (PLUSSchemaPLUSSuggesterSuggestionRedundancyReported)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(PLUSSchemaPLUSSuggesterSuggestionRedundancyReported *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(PLUSSchemaPLUSSuggesterSuggestionRedundancyReported *)self dictionaryRepresentation];
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
  if (self->_originalRequestId)
  {
    originalRequestId = [(PLUSSchemaPLUSSuggesterSuggestionRedundancyReported *)self originalRequestId];
    dictionaryRepresentation = [originalRequestId dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"originalRequestId"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"originalRequestId"];
    }
  }

  if (self->_suggestionDomainMetadata)
  {
    suggestionDomainMetadata = [(PLUSSchemaPLUSSuggesterSuggestionRedundancyReported *)self suggestionDomainMetadata];
    dictionaryRepresentation2 = [suggestionDomainMetadata dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"suggestionDomainMetadata"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"suggestionDomainMetadata"];
    }
  }

  if (self->_suggestionLinkId)
  {
    suggestionLinkId = [(PLUSSchemaPLUSSuggesterSuggestionRedundancyReported *)self suggestionLinkId];
    dictionaryRepresentation3 = [suggestionLinkId dictionaryRepresentation];
    if (dictionaryRepresentation3)
    {
      [dictionary setObject:dictionaryRepresentation3 forKeyedSubscript:@"suggestionLinkId"];
    }

    else
    {
      null3 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null3 forKeyedSubscript:@"suggestionLinkId"];
    }
  }

  if (*&self->_has)
  {
    suggestionRedundancyState = [(PLUSSchemaPLUSSuggesterSuggestionRedundancyReported *)self suggestionRedundancyState];
    v14 = @"PLUSSUGGESTIONREDUNDANCYSTATE_UNKNOWN";
    if (suggestionRedundancyState == 1)
    {
      v14 = @"PLUSSUGGESTIONREDUNDANCYSTATE_NOT_REDUNDANT";
    }

    if (suggestionRedundancyState == 2)
    {
      v15 = @"PLUSSUGGESTIONREDUNDANCYSTATE_REDUNDANT";
    }

    else
    {
      v15 = v14;
    }

    [dictionary setObject:v15 forKeyedSubscript:@"suggestionRedundancyState"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(PLUSSchemaPLUSSuggestionDomainMetadata *)self->_suggestionDomainMetadata hash];
  v4 = [(SISchemaUUID *)self->_suggestionLinkId hash];
  v5 = [(SISchemaUUID *)self->_originalRequestId hash];
  if (*&self->_has)
  {
    v6 = 2654435761 * self->_suggestionRedundancyState;
  }

  else
  {
    v6 = 0;
  }

  return v4 ^ v3 ^ v5 ^ v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_17;
  }

  suggestionDomainMetadata = [(PLUSSchemaPLUSSuggesterSuggestionRedundancyReported *)self suggestionDomainMetadata];
  suggestionDomainMetadata2 = [equalCopy suggestionDomainMetadata];
  if ((suggestionDomainMetadata != 0) == (suggestionDomainMetadata2 == 0))
  {
    goto LABEL_16;
  }

  suggestionDomainMetadata3 = [(PLUSSchemaPLUSSuggesterSuggestionRedundancyReported *)self suggestionDomainMetadata];
  if (suggestionDomainMetadata3)
  {
    v8 = suggestionDomainMetadata3;
    suggestionDomainMetadata4 = [(PLUSSchemaPLUSSuggesterSuggestionRedundancyReported *)self suggestionDomainMetadata];
    suggestionDomainMetadata5 = [equalCopy suggestionDomainMetadata];
    v11 = [suggestionDomainMetadata4 isEqual:suggestionDomainMetadata5];

    if (!v11)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  suggestionDomainMetadata = [(PLUSSchemaPLUSSuggesterSuggestionRedundancyReported *)self suggestionLinkId];
  suggestionDomainMetadata2 = [equalCopy suggestionLinkId];
  if ((suggestionDomainMetadata != 0) == (suggestionDomainMetadata2 == 0))
  {
    goto LABEL_16;
  }

  suggestionLinkId = [(PLUSSchemaPLUSSuggesterSuggestionRedundancyReported *)self suggestionLinkId];
  if (suggestionLinkId)
  {
    v13 = suggestionLinkId;
    suggestionLinkId2 = [(PLUSSchemaPLUSSuggesterSuggestionRedundancyReported *)self suggestionLinkId];
    suggestionLinkId3 = [equalCopy suggestionLinkId];
    v16 = [suggestionLinkId2 isEqual:suggestionLinkId3];

    if (!v16)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  suggestionDomainMetadata = [(PLUSSchemaPLUSSuggesterSuggestionRedundancyReported *)self originalRequestId];
  suggestionDomainMetadata2 = [equalCopy originalRequestId];
  if ((suggestionDomainMetadata != 0) == (suggestionDomainMetadata2 == 0))
  {
LABEL_16:

    goto LABEL_17;
  }

  originalRequestId = [(PLUSSchemaPLUSSuggesterSuggestionRedundancyReported *)self originalRequestId];
  if (originalRequestId)
  {
    v18 = originalRequestId;
    originalRequestId2 = [(PLUSSchemaPLUSSuggesterSuggestionRedundancyReported *)self originalRequestId];
    originalRequestId3 = [equalCopy originalRequestId];
    v21 = [originalRequestId2 isEqual:originalRequestId3];

    if (!v21)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  if ((*&self->_has & 1) == (equalCopy[36] & 1))
  {
    if ((*&self->_has & 1) == 0 || (suggestionRedundancyState = self->_suggestionRedundancyState, suggestionRedundancyState == [equalCopy suggestionRedundancyState]))
    {
      v22 = 1;
      goto LABEL_18;
    }
  }

LABEL_17:
  v22 = 0;
LABEL_18:

  return v22;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  suggestionDomainMetadata = [(PLUSSchemaPLUSSuggesterSuggestionRedundancyReported *)self suggestionDomainMetadata];

  if (suggestionDomainMetadata)
  {
    suggestionDomainMetadata2 = [(PLUSSchemaPLUSSuggesterSuggestionRedundancyReported *)self suggestionDomainMetadata];
    PBDataWriterWriteSubmessage();
  }

  suggestionLinkId = [(PLUSSchemaPLUSSuggesterSuggestionRedundancyReported *)self suggestionLinkId];

  if (suggestionLinkId)
  {
    suggestionLinkId2 = [(PLUSSchemaPLUSSuggesterSuggestionRedundancyReported *)self suggestionLinkId];
    PBDataWriterWriteSubmessage();
  }

  originalRequestId = [(PLUSSchemaPLUSSuggesterSuggestionRedundancyReported *)self originalRequestId];

  if (originalRequestId)
  {
    originalRequestId2 = [(PLUSSchemaPLUSSuggesterSuggestionRedundancyReported *)self originalRequestId];
    PBDataWriterWriteSubmessage();
  }

  if (*&self->_has)
  {
    PBDataWriterWriteInt32Field();
  }
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v16.receiver = self;
  v16.super_class = PLUSSchemaPLUSSuggesterSuggestionRedundancyReported;
  v5 = [(SISchemaInstrumentationMessage *)&v16 applySensitiveConditionsPolicy:policyCopy];
  suggestionDomainMetadata = [(PLUSSchemaPLUSSuggesterSuggestionRedundancyReported *)self suggestionDomainMetadata];
  v7 = [suggestionDomainMetadata applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(PLUSSchemaPLUSSuggesterSuggestionRedundancyReported *)self deleteSuggestionDomainMetadata];
  }

  suggestionLinkId = [(PLUSSchemaPLUSSuggesterSuggestionRedundancyReported *)self suggestionLinkId];
  v10 = [suggestionLinkId applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v10 suppressMessage];

  if (suppressMessage2)
  {
    [(PLUSSchemaPLUSSuggesterSuggestionRedundancyReported *)self deleteSuggestionLinkId];
  }

  originalRequestId = [(PLUSSchemaPLUSSuggesterSuggestionRedundancyReported *)self originalRequestId];
  v13 = [originalRequestId applySensitiveConditionsPolicy:policyCopy];
  suppressMessage3 = [v13 suppressMessage];

  if (suppressMessage3)
  {
    [(PLUSSchemaPLUSSuggesterSuggestionRedundancyReported *)self deleteOriginalRequestId];
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