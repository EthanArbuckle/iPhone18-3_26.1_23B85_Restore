@interface NSString
+ (id)string:(id)a3 orDefault:(id)a4;
@end

@implementation NSString

+ (id)string:(id)a3 orDefault:(id)a4
{
  if (a3)
  {
    return a3;
  }

  else
  {
    return a4;
  }
}

@end