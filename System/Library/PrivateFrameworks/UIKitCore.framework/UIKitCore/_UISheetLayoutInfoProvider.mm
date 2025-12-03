@interface _UISheetLayoutInfoProvider
+ (CGAffineTransform)transformForViewControllerView:(SEL)view untransformedSheetFrame:(id)frame fullHeightUntransformedFrameForDepthLevel:(CGRect)level topAlignment:(CGRect)alignment depthLevel:(double)depthLevel peeks:(double)peeks metrics:(BOOL)metrics;
+ (double)minimumTopInsetForContainerView:(id)view;
+ (id)makeLayoutInfoWithMetrics:(id)metrics;
- (_UISheetLayoutInfoProvider)init;
@end

@implementation _UISheetLayoutInfoProvider

+ (id)makeLayoutInfoWithMetrics:(id)metrics
{
  v3 = qword_1ED48F198;
  metricsCopy = metrics;
  if (v3 != -1)
  {
    swift_once();
  }

  if (byte_1ED48E910 == 1)
  {
    v5 = objc_allocWithZone(type metadata accessor for SheetLayoutGraph());
    v6 = sub_1891BA2F4(metricsCopy);
  }

  else
  {
    v7 = objc_allocWithZone(type metadata accessor for SheetLayoutInfo());
    v6 = sub_18910EB9C(metricsCopy);
  }

  v8 = v6;

  return v8;
}

+ (double)minimumTopInsetForContainerView:(id)view
{
  viewCopy = view;
  v4 = sub_1891B9D50(viewCopy);

  return v4;
}

+ (CGAffineTransform)transformForViewControllerView:(SEL)view untransformedSheetFrame:(id)frame fullHeightUntransformedFrameForDepthLevel:(CGRect)level topAlignment:(CGRect)alignment depthLevel:(double)depthLevel peeks:(double)peeks metrics:(BOOL)metrics
{
  width = alignment.size.width;
  height = alignment.size.height;
  y = alignment.origin.y;
  x = alignment.origin.x;
  v14 = level.size.height;
  v15 = level.size.width;
  v16 = level.origin.y;
  v17 = level.origin.x;
  frameCopy = frame;
  v21 = a10;
  sub_1891B9F04(v21, frame, metrics, v27, v17, v16, v15, v14, x, y, width, height, *&depthLevel, peeks);

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