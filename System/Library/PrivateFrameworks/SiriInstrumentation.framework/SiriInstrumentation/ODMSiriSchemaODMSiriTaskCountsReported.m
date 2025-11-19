@interface ODMSiriSchemaODMSiriTaskCountsReported
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (ODMSiriSchemaODMSiriTaskCountsReported)initWithDictionary:(id)a3;
- (ODMSiriSchemaODMSiriTaskCountsReported)initWithJSON:(id)a3;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasCancelledSiriTaskCount:(BOOL)a3;
- (void)setHasCompletedSiriTaskCount:(BOOL)a3;
- (void)setHasCompletedUITaskCount:(BOOL)a3;
- (void)setHasFailedSiriTaskCount:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation ODMSiriSchemaODMSiriTaskCountsReported

- (ODMSiriSchemaODMSiriTaskCountsReported)initWithDictionary:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = ODMSiriSchemaODMSiriTaskCountsReported;
  v5 = [(ODMSiriSchemaODMSiriTaskCountsReported *)&v15 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"dimensions"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[ODMSiriSchemaODMSiriAggregationDimensions alloc] initWithDictionary:v6];
      [(ODMSiriSchemaODMSiriTaskCountsReported *)v5 setDimensions:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"taskType"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ODMSiriSchemaODMSiriTaskCountsReported setTaskType:](v5, "setTaskType:", [v8 intValue]);
    }

    v9 = [v4 objectForKeyedSubscript:@"completedSiriTaskCount"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ODMSiriSchemaODMSiriTaskCountsReported setCompletedSiriTaskCount:](v5, "setCompletedSiriTaskCount:", [v9 unsignedIntValue]);
    }

    v10 = [v4 objectForKeyedSubscript:@"failedSiriTaskCount"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ODMSiriSchemaODMSiriTaskCountsReported setFailedSiriTaskCount:](v5, "setFailedSiriTaskCount:", [v10 unsignedIntValue]);
    }

    v11 = [v4 objectForKeyedSubscript:@"cancelledSiriTaskCount"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ODMSiriSchemaODMSiriTaskCountsReported setCancelledSiriTaskCount:](v5, "setCancelledSiriTaskCount:", [v11 unsignedIntValue]);
    }

    v12 = [v4 objectForKeyedSubscript:@"completedUITaskCount"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ODMSiriSchemaODMSiriTaskCountsReported setCompletedUITaskCount:](v5, "setCompletedUITaskCount:", [v12 unsignedIntValue]);
    }

    v13 = v5;
  }

  return v5;
}

- (ODMSiriSchemaODMSiriTaskCountsReported)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(ODMSiriSchemaODMSiriTaskCountsReported *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(ODMSiriSchemaODMSiriTaskCountsReported *)self dictionaryRepresentation];
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
  if ((has & 8) != 0)
  {
    v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[ODMSiriSchemaODMSiriTaskCountsReported cancelledSiriTaskCount](self, "cancelledSiriTaskCount")}];
    [v3 setObject:v8 forKeyedSubscript:@"cancelledSiriTaskCount"];

    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 0x10) == 0)
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

  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[ODMSiriSchemaODMSiriTaskCountsReported completedSiriTaskCount](self, "completedSiriTaskCount")}];
  [v3 setObject:v9 forKeyedSubscript:@"completedSiriTaskCount"];

  if ((*&self->_has & 0x10) != 0)
  {
LABEL_4:
    v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[ODMSiriSchemaODMSiriTaskCountsReported completedUITaskCount](self, "completedUITaskCount")}];
    [v3 setObject:v5 forKeyedSubscript:@"completedUITaskCount"];
  }

LABEL_5:
  if (self->_dimensions)
  {
    v6 = [(ODMSiriSchemaODMSiriTaskCountsReported *)self dimensions];
    v7 = [v6 dictionaryRepresentation];
    if (v7)
    {
      [v3 setObject:v7 forKeyedSubscript:@"dimensions"];
    }

    else
    {
      v10 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v10 forKeyedSubscript:@"dimensions"];
    }
  }

  v11 = self->_has;
  if ((v11 & 4) != 0)
  {
    v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[ODMSiriSchemaODMSiriTaskCountsReported failedSiriTaskCount](self, "failedSiriTaskCount")}];
    [v3 setObject:v12 forKeyedSubscript:@"failedSiriTaskCount"];

    v11 = self->_has;
  }

  if (v11)
  {
    v13 = [(ODMSiriSchemaODMSiriTaskCountsReported *)self taskType]- 1;
    if (v13 > 3)
    {
      v14 = @"ODMSIRITASKTYPE_UNKNOWN";
    }

    else
    {
      v14 = off_1E78DE130[v13];
    }

    [v3 setObject:v14 forKeyedSubscript:@"taskType"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (unint64_t)hash
{
  v3 = [(ODMSiriSchemaODMSiriAggregationDimensions *)self->_dimensions hash];
  if (*&self->_has)
  {
    v4 = 2654435761 * self->_taskType;
    if ((*&self->_has & 2) != 0)
    {
LABEL_3:
      v5 = 2654435761 * self->_completedSiriTaskCount;
      if ((*&self->_has & 4) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else
  {
    v4 = 0;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }
  }

  v5 = 0;
  if ((*&self->_has & 4) != 0)
  {
LABEL_4:
    v6 = 2654435761 * self->_failedSiriTaskCount;
    if ((*&self->_has & 8) != 0)
    {
      goto LABEL_5;
    }

LABEL_10:
    v7 = 0;
    if ((*&self->_has & 0x10) != 0)
    {
      goto LABEL_6;
    }

LABEL_11:
    v8 = 0;
    return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8;
  }

LABEL_9:
  v6 = 0;
  if ((*&self->_has & 8) == 0)
  {
    goto LABEL_10;
  }

LABEL_5:
  v7 = 2654435761 * self->_cancelledSiriTaskCount;
  if ((*&self->_has & 0x10) == 0)
  {
    goto LABEL_11;
  }

LABEL_6:
  v8 = 2654435761 * self->_completedUITaskCount;
  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_28;
  }

  v5 = [(ODMSiriSchemaODMSiriTaskCountsReported *)self dimensions];
  v6 = [v4 dimensions];
  v7 = v6;
  if ((v5 != 0) == (v6 == 0))
  {

    goto LABEL_28;
  }

  v8 = [(ODMSiriSchemaODMSiriTaskCountsReported *)self dimensions];
  if (v8)
  {
    v9 = v8;
    v10 = [(ODMSiriSchemaODMSiriTaskCountsReported *)self dimensions];
    v11 = [v4 dimensions];
    v12 = [v10 isEqual:v11];

    if (!v12)
    {
      goto LABEL_28;
    }
  }

  else
  {
  }

  has = self->_has;
  v14 = v4[36];
  if ((*&has & 1) != (v14 & 1))
  {
LABEL_28:
    v24 = 0;
    goto LABEL_29;
  }

  if (*&has)
  {
    taskType = self->_taskType;
    if (taskType != [v4 taskType])
    {
      goto LABEL_28;
    }

    has = self->_has;
    v14 = v4[36];
  }

  v16 = (*&has >> 1) & 1;
  if (v16 != ((v14 >> 1) & 1))
  {
    goto LABEL_28;
  }

  if (v16)
  {
    completedSiriTaskCount = self->_completedSiriTaskCount;
    if (completedSiriTaskCount != [v4 completedSiriTaskCount])
    {
      goto LABEL_28;
    }

    has = self->_has;
    v14 = v4[36];
  }

  v18 = (*&has >> 2) & 1;
  if (v18 != ((v14 >> 2) & 1))
  {
    goto LABEL_28;
  }

  if (v18)
  {
    failedSiriTaskCount = self->_failedSiriTaskCount;
    if (failedSiriTaskCount != [v4 failedSiriTaskCount])
    {
      goto LABEL_28;
    }

    has = self->_has;
    v14 = v4[36];
  }

  v20 = (*&has >> 3) & 1;
  if (v20 != ((v14 >> 3) & 1))
  {
    goto LABEL_28;
  }

  if (v20)
  {
    cancelledSiriTaskCount = self->_cancelledSiriTaskCount;
    if (cancelledSiriTaskCount == [v4 cancelledSiriTaskCount])
    {
      has = self->_has;
      v14 = v4[36];
      goto LABEL_24;
    }

    goto LABEL_28;
  }

LABEL_24:
  v22 = (*&has >> 4) & 1;
  if (v22 != ((v14 >> 4) & 1))
  {
    goto LABEL_28;
  }

  if (v22)
  {
    completedUITaskCount = self->_completedUITaskCount;
    if (completedUITaskCount != [v4 completedUITaskCount])
    {
      goto LABEL_28;
    }
  }

  v24 = 1;
LABEL_29:

  return v24;
}

- (void)writeTo:(id)a3
{
  v8 = a3;
  v4 = [(ODMSiriSchemaODMSiriTaskCountsReported *)self dimensions];

  if (v4)
  {
    v5 = [(ODMSiriSchemaODMSiriTaskCountsReported *)self dimensions];
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
    PBDataWriterWriteUint32Field();
    v7 = v8;
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_7:
      if ((has & 8) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_15;
    }
  }

  else if ((has & 4) == 0)
  {
    goto LABEL_7;
  }

  PBDataWriterWriteUint32Field();
  v7 = v8;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_8:
    if ((has & 0x10) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

LABEL_15:
  PBDataWriterWriteUint32Field();
  v7 = v8;
  if ((*&self->_has & 0x10) != 0)
  {
LABEL_9:
    PBDataWriterWriteUint32Field();
    v7 = v8;
  }

LABEL_10:
}

- (void)setHasCompletedUITaskCount:(BOOL)a3
{
  if (a3)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEF | v3;
}

- (void)setHasCancelledSiriTaskCount:(BOOL)a3
{
  if (a3)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (void)setHasFailedSiriTaskCount:(BOOL)a3
{
  if (a3)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasCompletedSiriTaskCount:(BOOL)a3
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
  v9.super_class = ODMSiriSchemaODMSiriTaskCountsReported;
  v4 = a3;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:v4];
  v6 = [(ODMSiriSchemaODMSiriTaskCountsReported *)self dimensions:v9.receiver];
  v7 = [v6 applySensitiveConditionsPolicy:v4];

  LODWORD(v4) = [v7 suppressMessage];
  if (v4)
  {
    [(ODMSiriSchemaODMSiriTaskCountsReported *)self deleteDimensions];
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