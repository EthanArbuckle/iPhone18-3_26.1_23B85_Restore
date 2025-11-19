@interface MapScrubberOverlayUIView
- (CGSize)sizeThatFits:(CGSize)a3;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
- (void)barTouched:(id)a3;
- (void)barValueChanged:(id)a3;
- (void)didReceiveMenuAction:(id)a3;
- (void)doSegmentChange;
- (void)layoutSubviews;
- (void)playPauseTapped;
@end

@implementation MapScrubberOverlayUIView

- (void)layoutSubviews
{
  v2 = self;
  sub_220E366AC();
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  v3 = self;
  v4 = sub_220E378A4();
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

- (void)barValueChanged:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_220E38734(v4);
}

- (void)barTouched:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_220E388F4();
}

- (void)playPauseTapped
{
  v2 = self;
  sub_220E38AD8();
}

- (void)doSegmentChange
{
  v2 = self;
  sub_220E38BAC();
}

- (void)didReceiveMenuAction:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_220E38DC4();
}

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  v6 = a4;
  v7 = self;
  v8 = sub_220E39AD4(a4);

  return v8;
}

@end