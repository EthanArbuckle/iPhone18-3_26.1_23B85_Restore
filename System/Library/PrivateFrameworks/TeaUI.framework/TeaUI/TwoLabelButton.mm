@interface TwoLabelButton
- (void)animationDidStop:(id)a3 finished:(BOOL)a4;
- (void)layoutSubviews;
@end

@implementation TwoLabelButton

- (void)layoutSubviews
{
  v2 = self;
  TwoLabelButton.layoutSubviews()();
}

- (void)animationDidStop:(id)a3 finished:(BOOL)a4
{
  v5 = a3;
  v9.super.isa = self;
  isa = v9.super.isa;
  v9._attr = 0;
  TwoLabelButton.animationDidStop(_:finished:)(v9, v6);
}

@end