@interface PLUSSchemaPLUSSuggestionOutcomeReported
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (PLUSSchemaPLUSSuggestionOutcomeReported)initWithDictionary:(id)a3;
- (PLUSSchemaPLUSSuggestionOutcomeReported)initWithJSON:(id)a3;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)a3;
@end

@implementation PLUSSchemaPLUSSuggestionOutcomeReported

- (PLUSSchemaPLUSSuggestionOutcomeReported)initWithDictionary:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = PLUSSchemaPLUSSuggestionOutcomeReported;
  v5 = [(PLUSSchemaPLUSSuggestionOutcomeReported *)&v17 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"suggestionDomainMetadata"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[PLUSSchemaPLUSSuggestionDomainMetadata alloc] initWithDictionary:v6];
      [(PLUSSchemaPLUSSuggestionOutcomeReported *)v5 setSuggestionDomainMetadata:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"suggestionLinkId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[SISchemaUUID alloc] initWithDictionary:v8];
      [(PLUSSchemaPLUSSuggestionOutcomeReported *)v5 setSuggestionLinkId:v9];
    }

    v10 = [v4 objectForKeyedSubscript:@"originalRequestId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[SISchemaUUID alloc] initWithDictionary:v10];
      [(PLUSSchemaPLUSSuggestionOutcomeReported *)v5 setOriginalRequestId:v11];
    }

    v12 = [v4 objectForKeyedSubscript:@"suggestionOutcome"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[PLUSSchemaPLUSSuggestionOutcomeReported setSuggestionOutcome:](v5, "setSuggestionOutcome:", [v12 intValue]);
    }

    v13 = [v4 objectForKeyedSubscript:@"domainOutcome"];
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

- (PLUSSchemaPLUSSuggestionOutcomeReported)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(PLUSSchemaPLUSSuggestionOutcomeReported *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(PLUSSchemaPLUSSuggestionOutcomeReported *)self dictionaryRepresentation];
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
  if (self->_domainOutcome)
  {
    v4 = [(PLUSSchemaPLUSSuggestionOutcomeReported *)self domainOutcome];
    v5 = [v4 dictionaryRepresentation];
    if (v5)
    {
      [v3 setObject:v5 forKeyedSubscript:@"domainOutcome"];
    }

    else
    {
      v6 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v6 forKeyedSubscript:@"domainOutcome"];
    }
  }

  if (self->_originalRequestId)
  {
    v7 = [(PLUSSchemaPLUSSuggestionOutcomeReported *)self originalRequestId];
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
    v10 = [(PLUSSchemaPLUSSuggestionOutcomeReported *)self suggestionDomainMetadata];
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
    v13 = [(PLUSSchemaPLUSSuggestionOutcomeReported *)self suggestionLinkId];
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

    [v3 setObject:v17 forKeyedSubscript:@"suggestionOutcome"];
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
    v6 = 2654435761 * self->_suggestionOutcome;
  }

  else
  {
    v6 = 0;
  }

  return v4 ^ v3 ^ v5 ^ v6 ^ [(PLUSSchemaPLUSSuggestionDomainOutcome *)self->_domainOutcome hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_25;
  }

  v5 = [(PLUSSchemaPLUSSuggestionOutcomeReported *)self suggestionDomainMetadata];
  v6 = [v4 suggestionDomainMetadata];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_24;
  }

  v7 = [(PLUSSchemaPLUSSuggestionOutcomeReported *)self suggestionDomainMetadata];
  if (v7)
  {
    v8 = v7;
    v9 = [(PLUSSchemaPLUSSuggestionOutcomeReported *)self suggestionDomainMetadata];
    v10 = [v4 suggestionDomainMetadata];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_25;
    }
  }

  else
  {
  }

  v5 = [(PLUSSchemaPLUSSuggestionOutcomeReported *)self suggestionLinkId];
  v6 = [v4 suggestionLinkId];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_24;
  }

  v12 = [(PLUSSchemaPLUSSuggestionOutcomeReported *)self suggestionLinkId];
  if (v12)
  {
    v13 = v12;
    v14 = [(PLUSSchemaPLUSSuggestionOutcomeReported *)self suggestionLinkId];
    v15 = [v4 suggestionLinkId];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_25;
    }
  }

  else
  {
  }

  v5 = [(PLUSSchemaPLUSSuggestionOutcomeReported *)self originalRequestId];
  v6 = [v4 originalRequestId];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_24;
  }

  v17 = [(PLUSSchemaPLUSSuggestionOutcomeReported *)self originalRequestId];
  if (v17)
  {
    v18 = v17;
    v19 = [(PLUSSchemaPLUSSuggestionOutcomeReported *)self originalRequestId];
    v20 = [v4 originalRequestId];
    v21 = [v19 isEqual:v20];

    if (!v21)
    {
      goto LABEL_25;
    }
  }

  else
  {
  }

  if ((*&self->_has & 1) != (v4[48] & 1))
  {
    goto LABEL_25;
  }

  if (*&self->_has)
  {
    suggestionOutcome = self->_suggestionOutcome;
    if (suggestionOutcome != [v4 suggestionOutcome])
    {
      goto LABEL_25;
    }
  }

  v5 = [(PLUSSchemaPLUSSuggestionOutcomeReported *)self domainOutcome];
  v6 = [v4 domainOutcome];
  if ((v5 != 0) != (v6 == 0))
  {
    v23 = [(PLUSSchemaPLUSSuggestionOutcomeReported *)self domainOutcome];
    if (!v23)
    {

LABEL_28:
      v28 = 1;
      goto LABEL_26;
    }

    v24 = v23;
    v25 = [(PLUSSchemaPLUSSuggestionOutcomeReported *)self domainOutcome];
    v26 = [v4 domainOutcome];
    v27 = [v25 isEqual:v26];

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

- (void)writeTo:(id)a3
{
  v13 = a3;
  v4 = [(PLUSSchemaPLUSSuggestionOutcomeReported *)self suggestionDomainMetadata];

  if (v4)
  {
    v5 = [(PLUSSchemaPLUSSuggestionOutcomeReported *)self suggestionDomainMetadata];
    PBDataWriterWriteSubmessage();
  }

  v6 = [(PLUSSchemaPLUSSuggestionOutcomeReported *)self suggestionLinkId];

  if (v6)
  {
    v7 = [(PLUSSchemaPLUSSuggestionOutcomeReported *)self suggestionLinkId];
    PBDataWriterWriteSubmessage();
  }

  v8 = [(PLUSSchemaPLUSSuggestionOutcomeReported *)self originalRequestId];

  if (v8)
  {
    v9 = [(PLUSSchemaPLUSSuggestionOutcomeReported *)self originalRequestId];
    PBDataWriterWriteSubmessage();
  }

  if (*&self->_has)
  {
    PBDataWriterWriteInt32Field();
  }

  v10 = [(PLUSSchemaPLUSSuggestionOutcomeReported *)self domainOutcome];

  v11 = v13;
  if (v10)
  {
    v12 = [(PLUSSchemaPLUSSuggestionOutcomeReported *)self domainOutcome];
    PBDataWriterWriteSubmessage();

    v11 = v13;
  }
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v4 = a3;
  v19.receiver = self;
  v19.super_class = PLUSSchemaPLUSSuggestionOutcomeReported;
  v5 = [(SISchemaInstrumentationMessage *)&v19 applySensitiveConditionsPolicy:v4];
  v6 = [(PLUSSchemaPLUSSuggestionOutcomeReported *)self suggestionDomainMetadata];
  v7 = [v6 applySensitiveConditionsPolicy:v4];
  v8 = [v7 suppressMessage];

  if (v8)
  {
    [(PLUSSchemaPLUSSuggestionOutcomeReported *)self deleteSuggestionDomainMetadata];
  }

  v9 = [(PLUSSchemaPLUSSuggestionOutcomeReported *)self suggestionLinkId];
  v10 = [v9 applySensitiveConditionsPolicy:v4];
  v11 = [v10 suppressMessage];

  if (v11)
  {
    [(PLUSSchemaPLUSSuggestionOutcomeReported *)self deleteSuggestionLinkId];
  }

  v12 = [(PLUSSchemaPLUSSuggestionOutcomeReported *)self originalRequestId];
  v13 = [v12 applySensitiveConditionsPolicy:v4];
  v14 = [v13 suppressMessage];

  if (v14)
  {
    [(PLUSSchemaPLUSSuggestionOutcomeReported *)self deleteOriginalRequestId];
  }

  v15 = [(PLUSSchemaPLUSSuggestionOutcomeReported *)self domainOutcome];
  v16 = [v15 applySensitiveConditionsPolicy:v4];
  v17 = [v16 suppressMessage];

  if (v17)
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