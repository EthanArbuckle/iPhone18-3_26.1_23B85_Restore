@interface WebInspectorFrontend
- (WebInspectorFrontend)initWithFrontendClient:(NakedPtr<WebInspectorFrontendClient>)client;
@end

@implementation WebInspectorFrontend

- (WebInspectorFrontend)initWithFrontendClient:(NakedPtr<WebInspectorFrontendClient>)client
{
  v5.receiver = self;
  v5.super_class = WebInspectorFrontend;
  result = [(WebInspectorFrontend *)&v5 init];
  if (result)
  {
    result->m_frontendClient.m_ptr = *client.m_ptr;
  }

  return result;
}

@end