@interface DADeviceStateChangeNotificationInfo
+ (id)infoWithChangedProperties:(unint64_t)a3 snapshot:(id)a4;
- (DADeviceStateChangeNotificationInfo)initWithChangedProperties:(unint64_t)a3 snapshot:(id)a4;
@end

@implementation DADeviceStateChangeNotificationInfo

+ (id)infoWithChangedProperties:(unint64_t)a3 snapshot:(id)a4
{
  v6 = a4;
  v7 = [[a1 alloc] initWithChangedProperties:a3 snapshot:v6];

  return v7;
}

- (DADeviceStateChangeNotificationInfo)initWithChangedProperties:(unint64_t)a3 snapshot:(id)a4
{
  v7 = a4;
  v11.receiver = self;
  v11.super_class = DADeviceStateChangeNotificationInfo;
  v8 = [(DADeviceStateChangeNotificationInfo *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_changedProperties = a3;
    objc_storeStrong(&v8->_snapshot, a4);
  }

  return v9;
}

@end