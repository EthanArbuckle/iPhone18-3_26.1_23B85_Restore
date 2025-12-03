@interface ODDSiriSchemaODDBluetoothCarDimensions
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (ODDSiriSchemaODDBluetoothCarDimensions)initWithDictionary:(id)dictionary;
- (ODDSiriSchemaODDBluetoothCarDimensions)initWithJSON:(id)n;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (void)writeTo:(id)to;
@end

@implementation ODDSiriSchemaODDBluetoothCarDimensions

- (ODDSiriSchemaODDBluetoothCarDimensions)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v12.receiver = self;
  v12.super_class = ODDSiriSchemaODDBluetoothCarDimensions;
  v5 = [(ODDSiriSchemaODDBluetoothCarDimensions *)&v12 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"assistantDimensions"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[ODDSiriSchemaODDAssistantDimensions alloc] initWithDictionary:v6];
      [(ODDSiriSchemaODDBluetoothCarDimensions *)v5 setAssistantDimensions:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"vehicleManufacturer"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [v8 copy];
      [(ODDSiriSchemaODDBluetoothCarDimensions *)v5 setVehicleManufacturer:v9];
    }

    v10 = v5;
  }

  return v5;
}

- (ODDSiriSchemaODDBluetoothCarDimensions)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(ODDSiriSchemaODDBluetoothCarDimensions *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(ODDSiriSchemaODDBluetoothCarDimensions *)self dictionaryRepresentation];
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
  if (self->_assistantDimensions)
  {
    assistantDimensions = [(ODDSiriSchemaODDBluetoothCarDimensions *)self assistantDimensions];
    dictionaryRepresentation = [assistantDimensions dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"assistantDimensions"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"assistantDimensions"];
    }
  }

  if (self->_vehicleManufacturer)
  {
    vehicleManufacturer = [(ODDSiriSchemaODDBluetoothCarDimensions *)self vehicleManufacturer];
    v8 = [vehicleManufacturer copy];
    [dictionary setObject:v8 forKeyedSubscript:@"vehicleManufacturer"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  assistantDimensions = [(ODDSiriSchemaODDBluetoothCarDimensions *)self assistantDimensions];
  assistantDimensions2 = [equalCopy assistantDimensions];
  if ((assistantDimensions != 0) == (assistantDimensions2 == 0))
  {
    goto LABEL_11;
  }

  assistantDimensions3 = [(ODDSiriSchemaODDBluetoothCarDimensions *)self assistantDimensions];
  if (assistantDimensions3)
  {
    v8 = assistantDimensions3;
    assistantDimensions4 = [(ODDSiriSchemaODDBluetoothCarDimensions *)self assistantDimensions];
    assistantDimensions5 = [equalCopy assistantDimensions];
    v11 = [assistantDimensions4 isEqual:assistantDimensions5];

    if (!v11)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  assistantDimensions = [(ODDSiriSchemaODDBluetoothCarDimensions *)self vehicleManufacturer];
  assistantDimensions2 = [equalCopy vehicleManufacturer];
  if ((assistantDimensions != 0) != (assistantDimensions2 == 0))
  {
    vehicleManufacturer = [(ODDSiriSchemaODDBluetoothCarDimensions *)self vehicleManufacturer];
    if (!vehicleManufacturer)
    {

LABEL_15:
      v17 = 1;
      goto LABEL_13;
    }

    v13 = vehicleManufacturer;
    vehicleManufacturer2 = [(ODDSiriSchemaODDBluetoothCarDimensions *)self vehicleManufacturer];
    vehicleManufacturer3 = [equalCopy vehicleManufacturer];
    v16 = [vehicleManufacturer2 isEqual:vehicleManufacturer3];

    if (v16)
    {
      goto LABEL_15;
    }
  }

  else
  {
LABEL_11:
  }

LABEL_12:
  v17 = 0;
LABEL_13:

  return v17;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  assistantDimensions = [(ODDSiriSchemaODDBluetoothCarDimensions *)self assistantDimensions];

  if (assistantDimensions)
  {
    assistantDimensions2 = [(ODDSiriSchemaODDBluetoothCarDimensions *)self assistantDimensions];
    PBDataWriterWriteSubmessage();
  }

  vehicleManufacturer = [(ODDSiriSchemaODDBluetoothCarDimensions *)self vehicleManufacturer];

  if (vehicleManufacturer)
  {
    PBDataWriterWriteStringField();
  }
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  v9.receiver = self;
  v9.super_class = ODDSiriSchemaODDBluetoothCarDimensions;
  policyCopy = policy;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:policyCopy];
  v6 = [(ODDSiriSchemaODDBluetoothCarDimensions *)self assistantDimensions:v9.receiver];
  v7 = [v6 applySensitiveConditionsPolicy:policyCopy];

  LODWORD(policyCopy) = [v7 suppressMessage];
  if (policyCopy)
  {
    [(ODDSiriSchemaODDBluetoothCarDimensions *)self deleteAssistantDimensions];
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