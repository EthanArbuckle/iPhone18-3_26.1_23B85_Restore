@interface ShareSheetArtworkItemProvider
- (_TtC9SeymourUI29ShareSheetArtworkItemProvider)init;
- (_TtC9SeymourUI29ShareSheetArtworkItemProvider)initWithItem:(id)item typeIdentifier:(id)identifier;
- (id)loadDataRepresentationForTypeIdentifier:(id)identifier completionHandler:(id)handler;
@end

@implementation ShareSheetArtworkItemProvider

- (id)loadDataRepresentationForTypeIdentifier:(id)identifier completionHandler:(id)handler
{
  v5 = _Block_copy(handler);
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  selfCopy = self;
  v8 = sub_20BD3C1FC(sub_20BAEA7CC, v6);

  return v8;
}

- (_TtC9SeymourUI29ShareSheetArtworkItemProvider)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC9SeymourUI29ShareSheetArtworkItemProvider)initWithItem:(id)item typeIdentifier:(id)identifier
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end