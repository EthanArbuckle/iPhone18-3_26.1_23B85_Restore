@interface TSCardView
- (BOOL)gestureRecognizer:(id)a3 shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)a4;
- (void)layoutSubviews;
- (void)setAccessibilityLabel:(id)a3;
- (void)toggleExpansion;
@end

@implementation TSCardView

- (void)layoutSubviews
{
  v2 = self;
  CardView.layoutSubviews()();
}

- (void)toggleExpansion
{
  v2 = self;
  CardView.toggleExpansion()();
}

- (void)setAccessibilityLabel:(id)a3
{
  if (a3)
  {
    sub_1D8190F14();
  }

  v4 = self;
  CardView.accessibilityLabel.setter();
}

- (BOOL)gestureRecognizer:(id)a3 shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  v9 = CardView.gestureRecognizer(_:shouldRecognizeSimultaneouslyWith:)(v8, v7);

  return v9;
}

@end