@interface VSApplicationControllerAlertAction
+ (int64_t)styleFromString:(id)a3;
@end

@implementation VSApplicationControllerAlertAction

+ (int64_t)styleFromString:(id)a3
{
  v3 = a3;
  if ([v3 isEqual:@"cancel"])
  {
    v4 = 1;
  }

  else if ([v3 isEqual:@"destructive"])
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end