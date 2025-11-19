@interface PhotosDetailsLocationSearchDataSource
- (PXPhotosDetailsLocationSearchDelegate)delegate;
- (_TtC12PhotosUICore37PhotosDetailsLocationSearchDataSource)init;
- (id)requestInfoOfKind:(id)a3 withResultHandler:(id)a4;
- (void)infoUpdaterDidUpdate:(id)a3;
@end

@implementation PhotosDetailsLocationSearchDataSource

- (PXPhotosDetailsLocationSearchDelegate)delegate
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (id)requestInfoOfKind:(id)a3 withResultHandler:(id)a4
{
  v5 = _Block_copy(a4);
  _Block_copy(v5);
  v6 = self;
  v7 = sub_1A3EBE834(v6, v5);
  _Block_release(v5);
  _Block_release(v5);

  return v7;
}

- (void)infoUpdaterDidUpdate:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1A3EBDD10(v4);
}

- (_TtC12PhotosUICore37PhotosDetailsLocationSearchDataSource)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end