@interface PLUSSchemaPLUSContactSuggestionRemoved
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (PLUSSchemaPLUSContactSuggestionRemoved)initWithDictionary:(id)a3;
- (PLUSSchemaPLUSContactSuggestionRemoved)initWithJSON:(id)a3;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)a3;
@end

@implementation PLUSSchemaPLUSContactSuggestionRemoved

- (PLUSSchemaPLUSContactSuggestionRemoved)initWithDictionary:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = PLUSSchemaPLUSContactSuggestionRemoved;
  v5 = [(PLUSSchemaPLUSContactSuggestionRemoved *)&v13 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"removedSuggestion"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[PLUSSchemaPLUSContactSuggestion alloc] initWithDictionary:v6];
      [(PLUSSchemaPLUSContactSuggestionRemoved *)v5 setRemovedSuggestion:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"reason"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[PLUSSchemaPLUSContactSuggestionRemoved setReason:](v5, "setReason:", [v8 intValue]);
    }

    v9 = [v4 objectForKeyedSubscript:@"usageSummary"];
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

- (PLUSSchemaPLUSContactSuggestionRemoved)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(PLUSSchemaPLUSContactSuggestionRemoved *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(PLUSSchemaPLUSContactSuggestionRemoved *)self dictionaryRepresentation];
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

    [v3 setObject:v5 forKeyedSubscript:@"reason"];
  }

  if (self->_removedSuggestion)
  {
    v6 = [(PLUSSchemaPLUSContactSuggestionRemoved *)self removedSuggestion];
    v7 = [v6 dictionaryRepresentation];
    if (v7)
    {
      [v3 setObject:v7 forKeyedSubscript:@"removedSuggestion"];
    }

    else
    {
      v8 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v8 forKeyedSubscript:@"removedSuggestion"];
    }
  }

  if (self->_usageSummary)
  {
    v9 = [(PLUSSchemaPLUSContactSuggestionRemoved *)self usageSummary];
    v10 = [v9 dictionaryRepresentation];
    if (v10)
    {
      [v3 setObject:v10 forKeyedSubscript:@"usageSummary"];
    }

    else
    {
      v11 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v11 forKeyedSubscript:@"usageSummary"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_15;
  }

  v5 = [(PLUSSchemaPLUSContactSuggestionRemoved *)self removedSuggestion];
  v6 = [v4 removedSuggestion];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_14;
  }

  v7 = [(PLUSSchemaPLUSContactSuggestionRemoved *)self removedSuggestion];
  if (v7)
  {
    v8 = v7;
    v9 = [(PLUSSchemaPLUSContactSuggestionRemoved *)self removedSuggestion];
    v10 = [v4 removedSuggestion];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_15;
    }
  }

  else
  {
  }

  if ((*&self->_has & 1) != (v4[32] & 1))
  {
    goto LABEL_15;
  }

  if (*&self->_has)
  {
    reason = self->_reason;
    if (reason != [v4 reason])
    {
      goto LABEL_15;
    }
  }

  v5 = [(PLUSSchemaPLUSContactSuggestionRemoved *)self usageSummary];
  v6 = [v4 usageSummary];
  if ((v5 != 0) != (v6 == 0))
  {
    v13 = [(PLUSSchemaPLUSContactSuggestionRemoved *)self usageSummary];
    if (!v13)
    {

LABEL_18:
      v18 = 1;
      goto LABEL_16;
    }

    v14 = v13;
    v15 = [(PLUSSchemaPLUSContactSuggestionRemoved *)self usageSummary];
    v16 = [v4 usageSummary];
    v17 = [v15 isEqual:v16];

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

- (void)writeTo:(id)a3
{
  v9 = a3;
  v4 = [(PLUSSchemaPLUSContactSuggestionRemoved *)self removedSuggestion];

  if (v4)
  {
    v5 = [(PLUSSchemaPLUSContactSuggestionRemoved *)self removedSuggestion];
    PBDataWriterWriteSubmessage();
  }

  if (*&self->_has)
  {
    PBDataWriterWriteInt32Field();
  }

  v6 = [(PLUSSchemaPLUSContactSuggestionRemoved *)self usageSummary];

  v7 = v9;
  if (v6)
  {
    v8 = [(PLUSSchemaPLUSContactSuggestionRemoved *)self usageSummary];
    PBDataWriterWriteSubmessage();

    v7 = v9;
  }
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = PLUSSchemaPLUSContactSuggestionRemoved;
  v5 = [(SISchemaInstrumentationMessage *)&v13 applySensitiveConditionsPolicy:v4];
  v6 = [(PLUSSchemaPLUSContactSuggestionRemoved *)self removedSuggestion];
  v7 = [v6 applySensitiveConditionsPolicy:v4];
  v8 = [v7 suppressMessage];

  if (v8)
  {
    [(PLUSSchemaPLUSContactSuggestionRemoved *)self deleteRemovedSuggestion];
  }

  v9 = [(PLUSSchemaPLUSContactSuggestionRemoved *)self usageSummary];
  v10 = [v9 applySensitiveConditionsPolicy:v4];
  v11 = [v10 suppressMessage];

  if (v11)
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