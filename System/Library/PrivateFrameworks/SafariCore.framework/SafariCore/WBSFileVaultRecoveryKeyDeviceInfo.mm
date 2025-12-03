@interface WBSFileVaultRecoveryKeyDeviceInfo
- (BOOL)isEqual:(id)equal;
- (NSDictionary)dictionaryRepresentation;
- (WBSFileVaultRecoveryKeyDeviceInfo)initWithDictionaryRepresentation:(id)representation;
- (WBSFileVaultRecoveryKeyDeviceInfo)initWithSerialNumber:(id)number model:(id)model variant:(id)variant deviceTypeIdentifier:(id)identifier;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
@end

@implementation WBSFileVaultRecoveryKeyDeviceInfo

- (WBSFileVaultRecoveryKeyDeviceInfo)initWithSerialNumber:(id)number model:(id)model variant:(id)variant deviceTypeIdentifier:(id)identifier
{
  numberCopy = number;
  modelCopy = model;
  variantCopy = variant;
  identifierCopy = identifier;
  v19.receiver = self;
  v19.super_class = WBSFileVaultRecoveryKeyDeviceInfo;
  v15 = [(WBSFileVaultRecoveryKeyDeviceInfo *)&v19 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_serialNumber, number);
    objc_storeStrong(&v16->_model, model);
    objc_storeStrong(&v16->_variant, variant);
    objc_storeStrong(&v16->_deviceTypeIdentifier, identifier);
    v17 = v16;
  }

  return v16;
}

- (WBSFileVaultRecoveryKeyDeviceInfo)initWithDictionaryRepresentation:(id)representation
{
  representationCopy = representation;
  v5 = [representationCopy objectForKeyedSubscript:@"serialNumber"];
  v6 = [representationCopy objectForKeyedSubscript:@"model"];
  v7 = [representationCopy objectForKeyedSubscript:@"variant"];
  v8 = [representationCopy objectForKeyedSubscript:@"deviceTypeIdentifier"];

  v9 = @"com.apple.macbook";
  if (v8)
  {
    v9 = v8;
  }

  v10 = v9;

  v11 = [(WBSFileVaultRecoveryKeyDeviceInfo *)self initWithSerialNumber:v5 model:v6 variant:v7 deviceTypeIdentifier:v10];
  return v11;
}

- (NSDictionary)dictionaryRepresentation
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E695DF90];
  v4 = *&self->_serialNumber;
  v10[0] = @"serialNumber";
  v10[1] = @"model";
  v11 = v4;
  v10[2] = @"deviceTypeIdentifier";
  deviceTypeIdentifier = self->_deviceTypeIdentifier;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v11 forKeys:v10 count:3];
  v6 = [v3 dictionaryWithDictionary:v5];

  variant = self->_variant;
  if (variant)
  {
    [v6 setObject:variant forKeyedSubscript:@"variant"];
  }

  v8 = *MEMORY[0x1E69E9840];

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v14 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      serialNumber = self->_serialNumber;
      serialNumber = [(WBSFileVaultRecoveryKeyDeviceInfo *)v5 serialNumber];
      if ([(NSString *)serialNumber isEqualToString:serialNumber])
      {
        model = self->_model;
        model = [(WBSFileVaultRecoveryKeyDeviceInfo *)v5 model];
        if ([(NSString *)model isEqualToString:model])
        {
          variant = self->_variant;
          variant = [(WBSFileVaultRecoveryKeyDeviceInfo *)v5 variant];
          if (WBSIsEqual(variant, variant))
          {
            deviceTypeIdentifier = self->_deviceTypeIdentifier;
            deviceTypeIdentifier = [(WBSFileVaultRecoveryKeyDeviceInfo *)v5 deviceTypeIdentifier];
            v14 = [(NSString *)deviceTypeIdentifier isEqualToString:deviceTypeIdentifier];
          }

          else
          {
            v14 = 0;
          }
        }

        else
        {
          v14 = 0;
        }
      }

      else
      {
        v14 = 0;
      }
    }

    else
    {
      v14 = 0;
    }
  }

  return v14;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_serialNumber hash];
  v4 = [(NSString *)self->_model hash]^ v3;
  v5 = [(NSString *)self->_variant hash];
  return v4 ^ v5 ^ [(NSString *)self->_deviceTypeIdentifier hash];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [WBSFileVaultRecoveryKeyDeviceInfo allocWithZone:zone];
  serialNumber = self->_serialNumber;
  model = self->_model;
  variant = self->_variant;
  deviceTypeIdentifier = self->_deviceTypeIdentifier;

  return [(WBSFileVaultRecoveryKeyDeviceInfo *)v4 initWithSerialNumber:serialNumber model:model variant:variant deviceTypeIdentifier:deviceTypeIdentifier];
}

@end