@interface BMSyncDevicePeer
- (BMSyncDevicePeer)initWithDeviceIdentifier:(id)a3 metadata:(id)a4 protocolVersion:(unint64_t)a5;
- (BMSyncDevicePeer)initWithFMResultSet:(id)a3;
- (BOOL)isEqual:(id)a3;
- (id)dictionaryRepresentation;
- (id)initFromDictionary:(id)a3;
- (unint64_t)hash;
@end

@implementation BMSyncDevicePeer

- (BMSyncDevicePeer)initWithFMResultSet:(id)a3
{
  v4 = a3;
  v5 = [v4 stringForColumn:@"device_identifier"];
  v6 = [v4 stringForColumn:@"ids_device_identifier"];
  v7 = [v4 stringForColumn:@"name"];
  v8 = [v4 stringForColumn:@"model"];
  v9 = [v4 intForColumn:@"platform"];
  v10 = [v4 intForColumn:@"protocol_version"];

  v11 = [[BMSyncDevicePeerMetadata alloc] initWithName:v7 model:v8 platform:v9];
  v12 = [[BMSyncDevicePeer alloc] initWithDeviceIdentifier:v5 metadata:v11 protocolVersion:v10];
  [(BMSyncDevicePeer *)v12 setIdsDeviceIdentifier:v6];

  return v12;
}

- (BMSyncDevicePeer)initWithDeviceIdentifier:(id)a3 metadata:(id)a4 protocolVersion:(unint64_t)a5
{
  v9 = a3;
  v10 = a4;
  v14.receiver = self;
  v14.super_class = BMSyncDevicePeer;
  v11 = [(BMSyncDevicePeer *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_deviceIdentifier, a3);
    objc_storeStrong(&v12->_metadata, a4);
    v12->_protocolVersion = a5;
  }

  return v12;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    deviceIdentifier = self->_deviceIdentifier;
    v7 = [v5 deviceIdentifier];
    if ([(NSString *)deviceIdentifier isEqualToString:v7])
    {
      metadata = self->_metadata;
      v9 = [v5 metadata];
      if ([(BMSyncDevicePeerMetadata *)metadata isEqual:v9])
      {
        protocolVersion = self->_protocolVersion;
        v11 = protocolVersion == [v5 protocolVersion];
      }

      else
      {
        v11 = 0;
      }
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_deviceIdentifier hash];
  v4 = [(BMSyncDevicePeerMetadata *)self->_metadata hash]^ v3;
  v5 = [NSNumber numberWithUnsignedInteger:self->_protocolVersion];
  v6 = [v5 hash];

  return v4 ^ v6;
}

- (id)initFromDictionary:(id)a3
{
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:@"deviceIdentifier"];
  v6 = [BMSyncDevicePeerMetadata alloc];
  v7 = [v4 objectForKeyedSubscript:@"deviceMetadata"];
  v8 = [(BMSyncDevicePeerMetadata *)v6 initFromDictionary:v7];

  v9 = [v4 objectForKeyedSubscript:@"protocolVersion"];

  v10 = [v9 unsignedIntegerValue];
  v11 = [(BMSyncDevicePeer *)self initWithDeviceIdentifier:v5 metadata:v8 protocolVersion:v10];

  return v11;
}

- (id)dictionaryRepresentation
{
  v8[0] = self->_deviceIdentifier;
  v7[0] = @"deviceIdentifier";
  v7[1] = @"deviceMetadata";
  v3 = [(BMSyncDevicePeerMetadata *)self->_metadata dictionaryRepresentation];
  v8[1] = v3;
  v7[2] = @"protocolVersion";
  v4 = [NSNumber numberWithUnsignedInteger:self->_protocolVersion];
  v8[2] = v4;
  v5 = [NSDictionary dictionaryWithObjects:v8 forKeys:v7 count:3];

  return v5;
}

@end