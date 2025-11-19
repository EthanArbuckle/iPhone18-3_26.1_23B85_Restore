@interface WebGeolocationProviderIOS
+ (id)sharedGeolocationProvider;
- (id).cxx_construct;
- (uint64_t)initializeGeolocationForWebView:(WTF *)a1 listener:(void *)a2;
- (uint64_t)initializeGeolocationForWebView:(uint64_t)a1 listener:;
- (uint64_t)registerWebView:(WTF *)a1;
- (uint64_t)registerWebView:(uint64_t)a1;
- (uint64_t)setEnableHighAccuracy:(WTF *)a1;
- (uint64_t)unregisterWebView:(WTF *)a1;
- (void)_handlePendingInitialPosition:(id)a3;
- (void)dealloc;
- (void)errorOccurred:(id)a3;
- (void)geolocationAuthorizationDenied;
- (void)geolocationAuthorizationGranted;
- (void)initializeGeolocationForWebView:(id)a3 listener:(id)a4;
- (void)initializeGeolocationForWebView:(void *)result listener:;
- (void)positionChanged:(id)a3;
- (void)registerWebView:(id)a3;
- (void)registerWebView:(void *)result;
- (void)resetGeolocation;
- (void)resume;
- (void)setEnableHighAccuracy:(BOOL)a3;
- (void)setEnableHighAccuracy:(void *)result;
- (void)suspend;
- (void)unregisterWebView:(id)a3;
- (void)unregisterWebView:(void *)result;
@end

@implementation WebGeolocationProviderIOS

- (void)dealloc
{
  m_table = self->_pendingInitialPositionWebView.m_impl.m_table;
  if (m_table)
  {
    self->_pendingInitialPositionWebView.m_impl.m_table = 0;
    WTF::fastFree((m_table - 2), a2);
  }

  [(NSTimer *)self->_sendLastPositionAsynchronouslyTimer.m_ptr invalidate];
  m_ptr = self->_sendLastPositionAsynchronouslyTimer.m_ptr;
  self->_sendLastPositionAsynchronouslyTimer.m_ptr = 0;
  if (m_ptr)
  {
  }

  v5.receiver = self;
  v5.super_class = WebGeolocationProviderIOS;
  [(WebGeolocationProviderIOS *)&v5 dealloc];
}

+ (id)sharedGeolocationProvider
{
  if (_MergedGlobals_17)
  {
    if (qword_1ED6A61F0 == -1)
    {
      return qword_1ED6A61F8;
    }
  }

  else
  {
    qword_1ED6A61F8 = 0;
    _MergedGlobals_17 = 1;
    if (qword_1ED6A61F0 == -1)
    {
      return qword_1ED6A61F8;
    }
  }

  dispatch_once(&qword_1ED6A61F0, &__block_literal_global_2);
  return qword_1ED6A61F8;
}

void __54__WebGeolocationProviderIOS_sharedGeolocationProvider__block_invoke()
{
  v0 = objc_alloc_init(WebGeolocationProviderIOS);
  v1 = qword_1ED6A61F8;
  qword_1ED6A61F8 = v0;
  if (v1)
  {
  }
}

- (void)suspend
{
  self->_isSuspended = 1;
  m_ptr = self->_lastPosition.m_ptr;
  self->_lastPosition.m_ptr = 0;
  if (m_ptr)
  {
  }

  m_table = self->_pendingInitialPositionWebView.m_impl.m_table;
  if (m_table)
  {
    self->_pendingInitialPositionWebView.m_impl.m_table = 0;
    WTF::fastFree((m_table - 2), a2);
  }

  [(NSTimer *)self->_sendLastPositionAsynchronouslyTimer.m_ptr invalidate];
  v5 = self->_sendLastPositionAsynchronouslyTimer.m_ptr;
  self->_sendLastPositionAsynchronouslyTimer.m_ptr = 0;
  if (v5)
  {
  }

  v6 = self->_coreLocationProvider.m_ptr;

  [(WebGeolocationCoreLocationProvider *)v6 stop];
}

- (void)resume
{
  self->_isSuspended = 0;
  if (self->_shouldResetOnResume)
  {
    [(WebGeolocationProviderIOS *)self resetGeolocation];
    self->_shouldResetOnResume = 0;
  }

  else
  {
    m_table = self->_registeredWebViews.m_impl.m_table;
    if (m_table && *(m_table - 3) || (v4 = self->_webViewsWaitingForCoreLocationAuthorization.m_impl.m_table) != 0 && *(v4 - 3))
    {
      if (!self->_coreLocationProvider.m_ptr)
      {
        v5 = [[_WebCoreLocationUpdateThreadingProxy alloc] initWithProvider:self];
        m_ptr = self->_coreLocationUpdateListenerProxy.m_ptr;
        self->_coreLocationUpdateListenerProxy.m_ptr = v5;
        if (m_ptr)
        {
        }

        v7 = [[WebGeolocationCoreLocationProvider alloc] initWithListener:self->_coreLocationUpdateListenerProxy.m_ptr];
        v8 = self->_coreLocationProvider.m_ptr;
        self->_coreLocationProvider.m_ptr = v7;
        if (v8)
        {
        }
      }

      v9 = self->_webViewsWaitingForCoreLocationAuthorization.m_impl.m_table;
      if (v9 && *(v9 - 3))
      {
        [(WebGeolocationCoreLocationProvider *)self->_coreLocationProvider.m_ptr requestGeolocationAuthorization];
      }

      v10 = self->_registeredWebViews.m_impl.m_table;
      if (v10 && *(v10 - 3))
      {
        [(WebGeolocationCoreLocationProvider *)self->_coreLocationProvider.m_ptr setEnableHighAccuracy:self->_enableHighAccuracy];
        v11 = self->_coreLocationProvider.m_ptr;

        [(WebGeolocationCoreLocationProvider *)v11 start];
      }
    }
  }
}

- (void)_handlePendingInitialPosition:(id)a3
{
  if (self->_lastPosition.m_ptr)
  {
    m_table = self->_pendingInitialPositionWebView.m_impl.m_table;
    if (m_table)
    {
      v5 = *(m_table - 3);
      if (v5)
      {
        if (v5 >> 29)
        {
          __break(0xC471u);
          return;
        }

        v6 = WTF::fastMalloc((8 * v5));
        v8 = v6;
        v9 = self->_pendingInitialPositionWebView.m_impl.m_table;
        if (v9 && *(v9 - 3))
        {
          v10 = *(v9 - 1);
          if (v10)
          {
            v11 = 8 * v10;
            v12 = self->_pendingInitialPositionWebView.m_impl.m_table;
            while (*v12 + 1 <= 1)
            {
              ++v12;
              v11 -= 8;
              if (!v11)
              {
                goto LABEL_22;
              }
            }
          }

          else
          {
            v12 = self->_pendingInitialPositionWebView.m_impl.m_table;
          }

          v13 = &v9[v10];
          if (v12 != v13)
          {
            v14 = 0;
            v15 = *v12;
            v16 = 1;
LABEL_15:
            v17 = v16;
            *(v6 + 8 * v14++) = v15;
            while (++v12 != v13)
            {
              v15 = *v12;
              if (*v12 + 1 > 1)
              {
                ++v16;
                if (v12 != v13)
                {
                  goto LABEL_15;
                }

                break;
              }
            }

            if (v14)
            {
              v18 = 0;
              v19 = 8 * v17;
              do
              {
                [*(v8 + v18) _geolocationDidChangePosition:self->_lastPosition.m_ptr];
                v18 += 8;
              }

              while (v19 != v18);
            }
          }
        }

LABEL_22:
        WTF::fastFree(v8, v7);
      }
    }
  }

  v20 = self->_pendingInitialPositionWebView.m_impl.m_table;
  if (v20)
  {
    self->_pendingInitialPositionWebView.m_impl.m_table = 0;
    WTF::fastFree((v20 - 2), a2);
  }

  [(NSTimer *)self->_sendLastPositionAsynchronouslyTimer.m_ptr invalidate];
  m_ptr = self->_sendLastPositionAsynchronouslyTimer.m_ptr;
  self->_sendLastPositionAsynchronouslyTimer.m_ptr = 0;
  if (m_ptr)
  {
  }
}

- (void)registerWebView:(id)a3
{
  v23 = a3;
  m_table = self->_registeredWebViews.m_impl.m_table;
  p_registeredWebViews = &self->_registeredWebViews;
  v5 = m_table;
  if (!m_table)
  {
LABEL_9:
    WTF::HashTable<WebView *,WebView *,WTF::IdentityExtractor,WTF::DefaultHash<WebView *>,WTF::HashTraits<WebView *>,WTF::HashTraits<WebView *>,WTF::FastMalloc>::add<(WTF::ShouldValidateKey)1>(p_registeredWebViews, &v23, v22);
    v14 = CallUIDelegateReturningBoolean(1, v23, sel_webViewCanCheckGeolocationAuthorizationStatus_);
    if (v14)
    {
      if (!self->_isSuspended)
      {
        WTF::RunLoop::mainSingleton(v14);
        v15 = self;
        v16 = WTF::fastMalloc(0x18);
        *v16 = &unk_1F472DE28;
        v16[1] = self;
        v16[2] = self;
        v22[0] = v16;
        WTF::RunLoop::dispatch();
        v17 = v22[0];
        v22[0] = 0;
        if (v17)
        {
          (*(*v17 + 8))(v17);
        }
      }

      WTF::HashTable<WebView *,WebView *,WTF::IdentityExtractor,WTF::DefaultHash<WebView *>,WTF::HashTraits<WebView *>,WTF::HashTraits<WebView *>,WTF::FastMalloc>::add<(WTF::ShouldValidateKey)1>(&self->_pendingInitialPositionWebView, &v23, v22);
      if (!self->_sendLastPositionAsynchronouslyTimer.m_ptr)
      {
        v18 = [MEMORY[0x1E695DFF0] timerWithTimeInterval:self target:sel__handlePendingInitialPosition_ selector:0 userInfo:0 repeats:0.0];
        v19 = v18;
        if (v18)
        {
          v20 = v18;
        }

        m_ptr = self->_sendLastPositionAsynchronouslyTimer.m_ptr;
        self->_sendLastPositionAsynchronouslyTimer.m_ptr = v19;
        if (m_ptr)
        {
        }

        [WebThreadNSRunLoop() addTimer:self->_sendLastPositionAsynchronouslyTimer.m_ptr forMode:*MEMORY[0x1E695D918]];
      }
    }

    return;
  }

  if (a3 == -1 || !a3)
  {
    __break(0xC471u);
    JUMPOUT(0x1C7ADB810);
  }

  v7 = *(v5 - 2);
  v8 = (a3 + ~(a3 << 32)) ^ ((a3 + ~(a3 << 32)) >> 22);
  v9 = 9 * ((v8 + ~(v8 << 13)) ^ ((v8 + ~(v8 << 13)) >> 8));
  v10 = (v9 ^ (v9 >> 15)) + ~((v9 ^ (v9 >> 15)) << 27);
  v11 = v7 & ((v10 >> 31) ^ v10);
  v12 = v5[v11];
  if (v12 != a3)
  {
    v13 = 1;
    while (v12)
    {
      v11 = (v11 + v13) & v7;
      v12 = v5[v11];
      ++v13;
      if (v12 == a3)
      {
        return;
      }
    }

    goto LABEL_9;
  }
}

- (void)unregisterWebView:(id)a3
{
  v20 = a3;
  m_table = self->_registeredWebViews.m_impl.m_table;
  p_registeredWebViews = &self->_registeredWebViews;
  v5 = m_table;
  if (m_table)
  {
    if (a3 == -1 || !a3)
    {
      __break(0xC471u);
      JUMPOUT(0x1C7ADBA00);
    }

    v7 = *(v5 - 2);
    v8 = (a3 + ~(a3 << 32)) ^ ((a3 + ~(a3 << 32)) >> 22);
    v9 = 9 * ((v8 + ~(v8 << 13)) ^ ((v8 + ~(v8 << 13)) >> 8));
    v10 = (v9 ^ (v9 >> 15)) + ~((v9 ^ (v9 >> 15)) << 27);
    v11 = v7 & ((v10 >> 31) ^ v10);
    v12 = v5[v11];
    if (v12 == a3)
    {
LABEL_8:
      WTF::HashSet<WebView *,WTF::DefaultHash<WebView *>,WTF::HashTraits<WebView *>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>::remove(p_registeredWebViews, &v20);
      v14 = WTF::HashSet<WebView *,WTF::DefaultHash<WebView *>,WTF::HashTraits<WebView *>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>::remove(&self->_pendingInitialPositionWebView, &v20);
      v15 = self->_registeredWebViews.m_impl.m_table;
      if (!v15 || !*(v15 - 3))
      {
        WTF::RunLoop::mainSingleton(v14);
        v16 = self;
        v17 = WTF::fastMalloc(0x18);
        *v17 = &unk_1F472DE50;
        v17[1] = self;
        v17[2] = self;
        v19 = v17;
        WTF::RunLoop::dispatch();
        if (v19)
        {
          (*(*v19 + 8))(v19);
        }

        self->_enableHighAccuracy = 0;
        m_ptr = self->_lastPosition.m_ptr;
        self->_lastPosition.m_ptr = 0;
        if (m_ptr)
        {
        }
      }
    }

    else
    {
      v13 = 1;
      while (v12)
      {
        v11 = (v11 + v13) & v7;
        v12 = v5[v11];
        ++v13;
        if (v12 == a3)
        {
          goto LABEL_8;
        }
      }
    }
  }
}

- (void)setEnableHighAccuracy:(BOOL)a3
{
  self->_enableHighAccuracy |= a3;
  WTF::RunLoop::mainSingleton(self);
  v4 = self;
  v5 = WTF::fastMalloc(0x18);
  *v5 = &unk_1F472DE78;
  v5[1] = self;
  v5[2] = self;
  v6 = v5;
  WTF::RunLoop::dispatch();
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }
}

- (void)initializeGeolocationForWebView:(id)a3 listener:(id)a4
{
  v32 = a3;
  if (!CallUIDelegateReturningBoolean(1, a3, sel_webViewCanCheckGeolocationAuthorizationStatus_))
  {
    return;
  }

  if (a3)
  {
    v7 = a3;
  }

  if (a3 == -1 || !a3)
  {
    __break(0xC471u);
    JUMPOUT(0x1C7ADBF2CLL);
  }

  m_table = self->_webViewsWaitingForCoreLocationAuthorization.m_impl.m_table;
  if (!m_table)
  {
    WTF::HashTable<WTF::RetainPtr<WebView>,WTF::KeyValuePair<WTF::RetainPtr<WebView>,WTF::RetainPtr<objc_object  {objcproto44WebGeolocationProviderInitializationListener}*>>,WTF::KeyValuePairKeyExtractor<WTF::RetainPtr<objc_object  {objcproto44WebGeolocationProviderInitializationListener}*>>,WTF::DefaultHash<WTF::RetainPtr<WebView>>,WTF::HashMap<WTF::RetainPtr<WebView>,objc_object  {objcproto44WebGeolocationProviderInitializationListener}*,WTF::DefaultHash,WTF::HashTraits<WTF::RetainPtr<WebView>>,WTF::HashMap<objc_object  {objcproto44WebGeolocationProviderInitializationListener}*>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits,WTF::ShouldValidateKey>::rehash(&self->_webViewsWaitingForCoreLocationAuthorization, 8u);
    m_table = self->_webViewsWaitingForCoreLocationAuthorization.m_impl.m_table;
  }

  v9 = *(m_table - 2);
  v10 = (a3 + ~(a3 << 32)) ^ ((a3 + ~(a3 << 32)) >> 22);
  v11 = 9 * ((v10 + ~(v10 << 13)) ^ ((v10 + ~(v10 << 13)) >> 8));
  v12 = (v11 ^ (v11 >> 15)) + ~((v11 ^ (v11 >> 15)) << 27);
  v13 = v9 & ((v12 >> 31) ^ v12);
  v14 = &m_table[4 * v13];
  v15 = *v14;
  if (*v14)
  {
    v16 = 0;
    v17 = 1;
    do
    {
      if (v15 == a3)
      {

        goto LABEL_32;
      }

      if (v15 == -1)
      {
        v16 = v14;
      }

      v13 = (v13 + v17) & v9;
      v14 = &m_table[4 * v13];
      v15 = *v14;
      ++v17;
    }

    while (*v14);
    if (!v16)
    {
      goto LABEL_17;
    }

    *v16 = 0;
    v16[1] = 0;
    --*(self->_webViewsWaitingForCoreLocationAuthorization.m_impl.m_table - 4);
    v18 = *v16;
    *v16 = a3;
    if (v18)
    {
    }
  }

  else
  {
LABEL_17:
    *v14 = a3;
    v16 = v14;
  }

  if (a4)
  {
    v19 = a4;
  }

  v20 = v16[1];
  v16[1] = a4;
  if (v20)
  {
  }

  v21 = self->_webViewsWaitingForCoreLocationAuthorization.m_impl.m_table;
  if (v21)
  {
    v22 = *(v21 - 4);
    v23 = *(v21 - 3) + 1;
    *(v21 - 3) = v23;
    v24 = (v22 + v23);
    v25 = *(v21 - 1);
    if (v25 <= 0x400)
    {
      goto LABEL_24;
    }

LABEL_29:
    if (v25 <= 2 * v24)
    {
      goto LABEL_30;
    }

    goto LABEL_32;
  }

  v23 = 1;
  MEMORY[0xFFFFFFFFFFFFFFF4] = 1;
  v24 = (MEMORY[0xFFFFFFFFFFFFFFF0] + 1);
  v25 = MEMORY[0xFFFFFFFFFFFFFFFC];
  if (MEMORY[0xFFFFFFFFFFFFFFFC] > 0x400u)
  {
    goto LABEL_29;
  }

LABEL_24:
  if (3 * v25 <= 4 * v24)
  {
    if (!v25)
    {
      v26 = 8;
LABEL_31:
      WTF::HashTable<WTF::RetainPtr<WebView>,WTF::KeyValuePair<WTF::RetainPtr<WebView>,WTF::RetainPtr<objc_object  {objcproto44WebGeolocationProviderInitializationListener}*>>,WTF::KeyValuePairKeyExtractor<WTF::RetainPtr<objc_object  {objcproto44WebGeolocationProviderInitializationListener}*>>,WTF::DefaultHash<WTF::RetainPtr<WebView>>,WTF::HashMap<WTF::RetainPtr<WebView>,objc_object  {objcproto44WebGeolocationProviderInitializationListener}*,WTF::DefaultHash,WTF::HashTraits<WTF::RetainPtr<WebView>>,WTF::HashMap<objc_object  {objcproto44WebGeolocationProviderInitializationListener}*>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits,WTF::ShouldValidateKey>::rehash(&self->_webViewsWaitingForCoreLocationAuthorization, v26);
      goto LABEL_32;
    }

LABEL_30:
    v26 = v25 << (6 * v23 >= (2 * v25));
    goto LABEL_31;
  }

LABEL_32:
  v27 = WTF::HashTable<WebView *,WebView *,WTF::IdentityExtractor,WTF::DefaultHash<WebView *>,WTF::HashTraits<WebView *>,WTF::HashTraits<WebView *>,WTF::FastMalloc>::add<(WTF::ShouldValidateKey)1>(&self->_trackedWebViews, &v32, &v31);
  WTF::RunLoop::mainSingleton(v27);
  if (self)
  {
    v28 = self;
  }

  v29 = WTF::fastMalloc(0x18);
  *v29 = &unk_1F472DEA0;
  v29[1] = self;
  v29[2] = self;
  v31 = v29;
  WTF::RunLoop::dispatch();
  v30 = v31;
  v31 = 0;
  if (v30)
  {
    (*(*v30 + 8))(v30);
  }
}

- (void)geolocationAuthorizationGranted
{
  m_table = self->_webViewsWaitingForCoreLocationAuthorization.m_impl.m_table;
  self->_webViewsWaitingForCoreLocationAuthorization.m_impl.m_table = 0;
  if (!m_table)
  {
    v4 = 0;
    v3 = 0;
LABEL_10:
    v6 = v4;
    v4 = &m_table[2 * v3];
    if (!m_table)
    {
      v8 = 0;
      goto LABEL_17;
    }

    goto LABEL_8;
  }

  v3 = *(m_table - 1);
  v4 = &m_table[2 * v3];
  if (!*(m_table - 3))
  {
    goto LABEL_10;
  }

  if (!v3)
  {
    v7 = 0;
    v6 = m_table;
    goto LABEL_13;
  }

  v5 = 16 * v3;
  v6 = m_table;
  while (*v6 + 1 <= 1)
  {
    v6 += 2;
    v5 -= 16;
    if (!v5)
    {
      v6 = v4;
      break;
    }
  }

LABEL_8:
  v7 = *(m_table - 1);
LABEL_13:
  v8 = &m_table[2 * v7];
LABEL_17:
  while (v6 != v8)
  {
    [v6[1] initializationAllowedWebView:*v6];
    do
    {
      v6 += 2;
    }

    while (v6 != v4 && *v6 + 1 <= 1);
  }

  if (m_table)
  {
    v9 = *(m_table - 1);
    if (v9)
    {
      v10 = m_table;
      do
      {
        v11 = *v10;
        if (*v10 != -1)
        {
          v12 = v10[1];
          v10[1] = 0;
          if (v12)
          {

            v11 = *v10;
          }

          *v10 = 0;
          if (v11)
          {
          }
        }

        v10 += 2;
        --v9;
      }

      while (v9);
    }

    WTF::fastFree((m_table - 2), a2);
  }
}

- (void)geolocationAuthorizationDenied
{
  m_table = self->_webViewsWaitingForCoreLocationAuthorization.m_impl.m_table;
  self->_webViewsWaitingForCoreLocationAuthorization.m_impl.m_table = 0;
  if (!m_table)
  {
    v4 = 0;
    v3 = 0;
LABEL_10:
    v6 = v4;
    v4 = &m_table[2 * v3];
    if (!m_table)
    {
      v8 = 0;
      goto LABEL_17;
    }

    goto LABEL_8;
  }

  v3 = *(m_table - 1);
  v4 = &m_table[2 * v3];
  if (!*(m_table - 3))
  {
    goto LABEL_10;
  }

  if (!v3)
  {
    v7 = 0;
    v6 = m_table;
    goto LABEL_13;
  }

  v5 = 16 * v3;
  v6 = m_table;
  while (*v6 + 1 <= 1)
  {
    v6 += 2;
    v5 -= 16;
    if (!v5)
    {
      v6 = v4;
      break;
    }
  }

LABEL_8:
  v7 = *(m_table - 1);
LABEL_13:
  v8 = &m_table[2 * v7];
LABEL_17:
  while (v6 != v8)
  {
    [v6[1] initializationDeniedWebView:*v6];
    do
    {
      v6 += 2;
    }

    while (v6 != v4 && *v6 + 1 <= 1);
  }

  if (m_table)
  {
    v9 = *(m_table - 1);
    if (v9)
    {
      v10 = m_table;
      do
      {
        v11 = *v10;
        if (*v10 != -1)
        {
          v12 = v10[1];
          v10[1] = 0;
          if (v12)
          {

            v11 = *v10;
          }

          *v10 = 0;
          if (v11)
          {
          }
        }

        v10 += 2;
        --v9;
      }

      while (v9);
    }

    WTF::fastFree((m_table - 2), a2);
  }
}

- (void)positionChanged:(id)a3
{
  m_table = self->_pendingInitialPositionWebView.m_impl.m_table;
  if (m_table)
  {
    self->_pendingInitialPositionWebView.m_impl.m_table = 0;
    WTF::fastFree((m_table - 2), a2);
  }

  [(NSTimer *)self->_sendLastPositionAsynchronouslyTimer.m_ptr invalidate];
  m_ptr = self->_sendLastPositionAsynchronouslyTimer.m_ptr;
  self->_sendLastPositionAsynchronouslyTimer.m_ptr = 0;
  if (m_ptr)
  {
  }

  if (a3)
  {
    v7 = a3;
  }

  v8 = self->_lastPosition.m_ptr;
  self->_lastPosition.m_ptr = a3;
  if (v8)
  {
  }

  v9 = self->_registeredWebViews.m_impl.m_table;
  if (v9)
  {
    v10 = *(v9 - 3);
    if (v10)
    {
      if (v10 >> 29)
      {
        __break(0xC471u);
      }

      else
      {
        v11 = WTF::fastMalloc((8 * v10));
        v13 = v11;
        v14 = self->_registeredWebViews.m_impl.m_table;
        if (v14 && *(v14 - 3))
        {
          v15 = *(v14 - 1);
          if (v15)
          {
            v16 = 8 * v15;
            v17 = self->_registeredWebViews.m_impl.m_table;
            while (*v17 + 1 <= 1)
            {
              ++v17;
              v16 -= 8;
              if (!v16)
              {
                goto LABEL_30;
              }
            }
          }

          else
          {
            v17 = self->_registeredWebViews.m_impl.m_table;
          }

          v18 = &v14[v15];
          if (v17 != v18)
          {
            v19 = 0;
            v20 = *v17;
            v21 = 1;
LABEL_23:
            v22 = v21;
            *(v11 + 8 * v19++) = v20;
            while (++v17 != v18)
            {
              v20 = *v17;
              if (*v17 + 1 > 1)
              {
                ++v21;
                if (v17 != v18)
                {
                  goto LABEL_23;
                }

                break;
              }
            }

            if (v19)
            {
              v23 = 0;
              v24 = 8 * v22;
              do
              {
                [*(v13 + v23) _geolocationDidChangePosition:self->_lastPosition.m_ptr];
                v23 += 8;
              }

              while (v24 != v23);
            }
          }
        }

LABEL_30:

        WTF::fastFree(v13, v12);
      }
    }
  }
}

- (void)errorOccurred:(id)a3
{
  m_ptr = self->_lastPosition.m_ptr;
  self->_lastPosition.m_ptr = 0;
  if (m_ptr)
  {
  }

  m_table = self->_registeredWebViews.m_impl.m_table;
  if (m_table)
  {
    v7 = *(m_table - 3);
    if (v7)
    {
      if (v7 >> 29)
      {
        __break(0xC471u);
      }

      else
      {
        v8 = WTF::fastMalloc((8 * v7));
        v10 = v8;
        v11 = self->_registeredWebViews.m_impl.m_table;
        if (v11 && *(v11 - 3))
        {
          v12 = *(v11 - 1);
          if (v12)
          {
            v13 = 8 * v12;
            v14 = self->_registeredWebViews.m_impl.m_table;
            while (*v14 + 1 <= 1)
            {
              ++v14;
              v13 -= 8;
              if (!v13)
              {
                goto LABEL_24;
              }
            }
          }

          else
          {
            v14 = self->_registeredWebViews.m_impl.m_table;
          }

          v15 = &v11[v12];
          if (v14 != v15)
          {
            v16 = 0;
            v17 = *v14;
            v18 = 1;
LABEL_17:
            v19 = v18;
            *(v8 + 8 * v16++) = v17;
            while (++v14 != v15)
            {
              v17 = *v14;
              if (*v14 + 1 > 1)
              {
                ++v18;
                if (v14 != v15)
                {
                  goto LABEL_17;
                }

                break;
              }
            }

            if (v16)
            {
              v20 = 0;
              v21 = 8 * v19;
              do
              {
                [*(v10 + v20) _geolocationDidFailWithMessage:a3];
                v20 += 8;
              }

              while (v21 != v20);
            }
          }
        }

LABEL_24:

        WTF::fastFree(v10, v9);
      }
    }
  }
}

- (void)resetGeolocation
{
  if (self->_isSuspended)
  {
    self->_shouldResetOnResume = 1;
  }

  else
  {
    m_table = self->_webViewsWaitingForCoreLocationAuthorization.m_impl.m_table;
    if (m_table)
    {
      self->_webViewsWaitingForCoreLocationAuthorization.m_impl.m_table = 0;
      v4 = *(m_table - 1);
      if (v4)
      {
        v5 = m_table;
        do
        {
          v6 = *v5;
          if (*v5 != -1)
          {
            v7 = *(v5 + 1);
            *(v5 + 1) = 0;
            if (v7)
            {

              v6 = *v5;
            }

            *v5 = 0;
            if (v6)
            {
            }
          }

          v5 += 4;
          --v4;
        }

        while (v4);
      }

      WTF::fastFree((m_table - 4), a2);
    }

    v8 = self->_registeredWebViews.m_impl.m_table;
    if (v8)
    {
      self->_registeredWebViews.m_impl.m_table = 0;
      WTF::fastFree((v8 - 2), a2);
    }

    v9 = self->_pendingInitialPositionWebView.m_impl.m_table;
    if (v9)
    {
      self->_pendingInitialPositionWebView.m_impl.m_table = 0;
      WTF::fastFree((v9 - 2), a2);
    }

    [(NSTimer *)self->_sendLastPositionAsynchronouslyTimer.m_ptr invalidate];
    m_ptr = self->_sendLastPositionAsynchronouslyTimer.m_ptr;
    self->_sendLastPositionAsynchronouslyTimer.m_ptr = 0;
    if (m_ptr)
    {
    }

    v11 = self->_trackedWebViews.m_impl.m_table;
    if (v11)
    {
      v12 = *(v11 - 3);
      if (v12)
      {
        if (v12 >> 29)
        {
          __break(0xC471u);
        }

        else
        {
          v13 = WTF::fastMalloc((8 * v12));
          v15 = v13;
          v16 = self->_trackedWebViews.m_impl.m_table;
          if (v16 && *(v16 - 3))
          {
            v17 = *(v16 - 1);
            if (v17)
            {
              v18 = 8 * v17;
              v19 = self->_trackedWebViews.m_impl.m_table;
              while (*v19 + 1 <= 1)
              {
                ++v19;
                v18 -= 8;
                if (!v18)
                {
                  goto LABEL_40;
                }
              }
            }

            else
            {
              v19 = self->_trackedWebViews.m_impl.m_table;
            }

            v20 = &v16[v17];
            if (v19 != v20)
            {
              v21 = 0;
              v22 = *v19;
              v23 = 1;
LABEL_33:
              v24 = v23;
              *(v13 + 8 * v21++) = v22;
              while (++v19 != v20)
              {
                v22 = *v19;
                if (*v19 + 1 > 1)
                {
                  ++v23;
                  if (v19 != v20)
                  {
                    goto LABEL_33;
                  }

                  break;
                }
              }

              if (v21)
              {
                v25 = 0;
                v26 = 8 * v24;
                do
                {
                  [*(v15 + v25) _resetAllGeolocationPermission];
                  v25 += 8;
                }

                while (v26 != v25);
              }
            }
          }

LABEL_40:

          WTF::fastFree(v15, v14);
        }
      }
    }
  }
}

- (id).cxx_construct
{
  *(self + 1) = 0;
  *(self + 2) = 0;
  *(self + 2) = 0u;
  *(self + 3) = 0u;
  *(self + 4) = 0u;
  return self;
}

- (void)registerWebView:(void *)result
{
  *result = &unk_1F472DE28;
  v1 = result[2];
  result[2] = 0;
  if (v1)
  {
    v2 = result;

    return v2;
  }

  return result;
}

- (uint64_t)registerWebView:(WTF *)a1
{
  *a1 = &unk_1F472DE28;
  v3 = *(a1 + 2);
  *(a1 + 2) = 0;
  if (v3)
  {
    v4 = a1;

    a1 = v4;
    v2 = vars8;
  }

  return WTF::fastFree(a1, a2);
}

- (uint64_t)registerWebView:(uint64_t)a1
{
  if (*(*(a1 + 8) + 8))
  {
    goto LABEL_2;
  }

  v4 = [[_WebCoreLocationUpdateThreadingProxy alloc] initWithProvider:*(a1 + 8)];
  v5 = *(a1 + 8);
  v6 = *(v5 + 16);
  *(v5 + 16) = v4;
  if (v6)
  {
  }

  v7 = [[WebGeolocationCoreLocationProvider alloc] initWithListener:*(*(a1 + 8) + 16)];
  v8 = *(a1 + 8);
  v9 = *(v8 + 8);
  *(v8 + 8) = v7;
  if (!v9)
  {
LABEL_2:
    v2 = *(*(a1 + 8) + 8);
  }

  else
  {

    v2 = *(*(a1 + 8) + 8);
  }

  return [v2 start];
}

- (void)unregisterWebView:(void *)result
{
  *result = &unk_1F472DE50;
  v1 = result[2];
  result[2] = 0;
  if (v1)
  {
    v2 = result;

    return v2;
  }

  return result;
}

- (uint64_t)unregisterWebView:(WTF *)a1
{
  *a1 = &unk_1F472DE50;
  v3 = *(a1 + 2);
  *(a1 + 2) = 0;
  if (v3)
  {
    v4 = a1;

    a1 = v4;
    v2 = vars8;
  }

  return WTF::fastFree(a1, a2);
}

- (void)setEnableHighAccuracy:(void *)result
{
  *result = &unk_1F472DE78;
  v1 = result[2];
  result[2] = 0;
  if (v1)
  {
    v2 = result;

    return v2;
  }

  return result;
}

- (uint64_t)setEnableHighAccuracy:(WTF *)a1
{
  *a1 = &unk_1F472DE78;
  v3 = *(a1 + 2);
  *(a1 + 2) = 0;
  if (v3)
  {
    v4 = a1;

    a1 = v4;
    v2 = vars8;
  }

  return WTF::fastFree(a1, a2);
}

- (void)initializeGeolocationForWebView:(void *)result listener:
{
  *result = &unk_1F472DEA0;
  v1 = result[2];
  result[2] = 0;
  if (v1)
  {
    v2 = result;

    return v2;
  }

  return result;
}

- (uint64_t)initializeGeolocationForWebView:(WTF *)a1 listener:(void *)a2
{
  *a1 = &unk_1F472DEA0;
  v3 = *(a1 + 2);
  *(a1 + 2) = 0;
  if (v3)
  {
    v4 = a1;

    a1 = v4;
    v2 = vars8;
  }

  return WTF::fastFree(a1, a2);
}

- (uint64_t)initializeGeolocationForWebView:(uint64_t)a1 listener:
{
  if (*(*(a1 + 8) + 8))
  {
    goto LABEL_2;
  }

  v4 = [[_WebCoreLocationUpdateThreadingProxy alloc] initWithProvider:*(a1 + 8)];
  v5 = *(a1 + 8);
  v6 = *(v5 + 16);
  *(v5 + 16) = v4;
  if (v6)
  {
  }

  v7 = [[WebGeolocationCoreLocationProvider alloc] initWithListener:*(*(a1 + 8) + 16)];
  v8 = *(a1 + 8);
  v9 = *(v8 + 8);
  *(v8 + 8) = v7;
  if (!v9)
  {
LABEL_2:
    v2 = *(*(a1 + 8) + 8);
  }

  else
  {

    v2 = *(*(a1 + 8) + 8);
  }

  return [v2 requestGeolocationAuthorization];
}

@end