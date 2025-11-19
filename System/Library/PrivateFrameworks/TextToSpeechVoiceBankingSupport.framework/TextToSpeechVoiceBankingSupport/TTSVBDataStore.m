@interface TTSVBDataStore
- (_TtC31TextToSpeechVoiceBankingSupport14TTSVBDataStore)init;
- (void)handleDidResetCloudSync:(id)a3;
- (void)handleManagedObjectContextDidChange:(id)a3;
- (void)handleManagedObjectContextDidMergeChangesObjectIDs:(id)a3;
- (void)handlePersistentCloudKitContainerEventChanged:(id)a3;
- (void)handlePersistentStoreRemoteChange:(id)a3;
- (void)handleWillResetCloudSync:(id)a3;
@end

@implementation TTSVBDataStore

- (void)handleManagedObjectContextDidChange:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_2331EC628(v4);
}

- (void)handleManagedObjectContextDidMergeChangesObjectIDs:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_2331E52F8(v4);
}

- (void)handlePersistentCloudKitContainerEventChanged:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_2331E55C8();
}

- (void)handleWillResetCloudSync:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_2331E604C(v4, " *** Will reset Cloud sync. Reason=%s", 2);
}

- (void)handleDidResetCloudSync:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_2331E604C(v4, " *** Did finish reset Cloud sync. Reason=%s", 3);
}

- (void)handlePersistentStoreRemoteChange:(id)a3
{
  v3 = self;
  sub_2331E6708();
}

- (_TtC31TextToSpeechVoiceBankingSupport14TTSVBDataStore)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end