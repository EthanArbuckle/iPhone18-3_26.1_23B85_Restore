@interface HMDeviceCloudRecord
- (NSString)bluetoothAddress;
- (NSString)debugDescription;
- (NSString)description;
- (_TtC15audioaccessoryd19HMDeviceCloudRecord)init;
- (id)hmDeviceCloudRecordInfo;
@end

@implementation HMDeviceCloudRecord

- (NSString)bluetoothAddress
{
  v2 = *(self + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_bluetoothAddress);
  v3 = *(self + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_bluetoothAddress + 8);

  v4 = String._bridgeToObjectiveC()();

  return v4;
}

- (NSString)description
{
  v2 = self;
  HMDeviceCloudRecord.description.getter();

  v3 = String._bridgeToObjectiveC()();

  return v3;
}

- (NSString)debugDescription
{
  v2 = [(HMDeviceCloudRecord *)self description];

  return v2;
}

- (_TtC15audioaccessoryd19HMDeviceCloudRecord)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (id)hmDeviceCloudRecordInfo
{
  v2 = self;
  v3 = sub_100171664();

  return v3;
}

@end