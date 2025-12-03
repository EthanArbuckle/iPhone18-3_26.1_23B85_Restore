@interface IFTSchemaIFTPermissionRequirement
- (BOOL)isEqual:(id)equal;
- (IFTSchemaIFTPermissionRequirement)initWithDictionary:(id)dictionary;
- (IFTSchemaIFTPermissionRequirement)initWithJSON:(id)n;
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
- (void)setBluetoothPermissionRequired:(BOOL)required;
- (void)setContactsPermissionRequired:(BOOL)required;
- (void)setLocationPermissionRequired:(BOOL)required;
- (void)setPhotosPermissionRequired:(BOOL)required;
- (void)setPreciseLocationPermissionRequired:(BOOL)required;
- (void)setShortcutsPermissionRequired:(BOOL)required;
- (void)setSiriPermissionRequired:(BOOL)required;
- (void)setWifiPermissionRequired:(BOOL)required;
- (void)writeTo:(id)to;
@end

@implementation IFTSchemaIFTPermissionRequirement

- (IFTSchemaIFTPermissionRequirement)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v17.receiver = self;
  v17.super_class = IFTSchemaIFTPermissionRequirement;
  v5 = [(IFTSchemaIFTPermissionRequirement *)&v17 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"siriPermissionRequired"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[IFTSchemaIFTPermissionRequirement setSiriPermissionRequired:](v5, "setSiriPermissionRequired:", [v6 BOOLValue]);
    }

    v16 = v6;
    v7 = [dictionaryCopy objectForKeyedSubscript:@"shortcutsPermissionRequired"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[IFTSchemaIFTPermissionRequirement setShortcutsPermissionRequired:](v5, "setShortcutsPermissionRequired:", [v7 BOOLValue]);
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"preciseLocationPermissionRequired"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[IFTSchemaIFTPermissionRequirement setPreciseLocationPermissionRequired:](v5, "setPreciseLocationPermissionRequired:", [v8 BOOLValue]);
    }

    v9 = [dictionaryCopy objectForKeyedSubscript:@"locationPermissionRequired"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[IFTSchemaIFTPermissionRequirement setLocationPermissionRequired:](v5, "setLocationPermissionRequired:", [v9 BOOLValue]);
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"wifiPermissionRequired"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[IFTSchemaIFTPermissionRequirement setWifiPermissionRequired:](v5, "setWifiPermissionRequired:", [v10 BOOLValue]);
    }

    v11 = [dictionaryCopy objectForKeyedSubscript:@"bluetoothPermissionRequired"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[IFTSchemaIFTPermissionRequirement setBluetoothPermissionRequired:](v5, "setBluetoothPermissionRequired:", [v11 BOOLValue]);
    }

    v12 = [dictionaryCopy objectForKeyedSubscript:@"photosPermissionRequired"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[IFTSchemaIFTPermissionRequirement setPhotosPermissionRequired:](v5, "setPhotosPermissionRequired:", [v12 BOOLValue]);
    }

    v13 = [dictionaryCopy objectForKeyedSubscript:@"contactsPermissionRequired"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[IFTSchemaIFTPermissionRequirement setContactsPermissionRequired:](v5, "setContactsPermissionRequired:", [v13 BOOLValue]);
    }

    v14 = v5;
  }

  return v5;
}

- (IFTSchemaIFTPermissionRequirement)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(IFTSchemaIFTPermissionRequirement *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(IFTSchemaIFTPermissionRequirement *)self dictionaryRepresentation];
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
  whichOneof_Permissionrequirement = self->_whichOneof_Permissionrequirement;
  if (whichOneof_Permissionrequirement == 6)
  {
    v5 = [MEMORY[0x1E696AD98] numberWithBool:{-[IFTSchemaIFTPermissionRequirement bluetoothPermissionRequired](self, "bluetoothPermissionRequired")}];
    [dictionary setObject:v5 forKeyedSubscript:@"bluetoothPermissionRequired"];

    whichOneof_Permissionrequirement = self->_whichOneof_Permissionrequirement;
  }

  if (whichOneof_Permissionrequirement == 8)
  {
    v6 = [MEMORY[0x1E696AD98] numberWithBool:{-[IFTSchemaIFTPermissionRequirement contactsPermissionRequired](self, "contactsPermissionRequired")}];
    [dictionary setObject:v6 forKeyedSubscript:@"contactsPermissionRequired"];

    whichOneof_Permissionrequirement = self->_whichOneof_Permissionrequirement;
  }

  if (whichOneof_Permissionrequirement == 4)
  {
    v7 = [MEMORY[0x1E696AD98] numberWithBool:{-[IFTSchemaIFTPermissionRequirement locationPermissionRequired](self, "locationPermissionRequired")}];
    [dictionary setObject:v7 forKeyedSubscript:@"locationPermissionRequired"];

    whichOneof_Permissionrequirement = self->_whichOneof_Permissionrequirement;
  }

  if (whichOneof_Permissionrequirement == 7)
  {
    v8 = [MEMORY[0x1E696AD98] numberWithBool:{-[IFTSchemaIFTPermissionRequirement photosPermissionRequired](self, "photosPermissionRequired")}];
    [dictionary setObject:v8 forKeyedSubscript:@"photosPermissionRequired"];

    whichOneof_Permissionrequirement = self->_whichOneof_Permissionrequirement;
  }

  if (whichOneof_Permissionrequirement == 3)
  {
    v9 = [MEMORY[0x1E696AD98] numberWithBool:{-[IFTSchemaIFTPermissionRequirement preciseLocationPermissionRequired](self, "preciseLocationPermissionRequired")}];
    [dictionary setObject:v9 forKeyedSubscript:@"preciseLocationPermissionRequired"];

    whichOneof_Permissionrequirement = self->_whichOneof_Permissionrequirement;
  }

  if (whichOneof_Permissionrequirement == 2)
  {
    v10 = [MEMORY[0x1E696AD98] numberWithBool:{-[IFTSchemaIFTPermissionRequirement shortcutsPermissionRequired](self, "shortcutsPermissionRequired")}];
    [dictionary setObject:v10 forKeyedSubscript:@"shortcutsPermissionRequired"];

    whichOneof_Permissionrequirement = self->_whichOneof_Permissionrequirement;
  }

  if (whichOneof_Permissionrequirement == 1)
  {
    v11 = [MEMORY[0x1E696AD98] numberWithBool:{-[IFTSchemaIFTPermissionRequirement siriPermissionRequired](self, "siriPermissionRequired")}];
    [dictionary setObject:v11 forKeyedSubscript:@"siriPermissionRequired"];

    whichOneof_Permissionrequirement = self->_whichOneof_Permissionrequirement;
  }

  if (whichOneof_Permissionrequirement == 5)
  {
    v12 = [MEMORY[0x1E696AD98] numberWithBool:{-[IFTSchemaIFTPermissionRequirement wifiPermissionRequired](self, "wifiPermissionRequired")}];
    [dictionary setObject:v12 forKeyedSubscript:@"wifiPermissionRequired"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && (whichOneof_Permissionrequirement = self->_whichOneof_Permissionrequirement, whichOneof_Permissionrequirement == objc_msgSend(equalCopy, "whichOneof_Permissionrequirement")) && (siriPermissionRequired = self->_siriPermissionRequired, siriPermissionRequired == objc_msgSend(equalCopy, "siriPermissionRequired")) && (shortcutsPermissionRequired = self->_shortcutsPermissionRequired, shortcutsPermissionRequired == objc_msgSend(equalCopy, "shortcutsPermissionRequired")) && (preciseLocationPermissionRequired = self->_preciseLocationPermissionRequired, preciseLocationPermissionRequired == objc_msgSend(equalCopy, "preciseLocationPermissionRequired")) && (locationPermissionRequired = self->_locationPermissionRequired, locationPermissionRequired == objc_msgSend(equalCopy, "locationPermissionRequired")) && (wifiPermissionRequired = self->_wifiPermissionRequired, wifiPermissionRequired == objc_msgSend(equalCopy, "wifiPermissionRequired")) && (bluetoothPermissionRequired = self->_bluetoothPermissionRequired, bluetoothPermissionRequired == objc_msgSend(equalCopy, "bluetoothPermissionRequired")) && (photosPermissionRequired = self->_photosPermissionRequired, photosPermissionRequired == objc_msgSend(equalCopy, "photosPermissionRequired")))
  {
    contactsPermissionRequired = self->_contactsPermissionRequired;
    v14 = contactsPermissionRequired == [equalCopy contactsPermissionRequired];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (void)writeTo:(id)to
{
  toCopy = to;
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

- (void)setContactsPermissionRequired:(BOOL)required
{
  self->_siriPermissionRequired = 0;
  self->_shortcutsPermissionRequired = 0;
  self->_preciseLocationPermissionRequired = 0;
  self->_locationPermissionRequired = 0;
  self->_wifiPermissionRequired = 0;
  self->_bluetoothPermissionRequired = 0;
  self->_photosPermissionRequired = 0;
  self->_whichOneof_Permissionrequirement = 8;
  self->_contactsPermissionRequired = required;
}

- (void)deletePhotosPermissionRequired
{
  if (self->_whichOneof_Permissionrequirement == 7)
  {
    self->_whichOneof_Permissionrequirement = 0;
    self->_photosPermissionRequired = 0;
  }
}

- (void)setPhotosPermissionRequired:(BOOL)required
{
  self->_siriPermissionRequired = 0;
  self->_shortcutsPermissionRequired = 0;
  self->_preciseLocationPermissionRequired = 0;
  self->_locationPermissionRequired = 0;
  self->_wifiPermissionRequired = 0;
  self->_bluetoothPermissionRequired = 0;
  self->_contactsPermissionRequired = 0;
  self->_whichOneof_Permissionrequirement = 7;
  self->_photosPermissionRequired = required;
}

- (void)deleteBluetoothPermissionRequired
{
  if (self->_whichOneof_Permissionrequirement == 6)
  {
    self->_whichOneof_Permissionrequirement = 0;
    self->_bluetoothPermissionRequired = 0;
  }
}

- (void)setBluetoothPermissionRequired:(BOOL)required
{
  self->_siriPermissionRequired = 0;
  self->_shortcutsPermissionRequired = 0;
  self->_preciseLocationPermissionRequired = 0;
  self->_locationPermissionRequired = 0;
  self->_wifiPermissionRequired = 0;
  self->_photosPermissionRequired = 0;
  self->_contactsPermissionRequired = 0;
  self->_whichOneof_Permissionrequirement = 6;
  self->_bluetoothPermissionRequired = required;
}

- (void)deleteWifiPermissionRequired
{
  if (self->_whichOneof_Permissionrequirement == 5)
  {
    self->_whichOneof_Permissionrequirement = 0;
    self->_wifiPermissionRequired = 0;
  }
}

- (void)setWifiPermissionRequired:(BOOL)required
{
  self->_siriPermissionRequired = 0;
  self->_shortcutsPermissionRequired = 0;
  self->_preciseLocationPermissionRequired = 0;
  self->_locationPermissionRequired = 0;
  self->_bluetoothPermissionRequired = 0;
  self->_photosPermissionRequired = 0;
  self->_contactsPermissionRequired = 0;
  self->_whichOneof_Permissionrequirement = 5;
  self->_wifiPermissionRequired = required;
}

- (void)deleteLocationPermissionRequired
{
  if (self->_whichOneof_Permissionrequirement == 4)
  {
    self->_whichOneof_Permissionrequirement = 0;
    self->_locationPermissionRequired = 0;
  }
}

- (void)setLocationPermissionRequired:(BOOL)required
{
  self->_siriPermissionRequired = 0;
  self->_shortcutsPermissionRequired = 0;
  self->_preciseLocationPermissionRequired = 0;
  self->_wifiPermissionRequired = 0;
  self->_bluetoothPermissionRequired = 0;
  self->_photosPermissionRequired = 0;
  self->_contactsPermissionRequired = 0;
  self->_whichOneof_Permissionrequirement = 4;
  self->_locationPermissionRequired = required;
}

- (void)deletePreciseLocationPermissionRequired
{
  if (self->_whichOneof_Permissionrequirement == 3)
  {
    self->_whichOneof_Permissionrequirement = 0;
    self->_preciseLocationPermissionRequired = 0;
  }
}

- (void)setPreciseLocationPermissionRequired:(BOOL)required
{
  self->_siriPermissionRequired = 0;
  self->_shortcutsPermissionRequired = 0;
  self->_locationPermissionRequired = 0;
  self->_wifiPermissionRequired = 0;
  self->_bluetoothPermissionRequired = 0;
  self->_photosPermissionRequired = 0;
  self->_contactsPermissionRequired = 0;
  self->_whichOneof_Permissionrequirement = 3;
  self->_preciseLocationPermissionRequired = required;
}

- (void)deleteShortcutsPermissionRequired
{
  if (self->_whichOneof_Permissionrequirement == 2)
  {
    self->_whichOneof_Permissionrequirement = 0;
    self->_shortcutsPermissionRequired = 0;
  }
}

- (void)setShortcutsPermissionRequired:(BOOL)required
{
  self->_siriPermissionRequired = 0;
  self->_preciseLocationPermissionRequired = 0;
  self->_locationPermissionRequired = 0;
  self->_wifiPermissionRequired = 0;
  self->_bluetoothPermissionRequired = 0;
  self->_photosPermissionRequired = 0;
  self->_contactsPermissionRequired = 0;
  self->_whichOneof_Permissionrequirement = 2;
  self->_shortcutsPermissionRequired = required;
}

- (void)deleteSiriPermissionRequired
{
  if (self->_whichOneof_Permissionrequirement == 1)
  {
    self->_whichOneof_Permissionrequirement = 0;
    self->_siriPermissionRequired = 0;
  }
}

- (void)setSiriPermissionRequired:(BOOL)required
{
  self->_shortcutsPermissionRequired = 0;
  self->_preciseLocationPermissionRequired = 0;
  self->_locationPermissionRequired = 0;
  self->_wifiPermissionRequired = 0;
  self->_bluetoothPermissionRequired = 0;
  self->_photosPermissionRequired = 0;
  self->_contactsPermissionRequired = 0;
  self->_whichOneof_Permissionrequirement = 1;
  self->_siriPermissionRequired = required;
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end