@interface PLUSSchemaPLUSSuggesterSuggestionRedundancyReported
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (PLUSSchemaPLUSSuggesterSuggestionRedundancyReported)initWithDictionary:(id)a3;
- (PLUSSchemaPLUSSuggesterSuggestionRedundancyReported)initWithJSON:(id)a3;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)a3;
@end

@implementation PLUSSchemaPLUSSuggesterSuggestionRedundancyReported

- (PLUSSchemaPLUSSuggesterSuggestionRedundancyReported)initWithDictionary:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = PLUSSchemaPLUSSuggesterSuggestionRedundancyReported;
  v5 = [(PLUSSchemaPLUSSuggesterSuggestionRedundancyReported *)&v15 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"suggestionDomainMetadata"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[PLUSSchemaPLUSSuggestionDomainMetadata alloc] initWithDictionary:v6];
      [(PLUSSchemaPLUSSuggesterSuggestionRedundancyReported *)v5 setSuggestionDomainMetadata:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"suggestionLinkId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[SISchemaUUID alloc] initWithDictionary:v8];
      [(PLUSSchemaPLUSSuggesterSuggestionRedundancyReported *)v5 setSuggestionLinkId:v9];
    }

    v10 = [v4 objectForKeyedSubscript:@"originalRequestId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[SISchemaUUID alloc] initWithDictionary:v10];
      [(PLUSSchemaPLUSSuggesterSuggestionRedundancyReported *)v5 setOriginalRequestId:v11];
    }

    v12 = [v4 objectForKeyedSubscript:@"suggestionRedundancyState"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[PLUSSchemaPLUSSuggesterSuggestionRedundancyReported setSuggestionRedundancyState:](v5, "setSuggestionRedundancyState:", [v12 intValue]);
    }

    v13 = v5;
  }

  return v5;
}

- (PLUSSchemaPLUSSuggesterSuggestionRedundancyReported)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(PLUSSchemaPLUSSuggesterSuggestionRedundancyReported *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(PLUSSchemaPLUSSuggesterSuggestionRedundancyReported *)self dictionaryRepresentation];
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
  if (self->_originalRequestId)
  {
    v4 = [(PLUSSchemaPLUSSuggesterSuggestionRedundancyReported *)self originalRequestId];
    v5 = [v4 dictionaryRepresentation];
    if (v5)
    {
      [v3 setObject:v5 forKeyedSubscript:@"originalRequestId"];
    }

    else
    {
      v6 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v6 forKeyedSubscript:@"originalRequestId"];
    }
  }

  if (self->_suggestionDomainMetadata)
  {
    v7 = [(PLUSSchemaPLUSSuggesterSuggestionRedundancyReported *)self suggestionDomainMetadata];
    v8 = [v7 dictionaryRepresentation];
    if (v8)
    {
      [v3 setObject:v8 forKeyedSubscript:@"suggestionDomainMetadata"];
    }

    else
    {
      v9 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v9 forKeyedSubscript:@"suggestionDomainMetadata"];
    }
  }

  if (self->_suggestionLinkId)
  {
    v10 = [(PLUSSchemaPLUSSuggesterSuggestionRedundancyReported *)self suggestionLinkId];
    v11 = [v10 dictionaryRepresentation];
    if (v11)
    {
      [v3 setObject:v11 forKeyedSubscript:@"suggestionLinkId"];
    }

    else
    {
      v12 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v12 forKeyedSubscript:@"suggestionLinkId"];
    }
  }

  if (*&self->_has)
  {
    v13 = [(PLUSSchemaPLUSSuggesterSuggestionRedundancyReported *)self suggestionRedundancyState];
    v14 = @"PLUSSUGGESTIONREDUNDANCYSTATE_UNKNOWN";
    if (v13 == 1)
    {
      v14 = @"PLUSSUGGESTIONREDUNDANCYSTATE_NOT_REDUNDANT";
    }

    if (v13 == 2)
    {
      v15 = @"PLUSSUGGESTIONREDUNDANCYSTATE_REDUNDANT";
    }

    else
    {
      v15 = v14;
    }

    [v3 setObject:v15 forKeyedSubscript:@"suggestionRedundancyState"];
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
    v6 = 2654435761 * self->_suggestionRedundancyState;
  }

  else
  {
    v6 = 0;
  }

  return v4 ^ v3 ^ v5 ^ v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_17;
  }

  v5 = [(PLUSSchemaPLUSSuggesterSuggestionRedundancyReported *)self suggestionDomainMetadata];
  v6 = [v4 suggestionDomainMetadata];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_16;
  }

  v7 = [(PLUSSchemaPLUSSuggesterSuggestionRedundancyReported *)self suggestionDomainMetadata];
  if (v7)
  {
    v8 = v7;
    v9 = [(PLUSSchemaPLUSSuggesterSuggestionRedundancyReported *)self suggestionDomainMetadata];
    v10 = [v4 suggestionDomainMetadata];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  v5 = [(PLUSSchemaPLUSSuggesterSuggestionRedundancyReported *)self suggestionLinkId];
  v6 = [v4 suggestionLinkId];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_16;
  }

  v12 = [(PLUSSchemaPLUSSuggesterSuggestionRedundancyReported *)self suggestionLinkId];
  if (v12)
  {
    v13 = v12;
    v14 = [(PLUSSchemaPLUSSuggesterSuggestionRedundancyReported *)self suggestionLinkId];
    v15 = [v4 suggestionLinkId];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  v5 = [(PLUSSchemaPLUSSuggesterSuggestionRedundancyReported *)self originalRequestId];
  v6 = [v4 originalRequestId];
  if ((v5 != 0) == (v6 == 0))
  {
LABEL_16:

    goto LABEL_17;
  }

  v17 = [(PLUSSchemaPLUSSuggesterSuggestionRedundancyReported *)self originalRequestId];
  if (v17)
  {
    v18 = v17;
    v19 = [(PLUSSchemaPLUSSuggesterSuggestionRedundancyReported *)self originalRequestId];
    v20 = [v4 originalRequestId];
    v21 = [v19 isEqual:v20];

    if (!v21)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  if ((*&self->_has & 1) == (v4[36] & 1))
  {
    if ((*&self->_has & 1) == 0 || (suggestionRedundancyState = self->_suggestionRedundancyState, suggestionRedundancyState == [v4 suggestionRedundancyState]))
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

- (void)writeTo:(id)a3
{
  v10 = a3;
  v4 = [(PLUSSchemaPLUSSuggesterSuggestionRedundancyReported *)self suggestionDomainMetadata];

  if (v4)
  {
    v5 = [(PLUSSchemaPLUSSuggesterSuggestionRedundancyReported *)self suggestionDomainMetadata];
    PBDataWriterWriteSubmessage();
  }

  v6 = [(PLUSSchemaPLUSSuggesterSuggestionRedundancyReported *)self suggestionLinkId];

  if (v6)
  {
    v7 = [(PLUSSchemaPLUSSuggesterSuggestionRedundancyReported *)self suggestionLinkId];
    PBDataWriterWriteSubmessage();
  }

  v8 = [(PLUSSchemaPLUSSuggesterSuggestionRedundancyReported *)self originalRequestId];

  if (v8)
  {
    v9 = [(PLUSSchemaPLUSSuggesterSuggestionRedundancyReported *)self originalRequestId];
    PBDataWriterWriteSubmessage();
  }

  if (*&self->_has)
  {
    PBDataWriterWriteInt32Field();
  }
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = PLUSSchemaPLUSSuggesterSuggestionRedundancyReported;
  v5 = [(SISchemaInstrumentationMessage *)&v16 applySensitiveConditionsPolicy:v4];
  v6 = [(PLUSSchemaPLUSSuggesterSuggestionRedundancyReported *)self suggestionDomainMetadata];
  v7 = [v6 applySensitiveConditionsPolicy:v4];
  v8 = [v7 suppressMessage];

  if (v8)
  {
    [(PLUSSchemaPLUSSuggesterSuggestionRedundancyReported *)self deleteSuggestionDomainMetadata];
  }

  v9 = [(PLUSSchemaPLUSSuggesterSuggestionRedundancyReported *)self suggestionLinkId];
  v10 = [v9 applySensitiveConditionsPolicy:v4];
  v11 = [v10 suppressMessage];

  if (v11)
  {
    [(PLUSSchemaPLUSSuggesterSuggestionRedundancyReported *)self deleteSuggestionLinkId];
  }

  v12 = [(PLUSSchemaPLUSSuggesterSuggestionRedundancyReported *)self originalRequestId];
  v13 = [v12 applySensitiveConditionsPolicy:v4];
  v14 = [v13 suppressMessage];

  if (v14)
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