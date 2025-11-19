@interface PNRODSchemaPNRODPlanResolution
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (PNRODSchemaPNRODPlanResolution)initWithDictionary:(id)a3;
- (PNRODSchemaPNRODPlanResolution)initWithJSON:(id)a3;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasStatementId:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation PNRODSchemaPNRODPlanResolution

- (PNRODSchemaPNRODPlanResolution)initWithDictionary:(id)a3
{
  v4 = a3;
  v18.receiver = self;
  v18.super_class = PNRODSchemaPNRODPlanResolution;
  v5 = [(PNRODSchemaPNRODPlanResolution *)&v18 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"planCycleId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaUUID alloc] initWithDictionary:v6];
      [(PNRODSchemaPNRODPlanResolution *)v5 setPlanCycleId:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"prId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[SISchemaUUID alloc] initWithDictionary:v8];
      [(PNRODSchemaPNRODPlanResolution *)v5 setPrId:v9];
    }

    v10 = [v4 objectForKeyedSubscript:@"actionStatementId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[PNRODSchemaPNRODPlanResolution setActionStatementId:](v5, "setActionStatementId:", [v10 unsignedIntValue]);
    }

    v11 = [v4 objectForKeyedSubscript:@"statementId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[PNRODSchemaPNRODPlanResolution setStatementId:](v5, "setStatementId:", [v11 unsignedIntValue]);
    }

    v12 = [v4 objectForKeyedSubscript:@"prTotalHandleTime"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [[PNRODSchemaPNRODMetricDuration alloc] initWithDictionary:v12];
      [(PNRODSchemaPNRODPlanResolution *)v5 setPrTotalHandleTime:v13];
    }

    v14 = [v4 objectForKeyedSubscript:@"failureInfo"];
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

- (PNRODSchemaPNRODPlanResolution)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(PNRODSchemaPNRODPlanResolution *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(PNRODSchemaPNRODPlanResolution *)self dictionaryRepresentation];
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
    v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[PNRODSchemaPNRODPlanResolution actionStatementId](self, "actionStatementId")}];
    [v3 setObject:v4 forKeyedSubscript:@"actionStatementId"];
  }

  if (self->_failureInfo)
  {
    v5 = [(PNRODSchemaPNRODPlanResolution *)self failureInfo];
    v6 = [v5 dictionaryRepresentation];
    if (v6)
    {
      [v3 setObject:v6 forKeyedSubscript:@"failureInfo"];
    }

    else
    {
      v7 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v7 forKeyedSubscript:@"failureInfo"];
    }
  }

  if (self->_planCycleId)
  {
    v8 = [(PNRODSchemaPNRODPlanResolution *)self planCycleId];
    v9 = [v8 dictionaryRepresentation];
    if (v9)
    {
      [v3 setObject:v9 forKeyedSubscript:@"planCycleId"];
    }

    else
    {
      v10 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v10 forKeyedSubscript:@"planCycleId"];
    }
  }

  if (self->_prId)
  {
    v11 = [(PNRODSchemaPNRODPlanResolution *)self prId];
    v12 = [v11 dictionaryRepresentation];
    if (v12)
    {
      [v3 setObject:v12 forKeyedSubscript:@"prId"];
    }

    else
    {
      v13 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v13 forKeyedSubscript:@"prId"];
    }
  }

  if (self->_prTotalHandleTime)
  {
    v14 = [(PNRODSchemaPNRODPlanResolution *)self prTotalHandleTime];
    v15 = [v14 dictionaryRepresentation];
    if (v15)
    {
      [v3 setObject:v15 forKeyedSubscript:@"prTotalHandleTime"];
    }

    else
    {
      v16 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v16 forKeyedSubscript:@"prTotalHandleTime"];
    }
  }

  if ((*&self->_has & 2) != 0)
  {
    v17 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[PNRODSchemaPNRODPlanResolution statementId](self, "statementId")}];
    [v3 setObject:v17 forKeyedSubscript:@"statementId"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_29;
  }

  v5 = [(PNRODSchemaPNRODPlanResolution *)self planCycleId];
  v6 = [v4 planCycleId];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_28;
  }

  v7 = [(PNRODSchemaPNRODPlanResolution *)self planCycleId];
  if (v7)
  {
    v8 = v7;
    v9 = [(PNRODSchemaPNRODPlanResolution *)self planCycleId];
    v10 = [v4 planCycleId];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_29;
    }
  }

  else
  {
  }

  v5 = [(PNRODSchemaPNRODPlanResolution *)self prId];
  v6 = [v4 prId];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_28;
  }

  v12 = [(PNRODSchemaPNRODPlanResolution *)self prId];
  if (v12)
  {
    v13 = v12;
    v14 = [(PNRODSchemaPNRODPlanResolution *)self prId];
    v15 = [v4 prId];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_29;
    }
  }

  else
  {
  }

  has = self->_has;
  v18 = v4[48];
  if ((*&has & 1) != (v18 & 1))
  {
    goto LABEL_29;
  }

  if (*&has)
  {
    actionStatementId = self->_actionStatementId;
    if (actionStatementId != [v4 actionStatementId])
    {
      goto LABEL_29;
    }

    has = self->_has;
    v18 = v4[48];
  }

  v20 = (*&has >> 1) & 1;
  if (v20 != ((v18 >> 1) & 1))
  {
    goto LABEL_29;
  }

  if (v20)
  {
    statementId = self->_statementId;
    if (statementId != [v4 statementId])
    {
      goto LABEL_29;
    }
  }

  v5 = [(PNRODSchemaPNRODPlanResolution *)self prTotalHandleTime];
  v6 = [v4 prTotalHandleTime];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_28;
  }

  v22 = [(PNRODSchemaPNRODPlanResolution *)self prTotalHandleTime];
  if (v22)
  {
    v23 = v22;
    v24 = [(PNRODSchemaPNRODPlanResolution *)self prTotalHandleTime];
    v25 = [v4 prTotalHandleTime];
    v26 = [v24 isEqual:v25];

    if (!v26)
    {
      goto LABEL_29;
    }
  }

  else
  {
  }

  v5 = [(PNRODSchemaPNRODPlanResolution *)self failureInfo];
  v6 = [v4 failureInfo];
  if ((v5 != 0) == (v6 == 0))
  {
LABEL_28:

    goto LABEL_29;
  }

  v27 = [(PNRODSchemaPNRODPlanResolution *)self failureInfo];
  if (!v27)
  {

LABEL_32:
    v32 = 1;
    goto LABEL_30;
  }

  v28 = v27;
  v29 = [(PNRODSchemaPNRODPlanResolution *)self failureInfo];
  v30 = [v4 failureInfo];
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
  v4 = [(PNRODSchemaPNRODPlanResolution *)self planCycleId];

  if (v4)
  {
    v5 = [(PNRODSchemaPNRODPlanResolution *)self planCycleId];
    PBDataWriterWriteSubmessage();
  }

  v6 = [(PNRODSchemaPNRODPlanResolution *)self prId];

  if (v6)
  {
    v7 = [(PNRODSchemaPNRODPlanResolution *)self prId];
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

  v9 = [(PNRODSchemaPNRODPlanResolution *)self prTotalHandleTime];

  if (v9)
  {
    v10 = [(PNRODSchemaPNRODPlanResolution *)self prTotalHandleTime];
    PBDataWriterWriteSubmessage();
  }

  v11 = [(PNRODSchemaPNRODPlanResolution *)self failureInfo];

  v12 = v14;
  if (v11)
  {
    v13 = [(PNRODSchemaPNRODPlanResolution *)self failureInfo];
    PBDataWriterWriteSubmessage();

    v12 = v14;
  }
}

- (void)setHasStatementId:(BOOL)a3
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
  v19.super_class = PNRODSchemaPNRODPlanResolution;
  v5 = [(SISchemaInstrumentationMessage *)&v19 applySensitiveConditionsPolicy:v4];
  v6 = [(PNRODSchemaPNRODPlanResolution *)self planCycleId];
  v7 = [v6 applySensitiveConditionsPolicy:v4];
  v8 = [v7 suppressMessage];

  if (v8)
  {
    [(PNRODSchemaPNRODPlanResolution *)self deletePlanCycleId];
  }

  v9 = [(PNRODSchemaPNRODPlanResolution *)self prId];
  v10 = [v9 applySensitiveConditionsPolicy:v4];
  v11 = [v10 suppressMessage];

  if (v11)
  {
    [(PNRODSchemaPNRODPlanResolution *)self deletePrId];
  }

  v12 = [(PNRODSchemaPNRODPlanResolution *)self prTotalHandleTime];
  v13 = [v12 applySensitiveConditionsPolicy:v4];
  v14 = [v13 suppressMessage];

  if (v14)
  {
    [(PNRODSchemaPNRODPlanResolution *)self deletePrTotalHandleTime];
  }

  v15 = [(PNRODSchemaPNRODPlanResolution *)self failureInfo];
  v16 = [v15 applySensitiveConditionsPolicy:v4];
  v17 = [v16 suppressMessage];

  if (v17)
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