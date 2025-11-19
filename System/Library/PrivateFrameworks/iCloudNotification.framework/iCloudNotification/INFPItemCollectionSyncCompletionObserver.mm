@interface INFPItemCollectionSyncCompletionObserver
- (_TtC3ind40INFPItemCollectionSyncCompletionObserver)init;
- (void)collection:(id)a3 didEncounterError:(id)a4;
- (void)collection:(id)a3 didUpdateObservedItem:(id)a4;
- (void)collectionDidFinishGathering:(id)a3;
- (void)dataForCollectionShouldBeReloaded:(id)a3;
@end

@implementation INFPItemCollectionSyncCompletionObserver

- (void)dataForCollectionShouldBeReloaded:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_10001DFD0(v4);
}

- (void)collection:(id)a3 didEncounterError:(id)a4
{
  v6 = a3;
  v8 = a4;
  v7 = self;
  sub_100022548(v8);
}

- (void)collection:(id)a3 didUpdateObservedItem:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_1000228B8(v6);
}

- (void)collectionDidFinishGathering:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_10001E444(v4);
}

- (_TtC3ind40INFPItemCollectionSyncCompletionObserver)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end