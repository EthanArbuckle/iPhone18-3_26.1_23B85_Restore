@interface INFPItemCollectionSyncCompletionObserver
- (_TtC3ind40INFPItemCollectionSyncCompletionObserver)init;
- (void)collection:(id)collection didEncounterError:(id)error;
- (void)collection:(id)collection didUpdateObservedItem:(id)item;
- (void)collectionDidFinishGathering:(id)gathering;
- (void)dataForCollectionShouldBeReloaded:(id)reloaded;
@end

@implementation INFPItemCollectionSyncCompletionObserver

- (void)dataForCollectionShouldBeReloaded:(id)reloaded
{
  reloadedCopy = reloaded;
  selfCopy = self;
  sub_10001DFD0(reloadedCopy);
}

- (void)collection:(id)collection didEncounterError:(id)error
{
  collectionCopy = collection;
  errorCopy = error;
  selfCopy = self;
  sub_100022548(errorCopy);
}

- (void)collection:(id)collection didUpdateObservedItem:(id)item
{
  collectionCopy = collection;
  itemCopy = item;
  selfCopy = self;
  sub_1000228B8(collectionCopy);
}

- (void)collectionDidFinishGathering:(id)gathering
{
  gatheringCopy = gathering;
  selfCopy = self;
  sub_10001E444(gatheringCopy);
}

- (_TtC3ind40INFPItemCollectionSyncCompletionObserver)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end