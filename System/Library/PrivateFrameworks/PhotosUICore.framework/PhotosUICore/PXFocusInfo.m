@interface PXFocusInfo
+ (PXFocusInfo)focusInfoWithView:(id)a3;
+ (PXFocusInfo)focusInfoWithView:(id)a3 cornerRadius:(double)a4 cornerCurve:(id)a5;
- (id)makeHaloEffectForSourceView:(id)a3;
@end

@implementation PXFocusInfo

+ (PXFocusInfo)focusInfoWithView:(id)a3
{
  v4 = a3;
  v5 = [v4 layer];
  [v5 cornerRadius];
  v7 = v6;
  v8 = [v5 cornerCurve];
  v9 = [a1 focusInfoWithView:v4 cornerRadius:v8 cornerCurve:v7];

  return v9;
}

+ (PXFocusInfo)focusInfoWithView:(id)a3 cornerRadius:(double)a4 cornerCurve:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = objc_alloc_init(a1);
  v11 = *(v10 + 2);
  *(v10 + 2) = v8;
  v12 = v8;

  v10[3] = a4;
  v13 = *(v10 + 4);
  *(v10 + 4) = v9;

  return v10;
}

- (id)makeHaloEffectForSourceView:(id)a3
{
  view = self->_view;
  v5 = a3;
  [(UIView *)view bounds];
  [v5 convertRect:self->_view fromView:?];
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