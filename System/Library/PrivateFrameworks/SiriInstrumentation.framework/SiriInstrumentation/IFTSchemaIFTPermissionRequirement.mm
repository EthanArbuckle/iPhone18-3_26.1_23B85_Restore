@interface IFTSchemaIFTPermissionRequirement
- (BOOL)isEqual:(id)a3;
- (IFTSchemaIFTPermissionRequirement)initWithDictionary:(id)a3;
- (IFTSchemaIFTPermissionRequirement)initWithJSON:(id)a3;
- (NSData)jsonData;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)deleteBluetoothPermissionRequired;
- (void)deleteContactsPermissionRequired;
- (void)deleteLocationPermissionRequired;
- (void)deletePhotosPermissionRequired;
- (void)deletePreciseLocationPermissionRequired;
- (void)deleteShortcutsPermissionRequired;
- (void)deleteSiriPermissionRequired;
- (void)deleteWifiPermissionRequired;
- (void)setBluetoothPermissionRequired:(BOOL)a3;
- (void)setContactsPermissionRequired:(BOOL)a3;
- (void)setLocationPermissionRequired:(BOOL)a3;
- (void)setPhotosPermissionRequired:(BOOL)a3;
- (void)setPreciseLocationPermissionRequired:(BOOL)a3;
- (void)setShortcutsPermissionRequired:(BOOL)a3;
- (void)setSiriPermissionRequired:(BOOL)a3;
- (void)setWifiPermissionRequired:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation IFTSchemaIFTPermissionRequirement

- (IFTSchemaIFTPermissionRequirement)initWithDictionary:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = IFTSchemaIFTPermissionRequirement;
  v5 = [(IFTSchemaIFTPermissionRequirement *)&v17 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"siriPermissionRequired"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[IFTSchemaIFTPermissionRequirement setSiriPermissionRequired:](v5, "setSiriPermissionRequired:", [v6 BOOLValue]);
    }

    v16 = v6;
    v7 = [v4 objectForKeyedSubscript:@"shortcutsPermissionRequired"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[IFTSchemaIFTPermissionRequirement setShortcutsPermissionRequired:](v5, "setShortcutsPermissionRequired:", [v7 BOOLValue]);
    }

    v8 = [v4 objectForKeyedSubscript:@"preciseLocationPermissionRequired"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[IFTSchemaIFTPermissionRequirement setPreciseLocationPermissionRequired:](v5, "setPreciseLocationPermissionRequired:", [v8 BOOLValue]);
    }

    v9 = [v4 objectForKeyedSubscript:@"locationPermissionRequired"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[IFTSchemaIFTPermissionRequirement setLocationPermissionRequired:](v5, "setLocationPermissionRequired:", [v9 BOOLValue]);
    }

    v10 = [v4 objectForKeyedSubscript:@"wifiPermissionRequired"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[IFTSchemaIFTPermissionRequirement setWifiPermissionRequired:](v5, "setWifiPermissionRequired:", [v10 BOOLValue]);
    }

    v11 = [v4 objectForKeyedSubscript:@"bluetoothPermissionRequired"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[IFTSchemaIFTPermissionRequirement setBluetoothPermissionRequired:](v5, "setBluetoothPermissionRequired:", [v11 BOOLValue]);
    }

    v12 = [v4 objectForKeyedSubscript:@"photosPermissionRequired"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[IFTSchemaIFTPermissionRequirement setPhotosPermissionRequired:](v5, "setPhotosPermissionRequired:", [v12 BOOLValue]);
    }

    v13 = [v4 objectForKeyedSubscript:@"contactsPermissionRequired"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[IFTSchemaIFTPermissionRequirement setContactsPermissionRequired:](v5, "setContactsPermissionRequired:", [v13 BOOLValue]);
    }

    v14 = v5;
  }

  return v5;
}

- (IFTSchemaIFTPermissionRequirement)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(IFTSchemaIFTPermissionRequirement *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(IFTSchemaIFTPermissionRequirement *)self dictionaryRepresentation];
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
  whichOneof_Permissionrequirement = self->_whichOneof_Permissionrequirement;
  if (whichOneof_Permissionrequirement == 6)
  {
    v5 = [MEMORY[0x1E696AD98] numberWithBool:{-[IFTSchemaIFTPermissionRequirement bluetoothPermissionRequired](self, "bluetoothPermissionRequired")}];
    [v3 setObject:v5 forKeyedSubscript:@"bluetoothPermissionRequired"];

    whichOneof_Permissionrequirement = self->_whichOneof_Permissionrequirement;
  }

  if (whichOneof_Permissionrequirement == 8)
  {
    v6 = [MEMORY[0x1E696AD98] numberWithBool:{-[IFTSchemaIFTPermissionRequirement contactsPermissionRequired](self, "contactsPermissionRequired")}];
    [v3 setObject:v6 forKeyedSubscript:@"contactsPermissionRequired"];

    whichOneof_Permissionrequirement = self->_whichOneof_Permissionrequirement;
  }

  if (whichOneof_Permissionrequirement == 4)
  {
    v7 = [MEMORY[0x1E696AD98] numberWithBool:{-[IFTSchemaIFTPermissionRequirement locationPermissionRequired](self, "locationPermissionRequired")}];
    [v3 setObject:v7 forKeyedSubscript:@"locationPermissionRequired"];

    whichOneof_Permissionrequirement = self->_whichOneof_Permissionrequirement;
  }

  if (whichOneof_Permissionrequirement == 7)
  {
    v8 = [MEMORY[0x1E696AD98] numberWithBool:{-[IFTSchemaIFTPermissionRequirement photosPermissionRequired](self, "photosPermissionRequired")}];
    [v3 setObject:v8 forKeyedSubscript:@"photosPermissionRequired"];

    whichOneof_Permissionrequirement = self->_whichOneof_Permissionrequirement;
  }

  if (whichOneof_Permissionrequirement == 3)
  {
    v9 = [MEMORY[0x1E696AD98] numberWithBool:{-[IFTSchemaIFTPermissionRequirement preciseLocationPermissionRequired](self, "preciseLocationPermissionRequired")}];
    [v3 setObject:v9 forKeyedSubscript:@"preciseLocationPermissionRequired"];

    whichOneof_Permissionrequirement = self->_whichOneof_Permissionrequirement;
  }

  if (whichOneof_Permissionrequirement == 2)
  {
    v10 = [MEMORY[0x1E696AD98] numberWithBool:{-[IFTSchemaIFTPermissionRequirement shortcutsPermissionRequired](self, "shortcutsPermissionRequired")}];
    [v3 setObject:v10 forKeyedSubscript:@"shortcutsPermissionRequired"];

    whichOneof_Permissionrequirement = self->_whichOneof_Permissionrequirement;
  }

  if (whichOneof_Permissionrequirement == 1)
  {
    v11 = [MEMORY[0x1E696AD98] numberWithBool:{-[IFTSchemaIFTPermissionRequirement siriPermissionRequired](self, "siriPermissionRequired")}];
    [v3 setObject:v11 forKeyedSubscript:@"siriPermissionRequired"];

    whichOneof_Permissionrequirement = self->_whichOneof_Permissionrequirement;
  }

  if (whichOneof_Permissionrequirement == 5)
  {
    v12 = [MEMORY[0x1E696AD98] numberWithBool:{-[IFTSchemaIFTPermissionRequirement wifiPermissionRequired](self, "wifiPermissionRequired")}];
    [v3 setObject:v12 forKeyedSubscript:@"wifiPermissionRequired"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (unint64_t)hash
{
  v2 = self->_whichOneof_Permissionrequirement - 1;
  if (v2 > 7)
  {
    return 0;
  }

  else
  {
    return 2654435761 * *(&self->super.super.super.isa + *off_1E78D8480[v2]);
  }
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && (whichOneof_Permissionrequirement = self->_whichOneof_Permissionrequirement, whichOneof_Permissionrequirement == objc_msgSend(v4, "whichOneof_Permissionrequirement")) && (siriPermissionRequired = self->_siriPermissionRequired, siriPermissionRequired == objc_msgSend(v4, "siriPermissionRequired")) && (shortcutsPermissionRequired = self->_shortcutsPermissionRequired, shortcutsPermissionRequired == objc_msgSend(v4, "shortcutsPermissionRequired")) && (preciseLocationPermissionRequired = self->_preciseLocationPermissionRequired, preciseLocationPermissionRequired == objc_msgSend(v4, "preciseLocationPermissionRequired")) && (locationPermissionRequired = self->_locationPermissionRequired, locationPermissionRequired == objc_msgSend(v4, "locationPermissionRequired")) && (wifiPermissionRequired = self->_wifiPermissionRequired, wifiPermissionRequired == objc_msgSend(v4, "wifiPermissionRequired")) && (bluetoothPermissionRequired = self->_bluetoothPermissionRequired, bluetoothPermissionRequired == objc_msgSend(v4, "bluetoothPermissionRequired")) && (photosPermissionRequired = self->_photosPermissionRequired, photosPermissionRequired == objc_msgSend(v4, "photosPermissionRequired")))
  {
    contactsPermissionRequired = self->_contactsPermissionRequired;
    v14 = contactsPermissionRequired == [v4 contactsPermissionRequired];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (void)writeTo:(id)a3
{
  v5 = a3;
  whichOneof_Permissionrequirement = self->_whichOneof_Permissionrequirement;
  if (whichOneof_Permissionrequirement == 1)
  {
    PBDataWriterWriteBOOLField();
    whichOneof_Permissionrequirement = self->_whichOneof_Permissionrequirement;
  }

  if (whichOneof_Permissionrequirement == 2)
  {
    PBDataWriterWriteBOOLField();
    whichOneof_Permissionrequirement = self->_whichOneof_Permissionrequirement;
  }

  if (whichOneof_Permissionrequirement == 3)
  {
    PBDataWriterWriteBOOLField();
    whichOneof_Permissionrequirement = self->_whichOneof_Permissionrequirement;
  }

  if (whichOneof_Permissionrequirement == 4)
  {
    PBDataWriterWriteBOOLField();
    whichOneof_Permissionrequirement = self->_whichOneof_Permissionrequirement;
  }

  if (whichOneof_Permissionrequirement == 5)
  {
    PBDataWriterWriteBOOLField();
    whichOneof_Permissionrequirement = self->_whichOneof_Permissionrequirement;
  }

  if (whichOneof_Permissionrequirement == 6)
  {
    PBDataWriterWriteBOOLField();
    whichOneof_Permissionrequirement = self->_whichOneof_Permissionrequirement;
  }

  if (whichOneof_Permissionrequirement == 7)
  {
    PBDataWriterWriteBOOLField();
    whichOneof_Permissionrequirement = self->_whichOneof_Permissionrequirement;
  }

  if (whichOneof_Permissionrequirement == 8)
  {
    PBDataWriterWriteBOOLField();
  }
}

- (void)deleteContactsPermissionRequired
{
  if (self->_whichOneof_Permissionrequirement == 8)
  {
    self->_whichOneof_Permissionrequirement = 0;
    self->_contactsPermissionRequired = 0;
  }
}

- (void)setContactsPermissionRequired:(BOOL)a3
{
  self->_siriPermissionRequired = 0;
  self->_shortcutsPermissionRequired = 0;
  self->_preciseLocationPermissionRequired = 0;
  self->_locationPermissionRequired = 0;
  self->_wifiPermissionRequired = 0;
  self->_bluetoothPermissionRequired = 0;
  self->_photosPermissionRequired = 0;
  self->_whichOneof_Permissionrequirement = 8;
  self->_contactsPermissionRequired = a3;
}

- (void)deletePhotosPermissionRequired
{
  if (self->_whichOneof_Permissionrequirement == 7)
  {
    self->_whichOneof_Permissionrequirement = 0;
    self->_photosPermissionRequired = 0;
  }
}

- (void)setPhotosPermissionRequired:(BOOL)a3
{
  self->_siriPermissionRequired = 0;
  self->_shortcutsPermissionRequired = 0;
  self->_preciseLocationPermissionRequired = 0;
  self->_locationPermissionRequired = 0;
  self->_wifiPermissionRequired = 0;
  self->_bluetoothPermissionRequired = 0;
  self->_contactsPermissionRequired = 0;
  self->_whichOneof_Permissionrequirement = 7;
  self->_photosPermissionRequired = a3;
}

- (void)deleteBluetoothPermissionRequired
{
  if (self->_whichOneof_Permissionrequirement == 6)
  {
    self->_whichOneof_Permissionrequirement = 0;
    self->_bluetoothPermissionRequired = 0;
  }
}

- (void)setBluetoothPermissionRequired:(BOOL)a3
{
  self->_siriPermissionRequired = 0;
  self->_shortcutsPermissionRequired = 0;
  self->_preciseLocationPermissionRequired = 0;
  self->_locationPermissionRequired = 0;
  self->_wifiPermissionRequired = 0;
  self->_photosPermissionRequired = 0;
  self->_contactsPermissionRequired = 0;
  self->_whichOneof_Permissionrequirement = 6;
  self->_bluetoothPermissionRequired = a3;
}

- (void)deleteWifiPermissionRequired
{
  if (self->_whichOneof_Permissionrequirement == 5)
  {
    self->_whichOneof_Permissionrequirement = 0;
    self->_wifiPermissionRequired = 0;
  }
}

- (void)setWifiPermissionRequired:(BOOL)a3
{
  self->_siriPermissionRequired = 0;
  self->_shortcutsPermissionRequired = 0;
  self->_preciseLocationPermissionRequired = 0;
  self->_locationPermissionRequired = 0;
  self->_bluetoothPermissionRequired = 0;
  self->_photosPermissionRequired = 0;
  self->_contactsPermissionRequired = 0;
  self->_whichOneof_Permissionrequirement = 5;
  self->_wifiPermissionRequired = a3;
}

- (void)deleteLocationPermissionRequired
{
  if (self->_whichOneof_Permissionrequirement == 4)
  {
    self->_whichOneof_Permissionrequirement = 0;
    self->_locationPermissionRequired = 0;
  }
}

- (void)setLocationPermissionRequired:(BOOL)a3
{
  self->_siriPermissionRequired = 0;
  self->_shortcutsPermissionRequired = 0;
  self->_preciseLocationPermissionRequired = 0;
  self->_wifiPermissionRequired = 0;
  self->_bluetoothPermissionRequired = 0;
  self->_photosPermissionRequired = 0;
  self->_contactsPermissionRequired = 0;
  self->_whichOneof_Permissionrequirement = 4;
  self->_locationPermissionRequired = a3;
}

- (void)deletePreciseLocationPermissionRequired
{
  if (self->_whichOneof_Permissionrequirement == 3)
  {
    self->_whichOneof_Permissionrequirement = 0;
    self->_preciseLocationPermissionRequired = 0;
  }
}

- (void)setPreciseLocationPermissionRequired:(BOOL)a3
{
  self->_siriPermissionRequired = 0;
  self->_shortcutsPermissionRequired = 0;
  self->_locationPermissionRequired = 0;
  self->_wifiPermissionRequired = 0;
  self->_bluetoothPermissionRequired = 0;
  self->_photosPermissionRequired = 0;
  self->_contactsPermissionRequired = 0;
  self->_whichOneof_Permissionrequirement = 3;
  self->_preciseLocationPermissionRequired = a3;
}

- (void)deleteShortcutsPermissionRequired
{
  if (self->_whichOneof_Permissionrequirement == 2)
  {
    self->_whichOneof_Permissionrequirement = 0;
    self->_shortcutsPermissionRequired = 0;
  }
}

- (void)setShortcutsPermissionRequired:(BOOL)a3
{
  self->_siriPermissionRequired = 0;
  self->_preciseLocationPermissionRequired = 0;
  self->_locationPermissionRequired = 0;
  self->_wifiPermissionRequired = 0;
  self->_bluetoothPermissionRequired = 0;
  self->_photosPermissionRequired = 0;
  self->_contactsPermissionRequired = 0;
  self->_whichOneof_Permissionrequirement = 2;
  self->_shortcutsPermissionRequired = a3;
}

- (void)deleteSiriPermissionRequired
{
  if (self->_whichOneof_Permissionrequirement == 1)
  {
    self->_whichOneof_Permissionrequirement = 0;
    self->_siriPermissionRequired = 0;
  }
}

- (void)setSiriPermissionRequired:(BOOL)a3
{
  self->_shortcutsPermissionRequired = 0;
  self->_preciseLocationPermissionRequired = 0;
  self->_locationPermissionRequired = 0;
  self->_wifiPermissionRequired = 0;
  self->_bluetoothPermissionRequired = 0;
  self->_photosPermissionRequired = 0;
  self->_contactsPermissionRequired = 0;
  self->_whichOneof_Permissionrequirement = 1;
  self->_siriPermissionRequired = a3;
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end