@interface HostedContentCell
- (_TtC9SeymourUI17HostedContentCell)initWithCoder:(id)coder;
- (_TtC9SeymourUI17HostedContentCell)initWithFrame:(CGRect)frame;
- (void)prepareForReuse;
@end

@implementation HostedContentCell

- (_TtC9SeymourUI17HostedContentCell)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  *(&self->super.super.super.super._responderFlags + OBJC_IVAR____TtC9SeymourUI17HostedContentCell_delegate) = 0;
  swift_unknownObjectWeakInit();
  v8 = OBJC_IVAR____TtC9SeymourUI17HostedContentCell_itemInfo;
  v9 = type metadata accessor for ShelfCellItemInfo();
  (*(*(v9 - 8) + 56))(self + v8, 1, 1, v9);
  v11.receiver = self;
  v11.super_class = type metadata accessor for HostedContentCell();
  return [(HostedContentCell *)&v11 initWithFrame:x, y, width, height];
}

- (_TtC9SeymourUI17HostedContentCell)initWithCoder:(id)coder
{
  *(&self->super.super.super.super._responderFlags + OBJC_IVAR____TtC9SeymourUI17HostedContentCell_delegate) = 0;
  swift_unknownObjectWeakInit();
  v4 = OBJC_IVAR____TtC9SeymourUI17HostedContentCell_itemInfo;
  v5 = type metadata accessor for ShelfCellItemInfo();
  (*(*(v5 - 8) + 56))(self + v4, 1, 1, v5);
  result = sub_20C13DE24();
  __break(1u);
  return result;
}

- (void)prepareForReuse
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762550);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v10 - v4;
  v6 = type metadata accessor for HostedContentCell();
  v11.receiver = self;
  v11.super_class = v6;
  selfCopy = self;
  [(HostedContentCell *)&v11 prepareForReuse];
  v8 = type metadata accessor for ShelfCellItemInfo();
  (*(*(v8 - 8) + 56))(v5, 1, 1, v8);
  v9 = OBJC_IVAR____TtC9SeymourUI17HostedContentCell_itemInfo;
  swift_beginAccess();
  sub_20B5E267C(v5, selfCopy + v9);
  swift_endAccess();
}

@end