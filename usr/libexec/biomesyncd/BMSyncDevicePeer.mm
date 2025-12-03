@interface BMSyncDevicePeer
- (BMSyncDevicePeer)initWithDeviceIdentifier:(id)identifier metadata:(id)metadata protocolVersion:(unint64_t)version;
- (BMSyncDevicePeer)initWithFMResultSet:(id)set;
- (BOOL)isEqual:(id)equal;
- (id)dictionaryRepresentation;
- (id)initFromDictionary:(id)dictionary;
- (unint64_t)hash;
@end

@implementation BMSyncDevicePeer

- (BMSyncDevicePeer)initWithFMResultSet:(id)set
{
  setCopy = set;
  v5 = [setCopy stringForColumn:@"device_identifier"];
  v6 = [setCopy stringForColumn:@"ids_device_identifier"];
  v7 = [setCopy stringForColumn:@"name"];
  v8 = [setCopy stringForColumn:@"model"];
  v9 = [setCopy intForColumn:@"platform"];
  v10 = [setCopy intForColumn:@"protocol_version"];

  v11 = [[BMSyncDevicePeerMetadata alloc] initWithName:v7 model:v8 platform:v9];
  v12 = [[BMSyncDevicePeer alloc] initWithDeviceIdentifier:v5 metadata:v11 protocolVersion:v10];
  [(BMSyncDevicePeer *)v12 setIdsDeviceIdentifier:v6];

  return v12;
}

- (BMSyncDevicePeer)initWithDeviceIdentifier:(id)identifier metadata:(id)metadata protocolVersion:(unint64_t)version
{
  identifierCopy = identifier;
  metadataCopy = metadata;
  v14.receiver = self;
  v14.super_class = BMSyncDevicePeer;
  v11 = [(BMSyncDevicePeer *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_deviceIdentifier, identifier);
    objc_storeStrong(&v12->_metadata, metadata);
    v12->_protocolVersion = version;
  }

  return v12;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    deviceIdentifier = self->_deviceIdentifier;
    deviceIdentifier = [v5 deviceIdentifier];
    if ([(NSString *)deviceIdentifier isEqualToString:deviceIdentifier])
    {
      metadata = self->_metadata;
      metadata = [v5 metadata];
      if ([(BMSyncDevicePeerMetadata *)metadata isEqual:metadata])
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

- (id)initFromDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = [dictionaryCopy objectForKeyedSubscript:@"deviceIdentifier"];
  v6 = [BMSyncDevicePeerMetadata alloc];
  v7 = [dictionaryCopy objectForKeyedSubscript:@"deviceMetadata"];
  v8 = [(BMSyncDevicePeerMetadata *)v6 initFromDictionary:v7];

  v9 = [dictionaryCopy objectForKeyedSubscript:@"protocolVersion"];

  unsignedIntegerValue = [v9 unsignedIntegerValue];
  v11 = [(BMSyncDevicePeer *)self initWithDeviceIdentifier:v5 metadata:v8 protocolVersion:unsignedIntegerValue];

  return v11;
}

- (id)dictionaryRepresentation
{
  v8[0] = self->_deviceIdentifier;
  v7[0] = @"deviceIdentifier";
  v7[1] = @"deviceMetadata";
  dictionaryRepresentation = [(BMSyncDevicePeerMetadata *)self->_metadata dictionaryRepresentation];
  v8[1] = dictionaryRepresentation;
  v7[2] = @"protocolVersion";
  v4 = [NSNumber numberWithUnsignedInteger:self->_protocolVersion];
  v8[2] = v4;
  v5 = [NSDictionary dictionaryWithObjects:v8 forKeys:v7 count:3];

  return v5;
}

@end