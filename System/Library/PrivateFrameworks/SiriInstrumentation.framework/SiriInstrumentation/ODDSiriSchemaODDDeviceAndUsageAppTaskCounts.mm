@interface ODDSiriSchemaODDDeviceAndUsageAppTaskCounts
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (ODDSiriSchemaODDDeviceAndUsageAppTaskCounts)initWithDictionary:(id)a3;
- (ODDSiriSchemaODDDeviceAndUsageAppTaskCounts)initWithJSON:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasCancelledSiriAppTaskCount:(BOOL)a3;
- (void)setHasCompletedUIAppTaskCount:(BOOL)a3;
- (void)setHasFailedSiriAppTaskCount:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation ODDSiriSchemaODDDeviceAndUsageAppTaskCounts

- (ODDSiriSchemaODDDeviceAndUsageAppTaskCounts)initWithDictionary:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = ODDSiriSchemaODDDeviceAndUsageAppTaskCounts;
  v5 = [(ODDSiriSchemaODDDeviceAndUsageAppTaskCounts *)&v12 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"completedSiriAppTaskCount"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ODDSiriSchemaODDDeviceAndUsageAppTaskCounts setCompletedSiriAppTaskCount:](v5, "setCompletedSiriAppTaskCount:", [v6 unsignedIntValue]);
    }

    v7 = [v4 objectForKeyedSubscript:@"failedSiriAppTaskCount"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ODDSiriSchemaODDDeviceAndUsageAppTaskCounts setFailedSiriAppTaskCount:](v5, "setFailedSiriAppTaskCount:", [v7 unsignedIntValue]);
    }

    v8 = [v4 objectForKeyedSubscript:@"cancelledSiriAppTaskCount"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ODDSiriSchemaODDDeviceAndUsageAppTaskCounts setCancelledSiriAppTaskCount:](v5, "setCancelledSiriAppTaskCount:", [v8 unsignedIntValue]);
    }

    v9 = [v4 objectForKeyedSubscript:@"completedUIAppTaskCount"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ODDSiriSchemaODDDeviceAndUsageAppTaskCounts setCompletedUIAppTaskCount:](v5, "setCompletedUIAppTaskCount:", [v9 unsignedIntValue]);
    }

    v10 = v5;
  }

  return v5;
}

- (ODDSiriSchemaODDDeviceAndUsageAppTaskCounts)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(ODDSiriSchemaODDDeviceAndUsageAppTaskCounts *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(ODDSiriSchemaODDDeviceAndUsageAppTaskCounts *)self dictionaryRepresentation];
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
  if ((has & 4) != 0)
  {
    v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[ODDSiriSchemaODDDeviceAndUsageAppTaskCounts cancelledSiriAppTaskCount](self, "cancelledSiriAppTaskCount")}];
    [v3 setObject:v7 forKeyedSubscript:@"cancelledSiriAppTaskCount"];

    has = self->_has;
    if ((has & 1) == 0)
    {
LABEL_3:
      if ((has & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((*&self->_has & 1) == 0)
  {
    goto LABEL_3;
  }

  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[ODDSiriSchemaODDDeviceAndUsageAppTaskCounts completedSiriAppTaskCount](self, "completedSiriAppTaskCount")}];
  [v3 setObject:v8 forKeyedSubscript:@"completedSiriAppTaskCount"];

  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_4:
    if ((has & 2) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_11:
  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[ODDSiriSchemaODDDeviceAndUsageAppTaskCounts completedUIAppTaskCount](self, "completedUIAppTaskCount")}];
  [v3 setObject:v9 forKeyedSubscript:@"completedUIAppTaskCount"];

  if ((*&self->_has & 2) != 0)
  {
LABEL_5:
    v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[ODDSiriSchemaODDDeviceAndUsageAppTaskCounts failedSiriAppTaskCount](self, "failedSiriAppTaskCount")}];
    [v3 setObject:v5 forKeyedSubscript:@"failedSiriAppTaskCount"];
  }

LABEL_6:
  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v2 = 2654435761 * self->_completedSiriAppTaskCount;
    if ((*&self->_has & 2) != 0)
    {
LABEL_3:
      v3 = 2654435761 * self->_failedSiriAppTaskCount;
      if ((*&self->_has & 4) != 0)
      {
        goto LABEL_4;
      }

LABEL_8:
      v4 = 0;
      if ((*&self->_has & 8) != 0)
      {
        goto LABEL_5;
      }

LABEL_9:
      v5 = 0;
      return v3 ^ v2 ^ v4 ^ v5;
    }
  }

  else
  {
    v2 = 0;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }
  }

  v3 = 0;
  if ((*&self->_has & 4) == 0)
  {
    goto LABEL_8;
  }

LABEL_4:
  v4 = 2654435761 * self->_cancelledSiriAppTaskCount;
  if ((*&self->_has & 8) == 0)
  {
    goto LABEL_9;
  }

LABEL_5:
  v5 = 2654435761 * self->_completedUIAppTaskCount;
  return v3 ^ v2 ^ v4 ^ v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_18;
  }

  has = self->_has;
  v6 = v4[24];
  if ((*&has & 1) != (v6 & 1))
  {
    goto LABEL_18;
  }

  if (*&has)
  {
    completedSiriAppTaskCount = self->_completedSiriAppTaskCount;
    if (completedSiriAppTaskCount != [v4 completedSiriAppTaskCount])
    {
      goto LABEL_18;
    }

    has = self->_has;
    v6 = v4[24];
  }

  v8 = (*&has >> 1) & 1;
  if (v8 != ((v6 >> 1) & 1))
  {
    goto LABEL_18;
  }

  if (v8)
  {
    failedSiriAppTaskCount = self->_failedSiriAppTaskCount;
    if (failedSiriAppTaskCount != [v4 failedSiriAppTaskCount])
    {
      goto LABEL_18;
    }

    has = self->_has;
    v6 = v4[24];
  }

  v10 = (*&has >> 2) & 1;
  if (v10 != ((v6 >> 2) & 1))
  {
    goto LABEL_18;
  }

  if (v10)
  {
    cancelledSiriAppTaskCount = self->_cancelledSiriAppTaskCount;
    if (cancelledSiriAppTaskCount == [v4 cancelledSiriAppTaskCount])
    {
      has = self->_has;
      v6 = v4[24];
      goto LABEL_14;
    }

LABEL_18:
    v14 = 0;
    goto LABEL_19;
  }

LABEL_14:
  v12 = (*&has >> 3) & 1;
  if (v12 != ((v6 >> 3) & 1))
  {
    goto LABEL_18;
  }

  if (v12)
  {
    completedUIAppTaskCount = self->_completedUIAppTaskCount;
    if (completedUIAppTaskCount != [v4 completedUIAppTaskCount])
    {
      goto LABEL_18;
    }
  }

  v14 = 1;
LABEL_19:

  return v14;
}

- (void)writeTo:(id)a3
{
  v5 = a3;
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
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_3;
  }

  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_4:
    if ((has & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_11:
  PBDataWriterWriteUint32Field();
  if ((*&self->_has & 8) != 0)
  {
LABEL_5:
    PBDataWriterWriteUint32Field();
  }

LABEL_6:
}

- (void)setHasCompletedUIAppTaskCount:(BOOL)a3
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

- (void)setHasCancelledSiriAppTaskCount:(BOOL)a3
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

- (void)setHasFailedSiriAppTaskCount:(BOOL)a3
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

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end