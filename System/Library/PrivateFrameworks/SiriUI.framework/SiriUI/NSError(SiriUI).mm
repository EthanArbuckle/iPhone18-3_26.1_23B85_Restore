@interface NSError(SiriUI)
- (uint64_t)isSiriUISnippetPluginError;
@end

@implementation NSError(SiriUI)

- (uint64_t)isSiriUISnippetPluginError
{
  domain = [self domain];
  v2 = [domain isEqualToString:@"com.apple.SiriUI.SnippetPlugin.ErrorDomain"];

  return v2;
}

@end