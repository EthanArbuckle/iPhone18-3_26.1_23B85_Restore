@interface HALSchemaHALCompanionDeviceDiscoveryEnded
- (BOOL)isEqual:(id)equal;
- (HALSchemaHALCompanionDeviceDiscoveryEnded)initWithDictionary:(id)dictionary;
- (HALSchemaHALCompanionDeviceDiscoveryEnded)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasDeviceProximity:(BOOL)proximity;
- (void)setHasHasNullPeerIdentityServicesId:(BOOL)id;
- (void)setHasHasOtheriOSActiveDevices:(BOOL)devices;
- (void)setHasIsMeDevice:(BOOL)device;
- (void)writeTo:(id)to;
@end

@implementation HALSchemaHALCompanionDeviceDiscoveryEnded

- (HALSchemaHALCompanionDeviceDiscoveryEnded)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v13.receiver = self;
  v13.super_class = HALSchemaHALCompanionDeviceDiscoveryEnded;
  v5 = [(HALSchemaHALCompanionDeviceDiscoveryEnded *)&v13 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"discoveryType"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[HALSchemaHALCompanionDeviceDiscoveryEnded setDiscoveryType:](v5, "setDiscoveryType:", [v6 intValue]);
    }

    v7 = [dictionaryCopy objectForKeyedSubscript:@"isMeDevice"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[HALSchemaHALCompanionDeviceDiscoveryEnded setIsMeDevice:](v5, "setIsMeDevice:", [v7 BOOLValue]);
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"hasOtheriOSActiveDevices"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[HALSchemaHALCompanionDeviceDiscoveryEnded setHasOtheriOSActiveDevices:](v5, "setHasOtheriOSActiveDevices:", [v8 BOOLValue]);
    }

    v9 = [dictionaryCopy objectForKeyedSubscript:@"hasNullPeerIdentityServicesId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[HALSchemaHALCompanionDeviceDiscoveryEnded setHasNullPeerIdentityServicesId:](v5, "setHasNullPeerIdentityServicesId:", [v9 BOOLValue]);
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"deviceProximity"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[HALSchemaHALCompanionDeviceDiscoveryEnded setDeviceProximity:](v5, "setDeviceProximity:", [v10 intValue]);
    }

    v11 = v5;
  }

  return v5;
}

- (HALSchemaHALCompanionDeviceDiscoveryEnded)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(HALSchemaHALCompanionDeviceDiscoveryEnded *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(HALSchemaHALCompanionDeviceDiscoveryEnded *)self dictionaryRepresentation];
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
  has = self->_has;
  if ((has & 0x10) != 0)
  {
    v5 = [(HALSchemaHALCompanionDeviceDiscoveryEnded *)self deviceProximity]- 1;
    if (v5 > 3)
    {
      v6 = @"HALDEVICEPROXIMITY_UNKNOWN";
    }

    else
    {
      v6 = off_1E78D7A60[v5];
    }

    [dictionary setObject:v6 forKeyedSubscript:@"deviceProximity"];
    has = self->_has;
  }

  if (has)
  {
    v7 = [(HALSchemaHALCompanionDeviceDiscoveryEnded *)self discoveryType]- 1;
    if (v7 > 2)
    {
      v8 = @"HALDISCOVERYTYPE_UNKNOWN";
    }

    else
    {
      v8 = off_1E78D7A80[v7];
    }

    [dictionary setObject:v8 forKeyedSubscript:@"discoveryType"];
    has = self->_has;
  }

  if ((has & 8) != 0)
  {
    v11 = [MEMORY[0x1E696AD98] numberWithBool:{-[HALSchemaHALCompanionDeviceDiscoveryEnded hasNullPeerIdentityServicesId](self, "hasNullPeerIdentityServicesId")}];
    [dictionary setObject:v11 forKeyedSubscript:@"hasNullPeerIdentityServicesId"];

    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_13:
      if ((has & 2) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_14;
    }
  }

  else if ((has & 4) == 0)
  {
    goto LABEL_13;
  }

  v12 = [MEMORY[0x1E696AD98] numberWithBool:{-[HALSchemaHALCompanionDeviceDiscoveryEnded hasOtheriOSActiveDevices](self, "hasOtheriOSActiveDevices")}];
  [dictionary setObject:v12 forKeyedSubscript:@"hasOtheriOSActiveDevices"];

  if ((*&self->_has & 2) != 0)
  {
LABEL_14:
    v9 = [MEMORY[0x1E696AD98] numberWithBool:{-[HALSchemaHALCompanionDeviceDiscoveryEnded isMeDevice](self, "isMeDevice")}];
    [dictionary setObject:v9 forKeyedSubscript:@"isMeDevice"];
  }

LABEL_15:
  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v2 = 2654435761 * self->_discoveryType;
    if ((*&self->_has & 2) != 0)
    {
LABEL_3:
      v3 = 2654435761 * self->_isMeDevice;
      if ((*&self->_has & 4) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else
  {
    v2 = 0;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }
  }

  v3 = 0;
  if ((*&self->_has & 4) != 0)
  {
LABEL_4:
    v4 = 2654435761 * self->_hasOtheriOSActiveDevices;
    if ((*&self->_has & 8) != 0)
    {
      goto LABEL_5;
    }

LABEL_10:
    v5 = 0;
    if ((*&self->_has & 0x10) != 0)
    {
      goto LABEL_6;
    }

LABEL_11:
    v6 = 0;
    return v3 ^ v2 ^ v4 ^ v5 ^ v6;
  }

LABEL_9:
  v4 = 0;
  if ((*&self->_has & 8) == 0)
  {
    goto LABEL_10;
  }

LABEL_5:
  v5 = 2654435761 * self->_hasNullPeerIdentityServicesId;
  if ((*&self->_has & 0x10) == 0)
  {
    goto LABEL_11;
  }

LABEL_6:
  v6 = 2654435761 * self->_deviceProximity;
  return v3 ^ v2 ^ v4 ^ v5 ^ v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_22;
  }

  has = self->_has;
  v6 = equalCopy[20];
  if ((*&has & 1) != (v6 & 1))
  {
    goto LABEL_22;
  }

  if (*&has)
  {
    discoveryType = self->_discoveryType;
    if (discoveryType != [equalCopy discoveryType])
    {
      goto LABEL_22;
    }

    has = self->_has;
    v6 = equalCopy[20];
  }

  v8 = (*&has >> 1) & 1;
  if (v8 != ((v6 >> 1) & 1))
  {
    goto LABEL_22;
  }

  if (v8)
  {
    isMeDevice = self->_isMeDevice;
    if (isMeDevice != [equalCopy isMeDevice])
    {
      goto LABEL_22;
    }

    has = self->_has;
    v6 = equalCopy[20];
  }

  v10 = (*&has >> 2) & 1;
  if (v10 != ((v6 >> 2) & 1))
  {
    goto LABEL_22;
  }

  if (v10)
  {
    hasOtheriOSActiveDevices = self->_hasOtheriOSActiveDevices;
    if (hasOtheriOSActiveDevices != [equalCopy hasOtheriOSActiveDevices])
    {
      goto LABEL_22;
    }

    has = self->_has;
    v6 = equalCopy[20];
  }

  v12 = (*&has >> 3) & 1;
  if (v12 != ((v6 >> 3) & 1))
  {
    goto LABEL_22;
  }

  if (v12)
  {
    hasNullPeerIdentityServicesId = self->_hasNullPeerIdentityServicesId;
    if (hasNullPeerIdentityServicesId == [equalCopy hasNullPeerIdentityServicesId])
    {
      has = self->_has;
      v6 = equalCopy[20];
      goto LABEL_18;
    }

LABEL_22:
    v16 = 0;
    goto LABEL_23;
  }

LABEL_18:
  v14 = (*&has >> 4) & 1;
  if (v14 != ((v6 >> 4) & 1))
  {
    goto LABEL_22;
  }

  if (v14)
  {
    deviceProximity = self->_deviceProximity;
    if (deviceProximity != [equalCopy deviceProximity])
    {
      goto LABEL_22;
    }
  }

  v16 = 1;
LABEL_23:

  return v16;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if (has)
  {
    PBDataWriterWriteInt32Field();
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_3;
  }

  PBDataWriterWriteBOOLField();
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_4:
    if ((has & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  PBDataWriterWriteBOOLField();
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_5:
    if ((has & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_13:
  PBDataWriterWriteBOOLField();
  if ((*&self->_has & 0x10) != 0)
  {
LABEL_6:
    PBDataWriterWriteInt32Field();
  }

LABEL_7:
}

- (void)setHasDeviceProximity:(BOOL)proximity
{
  if (proximity)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEF | v3;
}

- (void)setHasHasNullPeerIdentityServicesId:(BOOL)id
{
  if (id)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (void)setHasHasOtheriOSActiveDevices:(BOOL)devices
{
  if (devices)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasIsMeDevice:(BOOL)device
{
  if (device)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end