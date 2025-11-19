@interface ODDSiriSchemaODDAssistantCarPlayDimensions
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (ODDSiriSchemaODDAssistantCarPlayDimensions)initWithDictionary:(id)a3;
- (ODDSiriSchemaODDAssistantCarPlayDimensions)initWithJSON:(id)a3;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasCarPlayConnection:(BOOL)a3;
- (void)setHasDirectAction:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation ODDSiriSchemaODDAssistantCarPlayDimensions

- (ODDSiriSchemaODDAssistantCarPlayDimensions)initWithDictionary:(id)a3
{
  v4 = a3;
  v19.receiver = self;
  v19.super_class = ODDSiriSchemaODDAssistantCarPlayDimensions;
  v5 = [(ODDSiriSchemaODDAssistantCarPlayDimensions *)&v19 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"assistantDimensions"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[ODDSiriSchemaODDAssistantDimensions alloc] initWithDictionary:v6];
      [(ODDSiriSchemaODDAssistantCarPlayDimensions *)v5 setAssistantDimensions:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"vehicleManufacturer"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [v8 copy];
      [(ODDSiriSchemaODDAssistantCarPlayDimensions *)v5 setVehicleManufacturer:v9];
    }

    v10 = [v4 objectForKeyedSubscript:@"vehicleName"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [v10 copy];
      [(ODDSiriSchemaODDAssistantCarPlayDimensions *)v5 setVehicleName:v11];
    }

    v12 = [v4 objectForKeyedSubscript:@"vehicleModel"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [v12 copy];
      [(ODDSiriSchemaODDAssistantCarPlayDimensions *)v5 setVehicleModel:v13];
    }

    v14 = [v4 objectForKeyedSubscript:@"enhancedVoiceTriggerMode"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ODDSiriSchemaODDAssistantCarPlayDimensions setEnhancedVoiceTriggerMode:](v5, "setEnhancedVoiceTriggerMode:", [v14 intValue]);
    }

    v15 = [v4 objectForKeyedSubscript:@"directAction"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ODDSiriSchemaODDAssistantCarPlayDimensions setDirectAction:](v5, "setDirectAction:", [v15 intValue]);
    }

    v16 = [v4 objectForKeyedSubscript:@"carPlayConnection"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ODDSiriSchemaODDAssistantCarPlayDimensions setCarPlayConnection:](v5, "setCarPlayConnection:", [v16 intValue]);
    }

    v17 = v5;
  }

  return v5;
}

- (ODDSiriSchemaODDAssistantCarPlayDimensions)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(ODDSiriSchemaODDAssistantCarPlayDimensions *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(ODDSiriSchemaODDAssistantCarPlayDimensions *)self dictionaryRepresentation];
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
  if (self->_assistantDimensions)
  {
    v4 = [(ODDSiriSchemaODDAssistantCarPlayDimensions *)self assistantDimensions];
    v5 = [v4 dictionaryRepresentation];
    if (v5)
    {
      [v3 setObject:v5 forKeyedSubscript:@"assistantDimensions"];
    }

    else
    {
      v6 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v6 forKeyedSubscript:@"assistantDimensions"];
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

    [v3 setObject:v9 forKeyedSubscript:@"carPlayConnection"];
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

  [v3 setObject:v11 forKeyedSubscript:@"directAction"];
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

    [v3 setObject:v13 forKeyedSubscript:@"enhancedVoiceTriggerMode"];
  }

LABEL_22:
  if (self->_vehicleManufacturer)
  {
    v14 = [(ODDSiriSchemaODDAssistantCarPlayDimensions *)self vehicleManufacturer];
    v15 = [v14 copy];
    [v3 setObject:v15 forKeyedSubscript:@"vehicleManufacturer"];
  }

  if (self->_vehicleModel)
  {
    v16 = [(ODDSiriSchemaODDAssistantCarPlayDimensions *)self vehicleModel];
    v17 = [v16 copy];
    [v3 setObject:v17 forKeyedSubscript:@"vehicleModel"];
  }

  if (self->_vehicleName)
  {
    v18 = [(ODDSiriSchemaODDAssistantCarPlayDimensions *)self vehicleName];
    v19 = [v18 copy];
    [v3 setObject:v19 forKeyedSubscript:@"vehicleName"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_22;
  }

  v5 = [(ODDSiriSchemaODDAssistantCarPlayDimensions *)self assistantDimensions];
  v6 = [v4 assistantDimensions];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_21;
  }

  v7 = [(ODDSiriSchemaODDAssistantCarPlayDimensions *)self assistantDimensions];
  if (v7)
  {
    v8 = v7;
    v9 = [(ODDSiriSchemaODDAssistantCarPlayDimensions *)self assistantDimensions];
    v10 = [v4 assistantDimensions];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_22;
    }
  }

  else
  {
  }

  v5 = [(ODDSiriSchemaODDAssistantCarPlayDimensions *)self vehicleManufacturer];
  v6 = [v4 vehicleManufacturer];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_21;
  }

  v12 = [(ODDSiriSchemaODDAssistantCarPlayDimensions *)self vehicleManufacturer];
  if (v12)
  {
    v13 = v12;
    v14 = [(ODDSiriSchemaODDAssistantCarPlayDimensions *)self vehicleManufacturer];
    v15 = [v4 vehicleManufacturer];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_22;
    }
  }

  else
  {
  }

  v5 = [(ODDSiriSchemaODDAssistantCarPlayDimensions *)self vehicleName];
  v6 = [v4 vehicleName];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_21;
  }

  v17 = [(ODDSiriSchemaODDAssistantCarPlayDimensions *)self vehicleName];
  if (v17)
  {
    v18 = v17;
    v19 = [(ODDSiriSchemaODDAssistantCarPlayDimensions *)self vehicleName];
    v20 = [v4 vehicleName];
    v21 = [v19 isEqual:v20];

    if (!v21)
    {
      goto LABEL_22;
    }
  }

  else
  {
  }

  v5 = [(ODDSiriSchemaODDAssistantCarPlayDimensions *)self vehicleModel];
  v6 = [v4 vehicleModel];
  if ((v5 != 0) == (v6 == 0))
  {
LABEL_21:

    goto LABEL_22;
  }

  v22 = [(ODDSiriSchemaODDAssistantCarPlayDimensions *)self vehicleModel];
  if (v22)
  {
    v23 = v22;
    v24 = [(ODDSiriSchemaODDAssistantCarPlayDimensions *)self vehicleModel];
    v25 = [v4 vehicleModel];
    v26 = [v24 isEqual:v25];

    if (!v26)
    {
      goto LABEL_22;
    }
  }

  else
  {
  }

  has = self->_has;
  v30 = v4[52];
  if ((*&has & 1) == (v30 & 1))
  {
    if (*&has)
    {
      enhancedVoiceTriggerMode = self->_enhancedVoiceTriggerMode;
      if (enhancedVoiceTriggerMode != [v4 enhancedVoiceTriggerMode])
      {
        goto LABEL_22;
      }

      has = self->_has;
      v30 = v4[52];
    }

    v32 = (*&has >> 1) & 1;
    if (v32 == ((v30 >> 1) & 1))
    {
      if (v32)
      {
        directAction = self->_directAction;
        if (directAction != [v4 directAction])
        {
          goto LABEL_22;
        }

        has = self->_has;
        v30 = v4[52];
      }

      v34 = (*&has >> 2) & 1;
      if (v34 == ((v30 >> 2) & 1))
      {
        if (!v34 || (carPlayConnection = self->_carPlayConnection, carPlayConnection == [v4 carPlayConnection]))
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

- (void)writeTo:(id)a3
{
  v11 = a3;
  v4 = [(ODDSiriSchemaODDAssistantCarPlayDimensions *)self assistantDimensions];

  if (v4)
  {
    v5 = [(ODDSiriSchemaODDAssistantCarPlayDimensions *)self assistantDimensions];
    PBDataWriterWriteSubmessage();
  }

  v6 = [(ODDSiriSchemaODDAssistantCarPlayDimensions *)self vehicleManufacturer];

  if (v6)
  {
    PBDataWriterWriteStringField();
  }

  v7 = [(ODDSiriSchemaODDAssistantCarPlayDimensions *)self vehicleName];

  if (v7)
  {
    PBDataWriterWriteStringField();
  }

  v8 = [(ODDSiriSchemaODDAssistantCarPlayDimensions *)self vehicleModel];

  if (v8)
  {
    PBDataWriterWriteStringField();
  }

  has = self->_has;
  v10 = v11;
  if (has)
  {
    PBDataWriterWriteInt32Field();
    v10 = v11;
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
  v10 = v11;
  if ((*&self->_has & 4) != 0)
  {
LABEL_12:
    PBDataWriterWriteInt32Field();
    v10 = v11;
  }

LABEL_13:
}

- (void)setHasCarPlayConnection:(BOOL)a3
{
  if (a3)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasDirectAction:(BOOL)a3
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
  v9.super_class = ODDSiriSchemaODDAssistantCarPlayDimensions;
  v4 = a3;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:v4];
  v6 = [(ODDSiriSchemaODDAssistantCarPlayDimensions *)self assistantDimensions:v9.receiver];
  v7 = [v6 applySensitiveConditionsPolicy:v4];

  LODWORD(v4) = [v7 suppressMessage];
  if (v4)
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