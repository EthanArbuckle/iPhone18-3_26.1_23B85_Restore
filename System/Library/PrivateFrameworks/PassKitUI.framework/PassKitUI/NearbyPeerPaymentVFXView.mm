@interface NearbyPeerPaymentVFXView
- (_TtC9PassKitUI24NearbyPeerPaymentVFXView)initWithCoder:(id)coder;
- (_TtC9PassKitUI24NearbyPeerPaymentVFXView)initWithFrame:(CGRect)frame;
- (_TtC9PassKitUI24NearbyPeerPaymentVFXView)initWithFrame:(CGRect)frame options:(id)options;
@end

@implementation NearbyPeerPaymentVFXView

- (_TtC9PassKitUI24NearbyPeerPaymentVFXView)initWithFrame:(CGRect)frame options:(id)options
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  if (options)
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
  height = [(NearbyPeerPaymentVFXView *)&v12 initWithFrame:v9 options:x, y, width, height];

  return height;
}

- (_TtC9PassKitUI24NearbyPeerPaymentVFXView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v8.receiver = self;
  v8.super_class = type metadata accessor for NearbyPeerPaymentVFXView();
  return [(NearbyPeerPaymentVFXView *)&v8 initWithFrame:x, y, width, height];
}

- (_TtC9PassKitUI24NearbyPeerPaymentVFXView)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for NearbyPeerPaymentVFXView();
  coderCopy = coder;
  v5 = [(NearbyPeerPaymentVFXView *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end