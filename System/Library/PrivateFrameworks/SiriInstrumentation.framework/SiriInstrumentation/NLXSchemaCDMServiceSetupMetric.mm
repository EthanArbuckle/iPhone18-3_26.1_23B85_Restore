@interface NLXSchemaCDMServiceSetupMetric
- (BOOL)isEqual:(id)equal;
- (NLXSchemaCDMServiceSetupMetric)initWithDictionary:(id)dictionary;
- (NLXSchemaCDMServiceSetupMetric)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasEndLogicalTimestampInNs:(BOOL)ns;
- (void)setHasErrorCode:(BOOL)code;
- (void)setHasFailureReason:(BOOL)reason;
- (void)setHasStartLogicalTimestampInNs:(BOOL)ns;
- (void)writeTo:(id)to;
@end

@implementation NLXSchemaCDMServiceSetupMetric

- (NLXSchemaCDMServiceSetupMetric)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v13.receiver = self;
  v13.super_class = NLXSchemaCDMServiceSetupMetric;
  v5 = [(NLXSchemaCDMServiceSetupMetric *)&v13 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"serviceType"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[NLXSchemaCDMServiceSetupMetric setServiceType:](v5, "setServiceType:", [v6 intValue]);
    }

    v7 = [dictionaryCopy objectForKeyedSubscript:@"startLogicalTimestampInNs"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[NLXSchemaCDMServiceSetupMetric setStartLogicalTimestampInNs:](v5, "setStartLogicalTimestampInNs:", [v7 longLongValue]);
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"endLogicalTimestampInNs"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[NLXSchemaCDMServiceSetupMetric setEndLogicalTimestampInNs:](v5, "setEndLogicalTimestampInNs:", [v8 longLongValue]);
    }

    v9 = [dictionaryCopy objectForKeyedSubscript:@"failureReason"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[NLXSchemaCDMServiceSetupMetric setFailureReason:](v5, "setFailureReason:", [v9 intValue]);
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"errorCode"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[NLXSchemaCDMServiceSetupMetric setErrorCode:](v5, "setErrorCode:", [v10 unsignedIntValue]);
    }

    v11 = v5;
  }

  return v5;
}

- (NLXSchemaCDMServiceSetupMetric)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(NLXSchemaCDMServiceSetupMetric *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(NLXSchemaCDMServiceSetupMetric *)self dictionaryRepresentation];
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
  if ((has & 4) != 0)
  {
    v7 = [MEMORY[0x1E696AD98] numberWithLongLong:{-[NLXSchemaCDMServiceSetupMetric endLogicalTimestampInNs](self, "endLogicalTimestampInNs")}];
    [dictionary setObject:v7 forKeyedSubscript:@"endLogicalTimestampInNs"];

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
  [dictionary setObject:v8 forKeyedSubscript:@"errorCode"];

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
  failureReason = [(NLXSchemaCDMServiceSetupMetric *)self failureReason];
  v10 = @"CDMSERVICESETUPATTEMPTFAILUREREASON_UNKNOWN";
  if (failureReason == 1)
  {
    v10 = @"CDMSERVICESETUPATTEMPTFAILUREREASON_TIMED_OUT";
  }

  if (failureReason == 2)
  {
    v11 = @"CDMSERVICESETUPATTEMPTFAILUREREASON_ERROR_DURING_SETUP";
  }

  else
  {
    v11 = v10;
  }

  [dictionary setObject:v11 forKeyedSubscript:@"failureReason"];
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

  [dictionary setObject:v13 forKeyedSubscript:@"serviceType"];
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_7;
  }

LABEL_6:
  v5 = [MEMORY[0x1E696AD98] numberWithLongLong:{-[NLXSchemaCDMServiceSetupMetric startLogicalTimestampInNs](self, "startLogicalTimestampInNs")}];
  [dictionary setObject:v5 forKeyedSubscript:@"startLogicalTimestampInNs"];

LABEL_7:
  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_22;
  }

  has = self->_has;
  v6 = equalCopy[40];
  if ((*&has & 1) != (v6 & 1))
  {
    goto LABEL_22;
  }

  if (*&has)
  {
    serviceType = self->_serviceType;
    if (serviceType != [equalCopy serviceType])
    {
      goto LABEL_22;
    }

    has = self->_has;
    v6 = equalCopy[40];
  }

  v8 = (*&has >> 1) & 1;
  if (v8 != ((v6 >> 1) & 1))
  {
    goto LABEL_22;
  }

  if (v8)
  {
    startLogicalTimestampInNs = self->_startLogicalTimestampInNs;
    if (startLogicalTimestampInNs != [equalCopy startLogicalTimestampInNs])
    {
      goto LABEL_22;
    }

    has = self->_has;
    v6 = equalCopy[40];
  }

  v10 = (*&has >> 2) & 1;
  if (v10 != ((v6 >> 2) & 1))
  {
    goto LABEL_22;
  }

  if (v10)
  {
    endLogicalTimestampInNs = self->_endLogicalTimestampInNs;
    if (endLogicalTimestampInNs != [equalCopy endLogicalTimestampInNs])
    {
      goto LABEL_22;
    }

    has = self->_has;
    v6 = equalCopy[40];
  }

  v12 = (*&has >> 3) & 1;
  if (v12 != ((v6 >> 3) & 1))
  {
    goto LABEL_22;
  }

  if (v12)
  {
    failureReason = self->_failureReason;
    if (failureReason == [equalCopy failureReason])
    {
      has = self->_has;
      v6 = equalCopy[40];
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
    if (errorCode != [equalCopy errorCode])
    {
      goto LABEL_22;
    }
  }

  v16 = 1;
LABEL_23:

  return v16;
}

- (void)writeTo:(id)to
{
  toCopy = to;
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

- (void)setHasErrorCode:(BOOL)code
{
  if (code)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEF | v3;
}

- (void)setHasFailureReason:(BOOL)reason
{
  if (reason)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (void)setHasEndLogicalTimestampInNs:(BOOL)ns
{
  if (ns)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasStartLogicalTimestampInNs:(BOOL)ns
{
  if (ns)
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