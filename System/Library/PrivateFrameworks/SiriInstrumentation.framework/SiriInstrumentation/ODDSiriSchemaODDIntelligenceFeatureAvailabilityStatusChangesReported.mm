@interface ODDSiriSchemaODDIntelligenceFeatureAvailabilityStatusChangesReported
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (ODDSiriSchemaODDIntelligenceFeatureAvailabilityStatusChangesReported)initWithDictionary:(id)a3;
- (ODDSiriSchemaODDIntelligenceFeatureAvailabilityStatusChangesReported)initWithJSON:(id)a3;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)a3;
@end

@implementation ODDSiriSchemaODDIntelligenceFeatureAvailabilityStatusChangesReported

- (ODDSiriSchemaODDIntelligenceFeatureAvailabilityStatusChangesReported)initWithDictionary:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = ODDSiriSchemaODDIntelligenceFeatureAvailabilityStatusChangesReported;
  v5 = [(ODDSiriSchemaODDIntelligenceFeatureAvailabilityStatusChangesReported *)&v13 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"fixedDimensions"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[ODDSiriSchemaODDFixedDimensions alloc] initWithDictionary:v6];
      [(ODDSiriSchemaODDIntelligenceFeatureAvailabilityStatusChangesReported *)v5 setFixedDimensions:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"eventType"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ODDSiriSchemaODDIntelligenceFeatureAvailabilityStatusChangesReported setEventType:](v5, "setEventType:", [v8 intValue]);
    }

    v9 = [v4 objectForKeyedSubscript:@"availabilityStatus"];
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

- (ODDSiriSchemaODDIntelligenceFeatureAvailabilityStatusChangesReported)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(ODDSiriSchemaODDIntelligenceFeatureAvailabilityStatusChangesReported *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(ODDSiriSchemaODDIntelligenceFeatureAvailabilityStatusChangesReported *)self dictionaryRepresentation];
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
  if (self->_availabilityStatus)
  {
    v4 = [(ODDSiriSchemaODDIntelligenceFeatureAvailabilityStatusChangesReported *)self availabilityStatus];
    v5 = [v4 dictionaryRepresentation];
    if (v5)
    {
      [v3 setObject:v5 forKeyedSubscript:@"availabilityStatus"];
    }

    else
    {
      v6 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v6 forKeyedSubscript:@"availabilityStatus"];
    }
  }

  if (*&self->_has)
  {
    v7 = [(ODDSiriSchemaODDIntelligenceFeatureAvailabilityStatusChangesReported *)self eventType];
    v8 = @"ODDINTELLIGENCEFEATUREREPORTINGEVENTTYPE_UNKNOWN";
    if (v7 == 1)
    {
      v8 = @"ODDINTELLIGENCEFEATUREREPORTINGEVENTTYPE_AVAILABILITY_CHANGE";
    }

    if (v7 == 2)
    {
      v9 = @"ODDINTELLIGENCEFEATUREREPORTINGEVENTTYPE_DETAILED_STATUS";
    }

    else
    {
      v9 = v8;
    }

    [v3 setObject:v9 forKeyedSubscript:@"eventType"];
  }

  if (self->_fixedDimensions)
  {
    v10 = [(ODDSiriSchemaODDIntelligenceFeatureAvailabilityStatusChangesReported *)self fixedDimensions];
    v11 = [v10 dictionaryRepresentation];
    if (v11)
    {
      [v3 setObject:v11 forKeyedSubscript:@"fixedDimensions"];
    }

    else
    {
      v12 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v12 forKeyedSubscript:@"fixedDimensions"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_15;
  }

  v5 = [(ODDSiriSchemaODDIntelligenceFeatureAvailabilityStatusChangesReported *)self fixedDimensions];
  v6 = [v4 fixedDimensions];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_14;
  }

  v7 = [(ODDSiriSchemaODDIntelligenceFeatureAvailabilityStatusChangesReported *)self fixedDimensions];
  if (v7)
  {
    v8 = v7;
    v9 = [(ODDSiriSchemaODDIntelligenceFeatureAvailabilityStatusChangesReported *)self fixedDimensions];
    v10 = [v4 fixedDimensions];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_15;
    }
  }

  else
  {
  }

  if ((*&self->_has & 1) != (v4[32] & 1))
  {
    goto LABEL_15;
  }

  if (*&self->_has)
  {
    eventType = self->_eventType;
    if (eventType != [v4 eventType])
    {
      goto LABEL_15;
    }
  }

  v5 = [(ODDSiriSchemaODDIntelligenceFeatureAvailabilityStatusChangesReported *)self availabilityStatus];
  v6 = [v4 availabilityStatus];
  if ((v5 != 0) != (v6 == 0))
  {
    v13 = [(ODDSiriSchemaODDIntelligenceFeatureAvailabilityStatusChangesReported *)self availabilityStatus];
    if (!v13)
    {

LABEL_18:
      v18 = 1;
      goto LABEL_16;
    }

    v14 = v13;
    v15 = [(ODDSiriSchemaODDIntelligenceFeatureAvailabilityStatusChangesReported *)self availabilityStatus];
    v16 = [v4 availabilityStatus];
    v17 = [v15 isEqual:v16];

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

- (void)writeTo:(id)a3
{
  v9 = a3;
  v4 = [(ODDSiriSchemaODDIntelligenceFeatureAvailabilityStatusChangesReported *)self fixedDimensions];

  if (v4)
  {
    v5 = [(ODDSiriSchemaODDIntelligenceFeatureAvailabilityStatusChangesReported *)self fixedDimensions];
    PBDataWriterWriteSubmessage();
  }

  if (*&self->_has)
  {
    PBDataWriterWriteInt32Field();
  }

  v6 = [(ODDSiriSchemaODDIntelligenceFeatureAvailabilityStatusChangesReported *)self availabilityStatus];

  v7 = v9;
  if (v6)
  {
    v8 = [(ODDSiriSchemaODDIntelligenceFeatureAvailabilityStatusChangesReported *)self availabilityStatus];
    PBDataWriterWriteSubmessage();

    v7 = v9;
  }
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = ODDSiriSchemaODDIntelligenceFeatureAvailabilityStatusChangesReported;
  v5 = [(SISchemaInstrumentationMessage *)&v13 applySensitiveConditionsPolicy:v4];
  v6 = [(ODDSiriSchemaODDIntelligenceFeatureAvailabilityStatusChangesReported *)self fixedDimensions];
  v7 = [v6 applySensitiveConditionsPolicy:v4];
  v8 = [v7 suppressMessage];

  if (v8)
  {
    [(ODDSiriSchemaODDIntelligenceFeatureAvailabilityStatusChangesReported *)self deleteFixedDimensions];
  }

  v9 = [(ODDSiriSchemaODDIntelligenceFeatureAvailabilityStatusChangesReported *)self availabilityStatus];
  v10 = [v9 applySensitiveConditionsPolicy:v4];
  v11 = [v10 suppressMessage];

  if (v11)
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