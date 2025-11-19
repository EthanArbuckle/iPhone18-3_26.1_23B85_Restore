@interface SimulatedIDSGroupSessionProvider
- (CSDIDSGroupSessionProviderDelegate)delegate;
- (NSArray)participantDestinationIDs;
- (NSString)UUID;
- (_TtC13callservicesd32SimulatedIDSGroupSessionProvider)initWithGroupUUID:(id)a3 participantDestinationIDs:(id)a4 localMember:(id)a5 queue:(id)a6 simulatedConversationManager:(id)a7;
- (uint64_t)allowParticipants:;
- (unint64_t)aliasForParticipantID:(unint64_t)a3 salt:(id)a4;
- (void)addAliasesToConversationContainer:(id)a3 withSalt:(id)a4;
- (void)participantIDForAlias:(unint64_t)a3 salt:(id)a4 completion:(id)a5;
- (void)registerPluginWithOptions:(id)a3;
- (void)requestDataCryptorForTopic:(id)a3 completionHandler:(id)a4;
- (void)requestEncryptionKeyForParticipants:(id)a3 topic:(id)a4;
- (void)sendParticipantData:(id)a3 withContext:(id)a4;
- (void)setDelegate:(id)a3;
- (void)setLocalParticipantType:(unsigned __int16)a3 memberDestinations:(id)a4 withContext:(id)a5 timestamp:(id)a6 identifier:(unint64_t)a7;
- (void)setParticipantType:(unsigned __int16)a3 forRemoteMemberDestinations:(id)a4;
- (void)setPreferences:(id)a3;
- (void)updateParticipantDestinationIDs:(id)a3 withContextData:(id)a4 requiredCapabilities:(id)a5 requiredLackOfCapabilities:(id)a6 triggeredLocally:(BOOL)a7;
- (void)updateParticipantDestinationIDs:(id)a3 withContextData:(id)a4 triggeredLocally:(BOOL)a5;
- (void)updateParticipantInfo:(id)a3;
@end

@implementation SimulatedIDSGroupSessionProvider

- (uint64_t)allowParticipants:
{
  static Array._unconditionallyBridgeFromObjectiveC(_:)();
}

- (_TtC13callservicesd32SimulatedIDSGroupSessionProvider)initWithGroupUUID:(id)a3 participantDestinationIDs:(id)a4 localMember:(id)a5 queue:(id)a6 simulatedConversationManager:(id)a7
{
  v10 = type metadata accessor for UUID();
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8, v12);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = a5;
  v14 = a6;
  v15 = a7;
  sub_1003BB720();
  return result;
}

- (NSArray)participantDestinationIDs
{
  v2 = self;
  sub_1003BCD20();

  v3.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v3.super.isa;
}

- (NSString)UUID
{
  v2 = self;
  sub_1003BD018();

  v3 = String._bridgeToObjectiveC()();

  return v3;
}

- (CSDIDSGroupSessionProviderDelegate)delegate
{
  v2 = sub_1003BD078();

  return v2;
}

- (void)setDelegate:(id)a3
{
  swift_unknownObjectRetain();
  v4 = self;
  sub_1003BD0E8();
}

- (void)setPreferences:(id)a3
{
  static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
}

- (void)updateParticipantDestinationIDs:(id)a3 withContextData:(id)a4 triggeredLocally:(BOOL)a5
{
  static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = self;
  if (a4)
  {
    v8 = a4;
    a4 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = v9;
  }

  else
  {
    v10 = 0xF000000000000000;
  }

  sub_1003BD804();
  sub_100290B6C(a4, v10);
}

- (void)updateParticipantDestinationIDs:(id)a3 withContextData:(id)a4 requiredCapabilities:(id)a5 requiredLackOfCapabilities:(id)a6 triggeredLocally:(BOOL)a7
{
  static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = a5;
  v12 = a6;
  v13 = self;
  if (a4)
  {
    v14 = a4;
    a4 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = v15;
  }

  else
  {
    v16 = 0xF000000000000000;
  }

  static Array._unconditionallyBridgeFromObjectiveC(_:)();

  static Array._unconditionallyBridgeFromObjectiveC(_:)();
  sub_1003BD8C4();

  sub_100290B6C(a4, v16);
}

- (void)sendParticipantData:(id)a3 withContext:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14 = self;
  v8 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;

  v11 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;

  sub_100049B14(v11, v13);
  sub_100049B14(v8, v10);
}

- (void)updateParticipantInfo:(id)a3
{
  v4 = a3;
  v8 = self;
  v5 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  sub_100049B14(v5, v7);
}

- (void)registerPluginWithOptions:(id)a3
{
  static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
}

- (void)requestDataCryptorForTopic:(id)a3 completionHandler:(id)a4
{
  v5 = _Block_copy(a4);
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  _Block_copy(v5);
  v9 = self;
  sub_1003BE1BC(v6, v8, v9, v5);
  _Block_release(v5);
}

- (void)requestEncryptionKeyForParticipants:(id)a3 topic:(id)a4
{
  if (a3)
  {
    sub_100006AF0(0, &qword_1006A3480, NSNumber_ptr);
    static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  static String._unconditionallyBridgeFromObjectiveC(_:)();
}

- (void)addAliasesToConversationContainer:(id)a3 withSalt:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11 = self;
  v8 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;

  sub_100049B14(v8, v10);
}

- (unint64_t)aliasForParticipantID:(unint64_t)a3 salt:(id)a4
{
  v6 = a4;
  v7 = self;
  v8 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;

  sub_100049B14(v8, v10);
  return a3;
}

- (void)participantIDForAlias:(unint64_t)a3 salt:(id)a4 completion:(id)a5
{
  v8 = _Block_copy(a5);
  v9 = a4;
  v13 = self;
  v10 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;

  _Block_copy(v8);
  sub_1003BE4CC(a3, v10, v12, v13, v8);
  _Block_release(v8);
  sub_100049B14(v10, v12);
}

- (void)setLocalParticipantType:(unsigned __int16)a3 memberDestinations:(id)a4 withContext:(id)a5 timestamp:(id)a6 identifier:(unint64_t)a7
{
  sub_10026D814(&qword_1006A5BE0, &qword_100580880);
  static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = a6;
  v11 = self;
  if (a5)
  {
    v12 = a5;
    a5 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;
  }

  else
  {
    v14 = 0xF000000000000000;
  }

  sub_100290B6C(a5, v14);
}

- (void)setParticipantType:(unsigned __int16)a3 forRemoteMemberDestinations:(id)a4
{
  sub_10026D814(&qword_1006A5BE0, &qword_100580880);
  static Array._unconditionallyBridgeFromObjectiveC(_:)();
}

@end