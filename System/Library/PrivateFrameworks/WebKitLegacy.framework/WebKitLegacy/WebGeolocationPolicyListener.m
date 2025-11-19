@interface WebGeolocationPolicyListener
- (BOOL)shouldClearCache;
- (WebGeolocationPolicyListener)initWithGeolocation:(NakedPtr<WebCore:(id)a4 :Geolocation>)a3 forWebView:;
- (id).cxx_construct;
@end

@implementation WebGeolocationPolicyListener

- (WebGeolocationPolicyListener)initWithGeolocation:(NakedPtr<WebCore:(id)a4 :Geolocation>)a3 forWebView:
{
  v15.receiver = self;
  v15.super_class = WebGeolocationPolicyListener;
  v6 = [(WebGeolocationPolicyListener *)&v15 init];
  v7 = v6;
  if (!v6)
  {
    return v7;
  }

  v8 = *a3.var0;
  if (*a3.var0)
  {
    ++*(v8 + 40);
  }

  m_ptr = v6->_geolocation.m_ptr;
  v7->_geolocation.m_ptr = v8;
  if (!m_ptr)
  {
LABEL_7:
    if (!a4)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  if (*(m_ptr + 10) != 1)
  {
    --*(m_ptr + 10);
    goto LABEL_7;
  }

  v13 = MEMORY[0x1CCA64030]();
  bmalloc::api::tzoneFree(v13, v14);
  if (a4)
  {
LABEL_8:
    v10 = a4;
  }

LABEL_9:
  v11 = v7->_webView.m_ptr;
  v7->_webView.m_ptr = a4;
  if (v11)
  {
  }

  return v7;
}

WTF::StringImpl *__37__WebGeolocationPolicyListener_allow__block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 8);
  v4 = 0;
  WebCore::Geolocation::setIsAllowed(v1, 1, &v4);
  result = v4;
  v4 = 0;
  if (result)
  {
    if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(result, v2);
    }
  }

  return result;
}

WTF::StringImpl *__36__WebGeolocationPolicyListener_deny__block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 8);
  v4 = 0;
  WebCore::Geolocation::setIsAllowed(v1, 0, &v4);
  result = v4;
  v4 = 0;
  if (result)
  {
    if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(result, v2);
    }
  }

  return result;
}

uint64_t __51__WebGeolocationPolicyListener_denyOnlyThisRequest__block_invoke(uint64_t a1)
{
  [*(a1 + 32) deny];
  v2 = *(*(a1 + 32) + 8);

  return MEMORY[0x1EEE54320](v2);
}

- (BOOL)shouldClearCache
{
  WebThreadLock();
  v3 = [(WebView *)self->_webView.m_ptr preferences];

  return [(WebPreferences *)v3 _alwaysRequestGeolocationPermission];
}

- (id).cxx_construct
{
  *(self + 1) = 0;
  *(self + 2) = 0;
  return self;
}

@end