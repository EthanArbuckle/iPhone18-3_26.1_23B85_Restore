@interface VSApplicationControllerAlertAction
+ (int64_t)styleFromString:(id)string;
@end

@implementation VSApplicationControllerAlertAction

+ (int64_t)styleFromString:(id)string
{
  stringCopy = string;
  if ([stringCopy isEqual:@"cancel"])
  {
    v4 = 1;
  }

  else if ([stringCopy isEqual:@"destructive"])
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