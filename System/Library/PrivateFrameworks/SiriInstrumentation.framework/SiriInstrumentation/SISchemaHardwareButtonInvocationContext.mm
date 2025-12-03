@interface SISchemaHardwareButtonInvocationContext
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (SISchemaHardwareButtonInvocationContext)initWithDictionary:(id)dictionary;
- (SISchemaHardwareButtonInvocationContext)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasHardwareButtonActivationThresholdInSec:(BOOL)sec;
- (void)writeTo:(id)to;
@end

@implementation SISchemaHardwareButtonInvocationContext

- (SISchemaHardwareButtonInvocationContext)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v10.receiver = self;
  v10.super_class = SISchemaHardwareButtonInvocationContext;
  v5 = [(SISchemaHardwareButtonInvocationContext *)&v10 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"hardwareButtonLongPressBehavior"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[SISchemaHardwareButtonInvocationContext setHardwareButtonLongPressBehavior:](v5, "setHardwareButtonLongPressBehavior:", [v6 intValue]);
    }

    v7 = [dictionaryCopy objectForKeyedSubscript:@"hardwareButtonActivationThresholdInSec"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v7 floatValue];
      [(SISchemaHardwareButtonInvocationContext *)v5 setHardwareButtonActivationThresholdInSec:?];
    }

    v8 = v5;
  }

  return v5;
}

- (SISchemaHardwareButtonInvocationContext)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(SISchemaHardwareButtonInvocationContext *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(SISchemaHardwareButtonInvocationContext *)self dictionaryRepresentation];
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
    v5 = MEMORY[0x1E696AD98];
    [(SISchemaHardwareButtonInvocationContext *)self hardwareButtonActivationThresholdInSec];
    v6 = [v5 numberWithFloat:?];
    [dictionary setObject:v6 forKeyedSubscript:@"hardwareButtonActivationThresholdInSec"];

    has = self->_has;
  }

  if (has)
  {
    v7 = [(SISchemaHardwareButtonInvocationContext *)self hardwareButtonLongPressBehavior]- 1;
    if (v7 > 2)
    {
      v8 = @"SIRIHARDWAREBUTTONLONGPRESSBEHAVIOR_UNKNOWN";
    }

    else
    {
      v8 = off_1E78E4C58[v7];
    }

    [dictionary setObject:v8 forKeyedSubscript:@"hardwareButtonLongPressBehavior"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v4 = 2654435761 * self->_hardwareButtonLongPressBehavior;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_9:
    v9 = 0;
    return v9 ^ v4;
  }

  v4 = 0;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_9;
  }

LABEL_3:
  hardwareButtonActivationThresholdInSec = self->_hardwareButtonActivationThresholdInSec;
  if (hardwareButtonActivationThresholdInSec >= 0.0)
  {
    v6 = hardwareButtonActivationThresholdInSec;
  }

  else
  {
    v6 = -hardwareButtonActivationThresholdInSec;
  }

  *v2.i64 = floor(v6 + 0.5);
  v7 = (v6 - *v2.i64) * 1.84467441e19;
  *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
  v8.f64[0] = NAN;
  v8.f64[1] = NAN;
  v9 = 2654435761u * *vbslq_s8(vnegq_f64(v8), v3, v2).i64;
  if (v7 >= 0.0)
  {
    if (v7 > 0.0)
    {
      v9 += v7;
    }
  }

  else
  {
    v9 -= fabs(v7);
  }

  return v9 ^ v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_9;
  }

  has = self->_has;
  v6 = equalCopy[16];
  if ((*&has & 1) != (v6 & 1))
  {
    goto LABEL_9;
  }

  if (*&has)
  {
    hardwareButtonLongPressBehavior = self->_hardwareButtonLongPressBehavior;
    if (hardwareButtonLongPressBehavior != [equalCopy hardwareButtonLongPressBehavior])
    {
      goto LABEL_9;
    }

    has = self->_has;
    v6 = equalCopy[16];
  }

  v8 = (*&has >> 1) & 1;
  if (v8 == ((v6 >> 1) & 1))
  {
    if (!v8 || (hardwareButtonActivationThresholdInSec = self->_hardwareButtonActivationThresholdInSec, [equalCopy hardwareButtonActivationThresholdInSec], hardwareButtonActivationThresholdInSec == v10))
    {
      v11 = 1;
      goto LABEL_10;
    }
  }

LABEL_9:
  v11 = 0;
LABEL_10:

  return v11;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  has = self->_has;
  v6 = toCopy;
  if (has)
  {
    PBDataWriterWriteInt32Field();
    toCopy = v6;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    PBDataWriterWriteFloatField();
    toCopy = v6;
  }
}

- (void)setHasHardwareButtonActivationThresholdInSec:(BOOL)sec
{
  if (sec)
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