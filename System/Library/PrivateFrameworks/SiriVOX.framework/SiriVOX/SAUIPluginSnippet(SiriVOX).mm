@interface SAUIPluginSnippet(SiriVOX)
- (BOOL)svx_isResponseViewIdPresent;
@end

@implementation SAUIPluginSnippet(SiriVOX)

- (BOOL)svx_isResponseViewIdPresent
{
  responseViewId = [self responseViewId];
  v2 = responseViewId != 0;

  return v2;
}

@end