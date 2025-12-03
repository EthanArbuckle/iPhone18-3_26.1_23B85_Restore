@interface PKMaskedPANSuffixView
- (CGSize)sizeThatFits:(CGSize)fits;
- (PKMaskedPANSuffixView)initWithCoder:(id)coder;
- (PKMaskedPANSuffixView)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
@end

@implementation PKMaskedPANSuffixView

- (PKMaskedPANSuffixView)initWithCoder:(id)coder
{
  v4 = OBJC_IVAR___PKMaskedPANSuffixView_fontSize;
  PKPaymentPassPANSuffixFontSize();
  *(&self->super.super.super.isa + v4) = v5;
  *(&self->super.super.super.isa + OBJC_IVAR___PKMaskedPANSuffixView_viewSpacing) = 0x4018000000000000;
  result = sub_1BE053994();
  __break(1u);
  return result;
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  selfCopy = self;
  sub_1BD74136C(width, height);
  v7 = v6;
  v9 = v8;

  v10 = v7;
  v11 = v9;
  result.height = v11;
  result.width = v10;
  return result;
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for MaskedPANSuffixView();
  v2 = v3.receiver;
  [(PKMaskedPANSuffixView *)&v3 layoutSubviews];
  [v2 bounds];
  sub_1BD741504(0);
}

- (PKMaskedPANSuffixView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end