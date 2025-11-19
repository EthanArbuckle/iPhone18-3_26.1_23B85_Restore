@interface PKNearbyPeerPaymentEntryCollectionViewHeaderView
- (CGSize)sizeThatFits:(CGSize)a3;
- (PKNearbyPeerPaymentEntryCollectionViewHeaderView)initWithCoder:(id)a3;
- (void)layoutSubviews;
@end

@implementation PKNearbyPeerPaymentEntryCollectionViewHeaderView

- (PKNearbyPeerPaymentEntryCollectionViewHeaderView)initWithCoder:(id)a3
{
  v3 = OBJC_IVAR___PKNearbyPeerPaymentEntryCollectionViewHeaderView_lineView;
  *(&self->super.super.super.super.isa + v3) = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
  result = sub_1BE053994();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  v8.receiver = self;
  v8.super_class = type metadata accessor for NearbyEntryCollectionViewHeaderView();
  v2 = v8.receiver;
  [(PKNearbyPeerPaymentEntryCollectionViewHeaderView *)&v8 layoutSubviews];
  [v2 bounds];
  v4 = v3;
  [v2 bounds];
  v6 = v5;
  [v2 bounds];
  Width = CGRectGetWidth(v9);
  [*&v2[OBJC_IVAR___PKNearbyPeerPaymentEntryCollectionViewHeaderView_lineView] setFrame_];
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  width = a3.width;
  v4 = PKUIPixelLength();
  v5 = width;
  result.height = v4;
  result.width = v5;
  return result;
}

@end