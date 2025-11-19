@interface UIView(OFUIViewExtensions)
- (UIImage)snapshot:()OFUIViewExtensions;
- (uint64_t)ancestorViewOfClass:()OFUIViewExtensions;
- (void)ancestorViewOfInstance:()OFUIViewExtensions;
- (void)layerFromSnapshot:()OFUIViewExtensions;
@end

@implementation UIView(OFUIViewExtensions)

- (UIImage)snapshot:()OFUIViewExtensions
{
  [a1 frame];
  v6 = v5;
  v8 = v7;
  [objc_msgSend(objc_msgSend(a1 "window")];
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
  [objc_msgSend(a1 "layer")];
  v11 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();

  return v11;
}

- (void)layerFromSnapshot:()OFUIViewExtensions
{
  v2 = [a1 snapshot:?];
  v3 = [MEMORY[0x277CD9ED0] layer];
  [v3 setContents:{objc_msgSend(v2, "CGImage")}];
  [a1 frame];
  [v3 setFrame:?];
  [v3 setBackgroundColor:{objc_msgSend(objc_msgSend(MEMORY[0x277D75348], "grayColor"), "CGColor")}];
  return v3;
}

- (uint64_t)ancestorViewOfClass:()OFUIViewExtensions
{
  v4 = [a1 superview];
  if (!v4 || (objc_opt_isKindOfClass() & 1) != 0)
  {
    return v4;
  }

  return [v4 ancestorViewOfClass:a3];
}

- (void)ancestorViewOfInstance:()OFUIViewExtensions
{
  result = [a1 superview];
  if (result && result != a3)
  {

    return [result ancestorViewOfInstance:a3];
  }

  return result;
}

@end