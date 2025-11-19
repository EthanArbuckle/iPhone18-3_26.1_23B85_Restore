@interface CSDSimulatedIDSService
+ (CSDSimulatedIDSService)sharedInstance;
- (BOOL)isServiceEnabledForTelephonySubscriptionLabelIdentifier:(id)a3;
- (BOOL)sendData:(id)a3 fromAccount:(id)a4 toDestinations:(id)a5 priority:(int64_t)a6 options:(id)a7 identifier:(id *)a8 error:(id *)a9;
- (BOOL)sendData:(id)a3 toDestinations:(id)a4 priority:(int64_t)a5 options:(id)a6 identifier:(id *)a7 error:(id *)a8;
- (BOOL)sendResourceAtURL:(id)a3 metadata:(id)a4 toDestinations:(id)a5 priority:(int64_t)a6 options:(id)a7 identifier:(id *)a8 error:(id *)a9;
- (CSDIDSServiceDependencies)service;
- (IDSAccount)account;
- (NSArray)allAliases;
- (NSArray)devices;
- (NSSet)aliases;
- (NSSet)availableOutgoingRelayCallerIDs;
- (NSString)callerID;
- (NSString)name;
- (id)accountWithCallerID:;
- (id)createGroupSessionProviderWithGroupID:(id)a3 participantDestinationIDs:(id)a4 callerID:(id)a5 account:(id)a6 queue:(id)a7 isOneToOneModeEnabled:(BOOL)a8 localMember:(id)a9 avLess:(BOOL)a10 isScreenSharingRequest:(BOOL)a11 ABTestConfiguration:(id)a12 isInitiator:(BOOL)a13;
- (id)deviceDestinationsWithCapability:(id)a3 localHandle:(id)a4;
- (id)devicesWithCapability:(id)a3;
- (void)addFirewallEntriesForHandleToDate:(id)a3;
- (void)addFirewallEntriesForHandles:(id)a3 lastSeenDate:(id)a4;
- (void)addFirewallEntryForHandle:(id)a3 lastSeenDate:(id)a4;
- (void)addServiceDelegate:(id)a3 queue:(id)a4;
- (void)removeFirewallEntries:(id)a3;
- (void)removeServiceDelegate:(id)a3;
- (void)setAccount:(id)a3;
- (void)signData:(id)a3 withAlgorithm:(int64_t)a4 completion:(id)a5;
- (void)verifySignedData:(id)a3 matchesExpectedData:(id)a4 withTokenURI:(id)a5 forAlgorithm:(int64_t)a6 completion:(id)a7;
@end

@implementation CSDSimulatedIDSService

- (id)accountWithCallerID:
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  return 0;
}

+ (CSDSimulatedIDSService)sharedInstance
{
  v2 = sub_1003BEFDC();

  return v2;
}

- (NSString)name
{
  sub_1003BF0AC();
  v2 = String._bridgeToObjectiveC()();

  return v2;
}

- (CSDIDSServiceDependencies)service
{
  sub_1003C0BB0();

  return self;
}

- (NSSet)availableOutgoingRelayCallerIDs
{
  v2.super.isa = Set._bridgeToObjectiveC()().super.isa;

  return v2.super.isa;
}

- (IDSAccount)account
{
  v2 = self;
  v3 = sub_1003C0C80();

  return v3;
}

- (void)setAccount:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_1003C0E50(a3);
}

- (NSArray)allAliases
{
  v2 = self;
  sub_1003C0EC8();

  v3.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v3.super.isa;
}

- (NSArray)devices
{
  sub_100006AF0(0, &qword_1006A4470, IDSDevice_ptr);
  v2.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v2.super.isa;
}

- (NSString)callerID
{
  sub_1003C0FCC();
  if (v2)
  {
    v3 = String._bridgeToObjectiveC()();
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (NSSet)aliases
{
  v2 = self;
  sub_1003C1080();

  v3.super.isa = Set._bridgeToObjectiveC()().super.isa;

  return v3.super.isa;
}

- (id)devicesWithCapability:(id)a3
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  sub_100006AF0(0, &qword_1006A4470, IDSDevice_ptr);
  v3.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v3.super.isa;
}

- (id)deviceDestinationsWithCapability:(id)a3 localHandle:(id)a4
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  sub_10026D814(&qword_1006A5BE0, &qword_100580880);
  v4.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v4.super.isa;
}

- (void)addServiceDelegate:(id)a3 queue:(id)a4
{
  swift_unknownObjectRetain();
  v7 = a4;
  v8 = self;
  sub_1003C11EC(a3, v7);
  swift_unknownObjectRelease();
}

- (void)removeServiceDelegate:(id)a3
{
  swift_unknownObjectRetain();
  v5 = self;
  sub_1003C1290(a3);
  swift_unknownObjectRelease();
}

- (BOOL)isServiceEnabledForTelephonySubscriptionLabelIdentifier:(id)a3
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  return 0;
}

- (void)addFirewallEntriesForHandleToDate:(id)a3
{
  sub_100006AF0(0, &qword_1006A2640, TUHandle_ptr);
  type metadata accessor for Date();
  sub_10000CE3C(&qword_1006A3C50, &qword_1006A2640, TUHandle_ptr);
  static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
}

- (void)addFirewallEntryForHandle:(id)a3 lastSeenDate:(id)a4
{
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4, v7);
  v9 = &v10 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Date._unconditionallyBridgeFromObjectiveC(_:)();
  (*(v5 + 8))(v9, v4);
}

- (void)addFirewallEntriesForHandles:(id)a3 lastSeenDate:(id)a4
{
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4, v7);
  v9 = &v10 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100006AF0(0, &qword_1006A2640, TUHandle_ptr);
  static Array._unconditionallyBridgeFromObjectiveC(_:)();
  static Date._unconditionallyBridgeFromObjectiveC(_:)();

  (*(v5 + 8))(v9, v4);
}

- (void)removeFirewallEntries:(id)a3
{
  sub_100006AF0(0, &qword_1006A2640, TUHandle_ptr);
  sub_10000CE3C(&qword_1006A3C50, &qword_1006A2640, TUHandle_ptr);
  static Set._unconditionallyBridgeFromObjectiveC(_:)();
}

- (BOOL)sendData:(id)a3 fromAccount:(id)a4 toDestinations:(id)a5 priority:(int64_t)a6 options:(id)a7 identifier:(id *)a8 error:(id *)a9
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = self;
  v17 = a7;
  v18 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v20 = v19;

  static Set._unconditionallyBridgeFromObjectiveC(_:)();
  if (v17)
  {
    static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  sub_100049B14(v18, v20);
  return 1;
}

- (id)createGroupSessionProviderWithGroupID:(id)a3 participantDestinationIDs:(id)a4 callerID:(id)a5 account:(id)a6 queue:(id)a7 isOneToOneModeEnabled:(BOOL)a8 localMember:(id)a9 avLess:(BOOL)a10 isScreenSharingRequest:(BOOL)a11 ABTestConfiguration:(id)a12 isInitiator:(BOOL)a13
{
  v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v18 = v17;
  v19 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v20 = a6;
  v21 = a7;
  v22 = a9;
  v23 = a12;
  v24 = self;
  sub_1003C17E4(v16, v18, v19, v25, v26, v27, v21, 0, v22);
  v29 = v28;

  return v29;
}

- (BOOL)sendData:(id)a3 toDestinations:(id)a4 priority:(int64_t)a5 options:(id)a6 identifier:(id *)a7 error:(id *)a8
{
  v10 = a3;
  if (a3)
  {
    v12 = a4;
    v13 = a6;
    v14 = self;
    v15 = v10;
    v10 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v17 = v16;

    if (a4)
    {
      goto LABEL_3;
    }

LABEL_6:
    if (!a6)
    {
      goto LABEL_7;
    }

    goto LABEL_4;
  }

  v18 = a4;
  v19 = a6;
  v20 = self;
  v17 = 0xF000000000000000;
  if (!a4)
  {
    goto LABEL_6;
  }

LABEL_3:
  static Set._unconditionallyBridgeFromObjectiveC(_:)();

  if (a6)
  {
LABEL_4:
    static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

LABEL_7:

  sub_100290B6C(v10, v17);
  return 1;
}

- (BOOL)sendResourceAtURL:(id)a3 metadata:(id)a4 toDestinations:(id)a5 priority:(int64_t)a6 options:(id)a7 identifier:(id *)a8 error:(id *)a9
{
  v11 = type metadata accessor for URL();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11, v14);
  v16 = &v18 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  if (a4)
  {
    static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  static Set._unconditionallyBridgeFromObjectiveC(_:)();
  if (a7)
  {
    static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  (*(v12 + 8))(v16, v11);

  return 1;
}

- (void)signData:(id)a3 withAlgorithm:(int64_t)a4 completion:(id)a5
{
  v8 = _Block_copy(a5);
  v9 = a3;
  v13 = self;
  v10 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;

  _Block_copy(v8);
  sub_1003C1D74(v10, v12, a4, v13, v8);
  _Block_release(v8);
  sub_100049B14(v10, v12);
}

- (void)verifySignedData:(id)a3 matchesExpectedData:(id)a4 withTokenURI:(id)a5 forAlgorithm:(int64_t)a6 completion:(id)a7
{
  v12 = _Block_copy(a7);
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v22 = self;
  v16 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v18 = v17;

  v19 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v21 = v20;

  _Block_copy(v12);
  sub_1003C1E84(v16, v18, v19, v21, v15, a6, v22, v12);
  _Block_release(v12);
  sub_100049B14(v19, v21);
  sub_100049B14(v16, v18);
}

@end