@interface AssetResultsScrollPositionManager
- (_TtC12PhotosUICoreP33_6550EC013705D4178B218B443D955D0033AssetResultsScrollPositionManager)init;
- (void)photosDataSource:(id)source didChange:(id)change;
@end

@implementation AssetResultsScrollPositionManager

- (_TtC12PhotosUICoreP33_6550EC013705D4178B218B443D955D0033AssetResultsScrollPositionManager)init
{
  swift_unknownObjectWeakInit();
  v3 = (&self->super.isa + OBJC_IVAR____TtC12PhotosUICoreP33_6550EC013705D4178B218B443D955D0033AssetResultsScrollPositionManager_resetScrollPosition);
  *v3 = 0;
  v3[1] = 0;
  *(&self->super.isa + OBJC_IVAR____TtC12PhotosUICoreP33_6550EC013705D4178B218B443D955D0033AssetResultsScrollPositionManager_shouldResetAgainAfterDataSourceChange) = 0;
  v5.receiver = self;
  v5.super_class = type metadata accessor for AssetResultsScrollPositionManager();
  return [(AssetResultsScrollPositionManager *)&v5 init];
}

- (void)photosDataSource:(id)source didChange:(id)change
{
  sourceCopy = source;
  changeCopy = change;
  selfCopy = self;
  sub_1A466A698();
}

@end