@interface CardViewTitleView
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
- (void)layoutSubviews;
@end

@implementation CardViewTitleView

- (void)layoutSubviews
{
  v2 = self;
  CardViewTitleView.layoutSubviews()();
}

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v8 = a4;
  v9 = self;
  v15.value.super.isa = a4;
  CardViewTitleView.hitTest(_:with:)(v10, __PAIR128__(*&y, *&x), v15);
  v12 = v11;

  return v12;
}

@end