@interface PhotosDetailsLocationSearchDataSource
- (PXPhotosDetailsLocationSearchDelegate)delegate;
- (_TtC12PhotosUICore37PhotosDetailsLocationSearchDataSource)init;
- (id)requestInfoOfKind:(id)kind withResultHandler:(id)handler;
- (void)infoUpdaterDidUpdate:(id)update;
@end

@implementation PhotosDetailsLocationSearchDataSource

- (PXPhotosDetailsLocationSearchDelegate)delegate
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (id)requestInfoOfKind:(id)kind withResultHandler:(id)handler
{
  v5 = _Block_copy(handler);
  _Block_copy(v5);
  selfCopy = self;
  v7 = sub_1A3EBE834(selfCopy, v5);
  _Block_release(v5);
  _Block_release(v5);

  return v7;
}

- (void)infoUpdaterDidUpdate:(id)update
{
  updateCopy = update;
  selfCopy = self;
  sub_1A3EBDD10(updateCopy);
}

- (_TtC12PhotosUICore37PhotosDetailsLocationSearchDataSource)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end