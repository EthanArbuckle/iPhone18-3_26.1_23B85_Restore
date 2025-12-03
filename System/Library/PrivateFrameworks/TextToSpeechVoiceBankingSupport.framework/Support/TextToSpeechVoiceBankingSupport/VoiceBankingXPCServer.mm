@interface VoiceBankingXPCServer
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (_TtC13voicebankingd21VoiceBankingXPCServer)init;
- (void)cancelTrainingTaskWithTaskID:(id)d reply:(id)reply;
- (void)createSupplementaryModelForVoiceWithVoiceID:(id)d sourceVersion:(id)version targetVersion:(id)targetVersion reply:(id)reply;
- (void)createVoiceWithNamed:(id)named localeID:(id)d reply:(id)reply;
- (void)exportTrainingDataWithVoiceID:(id)d shouldCompressResult:(BOOL)result includeEntireScript:(BOOL)script reply:(id)reply;
- (void)importModelFromDirectory:(id)directory overrideLocaleID:(id)d addingToVoice:(id)voice reply:(id)reply;
- (void)importTrainingDataFromDirectory:(id)directory creatingVoiceName:(id)name localeID:(id)d reply:(id)reply;
- (void)requestVoiceCacheRebuildIfNeeded;
- (void)sendMockUserNotification;
- (void)trainModelWithVoiceID:(id)d mode:(id)mode startImmediately:(BOOL)immediately skipValidation:(BOOL)validation overrideMinimumPhraseCount:(int64_t)count useUserRecordingsForTraining:(BOOL)training reply:(id)reply;
- (void)updateTCCCloudKitAccessWithAllowed:(BOOL)allowed reply:(id)reply;
@end

@implementation VoiceBankingXPCServer

- (_TtC13voicebankingd21VoiceBankingXPCServer)init
{
  ObjectType = swift_getObjectType();
  *&self->listener[OBJC_IVAR____TtC13voicebankingd21VoiceBankingXPCServer_delegate] = 0;
  swift_unknownObjectWeakInit();
  type metadata accessor for TTSVBService();
  static TTSVBService.serviceName.getter();
  v4 = objc_allocWithZone(NSXPCListener);
  v5 = String._bridgeToObjectiveC()();

  v6 = [v4 initWithMachServiceName:v5];

  *(&self->super.isa + OBJC_IVAR____TtC13voicebankingd21VoiceBankingXPCServer_listener) = v6;
  v8.receiver = self;
  v8.super_class = ObjectType;
  return [(VoiceBankingXPCServer *)&v8 init];
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  listenerCopy = listener;
  connectionCopy = connection;
  selfCopy = self;
  v9 = sub_10000D898(connectionCopy);

  return v9 & 1;
}

- (void)createVoiceWithNamed:(id)named localeID:(id)d reply:(id)reply
{
  v6 = _Block_copy(reply);
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;
  v13 = swift_allocObject();
  *(v13 + 16) = v6;
  v14 = self + OBJC_IVAR____TtC13voicebankingd21VoiceBankingXPCServer_delegate;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v15 = *(v14 + 1);
    ObjectType = swift_getObjectType();
    v17 = swift_allocObject();
    v17[2] = v7;
    v17[3] = v9;
    v17[4] = v10;
    v17[5] = v12;
    v17[6] = sub_10000FAF4;
    v17[7] = v13;
    v18 = *(v15 + 8);
    selfCopy = self;

    v18(sub_10000FB00, v17, ObjectType, v15);

    swift_unknownObjectRelease();
  }

  else
  {
    selfCopy2 = self;
  }
}

- (void)importTrainingDataFromDirectory:(id)directory creatingVoiceName:(id)name localeID:(id)d reply:(id)reply
{
  v8 = type metadata accessor for URL();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = _Block_copy(reply);
  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v15;
  v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v19 = v18;
  v20 = swift_allocObject();
  *(v20 + 16) = v13;
  selfCopy = self;
  VoiceBankingXPCServer.importTrainingData(fromDirectory:creatingVoiceName:localeID:reply:)(v12, v14, v16, v17, v19, sub_10000ED4C, v20);

  (*(v9 + 8))(v12, v8);
}

- (void)importModelFromDirectory:(id)directory overrideLocaleID:(id)d addingToVoice:(id)voice reply:(id)reply
{
  v24 = type metadata accessor for UUID();
  v9 = *(v24 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v24);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for URL();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = &v23 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = _Block_copy(reply);
  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  if (d)
  {
    v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    d = v20;
  }

  else
  {
    v19 = 0;
  }

  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  v21 = swift_allocObject();
  *(v21 + 16) = v18;
  selfCopy = self;
  VoiceBankingXPCServer.importModel(fromDirectory:overrideLocaleID:addingToVoice:reply:)(v17, v19, d, v12, sub_10000FAF8, v21);

  (*(v9 + 8))(v12, v24);
  (*(v14 + 8))(v17, v13);
}

- (void)exportTrainingDataWithVoiceID:(id)d shouldCompressResult:(BOOL)result includeEntireScript:(BOOL)script reply:(id)reply
{
  resultCopy = result;
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = _Block_copy(reply);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = swift_allocObject();
  *(v16 + 16) = v15;
  selfCopy = self;
  VoiceBankingXPCServer.exportTrainingData(voiceID:shouldCompressResult:includeEntireScript:reply:)(v14, resultCopy, script, sub_10000ECF8, v16);

  (*(v11 + 8))(v14, v10);
}

- (void)trainModelWithVoiceID:(id)d mode:(id)mode startImmediately:(BOOL)immediately skipValidation:(BOOL)validation overrideMinimumPhraseCount:(int64_t)count useUserRecordingsForTraining:(BOOL)training reply:(id)reply
{
  trainingCopy = training;
  countCopy = count;
  immediatelyCopy = immediately;
  v12 = type metadata accessor for UUID();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &countCopy - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = _Block_copy(reply);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v20 = v19;
  v21 = swift_allocObject();
  *(v21 + 16) = v17;
  selfCopy = self;
  VoiceBankingXPCServer.trainModel(voiceID:mode:startImmediately:skipValidation:overrideMinimumPhraseCount:useUserRecordingsForTraining:reply:)(v16, v18, v20, immediatelyCopy, validation, countCopy, trainingCopy, sub_10000FAF8, v21);

  (*(v13 + 8))(v16, v12);
}

- (void)cancelTrainingTaskWithTaskID:(id)d reply:(id)reply
{
  v5 = _Block_copy(reply);
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  v9 = swift_allocObject();
  *(v9 + 16) = v5;
  v10 = self + OBJC_IVAR____TtC13voicebankingd21VoiceBankingXPCServer_delegate;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v11 = *(v10 + 1);
    ObjectType = swift_getObjectType();
    v13 = swift_allocObject();
    v13[2] = v6;
    v13[3] = v8;
    v13[4] = sub_10000FAF8;
    v13[5] = v9;
    v14 = *(v11 + 8);
    selfCopy = self;

    v14(sub_10000F9FC, v13, ObjectType, v11);

    swift_unknownObjectRelease();
  }

  else
  {
  }
}

- (void)requestVoiceCacheRebuildIfNeeded
{
  v3 = self + OBJC_IVAR____TtC13voicebankingd21VoiceBankingXPCServer_delegate;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v4 = *(v3 + 1);
    ObjectType = swift_getObjectType();
    v6 = *(v4 + 24);
    selfCopy = self;
    v6(ObjectType, v4);
    swift_unknownObjectRelease();
  }
}

- (void)updateTCCCloudKitAccessWithAllowed:(BOOL)allowed reply:(id)reply
{
  v6 = _Block_copy(reply);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  v8 = self + OBJC_IVAR____TtC13voicebankingd21VoiceBankingXPCServer_delegate;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v9 = *(v8 + 1);
    ObjectType = swift_getObjectType();
    v11 = swift_allocObject();
    *(v11 + 16) = allowed;
    *(v11 + 24) = sub_10000FAF8;
    *(v11 + 32) = v7;
    v12 = *(v9 + 16);
    selfCopy = self;

    v12(sub_10000FAFC, v11, ObjectType, v9);

    swift_unknownObjectRelease();
  }

  else
  {
  }
}

- (void)createSupplementaryModelForVoiceWithVoiceID:(id)d sourceVersion:(id)version targetVersion:(id)targetVersion reply:(id)reply
{
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = _Block_copy(reply);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v15;
  v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v19 = v18;
  v20 = swift_allocObject();
  *(v20 + 16) = v13;
  selfCopy = self;
  VoiceBankingXPCServer.createSupplementaryModelForVoice(voiceID:sourceVersion:targetVersion:reply:)(v12, v14, v16, v17, v19, sub_10000FAF8, v20);

  (*(v9 + 8))(v12, v8);
}

- (void)sendMockUserNotification
{
  v3 = self + OBJC_IVAR____TtC13voicebankingd21VoiceBankingXPCServer_delegate;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v4 = *(v3 + 1);
    ObjectType = swift_getObjectType();
    v6 = *(v4 + 8);
    selfCopy = self;
    v6(sub_10000D52C, 0, ObjectType, v4);
    swift_unknownObjectRelease();
  }
}

@end