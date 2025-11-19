@interface TAAccessoryInformation
- (BOOL)isCapableOfBOM;
- (BOOL)isCapableOfPrecisionFinding;
- (BOOL)isEqual:(id)a3;
- (BOOL)isHawkeyeAudioAccessory;
- (TAAccessoryInformation)initWithCoder:(id)a3;
- (TAAccessoryInformation)initWithDeviceUUID:(id)a3 deviceType:(unint64_t)a4 productData:(id)a5 manufacturerName:(id)a6 modelName:(id)a7 firmwareVersion:(id)a8 accessoryCategory:(id)a9 accessoryCapabilities:(id)a10 serialNumber:(id)a11 protocolImplementation:(int64_t)a12 networkID:(int64_t)a13 batteryType:(int64_t)a14 batteryLevel:(int64_t)a15;
- (id)accessoryTypeNameWithAdvTypeString:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)descriptionDictionary;
- (unsigned)productId;
- (unsigned)vendorId;
- (void)encodeWithCoder:(id)a3;
@end

@implementation TAAccessoryInformation

- (TAAccessoryInformation)initWithDeviceUUID:(id)a3 deviceType:(unint64_t)a4 productData:(id)a5 manufacturerName:(id)a6 modelName:(id)a7 firmwareVersion:(id)a8 accessoryCategory:(id)a9 accessoryCapabilities:(id)a10 serialNumber:(id)a11 protocolImplementation:(int64_t)a12 networkID:(int64_t)a13 batteryType:(int64_t)a14 batteryLevel:(int64_t)a15
{
  v21 = a3;
  v22 = a5;
  v23 = a6;
  v24 = a7;
  v25 = a8;
  v26 = a9;
  v27 = a10;
  v28 = a11;
  v47.receiver = self;
  v47.super_class = TAAccessoryInformation;
  v29 = [(TAAccessoryInformation *)&v47 init];
  if (v29)
  {
    v30 = [v21 copy];
    identifier = v29->_identifier;
    v29->_identifier = v30;

    v29->_deviceType = a4;
    v32 = [v22 copy];
    productData = v29->_productData;
    v29->_productData = v32;

    v34 = [v23 copy];
    manufacturerName = v29->_manufacturerName;
    v29->_manufacturerName = v34;

    v36 = [v24 copy];
    modelName = v29->_modelName;
    v29->_modelName = v36;

    v38 = [v25 copy];
    firmwareVersion = v29->_firmwareVersion;
    v29->_firmwareVersion = v38;

    v40 = [v26 copy];
    accessoryCategory = v29->_accessoryCategory;
    v29->_accessoryCategory = v40;

    v42 = [v27 copy];
    accessoryCapabilities = v29->_accessoryCapabilities;
    v29->_accessoryCapabilities = v42;

    v44 = [v28 copy];
    serialNumber = v29->_serialNumber;
    v29->_serialNumber = v44;

    v29->_protocolImplementation = a12;
    v29->_networkID = a13;
    v29->_batteryType = a14;
    v29->_batteryLevel = a15;
  }

  return v29;
}

- (BOOL)isCapableOfPrecisionFinding
{
  v3 = [(TAAccessoryInformation *)self accessoryCapabilities];

  if (v3 && (-[TAAccessoryInformation accessoryCapabilities](self, "accessoryCapabilities"), v4 = objc_claimAutoreleasedReturnValue(), v5 = [v4 length], v4, v5 == 4) && -[TAAccessoryInformation deviceType](self, "deviceType") == 1)
  {
    v6 = [(TAAccessoryInformation *)self accessoryCapabilities];
    v7 = *[v6 bytes];

    return (v7 >> 7) & 1;
  }

  else
  {
    LOBYTE(v8) = 0;
  }

  return v8;
}

- (BOOL)isCapableOfBOM
{
  v3 = [(TAAccessoryInformation *)self accessoryCapabilities];

  if (!v3)
  {
    return 0;
  }

  v4 = [(TAAccessoryInformation *)self accessoryCapabilities];
  v5 = [v4 length];

  if (v5 != 4)
  {
    return 0;
  }

  v6 = [(TAAccessoryInformation *)self accessoryCapabilities];
  v7 = *[v6 bytes];

  return (~v7 & 0x102) == 0;
}

- (unsigned)vendorId
{
  v3 = [(TAAccessoryInformation *)self productData];
  v4 = [v3 length];

  if (v4 != 8)
  {
    return 0;
  }

  v5 = [(TAAccessoryInformation *)self productData];
  v6 = [v5 subdataWithRange:{0, 4}];

  v7 = *[v6 bytes];
  return v7;
}

- (unsigned)productId
{
  v3 = [(TAAccessoryInformation *)self productData];
  v4 = [v3 length];

  if (v4 != 8)
  {
    return 0;
  }

  v5 = [(TAAccessoryInformation *)self productData];
  v6 = [v5 subdataWithRange:{4, 4}];

  v7 = *[v6 bytes];
  return v7;
}

- (BOOL)isHawkeyeAudioAccessory
{
  if (![(TAAccessoryInformation *)self productId]|| ![(TAAccessoryInformation *)self vendorId])
  {
    return 0;
  }

  v3 = [MEMORY[0x277CBEB58] setWithArray:&unk_287F6FFB0];
  v4 = [MEMORY[0x277CBEB98] setWithArray:&unk_287F6FFC8];
  [v3 unionSet:v4];

  v5 = [MEMORY[0x277CBEB98] setWithArray:&unk_287F6FFE0];
  [v3 unionSet:v5];

  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{-[TAAccessoryInformation productId](self, "productId")}];
  if ([v3 containsObject:v6])
  {
    v7 = [(TAAccessoryInformation *)self vendorId]== 76;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)accessoryTypeNameWithAdvTypeString:(id)a3
{
  v28[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(TAAccessoryInformation *)self deviceType]- 1;
  if (v5 > 3)
  {
    v6 = @"Unknown";
    v7 = @"Unknown";
    v8 = @"Unknown";
  }

  else
  {
    v6 = off_279DD1928[v5];
    v7 = off_279DD1948[v5];
    v8 = off_279DD1968[v5];
  }

  if (v4)
  {
    v28[0] = v8;
    v28[1] = v4;
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:2];
    v8 = [v9 componentsJoinedByString:@":"];
  }

  v10 = [(TAAccessoryInformation *)self manufacturerName];
  v11 = [v10 length];

  if (v11)
  {
    v6 = [(TAAccessoryInformation *)self manufacturerName];
  }

  v12 = [(TAAccessoryInformation *)self modelName];
  v13 = [v12 length];

  if (v13)
  {
    v7 = [(TAAccessoryInformation *)self modelName];
  }

  v14 = [(TAAccessoryInformation *)self productData];
  v15 = [v14 length];

  if (v15 == 8)
  {
    v16 = [(TAAccessoryInformation *)self vendorId];
    v17 = [(TAAccessoryInformation *)self productId];
    v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"%X:%X", v16, v17];
  }

  else
  {
    v18 = @"Unknown";
  }

  if ([(__CFString *)v18 isEqualToString:@"Unknown"])
  {
    v27[0] = v8;
    v27[1] = v6;
    v27[2] = v7;
    v19 = MEMORY[0x277CBEA60];
    v20 = v27;
    v21 = 3;
  }

  else
  {
    v26[0] = v8;
    v26[1] = v6;
    v26[2] = v7;
    v26[3] = v18;
    v19 = MEMORY[0x277CBEA60];
    v20 = v26;
    v21 = 4;
  }

  v22 = [v19 arrayWithObjects:v20 count:v21];
  v23 = [v22 componentsJoinedByString:@":"];

  v24 = *MEMORY[0x277D85DE8];

  return v23;
}

- (BOOL)isEqual:(id)a3
{
  v6 = a3;
  if (self == v6)
  {
    v10 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = v6;
      v8 = [(TAAccessoryInformation *)self identifier];
      v9 = [(TAAccessoryInformation *)v7 identifier];
      if (v8 != v9)
      {
        v3 = [(TAAccessoryInformation *)self identifier];
        v4 = [(TAAccessoryInformation *)v7 identifier];
        if (![v3 isEqual:v4])
        {
          v10 = 0;
          goto LABEL_58;
        }
      }

      v11 = [(TAAccessoryInformation *)self deviceType];
      if (v11 != [(TAAccessoryInformation *)v7 deviceType])
      {
        v10 = 0;
        goto LABEL_57;
      }

      v12 = [(TAAccessoryInformation *)self productData];
      v13 = [(TAAccessoryInformation *)v7 productData];
      if (v12 == v13)
      {
        v71 = v3;
      }

      else
      {
        v14 = [(TAAccessoryInformation *)self productData];
        v69 = [(TAAccessoryInformation *)v7 productData];
        if (![v14 isEqual:?])
        {
          v10 = 0;
          goto LABEL_55;
        }

        v71 = v3;
        v3 = v14;
      }

      v15 = [(TAAccessoryInformation *)self manufacturerName];
      v73 = [(TAAccessoryInformation *)v7 manufacturerName];
      v74 = v15;
      v72 = v13;
      v70 = v12;
      if (v15 != v73)
      {
        v16 = [(TAAccessoryInformation *)self manufacturerName];
        v65 = [(TAAccessoryInformation *)v7 manufacturerName];
        v66 = v16;
        if (![v16 isEqual:?])
        {
          v10 = 0;
          v17 = v73;
          v18 = v74;
LABEL_53:

LABEL_54:
          v12 = v70;
          v13 = v72;
          v14 = v3;
          v3 = v71;
          if (v70 == v72)
          {
LABEL_56:

LABEL_57:
            if (v8 == v9)
            {
LABEL_59:

              goto LABEL_60;
            }

LABEL_58:

            goto LABEL_59;
          }

LABEL_55:

          goto LABEL_56;
        }
      }

      v19 = [(TAAccessoryInformation *)self modelName];
      v67 = [(TAAccessoryInformation *)v7 modelName];
      v68 = v19;
      v63 = v3;
      if (v19 != v67)
      {
        v20 = [(TAAccessoryInformation *)self modelName];
        v60 = [(TAAccessoryInformation *)v7 modelName];
        v61 = v20;
        if (![v20 isEqual:?])
        {
          v17 = v73;
          v10 = 0;
          v21 = v67;
          v22 = v68;
LABEL_51:

LABEL_52:
          v18 = v74;
          if (v74 == v17)
          {
            goto LABEL_54;
          }

          goto LABEL_53;
        }
      }

      v23 = [(TAAccessoryInformation *)self firmwareVersion];
      v62 = [(TAAccessoryInformation *)v7 firmwareVersion];
      v64 = v23;
      if (v23 != v62)
      {
        v24 = [(TAAccessoryInformation *)self firmwareVersion];
        v56 = [(TAAccessoryInformation *)v7 firmwareVersion];
        v57 = v24;
        if (![v24 isEqual:?])
        {
          v10 = 0;
          v25 = v62;
          goto LABEL_48;
        }
      }

      v26 = [(TAAccessoryInformation *)self accessoryCategory];
      v58 = [(TAAccessoryInformation *)v7 accessoryCategory];
      v59 = v26;
      if (v26 != v58)
      {
        v27 = [(TAAccessoryInformation *)self accessoryCategory];
        v53 = [(TAAccessoryInformation *)v7 accessoryCategory];
        v54 = v27;
        if (![v27 isEqual:?])
        {
          v10 = 0;
          v28 = v58;
LABEL_46:

LABEL_47:
          v25 = v62;
          if (v64 == v62)
          {
            v3 = v63;
            v17 = v73;
LABEL_50:

            v21 = v67;
            v22 = v68;
            if (v68 == v67)
            {
              goto LABEL_52;
            }

            goto LABEL_51;
          }

LABEL_48:
          v3 = v63;
          v17 = v73;

          goto LABEL_50;
        }
      }

      v29 = [(TAAccessoryInformation *)self accessoryCapabilities];
      v30 = [(TAAccessoryInformation *)v7 accessoryCapabilities];
      v55 = v29;
      v52 = v30;
      if (v29 != v30)
      {
        v31 = v30;
        v32 = [(TAAccessoryInformation *)self accessoryCapabilities];
        v49 = [(TAAccessoryInformation *)v7 accessoryCapabilities];
        v50 = v32;
        if (![v32 isEqual:?])
        {
          v10 = 0;
          v33 = v55;
LABEL_44:

LABEL_45:
          v28 = v58;
          if (v59 == v58)
          {
            goto LABEL_47;
          }

          goto LABEL_46;
        }
      }

      v34 = [(TAAccessoryInformation *)self serialNumber];
      v35 = [(TAAccessoryInformation *)v7 serialNumber];
      v51 = v34;
      v36 = v34 == v35;
      v37 = v35;
      if (v36)
      {
        v48 = v35;
      }

      else
      {
        v38 = [(TAAccessoryInformation *)self serialNumber];
        v46 = [(TAAccessoryInformation *)v7 serialNumber];
        v47 = v38;
        if (![v38 isEqual:?])
        {
          v10 = 0;
          v44 = v51;
          goto LABEL_42;
        }

        v48 = v37;
      }

      v39 = [(TAAccessoryInformation *)self protocolImplementation];
      if (v39 == [(TAAccessoryInformation *)v7 protocolImplementation]&& (v40 = [(TAAccessoryInformation *)self networkID], v40 == [(TAAccessoryInformation *)v7 networkID]) && (v41 = [(TAAccessoryInformation *)self batteryType], v41 == [(TAAccessoryInformation *)v7 batteryType]))
      {
        v42 = [(TAAccessoryInformation *)self batteryLevel];
        v10 = v42 == [(TAAccessoryInformation *)v7 batteryLevel];
        v43 = v10;
      }

      else
      {
        v10 = 0;
        v43 = 0;
      }

      v44 = v51;
      v37 = v48;
      if (v51 == v48)
      {
        v10 = v43;
        goto LABEL_43;
      }

LABEL_42:

LABEL_43:
      v33 = v55;
      v31 = v52;
      if (v55 == v52)
      {
        goto LABEL_45;
      }

      goto LABEL_44;
    }

    v10 = 0;
  }

LABEL_60:

  return v10;
}

- (id)descriptionDictionary
{
  v52[13] = *MEMORY[0x277D85DE8];
  v51[0] = @"identifier";
  v50 = [(TAAccessoryInformation *)self identifier];
  if (v50)
  {
    v34 = [(TAAccessoryInformation *)self identifier];
    v3 = [v34 description];
  }

  else
  {
    v3 = &stru_287F632C0;
  }

  v43 = v3;
  v52[0] = v3;
  v51[1] = @"deviceType";
  v49 = [TASPAdvertisement TASPAdvertisementDeviceTypeToString:[(TAAccessoryInformation *)self deviceType]];
  v52[1] = v49;
  v51[2] = @"productData";
  v4 = [(TAAccessoryInformation *)self productData];
  if (v4)
  {
    v33 = [(TAAccessoryInformation *)self productData];
    v5 = [v33 description];
  }

  else
  {
    v5 = &stru_287F632C0;
  }

  v42 = v5;
  v52[2] = v5;
  v51[3] = @"manufacturer";
  v6 = [(TAAccessoryInformation *)self manufacturerName];
  if (v6)
  {
    v32 = [(TAAccessoryInformation *)self manufacturerName];
    v7 = [v32 description];
  }

  else
  {
    v7 = &stru_287F632C0;
  }

  v41 = v7;
  v52[3] = v7;
  v51[4] = @"model";
  v8 = [(TAAccessoryInformation *)self modelName];
  if (v8)
  {
    v31 = [(TAAccessoryInformation *)self modelName];
    v9 = [v31 description];
  }

  else
  {
    v9 = &stru_287F632C0;
  }

  v40 = v9;
  v52[4] = v9;
  v51[5] = @"FV";
  v46 = [(TAAccessoryInformation *)self firmwareVersion];
  if (v46)
  {
    v30 = [(TAAccessoryInformation *)self firmwareVersion];
    v10 = [v30 description];
  }

  else
  {
    v10 = &stru_287F632C0;
  }

  v39 = v10;
  v52[5] = v10;
  v51[6] = @"category";
  v11 = [(TAAccessoryInformation *)self accessoryCategory];
  if (v11)
  {
    v29 = [(TAAccessoryInformation *)self accessoryCategory];
    v12 = [v29 description];
  }

  else
  {
    v12 = &stru_287F632C0;
  }

  v38 = v12;
  v52[6] = v12;
  v51[7] = @"capabilities";
  v44 = [(TAAccessoryInformation *)self accessoryCapabilities];
  if (v44)
  {
    v28 = [(TAAccessoryInformation *)self accessoryCapabilities];
    v13 = [v28 description];
  }

  else
  {
    v13 = &stru_287F632C0;
  }

  v37 = v13;
  v52[7] = v13;
  v51[8] = @"serialNumber";
  v14 = [(TAAccessoryInformation *)self serialNumber];
  if (v14)
  {
    v27 = [(TAAccessoryInformation *)self serialNumber];
    v15 = [v27 description];
  }

  else
  {
    v15 = &stru_287F632C0;
  }

  v36 = v15;
  v52[8] = v15;
  v51[9] = @"protocolImplementation";
  v16 = [(TAAccessoryInformation *)self protocolImplementation];
  v48 = v4;
  if (v16)
  {
    v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"%ld", -[TAAccessoryInformation protocolImplementation](self, "protocolImplementation")];
  }

  else
  {
    v17 = &stru_287F632C0;
  }

  v35 = v17;
  v52[9] = v17;
  v51[10] = @"networkID";
  v18 = [(TAAccessoryInformation *)self networkID];
  v47 = v6;
  if (v18)
  {
    v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"%ld", -[TAAccessoryInformation networkID](self, "networkID")];
  }

  else
  {
    v19 = &stru_287F632C0;
  }

  v45 = v8;
  v52[10] = v19;
  v51[11] = @"batteryType";
  v20 = [(TAAccessoryInformation *)self batteryType];
  if (v20)
  {
    v21 = [MEMORY[0x277CCACA8] stringWithFormat:@"%ld", -[TAAccessoryInformation batteryType](self, "batteryType")];
  }

  else
  {
    v21 = &stru_287F632C0;
  }

  v52[11] = v21;
  v51[12] = @"batteryLevel";
  v22 = [(TAAccessoryInformation *)self batteryLevel];
  if (v22)
  {
    v23 = [MEMORY[0x277CCACA8] stringWithFormat:@"%ld", -[TAAccessoryInformation batteryLevel](self, "batteryLevel")];
  }

  else
  {
    v23 = &stru_287F632C0;
  }

  v52[12] = v23;
  v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v52 forKeys:v51 count:13];
  if (v22)
  {
  }

  if (v20)
  {
  }

  if (v18)
  {
  }

  if (v16)
  {
  }

  if (v14)
  {
  }

  if (v44)
  {
  }

  if (v11)
  {
  }

  if (v46)
  {
  }

  if (v45)
  {
  }

  if (v47)
  {
  }

  if (v48)
  {
  }

  if (v50)
  {
  }

  v25 = *MEMORY[0x277D85DE8];

  return v24;
}

- (id)description
{
  v3 = [(TAAccessoryInformation *)self descriptionDictionary];
  v10 = 0;
  v4 = [MEMORY[0x277CCAAA0] JSONStringFromNSDictionary:v3 error:&v10];
  v5 = v10;
  if (v5)
  {
    v6 = TAStatusLog;
    if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_ERROR))
    {
      [(TAOutgoingRequests *)v6 description];
    }

    v7 = [MEMORY[0x277CCACA8] string];
  }

  else
  {
    v7 = v4;
  }

  v8 = v7;

  return v8;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v15 = [TAAccessoryInformation allocWithZone:a3];
  v14 = [(TAAccessoryInformation *)self identifier];
  v13 = [(TAAccessoryInformation *)self deviceType];
  v12 = [(TAAccessoryInformation *)self productData];
  v4 = [(TAAccessoryInformation *)self manufacturerName];
  v5 = [(TAAccessoryInformation *)self modelName];
  v6 = [(TAAccessoryInformation *)self firmwareVersion];
  v7 = [(TAAccessoryInformation *)self accessoryCategory];
  v8 = [(TAAccessoryInformation *)self accessoryCapabilities];
  v9 = [(TAAccessoryInformation *)self serialNumber];
  v10 = [(TAAccessoryInformation *)v15 initWithDeviceUUID:v14 deviceType:v13 productData:v12 manufacturerName:v4 modelName:v5 firmwareVersion:v6 accessoryCategory:v7 accessoryCapabilities:v8 serialNumber:v9 protocolImplementation:[(TAAccessoryInformation *)self protocolImplementation] networkID:[(TAAccessoryInformation *)self networkID] batteryType:[(TAAccessoryInformation *)self batteryType] batteryLevel:[(TAAccessoryInformation *)self batteryLevel]];

  return v10;
}

- (void)encodeWithCoder:(id)a3
{
  identifier = self->_identifier;
  v5 = a3;
  [v5 encodeObject:identifier forKey:@"identifier"];
  [v5 encodeInteger:self->_deviceType forKey:@"deviceType"];
  [v5 encodeObject:self->_productData forKey:@"productData"];
  [v5 encodeObject:self->_manufacturerName forKey:@"manufacturer"];
  [v5 encodeObject:self->_modelName forKey:@"model"];
  [v5 encodeObject:self->_firmwareVersion forKey:@"FV"];
  [v5 encodeObject:self->_accessoryCategory forKey:@"category"];
  [v5 encodeObject:self->_accessoryCapabilities forKey:@"capabilities"];
  [v5 encodeObject:self->_serialNumber forKey:@"serialNumber"];
  [v5 encodeInteger:self->_protocolImplementation forKey:@"protocolImplementation"];
  [v5 encodeInteger:self->_networkID forKey:@"networkID"];
  [v5 encodeInteger:self->_batteryType forKey:@"batteryType"];
  [v5 encodeInteger:self->_batteryLevel forKey:@"batteryLevel"];
}

- (TAAccessoryInformation)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
  identifier = self->_identifier;
  self->_identifier = v5;

  self->_deviceType = [v4 decodeIntegerForKey:@"deviceType"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"productData"];
  productData = self->_productData;
  self->_productData = v7;

  v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"manufacturer"];
  manufacturerName = self->_manufacturerName;
  self->_manufacturerName = v9;

  v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"model"];
  modelName = self->_modelName;
  self->_modelName = v11;

  v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"FV"];
  firmwareVersion = self->_firmwareVersion;
  self->_firmwareVersion = v13;

  v15 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"category"];
  accessoryCategory = self->_accessoryCategory;
  self->_accessoryCategory = v15;

  v17 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"capabilities"];
  accessoryCapabilities = self->_accessoryCapabilities;
  self->_accessoryCapabilities = v17;

  v19 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"serialNumber"];
  serialNumber = self->_serialNumber;
  self->_serialNumber = v19;

  self->_protocolImplementation = [v4 decodeInt32ForKey:@"protocolImplementation"];
  self->_networkID = [v4 decodeIntegerForKey:@"networkID"];
  self->_batteryType = [v4 decodeIntegerForKey:@"batteryType"];
  v21 = [v4 decodeIntegerForKey:@"batteryLevel"];

  self->_batteryLevel = v21;
  return self;
}

@end