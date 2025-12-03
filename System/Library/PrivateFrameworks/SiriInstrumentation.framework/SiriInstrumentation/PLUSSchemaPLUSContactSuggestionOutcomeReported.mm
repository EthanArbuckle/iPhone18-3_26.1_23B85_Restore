@interface PLUSSchemaPLUSContactSuggestionOutcomeReported
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (PLUSSchemaPLUSContactSuggestionOutcomeReported)initWithDictionary:(id)dictionary;
- (PLUSSchemaPLUSContactSuggestionOutcomeReported)initWithJSON:(id)n;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasContactSuggestionRedundancyState:(BOOL)state;
- (void)writeTo:(id)to;
@end

@implementation PLUSSchemaPLUSContactSuggestionOutcomeReported

- (PLUSSchemaPLUSContactSuggestionOutcomeReported)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v12.receiver = self;
  v12.super_class = PLUSSchemaPLUSContactSuggestionOutcomeReported;
  v5 = [(PLUSSchemaPLUSContactSuggestionOutcomeReported *)&v12 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"suggestionId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaUUID alloc] initWithDictionary:v6];
      [(PLUSSchemaPLUSContactSuggestionOutcomeReported *)v5 setSuggestionId:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"contactSuggestionOutcome"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[PLUSSchemaPLUSContactSuggestionOutcomeReported setContactSuggestionOutcome:](v5, "setContactSuggestionOutcome:", [v8 intValue]);
    }

    v9 = [dictionaryCopy objectForKeyedSubscript:@"contactSuggestionRedundancyState"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[PLUSSchemaPLUSContactSuggestionOutcomeReported setContactSuggestionRedundancyState:](v5, "setContactSuggestionRedundancyState:", [v9 intValue]);
    }

    v10 = v5;
  }

  return v5;
}

- (PLUSSchemaPLUSContactSuggestionOutcomeReported)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(PLUSSchemaPLUSContactSuggestionOutcomeReported *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(PLUSSchemaPLUSContactSuggestionOutcomeReported *)self dictionaryRepresentation];
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

    [dictionary setObject:v6 forKeyedSubscript:@"contactSuggestionOutcome"];
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    contactSuggestionRedundancyState = [(PLUSSchemaPLUSContactSuggestionOutcomeReported *)self contactSuggestionRedundancyState];
    v8 = @"PLUSCONTACTSUGGESTIONREDUNDANCYSTATE_UNKNOWN";
    if (contactSuggestionRedundancyState == 1)
    {
      v8 = @"PLUSCONTACTSUGGESTIONREDUNDANCYSTATE_NOT_REDUNDANT";
    }

    if (contactSuggestionRedundancyState == 2)
    {
      v9 = @"PLUSCONTACTSUGGESTIONREDUNDANCYSTATE_REDUNDANT";
    }

    else
    {
      v9 = v8;
    }

    [dictionary setObject:v9 forKeyedSubscript:@"contactSuggestionRedundancyState"];
  }

  if (self->_suggestionId)
  {
    suggestionId = [(PLUSSchemaPLUSContactSuggestionOutcomeReported *)self suggestionId];
    dictionaryRepresentation = [suggestionId dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"suggestionId"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"suggestionId"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_16;
  }

  suggestionId = [(PLUSSchemaPLUSContactSuggestionOutcomeReported *)self suggestionId];
  suggestionId2 = [equalCopy suggestionId];
  v7 = suggestionId2;
  if ((suggestionId != 0) == (suggestionId2 == 0))
  {

    goto LABEL_16;
  }

  suggestionId3 = [(PLUSSchemaPLUSContactSuggestionOutcomeReported *)self suggestionId];
  if (suggestionId3)
  {
    v9 = suggestionId3;
    suggestionId4 = [(PLUSSchemaPLUSContactSuggestionOutcomeReported *)self suggestionId];
    suggestionId5 = [equalCopy suggestionId];
    v12 = [suggestionId4 isEqual:suggestionId5];

    if (!v12)
    {
      goto LABEL_16;
    }
  }

  else
  {
  }

  has = self->_has;
  v14 = equalCopy[24];
  if ((*&has & 1) != (v14 & 1))
  {
LABEL_16:
    v18 = 0;
    goto LABEL_17;
  }

  if (*&has)
  {
    contactSuggestionOutcome = self->_contactSuggestionOutcome;
    if (contactSuggestionOutcome == [equalCopy contactSuggestionOutcome])
    {
      has = self->_has;
      v14 = equalCopy[24];
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
    if (contactSuggestionRedundancyState != [equalCopy contactSuggestionRedundancyState])
    {
      goto LABEL_16;
    }
  }

  v18 = 1;
LABEL_17:

  return v18;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  suggestionId = [(PLUSSchemaPLUSContactSuggestionOutcomeReported *)self suggestionId];

  if (suggestionId)
  {
    suggestionId2 = [(PLUSSchemaPLUSContactSuggestionOutcomeReported *)self suggestionId];
    PBDataWriterWriteSubmessage();
  }

  has = self->_has;
  if (has)
  {
    PBDataWriterWriteInt32Field();
    has = self->_has;
  }

  v7 = toCopy;
  if ((has & 2) != 0)
  {
    PBDataWriterWriteInt32Field();
    v7 = toCopy;
  }
}

- (void)setHasContactSuggestionRedundancyState:(BOOL)state
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
  v9.receiver = self;
  v9.super_class = PLUSSchemaPLUSContactSuggestionOutcomeReported;
  policyCopy = policy;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:policyCopy];
  v6 = [(PLUSSchemaPLUSContactSuggestionOutcomeReported *)self suggestionId:v9.receiver];
  v7 = [v6 applySensitiveConditionsPolicy:policyCopy];

  LODWORD(policyCopy) = [v7 suppressMessage];
  if (policyCopy)
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