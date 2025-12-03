@interface NearbyPeerPaymentAppearancePreferenceCell
- (CGSize)sizeThatFits:(CGSize)fits;
- (_TtC9PassKitUI41NearbyPeerPaymentAppearancePreferenceCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)layoutSubviews;
- (void)prepareForReuse;
@end

@implementation NearbyPeerPaymentAppearancePreferenceCell

- (_TtC9PassKitUI41NearbyPeerPaymentAppearancePreferenceCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  if (identifier)
  {
    identifier = sub_1BE052434();
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  return NearbyPeerPaymentAppearancePreferenceCell.init(style:reuseIdentifier:)(style, identifier, v6);
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_1BD89AD14();
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  selfCopy = self;
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
  selfCopy = self;
  sub_1BD89B7B8();
}

@end