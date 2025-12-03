@interface SCRCPhotoEvaluatorMethod
+ (id)detect:(id)detect;
+ (id)detect:(id)detect inRect:(CGRect)rect;
@end

@implementation SCRCPhotoEvaluatorMethod

+ (id)detect:(id)detect
{
  detectCopy = detect;
  width = [detectCopy width];
  height = [detectCopy height];
  v10.origin.x = 0.0;
  v10.origin.y = 0.0;
  v10.size.width = width;
  v10.size.height = height;
  if (CGRectIsEmpty(v10) || (v11.origin.x = 0.0, v11.origin.y = 0.0, v11.size.width = width, v11.size.height = height, CGRectIsInfinite(v11)))
  {
    v7 = 0;
  }

  else
  {
    v7 = [self detect:detectCopy inRect:{0.0, 0.0, width, height}];
  }

  return v7;
}

+ (id)detect:(id)detect inRect:(CGRect)rect
{
  objc_opt_class();
  NSRequestConcreteImplementation();
  return 0;
}

@end