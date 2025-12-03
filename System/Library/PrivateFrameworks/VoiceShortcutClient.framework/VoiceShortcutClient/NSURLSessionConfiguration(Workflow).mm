@interface NSURLSessionConfiguration(Workflow)
+ (id)wf_defaultSessionConfiguration;
@end

@implementation NSURLSessionConfiguration(Workflow)

+ (id)wf_defaultSessionConfiguration
{
  defaultSessionConfiguration = [self defaultSessionConfiguration];
  [defaultSessionConfiguration set_sourceApplicationBundleIdentifier:@"com.apple.shortcuts"];

  return defaultSessionConfiguration;
}

@end