@interface DADeviceStateChangeNotificationInfo
+ (id)infoWithChangedProperties:(unint64_t)properties snapshot:(id)snapshot;
- (DADeviceStateChangeNotificationInfo)initWithChangedProperties:(unint64_t)properties snapshot:(id)snapshot;
@end

@implementation DADeviceStateChangeNotificationInfo

+ (id)infoWithChangedProperties:(unint64_t)properties snapshot:(id)snapshot
{
  snapshotCopy = snapshot;
  v7 = [[self alloc] initWithChangedProperties:properties snapshot:snapshotCopy];

  return v7;
}

- (DADeviceStateChangeNotificationInfo)initWithChangedProperties:(unint64_t)properties snapshot:(id)snapshot
{
  snapshotCopy = snapshot;
  v11.receiver = self;
  v11.super_class = DADeviceStateChangeNotificationInfo;
  v8 = [(DADeviceStateChangeNotificationInfo *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_changedProperties = properties;
    objc_storeStrong(&v8->_snapshot, snapshot);
  }

  return v9;
}

@end