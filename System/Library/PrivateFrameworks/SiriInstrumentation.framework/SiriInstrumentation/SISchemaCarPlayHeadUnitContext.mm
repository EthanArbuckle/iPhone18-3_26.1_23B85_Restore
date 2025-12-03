@interface SISchemaCarPlayHeadUnitContext
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (SISchemaCarPlayHeadUnitContext)initWithDictionary:(id)dictionary;
- (SISchemaCarPlayHeadUnitContext)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)to;
@end

@implementation SISchemaCarPlayHeadUnitContext

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (self->_vehicleManufacturer)
  {
    vehicleManufacturer = [(SISchemaCarPlayHeadUnitContext *)self vehicleManufacturer];
    v5 = [vehicleManufacturer copy];
    [dictionary setObject:v5 forKeyedSubscript:@"vehicleManufacturer"];
  }

  if (self->_vehicleModel)
  {
    vehicleModel = [(SISchemaCarPlayHeadUnitContext *)self vehicleModel];
    v7 = [vehicleModel copy];
    [dictionary setObject:v7 forKeyedSubscript:@"vehicleModel"];
  }

  if (self->_vehicleName)
  {
    vehicleName = [(SISchemaCarPlayHeadUnitContext *)self vehicleName];
    v9 = [vehicleName copy];
    [dictionary setObject:v9 forKeyedSubscript:@"vehicleName"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (SISchemaCarPlayHeadUnitContext)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v14.receiver = self;
  v14.super_class = SISchemaCarPlayHeadUnitContext;
  v5 = [(SISchemaCarPlayHeadUnitContext *)&v14 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"vehicleName"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(SISchemaCarPlayHeadUnitContext *)v5 setVehicleName:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"vehicleModel"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [v8 copy];
      [(SISchemaCarPlayHeadUnitContext *)v5 setVehicleModel:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"vehicleManufacturer"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [v10 copy];
      [(SISchemaCarPlayHeadUnitContext *)v5 setVehicleManufacturer:v11];
    }

    v12 = v5;
  }

  return v5;
}

- (SISchemaCarPlayHeadUnitContext)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(SISchemaCarPlayHeadUnitContext *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(SISchemaCarPlayHeadUnitContext *)self dictionaryRepresentation];
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

- (unint64_t)hash
{
  v3 = [(NSString *)self->_vehicleName hash];
  v4 = [(NSString *)self->_vehicleModel hash]^ v3;
  return v4 ^ [(NSString *)self->_vehicleManufacturer hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_17;
  }

  vehicleName = [(SISchemaCarPlayHeadUnitContext *)self vehicleName];
  vehicleName2 = [equalCopy vehicleName];
  if ((vehicleName != 0) == (vehicleName2 == 0))
  {
    goto LABEL_16;
  }

  vehicleName3 = [(SISchemaCarPlayHeadUnitContext *)self vehicleName];
  if (vehicleName3)
  {
    v8 = vehicleName3;
    vehicleName4 = [(SISchemaCarPlayHeadUnitContext *)self vehicleName];
    vehicleName5 = [equalCopy vehicleName];
    v11 = [vehicleName4 isEqual:vehicleName5];

    if (!v11)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  vehicleName = [(SISchemaCarPlayHeadUnitContext *)self vehicleModel];
  vehicleName2 = [equalCopy vehicleModel];
  if ((vehicleName != 0) == (vehicleName2 == 0))
  {
    goto LABEL_16;
  }

  vehicleModel = [(SISchemaCarPlayHeadUnitContext *)self vehicleModel];
  if (vehicleModel)
  {
    v13 = vehicleModel;
    vehicleModel2 = [(SISchemaCarPlayHeadUnitContext *)self vehicleModel];
    vehicleModel3 = [equalCopy vehicleModel];
    v16 = [vehicleModel2 isEqual:vehicleModel3];

    if (!v16)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  vehicleName = [(SISchemaCarPlayHeadUnitContext *)self vehicleManufacturer];
  vehicleName2 = [equalCopy vehicleManufacturer];
  if ((vehicleName != 0) != (vehicleName2 == 0))
  {
    vehicleManufacturer = [(SISchemaCarPlayHeadUnitContext *)self vehicleManufacturer];
    if (!vehicleManufacturer)
    {

LABEL_20:
      v22 = 1;
      goto LABEL_18;
    }

    v18 = vehicleManufacturer;
    vehicleManufacturer2 = [(SISchemaCarPlayHeadUnitContext *)self vehicleManufacturer];
    vehicleManufacturer3 = [equalCopy vehicleManufacturer];
    v21 = [vehicleManufacturer2 isEqual:vehicleManufacturer3];

    if (v21)
    {
      goto LABEL_20;
    }
  }

  else
  {
LABEL_16:
  }

LABEL_17:
  v22 = 0;
LABEL_18:

  return v22;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  vehicleName = [(SISchemaCarPlayHeadUnitContext *)self vehicleName];

  if (vehicleName)
  {
    PBDataWriterWriteStringField();
  }

  vehicleModel = [(SISchemaCarPlayHeadUnitContext *)self vehicleModel];

  if (vehicleModel)
  {
    PBDataWriterWriteStringField();
  }

  vehicleManufacturer = [(SISchemaCarPlayHeadUnitContext *)self vehicleManufacturer];

  v7 = toCopy;
  if (vehicleManufacturer)
  {
    PBDataWriterWriteStringField();
    v7 = toCopy;
  }
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end