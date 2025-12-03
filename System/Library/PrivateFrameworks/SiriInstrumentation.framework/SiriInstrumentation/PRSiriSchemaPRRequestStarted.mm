@interface PRSiriSchemaPRRequestStarted
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (PRSiriSchemaPRRequestStarted)initWithDictionary:(id)dictionary;
- (PRSiriSchemaPRRequestStarted)initWithJSON:(id)n;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasActionStatementId:(BOOL)id;
- (void)setHasStatementId:(BOOL)id;
- (void)writeTo:(id)to;
@end

@implementation PRSiriSchemaPRRequestStarted

- (PRSiriSchemaPRRequestStarted)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v13.receiver = self;
  v13.super_class = PRSiriSchemaPRRequestStarted;
  v5 = [(PRSiriSchemaPRRequestStarted *)&v13 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"originTaskStatementId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[PRSiriSchemaPRRequestStarted setOriginTaskStatementId:](v5, "setOriginTaskStatementId:", [v6 unsignedIntValue]);
    }

    v7 = [dictionaryCopy objectForKeyedSubscript:@"actionStatementId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[PRSiriSchemaPRRequestStarted setActionStatementId:](v5, "setActionStatementId:", [v7 unsignedIntValue]);
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"statementId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[PRSiriSchemaPRRequestStarted setStatementId:](v5, "setStatementId:", [v8 unsignedIntValue]);
    }

    v9 = [dictionaryCopy objectForKeyedSubscript:@"planCycleId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = [[SISchemaUUID alloc] initWithDictionary:v9];
      [(PRSiriSchemaPRRequestStarted *)v5 setPlanCycleId:v10];
    }

    v11 = v5;
  }

  return v5;
}

- (PRSiriSchemaPRRequestStarted)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(PRSiriSchemaPRRequestStarted *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(PRSiriSchemaPRRequestStarted *)self dictionaryRepresentation];
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
  if ((has & 2) != 0)
  {
    v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[PRSiriSchemaPRRequestStarted actionStatementId](self, "actionStatementId")}];
    [dictionary setObject:v5 forKeyedSubscript:@"actionStatementId"];

    has = self->_has;
  }

  if (has)
  {
    v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[PRSiriSchemaPRRequestStarted originTaskStatementId](self, "originTaskStatementId")}];
    [dictionary setObject:v6 forKeyedSubscript:@"originTaskStatementId"];
  }

  if (self->_planCycleId)
  {
    planCycleId = [(PRSiriSchemaPRRequestStarted *)self planCycleId];
    dictionaryRepresentation = [planCycleId dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"planCycleId"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"planCycleId"];
    }
  }

  if ((*&self->_has & 4) != 0)
  {
    v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[PRSiriSchemaPRRequestStarted statementId](self, "statementId")}];
    [dictionary setObject:v10 forKeyedSubscript:@"statementId"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  if ((*&self->_has & 1) == 0)
  {
    v6 = 0;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    v7 = 0;
    if ((*&self->_has & 4) != 0)
    {
      goto LABEL_4;
    }

LABEL_7:
    v8 = 0;
    return v7 ^ v6 ^ v8 ^ [(SISchemaUUID *)self->_planCycleId hash:v3];
  }

  v6 = 2654435761 * self->_originTaskStatementId;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  v7 = 2654435761 * self->_actionStatementId;
  if ((*&self->_has & 4) == 0)
  {
    goto LABEL_7;
  }

LABEL_4:
  v8 = 2654435761 * self->_statementId;
  return v7 ^ v6 ^ v8 ^ [(SISchemaUUID *)self->_planCycleId hash:v3];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_18;
  }

  has = self->_has;
  v6 = equalCopy[32];
  if ((*&has & 1) != (v6 & 1))
  {
    goto LABEL_18;
  }

  if (*&has)
  {
    originTaskStatementId = self->_originTaskStatementId;
    if (originTaskStatementId != [equalCopy originTaskStatementId])
    {
      goto LABEL_18;
    }

    has = self->_has;
    v6 = equalCopy[32];
  }

  v8 = (*&has >> 1) & 1;
  if (v8 == ((v6 >> 1) & 1))
  {
    if (v8)
    {
      actionStatementId = self->_actionStatementId;
      if (actionStatementId != [equalCopy actionStatementId])
      {
        goto LABEL_18;
      }

      has = self->_has;
      v6 = equalCopy[32];
    }

    v10 = (*&has >> 2) & 1;
    if (v10 == ((v6 >> 2) & 1))
    {
      if (!v10 || (statementId = self->_statementId, statementId == [equalCopy statementId]))
      {
        planCycleId = [(PRSiriSchemaPRRequestStarted *)self planCycleId];
        planCycleId2 = [equalCopy planCycleId];
        v14 = planCycleId2;
        if ((planCycleId != 0) != (planCycleId2 == 0))
        {
          planCycleId3 = [(PRSiriSchemaPRRequestStarted *)self planCycleId];
          if (!planCycleId3)
          {

LABEL_21:
            v20 = 1;
            goto LABEL_19;
          }

          v16 = planCycleId3;
          planCycleId4 = [(PRSiriSchemaPRRequestStarted *)self planCycleId];
          planCycleId5 = [equalCopy planCycleId];
          v19 = [planCycleId4 isEqual:planCycleId5];

          if (v19)
          {
            goto LABEL_21;
          }
        }

        else
        {
        }
      }
    }
  }

LABEL_18:
  v20 = 0;
LABEL_19:

  return v20;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if (has)
  {
    PBDataWriterWriteUint32Field();
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_3;
  }

  PBDataWriterWriteUint32Field();
  if ((*&self->_has & 4) != 0)
  {
LABEL_4:
    PBDataWriterWriteUint32Field();
  }

LABEL_5:
  planCycleId = [(PRSiriSchemaPRRequestStarted *)self planCycleId];

  v6 = toCopy;
  if (planCycleId)
  {
    planCycleId2 = [(PRSiriSchemaPRRequestStarted *)self planCycleId];
    PBDataWriterWriteSubmessage();

    v6 = toCopy;
  }
}

- (void)setHasStatementId:(BOOL)id
{
  if (id)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasActionStatementId:(BOOL)id
{
  if (id)
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
  v9.super_class = PRSiriSchemaPRRequestStarted;
  policyCopy = policy;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:policyCopy];
  v6 = [(PRSiriSchemaPRRequestStarted *)self planCycleId:v9.receiver];
  v7 = [v6 applySensitiveConditionsPolicy:policyCopy];

  LODWORD(policyCopy) = [v7 suppressMessage];
  if (policyCopy)
  {
    [(PRSiriSchemaPRRequestStarted *)self deletePlanCycleId];
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