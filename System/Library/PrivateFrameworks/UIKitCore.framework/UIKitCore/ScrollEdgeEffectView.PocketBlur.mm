@interface ScrollEdgeEffectView.PocketBlur
- (_TtCC5UIKit20ScrollEdgeEffectView10PocketBlur)initWithCoder:(id)coder;
- (void)didMoveToWindow;
- (void)layoutSubviews;
@end

@implementation ScrollEdgeEffectView.PocketBlur

- (_TtCC5UIKit20ScrollEdgeEffectView10PocketBlur)initWithCoder:(id)coder
{
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtCC5UIKit20ScrollEdgeEffectView10PocketBlur_useHardEdges) = 0;
  v3 = (self + OBJC_IVAR____TtCC5UIKit20ScrollEdgeEffectView10PocketBlur_pocketMaskPortal);
  *v3 = 0u;
  v3[1] = 0u;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtCC5UIKit20ScrollEdgeEffectView10PocketBlur_blurAttenuation) = 1065353216;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtCC5UIKit20ScrollEdgeEffectView10PocketBlur_blurEnabled) = 1;
  result = sub_18A4A8398();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  v8.receiver = self;
  v8.super_class = _s10PocketBlurCMa();
  v2 = v8.receiver;
  [(UIView *)&v8 layoutSubviews];
  v4 = sub_188FFA534();
  if (*(v3 + 16))
  {
    v5 = v3;
    v6 = v2;
    sub_188FFF7D8(v5, v6);
  }

  (v4)(&v7, 0);
  sub_188FFAE38();
}

- (void)didMoveToWindow
{
  selfCopy = self;
  v4 = sub_188FFA534();
  if (*(v3 + 16))
  {
    v5 = v3;
    v6 = selfCopy;
    sub_188FFF7D8(v5, v6);
  }

  (v4)(&v7, 0);
}

@end