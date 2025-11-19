@interface AssetResultsScrollPositionManager
- (_TtC12PhotosUICoreP33_6550EC013705D4178B218B443D955D0033AssetResultsScrollPositionManager)init;
- (void)photosDataSource:(id)a3 didChange:(id)a4;
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

- (void)photosDataSource:(id)a3 didChange:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_1A466A698();
}

@end