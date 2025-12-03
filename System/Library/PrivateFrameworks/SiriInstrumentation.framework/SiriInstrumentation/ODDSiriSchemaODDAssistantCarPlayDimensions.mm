@interface ODDSiriSchemaODDAssistantCarPlayDimensions
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (ODDSiriSchemaODDAssistantCarPlayDimensions)initWithDictionary:(id)dictionary;
- (ODDSiriSchemaODDAssistantCarPlayDimensions)initWithJSON:(id)n;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasCarPlayConnection:(BOOL)connection;
- (void)setHasDirectAction:(BOOL)action;
- (void)writeTo:(id)to;
@end

@implementation ODDSiriSchemaODDAssistantCarPlayDimensions

- (ODDSiriSchemaODDAssistantCarPlayDimensions)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v19.receiver = self;
  v19.super_class = ODDSiriSchemaODDAssistantCarPlayDimensions;
  v5 = [(ODDSiriSchemaODDAssistantCarPlayDimensions *)&v19 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"assistantDimensions"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[ODDSiriSchemaODDAssistantDimensions alloc] initWithDictionary:v6];
      [(ODDSiriSchemaODDAssistantCarPlayDimensions *)v5 setAssistantDimensions:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"vehicleManufacturer"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [v8 copy];
      [(ODDSiriSchemaODDAssistantCarPlayDimensions *)v5 setVehicleManufacturer:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"vehicleName"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [v10 copy];
      [(ODDSiriSchemaODDAssistantCarPlayDimensions *)v5 setVehicleName:v11];
    }

    v12 = [dictionaryCopy objectForKeyedSubscript:@"vehicleModel"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [v12 copy];
      [(ODDSiriSchemaODDAssistantCarPlayDimensions *)v5 setVehicleModel:v13];
    }

    v14 = [dictionaryCopy objectForKeyedSubscript:@"enhancedVoiceTriggerMode"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ODDSiriSchemaODDAssistantCarPlayDimensions setEnhancedVoiceTriggerMode:](v5, "setEnhancedVoiceTriggerMode:", [v14 intValue]);
    }

    v15 = [dictionaryCopy objectForKeyedSubscript:@"directAction"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ODDSiriSchemaODDAssistantCarPlayDimensions setDirectAction:](v5, "setDirectAction:", [v15 intValue]);
    }

    v16 = [dictionaryCopy objectForKeyedSubscript:@"carPlayConnection"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ODDSiriSchemaODDAssistantCarPlayDimensions setCarPlayConnection:](v5, "setCarPlayConnection:", [v16 intValue]);
    }

    v17 = v5;
  }

  return v5;
}

- (ODDSiriSchemaODDAssistantCarPlayDimensions)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(ODDSiriSchemaODDAssistantCarPlayDimensions *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(ODDSiriSchemaODDAssistantCarPlayDimensions *)self dictionaryRepresentation];
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
    assistantDimensions = [(ODDSiriSchemaODDAssistantCarPlayDimensions *)self assistantDimensions];
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

  has = self->_has;
  if ((has & 4) != 0)
  {
    v8 = [(ODDSiriSchemaODDAssistantCarPlayDimensions *)self carPlayConnection]- 1;
    if (v8 > 2)
    {
      v9 = @"CARPLAYCONNECTION_UNKNOWN";
    }

    else
    {
      v9 = off_1E78DC968[v8];
    }

    [dictionary setObject:v9 forKeyedSubscript:@"carPlayConnection"];
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_8:
      if ((has & 1) == 0)
      {
        goto LABEL_22;
      }

      goto LABEL_18;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_8;
  }

  v10 = [(ODDSiriSchemaODDAssistantCarPlayDimensions *)self directAction]- 1;
  if (v10 > 9)
  {
    v11 = @"SIRIDIRECTACTION_UNKNOWN_DIRECT_ACTION";
  }

  else
  {
    v11 = off_1E78DC980[v10];
  }

  [dictionary setObject:v11 forKeyedSubscript:@"directAction"];
  if (*&self->_has)
  {
LABEL_18:
    v12 = [(ODDSiriSchemaODDAssistantCarPlayDimensions *)self enhancedVoiceTriggerMode]- 1;
    if (v12 > 3)
    {
      v13 = @"ENHANCEDVOICETRIGGERMODE_UNKNOWN";
    }

    else
    {
      v13 = off_1E78DC9D0[v12];
    }

    [dictionary setObject:v13 forKeyedSubscript:@"enhancedVoiceTriggerMode"];
  }

LABEL_22:
  if (self->_vehicleManufacturer)
  {
    vehicleManufacturer = [(ODDSiriSchemaODDAssistantCarPlayDimensions *)self vehicleManufacturer];
    v15 = [vehicleManufacturer copy];
    [dictionary setObject:v15 forKeyedSubscript:@"vehicleManufacturer"];
  }

  if (self->_vehicleModel)
  {
    vehicleModel = [(ODDSiriSchemaODDAssistantCarPlayDimensions *)self vehicleModel];
    v17 = [vehicleModel copy];
    [dictionary setObject:v17 forKeyedSubscript:@"vehicleModel"];
  }

  if (self->_vehicleName)
  {
    vehicleName = [(ODDSiriSchemaODDAssistantCarPlayDimensions *)self vehicleName];
    v19 = [vehicleName copy];
    [dictionary setObject:v19 forKeyedSubscript:@"vehicleName"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(ODDSiriSchemaODDAssistantDimensions *)self->_assistantDimensions hash];
  v4 = [(NSString *)self->_vehicleManufacturer hash];
  v5 = [(NSString *)self->_vehicleName hash];
  v6 = [(NSString *)self->_vehicleModel hash];
  if ((*&self->_has & 1) == 0)
  {
    v7 = 0;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    v8 = 0;
    if ((*&self->_has & 4) != 0)
    {
      goto LABEL_4;
    }

LABEL_7:
    v9 = 0;
    return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9;
  }

  v7 = 2654435761 * self->_enhancedVoiceTriggerMode;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  v8 = 2654435761 * self->_directAction;
  if ((*&self->_has & 4) == 0)
  {
    goto LABEL_7;
  }

LABEL_4:
  v9 = 2654435761 * self->_carPlayConnection;
  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_22;
  }

  assistantDimensions = [(ODDSiriSchemaODDAssistantCarPlayDimensions *)self assistantDimensions];
  assistantDimensions2 = [equalCopy assistantDimensions];
  if ((assistantDimensions != 0) == (assistantDimensions2 == 0))
  {
    goto LABEL_21;
  }

  assistantDimensions3 = [(ODDSiriSchemaODDAssistantCarPlayDimensions *)self assistantDimensions];
  if (assistantDimensions3)
  {
    v8 = assistantDimensions3;
    assistantDimensions4 = [(ODDSiriSchemaODDAssistantCarPlayDimensions *)self assistantDimensions];
    assistantDimensions5 = [equalCopy assistantDimensions];
    v11 = [assistantDimensions4 isEqual:assistantDimensions5];

    if (!v11)
    {
      goto LABEL_22;
    }
  }

  else
  {
  }

  assistantDimensions = [(ODDSiriSchemaODDAssistantCarPlayDimensions *)self vehicleManufacturer];
  assistantDimensions2 = [equalCopy vehicleManufacturer];
  if ((assistantDimensions != 0) == (assistantDimensions2 == 0))
  {
    goto LABEL_21;
  }

  vehicleManufacturer = [(ODDSiriSchemaODDAssistantCarPlayDimensions *)self vehicleManufacturer];
  if (vehicleManufacturer)
  {
    v13 = vehicleManufacturer;
    vehicleManufacturer2 = [(ODDSiriSchemaODDAssistantCarPlayDimensions *)self vehicleManufacturer];
    vehicleManufacturer3 = [equalCopy vehicleManufacturer];
    v16 = [vehicleManufacturer2 isEqual:vehicleManufacturer3];

    if (!v16)
    {
      goto LABEL_22;
    }
  }

  else
  {
  }

  assistantDimensions = [(ODDSiriSchemaODDAssistantCarPlayDimensions *)self vehicleName];
  assistantDimensions2 = [equalCopy vehicleName];
  if ((assistantDimensions != 0) == (assistantDimensions2 == 0))
  {
    goto LABEL_21;
  }

  vehicleName = [(ODDSiriSchemaODDAssistantCarPlayDimensions *)self vehicleName];
  if (vehicleName)
  {
    v18 = vehicleName;
    vehicleName2 = [(ODDSiriSchemaODDAssistantCarPlayDimensions *)self vehicleName];
    vehicleName3 = [equalCopy vehicleName];
    v21 = [vehicleName2 isEqual:vehicleName3];

    if (!v21)
    {
      goto LABEL_22;
    }
  }

  else
  {
  }

  assistantDimensions = [(ODDSiriSchemaODDAssistantCarPlayDimensions *)self vehicleModel];
  assistantDimensions2 = [equalCopy vehicleModel];
  if ((assistantDimensions != 0) == (assistantDimensions2 == 0))
  {
LABEL_21:

    goto LABEL_22;
  }

  vehicleModel = [(ODDSiriSchemaODDAssistantCarPlayDimensions *)self vehicleModel];
  if (vehicleModel)
  {
    v23 = vehicleModel;
    vehicleModel2 = [(ODDSiriSchemaODDAssistantCarPlayDimensions *)self vehicleModel];
    vehicleModel3 = [equalCopy vehicleModel];
    v26 = [vehicleModel2 isEqual:vehicleModel3];

    if (!v26)
    {
      goto LABEL_22;
    }
  }

  else
  {
  }

  has = self->_has;
  v30 = equalCopy[52];
  if ((*&has & 1) == (v30 & 1))
  {
    if (*&has)
    {
      enhancedVoiceTriggerMode = self->_enhancedVoiceTriggerMode;
      if (enhancedVoiceTriggerMode != [equalCopy enhancedVoiceTriggerMode])
      {
        goto LABEL_22;
      }

      has = self->_has;
      v30 = equalCopy[52];
    }

    v32 = (*&has >> 1) & 1;
    if (v32 == ((v30 >> 1) & 1))
    {
      if (v32)
      {
        directAction = self->_directAction;
        if (directAction != [equalCopy directAction])
        {
          goto LABEL_22;
        }

        has = self->_has;
        v30 = equalCopy[52];
      }

      v34 = (*&has >> 2) & 1;
      if (v34 == ((v30 >> 2) & 1))
      {
        if (!v34 || (carPlayConnection = self->_carPlayConnection, carPlayConnection == [equalCopy carPlayConnection]))
        {
          v27 = 1;
          goto LABEL_23;
        }
      }
    }
  }

LABEL_22:
  v27 = 0;
LABEL_23:

  return v27;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  assistantDimensions = [(ODDSiriSchemaODDAssistantCarPlayDimensions *)self assistantDimensions];

  if (assistantDimensions)
  {
    assistantDimensions2 = [(ODDSiriSchemaODDAssistantCarPlayDimensions *)self assistantDimensions];
    PBDataWriterWriteSubmessage();
  }

  vehicleManufacturer = [(ODDSiriSchemaODDAssistantCarPlayDimensions *)self vehicleManufacturer];

  if (vehicleManufacturer)
  {
    PBDataWriterWriteStringField();
  }

  vehicleName = [(ODDSiriSchemaODDAssistantCarPlayDimensions *)self vehicleName];

  if (vehicleName)
  {
    PBDataWriterWriteStringField();
  }

  vehicleModel = [(ODDSiriSchemaODDAssistantCarPlayDimensions *)self vehicleModel];

  if (vehicleModel)
  {
    PBDataWriterWriteStringField();
  }

  has = self->_has;
  v10 = toCopy;
  if (has)
  {
    PBDataWriterWriteInt32Field();
    v10 = toCopy;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_11:
      if ((has & 4) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_11;
  }

  PBDataWriterWriteInt32Field();
  v10 = toCopy;
  if ((*&self->_has & 4) != 0)
  {
LABEL_12:
    PBDataWriterWriteInt32Field();
    v10 = toCopy;
  }

LABEL_13:
}

- (void)setHasCarPlayConnection:(BOOL)connection
{
  if (connection)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasDirectAction:(BOOL)action
{
  if (action)
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
  v9.super_class = ODDSiriSchemaODDAssistantCarPlayDimensions;
  policyCopy = policy;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:policyCopy];
  v6 = [(ODDSiriSchemaODDAssistantCarPlayDimensions *)self assistantDimensions:v9.receiver];
  v7 = [v6 applySensitiveConditionsPolicy:policyCopy];

  LODWORD(policyCopy) = [v7 suppressMessage];
  if (policyCopy)
  {
    [(ODDSiriSchemaODDAssistantCarPlayDimensions *)self deleteAssistantDimensions];
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