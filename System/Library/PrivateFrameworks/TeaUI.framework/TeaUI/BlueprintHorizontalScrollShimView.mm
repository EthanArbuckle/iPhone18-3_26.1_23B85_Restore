@interface BlueprintHorizontalScrollShimView
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
- (void)doHoveringWithRecognizer:(id)a3;
- (void)doNextWithButton:(id)a3;
- (void)doPreviousWithButton:(id)a3;
- (void)layoutSubviews;
@end

@implementation BlueprintHorizontalScrollShimView

- (void)layoutSubviews
{
  v2 = self;
  BlueprintHorizontalScrollShimView.layoutSubviews()();
}

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v8 = a4;
  v9 = self;
  v15.value.super.isa = a4;
  BlueprintHorizontalScrollShimView.hitTest(_:with:)(v10, __PAIR128__(*&y, *&x), v15);
  v12 = v11;

  return v12;
}

- (void)doPreviousWithButton:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1D7F88A98();
}

- (void)doNextWithButton:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1D7F88C44();
}

- (void)doHoveringWithRecognizer:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1D7F88CB4(v4);
}

@end