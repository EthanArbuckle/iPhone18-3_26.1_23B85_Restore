@interface PKStyledMicaView
- (PKStyledMicaView)initWithCoder:(id)coder;
- (void)layoutSubviews;
@end

@implementation PKStyledMicaView

- (PKStyledMicaView)initWithCoder:(id)coder
{
  __asm { FMOV            V0.2D, #1.0 }

  *(&self->super.super.super + OBJC_IVAR___PKStyledMicaView_originalAnimationViewSize) = _Q0;
  v9 = OBJC_IVAR___PKStyledMicaView_layerColorConfigurationSets;
  coderCopy = coder;
  *(&self->super.super.super.super.isa + v9) = sub_1BD1ABCFC(MEMORY[0x1E69E7CC0]);
  v13.receiver = self;
  v13.super_class = type metadata accessor for StyledMicaView();
  v11 = [(PKMicaView *)&v13 initWithCoder:coderCopy];

  if (v11)
  {
  }

  return v11;
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for StyledMicaView();
  v2 = v3.receiver;
  [(PKStyledMicaView *)&v3 layoutSubviews];
  sub_1BDA815AC();
}

@end