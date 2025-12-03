@interface _UIStepperButtonVisualProvider
- (CGRect)imageRectForContentRect:(CGRect)rect;
@end

@implementation _UIStepperButtonVisualProvider

- (CGRect)imageRectForContentRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  button = [(UIButtonLegacyVisualProvider *)self button];
  isLeft = [button isLeft];

  v10 = 1.0;
  if (!isLeft)
  {
    v10 = 0.5;
  }

  v11 = x + v10;
  v12 = y + 0.0;
  v13 = width + -1.5;
  button2 = [(UIButtonLegacyVisualProvider *)self button];
  button3 = [(UIButtonLegacyVisualProvider *)self button];
  v16 = [button2 imageForState:{objc_msgSend(button3, "state")}];

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
  button4 = [(UIButtonLegacyVisualProvider *)self button];
  UIRoundToViewScale(button4);
  v23 = v22;

  button5 = [(UIButtonLegacyVisualProvider *)self button];
  UIRoundToViewScale(button5);
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