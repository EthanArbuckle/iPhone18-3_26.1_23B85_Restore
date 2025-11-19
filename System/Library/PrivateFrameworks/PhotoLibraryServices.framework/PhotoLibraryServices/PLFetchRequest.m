@interface PLFetchRequest
+ (id)pl_importantFetchNameForFetchRequest:(id)a3;
@end

@implementation PLFetchRequest

+ (id)pl_importantFetchNameForFetchRequest:(id)a3
{
  v3 = a3;
  objc_opt_class();
  v4 = v3;
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  if (v6)
  {
    v7 = [v6 pl_importantFetchName];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end