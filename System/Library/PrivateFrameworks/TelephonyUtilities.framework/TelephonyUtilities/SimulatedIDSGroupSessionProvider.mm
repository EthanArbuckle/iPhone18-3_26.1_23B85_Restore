@interface SimulatedIDSGroupSessionProvider
- (CSDIDSGroupSessionProviderDelegate)delegate;
- (NSArray)participantDestinationIDs;
- (NSString)UUID;
- (_TtC13callservicesd32SimulatedIDSGroupSessionProvider)initWithGroupUUID:(id)d participantDestinationIDs:(id)ds localMember:(id)member queue:(id)queue simulatedConversationManager:(id)manager;
- (uint64_t)allowParticipants:;
- (unint64_t)aliasForParticipantID:(unint64_t)d salt:(id)salt;
- (void)addAliasesToConversationContainer:(id)container withSalt:(id)salt;
- (void)participantIDForAlias:(unint64_t)alias salt:(id)salt completion:(id)completion;
- (void)registerPluginWithOptions:(id)options;
- (void)requestDataCryptorForTopic:(id)topic completionHandler:(id)handler;
- (void)requestEncryptionKeyForParticipants:(id)participants topic:(id)topic;
- (void)sendParticipantData:(id)data withContext:(id)context;
- (void)setDelegate:(id)delegate;
- (void)setLocalParticipantType:(unsigned __int16)type memberDestinations:(id)destinations withContext:(id)context timestamp:(id)timestamp identifier:(unint64_t)identifier;
- (void)setParticipantType:(unsigned __int16)type forRemoteMemberDestinations:(id)destinations;
- (void)setPreferences:(id)preferences;
- (void)updateParticipantDestinationIDs:(id)ds withContextData:(id)data requiredCapabilities:(id)capabilities requiredLackOfCapabilities:(id)ofCapabilities triggeredLocally:(BOOL)locally;
- (void)updateParticipantDestinationIDs:(id)ds withContextData:(id)data triggeredLocally:(BOOL)locally;
- (void)updateParticipantInfo:(id)info;
@end

@implementation SimulatedIDSGroupSessionProvider

- (uint64_t)allowParticipants:
{
  static Array._unconditionallyBridgeFromObjectiveC(_:)();
}

- (_TtC13callservicesd32SimulatedIDSGroupSessionProvider)initWithGroupUUID:(id)d participantDestinationIDs:(id)ds localMember:(id)member queue:(id)queue simulatedConversationManager:(id)manager
{
  v10 = type metadata accessor for UUID();
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8, v12);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  static Array._unconditionallyBridgeFromObjectiveC(_:)();
  memberCopy = member;
  queueCopy = queue;
  managerCopy = manager;
  sub_1003BB720();
  return result;
}

- (NSArray)participantDestinationIDs
{
  selfCopy = self;
  sub_1003BCD20();

  v3.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v3.super.isa;
}

- (NSString)UUID
{
  selfCopy = self;
  sub_1003BD018();

  v3 = String._bridgeToObjectiveC()();

  return v3;
}

- (CSDIDSGroupSessionProviderDelegate)delegate
{
  v2 = sub_1003BD078();

  return v2;
}

- (void)setDelegate:(id)delegate
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_1003BD0E8();
}

- (void)setPreferences:(id)preferences
{
  static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
}

- (void)updateParticipantDestinationIDs:(id)ds withContextData:(id)data triggeredLocally:(BOOL)locally
{
  static Array._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  if (data)
  {
    dataCopy = data;
    data = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = v9;
  }

  else
  {
    v10 = 0xF000000000000000;
  }

  sub_1003BD804();
  sub_100290B6C(data, v10);
}

- (void)updateParticipantDestinationIDs:(id)ds withContextData:(id)data requiredCapabilities:(id)capabilities requiredLackOfCapabilities:(id)ofCapabilities triggeredLocally:(BOOL)locally
{
  static Array._unconditionallyBridgeFromObjectiveC(_:)();
  capabilitiesCopy = capabilities;
  ofCapabilitiesCopy = ofCapabilities;
  selfCopy = self;
  if (data)
  {
    dataCopy = data;
    data = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = v15;
  }

  else
  {
    v16 = 0xF000000000000000;
  }

  static Array._unconditionallyBridgeFromObjectiveC(_:)();

  static Array._unconditionallyBridgeFromObjectiveC(_:)();
  sub_1003BD8C4();

  sub_100290B6C(data, v16);
}

- (void)sendParticipantData:(id)data withContext:(id)context
{
  dataCopy = data;
  contextCopy = context;
  selfCopy = self;
  v8 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;

  v11 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;

  sub_100049B14(v11, v13);
  sub_100049B14(v8, v10);
}

- (void)updateParticipantInfo:(id)info
{
  infoCopy = info;
  selfCopy = self;
  v5 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  sub_100049B14(v5, v7);
}

- (void)registerPluginWithOptions:(id)options
{
  static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
}

- (void)requestDataCryptorForTopic:(id)topic completionHandler:(id)handler
{
  v5 = _Block_copy(handler);
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  _Block_copy(v5);
  selfCopy = self;
  sub_1003BE1BC(v6, v8, selfCopy, v5);
  _Block_release(v5);
}

- (void)requestEncryptionKeyForParticipants:(id)participants topic:(id)topic
{
  if (participants)
  {
    sub_100006AF0(0, &qword_1006A3480, NSNumber_ptr);
    static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  static String._unconditionallyBridgeFromObjectiveC(_:)();
}

- (void)addAliasesToConversationContainer:(id)container withSalt:(id)salt
{
  containerCopy = container;
  saltCopy = salt;
  selfCopy = self;
  v8 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;

  sub_100049B14(v8, v10);
}

- (unint64_t)aliasForParticipantID:(unint64_t)d salt:(id)salt
{
  saltCopy = salt;
  selfCopy = self;
  v8 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;

  sub_100049B14(v8, v10);
  return d;
}

- (void)participantIDForAlias:(unint64_t)alias salt:(id)salt completion:(id)completion
{
  v8 = _Block_copy(completion);
  saltCopy = salt;
  selfCopy = self;
  v10 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;

  _Block_copy(v8);
  sub_1003BE4CC(alias, v10, v12, selfCopy, v8);
  _Block_release(v8);
  sub_100049B14(v10, v12);
}

- (void)setLocalParticipantType:(unsigned __int16)type memberDestinations:(id)destinations withContext:(id)context timestamp:(id)timestamp identifier:(unint64_t)identifier
{
  sub_10026D814(&qword_1006A5BE0, &qword_100580880);
  static Array._unconditionallyBridgeFromObjectiveC(_:)();
  timestampCopy = timestamp;
  selfCopy = self;
  if (context)
  {
    contextCopy = context;
    context = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;
  }

  else
  {
    v14 = 0xF000000000000000;
  }

  sub_100290B6C(context, v14);
}

- (void)setParticipantType:(unsigned __int16)type forRemoteMemberDestinations:(id)destinations
{
  sub_10026D814(&qword_1006A5BE0, &qword_100580880);
  static Array._unconditionallyBridgeFromObjectiveC(_:)();
}

@end