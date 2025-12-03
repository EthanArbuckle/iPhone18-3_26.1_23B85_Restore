@interface AADeviceRecord
- (NSDate)audiogramCreationTimestamp;
- (NSString)bluetoothAddress;
- (NSString)debugDescription;
- (NSString)description;
- (_TtC15audioaccessoryd14AADeviceRecord)init;
- (_TtC15audioaccessoryd14AADeviceRecord)initWithDevice:(id)device error:(id *)error;
- (void)setAudiogramCreationTimestamp:(id)timestamp;
@end

@implementation AADeviceRecord

- (NSString)bluetoothAddress
{
  v2 = *(self + OBJC_IVAR____TtC15audioaccessoryd14AADeviceRecord_bluetoothAddress);
  v3 = *(self + OBJC_IVAR____TtC15audioaccessoryd14AADeviceRecord_bluetoothAddress + 8);

  v4 = String._bridgeToObjectiveC()();

  return v4;
}

- (NSDate)audiogramCreationTimestamp
{
  v3 = sub_1000EE870(&qword_1002F7EF0, &unk_100226C90);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v14 - v5;
  v7 = OBJC_IVAR____TtC15audioaccessoryd14AADeviceRecord_audiogramCreationTimestamp;
  swift_beginAccess();
  sub_10013250C(self + v7, v6);
  v8 = type metadata accessor for Date();
  v9 = *(v8 - 8);
  v10 = (*(v9 + 48))(v6, 1, v8);
  v11 = 0;
  if (v10 != 1)
  {
    isa = Date._bridgeToObjectiveC()().super.isa;
    (*(v9 + 8))(v6, v8);
    v11 = isa;
  }

  return v11;
}

- (void)setAudiogramCreationTimestamp:(id)timestamp
{
  v5 = sub_1000EE870(&qword_1002F7EF0, &unk_100226C90);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v13 - v7;
  if (timestamp)
  {
    static Date._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = type metadata accessor for Date();
    (*(*(v9 - 8) + 56))(v8, 0, 1, v9);
  }

  else
  {
    v10 = type metadata accessor for Date();
    (*(*(v10 - 8) + 56))(v8, 1, 1, v10);
  }

  v11 = OBJC_IVAR____TtC15audioaccessoryd14AADeviceRecord_audiogramCreationTimestamp;
  swift_beginAccess();
  selfCopy = self;
  sub_10013261C(v8, self + v11);
  swift_endAccess();
}

- (NSString)description
{
  selfCopy = self;
  AADeviceRecord.description.getter();

  v3 = String._bridgeToObjectiveC()();

  return v3;
}

- (NSString)debugDescription
{
  v2 = [(AADeviceRecord *)self description];

  return v2;
}

- (_TtC15audioaccessoryd14AADeviceRecord)initWithDevice:(id)device error:(id *)error
{
  v6 = type metadata accessor for UUID();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  deviceCopy = device;
  UUID.init()();
  v11 = objc_allocWithZone(type metadata accessor for AADeviceRecord());
  v12 = sub_100165768(v9, 0, 0xC000000000000000, deviceCopy);
  swift_getObjectType();
  v13 = *((swift_isaMask & *self) + 0x30);
  v14 = *((swift_isaMask & *self) + 0x34);
  swift_deallocPartialClassInstance();
  return v12;
}

- (_TtC15audioaccessoryd14AADeviceRecord)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end