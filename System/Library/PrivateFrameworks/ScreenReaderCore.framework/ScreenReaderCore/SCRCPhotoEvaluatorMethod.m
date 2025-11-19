@interface SCRCPhotoEvaluatorMethod
+ (id)detect:(id)a3;
+ (id)detect:(id)a3 inRect:(CGRect)a4;
@end

@implementation SCRCPhotoEvaluatorMethod

+ (id)detect:(id)a3
{
  v4 = a3;
  v5 = [v4 width];
  v6 = [v4 height];
  v10.origin.x = 0.0;
  v10.origin.y = 0.0;
  v10.size.width = v5;
  v10.size.height = v6;
  if (CGRectIsEmpty(v10) || (v11.origin.x = 0.0, v11.origin.y = 0.0, v11.size.width = v5, v11.size.height = v6, CGRectIsInfinite(v11)))
  {
    v7 = 0;
  }

  else
  {
    v7 = [a1 detect:v4 inRect:{0.0, 0.0, v5, v6}];
  }

  return v7;
}

+ (id)detect:(id)a3 inRect:(CGRect)a4
{
  objc_opt_class();
  NSRequestConcreteImplementation();
  return 0;
}

@end