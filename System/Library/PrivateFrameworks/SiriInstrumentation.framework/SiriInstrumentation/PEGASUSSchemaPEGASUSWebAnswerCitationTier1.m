@interface PEGASUSSchemaPEGASUSWebAnswerCitationTier1
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (PEGASUSSchemaPEGASUSWebAnswerCitationTier1)initWithDictionary:(id)a3;
- (PEGASUSSchemaPEGASUSWebAnswerCitationTier1)initWithJSON:(id)a3;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)a3;
@end

@implementation PEGASUSSchemaPEGASUSWebAnswerCitationTier1

- (PEGASUSSchemaPEGASUSWebAnswerCitationTier1)initWithDictionary:(id)a3
{
  v4 = a3;
  v20.receiver = self;
  v20.super_class = PEGASUSSchemaPEGASUSWebAnswerCitationTier1;
  v5 = [(PEGASUSSchemaPEGASUSWebAnswerCitationTier1 *)&v20 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"url"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(PEGASUSSchemaPEGASUSWebAnswerCitationTier1 *)v5 setUrl:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"sourceDomain"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [v8 copy];
      [(PEGASUSSchemaPEGASUSWebAnswerCitationTier1 *)v5 setSourceDomain:v9];
    }

    v10 = [v4 objectForKeyedSubscript:@"readableAttribution"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [v10 copy];
      [(PEGASUSSchemaPEGASUSWebAnswerCitationTier1 *)v5 setReadableAttribution:v11];
    }

    v12 = [v4 objectForKeyedSubscript:@"citedText"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [v12 copy];
      [(PEGASUSSchemaPEGASUSWebAnswerCitationTier1 *)v5 setCitedText:v13];
    }

    v14 = [v4 objectForKeyedSubscript:@"enrichedUrl"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = [v14 copy];
      [(PEGASUSSchemaPEGASUSWebAnswerCitationTier1 *)v5 setEnrichedUrl:v15];
    }

    v16 = [v4 objectForKeyedSubscript:@"thumbnail"];
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

- (PEGASUSSchemaPEGASUSWebAnswerCitationTier1)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(PEGASUSSchemaPEGASUSWebAnswerCitationTier1 *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(PEGASUSSchemaPEGASUSWebAnswerCitationTier1 *)self dictionaryRepresentation];
  if ([MEMORY[0x1E696ACB0] isValidJSONObject:v2])
  {
    v3 = [MEMORY[0x1E696ACB0] dataWithJSONObject:v2 options:0 error:0];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if (self->_citedText)
  {
    v4 = [(PEGASUSSchemaPEGASUSWebAnswerCitationTier1 *)self citedText];
    v5 = [v4 copy];
    [v3 setObject:v5 forKeyedSubscript:@"citedText"];
  }

  if (self->_enrichedUrl)
  {
    v6 = [(PEGASUSSchemaPEGASUSWebAnswerCitationTier1 *)self enrichedUrl];
    v7 = [v6 copy];
    [v3 setObject:v7 forKeyedSubscript:@"enrichedUrl"];
  }

  if (self->_readableAttribution)
  {
    v8 = [(PEGASUSSchemaPEGASUSWebAnswerCitationTier1 *)self readableAttribution];
    v9 = [v8 copy];
    [v3 setObject:v9 forKeyedSubscript:@"readableAttribution"];
  }

  if (self->_sourceDomain)
  {
    v10 = [(PEGASUSSchemaPEGASUSWebAnswerCitationTier1 *)self sourceDomain];
    v11 = [v10 copy];
    [v3 setObject:v11 forKeyedSubscript:@"sourceDomain"];
  }

  if (self->_thumbnail)
  {
    v12 = [(PEGASUSSchemaPEGASUSWebAnswerCitationTier1 *)self thumbnail];
    v13 = [v12 dictionaryRepresentation];
    if (v13)
    {
      [v3 setObject:v13 forKeyedSubscript:@"thumbnail"];
    }

    else
    {
      v14 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v14 forKeyedSubscript:@"thumbnail"];
    }
  }

  if (self->_url)
  {
    v15 = [(PEGASUSSchemaPEGASUSWebAnswerCitationTier1 *)self url];
    v16 = [v15 copy];
    [v3 setObject:v16 forKeyedSubscript:@"url"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_32;
  }

  v5 = [(PEGASUSSchemaPEGASUSWebAnswerCitationTier1 *)self url];
  v6 = [v4 url];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_31;
  }

  v7 = [(PEGASUSSchemaPEGASUSWebAnswerCitationTier1 *)self url];
  if (v7)
  {
    v8 = v7;
    v9 = [(PEGASUSSchemaPEGASUSWebAnswerCitationTier1 *)self url];
    v10 = [v4 url];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_32;
    }
  }

  else
  {
  }

  v5 = [(PEGASUSSchemaPEGASUSWebAnswerCitationTier1 *)self sourceDomain];
  v6 = [v4 sourceDomain];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_31;
  }

  v12 = [(PEGASUSSchemaPEGASUSWebAnswerCitationTier1 *)self sourceDomain];
  if (v12)
  {
    v13 = v12;
    v14 = [(PEGASUSSchemaPEGASUSWebAnswerCitationTier1 *)self sourceDomain];
    v15 = [v4 sourceDomain];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_32;
    }
  }

  else
  {
  }

  v5 = [(PEGASUSSchemaPEGASUSWebAnswerCitationTier1 *)self readableAttribution];
  v6 = [v4 readableAttribution];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_31;
  }

  v17 = [(PEGASUSSchemaPEGASUSWebAnswerCitationTier1 *)self readableAttribution];
  if (v17)
  {
    v18 = v17;
    v19 = [(PEGASUSSchemaPEGASUSWebAnswerCitationTier1 *)self readableAttribution];
    v20 = [v4 readableAttribution];
    v21 = [v19 isEqual:v20];

    if (!v21)
    {
      goto LABEL_32;
    }
  }

  else
  {
  }

  v5 = [(PEGASUSSchemaPEGASUSWebAnswerCitationTier1 *)self citedText];
  v6 = [v4 citedText];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_31;
  }

  v22 = [(PEGASUSSchemaPEGASUSWebAnswerCitationTier1 *)self citedText];
  if (v22)
  {
    v23 = v22;
    v24 = [(PEGASUSSchemaPEGASUSWebAnswerCitationTier1 *)self citedText];
    v25 = [v4 citedText];
    v26 = [v24 isEqual:v25];

    if (!v26)
    {
      goto LABEL_32;
    }
  }

  else
  {
  }

  v5 = [(PEGASUSSchemaPEGASUSWebAnswerCitationTier1 *)self enrichedUrl];
  v6 = [v4 enrichedUrl];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_31;
  }

  v27 = [(PEGASUSSchemaPEGASUSWebAnswerCitationTier1 *)self enrichedUrl];
  if (v27)
  {
    v28 = v27;
    v29 = [(PEGASUSSchemaPEGASUSWebAnswerCitationTier1 *)self enrichedUrl];
    v30 = [v4 enrichedUrl];
    v31 = [v29 isEqual:v30];

    if (!v31)
    {
      goto LABEL_32;
    }
  }

  else
  {
  }

  v5 = [(PEGASUSSchemaPEGASUSWebAnswerCitationTier1 *)self thumbnail];
  v6 = [v4 thumbnail];
  if ((v5 != 0) != (v6 == 0))
  {
    v32 = [(PEGASUSSchemaPEGASUSWebAnswerCitationTier1 *)self thumbnail];
    if (!v32)
    {

LABEL_35:
      v37 = 1;
      goto LABEL_33;
    }

    v33 = v32;
    v34 = [(PEGASUSSchemaPEGASUSWebAnswerCitationTier1 *)self thumbnail];
    v35 = [v4 thumbnail];
    v36 = [v34 isEqual:v35];

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

- (void)writeTo:(id)a3
{
  v12 = a3;
  v4 = [(PEGASUSSchemaPEGASUSWebAnswerCitationTier1 *)self url];

  if (v4)
  {
    PBDataWriterWriteStringField();
  }

  v5 = [(PEGASUSSchemaPEGASUSWebAnswerCitationTier1 *)self sourceDomain];

  if (v5)
  {
    PBDataWriterWriteStringField();
  }

  v6 = [(PEGASUSSchemaPEGASUSWebAnswerCitationTier1 *)self readableAttribution];

  if (v6)
  {
    PBDataWriterWriteStringField();
  }

  v7 = [(PEGASUSSchemaPEGASUSWebAnswerCitationTier1 *)self citedText];

  if (v7)
  {
    PBDataWriterWriteStringField();
  }

  v8 = [(PEGASUSSchemaPEGASUSWebAnswerCitationTier1 *)self enrichedUrl];

  if (v8)
  {
    PBDataWriterWriteStringField();
  }

  v9 = [(PEGASUSSchemaPEGASUSWebAnswerCitationTier1 *)self thumbnail];

  v10 = v12;
  if (v9)
  {
    v11 = [(PEGASUSSchemaPEGASUSWebAnswerCitationTier1 *)self thumbnail];
    PBDataWriterWriteSubmessage();

    v10 = v12;
  }
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = PEGASUSSchemaPEGASUSWebAnswerCitationTier1;
  v5 = [(SISchemaInstrumentationMessage *)&v10 applySensitiveConditionsPolicy:v4];
  if ([v4 isConditionSet:2])
  {
    [(PEGASUSSchemaPEGASUSWebAnswerCitationTier1 *)self deleteUrl];
    [(PEGASUSSchemaPEGASUSWebAnswerCitationTier1 *)self deleteSourceDomain];
    [(PEGASUSSchemaPEGASUSWebAnswerCitationTier1 *)self deleteReadableAttribution];
    [(PEGASUSSchemaPEGASUSWebAnswerCitationTier1 *)self deleteCitedText];
    [(PEGASUSSchemaPEGASUSWebAnswerCitationTier1 *)self deleteEnrichedUrl];
  }

  if ([v4 isConditionSet:4])
  {
    [(PEGASUSSchemaPEGASUSWebAnswerCitationTier1 *)self deleteUrl];
    [(PEGASUSSchemaPEGASUSWebAnswerCitationTier1 *)self deleteSourceDomain];
    [(PEGASUSSchemaPEGASUSWebAnswerCitationTier1 *)self deleteReadableAttribution];
    [(PEGASUSSchemaPEGASUSWebAnswerCitationTier1 *)self deleteCitedText];
    [(PEGASUSSchemaPEGASUSWebAnswerCitationTier1 *)self deleteEnrichedUrl];
  }

  if ([v4 isConditionSet:5])
  {
    [(PEGASUSSchemaPEGASUSWebAnswerCitationTier1 *)self deleteUrl];
    [(PEGASUSSchemaPEGASUSWebAnswerCitationTier1 *)self deleteSourceDomain];
    [(PEGASUSSchemaPEGASUSWebAnswerCitationTier1 *)self deleteReadableAttribution];
    [(PEGASUSSchemaPEGASUSWebAnswerCitationTier1 *)self deleteCitedText];
    [(PEGASUSSchemaPEGASUSWebAnswerCitationTier1 *)self deleteEnrichedUrl];
  }

  if ([v4 isConditionSet:6])
  {
    [(PEGASUSSchemaPEGASUSWebAnswerCitationTier1 *)self deleteUrl];
    [(PEGASUSSchemaPEGASUSWebAnswerCitationTier1 *)self deleteSourceDomain];
    [(PEGASUSSchemaPEGASUSWebAnswerCitationTier1 *)self deleteReadableAttribution];
    [(PEGASUSSchemaPEGASUSWebAnswerCitationTier1 *)self deleteCitedText];
    [(PEGASUSSchemaPEGASUSWebAnswerCitationTier1 *)self deleteEnrichedUrl];
  }

  if ([v4 isConditionSet:7])
  {
    [(PEGASUSSchemaPEGASUSWebAnswerCitationTier1 *)self deleteUrl];
    [(PEGASUSSchemaPEGASUSWebAnswerCitationTier1 *)self deleteSourceDomain];
    [(PEGASUSSchemaPEGASUSWebAnswerCitationTier1 *)self deleteReadableAttribution];
    [(PEGASUSSchemaPEGASUSWebAnswerCitationTier1 *)self deleteCitedText];
    [(PEGASUSSchemaPEGASUSWebAnswerCitationTier1 *)self deleteEnrichedUrl];
  }

  v6 = [(PEGASUSSchemaPEGASUSWebAnswerCitationTier1 *)self thumbnail];
  v7 = [v6 applySensitiveConditionsPolicy:v4];
  v8 = [v7 suppressMessage];

  if (v8)
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