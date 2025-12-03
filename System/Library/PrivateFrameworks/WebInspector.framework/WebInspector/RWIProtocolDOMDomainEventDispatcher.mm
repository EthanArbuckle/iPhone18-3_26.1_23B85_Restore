@interface RWIProtocolDOMDomainEventDispatcher
- (RWIProtocolDOMDomainEventDispatcher)initWithController:(AugmentableInspectorController *)controller;
- (void)documentUpdated;
- (void)inlineStyleInvalidatedWithNodeIds:(id)ids;
- (void)setChildNodesWithParentId:(int)id nodes:(id)nodes;
@end

@implementation RWIProtocolDOMDomainEventDispatcher

- (RWIProtocolDOMDomainEventDispatcher)initWithController:(AugmentableInspectorController *)controller
{
  v5.receiver = self;
  v5.super_class = RWIProtocolDOMDomainEventDispatcher;
  result = [(RWIProtocolDOMDomainEventDispatcher *)&v5 init];
  if (result)
  {
    result->_controller = controller;
  }

  return result;
}

- (void)documentUpdated
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

- (void)setChildNodesWithParentId:(int)id nodes:(id)nodes
{
  v37[0] = id;
  v50 = *MEMORY[0x277D85DE8];
  v36 = (*(self->_controller->var0 + 4))(self->_controller, a2);
  if (!nodes)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"required parameter '%@' cannot be nil", @"nodes"}];
  }

  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v5 = [nodes countByEnumeratingWithState:&v43 objects:v49 count:16];
  v6 = v5;
  if (v5)
  {
    v7 = *v44;
    v8 = *MEMORY[0x277CBE660];
    do
    {
      v9 = 0;
      do
      {
        if (*v44 != v7)
        {
          objc_enumerationMutation(nodes);
        }

        v10 = *(*(&v43 + 1) + 8 * v9);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v11 = MEMORY[0x277CBEAD8];
          v12 = objc_opt_class();
          [v11 raise:v8 format:{@"array should contain objects of type '%@', found bad value: %@", NSStringFromClass(v12), v10, v36}];
        }

        v9 = (v9 + 1);
      }

      while (v6 != v9);
      v5 = [nodes countByEnumeratingWithState:&v43 objects:v49 count:16];
      v6 = v5;
    }

    while (v5);
  }

  WTF::JSONImpl::Object::create(&v42, v5);
  v13 = v42;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v41 = v47[0];
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v40 = v47[0];
  WTF::JSONImpl::ObjectBase::setString(v13, &v41, &v40);
  v14 = ___ZN9Inspector33ObjCInspectorCSSBackendDispatcher17getStyleSheetTextElRKN3WTF6StringE_block_invoke_2_cold_1(&v40);
  WTF::JSONImpl::Object::create(&v41, v14);
  v15 = v41;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v39 = v47[0];
  WTF::JSONImpl::ObjectBase::setInteger(v15, &v39, v37[0]);
  Inspector::ObjCInspectorCSSBackendDispatcher::setLayoutContextTypeChangedMode(&v39);
  v16 = v41;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v39 = v47[0];
  Inspector::toJSONObjectArray(nodes, &v37[1]);
  v17 = *&v37[1];
  *&v37[1] = 0;
  v38 = v17;
  WTF::HashMap<WTF::String,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::inlineSet<WTF::String const&,WTF::Ref<WTF::JSONImpl::ArrayBase,WTF::RawPtrTraits<WTF::JSONImpl::ArrayBase>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::ArrayBase>>>((v16 + 16), &v39, &v38, v47);
  if (v48 == 1)
  {
    v19 = *(v16 + 36);
    if (v19 == *(v16 + 32))
    {
      WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WTF::String const&>(v16 + 24, &v39);
    }

    else
    {
      v20 = *(v16 + 24);
      v21 = v39;
      if (v39)
      {
        atomic_fetch_add_explicit(v39, 2u, memory_order_relaxed);
      }

      v22 = *(v16 + 36);
      *(v20 + 8 * v19) = v21;
      *(v16 + 36) = v22 + 1;
    }
  }

  v23 = v38;
  v38 = 0;
  if (v23)
  {
    Inspector::toJSONObjectArray(v23);
  }

  v24 = *&v37[1];
  *&v37[1] = 0;
  if (v24)
  {
    if (*v24 == 1)
    {
      WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*v24;
    }
  }

  v25 = v39;
  v39 = 0;
  if (v25 && atomic_fetch_add_explicit(v25, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v25, v18);
  }

  v26 = v42;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v27 = v41;
  v41 = 0;
  v38 = v27;
  v39 = v47[0];
  WTF::HashMap<WTF::String,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::inlineSet<WTF::String const&,WTF::Ref<WTF::JSONImpl::ObjectBase,WTF::RawPtrTraits<WTF::JSONImpl::ObjectBase>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::ObjectBase>>>(v26 + 2, &v39, &v38, v47);
  if (v48 == 1)
  {
    v29 = *(v26 + 9);
    if (v29 == *(v26 + 8))
    {
      WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WTF::String const&>(v26 + 24, &v39);
    }

    else
    {
      v30 = *(v26 + 3);
      v31 = v39;
      if (v39)
      {
        atomic_fetch_add_explicit(v39, 2u, memory_order_relaxed);
      }

      v32 = *(v26 + 9);
      *(v30 + 8 * v29) = v31;
      *(v26 + 9) = v32 + 1;
    }
  }

  v33 = v38;
  v38 = 0;
  if (v33)
  {
    Inspector::toJSONObjectArray(v33);
  }

  v34 = v39;
  v39 = 0;
  if (v34 && atomic_fetch_add_explicit(v34, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v34, v28);
  }

  WTF::JSONImpl::Value::toJSONString(v47, v42);
  Inspector::FrontendRouter::sendEvent(v36, v47);
  [RWIProtocolCSSDomainEventDispatcher styleSheetChangedWithStyleSheetId:v47];
  v35 = *MEMORY[0x277D85DE8];
}

- (void)inlineStyleInvalidatedWithNodeIds:(id)ids
{
  v4 = (*(self->_controller->var0 + 4))(self->_controller, a2);
  v5 = v4;
  if (!ids)
  {
    v4 = [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"required parameter '%@' cannot be nil", @"nodeIds"}];
  }

  WTF::JSONImpl::Object::create(&v32, v4);
  v6 = v32;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v31 = v33[0];
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v30 = v33[0];
  WTF::JSONImpl::ObjectBase::setString(v6, &v31, &v30);
  v7 = ___ZN9Inspector33ObjCInspectorCSSBackendDispatcher17getStyleSheetTextElRKN3WTF6StringE_block_invoke_2_cold_1(&v30);
  WTF::JSONImpl::Object::create(&v31, v7);
  v8 = v31;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v29 = v33[0];
  Inspector::toJSONIntegerArray(ids, &v27);
  v9 = v27;
  v27 = 0;
  v28 = v9;
  WTF::HashMap<WTF::String,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::inlineSet<WTF::String const&,WTF::Ref<WTF::JSONImpl::ArrayBase,WTF::RawPtrTraits<WTF::JSONImpl::ArrayBase>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::ArrayBase>>>((v8 + 16), &v29, &v28, v33);
  if (v34 == 1)
  {
    v11 = *(v8 + 36);
    if (v11 == *(v8 + 32))
    {
      WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WTF::String const&>(v8 + 24, &v29);
    }

    else
    {
      v12 = *(v8 + 24);
      v13 = v29;
      if (v29)
      {
        atomic_fetch_add_explicit(v29, 2u, memory_order_relaxed);
      }

      v14 = *(v8 + 36);
      *(v12 + 8 * v11) = v13;
      *(v8 + 36) = v14 + 1;
    }
  }

  v15 = v28;
  v28 = 0;
  if (v15)
  {
    Inspector::toJSONObjectArray(v15);
  }

  v16 = v27;
  v27 = 0;
  if (v16)
  {
    if (*v16 == 1)
    {
      WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*v16;
    }
  }

  v17 = v29;
  v29 = 0;
  if (v17 && atomic_fetch_add_explicit(v17, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v17, v10);
  }

  v18 = v32;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v19 = v31;
  v31 = 0;
  v28 = v19;
  v29 = v33[0];
  WTF::HashMap<WTF::String,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::inlineSet<WTF::String const&,WTF::Ref<WTF::JSONImpl::ObjectBase,WTF::RawPtrTraits<WTF::JSONImpl::ObjectBase>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::ObjectBase>>>(v18 + 2, &v29, &v28, v33);
  if (v34 == 1)
  {
    v21 = *(v18 + 9);
    if (v21 == *(v18 + 8))
    {
      WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WTF::String const&>(v18 + 24, &v29);
    }

    else
    {
      v22 = *(v18 + 3);
      v23 = v29;
      if (v29)
      {
        atomic_fetch_add_explicit(v29, 2u, memory_order_relaxed);
      }

      v24 = *(v18 + 9);
      *(v22 + 8 * v21) = v23;
      *(v18 + 9) = v24 + 1;
    }
  }

  v25 = v28;
  v28 = 0;
  if (v25)
  {
    Inspector::toJSONObjectArray(v25);
  }

  v26 = v29;
  v29 = 0;
  if (v26 && atomic_fetch_add_explicit(v26, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v26, v20);
  }

  WTF::JSONImpl::Value::toJSONString(v33, v32);
  Inspector::FrontendRouter::sendEvent(v5, v33);
  [RWIProtocolCSSDomainEventDispatcher styleSheetChangedWithStyleSheetId:v33];
}

@end