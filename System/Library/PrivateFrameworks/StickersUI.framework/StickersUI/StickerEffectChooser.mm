@interface StickerEffectChooser
- (CGSize)intrinsicContentSize;
- (_TtC10StickersUI20StickerEffectChooser)initWithCoder:(id)coder;
- (void)handleTap:(id)tap;
- (void)layoutSubviews;
@end

@implementation StickerEffectChooser

- (_TtC10StickersUI20StickerEffectChooser)initWithCoder:(id)coder
{
  v3 = self + OBJC_IVAR____TtC10StickersUI20StickerEffectChooser_delegate;
  *v3 = 0u;
  *(v3 + 1) = 0u;
  *(v3 + 4) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC10StickersUI20StickerEffectChooser_animatesSelectionChanges) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC10StickersUI20StickerEffectChooser_tapGr) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC10StickersUI20StickerEffectChooser_isPaused) = 1;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC10StickersUI20StickerEffectChooser_isExpanded) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC10StickersUI20StickerEffectChooser_image) = 0;
  result = sub_26BA9BD9C();
  __break(1u);
  return result;
}

- (void)handleTap:(id)tap
{
  tapCopy = tap;
  selfCopy = self;
  sub_26BA78730(tapCopy);
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_26BA78BE8();
}

- (CGSize)intrinsicContentSize
{
  selfCopy = self;
  sub_26BA797DC();
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

@end