@interface NLXSchemaCDMServiceSetupMetric
- (BOOL)isEqual:(id)a3;
- (NLXSchemaCDMServiceSetupMetric)initWithDictionary:(id)a3;
- (NLXSchemaCDMServiceSetupMetric)initWithJSON:(id)a3;
- (NSData)jsonData;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasEndLogicalTimestampInNs:(BOOL)a3;
- (void)setHasErrorCode:(BOOL)a3;
- (void)setHasFailureReason:(BOOL)a3;
- (void)setHasStartLogicalTimestampInNs:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation NLXSchemaCDMServiceSetupMetric

- (NLXSchemaCDMServiceSetupMetric)initWithDictionary:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = NLXSchemaCDMServiceSetupMetric;
  v5 = [(NLXSchemaCDMServiceSetupMetric *)&v13 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"serviceType"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[NLXSchemaCDMServiceSetupMetric setServiceType:](v5, "setServiceType:", [v6 intValue]);
    }

    v7 = [v4 objectForKeyedSubscript:@"startLogicalTimestampInNs"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[NLXSchemaCDMServiceSetupMetric setStartLogicalTimestampInNs:](v5, "setStartLogicalTimestampInNs:", [v7 longLongValue]);
    }

    v8 = [v4 objectForKeyedSubscript:@"endLogicalTimestampInNs"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[NLXSchemaCDMServiceSetupMetric setEndLogicalTimestampInNs:](v5, "setEndLogicalTimestampInNs:", [v8 longLongValue]);
    }

    v9 = [v4 objectForKeyedSubscript:@"failureReason"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[NLXSchemaCDMServiceSetupMetric setFailureReason:](v5, "setFailureReason:", [v9 intValue]);
    }

    v10 = [v4 objectForKeyedSubscript:@"errorCode"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[NLXSchemaCDMServiceSetupMetric setErrorCode:](v5, "setErrorCode:", [v10 unsignedIntValue]);
    }

    v11 = v5;
  }

  return v5;
}

- (NLXSchemaCDMServiceSetupMetric)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(NLXSchemaCDMServiceSetupMetric *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(NLXSchemaCDMServiceSetupMetric *)self dictionaryRepresentation];
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
    v7 = [MEMORY[0x1E696AD98] numberWithLongLong:{-[NLXSchemaCDMServiceSetupMetric endLogicalTimestampInNs](self, "endLogicalTimestampInNs")}];
    [v3 setObject:v7 forKeyedSubscript:@"endLogicalTimestampInNs"];

    has = self->_has;
    if ((has & 0x10) == 0)
    {
LABEL_3:
      if ((has & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  else if ((*&self->_has & 0x10) == 0)
  {
    goto LABEL_3;
  }

  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[NLXSchemaCDMServiceSetupMetric errorCode](self, "errorCode")}];
  [v3 setObject:v8 forKeyedSubscript:@"errorCode"];

  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_4:
    if ((has & 1) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_18;
  }

LABEL_12:
  v9 = [(NLXSchemaCDMServiceSetupMetric *)self failureReason];
  v10 = @"CDMSERVICESETUPATTEMPTFAILUREREASON_UNKNOWN";
  if (v9 == 1)
  {
    v10 = @"CDMSERVICESETUPATTEMPTFAILUREREASON_TIMED_OUT";
  }

  if (v9 == 2)
  {
    v11 = @"CDMSERVICESETUPATTEMPTFAILUREREASON_ERROR_DURING_SETUP";
  }

  else
  {
    v11 = v10;
  }

  [v3 setObject:v11 forKeyedSubscript:@"failureReason"];
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_5:
    if ((has & 2) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_18:
  v12 = [(NLXSchemaCDMServiceSetupMetric *)self serviceType]- 1;
  if (v12 > 0x24)
  {
    v13 = @"CDMSERVICETYPE_UNKNOWN";
  }

  else
  {
    v13 = off_1E78DBC08[v12];
  }

  [v3 setObject:v13 forKeyedSubscript:@"serviceType"];
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_7;
  }

LABEL_6:
  v5 = [MEMORY[0x1E696AD98] numberWithLongLong:{-[NLXSchemaCDMServiceSetupMetric startLogicalTimestampInNs](self, "startLogicalTimestampInNs")}];
  [v3 setObject:v5 forKeyedSubscript:@"startLogicalTimestampInNs"];

LABEL_7:
  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v2 = 2654435761 * self->_serviceType;
    if ((*&self->_has & 2) != 0)
    {
LABEL_3:
      v3 = 2654435761 * self->_startLogicalTimestampInNs;
      if ((*&self->_has & 4) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
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
  if ((*&self->_has & 4) != 0)
  {
LABEL_4:
    v4 = 2654435761 * self->_endLogicalTimestampInNs;
    if ((*&self->_has & 8) != 0)
    {
      goto LABEL_5;
    }

LABEL_10:
    v5 = 0;
    if ((*&self->_has & 0x10) != 0)
    {
      goto LABEL_6;
    }

LABEL_11:
    v6 = 0;
    return v3 ^ v2 ^ v4 ^ v5 ^ v6;
  }

LABEL_9:
  v4 = 0;
  if ((*&self->_has & 8) == 0)
  {
    goto LABEL_10;
  }

LABEL_5:
  v5 = 2654435761 * self->_failureReason;
  if ((*&self->_has & 0x10) == 0)
  {
    goto LABEL_11;
  }

LABEL_6:
  v6 = 2654435761 * self->_errorCode;
  return v3 ^ v2 ^ v4 ^ v5 ^ v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_22;
  }

  has = self->_has;
  v6 = v4[40];
  if ((*&has & 1) != (v6 & 1))
  {
    goto LABEL_22;
  }

  if (*&has)
  {
    serviceType = self->_serviceType;
    if (serviceType != [v4 serviceType])
    {
      goto LABEL_22;
    }

    has = self->_has;
    v6 = v4[40];
  }

  v8 = (*&has >> 1) & 1;
  if (v8 != ((v6 >> 1) & 1))
  {
    goto LABEL_22;
  }

  if (v8)
  {
    startLogicalTimestampInNs = self->_startLogicalTimestampInNs;
    if (startLogicalTimestampInNs != [v4 startLogicalTimestampInNs])
    {
      goto LABEL_22;
    }

    has = self->_has;
    v6 = v4[40];
  }

  v10 = (*&has >> 2) & 1;
  if (v10 != ((v6 >> 2) & 1))
  {
    goto LABEL_22;
  }

  if (v10)
  {
    endLogicalTimestampInNs = self->_endLogicalTimestampInNs;
    if (endLogicalTimestampInNs != [v4 endLogicalTimestampInNs])
    {
      goto LABEL_22;
    }

    has = self->_has;
    v6 = v4[40];
  }

  v12 = (*&has >> 3) & 1;
  if (v12 != ((v6 >> 3) & 1))
  {
    goto LABEL_22;
  }

  if (v12)
  {
    failureReason = self->_failureReason;
    if (failureReason == [v4 failureReason])
    {
      has = self->_has;
      v6 = v4[40];
      goto LABEL_18;
    }

LABEL_22:
    v16 = 0;
    goto LABEL_23;
  }

LABEL_18:
  v14 = (*&has >> 4) & 1;
  if (v14 != ((v6 >> 4) & 1))
  {
    goto LABEL_22;
  }

  if (v14)
  {
    errorCode = self->_errorCode;
    if (errorCode != [v4 errorCode])
    {
      goto LABEL_22;
    }
  }

  v16 = 1;
LABEL_23:

  return v16;
}

- (void)writeTo:(id)a3
{
  v5 = a3;
  has = self->_has;
  if (has)
  {
    PBDataWriterWriteInt32Field();
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_3;
  }

  PBDataWriterWriteInt64Field();
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_4:
    if ((has & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  PBDataWriterWriteInt64Field();
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_5:
    if ((has & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_13:
  PBDataWriterWriteInt32Field();
  if ((*&self->_has & 0x10) != 0)
  {
LABEL_6:
    PBDataWriterWriteUint32Field();
  }

LABEL_7:
}

- (void)setHasErrorCode:(BOOL)a3
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

- (void)setHasFailureReason:(BOOL)a3
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

- (void)setHasEndLogicalTimestampInNs:(BOOL)a3
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

- (void)setHasStartLogicalTimestampInNs:(BOOL)a3
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