@interface RWIProtocolCSSDomainEventDispatcher
- (RWIProtocolCSSDomainEventDispatcher)initWithController:(AugmentableInspectorController *)controller;
- (_DWORD)mediaQueryResultChanged;
- (void)mediaQueryResultChanged;
- (void)styleSheetAddedWithHeader:(id)header;
- (void)styleSheetChangedWithStyleSheetId:(id)id;
- (void)styleSheetRemovedWithStyleSheetId:(id)id;
@end

@implementation RWIProtocolCSSDomainEventDispatcher

- (RWIProtocolCSSDomainEventDispatcher)initWithController:(AugmentableInspectorController *)controller
{
  v5.receiver = self;
  v5.super_class = RWIProtocolCSSDomainEventDispatcher;
  result = [(RWIProtocolCSSDomainEventDispatcher *)&v5 init];
  if (result)
  {
    result->_controller = controller;
  }

  return result;
}

- (void)mediaQueryResultChanged
{
  v2 = (*(self->_controller->var0 + 4))(self->_controller, a2);
  WTF::JSONImpl::Object::create(&v6, v2);
  v3 = v6;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v5 = v7;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v4 = v7;
  WTF::JSONImpl::ObjectBase::setString(v3, &v5, &v4);
  ___ZN9Inspector33ObjCInspectorCSSBackendDispatcher17getStyleSheetTextElRKN3WTF6StringE_block_invoke_2_cold_1(&v4);
  WTF::JSONImpl::Value::toJSONString(&v7, v6);
  Inspector::FrontendRouter::sendEvent(v2, &v7);
  [(RWIProtocolCSSDomainEventDispatcher *)&v7 mediaQueryResultChanged];
}

- (void)styleSheetChangedWithStyleSheetId:(id)id
{
  v4 = (*(self->_controller->var0 + 4))(self->_controller, a2);
  v5 = v4;
  if (!id)
  {
    v4 = [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"required parameter '%@' cannot be nil", @"styleSheetId"}];
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
  MEMORY[0x2743DB520](&v19, id);
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

- (void)styleSheetAddedWithHeader:(id)header
{
  v4 = (*(self->_controller->var0 + 4))(self->_controller, a2);
  v5 = v4;
  if (!header)
  {
    v4 = [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"required parameter '%@' cannot be nil", @"header"}];
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
  if (header)
  {
    [header toJSONObject];
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

- (void)styleSheetRemovedWithStyleSheetId:(id)id
{
  v4 = (*(self->_controller->var0 + 4))(self->_controller, a2);
  v5 = v4;
  if (!id)
  {
    v4 = [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"required parameter '%@' cannot be nil", @"styleSheetId"}];
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
  MEMORY[0x2743DB520](&v19, id);
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

- (_DWORD)mediaQueryResultChanged
{
  v1 = OUTLINED_FUNCTION_0_3(self);
  if (v1)
  {
    v2 = OUTLINED_FUNCTION_1_1(v1);
    if (v4)
    {
      WTF::StringImpl::destroy(v2, v3);
    }
  }

  result = OUTLINED_FUNCTION_2_0();
  if (result)
  {
    if (*result == 1)
    {
      return WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*result;
    }
  }

  return result;
}

- (_DWORD)styleSheetChangedWithStyleSheetId:(uint64_t *)a1 .cold.6(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_0_5(a1);
  if (v1)
  {
    v2 = OUTLINED_FUNCTION_1_1(v1);
    if (v4)
    {
      WTF::StringImpl::destroy(v2, v3);
    }
  }

  v5 = OUTLINED_FUNCTION_5_0();
  if (v5)
  {
    if (*v5 == 1)
    {
      WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*v5;
    }
  }

  result = OUTLINED_FUNCTION_2_0();
  if (result)
  {
    if (*result == 1)
    {
      return WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*result;
    }
  }

  return result;
}

@end