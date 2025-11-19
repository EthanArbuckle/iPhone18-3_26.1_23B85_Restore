@interface ShareSheetArtworkItemProvider
- (_TtC9SeymourUI29ShareSheetArtworkItemProvider)init;
- (_TtC9SeymourUI29ShareSheetArtworkItemProvider)initWithItem:(id)a3 typeIdentifier:(id)a4;
- (id)loadDataRepresentationForTypeIdentifier:(id)a3 completionHandler:(id)a4;
@end

@implementation ShareSheetArtworkItemProvider

- (id)loadDataRepresentationForTypeIdentifier:(id)a3 completionHandler:(id)a4
{
  v5 = _Block_copy(a4);
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  v7 = self;
  v8 = sub_20BD3C1FC(sub_20BAEA7CC, v6);

  return v8;
}

- (_TtC9SeymourUI29ShareSheetArtworkItemProvider)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC9SeymourUI29ShareSheetArtworkItemProvider)initWithItem:(id)a3 typeIdentifier:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end