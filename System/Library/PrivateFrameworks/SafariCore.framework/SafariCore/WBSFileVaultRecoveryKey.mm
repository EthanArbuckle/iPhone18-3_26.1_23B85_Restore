@interface WBSFileVaultRecoveryKey
+ (id)serialNumberFromUniqueIdentifier:(id)identifier;
+ (id)volumeIDFromUniqueIdentifier:(id)identifier;
- (WBSFileVaultRecoveryKey)initWithCoder:(id)coder;
- (WBSFileVaultRecoveryKey)initWithKeychainDictionary:(id)dictionary savedAccount:(id)account;
- (void)encodeWithCoder:(id)coder;
@end

@implementation WBSFileVaultRecoveryKey

- (WBSFileVaultRecoveryKey)initWithKeychainDictionary:(id)dictionary savedAccount:(id)account
{
  dictionaryCopy = dictionary;
  accountCopy = account;
  v28.receiver = self;
  v28.super_class = WBSFileVaultRecoveryKey;
  v8 = [(WBSFileVaultRecoveryKey *)&v28 init];
  if (v8)
  {
    v9 = [dictionaryCopy objectForKeyedSubscript:*MEMORY[0x1E697AC30]];
    v10 = [dictionaryCopy objectForKeyedSubscript:*MEMORY[0x1E697ADC8]];
    v11 = [dictionaryCopy objectForKeyedSubscript:*MEMORY[0x1E697B3C0]];
    v12 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v11 encoding:4];
    v13 = [dictionaryCopy objectForKeyedSubscript:*MEMORY[0x1E697ACD0]];
    objc_storeStrong(&v8->_volumeID, v9);
    objc_storeStrong(&v8->_serialNumber, v10);
    objc_storeStrong(&v8->_recoveryKey, v12);
    if (v13)
    {
      distantPast = v13;
    }

    else
    {
      distantPast = [MEMORY[0x1E695DF00] distantPast];
    }

    creationDate = v8->_creationDate;
    v8->_creationDate = distantPast;

    v16 = [dictionaryCopy objectForKeyedSubscript:*MEMORY[0x1E697ACE0]];
    displayName = v8->_displayName;
    v8->_displayName = v16;

    if (accountCopy)
    {
      customTitle = [accountCopy customTitle];
      v19 = v8->_displayName;
      v8->_displayName = customTitle;

      v8->_isSharedInGroup = [accountCopy isSavedInSharedGroup];
      v8->_isSavedInPasswordsApp = 1;
      fileVaultRecoveryKeyDeviceInfo = [accountCopy fileVaultRecoveryKeyDeviceInfo];
      model = [fileVaultRecoveryKeyDeviceInfo model];
      deviceModel = v8->_deviceModel;
      v8->_deviceModel = model;

      fileVaultRecoveryKeyDeviceInfo2 = [accountCopy fileVaultRecoveryKeyDeviceInfo];
      variant = [fileVaultRecoveryKeyDeviceInfo2 variant];
      deviceVariant = v8->_deviceVariant;
      v8->_deviceVariant = variant;
    }

    v26 = v8;
  }

  return v8;
}

- (WBSFileVaultRecoveryKey)initWithCoder:(id)coder
{
  coderCopy = coder;
  v22.receiver = self;
  v22.super_class = WBSFileVaultRecoveryKey;
  v5 = [(WBSFileVaultRecoveryKey *)&v22 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"volumeID"];
    volumeID = v5->_volumeID;
    v5->_volumeID = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"serialNumber"];
    serialNumber = v5->_serialNumber;
    v5->_serialNumber = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"recoveryKey"];
    recoveryKey = v5->_recoveryKey;
    v5->_recoveryKey = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"displayName"];
    displayName = v5->_displayName;
    v5->_displayName = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"creationDate"];
    creationDate = v5->_creationDate;
    v5->_creationDate = v14;

    v5->_isSharedInGroup = [coderCopy decodeBoolForKey:@"isSharedInGroup"];
    v5->_isSavedInPasswordsApp = [coderCopy decodeBoolForKey:@"isSavedInPasswordsApp"];
    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"deviceModel"];
    deviceModel = v5->_deviceModel;
    v5->_deviceModel = v16;

    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"deviceVariant"];
    deviceVariant = v5->_deviceVariant;
    v5->_deviceVariant = v18;

    v20 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  volumeID = self->_volumeID;
  coderCopy = coder;
  [coderCopy encodeObject:volumeID forKey:@"volumeID"];
  [coderCopy encodeObject:self->_serialNumber forKey:@"serialNumber"];
  [coderCopy encodeObject:self->_recoveryKey forKey:@"recoveryKey"];
  [coderCopy encodeObject:self->_displayName forKey:@"displayName"];
  [coderCopy encodeObject:self->_creationDate forKey:@"creationDate"];
  [coderCopy encodeBool:self->_isSharedInGroup forKey:@"isSharedInGroup"];
  [coderCopy encodeBool:self->_isSavedInPasswordsApp forKey:@"isSavedInPasswordsApp"];
  [coderCopy encodeObject:self->_deviceModel forKey:@"deviceModel"];
  [coderCopy encodeObject:self->_deviceVariant forKey:@"deviceVariant"];
}

+ (id)volumeIDFromUniqueIdentifier:(id)identifier
{
  v3 = [identifier componentsSeparatedByString:@" "];
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

+ (id)serialNumberFromUniqueIdentifier:(id)identifier
{
  v3 = [identifier componentsSeparatedByString:@" "];
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