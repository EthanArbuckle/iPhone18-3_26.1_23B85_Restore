@interface AssetResultsViewModelObserver
- (_TtC12PhotosUICore29AssetResultsViewModelObserver)init;
- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5;
@end

@implementation AssetResultsViewModelObserver

- (_TtC12PhotosUICore29AssetResultsViewModelObserver)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5
{
  sub_1A524CC54();
  v10[2] = a3;
  v10[3] = a4;
  v10[4] = self;
  v8 = a3;
  v9 = self;
  sub_1A3C67884(sub_1A466BA00, v10);
}

@end