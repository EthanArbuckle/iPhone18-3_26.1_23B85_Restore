@interface PLUSSchemaPLUSContactSuggestionRemoved
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (PLUSSchemaPLUSContactSuggestionRemoved)initWithDictionary:(id)dictionary;
- (PLUSSchemaPLUSContactSuggestionRemoved)initWithJSON:(id)n;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)to;
@end

@implementation PLUSSchemaPLUSContactSuggestionRemoved

- (PLUSSchemaPLUSContactSuggestionRemoved)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v13.receiver = self;
  v13.super_class = PLUSSchemaPLUSContactSuggestionRemoved;
  v5 = [(PLUSSchemaPLUSContactSuggestionRemoved *)&v13 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"removedSuggestion"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[PLUSSchemaPLUSContactSuggestion alloc] initWithDictionary:v6];
      [(PLUSSchemaPLUSContactSuggestionRemoved *)v5 setRemovedSuggestion:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"reason"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[PLUSSchemaPLUSContactSuggestionRemoved setReason:](v5, "setReason:", [v8 intValue]);
    }

    v9 = [dictionaryCopy objectForKeyedSubscript:@"usageSummary"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = [[PLUSSchemaPLUSContactSuggestionUsageSummary alloc] initWithDictionary:v9];
      [(PLUSSchemaPLUSContactSuggestionRemoved *)v5 setUsageSummary:v10];
    }

    v11 = v5;
  }

  return v5;
}

- (PLUSSchemaPLUSContactSuggestionRemoved)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(PLUSSchemaPLUSContactSuggestionRemoved *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(PLUSSchemaPLUSContactSuggestionRemoved *)self dictionaryRepresentation];
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
  if (*&self->_has)
  {
    v4 = [(PLUSSchemaPLUSContactSuggestionRemoved *)self reason]- 1;
    if (v4 > 5)
    {
      v5 = @"PLUSCONTACTSUGGESTIONREMOVALREASON_UNKNOWN";
    }

    else
    {
      v5 = off_1E78E0688[v4];
    }

    [dictionary setObject:v5 forKeyedSubscript:@"reason"];
  }

  if (self->_removedSuggestion)
  {
    removedSuggestion = [(PLUSSchemaPLUSContactSuggestionRemoved *)self removedSuggestion];
    dictionaryRepresentation = [removedSuggestion dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"removedSuggestion"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"removedSuggestion"];
    }
  }

  if (self->_usageSummary)
  {
    usageSummary = [(PLUSSchemaPLUSContactSuggestionRemoved *)self usageSummary];
    dictionaryRepresentation2 = [usageSummary dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"usageSummary"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"usageSummary"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(PLUSSchemaPLUSContactSuggestion *)self->_removedSuggestion hash];
  if (*&self->_has)
  {
    v4 = 2654435761 * self->_reason;
  }

  else
  {
    v4 = 0;
  }

  return v4 ^ v3 ^ [(PLUSSchemaPLUSContactSuggestionUsageSummary *)self->_usageSummary hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_15;
  }

  removedSuggestion = [(PLUSSchemaPLUSContactSuggestionRemoved *)self removedSuggestion];
  removedSuggestion2 = [equalCopy removedSuggestion];
  if ((removedSuggestion != 0) == (removedSuggestion2 == 0))
  {
    goto LABEL_14;
  }

  removedSuggestion3 = [(PLUSSchemaPLUSContactSuggestionRemoved *)self removedSuggestion];
  if (removedSuggestion3)
  {
    v8 = removedSuggestion3;
    removedSuggestion4 = [(PLUSSchemaPLUSContactSuggestionRemoved *)self removedSuggestion];
    removedSuggestion5 = [equalCopy removedSuggestion];
    v11 = [removedSuggestion4 isEqual:removedSuggestion5];

    if (!v11)
    {
      goto LABEL_15;
    }
  }

  else
  {
  }

  if ((*&self->_has & 1) != (equalCopy[32] & 1))
  {
    goto LABEL_15;
  }

  if (*&self->_has)
  {
    reason = self->_reason;
    if (reason != [equalCopy reason])
    {
      goto LABEL_15;
    }
  }

  removedSuggestion = [(PLUSSchemaPLUSContactSuggestionRemoved *)self usageSummary];
  removedSuggestion2 = [equalCopy usageSummary];
  if ((removedSuggestion != 0) != (removedSuggestion2 == 0))
  {
    usageSummary = [(PLUSSchemaPLUSContactSuggestionRemoved *)self usageSummary];
    if (!usageSummary)
    {

LABEL_18:
      v18 = 1;
      goto LABEL_16;
    }

    v14 = usageSummary;
    usageSummary2 = [(PLUSSchemaPLUSContactSuggestionRemoved *)self usageSummary];
    usageSummary3 = [equalCopy usageSummary];
    v17 = [usageSummary2 isEqual:usageSummary3];

    if (v17)
    {
      goto LABEL_18;
    }
  }

  else
  {
LABEL_14:
  }

LABEL_15:
  v18 = 0;
LABEL_16:

  return v18;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  removedSuggestion = [(PLUSSchemaPLUSContactSuggestionRemoved *)self removedSuggestion];

  if (removedSuggestion)
  {
    removedSuggestion2 = [(PLUSSchemaPLUSContactSuggestionRemoved *)self removedSuggestion];
    PBDataWriterWriteSubmessage();
  }

  if (*&self->_has)
  {
    PBDataWriterWriteInt32Field();
  }

  usageSummary = [(PLUSSchemaPLUSContactSuggestionRemoved *)self usageSummary];

  v7 = toCopy;
  if (usageSummary)
  {
    usageSummary2 = [(PLUSSchemaPLUSContactSuggestionRemoved *)self usageSummary];
    PBDataWriterWriteSubmessage();

    v7 = toCopy;
  }
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v13.receiver = self;
  v13.super_class = PLUSSchemaPLUSContactSuggestionRemoved;
  v5 = [(SISchemaInstrumentationMessage *)&v13 applySensitiveConditionsPolicy:policyCopy];
  removedSuggestion = [(PLUSSchemaPLUSContactSuggestionRemoved *)self removedSuggestion];
  v7 = [removedSuggestion applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(PLUSSchemaPLUSContactSuggestionRemoved *)self deleteRemovedSuggestion];
  }

  usageSummary = [(PLUSSchemaPLUSContactSuggestionRemoved *)self usageSummary];
  v10 = [usageSummary applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v10 suppressMessage];

  if (suppressMessage2)
  {
    [(PLUSSchemaPLUSContactSuggestionRemoved *)self deleteUsageSummary];
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