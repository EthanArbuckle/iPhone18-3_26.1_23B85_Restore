@interface WindowControlView
- (BOOL)gestureRecognizer:(id)a3 shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)a4;
- (void)handleHover:(id)a3;
- (void)handleTapGesture:(id)a3;
@end

@implementation WindowControlView

- (BOOL)gestureRecognizer:(id)a3 shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  v9 = sub_21ED27784();

  return v9 & 1;
}

- (void)handleTapGesture:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_21ED278B8(v4);
}

- (void)handleHover:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_21ED27A0C(v4);
}

@end