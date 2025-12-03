@interface PXFocusInfo
+ (PXFocusInfo)focusInfoWithView:(id)view;
+ (PXFocusInfo)focusInfoWithView:(id)view cornerRadius:(double)radius cornerCurve:(id)curve;
- (id)makeHaloEffectForSourceView:(id)view;
@end

@implementation PXFocusInfo

+ (PXFocusInfo)focusInfoWithView:(id)view
{
  viewCopy = view;
  layer = [viewCopy layer];
  [layer cornerRadius];
  v7 = v6;
  cornerCurve = [layer cornerCurve];
  v9 = [self focusInfoWithView:viewCopy cornerRadius:cornerCurve cornerCurve:v7];

  return v9;
}

+ (PXFocusInfo)focusInfoWithView:(id)view cornerRadius:(double)radius cornerCurve:(id)curve
{
  viewCopy = view;
  curveCopy = curve;
  v10 = objc_alloc_init(self);
  v11 = *(v10 + 2);
  *(v10 + 2) = viewCopy;
  v12 = viewCopy;

  v10[3] = radius;
  v13 = *(v10 + 4);
  *(v10 + 4) = curveCopy;

  return v10;
}

- (id)makeHaloEffectForSourceView:(id)view
{
  view = self->_view;
  viewCopy = view;
  [(UIView *)view bounds];
  [viewCopy convertRect:self->_view fromView:?];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  v14 = MEMORY[0x1E69DCA28];
  cornerRadius = self->_cornerRadius;
  cornerCurve = self->_cornerCurve;

  return [v14 effectWithRoundedRect:cornerCurve cornerRadius:v7 curve:{v9, v11, v13, cornerRadius}];
}

@end