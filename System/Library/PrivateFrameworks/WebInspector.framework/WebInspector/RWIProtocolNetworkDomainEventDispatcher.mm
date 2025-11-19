@interface RWIProtocolNetworkDomainEventDispatcher
- (RWIProtocolNetworkDomainEventDispatcher)initWithController:(AugmentableInspectorController *)a3;
- (void)loadingFailedWithRequestId:(id)a3 timestamp:(double)a4 errorText:(id)a5 canceled:(BOOL *)a6;
- (void)loadingFinishedWithRequestId:(id)a3 timestamp:(double)a4 sourceMapURL:(id *)a5 metrics:(id *)a6;
- (void)requestInterceptedWithRequestId:(id)a3 request:(id)a4;
- (void)requestServedFromMemoryCacheWithRequestId:(id)a3 frameId:(id)a4 loaderId:(id)a5 documentURL:(id)a6 timestamp:(double)a7 initiator:(id)a8 resource:(id)a9;
- (void)requestWillBeSentWithRequestId:(id)a3 frameId:(id)a4 loaderId:(id)a5 documentURL:(id)a6 request:(id)a7 timestamp:(double)a8 walltime:(double)a9 initiator:(id)a10 redirectResponse:(id *)a11 type:(int64_t *)a12 targetId:(id *)a13;
- (void)responseInterceptedWithRequestId:(id)a3 response:(id)a4;
- (void)responseReceivedWithRequestId:(id)a3 frameId:(id)a4 loaderId:(id)a5 timestamp:(double)a6 type:(int64_t)a7 response:(id)a8;
- (void)webSocketClosedWithRequestId:(id)a3 timestamp:(double)a4;
- (void)webSocketCreatedWithRequestId:(id)a3 url:(id)a4;
- (void)webSocketFrameErrorWithRequestId:(id)a3 timestamp:(double)a4 errorMessage:(id)a5;
- (void)webSocketFrameReceivedWithRequestId:(id)a3 timestamp:(double)a4 response:(id)a5;
- (void)webSocketFrameSentWithRequestId:(id)a3 timestamp:(double)a4 response:(id)a5;
- (void)webSocketHandshakeResponseReceivedWithRequestId:(id)a3 timestamp:(double)a4 response:(id)a5;
- (void)webSocketWillSendHandshakeRequestWithRequestId:(id)a3 timestamp:(double)a4 walltime:(double)a5 request:(id)a6;
@end

@implementation RWIProtocolNetworkDomainEventDispatcher

- (RWIProtocolNetworkDomainEventDispatcher)initWithController:(AugmentableInspectorController *)a3
{
  v5.receiver = self;
  v5.super_class = RWIProtocolNetworkDomainEventDispatcher;
  result = [(RWIProtocolNetworkDomainEventDispatcher *)&v5 init];
  if (result)
  {
    result->_controller = a3;
  }

  return result;
}

- (void)requestWillBeSentWithRequestId:(id)a3 frameId:(id)a4 loaderId:(id)a5 documentURL:(id)a6 request:(id)a7 timestamp:(double)a8 walltime:(double)a9 initiator:(id)a10 redirectResponse:(id *)a11 type:(int64_t *)a12 targetId:(id *)a13
{
  v21 = (*(self->_controller->var0 + 4))(self->_controller, a2);
  v22 = v21;
  if (a3)
  {
    if (a4)
    {
LABEL_3:
      if (!a5)
      {
        goto LABEL_4;
      }

LABEL_8:
      if (a6)
      {
        goto LABEL_10;
      }

      goto LABEL_9;
    }
  }

  else
  {
    v21 = [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"required parameter '%@' cannot be nil", @"requestId"}];
    if (a4)
    {
      goto LABEL_3;
    }
  }

  v21 = [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"required parameter '%@' cannot be nil", @"frameId"}];
  if (a5)
  {
    goto LABEL_8;
  }

LABEL_4:
  v21 = [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"required parameter '%@' cannot be nil", @"loaderId"}];
  if (!a6)
  {
LABEL_9:
    v21 = [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"required parameter '%@' cannot be nil", @"documentURL"}];
  }

LABEL_10:
  if (!a7)
  {
    v21 = [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"required parameter '%@' cannot be nil", @"request"}];
  }

  if (!a10)
  {
    v21 = [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"required parameter '%@' cannot be nil", @"initiator"}];
  }

  if (a11 && !*a11)
  {
    v21 = [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"optional parameter '%@' cannot be nil", @"redirectResponse"}];
  }

  if (a13 && !*a13)
  {
    v21 = [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"optional parameter '%@' cannot be nil", @"targetId"}];
  }

  WTF::JSONImpl::Object::create(&v89, v21);
  v23 = v89;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v88 = v90[0];
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v87 = v90[0];
  WTF::JSONImpl::ObjectBase::setString(v23, &v88, &v87);
  v24 = ___ZN9Inspector33ObjCInspectorCSSBackendDispatcher17getStyleSheetTextElRKN3WTF6StringE_block_invoke_2_cold_1(&v87);
  WTF::JSONImpl::Object::create(&v88, v24);
  v25 = v88;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v86 = v90[0];
  MEMORY[0x2743DB520](&v85, a3);
  WTF::JSONImpl::ObjectBase::setString(v25, &v86, &v85);
  ___ZN9Inspector33ObjCInspectorCSSBackendDispatcher17getStyleSheetTextElRKN3WTF6StringE_block_invoke_2_cold_1(&v85);
  v26 = v88;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v86 = v90[0];
  MEMORY[0x2743DB520](&v84, a4);
  WTF::JSONImpl::ObjectBase::setString(v26, &v86, &v84);
  ___ZN9Inspector33ObjCInspectorCSSBackendDispatcher17getStyleSheetTextElRKN3WTF6StringE_block_invoke_2_cold_1(&v84);
  v27 = v88;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v86 = v90[0];
  MEMORY[0x2743DB520](&v83, a5);
  WTF::JSONImpl::ObjectBase::setString(v27, &v86, &v83);
  ___ZN9Inspector33ObjCInspectorCSSBackendDispatcher17getStyleSheetTextElRKN3WTF6StringE_block_invoke_2_cold_1(&v83);
  v28 = v88;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v86 = v90[0];
  MEMORY[0x2743DB520](&v82, a6);
  WTF::JSONImpl::ObjectBase::setString(v28, &v86, &v82);
  ___ZN9Inspector33ObjCInspectorCSSBackendDispatcher17getStyleSheetTextElRKN3WTF6StringE_block_invoke_2_cold_1(&v82);
  v29 = v88;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v86 = v90[0];
  if (a7)
  {
    [a7 toJSONObject];
    v30 = v80;
  }

  else
  {
    v30 = 0;
  }

  v80 = 0;
  v81 = v30;
  WTF::HashMap<WTF::String,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::inlineSet<WTF::String const&,WTF::Ref<WTF::JSONImpl::ObjectBase,WTF::RawPtrTraits<WTF::JSONImpl::ObjectBase>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::ObjectBase>>>((v29 + 16), &v86, &v81, v90);
  if (v91 == 1)
  {
    v32 = *(v29 + 36);
    if (v32 == *(v29 + 32))
    {
      WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WTF::String const&>(v29 + 24, &v86);
    }

    else
    {
      v33 = *(v29 + 24);
      v34 = v86;
      if (v86)
      {
        atomic_fetch_add_explicit(v86, 2u, memory_order_relaxed);
      }

      v35 = *(v29 + 36);
      *(v33 + 8 * v32) = v34;
      *(v29 + 36) = v35 + 1;
    }
  }

  v36 = v81;
  v81 = 0;
  if (v36)
  {
    Inspector::toJSONObjectArray(v36);
  }

  v37 = v80;
  v80 = 0;
  if (v37)
  {
    if (LODWORD(v37->isa) == 1)
    {
      WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --LODWORD(v37->isa);
    }
  }

  v38 = v86;
  v86 = 0;
  if (v38 && atomic_fetch_add_explicit(v38, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v38, v31);
  }

  v39 = v88;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v86 = v90[0];
  WTF::JSONImpl::ObjectBase::setDouble(v39, &v86, a8);
  Inspector::ObjCInspectorCSSBackendDispatcher::setLayoutContextTypeChangedMode(&v86);
  v40 = v88;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v86 = v90[0];
  WTF::JSONImpl::ObjectBase::setDouble(v40, &v86, a9);
  Inspector::ObjCInspectorCSSBackendDispatcher::setLayoutContextTypeChangedMode(&v86);
  v41 = v88;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v86 = v90[0];
  if (a10)
  {
    [a10 toJSONObject];
    v42 = v80;
  }

  else
  {
    v42 = 0;
  }

  v80 = 0;
  v81 = v42;
  WTF::HashMap<WTF::String,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::inlineSet<WTF::String const&,WTF::Ref<WTF::JSONImpl::ObjectBase,WTF::RawPtrTraits<WTF::JSONImpl::ObjectBase>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::ObjectBase>>>((v41 + 16), &v86, &v81, v90);
  if (v91 == 1)
  {
    v44 = *(v41 + 36);
    if (v44 == *(v41 + 32))
    {
      WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WTF::String const&>(v41 + 24, &v86);
    }

    else
    {
      v45 = *(v41 + 24);
      v46 = v86;
      if (v86)
      {
        atomic_fetch_add_explicit(v86, 2u, memory_order_relaxed);
      }

      v47 = *(v41 + 36);
      *(v45 + 8 * v44) = v46;
      *(v41 + 36) = v47 + 1;
    }
  }

  v48 = v81;
  v81 = 0;
  if (v48)
  {
    Inspector::toJSONObjectArray(v48);
  }

  v49 = v80;
  v80 = 0;
  if (v49)
  {
    if (LODWORD(v49->isa) == 1)
    {
      WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --LODWORD(v49->isa);
    }
  }

  v50 = v86;
  v86 = 0;
  if (v50 && atomic_fetch_add_explicit(v50, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v50, v43);
  }

  if (a11)
  {
    v51 = v88;
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    v86 = v90[0];
    if (*a11)
    {
      [*a11 toJSONObject];
      v52 = v80;
    }

    else
    {
      v52 = 0;
    }

    v80 = 0;
    v81 = v52;
    WTF::HashMap<WTF::String,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::inlineSet<WTF::String const&,WTF::Ref<WTF::JSONImpl::ObjectBase,WTF::RawPtrTraits<WTF::JSONImpl::ObjectBase>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::ObjectBase>>>((v51 + 16), &v86, &v81, v90);
    if (v91 == 1)
    {
      v54 = *(v51 + 36);
      if (v54 == *(v51 + 32))
      {
        WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WTF::String const&>(v51 + 24, &v86);
      }

      else
      {
        v55 = *(v51 + 24);
        v56 = v86;
        if (v86)
        {
          atomic_fetch_add_explicit(v86, 2u, memory_order_relaxed);
        }

        v57 = *(v51 + 36);
        *(v55 + 8 * v54) = v56;
        *(v51 + 36) = v57 + 1;
      }
    }

    v58 = v81;
    v81 = 0;
    if (v58)
    {
      Inspector::toJSONObjectArray(v58);
    }

    v59 = v80;
    v80 = 0;
    if (v59)
    {
      if (LODWORD(v59->isa) == 1)
      {
        WTF::JSONImpl::Value::operator delete();
      }

      else
      {
        --LODWORD(v59->isa);
      }
    }

    v60 = v86;
    v86 = 0;
    if (v60 && atomic_fetch_add_explicit(v60, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v60, v53);
    }
  }

  if (a12)
  {
    v61 = v88;
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    v86 = v90[0];
    v62 = *a12;
    Inspector::toProtocolString();
    if (v79)
    {
      atomic_fetch_add_explicit(v79, 2u, memory_order_relaxed);
      MEMORY[0x2743DB4B0](&v80, v79);
      if (atomic_fetch_add_explicit(v79, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v79, v63);
      }
    }

    else
    {
      v80 = &stru_2882B1C88;
      v74 = &stru_2882B1C88;
    }

    MEMORY[0x2743DB520](&v81, v80);
    WTF::JSONImpl::ObjectBase::setString(v61, &v86, &v81);
    [RWIProtocolConsoleDomainEventDispatcher messagesClearedWithReason:?];
  }

  if (a13)
  {
    v64 = v88;
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    v78 = v90[0];
    MEMORY[0x2743DB520](&v77, *a13);
    WTF::JSONImpl::ObjectBase::setString(v64, &v78, &v77);
    ___ZN9Inspector33ObjCInspectorCSSBackendDispatcher17getStyleSheetTextElRKN3WTF6StringE_block_invoke_2_cold_1(&v77);
  }

  v65 = v89;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v66 = v88;
  v88 = 0;
  v75 = v66;
  v76 = v90[0];
  WTF::HashMap<WTF::String,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::inlineSet<WTF::String const&,WTF::Ref<WTF::JSONImpl::ObjectBase,WTF::RawPtrTraits<WTF::JSONImpl::ObjectBase>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::ObjectBase>>>(v65 + 2, &v76, &v75, v90);
  if (v91 == 1)
  {
    v68 = *(v65 + 9);
    if (v68 == *(v65 + 8))
    {
      WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WTF::String const&>(v65 + 24, &v76);
    }

    else
    {
      v69 = *(v65 + 3);
      v70 = v76;
      if (v76)
      {
        atomic_fetch_add_explicit(v76, 2u, memory_order_relaxed);
      }

      v71 = *(v65 + 9);
      *(v69 + 8 * v68) = v70;
      *(v65 + 9) = v71 + 1;
    }
  }

  v72 = v75;
  v75 = 0;
  if (v72)
  {
    Inspector::toJSONObjectArray(v72);
  }

  v73 = v76;
  v76 = 0;
  if (v73 && atomic_fetch_add_explicit(v73, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v73, v67);
  }

  WTF::JSONImpl::Value::toJSONString(v90, v89);
  Inspector::FrontendRouter::sendEvent(v22, v90);
  [RWIProtocolCSSDomainEventDispatcher styleSheetChangedWithStyleSheetId:v90];
}

- (void)responseReceivedWithRequestId:(id)a3 frameId:(id)a4 loaderId:(id)a5 timestamp:(double)a6 type:(int64_t)a7 response:(id)a8
{
  v13 = (*(self->_controller->var0 + 4))(self->_controller, a2);
  v14 = v13;
  v15 = MEMORY[0x277CBE660];
  if (a3)
  {
    if (a4)
    {
LABEL_3:
      if (!a5)
      {
        goto LABEL_4;
      }

LABEL_8:
      if (a8)
      {
        goto LABEL_10;
      }

      goto LABEL_9;
    }
  }

  else
  {
    v13 = [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"required parameter '%@' cannot be nil", @"requestId"}];
    if (a4)
    {
      goto LABEL_3;
    }
  }

  v13 = [MEMORY[0x277CBEAD8] raise:*v15 format:{@"required parameter '%@' cannot be nil", @"frameId"}];
  if (a5)
  {
    goto LABEL_8;
  }

LABEL_4:
  v13 = [MEMORY[0x277CBEAD8] raise:*v15 format:{@"required parameter '%@' cannot be nil", @"loaderId"}];
  if (!a8)
  {
LABEL_9:
    v13 = [MEMORY[0x277CBEAD8] raise:*v15 format:{@"required parameter '%@' cannot be nil", @"response"}];
  }

LABEL_10:
  WTF::JSONImpl::Object::create(&v54, v13);
  v16 = v54;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v53 = v55[0];
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v52 = v55[0];
  WTF::JSONImpl::ObjectBase::setString(v16, &v53, &v52);
  v17 = ___ZN9Inspector33ObjCInspectorCSSBackendDispatcher17getStyleSheetTextElRKN3WTF6StringE_block_invoke_2_cold_1(&v52);
  WTF::JSONImpl::Object::create(&v53, v17);
  v18 = v53;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v51 = v55[0];
  MEMORY[0x2743DB520](&v50, a3);
  WTF::JSONImpl::ObjectBase::setString(v18, &v51, &v50);
  ___ZN9Inspector33ObjCInspectorCSSBackendDispatcher17getStyleSheetTextElRKN3WTF6StringE_block_invoke_2_cold_1(&v50);
  v19 = v53;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v51 = v55[0];
  MEMORY[0x2743DB520](&v49, a4);
  WTF::JSONImpl::ObjectBase::setString(v19, &v51, &v49);
  ___ZN9Inspector33ObjCInspectorCSSBackendDispatcher17getStyleSheetTextElRKN3WTF6StringE_block_invoke_2_cold_1(&v49);
  v20 = v53;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v51 = v55[0];
  MEMORY[0x2743DB520](&v48, a5);
  WTF::JSONImpl::ObjectBase::setString(v20, &v51, &v48);
  ___ZN9Inspector33ObjCInspectorCSSBackendDispatcher17getStyleSheetTextElRKN3WTF6StringE_block_invoke_2_cold_1(&v48);
  v21 = v53;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v51 = v55[0];
  WTF::JSONImpl::ObjectBase::setDouble(v21, &v51, a6);
  Inspector::ObjCInspectorCSSBackendDispatcher::setLayoutContextTypeChangedMode(&v51);
  v22 = v53;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v51 = v55[0];
  Inspector::toProtocolString();
  if (v45)
  {
    atomic_fetch_add_explicit(v45, 2u, memory_order_relaxed);
    MEMORY[0x2743DB4B0](&v46, v45);
    if (atomic_fetch_add_explicit(v45, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v45, v23);
    }
  }

  else
  {
    v46 = &stru_2882B1C88;
    v42 = &stru_2882B1C88;
  }

  MEMORY[0x2743DB520](&v47, v46);
  WTF::JSONImpl::ObjectBase::setString(v22, &v51, &v47);
  [RWIProtocolConsoleDomainEventDispatcher messagesClearedWithReason:?];
  v24 = v53;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v51 = v55[0];
  if (a8)
  {
    [a8 toJSONObject];
    v25 = v43;
  }

  else
  {
    v25 = 0;
  }

  v44 = v25;
  WTF::HashMap<WTF::String,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::inlineSet<WTF::String const&,WTF::Ref<WTF::JSONImpl::ObjectBase,WTF::RawPtrTraits<WTF::JSONImpl::ObjectBase>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::ObjectBase>>>((v24 + 16), &v51, &v44, v55);
  if (v56 == 1)
  {
    v27 = *(v24 + 36);
    if (v27 == *(v24 + 32))
    {
      WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WTF::String const&>(v24 + 24, &v51);
    }

    else
    {
      v28 = *(v24 + 24);
      v29 = v51;
      if (v51)
      {
        atomic_fetch_add_explicit(v51, 2u, memory_order_relaxed);
      }

      v30 = *(v24 + 36);
      *(v28 + 8 * v27) = v29;
      *(v24 + 36) = v30 + 1;
    }
  }

  v31 = v44;
  v44 = 0;
  if (v31)
  {
    Inspector::toJSONObjectArray(v31);
  }

  v32 = v51;
  v51 = 0;
  if (v32 && atomic_fetch_add_explicit(v32, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v32, v26);
  }

  v33 = v54;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v51 = v55[0];
  v34 = v53;
  v53 = 0;
  v44 = v34;
  WTF::HashMap<WTF::String,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::inlineSet<WTF::String const&,WTF::Ref<WTF::JSONImpl::ObjectBase,WTF::RawPtrTraits<WTF::JSONImpl::ObjectBase>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::ObjectBase>>>(v33 + 2, &v51, &v44, v55);
  if (v56 == 1)
  {
    v36 = *(v33 + 9);
    if (v36 == *(v33 + 8))
    {
      WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WTF::String const&>(v33 + 24, &v51);
    }

    else
    {
      v37 = *(v33 + 3);
      v38 = v51;
      if (v51)
      {
        atomic_fetch_add_explicit(v51, 2u, memory_order_relaxed);
      }

      v39 = *(v33 + 9);
      *(v37 + 8 * v36) = v38;
      *(v33 + 9) = v39 + 1;
    }
  }

  v40 = v44;
  v44 = 0;
  if (v40)
  {
    Inspector::toJSONObjectArray(v40);
  }

  v41 = v51;
  v51 = 0;
  if (v41 && atomic_fetch_add_explicit(v41, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v41, v35);
  }

  WTF::JSONImpl::Value::toJSONString(v55, v54);
  Inspector::FrontendRouter::sendEvent(v14, v55);
  [RWIProtocolCSSDomainEventDispatcher styleSheetChangedWithStyleSheetId:v55];
}

- (void)loadingFinishedWithRequestId:(id)a3 timestamp:(double)a4 sourceMapURL:(id *)a5 metrics:(id *)a6
{
  v10 = (*(self->_controller->var0 + 4))(self->_controller, a2);
  v11 = v10;
  if (!a3)
  {
    v10 = [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"required parameter '%@' cannot be nil", @"requestId"}];
  }

  if (a5 && !*a5)
  {
    v10 = [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"optional parameter '%@' cannot be nil", @"sourceMapURL"}];
  }

  if (a6 && !*a6)
  {
    v10 = [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"optional parameter '%@' cannot be nil", @"metrics"}];
  }

  WTF::JSONImpl::Object::create(&v45, v10);
  v12 = v45;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v44 = v46[0];
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v43 = v46[0];
  WTF::JSONImpl::ObjectBase::setString(v12, &v44, &v43);
  v13 = ___ZN9Inspector33ObjCInspectorCSSBackendDispatcher17getStyleSheetTextElRKN3WTF6StringE_block_invoke_2_cold_1(&v43);
  WTF::JSONImpl::Object::create(&v44, v13);
  v14 = v44;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v42 = v46[0];
  MEMORY[0x2743DB520](&v41, a3);
  WTF::JSONImpl::ObjectBase::setString(v14, &v42, &v41);
  ___ZN9Inspector33ObjCInspectorCSSBackendDispatcher17getStyleSheetTextElRKN3WTF6StringE_block_invoke_2_cold_1(&v41);
  v15 = v44;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v42 = v46[0];
  WTF::JSONImpl::ObjectBase::setDouble(v15, &v42, a4);
  v17 = v42;
  v42 = 0;
  if (v17 && atomic_fetch_add_explicit(v17, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v17, v16);
  }

  if (a5)
  {
    v18 = v44;
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    v42 = v46[0];
    MEMORY[0x2743DB520](&v40, *a5);
    WTF::JSONImpl::ObjectBase::setString(v18, &v42, &v40);
    ___ZN9Inspector33ObjCInspectorCSSBackendDispatcher17getStyleSheetTextElRKN3WTF6StringE_block_invoke_2_cold_1(&v40);
  }

  if (a6)
  {
    v19 = v44;
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    v39 = v46[0];
    if (*a6)
    {
      [*a6 toJSONObject];
      v20 = v37;
    }

    else
    {
      v20 = 0;
    }

    v38 = v20;
    WTF::HashMap<WTF::String,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::inlineSet<WTF::String const&,WTF::Ref<WTF::JSONImpl::ObjectBase,WTF::RawPtrTraits<WTF::JSONImpl::ObjectBase>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::ObjectBase>>>((v19 + 16), &v39, &v38, v46);
    if (v47 == 1)
    {
      v22 = *(v19 + 36);
      if (v22 == *(v19 + 32))
      {
        WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WTF::String const&>(v19 + 24, &v39);
      }

      else
      {
        v23 = *(v19 + 24);
        v24 = v39;
        if (v39)
        {
          atomic_fetch_add_explicit(v39, 2u, memory_order_relaxed);
        }

        v25 = *(v19 + 36);
        *(v23 + 8 * v22) = v24;
        *(v19 + 36) = v25 + 1;
      }
    }

    v26 = v38;
    v38 = 0;
    if (v26)
    {
      Inspector::toJSONObjectArray(v26);
    }

    v27 = v39;
    v39 = 0;
    if (v27 && atomic_fetch_add_explicit(v27, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v27, v21);
    }
  }

  v28 = v45;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v29 = v44;
  v44 = 0;
  v38 = v29;
  v39 = v46[0];
  WTF::HashMap<WTF::String,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::inlineSet<WTF::String const&,WTF::Ref<WTF::JSONImpl::ObjectBase,WTF::RawPtrTraits<WTF::JSONImpl::ObjectBase>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::ObjectBase>>>(v28 + 2, &v39, &v38, v46);
  if (v47 == 1)
  {
    v31 = *(v28 + 9);
    if (v31 == *(v28 + 8))
    {
      WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WTF::String const&>(v28 + 24, &v39);
    }

    else
    {
      v32 = *(v28 + 3);
      v33 = v39;
      if (v39)
      {
        atomic_fetch_add_explicit(v39, 2u, memory_order_relaxed);
      }

      v34 = *(v28 + 9);
      *(v32 + 8 * v31) = v33;
      *(v28 + 9) = v34 + 1;
    }
  }

  v35 = v38;
  v38 = 0;
  if (v35)
  {
    Inspector::toJSONObjectArray(v35);
  }

  v36 = v39;
  v39 = 0;
  if (v36 && atomic_fetch_add_explicit(v36, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v36, v30);
  }

  WTF::JSONImpl::Value::toJSONString(v46, v45);
  Inspector::FrontendRouter::sendEvent(v11, v46);
  [RWIProtocolCSSDomainEventDispatcher styleSheetChangedWithStyleSheetId:v46];
}

- (void)loadingFailedWithRequestId:(id)a3 timestamp:(double)a4 errorText:(id)a5 canceled:(BOOL *)a6
{
  v10 = (*(self->_controller->var0 + 4))(self->_controller, a2);
  v11 = v10;
  v12 = MEMORY[0x277CBE660];
  if (!a3)
  {
    v10 = [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"required parameter '%@' cannot be nil", @"requestId"}];
  }

  if (!a5)
  {
    v10 = [MEMORY[0x277CBEAD8] raise:*v12 format:{@"required parameter '%@' cannot be nil", @"errorText"}];
  }

  WTF::JSONImpl::Object::create(&v36, v10);
  v13 = v36;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v35 = v37[0];
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v34 = v37[0];
  WTF::JSONImpl::ObjectBase::setString(v13, &v35, &v34);
  v14 = ___ZN9Inspector33ObjCInspectorCSSBackendDispatcher17getStyleSheetTextElRKN3WTF6StringE_block_invoke_2_cold_1(&v34);
  WTF::JSONImpl::Object::create(&v35, v14);
  v15 = v35;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v33 = v37[0];
  MEMORY[0x2743DB520](&v32, a3);
  WTF::JSONImpl::ObjectBase::setString(v15, &v33, &v32);
  ___ZN9Inspector33ObjCInspectorCSSBackendDispatcher17getStyleSheetTextElRKN3WTF6StringE_block_invoke_2_cold_1(&v32);
  v16 = v35;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v33 = v37[0];
  WTF::JSONImpl::ObjectBase::setDouble(v16, &v33, a4);
  Inspector::ObjCInspectorCSSBackendDispatcher::setLayoutContextTypeChangedMode(&v33);
  v17 = v35;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v33 = v37[0];
  MEMORY[0x2743DB520](&v31, a5);
  WTF::JSONImpl::ObjectBase::setString(v17, &v33, &v31);
  if (![RWIProtocolNetworkDomainEventDispatcher loadingFailedWithRequestId:? timestamp:? errorText:? canceled:?])
  {
    v18 = v35;
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    v30 = v37[0];
    WTF::JSONImpl::ObjectBase::setBoolean(v18, &v30, *a6);
    Inspector::ObjCInspectorCSSBackendDispatcher::setLayoutContextTypeChangedMode(&v30);
  }

  v19 = v36;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v20 = v35;
  v35 = 0;
  v28 = v20;
  v29 = v37[0];
  WTF::HashMap<WTF::String,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::inlineSet<WTF::String const&,WTF::Ref<WTF::JSONImpl::ObjectBase,WTF::RawPtrTraits<WTF::JSONImpl::ObjectBase>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::ObjectBase>>>(v19 + 2, &v29, &v28, v37);
  if (v38 == 1)
  {
    v22 = *(v19 + 9);
    if (v22 == *(v19 + 8))
    {
      WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WTF::String const&>(v19 + 24, &v29);
    }

    else
    {
      v23 = *(v19 + 3);
      v24 = v29;
      if (v29)
      {
        atomic_fetch_add_explicit(v29, 2u, memory_order_relaxed);
      }

      v25 = *(v19 + 9);
      *(v23 + 8 * v22) = v24;
      *(v19 + 9) = v25 + 1;
    }
  }

  v26 = v28;
  v28 = 0;
  if (v26)
  {
    Inspector::toJSONObjectArray(v26);
  }

  v27 = v29;
  v29 = 0;
  if (v27 && atomic_fetch_add_explicit(v27, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v27, v21);
  }

  WTF::JSONImpl::Value::toJSONString(v37, v36);
  Inspector::FrontendRouter::sendEvent(v11, v37);
  [RWIProtocolCSSDomainEventDispatcher styleSheetChangedWithStyleSheetId:v37];
}

- (void)requestServedFromMemoryCacheWithRequestId:(id)a3 frameId:(id)a4 loaderId:(id)a5 documentURL:(id)a6 timestamp:(double)a7 initiator:(id)a8 resource:(id)a9
{
  v16 = (*(self->_controller->var0 + 4))(self->_controller, a2);
  v17 = v16;
  v18 = MEMORY[0x277CBE660];
  if (a3)
  {
    if (a4)
    {
LABEL_3:
      if (!a5)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  else
  {
    v16 = [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"required parameter '%@' cannot be nil", @"requestId"}];
    if (a4)
    {
      goto LABEL_3;
    }
  }

  v16 = [MEMORY[0x277CBEAD8] raise:*v18 format:{@"required parameter '%@' cannot be nil", @"frameId"}];
  if (!a5)
  {
LABEL_4:
    v16 = [MEMORY[0x277CBEAD8] raise:*v18 format:{@"required parameter '%@' cannot be nil", @"loaderId"}];
    if (a6)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_10:
  if (a6)
  {
LABEL_5:
    if (!a8)
    {
      goto LABEL_6;
    }

LABEL_12:
    if (a9)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

LABEL_11:
  v16 = [MEMORY[0x277CBEAD8] raise:*v18 format:{@"required parameter '%@' cannot be nil", @"documentURL"}];
  if (a8)
  {
    goto LABEL_12;
  }

LABEL_6:
  v16 = [MEMORY[0x277CBEAD8] raise:*v18 format:{@"required parameter '%@' cannot be nil", @"initiator"}];
  if (!a9)
  {
LABEL_13:
    v16 = [MEMORY[0x277CBEAD8] raise:*v18 format:{@"required parameter '%@' cannot be nil", @"resource"}];
  }

LABEL_14:
  WTF::JSONImpl::Object::create(&v61, v16);
  v19 = v61;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v60 = v62[0];
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v59 = v62[0];
  WTF::JSONImpl::ObjectBase::setString(v19, &v60, &v59);
  v20 = ___ZN9Inspector33ObjCInspectorCSSBackendDispatcher17getStyleSheetTextElRKN3WTF6StringE_block_invoke_2_cold_1(&v59);
  WTF::JSONImpl::Object::create(&v60, v20);
  v21 = v60;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v58 = v62[0];
  MEMORY[0x2743DB520](&v57, a3);
  WTF::JSONImpl::ObjectBase::setString(v21, &v58, &v57);
  ___ZN9Inspector33ObjCInspectorCSSBackendDispatcher17getStyleSheetTextElRKN3WTF6StringE_block_invoke_2_cold_1(&v57);
  v22 = v60;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v58 = v62[0];
  MEMORY[0x2743DB520](&v56, a4);
  WTF::JSONImpl::ObjectBase::setString(v22, &v58, &v56);
  ___ZN9Inspector33ObjCInspectorCSSBackendDispatcher17getStyleSheetTextElRKN3WTF6StringE_block_invoke_2_cold_1(&v56);
  v23 = v60;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v58 = v62[0];
  MEMORY[0x2743DB520](&v55, a5);
  WTF::JSONImpl::ObjectBase::setString(v23, &v58, &v55);
  ___ZN9Inspector33ObjCInspectorCSSBackendDispatcher17getStyleSheetTextElRKN3WTF6StringE_block_invoke_2_cold_1(&v55);
  v24 = v60;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v58 = v62[0];
  MEMORY[0x2743DB520](&v54, a6);
  WTF::JSONImpl::ObjectBase::setString(v24, &v58, &v54);
  ___ZN9Inspector33ObjCInspectorCSSBackendDispatcher17getStyleSheetTextElRKN3WTF6StringE_block_invoke_2_cold_1(&v54);
  v25 = v60;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v58 = v62[0];
  WTF::JSONImpl::ObjectBase::setDouble(v25, &v58, a7);
  Inspector::ObjCInspectorCSSBackendDispatcher::setLayoutContextTypeChangedMode(&v58);
  v26 = v60;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v58 = v62[0];
  if (a8)
  {
    [a8 toJSONObject];
    v27 = v52;
  }

  else
  {
    v27 = 0;
  }

  v53 = v27;
  WTF::HashMap<WTF::String,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::inlineSet<WTF::String const&,WTF::Ref<WTF::JSONImpl::ObjectBase,WTF::RawPtrTraits<WTF::JSONImpl::ObjectBase>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::ObjectBase>>>((v26 + 16), &v58, &v53, v62);
  if (v63 == 1)
  {
    v29 = *(v26 + 36);
    if (v29 == *(v26 + 32))
    {
      WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WTF::String const&>(v26 + 24, &v58);
    }

    else
    {
      v30 = *(v26 + 24);
      v31 = v58;
      if (v58)
      {
        atomic_fetch_add_explicit(v58, 2u, memory_order_relaxed);
      }

      v32 = *(v26 + 36);
      *(v30 + 8 * v29) = v31;
      *(v26 + 36) = v32 + 1;
    }
  }

  v33 = v53;
  v53 = 0;
  if (v33)
  {
    Inspector::toJSONObjectArray(v33);
  }

  v34 = v58;
  v58 = 0;
  if (v34 && atomic_fetch_add_explicit(v34, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v34, v28);
  }

  v35 = v60;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v58 = v62[0];
  if (a9)
  {
    [a9 toJSONObject];
  }

  v53 = 0;
  WTF::HashMap<WTF::String,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::inlineSet<WTF::String const&,WTF::Ref<WTF::JSONImpl::ObjectBase,WTF::RawPtrTraits<WTF::JSONImpl::ObjectBase>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::ObjectBase>>>((v35 + 16), &v58, &v53, v62);
  if (v63 == 1)
  {
    v37 = *(v35 + 36);
    if (v37 == *(v35 + 32))
    {
      WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WTF::String const&>(v35 + 24, &v58);
    }

    else
    {
      v38 = *(v35 + 24);
      v39 = v58;
      if (v58)
      {
        atomic_fetch_add_explicit(v58, 2u, memory_order_relaxed);
      }

      v40 = *(v35 + 36);
      *(v38 + 8 * v37) = v39;
      *(v35 + 36) = v40 + 1;
    }
  }

  v41 = v53;
  v53 = 0;
  if (v41)
  {
    Inspector::toJSONObjectArray(v41);
  }

  v42 = v58;
  v58 = 0;
  if (v42 && atomic_fetch_add_explicit(v42, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v42, v36);
  }

  v43 = v61;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v58 = v62[0];
  v44 = v60;
  v60 = 0;
  v53 = v44;
  WTF::HashMap<WTF::String,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::inlineSet<WTF::String const&,WTF::Ref<WTF::JSONImpl::ObjectBase,WTF::RawPtrTraits<WTF::JSONImpl::ObjectBase>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::ObjectBase>>>(v43 + 2, &v58, &v53, v62);
  if (v63 == 1)
  {
    v46 = *(v43 + 9);
    if (v46 == *(v43 + 8))
    {
      WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WTF::String const&>(v43 + 24, &v58);
    }

    else
    {
      v47 = *(v43 + 3);
      v48 = v58;
      if (v58)
      {
        atomic_fetch_add_explicit(v58, 2u, memory_order_relaxed);
      }

      v49 = *(v43 + 9);
      *(v47 + 8 * v46) = v48;
      *(v43 + 9) = v49 + 1;
    }
  }

  v50 = v53;
  v53 = 0;
  if (v50)
  {
    Inspector::toJSONObjectArray(v50);
  }

  v51 = v58;
  v58 = 0;
  if (v51 && atomic_fetch_add_explicit(v51, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v51, v45);
  }

  WTF::JSONImpl::Value::toJSONString(v62, v61);
  Inspector::FrontendRouter::sendEvent(v17, v62);
  [RWIProtocolCSSDomainEventDispatcher styleSheetChangedWithStyleSheetId:v62];
}

- (void)requestInterceptedWithRequestId:(id)a3 request:(id)a4
{
  v6 = (*(self->_controller->var0 + 4))(self->_controller, a2);
  v7 = v6;
  v8 = MEMORY[0x277CBE660];
  if (!a3)
  {
    v6 = [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"required parameter '%@' cannot be nil", @"requestId"}];
  }

  if (!a4)
  {
    v6 = [MEMORY[0x277CBEAD8] raise:*v8 format:{@"required parameter '%@' cannot be nil", @"request"}];
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
  MEMORY[0x2743DB520](&v32, a3);
  WTF::JSONImpl::ObjectBase::setString(v11, &v33, &v32);
  ___ZN9Inspector33ObjCInspectorCSSBackendDispatcher17getStyleSheetTextElRKN3WTF6StringE_block_invoke_2_cold_1(&v32);
  v12 = v35;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v33 = v37[0];
  if (a4)
  {
    [a4 toJSONObject];
    v13 = v30;
  }

  else
  {
    v13 = 0;
  }

  v31 = v13;
  WTF::HashMap<WTF::String,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::inlineSet<WTF::String const&,WTF::Ref<WTF::JSONImpl::ObjectBase,WTF::RawPtrTraits<WTF::JSONImpl::ObjectBase>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::ObjectBase>>>((v12 + 16), &v33, &v31, v37);
  if (v38 == 1)
  {
    v15 = *(v12 + 36);
    if (v15 == *(v12 + 32))
    {
      WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WTF::String const&>(v12 + 24, &v33);
    }

    else
    {
      v16 = *(v12 + 24);
      v17 = v33;
      if (v33)
      {
        atomic_fetch_add_explicit(v33, 2u, memory_order_relaxed);
      }

      v18 = *(v12 + 36);
      *(v16 + 8 * v15) = v17;
      *(v12 + 36) = v18 + 1;
    }
  }

  v19 = v31;
  v31 = 0;
  if (v19)
  {
    Inspector::toJSONObjectArray(v19);
  }

  v20 = v33;
  v33 = 0;
  if (v20 && atomic_fetch_add_explicit(v20, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v20, v14);
  }

  v21 = v36;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v33 = v37[0];
  v22 = v35;
  v35 = 0;
  v31 = v22;
  WTF::HashMap<WTF::String,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::inlineSet<WTF::String const&,WTF::Ref<WTF::JSONImpl::ObjectBase,WTF::RawPtrTraits<WTF::JSONImpl::ObjectBase>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::ObjectBase>>>(v21 + 2, &v33, &v31, v37);
  if (v38 == 1)
  {
    v24 = *(v21 + 9);
    if (v24 == *(v21 + 8))
    {
      WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WTF::String const&>(v21 + 24, &v33);
    }

    else
    {
      v25 = *(v21 + 3);
      v26 = v33;
      if (v33)
      {
        atomic_fetch_add_explicit(v33, 2u, memory_order_relaxed);
      }

      v27 = *(v21 + 9);
      *(v25 + 8 * v24) = v26;
      *(v21 + 9) = v27 + 1;
    }
  }

  v28 = v31;
  v31 = 0;
  if (v28)
  {
    Inspector::toJSONObjectArray(v28);
  }

  v29 = v33;
  v33 = 0;
  if (v29 && atomic_fetch_add_explicit(v29, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v29, v23);
  }

  WTF::JSONImpl::Value::toJSONString(v37, v36);
  Inspector::FrontendRouter::sendEvent(v7, v37);
  [RWIProtocolCSSDomainEventDispatcher styleSheetChangedWithStyleSheetId:v37];
}

- (void)responseInterceptedWithRequestId:(id)a3 response:(id)a4
{
  v6 = (*(self->_controller->var0 + 4))(self->_controller, a2);
  v7 = v6;
  v8 = MEMORY[0x277CBE660];
  if (!a3)
  {
    v6 = [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"required parameter '%@' cannot be nil", @"requestId"}];
  }

  if (!a4)
  {
    v6 = [MEMORY[0x277CBEAD8] raise:*v8 format:{@"required parameter '%@' cannot be nil", @"response"}];
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
  MEMORY[0x2743DB520](&v32, a3);
  WTF::JSONImpl::ObjectBase::setString(v11, &v33, &v32);
  ___ZN9Inspector33ObjCInspectorCSSBackendDispatcher17getStyleSheetTextElRKN3WTF6StringE_block_invoke_2_cold_1(&v32);
  v12 = v35;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v33 = v37[0];
  if (a4)
  {
    [a4 toJSONObject];
    v13 = v30;
  }

  else
  {
    v13 = 0;
  }

  v31 = v13;
  WTF::HashMap<WTF::String,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::inlineSet<WTF::String const&,WTF::Ref<WTF::JSONImpl::ObjectBase,WTF::RawPtrTraits<WTF::JSONImpl::ObjectBase>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::ObjectBase>>>((v12 + 16), &v33, &v31, v37);
  if (v38 == 1)
  {
    v15 = *(v12 + 36);
    if (v15 == *(v12 + 32))
    {
      WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WTF::String const&>(v12 + 24, &v33);
    }

    else
    {
      v16 = *(v12 + 24);
      v17 = v33;
      if (v33)
      {
        atomic_fetch_add_explicit(v33, 2u, memory_order_relaxed);
      }

      v18 = *(v12 + 36);
      *(v16 + 8 * v15) = v17;
      *(v12 + 36) = v18 + 1;
    }
  }

  v19 = v31;
  v31 = 0;
  if (v19)
  {
    Inspector::toJSONObjectArray(v19);
  }

  v20 = v33;
  v33 = 0;
  if (v20 && atomic_fetch_add_explicit(v20, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v20, v14);
  }

  v21 = v36;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v33 = v37[0];
  v22 = v35;
  v35 = 0;
  v31 = v22;
  WTF::HashMap<WTF::String,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::inlineSet<WTF::String const&,WTF::Ref<WTF::JSONImpl::ObjectBase,WTF::RawPtrTraits<WTF::JSONImpl::ObjectBase>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::ObjectBase>>>(v21 + 2, &v33, &v31, v37);
  if (v38 == 1)
  {
    v24 = *(v21 + 9);
    if (v24 == *(v21 + 8))
    {
      WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WTF::String const&>(v21 + 24, &v33);
    }

    else
    {
      v25 = *(v21 + 3);
      v26 = v33;
      if (v33)
      {
        atomic_fetch_add_explicit(v33, 2u, memory_order_relaxed);
      }

      v27 = *(v21 + 9);
      *(v25 + 8 * v24) = v26;
      *(v21 + 9) = v27 + 1;
    }
  }

  v28 = v31;
  v31 = 0;
  if (v28)
  {
    Inspector::toJSONObjectArray(v28);
  }

  v29 = v33;
  v33 = 0;
  if (v29 && atomic_fetch_add_explicit(v29, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v29, v23);
  }

  WTF::JSONImpl::Value::toJSONString(v37, v36);
  Inspector::FrontendRouter::sendEvent(v7, v37);
  [RWIProtocolCSSDomainEventDispatcher styleSheetChangedWithStyleSheetId:v37];
}

- (void)webSocketWillSendHandshakeRequestWithRequestId:(id)a3 timestamp:(double)a4 walltime:(double)a5 request:(id)a6
{
  v10 = (*(self->_controller->var0 + 4))(self->_controller, a2);
  v11 = v10;
  v12 = MEMORY[0x277CBE660];
  if (!a3)
  {
    v10 = [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"required parameter '%@' cannot be nil", @"requestId"}];
  }

  if (!a6)
  {
    v10 = [MEMORY[0x277CBEAD8] raise:*v12 format:{@"required parameter '%@' cannot be nil", @"request"}];
  }

  WTF::JSONImpl::Object::create(&v42, v10);
  v13 = v42;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v41 = v43[0];
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v40 = v43[0];
  WTF::JSONImpl::ObjectBase::setString(v13, &v41, &v40);
  v14 = ___ZN9Inspector33ObjCInspectorCSSBackendDispatcher17getStyleSheetTextElRKN3WTF6StringE_block_invoke_2_cold_1(&v40);
  WTF::JSONImpl::Object::create(&v41, v14);
  v15 = v41;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v39 = v43[0];
  MEMORY[0x2743DB520](&v38, a3);
  WTF::JSONImpl::ObjectBase::setString(v15, &v39, &v38);
  ___ZN9Inspector33ObjCInspectorCSSBackendDispatcher17getStyleSheetTextElRKN3WTF6StringE_block_invoke_2_cold_1(&v38);
  v16 = v41;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v39 = v43[0];
  WTF::JSONImpl::ObjectBase::setDouble(v16, &v39, a4);
  Inspector::ObjCInspectorCSSBackendDispatcher::setLayoutContextTypeChangedMode(&v39);
  v17 = v41;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v39 = v43[0];
  WTF::JSONImpl::ObjectBase::setDouble(v17, &v39, a5);
  Inspector::ObjCInspectorCSSBackendDispatcher::setLayoutContextTypeChangedMode(&v39);
  v18 = v41;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v39 = v43[0];
  if (a6)
  {
    [a6 toJSONObject];
    v19 = v36;
  }

  else
  {
    v19 = 0;
  }

  v37 = v19;
  WTF::HashMap<WTF::String,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::inlineSet<WTF::String const&,WTF::Ref<WTF::JSONImpl::ObjectBase,WTF::RawPtrTraits<WTF::JSONImpl::ObjectBase>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::ObjectBase>>>((v18 + 16), &v39, &v37, v43);
  if (v44 == 1)
  {
    v21 = *(v18 + 36);
    if (v21 == *(v18 + 32))
    {
      WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WTF::String const&>(v18 + 24, &v39);
    }

    else
    {
      v22 = *(v18 + 24);
      v23 = v39;
      if (v39)
      {
        atomic_fetch_add_explicit(v39, 2u, memory_order_relaxed);
      }

      v24 = *(v18 + 36);
      *(v22 + 8 * v21) = v23;
      *(v18 + 36) = v24 + 1;
    }
  }

  v25 = v37;
  v37 = 0;
  if (v25)
  {
    Inspector::toJSONObjectArray(v25);
  }

  v26 = v39;
  v39 = 0;
  if (v26 && atomic_fetch_add_explicit(v26, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v26, v20);
  }

  v27 = v42;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v39 = v43[0];
  v28 = v41;
  v41 = 0;
  v37 = v28;
  WTF::HashMap<WTF::String,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::inlineSet<WTF::String const&,WTF::Ref<WTF::JSONImpl::ObjectBase,WTF::RawPtrTraits<WTF::JSONImpl::ObjectBase>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::ObjectBase>>>(v27 + 2, &v39, &v37, v43);
  if (v44 == 1)
  {
    v30 = *(v27 + 9);
    if (v30 == *(v27 + 8))
    {
      WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WTF::String const&>(v27 + 24, &v39);
    }

    else
    {
      v31 = *(v27 + 3);
      v32 = v39;
      if (v39)
      {
        atomic_fetch_add_explicit(v39, 2u, memory_order_relaxed);
      }

      v33 = *(v27 + 9);
      *(v31 + 8 * v30) = v32;
      *(v27 + 9) = v33 + 1;
    }
  }

  v34 = v37;
  v37 = 0;
  if (v34)
  {
    Inspector::toJSONObjectArray(v34);
  }

  v35 = v39;
  v39 = 0;
  if (v35 && atomic_fetch_add_explicit(v35, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v35, v29);
  }

  WTF::JSONImpl::Value::toJSONString(v43, v42);
  Inspector::FrontendRouter::sendEvent(v11, v43);
  [RWIProtocolCSSDomainEventDispatcher styleSheetChangedWithStyleSheetId:v43];
}

- (void)webSocketHandshakeResponseReceivedWithRequestId:(id)a3 timestamp:(double)a4 response:(id)a5
{
  v8 = (*(self->_controller->var0 + 4))(self->_controller, a2);
  v9 = v8;
  v10 = MEMORY[0x277CBE660];
  if (!a3)
  {
    v8 = [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"required parameter '%@' cannot be nil", @"requestId"}];
  }

  if (!a5)
  {
    v8 = [MEMORY[0x277CBEAD8] raise:*v10 format:{@"required parameter '%@' cannot be nil", @"response"}];
  }

  WTF::JSONImpl::Object::create(&v39, v8);
  v11 = v39;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v38 = v40[0];
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v37 = v40[0];
  WTF::JSONImpl::ObjectBase::setString(v11, &v38, &v37);
  v12 = ___ZN9Inspector33ObjCInspectorCSSBackendDispatcher17getStyleSheetTextElRKN3WTF6StringE_block_invoke_2_cold_1(&v37);
  WTF::JSONImpl::Object::create(&v38, v12);
  v13 = v38;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v36 = v40[0];
  MEMORY[0x2743DB520](&v35, a3);
  WTF::JSONImpl::ObjectBase::setString(v13, &v36, &v35);
  ___ZN9Inspector33ObjCInspectorCSSBackendDispatcher17getStyleSheetTextElRKN3WTF6StringE_block_invoke_2_cold_1(&v35);
  v14 = v38;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v36 = v40[0];
  WTF::JSONImpl::ObjectBase::setDouble(v14, &v36, a4);
  Inspector::ObjCInspectorCSSBackendDispatcher::setLayoutContextTypeChangedMode(&v36);
  v15 = v38;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v36 = v40[0];
  if (a5)
  {
    [a5 toJSONObject];
    v16 = v33;
  }

  else
  {
    v16 = 0;
  }

  v34 = v16;
  WTF::HashMap<WTF::String,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::inlineSet<WTF::String const&,WTF::Ref<WTF::JSONImpl::ObjectBase,WTF::RawPtrTraits<WTF::JSONImpl::ObjectBase>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::ObjectBase>>>((v15 + 16), &v36, &v34, v40);
  if (v41 == 1)
  {
    v18 = *(v15 + 36);
    if (v18 == *(v15 + 32))
    {
      WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WTF::String const&>(v15 + 24, &v36);
    }

    else
    {
      v19 = *(v15 + 24);
      v20 = v36;
      if (v36)
      {
        atomic_fetch_add_explicit(v36, 2u, memory_order_relaxed);
      }

      v21 = *(v15 + 36);
      *(v19 + 8 * v18) = v20;
      *(v15 + 36) = v21 + 1;
    }
  }

  v22 = v34;
  v34 = 0;
  if (v22)
  {
    Inspector::toJSONObjectArray(v22);
  }

  v23 = v36;
  v36 = 0;
  if (v23 && atomic_fetch_add_explicit(v23, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v23, v17);
  }

  v24 = v39;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v36 = v40[0];
  v25 = v38;
  v38 = 0;
  v34 = v25;
  WTF::HashMap<WTF::String,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::inlineSet<WTF::String const&,WTF::Ref<WTF::JSONImpl::ObjectBase,WTF::RawPtrTraits<WTF::JSONImpl::ObjectBase>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::ObjectBase>>>(v24 + 2, &v36, &v34, v40);
  if (v41 == 1)
  {
    v27 = *(v24 + 9);
    if (v27 == *(v24 + 8))
    {
      WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WTF::String const&>(v24 + 24, &v36);
    }

    else
    {
      v28 = *(v24 + 3);
      v29 = v36;
      if (v36)
      {
        atomic_fetch_add_explicit(v36, 2u, memory_order_relaxed);
      }

      v30 = *(v24 + 9);
      *(v28 + 8 * v27) = v29;
      *(v24 + 9) = v30 + 1;
    }
  }

  v31 = v34;
  v34 = 0;
  if (v31)
  {
    Inspector::toJSONObjectArray(v31);
  }

  v32 = v36;
  v36 = 0;
  if (v32 && atomic_fetch_add_explicit(v32, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v32, v26);
  }

  WTF::JSONImpl::Value::toJSONString(v40, v39);
  Inspector::FrontendRouter::sendEvent(v9, v40);
  [RWIProtocolCSSDomainEventDispatcher styleSheetChangedWithStyleSheetId:v40];
}

- (void)webSocketCreatedWithRequestId:(id)a3 url:(id)a4
{
  v6 = (*(self->_controller->var0 + 4))(self->_controller, a2);
  v7 = v6;
  v8 = MEMORY[0x277CBE660];
  if (!a3)
  {
    v6 = [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"required parameter '%@' cannot be nil", @"requestId"}];
  }

  if (!a4)
  {
    v6 = [MEMORY[0x277CBEAD8] raise:*v8 format:{@"required parameter '%@' cannot be nil", @"url"}];
  }

  WTF::JSONImpl::Object::create(&v28, v6);
  v9 = v28;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v27 = v29[0];
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v26 = v29[0];
  WTF::JSONImpl::ObjectBase::setString(v9, &v27, &v26);
  v10 = ___ZN9Inspector33ObjCInspectorCSSBackendDispatcher17getStyleSheetTextElRKN3WTF6StringE_block_invoke_2_cold_1(&v26);
  WTF::JSONImpl::Object::create(&v27, v10);
  v11 = v27;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v25 = v29[0];
  MEMORY[0x2743DB520](&v24, a3);
  WTF::JSONImpl::ObjectBase::setString(v11, &v25, &v24);
  ___ZN9Inspector33ObjCInspectorCSSBackendDispatcher17getStyleSheetTextElRKN3WTF6StringE_block_invoke_2_cold_1(&v24);
  v12 = v27;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v25 = v29[0];
  MEMORY[0x2743DB520](&v23, a4);
  WTF::JSONImpl::ObjectBase::setString(v12, &v25, &v23);
  ___ZN9Inspector33ObjCInspectorCSSBackendDispatcher17getStyleSheetTextElRKN3WTF6StringE_block_invoke_2_cold_1(&v23);
  v13 = v28;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v25 = v29[0];
  v14 = v27;
  v27 = 0;
  v22 = v14;
  WTF::HashMap<WTF::String,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::inlineSet<WTF::String const&,WTF::Ref<WTF::JSONImpl::ObjectBase,WTF::RawPtrTraits<WTF::JSONImpl::ObjectBase>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::ObjectBase>>>(v13 + 2, &v25, &v22, v29);
  if (v30 == 1)
  {
    v16 = *(v13 + 9);
    if (v16 == *(v13 + 8))
    {
      WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WTF::String const&>(v13 + 24, &v25);
    }

    else
    {
      v17 = *(v13 + 3);
      v18 = v25;
      if (v25)
      {
        atomic_fetch_add_explicit(v25, 2u, memory_order_relaxed);
      }

      v19 = *(v13 + 9);
      *(v17 + 8 * v16) = v18;
      *(v13 + 9) = v19 + 1;
    }
  }

  v20 = v22;
  v22 = 0;
  if (v20)
  {
    Inspector::toJSONObjectArray(v20);
  }

  v21 = v25;
  v25 = 0;
  if (v21 && atomic_fetch_add_explicit(v21, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v21, v15);
  }

  WTF::JSONImpl::Value::toJSONString(v29, v28);
  Inspector::FrontendRouter::sendEvent(v7, v29);
  [RWIProtocolCSSDomainEventDispatcher styleSheetChangedWithStyleSheetId:v29];
}

- (void)webSocketClosedWithRequestId:(id)a3 timestamp:(double)a4
{
  v6 = (*(self->_controller->var0 + 4))(self->_controller, a2);
  v7 = v6;
  if (!a3)
  {
    v6 = [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"required parameter '%@' cannot be nil", @"requestId"}];
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

- (void)webSocketFrameReceivedWithRequestId:(id)a3 timestamp:(double)a4 response:(id)a5
{
  v8 = (*(self->_controller->var0 + 4))(self->_controller, a2);
  v9 = v8;
  v10 = MEMORY[0x277CBE660];
  if (!a3)
  {
    v8 = [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"required parameter '%@' cannot be nil", @"requestId"}];
  }

  if (!a5)
  {
    v8 = [MEMORY[0x277CBEAD8] raise:*v10 format:{@"required parameter '%@' cannot be nil", @"response"}];
  }

  WTF::JSONImpl::Object::create(&v39, v8);
  v11 = v39;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v38 = v40[0];
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v37 = v40[0];
  WTF::JSONImpl::ObjectBase::setString(v11, &v38, &v37);
  v12 = ___ZN9Inspector33ObjCInspectorCSSBackendDispatcher17getStyleSheetTextElRKN3WTF6StringE_block_invoke_2_cold_1(&v37);
  WTF::JSONImpl::Object::create(&v38, v12);
  v13 = v38;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v36 = v40[0];
  MEMORY[0x2743DB520](&v35, a3);
  WTF::JSONImpl::ObjectBase::setString(v13, &v36, &v35);
  ___ZN9Inspector33ObjCInspectorCSSBackendDispatcher17getStyleSheetTextElRKN3WTF6StringE_block_invoke_2_cold_1(&v35);
  v14 = v38;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v36 = v40[0];
  WTF::JSONImpl::ObjectBase::setDouble(v14, &v36, a4);
  Inspector::ObjCInspectorCSSBackendDispatcher::setLayoutContextTypeChangedMode(&v36);
  v15 = v38;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v36 = v40[0];
  if (a5)
  {
    [a5 toJSONObject];
    v16 = v33;
  }

  else
  {
    v16 = 0;
  }

  v34 = v16;
  WTF::HashMap<WTF::String,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::inlineSet<WTF::String const&,WTF::Ref<WTF::JSONImpl::ObjectBase,WTF::RawPtrTraits<WTF::JSONImpl::ObjectBase>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::ObjectBase>>>((v15 + 16), &v36, &v34, v40);
  if (v41 == 1)
  {
    v18 = *(v15 + 36);
    if (v18 == *(v15 + 32))
    {
      WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WTF::String const&>(v15 + 24, &v36);
    }

    else
    {
      v19 = *(v15 + 24);
      v20 = v36;
      if (v36)
      {
        atomic_fetch_add_explicit(v36, 2u, memory_order_relaxed);
      }

      v21 = *(v15 + 36);
      *(v19 + 8 * v18) = v20;
      *(v15 + 36) = v21 + 1;
    }
  }

  v22 = v34;
  v34 = 0;
  if (v22)
  {
    Inspector::toJSONObjectArray(v22);
  }

  v23 = v36;
  v36 = 0;
  if (v23 && atomic_fetch_add_explicit(v23, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v23, v17);
  }

  v24 = v39;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v36 = v40[0];
  v25 = v38;
  v38 = 0;
  v34 = v25;
  WTF::HashMap<WTF::String,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::inlineSet<WTF::String const&,WTF::Ref<WTF::JSONImpl::ObjectBase,WTF::RawPtrTraits<WTF::JSONImpl::ObjectBase>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::ObjectBase>>>(v24 + 2, &v36, &v34, v40);
  if (v41 == 1)
  {
    v27 = *(v24 + 9);
    if (v27 == *(v24 + 8))
    {
      WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WTF::String const&>(v24 + 24, &v36);
    }

    else
    {
      v28 = *(v24 + 3);
      v29 = v36;
      if (v36)
      {
        atomic_fetch_add_explicit(v36, 2u, memory_order_relaxed);
      }

      v30 = *(v24 + 9);
      *(v28 + 8 * v27) = v29;
      *(v24 + 9) = v30 + 1;
    }
  }

  v31 = v34;
  v34 = 0;
  if (v31)
  {
    Inspector::toJSONObjectArray(v31);
  }

  v32 = v36;
  v36 = 0;
  if (v32 && atomic_fetch_add_explicit(v32, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v32, v26);
  }

  WTF::JSONImpl::Value::toJSONString(v40, v39);
  Inspector::FrontendRouter::sendEvent(v9, v40);
  [RWIProtocolCSSDomainEventDispatcher styleSheetChangedWithStyleSheetId:v40];
}

- (void)webSocketFrameErrorWithRequestId:(id)a3 timestamp:(double)a4 errorMessage:(id)a5
{
  v8 = (*(self->_controller->var0 + 4))(self->_controller, a2);
  v9 = v8;
  v10 = MEMORY[0x277CBE660];
  if (!a3)
  {
    v8 = [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"required parameter '%@' cannot be nil", @"requestId"}];
  }

  if (!a5)
  {
    v8 = [MEMORY[0x277CBEAD8] raise:*v10 format:{@"required parameter '%@' cannot be nil", @"errorMessage"}];
  }

  WTF::JSONImpl::Object::create(&v31, v8);
  v11 = v31;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v30 = v32[0];
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v29 = v32[0];
  WTF::JSONImpl::ObjectBase::setString(v11, &v30, &v29);
  v12 = ___ZN9Inspector33ObjCInspectorCSSBackendDispatcher17getStyleSheetTextElRKN3WTF6StringE_block_invoke_2_cold_1(&v29);
  WTF::JSONImpl::Object::create(&v30, v12);
  v13 = v30;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v28 = v32[0];
  MEMORY[0x2743DB520](&v27, a3);
  WTF::JSONImpl::ObjectBase::setString(v13, &v28, &v27);
  ___ZN9Inspector33ObjCInspectorCSSBackendDispatcher17getStyleSheetTextElRKN3WTF6StringE_block_invoke_2_cold_1(&v27);
  v14 = v30;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v28 = v32[0];
  WTF::JSONImpl::ObjectBase::setDouble(v14, &v28, a4);
  Inspector::ObjCInspectorCSSBackendDispatcher::setLayoutContextTypeChangedMode(&v28);
  v15 = v30;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v28 = v32[0];
  MEMORY[0x2743DB520](&v26, a5);
  WTF::JSONImpl::ObjectBase::setString(v15, &v28, &v26);
  ___ZN9Inspector33ObjCInspectorCSSBackendDispatcher17getStyleSheetTextElRKN3WTF6StringE_block_invoke_2_cold_1(&v26);
  v16 = v31;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v28 = v32[0];
  v17 = v30;
  v30 = 0;
  v25 = v17;
  WTF::HashMap<WTF::String,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::inlineSet<WTF::String const&,WTF::Ref<WTF::JSONImpl::ObjectBase,WTF::RawPtrTraits<WTF::JSONImpl::ObjectBase>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::ObjectBase>>>(v16 + 2, &v28, &v25, v32);
  if (v33 == 1)
  {
    v19 = *(v16 + 9);
    if (v19 == *(v16 + 8))
    {
      WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WTF::String const&>(v16 + 24, &v28);
    }

    else
    {
      v20 = *(v16 + 3);
      v21 = v28;
      if (v28)
      {
        atomic_fetch_add_explicit(v28, 2u, memory_order_relaxed);
      }

      v22 = *(v16 + 9);
      *(v20 + 8 * v19) = v21;
      *(v16 + 9) = v22 + 1;
    }
  }

  v23 = v25;
  v25 = 0;
  if (v23)
  {
    Inspector::toJSONObjectArray(v23);
  }

  v24 = v28;
  v28 = 0;
  if (v24 && atomic_fetch_add_explicit(v24, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v24, v18);
  }

  WTF::JSONImpl::Value::toJSONString(v32, v31);
  Inspector::FrontendRouter::sendEvent(v9, v32);
  [RWIProtocolCSSDomainEventDispatcher styleSheetChangedWithStyleSheetId:v32];
}

- (void)webSocketFrameSentWithRequestId:(id)a3 timestamp:(double)a4 response:(id)a5
{
  v8 = (*(self->_controller->var0 + 4))(self->_controller, a2);
  v9 = v8;
  v10 = MEMORY[0x277CBE660];
  if (!a3)
  {
    v8 = [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"required parameter '%@' cannot be nil", @"requestId"}];
  }

  if (!a5)
  {
    v8 = [MEMORY[0x277CBEAD8] raise:*v10 format:{@"required parameter '%@' cannot be nil", @"response"}];
  }

  WTF::JSONImpl::Object::create(&v39, v8);
  v11 = v39;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v38 = v40[0];
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v37 = v40[0];
  WTF::JSONImpl::ObjectBase::setString(v11, &v38, &v37);
  v12 = ___ZN9Inspector33ObjCInspectorCSSBackendDispatcher17getStyleSheetTextElRKN3WTF6StringE_block_invoke_2_cold_1(&v37);
  WTF::JSONImpl::Object::create(&v38, v12);
  v13 = v38;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v36 = v40[0];
  MEMORY[0x2743DB520](&v35, a3);
  WTF::JSONImpl::ObjectBase::setString(v13, &v36, &v35);
  ___ZN9Inspector33ObjCInspectorCSSBackendDispatcher17getStyleSheetTextElRKN3WTF6StringE_block_invoke_2_cold_1(&v35);
  v14 = v38;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v36 = v40[0];
  WTF::JSONImpl::ObjectBase::setDouble(v14, &v36, a4);
  Inspector::ObjCInspectorCSSBackendDispatcher::setLayoutContextTypeChangedMode(&v36);
  v15 = v38;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v36 = v40[0];
  if (a5)
  {
    [a5 toJSONObject];
    v16 = v33;
  }

  else
  {
    v16 = 0;
  }

  v34 = v16;
  WTF::HashMap<WTF::String,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::inlineSet<WTF::String const&,WTF::Ref<WTF::JSONImpl::ObjectBase,WTF::RawPtrTraits<WTF::JSONImpl::ObjectBase>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::ObjectBase>>>((v15 + 16), &v36, &v34, v40);
  if (v41 == 1)
  {
    v18 = *(v15 + 36);
    if (v18 == *(v15 + 32))
    {
      WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WTF::String const&>(v15 + 24, &v36);
    }

    else
    {
      v19 = *(v15 + 24);
      v20 = v36;
      if (v36)
      {
        atomic_fetch_add_explicit(v36, 2u, memory_order_relaxed);
      }

      v21 = *(v15 + 36);
      *(v19 + 8 * v18) = v20;
      *(v15 + 36) = v21 + 1;
    }
  }

  v22 = v34;
  v34 = 0;
  if (v22)
  {
    Inspector::toJSONObjectArray(v22);
  }

  v23 = v36;
  v36 = 0;
  if (v23 && atomic_fetch_add_explicit(v23, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v23, v17);
  }

  v24 = v39;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v36 = v40[0];
  v25 = v38;
  v38 = 0;
  v34 = v25;
  WTF::HashMap<WTF::String,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::inlineSet<WTF::String const&,WTF::Ref<WTF::JSONImpl::ObjectBase,WTF::RawPtrTraits<WTF::JSONImpl::ObjectBase>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::ObjectBase>>>(v24 + 2, &v36, &v34, v40);
  if (v41 == 1)
  {
    v27 = *(v24 + 9);
    if (v27 == *(v24 + 8))
    {
      WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WTF::String const&>(v24 + 24, &v36);
    }

    else
    {
      v28 = *(v24 + 3);
      v29 = v36;
      if (v36)
      {
        atomic_fetch_add_explicit(v36, 2u, memory_order_relaxed);
      }

      v30 = *(v24 + 9);
      *(v28 + 8 * v27) = v29;
      *(v24 + 9) = v30 + 1;
    }
  }

  v31 = v34;
  v34 = 0;
  if (v31)
  {
    Inspector::toJSONObjectArray(v31);
  }

  v32 = v36;
  v36 = 0;
  if (v32 && atomic_fetch_add_explicit(v32, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v32, v26);
  }

  WTF::JSONImpl::Value::toJSONString(v40, v39);
  Inspector::FrontendRouter::sendEvent(v9, v40);
  [RWIProtocolCSSDomainEventDispatcher styleSheetChangedWithStyleSheetId:v40];
}

- (BOOL)loadingFailedWithRequestId:(uint64_t *)a1 timestamp:errorText:canceled:.cold.4(uint64_t *a1)
{
  v2 = OUTLINED_FUNCTION_0_5(a1);
  if (v2)
  {
    v3 = OUTLINED_FUNCTION_1_1(v2);
    if (v5)
    {
      WTF::StringImpl::destroy(v3, v4);
    }
  }

  v6 = OUTLINED_FUNCTION_5_0();
  if (v6)
  {
    v7 = OUTLINED_FUNCTION_1_1(v6);
    if (v5)
    {
      WTF::StringImpl::destroy(v7, v8);
    }
  }

  return v1 == 0;
}

@end