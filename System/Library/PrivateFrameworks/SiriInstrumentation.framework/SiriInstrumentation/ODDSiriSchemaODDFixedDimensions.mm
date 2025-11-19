@interface ODDSiriSchemaODDFixedDimensions
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (ODDSiriSchemaODDFixedDimensions)initWithDictionary:(id)a3;
- (ODDSiriSchemaODDFixedDimensions)initWithJSON:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)a3;
@end

@implementation ODDSiriSchemaODDFixedDimensions

- (ODDSiriSchemaODDFixedDimensions)initWithDictionary:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = ODDSiriSchemaODDFixedDimensions;
  v5 = [(ODDSiriSchemaODDFixedDimensions *)&v11 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"deviceType"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(ODDSiriSchemaODDFixedDimensions *)v5 setDeviceType:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"programCode"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ODDSiriSchemaODDFixedDimensions setProgramCode:](v5, "setProgramCode:", [v8 intValue]);
    }

    v9 = v5;
  }

  return v5;
}

- (ODDSiriSchemaODDFixedDimensions)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(ODDSiriSchemaODDFixedDimensions *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(ODDSiriSchemaODDFixedDimensions *)self dictionaryRepresentation];
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
  if (self->_deviceType)
  {
    v4 = [(ODDSiriSchemaODDFixedDimensions *)self deviceType];
    v5 = [v4 copy];
    [v3 setObject:v5 forKeyedSubscript:@"deviceType"];
  }

  if (*&self->_has)
  {
    v6 = [(ODDSiriSchemaODDFixedDimensions *)self programCode]- 1;
    if (v6 > 4)
    {
      v7 = @"PROGRAMCODE_UNKNOWN";
    }

    else
    {
      v7 = off_1E78DD6E0[v6];
    }

    [v3 setObject:v7 forKeyedSubscript:@"programCode"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_deviceType hash];
  if (*&self->_has)
  {
    v4 = 2654435761 * self->_programCode;
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

  v5 = [(ODDSiriSchemaODDFixedDimensions *)self deviceType];
  v6 = [v4 deviceType];
  v7 = v6;
  if ((v5 != 0) == (v6 == 0))
  {

LABEL_12:
    v14 = 0;
    goto LABEL_13;
  }

  v8 = [(ODDSiriSchemaODDFixedDimensions *)self deviceType];
  if (v8)
  {
    v9 = v8;
    v10 = [(ODDSiriSchemaODDFixedDimensions *)self deviceType];
    v11 = [v4 deviceType];
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
    programCode = self->_programCode;
    if (programCode != [v4 programCode])
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
  v4 = [(ODDSiriSchemaODDFixedDimensions *)self deviceType];

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