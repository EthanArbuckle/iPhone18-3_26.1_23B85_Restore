@interface UMTestError
+ (id)errorWithMessage:(id)message;
@end

@implementation UMTestError

+ (id)errorWithMessage:(id)message
{
  if (message)
  {
    v7 = NSLocalizedDescriptionKey;
    messageCopy = message;
    messageCopy2 = message;
    v4 = [NSDictionary dictionaryWithObjects:&messageCopy forKeys:&v7 count:1];
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