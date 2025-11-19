@interface ODDSiriSchemaODDDeviceCohort
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (ODDSiriSchemaODDDeviceCohort)initWithDictionary:(id)a3;
- (ODDSiriSchemaODDDeviceCohort)initWithJSON:(id)a3;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasCohortDataAvailabilityState:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation ODDSiriSchemaODDDeviceCohort

- (ODDSiriSchemaODDDeviceCohort)initWithDictionary:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = ODDSiriSchemaODDDeviceCohort;
  v5 = [(ODDSiriSchemaODDDeviceCohort *)&v12 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"cohortInterval"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[ODDSiriSchemaODDTimeInterval alloc] initWithDictionary:v6];
      [(ODDSiriSchemaODDDeviceCohort *)v5 setCohortInterval:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"cohortType"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ODDSiriSchemaODDDeviceCohort setCohortType:](v5, "setCohortType:", [v8 intValue]);
    }

    v9 = [v4 objectForKeyedSubscript:@"cohortDataAvailabilityState"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ODDSiriSchemaODDDeviceCohort setCohortDataAvailabilityState:](v5, "setCohortDataAvailabilityState:", [v9 intValue]);
    }

    v10 = v5;
  }

  return v5;
}

- (ODDSiriSchemaODDDeviceCohort)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(ODDSiriSchemaODDDeviceCohort *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(ODDSiriSchemaODDDeviceCohort *)self dictionaryRepresentation];
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
  if ((*&self->_has & 2) != 0)
  {
    v4 = [(ODDSiriSchemaODDDeviceCohort *)self cohortDataAvailabilityState];
    v5 = @"ODDDATAAVAILABILITYSTATE_UNKNOWN";
    if (v4 == 1)
    {
      v5 = @"ODDDATAAVAILABILITYSTATE_COMPLETE";
    }

    if (v4 == 2)
    {
      v6 = @"ODDDATAAVAILABILITYSTATE_INSUFFICIENT_DATA";
    }

    else
    {
      v6 = v5;
    }

    [v3 setObject:v6 forKeyedSubscript:@"cohortDataAvailabilityState"];
  }

  if (self->_cohortInterval)
  {
    v7 = [(ODDSiriSchemaODDDeviceCohort *)self cohortInterval];
    v8 = [v7 dictionaryRepresentation];
    if (v8)
    {
      [v3 setObject:v8 forKeyedSubscript:@"cohortInterval"];
    }

    else
    {
      v9 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v9 forKeyedSubscript:@"cohortInterval"];
    }
  }

  if (*&self->_has)
  {
    v10 = [(ODDSiriSchemaODDDeviceCohort *)self cohortType];
    v11 = @"ODDDEVICECOHORTTYPE_UNKNOWN";
    if (v10 == 1)
    {
      v11 = @"ODDDEVICECOHORTTYPE_NONE";
    }

    if (v10 == 2)
    {
      v12 = @"ODDDEVICECOHORTTYPE_SIRI_HELP";
    }

    else
    {
      v12 = v11;
    }

    [v3 setObject:v12 forKeyedSubscript:@"cohortType"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_16;
  }

  v5 = [(ODDSiriSchemaODDDeviceCohort *)self cohortInterval];
  v6 = [v4 cohortInterval];
  v7 = v6;
  if ((v5 != 0) == (v6 == 0))
  {

    goto LABEL_16;
  }

  v8 = [(ODDSiriSchemaODDDeviceCohort *)self cohortInterval];
  if (v8)
  {
    v9 = v8;
    v10 = [(ODDSiriSchemaODDDeviceCohort *)self cohortInterval];
    v11 = [v4 cohortInterval];
    v12 = [v10 isEqual:v11];

    if (!v12)
    {
      goto LABEL_16;
    }
  }

  else
  {
  }

  has = self->_has;
  v14 = v4[24];
  if ((*&has & 1) != (v14 & 1))
  {
LABEL_16:
    v18 = 0;
    goto LABEL_17;
  }

  if (*&has)
  {
    cohortType = self->_cohortType;
    if (cohortType == [v4 cohortType])
    {
      has = self->_has;
      v14 = v4[24];
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
    if (cohortDataAvailabilityState != [v4 cohortDataAvailabilityState])
    {
      goto LABEL_16;
    }
  }

  v18 = 1;
LABEL_17:

  return v18;
}

- (void)writeTo:(id)a3
{
  v8 = a3;
  v4 = [(ODDSiriSchemaODDDeviceCohort *)self cohortInterval];

  if (v4)
  {
    v5 = [(ODDSiriSchemaODDDeviceCohort *)self cohortInterval];
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
    PBDataWriterWriteInt32Field();
    v7 = v8;
  }
}

- (void)setHasCohortDataAvailabilityState:(BOOL)a3
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
  v9.super_class = ODDSiriSchemaODDDeviceCohort;
  v4 = a3;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:v4];
  v6 = [(ODDSiriSchemaODDDeviceCohort *)self cohortInterval:v9.receiver];
  v7 = [v6 applySensitiveConditionsPolicy:v4];

  LODWORD(v4) = [v7 suppressMessage];
  if (v4)
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