@interface CardViewTitleView
- (id)hitTest:(CGPoint)test withEvent:(id)event;
- (void)layoutSubviews;
@end

@implementation CardViewTitleView

- (void)layoutSubviews
{
  selfCopy = self;
  CardViewTitleView.layoutSubviews()();
}

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  eventCopy = event;
  selfCopy = self;
  v15.value.super.isa = event;
  CardViewTitleView.hitTest(_:with:)(v10, __PAIR128__(*&y, *&x), v15);
  v12 = v11;

  return v12;
}

@end