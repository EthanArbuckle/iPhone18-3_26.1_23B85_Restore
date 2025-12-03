@interface UARPiCloudZone
- (CKServerChangeToken)changeToken;
- (UARPiCloudZone)initWithZoneID:(id)d containerID:(id)iD;
- (void)setChangeToken:(id)token;
@end

@implementation UARPiCloudZone

- (UARPiCloudZone)initWithZoneID:(id)d containerID:(id)iD
{
  dCopy = d;
  iDCopy = iD;
  v14.receiver = self;
  v14.super_class = UARPiCloudZone;
  v8 = [(UARPiCloudZone *)&v14 init];
  if (v8)
  {
    v9 = [dCopy copy];
    zoneID = v8->_zoneID;
    v8->_zoneID = v9;

    v11 = [iDCopy copy];
    containerID = v8->_containerID;
    v8->_containerID = v11;
  }

  return v8;
}

- (void)setChangeToken:(id)token
{
  tokenCopy = token;
  if (tokenCopy)
  {
    v13 = 0;
    v5 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:tokenCopy requiringSecureCoding:1 error:&v13];
    v6 = v13;
    v7 = MEMORY[0x277CCACA8];
    containerID = self->_containerID;
    zoneName = [(CKRecordZoneID *)self->_zoneID zoneName];
    v10 = [v7 stringWithFormat:@"%@_%@", containerID, zoneName];

    saveEntryForKey(v5, v10);
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

  changeToken = self->_changeToken;
  self->_changeToken = tokenCopy;
  v12 = tokenCopy;
}

- (CKServerChangeToken)changeToken
{
  v3 = MEMORY[0x277CCACA8];
  containerID = self->_containerID;
  zoneName = [(CKRecordZoneID *)self->_zoneID zoneName];
  v6 = [v3 stringWithFormat:@"%@_%@", containerID, zoneName];

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