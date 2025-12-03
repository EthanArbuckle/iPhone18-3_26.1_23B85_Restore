@interface ODDSiriSchemaODDIntelligenceFeatureAvailabilityStatusChangesReported
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (ODDSiriSchemaODDIntelligenceFeatureAvailabilityStatusChangesReported)initWithDictionary:(id)dictionary;
- (ODDSiriSchemaODDIntelligenceFeatureAvailabilityStatusChangesReported)initWithJSON:(id)n;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)to;
@end

@implementation ODDSiriSchemaODDIntelligenceFeatureAvailabilityStatusChangesReported

- (ODDSiriSchemaODDIntelligenceFeatureAvailabilityStatusChangesReported)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v13.receiver = self;
  v13.super_class = ODDSiriSchemaODDIntelligenceFeatureAvailabilityStatusChangesReported;
  v5 = [(ODDSiriSchemaODDIntelligenceFeatureAvailabilityStatusChangesReported *)&v13 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"fixedDimensions"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[ODDSiriSchemaODDFixedDimensions alloc] initWithDictionary:v6];
      [(ODDSiriSchemaODDIntelligenceFeatureAvailabilityStatusChangesReported *)v5 setFixedDimensions:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"eventType"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ODDSiriSchemaODDIntelligenceFeatureAvailabilityStatusChangesReported setEventType:](v5, "setEventType:", [v8 intValue]);
    }

    v9 = [dictionaryCopy objectForKeyedSubscript:@"availabilityStatus"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = [[ODDSiriSchemaODDIntelligenceFeatureReportingAvailabilityStatus alloc] initWithDictionary:v9];
      [(ODDSiriSchemaODDIntelligenceFeatureAvailabilityStatusChangesReported *)v5 setAvailabilityStatus:v10];
    }

    v11 = v5;
  }

  return v5;
}

- (ODDSiriSchemaODDIntelligenceFeatureAvailabilityStatusChangesReported)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(ODDSiriSchemaODDIntelligenceFeatureAvailabilityStatusChangesReported *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(ODDSiriSchemaODDIntelligenceFeatureAvailabilityStatusChangesReported *)self dictionaryRepresentation];
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
  if (self->_availabilityStatus)
  {
    availabilityStatus = [(ODDSiriSchemaODDIntelligenceFeatureAvailabilityStatusChangesReported *)self availabilityStatus];
    dictionaryRepresentation = [availabilityStatus dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"availabilityStatus"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"availabilityStatus"];
    }
  }

  if (*&self->_has)
  {
    eventType = [(ODDSiriSchemaODDIntelligenceFeatureAvailabilityStatusChangesReported *)self eventType];
    v8 = @"ODDINTELLIGENCEFEATUREREPORTINGEVENTTYPE_UNKNOWN";
    if (eventType == 1)
    {
      v8 = @"ODDINTELLIGENCEFEATUREREPORTINGEVENTTYPE_AVAILABILITY_CHANGE";
    }

    if (eventType == 2)
    {
      v9 = @"ODDINTELLIGENCEFEATUREREPORTINGEVENTTYPE_DETAILED_STATUS";
    }

    else
    {
      v9 = v8;
    }

    [dictionary setObject:v9 forKeyedSubscript:@"eventType"];
  }

  if (self->_fixedDimensions)
  {
    fixedDimensions = [(ODDSiriSchemaODDIntelligenceFeatureAvailabilityStatusChangesReported *)self fixedDimensions];
    dictionaryRepresentation2 = [fixedDimensions dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"fixedDimensions"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"fixedDimensions"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(ODDSiriSchemaODDFixedDimensions *)self->_fixedDimensions hash];
  if (*&self->_has)
  {
    v4 = 2654435761 * self->_eventType;
  }

  else
  {
    v4 = 0;
  }

  return v4 ^ v3 ^ [(ODDSiriSchemaODDIntelligenceFeatureReportingAvailabilityStatus *)self->_availabilityStatus hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_15;
  }

  fixedDimensions = [(ODDSiriSchemaODDIntelligenceFeatureAvailabilityStatusChangesReported *)self fixedDimensions];
  fixedDimensions2 = [equalCopy fixedDimensions];
  if ((fixedDimensions != 0) == (fixedDimensions2 == 0))
  {
    goto LABEL_14;
  }

  fixedDimensions3 = [(ODDSiriSchemaODDIntelligenceFeatureAvailabilityStatusChangesReported *)self fixedDimensions];
  if (fixedDimensions3)
  {
    v8 = fixedDimensions3;
    fixedDimensions4 = [(ODDSiriSchemaODDIntelligenceFeatureAvailabilityStatusChangesReported *)self fixedDimensions];
    fixedDimensions5 = [equalCopy fixedDimensions];
    v11 = [fixedDimensions4 isEqual:fixedDimensions5];

    if (!v11)
    {
      goto LABEL_15;
    }
  }

  else
  {
  }

  if ((*&self->_has & 1) != (equalCopy[32] & 1))
  {
    goto LABEL_15;
  }

  if (*&self->_has)
  {
    eventType = self->_eventType;
    if (eventType != [equalCopy eventType])
    {
      goto LABEL_15;
    }
  }

  fixedDimensions = [(ODDSiriSchemaODDIntelligenceFeatureAvailabilityStatusChangesReported *)self availabilityStatus];
  fixedDimensions2 = [equalCopy availabilityStatus];
  if ((fixedDimensions != 0) != (fixedDimensions2 == 0))
  {
    availabilityStatus = [(ODDSiriSchemaODDIntelligenceFeatureAvailabilityStatusChangesReported *)self availabilityStatus];
    if (!availabilityStatus)
    {

LABEL_18:
      v18 = 1;
      goto LABEL_16;
    }

    v14 = availabilityStatus;
    availabilityStatus2 = [(ODDSiriSchemaODDIntelligenceFeatureAvailabilityStatusChangesReported *)self availabilityStatus];
    availabilityStatus3 = [equalCopy availabilityStatus];
    v17 = [availabilityStatus2 isEqual:availabilityStatus3];

    if (v17)
    {
      goto LABEL_18;
    }
  }

  else
  {
LABEL_14:
  }

LABEL_15:
  v18 = 0;
LABEL_16:

  return v18;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  fixedDimensions = [(ODDSiriSchemaODDIntelligenceFeatureAvailabilityStatusChangesReported *)self fixedDimensions];

  if (fixedDimensions)
  {
    fixedDimensions2 = [(ODDSiriSchemaODDIntelligenceFeatureAvailabilityStatusChangesReported *)self fixedDimensions];
    PBDataWriterWriteSubmessage();
  }

  if (*&self->_has)
  {
    PBDataWriterWriteInt32Field();
  }

  availabilityStatus = [(ODDSiriSchemaODDIntelligenceFeatureAvailabilityStatusChangesReported *)self availabilityStatus];

  v7 = toCopy;
  if (availabilityStatus)
  {
    availabilityStatus2 = [(ODDSiriSchemaODDIntelligenceFeatureAvailabilityStatusChangesReported *)self availabilityStatus];
    PBDataWriterWriteSubmessage();

    v7 = toCopy;
  }
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v13.receiver = self;
  v13.super_class = ODDSiriSchemaODDIntelligenceFeatureAvailabilityStatusChangesReported;
  v5 = [(SISchemaInstrumentationMessage *)&v13 applySensitiveConditionsPolicy:policyCopy];
  fixedDimensions = [(ODDSiriSchemaODDIntelligenceFeatureAvailabilityStatusChangesReported *)self fixedDimensions];
  v7 = [fixedDimensions applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(ODDSiriSchemaODDIntelligenceFeatureAvailabilityStatusChangesReported *)self deleteFixedDimensions];
  }

  availabilityStatus = [(ODDSiriSchemaODDIntelligenceFeatureAvailabilityStatusChangesReported *)self availabilityStatus];
  v10 = [availabilityStatus applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v10 suppressMessage];

  if (suppressMessage2)
  {
    [(ODDSiriSchemaODDIntelligenceFeatureAvailabilityStatusChangesReported *)self deleteAvailabilityStatus];
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