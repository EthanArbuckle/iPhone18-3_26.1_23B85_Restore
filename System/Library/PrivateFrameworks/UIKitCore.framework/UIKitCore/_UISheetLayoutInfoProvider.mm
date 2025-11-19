@interface _UISheetLayoutInfoProvider
+ (CGAffineTransform)transformForViewControllerView:(SEL)a3 untransformedSheetFrame:(id)a4 fullHeightUntransformedFrameForDepthLevel:(CGRect)a5 topAlignment:(CGRect)a6 depthLevel:(double)a7 peeks:(double)a8 metrics:(BOOL)a9;
+ (double)minimumTopInsetForContainerView:(id)a3;
+ (id)makeLayoutInfoWithMetrics:(id)a3;
- (_UISheetLayoutInfoProvider)init;
@end

@implementation _UISheetLayoutInfoProvider

+ (id)makeLayoutInfoWithMetrics:(id)a3
{
  v3 = qword_1ED48F198;
  v4 = a3;
  if (v3 != -1)
  {
    swift_once();
  }

  if (byte_1ED48E910 == 1)
  {
    v5 = objc_allocWithZone(type metadata accessor for SheetLayoutGraph());
    v6 = sub_1891BA2F4(v4);
  }

  else
  {
    v7 = objc_allocWithZone(type metadata accessor for SheetLayoutInfo());
    v6 = sub_18910EB9C(v4);
  }

  v8 = v6;

  return v8;
}

+ (double)minimumTopInsetForContainerView:(id)a3
{
  v3 = a3;
  v4 = sub_1891B9D50(v3);

  return v4;
}

+ (CGAffineTransform)transformForViewControllerView:(SEL)a3 untransformedSheetFrame:(id)a4 fullHeightUntransformedFrameForDepthLevel:(CGRect)a5 topAlignment:(CGRect)a6 depthLevel:(double)a7 peeks:(double)a8 metrics:(BOOL)a9
{
  width = a6.size.width;
  height = a6.size.height;
  y = a6.origin.y;
  x = a6.origin.x;
  v14 = a5.size.height;
  v15 = a5.size.width;
  v16 = a5.origin.y;
  v17 = a5.origin.x;
  v20 = a4;
  v21 = a10;
  sub_1891B9F04(v21, a4, a9, v27, v17, v16, v15, v14, x, y, width, height, *&a7, a8);

  v23 = v27[1];
  v24 = v27[2];
  *&retstr->a = v27[0];
  *&retstr->c = v23;
  *&retstr->tx = v24;
  return result;
}

- (_UISheetLayoutInfoProvider)init
{
  v3.receiver = self;
  v3.super_class = _UISheetLayoutInfoProvider;
  return [(_UISheetLayoutInfoProvider *)&v3 init];
}

@end