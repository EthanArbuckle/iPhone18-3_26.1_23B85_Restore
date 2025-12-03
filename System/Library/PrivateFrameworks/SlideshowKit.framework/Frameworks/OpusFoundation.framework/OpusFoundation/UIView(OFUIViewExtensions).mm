@interface UIView(OFUIViewExtensions)
- (UIImage)snapshot:()OFUIViewExtensions;
- (uint64_t)ancestorViewOfClass:()OFUIViewExtensions;
- (void)ancestorViewOfInstance:()OFUIViewExtensions;
- (void)layerFromSnapshot:()OFUIViewExtensions;
@end

@implementation UIView(OFUIViewExtensions)

- (UIImage)snapshot:()OFUIViewExtensions
{
  [self frame];
  v6 = v5;
  v8 = v7;
  [objc_msgSend(objc_msgSend(self "window")];
  if (v9 >= 1.0)
  {
    v10 = v9;
  }

  else
  {
    v10 = 1.0;
  }

  v14.width = v6;
  v14.height = v8;
  UIGraphicsBeginImageContextWithOptions(v14, a3, v10);
  [objc_msgSend(self "layer")];
  v11 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();

  return v11;
}

- (void)layerFromSnapshot:()OFUIViewExtensions
{
  v2 = [self snapshot:?];
  layer = [MEMORY[0x277CD9ED0] layer];
  [layer setContents:{objc_msgSend(v2, "CGImage")}];
  [self frame];
  [layer setFrame:?];
  [layer setBackgroundColor:{objc_msgSend(objc_msgSend(MEMORY[0x277D75348], "grayColor"), "CGColor")}];
  return layer;
}

- (uint64_t)ancestorViewOfClass:()OFUIViewExtensions
{
  superview = [self superview];
  if (!superview || (objc_opt_isKindOfClass() & 1) != 0)
  {
    return superview;
  }

  return [superview ancestorViewOfClass:a3];
}

- (void)ancestorViewOfInstance:()OFUIViewExtensions
{
  result = [self superview];
  if (result && result != a3)
  {

    return [result ancestorViewOfInstance:a3];
  }

  return result;
}

@end