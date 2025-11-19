@interface PLUSSchemaPLUSContactSuggestionOutcomeReported
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (PLUSSchemaPLUSContactSuggestionOutcomeReported)initWithDictionary:(id)a3;
- (PLUSSchemaPLUSContactSuggestionOutcomeReported)initWithJSON:(id)a3;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasContactSuggestionRedundancyState:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation PLUSSchemaPLUSContactSuggestionOutcomeReported

- (PLUSSchemaPLUSContactSuggestionOutcomeReported)initWithDictionary:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = PLUSSchemaPLUSContactSuggestionOutcomeReported;
  v5 = [(PLUSSchemaPLUSContactSuggestionOutcomeReported *)&v12 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"suggestionId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaUUID alloc] initWithDictionary:v6];
      [(PLUSSchemaPLUSContactSuggestionOutcomeReported *)v5 setSuggestionId:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"contactSuggestionOutcome"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[PLUSSchemaPLUSContactSuggestionOutcomeReported setContactSuggestionOutcome:](v5, "setContactSuggestionOutcome:", [v8 intValue]);
    }

    v9 = [v4 objectForKeyedSubscript:@"contactSuggestionRedundancyState"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[PLUSSchemaPLUSContactSuggestionOutcomeReported setContactSuggestionRedundancyState:](v5, "setContactSuggestionRedundancyState:", [v9 intValue]);
    }

    v10 = v5;
  }

  return v5;
}

- (PLUSSchemaPLUSContactSuggestionOutcomeReported)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(PLUSSchemaPLUSContactSuggestionOutcomeReported *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(PLUSSchemaPLUSContactSuggestionOutcomeReported *)self dictionaryRepresentation];
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
  has = self->_has;
  if (has)
  {
    v5 = [(PLUSSchemaPLUSContactSuggestionOutcomeReported *)self contactSuggestionOutcome]- 1;
    if (v5 > 0xC)
    {
      v6 = @"PLUSCONTACTSUGGESTIONOUTCOME_UNKNOWN";
    }

    else
    {
      v6 = off_1E78E0620[v5];
    }

    [v3 setObject:v6 forKeyedSubscript:@"contactSuggestionOutcome"];
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    v7 = [(PLUSSchemaPLUSContactSuggestionOutcomeReported *)self contactSuggestionRedundancyState];
    v8 = @"PLUSCONTACTSUGGESTIONREDUNDANCYSTATE_UNKNOWN";
    if (v7 == 1)
    {
      v8 = @"PLUSCONTACTSUGGESTIONREDUNDANCYSTATE_NOT_REDUNDANT";
    }

    if (v7 == 2)
    {
      v9 = @"PLUSCONTACTSUGGESTIONREDUNDANCYSTATE_REDUNDANT";
    }

    else
    {
      v9 = v8;
    }

    [v3 setObject:v9 forKeyedSubscript:@"contactSuggestionRedundancyState"];
  }

  if (self->_suggestionId)
  {
    v10 = [(PLUSSchemaPLUSContactSuggestionOutcomeReported *)self suggestionId];
    v11 = [v10 dictionaryRepresentation];
    if (v11)
    {
      [v3 setObject:v11 forKeyedSubscript:@"suggestionId"];
    }

    else
    {
      v12 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v12 forKeyedSubscript:@"suggestionId"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (unint64_t)hash
{
  v3 = [(SISchemaUUID *)self->_suggestionId hash];
  if (*&self->_has)
  {
    v4 = 2654435761 * self->_contactSuggestionOutcome;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_5:
    v5 = 0;
    return v4 ^ v3 ^ v5;
  }

  v4 = 0;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v5 = 2654435761 * self->_contactSuggestionRedundancyState;
  return v4 ^ v3 ^ v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_16;
  }

  v5 = [(PLUSSchemaPLUSContactSuggestionOutcomeReported *)self suggestionId];
  v6 = [v4 suggestionId];
  v7 = v6;
  if ((v5 != 0) == (v6 == 0))
  {

    goto LABEL_16;
  }

  v8 = [(PLUSSchemaPLUSContactSuggestionOutcomeReported *)self suggestionId];
  if (v8)
  {
    v9 = v8;
    v10 = [(PLUSSchemaPLUSContactSuggestionOutcomeReported *)self suggestionId];
    v11 = [v4 suggestionId];
    v12 = [v10 isEqual:v11];

    if (!v12)
    {
      goto LABEL_16;
    }
  }

  else
  {
  }

  has = self->_has;
  v14 = v4[24];
  if ((*&has & 1) != (v14 & 1))
  {
LABEL_16:
    v18 = 0;
    goto LABEL_17;
  }

  if (*&has)
  {
    contactSuggestionOutcome = self->_contactSuggestionOutcome;
    if (contactSuggestionOutcome == [v4 contactSuggestionOutcome])
    {
      has = self->_has;
      v14 = v4[24];
      goto LABEL_12;
    }

    goto LABEL_16;
  }

LABEL_12:
  v16 = (*&has >> 1) & 1;
  if (v16 != ((v14 >> 1) & 1))
  {
    goto LABEL_16;
  }

  if (v16)
  {
    contactSuggestionRedundancyState = self->_contactSuggestionRedundancyState;
    if (contactSuggestionRedundancyState != [v4 contactSuggestionRedundancyState])
    {
      goto LABEL_16;
    }
  }

  v18 = 1;
LABEL_17:

  return v18;
}

- (void)writeTo:(id)a3
{
  v8 = a3;
  v4 = [(PLUSSchemaPLUSContactSuggestionOutcomeReported *)self suggestionId];

  if (v4)
  {
    v5 = [(PLUSSchemaPLUSContactSuggestionOutcomeReported *)self suggestionId];
    PBDataWriterWriteSubmessage();
  }

  has = self->_has;
  if (has)
  {
    PBDataWriterWriteInt32Field();
    has = self->_has;
  }

  v7 = v8;
  if ((has & 2) != 0)
  {
    PBDataWriterWriteInt32Field();
    v7 = v8;
  }
}

- (void)setHasContactSuggestionRedundancyState:(BOOL)a3
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
  v9.receiver = self;
  v9.super_class = PLUSSchemaPLUSContactSuggestionOutcomeReported;
  v4 = a3;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:v4];
  v6 = [(PLUSSchemaPLUSContactSuggestionOutcomeReported *)self suggestionId:v9.receiver];
  v7 = [v6 applySensitiveConditionsPolicy:v4];

  LODWORD(v4) = [v7 suppressMessage];
  if (v4)
  {
    [(PLUSSchemaPLUSContactSuggestionOutcomeReported *)self deleteSuggestionId];
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