@interface PLUSSchemaPLUSSuggesterSuggestionMetadataReported
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (PLUSSchemaPLUSSuggesterSuggestionMetadataReported)initWithDictionary:(id)a3;
- (PLUSSchemaPLUSSuggesterSuggestionMetadataReported)initWithJSON:(id)a3;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasSuggestionNoveltyState:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation PLUSSchemaPLUSSuggesterSuggestionMetadataReported

- (PLUSSchemaPLUSSuggesterSuggestionMetadataReported)initWithDictionary:(id)a3
{
  v4 = a3;
  v18.receiver = self;
  v18.super_class = PLUSSchemaPLUSSuggesterSuggestionMetadataReported;
  v5 = [(PLUSSchemaPLUSSuggesterSuggestionMetadataReported *)&v18 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"suggestionDomainMetadata"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[PLUSSchemaPLUSSuggestionDomainMetadata alloc] initWithDictionary:v6];
      [(PLUSSchemaPLUSSuggesterSuggestionMetadataReported *)v5 setSuggestionDomainMetadata:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"suggestionLinkId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[SISchemaUUID alloc] initWithDictionary:v8];
      [(PLUSSchemaPLUSSuggesterSuggestionMetadataReported *)v5 setSuggestionLinkId:v9];
    }

    v10 = [v4 objectForKeyedSubscript:@"originalRequestId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[SISchemaUUID alloc] initWithDictionary:v10];
      [(PLUSSchemaPLUSSuggesterSuggestionMetadataReported *)v5 setOriginalRequestId:v11];
    }

    v12 = [v4 objectForKeyedSubscript:@"suggestionSurfaced"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[PLUSSchemaPLUSSuggesterSuggestionMetadataReported setSuggestionSurfaced:](v5, "setSuggestionSurfaced:", [v12 intValue]);
    }

    v13 = [v4 objectForKeyedSubscript:@"suggestionNoveltyState"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[PLUSSchemaPLUSSuggesterSuggestionMetadataReported setSuggestionNoveltyState:](v5, "setSuggestionNoveltyState:", [v13 intValue]);
    }

    v14 = [v4 objectForKeyedSubscript:@"domainSuggestionMetadata"];
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

- (PLUSSchemaPLUSSuggesterSuggestionMetadataReported)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(PLUSSchemaPLUSSuggesterSuggestionMetadataReported *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(PLUSSchemaPLUSSuggesterSuggestionMetadataReported *)self dictionaryRepresentation];
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
  if (self->_domainSuggestionMetadata)
  {
    v4 = [(PLUSSchemaPLUSSuggesterSuggestionMetadataReported *)self domainSuggestionMetadata];
    v5 = [v4 dictionaryRepresentation];
    if (v5)
    {
      [v3 setObject:v5 forKeyedSubscript:@"domainSuggestionMetadata"];
    }

    else
    {
      v6 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v6 forKeyedSubscript:@"domainSuggestionMetadata"];
    }
  }

  if (self->_originalRequestId)
  {
    v7 = [(PLUSSchemaPLUSSuggesterSuggestionMetadataReported *)self originalRequestId];
    v8 = [v7 dictionaryRepresentation];
    if (v8)
    {
      [v3 setObject:v8 forKeyedSubscript:@"originalRequestId"];
    }

    else
    {
      v9 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v9 forKeyedSubscript:@"originalRequestId"];
    }
  }

  if (self->_suggestionDomainMetadata)
  {
    v10 = [(PLUSSchemaPLUSSuggesterSuggestionMetadataReported *)self suggestionDomainMetadata];
    v11 = [v10 dictionaryRepresentation];
    if (v11)
    {
      [v3 setObject:v11 forKeyedSubscript:@"suggestionDomainMetadata"];
    }

    else
    {
      v12 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v12 forKeyedSubscript:@"suggestionDomainMetadata"];
    }
  }

  if (self->_suggestionLinkId)
  {
    v13 = [(PLUSSchemaPLUSSuggesterSuggestionMetadataReported *)self suggestionLinkId];
    v14 = [v13 dictionaryRepresentation];
    if (v14)
    {
      [v3 setObject:v14 forKeyedSubscript:@"suggestionLinkId"];
    }

    else
    {
      v15 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v15 forKeyedSubscript:@"suggestionLinkId"];
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

    [v3 setObject:v18 forKeyedSubscript:@"suggestionNoveltyState"];
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

    [v3 setObject:v20 forKeyedSubscript:@"suggestionSurfaced"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_29;
  }

  v5 = [(PLUSSchemaPLUSSuggesterSuggestionMetadataReported *)self suggestionDomainMetadata];
  v6 = [v4 suggestionDomainMetadata];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_28;
  }

  v7 = [(PLUSSchemaPLUSSuggesterSuggestionMetadataReported *)self suggestionDomainMetadata];
  if (v7)
  {
    v8 = v7;
    v9 = [(PLUSSchemaPLUSSuggesterSuggestionMetadataReported *)self suggestionDomainMetadata];
    v10 = [v4 suggestionDomainMetadata];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_29;
    }
  }

  else
  {
  }

  v5 = [(PLUSSchemaPLUSSuggesterSuggestionMetadataReported *)self suggestionLinkId];
  v6 = [v4 suggestionLinkId];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_28;
  }

  v12 = [(PLUSSchemaPLUSSuggesterSuggestionMetadataReported *)self suggestionLinkId];
  if (v12)
  {
    v13 = v12;
    v14 = [(PLUSSchemaPLUSSuggesterSuggestionMetadataReported *)self suggestionLinkId];
    v15 = [v4 suggestionLinkId];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_29;
    }
  }

  else
  {
  }

  v5 = [(PLUSSchemaPLUSSuggesterSuggestionMetadataReported *)self originalRequestId];
  v6 = [v4 originalRequestId];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_28;
  }

  v17 = [(PLUSSchemaPLUSSuggesterSuggestionMetadataReported *)self originalRequestId];
  if (v17)
  {
    v18 = v17;
    v19 = [(PLUSSchemaPLUSSuggesterSuggestionMetadataReported *)self originalRequestId];
    v20 = [v4 originalRequestId];
    v21 = [v19 isEqual:v20];

    if (!v21)
    {
      goto LABEL_29;
    }
  }

  else
  {
  }

  has = self->_has;
  v23 = v4[48];
  if ((*&has & 1) != (v23 & 1))
  {
    goto LABEL_29;
  }

  if (*&has)
  {
    suggestionSurfaced = self->_suggestionSurfaced;
    if (suggestionSurfaced != [v4 suggestionSurfaced])
    {
      goto LABEL_29;
    }

    has = self->_has;
    v23 = v4[48];
  }

  v25 = (*&has >> 1) & 1;
  if (v25 != ((v23 >> 1) & 1))
  {
    goto LABEL_29;
  }

  if (v25)
  {
    suggestionNoveltyState = self->_suggestionNoveltyState;
    if (suggestionNoveltyState != [v4 suggestionNoveltyState])
    {
      goto LABEL_29;
    }
  }

  v5 = [(PLUSSchemaPLUSSuggesterSuggestionMetadataReported *)self domainSuggestionMetadata];
  v6 = [v4 domainSuggestionMetadata];
  if ((v5 != 0) == (v6 == 0))
  {
LABEL_28:

    goto LABEL_29;
  }

  v27 = [(PLUSSchemaPLUSSuggesterSuggestionMetadataReported *)self domainSuggestionMetadata];
  if (!v27)
  {

LABEL_32:
    v32 = 1;
    goto LABEL_30;
  }

  v28 = v27;
  v29 = [(PLUSSchemaPLUSSuggesterSuggestionMetadataReported *)self domainSuggestionMetadata];
  v30 = [v4 domainSuggestionMetadata];
  v31 = [v29 isEqual:v30];

  if (v31)
  {
    goto LABEL_32;
  }

LABEL_29:
  v32 = 0;
LABEL_30:

  return v32;
}

- (void)writeTo:(id)a3
{
  v14 = a3;
  v4 = [(PLUSSchemaPLUSSuggesterSuggestionMetadataReported *)self suggestionDomainMetadata];

  if (v4)
  {
    v5 = [(PLUSSchemaPLUSSuggesterSuggestionMetadataReported *)self suggestionDomainMetadata];
    PBDataWriterWriteSubmessage();
  }

  v6 = [(PLUSSchemaPLUSSuggesterSuggestionMetadataReported *)self suggestionLinkId];

  if (v6)
  {
    v7 = [(PLUSSchemaPLUSSuggesterSuggestionMetadataReported *)self suggestionLinkId];
    PBDataWriterWriteSubmessage();
  }

  v8 = [(PLUSSchemaPLUSSuggesterSuggestionMetadataReported *)self originalRequestId];

  if (v8)
  {
    v9 = [(PLUSSchemaPLUSSuggesterSuggestionMetadataReported *)self originalRequestId];
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

  v11 = [(PLUSSchemaPLUSSuggesterSuggestionMetadataReported *)self domainSuggestionMetadata];

  v12 = v14;
  if (v11)
  {
    v13 = [(PLUSSchemaPLUSSuggesterSuggestionMetadataReported *)self domainSuggestionMetadata];
    PBDataWriterWriteSubmessage();

    v12 = v14;
  }
}

- (void)setHasSuggestionNoveltyState:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v4 = a3;
  v19.receiver = self;
  v19.super_class = PLUSSchemaPLUSSuggesterSuggestionMetadataReported;
  v5 = [(SISchemaInstrumentationMessage *)&v19 applySensitiveConditionsPolicy:v4];
  v6 = [(PLUSSchemaPLUSSuggesterSuggestionMetadataReported *)self suggestionDomainMetadata];
  v7 = [v6 applySensitiveConditionsPolicy:v4];
  v8 = [v7 suppressMessage];

  if (v8)
  {
    [(PLUSSchemaPLUSSuggesterSuggestionMetadataReported *)self deleteSuggestionDomainMetadata];
  }

  v9 = [(PLUSSchemaPLUSSuggesterSuggestionMetadataReported *)self suggestionLinkId];
  v10 = [v9 applySensitiveConditionsPolicy:v4];
  v11 = [v10 suppressMessage];

  if (v11)
  {
    [(PLUSSchemaPLUSSuggesterSuggestionMetadataReported *)self deleteSuggestionLinkId];
  }

  v12 = [(PLUSSchemaPLUSSuggesterSuggestionMetadataReported *)self originalRequestId];
  v13 = [v12 applySensitiveConditionsPolicy:v4];
  v14 = [v13 suppressMessage];

  if (v14)
  {
    [(PLUSSchemaPLUSSuggesterSuggestionMetadataReported *)self deleteOriginalRequestId];
  }

  v15 = [(PLUSSchemaPLUSSuggesterSuggestionMetadataReported *)self domainSuggestionMetadata];
  v16 = [v15 applySensitiveConditionsPolicy:v4];
  v17 = [v16 suppressMessage];

  if (v17)
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