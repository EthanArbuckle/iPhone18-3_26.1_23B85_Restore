@interface NSString
+ (id)string:(id)string orDefault:(id)default;
@end

@implementation NSString

+ (id)string:(id)string orDefault:(id)default
{
  if (string)
  {
    return string;
  }

  else
  {
    return default;
  }
}

@end