@interface USPSchemaUSPMeasurementContext
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (USPSchemaUSPMeasurementContext)initWithDictionary:(id)a3;
- (USPSchemaUSPMeasurementContext)initWithJSON:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)a3;
@end

@implementation USPSchemaUSPMeasurementContext

- (USPSchemaUSPMeasurementContext)initWithDictionary:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = USPSchemaUSPMeasurementContext;
  v5 = [(USPSchemaUSPMeasurementContext *)&v11 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"contextName"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(USPSchemaUSPMeasurementContext *)v5 setContextName:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"environment"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[USPSchemaUSPMeasurementContext setEnvironment:](v5, "setEnvironment:", [v8 intValue]);
    }

    v9 = v5;
  }

  return v5;
}

- (USPSchemaUSPMeasurementContext)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(USPSchemaUSPMeasurementContext *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(USPSchemaUSPMeasurementContext *)self dictionaryRepresentation];
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
  if (self->_contextName)
  {
    v4 = [(USPSchemaUSPMeasurementContext *)self contextName];
    v5 = [v4 copy];
    [v3 setObject:v5 forKeyedSubscript:@"contextName"];
  }

  if (*&self->_has)
  {
    v6 = [(USPSchemaUSPMeasurementContext *)self environment];
    v7 = @"USPENVIRONMENT_UNKNOWN";
    if (v6 == 1)
    {
      v7 = @"USPENVIRONMENT_LOCAL";
    }

    if (v6 == 2)
    {
      v8 = @"USPENVIRONMENT_CONTINUOS_INTEGRATION";
    }

    else
    {
      v8 = v7;
    }

    [v3 setObject:v8 forKeyedSubscript:@"environment"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_contextName hash];
  if (*&self->_has)
  {
    v4 = 2654435761 * self->_environment;
  }

  else
  {
    v4 = 0;
  }

  return v4 ^ v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  v5 = [(USPSchemaUSPMeasurementContext *)self contextName];
  v6 = [v4 contextName];
  v7 = v6;
  if ((v5 != 0) == (v6 == 0))
  {

LABEL_12:
    v14 = 0;
    goto LABEL_13;
  }

  v8 = [(USPSchemaUSPMeasurementContext *)self contextName];
  if (v8)
  {
    v9 = v8;
    v10 = [(USPSchemaUSPMeasurementContext *)self contextName];
    v11 = [v4 contextName];
    v12 = [v10 isEqual:v11];

    if (!v12)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  if ((*&self->_has & 1) != (v4[20] & 1))
  {
    goto LABEL_12;
  }

  if (*&self->_has)
  {
    environment = self->_environment;
    if (environment != [v4 environment])
    {
      goto LABEL_12;
    }
  }

  v14 = 1;
LABEL_13:

  return v14;
}

- (void)writeTo:(id)a3
{
  v5 = a3;
  v4 = [(USPSchemaUSPMeasurementContext *)self contextName];

  if (v4)
  {
    PBDataWriterWriteStringField();
  }

  if (*&self->_has)
  {
    PBDataWriterWriteInt32Field();
  }
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end