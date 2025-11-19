@interface _UIStepperButtonVisualProvider
- (CGRect)imageRectForContentRect:(CGRect)a3;
@end

@implementation _UIStepperButtonVisualProvider

- (CGRect)imageRectForContentRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = [(UIButtonLegacyVisualProvider *)self button];
  v9 = [v8 isLeft];

  v10 = 1.0;
  if (!v9)
  {
    v10 = 0.5;
  }

  v11 = x + v10;
  v12 = y + 0.0;
  v13 = width + -1.5;
  v14 = [(UIButtonLegacyVisualProvider *)self button];
  v15 = [(UIButtonLegacyVisualProvider *)self button];
  v16 = [v14 imageForState:{objc_msgSend(v15, "state")}];

  [v16 size];
  v18 = v17;
  v20 = v19;
  v31.origin.x = v11;
  v31.origin.y = v12;
  v31.size.width = v13;
  v31.size.height = height;
  CGRectGetMidX(v31);
  v32.origin.x = v11;
  v32.origin.y = v12;
  v32.size.width = v13;
  v32.size.height = height;
  CGRectGetMidY(v32);
  v21 = [(UIButtonLegacyVisualProvider *)self button];
  UIRoundToViewScale(v21);
  v23 = v22;

  v24 = [(UIButtonLegacyVisualProvider *)self button];
  UIRoundToViewScale(v24);
  v26 = v25;

  v27 = v23;
  v28 = v26;
  v29 = v18;
  v30 = v20;
  result.size.height = v30;
  result.size.width = v29;
  result.origin.y = v28;
  result.origin.x = v27;
  return result;
}

@end