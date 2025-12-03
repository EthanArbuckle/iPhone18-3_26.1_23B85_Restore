@interface PLUSSchemaPLUSSuggestionOutcomeReported
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (PLUSSchemaPLUSSuggestionOutcomeReported)initWithDictionary:(id)dictionary;
- (PLUSSchemaPLUSSuggestionOutcomeReported)initWithJSON:(id)n;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)to;
@end

@implementation PLUSSchemaPLUSSuggestionOutcomeReported

- (PLUSSchemaPLUSSuggestionOutcomeReported)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v17.receiver = self;
  v17.super_class = PLUSSchemaPLUSSuggestionOutcomeReported;
  v5 = [(PLUSSchemaPLUSSuggestionOutcomeReported *)&v17 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"suggestionDomainMetadata"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[PLUSSchemaPLUSSuggestionDomainMetadata alloc] initWithDictionary:v6];
      [(PLUSSchemaPLUSSuggestionOutcomeReported *)v5 setSuggestionDomainMetadata:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"suggestionLinkId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[SISchemaUUID alloc] initWithDictionary:v8];
      [(PLUSSchemaPLUSSuggestionOutcomeReported *)v5 setSuggestionLinkId:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"originalRequestId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[SISchemaUUID alloc] initWithDictionary:v10];
      [(PLUSSchemaPLUSSuggestionOutcomeReported *)v5 setOriginalRequestId:v11];
    }

    v12 = [dictionaryCopy objectForKeyedSubscript:@"suggestionOutcome"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[PLUSSchemaPLUSSuggestionOutcomeReported setSuggestionOutcome:](v5, "setSuggestionOutcome:", [v12 intValue]);
    }

    v13 = [dictionaryCopy objectForKeyedSubscript:@"domainOutcome"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v14 = [[PLUSSchemaPLUSSuggestionDomainOutcome alloc] initWithDictionary:v13];
      [(PLUSSchemaPLUSSuggestionOutcomeReported *)v5 setDomainOutcome:v14];
    }

    v15 = v5;
  }

  return v5;
}

- (PLUSSchemaPLUSSuggestionOutcomeReported)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(PLUSSchemaPLUSSuggestionOutcomeReported *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(PLUSSchemaPLUSSuggestionOutcomeReported *)self dictionaryRepresentation];
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
  if (self->_domainOutcome)
  {
    domainOutcome = [(PLUSSchemaPLUSSuggestionOutcomeReported *)self domainOutcome];
    dictionaryRepresentation = [domainOutcome dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"domainOutcome"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"domainOutcome"];
    }
  }

  if (self->_originalRequestId)
  {
    originalRequestId = [(PLUSSchemaPLUSSuggestionOutcomeReported *)self originalRequestId];
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
    suggestionDomainMetadata = [(PLUSSchemaPLUSSuggestionOutcomeReported *)self suggestionDomainMetadata];
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

  if (self->_suggestionLinkId)
  {
    suggestionLinkId = [(PLUSSchemaPLUSSuggestionOutcomeReported *)self suggestionLinkId];
    dictionaryRepresentation4 = [suggestionLinkId dictionaryRepresentation];
    if (dictionaryRepresentation4)
    {
      [dictionary setObject:dictionaryRepresentation4 forKeyedSubscript:@"suggestionLinkId"];
    }

    else
    {
      null4 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null4 forKeyedSubscript:@"suggestionLinkId"];
    }
  }

  if (*&self->_has)
  {
    v16 = [(PLUSSchemaPLUSSuggestionOutcomeReported *)self suggestionOutcome]- 1;
    if (v16 > 0xE)
    {
      v17 = @"PLUSSUGGESTIONOUTCOME_UNKNOWN";
    }

    else
    {
      v17 = off_1E78E0B50[v16];
    }

    [dictionary setObject:v17 forKeyedSubscript:@"suggestionOutcome"];
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
    v6 = 2654435761 * self->_suggestionOutcome;
  }

  else
  {
    v6 = 0;
  }

  return v4 ^ v3 ^ v5 ^ v6 ^ [(PLUSSchemaPLUSSuggestionDomainOutcome *)self->_domainOutcome hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_25;
  }

  suggestionDomainMetadata = [(PLUSSchemaPLUSSuggestionOutcomeReported *)self suggestionDomainMetadata];
  suggestionDomainMetadata2 = [equalCopy suggestionDomainMetadata];
  if ((suggestionDomainMetadata != 0) == (suggestionDomainMetadata2 == 0))
  {
    goto LABEL_24;
  }

  suggestionDomainMetadata3 = [(PLUSSchemaPLUSSuggestionOutcomeReported *)self suggestionDomainMetadata];
  if (suggestionDomainMetadata3)
  {
    v8 = suggestionDomainMetadata3;
    suggestionDomainMetadata4 = [(PLUSSchemaPLUSSuggestionOutcomeReported *)self suggestionDomainMetadata];
    suggestionDomainMetadata5 = [equalCopy suggestionDomainMetadata];
    v11 = [suggestionDomainMetadata4 isEqual:suggestionDomainMetadata5];

    if (!v11)
    {
      goto LABEL_25;
    }
  }

  else
  {
  }

  suggestionDomainMetadata = [(PLUSSchemaPLUSSuggestionOutcomeReported *)self suggestionLinkId];
  suggestionDomainMetadata2 = [equalCopy suggestionLinkId];
  if ((suggestionDomainMetadata != 0) == (suggestionDomainMetadata2 == 0))
  {
    goto LABEL_24;
  }

  suggestionLinkId = [(PLUSSchemaPLUSSuggestionOutcomeReported *)self suggestionLinkId];
  if (suggestionLinkId)
  {
    v13 = suggestionLinkId;
    suggestionLinkId2 = [(PLUSSchemaPLUSSuggestionOutcomeReported *)self suggestionLinkId];
    suggestionLinkId3 = [equalCopy suggestionLinkId];
    v16 = [suggestionLinkId2 isEqual:suggestionLinkId3];

    if (!v16)
    {
      goto LABEL_25;
    }
  }

  else
  {
  }

  suggestionDomainMetadata = [(PLUSSchemaPLUSSuggestionOutcomeReported *)self originalRequestId];
  suggestionDomainMetadata2 = [equalCopy originalRequestId];
  if ((suggestionDomainMetadata != 0) == (suggestionDomainMetadata2 == 0))
  {
    goto LABEL_24;
  }

  originalRequestId = [(PLUSSchemaPLUSSuggestionOutcomeReported *)self originalRequestId];
  if (originalRequestId)
  {
    v18 = originalRequestId;
    originalRequestId2 = [(PLUSSchemaPLUSSuggestionOutcomeReported *)self originalRequestId];
    originalRequestId3 = [equalCopy originalRequestId];
    v21 = [originalRequestId2 isEqual:originalRequestId3];

    if (!v21)
    {
      goto LABEL_25;
    }
  }

  else
  {
  }

  if ((*&self->_has & 1) != (equalCopy[48] & 1))
  {
    goto LABEL_25;
  }

  if (*&self->_has)
  {
    suggestionOutcome = self->_suggestionOutcome;
    if (suggestionOutcome != [equalCopy suggestionOutcome])
    {
      goto LABEL_25;
    }
  }

  suggestionDomainMetadata = [(PLUSSchemaPLUSSuggestionOutcomeReported *)self domainOutcome];
  suggestionDomainMetadata2 = [equalCopy domainOutcome];
  if ((suggestionDomainMetadata != 0) != (suggestionDomainMetadata2 == 0))
  {
    domainOutcome = [(PLUSSchemaPLUSSuggestionOutcomeReported *)self domainOutcome];
    if (!domainOutcome)
    {

LABEL_28:
      v28 = 1;
      goto LABEL_26;
    }

    v24 = domainOutcome;
    domainOutcome2 = [(PLUSSchemaPLUSSuggestionOutcomeReported *)self domainOutcome];
    domainOutcome3 = [equalCopy domainOutcome];
    v27 = [domainOutcome2 isEqual:domainOutcome3];

    if (v27)
    {
      goto LABEL_28;
    }
  }

  else
  {
LABEL_24:
  }

LABEL_25:
  v28 = 0;
LABEL_26:

  return v28;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  suggestionDomainMetadata = [(PLUSSchemaPLUSSuggestionOutcomeReported *)self suggestionDomainMetadata];

  if (suggestionDomainMetadata)
  {
    suggestionDomainMetadata2 = [(PLUSSchemaPLUSSuggestionOutcomeReported *)self suggestionDomainMetadata];
    PBDataWriterWriteSubmessage();
  }

  suggestionLinkId = [(PLUSSchemaPLUSSuggestionOutcomeReported *)self suggestionLinkId];

  if (suggestionLinkId)
  {
    suggestionLinkId2 = [(PLUSSchemaPLUSSuggestionOutcomeReported *)self suggestionLinkId];
    PBDataWriterWriteSubmessage();
  }

  originalRequestId = [(PLUSSchemaPLUSSuggestionOutcomeReported *)self originalRequestId];

  if (originalRequestId)
  {
    originalRequestId2 = [(PLUSSchemaPLUSSuggestionOutcomeReported *)self originalRequestId];
    PBDataWriterWriteSubmessage();
  }

  if (*&self->_has)
  {
    PBDataWriterWriteInt32Field();
  }

  domainOutcome = [(PLUSSchemaPLUSSuggestionOutcomeReported *)self domainOutcome];

  v11 = toCopy;
  if (domainOutcome)
  {
    domainOutcome2 = [(PLUSSchemaPLUSSuggestionOutcomeReported *)self domainOutcome];
    PBDataWriterWriteSubmessage();

    v11 = toCopy;
  }
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v19.receiver = self;
  v19.super_class = PLUSSchemaPLUSSuggestionOutcomeReported;
  v5 = [(SISchemaInstrumentationMessage *)&v19 applySensitiveConditionsPolicy:policyCopy];
  suggestionDomainMetadata = [(PLUSSchemaPLUSSuggestionOutcomeReported *)self suggestionDomainMetadata];
  v7 = [suggestionDomainMetadata applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(PLUSSchemaPLUSSuggestionOutcomeReported *)self deleteSuggestionDomainMetadata];
  }

  suggestionLinkId = [(PLUSSchemaPLUSSuggestionOutcomeReported *)self suggestionLinkId];
  v10 = [suggestionLinkId applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v10 suppressMessage];

  if (suppressMessage2)
  {
    [(PLUSSchemaPLUSSuggestionOutcomeReported *)self deleteSuggestionLinkId];
  }

  originalRequestId = [(PLUSSchemaPLUSSuggestionOutcomeReported *)self originalRequestId];
  v13 = [originalRequestId applySensitiveConditionsPolicy:policyCopy];
  suppressMessage3 = [v13 suppressMessage];

  if (suppressMessage3)
  {
    [(PLUSSchemaPLUSSuggestionOutcomeReported *)self deleteOriginalRequestId];
  }

  domainOutcome = [(PLUSSchemaPLUSSuggestionOutcomeReported *)self domainOutcome];
  v16 = [domainOutcome applySensitiveConditionsPolicy:policyCopy];
  suppressMessage4 = [v16 suppressMessage];

  if (suppressMessage4)
  {
    [(PLUSSchemaPLUSSuggestionOutcomeReported *)self deleteDomainOutcome];
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