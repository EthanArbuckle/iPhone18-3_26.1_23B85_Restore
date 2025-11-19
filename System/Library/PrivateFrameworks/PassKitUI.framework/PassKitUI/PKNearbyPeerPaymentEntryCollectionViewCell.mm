@interface PKNearbyPeerPaymentEntryCollectionViewCell
- (CGSize)sizeThatFits:(CGSize)a3;
- (PKNearbyPeerPaymentEntryCollectionViewCell)initWithCoder:(id)a3;
- (void)layoutSubviews;
@end

@implementation PKNearbyPeerPaymentEntryCollectionViewCell

- (PKNearbyPeerPaymentEntryCollectionViewCell)initWithCoder:(id)a3
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
  v2 = self;
  sub_1BD9AD898();
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v5 = *(&self->super.super.super.super.super.isa + OBJC_IVAR___PKNearbyPeerPaymentEntryCollectionViewCell_titleLabel);
  v6 = self;
  v7 = [v5 font];
  if (v7)
  {
    v10 = v7;
    [v7 lineHeight];
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