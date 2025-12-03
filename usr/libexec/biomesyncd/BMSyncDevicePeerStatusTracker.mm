@interface BMSyncDevicePeerStatusTracker
- (BMSyncDevicePeerStatusTracker)initWithDatabase:(id)database;
- (BOOL)setLastSyncDate:(id)date forDeviceWithIdentifier:(id)identifier;
- (id)localDeviceIdentifierCreatingIfNecessary;
- (id)localDeviceUpdatingIfNeccesaryWithProtocolVersion:(unint64_t)version;
- (void)setLocalDeviceIdentifier:(id)identifier;
@end

@implementation BMSyncDevicePeerStatusTracker

- (id)localDeviceIdentifierCreatingIfNecessary
{
  localDevice = [(BMSyncDatabase *)self->_database localDevice];
  if (localDevice)
  {
    v4 = localDevice;
  }

  else
  {
    v5 = [BMSyncDevicePeer alloc];
    v6 = +[NSUUID UUID];
    uUIDString = [v6 UUIDString];
    v8 = +[BMSyncDevicePeerMetadata devicePeerMetadata];
    v4 = [(BMSyncDevicePeer *)v5 initWithDeviceIdentifier:uUIDString metadata:v8 protocolVersion:0];

    [(BMSyncDatabase *)self->_database upsertSyncDevicePeer:v4 isMe:1];
  }

  deviceIdentifier = [(BMSyncDevicePeer *)v4 deviceIdentifier];

  return deviceIdentifier;
}

- (BMSyncDevicePeerStatusTracker)initWithDatabase:(id)database
{
  databaseCopy = database;
  v9.receiver = self;
  v9.super_class = BMSyncDevicePeerStatusTracker;
  v6 = [(BMSyncDevicePeerStatusTracker *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_database, database);
  }

  return v7;
}

- (id)localDeviceUpdatingIfNeccesaryWithProtocolVersion:(unint64_t)version
{
  localDevice = [(BMSyncDatabase *)self->_database localDevice];
  deviceIdentifier = [localDevice deviceIdentifier];
  if (!deviceIdentifier)
  {
    v7 = +[NSUUID UUID];
    deviceIdentifier = [v7 UUIDString];
  }

  v8 = [BMSyncDevicePeer alloc];
  v9 = +[BMSyncDevicePeerMetadata devicePeerMetadata];
  v10 = [(BMSyncDevicePeer *)v8 initWithDeviceIdentifier:deviceIdentifier metadata:v9 protocolVersion:version];

  if (([localDevice isEqual:v10] & 1) == 0 && -[BMSyncDatabase upsertSyncDevicePeer:isMe:](self->_database, "upsertSyncDevicePeer:isMe:", v10, 1))
  {
    v11 = v10;

    localDevice = v11;
  }

  return localDevice;
}

- (BOOL)setLastSyncDate:(id)date forDeviceWithIdentifier:(id)identifier
{
  if (identifier)
  {
    database = self->_database;

    return [(BMSyncDatabase *)database setLastSyncDate:date forDeviceWithIdentifier:?];
  }

  else
  {
    v7 = __biome_log_for_category();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      sub_10004CEE8(self, v7);
    }

    return 0;
  }
}

- (void)setLocalDeviceIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v6 = [[BMSyncDevicePeerMetadata alloc] initWithName:0 model:&stru_100079C10 platform:0];
  v5 = [[BMSyncDevicePeer alloc] initWithDeviceIdentifier:identifierCopy metadata:v6 protocolVersion:0];

  [(BMSyncDatabase *)self->_database upsertSyncDevicePeer:v5 isMe:1];
}

@end