@interface RPLReplicatorDevice
- (RPLReplicatorDevice)initWithDeviceID:(id)d relationshipID:(id)iD name:(id)name deviceType:(unint64_t)type initialDiscoveryDate:(id)date;
- (id)description;
@end

@implementation RPLReplicatorDevice

- (RPLReplicatorDevice)initWithDeviceID:(id)d relationshipID:(id)iD name:(id)name deviceType:(unint64_t)type initialDiscoveryDate:(id)date
{
  dCopy = d;
  iDCopy = iD;
  nameCopy = name;
  dateCopy = date;
  v24.receiver = self;
  v24.super_class = RPLReplicatorDevice;
  v16 = [(RPLReplicatorDevice *)&v24 init];
  if (v16)
  {
    v17 = [dCopy copy];
    deviceID = v16->_deviceID;
    v16->_deviceID = v17;

    v19 = [iDCopy copy];
    relationshipID = v16->_relationshipID;
    v16->_relationshipID = v19;

    v21 = [nameCopy copy];
    name = v16->_name;
    v16->_name = v21;

    v16->_deviceType = type;
    objc_storeStrong(&v16->_initialDiscoveryDate, date);
  }

  return v16;
}

- (id)description
{
  deviceType = self->_deviceType;
  if (deviceType > 5)
  {
    v3 = 0;
  }

  else
  {
    v3 = off_1E7F124E0[deviceType];
  }

  return [MEMORY[0x1E696AEC0] stringWithFormat:@"id: %@; relationshipID: %@; name: %@; deviceType: %@; initialDiscoveryDate: %@", self->_deviceID, self->_relationshipID, self->_name, v3, self->_initialDiscoveryDate];
}

@end