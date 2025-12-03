@interface ODDSiriSchemaODDDeviceCohort
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (ODDSiriSchemaODDDeviceCohort)initWithDictionary:(id)dictionary;
- (ODDSiriSchemaODDDeviceCohort)initWithJSON:(id)n;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasCohortDataAvailabilityState:(BOOL)state;
- (void)writeTo:(id)to;
@end

@implementation ODDSiriSchemaODDDeviceCohort

- (ODDSiriSchemaODDDeviceCohort)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v12.receiver = self;
  v12.super_class = ODDSiriSchemaODDDeviceCohort;
  v5 = [(ODDSiriSchemaODDDeviceCohort *)&v12 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"cohortInterval"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[ODDSiriSchemaODDTimeInterval alloc] initWithDictionary:v6];
      [(ODDSiriSchemaODDDeviceCohort *)v5 setCohortInterval:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"cohortType"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ODDSiriSchemaODDDeviceCohort setCohortType:](v5, "setCohortType:", [v8 intValue]);
    }

    v9 = [dictionaryCopy objectForKeyedSubscript:@"cohortDataAvailabilityState"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ODDSiriSchemaODDDeviceCohort setCohortDataAvailabilityState:](v5, "setCohortDataAvailabilityState:", [v9 intValue]);
    }

    v10 = v5;
  }

  return v5;
}

- (ODDSiriSchemaODDDeviceCohort)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(ODDSiriSchemaODDDeviceCohort *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(ODDSiriSchemaODDDeviceCohort *)self dictionaryRepresentation];
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
  if ((*&self->_has & 2) != 0)
  {
    cohortDataAvailabilityState = [(ODDSiriSchemaODDDeviceCohort *)self cohortDataAvailabilityState];
    v5 = @"ODDDATAAVAILABILITYSTATE_UNKNOWN";
    if (cohortDataAvailabilityState == 1)
    {
      v5 = @"ODDDATAAVAILABILITYSTATE_COMPLETE";
    }

    if (cohortDataAvailabilityState == 2)
    {
      v6 = @"ODDDATAAVAILABILITYSTATE_INSUFFICIENT_DATA";
    }

    else
    {
      v6 = v5;
    }

    [dictionary setObject:v6 forKeyedSubscript:@"cohortDataAvailabilityState"];
  }

  if (self->_cohortInterval)
  {
    cohortInterval = [(ODDSiriSchemaODDDeviceCohort *)self cohortInterval];
    dictionaryRepresentation = [cohortInterval dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"cohortInterval"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"cohortInterval"];
    }
  }

  if (*&self->_has)
  {
    cohortType = [(ODDSiriSchemaODDDeviceCohort *)self cohortType];
    v11 = @"ODDDEVICECOHORTTYPE_UNKNOWN";
    if (cohortType == 1)
    {
      v11 = @"ODDDEVICECOHORTTYPE_NONE";
    }

    if (cohortType == 2)
    {
      v12 = @"ODDDEVICECOHORTTYPE_SIRI_HELP";
    }

    else
    {
      v12 = v11;
    }

    [dictionary setObject:v12 forKeyedSubscript:@"cohortType"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(ODDSiriSchemaODDTimeInterval *)self->_cohortInterval hash];
  if (*&self->_has)
  {
    v4 = 2654435761 * self->_cohortType;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_5:
    v5 = 0;
    return v4 ^ v3 ^ v5;
  }

  v4 = 0;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v5 = 2654435761 * self->_cohortDataAvailabilityState;
  return v4 ^ v3 ^ v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_16;
  }

  cohortInterval = [(ODDSiriSchemaODDDeviceCohort *)self cohortInterval];
  cohortInterval2 = [equalCopy cohortInterval];
  v7 = cohortInterval2;
  if ((cohortInterval != 0) == (cohortInterval2 == 0))
  {

    goto LABEL_16;
  }

  cohortInterval3 = [(ODDSiriSchemaODDDeviceCohort *)self cohortInterval];
  if (cohortInterval3)
  {
    v9 = cohortInterval3;
    cohortInterval4 = [(ODDSiriSchemaODDDeviceCohort *)self cohortInterval];
    cohortInterval5 = [equalCopy cohortInterval];
    v12 = [cohortInterval4 isEqual:cohortInterval5];

    if (!v12)
    {
      goto LABEL_16;
    }
  }

  else
  {
  }

  has = self->_has;
  v14 = equalCopy[24];
  if ((*&has & 1) != (v14 & 1))
  {
LABEL_16:
    v18 = 0;
    goto LABEL_17;
  }

  if (*&has)
  {
    cohortType = self->_cohortType;
    if (cohortType == [equalCopy cohortType])
    {
      has = self->_has;
      v14 = equalCopy[24];
      goto LABEL_12;
    }

    goto LABEL_16;
  }

LABEL_12:
  v16 = (*&has >> 1) & 1;
  if (v16 != ((v14 >> 1) & 1))
  {
    goto LABEL_16;
  }

  if (v16)
  {
    cohortDataAvailabilityState = self->_cohortDataAvailabilityState;
    if (cohortDataAvailabilityState != [equalCopy cohortDataAvailabilityState])
    {
      goto LABEL_16;
    }
  }

  v18 = 1;
LABEL_17:

  return v18;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  cohortInterval = [(ODDSiriSchemaODDDeviceCohort *)self cohortInterval];

  if (cohortInterval)
  {
    cohortInterval2 = [(ODDSiriSchemaODDDeviceCohort *)self cohortInterval];
    PBDataWriterWriteSubmessage();
  }

  has = self->_has;
  if (has)
  {
    PBDataWriterWriteInt32Field();
    has = self->_has;
  }

  v7 = toCopy;
  if ((has & 2) != 0)
  {
    PBDataWriterWriteInt32Field();
    v7 = toCopy;
  }
}

- (void)setHasCohortDataAvailabilityState:(BOOL)state
{
  if (state)
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
  v9.super_class = ODDSiriSchemaODDDeviceCohort;
  policyCopy = policy;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:policyCopy];
  v6 = [(ODDSiriSchemaODDDeviceCohort *)self cohortInterval:v9.receiver];
  v7 = [v6 applySensitiveConditionsPolicy:policyCopy];

  LODWORD(policyCopy) = [v7 suppressMessage];
  if (policyCopy)
  {
    [(ODDSiriSchemaODDDeviceCohort *)self deleteCohortInterval];
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