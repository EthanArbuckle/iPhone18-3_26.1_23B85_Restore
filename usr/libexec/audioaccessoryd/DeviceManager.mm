@interface DeviceManager
+ (_TtC15audioaccessoryd13DeviceManager)singleton;
- (BOOL)isDeviceRecordsIncomingWithAddress:(id)a3;
- (id)cloudAccountInfo;
- (id)createSoundProfileRecordStagingURL;
- (id)fetchAADeviceRecordSyncWithAddress:(id)a3;
- (id)fetchAAProxCardsInfoSyncWithAddress:(id)a3;
- (id)fetchDeviceSyncWithAddress:(id)a3;
- (id)fetchHMDeviceCloudRecordSyncWithAddress:(id)a3;
- (id)fetchMagicSettingsRecordSyncWithAddress:(id)a3;
- (id)printDebug;
- (void)addAccountMagicKeysWithCloudRecord:(id)a3;
- (void)addLegacyMagicPairingRecordsWithCloudRecord:(id)a3 userInitiated:(BOOL)a4 completion:(id)a5;
- (void)addSoundProfileRecordWithURL:(id)a3 completion:(id)a4;
- (void)deactivate;
- (void)dealloc;
- (void)deleteAccountMagicKeys;
- (void)deleteLegacyMagicPairingRecordsWithUserInitiated:(BOOL)a3 completion:(id)a4;
- (void)fetchCached;
- (void)fetchHMDeviceCloudRecordWithAddress:(id)a3 completion:(id)a4;
- (void)removeHMDeviceCloudRecordWithBluetoothAddress:(id)a3 completion:(id)a4;
- (void)updateAADeviceRecordWithRecord:(id)a3 completion:(id)a4;
- (void)updateAAProxCardsInfoWithProxCardsInfo:(id)a3 completion:(id)a4;
- (void)updateHMDeviceCloudRecordInfoWithRecordInfo:(id)a3 completion:(id)a4;
@end

@implementation DeviceManager

- (id)fetchAADeviceRecordSyncWithAddress:(id)a3
{
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;
  v7 = self;
  v8 = sub_1000F0EA0(v4, v6);

  return v8;
}

- (void)updateAADeviceRecordWithRecord:(id)a3 completion:(id)a4
{
  v6 = _Block_copy(a4);
  _Block_copy(v6);
  v7 = a3;
  v8 = self;
  sub_1000F2654(v7, v8, v6);
  _Block_release(v6);
  _Block_release(v6);
}

+ (_TtC15audioaccessoryd13DeviceManager)singleton
{
  if (qword_1002F79F0 != -1)
  {
    swift_once();
  }

  v3 = qword_100300B98;

  return v3;
}

- (void)dealloc
{
  v2 = self;
  static os_log_type_t.default.getter();
  if (qword_1002F7AE0 != -1)
  {
    swift_once();
  }

  os_log(_:dso:log:_:_:)();
  v3.receiver = v2;
  v3.super_class = type metadata accessor for DeviceManager();
  [(DeviceManager *)&v3 dealloc];
}

- (void)deactivate
{
  v2 = self;
  sub_1001049D0();
}

- (void)fetchCached
{
  v2 = self;
  sub_100104B94();
}

- (id)fetchDeviceSyncWithAddress:(id)a3
{
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;
  v7 = self;
  v8 = sub_100106A90(v4, v6);

  return v8;
}

- (void)addAccountMagicKeysWithCloudRecord:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_10010724C(v4);
}

- (void)deleteAccountMagicKeys
{
  v2 = self;
  sub_100107630();
}

- (void)addLegacyMagicPairingRecordsWithCloudRecord:(id)a3 userInitiated:(BOOL)a4 completion:(id)a5
{
  v8 = _Block_copy(a5);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  v10 = a3;
  v11 = self;
  sub_10010BE74(v10, a4, sub_1000F2C44, v9);
}

- (void)deleteLegacyMagicPairingRecordsWithUserInitiated:(BOOL)a3 completion:(id)a4
{
  v6 = _Block_copy(a4);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  v8 = self;
  sub_10010C2EC(a3, sub_1000F2C44, v7);
}

- (id)fetchMagicSettingsRecordSyncWithAddress:(id)a3
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = *(&self->super.isa + OBJC_IVAR____TtC15audioaccessoryd13DeviceManager_managerQueue);
  v5 = self;
  v6 = v4;
  sub_1000EE870(&qword_1002F8530, &qword_100227B78);
  OS_dispatch_queue.sync<A>(execute:)();

  return v8;
}

- (BOOL)isDeviceRecordsIncomingWithAddress:(id)a3
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = *(&self->super.isa + OBJC_IVAR____TtC15audioaccessoryd13DeviceManager_managerQueue);
  v5 = self;
  v6 = v4;
  OS_dispatch_queue.sync<A>(execute:)();

  return v8;
}

- (id)createSoundProfileRecordStagingURL
{
  v3 = type metadata accessor for URL();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = self;
  sub_100110050(v7);

  URL._bridgeToObjectiveC()(v9);
  v11 = v10;
  (*(v4 + 8))(v7, v3);

  return v11;
}

- (void)addSoundProfileRecordWithURL:(id)a3 completion:(id)a4
{
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = _Block_copy(a4);
  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  v13 = self;
  sub_10011046C(v10, sub_1000F2C44, v12);

  (*(v7 + 8))(v10, v6);
}

- (id)cloudAccountInfo
{
  v2 = self;
  v3 = sub_100111EA0();

  return v3;
}

- (id)printDebug
{
  v2 = self;
  sub_100103934();
  sub_1001121F4();

  v3._countAndFlagsBits = 2570;
  v3._object = 0xE200000000000000;
  String.append(_:)(v3);

  v4 = String._bridgeToObjectiveC()();

  return v4;
}

- (id)fetchAAProxCardsInfoSyncWithAddress:(id)a3
{
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;
  v7 = self;
  v8 = sub_10016E1B8(v4, v6);

  return v8;
}

- (void)updateAAProxCardsInfoWithProxCardsInfo:(id)a3 completion:(id)a4
{
  v6 = _Block_copy(a4);
  _Block_copy(v6);
  v7 = a3;
  v8 = self;
  sub_10016F830(v7, v8, v6);
  _Block_release(v6);
  _Block_release(v6);
}

- (void)fetchHMDeviceCloudRecordWithAddress:(id)a3 completion:(id)a4
{
  v5 = _Block_copy(a4);
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  v9 = swift_allocObject();
  *(v9 + 16) = v5;
  v10 = self;
  sub_100170B10(v6, v8, sub_1000F2BA0, v9, &unk_1002C04C8, sub_100172028, &unk_1002C04E0);
}

- (id)fetchHMDeviceCloudRecordSyncWithAddress:(id)a3
{
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;
  v7 = self;
  v8 = sub_1001707BC(v4, v6);

  return v8;
}

- (void)removeHMDeviceCloudRecordWithBluetoothAddress:(id)a3 completion:(id)a4
{
  v5 = _Block_copy(a4);
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  v9 = swift_allocObject();
  *(v9 + 16) = v5;
  v10 = self;
  sub_100170B10(v6, v8, sub_1000F2C44, v9, &unk_1002C03D8, sub_100172004, &unk_1002C03F0);
}

- (void)updateHMDeviceCloudRecordInfoWithRecordInfo:(id)a3 completion:(id)a4
{
  v6 = _Block_copy(a4);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  v8 = a3;
  v9 = self;
  sub_100171070(v8, sub_1000F29F0, v7);
}

@end