@interface PEGASUSSchemaPEGASUSWebAnswerCitationTier1
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (PEGASUSSchemaPEGASUSWebAnswerCitationTier1)initWithDictionary:(id)dictionary;
- (PEGASUSSchemaPEGASUSWebAnswerCitationTier1)initWithJSON:(id)n;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)to;
@end

@implementation PEGASUSSchemaPEGASUSWebAnswerCitationTier1

- (PEGASUSSchemaPEGASUSWebAnswerCitationTier1)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v20.receiver = self;
  v20.super_class = PEGASUSSchemaPEGASUSWebAnswerCitationTier1;
  v5 = [(PEGASUSSchemaPEGASUSWebAnswerCitationTier1 *)&v20 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"url"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(PEGASUSSchemaPEGASUSWebAnswerCitationTier1 *)v5 setUrl:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"sourceDomain"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [v8 copy];
      [(PEGASUSSchemaPEGASUSWebAnswerCitationTier1 *)v5 setSourceDomain:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"readableAttribution"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [v10 copy];
      [(PEGASUSSchemaPEGASUSWebAnswerCitationTier1 *)v5 setReadableAttribution:v11];
    }

    v12 = [dictionaryCopy objectForKeyedSubscript:@"citedText"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [v12 copy];
      [(PEGASUSSchemaPEGASUSWebAnswerCitationTier1 *)v5 setCitedText:v13];
    }

    v14 = [dictionaryCopy objectForKeyedSubscript:@"enrichedUrl"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = [v14 copy];
      [(PEGASUSSchemaPEGASUSWebAnswerCitationTier1 *)v5 setEnrichedUrl:v15];
    }

    v16 = [dictionaryCopy objectForKeyedSubscript:@"thumbnail"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = [[PEGASUSSchemaPEGASUSWebAnswerThumbnailTier1 alloc] initWithDictionary:v16];
      [(PEGASUSSchemaPEGASUSWebAnswerCitationTier1 *)v5 setThumbnail:v17];
    }

    v18 = v5;
  }

  return v5;
}

- (PEGASUSSchemaPEGASUSWebAnswerCitationTier1)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(PEGASUSSchemaPEGASUSWebAnswerCitationTier1 *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(PEGASUSSchemaPEGASUSWebAnswerCitationTier1 *)self dictionaryRepresentation];
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
  if (self->_citedText)
  {
    citedText = [(PEGASUSSchemaPEGASUSWebAnswerCitationTier1 *)self citedText];
    v5 = [citedText copy];
    [dictionary setObject:v5 forKeyedSubscript:@"citedText"];
  }

  if (self->_enrichedUrl)
  {
    enrichedUrl = [(PEGASUSSchemaPEGASUSWebAnswerCitationTier1 *)self enrichedUrl];
    v7 = [enrichedUrl copy];
    [dictionary setObject:v7 forKeyedSubscript:@"enrichedUrl"];
  }

  if (self->_readableAttribution)
  {
    readableAttribution = [(PEGASUSSchemaPEGASUSWebAnswerCitationTier1 *)self readableAttribution];
    v9 = [readableAttribution copy];
    [dictionary setObject:v9 forKeyedSubscript:@"readableAttribution"];
  }

  if (self->_sourceDomain)
  {
    sourceDomain = [(PEGASUSSchemaPEGASUSWebAnswerCitationTier1 *)self sourceDomain];
    v11 = [sourceDomain copy];
    [dictionary setObject:v11 forKeyedSubscript:@"sourceDomain"];
  }

  if (self->_thumbnail)
  {
    thumbnail = [(PEGASUSSchemaPEGASUSWebAnswerCitationTier1 *)self thumbnail];
    dictionaryRepresentation = [thumbnail dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"thumbnail"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"thumbnail"];
    }
  }

  if (self->_url)
  {
    v15 = [(PEGASUSSchemaPEGASUSWebAnswerCitationTier1 *)self url];
    v16 = [v15 copy];
    [dictionary setObject:v16 forKeyedSubscript:@"url"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_url hash];
  v4 = [(NSString *)self->_sourceDomain hash]^ v3;
  v5 = [(NSString *)self->_readableAttribution hash];
  v6 = v4 ^ v5 ^ [(NSString *)self->_citedText hash];
  v7 = [(NSString *)self->_enrichedUrl hash];
  return v6 ^ v7 ^ [(PEGASUSSchemaPEGASUSWebAnswerThumbnailTier1 *)self->_thumbnail hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_32;
  }

  sourceDomain = [(PEGASUSSchemaPEGASUSWebAnswerCitationTier1 *)self url];
  sourceDomain2 = [equalCopy url];
  if ((sourceDomain != 0) == (sourceDomain2 == 0))
  {
    goto LABEL_31;
  }

  v7 = [(PEGASUSSchemaPEGASUSWebAnswerCitationTier1 *)self url];
  if (v7)
  {
    v8 = v7;
    v9 = [(PEGASUSSchemaPEGASUSWebAnswerCitationTier1 *)self url];
    v10 = [equalCopy url];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_32;
    }
  }

  else
  {
  }

  sourceDomain = [(PEGASUSSchemaPEGASUSWebAnswerCitationTier1 *)self sourceDomain];
  sourceDomain2 = [equalCopy sourceDomain];
  if ((sourceDomain != 0) == (sourceDomain2 == 0))
  {
    goto LABEL_31;
  }

  sourceDomain3 = [(PEGASUSSchemaPEGASUSWebAnswerCitationTier1 *)self sourceDomain];
  if (sourceDomain3)
  {
    v13 = sourceDomain3;
    sourceDomain4 = [(PEGASUSSchemaPEGASUSWebAnswerCitationTier1 *)self sourceDomain];
    sourceDomain5 = [equalCopy sourceDomain];
    v16 = [sourceDomain4 isEqual:sourceDomain5];

    if (!v16)
    {
      goto LABEL_32;
    }
  }

  else
  {
  }

  sourceDomain = [(PEGASUSSchemaPEGASUSWebAnswerCitationTier1 *)self readableAttribution];
  sourceDomain2 = [equalCopy readableAttribution];
  if ((sourceDomain != 0) == (sourceDomain2 == 0))
  {
    goto LABEL_31;
  }

  readableAttribution = [(PEGASUSSchemaPEGASUSWebAnswerCitationTier1 *)self readableAttribution];
  if (readableAttribution)
  {
    v18 = readableAttribution;
    readableAttribution2 = [(PEGASUSSchemaPEGASUSWebAnswerCitationTier1 *)self readableAttribution];
    readableAttribution3 = [equalCopy readableAttribution];
    v21 = [readableAttribution2 isEqual:readableAttribution3];

    if (!v21)
    {
      goto LABEL_32;
    }
  }

  else
  {
  }

  sourceDomain = [(PEGASUSSchemaPEGASUSWebAnswerCitationTier1 *)self citedText];
  sourceDomain2 = [equalCopy citedText];
  if ((sourceDomain != 0) == (sourceDomain2 == 0))
  {
    goto LABEL_31;
  }

  citedText = [(PEGASUSSchemaPEGASUSWebAnswerCitationTier1 *)self citedText];
  if (citedText)
  {
    v23 = citedText;
    citedText2 = [(PEGASUSSchemaPEGASUSWebAnswerCitationTier1 *)self citedText];
    citedText3 = [equalCopy citedText];
    v26 = [citedText2 isEqual:citedText3];

    if (!v26)
    {
      goto LABEL_32;
    }
  }

  else
  {
  }

  sourceDomain = [(PEGASUSSchemaPEGASUSWebAnswerCitationTier1 *)self enrichedUrl];
  sourceDomain2 = [equalCopy enrichedUrl];
  if ((sourceDomain != 0) == (sourceDomain2 == 0))
  {
    goto LABEL_31;
  }

  enrichedUrl = [(PEGASUSSchemaPEGASUSWebAnswerCitationTier1 *)self enrichedUrl];
  if (enrichedUrl)
  {
    v28 = enrichedUrl;
    enrichedUrl2 = [(PEGASUSSchemaPEGASUSWebAnswerCitationTier1 *)self enrichedUrl];
    enrichedUrl3 = [equalCopy enrichedUrl];
    v31 = [enrichedUrl2 isEqual:enrichedUrl3];

    if (!v31)
    {
      goto LABEL_32;
    }
  }

  else
  {
  }

  sourceDomain = [(PEGASUSSchemaPEGASUSWebAnswerCitationTier1 *)self thumbnail];
  sourceDomain2 = [equalCopy thumbnail];
  if ((sourceDomain != 0) != (sourceDomain2 == 0))
  {
    thumbnail = [(PEGASUSSchemaPEGASUSWebAnswerCitationTier1 *)self thumbnail];
    if (!thumbnail)
    {

LABEL_35:
      v37 = 1;
      goto LABEL_33;
    }

    v33 = thumbnail;
    thumbnail2 = [(PEGASUSSchemaPEGASUSWebAnswerCitationTier1 *)self thumbnail];
    thumbnail3 = [equalCopy thumbnail];
    v36 = [thumbnail2 isEqual:thumbnail3];

    if (v36)
    {
      goto LABEL_35;
    }
  }

  else
  {
LABEL_31:
  }

LABEL_32:
  v37 = 0;
LABEL_33:

  return v37;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v4 = [(PEGASUSSchemaPEGASUSWebAnswerCitationTier1 *)self url];

  if (v4)
  {
    PBDataWriterWriteStringField();
  }

  sourceDomain = [(PEGASUSSchemaPEGASUSWebAnswerCitationTier1 *)self sourceDomain];

  if (sourceDomain)
  {
    PBDataWriterWriteStringField();
  }

  readableAttribution = [(PEGASUSSchemaPEGASUSWebAnswerCitationTier1 *)self readableAttribution];

  if (readableAttribution)
  {
    PBDataWriterWriteStringField();
  }

  citedText = [(PEGASUSSchemaPEGASUSWebAnswerCitationTier1 *)self citedText];

  if (citedText)
  {
    PBDataWriterWriteStringField();
  }

  enrichedUrl = [(PEGASUSSchemaPEGASUSWebAnswerCitationTier1 *)self enrichedUrl];

  if (enrichedUrl)
  {
    PBDataWriterWriteStringField();
  }

  thumbnail = [(PEGASUSSchemaPEGASUSWebAnswerCitationTier1 *)self thumbnail];

  v10 = toCopy;
  if (thumbnail)
  {
    thumbnail2 = [(PEGASUSSchemaPEGASUSWebAnswerCitationTier1 *)self thumbnail];
    PBDataWriterWriteSubmessage();

    v10 = toCopy;
  }
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v10.receiver = self;
  v10.super_class = PEGASUSSchemaPEGASUSWebAnswerCitationTier1;
  v5 = [(SISchemaInstrumentationMessage *)&v10 applySensitiveConditionsPolicy:policyCopy];
  if ([policyCopy isConditionSet:2])
  {
    [(PEGASUSSchemaPEGASUSWebAnswerCitationTier1 *)self deleteUrl];
    [(PEGASUSSchemaPEGASUSWebAnswerCitationTier1 *)self deleteSourceDomain];
    [(PEGASUSSchemaPEGASUSWebAnswerCitationTier1 *)self deleteReadableAttribution];
    [(PEGASUSSchemaPEGASUSWebAnswerCitationTier1 *)self deleteCitedText];
    [(PEGASUSSchemaPEGASUSWebAnswerCitationTier1 *)self deleteEnrichedUrl];
  }

  if ([policyCopy isConditionSet:4])
  {
    [(PEGASUSSchemaPEGASUSWebAnswerCitationTier1 *)self deleteUrl];
    [(PEGASUSSchemaPEGASUSWebAnswerCitationTier1 *)self deleteSourceDomain];
    [(PEGASUSSchemaPEGASUSWebAnswerCitationTier1 *)self deleteReadableAttribution];
    [(PEGASUSSchemaPEGASUSWebAnswerCitationTier1 *)self deleteCitedText];
    [(PEGASUSSchemaPEGASUSWebAnswerCitationTier1 *)self deleteEnrichedUrl];
  }

  if ([policyCopy isConditionSet:5])
  {
    [(PEGASUSSchemaPEGASUSWebAnswerCitationTier1 *)self deleteUrl];
    [(PEGASUSSchemaPEGASUSWebAnswerCitationTier1 *)self deleteSourceDomain];
    [(PEGASUSSchemaPEGASUSWebAnswerCitationTier1 *)self deleteReadableAttribution];
    [(PEGASUSSchemaPEGASUSWebAnswerCitationTier1 *)self deleteCitedText];
    [(PEGASUSSchemaPEGASUSWebAnswerCitationTier1 *)self deleteEnrichedUrl];
  }

  if ([policyCopy isConditionSet:6])
  {
    [(PEGASUSSchemaPEGASUSWebAnswerCitationTier1 *)self deleteUrl];
    [(PEGASUSSchemaPEGASUSWebAnswerCitationTier1 *)self deleteSourceDomain];
    [(PEGASUSSchemaPEGASUSWebAnswerCitationTier1 *)self deleteReadableAttribution];
    [(PEGASUSSchemaPEGASUSWebAnswerCitationTier1 *)self deleteCitedText];
    [(PEGASUSSchemaPEGASUSWebAnswerCitationTier1 *)self deleteEnrichedUrl];
  }

  if ([policyCopy isConditionSet:7])
  {
    [(PEGASUSSchemaPEGASUSWebAnswerCitationTier1 *)self deleteUrl];
    [(PEGASUSSchemaPEGASUSWebAnswerCitationTier1 *)self deleteSourceDomain];
    [(PEGASUSSchemaPEGASUSWebAnswerCitationTier1 *)self deleteReadableAttribution];
    [(PEGASUSSchemaPEGASUSWebAnswerCitationTier1 *)self deleteCitedText];
    [(PEGASUSSchemaPEGASUSWebAnswerCitationTier1 *)self deleteEnrichedUrl];
  }

  thumbnail = [(PEGASUSSchemaPEGASUSWebAnswerCitationTier1 *)self thumbnail];
  v7 = [thumbnail applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(PEGASUSSchemaPEGASUSWebAnswerCitationTier1 *)self deleteThumbnail];
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