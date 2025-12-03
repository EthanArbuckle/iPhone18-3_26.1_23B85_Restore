@interface _UIForceMessage
+ (id)observe:(id)observe;
+ (id)reset;
@end

@implementation _UIForceMessage

+ (id)observe:(id)observe
{
  observeCopy = observe;
  v4 = objc_opt_new();
  observeCopy[2](observeCopy, v4);

  return v4;
}

+ (id)reset
{
  v2 = objc_opt_new();
  v2[8] = 1;

  return v2;
}

@end