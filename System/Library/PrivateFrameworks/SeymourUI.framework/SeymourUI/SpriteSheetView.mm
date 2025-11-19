@interface SpriteSheetView
- (CGSize)intrinsicContentSize;
- (CGSize)sizeThatFits:(CGSize)a3;
- (UIColor)tintColor;
- (_TtC9SeymourUI15SpriteSheetView)initWithCoder:(id)a3;
- (_TtC9SeymourUI15SpriteSheetView)initWithFrame:(CGRect)a3;
- (void)setTintColor:(id)a3;
@end

@implementation SpriteSheetView

- (CGSize)intrinsicContentSize
{
  v2 = self;
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
  v2 = [(SpriteSheetView *)&v4 tintColor];

  return v2;
}

- (void)setTintColor:(id)a3
{
  v6.receiver = self;
  v6.super_class = type metadata accessor for SpriteSheetView();
  v4 = a3;
  v5 = v6.receiver;
  [(SpriteSheetView *)&v6 setTintColor:v4];
  sub_20B918360();
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  [(SpriteSheetView *)self intrinsicContentSize:a3.width];
  result.height = v4;
  result.width = v3;
  return result;
}

- (_TtC9SeymourUI15SpriteSheetView)initWithFrame:(CGRect)a3
{
  v3 = (&self->super.super.super.isa + OBJC_IVAR____TtC9SeymourUI15SpriteSheetView_offsetAnimationKey);
  *v3 = 0xD00000000000001DLL;
  v3[1] = 0x800000020C1A0930;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC9SeymourUI15SpriteSheetView_animations) = MEMORY[0x277D84F90];
  result = sub_20C13DE24();
  __break(1u);
  return result;
}

- (_TtC9SeymourUI15SpriteSheetView)initWithCoder:(id)a3
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