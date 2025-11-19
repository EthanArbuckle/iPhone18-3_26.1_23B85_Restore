@interface MTMAPIResponseDatabaseObjectProvider
- (MTMAPIResponseDatabaseObjectProvider)init;
- (_TtP18PodcastsFoundation42MAPIResponseDatabaseObjectProviderDelegate_)delegate;
- (id)databaseObjectWithStoreID:(int64_t)a3 contentType:(int64_t)a4;
- (void)controllerDidChangeContent:(id)a3;
- (void)setDelegate:(id)a3;
@end

@implementation MTMAPIResponseDatabaseObjectProvider

- (_TtP18PodcastsFoundation42MAPIResponseDatabaseObjectProviderDelegate_)delegate
{
  v3 = OBJC_IVAR___MTMAPIResponseDatabaseObjectProvider_delegate;
  swift_beginAccess();
  v4 = *(&self->super.isa + v3);
  v5 = swift_unknownObjectRetain();

  return v5;
}

- (void)setDelegate:(id)a3
{
  v5 = OBJC_IVAR___MTMAPIResponseDatabaseObjectProvider_delegate;
  swift_beginAccess();
  v6 = *(&self->super.isa + v5);
  *(&self->super.isa + v5) = a3;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
}

- (id)databaseObjectWithStoreID:(int64_t)a3 contentType:(int64_t)a4
{
  v6 = self;
  v7 = sub_1D9048D4C(a3, a4);

  return v7;
}

- (void)controllerDidChangeContent:(id)a3
{
  *(&self->super.isa + OBJC_IVAR___MTMAPIResponseDatabaseObjectProvider_needsParsing) = 1;
  v4 = OBJC_IVAR___MTMAPIResponseDatabaseObjectProvider_delegate;
  swift_beginAccess();
  v5 = *(&self->super.isa + v4);
  if (v5)
  {
    [v5 mapiResponseDatabaseObjectsDidChange];
  }
}

- (MTMAPIResponseDatabaseObjectProvider)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end