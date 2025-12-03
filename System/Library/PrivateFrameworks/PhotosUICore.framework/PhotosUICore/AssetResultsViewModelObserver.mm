@interface AssetResultsViewModelObserver
- (_TtC12PhotosUICore29AssetResultsViewModelObserver)init;
- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context;
@end

@implementation AssetResultsViewModelObserver

- (_TtC12PhotosUICore29AssetResultsViewModelObserver)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context
{
  sub_1A524CC54();
  v10[2] = observable;
  v10[3] = change;
  v10[4] = self;
  observableCopy = observable;
  selfCopy = self;
  sub_1A3C67884(sub_1A466BA00, v10);
}

@end