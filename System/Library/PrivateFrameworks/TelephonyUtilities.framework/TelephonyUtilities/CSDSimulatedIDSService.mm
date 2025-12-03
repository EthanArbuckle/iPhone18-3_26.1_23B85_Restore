@interface CSDSimulatedIDSService
+ (CSDSimulatedIDSService)sharedInstance;
- (BOOL)isServiceEnabledForTelephonySubscriptionLabelIdentifier:(id)identifier;
- (BOOL)sendData:(id)data fromAccount:(id)account toDestinations:(id)destinations priority:(int64_t)priority options:(id)options identifier:(id *)identifier error:(id *)error;
- (BOOL)sendData:(id)data toDestinations:(id)destinations priority:(int64_t)priority options:(id)options identifier:(id *)identifier error:(id *)error;
- (BOOL)sendResourceAtURL:(id)l metadata:(id)metadata toDestinations:(id)destinations priority:(int64_t)priority options:(id)options identifier:(id *)identifier error:(id *)error;
- (CSDIDSServiceDependencies)service;
- (IDSAccount)account;
- (NSArray)allAliases;
- (NSArray)devices;
- (NSSet)aliases;
- (NSSet)availableOutgoingRelayCallerIDs;
- (NSString)callerID;
- (NSString)name;
- (id)accountWithCallerID:;
- (id)createGroupSessionProviderWithGroupID:(id)d participantDestinationIDs:(id)ds callerID:(id)iD account:(id)account queue:(id)queue isOneToOneModeEnabled:(BOOL)enabled localMember:(id)member avLess:(BOOL)self0 isScreenSharingRequest:(BOOL)self1 ABTestConfiguration:(id)self2 isInitiator:(BOOL)self3;
- (id)deviceDestinationsWithCapability:(id)capability localHandle:(id)handle;
- (id)devicesWithCapability:(id)capability;
- (void)addFirewallEntriesForHandleToDate:(id)date;
- (void)addFirewallEntriesForHandles:(id)handles lastSeenDate:(id)date;
- (void)addFirewallEntryForHandle:(id)handle lastSeenDate:(id)date;
- (void)addServiceDelegate:(id)delegate queue:(id)queue;
- (void)removeFirewallEntries:(id)entries;
- (void)removeServiceDelegate:(id)delegate;
- (void)setAccount:(id)account;
- (void)signData:(id)data withAlgorithm:(int64_t)algorithm completion:(id)completion;
- (void)verifySignedData:(id)data matchesExpectedData:(id)expectedData withTokenURI:(id)i forAlgorithm:(int64_t)algorithm completion:(id)completion;
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
  selfCopy = self;
  v3 = sub_1003C0C80();

  return v3;
}

- (void)setAccount:(id)account
{
  accountCopy = account;
  selfCopy = self;
  sub_1003C0E50(account);
}

- (NSArray)allAliases
{
  selfCopy = self;
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
  selfCopy = self;
  sub_1003C1080();

  v3.super.isa = Set._bridgeToObjectiveC()().super.isa;

  return v3.super.isa;
}

- (id)devicesWithCapability:(id)capability
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  sub_100006AF0(0, &qword_1006A4470, IDSDevice_ptr);
  v3.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v3.super.isa;
}

- (id)deviceDestinationsWithCapability:(id)capability localHandle:(id)handle
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  sub_10026D814(&qword_1006A5BE0, &qword_100580880);
  v4.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v4.super.isa;
}

- (void)addServiceDelegate:(id)delegate queue:(id)queue
{
  swift_unknownObjectRetain();
  queueCopy = queue;
  selfCopy = self;
  sub_1003C11EC(delegate, queueCopy);
  swift_unknownObjectRelease();
}

- (void)removeServiceDelegate:(id)delegate
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_1003C1290(delegate);
  swift_unknownObjectRelease();
}

- (BOOL)isServiceEnabledForTelephonySubscriptionLabelIdentifier:(id)identifier
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  return 0;
}

- (void)addFirewallEntriesForHandleToDate:(id)date
{
  sub_100006AF0(0, &qword_1006A2640, TUHandle_ptr);
  type metadata accessor for Date();
  sub_10000CE3C(&qword_1006A3C50, &qword_1006A2640, TUHandle_ptr);
  static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
}

- (void)addFirewallEntryForHandle:(id)handle lastSeenDate:(id)date
{
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4, v7);
  v9 = &v10 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Date._unconditionallyBridgeFromObjectiveC(_:)();
  (*(v5 + 8))(v9, v4);
}

- (void)addFirewallEntriesForHandles:(id)handles lastSeenDate:(id)date
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

- (void)removeFirewallEntries:(id)entries
{
  sub_100006AF0(0, &qword_1006A2640, TUHandle_ptr);
  sub_10000CE3C(&qword_1006A3C50, &qword_1006A2640, TUHandle_ptr);
  static Set._unconditionallyBridgeFromObjectiveC(_:)();
}

- (BOOL)sendData:(id)data fromAccount:(id)account toDestinations:(id)destinations priority:(int64_t)priority options:(id)options identifier:(id *)identifier error:(id *)error
{
  dataCopy = data;
  accountCopy = account;
  destinationsCopy = destinations;
  selfCopy = self;
  optionsCopy = options;
  v18 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v20 = v19;

  static Set._unconditionallyBridgeFromObjectiveC(_:)();
  if (optionsCopy)
  {
    static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  sub_100049B14(v18, v20);
  return 1;
}

- (id)createGroupSessionProviderWithGroupID:(id)d participantDestinationIDs:(id)ds callerID:(id)iD account:(id)account queue:(id)queue isOneToOneModeEnabled:(BOOL)enabled localMember:(id)member avLess:(BOOL)self0 isScreenSharingRequest:(BOOL)self1 ABTestConfiguration:(id)self2 isInitiator:(BOOL)self3
{
  v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v18 = v17;
  v19 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  accountCopy = account;
  queueCopy = queue;
  memberCopy = member;
  configurationCopy = configuration;
  selfCopy = self;
  sub_1003C17E4(v16, v18, v19, v25, v26, v27, queueCopy, 0, memberCopy);
  v29 = v28;

  return v29;
}

- (BOOL)sendData:(id)data toDestinations:(id)destinations priority:(int64_t)priority options:(id)options identifier:(id *)identifier error:(id *)error
{
  dataCopy = data;
  if (data)
  {
    destinationsCopy = destinations;
    optionsCopy = options;
    selfCopy = self;
    v15 = dataCopy;
    dataCopy = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v17 = v16;

    if (destinations)
    {
      goto LABEL_3;
    }

LABEL_6:
    if (!options)
    {
      goto LABEL_7;
    }

    goto LABEL_4;
  }

  destinationsCopy2 = destinations;
  optionsCopy2 = options;
  selfCopy2 = self;
  v17 = 0xF000000000000000;
  if (!destinations)
  {
    goto LABEL_6;
  }

LABEL_3:
  static Set._unconditionallyBridgeFromObjectiveC(_:)();

  if (options)
  {
LABEL_4:
    static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

LABEL_7:

  sub_100290B6C(dataCopy, v17);
  return 1;
}

- (BOOL)sendResourceAtURL:(id)l metadata:(id)metadata toDestinations:(id)destinations priority:(int64_t)priority options:(id)options identifier:(id *)identifier error:(id *)error
{
  v11 = type metadata accessor for URL();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11, v14);
  v16 = &v18 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  if (metadata)
  {
    static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  static Set._unconditionallyBridgeFromObjectiveC(_:)();
  if (options)
  {
    static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  (*(v12 + 8))(v16, v11);

  return 1;
}

- (void)signData:(id)data withAlgorithm:(int64_t)algorithm completion:(id)completion
{
  v8 = _Block_copy(completion);
  dataCopy = data;
  selfCopy = self;
  v10 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;

  _Block_copy(v8);
  sub_1003C1D74(v10, v12, algorithm, selfCopy, v8);
  _Block_release(v8);
  sub_100049B14(v10, v12);
}

- (void)verifySignedData:(id)data matchesExpectedData:(id)expectedData withTokenURI:(id)i forAlgorithm:(int64_t)algorithm completion:(id)completion
{
  v12 = _Block_copy(completion);
  dataCopy = data;
  expectedDataCopy = expectedData;
  iCopy = i;
  selfCopy = self;
  v16 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v18 = v17;

  v19 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v21 = v20;

  _Block_copy(v12);
  sub_1003C1E84(v16, v18, v19, v21, iCopy, algorithm, selfCopy, v12);
  _Block_release(v12);
  sub_100049B14(v19, v21);
  sub_100049B14(v16, v18);
}

@end