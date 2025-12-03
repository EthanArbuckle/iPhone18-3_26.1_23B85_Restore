@interface RWIProtocolConsoleDomainEventDispatcher
- (RWIProtocolConsoleDomainEventDispatcher)initWithController:(AugmentableInspectorController *)controller;
- (void)heapSnapshotWithTimestamp:(double)timestamp snapshotData:(id)data title:(id *)title;
- (void)messageAddedWithMessage:(id)message;
- (void)messagesClearedWithReason:(int64_t)reason;
@end

@implementation RWIProtocolConsoleDomainEventDispatcher

- (RWIProtocolConsoleDomainEventDispatcher)initWithController:(AugmentableInspectorController *)controller
{
  v5.receiver = self;
  v5.super_class = RWIProtocolConsoleDomainEventDispatcher;
  result = [(RWIProtocolConsoleDomainEventDispatcher *)&v5 init];
  if (result)
  {
    result->_controller = controller;
  }

  return result;
}

- (void)messageAddedWithMessage:(id)message
{
  v4 = (*(self->_controller->var0 + 4))(self->_controller, a2);
  v5 = v4;
  if (!message)
  {
    v4 = [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"required parameter '%@' cannot be nil", @"message"}];
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
  if (message)
  {
    [message toJSONObject];
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

- (void)messagesClearedWithReason:(int64_t)reason
{
  v3 = (*(self->_controller->var0 + 4))(self->_controller, a2);
  WTF::JSONImpl::Object::create(&v25, v3);
  v4 = v25;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v24 = v26[0];
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v23 = v26[0];
  WTF::JSONImpl::ObjectBase::setString(v4, &v24, &v23);
  v5 = ___ZN9Inspector33ObjCInspectorCSSBackendDispatcher17getStyleSheetTextElRKN3WTF6StringE_block_invoke_2_cold_1(&v23);
  WTF::JSONImpl::Object::create(&v24, v5);
  v6 = v24;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v22 = v26[0];
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  if (v19)
  {
    atomic_fetch_add_explicit(v19, 2u, memory_order_relaxed);
    MEMORY[0x2743DB4B0](&v20, v19);
    if (atomic_fetch_add_explicit(v19, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v19, v7);
    }
  }

  else
  {
    v20 = &stru_2882B1C88;
    v17 = &stru_2882B1C88;
  }

  MEMORY[0x2743DB520](&v21, v20);
  WTF::JSONImpl::ObjectBase::setString(v6, &v22, &v21);
  [RWIProtocolConsoleDomainEventDispatcher messagesClearedWithReason:?];
  v8 = v25;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v22 = v26[0];
  v9 = v24;
  v24 = 0;
  v18 = v9;
  WTF::HashMap<WTF::String,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::inlineSet<WTF::String const&,WTF::Ref<WTF::JSONImpl::ObjectBase,WTF::RawPtrTraits<WTF::JSONImpl::ObjectBase>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::ObjectBase>>>(v8 + 2, &v22, &v18, v26);
  if (v27 == 1)
  {
    v11 = *(v8 + 9);
    if (v11 == *(v8 + 8))
    {
      WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WTF::String const&>(v8 + 24, &v22);
    }

    else
    {
      v12 = *(v8 + 3);
      v13 = v22;
      if (v22)
      {
        atomic_fetch_add_explicit(v22, 2u, memory_order_relaxed);
      }

      v14 = *(v8 + 9);
      *(v12 + 8 * v11) = v13;
      *(v8 + 9) = v14 + 1;
    }
  }

  v15 = v18;
  v18 = 0;
  if (v15)
  {
    Inspector::toJSONObjectArray(v15);
  }

  v16 = v22;
  v22 = 0;
  if (v16 && atomic_fetch_add_explicit(v16, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v16, v10);
  }

  WTF::JSONImpl::Value::toJSONString(v26, v25);
  Inspector::FrontendRouter::sendEvent(v3, v26);
  [RWIProtocolCSSDomainEventDispatcher styleSheetChangedWithStyleSheetId:v26];
}

- (void)heapSnapshotWithTimestamp:(double)timestamp snapshotData:(id)data title:(id *)title
{
  v8 = (*(self->_controller->var0 + 4))(self->_controller, a2);
  v9 = v8;
  if (!data)
  {
    v8 = [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"required parameter '%@' cannot be nil", @"snapshotData"}];
  }

  if (title && !*title)
  {
    v8 = [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"optional parameter '%@' cannot be nil", @"title"}];
  }

  WTF::JSONImpl::Object::create(&v32, v8);
  v10 = v32;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v31 = v33[0];
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v30 = v33[0];
  WTF::JSONImpl::ObjectBase::setString(v10, &v31, &v30);
  v11 = ___ZN9Inspector33ObjCInspectorCSSBackendDispatcher17getStyleSheetTextElRKN3WTF6StringE_block_invoke_2_cold_1(&v30);
  WTF::JSONImpl::Object::create(&v31, v11);
  v12 = v31;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v29 = v33[0];
  WTF::JSONImpl::ObjectBase::setDouble(v12, &v29, timestamp);
  Inspector::ObjCInspectorCSSBackendDispatcher::setLayoutContextTypeChangedMode(&v29);
  v13 = v31;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v29 = v33[0];
  MEMORY[0x2743DB520](&v28, data);
  WTF::JSONImpl::ObjectBase::setString(v13, &v29, &v28);
  if (([RWIProtocolConsoleDomainEventDispatcher heapSnapshotWithTimestamp:&v29 snapshotData:title == 0 title:?]& 1) == 0)
  {
    v14 = v31;
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    v27 = v33[0];
    MEMORY[0x2743DB520](&v26, *title);
    WTF::JSONImpl::ObjectBase::setString(v14, &v27, &v26);
    ___ZN9Inspector33ObjCInspectorCSSBackendDispatcher17getStyleSheetTextElRKN3WTF6StringE_block_invoke_2_cold_1(&v26);
  }

  v15 = v32;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v16 = v31;
  v31 = 0;
  v24 = v16;
  v25 = v33[0];
  WTF::HashMap<WTF::String,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::inlineSet<WTF::String const&,WTF::Ref<WTF::JSONImpl::ObjectBase,WTF::RawPtrTraits<WTF::JSONImpl::ObjectBase>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::ObjectBase>>>(v15 + 2, &v25, &v24, v33);
  if (v34 == 1)
  {
    v18 = *(v15 + 9);
    if (v18 == *(v15 + 8))
    {
      WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WTF::String const&>(v15 + 24, &v25);
    }

    else
    {
      v19 = *(v15 + 3);
      v20 = v25;
      if (v25)
      {
        atomic_fetch_add_explicit(v25, 2u, memory_order_relaxed);
      }

      v21 = *(v15 + 9);
      *(v19 + 8 * v18) = v20;
      *(v15 + 9) = v21 + 1;
    }
  }

  v22 = v24;
  v24 = 0;
  if (v22)
  {
    Inspector::toJSONObjectArray(v22);
  }

  v23 = v25;
  v25 = 0;
  if (v23 && atomic_fetch_add_explicit(v23, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v23, v17);
  }

  WTF::JSONImpl::Value::toJSONString(v33, v32);
  Inspector::FrontendRouter::sendEvent(v9, v33);
  [RWIProtocolCSSDomainEventDispatcher styleSheetChangedWithStyleSheetId:v33];
}

- (BOOL)messageRepeatCountUpdatedWithCount:(uint64_t *)a1 timestamp:.cold.2(uint64_t *a1)
{
  v2 = OUTLINED_FUNCTION_0_3(a1);
  if (v2)
  {
    v3 = OUTLINED_FUNCTION_1_1(v2);
    if (v5)
    {
      WTF::StringImpl::destroy(v3, v4);
    }
  }

  return v1 == 0;
}

- (atomic_uint)messagesClearedWithReason:(uint64_t *)a1 .cold.2(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_3(a1);
  if (v1)
  {
    v2 = OUTLINED_FUNCTION_1_1(v1);
    if (v4)
    {
      WTF::StringImpl::destroy(v2, v3);
    }
  }

  OUTLINED_FUNCTION_6();
  if (v5)
  {
  }

  v6 = OUTLINED_FUNCTION_5_0();
  if (v6)
  {
    v7 = OUTLINED_FUNCTION_1_1(v6);
    if (v4)
    {
      WTF::StringImpl::destroy(v7, v8);
    }
  }

  result = OUTLINED_FUNCTION_2_0();
  if (result)
  {
    result = OUTLINED_FUNCTION_1_1(result);
    if (v4)
    {
      return WTF::StringImpl::destroy(result, v10);
    }
  }

  return result;
}

- (uint64_t)heapSnapshotWithTimestamp:(atomic_uint *)a1 snapshotData:(uint64_t)a2 title:(char)a3 .cold.3(atomic_uint **a1, uint64_t a2, char a3)
{
  v5 = *a1;
  *a1 = 0;
  if (v5)
  {
    v6 = OUTLINED_FUNCTION_1_1(v5);
    if (v8)
    {
      WTF::StringImpl::destroy(v6, v7);
    }
  }

  v9 = OUTLINED_FUNCTION_5_0();
  if (v9)
  {
    v10 = OUTLINED_FUNCTION_1_1(v9);
    if (v8)
    {
      WTF::StringImpl::destroy(v10, v11);
    }
  }

  return a3 & 1;
}

@end