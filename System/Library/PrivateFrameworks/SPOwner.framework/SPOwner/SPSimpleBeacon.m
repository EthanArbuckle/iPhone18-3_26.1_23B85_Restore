@interface SPSimpleBeacon
- (BOOL)isEqual:(id)a3;
- (SPSimpleBeacon)initWithInternalSimpleBeacon:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)debugDescription;
- (unint64_t)hash;
@end

@implementation SPSimpleBeacon

- (SPSimpleBeacon)initWithInternalSimpleBeacon:(id)a3
{
  v4 = a3;
  v28.receiver = self;
  v28.super_class = SPSimpleBeacon;
  v5 = [(SPSimpleBeacon *)&v28 init];
  if (v5)
  {
    v6 = [v4 identifier];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v8 = [v4 type];
    type = v5->_type;
    v5->_type = v8;

    v10 = [v4 groupIdentifier];
    groupIdentifier = v5->_groupIdentifier;
    v5->_groupIdentifier = v10;

    v5->_partIdentifier = [v4 partIdentifier];
    v5->_connectionAllowed = [v4 connectionAllowed];
    [v4 txPower];
    v5->_txPower = v12;
    v13 = [v4 productUUID];
    productUUID = v5->_productUUID;
    v5->_productUUID = v13;

    v5->_vendorId = [v4 vendorId];
    v5->_productId = [v4 productId];
    v15 = [v4 modelName];
    modelName = v5->_modelName;
    v5->_modelName = v15;

    v17 = [v4 manufacturerName];
    manufacturerName = v5->_manufacturerName;
    v5->_manufacturerName = v17;

    v19 = [v4 serialNumber];
    serialNumber = v5->_serialNumber;
    v5->_serialNumber = v19;

    v21 = [v4 systemVersion];
    systemVersion = v5->_systemVersion;
    v5->_systemVersion = v21;

    v23 = [v4 name];
    name = v5->_name;
    v5->_name = v23;

    v5->_batteryLevel = [v4 batteryLevel];
    v5->_connectableDeviceCount = [v4 connectableDeviceCount];
    v25 = [v4 keySyncRecord];
    keySyncRecord = v5->_keySyncRecord;
    v5->_keySyncRecord = v25;
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v13 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(SPSimpleBeacon *)self identifier];
      v7 = [(SPSimpleBeacon *)v5 identifier];
      if ([v6 isEqual:v7])
      {
        v8 = [(SPSimpleBeacon *)self type];
        v9 = [(SPSimpleBeacon *)v5 type];
        if ([v8 isEqualToString:v9] && (v10 = -[SPSimpleBeacon partIdentifier](self, "partIdentifier"), v10 == -[SPSimpleBeacon partIdentifier](v5, "partIdentifier")) && (v11 = -[SPSimpleBeacon connectionAllowed](self, "connectionAllowed"), v11 == -[SPSimpleBeacon connectionAllowed](v5, "connectionAllowed")))
        {
          v38 = [(SPSimpleBeacon *)self systemVersion];
          v39 = [(SPSimpleBeacon *)v5 systemVersion];
          if (![v38 isEqualToString:v39])
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

          v43 = [(SPSimpleBeacon *)self vendorId];
          if (v43 == [(SPSimpleBeacon *)v5 vendorId]&& (v44 = [(SPSimpleBeacon *)self productId], v44 == [(SPSimpleBeacon *)v5 productId]) && (v45 = [(SPSimpleBeacon *)self batteryLevel], v45 == [(SPSimpleBeacon *)v5 batteryLevel]) && (v46 = [(SPSimpleBeacon *)self connectableDeviceCount], v46 == [(SPSimpleBeacon *)v5 connectableDeviceCount]) && (v47 = [(SPSimpleBeacon *)self partIdentifier], v47 == [(SPSimpleBeacon *)v5 partIdentifier]))
          {
            v49 = [(SPSimpleBeacon *)self productUUID];
            v48 = [(SPSimpleBeacon *)v5 productUUID];
            v12 = [v49 isEqual:v48];
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

      v14 = [(SPSimpleBeacon *)self name];

      v15 = (v14 == 0) & v12;
      if (v14 && v12)
      {
        v16 = [(SPSimpleBeacon *)self name];
        v17 = [(SPSimpleBeacon *)v5 name];
        v15 = [v16 isEqual:v17];
      }

      v18 = [(SPSimpleBeacon *)self groupIdentifier];

      v19 = (v18 == 0) & v15;
      if (v18 && v15)
      {
        v20 = [(SPSimpleBeacon *)self groupIdentifier];
        v21 = [(SPSimpleBeacon *)v5 groupIdentifier];
        v19 = [v20 isEqual:v21];
      }

      v22 = [(SPSimpleBeacon *)self modelName];

      v23 = (v22 == 0) & v19;
      if (v22 && v19)
      {
        v24 = [(SPSimpleBeacon *)self modelName];
        v25 = [(SPSimpleBeacon *)v5 modelName];
        v23 = [v24 isEqualToString:v25];
      }

      v26 = [(SPSimpleBeacon *)self manufacturerName];

      v27 = (v26 == 0) & v23;
      if (v26 && v23)
      {
        v28 = [(SPSimpleBeacon *)self manufacturerName];
        v29 = [(SPSimpleBeacon *)v5 manufacturerName];
        v27 = [v28 isEqualToString:v29];
      }

      v30 = [(SPSimpleBeacon *)self serialNumber];

      v31 = (v30 == 0) & v27;
      if (v30 && v27)
      {
        v32 = [(SPSimpleBeacon *)self serialNumber];
        v33 = [(SPSimpleBeacon *)v5 serialNumber];
        v31 = [v32 isEqualToString:v33];
      }

      v34 = [(SPSimpleBeacon *)self keySyncRecord];

      v13 = (v34 == 0) & v31;
      if (v34 && v31)
      {
        v35 = [(SPSimpleBeacon *)self keySyncRecord];
        v36 = [(SPSimpleBeacon *)v5 keySyncRecord];
        v13 = [v35 isEqual:v36];
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
  v13 = [(SPSimpleBeacon *)self name];

  if (v13)
  {
    v14 = [(SPSimpleBeacon *)self name];
    v12 ^= [v14 hash];
  }

  v15 = [(SPSimpleBeacon *)self groupIdentifier];

  if (v15)
  {
    v16 = [(SPSimpleBeacon *)self groupIdentifier];
    v12 ^= [v16 hash];
  }

  v17 = [(SPSimpleBeacon *)self modelName];

  if (v17)
  {
    v18 = [(SPSimpleBeacon *)self modelName];
    v12 ^= [v18 hash];
  }

  v19 = [(SPSimpleBeacon *)self manufacturerName];

  if (v19)
  {
    v20 = [(SPSimpleBeacon *)self manufacturerName];
    v12 ^= [v20 hash];
  }

  v21 = [(SPSimpleBeacon *)self serialNumber];

  if (v21)
  {
    v22 = [(SPSimpleBeacon *)self serialNumber];
    v12 ^= [v22 hash];
  }

  v23 = [(SPSimpleBeacon *)self keySyncRecord];

  if (v23)
  {
    v24 = [(SPSimpleBeacon *)self keySyncRecord];
    v12 ^= [v24 hash];
  }

  return v12;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_opt_new();
  v5 = [(SPSimpleBeacon *)self identifier];
  v6 = [v5 copy];
  [v4 setIdentifier:v6];

  v7 = [(SPSimpleBeacon *)self type];
  v8 = [v7 copy];
  [v4 setType:v8];

  v9 = [(SPSimpleBeacon *)self groupIdentifier];
  v10 = [v9 copy];
  [v4 setGroupIdentifier:v10];

  [v4 setPartIdentifier:{-[SPSimpleBeacon partIdentifier](self, "partIdentifier")}];
  [v4 setConnectionAllowed:{-[SPSimpleBeacon connectionAllowed](self, "connectionAllowed")}];
  [(SPSimpleBeacon *)self txPower];
  [v4 setTxPower:?];
  v11 = [(SPSimpleBeacon *)self productUUID];
  [v4 setProductUUID:v11];

  [v4 setVendorId:{-[SPSimpleBeacon vendorId](self, "vendorId")}];
  [v4 setProductId:{-[SPSimpleBeacon productId](self, "productId")}];
  v12 = [(SPSimpleBeacon *)self modelName];
  v13 = [v12 copy];
  [v4 setModelName:v13];

  v14 = [(SPSimpleBeacon *)self manufacturerName];
  v15 = [v14 copy];
  [v4 setManufacturerName:v15];

  v16 = [(SPSimpleBeacon *)self serialNumber];
  v17 = [v16 copy];
  [v4 setSerialNumber:v17];

  v18 = [(SPSimpleBeacon *)self systemVersion];
  v19 = [v18 copy];
  [v4 setSystemVersion:v19];

  v20 = [(SPSimpleBeacon *)self name];
  v21 = [v20 copy];
  [v4 setName:v21];

  [v4 setBatteryLevel:{-[SPSimpleBeacon batteryLevel](self, "batteryLevel")}];
  [v4 setConnectableDeviceCount:{-[SPSimpleBeacon connectableDeviceCount](self, "connectableDeviceCount")}];
  v22 = [(SPSimpleBeacon *)self keySyncRecord];
  v23 = [v22 copy];
  [v4 setKeySyncRecord:v23];

  return v4;
}

- (id)debugDescription
{
  v3 = [(SPSimpleBeacon *)self groupIdentifier];

  v4 = MEMORY[0x277CCACA8];
  v5 = objc_opt_class();
  if (v3)
  {
    v6 = [(SPSimpleBeacon *)self groupIdentifier];
    v7 = [(SPSimpleBeacon *)self identifier];
    v8 = [v4 stringWithFormat:@"<%@: %p (%@) %@>", v5, self, v6, v7];
  }

  else
  {
    v6 = [(SPSimpleBeacon *)self identifier];
    v8 = [v4 stringWithFormat:@"<%@: %p %@>", v5, self, v6];
  }

  return v8;
}

@end