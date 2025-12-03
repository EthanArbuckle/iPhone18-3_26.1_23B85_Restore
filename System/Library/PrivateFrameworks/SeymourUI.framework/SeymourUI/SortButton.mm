@interface SortButton
- (_TtC9SeymourUI10SortButton)initWithCoder:(id)coder;
- (_TtC9SeymourUI10SortButton)initWithFrame:(CGRect)frame;
- (void)contextMenuInteraction:(id)interaction willEndForConfiguration:(id)configuration animator:(id)animator;
@end

@implementation SortButton

- (void)contextMenuInteraction:(id)interaction willEndForConfiguration:(id)configuration animator:(id)animator
{
  interactionCopy = interaction;
  configurationCopy = configuration;
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_20B8B6CCC(interactionCopy, configurationCopy, animator);

  swift_unknownObjectRelease();
}

- (_TtC9SeymourUI10SortButton)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  *(&self->super.super.super.super._responderFlags + OBJC_IVAR____TtC9SeymourUI10SortButton_delegate) = 0;
  swift_unknownObjectWeakInit();
  v9.receiver = self;
  v9.super_class = type metadata accessor for SortButton();
  return [(SortButton *)&v9 initWithFrame:x, y, width, height];
}

- (_TtC9SeymourUI10SortButton)initWithCoder:(id)coder
{
  *(&self->super.super.super.super._responderFlags + OBJC_IVAR____TtC9SeymourUI10SortButton_delegate) = 0;
  swift_unknownObjectWeakInit();
  v8.receiver = self;
  v8.super_class = type metadata accessor for SortButton();
  coderCopy = coder;
  v6 = [(SortButton *)&v8 initWithCoder:coderCopy];

  if (v6)
  {
  }

  return v6;
}

@end