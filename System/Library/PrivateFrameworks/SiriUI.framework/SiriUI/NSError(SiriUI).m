@interface NSError(SiriUI)
- (uint64_t)isSiriUISnippetPluginError;
@end

@implementation NSError(SiriUI)

- (uint64_t)isSiriUISnippetPluginError
{
  v1 = [a1 domain];
  v2 = [v1 isEqualToString:@"com.apple.SiriUI.SnippetPlugin.ErrorDomain"];

  return v2;
}

@end