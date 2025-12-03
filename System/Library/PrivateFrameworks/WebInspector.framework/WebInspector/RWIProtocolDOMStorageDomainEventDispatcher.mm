@interface RWIProtocolDOMStorageDomainEventDispatcher
- (RWIProtocolDOMStorageDomainEventDispatcher)initWithController:(AugmentableInspectorController *)controller;
- (void)domStorageItemAddedWithStorageId:(id)id key:(id)key newValue:(id)value;
- (void)domStorageItemRemovedWithStorageId:(id)id key:(id)key;
- (void)domStorageItemUpdatedWithStorageId:(id)id key:(id)key oldValue:(id)value newValue:(id)newValue;
- (void)domStorageItemsClearedWithStorageId:(id)id;
@end

@implementation RWIProtocolDOMStorageDomainEventDispatcher

- (RWIProtocolDOMStorageDomainEventDispatcher)initWithController:(AugmentableInspectorController *)controller
{
  v5.receiver = self;
  v5.super_class = RWIProtocolDOMStorageDomainEventDispatcher;
  result = [(RWIProtocolDOMStorageDomainEventDispatcher *)&v5 init];
  if (result)
  {
    result->_controller = controller;
  }

  return result;
}

- (void)domStorageItemsClearedWithStorageId:(id)id
{
  v4 = (*(self->_controller->var0 + 4))(self->_controller, a2);
  v5 = v4;
  if (!id)
  {
    v4 = [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"required parameter '%@' cannot be nil", @"storageId"}];
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
  if (id)
  {
    [id toJSONObject];
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

- (void)domStorageItemRemovedWithStorageId:(id)id key:(id)key
{
  v6 = (*(self->_controller->var0 + 4))(self->_controller, a2);
  v7 = v6;
  v8 = MEMORY[0x277CBE660];
  if (!id)
  {
    v6 = [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"required parameter '%@' cannot be nil", @"storageId"}];
  }

  if (!key)
  {
    v6 = [MEMORY[0x277CBEAD8] raise:*v8 format:{@"required parameter '%@' cannot be nil", @"key"}];
  }

  WTF::JSONImpl::Object::create(&v36, v6);
  v9 = v36;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v35 = v37[0];
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v34 = v37[0];
  WTF::JSONImpl::ObjectBase::setString(v9, &v35, &v34);
  v10 = ___ZN9Inspector33ObjCInspectorCSSBackendDispatcher17getStyleSheetTextElRKN3WTF6StringE_block_invoke_2_cold_1(&v34);
  WTF::JSONImpl::Object::create(&v35, v10);
  v11 = v35;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v33 = v37[0];
  if (id)
  {
    [id toJSONObject];
    v12 = v31;
  }

  else
  {
    v12 = 0;
  }

  v31 = 0;
  v32 = v12;
  WTF::HashMap<WTF::String,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::inlineSet<WTF::String const&,WTF::Ref<WTF::JSONImpl::ObjectBase,WTF::RawPtrTraits<WTF::JSONImpl::ObjectBase>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::ObjectBase>>>((v11 + 16), &v33, &v32, v37);
  if (v38 == 1)
  {
    v14 = *(v11 + 36);
    if (v14 == *(v11 + 32))
    {
      WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WTF::String const&>(v11 + 24, &v33);
    }

    else
    {
      v15 = *(v11 + 24);
      v16 = v33;
      if (v33)
      {
        atomic_fetch_add_explicit(v33, 2u, memory_order_relaxed);
      }

      v17 = *(v11 + 36);
      *(v15 + 8 * v14) = v16;
      *(v11 + 36) = v17 + 1;
    }
  }

  v18 = v32;
  v32 = 0;
  if (v18)
  {
    Inspector::toJSONObjectArray(v18);
  }

  v19 = v31;
  v31 = 0;
  if (v19)
  {
    if (*v19 == 1)
    {
      WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*v19;
    }
  }

  v20 = v33;
  v33 = 0;
  if (v20 && atomic_fetch_add_explicit(v20, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v20, v13);
  }

  v21 = v35;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v33 = v37[0];
  MEMORY[0x2743DB520](&v32, key);
  WTF::JSONImpl::ObjectBase::setString(v21, &v33, &v32);
  ___ZN9Inspector33ObjCInspectorCSSBackendDispatcher17getStyleSheetTextElRKN3WTF6StringE_block_invoke_2_cold_1(&v32);
  v22 = v36;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v33 = v37[0];
  v23 = v35;
  v35 = 0;
  v31 = v23;
  WTF::HashMap<WTF::String,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::inlineSet<WTF::String const&,WTF::Ref<WTF::JSONImpl::ObjectBase,WTF::RawPtrTraits<WTF::JSONImpl::ObjectBase>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::ObjectBase>>>(v22 + 2, &v33, &v31, v37);
  if (v38 == 1)
  {
    v25 = *(v22 + 9);
    if (v25 == *(v22 + 8))
    {
      WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WTF::String const&>(v22 + 24, &v33);
    }

    else
    {
      v26 = *(v22 + 3);
      v27 = v33;
      if (v33)
      {
        atomic_fetch_add_explicit(v33, 2u, memory_order_relaxed);
      }

      v28 = *(v22 + 9);
      *(v26 + 8 * v25) = v27;
      *(v22 + 9) = v28 + 1;
    }
  }

  v29 = v31;
  v31 = 0;
  if (v29)
  {
    Inspector::toJSONObjectArray(v29);
  }

  v30 = v33;
  v33 = 0;
  if (v30 && atomic_fetch_add_explicit(v30, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v30, v24);
  }

  WTF::JSONImpl::Value::toJSONString(v37, v36);
  Inspector::FrontendRouter::sendEvent(v7, v37);
  [RWIProtocolCSSDomainEventDispatcher styleSheetChangedWithStyleSheetId:v37];
}

- (void)domStorageItemAddedWithStorageId:(id)id key:(id)key newValue:(id)value
{
  v8 = (*(self->_controller->var0 + 4))(self->_controller, a2);
  v9 = v8;
  v10 = MEMORY[0x277CBE660];
  if (id)
  {
    if (key)
    {
LABEL_3:
      if (value)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else
  {
    v8 = [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"required parameter '%@' cannot be nil", @"storageId"}];
    if (key)
    {
      goto LABEL_3;
    }
  }

  v8 = [MEMORY[0x277CBEAD8] raise:*v10 format:{@"required parameter '%@' cannot be nil", @"key"}];
  if (!value)
  {
LABEL_4:
    v8 = [MEMORY[0x277CBEAD8] raise:*v10 format:{@"required parameter '%@' cannot be nil", @"newValue"}];
  }

LABEL_5:
  WTF::JSONImpl::Object::create(&v40, v8);
  v11 = v40;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v39 = v41[0];
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v38 = v41[0];
  WTF::JSONImpl::ObjectBase::setString(v11, &v39, &v38);
  v12 = ___ZN9Inspector33ObjCInspectorCSSBackendDispatcher17getStyleSheetTextElRKN3WTF6StringE_block_invoke_2_cold_1(&v38);
  WTF::JSONImpl::Object::create(&v39, v12);
  v13 = v39;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v37 = v41[0];
  if (id)
  {
    [id toJSONObject];
    v14 = v35;
  }

  else
  {
    v14 = 0;
  }

  v35 = 0;
  v36 = v14;
  WTF::HashMap<WTF::String,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::inlineSet<WTF::String const&,WTF::Ref<WTF::JSONImpl::ObjectBase,WTF::RawPtrTraits<WTF::JSONImpl::ObjectBase>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::ObjectBase>>>((v13 + 16), &v37, &v36, v41);
  if (v42 == 1)
  {
    v16 = *(v13 + 36);
    if (v16 == *(v13 + 32))
    {
      WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WTF::String const&>(v13 + 24, &v37);
    }

    else
    {
      v17 = *(v13 + 24);
      v18 = v37;
      if (v37)
      {
        atomic_fetch_add_explicit(v37, 2u, memory_order_relaxed);
      }

      v19 = *(v13 + 36);
      *(v17 + 8 * v16) = v18;
      *(v13 + 36) = v19 + 1;
    }
  }

  v20 = v36;
  v36 = 0;
  if (v20)
  {
    Inspector::toJSONObjectArray(v20);
  }

  v21 = v35;
  v35 = 0;
  if (v21)
  {
    if (*v21 == 1)
    {
      WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*v21;
    }
  }

  v22 = v37;
  v37 = 0;
  if (v22 && atomic_fetch_add_explicit(v22, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v22, v15);
  }

  v23 = v39;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v37 = v41[0];
  MEMORY[0x2743DB520](&v36, key);
  WTF::JSONImpl::ObjectBase::setString(v23, &v37, &v36);
  ___ZN9Inspector33ObjCInspectorCSSBackendDispatcher17getStyleSheetTextElRKN3WTF6StringE_block_invoke_2_cold_1(&v36);
  v24 = v39;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v37 = v41[0];
  MEMORY[0x2743DB520](&v35, value);
  WTF::JSONImpl::ObjectBase::setString(v24, &v37, &v35);
  ___ZN9Inspector33ObjCInspectorCSSBackendDispatcher17getStyleSheetTextElRKN3WTF6StringE_block_invoke_2_cold_1(&v35);
  v25 = v40;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v37 = v41[0];
  v26 = v39;
  v39 = 0;
  v34 = v26;
  WTF::HashMap<WTF::String,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::inlineSet<WTF::String const&,WTF::Ref<WTF::JSONImpl::ObjectBase,WTF::RawPtrTraits<WTF::JSONImpl::ObjectBase>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::ObjectBase>>>(v25 + 2, &v37, &v34, v41);
  if (v42 == 1)
  {
    v28 = *(v25 + 9);
    if (v28 == *(v25 + 8))
    {
      WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WTF::String const&>(v25 + 24, &v37);
    }

    else
    {
      v29 = *(v25 + 3);
      v30 = v37;
      if (v37)
      {
        atomic_fetch_add_explicit(v37, 2u, memory_order_relaxed);
      }

      v31 = *(v25 + 9);
      *(v29 + 8 * v28) = v30;
      *(v25 + 9) = v31 + 1;
    }
  }

  v32 = v34;
  v34 = 0;
  if (v32)
  {
    Inspector::toJSONObjectArray(v32);
  }

  v33 = v37;
  v37 = 0;
  if (v33 && atomic_fetch_add_explicit(v33, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v33, v27);
  }

  WTF::JSONImpl::Value::toJSONString(v41, v40);
  Inspector::FrontendRouter::sendEvent(v9, v41);
  [RWIProtocolCSSDomainEventDispatcher styleSheetChangedWithStyleSheetId:v41];
}

- (void)domStorageItemUpdatedWithStorageId:(id)id key:(id)key oldValue:(id)value newValue:(id)newValue
{
  v10 = (*(self->_controller->var0 + 4))(self->_controller, a2);
  v11 = v10;
  v12 = MEMORY[0x277CBE660];
  if (id)
  {
    if (key)
    {
LABEL_3:
      if (!value)
      {
        goto LABEL_4;
      }

LABEL_8:
      if (newValue)
      {
        goto LABEL_10;
      }

      goto LABEL_9;
    }
  }

  else
  {
    v10 = [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"required parameter '%@' cannot be nil", @"storageId"}];
    if (key)
    {
      goto LABEL_3;
    }
  }

  v10 = [MEMORY[0x277CBEAD8] raise:*v12 format:{@"required parameter '%@' cannot be nil", @"key"}];
  if (value)
  {
    goto LABEL_8;
  }

LABEL_4:
  v10 = [MEMORY[0x277CBEAD8] raise:*v12 format:{@"required parameter '%@' cannot be nil", @"oldValue"}];
  if (!newValue)
  {
LABEL_9:
    v10 = [MEMORY[0x277CBEAD8] raise:*v12 format:{@"required parameter '%@' cannot be nil", @"newValue"}];
  }

LABEL_10:
  WTF::JSONImpl::Object::create(&v44, v10);
  v13 = v44;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v43 = v45[0];
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v42 = v45[0];
  WTF::JSONImpl::ObjectBase::setString(v13, &v43, &v42);
  v14 = ___ZN9Inspector33ObjCInspectorCSSBackendDispatcher17getStyleSheetTextElRKN3WTF6StringE_block_invoke_2_cold_1(&v42);
  WTF::JSONImpl::Object::create(&v43, v14);
  v15 = v43;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v41 = v45[0];
  if (id)
  {
    [id toJSONObject];
    v16 = v39;
  }

  else
  {
    v16 = 0;
  }

  v39 = 0;
  v40 = v16;
  WTF::HashMap<WTF::String,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::inlineSet<WTF::String const&,WTF::Ref<WTF::JSONImpl::ObjectBase,WTF::RawPtrTraits<WTF::JSONImpl::ObjectBase>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::ObjectBase>>>((v15 + 16), &v41, &v40, v45);
  if (v46 == 1)
  {
    v18 = *(v15 + 36);
    if (v18 == *(v15 + 32))
    {
      WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WTF::String const&>(v15 + 24, &v41);
    }

    else
    {
      v19 = *(v15 + 24);
      v20 = v41;
      if (v41)
      {
        atomic_fetch_add_explicit(v41, 2u, memory_order_relaxed);
      }

      v21 = *(v15 + 36);
      *(v19 + 8 * v18) = v20;
      *(v15 + 36) = v21 + 1;
    }
  }

  v22 = v40;
  v40 = 0;
  if (v22)
  {
    Inspector::toJSONObjectArray(v22);
  }

  v23 = v39;
  v39 = 0;
  if (v23)
  {
    if (*v23 == 1)
    {
      WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*v23;
    }
  }

  v24 = v41;
  v41 = 0;
  if (v24 && atomic_fetch_add_explicit(v24, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v24, v17);
  }

  v25 = v43;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v41 = v45[0];
  MEMORY[0x2743DB520](&v40, key);
  WTF::JSONImpl::ObjectBase::setString(v25, &v41, &v40);
  ___ZN9Inspector33ObjCInspectorCSSBackendDispatcher17getStyleSheetTextElRKN3WTF6StringE_block_invoke_2_cold_1(&v40);
  v26 = v43;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v41 = v45[0];
  MEMORY[0x2743DB520](&v39, value);
  WTF::JSONImpl::ObjectBase::setString(v26, &v41, &v39);
  ___ZN9Inspector33ObjCInspectorCSSBackendDispatcher17getStyleSheetTextElRKN3WTF6StringE_block_invoke_2_cold_1(&v39);
  v27 = v43;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v41 = v45[0];
  MEMORY[0x2743DB520](&v38, newValue);
  WTF::JSONImpl::ObjectBase::setString(v27, &v41, &v38);
  ___ZN9Inspector33ObjCInspectorCSSBackendDispatcher17getStyleSheetTextElRKN3WTF6StringE_block_invoke_2_cold_1(&v38);
  v28 = v44;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v41 = v45[0];
  v29 = v43;
  v43 = 0;
  v37 = v29;
  WTF::HashMap<WTF::String,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::inlineSet<WTF::String const&,WTF::Ref<WTF::JSONImpl::ObjectBase,WTF::RawPtrTraits<WTF::JSONImpl::ObjectBase>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::ObjectBase>>>(v28 + 2, &v41, &v37, v45);
  if (v46 == 1)
  {
    v31 = *(v28 + 9);
    if (v31 == *(v28 + 8))
    {
      WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WTF::String const&>(v28 + 24, &v41);
    }

    else
    {
      v32 = *(v28 + 3);
      v33 = v41;
      if (v41)
      {
        atomic_fetch_add_explicit(v41, 2u, memory_order_relaxed);
      }

      v34 = *(v28 + 9);
      *(v32 + 8 * v31) = v33;
      *(v28 + 9) = v34 + 1;
    }
  }

  v35 = v37;
  v37 = 0;
  if (v35)
  {
    Inspector::toJSONObjectArray(v35);
  }

  v36 = v41;
  v41 = 0;
  if (v36 && atomic_fetch_add_explicit(v36, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v36, v30);
  }

  WTF::JSONImpl::Value::toJSONString(v45, v44);
  Inspector::FrontendRouter::sendEvent(v11, v45);
  [RWIProtocolCSSDomainEventDispatcher styleSheetChangedWithStyleSheetId:v45];
}

@end