@interface TTSVBDataStore
- (_TtC31TextToSpeechVoiceBankingSupport14TTSVBDataStore)init;
- (void)handleDidResetCloudSync:(id)sync;
- (void)handleManagedObjectContextDidChange:(id)change;
- (void)handleManagedObjectContextDidMergeChangesObjectIDs:(id)ds;
- (void)handlePersistentCloudKitContainerEventChanged:(id)changed;
- (void)handlePersistentStoreRemoteChange:(id)change;
- (void)handleWillResetCloudSync:(id)sync;
@end

@implementation TTSVBDataStore

- (void)handleManagedObjectContextDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  sub_2331EC628(changeCopy);
}

- (void)handleManagedObjectContextDidMergeChangesObjectIDs:(id)ds
{
  dsCopy = ds;
  selfCopy = self;
  sub_2331E52F8(dsCopy);
}

- (void)handlePersistentCloudKitContainerEventChanged:(id)changed
{
  changedCopy = changed;
  selfCopy = self;
  sub_2331E55C8();
}

- (void)handleWillResetCloudSync:(id)sync
{
  syncCopy = sync;
  selfCopy = self;
  sub_2331E604C(syncCopy, " *** Will reset Cloud sync. Reason=%s", 2);
}

- (void)handleDidResetCloudSync:(id)sync
{
  syncCopy = sync;
  selfCopy = self;
  sub_2331E604C(syncCopy, " *** Did finish reset Cloud sync. Reason=%s", 3);
}

- (void)handlePersistentStoreRemoteChange:(id)change
{
  selfCopy = self;
  sub_2331E6708();
}

- (_TtC31TextToSpeechVoiceBankingSupport14TTSVBDataStore)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end