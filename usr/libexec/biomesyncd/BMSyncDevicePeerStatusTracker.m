@interface BMSyncDevicePeerStatusTracker
- (BMSyncDevicePeerStatusTracker)initWithDatabase:(id)a3;
- (BOOL)setLastSyncDate:(id)a3 forDeviceWithIdentifier:(id)a4;
- (id)localDeviceIdentifierCreatingIfNecessary;
- (id)localDeviceUpdatingIfNeccesaryWithProtocolVersion:(unint64_t)a3;
- (void)setLocalDeviceIdentifier:(id)a3;
@end

@implementation BMSyncDevicePeerStatusTracker

- (id)localDeviceIdentifierCreatingIfNecessary
{
  v3 = [(BMSyncDatabase *)self->_database localDevice];
  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v5 = [BMSyncDevicePeer alloc];
    v6 = +[NSUUID UUID];
    v7 = [v6 UUIDString];
    v8 = +[BMSyncDevicePeerMetadata devicePeerMetadata];
    v4 = [(BMSyncDevicePeer *)v5 initWithDeviceIdentifier:v7 metadata:v8 protocolVersion:0];

    [(BMSyncDatabase *)self->_database upsertSyncDevicePeer:v4 isMe:1];
  }

  v9 = [(BMSyncDevicePeer *)v4 deviceIdentifier];

  return v9;
}

- (BMSyncDevicePeerStatusTracker)initWithDatabase:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = BMSyncDevicePeerStatusTracker;
  v6 = [(BMSyncDevicePeerStatusTracker *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_database, a3);
  }

  return v7;
}

- (id)localDeviceUpdatingIfNeccesaryWithProtocolVersion:(unint64_t)a3
{
  v5 = [(BMSyncDatabase *)self->_database localDevice];
  v6 = [v5 deviceIdentifier];
  if (!v6)
  {
    v7 = +[NSUUID UUID];
    v6 = [v7 UUIDString];
  }

  v8 = [BMSyncDevicePeer alloc];
  v9 = +[BMSyncDevicePeerMetadata devicePeerMetadata];
  v10 = [(BMSyncDevicePeer *)v8 initWithDeviceIdentifier:v6 metadata:v9 protocolVersion:a3];

  if (([v5 isEqual:v10] & 1) == 0 && -[BMSyncDatabase upsertSyncDevicePeer:isMe:](self->_database, "upsertSyncDevicePeer:isMe:", v10, 1))
  {
    v11 = v10;

    v5 = v11;
  }

  return v5;
}

- (BOOL)setLastSyncDate:(id)a3 forDeviceWithIdentifier:(id)a4
{
  if (a4)
  {
    database = self->_database;

    return [(BMSyncDatabase *)database setLastSyncDate:a3 forDeviceWithIdentifier:?];
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

- (void)setLocalDeviceIdentifier:(id)a3
{
  v4 = a3;
  v6 = [[BMSyncDevicePeerMetadata alloc] initWithName:0 model:&stru_100079C10 platform:0];
  v5 = [[BMSyncDevicePeer alloc] initWithDeviceIdentifier:v4 metadata:v6 protocolVersion:0];

  [(BMSyncDatabase *)self->_database upsertSyncDevicePeer:v5 isMe:1];
}

@end