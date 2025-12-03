@interface MapScrubberOverlayUIView
- (CGSize)sizeThatFits:(CGSize)fits;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
- (void)barTouched:(id)touched;
- (void)barValueChanged:(id)changed;
- (void)didReceiveMenuAction:(id)action;
- (void)doSegmentChange;
- (void)layoutSubviews;
- (void)playPauseTapped;
@end

@implementation MapScrubberOverlayUIView

- (void)layoutSubviews
{
  selfCopy = self;
  sub_220E366AC();
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  selfCopy = self;
  v4 = sub_220E378A4();
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

- (void)barValueChanged:(id)changed
{
  changedCopy = changed;
  selfCopy = self;
  sub_220E38734(changedCopy);
}

- (void)barTouched:(id)touched
{
  touchedCopy = touched;
  selfCopy = self;
  sub_220E388F4();
}

- (void)playPauseTapped
{
  selfCopy = self;
  sub_220E38AD8();
}

- (void)doSegmentChange
{
  selfCopy = self;
  sub_220E38BAC();
}

- (void)didReceiveMenuAction:(id)action
{
  actionCopy = action;
  selfCopy = self;
  sub_220E38DC4();
}

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  eventCopy = event;
  selfCopy = self;
  v8 = sub_220E39AD4(event);

  return v8;
}

@end