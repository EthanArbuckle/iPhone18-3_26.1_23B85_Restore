@interface RPLReplicatorDevice
- (RPLReplicatorDevice)initWithDeviceID:(id)a3 relationshipID:(id)a4 name:(id)a5 deviceType:(unint64_t)a6 initialDiscoveryDate:(id)a7;
- (id)description;
@end

@implementation RPLReplicatorDevice

- (RPLReplicatorDevice)initWithDeviceID:(id)a3 relationshipID:(id)a4 name:(id)a5 deviceType:(unint64_t)a6 initialDiscoveryDate:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a7;
  v24.receiver = self;
  v24.super_class = RPLReplicatorDevice;
  v16 = [(RPLReplicatorDevice *)&v24 init];
  if (v16)
  {
    v17 = [v12 copy];
    deviceID = v16->_deviceID;
    v16->_deviceID = v17;

    v19 = [v13 copy];
    relationshipID = v16->_relationshipID;
    v16->_relationshipID = v19;

    v21 = [v14 copy];
    name = v16->_name;
    v16->_name = v21;

    v16->_deviceType = a6;
    objc_storeStrong(&v16->_initialDiscoveryDate, a7);
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