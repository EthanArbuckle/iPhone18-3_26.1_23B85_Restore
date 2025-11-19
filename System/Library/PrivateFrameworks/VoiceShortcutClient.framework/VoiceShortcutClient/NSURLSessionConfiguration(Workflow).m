@interface NSURLSessionConfiguration(Workflow)
+ (id)wf_defaultSessionConfiguration;
@end

@implementation NSURLSessionConfiguration(Workflow)

+ (id)wf_defaultSessionConfiguration
{
  v1 = [a1 defaultSessionConfiguration];
  [v1 set_sourceApplicationBundleIdentifier:@"com.apple.shortcuts"];

  return v1;
}

@end