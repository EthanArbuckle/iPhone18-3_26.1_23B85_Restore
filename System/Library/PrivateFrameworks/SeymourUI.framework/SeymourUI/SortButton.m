@interface SortButton
- (_TtC9SeymourUI10SortButton)initWithCoder:(id)a3;
- (_TtC9SeymourUI10SortButton)initWithFrame:(CGRect)a3;
- (void)contextMenuInteraction:(id)a3 willEndForConfiguration:(id)a4 animator:(id)a5;
@end

@implementation SortButton

- (void)contextMenuInteraction:(id)a3 willEndForConfiguration:(id)a4 animator:(id)a5
{
  v8 = a3;
  v9 = a4;
  swift_unknownObjectRetain();
  v10 = self;
  sub_20B8B6CCC(v8, v9, a5);

  swift_unknownObjectRelease();
}

- (_TtC9SeymourUI10SortButton)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  *(&self->super.super.super.super._responderFlags + OBJC_IVAR____TtC9SeymourUI10SortButton_delegate) = 0;
  swift_unknownObjectWeakInit();
  v9.receiver = self;
  v9.super_class = type metadata accessor for SortButton();
  return [(SortButton *)&v9 initWithFrame:x, y, width, height];
}

- (_TtC9SeymourUI10SortButton)initWithCoder:(id)a3
{
  *(&self->super.super.super.super._responderFlags + OBJC_IVAR____TtC9SeymourUI10SortButton_delegate) = 0;
  swift_unknownObjectWeakInit();
  v8.receiver = self;
  v8.super_class = type metadata accessor for SortButton();
  v5 = a3;
  v6 = [(SortButton *)&v8 initWithCoder:v5];

  if (v6)
  {
  }

  return v6;
}

@end