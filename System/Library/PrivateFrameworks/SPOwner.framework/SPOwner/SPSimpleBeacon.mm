@interface SPSimpleBeacon
- (BOOL)isEqual:(id)equal;
- (SPSimpleBeacon)initWithInternalSimpleBeacon:(id)beacon;
- (id)copyWithZone:(_NSZone *)zone;
- (id)debugDescription;
- (unint64_t)hash;
@end

@implementation SPSimpleBeacon

- (SPSimpleBeacon)initWithInternalSimpleBeacon:(id)beacon
{
  beaconCopy = beacon;
  v28.receiver = self;
  v28.super_class = SPSimpleBeacon;
  v5 = [(SPSimpleBeacon *)&v28 init];
  if (v5)
  {
    identifier = [beaconCopy identifier];
    identifier = v5->_identifier;
    v5->_identifier = identifier;

    type = [beaconCopy type];
    type = v5->_type;
    v5->_type = type;

    groupIdentifier = [beaconCopy groupIdentifier];
    groupIdentifier = v5->_groupIdentifier;
    v5->_groupIdentifier = groupIdentifier;

    v5->_partIdentifier = [beaconCopy partIdentifier];
    v5->_connectionAllowed = [beaconCopy connectionAllowed];
    [beaconCopy txPower];
    v5->_txPower = v12;
    productUUID = [beaconCopy productUUID];
    productUUID = v5->_productUUID;
    v5->_productUUID = productUUID;

    v5->_vendorId = [beaconCopy vendorId];
    v5->_productId = [beaconCopy productId];
    modelName = [beaconCopy modelName];
    modelName = v5->_modelName;
    v5->_modelName = modelName;

    manufacturerName = [beaconCopy manufacturerName];
    manufacturerName = v5->_manufacturerName;
    v5->_manufacturerName = manufacturerName;

    serialNumber = [beaconCopy serialNumber];
    serialNumber = v5->_serialNumber;
    v5->_serialNumber = serialNumber;

    systemVersion = [beaconCopy systemVersion];
    systemVersion = v5->_systemVersion;
    v5->_systemVersion = systemVersion;

    name = [beaconCopy name];
    name = v5->_name;
    v5->_name = name;

    v5->_batteryLevel = [beaconCopy batteryLevel];
    v5->_connectableDeviceCount = [beaconCopy connectableDeviceCount];
    keySyncRecord = [beaconCopy keySyncRecord];
    keySyncRecord = v5->_keySyncRecord;
    v5->_keySyncRecord = keySyncRecord;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v13 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      identifier = [(SPSimpleBeacon *)self identifier];
      identifier2 = [(SPSimpleBeacon *)v5 identifier];
      if ([identifier isEqual:identifier2])
      {
        type = [(SPSimpleBeacon *)self type];
        type2 = [(SPSimpleBeacon *)v5 type];
        if ([type isEqualToString:type2] && (v10 = -[SPSimpleBeacon partIdentifier](self, "partIdentifier"), v10 == -[SPSimpleBeacon partIdentifier](v5, "partIdentifier")) && (v11 = -[SPSimpleBeacon connectionAllowed](self, "connectionAllowed"), v11 == -[SPSimpleBeacon connectionAllowed](v5, "connectionAllowed")))
        {
          systemVersion = [(SPSimpleBeacon *)self systemVersion];
          systemVersion2 = [(SPSimpleBeacon *)v5 systemVersion];
          if (![systemVersion isEqualToString:systemVersion2])
          {
            goto LABEL_40;
          }

          [(SPSimpleBeacon *)self txPower];
          v41 = v40;
          [(SPSimpleBeacon *)v5 txPower];
          if (v41 != v42)
          {
            goto LABEL_40;
          }

          vendorId = [(SPSimpleBeacon *)self vendorId];
          if (vendorId == [(SPSimpleBeacon *)v5 vendorId]&& (v44 = [(SPSimpleBeacon *)self productId], v44 == [(SPSimpleBeacon *)v5 productId]) && (v45 = [(SPSimpleBeacon *)self batteryLevel], v45 == [(SPSimpleBeacon *)v5 batteryLevel]) && (v46 = [(SPSimpleBeacon *)self connectableDeviceCount], v46 == [(SPSimpleBeacon *)v5 connectableDeviceCount]) && (v47 = [(SPSimpleBeacon *)self partIdentifier], v47 == [(SPSimpleBeacon *)v5 partIdentifier]))
          {
            productUUID = [(SPSimpleBeacon *)self productUUID];
            productUUID2 = [(SPSimpleBeacon *)v5 productUUID];
            v12 = [productUUID isEqual:productUUID2];
          }

          else
          {
LABEL_40:
            v12 = 0;
          }
        }

        else
        {
          v12 = 0;
        }
      }

      else
      {
        v12 = 0;
      }

      name = [(SPSimpleBeacon *)self name];

      v15 = (name == 0) & v12;
      if (name && v12)
      {
        name2 = [(SPSimpleBeacon *)self name];
        name3 = [(SPSimpleBeacon *)v5 name];
        v15 = [name2 isEqual:name3];
      }

      groupIdentifier = [(SPSimpleBeacon *)self groupIdentifier];

      v19 = (groupIdentifier == 0) & v15;
      if (groupIdentifier && v15)
      {
        groupIdentifier2 = [(SPSimpleBeacon *)self groupIdentifier];
        groupIdentifier3 = [(SPSimpleBeacon *)v5 groupIdentifier];
        v19 = [groupIdentifier2 isEqual:groupIdentifier3];
      }

      modelName = [(SPSimpleBeacon *)self modelName];

      v23 = (modelName == 0) & v19;
      if (modelName && v19)
      {
        modelName2 = [(SPSimpleBeacon *)self modelName];
        modelName3 = [(SPSimpleBeacon *)v5 modelName];
        v23 = [modelName2 isEqualToString:modelName3];
      }

      manufacturerName = [(SPSimpleBeacon *)self manufacturerName];

      v27 = (manufacturerName == 0) & v23;
      if (manufacturerName && v23)
      {
        manufacturerName2 = [(SPSimpleBeacon *)self manufacturerName];
        manufacturerName3 = [(SPSimpleBeacon *)v5 manufacturerName];
        v27 = [manufacturerName2 isEqualToString:manufacturerName3];
      }

      serialNumber = [(SPSimpleBeacon *)self serialNumber];

      v31 = (serialNumber == 0) & v27;
      if (serialNumber && v27)
      {
        serialNumber2 = [(SPSimpleBeacon *)self serialNumber];
        serialNumber3 = [(SPSimpleBeacon *)v5 serialNumber];
        v31 = [serialNumber2 isEqualToString:serialNumber3];
      }

      keySyncRecord = [(SPSimpleBeacon *)self keySyncRecord];

      v13 = (keySyncRecord == 0) & v31;
      if (keySyncRecord && v31)
      {
        keySyncRecord2 = [(SPSimpleBeacon *)self keySyncRecord];
        keySyncRecord3 = [(SPSimpleBeacon *)v5 keySyncRecord];
        v13 = [keySyncRecord2 isEqual:keySyncRecord3];
      }
    }

    else
    {
      v13 = 0;
    }
  }

  return v13;
}

- (unint64_t)hash
{
  v3 = [(NSUUID *)self->_identifier hash];
  v4 = [(NSString *)self->_type hash];
  connectionAllowed = self->_connectionAllowed;
  partIdentifier = self->_partIdentifier;
  v7 = [(NSString *)self->_systemVersion hash];
  v8 = (self->_txPower * 100.0);
  v26 = *&self->_vendorId;
  v27 = *&self->_batteryLevel;
  v9 = self->_partIdentifier;
  v10 = [(NSUUID *)self->_productUUID hash];
  v11 = veorq_s8(v26, v27);
  v12 = *&veor_s8(*v11.i8, *&vextq_s8(v11, v11, 8uLL)) ^ partIdentifier ^ v9 ^ v10 ^ v4 ^ v7 ^ v3 ^ connectionAllowed ^ v8;
  name = [(SPSimpleBeacon *)self name];

  if (name)
  {
    name2 = [(SPSimpleBeacon *)self name];
    v12 ^= [name2 hash];
  }

  groupIdentifier = [(SPSimpleBeacon *)self groupIdentifier];

  if (groupIdentifier)
  {
    groupIdentifier2 = [(SPSimpleBeacon *)self groupIdentifier];
    v12 ^= [groupIdentifier2 hash];
  }

  modelName = [(SPSimpleBeacon *)self modelName];

  if (modelName)
  {
    modelName2 = [(SPSimpleBeacon *)self modelName];
    v12 ^= [modelName2 hash];
  }

  manufacturerName = [(SPSimpleBeacon *)self manufacturerName];

  if (manufacturerName)
  {
    manufacturerName2 = [(SPSimpleBeacon *)self manufacturerName];
    v12 ^= [manufacturerName2 hash];
  }

  serialNumber = [(SPSimpleBeacon *)self serialNumber];

  if (serialNumber)
  {
    serialNumber2 = [(SPSimpleBeacon *)self serialNumber];
    v12 ^= [serialNumber2 hash];
  }

  keySyncRecord = [(SPSimpleBeacon *)self keySyncRecord];

  if (keySyncRecord)
  {
    keySyncRecord2 = [(SPSimpleBeacon *)self keySyncRecord];
    v12 ^= [keySyncRecord2 hash];
  }

  return v12;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_opt_new();
  identifier = [(SPSimpleBeacon *)self identifier];
  v6 = [identifier copy];
  [v4 setIdentifier:v6];

  type = [(SPSimpleBeacon *)self type];
  v8 = [type copy];
  [v4 setType:v8];

  groupIdentifier = [(SPSimpleBeacon *)self groupIdentifier];
  v10 = [groupIdentifier copy];
  [v4 setGroupIdentifier:v10];

  [v4 setPartIdentifier:{-[SPSimpleBeacon partIdentifier](self, "partIdentifier")}];
  [v4 setConnectionAllowed:{-[SPSimpleBeacon connectionAllowed](self, "connectionAllowed")}];
  [(SPSimpleBeacon *)self txPower];
  [v4 setTxPower:?];
  productUUID = [(SPSimpleBeacon *)self productUUID];
  [v4 setProductUUID:productUUID];

  [v4 setVendorId:{-[SPSimpleBeacon vendorId](self, "vendorId")}];
  [v4 setProductId:{-[SPSimpleBeacon productId](self, "productId")}];
  modelName = [(SPSimpleBeacon *)self modelName];
  v13 = [modelName copy];
  [v4 setModelName:v13];

  manufacturerName = [(SPSimpleBeacon *)self manufacturerName];
  v15 = [manufacturerName copy];
  [v4 setManufacturerName:v15];

  serialNumber = [(SPSimpleBeacon *)self serialNumber];
  v17 = [serialNumber copy];
  [v4 setSerialNumber:v17];

  systemVersion = [(SPSimpleBeacon *)self systemVersion];
  v19 = [systemVersion copy];
  [v4 setSystemVersion:v19];

  name = [(SPSimpleBeacon *)self name];
  v21 = [name copy];
  [v4 setName:v21];

  [v4 setBatteryLevel:{-[SPSimpleBeacon batteryLevel](self, "batteryLevel")}];
  [v4 setConnectableDeviceCount:{-[SPSimpleBeacon connectableDeviceCount](self, "connectableDeviceCount")}];
  keySyncRecord = [(SPSimpleBeacon *)self keySyncRecord];
  v23 = [keySyncRecord copy];
  [v4 setKeySyncRecord:v23];

  return v4;
}

- (id)debugDescription
{
  groupIdentifier = [(SPSimpleBeacon *)self groupIdentifier];

  v4 = MEMORY[0x277CCACA8];
  v5 = objc_opt_class();
  if (groupIdentifier)
  {
    groupIdentifier2 = [(SPSimpleBeacon *)self groupIdentifier];
    identifier = [(SPSimpleBeacon *)self identifier];
    v8 = [v4 stringWithFormat:@"<%@: %p (%@) %@>", v5, self, groupIdentifier2, identifier];
  }

  else
  {
    groupIdentifier2 = [(SPSimpleBeacon *)self identifier];
    v8 = [v4 stringWithFormat:@"<%@: %p %@>", v5, self, groupIdentifier2];
  }

  return v8;
}

@end