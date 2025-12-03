@interface SpriteSheetView
- (CGSize)intrinsicContentSize;
- (CGSize)sizeThatFits:(CGSize)fits;
- (UIColor)tintColor;
- (_TtC9SeymourUI15SpriteSheetView)initWithCoder:(id)coder;
- (_TtC9SeymourUI15SpriteSheetView)initWithFrame:(CGRect)frame;
- (void)setTintColor:(id)color;
@end

@implementation SpriteSheetView

- (CGSize)intrinsicContentSize
{
  selfCopy = self;
  sub_20B9181D0();
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

- (UIColor)tintColor
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for SpriteSheetView();
  tintColor = [(SpriteSheetView *)&v4 tintColor];

  return tintColor;
}

- (void)setTintColor:(id)color
{
  v6.receiver = self;
  v6.super_class = type metadata accessor for SpriteSheetView();
  colorCopy = color;
  v5 = v6.receiver;
  [(SpriteSheetView *)&v6 setTintColor:colorCopy];
  sub_20B918360();
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  [(SpriteSheetView *)self intrinsicContentSize:fits.width];
  result.height = v4;
  result.width = v3;
  return result;
}

- (_TtC9SeymourUI15SpriteSheetView)initWithFrame:(CGRect)frame
{
  v3 = (&self->super.super.super.isa + OBJC_IVAR____TtC9SeymourUI15SpriteSheetView_offsetAnimationKey);
  *v3 = 0xD00000000000001DLL;
  v3[1] = 0x800000020C1A0930;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC9SeymourUI15SpriteSheetView_animations) = MEMORY[0x277D84F90];
  result = sub_20C13DE24();
  __break(1u);
  return result;
}

- (_TtC9SeymourUI15SpriteSheetView)initWithCoder:(id)coder
{
  v3 = (&self->super.super.super.isa + OBJC_IVAR____TtC9SeymourUI15SpriteSheetView_offsetAnimationKey);
  *v3 = 0xD00000000000001DLL;
  v3[1] = 0x800000020C1A0930;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC9SeymourUI15SpriteSheetView_animations) = MEMORY[0x277D84F90];
  result = sub_20C13DE24();
  __break(1u);
  return result;
}

@end