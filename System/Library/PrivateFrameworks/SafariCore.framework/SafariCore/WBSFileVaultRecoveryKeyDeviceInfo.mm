@interface WBSFileVaultRecoveryKeyDeviceInfo
- (BOOL)isEqual:(id)a3;
- (NSDictionary)dictionaryRepresentation;
- (WBSFileVaultRecoveryKeyDeviceInfo)initWithDictionaryRepresentation:(id)a3;
- (WBSFileVaultRecoveryKeyDeviceInfo)initWithSerialNumber:(id)a3 model:(id)a4 variant:(id)a5 deviceTypeIdentifier:(id)a6;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
@end

@implementation WBSFileVaultRecoveryKeyDeviceInfo

- (WBSFileVaultRecoveryKeyDeviceInfo)initWithSerialNumber:(id)a3 model:(id)a4 variant:(id)a5 deviceTypeIdentifier:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v19.receiver = self;
  v19.super_class = WBSFileVaultRecoveryKeyDeviceInfo;
  v15 = [(WBSFileVaultRecoveryKeyDeviceInfo *)&v19 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_serialNumber, a3);
    objc_storeStrong(&v16->_model, a4);
    objc_storeStrong(&v16->_variant, a5);
    objc_storeStrong(&v16->_deviceTypeIdentifier, a6);
    v17 = v16;
  }

  return v16;
}

- (WBSFileVaultRecoveryKeyDeviceInfo)initWithDictionaryRepresentation:(id)a3
{
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:@"serialNumber"];
  v6 = [v4 objectForKeyedSubscript:@"model"];
  v7 = [v4 objectForKeyedSubscript:@"variant"];
  v8 = [v4 objectForKeyedSubscript:@"deviceTypeIdentifier"];

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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v14 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      serialNumber = self->_serialNumber;
      v7 = [(WBSFileVaultRecoveryKeyDeviceInfo *)v5 serialNumber];
      if ([(NSString *)serialNumber isEqualToString:v7])
      {
        model = self->_model;
        v9 = [(WBSFileVaultRecoveryKeyDeviceInfo *)v5 model];
        if ([(NSString *)model isEqualToString:v9])
        {
          variant = self->_variant;
          v11 = [(WBSFileVaultRecoveryKeyDeviceInfo *)v5 variant];
          if (WBSIsEqual(variant, v11))
          {
            deviceTypeIdentifier = self->_deviceTypeIdentifier;
            v13 = [(WBSFileVaultRecoveryKeyDeviceInfo *)v5 deviceTypeIdentifier];
            v14 = [(NSString *)deviceTypeIdentifier isEqualToString:v13];
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

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [WBSFileVaultRecoveryKeyDeviceInfo allocWithZone:a3];
  serialNumber = self->_serialNumber;
  model = self->_model;
  variant = self->_variant;
  deviceTypeIdentifier = self->_deviceTypeIdentifier;

  return [(WBSFileVaultRecoveryKeyDeviceInfo *)v4 initWithSerialNumber:serialNumber model:model variant:variant deviceTypeIdentifier:deviceTypeIdentifier];
}

@end