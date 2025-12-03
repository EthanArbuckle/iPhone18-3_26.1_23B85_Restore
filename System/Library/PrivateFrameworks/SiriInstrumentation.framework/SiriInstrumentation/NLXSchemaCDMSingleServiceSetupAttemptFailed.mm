@interface NLXSchemaCDMSingleServiceSetupAttemptFailed
- (BOOL)isEqual:(id)equal;
- (NLXSchemaCDMSingleServiceSetupAttemptFailed)initWithDictionary:(id)dictionary;
- (NLXSchemaCDMSingleServiceSetupAttemptFailed)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasErrorCode:(BOOL)code;
- (void)setHasReason:(BOOL)reason;
- (void)setHasRetryNumber:(BOOL)number;
- (void)writeTo:(id)to;
@end

@implementation NLXSchemaCDMSingleServiceSetupAttemptFailed

- (NLXSchemaCDMSingleServiceSetupAttemptFailed)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v12.receiver = self;
  v12.super_class = NLXSchemaCDMSingleServiceSetupAttemptFailed;
  v5 = [(NLXSchemaCDMSingleServiceSetupAttemptFailed *)&v12 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"serviceType"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[NLXSchemaCDMSingleServiceSetupAttemptFailed setServiceType:](v5, "setServiceType:", [v6 intValue]);
    }

    v7 = [dictionaryCopy objectForKeyedSubscript:@"retryNumber"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[NLXSchemaCDMSingleServiceSetupAttemptFailed setRetryNumber:](v5, "setRetryNumber:", [v7 unsignedIntValue]);
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"reason"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[NLXSchemaCDMSingleServiceSetupAttemptFailed setReason:](v5, "setReason:", [v8 intValue]);
    }

    v9 = [dictionaryCopy objectForKeyedSubscript:@"errorCode"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[NLXSchemaCDMSingleServiceSetupAttemptFailed setErrorCode:](v5, "setErrorCode:", [v9 unsignedIntValue]);
    }

    v10 = v5;
  }

  return v5;
}

- (NLXSchemaCDMSingleServiceSetupAttemptFailed)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(NLXSchemaCDMSingleServiceSetupAttemptFailed *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(NLXSchemaCDMSingleServiceSetupAttemptFailed *)self dictionaryRepresentation];
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
  if ((has & 8) != 0)
  {
    v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[NLXSchemaCDMSingleServiceSetupAttemptFailed errorCode](self, "errorCode")}];
    [dictionary setObject:v5 forKeyedSubscript:@"errorCode"];

    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_3:
      if ((has & 2) == 0)
      {
        goto LABEL_4;
      }

LABEL_13:
      v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[NLXSchemaCDMSingleServiceSetupAttemptFailed retryNumber](self, "retryNumber")}];
      [dictionary setObject:v9 forKeyedSubscript:@"retryNumber"];

      if ((*&self->_has & 1) == 0)
      {
        goto LABEL_18;
      }

LABEL_14:
      v10 = [(NLXSchemaCDMSingleServiceSetupAttemptFailed *)self serviceType]- 1;
      if (v10 > 0x24)
      {
        v11 = @"CDMSERVICETYPE_UNKNOWN";
      }

      else
      {
        v11 = off_1E78DBE80[v10];
      }

      [dictionary setObject:v11 forKeyedSubscript:@"serviceType"];
      goto LABEL_18;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_3;
  }

  reason = [(NLXSchemaCDMSingleServiceSetupAttemptFailed *)self reason];
  v7 = @"CDMSERVICESETUPATTEMPTFAILUREREASON_UNKNOWN";
  if (reason == 1)
  {
    v7 = @"CDMSERVICESETUPATTEMPTFAILUREREASON_TIMED_OUT";
  }

  if (reason == 2)
  {
    v8 = @"CDMSERVICESETUPATTEMPTFAILUREREASON_ERROR_DURING_SETUP";
  }

  else
  {
    v8 = v7;
  }

  [dictionary setObject:v8 forKeyedSubscript:@"reason"];
  has = self->_has;
  if ((has & 2) != 0)
  {
    goto LABEL_13;
  }

LABEL_4:
  if (has)
  {
    goto LABEL_14;
  }

LABEL_18:
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
      v3 = 2654435761 * self->_retryNumber;
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
  v4 = 2654435761 * self->_reason;
  if ((*&self->_has & 8) == 0)
  {
    goto LABEL_9;
  }

LABEL_5:
  v5 = 2654435761 * self->_errorCode;
  return v3 ^ v2 ^ v4 ^ v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_18;
  }

  has = self->_has;
  v6 = equalCopy[24];
  if ((*&has & 1) != (v6 & 1))
  {
    goto LABEL_18;
  }

  if (*&has)
  {
    serviceType = self->_serviceType;
    if (serviceType != [equalCopy serviceType])
    {
      goto LABEL_18;
    }

    has = self->_has;
    v6 = equalCopy[24];
  }

  v8 = (*&has >> 1) & 1;
  if (v8 != ((v6 >> 1) & 1))
  {
    goto LABEL_18;
  }

  if (v8)
  {
    retryNumber = self->_retryNumber;
    if (retryNumber != [equalCopy retryNumber])
    {
      goto LABEL_18;
    }

    has = self->_has;
    v6 = equalCopy[24];
  }

  v10 = (*&has >> 2) & 1;
  if (v10 != ((v6 >> 2) & 1))
  {
    goto LABEL_18;
  }

  if (v10)
  {
    reason = self->_reason;
    if (reason == [equalCopy reason])
    {
      has = self->_has;
      v6 = equalCopy[24];
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
    errorCode = self->_errorCode;
    if (errorCode != [equalCopy errorCode])
    {
      goto LABEL_18;
    }
  }

  v14 = 1;
LABEL_19:

  return v14;
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
  PBDataWriterWriteInt32Field();
  if ((*&self->_has & 8) != 0)
  {
LABEL_5:
    PBDataWriterWriteUint32Field();
  }

LABEL_6:
}

- (void)setHasErrorCode:(BOOL)code
{
  if (code)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (void)setHasReason:(BOOL)reason
{
  if (reason)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasRetryNumber:(BOOL)number
{
  if (number)
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