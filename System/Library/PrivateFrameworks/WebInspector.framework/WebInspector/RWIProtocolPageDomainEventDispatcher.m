@interface RWIProtocolPageDomainEventDispatcher
- (RWIProtocolPageDomainEventDispatcher)initWithController:(AugmentableInspectorController *)a3;
- (void)defaultUserPreferencesDidChangeWithPreferences:(id)a3;
- (void)domContentEventFiredWithTimestamp:(double)a3;
- (void)frameClearedScheduledNavigationWithFrameId:(id)a3;
- (void)frameDetachedWithFrameId:(id)a3;
- (void)frameNavigatedWithFrame:(id)a3;
- (void)frameScheduledNavigationWithFrameId:(id)a3 delay:(double)a4;
- (void)frameStartedLoadingWithFrameId:(id)a3;
- (void)frameStoppedLoadingWithFrameId:(id)a3;
- (void)loadEventFiredWithTimestamp:(double)a3;
@end

@implementation RWIProtocolPageDomainEventDispatcher

- (RWIProtocolPageDomainEventDispatcher)initWithController:(AugmentableInspectorController *)a3
{
  v5.receiver = self;
  v5.super_class = RWIProtocolPageDomainEventDispatcher;
  result = [(RWIProtocolPageDomainEventDispatcher *)&v5 init];
  if (result)
  {
    result->_controller = a3;
  }

  return result;
}

- (void)domContentEventFiredWithTimestamp:(double)a3
{
  v4 = (*(self->_controller->var0 + 4))(self->_controller, a2);
  WTF::JSONImpl::Object::create(&v21, v4);
  v5 = v21;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v20 = v22[0];
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v19 = v22[0];
  WTF::JSONImpl::ObjectBase::setString(v5, &v20, &v19);
  v6 = ___ZN9Inspector33ObjCInspectorCSSBackendDispatcher17getStyleSheetTextElRKN3WTF6StringE_block_invoke_2_cold_1(&v19);
  WTF::JSONImpl::Object::create(&v20, v6);
  v7 = v20;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v18 = v22[0];
  WTF::JSONImpl::ObjectBase::setDouble(v7, &v18, a3);
  Inspector::ObjCInspectorCSSBackendDispatcher::setLayoutContextTypeChangedMode(&v18);
  v8 = v21;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v9 = v20;
  v20 = 0;
  v17 = v9;
  v18 = v22[0];
  WTF::HashMap<WTF::String,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::inlineSet<WTF::String const&,WTF::Ref<WTF::JSONImpl::ObjectBase,WTF::RawPtrTraits<WTF::JSONImpl::ObjectBase>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::ObjectBase>>>(v8 + 2, &v18, &v17, v22);
  if (v23 == 1)
  {
    v11 = *(v8 + 9);
    if (v11 == *(v8 + 8))
    {
      WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WTF::String const&>(v8 + 24, &v18);
    }

    else
    {
      v12 = *(v8 + 3);
      v13 = v18;
      if (v18)
      {
        atomic_fetch_add_explicit(v18, 2u, memory_order_relaxed);
      }

      v14 = *(v8 + 9);
      *(v12 + 8 * v11) = v13;
      *(v8 + 9) = v14 + 1;
    }
  }

  v15 = v17;
  v17 = 0;
  if (v15)
  {
    Inspector::toJSONObjectArray(v15);
  }

  v16 = v18;
  v18 = 0;
  if (v16 && atomic_fetch_add_explicit(v16, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v16, v10);
  }

  WTF::JSONImpl::Value::toJSONString(v22, v21);
  Inspector::FrontendRouter::sendEvent(v4, v22);
  [RWIProtocolCSSDomainEventDispatcher styleSheetChangedWithStyleSheetId:v22];
}

- (void)loadEventFiredWithTimestamp:(double)a3
{
  v4 = (*(self->_controller->var0 + 4))(self->_controller, a2);
  WTF::JSONImpl::Object::create(&v21, v4);
  v5 = v21;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v20 = v22[0];
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v19 = v22[0];
  WTF::JSONImpl::ObjectBase::setString(v5, &v20, &v19);
  v6 = ___ZN9Inspector33ObjCInspectorCSSBackendDispatcher17getStyleSheetTextElRKN3WTF6StringE_block_invoke_2_cold_1(&v19);
  WTF::JSONImpl::Object::create(&v20, v6);
  v7 = v20;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v18 = v22[0];
  WTF::JSONImpl::ObjectBase::setDouble(v7, &v18, a3);
  Inspector::ObjCInspectorCSSBackendDispatcher::setLayoutContextTypeChangedMode(&v18);
  v8 = v21;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v9 = v20;
  v20 = 0;
  v17 = v9;
  v18 = v22[0];
  WTF::HashMap<WTF::String,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::inlineSet<WTF::String const&,WTF::Ref<WTF::JSONImpl::ObjectBase,WTF::RawPtrTraits<WTF::JSONImpl::ObjectBase>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::ObjectBase>>>(v8 + 2, &v18, &v17, v22);
  if (v23 == 1)
  {
    v11 = *(v8 + 9);
    if (v11 == *(v8 + 8))
    {
      WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WTF::String const&>(v8 + 24, &v18);
    }

    else
    {
      v12 = *(v8 + 3);
      v13 = v18;
      if (v18)
      {
        atomic_fetch_add_explicit(v18, 2u, memory_order_relaxed);
      }

      v14 = *(v8 + 9);
      *(v12 + 8 * v11) = v13;
      *(v8 + 9) = v14 + 1;
    }
  }

  v15 = v17;
  v17 = 0;
  if (v15)
  {
    Inspector::toJSONObjectArray(v15);
  }

  v16 = v18;
  v18 = 0;
  if (v16 && atomic_fetch_add_explicit(v16, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v16, v10);
  }

  WTF::JSONImpl::Value::toJSONString(v22, v21);
  Inspector::FrontendRouter::sendEvent(v4, v22);
  [RWIProtocolCSSDomainEventDispatcher styleSheetChangedWithStyleSheetId:v22];
}

- (void)frameNavigatedWithFrame:(id)a3
{
  v4 = (*(self->_controller->var0 + 4))(self->_controller, a2);
  v5 = v4;
  if (!a3)
  {
    v4 = [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"required parameter '%@' cannot be nil", @"frame"}];
  }

  WTF::JSONImpl::Object::create(&v31, v4);
  v6 = v31;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v30 = v32[0];
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v29 = v32[0];
  WTF::JSONImpl::ObjectBase::setString(v6, &v30, &v29);
  v7 = ___ZN9Inspector33ObjCInspectorCSSBackendDispatcher17getStyleSheetTextElRKN3WTF6StringE_block_invoke_2_cold_1(&v29);
  WTF::JSONImpl::Object::create(&v30, v7);
  v8 = v30;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v28 = v32[0];
  if (a3)
  {
    [a3 toJSONObject];
    v9 = v26;
  }

  else
  {
    v9 = 0;
  }

  v27 = v9;
  WTF::HashMap<WTF::String,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::inlineSet<WTF::String const&,WTF::Ref<WTF::JSONImpl::ObjectBase,WTF::RawPtrTraits<WTF::JSONImpl::ObjectBase>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::ObjectBase>>>((v8 + 16), &v28, &v27, v32);
  if (v33 == 1)
  {
    v11 = *(v8 + 36);
    if (v11 == *(v8 + 32))
    {
      WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WTF::String const&>(v8 + 24, &v28);
    }

    else
    {
      v12 = *(v8 + 24);
      v13 = v28;
      if (v28)
      {
        atomic_fetch_add_explicit(v28, 2u, memory_order_relaxed);
      }

      v14 = *(v8 + 36);
      *(v12 + 8 * v11) = v13;
      *(v8 + 36) = v14 + 1;
    }
  }

  v15 = v27;
  v27 = 0;
  if (v15)
  {
    Inspector::toJSONObjectArray(v15);
  }

  v16 = v28;
  v28 = 0;
  if (v16 && atomic_fetch_add_explicit(v16, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v16, v10);
  }

  v17 = v31;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v18 = v30;
  v30 = 0;
  v27 = v18;
  v28 = v32[0];
  WTF::HashMap<WTF::String,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::inlineSet<WTF::String const&,WTF::Ref<WTF::JSONImpl::ObjectBase,WTF::RawPtrTraits<WTF::JSONImpl::ObjectBase>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::ObjectBase>>>(v17 + 2, &v28, &v27, v32);
  if (v33 == 1)
  {
    v20 = *(v17 + 9);
    if (v20 == *(v17 + 8))
    {
      WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WTF::String const&>(v17 + 24, &v28);
    }

    else
    {
      v21 = *(v17 + 3);
      v22 = v28;
      if (v28)
      {
        atomic_fetch_add_explicit(v28, 2u, memory_order_relaxed);
      }

      v23 = *(v17 + 9);
      *(v21 + 8 * v20) = v22;
      *(v17 + 9) = v23 + 1;
    }
  }

  v24 = v27;
  v27 = 0;
  if (v24)
  {
    Inspector::toJSONObjectArray(v24);
  }

  v25 = v28;
  v28 = 0;
  if (v25 && atomic_fetch_add_explicit(v25, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v25, v19);
  }

  WTF::JSONImpl::Value::toJSONString(v32, v31);
  Inspector::FrontendRouter::sendEvent(v5, v32);
  [RWIProtocolCSSDomainEventDispatcher styleSheetChangedWithStyleSheetId:v32];
}

- (void)frameDetachedWithFrameId:(id)a3
{
  v4 = (*(self->_controller->var0 + 4))(self->_controller, a2);
  v5 = v4;
  if (!a3)
  {
    v4 = [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"required parameter '%@' cannot be nil", @"frameId"}];
  }

  WTF::JSONImpl::Object::create(&v23, v4);
  v6 = v23;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v22 = v24[0];
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v21 = v24[0];
  WTF::JSONImpl::ObjectBase::setString(v6, &v22, &v21);
  v7 = ___ZN9Inspector33ObjCInspectorCSSBackendDispatcher17getStyleSheetTextElRKN3WTF6StringE_block_invoke_2_cold_1(&v21);
  WTF::JSONImpl::Object::create(&v22, v7);
  v8 = v22;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v20 = v24[0];
  MEMORY[0x2743DB520](&v19, a3);
  WTF::JSONImpl::ObjectBase::setString(v8, &v20, &v19);
  ___ZN9Inspector33ObjCInspectorCSSBackendDispatcher17getStyleSheetTextElRKN3WTF6StringE_block_invoke_2_cold_1(&v19);
  v9 = v23;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v20 = v24[0];
  v10 = v22;
  v22 = 0;
  v18 = v10;
  WTF::HashMap<WTF::String,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::inlineSet<WTF::String const&,WTF::Ref<WTF::JSONImpl::ObjectBase,WTF::RawPtrTraits<WTF::JSONImpl::ObjectBase>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::ObjectBase>>>(v9 + 2, &v20, &v18, v24);
  if (v25 == 1)
  {
    v12 = *(v9 + 9);
    if (v12 == *(v9 + 8))
    {
      WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WTF::String const&>(v9 + 24, &v20);
    }

    else
    {
      v13 = *(v9 + 3);
      v14 = v20;
      if (v20)
      {
        atomic_fetch_add_explicit(v20, 2u, memory_order_relaxed);
      }

      v15 = *(v9 + 9);
      *(v13 + 8 * v12) = v14;
      *(v9 + 9) = v15 + 1;
    }
  }

  v16 = v18;
  v18 = 0;
  if (v16)
  {
    Inspector::toJSONObjectArray(v16);
  }

  v17 = v20;
  v20 = 0;
  if (v17 && atomic_fetch_add_explicit(v17, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v17, v11);
  }

  WTF::JSONImpl::Value::toJSONString(v24, v23);
  Inspector::FrontendRouter::sendEvent(v5, v24);
  [RWIProtocolCSSDomainEventDispatcher styleSheetChangedWithStyleSheetId:v24];
}

- (void)frameStartedLoadingWithFrameId:(id)a3
{
  v4 = (*(self->_controller->var0 + 4))(self->_controller, a2);
  v5 = v4;
  if (!a3)
  {
    v4 = [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"required parameter '%@' cannot be nil", @"frameId"}];
  }

  WTF::JSONImpl::Object::create(&v23, v4);
  v6 = v23;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v22 = v24[0];
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v21 = v24[0];
  WTF::JSONImpl::ObjectBase::setString(v6, &v22, &v21);
  v7 = ___ZN9Inspector33ObjCInspectorCSSBackendDispatcher17getStyleSheetTextElRKN3WTF6StringE_block_invoke_2_cold_1(&v21);
  WTF::JSONImpl::Object::create(&v22, v7);
  v8 = v22;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v20 = v24[0];
  MEMORY[0x2743DB520](&v19, a3);
  WTF::JSONImpl::ObjectBase::setString(v8, &v20, &v19);
  ___ZN9Inspector33ObjCInspectorCSSBackendDispatcher17getStyleSheetTextElRKN3WTF6StringE_block_invoke_2_cold_1(&v19);
  v9 = v23;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v20 = v24[0];
  v10 = v22;
  v22 = 0;
  v18 = v10;
  WTF::HashMap<WTF::String,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::inlineSet<WTF::String const&,WTF::Ref<WTF::JSONImpl::ObjectBase,WTF::RawPtrTraits<WTF::JSONImpl::ObjectBase>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::ObjectBase>>>(v9 + 2, &v20, &v18, v24);
  if (v25 == 1)
  {
    v12 = *(v9 + 9);
    if (v12 == *(v9 + 8))
    {
      WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WTF::String const&>(v9 + 24, &v20);
    }

    else
    {
      v13 = *(v9 + 3);
      v14 = v20;
      if (v20)
      {
        atomic_fetch_add_explicit(v20, 2u, memory_order_relaxed);
      }

      v15 = *(v9 + 9);
      *(v13 + 8 * v12) = v14;
      *(v9 + 9) = v15 + 1;
    }
  }

  v16 = v18;
  v18 = 0;
  if (v16)
  {
    Inspector::toJSONObjectArray(v16);
  }

  v17 = v20;
  v20 = 0;
  if (v17 && atomic_fetch_add_explicit(v17, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v17, v11);
  }

  WTF::JSONImpl::Value::toJSONString(v24, v23);
  Inspector::FrontendRouter::sendEvent(v5, v24);
  [RWIProtocolCSSDomainEventDispatcher styleSheetChangedWithStyleSheetId:v24];
}

- (void)frameStoppedLoadingWithFrameId:(id)a3
{
  v4 = (*(self->_controller->var0 + 4))(self->_controller, a2);
  v5 = v4;
  if (!a3)
  {
    v4 = [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"required parameter '%@' cannot be nil", @"frameId"}];
  }

  WTF::JSONImpl::Object::create(&v23, v4);
  v6 = v23;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v22 = v24[0];
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v21 = v24[0];
  WTF::JSONImpl::ObjectBase::setString(v6, &v22, &v21);
  v7 = ___ZN9Inspector33ObjCInspectorCSSBackendDispatcher17getStyleSheetTextElRKN3WTF6StringE_block_invoke_2_cold_1(&v21);
  WTF::JSONImpl::Object::create(&v22, v7);
  v8 = v22;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v20 = v24[0];
  MEMORY[0x2743DB520](&v19, a3);
  WTF::JSONImpl::ObjectBase::setString(v8, &v20, &v19);
  ___ZN9Inspector33ObjCInspectorCSSBackendDispatcher17getStyleSheetTextElRKN3WTF6StringE_block_invoke_2_cold_1(&v19);
  v9 = v23;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v20 = v24[0];
  v10 = v22;
  v22 = 0;
  v18 = v10;
  WTF::HashMap<WTF::String,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::inlineSet<WTF::String const&,WTF::Ref<WTF::JSONImpl::ObjectBase,WTF::RawPtrTraits<WTF::JSONImpl::ObjectBase>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::ObjectBase>>>(v9 + 2, &v20, &v18, v24);
  if (v25 == 1)
  {
    v12 = *(v9 + 9);
    if (v12 == *(v9 + 8))
    {
      WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WTF::String const&>(v9 + 24, &v20);
    }

    else
    {
      v13 = *(v9 + 3);
      v14 = v20;
      if (v20)
      {
        atomic_fetch_add_explicit(v20, 2u, memory_order_relaxed);
      }

      v15 = *(v9 + 9);
      *(v13 + 8 * v12) = v14;
      *(v9 + 9) = v15 + 1;
    }
  }

  v16 = v18;
  v18 = 0;
  if (v16)
  {
    Inspector::toJSONObjectArray(v16);
  }

  v17 = v20;
  v20 = 0;
  if (v17 && atomic_fetch_add_explicit(v17, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v17, v11);
  }

  WTF::JSONImpl::Value::toJSONString(v24, v23);
  Inspector::FrontendRouter::sendEvent(v5, v24);
  [RWIProtocolCSSDomainEventDispatcher styleSheetChangedWithStyleSheetId:v24];
}

- (void)frameScheduledNavigationWithFrameId:(id)a3 delay:(double)a4
{
  v6 = (*(self->_controller->var0 + 4))(self->_controller, a2);
  v7 = v6;
  if (!a3)
  {
    v6 = [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"required parameter '%@' cannot be nil", @"frameId"}];
  }

  WTF::JSONImpl::Object::create(&v26, v6);
  v8 = v26;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v25 = v27[0];
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v24 = v27[0];
  WTF::JSONImpl::ObjectBase::setString(v8, &v25, &v24);
  v9 = ___ZN9Inspector33ObjCInspectorCSSBackendDispatcher17getStyleSheetTextElRKN3WTF6StringE_block_invoke_2_cold_1(&v24);
  WTF::JSONImpl::Object::create(&v25, v9);
  v10 = v25;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v23 = v27[0];
  MEMORY[0x2743DB520](&v22, a3);
  WTF::JSONImpl::ObjectBase::setString(v10, &v23, &v22);
  ___ZN9Inspector33ObjCInspectorCSSBackendDispatcher17getStyleSheetTextElRKN3WTF6StringE_block_invoke_2_cold_1(&v22);
  v11 = v25;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v23 = v27[0];
  WTF::JSONImpl::ObjectBase::setDouble(v11, &v23, a4);
  Inspector::ObjCInspectorCSSBackendDispatcher::setLayoutContextTypeChangedMode(&v23);
  v12 = v26;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v23 = v27[0];
  v13 = v25;
  v25 = 0;
  v21 = v13;
  WTF::HashMap<WTF::String,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::inlineSet<WTF::String const&,WTF::Ref<WTF::JSONImpl::ObjectBase,WTF::RawPtrTraits<WTF::JSONImpl::ObjectBase>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::ObjectBase>>>(v12 + 2, &v23, &v21, v27);
  if (v28 == 1)
  {
    v15 = *(v12 + 9);
    if (v15 == *(v12 + 8))
    {
      WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WTF::String const&>(v12 + 24, &v23);
    }

    else
    {
      v16 = *(v12 + 3);
      v17 = v23;
      if (v23)
      {
        atomic_fetch_add_explicit(v23, 2u, memory_order_relaxed);
      }

      v18 = *(v12 + 9);
      *(v16 + 8 * v15) = v17;
      *(v12 + 9) = v18 + 1;
    }
  }

  v19 = v21;
  v21 = 0;
  if (v19)
  {
    Inspector::toJSONObjectArray(v19);
  }

  v20 = v23;
  v23 = 0;
  if (v20 && atomic_fetch_add_explicit(v20, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v20, v14);
  }

  WTF::JSONImpl::Value::toJSONString(v27, v26);
  Inspector::FrontendRouter::sendEvent(v7, v27);
  [RWIProtocolCSSDomainEventDispatcher styleSheetChangedWithStyleSheetId:v27];
}

- (void)frameClearedScheduledNavigationWithFrameId:(id)a3
{
  v4 = (*(self->_controller->var0 + 4))(self->_controller, a2);
  v5 = v4;
  if (!a3)
  {
    v4 = [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"required parameter '%@' cannot be nil", @"frameId"}];
  }

  WTF::JSONImpl::Object::create(&v23, v4);
  v6 = v23;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v22 = v24[0];
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v21 = v24[0];
  WTF::JSONImpl::ObjectBase::setString(v6, &v22, &v21);
  v7 = ___ZN9Inspector33ObjCInspectorCSSBackendDispatcher17getStyleSheetTextElRKN3WTF6StringE_block_invoke_2_cold_1(&v21);
  WTF::JSONImpl::Object::create(&v22, v7);
  v8 = v22;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v20 = v24[0];
  MEMORY[0x2743DB520](&v19, a3);
  WTF::JSONImpl::ObjectBase::setString(v8, &v20, &v19);
  ___ZN9Inspector33ObjCInspectorCSSBackendDispatcher17getStyleSheetTextElRKN3WTF6StringE_block_invoke_2_cold_1(&v19);
  v9 = v23;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v20 = v24[0];
  v10 = v22;
  v22 = 0;
  v18 = v10;
  WTF::HashMap<WTF::String,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::inlineSet<WTF::String const&,WTF::Ref<WTF::JSONImpl::ObjectBase,WTF::RawPtrTraits<WTF::JSONImpl::ObjectBase>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::ObjectBase>>>(v9 + 2, &v20, &v18, v24);
  if (v25 == 1)
  {
    v12 = *(v9 + 9);
    if (v12 == *(v9 + 8))
    {
      WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WTF::String const&>(v9 + 24, &v20);
    }

    else
    {
      v13 = *(v9 + 3);
      v14 = v20;
      if (v20)
      {
        atomic_fetch_add_explicit(v20, 2u, memory_order_relaxed);
      }

      v15 = *(v9 + 9);
      *(v13 + 8 * v12) = v14;
      *(v9 + 9) = v15 + 1;
    }
  }

  v16 = v18;
  v18 = 0;
  if (v16)
  {
    Inspector::toJSONObjectArray(v16);
  }

  v17 = v20;
  v20 = 0;
  if (v17 && atomic_fetch_add_explicit(v17, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v17, v11);
  }

  WTF::JSONImpl::Value::toJSONString(v24, v23);
  Inspector::FrontendRouter::sendEvent(v5, v24);
  [RWIProtocolCSSDomainEventDispatcher styleSheetChangedWithStyleSheetId:v24];
}

- (void)defaultUserPreferencesDidChangeWithPreferences:(id)a3
{
  v48 = *MEMORY[0x277D85DE8];
  v34 = (*(self->_controller->var0 + 4))(self->_controller, a2);
  if (!a3)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"required parameter '%@' cannot be nil", @"preferences"}];
  }

  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v4 = [a3 countByEnumeratingWithState:&v41 objects:v47 count:16];
  v5 = v4;
  if (v4)
  {
    v6 = *v42;
    v7 = *MEMORY[0x277CBE660];
    do
    {
      v8 = 0;
      do
      {
        if (*v42 != v6)
        {
          objc_enumerationMutation(a3);
        }

        v9 = *(*(&v41 + 1) + 8 * v8);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v10 = MEMORY[0x277CBEAD8];
          v11 = objc_opt_class();
          [v10 raise:v7 format:{@"array should contain objects of type '%@', found bad value: %@", NSStringFromClass(v11), v9}];
        }

        v8 = (v8 + 1);
      }

      while (v5 != v8);
      v4 = [a3 countByEnumeratingWithState:&v41 objects:v47 count:16];
      v5 = v4;
    }

    while (v4);
  }

  WTF::JSONImpl::Object::create(&v40, v4);
  v12 = v40;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v39 = v45[0];
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v38 = v45[0];
  WTF::JSONImpl::ObjectBase::setString(v12, &v39, &v38);
  v13 = ___ZN9Inspector33ObjCInspectorCSSBackendDispatcher17getStyleSheetTextElRKN3WTF6StringE_block_invoke_2_cold_1(&v38);
  WTF::JSONImpl::Object::create(&v39, v13);
  v14 = v39;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v37 = v45[0];
  Inspector::toJSONObjectArray(a3, &v35);
  v15 = v35;
  v35 = 0;
  v36 = v15;
  WTF::HashMap<WTF::String,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::inlineSet<WTF::String const&,WTF::Ref<WTF::JSONImpl::ArrayBase,WTF::RawPtrTraits<WTF::JSONImpl::ArrayBase>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::ArrayBase>>>((v14 + 16), &v37, &v36, v45);
  if (v46 == 1)
  {
    v17 = *(v14 + 36);
    if (v17 == *(v14 + 32))
    {
      WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WTF::String const&>(v14 + 24, &v37);
    }

    else
    {
      v18 = *(v14 + 24);
      v19 = v37;
      if (v37)
      {
        atomic_fetch_add_explicit(v37, 2u, memory_order_relaxed);
      }

      v20 = *(v14 + 36);
      *(v18 + 8 * v17) = v19;
      *(v14 + 36) = v20 + 1;
    }
  }

  v21 = v36;
  v36 = 0;
  if (v21)
  {
    Inspector::toJSONObjectArray(v21);
  }

  v22 = v35;
  v35 = 0;
  if (v22)
  {
    if (*v22 == 1)
    {
      WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*v22;
    }
  }

  v23 = v37;
  v37 = 0;
  if (v23 && atomic_fetch_add_explicit(v23, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v23, v16);
  }

  v24 = v40;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v25 = v39;
  v39 = 0;
  v36 = v25;
  v37 = v45[0];
  WTF::HashMap<WTF::String,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::inlineSet<WTF::String const&,WTF::Ref<WTF::JSONImpl::ObjectBase,WTF::RawPtrTraits<WTF::JSONImpl::ObjectBase>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::ObjectBase>>>(v24 + 2, &v37, &v36, v45);
  if (v46 == 1)
  {
    v27 = *(v24 + 9);
    if (v27 == *(v24 + 8))
    {
      WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WTF::String const&>(v24 + 24, &v37);
    }

    else
    {
      v28 = *(v24 + 3);
      v29 = v37;
      if (v37)
      {
        atomic_fetch_add_explicit(v37, 2u, memory_order_relaxed);
      }

      v30 = *(v24 + 9);
      *(v28 + 8 * v27) = v29;
      *(v24 + 9) = v30 + 1;
    }
  }

  v31 = v36;
  v36 = 0;
  if (v31)
  {
    Inspector::toJSONObjectArray(v31);
  }

  v32 = v37;
  v37 = 0;
  if (v32 && atomic_fetch_add_explicit(v32, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v32, v26);
  }

  WTF::JSONImpl::Value::toJSONString(v45, v40);
  Inspector::FrontendRouter::sendEvent(v34, v45);
  [RWIProtocolCSSDomainEventDispatcher styleSheetChangedWithStyleSheetId:v45];
  v33 = *MEMORY[0x277D85DE8];
}

@end