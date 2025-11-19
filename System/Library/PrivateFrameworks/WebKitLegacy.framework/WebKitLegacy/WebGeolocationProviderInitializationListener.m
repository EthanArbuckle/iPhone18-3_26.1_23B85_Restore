@interface WebGeolocationProviderInitializationListener
- (WebGeolocationProviderInitializationListener)initWithGeolocation:(reference_wrapper<WebCore::Geolocation>)a3;
- (void)initializationAllowedWebView:(id)a3;
- (void)initializationDeniedWebView:(id)a3;
@end

@implementation WebGeolocationProviderInitializationListener

- (WebGeolocationProviderInitializationListener)initWithGeolocation:(reference_wrapper<WebCore::Geolocation>)a3
{
  v9.receiver = self;
  v9.super_class = WebGeolocationProviderInitializationListener;
  result = [(WebGeolocationProviderInitializationListener *)&v9 init];
  if (result)
  {
    ++*(a3.var0 + 10);
    m_ptr = result->m_geolocation.m_ptr;
    result->m_geolocation.m_ptr = a3.var0;
    if (m_ptr)
    {
      if (*(m_ptr + 10) == 1)
      {
        v6 = result;
        v7 = MEMORY[0x1CCA64030](m_ptr);
        bmalloc::api::tzoneFree(v7, v8);
        return v6;
      }

      else
      {
        --*(m_ptr + 10);
      }
    }
  }

  return result;
}

- (void)initializationAllowedWebView:(id)a3
{
  v5 = WebCore::Geolocation::frame(self->m_geolocation.m_ptr);
  if (v5)
  {
    v6 = [[WebSecurityOrigin alloc] _initWithWebCoreSecurityOrigin:WebCore::SecurityContext::securityOrigin((*(v5 + 224) + 208))];
    v7 = [WebGeolocationPolicyListener alloc];
    m_ptr = self->m_geolocation.m_ptr;
    v8 = [(WebGeolocationPolicyListener *)v7 initWithGeolocation:&m_ptr forWebView:a3];
    v9 = *(*(v5 + 208) + 16);
    if ((*(*v9 + 1032))(v9))
    {
      v10 = 0;
    }

    else
    {
      v10 = v9[3];
    }

    CallUIDelegate(a3, sel_webView_decidePolicyForGeolocationRequestFromOrigin_frame_listener_, v6, v10, v8);
    if (v8)
    {
    }

    if (v6)
    {
    }
  }
}

- (void)initializationDeniedWebView:(id)a3
{
  m_ptr = self->m_geolocation.m_ptr;
  v6 = 0;
  WebCore::Geolocation::setIsAllowed(m_ptr, 0, &v6);
  v5 = v6;
  v6 = 0;
  if (v5)
  {
    if (atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v5, v4);
    }
  }
}

@end