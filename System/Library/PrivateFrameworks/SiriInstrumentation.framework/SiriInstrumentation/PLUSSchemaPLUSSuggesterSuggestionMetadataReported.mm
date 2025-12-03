@interface PLUSSchemaPLUSSuggesterSuggestionMetadataReported
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (PLUSSchemaPLUSSuggesterSuggestionMetadataReported)initWithDictionary:(id)dictionary;
- (PLUSSchemaPLUSSuggesterSuggestionMetadataReported)initWithJSON:(id)n;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasSuggestionNoveltyState:(BOOL)state;
- (void)writeTo:(id)to;
@end

@implementation PLUSSchemaPLUSSuggesterSuggestionMetadataReported

- (PLUSSchemaPLUSSuggesterSuggestionMetadataReported)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v18.receiver = self;
  v18.super_class = PLUSSchemaPLUSSuggesterSuggestionMetadataReported;
  v5 = [(PLUSSchemaPLUSSuggesterSuggestionMetadataReported *)&v18 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"suggestionDomainMetadata"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[PLUSSchemaPLUSSuggestionDomainMetadata alloc] initWithDictionary:v6];
      [(PLUSSchemaPLUSSuggesterSuggestionMetadataReported *)v5 setSuggestionDomainMetadata:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"suggestionLinkId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[SISchemaUUID alloc] initWithDictionary:v8];
      [(PLUSSchemaPLUSSuggesterSuggestionMetadataReported *)v5 setSuggestionLinkId:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"originalRequestId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[SISchemaUUID alloc] initWithDictionary:v10];
      [(PLUSSchemaPLUSSuggesterSuggestionMetadataReported *)v5 setOriginalRequestId:v11];
    }

    v12 = [dictionaryCopy objectForKeyedSubscript:@"suggestionSurfaced"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[PLUSSchemaPLUSSuggesterSuggestionMetadataReported setSuggestionSurfaced:](v5, "setSuggestionSurfaced:", [v12 intValue]);
    }

    v13 = [dictionaryCopy objectForKeyedSubscript:@"suggestionNoveltyState"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[PLUSSchemaPLUSSuggesterSuggestionMetadataReported setSuggestionNoveltyState:](v5, "setSuggestionNoveltyState:", [v13 intValue]);
    }

    v14 = [dictionaryCopy objectForKeyedSubscript:@"domainSuggestionMetadata"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = [[PLUSSchemaPLUSSuggesterDomainSuggestionMetadata alloc] initWithDictionary:v14];
      [(PLUSSchemaPLUSSuggesterSuggestionMetadataReported *)v5 setDomainSuggestionMetadata:v15];
    }

    v16 = v5;
  }

  return v5;
}

- (PLUSSchemaPLUSSuggesterSuggestionMetadataReported)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(PLUSSchemaPLUSSuggesterSuggestionMetadataReported *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(PLUSSchemaPLUSSuggesterSuggestionMetadataReported *)self dictionaryRepresentation];
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
  if (self->_domainSuggestionMetadata)
  {
    domainSuggestionMetadata = [(PLUSSchemaPLUSSuggesterSuggestionMetadataReported *)self domainSuggestionMetadata];
    dictionaryRepresentation = [domainSuggestionMetadata dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"domainSuggestionMetadata"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"domainSuggestionMetadata"];
    }
  }

  if (self->_originalRequestId)
  {
    originalRequestId = [(PLUSSchemaPLUSSuggesterSuggestionMetadataReported *)self originalRequestId];
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
    suggestionDomainMetadata = [(PLUSSchemaPLUSSuggesterSuggestionMetadataReported *)self suggestionDomainMetadata];
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
    suggestionLinkId = [(PLUSSchemaPLUSSuggesterSuggestionMetadataReported *)self suggestionLinkId];
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

  has = self->_has;
  if ((has & 2) != 0)
  {
    v17 = [(PLUSSchemaPLUSSuggesterSuggestionMetadataReported *)self suggestionNoveltyState]- 1;
    if (v17 > 2)
    {
      v18 = @"PLUSSUGGESTIONNOVELTYSTATE_UNKNOWN";
    }

    else
    {
      v18 = off_1E78E0A90[v17];
    }

    [dictionary setObject:v18 forKeyedSubscript:@"suggestionNoveltyState"];
    has = self->_has;
  }

  if (has)
  {
    v19 = [(PLUSSchemaPLUSSuggesterSuggestionMetadataReported *)self suggestionSurfaced]- 1;
    if (v19 > 2)
    {
      v20 = @"PLUSSUGGESTIONSURFACEDSTATE_UNKNOWN";
    }

    else
    {
      v20 = off_1E78E0AA8[v19];
    }

    [dictionary setObject:v20 forKeyedSubscript:@"suggestionSurfaced"];
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
    v6 = 2654435761 * self->_suggestionSurfaced;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_5:
    v7 = 0;
    return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ [(PLUSSchemaPLUSSuggesterDomainSuggestionMetadata *)self->_domainSuggestionMetadata hash];
  }

  v6 = 0;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v7 = 2654435761 * self->_suggestionNoveltyState;
  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ [(PLUSSchemaPLUSSuggesterDomainSuggestionMetadata *)self->_domainSuggestionMetadata hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_29;
  }

  suggestionDomainMetadata = [(PLUSSchemaPLUSSuggesterSuggestionMetadataReported *)self suggestionDomainMetadata];
  suggestionDomainMetadata2 = [equalCopy suggestionDomainMetadata];
  if ((suggestionDomainMetadata != 0) == (suggestionDomainMetadata2 == 0))
  {
    goto LABEL_28;
  }

  suggestionDomainMetadata3 = [(PLUSSchemaPLUSSuggesterSuggestionMetadataReported *)self suggestionDomainMetadata];
  if (suggestionDomainMetadata3)
  {
    v8 = suggestionDomainMetadata3;
    suggestionDomainMetadata4 = [(PLUSSchemaPLUSSuggesterSuggestionMetadataReported *)self suggestionDomainMetadata];
    suggestionDomainMetadata5 = [equalCopy suggestionDomainMetadata];
    v11 = [suggestionDomainMetadata4 isEqual:suggestionDomainMetadata5];

    if (!v11)
    {
      goto LABEL_29;
    }
  }

  else
  {
  }

  suggestionDomainMetadata = [(PLUSSchemaPLUSSuggesterSuggestionMetadataReported *)self suggestionLinkId];
  suggestionDomainMetadata2 = [equalCopy suggestionLinkId];
  if ((suggestionDomainMetadata != 0) == (suggestionDomainMetadata2 == 0))
  {
    goto LABEL_28;
  }

  suggestionLinkId = [(PLUSSchemaPLUSSuggesterSuggestionMetadataReported *)self suggestionLinkId];
  if (suggestionLinkId)
  {
    v13 = suggestionLinkId;
    suggestionLinkId2 = [(PLUSSchemaPLUSSuggesterSuggestionMetadataReported *)self suggestionLinkId];
    suggestionLinkId3 = [equalCopy suggestionLinkId];
    v16 = [suggestionLinkId2 isEqual:suggestionLinkId3];

    if (!v16)
    {
      goto LABEL_29;
    }
  }

  else
  {
  }

  suggestionDomainMetadata = [(PLUSSchemaPLUSSuggesterSuggestionMetadataReported *)self originalRequestId];
  suggestionDomainMetadata2 = [equalCopy originalRequestId];
  if ((suggestionDomainMetadata != 0) == (suggestionDomainMetadata2 == 0))
  {
    goto LABEL_28;
  }

  originalRequestId = [(PLUSSchemaPLUSSuggesterSuggestionMetadataReported *)self originalRequestId];
  if (originalRequestId)
  {
    v18 = originalRequestId;
    originalRequestId2 = [(PLUSSchemaPLUSSuggesterSuggestionMetadataReported *)self originalRequestId];
    originalRequestId3 = [equalCopy originalRequestId];
    v21 = [originalRequestId2 isEqual:originalRequestId3];

    if (!v21)
    {
      goto LABEL_29;
    }
  }

  else
  {
  }

  has = self->_has;
  v23 = equalCopy[48];
  if ((*&has & 1) != (v23 & 1))
  {
    goto LABEL_29;
  }

  if (*&has)
  {
    suggestionSurfaced = self->_suggestionSurfaced;
    if (suggestionSurfaced != [equalCopy suggestionSurfaced])
    {
      goto LABEL_29;
    }

    has = self->_has;
    v23 = equalCopy[48];
  }

  v25 = (*&has >> 1) & 1;
  if (v25 != ((v23 >> 1) & 1))
  {
    goto LABEL_29;
  }

  if (v25)
  {
    suggestionNoveltyState = self->_suggestionNoveltyState;
    if (suggestionNoveltyState != [equalCopy suggestionNoveltyState])
    {
      goto LABEL_29;
    }
  }

  suggestionDomainMetadata = [(PLUSSchemaPLUSSuggesterSuggestionMetadataReported *)self domainSuggestionMetadata];
  suggestionDomainMetadata2 = [equalCopy domainSuggestionMetadata];
  if ((suggestionDomainMetadata != 0) == (suggestionDomainMetadata2 == 0))
  {
LABEL_28:

    goto LABEL_29;
  }

  domainSuggestionMetadata = [(PLUSSchemaPLUSSuggesterSuggestionMetadataReported *)self domainSuggestionMetadata];
  if (!domainSuggestionMetadata)
  {

LABEL_32:
    v32 = 1;
    goto LABEL_30;
  }

  v28 = domainSuggestionMetadata;
  domainSuggestionMetadata2 = [(PLUSSchemaPLUSSuggesterSuggestionMetadataReported *)self domainSuggestionMetadata];
  domainSuggestionMetadata3 = [equalCopy domainSuggestionMetadata];
  v31 = [domainSuggestionMetadata2 isEqual:domainSuggestionMetadata3];

  if (v31)
  {
    goto LABEL_32;
  }

LABEL_29:
  v32 = 0;
LABEL_30:

  return v32;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  suggestionDomainMetadata = [(PLUSSchemaPLUSSuggesterSuggestionMetadataReported *)self suggestionDomainMetadata];

  if (suggestionDomainMetadata)
  {
    suggestionDomainMetadata2 = [(PLUSSchemaPLUSSuggesterSuggestionMetadataReported *)self suggestionDomainMetadata];
    PBDataWriterWriteSubmessage();
  }

  suggestionLinkId = [(PLUSSchemaPLUSSuggesterSuggestionMetadataReported *)self suggestionLinkId];

  if (suggestionLinkId)
  {
    suggestionLinkId2 = [(PLUSSchemaPLUSSuggesterSuggestionMetadataReported *)self suggestionLinkId];
    PBDataWriterWriteSubmessage();
  }

  originalRequestId = [(PLUSSchemaPLUSSuggesterSuggestionMetadataReported *)self originalRequestId];

  if (originalRequestId)
  {
    originalRequestId2 = [(PLUSSchemaPLUSSuggesterSuggestionMetadataReported *)self originalRequestId];
    PBDataWriterWriteSubmessage();
  }

  has = self->_has;
  if (has)
  {
    PBDataWriterWriteInt32Field();
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    PBDataWriterWriteInt32Field();
  }

  domainSuggestionMetadata = [(PLUSSchemaPLUSSuggesterSuggestionMetadataReported *)self domainSuggestionMetadata];

  v12 = toCopy;
  if (domainSuggestionMetadata)
  {
    domainSuggestionMetadata2 = [(PLUSSchemaPLUSSuggesterSuggestionMetadataReported *)self domainSuggestionMetadata];
    PBDataWriterWriteSubmessage();

    v12 = toCopy;
  }
}

- (void)setHasSuggestionNoveltyState:(BOOL)state
{
  if (state)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v19.receiver = self;
  v19.super_class = PLUSSchemaPLUSSuggesterSuggestionMetadataReported;
  v5 = [(SISchemaInstrumentationMessage *)&v19 applySensitiveConditionsPolicy:policyCopy];
  suggestionDomainMetadata = [(PLUSSchemaPLUSSuggesterSuggestionMetadataReported *)self suggestionDomainMetadata];
  v7 = [suggestionDomainMetadata applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(PLUSSchemaPLUSSuggesterSuggestionMetadataReported *)self deleteSuggestionDomainMetadata];
  }

  suggestionLinkId = [(PLUSSchemaPLUSSuggesterSuggestionMetadataReported *)self suggestionLinkId];
  v10 = [suggestionLinkId applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v10 suppressMessage];

  if (suppressMessage2)
  {
    [(PLUSSchemaPLUSSuggesterSuggestionMetadataReported *)self deleteSuggestionLinkId];
  }

  originalRequestId = [(PLUSSchemaPLUSSuggesterSuggestionMetadataReported *)self originalRequestId];
  v13 = [originalRequestId applySensitiveConditionsPolicy:policyCopy];
  suppressMessage3 = [v13 suppressMessage];

  if (suppressMessage3)
  {
    [(PLUSSchemaPLUSSuggesterSuggestionMetadataReported *)self deleteOriginalRequestId];
  }

  domainSuggestionMetadata = [(PLUSSchemaPLUSSuggesterSuggestionMetadataReported *)self domainSuggestionMetadata];
  v16 = [domainSuggestionMetadata applySensitiveConditionsPolicy:policyCopy];
  suppressMessage4 = [v16 suppressMessage];

  if (suppressMessage4)
  {
    [(PLUSSchemaPLUSSuggesterSuggestionMetadataReported *)self deleteDomainSuggestionMetadata];
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