@interface TwoLabelButton
- (void)animationDidStop:(id)stop finished:(BOOL)finished;
- (void)layoutSubviews;
@end

@implementation TwoLabelButton

- (void)layoutSubviews
{
  selfCopy = self;
  TwoLabelButton.layoutSubviews()();
}

- (void)animationDidStop:(id)stop finished:(BOOL)finished
{
  stopCopy = stop;
  v9.super.isa = self;
  isa = v9.super.isa;
  v9._attr = 0;
  TwoLabelButton.animationDidStop(_:finished:)(v9, v6);
}

@end