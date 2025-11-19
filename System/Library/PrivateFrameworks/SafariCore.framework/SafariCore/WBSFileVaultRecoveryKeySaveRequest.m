@interface WBSFileVaultRecoveryKeySaveRequest
- (WBSFileVaultRecoveryKeySaveRequest)initWithCoder:(id)a3;
- (WBSFileVaultRecoveryKeySaveRequest)initWithVolumeID:(id)a3 serialNumber:(id)a4 recoveryKey:(id)a5 displayName:(id)a6;
- (void)encodeWithCoder:(id)a3;
@end

@implementation WBSFileVaultRecoveryKeySaveRequest

- (WBSFileVaultRecoveryKeySaveRequest)initWithVolumeID:(id)a3 serialNumber:(id)a4 recoveryKey:(id)a5 displayName:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v25.receiver = self;
  v25.super_class = WBSFileVaultRecoveryKeySaveRequest;
  v14 = [(WBSFileVaultRecoveryKeySaveRequest *)&v25 init];
  if (v14)
  {
    v15 = [v10 copy];
    volumeID = v14->_volumeID;
    v14->_volumeID = v15;

    v17 = [v11 copy];
    serialNumber = v14->_serialNumber;
    v14->_serialNumber = v17;

    v19 = [v12 copy];
    recoveryKey = v14->_recoveryKey;
    v14->_recoveryKey = v19;

    v21 = [v13 copy];
    displayName = v14->_displayName;
    v14->_displayName = v21;

    v23 = v14;
  }

  return v14;
}

- (WBSFileVaultRecoveryKeySaveRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"volumeID"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"serialNumber"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"recoveryKey"];
  v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"displayName"];

  v9 = [(WBSFileVaultRecoveryKeySaveRequest *)self initWithVolumeID:v5 serialNumber:v6 recoveryKey:v7 displayName:v8];
  return v9;
}

- (void)encodeWithCoder:(id)a3
{
  volumeID = self->_volumeID;
  v5 = a3;
  [v5 encodeObject:volumeID forKey:@"volumeID"];
  [v5 encodeObject:self->_serialNumber forKey:@"serialNumber"];
  [v5 encodeObject:self->_recoveryKey forKey:@"recoveryKey"];
  [v5 encodeObject:self->_displayName forKey:@"displayName"];
}

@end