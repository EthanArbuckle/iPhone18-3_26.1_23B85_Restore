@interface _UIForceMessage
+ (id)observe:(id)a3;
+ (id)reset;
@end

@implementation _UIForceMessage

+ (id)observe:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  v3[2](v3, v4);

  return v4;
}

+ (id)reset
{
  v2 = objc_opt_new();
  v2[8] = 1;

  return v2;
}

@end