@interface UMTestError
+ (id)errorWithMessage:(id)a3;
@end

@implementation UMTestError

+ (id)errorWithMessage:(id)a3
{
  if (a3)
  {
    v7 = NSLocalizedDescriptionKey;
    v8 = a3;
    v3 = a3;
    v4 = [NSDictionary dictionaryWithObjects:&v8 forKeys:&v7 count:1];
    v5 = [NSError errorWithDomain:@"UMTestDomain" code:-1 userInfo:v4];
  }

  else
  {
    v4 = 0;
    v5 = [NSError errorWithDomain:@"UMTestDomain" code:-1 userInfo:0];
  }

  return v5;
}

@end