@interface TAAccessoryInformation
- (BOOL)isCapableOfBOM;
- (BOOL)isCapableOfPrecisionFinding;
- (BOOL)isEqual:(id)equal;
- (BOOL)isHawkeyeAudioAccessory;
- (TAAccessoryInformation)initWithCoder:(id)coder;
- (TAAccessoryInformation)initWithDeviceUUID:(id)d deviceType:(unint64_t)type productData:(id)data manufacturerName:(id)name modelName:(id)modelName firmwareVersion:(id)version accessoryCategory:(id)category accessoryCapabilities:(id)self0 serialNumber:(id)self1 protocolImplementation:(int64_t)self2 networkID:(int64_t)self3 batteryType:(int64_t)self4 batteryLevel:(int64_t)self5;
- (id)accessoryTypeNameWithAdvTypeString:(id)string;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)descriptionDictionary;
- (unsigned)productId;
- (unsigned)vendorId;
- (void)encodeWithCoder:(id)coder;
@end

@implementation TAAccessoryInformation

- (TAAccessoryInformation)initWithDeviceUUID:(id)d deviceType:(unint64_t)type productData:(id)data manufacturerName:(id)name modelName:(id)modelName firmwareVersion:(id)version accessoryCategory:(id)category accessoryCapabilities:(id)self0 serialNumber:(id)self1 protocolImplementation:(int64_t)self2 networkID:(int64_t)self3 batteryType:(int64_t)self4 batteryLevel:(int64_t)self5
{
  dCopy = d;
  dataCopy = data;
  nameCopy = name;
  modelNameCopy = modelName;
  versionCopy = version;
  categoryCopy = category;
  capabilitiesCopy = capabilities;
  numberCopy = number;
  v47.receiver = self;
  v47.super_class = TAAccessoryInformation;
  v29 = [(TAAccessoryInformation *)&v47 init];
  if (v29)
  {
    v30 = [dCopy copy];
    identifier = v29->_identifier;
    v29->_identifier = v30;

    v29->_deviceType = type;
    v32 = [dataCopy copy];
    productData = v29->_productData;
    v29->_productData = v32;

    v34 = [nameCopy copy];
    manufacturerName = v29->_manufacturerName;
    v29->_manufacturerName = v34;

    v36 = [modelNameCopy copy];
    modelName = v29->_modelName;
    v29->_modelName = v36;

    v38 = [versionCopy copy];
    firmwareVersion = v29->_firmwareVersion;
    v29->_firmwareVersion = v38;

    v40 = [categoryCopy copy];
    accessoryCategory = v29->_accessoryCategory;
    v29->_accessoryCategory = v40;

    v42 = [capabilitiesCopy copy];
    accessoryCapabilities = v29->_accessoryCapabilities;
    v29->_accessoryCapabilities = v42;

    v44 = [numberCopy copy];
    serialNumber = v29->_serialNumber;
    v29->_serialNumber = v44;

    v29->_protocolImplementation = implementation;
    v29->_networkID = iD;
    v29->_batteryType = batteryType;
    v29->_batteryLevel = level;
  }

  return v29;
}

- (BOOL)isCapableOfPrecisionFinding
{
  accessoryCapabilities = [(TAAccessoryInformation *)self accessoryCapabilities];

  if (accessoryCapabilities && (-[TAAccessoryInformation accessoryCapabilities](self, "accessoryCapabilities"), v4 = objc_claimAutoreleasedReturnValue(), v5 = [v4 length], v4, v5 == 4) && -[TAAccessoryInformation deviceType](self, "deviceType") == 1)
  {
    accessoryCapabilities2 = [(TAAccessoryInformation *)self accessoryCapabilities];
    v7 = *[accessoryCapabilities2 bytes];

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
  accessoryCapabilities = [(TAAccessoryInformation *)self accessoryCapabilities];

  if (!accessoryCapabilities)
  {
    return 0;
  }

  accessoryCapabilities2 = [(TAAccessoryInformation *)self accessoryCapabilities];
  v5 = [accessoryCapabilities2 length];

  if (v5 != 4)
  {
    return 0;
  }

  accessoryCapabilities3 = [(TAAccessoryInformation *)self accessoryCapabilities];
  v7 = *[accessoryCapabilities3 bytes];

  return (~v7 & 0x102) == 0;
}

- (unsigned)vendorId
{
  productData = [(TAAccessoryInformation *)self productData];
  v4 = [productData length];

  if (v4 != 8)
  {
    return 0;
  }

  productData2 = [(TAAccessoryInformation *)self productData];
  v6 = [productData2 subdataWithRange:{0, 4}];

  v7 = *[v6 bytes];
  return v7;
}

- (unsigned)productId
{
  productData = [(TAAccessoryInformation *)self productData];
  v4 = [productData length];

  if (v4 != 8)
  {
    return 0;
  }

  productData2 = [(TAAccessoryInformation *)self productData];
  v6 = [productData2 subdataWithRange:{4, 4}];

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

- (id)accessoryTypeNameWithAdvTypeString:(id)string
{
  v28[2] = *MEMORY[0x277D85DE8];
  stringCopy = string;
  v5 = [(TAAccessoryInformation *)self deviceType]- 1;
  if (v5 > 3)
  {
    manufacturerName2 = @"Unknown";
    modelName2 = @"Unknown";
    v8 = @"Unknown";
  }

  else
  {
    manufacturerName2 = off_279DD1928[v5];
    modelName2 = off_279DD1948[v5];
    v8 = off_279DD1968[v5];
  }

  if (stringCopy)
  {
    v28[0] = v8;
    v28[1] = stringCopy;
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:2];
    v8 = [v9 componentsJoinedByString:@":"];
  }

  manufacturerName = [(TAAccessoryInformation *)self manufacturerName];
  v11 = [manufacturerName length];

  if (v11)
  {
    manufacturerName2 = [(TAAccessoryInformation *)self manufacturerName];
  }

  modelName = [(TAAccessoryInformation *)self modelName];
  v13 = [modelName length];

  if (v13)
  {
    modelName2 = [(TAAccessoryInformation *)self modelName];
  }

  productData = [(TAAccessoryInformation *)self productData];
  v15 = [productData length];

  if (v15 == 8)
  {
    vendorId = [(TAAccessoryInformation *)self vendorId];
    productId = [(TAAccessoryInformation *)self productId];
    v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"%X:%X", vendorId, productId];
  }

  else
  {
    v18 = @"Unknown";
  }

  if ([(__CFString *)v18 isEqualToString:@"Unknown"])
  {
    v27[0] = v8;
    v27[1] = manufacturerName2;
    v27[2] = modelName2;
    v19 = MEMORY[0x277CBEA60];
    v20 = v27;
    v21 = 3;
  }

  else
  {
    v26[0] = v8;
    v26[1] = manufacturerName2;
    v26[2] = modelName2;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v10 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = equalCopy;
      identifier = [(TAAccessoryInformation *)self identifier];
      identifier2 = [(TAAccessoryInformation *)v7 identifier];
      if (identifier != identifier2)
      {
        identifier3 = [(TAAccessoryInformation *)self identifier];
        identifier4 = [(TAAccessoryInformation *)v7 identifier];
        if (![identifier3 isEqual:identifier4])
        {
          v10 = 0;
          goto LABEL_58;
        }
      }

      deviceType = [(TAAccessoryInformation *)self deviceType];
      if (deviceType != [(TAAccessoryInformation *)v7 deviceType])
      {
        v10 = 0;
        goto LABEL_57;
      }

      productData = [(TAAccessoryInformation *)self productData];
      productData2 = [(TAAccessoryInformation *)v7 productData];
      if (productData == productData2)
      {
        v71 = identifier3;
      }

      else
      {
        productData3 = [(TAAccessoryInformation *)self productData];
        productData4 = [(TAAccessoryInformation *)v7 productData];
        if (![productData3 isEqual:?])
        {
          v10 = 0;
          goto LABEL_55;
        }

        v71 = identifier3;
        identifier3 = productData3;
      }

      manufacturerName = [(TAAccessoryInformation *)self manufacturerName];
      manufacturerName2 = [(TAAccessoryInformation *)v7 manufacturerName];
      v74 = manufacturerName;
      v72 = productData2;
      v70 = productData;
      if (manufacturerName != manufacturerName2)
      {
        manufacturerName3 = [(TAAccessoryInformation *)self manufacturerName];
        manufacturerName4 = [(TAAccessoryInformation *)v7 manufacturerName];
        v66 = manufacturerName3;
        if (![manufacturerName3 isEqual:?])
        {
          v10 = 0;
          v17 = manufacturerName2;
          v18 = v74;
LABEL_53:

LABEL_54:
          productData = v70;
          productData2 = v72;
          productData3 = identifier3;
          identifier3 = v71;
          if (v70 == v72)
          {
LABEL_56:

LABEL_57:
            if (identifier == identifier2)
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

      modelName = [(TAAccessoryInformation *)self modelName];
      modelName2 = [(TAAccessoryInformation *)v7 modelName];
      v68 = modelName;
      v63 = identifier3;
      if (modelName != modelName2)
      {
        modelName3 = [(TAAccessoryInformation *)self modelName];
        modelName4 = [(TAAccessoryInformation *)v7 modelName];
        v61 = modelName3;
        if (![modelName3 isEqual:?])
        {
          v17 = manufacturerName2;
          v10 = 0;
          v21 = modelName2;
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

      firmwareVersion = [(TAAccessoryInformation *)self firmwareVersion];
      firmwareVersion2 = [(TAAccessoryInformation *)v7 firmwareVersion];
      v64 = firmwareVersion;
      if (firmwareVersion != firmwareVersion2)
      {
        firmwareVersion3 = [(TAAccessoryInformation *)self firmwareVersion];
        firmwareVersion4 = [(TAAccessoryInformation *)v7 firmwareVersion];
        v57 = firmwareVersion3;
        if (![firmwareVersion3 isEqual:?])
        {
          v10 = 0;
          v25 = firmwareVersion2;
          goto LABEL_48;
        }
      }

      accessoryCategory = [(TAAccessoryInformation *)self accessoryCategory];
      accessoryCategory2 = [(TAAccessoryInformation *)v7 accessoryCategory];
      v59 = accessoryCategory;
      if (accessoryCategory != accessoryCategory2)
      {
        accessoryCategory3 = [(TAAccessoryInformation *)self accessoryCategory];
        accessoryCategory4 = [(TAAccessoryInformation *)v7 accessoryCategory];
        v54 = accessoryCategory3;
        if (![accessoryCategory3 isEqual:?])
        {
          v10 = 0;
          v28 = accessoryCategory2;
LABEL_46:

LABEL_47:
          v25 = firmwareVersion2;
          if (v64 == firmwareVersion2)
          {
            identifier3 = v63;
            v17 = manufacturerName2;
LABEL_50:

            v21 = modelName2;
            v22 = v68;
            if (v68 == modelName2)
            {
              goto LABEL_52;
            }

            goto LABEL_51;
          }

LABEL_48:
          identifier3 = v63;
          v17 = manufacturerName2;

          goto LABEL_50;
        }
      }

      accessoryCapabilities = [(TAAccessoryInformation *)self accessoryCapabilities];
      accessoryCapabilities2 = [(TAAccessoryInformation *)v7 accessoryCapabilities];
      v55 = accessoryCapabilities;
      v52 = accessoryCapabilities2;
      if (accessoryCapabilities != accessoryCapabilities2)
      {
        v31 = accessoryCapabilities2;
        accessoryCapabilities3 = [(TAAccessoryInformation *)self accessoryCapabilities];
        accessoryCapabilities4 = [(TAAccessoryInformation *)v7 accessoryCapabilities];
        v50 = accessoryCapabilities3;
        if (![accessoryCapabilities3 isEqual:?])
        {
          v10 = 0;
          v33 = v55;
LABEL_44:

LABEL_45:
          v28 = accessoryCategory2;
          if (v59 == accessoryCategory2)
          {
            goto LABEL_47;
          }

          goto LABEL_46;
        }
      }

      serialNumber = [(TAAccessoryInformation *)self serialNumber];
      serialNumber2 = [(TAAccessoryInformation *)v7 serialNumber];
      v51 = serialNumber;
      v36 = serialNumber == serialNumber2;
      v37 = serialNumber2;
      if (v36)
      {
        v48 = serialNumber2;
      }

      else
      {
        serialNumber3 = [(TAAccessoryInformation *)self serialNumber];
        serialNumber4 = [(TAAccessoryInformation *)v7 serialNumber];
        v47 = serialNumber3;
        if (![serialNumber3 isEqual:?])
        {
          v10 = 0;
          v44 = v51;
          goto LABEL_42;
        }

        v48 = v37;
      }

      protocolImplementation = [(TAAccessoryInformation *)self protocolImplementation];
      if (protocolImplementation == [(TAAccessoryInformation *)v7 protocolImplementation]&& (v40 = [(TAAccessoryInformation *)self networkID], v40 == [(TAAccessoryInformation *)v7 networkID]) && (v41 = [(TAAccessoryInformation *)self batteryType], v41 == [(TAAccessoryInformation *)v7 batteryType]))
      {
        batteryLevel = [(TAAccessoryInformation *)self batteryLevel];
        v10 = batteryLevel == [(TAAccessoryInformation *)v7 batteryLevel];
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
  identifier = [(TAAccessoryInformation *)self identifier];
  if (identifier)
  {
    identifier2 = [(TAAccessoryInformation *)self identifier];
    v3 = [identifier2 description];
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
  productData = [(TAAccessoryInformation *)self productData];
  if (productData)
  {
    productData2 = [(TAAccessoryInformation *)self productData];
    v5 = [productData2 description];
  }

  else
  {
    v5 = &stru_287F632C0;
  }

  v42 = v5;
  v52[2] = v5;
  v51[3] = @"manufacturer";
  manufacturerName = [(TAAccessoryInformation *)self manufacturerName];
  if (manufacturerName)
  {
    manufacturerName2 = [(TAAccessoryInformation *)self manufacturerName];
    v7 = [manufacturerName2 description];
  }

  else
  {
    v7 = &stru_287F632C0;
  }

  v41 = v7;
  v52[3] = v7;
  v51[4] = @"model";
  modelName = [(TAAccessoryInformation *)self modelName];
  if (modelName)
  {
    modelName2 = [(TAAccessoryInformation *)self modelName];
    v9 = [modelName2 description];
  }

  else
  {
    v9 = &stru_287F632C0;
  }

  v40 = v9;
  v52[4] = v9;
  v51[5] = @"FV";
  firmwareVersion = [(TAAccessoryInformation *)self firmwareVersion];
  if (firmwareVersion)
  {
    firmwareVersion2 = [(TAAccessoryInformation *)self firmwareVersion];
    v10 = [firmwareVersion2 description];
  }

  else
  {
    v10 = &stru_287F632C0;
  }

  v39 = v10;
  v52[5] = v10;
  v51[6] = @"category";
  accessoryCategory = [(TAAccessoryInformation *)self accessoryCategory];
  if (accessoryCategory)
  {
    accessoryCategory2 = [(TAAccessoryInformation *)self accessoryCategory];
    v12 = [accessoryCategory2 description];
  }

  else
  {
    v12 = &stru_287F632C0;
  }

  v38 = v12;
  v52[6] = v12;
  v51[7] = @"capabilities";
  accessoryCapabilities = [(TAAccessoryInformation *)self accessoryCapabilities];
  if (accessoryCapabilities)
  {
    accessoryCapabilities2 = [(TAAccessoryInformation *)self accessoryCapabilities];
    v13 = [accessoryCapabilities2 description];
  }

  else
  {
    v13 = &stru_287F632C0;
  }

  v37 = v13;
  v52[7] = v13;
  v51[8] = @"serialNumber";
  serialNumber = [(TAAccessoryInformation *)self serialNumber];
  if (serialNumber)
  {
    serialNumber2 = [(TAAccessoryInformation *)self serialNumber];
    v15 = [serialNumber2 description];
  }

  else
  {
    v15 = &stru_287F632C0;
  }

  v36 = v15;
  v52[8] = v15;
  v51[9] = @"protocolImplementation";
  protocolImplementation = [(TAAccessoryInformation *)self protocolImplementation];
  v48 = productData;
  if (protocolImplementation)
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
  networkID = [(TAAccessoryInformation *)self networkID];
  v47 = manufacturerName;
  if (networkID)
  {
    v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"%ld", -[TAAccessoryInformation networkID](self, "networkID")];
  }

  else
  {
    v19 = &stru_287F632C0;
  }

  v45 = modelName;
  v52[10] = v19;
  v51[11] = @"batteryType";
  batteryType = [(TAAccessoryInformation *)self batteryType];
  if (batteryType)
  {
    v21 = [MEMORY[0x277CCACA8] stringWithFormat:@"%ld", -[TAAccessoryInformation batteryType](self, "batteryType")];
  }

  else
  {
    v21 = &stru_287F632C0;
  }

  v52[11] = v21;
  v51[12] = @"batteryLevel";
  batteryLevel = [(TAAccessoryInformation *)self batteryLevel];
  if (batteryLevel)
  {
    v23 = [MEMORY[0x277CCACA8] stringWithFormat:@"%ld", -[TAAccessoryInformation batteryLevel](self, "batteryLevel")];
  }

  else
  {
    v23 = &stru_287F632C0;
  }

  v52[12] = v23;
  v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v52 forKeys:v51 count:13];
  if (batteryLevel)
  {
  }

  if (batteryType)
  {
  }

  if (networkID)
  {
  }

  if (protocolImplementation)
  {
  }

  if (serialNumber)
  {
  }

  if (accessoryCapabilities)
  {
  }

  if (accessoryCategory)
  {
  }

  if (firmwareVersion)
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

  if (identifier)
  {
  }

  v25 = *MEMORY[0x277D85DE8];

  return v24;
}

- (id)description
{
  descriptionDictionary = [(TAAccessoryInformation *)self descriptionDictionary];
  v10 = 0;
  v4 = [MEMORY[0x277CCAAA0] JSONStringFromNSDictionary:descriptionDictionary error:&v10];
  v5 = v10;
  if (v5)
  {
    v6 = TAStatusLog;
    if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_ERROR))
    {
      [(TAOutgoingRequests *)v6 description];
    }

    string = [MEMORY[0x277CCACA8] string];
  }

  else
  {
    string = v4;
  }

  v8 = string;

  return v8;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v15 = [TAAccessoryInformation allocWithZone:zone];
  identifier = [(TAAccessoryInformation *)self identifier];
  deviceType = [(TAAccessoryInformation *)self deviceType];
  productData = [(TAAccessoryInformation *)self productData];
  manufacturerName = [(TAAccessoryInformation *)self manufacturerName];
  modelName = [(TAAccessoryInformation *)self modelName];
  firmwareVersion = [(TAAccessoryInformation *)self firmwareVersion];
  accessoryCategory = [(TAAccessoryInformation *)self accessoryCategory];
  accessoryCapabilities = [(TAAccessoryInformation *)self accessoryCapabilities];
  serialNumber = [(TAAccessoryInformation *)self serialNumber];
  v10 = [(TAAccessoryInformation *)v15 initWithDeviceUUID:identifier deviceType:deviceType productData:productData manufacturerName:manufacturerName modelName:modelName firmwareVersion:firmwareVersion accessoryCategory:accessoryCategory accessoryCapabilities:accessoryCapabilities serialNumber:serialNumber protocolImplementation:[(TAAccessoryInformation *)self protocolImplementation] networkID:[(TAAccessoryInformation *)self networkID] batteryType:[(TAAccessoryInformation *)self batteryType] batteryLevel:[(TAAccessoryInformation *)self batteryLevel]];

  return v10;
}

- (void)encodeWithCoder:(id)coder
{
  identifier = self->_identifier;
  coderCopy = coder;
  [coderCopy encodeObject:identifier forKey:@"identifier"];
  [coderCopy encodeInteger:self->_deviceType forKey:@"deviceType"];
  [coderCopy encodeObject:self->_productData forKey:@"productData"];
  [coderCopy encodeObject:self->_manufacturerName forKey:@"manufacturer"];
  [coderCopy encodeObject:self->_modelName forKey:@"model"];
  [coderCopy encodeObject:self->_firmwareVersion forKey:@"FV"];
  [coderCopy encodeObject:self->_accessoryCategory forKey:@"category"];
  [coderCopy encodeObject:self->_accessoryCapabilities forKey:@"capabilities"];
  [coderCopy encodeObject:self->_serialNumber forKey:@"serialNumber"];
  [coderCopy encodeInteger:self->_protocolImplementation forKey:@"protocolImplementation"];
  [coderCopy encodeInteger:self->_networkID forKey:@"networkID"];
  [coderCopy encodeInteger:self->_batteryType forKey:@"batteryType"];
  [coderCopy encodeInteger:self->_batteryLevel forKey:@"batteryLevel"];
}

- (TAAccessoryInformation)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
  identifier = self->_identifier;
  self->_identifier = v5;

  self->_deviceType = [coderCopy decodeIntegerForKey:@"deviceType"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"productData"];
  productData = self->_productData;
  self->_productData = v7;

  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"manufacturer"];
  manufacturerName = self->_manufacturerName;
  self->_manufacturerName = v9;

  v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"model"];
  modelName = self->_modelName;
  self->_modelName = v11;

  v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"FV"];
  firmwareVersion = self->_firmwareVersion;
  self->_firmwareVersion = v13;

  v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"category"];
  accessoryCategory = self->_accessoryCategory;
  self->_accessoryCategory = v15;

  v17 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"capabilities"];
  accessoryCapabilities = self->_accessoryCapabilities;
  self->_accessoryCapabilities = v17;

  v19 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"serialNumber"];
  serialNumber = self->_serialNumber;
  self->_serialNumber = v19;

  self->_protocolImplementation = [coderCopy decodeInt32ForKey:@"protocolImplementation"];
  self->_networkID = [coderCopy decodeIntegerForKey:@"networkID"];
  self->_batteryType = [coderCopy decodeIntegerForKey:@"batteryType"];
  v21 = [coderCopy decodeIntegerForKey:@"batteryLevel"];

  self->_batteryLevel = v21;
  return self;
}

@end