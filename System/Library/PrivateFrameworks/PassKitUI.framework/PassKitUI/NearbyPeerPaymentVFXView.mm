@interface NearbyPeerPaymentVFXView
- (_TtC9PassKitUI24NearbyPeerPaymentVFXView)initWithCoder:(id)a3;
- (_TtC9PassKitUI24NearbyPeerPaymentVFXView)initWithFrame:(CGRect)a3;
- (_TtC9PassKitUI24NearbyPeerPaymentVFXView)initWithFrame:(CGRect)a3 options:(id)a4;
@end

@implementation NearbyPeerPaymentVFXView

- (_TtC9PassKitUI24NearbyPeerPaymentVFXView)initWithFrame:(CGRect)a3 options:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  if (a4)
  {
    sub_1BE052244();
    v9 = sub_1BE052224();
  }

  else
  {
    v9 = 0;
  }

  v12.receiver = self;
  v12.super_class = type metadata accessor for NearbyPeerPaymentVFXView();
  v10 = [(NearbyPeerPaymentVFXView *)&v12 initWithFrame:v9 options:x, y, width, height];

  return v10;
}

- (_TtC9PassKitUI24NearbyPeerPaymentVFXView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8.receiver = self;
  v8.super_class = type metadata accessor for NearbyPeerPaymentVFXView();
  return [(NearbyPeerPaymentVFXView *)&v8 initWithFrame:x, y, width, height];
}

- (_TtC9PassKitUI24NearbyPeerPaymentVFXView)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for NearbyPeerPaymentVFXView();
  v4 = a3;
  v5 = [(NearbyPeerPaymentVFXView *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end