@interface WBSFileVaultRecoveryKeySaveRequest
- (WBSFileVaultRecoveryKeySaveRequest)initWithCoder:(id)coder;
- (WBSFileVaultRecoveryKeySaveRequest)initWithVolumeID:(id)d serialNumber:(id)number recoveryKey:(id)key displayName:(id)name;
- (void)encodeWithCoder:(id)coder;
@end

@implementation WBSFileVaultRecoveryKeySaveRequest

- (WBSFileVaultRecoveryKeySaveRequest)initWithVolumeID:(id)d serialNumber:(id)number recoveryKey:(id)key displayName:(id)name
{
  dCopy = d;
  numberCopy = number;
  keyCopy = key;
  nameCopy = name;
  v25.receiver = self;
  v25.super_class = WBSFileVaultRecoveryKeySaveRequest;
  v14 = [(WBSFileVaultRecoveryKeySaveRequest *)&v25 init];
  if (v14)
  {
    v15 = [dCopy copy];
    volumeID = v14->_volumeID;
    v14->_volumeID = v15;

    v17 = [numberCopy copy];
    serialNumber = v14->_serialNumber;
    v14->_serialNumber = v17;

    v19 = [keyCopy copy];
    recoveryKey = v14->_recoveryKey;
    v14->_recoveryKey = v19;

    v21 = [nameCopy copy];
    displayName = v14->_displayName;
    v14->_displayName = v21;

    v23 = v14;
  }

  return v14;
}

- (WBSFileVaultRecoveryKeySaveRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"volumeID"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"serialNumber"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"recoveryKey"];
  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"displayName"];

  v9 = [(WBSFileVaultRecoveryKeySaveRequest *)self initWithVolumeID:v5 serialNumber:v6 recoveryKey:v7 displayName:v8];
  return v9;
}

- (void)encodeWithCoder:(id)coder
{
  volumeID = self->_volumeID;
  coderCopy = coder;
  [coderCopy encodeObject:volumeID forKey:@"volumeID"];
  [coderCopy encodeObject:self->_serialNumber forKey:@"serialNumber"];
  [coderCopy encodeObject:self->_recoveryKey forKey:@"recoveryKey"];
  [coderCopy encodeObject:self->_displayName forKey:@"displayName"];
}

@end