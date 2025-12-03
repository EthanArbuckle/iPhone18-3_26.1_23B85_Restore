@interface PLFetchRequest
+ (id)pl_importantFetchNameForFetchRequest:(id)request;
@end

@implementation PLFetchRequest

+ (id)pl_importantFetchNameForFetchRequest:(id)request
{
  requestCopy = request;
  objc_opt_class();
  v4 = requestCopy;
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
    pl_importantFetchName = [v6 pl_importantFetchName];
  }

  else
  {
    pl_importantFetchName = 0;
  }

  return pl_importantFetchName;
}

@end