@interface PNRODSchemaPNRODPlanResolution
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (PNRODSchemaPNRODPlanResolution)initWithDictionary:(id)dictionary;
- (PNRODSchemaPNRODPlanResolution)initWithJSON:(id)n;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasStatementId:(BOOL)id;
- (void)writeTo:(id)to;
@end

@implementation PNRODSchemaPNRODPlanResolution

- (PNRODSchemaPNRODPlanResolution)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v18.receiver = self;
  v18.super_class = PNRODSchemaPNRODPlanResolution;
  v5 = [(PNRODSchemaPNRODPlanResolution *)&v18 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"planCycleId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaUUID alloc] initWithDictionary:v6];
      [(PNRODSchemaPNRODPlanResolution *)v5 setPlanCycleId:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"prId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[SISchemaUUID alloc] initWithDictionary:v8];
      [(PNRODSchemaPNRODPlanResolution *)v5 setPrId:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"actionStatementId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[PNRODSchemaPNRODPlanResolution setActionStatementId:](v5, "setActionStatementId:", [v10 unsignedIntValue]);
    }

    v11 = [dictionaryCopy objectForKeyedSubscript:@"statementId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[PNRODSchemaPNRODPlanResolution setStatementId:](v5, "setStatementId:", [v11 unsignedIntValue]);
    }

    v12 = [dictionaryCopy objectForKeyedSubscript:@"prTotalHandleTime"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [[PNRODSchemaPNRODMetricDuration alloc] initWithDictionary:v12];
      [(PNRODSchemaPNRODPlanResolution *)v5 setPrTotalHandleTime:v13];
    }

    v14 = [dictionaryCopy objectForKeyedSubscript:@"failureInfo"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = [[PNRODSchemaPNRODFailureInfo alloc] initWithDictionary:v14];
      [(PNRODSchemaPNRODPlanResolution *)v5 setFailureInfo:v15];
    }

    v16 = v5;
  }

  return v5;
}

- (PNRODSchemaPNRODPlanResolution)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(PNRODSchemaPNRODPlanResolution *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(PNRODSchemaPNRODPlanResolution *)self dictionaryRepresentation];
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
    v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[PNRODSchemaPNRODPlanResolution actionStatementId](self, "actionStatementId")}];
    [dictionary setObject:v4 forKeyedSubscript:@"actionStatementId"];
  }

  if (self->_failureInfo)
  {
    failureInfo = [(PNRODSchemaPNRODPlanResolution *)self failureInfo];
    dictionaryRepresentation = [failureInfo dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"failureInfo"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"failureInfo"];
    }
  }

  if (self->_planCycleId)
  {
    planCycleId = [(PNRODSchemaPNRODPlanResolution *)self planCycleId];
    dictionaryRepresentation2 = [planCycleId dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"planCycleId"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"planCycleId"];
    }
  }

  if (self->_prId)
  {
    prId = [(PNRODSchemaPNRODPlanResolution *)self prId];
    dictionaryRepresentation3 = [prId dictionaryRepresentation];
    if (dictionaryRepresentation3)
    {
      [dictionary setObject:dictionaryRepresentation3 forKeyedSubscript:@"prId"];
    }

    else
    {
      null3 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null3 forKeyedSubscript:@"prId"];
    }
  }

  if (self->_prTotalHandleTime)
  {
    prTotalHandleTime = [(PNRODSchemaPNRODPlanResolution *)self prTotalHandleTime];
    dictionaryRepresentation4 = [prTotalHandleTime dictionaryRepresentation];
    if (dictionaryRepresentation4)
    {
      [dictionary setObject:dictionaryRepresentation4 forKeyedSubscript:@"prTotalHandleTime"];
    }

    else
    {
      null4 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null4 forKeyedSubscript:@"prTotalHandleTime"];
    }
  }

  if ((*&self->_has & 2) != 0)
  {
    v17 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[PNRODSchemaPNRODPlanResolution statementId](self, "statementId")}];
    [dictionary setObject:v17 forKeyedSubscript:@"statementId"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(SISchemaUUID *)self->_planCycleId hash];
  v4 = [(SISchemaUUID *)self->_prId hash];
  if (*&self->_has)
  {
    v5 = 2654435761 * self->_actionStatementId;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_5:
    v6 = 0;
    goto LABEL_6;
  }

  v5 = 0;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v6 = 2654435761 * self->_statementId;
LABEL_6:
  v7 = v4 ^ v3 ^ v5 ^ v6 ^ [(PNRODSchemaPNRODMetricDuration *)self->_prTotalHandleTime hash];
  return v7 ^ [(PNRODSchemaPNRODFailureInfo *)self->_failureInfo hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_29;
  }

  planCycleId = [(PNRODSchemaPNRODPlanResolution *)self planCycleId];
  planCycleId2 = [equalCopy planCycleId];
  if ((planCycleId != 0) == (planCycleId2 == 0))
  {
    goto LABEL_28;
  }

  planCycleId3 = [(PNRODSchemaPNRODPlanResolution *)self planCycleId];
  if (planCycleId3)
  {
    v8 = planCycleId3;
    planCycleId4 = [(PNRODSchemaPNRODPlanResolution *)self planCycleId];
    planCycleId5 = [equalCopy planCycleId];
    v11 = [planCycleId4 isEqual:planCycleId5];

    if (!v11)
    {
      goto LABEL_29;
    }
  }

  else
  {
  }

  planCycleId = [(PNRODSchemaPNRODPlanResolution *)self prId];
  planCycleId2 = [equalCopy prId];
  if ((planCycleId != 0) == (planCycleId2 == 0))
  {
    goto LABEL_28;
  }

  prId = [(PNRODSchemaPNRODPlanResolution *)self prId];
  if (prId)
  {
    v13 = prId;
    prId2 = [(PNRODSchemaPNRODPlanResolution *)self prId];
    prId3 = [equalCopy prId];
    v16 = [prId2 isEqual:prId3];

    if (!v16)
    {
      goto LABEL_29;
    }
  }

  else
  {
  }

  has = self->_has;
  v18 = equalCopy[48];
  if ((*&has & 1) != (v18 & 1))
  {
    goto LABEL_29;
  }

  if (*&has)
  {
    actionStatementId = self->_actionStatementId;
    if (actionStatementId != [equalCopy actionStatementId])
    {
      goto LABEL_29;
    }

    has = self->_has;
    v18 = equalCopy[48];
  }

  v20 = (*&has >> 1) & 1;
  if (v20 != ((v18 >> 1) & 1))
  {
    goto LABEL_29;
  }

  if (v20)
  {
    statementId = self->_statementId;
    if (statementId != [equalCopy statementId])
    {
      goto LABEL_29;
    }
  }

  planCycleId = [(PNRODSchemaPNRODPlanResolution *)self prTotalHandleTime];
  planCycleId2 = [equalCopy prTotalHandleTime];
  if ((planCycleId != 0) == (planCycleId2 == 0))
  {
    goto LABEL_28;
  }

  prTotalHandleTime = [(PNRODSchemaPNRODPlanResolution *)self prTotalHandleTime];
  if (prTotalHandleTime)
  {
    v23 = prTotalHandleTime;
    prTotalHandleTime2 = [(PNRODSchemaPNRODPlanResolution *)self prTotalHandleTime];
    prTotalHandleTime3 = [equalCopy prTotalHandleTime];
    v26 = [prTotalHandleTime2 isEqual:prTotalHandleTime3];

    if (!v26)
    {
      goto LABEL_29;
    }
  }

  else
  {
  }

  planCycleId = [(PNRODSchemaPNRODPlanResolution *)self failureInfo];
  planCycleId2 = [equalCopy failureInfo];
  if ((planCycleId != 0) == (planCycleId2 == 0))
  {
LABEL_28:

    goto LABEL_29;
  }

  failureInfo = [(PNRODSchemaPNRODPlanResolution *)self failureInfo];
  if (!failureInfo)
  {

LABEL_32:
    v32 = 1;
    goto LABEL_30;
  }

  v28 = failureInfo;
  failureInfo2 = [(PNRODSchemaPNRODPlanResolution *)self failureInfo];
  failureInfo3 = [equalCopy failureInfo];
  v31 = [failureInfo2 isEqual:failureInfo3];

  if (v31)
  {
    goto LABEL_32;
  }

LABEL_29:
  v32 = 0;
LABEL_30:

  return v32;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  planCycleId = [(PNRODSchemaPNRODPlanResolution *)self planCycleId];

  if (planCycleId)
  {
    planCycleId2 = [(PNRODSchemaPNRODPlanResolution *)self planCycleId];
    PBDataWriterWriteSubmessage();
  }

  prId = [(PNRODSchemaPNRODPlanResolution *)self prId];

  if (prId)
  {
    prId2 = [(PNRODSchemaPNRODPlanResolution *)self prId];
    PBDataWriterWriteSubmessage();
  }

  has = self->_has;
  if (has)
  {
    PBDataWriterWriteUint32Field();
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    PBDataWriterWriteUint32Field();
  }

  prTotalHandleTime = [(PNRODSchemaPNRODPlanResolution *)self prTotalHandleTime];

  if (prTotalHandleTime)
  {
    prTotalHandleTime2 = [(PNRODSchemaPNRODPlanResolution *)self prTotalHandleTime];
    PBDataWriterWriteSubmessage();
  }

  failureInfo = [(PNRODSchemaPNRODPlanResolution *)self failureInfo];

  v12 = toCopy;
  if (failureInfo)
  {
    failureInfo2 = [(PNRODSchemaPNRODPlanResolution *)self failureInfo];
    PBDataWriterWriteSubmessage();

    v12 = toCopy;
  }
}

- (void)setHasStatementId:(BOOL)id
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
  policyCopy = policy;
  v19.receiver = self;
  v19.super_class = PNRODSchemaPNRODPlanResolution;
  v5 = [(SISchemaInstrumentationMessage *)&v19 applySensitiveConditionsPolicy:policyCopy];
  planCycleId = [(PNRODSchemaPNRODPlanResolution *)self planCycleId];
  v7 = [planCycleId applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(PNRODSchemaPNRODPlanResolution *)self deletePlanCycleId];
  }

  prId = [(PNRODSchemaPNRODPlanResolution *)self prId];
  v10 = [prId applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v10 suppressMessage];

  if (suppressMessage2)
  {
    [(PNRODSchemaPNRODPlanResolution *)self deletePrId];
  }

  prTotalHandleTime = [(PNRODSchemaPNRODPlanResolution *)self prTotalHandleTime];
  v13 = [prTotalHandleTime applySensitiveConditionsPolicy:policyCopy];
  suppressMessage3 = [v13 suppressMessage];

  if (suppressMessage3)
  {
    [(PNRODSchemaPNRODPlanResolution *)self deletePrTotalHandleTime];
  }

  failureInfo = [(PNRODSchemaPNRODPlanResolution *)self failureInfo];
  v16 = [failureInfo applySensitiveConditionsPolicy:policyCopy];
  suppressMessage4 = [v16 suppressMessage];

  if (suppressMessage4)
  {
    [(PNRODSchemaPNRODPlanResolution *)self deleteFailureInfo];
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