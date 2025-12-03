@interface PKNearbyPeerPaymentEntryCollectionViewCell
- (CGSize)sizeThatFits:(CGSize)fits;
- (PKNearbyPeerPaymentEntryCollectionViewCell)initWithCoder:(id)coder;
- (void)layoutSubviews;
@end

@implementation PKNearbyPeerPaymentEntryCollectionViewCell

- (PKNearbyPeerPaymentEntryCollectionViewCell)initWithCoder:(id)coder
{
  v4 = OBJC_IVAR___PKNearbyPeerPaymentEntryCollectionViewCell_imageView;
  *(&self->super.super.super.super.super.isa + v4) = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) init];
  v5 = OBJC_IVAR___PKNearbyPeerPaymentEntryCollectionViewCell_titleLabel;
  *(&self->super.super.super.super.super.isa + v5) = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  result = sub_1BE053994();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_1BD9AD898();
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  v5 = *(&self->super.super.super.super.super.isa + OBJC_IVAR___PKNearbyPeerPaymentEntryCollectionViewCell_titleLabel);
  selfCopy = self;
  font = [v5 font];
  if (font)
  {
    v10 = font;
    [font lineHeight];
    v12 = v11;

    v9 = fmin(width + 6.0 + v12, height);
    v8 = width;
  }

  else
  {
    __break(1u);
  }

  result.height = v9;
  result.width = v8;
  return result;
}

@end