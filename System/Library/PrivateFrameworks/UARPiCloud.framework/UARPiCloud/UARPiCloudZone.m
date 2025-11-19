@interface UARPiCloudZone
- (CKServerChangeToken)changeToken;
- (UARPiCloudZone)initWithZoneID:(id)a3 containerID:(id)a4;
- (void)setChangeToken:(id)a3;
@end

@implementation UARPiCloudZone

- (UARPiCloudZone)initWithZoneID:(id)a3 containerID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = UARPiCloudZone;
  v8 = [(UARPiCloudZone *)&v14 init];
  if (v8)
  {
    v9 = [v6 copy];
    zoneID = v8->_zoneID;
    v8->_zoneID = v9;

    v11 = [v7 copy];
    containerID = v8->_containerID;
    v8->_containerID = v11;
  }

  return v8;
}

- (void)setChangeToken:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v13 = 0;
    v5 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v4 requiringSecureCoding:1 error:&v13];
    v6 = v13;
    v7 = MEMORY[0x277CCACA8];
    containerID = self->_containerID;
    v9 = [(CKRecordZoneID *)self->_zoneID zoneName];
    v10 = [v7 stringWithFormat:@"%@_%@", containerID, v9];

    saveEntryForKey(v5, v10);
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

  changeToken = self->_changeToken;
  self->_changeToken = v4;
  v12 = v4;
}

- (CKServerChangeToken)changeToken
{
  v3 = MEMORY[0x277CCACA8];
  containerID = self->_containerID;
  v5 = [(CKRecordZoneID *)self->_zoneID zoneName];
  v6 = [v3 stringWithFormat:@"%@_%@", containerID, v5];

  if (self->_changeToken)
  {
    v7 = 0;
  }

  else
  {
    v7 = getEntryForKey(v6);
    if (v7)
    {
      v14 = 0;
      v9 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:objc_opt_class() fromData:v7 error:&v14];
      v8 = v14;
      changeToken = self->_changeToken;
      self->_changeToken = v9;

      goto LABEL_6;
    }
  }

  v8 = 0;
LABEL_6:
  v11 = self->_changeToken;
  v12 = v11;

  return v11;
}

@end