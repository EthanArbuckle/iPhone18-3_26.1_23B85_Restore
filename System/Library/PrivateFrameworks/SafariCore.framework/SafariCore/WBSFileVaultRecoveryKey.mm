@interface WBSFileVaultRecoveryKey
+ (id)serialNumberFromUniqueIdentifier:(id)a3;
+ (id)volumeIDFromUniqueIdentifier:(id)a3;
- (WBSFileVaultRecoveryKey)initWithCoder:(id)a3;
- (WBSFileVaultRecoveryKey)initWithKeychainDictionary:(id)a3 savedAccount:(id)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation WBSFileVaultRecoveryKey

- (WBSFileVaultRecoveryKey)initWithKeychainDictionary:(id)a3 savedAccount:(id)a4
{
  v6 = a3;
  v7 = a4;
  v28.receiver = self;
  v28.super_class = WBSFileVaultRecoveryKey;
  v8 = [(WBSFileVaultRecoveryKey *)&v28 init];
  if (v8)
  {
    v9 = [v6 objectForKeyedSubscript:*MEMORY[0x1E697AC30]];
    v10 = [v6 objectForKeyedSubscript:*MEMORY[0x1E697ADC8]];
    v11 = [v6 objectForKeyedSubscript:*MEMORY[0x1E697B3C0]];
    v12 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v11 encoding:4];
    v13 = [v6 objectForKeyedSubscript:*MEMORY[0x1E697ACD0]];
    objc_storeStrong(&v8->_volumeID, v9);
    objc_storeStrong(&v8->_serialNumber, v10);
    objc_storeStrong(&v8->_recoveryKey, v12);
    if (v13)
    {
      v14 = v13;
    }

    else
    {
      v14 = [MEMORY[0x1E695DF00] distantPast];
    }

    creationDate = v8->_creationDate;
    v8->_creationDate = v14;

    v16 = [v6 objectForKeyedSubscript:*MEMORY[0x1E697ACE0]];
    displayName = v8->_displayName;
    v8->_displayName = v16;

    if (v7)
    {
      v18 = [v7 customTitle];
      v19 = v8->_displayName;
      v8->_displayName = v18;

      v8->_isSharedInGroup = [v7 isSavedInSharedGroup];
      v8->_isSavedInPasswordsApp = 1;
      v20 = [v7 fileVaultRecoveryKeyDeviceInfo];
      v21 = [v20 model];
      deviceModel = v8->_deviceModel;
      v8->_deviceModel = v21;

      v23 = [v7 fileVaultRecoveryKeyDeviceInfo];
      v24 = [v23 variant];
      deviceVariant = v8->_deviceVariant;
      v8->_deviceVariant = v24;
    }

    v26 = v8;
  }

  return v8;
}

- (WBSFileVaultRecoveryKey)initWithCoder:(id)a3
{
  v4 = a3;
  v22.receiver = self;
  v22.super_class = WBSFileVaultRecoveryKey;
  v5 = [(WBSFileVaultRecoveryKey *)&v22 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"volumeID"];
    volumeID = v5->_volumeID;
    v5->_volumeID = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"serialNumber"];
    serialNumber = v5->_serialNumber;
    v5->_serialNumber = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"recoveryKey"];
    recoveryKey = v5->_recoveryKey;
    v5->_recoveryKey = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"displayName"];
    displayName = v5->_displayName;
    v5->_displayName = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"creationDate"];
    creationDate = v5->_creationDate;
    v5->_creationDate = v14;

    v5->_isSharedInGroup = [v4 decodeBoolForKey:@"isSharedInGroup"];
    v5->_isSavedInPasswordsApp = [v4 decodeBoolForKey:@"isSavedInPasswordsApp"];
    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"deviceModel"];
    deviceModel = v5->_deviceModel;
    v5->_deviceModel = v16;

    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"deviceVariant"];
    deviceVariant = v5->_deviceVariant;
    v5->_deviceVariant = v18;

    v20 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  volumeID = self->_volumeID;
  v5 = a3;
  [v5 encodeObject:volumeID forKey:@"volumeID"];
  [v5 encodeObject:self->_serialNumber forKey:@"serialNumber"];
  [v5 encodeObject:self->_recoveryKey forKey:@"recoveryKey"];
  [v5 encodeObject:self->_displayName forKey:@"displayName"];
  [v5 encodeObject:self->_creationDate forKey:@"creationDate"];
  [v5 encodeBool:self->_isSharedInGroup forKey:@"isSharedInGroup"];
  [v5 encodeBool:self->_isSavedInPasswordsApp forKey:@"isSavedInPasswordsApp"];
  [v5 encodeObject:self->_deviceModel forKey:@"deviceModel"];
  [v5 encodeObject:self->_deviceVariant forKey:@"deviceVariant"];
}

+ (id)volumeIDFromUniqueIdentifier:(id)a3
{
  v3 = [a3 componentsSeparatedByString:@" "];
  if ([v3 count] >= 2)
  {
    v4 = [v3 objectAtIndexedSubscript:1];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)serialNumberFromUniqueIdentifier:(id)a3
{
  v3 = [a3 componentsSeparatedByString:@" "];
  if ([v3 count])
  {
    v4 = [v3 objectAtIndexedSubscript:0];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end