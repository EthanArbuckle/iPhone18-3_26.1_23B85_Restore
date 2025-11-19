@interface NearbyPeerPaymentAppearancePreferenceCell
- (CGSize)sizeThatFits:(CGSize)a3;
- (_TtC9PassKitUI41NearbyPeerPaymentAppearancePreferenceCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (void)layoutSubviews;
- (void)prepareForReuse;
@end

@implementation NearbyPeerPaymentAppearancePreferenceCell

- (_TtC9PassKitUI41NearbyPeerPaymentAppearancePreferenceCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  if (a4)
  {
    a4 = sub_1BE052434();
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  return NearbyPeerPaymentAppearancePreferenceCell.init(style:reuseIdentifier:)(a3, a4, v6);
}

- (void)layoutSubviews
{
  v2 = self;
  sub_1BD89AD14();
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v5 = self;
  v6 = sub_1BD89B130(width, height);
  v8 = v7;

  v9 = v6;
  v10 = v8;
  result.height = v10;
  result.width = v9;
  return result;
}

- (void)prepareForReuse
{
  v2 = self;
  sub_1BD89B7B8();
}

@end