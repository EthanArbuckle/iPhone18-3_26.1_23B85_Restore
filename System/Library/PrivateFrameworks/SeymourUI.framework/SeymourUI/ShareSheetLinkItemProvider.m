@interface ShareSheetLinkItemProvider
- (_TtC9SeymourUI26ShareSheetLinkItemProvider)initWithPlaceholderItem:(id)a3;
- (id)activityViewControllerLinkMetadata:(id)a3;
- (id)item;
@end

@implementation ShareSheetLinkItemProvider

- (id)activityViewControllerLinkMetadata:(id)a3
{
  if (*(&self->super.super.super.isa + OBJC_IVAR____TtC9SeymourUI26ShareSheetLinkItemProvider_artworkItemProvider))
  {
    v3 = self;
    v4 = sub_20BB7A6B4();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)item
{
  v3 = sub_20C132C14();
  v4 = MEMORY[0x28223BE20](v3);
  (*(v6 + 16))(&v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), self + OBJC_IVAR____TtC9SeymourUI26ShareSheetLinkItemProvider_url, v3, v4);
  v7 = sub_20C13E034();

  return v7;
}

- (_TtC9SeymourUI26ShareSheetLinkItemProvider)initWithPlaceholderItem:(id)a3
{
  swift_unknownObjectRetain();
  sub_20C13DA64();
  swift_unknownObjectRelease();
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end