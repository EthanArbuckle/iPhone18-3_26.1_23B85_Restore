@interface WebInspectorFrontend
- (WebInspectorFrontend)initWithFrontendClient:(NakedPtr<WebInspectorFrontendClient>)a3;
@end

@implementation WebInspectorFrontend

- (WebInspectorFrontend)initWithFrontendClient:(NakedPtr<WebInspectorFrontendClient>)a3
{
  v5.receiver = self;
  v5.super_class = WebInspectorFrontend;
  result = [(WebInspectorFrontend *)&v5 init];
  if (result)
  {
    result->m_frontendClient.m_ptr = *a3.m_ptr;
  }

  return result;
}

@end