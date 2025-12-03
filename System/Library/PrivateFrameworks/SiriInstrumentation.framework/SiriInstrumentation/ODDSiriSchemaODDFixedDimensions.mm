@interface ODDSiriSchemaODDFixedDimensions
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (ODDSiriSchemaODDFixedDimensions)initWithDictionary:(id)dictionary;
- (ODDSiriSchemaODDFixedDimensions)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)to;
@end

@implementation ODDSiriSchemaODDFixedDimensions

- (ODDSiriSchemaODDFixedDimensions)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v11.receiver = self;
  v11.super_class = ODDSiriSchemaODDFixedDimensions;
  v5 = [(ODDSiriSchemaODDFixedDimensions *)&v11 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"deviceType"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(ODDSiriSchemaODDFixedDimensions *)v5 setDeviceType:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"programCode"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ODDSiriSchemaODDFixedDimensions setProgramCode:](v5, "setProgramCode:", [v8 intValue]);
    }

    v9 = v5;
  }

  return v5;
}

- (ODDSiriSchemaODDFixedDimensions)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(ODDSiriSchemaODDFixedDimensions *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(ODDSiriSchemaODDFixedDimensions *)self dictionaryRepresentation];
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
  if (self->_deviceType)
  {
    deviceType = [(ODDSiriSchemaODDFixedDimensions *)self deviceType];
    v5 = [deviceType copy];
    [dictionary setObject:v5 forKeyedSubscript:@"deviceType"];
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

    [dictionary setObject:v7 forKeyedSubscript:@"programCode"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  deviceType = [(ODDSiriSchemaODDFixedDimensions *)self deviceType];
  deviceType2 = [equalCopy deviceType];
  v7 = deviceType2;
  if ((deviceType != 0) == (deviceType2 == 0))
  {

LABEL_12:
    v14 = 0;
    goto LABEL_13;
  }

  deviceType3 = [(ODDSiriSchemaODDFixedDimensions *)self deviceType];
  if (deviceType3)
  {
    v9 = deviceType3;
    deviceType4 = [(ODDSiriSchemaODDFixedDimensions *)self deviceType];
    deviceType5 = [equalCopy deviceType];
    v12 = [deviceType4 isEqual:deviceType5];

    if (!v12)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  if ((*&self->_has & 1) != (equalCopy[20] & 1))
  {
    goto LABEL_12;
  }

  if (*&self->_has)
  {
    programCode = self->_programCode;
    if (programCode != [equalCopy programCode])
    {
      goto LABEL_12;
    }
  }

  v14 = 1;
LABEL_13:

  return v14;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  deviceType = [(ODDSiriSchemaODDFixedDimensions *)self deviceType];

  if (deviceType)
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