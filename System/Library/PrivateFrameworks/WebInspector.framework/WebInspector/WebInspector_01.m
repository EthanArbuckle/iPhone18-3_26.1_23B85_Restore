void sub_273CB08A0(_Unwind_Exception *exception_object, WTF::StringImpl *a2)
{
  v4 = *(v2 - 40);
  *(v2 - 40) = 0;
  if (v4)
  {
    if (atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v4, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t ___ZN9Inspector33ObjCInspectorDOMBackendDispatcher13hideHighlightEl_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(*(a1 + 32) + 8);
  MEMORY[0x2743DB520](&v4);
  Inspector::BackendDispatcher::reportProtocolError();
  return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v4);
}

void sub_273CB092C(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10)
{
  if (a10)
  {
    if (atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a10, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

_DWORD *___ZN9Inspector33ObjCInspectorDOMBackendDispatcher13hideHighlightEl_block_invoke_2(WTF::JSONImpl::Object *a1)
{
  v2 = *(a1 + 4);
  WTF::JSONImpl::Object::create(&v6, a1);
  v3 = *(v2 + 8);
  v4 = *(a1 + 5);
  Inspector::BackendDispatcher::sendResponse();
  result = v6;
  v6 = 0;
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

void sub_273CB09C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, _DWORD *a10)
{
  if (a10)
  {
    Inspector::toJSONObjectArray(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t Inspector::ObjCInspectorDOMBackendDispatcher::highlightFrame(uint64_t a1, uint64_t a2, atomic_uint **a3, RWIProtocolDOMRGBAColor **a4, void *a5)
{
  v10 = *(a1 + 16);
  if (objc_opt_respondsToSelector())
  {
    v34[0] = MEMORY[0x277D85DD0];
    v34[1] = 3221225472;
    v34[2] = ___ZN9Inspector33ObjCInspectorDOMBackendDispatcher14highlightFrameElRKN3WTF6StringEONS1_6RefPtrINS1_8JSONImpl6ObjectENS1_12RawPtrTraitsIS7_EENS1_21DefaultRefDerefTraitsIS7_EEEESD__block_invoke;
    v34[3] = &__block_descriptor_48_e18_v16__0__NSString_8l;
    v34[4] = a1;
    v34[5] = a2;
    v33[0] = MEMORY[0x277D85DD0];
    v33[1] = 3221225472;
    v33[2] = ___ZN9Inspector33ObjCInspectorDOMBackendDispatcher14highlightFrameElRKN3WTF6StringEONS1_6RefPtrINS1_8JSONImpl6ObjectENS1_12RawPtrTraitsIS7_EENS1_21DefaultRefDerefTraitsIS7_EEEESD__block_invoke_2;
    v33[3] = &__block_descriptor_48_e5_v8__0l;
    v33[4] = a1;
    v33[5] = a2;
    v11 = *a3;
    if (*a3)
    {
      atomic_fetch_add_explicit(v11, 2u, memory_order_relaxed);
      MEMORY[0x2743DB4B0](&v35, v11);
      if (atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v11, v12);
      }
    }

    else
    {
      v35 = &stru_2882B1C88;
      v30 = &stru_2882B1C88;
    }

    v13 = v35;
    v35 = 0;
    if (v13)
    {
      v14 = v13;
      v15 = v35;
      v35 = 0;
      if (v15)
      {
      }
    }

    v35 = 0;
    if (*a4)
    {
      v16 = [RWIProtocolDOMRGBAColor alloc];
      v32 = *a4;
      *a4 = 0;
      v17 = [(RWIProtocolJSONObject *)v16 initWithJSONObject:&v32];
      v18 = v17;
      if (v17)
      {
        v19 = v17;
      }

      v35 = v18;
      v20 = v32;
      v32 = 0;
      if (v20)
      {
        if (LODWORD(v20->super.super.isa) == 1)
        {
          WTF::JSONImpl::Value::operator delete();
        }

        else
        {
          --LODWORD(v20->super.super.isa);
        }
      }
    }

    v32 = 0;
    if (*a5)
    {
      v21 = [RWIProtocolDOMRGBAColor alloc];
      v31 = *a5;
      *a5 = 0;
      v22 = [(RWIProtocolJSONObject *)v21 initWithJSONObject:&v31];
      v23 = v22;
      if (v22)
      {
        v24 = v22;
      }

      v25 = v31;
      v31 = 0;
      v32 = v23;
      if (v25)
      {
        if (*v25 == 1)
        {
          WTF::JSONImpl::Value::operator delete();
        }

        else
        {
          --*v25;
        }
      }

      if (*a5)
      {
        v26 = &v32;
      }

      else
      {
        v26 = 0;
      }
    }

    else
    {
      v26 = 0;
    }

    if (*a4)
    {
      v27 = &v35;
    }

    else
    {
      v27 = 0;
    }

    return [*(a1 + 16) highlightFrameWithErrorCallback:v34 successCallback:v33 frameId:v13 contentColor:v27 contentOutlineColor:v26];
  }

  else
  {
    v29 = *(a1 + 8);
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    Inspector::BackendDispatcher::reportProtocolError();
    return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v35);
  }
}

void sub_273CB0C6C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, _DWORD *a10, uint64_t a11)
{
  if (a10)
  {
    Inspector::toJSONObjectArray(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ___ZN9Inspector33ObjCInspectorDOMBackendDispatcher14highlightFrameElRKN3WTF6StringEONS1_6RefPtrINS1_8JSONImpl6ObjectENS1_12RawPtrTraitsIS7_EENS1_21DefaultRefDerefTraitsIS7_EEEESD__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(*(a1 + 32) + 8);
  MEMORY[0x2743DB520](&v4);
  Inspector::BackendDispatcher::reportProtocolError();
  return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v4);
}

void sub_273CB0D64(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10)
{
  if (a10)
  {
    if (atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a10, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

_DWORD *___ZN9Inspector33ObjCInspectorDOMBackendDispatcher14highlightFrameElRKN3WTF6StringEONS1_6RefPtrINS1_8JSONImpl6ObjectENS1_12RawPtrTraitsIS7_EENS1_21DefaultRefDerefTraitsIS7_EEEESD__block_invoke_2(WTF::JSONImpl::Object *a1)
{
  v2 = *(a1 + 4);
  WTF::JSONImpl::Object::create(&v6, a1);
  v3 = *(v2 + 8);
  v4 = *(a1 + 5);
  Inspector::BackendDispatcher::sendResponse();
  result = v6;
  v6 = 0;
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

void sub_273CB0DFC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, _DWORD *a10)
{
  if (a10)
  {
    Inspector::toJSONObjectArray(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t Inspector::ObjCInspectorDOMBackendDispatcher::showGridOverlay(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a1 + 16);
  if (objc_opt_respondsToSelector())
  {
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = ___ZN9Inspector33ObjCInspectorDOMBackendDispatcher15showGridOverlayEliON3WTF3RefINS1_8JSONImpl6ObjectENS1_12RawPtrTraitsIS4_EENS1_21DefaultRefDerefTraitsIS4_EEEE_block_invoke;
    v15[3] = &__block_descriptor_48_e18_v16__0__NSString_8l;
    v15[4] = a1;
    v15[5] = a2;
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = ___ZN9Inspector33ObjCInspectorDOMBackendDispatcher15showGridOverlayEliON3WTF3RefINS1_8JSONImpl6ObjectENS1_12RawPtrTraitsIS4_EENS1_21DefaultRefDerefTraitsIS4_EEEE_block_invoke_2;
    v14[3] = &__block_descriptor_48_e5_v8__0l;
    v14[4] = a1;
    v14[5] = a2;
    v9 = [(RWIProtocolJSONObject *)[RWIProtocolDOMGridOverlayConfig alloc] initWithJSONObject:a4];
    v10 = v9;
    if (v9)
    {
      v11 = v9;
    }

    return [*(a1 + 16) showGridOverlayWithErrorCallback:v15 successCallback:v14 nodeId:a3 gridOverlayConfig:v10];
  }

  else
  {
    v13 = *(a1 + 8);
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    Inspector::BackendDispatcher::reportProtocolError();
    return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v16);
  }
}

void sub_273CB0F6C(_Unwind_Exception *exception_object, WTF::StringImpl *a2)
{
  v4 = *(v2 - 40);
  *(v2 - 40) = 0;
  if (v4)
  {
    if (atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v4, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t ___ZN9Inspector33ObjCInspectorDOMBackendDispatcher15showGridOverlayEliON3WTF3RefINS1_8JSONImpl6ObjectENS1_12RawPtrTraitsIS4_EENS1_21DefaultRefDerefTraitsIS4_EEEE_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(*(a1 + 32) + 8);
  MEMORY[0x2743DB520](&v4);
  Inspector::BackendDispatcher::reportProtocolError();
  return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v4);
}

void sub_273CB0FF8(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10)
{
  if (a10)
  {
    if (atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a10, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

_DWORD *___ZN9Inspector33ObjCInspectorDOMBackendDispatcher15showGridOverlayEliON3WTF3RefINS1_8JSONImpl6ObjectENS1_12RawPtrTraitsIS4_EENS1_21DefaultRefDerefTraitsIS4_EEEE_block_invoke_2(WTF::JSONImpl::Object *a1)
{
  v2 = *(a1 + 4);
  WTF::JSONImpl::Object::create(&v6, a1);
  v3 = *(v2 + 8);
  v4 = *(a1 + 5);
  Inspector::BackendDispatcher::sendResponse();
  result = v6;
  v6 = 0;
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

void sub_273CB1090(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, _DWORD *a10)
{
  if (a10)
  {
    Inspector::toJSONObjectArray(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t Inspector::ObjCInspectorDOMBackendDispatcher::hideGridOverlay(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 16);
  if (objc_opt_respondsToSelector())
  {
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = ___ZN9Inspector33ObjCInspectorDOMBackendDispatcher15hideGridOverlayElONSt3__18optionalIiEE_block_invoke;
    v11[3] = &__block_descriptor_48_e18_v16__0__NSString_8l;
    v11[4] = a1;
    v11[5] = a2;
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = ___ZN9Inspector33ObjCInspectorDOMBackendDispatcher15hideGridOverlayElONSt3__18optionalIiEE_block_invoke_2;
    v10[3] = &__block_descriptor_48_e5_v8__0l;
    v10[4] = a1;
    v10[5] = a2;
    LODWORD(v12) = 0;
    if (*(a3 + 4) == 1)
    {
      LODWORD(v12) = *a3;
      v7 = &v12;
    }

    else
    {
      v7 = 0;
    }

    return [*(a1 + 16) hideGridOverlayWithErrorCallback:v11 successCallback:v10 nodeId:v7];
  }

  else
  {
    v9 = *(a1 + 8);
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    Inspector::BackendDispatcher::reportProtocolError();
    return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v12);
  }
}

void sub_273CB11F4(_Unwind_Exception *exception_object, WTF::StringImpl *a2)
{
  v4 = *(v2 - 40);
  *(v2 - 40) = 0;
  if (v4)
  {
    if (atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v4, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t ___ZN9Inspector33ObjCInspectorDOMBackendDispatcher15hideGridOverlayElONSt3__18optionalIiEE_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(*(a1 + 32) + 8);
  MEMORY[0x2743DB520](&v4);
  Inspector::BackendDispatcher::reportProtocolError();
  return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v4);
}

void sub_273CB1280(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10)
{
  if (a10)
  {
    if (atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a10, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

_DWORD *___ZN9Inspector33ObjCInspectorDOMBackendDispatcher15hideGridOverlayElONSt3__18optionalIiEE_block_invoke_2(WTF::JSONImpl::Object *a1)
{
  v2 = *(a1 + 4);
  WTF::JSONImpl::Object::create(&v6, a1);
  v3 = *(v2 + 8);
  v4 = *(a1 + 5);
  Inspector::BackendDispatcher::sendResponse();
  result = v6;
  v6 = 0;
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

void sub_273CB1318(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, _DWORD *a10)
{
  if (a10)
  {
    Inspector::toJSONObjectArray(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t Inspector::ObjCInspectorDOMBackendDispatcher::showFlexOverlay(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a1 + 16);
  if (objc_opt_respondsToSelector())
  {
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = ___ZN9Inspector33ObjCInspectorDOMBackendDispatcher15showFlexOverlayEliON3WTF3RefINS1_8JSONImpl6ObjectENS1_12RawPtrTraitsIS4_EENS1_21DefaultRefDerefTraitsIS4_EEEE_block_invoke;
    v15[3] = &__block_descriptor_48_e18_v16__0__NSString_8l;
    v15[4] = a1;
    v15[5] = a2;
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = ___ZN9Inspector33ObjCInspectorDOMBackendDispatcher15showFlexOverlayEliON3WTF3RefINS1_8JSONImpl6ObjectENS1_12RawPtrTraitsIS4_EENS1_21DefaultRefDerefTraitsIS4_EEEE_block_invoke_2;
    v14[3] = &__block_descriptor_48_e5_v8__0l;
    v14[4] = a1;
    v14[5] = a2;
    v9 = [(RWIProtocolJSONObject *)[RWIProtocolDOMFlexOverlayConfig alloc] initWithJSONObject:a4];
    v10 = v9;
    if (v9)
    {
      v11 = v9;
    }

    return [*(a1 + 16) showFlexOverlayWithErrorCallback:v15 successCallback:v14 nodeId:a3 flexOverlayConfig:v10];
  }

  else
  {
    v13 = *(a1 + 8);
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    Inspector::BackendDispatcher::reportProtocolError();
    return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v16);
  }
}

void sub_273CB1488(_Unwind_Exception *exception_object, WTF::StringImpl *a2)
{
  v4 = *(v2 - 40);
  *(v2 - 40) = 0;
  if (v4)
  {
    if (atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v4, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t ___ZN9Inspector33ObjCInspectorDOMBackendDispatcher15showFlexOverlayEliON3WTF3RefINS1_8JSONImpl6ObjectENS1_12RawPtrTraitsIS4_EENS1_21DefaultRefDerefTraitsIS4_EEEE_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(*(a1 + 32) + 8);
  MEMORY[0x2743DB520](&v4);
  Inspector::BackendDispatcher::reportProtocolError();
  return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v4);
}

void sub_273CB1514(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10)
{
  if (a10)
  {
    if (atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a10, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

_DWORD *___ZN9Inspector33ObjCInspectorDOMBackendDispatcher15showFlexOverlayEliON3WTF3RefINS1_8JSONImpl6ObjectENS1_12RawPtrTraitsIS4_EENS1_21DefaultRefDerefTraitsIS4_EEEE_block_invoke_2(WTF::JSONImpl::Object *a1)
{
  v2 = *(a1 + 4);
  WTF::JSONImpl::Object::create(&v6, a1);
  v3 = *(v2 + 8);
  v4 = *(a1 + 5);
  Inspector::BackendDispatcher::sendResponse();
  result = v6;
  v6 = 0;
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

void sub_273CB15AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, _DWORD *a10)
{
  if (a10)
  {
    Inspector::toJSONObjectArray(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t Inspector::ObjCInspectorDOMBackendDispatcher::hideFlexOverlay(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 16);
  if (objc_opt_respondsToSelector())
  {
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = ___ZN9Inspector33ObjCInspectorDOMBackendDispatcher15hideFlexOverlayElONSt3__18optionalIiEE_block_invoke;
    v11[3] = &__block_descriptor_48_e18_v16__0__NSString_8l;
    v11[4] = a1;
    v11[5] = a2;
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = ___ZN9Inspector33ObjCInspectorDOMBackendDispatcher15hideFlexOverlayElONSt3__18optionalIiEE_block_invoke_2;
    v10[3] = &__block_descriptor_48_e5_v8__0l;
    v10[4] = a1;
    v10[5] = a2;
    LODWORD(v12) = 0;
    if (*(a3 + 4) == 1)
    {
      LODWORD(v12) = *a3;
      v7 = &v12;
    }

    else
    {
      v7 = 0;
    }

    return [*(a1 + 16) hideFlexOverlayWithErrorCallback:v11 successCallback:v10 nodeId:v7];
  }

  else
  {
    v9 = *(a1 + 8);
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    Inspector::BackendDispatcher::reportProtocolError();
    return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v12);
  }
}

void sub_273CB1710(_Unwind_Exception *exception_object, WTF::StringImpl *a2)
{
  v4 = *(v2 - 40);
  *(v2 - 40) = 0;
  if (v4)
  {
    if (atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v4, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t ___ZN9Inspector33ObjCInspectorDOMBackendDispatcher15hideFlexOverlayElONSt3__18optionalIiEE_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(*(a1 + 32) + 8);
  MEMORY[0x2743DB520](&v4);
  Inspector::BackendDispatcher::reportProtocolError();
  return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v4);
}

void sub_273CB179C(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10)
{
  if (a10)
  {
    if (atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a10, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

_DWORD *___ZN9Inspector33ObjCInspectorDOMBackendDispatcher15hideFlexOverlayElONSt3__18optionalIiEE_block_invoke_2(WTF::JSONImpl::Object *a1)
{
  v2 = *(a1 + 4);
  WTF::JSONImpl::Object::create(&v6, a1);
  v3 = *(v2 + 8);
  v4 = *(a1 + 5);
  Inspector::BackendDispatcher::sendResponse();
  result = v6;
  v6 = 0;
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

void sub_273CB1834(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, _DWORD *a10)
{
  if (a10)
  {
    Inspector::toJSONObjectArray(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t Inspector::ObjCInspectorDOMBackendDispatcher::pushNodeByPathToFrontend(Inspector::ObjCInspectorDOMBackendDispatcher *this, uint64_t a2, atomic_uint **a3)
{
  v6 = *(this + 2);
  if (objc_opt_respondsToSelector())
  {
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = ___ZN9Inspector33ObjCInspectorDOMBackendDispatcher24pushNodeByPathToFrontendElRKN3WTF6StringE_block_invoke;
    v16[3] = &__block_descriptor_48_e18_v16__0__NSString_8l;
    v16[4] = this;
    v16[5] = a2;
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = ___ZN9Inspector33ObjCInspectorDOMBackendDispatcher24pushNodeByPathToFrontendElRKN3WTF6StringE_block_invoke_2;
    v15[3] = &__block_descriptor_48_e8_v12__0i8l;
    v15[4] = this;
    v15[5] = a2;
    v7 = *a3;
    if (*a3)
    {
      atomic_fetch_add_explicit(v7, 2u, memory_order_relaxed);
      MEMORY[0x2743DB4B0](&v17, v7);
      if (atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v7, v8);
      }
    }

    else
    {
      v17 = &stru_2882B1C88;
      v14 = &stru_2882B1C88;
    }

    v9 = v17;
    v17 = 0;
    if (v9)
    {
      v10 = v9;
      v11 = v17;
      v17 = 0;
      if (v11)
      {
      }
    }

    return [*(this + 2) pushNodeByPathToFrontendWithErrorCallback:v16 successCallback:v15 path:v9];
  }

  else
  {
    v13 = *(this + 1);
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    Inspector::BackendDispatcher::reportProtocolError();
    return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v17);
  }
}

void sub_273CB19E4(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 40);
  *(v1 - 40) = 0;
  if (v3)
  {
  }

  _Unwind_Resume(exception_object);
}

uint64_t ___ZN9Inspector33ObjCInspectorDOMBackendDispatcher24pushNodeByPathToFrontendElRKN3WTF6StringE_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(*(a1 + 32) + 8);
  MEMORY[0x2743DB520](&v4);
  Inspector::BackendDispatcher::reportProtocolError();
  return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v4);
}

void sub_273CB1AA4(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10)
{
  if (a10)
  {
    if (atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a10, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

_DWORD *___ZN9Inspector33ObjCInspectorDOMBackendDispatcher24pushNodeByPathToFrontendElRKN3WTF6StringE_block_invoke_2(WTF::JSONImpl::Object *a1, WTF::JSONImpl::Value *a2)
{
  v4 = *(a1 + 4);
  WTF::JSONImpl::Object::create(v10, a1);
  v5 = v10[0];
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v9 = v10[1];
  WTF::JSONImpl::ObjectBase::setInteger(v5, &v9, a2);
  Inspector::ObjCInspectorCSSBackendDispatcher::setLayoutContextTypeChangedMode(&v9);
  v6 = *(v4 + 8);
  v7 = *(a1 + 5);
  Inspector::BackendDispatcher::sendResponse();
  return ___ZN9Inspector33ObjCInspectorCSSBackendDispatcher23getComputedStyleForNodeEli_block_invoke_2_cold_3(v10);
}

void sub_273CB1B64(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10, _DWORD *a11)
{
  if (a11)
  {
    Inspector::toJSONObjectArray(a11);
  }

  _Unwind_Resume(exception_object);
}

uint64_t Inspector::ObjCInspectorDOMBackendDispatcher::resolveNode(Inspector::ObjCInspectorDOMBackendDispatcher *this, uint64_t a2, uint64_t a3, atomic_uint **a4)
{
  v8 = *(this + 2);
  if (objc_opt_respondsToSelector())
  {
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = ___ZN9Inspector33ObjCInspectorDOMBackendDispatcher11resolveNodeEliRKN3WTF6StringE_block_invoke;
    v19[3] = &__block_descriptor_48_e18_v16__0__NSString_8l;
    v19[4] = this;
    v19[5] = a2;
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = ___ZN9Inspector33ObjCInspectorDOMBackendDispatcher11resolveNodeEliRKN3WTF6StringE_block_invoke_2;
    v18[3] = &__block_descriptor_48_e40_v16__0__RWIProtocolRuntimeRemoteObject_8l;
    v18[4] = this;
    v18[5] = a2;
    v20 = 0;
    v9 = *a4;
    if (*a4)
    {
      atomic_fetch_add_explicit(v9, 2u, memory_order_relaxed);
      MEMORY[0x2743DB4B0](&v17, v9);
      if (atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v9, v10);
      }

      v11 = v17;
      v17 = 0;
      if (v11)
      {
        v12 = v11;
        v13 = v17;
        v20 = v11;
        v17 = 0;
        if (v13)
        {
        }
      }

      else
      {
        v20 = 0;
      }

      if (*a4)
      {
        v14 = &v20;
      }

      else
      {
        v14 = 0;
      }
    }

    else
    {
      v14 = 0;
    }

    return [*(this + 2) resolveNodeWithErrorCallback:v19 successCallback:v18 nodeId:a3 objectGroup:{v14, v17}];
  }

  else
  {
    v16 = *(this + 1);
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    Inspector::BackendDispatcher::reportProtocolError();
    return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v20);
  }
}

void sub_273CB1D58(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9)
{
  if (a9)
  {
  }

  _Unwind_Resume(exception_object);
}

uint64_t ___ZN9Inspector33ObjCInspectorDOMBackendDispatcher11resolveNodeEliRKN3WTF6StringE_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(*(a1 + 32) + 8);
  MEMORY[0x2743DB520](&v4);
  Inspector::BackendDispatcher::reportProtocolError();
  return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v4);
}

void sub_273CB1E18(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10)
{
  if (a10)
  {
    if (atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a10, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

_DWORD *___ZN9Inspector33ObjCInspectorDOMBackendDispatcher11resolveNodeEliRKN3WTF6StringE_block_invoke_2(WTF::JSONImpl::Object *a1, void *a2)
{
  v4 = *(a1 + 4);
  WTF::JSONImpl::Object::create(&v20, a1);
  if (!a2)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"required parameter '%@' cannot be nil", @"object"}];
  }

  v5 = v20;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v19 = v21;
  if (a2)
  {
    [a2 toJSONObject];
    v6 = v17;
  }

  else
  {
    v6 = 0;
  }

  v18 = v6;
  WTF::HashMap<WTF::String,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::inlineSet<WTF::String const&,WTF::Ref<WTF::JSONImpl::ObjectBase,WTF::RawPtrTraits<WTF::JSONImpl::ObjectBase>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::ObjectBase>>>(v5 + 2, &v19, &v18, &v21);
  if (v22 == 1)
  {
    v8 = *(v5 + 9);
    if (v8 == *(v5 + 8))
    {
      WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WTF::String const&>((v5 + 3), &v19);
    }

    else
    {
      v9 = v5[3];
      v10 = v19;
      if (v19)
      {
        atomic_fetch_add_explicit(v19, 2u, memory_order_relaxed);
      }

      v11 = *(v5 + 9);
      *(v9 + 8 * v8) = v10;
      *(v5 + 9) = v11 + 1;
    }
  }

  v12 = v18;
  v18 = 0;
  if (v12)
  {
    Inspector::toJSONObjectArray(v12);
  }

  v13 = v19;
  v19 = 0;
  if (v13 && atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v13, v7);
  }

  v14 = *(v4 + 8);
  v15 = *(a1 + 5);
  Inspector::BackendDispatcher::sendResponse();
  return ___ZN9Inspector33ObjCInspectorCSSBackendDispatcher23getComputedStyleForNodeEli_block_invoke_2_cold_3(&v20);
}

void sub_273CB1FCC(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, WTF::StringImpl *a12, _DWORD *a13)
{
  if (a12 && atomic_fetch_add_explicit(a12, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a12, a2);
  }

  if (a13)
  {
    Inspector::toJSONObjectArray(a13);
  }

  _Unwind_Resume(exception_object);
}

uint64_t Inspector::ObjCInspectorDOMBackendDispatcher::getAttributes(Inspector::ObjCInspectorDOMBackendDispatcher *this, uint64_t a2, uint64_t a3)
{
  v6 = *(this + 2);
  if (objc_opt_respondsToSelector())
  {
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = ___ZN9Inspector33ObjCInspectorDOMBackendDispatcher13getAttributesEli_block_invoke;
    v10[3] = &__block_descriptor_48_e18_v16__0__NSString_8l;
    v10[4] = this;
    v10[5] = a2;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = ___ZN9Inspector33ObjCInspectorDOMBackendDispatcher13getAttributesEli_block_invoke_2;
    v9[3] = &__block_descriptor_48_e17_v16__0__NSArray_8l;
    v9[4] = this;
    v9[5] = a2;
    return [*(this + 2) getAttributesWithErrorCallback:v10 successCallback:v9 nodeId:a3];
  }

  else
  {
    v8 = *(this + 1);
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    Inspector::BackendDispatcher::reportProtocolError();
    return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v11);
  }
}

void sub_273CB2178(_Unwind_Exception *exception_object, WTF::StringImpl *a2)
{
  v4 = *(v2 - 40);
  *(v2 - 40) = 0;
  if (v4)
  {
    if (atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v4, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t ___ZN9Inspector33ObjCInspectorDOMBackendDispatcher13getAttributesEli_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(*(a1 + 32) + 8);
  MEMORY[0x2743DB520](&v4);
  Inspector::BackendDispatcher::reportProtocolError();
  return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v4);
}

void sub_273CB2204(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10)
{
  if (a10)
  {
    if (atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a10, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

_DWORD *___ZN9Inspector33ObjCInspectorDOMBackendDispatcher13getAttributesEli_block_invoke_2(WTF::JSONImpl::Object *a1, Inspector *a2)
{
  v4 = *(a1 + 4);
  WTF::JSONImpl::Object::create(&v21, a1);
  if (!a2)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"required parameter '%@' cannot be nil", @"attributes"}];
  }

  v5 = v21;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v20 = v22;
  Inspector::toJSONStringArray(a2, &v18);
  v6 = v18;
  v18 = 0;
  v19 = v6;
  WTF::HashMap<WTF::String,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::inlineSet<WTF::String const&,WTF::Ref<WTF::JSONImpl::ArrayBase,WTF::RawPtrTraits<WTF::JSONImpl::ArrayBase>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::ArrayBase>>>(v5 + 2, &v20, &v19, &v22);
  if (v23 == 1)
  {
    v8 = *(v5 + 9);
    if (v8 == *(v5 + 8))
    {
      WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WTF::String const&>((v5 + 3), &v20);
    }

    else
    {
      v9 = v5[3];
      v10 = v20;
      if (v20)
      {
        atomic_fetch_add_explicit(v20, 2u, memory_order_relaxed);
      }

      v11 = *(v5 + 9);
      *(v9 + 8 * v8) = v10;
      *(v5 + 9) = v11 + 1;
    }
  }

  v12 = v19;
  v19 = 0;
  if (v12)
  {
    Inspector::toJSONObjectArray(v12);
  }

  v13 = v18;
  v18 = 0;
  if (v13)
  {
    if (*v13 == 1)
    {
      WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*v13;
    }
  }

  v14 = v20;
  v20 = 0;
  if (v14 && atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v14, v7);
  }

  v15 = *(v4 + 8);
  v16 = *(a1 + 5);
  Inspector::BackendDispatcher::sendResponse();
  return ___ZN9Inspector33ObjCInspectorCSSBackendDispatcher23getComputedStyleForNodeEli_block_invoke_2_cold_3(&v21);
}

void sub_273CB23AC(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, WTF::StringImpl *a12, _DWORD *a13)
{
  if (a12 && atomic_fetch_add_explicit(a12, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a12, a2);
  }

  if (a13)
  {
    Inspector::toJSONObjectArray(a13);
  }

  _Unwind_Resume(exception_object);
}

uint64_t Inspector::ObjCInspectorDOMBackendDispatcher::moveTo(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *(a1 + 16);
  if (objc_opt_respondsToSelector())
  {
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = ___ZN9Inspector33ObjCInspectorDOMBackendDispatcher6moveToEliiONSt3__18optionalIiEE_block_invoke;
    v15[3] = &__block_descriptor_48_e18_v16__0__NSString_8l;
    v15[4] = a1;
    v15[5] = a2;
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = ___ZN9Inspector33ObjCInspectorDOMBackendDispatcher6moveToEliiONSt3__18optionalIiEE_block_invoke_2;
    v14[3] = &__block_descriptor_48_e8_v12__0i8l;
    v14[4] = a1;
    v14[5] = a2;
    LODWORD(v16) = 0;
    if (*(a5 + 4) == 1)
    {
      LODWORD(v16) = *a5;
      v11 = &v16;
    }

    else
    {
      v11 = 0;
    }

    return [*(a1 + 16) moveToWithErrorCallback:v15 successCallback:v14 nodeId:a3 targetNodeId:a4 insertBeforeNodeId:v11];
  }

  else
  {
    v13 = *(a1 + 8);
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    Inspector::BackendDispatcher::reportProtocolError();
    return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v16);
  }
}

void sub_273CB2590(_Unwind_Exception *exception_object, WTF::StringImpl *a2)
{
  v4 = *(v2 - 56);
  *(v2 - 56) = 0;
  if (v4)
  {
    if (atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v4, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t ___ZN9Inspector33ObjCInspectorDOMBackendDispatcher6moveToEliiONSt3__18optionalIiEE_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(*(a1 + 32) + 8);
  MEMORY[0x2743DB520](&v4);
  Inspector::BackendDispatcher::reportProtocolError();
  return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v4);
}

void sub_273CB261C(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10)
{
  if (a10)
  {
    if (atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a10, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

_DWORD *___ZN9Inspector33ObjCInspectorDOMBackendDispatcher6moveToEliiONSt3__18optionalIiEE_block_invoke_2(WTF::JSONImpl::Object *a1, WTF::JSONImpl::Value *a2)
{
  v4 = *(a1 + 4);
  WTF::JSONImpl::Object::create(v10, a1);
  v5 = v10[0];
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v9 = v10[1];
  WTF::JSONImpl::ObjectBase::setInteger(v5, &v9, a2);
  Inspector::ObjCInspectorCSSBackendDispatcher::setLayoutContextTypeChangedMode(&v9);
  v6 = *(v4 + 8);
  v7 = *(a1 + 5);
  Inspector::BackendDispatcher::sendResponse();
  return ___ZN9Inspector33ObjCInspectorCSSBackendDispatcher23getComputedStyleForNodeEli_block_invoke_2_cold_3(v10);
}

void sub_273CB26DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10, _DWORD *a11)
{
  if (a11)
  {
    Inspector::toJSONObjectArray(a11);
  }

  _Unwind_Resume(exception_object);
}

uint64_t Inspector::ObjCInspectorDOMBackendDispatcher::undo(Inspector::ObjCInspectorDOMBackendDispatcher *this, uint64_t a2)
{
  v4 = *(this + 2);
  if (objc_opt_respondsToSelector())
  {
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = ___ZN9Inspector33ObjCInspectorDOMBackendDispatcher4undoEl_block_invoke;
    v8[3] = &__block_descriptor_48_e18_v16__0__NSString_8l;
    v8[4] = this;
    v8[5] = a2;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = ___ZN9Inspector33ObjCInspectorDOMBackendDispatcher4undoEl_block_invoke_2;
    v7[3] = &__block_descriptor_48_e5_v8__0l;
    v7[4] = this;
    v7[5] = a2;
    return [*(this + 2) undoWithErrorCallback:v8 successCallback:v7];
  }

  else
  {
    v6 = *(this + 1);
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    Inspector::BackendDispatcher::reportProtocolError();
    return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v9);
  }
}

void sub_273CB2844(_Unwind_Exception *exception_object, WTF::StringImpl *a2)
{
  v4 = *(v2 - 40);
  *(v2 - 40) = 0;
  if (v4)
  {
    if (atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v4, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t ___ZN9Inspector33ObjCInspectorDOMBackendDispatcher4undoEl_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(*(a1 + 32) + 8);
  MEMORY[0x2743DB520](&v4);
  Inspector::BackendDispatcher::reportProtocolError();
  return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v4);
}

void sub_273CB28D0(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10)
{
  if (a10)
  {
    if (atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a10, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

_DWORD *___ZN9Inspector33ObjCInspectorDOMBackendDispatcher4undoEl_block_invoke_2(WTF::JSONImpl::Object *a1)
{
  v2 = *(a1 + 4);
  WTF::JSONImpl::Object::create(&v6, a1);
  v3 = *(v2 + 8);
  v4 = *(a1 + 5);
  Inspector::BackendDispatcher::sendResponse();
  result = v6;
  v6 = 0;
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

void sub_273CB2968(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, _DWORD *a10)
{
  if (a10)
  {
    Inspector::toJSONObjectArray(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t Inspector::ObjCInspectorDOMBackendDispatcher::redo(Inspector::ObjCInspectorDOMBackendDispatcher *this, uint64_t a2)
{
  v4 = *(this + 2);
  if (objc_opt_respondsToSelector())
  {
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = ___ZN9Inspector33ObjCInspectorDOMBackendDispatcher4redoEl_block_invoke;
    v8[3] = &__block_descriptor_48_e18_v16__0__NSString_8l;
    v8[4] = this;
    v8[5] = a2;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = ___ZN9Inspector33ObjCInspectorDOMBackendDispatcher4redoEl_block_invoke_2;
    v7[3] = &__block_descriptor_48_e5_v8__0l;
    v7[4] = this;
    v7[5] = a2;
    return [*(this + 2) redoWithErrorCallback:v8 successCallback:v7];
  }

  else
  {
    v6 = *(this + 1);
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    Inspector::BackendDispatcher::reportProtocolError();
    return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v9);
  }
}

void sub_273CB2AA4(_Unwind_Exception *exception_object, WTF::StringImpl *a2)
{
  v4 = *(v2 - 40);
  *(v2 - 40) = 0;
  if (v4)
  {
    if (atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v4, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t ___ZN9Inspector33ObjCInspectorDOMBackendDispatcher4redoEl_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(*(a1 + 32) + 8);
  MEMORY[0x2743DB520](&v4);
  Inspector::BackendDispatcher::reportProtocolError();
  return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v4);
}

void sub_273CB2B30(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10)
{
  if (a10)
  {
    if (atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a10, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

_DWORD *___ZN9Inspector33ObjCInspectorDOMBackendDispatcher4redoEl_block_invoke_2(WTF::JSONImpl::Object *a1)
{
  v2 = *(a1 + 4);
  WTF::JSONImpl::Object::create(&v6, a1);
  v3 = *(v2 + 8);
  v4 = *(a1 + 5);
  Inspector::BackendDispatcher::sendResponse();
  result = v6;
  v6 = 0;
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

void sub_273CB2BC8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, _DWORD *a10)
{
  if (a10)
  {
    Inspector::toJSONObjectArray(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t Inspector::ObjCInspectorDOMBackendDispatcher::markUndoableState(Inspector::ObjCInspectorDOMBackendDispatcher *this, uint64_t a2)
{
  v4 = *(this + 2);
  if (objc_opt_respondsToSelector())
  {
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = ___ZN9Inspector33ObjCInspectorDOMBackendDispatcher17markUndoableStateEl_block_invoke;
    v8[3] = &__block_descriptor_48_e18_v16__0__NSString_8l;
    v8[4] = this;
    v8[5] = a2;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = ___ZN9Inspector33ObjCInspectorDOMBackendDispatcher17markUndoableStateEl_block_invoke_2;
    v7[3] = &__block_descriptor_48_e5_v8__0l;
    v7[4] = this;
    v7[5] = a2;
    return [*(this + 2) markUndoableStateWithErrorCallback:v8 successCallback:v7];
  }

  else
  {
    v6 = *(this + 1);
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    Inspector::BackendDispatcher::reportProtocolError();
    return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v9);
  }
}

void sub_273CB2D04(_Unwind_Exception *exception_object, WTF::StringImpl *a2)
{
  v4 = *(v2 - 40);
  *(v2 - 40) = 0;
  if (v4)
  {
    if (atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v4, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t ___ZN9Inspector33ObjCInspectorDOMBackendDispatcher17markUndoableStateEl_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(*(a1 + 32) + 8);
  MEMORY[0x2743DB520](&v4);
  Inspector::BackendDispatcher::reportProtocolError();
  return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v4);
}

void sub_273CB2D90(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10)
{
  if (a10)
  {
    if (atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a10, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

_DWORD *___ZN9Inspector33ObjCInspectorDOMBackendDispatcher17markUndoableStateEl_block_invoke_2(WTF::JSONImpl::Object *a1)
{
  v2 = *(a1 + 4);
  WTF::JSONImpl::Object::create(&v6, a1);
  v3 = *(v2 + 8);
  v4 = *(a1 + 5);
  Inspector::BackendDispatcher::sendResponse();
  result = v6;
  v6 = 0;
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

void sub_273CB2E28(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, _DWORD *a10)
{
  if (a10)
  {
    Inspector::toJSONObjectArray(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t Inspector::ObjCInspectorDOMBackendDispatcher::focus(Inspector::ObjCInspectorDOMBackendDispatcher *this, uint64_t a2, uint64_t a3)
{
  v6 = *(this + 2);
  if (objc_opt_respondsToSelector())
  {
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = ___ZN9Inspector33ObjCInspectorDOMBackendDispatcher5focusEli_block_invoke;
    v10[3] = &__block_descriptor_48_e18_v16__0__NSString_8l;
    v10[4] = this;
    v10[5] = a2;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = ___ZN9Inspector33ObjCInspectorDOMBackendDispatcher5focusEli_block_invoke_2;
    v9[3] = &__block_descriptor_48_e5_v8__0l;
    v9[4] = this;
    v9[5] = a2;
    return [*(this + 2) focusWithErrorCallback:v10 successCallback:v9 nodeId:a3];
  }

  else
  {
    v8 = *(this + 1);
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    Inspector::BackendDispatcher::reportProtocolError();
    return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v11);
  }
}

void sub_273CB2F6C(_Unwind_Exception *exception_object, WTF::StringImpl *a2)
{
  v4 = *(v2 - 40);
  *(v2 - 40) = 0;
  if (v4)
  {
    if (atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v4, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t ___ZN9Inspector33ObjCInspectorDOMBackendDispatcher5focusEli_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(*(a1 + 32) + 8);
  MEMORY[0x2743DB520](&v4);
  Inspector::BackendDispatcher::reportProtocolError();
  return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v4);
}

void sub_273CB2FF8(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10)
{
  if (a10)
  {
    if (atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a10, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

_DWORD *___ZN9Inspector33ObjCInspectorDOMBackendDispatcher5focusEli_block_invoke_2(WTF::JSONImpl::Object *a1)
{
  v2 = *(a1 + 4);
  WTF::JSONImpl::Object::create(&v6, a1);
  v3 = *(v2 + 8);
  v4 = *(a1 + 5);
  Inspector::BackendDispatcher::sendResponse();
  result = v6;
  v6 = 0;
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

void sub_273CB3090(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, _DWORD *a10)
{
  if (a10)
  {
    Inspector::toJSONObjectArray(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t Inspector::ObjCInspectorDOMBackendDispatcher::setInspectedNode(Inspector::ObjCInspectorDOMBackendDispatcher *this, uint64_t a2, uint64_t a3)
{
  v6 = *(this + 2);
  if (objc_opt_respondsToSelector())
  {
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = ___ZN9Inspector33ObjCInspectorDOMBackendDispatcher16setInspectedNodeEli_block_invoke;
    v10[3] = &__block_descriptor_48_e18_v16__0__NSString_8l;
    v10[4] = this;
    v10[5] = a2;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = ___ZN9Inspector33ObjCInspectorDOMBackendDispatcher16setInspectedNodeEli_block_invoke_2;
    v9[3] = &__block_descriptor_48_e5_v8__0l;
    v9[4] = this;
    v9[5] = a2;
    return [*(this + 2) setInspectedNodeWithErrorCallback:v10 successCallback:v9 nodeId:a3];
  }

  else
  {
    v8 = *(this + 1);
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    Inspector::BackendDispatcher::reportProtocolError();
    return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v11);
  }
}

void sub_273CB31D4(_Unwind_Exception *exception_object, WTF::StringImpl *a2)
{
  v4 = *(v2 - 40);
  *(v2 - 40) = 0;
  if (v4)
  {
    if (atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v4, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t ___ZN9Inspector33ObjCInspectorDOMBackendDispatcher16setInspectedNodeEli_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(*(a1 + 32) + 8);
  MEMORY[0x2743DB520](&v4);
  Inspector::BackendDispatcher::reportProtocolError();
  return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v4);
}

void sub_273CB3260(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10)
{
  if (a10)
  {
    if (atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a10, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

_DWORD *___ZN9Inspector33ObjCInspectorDOMBackendDispatcher16setInspectedNodeEli_block_invoke_2(WTF::JSONImpl::Object *a1)
{
  v2 = *(a1 + 4);
  WTF::JSONImpl::Object::create(&v6, a1);
  v3 = *(v2 + 8);
  v4 = *(a1 + 5);
  Inspector::BackendDispatcher::sendResponse();
  result = v6;
  v6 = 0;
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

void sub_273CB32F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, _DWORD *a10)
{
  if (a10)
  {
    Inspector::toJSONObjectArray(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t Inspector::ObjCInspectorDOMBackendDispatcher::setAllowEditingUserAgentShadowTrees(Inspector::ObjCInspectorDOMBackendDispatcher *this, uint64_t a2, uint64_t a3)
{
  v6 = *(this + 2);
  if (objc_opt_respondsToSelector())
  {
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = ___ZN9Inspector33ObjCInspectorDOMBackendDispatcher35setAllowEditingUserAgentShadowTreesElb_block_invoke;
    v10[3] = &__block_descriptor_48_e18_v16__0__NSString_8l;
    v10[4] = this;
    v10[5] = a2;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = ___ZN9Inspector33ObjCInspectorDOMBackendDispatcher35setAllowEditingUserAgentShadowTreesElb_block_invoke_2;
    v9[3] = &__block_descriptor_48_e5_v8__0l;
    v9[4] = this;
    v9[5] = a2;
    return [*(this + 2) setAllowEditingUserAgentShadowTreesWithErrorCallback:v10 successCallback:v9 allow:a3];
  }

  else
  {
    v8 = *(this + 1);
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    Inspector::BackendDispatcher::reportProtocolError();
    return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v11);
  }
}

void sub_273CB343C(_Unwind_Exception *exception_object, WTF::StringImpl *a2)
{
  v4 = *(v2 - 40);
  *(v2 - 40) = 0;
  if (v4)
  {
    if (atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v4, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t ___ZN9Inspector33ObjCInspectorDOMBackendDispatcher35setAllowEditingUserAgentShadowTreesElb_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(*(a1 + 32) + 8);
  MEMORY[0x2743DB520](&v4);
  Inspector::BackendDispatcher::reportProtocolError();
  return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v4);
}

void sub_273CB34C8(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10)
{
  if (a10)
  {
    if (atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a10, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

_DWORD *___ZN9Inspector33ObjCInspectorDOMBackendDispatcher35setAllowEditingUserAgentShadowTreesElb_block_invoke_2(WTF::JSONImpl::Object *a1)
{
  v2 = *(a1 + 4);
  WTF::JSONImpl::Object::create(&v6, a1);
  v3 = *(v2 + 8);
  v4 = *(a1 + 5);
  Inspector::BackendDispatcher::sendResponse();
  result = v6;
  v6 = 0;
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

void sub_273CB3560(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, _DWORD *a10)
{
  if (a10)
  {
    Inspector::toJSONObjectArray(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t Inspector::ObjCInspectorDOMBackendDispatcher::getMediaStats(Inspector::ObjCInspectorDOMBackendDispatcher *this, uint64_t a2, uint64_t a3)
{
  v6 = *(this + 2);
  if (objc_opt_respondsToSelector())
  {
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = ___ZN9Inspector33ObjCInspectorDOMBackendDispatcher13getMediaStatsEli_block_invoke;
    v10[3] = &__block_descriptor_48_e18_v16__0__NSString_8l;
    v10[4] = this;
    v10[5] = a2;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = ___ZN9Inspector33ObjCInspectorDOMBackendDispatcher13getMediaStatsEli_block_invoke_2;
    v9[3] = &__block_descriptor_48_e34_v16__0__RWIProtocolDOMMediaStats_8l;
    v9[4] = this;
    v9[5] = a2;
    return [*(this + 2) getMediaStatsWithErrorCallback:v10 successCallback:v9 nodeId:a3];
  }

  else
  {
    v8 = *(this + 1);
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    Inspector::BackendDispatcher::reportProtocolError();
    return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v11);
  }
}

void sub_273CB36A4(_Unwind_Exception *exception_object, WTF::StringImpl *a2)
{
  v4 = *(v2 - 40);
  *(v2 - 40) = 0;
  if (v4)
  {
    if (atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v4, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t ___ZN9Inspector33ObjCInspectorDOMBackendDispatcher13getMediaStatsEli_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(*(a1 + 32) + 8);
  MEMORY[0x2743DB520](&v4);
  Inspector::BackendDispatcher::reportProtocolError();
  return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v4);
}

void sub_273CB3730(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10)
{
  if (a10)
  {
    if (atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a10, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

_DWORD *___ZN9Inspector33ObjCInspectorDOMBackendDispatcher13getMediaStatsEli_block_invoke_2(WTF::JSONImpl::Object *a1, void *a2)
{
  v4 = *(a1 + 4);
  WTF::JSONImpl::Object::create(&v20, a1);
  if (!a2)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"required parameter '%@' cannot be nil", @"mediaStats"}];
  }

  v5 = v20;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v19 = v21;
  if (a2)
  {
    [a2 toJSONObject];
    v6 = v17;
  }

  else
  {
    v6 = 0;
  }

  v18 = v6;
  WTF::HashMap<WTF::String,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::inlineSet<WTF::String const&,WTF::Ref<WTF::JSONImpl::ObjectBase,WTF::RawPtrTraits<WTF::JSONImpl::ObjectBase>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::ObjectBase>>>(v5 + 2, &v19, &v18, &v21);
  if (v22 == 1)
  {
    v8 = *(v5 + 9);
    if (v8 == *(v5 + 8))
    {
      WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WTF::String const&>((v5 + 3), &v19);
    }

    else
    {
      v9 = v5[3];
      v10 = v19;
      if (v19)
      {
        atomic_fetch_add_explicit(v19, 2u, memory_order_relaxed);
      }

      v11 = *(v5 + 9);
      *(v9 + 8 * v8) = v10;
      *(v5 + 9) = v11 + 1;
    }
  }

  v12 = v18;
  v18 = 0;
  if (v12)
  {
    Inspector::toJSONObjectArray(v12);
  }

  v13 = v19;
  v19 = 0;
  if (v13 && atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v13, v7);
  }

  v14 = *(v4 + 8);
  v15 = *(a1 + 5);
  Inspector::BackendDispatcher::sendResponse();
  return ___ZN9Inspector33ObjCInspectorCSSBackendDispatcher23getComputedStyleForNodeEli_block_invoke_2_cold_3(&v20);
}

void sub_273CB38E4(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, WTF::StringImpl *a12, _DWORD *a13)
{
  if (a12 && atomic_fetch_add_explicit(a12, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a12, a2);
  }

  if (a13)
  {
    Inspector::toJSONObjectArray(a13);
  }

  _Unwind_Resume(exception_object);
}

uint64_t Inspector::ObjCInspectorDOMStorageBackendDispatcher::enable(Inspector::ObjCInspectorDOMStorageBackendDispatcher *this, uint64_t a2)
{
  v4 = *(this + 2);
  if (objc_opt_respondsToSelector())
  {
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = ___ZN9Inspector40ObjCInspectorDOMStorageBackendDispatcher6enableEl_block_invoke;
    v8[3] = &__block_descriptor_48_e18_v16__0__NSString_8l;
    v8[4] = this;
    v8[5] = a2;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = ___ZN9Inspector40ObjCInspectorDOMStorageBackendDispatcher6enableEl_block_invoke_2;
    v7[3] = &__block_descriptor_48_e5_v8__0l;
    v7[4] = this;
    v7[5] = a2;
    return [*(this + 2) enableWithErrorCallback:v8 successCallback:v7];
  }

  else
  {
    v6 = *(this + 1);
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    Inspector::BackendDispatcher::reportProtocolError();
    return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v9);
  }
}

void sub_273CB3A88(_Unwind_Exception *exception_object, WTF::StringImpl *a2)
{
  v4 = *(v2 - 40);
  *(v2 - 40) = 0;
  if (v4)
  {
    if (atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v4, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t ___ZN9Inspector40ObjCInspectorDOMStorageBackendDispatcher6enableEl_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(*(a1 + 32) + 8);
  MEMORY[0x2743DB520](&v4);
  Inspector::BackendDispatcher::reportProtocolError();
  return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v4);
}

void sub_273CB3B14(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10)
{
  if (a10)
  {
    if (atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a10, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

_DWORD *___ZN9Inspector40ObjCInspectorDOMStorageBackendDispatcher6enableEl_block_invoke_2(WTF::JSONImpl::Object *a1)
{
  v2 = *(a1 + 4);
  WTF::JSONImpl::Object::create(&v6, a1);
  v3 = *(v2 + 8);
  v4 = *(a1 + 5);
  Inspector::BackendDispatcher::sendResponse();
  result = v6;
  v6 = 0;
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

void sub_273CB3BAC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, _DWORD *a10)
{
  if (a10)
  {
    Inspector::toJSONObjectArray(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t Inspector::ObjCInspectorDOMStorageBackendDispatcher::disable(Inspector::ObjCInspectorDOMStorageBackendDispatcher *this, uint64_t a2)
{
  v4 = *(this + 2);
  if (objc_opt_respondsToSelector())
  {
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = ___ZN9Inspector40ObjCInspectorDOMStorageBackendDispatcher7disableEl_block_invoke;
    v8[3] = &__block_descriptor_48_e18_v16__0__NSString_8l;
    v8[4] = this;
    v8[5] = a2;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = ___ZN9Inspector40ObjCInspectorDOMStorageBackendDispatcher7disableEl_block_invoke_2;
    v7[3] = &__block_descriptor_48_e5_v8__0l;
    v7[4] = this;
    v7[5] = a2;
    return [*(this + 2) disableWithErrorCallback:v8 successCallback:v7];
  }

  else
  {
    v6 = *(this + 1);
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    Inspector::BackendDispatcher::reportProtocolError();
    return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v9);
  }
}

void sub_273CB3CE8(_Unwind_Exception *exception_object, WTF::StringImpl *a2)
{
  v4 = *(v2 - 40);
  *(v2 - 40) = 0;
  if (v4)
  {
    if (atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v4, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t ___ZN9Inspector40ObjCInspectorDOMStorageBackendDispatcher7disableEl_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(*(a1 + 32) + 8);
  MEMORY[0x2743DB520](&v4);
  Inspector::BackendDispatcher::reportProtocolError();
  return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v4);
}

void sub_273CB3D74(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10)
{
  if (a10)
  {
    if (atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a10, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

_DWORD *___ZN9Inspector40ObjCInspectorDOMStorageBackendDispatcher7disableEl_block_invoke_2(WTF::JSONImpl::Object *a1)
{
  v2 = *(a1 + 4);
  WTF::JSONImpl::Object::create(&v6, a1);
  v3 = *(v2 + 8);
  v4 = *(a1 + 5);
  Inspector::BackendDispatcher::sendResponse();
  result = v6;
  v6 = 0;
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

void sub_273CB3E0C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, _DWORD *a10)
{
  if (a10)
  {
    Inspector::toJSONObjectArray(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t Inspector::ObjCInspectorDOMStorageBackendDispatcher::getDOMStorageItems(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 16);
  if (objc_opt_respondsToSelector())
  {
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = ___ZN9Inspector40ObjCInspectorDOMStorageBackendDispatcher18getDOMStorageItemsElON3WTF3RefINS1_8JSONImpl6ObjectENS1_12RawPtrTraitsIS4_EENS1_21DefaultRefDerefTraitsIS4_EEEE_block_invoke;
    v13[3] = &__block_descriptor_48_e18_v16__0__NSString_8l;
    v13[4] = a1;
    v13[5] = a2;
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = ___ZN9Inspector40ObjCInspectorDOMStorageBackendDispatcher18getDOMStorageItemsElON3WTF3RefINS1_8JSONImpl6ObjectENS1_12RawPtrTraitsIS4_EENS1_21DefaultRefDerefTraitsIS4_EEEE_block_invoke_2;
    v12[3] = &__block_descriptor_48_e17_v16__0__NSArray_8l;
    v12[4] = a1;
    v12[5] = a2;
    v7 = [(RWIProtocolJSONObject *)[RWIProtocolDOMStorageStorageId alloc] initWithJSONObject:a3];
    v8 = v7;
    if (v7)
    {
      v9 = v7;
    }

    return [*(a1 + 16) getDOMStorageItemsWithErrorCallback:v13 successCallback:v12 storageId:v8];
  }

  else
  {
    v11 = *(a1 + 8);
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    Inspector::BackendDispatcher::reportProtocolError();
    return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v14);
  }
}

void sub_273CB3F74(_Unwind_Exception *exception_object, WTF::StringImpl *a2)
{
  v4 = *(v2 - 40);
  *(v2 - 40) = 0;
  if (v4)
  {
    if (atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v4, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t ___ZN9Inspector40ObjCInspectorDOMStorageBackendDispatcher18getDOMStorageItemsElON3WTF3RefINS1_8JSONImpl6ObjectENS1_12RawPtrTraitsIS4_EENS1_21DefaultRefDerefTraitsIS4_EEEE_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(*(a1 + 32) + 8);
  MEMORY[0x2743DB520](&v4);
  Inspector::BackendDispatcher::reportProtocolError();
  return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v4);
}

void sub_273CB4000(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10)
{
  if (a10)
  {
    if (atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a10, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

_DWORD *___ZN9Inspector40ObjCInspectorDOMStorageBackendDispatcher18getDOMStorageItemsElON3WTF3RefINS1_8JSONImpl6ObjectENS1_12RawPtrTraitsIS4_EENS1_21DefaultRefDerefTraitsIS4_EEEE_block_invoke_2(WTF::JSONImpl::Object *a1, Inspector *a2)
{
  v4 = *(a1 + 4);
  WTF::JSONImpl::Object::create(&v21, a1);
  if (!a2)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"required parameter '%@' cannot be nil", @"entries"}];
  }

  v5 = v21;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v20 = v22;
  Inspector::toJSONStringArrayArray(a2, &v18);
  v6 = v18;
  v18 = 0;
  v19 = v6;
  WTF::HashMap<WTF::String,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::inlineSet<WTF::String const&,WTF::Ref<WTF::JSONImpl::ArrayBase,WTF::RawPtrTraits<WTF::JSONImpl::ArrayBase>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::ArrayBase>>>(v5 + 2, &v20, &v19, &v22);
  if (v23 == 1)
  {
    v8 = *(v5 + 9);
    if (v8 == *(v5 + 8))
    {
      WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WTF::String const&>((v5 + 3), &v20);
    }

    else
    {
      v9 = v5[3];
      v10 = v20;
      if (v20)
      {
        atomic_fetch_add_explicit(v20, 2u, memory_order_relaxed);
      }

      v11 = *(v5 + 9);
      *(v9 + 8 * v8) = v10;
      *(v5 + 9) = v11 + 1;
    }
  }

  v12 = v19;
  v19 = 0;
  if (v12)
  {
    Inspector::toJSONObjectArray(v12);
  }

  v13 = v18;
  v18 = 0;
  if (v13)
  {
    if (*v13 == 1)
    {
      WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*v13;
    }
  }

  v14 = v20;
  v20 = 0;
  if (v14 && atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v14, v7);
  }

  v15 = *(v4 + 8);
  v16 = *(a1 + 5);
  Inspector::BackendDispatcher::sendResponse();
  return ___ZN9Inspector33ObjCInspectorCSSBackendDispatcher23getComputedStyleForNodeEli_block_invoke_2_cold_3(&v21);
}

void sub_273CB41A8(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, WTF::StringImpl *a12, _DWORD *a13)
{
  if (a12 && atomic_fetch_add_explicit(a12, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a12, a2);
  }

  if (a13)
  {
    Inspector::toJSONObjectArray(a13);
  }

  _Unwind_Resume(exception_object);
}

uint64_t Inspector::ObjCInspectorDOMStorageBackendDispatcher::setDOMStorageItem(uint64_t a1, uint64_t a2, uint64_t a3, atomic_uint **a4, atomic_uint **a5)
{
  v10 = *(a1 + 16);
  if (objc_opt_respondsToSelector())
  {
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = ___ZN9Inspector40ObjCInspectorDOMStorageBackendDispatcher17setDOMStorageItemElON3WTF3RefINS1_8JSONImpl6ObjectENS1_12RawPtrTraitsIS4_EENS1_21DefaultRefDerefTraitsIS4_EEEERKNS1_6StringESD__block_invoke;
    v29[3] = &__block_descriptor_48_e18_v16__0__NSString_8l;
    v29[4] = a1;
    v29[5] = a2;
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = ___ZN9Inspector40ObjCInspectorDOMStorageBackendDispatcher17setDOMStorageItemElON3WTF3RefINS1_8JSONImpl6ObjectENS1_12RawPtrTraitsIS4_EENS1_21DefaultRefDerefTraitsIS4_EEEERKNS1_6StringESD__block_invoke_2;
    v28[3] = &__block_descriptor_48_e5_v8__0l;
    v28[4] = a1;
    v28[5] = a2;
    v11 = [(RWIProtocolJSONObject *)[RWIProtocolDOMStorageStorageId alloc] initWithJSONObject:a3];
    v12 = v11;
    if (v11)
    {
      v13 = v11;
    }

    v14 = *a4;
    if (v14)
    {
      atomic_fetch_add_explicit(v14, 2u, memory_order_relaxed);
      MEMORY[0x2743DB4B0](&v30, v14);
      if (atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v14, v15);
      }
    }

    else
    {
      v30 = &stru_2882B1C88;
      v26 = &stru_2882B1C88;
    }

    v16 = v30;
    v30 = 0;
    if (v16)
    {
      v17 = v16;
      v18 = v30;
      v30 = 0;
      if (v18)
      {
      }
    }

    v19 = *a5;
    if (v19)
    {
      atomic_fetch_add_explicit(v19, 2u, memory_order_relaxed);
      MEMORY[0x2743DB4B0](&v30, v19);
      if (atomic_fetch_add_explicit(v19, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v19, v20);
      }
    }

    else
    {
      v30 = &stru_2882B1C88;
      v27 = &stru_2882B1C88;
    }

    v21 = v30;
    v30 = 0;
    if (v21)
    {
      v22 = v21;
      v23 = v30;
      v30 = 0;
      if (v23)
      {
      }
    }

    return [*(a1 + 16) setDOMStorageItemWithErrorCallback:v29 successCallback:v28 storageId:v12 key:v16 value:v21];
  }

  else
  {
    v25 = *(a1 + 8);
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    Inspector::BackendDispatcher::reportProtocolError();
    return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v30);
  }
}

void sub_273CB4468(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 56);
  *(v1 - 56) = 0;
  if (v3)
  {
  }

  _Unwind_Resume(exception_object);
}

uint64_t ___ZN9Inspector40ObjCInspectorDOMStorageBackendDispatcher17setDOMStorageItemElON3WTF3RefINS1_8JSONImpl6ObjectENS1_12RawPtrTraitsIS4_EENS1_21DefaultRefDerefTraitsIS4_EEEERKNS1_6StringESD__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(*(a1 + 32) + 8);
  MEMORY[0x2743DB520](&v4);
  Inspector::BackendDispatcher::reportProtocolError();
  return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v4);
}

void sub_273CB4548(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10)
{
  if (a10)
  {
    if (atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a10, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

_DWORD *___ZN9Inspector40ObjCInspectorDOMStorageBackendDispatcher17setDOMStorageItemElON3WTF3RefINS1_8JSONImpl6ObjectENS1_12RawPtrTraitsIS4_EENS1_21DefaultRefDerefTraitsIS4_EEEERKNS1_6StringESD__block_invoke_2(WTF::JSONImpl::Object *a1)
{
  v2 = *(a1 + 4);
  WTF::JSONImpl::Object::create(&v6, a1);
  v3 = *(v2 + 8);
  v4 = *(a1 + 5);
  Inspector::BackendDispatcher::sendResponse();
  result = v6;
  v6 = 0;
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

void sub_273CB45E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, _DWORD *a10)
{
  if (a10)
  {
    Inspector::toJSONObjectArray(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t Inspector::ObjCInspectorDOMStorageBackendDispatcher::removeDOMStorageItem(uint64_t a1, uint64_t a2, uint64_t a3, atomic_uint **a4)
{
  v8 = *(a1 + 16);
  if (objc_opt_respondsToSelector())
  {
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = ___ZN9Inspector40ObjCInspectorDOMStorageBackendDispatcher20removeDOMStorageItemElON3WTF3RefINS1_8JSONImpl6ObjectENS1_12RawPtrTraitsIS4_EENS1_21DefaultRefDerefTraitsIS4_EEEERKNS1_6StringE_block_invoke;
    v21[3] = &__block_descriptor_48_e18_v16__0__NSString_8l;
    v21[4] = a1;
    v21[5] = a2;
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = ___ZN9Inspector40ObjCInspectorDOMStorageBackendDispatcher20removeDOMStorageItemElON3WTF3RefINS1_8JSONImpl6ObjectENS1_12RawPtrTraitsIS4_EENS1_21DefaultRefDerefTraitsIS4_EEEERKNS1_6StringE_block_invoke_2;
    v20[3] = &__block_descriptor_48_e5_v8__0l;
    v20[4] = a1;
    v20[5] = a2;
    v9 = [(RWIProtocolJSONObject *)[RWIProtocolDOMStorageStorageId alloc] initWithJSONObject:a3];
    v10 = v9;
    if (v9)
    {
      v11 = v9;
    }

    v12 = *a4;
    if (v12)
    {
      atomic_fetch_add_explicit(v12, 2u, memory_order_relaxed);
      MEMORY[0x2743DB4B0](&v22, v12);
      if (atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v12, v13);
      }
    }

    else
    {
      v22 = &stru_2882B1C88;
      v19 = &stru_2882B1C88;
    }

    v14 = v22;
    v22 = 0;
    if (v14)
    {
      v15 = v14;
      v16 = v22;
      v22 = 0;
      if (v16)
      {
      }
    }

    return [*(a1 + 16) removeDOMStorageItemWithErrorCallback:v21 successCallback:v20 storageId:v10 key:v14];
  }

  else
  {
    v18 = *(a1 + 8);
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    Inspector::BackendDispatcher::reportProtocolError();
    return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v22);
  }
}

void sub_273CB47BC(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 40);
  *(v1 - 40) = 0;
  if (v3)
  {
  }

  _Unwind_Resume(exception_object);
}

uint64_t ___ZN9Inspector40ObjCInspectorDOMStorageBackendDispatcher20removeDOMStorageItemElON3WTF3RefINS1_8JSONImpl6ObjectENS1_12RawPtrTraitsIS4_EENS1_21DefaultRefDerefTraitsIS4_EEEERKNS1_6StringE_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(*(a1 + 32) + 8);
  MEMORY[0x2743DB520](&v4);
  Inspector::BackendDispatcher::reportProtocolError();
  return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v4);
}

void sub_273CB487C(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10)
{
  if (a10)
  {
    if (atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a10, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

_DWORD *___ZN9Inspector40ObjCInspectorDOMStorageBackendDispatcher20removeDOMStorageItemElON3WTF3RefINS1_8JSONImpl6ObjectENS1_12RawPtrTraitsIS4_EENS1_21DefaultRefDerefTraitsIS4_EEEERKNS1_6StringE_block_invoke_2(WTF::JSONImpl::Object *a1)
{
  v2 = *(a1 + 4);
  WTF::JSONImpl::Object::create(&v6, a1);
  v3 = *(v2 + 8);
  v4 = *(a1 + 5);
  Inspector::BackendDispatcher::sendResponse();
  result = v6;
  v6 = 0;
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

void sub_273CB4914(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, _DWORD *a10)
{
  if (a10)
  {
    Inspector::toJSONObjectArray(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t Inspector::ObjCInspectorDOMStorageBackendDispatcher::clearDOMStorageItems(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 16);
  if (objc_opt_respondsToSelector())
  {
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = ___ZN9Inspector40ObjCInspectorDOMStorageBackendDispatcher20clearDOMStorageItemsElON3WTF3RefINS1_8JSONImpl6ObjectENS1_12RawPtrTraitsIS4_EENS1_21DefaultRefDerefTraitsIS4_EEEE_block_invoke;
    v13[3] = &__block_descriptor_48_e18_v16__0__NSString_8l;
    v13[4] = a1;
    v13[5] = a2;
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = ___ZN9Inspector40ObjCInspectorDOMStorageBackendDispatcher20clearDOMStorageItemsElON3WTF3RefINS1_8JSONImpl6ObjectENS1_12RawPtrTraitsIS4_EENS1_21DefaultRefDerefTraitsIS4_EEEE_block_invoke_2;
    v12[3] = &__block_descriptor_48_e5_v8__0l;
    v12[4] = a1;
    v12[5] = a2;
    v7 = [(RWIProtocolJSONObject *)[RWIProtocolDOMStorageStorageId alloc] initWithJSONObject:a3];
    v8 = v7;
    if (v7)
    {
      v9 = v7;
    }

    return [*(a1 + 16) clearDOMStorageItemsWithErrorCallback:v13 successCallback:v12 storageId:v8];
  }

  else
  {
    v11 = *(a1 + 8);
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    Inspector::BackendDispatcher::reportProtocolError();
    return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v14);
  }
}

void sub_273CB4A7C(_Unwind_Exception *exception_object, WTF::StringImpl *a2)
{
  v4 = *(v2 - 40);
  *(v2 - 40) = 0;
  if (v4)
  {
    if (atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v4, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t ___ZN9Inspector40ObjCInspectorDOMStorageBackendDispatcher20clearDOMStorageItemsElON3WTF3RefINS1_8JSONImpl6ObjectENS1_12RawPtrTraitsIS4_EENS1_21DefaultRefDerefTraitsIS4_EEEE_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(*(a1 + 32) + 8);
  MEMORY[0x2743DB520](&v4);
  Inspector::BackendDispatcher::reportProtocolError();
  return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v4);
}

void sub_273CB4B08(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10)
{
  if (a10)
  {
    if (atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a10, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

_DWORD *___ZN9Inspector40ObjCInspectorDOMStorageBackendDispatcher20clearDOMStorageItemsElON3WTF3RefINS1_8JSONImpl6ObjectENS1_12RawPtrTraitsIS4_EENS1_21DefaultRefDerefTraitsIS4_EEEE_block_invoke_2(WTF::JSONImpl::Object *a1)
{
  v2 = *(a1 + 4);
  WTF::JSONImpl::Object::create(&v6, a1);
  v3 = *(v2 + 8);
  v4 = *(a1 + 5);
  Inspector::BackendDispatcher::sendResponse();
  result = v6;
  v6 = 0;
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

void sub_273CB4BA0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, _DWORD *a10)
{
  if (a10)
  {
    Inspector::toJSONObjectArray(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t Inspector::ObjCInspectorNetworkBackendDispatcher::enable(Inspector::ObjCInspectorNetworkBackendDispatcher *this, uint64_t a2)
{
  v4 = *(this + 2);
  if (objc_opt_respondsToSelector())
  {
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = ___ZN9Inspector37ObjCInspectorNetworkBackendDispatcher6enableEl_block_invoke;
    v8[3] = &__block_descriptor_48_e18_v16__0__NSString_8l;
    v8[4] = this;
    v8[5] = a2;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = ___ZN9Inspector37ObjCInspectorNetworkBackendDispatcher6enableEl_block_invoke_2;
    v7[3] = &__block_descriptor_48_e5_v8__0l;
    v7[4] = this;
    v7[5] = a2;
    return [*(this + 2) enableWithErrorCallback:v8 successCallback:v7];
  }

  else
  {
    v6 = *(this + 1);
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    Inspector::BackendDispatcher::reportProtocolError();
    return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v9);
  }
}

void sub_273CB4CDC(_Unwind_Exception *exception_object, WTF::StringImpl *a2)
{
  v4 = *(v2 - 40);
  *(v2 - 40) = 0;
  if (v4)
  {
    if (atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v4, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t ___ZN9Inspector37ObjCInspectorNetworkBackendDispatcher6enableEl_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(*(a1 + 32) + 8);
  MEMORY[0x2743DB520](&v4);
  Inspector::BackendDispatcher::reportProtocolError();
  return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v4);
}

void sub_273CB4D68(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10)
{
  if (a10)
  {
    if (atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a10, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

_DWORD *___ZN9Inspector37ObjCInspectorNetworkBackendDispatcher6enableEl_block_invoke_2(WTF::JSONImpl::Object *a1)
{
  v2 = *(a1 + 4);
  WTF::JSONImpl::Object::create(&v6, a1);
  v3 = *(v2 + 8);
  v4 = *(a1 + 5);
  Inspector::BackendDispatcher::sendResponse();
  result = v6;
  v6 = 0;
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

void sub_273CB4E00(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, _DWORD *a10)
{
  if (a10)
  {
    Inspector::toJSONObjectArray(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t Inspector::ObjCInspectorNetworkBackendDispatcher::disable(Inspector::ObjCInspectorNetworkBackendDispatcher *this, uint64_t a2)
{
  v4 = *(this + 2);
  if (objc_opt_respondsToSelector())
  {
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = ___ZN9Inspector37ObjCInspectorNetworkBackendDispatcher7disableEl_block_invoke;
    v8[3] = &__block_descriptor_48_e18_v16__0__NSString_8l;
    v8[4] = this;
    v8[5] = a2;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = ___ZN9Inspector37ObjCInspectorNetworkBackendDispatcher7disableEl_block_invoke_2;
    v7[3] = &__block_descriptor_48_e5_v8__0l;
    v7[4] = this;
    v7[5] = a2;
    return [*(this + 2) disableWithErrorCallback:v8 successCallback:v7];
  }

  else
  {
    v6 = *(this + 1);
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    Inspector::BackendDispatcher::reportProtocolError();
    return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v9);
  }
}

void sub_273CB4F3C(_Unwind_Exception *exception_object, WTF::StringImpl *a2)
{
  v4 = *(v2 - 40);
  *(v2 - 40) = 0;
  if (v4)
  {
    if (atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v4, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t ___ZN9Inspector37ObjCInspectorNetworkBackendDispatcher7disableEl_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(*(a1 + 32) + 8);
  MEMORY[0x2743DB520](&v4);
  Inspector::BackendDispatcher::reportProtocolError();
  return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v4);
}

void sub_273CB4FC8(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10)
{
  if (a10)
  {
    if (atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a10, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

_DWORD *___ZN9Inspector37ObjCInspectorNetworkBackendDispatcher7disableEl_block_invoke_2(WTF::JSONImpl::Object *a1)
{
  v2 = *(a1 + 4);
  WTF::JSONImpl::Object::create(&v6, a1);
  v3 = *(v2 + 8);
  v4 = *(a1 + 5);
  Inspector::BackendDispatcher::sendResponse();
  result = v6;
  v6 = 0;
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

void sub_273CB5060(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, _DWORD *a10)
{
  if (a10)
  {
    Inspector::toJSONObjectArray(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t Inspector::ObjCInspectorNetworkBackendDispatcher::setExtraHTTPHeaders(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 16);
  if (objc_opt_respondsToSelector())
  {
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = ___ZN9Inspector37ObjCInspectorNetworkBackendDispatcher19setExtraHTTPHeadersElON3WTF3RefINS1_8JSONImpl6ObjectENS1_12RawPtrTraitsIS4_EENS1_21DefaultRefDerefTraitsIS4_EEEE_block_invoke;
    v13[3] = &__block_descriptor_48_e18_v16__0__NSString_8l;
    v13[4] = a1;
    v13[5] = a2;
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = ___ZN9Inspector37ObjCInspectorNetworkBackendDispatcher19setExtraHTTPHeadersElON3WTF3RefINS1_8JSONImpl6ObjectENS1_12RawPtrTraitsIS4_EENS1_21DefaultRefDerefTraitsIS4_EEEE_block_invoke_2;
    v12[3] = &__block_descriptor_48_e5_v8__0l;
    v12[4] = a1;
    v12[5] = a2;
    v7 = [(RWIProtocolJSONObject *)[RWIProtocolNetworkHeaders alloc] initWithJSONObject:a3];
    v8 = v7;
    if (v7)
    {
      v9 = v7;
    }

    return [*(a1 + 16) setExtraHTTPHeadersWithErrorCallback:v13 successCallback:v12 headers:v8];
  }

  else
  {
    v11 = *(a1 + 8);
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    Inspector::BackendDispatcher::reportProtocolError();
    return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v14);
  }
}

void sub_273CB51C8(_Unwind_Exception *exception_object, WTF::StringImpl *a2)
{
  v4 = *(v2 - 40);
  *(v2 - 40) = 0;
  if (v4)
  {
    if (atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v4, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t ___ZN9Inspector37ObjCInspectorNetworkBackendDispatcher19setExtraHTTPHeadersElON3WTF3RefINS1_8JSONImpl6ObjectENS1_12RawPtrTraitsIS4_EENS1_21DefaultRefDerefTraitsIS4_EEEE_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(*(a1 + 32) + 8);
  MEMORY[0x2743DB520](&v4);
  Inspector::BackendDispatcher::reportProtocolError();
  return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v4);
}

void sub_273CB5254(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10)
{
  if (a10)
  {
    if (atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a10, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

_DWORD *___ZN9Inspector37ObjCInspectorNetworkBackendDispatcher19setExtraHTTPHeadersElON3WTF3RefINS1_8JSONImpl6ObjectENS1_12RawPtrTraitsIS4_EENS1_21DefaultRefDerefTraitsIS4_EEEE_block_invoke_2(WTF::JSONImpl::Object *a1)
{
  v2 = *(a1 + 4);
  WTF::JSONImpl::Object::create(&v6, a1);
  v3 = *(v2 + 8);
  v4 = *(a1 + 5);
  Inspector::BackendDispatcher::sendResponse();
  result = v6;
  v6 = 0;
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

void sub_273CB52EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, _DWORD *a10)
{
  if (a10)
  {
    Inspector::toJSONObjectArray(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t Inspector::ObjCInspectorNetworkBackendDispatcher::getResponseBody(Inspector::ObjCInspectorNetworkBackendDispatcher *this, uint64_t a2, atomic_uint **a3)
{
  v6 = *(this + 2);
  if (objc_opt_respondsToSelector())
  {
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = ___ZN9Inspector37ObjCInspectorNetworkBackendDispatcher15getResponseBodyElRKN3WTF6StringE_block_invoke;
    v16[3] = &__block_descriptor_48_e18_v16__0__NSString_8l;
    v16[4] = this;
    v16[5] = a2;
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = ___ZN9Inspector37ObjCInspectorNetworkBackendDispatcher15getResponseBodyElRKN3WTF6StringE_block_invoke_2;
    v15[3] = &__block_descriptor_48_e21_v20__0__NSString_8B16l;
    v15[4] = this;
    v15[5] = a2;
    v7 = *a3;
    if (*a3)
    {
      atomic_fetch_add_explicit(v7, 2u, memory_order_relaxed);
      MEMORY[0x2743DB4B0](&v17, v7);
      if (atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v7, v8);
      }
    }

    else
    {
      v17 = &stru_2882B1C88;
      v14 = &stru_2882B1C88;
    }

    v9 = v17;
    v17 = 0;
    if (v9)
    {
      v10 = v9;
      v11 = v17;
      v17 = 0;
      if (v11)
      {
      }
    }

    return [*(this + 2) getResponseBodyWithErrorCallback:v16 successCallback:v15 requestId:v9];
  }

  else
  {
    v13 = *(this + 1);
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    Inspector::BackendDispatcher::reportProtocolError();
    return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v17);
  }
}

void sub_273CB549C(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 40);
  *(v1 - 40) = 0;
  if (v3)
  {
  }

  _Unwind_Resume(exception_object);
}

uint64_t ___ZN9Inspector37ObjCInspectorNetworkBackendDispatcher15getResponseBodyElRKN3WTF6StringE_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(*(a1 + 32) + 8);
  MEMORY[0x2743DB520](&v4);
  Inspector::BackendDispatcher::reportProtocolError();
  return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v4);
}

void sub_273CB555C(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10)
{
  if (a10)
  {
    if (atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a10, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

_DWORD *___ZN9Inspector37ObjCInspectorNetworkBackendDispatcher15getResponseBodyElRKN3WTF6StringE_block_invoke_2(WTF::JSONImpl::Object *a1, uint64_t a2, WTF::JSONImpl::Value *a3)
{
  v6 = *(a1 + 4);
  WTF::JSONImpl::Object::create(&v14, a1);
  if (!a2)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"required parameter '%@' cannot be nil", @"body"}];
  }

  v7 = v14;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v13 = v15;
  MEMORY[0x2743DB520](&v12, a2);
  WTF::JSONImpl::ObjectBase::setString(v7, &v13, &v12);
  ___ZN9Inspector33ObjCInspectorCSSBackendDispatcher17getStyleSheetTextElRKN3WTF6StringE_block_invoke_2_cold_1(&v12);
  v8 = v14;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v13 = v15;
  WTF::JSONImpl::ObjectBase::setBoolean(v8, &v13, a3);
  Inspector::ObjCInspectorCSSBackendDispatcher::setLayoutContextTypeChangedMode(&v13);
  v9 = *(v6 + 8);
  v10 = *(a1 + 5);
  Inspector::BackendDispatcher::sendResponse();
  return ___ZN9Inspector33ObjCInspectorCSSBackendDispatcher23getComputedStyleForNodeEli_block_invoke_2_cold_3(&v14);
}

void sub_273CB56A0(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, WTF::StringImpl *a11, WTF::StringImpl *a12, _DWORD *a13)
{
  if (a12 && atomic_fetch_add_explicit(a12, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a12, a2);
  }

  if (a13)
  {
    Inspector::toJSONObjectArray(a13);
  }

  _Unwind_Resume(exception_object);
}

_DWORD *WTF::JSONImpl::ObjectBase::setBoolean(WTF::JSONImpl::ObjectBase *this, WTF::StringImpl **a2, WTF::JSONImpl::Value *a3)
{
  WTF::JSONImpl::Value::create(a3);
  WTF::HashMap<WTF::String,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::inlineSet<WTF::String const&,WTF::Ref<WTF::JSONImpl::ObjectBase,WTF::RawPtrTraits<WTF::JSONImpl::ObjectBase>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::ObjectBase>>>(this + 2, a2, &v10, v11);
  if (v11[16] == 1)
  {
    v5 = *(this + 9);
    if (v5 == *(this + 8))
    {
      WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WTF::String const&>(this + 24, a2);
    }

    else
    {
      v6 = *(this + 3);
      v7 = *a2;
      if (*a2)
      {
        atomic_fetch_add_explicit(v7, 2u, memory_order_relaxed);
      }

      v8 = *(this + 9);
      *(v6 + 8 * v5) = v7;
      *(this + 9) = v8 + 1;
    }
  }

  result = v10;
  v10 = 0;
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

void sub_273CB57DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, _DWORD *a9)
{
  if (a9)
  {
    Inspector::toJSONObjectArray(a9);
  }

  _Unwind_Resume(exception_object);
}

uint64_t Inspector::ObjCInspectorNetworkBackendDispatcher::setResourceCachingDisabled(Inspector::ObjCInspectorNetworkBackendDispatcher *this, uint64_t a2, uint64_t a3)
{
  v6 = *(this + 2);
  if (objc_opt_respondsToSelector())
  {
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = ___ZN9Inspector37ObjCInspectorNetworkBackendDispatcher26setResourceCachingDisabledElb_block_invoke;
    v10[3] = &__block_descriptor_48_e18_v16__0__NSString_8l;
    v10[4] = this;
    v10[5] = a2;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = ___ZN9Inspector37ObjCInspectorNetworkBackendDispatcher26setResourceCachingDisabledElb_block_invoke_2;
    v9[3] = &__block_descriptor_48_e5_v8__0l;
    v9[4] = this;
    v9[5] = a2;
    return [*(this + 2) setResourceCachingDisabledWithErrorCallback:v10 successCallback:v9 disabled:a3];
  }

  else
  {
    v8 = *(this + 1);
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    Inspector::BackendDispatcher::reportProtocolError();
    return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v11);
  }
}

void sub_273CB5920(_Unwind_Exception *exception_object, WTF::StringImpl *a2)
{
  v4 = *(v2 - 40);
  *(v2 - 40) = 0;
  if (v4)
  {
    if (atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v4, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t ___ZN9Inspector37ObjCInspectorNetworkBackendDispatcher26setResourceCachingDisabledElb_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(*(a1 + 32) + 8);
  MEMORY[0x2743DB520](&v4);
  Inspector::BackendDispatcher::reportProtocolError();
  return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v4);
}

void sub_273CB59AC(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10)
{
  if (a10)
  {
    if (atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a10, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

_DWORD *___ZN9Inspector37ObjCInspectorNetworkBackendDispatcher26setResourceCachingDisabledElb_block_invoke_2(WTF::JSONImpl::Object *a1)
{
  v2 = *(a1 + 4);
  WTF::JSONImpl::Object::create(&v6, a1);
  v3 = *(v2 + 8);
  v4 = *(a1 + 5);
  Inspector::BackendDispatcher::sendResponse();
  result = v6;
  v6 = 0;
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

void sub_273CB5A44(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, _DWORD *a10)
{
  if (a10)
  {
    Inspector::toJSONObjectArray(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t Inspector::ObjCInspectorNetworkBackendDispatcher::loadResource(Inspector::ObjCInspectorNetworkBackendDispatcher *this, uint64_t a2, atomic_uint **a3, atomic_uint **a4)
{
  v8 = *(this + 2);
  if (objc_opt_respondsToSelector())
  {
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = ___ZN9Inspector37ObjCInspectorNetworkBackendDispatcher12loadResourceElRKN3WTF6StringES4__block_invoke;
    v24[3] = &__block_descriptor_48_e18_v16__0__NSString_8l;
    v24[4] = this;
    v24[5] = a2;
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = ___ZN9Inspector37ObjCInspectorNetworkBackendDispatcher12loadResourceElRKN3WTF6StringES4__block_invoke_2;
    v23[3] = &__block_descriptor_48_e34_v28__0__NSString_8__NSString_16i24l;
    v23[4] = this;
    v23[5] = a2;
    v9 = *a3;
    if (*a3)
    {
      atomic_fetch_add_explicit(v9, 2u, memory_order_relaxed);
      MEMORY[0x2743DB4B0](&v25, v9);
      if (atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v9, v10);
      }
    }

    else
    {
      v25 = &stru_2882B1C88;
      v21 = &stru_2882B1C88;
    }

    v11 = v25;
    v25 = 0;
    if (v11)
    {
      v12 = v11;
      v13 = v25;
      v25 = 0;
      if (v13)
      {
      }
    }

    v14 = *a4;
    if (v14)
    {
      atomic_fetch_add_explicit(v14, 2u, memory_order_relaxed);
      MEMORY[0x2743DB4B0](&v25, v14);
      if (atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v14, v15);
      }
    }

    else
    {
      v25 = &stru_2882B1C88;
      v22 = &stru_2882B1C88;
    }

    v16 = v25;
    v25 = 0;
    if (v16)
    {
      v17 = v16;
      v18 = v25;
      v25 = 0;
      if (v18)
      {
      }
    }

    return [*(this + 2) loadResourceWithErrorCallback:v24 successCallback:v23 frameId:v11 url:v16];
  }

  else
  {
    v20 = *(this + 1);
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    Inspector::BackendDispatcher::reportProtocolError();
    return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v25);
  }
}

void sub_273CB5C68(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 40);
  *(v1 - 40) = 0;
  if (v3)
  {
  }

  _Unwind_Resume(exception_object);
}

uint64_t ___ZN9Inspector37ObjCInspectorNetworkBackendDispatcher12loadResourceElRKN3WTF6StringES4__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(*(a1 + 32) + 8);
  MEMORY[0x2743DB520](&v4);
  Inspector::BackendDispatcher::reportProtocolError();
  return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v4);
}

void sub_273CB5D48(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10)
{
  if (a10)
  {
    if (atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a10, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

_DWORD *___ZN9Inspector37ObjCInspectorNetworkBackendDispatcher12loadResourceElRKN3WTF6StringES4__block_invoke_2(WTF::JSONImpl::Object *a1, uint64_t a2, uint64_t a3, WTF::JSONImpl::Value *a4)
{
  v8 = *(a1 + 4);
  WTF::JSONImpl::Object::create(&v18, a1);
  if (!a2)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"required parameter '%@' cannot be nil", @"content"}];
  }

  if (!a3)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"required parameter '%@' cannot be nil", @"mimeType"}];
  }

  v9 = v18;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v17 = v19;
  MEMORY[0x2743DB520](&v16, a2);
  WTF::JSONImpl::ObjectBase::setString(v9, &v17, &v16);
  ___ZN9Inspector33ObjCInspectorCSSBackendDispatcher17getStyleSheetTextElRKN3WTF6StringE_block_invoke_2_cold_1(&v16);
  v10 = v18;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v17 = v19;
  MEMORY[0x2743DB520](&v15, a3);
  WTF::JSONImpl::ObjectBase::setString(v10, &v17, &v15);
  ___ZN9Inspector33ObjCInspectorCSSBackendDispatcher17getStyleSheetTextElRKN3WTF6StringE_block_invoke_2_cold_1(&v15);
  v11 = v18;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v17 = v19;
  WTF::JSONImpl::ObjectBase::setInteger(v11, &v17, a4);
  Inspector::ObjCInspectorCSSBackendDispatcher::setLayoutContextTypeChangedMode(&v17);
  v12 = *(v8 + 8);
  v13 = *(a1 + 5);
  Inspector::BackendDispatcher::sendResponse();
  return ___ZN9Inspector33ObjCInspectorCSSBackendDispatcher23getComputedStyleForNodeEli_block_invoke_2_cold_3(&v18);
}

void sub_273CB5F08(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, WTF::StringImpl *a11, WTF::StringImpl *a12, _DWORD *a13)
{
  if (a12 && atomic_fetch_add_explicit(a12, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a12, a2);
  }

  if (a13)
  {
    Inspector::toJSONObjectArray(a13);
  }

  _Unwind_Resume(exception_object);
}

uint64_t Inspector::ObjCInspectorNetworkBackendDispatcher::getSerializedCertificate(Inspector::ObjCInspectorNetworkBackendDispatcher *this, uint64_t a2, atomic_uint **a3)
{
  v6 = *(this + 2);
  if (objc_opt_respondsToSelector())
  {
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = ___ZN9Inspector37ObjCInspectorNetworkBackendDispatcher24getSerializedCertificateElRKN3WTF6StringE_block_invoke;
    v16[3] = &__block_descriptor_48_e18_v16__0__NSString_8l;
    v16[4] = this;
    v16[5] = a2;
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = ___ZN9Inspector37ObjCInspectorNetworkBackendDispatcher24getSerializedCertificateElRKN3WTF6StringE_block_invoke_2;
    v15[3] = &__block_descriptor_48_e18_v16__0__NSString_8l;
    v15[4] = this;
    v15[5] = a2;
    v7 = *a3;
    if (*a3)
    {
      atomic_fetch_add_explicit(v7, 2u, memory_order_relaxed);
      MEMORY[0x2743DB4B0](&v17, v7);
      if (atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v7, v8);
      }
    }

    else
    {
      v17 = &stru_2882B1C88;
      v14 = &stru_2882B1C88;
    }

    v9 = v17;
    v17 = 0;
    if (v9)
    {
      v10 = v9;
      v11 = v17;
      v17 = 0;
      if (v11)
      {
      }
    }

    return [*(this + 2) getSerializedCertificateWithErrorCallback:v16 successCallback:v15 requestId:v9];
  }

  else
  {
    v13 = *(this + 1);
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    Inspector::BackendDispatcher::reportProtocolError();
    return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v17);
  }
}

void sub_273CB6128(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 40);
  *(v1 - 40) = 0;
  if (v3)
  {
  }

  _Unwind_Resume(exception_object);
}

uint64_t ___ZN9Inspector37ObjCInspectorNetworkBackendDispatcher24getSerializedCertificateElRKN3WTF6StringE_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(*(a1 + 32) + 8);
  MEMORY[0x2743DB520](&v4);
  Inspector::BackendDispatcher::reportProtocolError();
  return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v4);
}

void sub_273CB61E8(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10)
{
  if (a10)
  {
    if (atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a10, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

_DWORD *___ZN9Inspector37ObjCInspectorNetworkBackendDispatcher24getSerializedCertificateElRKN3WTF6StringE_block_invoke_2(WTF::JSONImpl::Object *a1, uint64_t a2)
{
  v4 = *(a1 + 4);
  WTF::JSONImpl::Object::create(&v10, a1);
  if (!a2)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"required parameter '%@' cannot be nil", @"serializedCertificate"}];
  }

  v5 = v10;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v9 = v11;
  MEMORY[0x2743DB520](&v11, a2);
  WTF::JSONImpl::ObjectBase::setString(v5, &v9, &v11);
  ___ZN9Inspector33ObjCInspectorCSSBackendDispatcher17getStyleSheetTextElRKN3WTF6StringE_block_invoke_2_cold_1(&v11);
  v6 = *(v4 + 8);
  v7 = *(a1 + 5);
  Inspector::BackendDispatcher::sendResponse();
  return ___ZN9Inspector33ObjCInspectorCSSBackendDispatcher23getComputedStyleForNodeEli_block_invoke_2_cold_3(&v10);
}

void sub_273CB62E8(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10, _DWORD *a11, WTF::StringImpl *a12)
{
  if (a12 && atomic_fetch_add_explicit(a12, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a12, a2);
  }

  if (a10 && atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a10, a2);
  }

  if (a11)
  {
    Inspector::toJSONObjectArray(a11);
  }

  _Unwind_Resume(exception_object);
}

uint64_t Inspector::ObjCInspectorNetworkBackendDispatcher::resolveWebSocket(Inspector::ObjCInspectorNetworkBackendDispatcher *this, uint64_t a2, atomic_uint **a3, atomic_uint **a4)
{
  v8 = *(this + 2);
  if (objc_opt_respondsToSelector())
  {
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = ___ZN9Inspector37ObjCInspectorNetworkBackendDispatcher16resolveWebSocketElRKN3WTF6StringES4__block_invoke;
    v25[3] = &__block_descriptor_48_e18_v16__0__NSString_8l;
    v25[4] = this;
    v25[5] = a2;
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = ___ZN9Inspector37ObjCInspectorNetworkBackendDispatcher16resolveWebSocketElRKN3WTF6StringES4__block_invoke_2;
    v24[3] = &__block_descriptor_48_e40_v16__0__RWIProtocolRuntimeRemoteObject_8l;
    v24[4] = this;
    v24[5] = a2;
    v9 = *a3;
    if (*a3)
    {
      atomic_fetch_add_explicit(v9, 2u, memory_order_relaxed);
      MEMORY[0x2743DB4B0](&v26, v9);
      if (atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v9, v10);
      }
    }

    else
    {
      v26 = &stru_2882B1C88;
      v22 = &stru_2882B1C88;
    }

    v11 = v26;
    v26 = 0;
    if (v11)
    {
      v12 = v11;
      v13 = v26;
      v26 = 0;
      if (v13)
      {
      }
    }

    v26 = 0;
    v14 = *a4;
    if (*a4)
    {
      atomic_fetch_add_explicit(v14, 2u, memory_order_relaxed);
      MEMORY[0x2743DB4B0](&v23, v14);
      if (atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v14, v15);
      }

      v16 = v23;
      v23 = 0;
      if (v16)
      {
        v17 = v16;
        v18 = v23;
        v26 = v16;
        v23 = 0;
        if (v18)
        {
        }
      }

      else
      {
        v26 = 0;
      }

      if (*a4)
      {
        v19 = &v26;
      }

      else
      {
        v19 = 0;
      }
    }

    else
    {
      v19 = 0;
    }

    return [*(this + 2) resolveWebSocketWithErrorCallback:v25 successCallback:v24 requestId:v11 objectGroup:{v19, v23}];
  }

  else
  {
    v21 = *(this + 1);
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    Inspector::BackendDispatcher::reportProtocolError();
    return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v26);
  }
}

void sub_273CB6570(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9)
{
  if (a9)
  {
  }

  _Unwind_Resume(exception_object);
}

uint64_t ___ZN9Inspector37ObjCInspectorNetworkBackendDispatcher16resolveWebSocketElRKN3WTF6StringES4__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(*(a1 + 32) + 8);
  MEMORY[0x2743DB520](&v4);
  Inspector::BackendDispatcher::reportProtocolError();
  return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v4);
}

void sub_273CB6660(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10)
{
  if (a10)
  {
    if (atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a10, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

_DWORD *___ZN9Inspector37ObjCInspectorNetworkBackendDispatcher16resolveWebSocketElRKN3WTF6StringES4__block_invoke_2(WTF::JSONImpl::Object *a1, void *a2)
{
  v4 = *(a1 + 4);
  WTF::JSONImpl::Object::create(&v20, a1);
  if (!a2)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"required parameter '%@' cannot be nil", @"object"}];
  }

  v5 = v20;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v19 = v21;
  if (a2)
  {
    [a2 toJSONObject];
    v6 = v17;
  }

  else
  {
    v6 = 0;
  }

  v18 = v6;
  WTF::HashMap<WTF::String,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::inlineSet<WTF::String const&,WTF::Ref<WTF::JSONImpl::ObjectBase,WTF::RawPtrTraits<WTF::JSONImpl::ObjectBase>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::ObjectBase>>>(v5 + 2, &v19, &v18, &v21);
  if (v22 == 1)
  {
    v8 = *(v5 + 9);
    if (v8 == *(v5 + 8))
    {
      WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WTF::String const&>((v5 + 3), &v19);
    }

    else
    {
      v9 = v5[3];
      v10 = v19;
      if (v19)
      {
        atomic_fetch_add_explicit(v19, 2u, memory_order_relaxed);
      }

      v11 = *(v5 + 9);
      *(v9 + 8 * v8) = v10;
      *(v5 + 9) = v11 + 1;
    }
  }

  v12 = v18;
  v18 = 0;
  if (v12)
  {
    Inspector::toJSONObjectArray(v12);
  }

  v13 = v19;
  v19 = 0;
  if (v13 && atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v13, v7);
  }

  v14 = *(v4 + 8);
  v15 = *(a1 + 5);
  Inspector::BackendDispatcher::sendResponse();
  return ___ZN9Inspector33ObjCInspectorCSSBackendDispatcher23getComputedStyleForNodeEli_block_invoke_2_cold_3(&v20);
}

void sub_273CB6814(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, WTF::StringImpl *a12, _DWORD *a13)
{
  if (a12 && atomic_fetch_add_explicit(a12, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a12, a2);
  }

  if (a13)
  {
    Inspector::toJSONObjectArray(a13);
  }

  _Unwind_Resume(exception_object);
}

uint64_t Inspector::ObjCInspectorNetworkBackendDispatcher::setInterceptionEnabled(Inspector::ObjCInspectorNetworkBackendDispatcher *this, uint64_t a2, uint64_t a3)
{
  v6 = *(this + 2);
  if (objc_opt_respondsToSelector())
  {
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = ___ZN9Inspector37ObjCInspectorNetworkBackendDispatcher22setInterceptionEnabledElb_block_invoke;
    v10[3] = &__block_descriptor_48_e18_v16__0__NSString_8l;
    v10[4] = this;
    v10[5] = a2;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = ___ZN9Inspector37ObjCInspectorNetworkBackendDispatcher22setInterceptionEnabledElb_block_invoke_2;
    v9[3] = &__block_descriptor_48_e5_v8__0l;
    v9[4] = this;
    v9[5] = a2;
    return [*(this + 2) setInterceptionEnabledWithErrorCallback:v10 successCallback:v9 enabled:a3];
  }

  else
  {
    v8 = *(this + 1);
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    Inspector::BackendDispatcher::reportProtocolError();
    return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v11);
  }
}

void sub_273CB69C0(_Unwind_Exception *exception_object, WTF::StringImpl *a2)
{
  v4 = *(v2 - 40);
  *(v2 - 40) = 0;
  if (v4)
  {
    if (atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v4, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t ___ZN9Inspector37ObjCInspectorNetworkBackendDispatcher22setInterceptionEnabledElb_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(*(a1 + 32) + 8);
  MEMORY[0x2743DB520](&v4);
  Inspector::BackendDispatcher::reportProtocolError();
  return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v4);
}

void sub_273CB6A4C(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10)
{
  if (a10)
  {
    if (atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a10, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

_DWORD *___ZN9Inspector37ObjCInspectorNetworkBackendDispatcher22setInterceptionEnabledElb_block_invoke_2(WTF::JSONImpl::Object *a1)
{
  v2 = *(a1 + 4);
  WTF::JSONImpl::Object::create(&v6, a1);
  v3 = *(v2 + 8);
  v4 = *(a1 + 5);
  Inspector::BackendDispatcher::sendResponse();
  result = v6;
  v6 = 0;
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

void sub_273CB6AE4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, _DWORD *a10)
{
  if (a10)
  {
    Inspector::toJSONObjectArray(a10);
  }

  _Unwind_Resume(exception_object);
}

atomic_uint *Inspector::ObjCInspectorNetworkBackendDispatcher::addInterception(uint64_t a1, uint64_t a2, atomic_uint **a3, uint64_t *a4, _BYTE *a5, char *a6)
{
  v12 = *(a1 + 16);
  if (objc_opt_respondsToSelector())
  {
    v33[0] = MEMORY[0x277D85DD0];
    v33[1] = 3221225472;
    v33[2] = ___ZN9Inspector37ObjCInspectorNetworkBackendDispatcher15addInterceptionElRKN3WTF6StringES4_ONSt3__18optionalIbEES8__block_invoke;
    v33[3] = &__block_descriptor_48_e18_v16__0__NSString_8l;
    v33[4] = a1;
    v33[5] = a2;
    v32[0] = MEMORY[0x277D85DD0];
    v32[1] = 3221225472;
    v32[2] = ___ZN9Inspector37ObjCInspectorNetworkBackendDispatcher15addInterceptionElRKN3WTF6StringES4_ONSt3__18optionalIbEES8__block_invoke_2;
    v32[3] = &__block_descriptor_48_e5_v8__0l;
    v32[4] = a1;
    v32[5] = a2;
    v13 = *a3;
    if (*a3)
    {
      atomic_fetch_add_explicit(v13, 2u, memory_order_relaxed);
      MEMORY[0x2743DB4B0](&v34, v13);
      if (atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v13, v14);
      }
    }

    else
    {
      v34 = &stru_2882B1C88;
      v30 = &stru_2882B1C88;
    }

    v15 = v34;
    v34 = 0;
    if (v15)
    {
      v16 = v15;
      v17 = v34;
      v34 = 0;
      if (v17)
      {
      }
    }

    v18 = *a4;
    if (*a4)
    {
      v19 = *(v18 + 8);
      v20 = *(v18 + 4) | (((*(v18 + 16) >> 2) & 1) << 32);
    }

    else
    {
      v19 = 0;
      v20 = 0x100000000;
    }

    v21 = &qword_279EAA850;
    v22 = 48;
    while ((WTF::operator==(v19, v20, *(v21 - 2), *(v21 - 1)) & 1) == 0)
    {
      v21 += 3;
      v22 -= 24;
      if (!v22)
      {
        v27 = *(a1 + 8);
        WTF::StringImpl::createWithoutCopyingNonEmpty();
        Inspector::BackendDispatcher::reportProtocolError();
        return Inspector::ObjCInspectorCSSBackendDispatcher::setLayoutContextTypeChangedMode(&v34);
      }
    }

    v23 = *v21;
    LOBYTE(v34) = 0;
    v24 = a5[1];
    if (v24 == 1)
    {
      LOBYTE(v34) = *a5;
    }

    v31 = 0;
    if (a6[1] == 1)
    {
      v31 = *a6;
      v25 = &v31;
    }

    else
    {
      v25 = 0;
    }

    if (v24)
    {
      v26 = &v34;
    }

    else
    {
      v26 = 0;
    }

    return [*(a1 + 16) addInterceptionWithErrorCallback:v33 successCallback:v32 url:v15 stage:v23 caseSensitive:v26 isRegex:v25];
  }

  else
  {
    v29 = *(a1 + 8);
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    Inspector::BackendDispatcher::reportProtocolError();
    return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v34);
  }
}

void sub_273CB6D8C(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 72);
  *(v1 - 72) = 0;
  if (v3)
  {
  }

  _Unwind_Resume(exception_object);
}

uint64_t ___ZN9Inspector37ObjCInspectorNetworkBackendDispatcher15addInterceptionElRKN3WTF6StringES4_ONSt3__18optionalIbEES8__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(*(a1 + 32) + 8);
  MEMORY[0x2743DB520](&v4);
  Inspector::BackendDispatcher::reportProtocolError();
  return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v4);
}

void sub_273CB6E50(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10)
{
  if (a10)
  {
    if (atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a10, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

_DWORD *___ZN9Inspector37ObjCInspectorNetworkBackendDispatcher15addInterceptionElRKN3WTF6StringES4_ONSt3__18optionalIbEES8__block_invoke_2(WTF::JSONImpl::Object *a1)
{
  v2 = *(a1 + 4);
  WTF::JSONImpl::Object::create(&v6, a1);
  v3 = *(v2 + 8);
  v4 = *(a1 + 5);
  Inspector::BackendDispatcher::sendResponse();
  result = v6;
  v6 = 0;
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

void sub_273CB6EE8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, _DWORD *a10)
{
  if (a10)
  {
    Inspector::toJSONObjectArray(a10);
  }

  _Unwind_Resume(exception_object);
}

atomic_uint *Inspector::ObjCInspectorNetworkBackendDispatcher::removeInterception(uint64_t a1, uint64_t a2, atomic_uint **a3, uint64_t *a4, _BYTE *a5, char *a6)
{
  v12 = *(a1 + 16);
  if (objc_opt_respondsToSelector())
  {
    v33[0] = MEMORY[0x277D85DD0];
    v33[1] = 3221225472;
    v33[2] = ___ZN9Inspector37ObjCInspectorNetworkBackendDispatcher18removeInterceptionElRKN3WTF6StringES4_ONSt3__18optionalIbEES8__block_invoke;
    v33[3] = &__block_descriptor_48_e18_v16__0__NSString_8l;
    v33[4] = a1;
    v33[5] = a2;
    v32[0] = MEMORY[0x277D85DD0];
    v32[1] = 3221225472;
    v32[2] = ___ZN9Inspector37ObjCInspectorNetworkBackendDispatcher18removeInterceptionElRKN3WTF6StringES4_ONSt3__18optionalIbEES8__block_invoke_2;
    v32[3] = &__block_descriptor_48_e5_v8__0l;
    v32[4] = a1;
    v32[5] = a2;
    v13 = *a3;
    if (*a3)
    {
      atomic_fetch_add_explicit(v13, 2u, memory_order_relaxed);
      MEMORY[0x2743DB4B0](&v34, v13);
      if (atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v13, v14);
      }
    }

    else
    {
      v34 = &stru_2882B1C88;
      v30 = &stru_2882B1C88;
    }

    v15 = v34;
    v34 = 0;
    if (v15)
    {
      v16 = v15;
      v17 = v34;
      v34 = 0;
      if (v17)
      {
      }
    }

    v18 = *a4;
    if (*a4)
    {
      v19 = *(v18 + 8);
      v20 = *(v18 + 4) | (((*(v18 + 16) >> 2) & 1) << 32);
    }

    else
    {
      v19 = 0;
      v20 = 0x100000000;
    }

    v21 = &qword_279EAA850;
    v22 = 48;
    while ((WTF::operator==(v19, v20, *(v21 - 2), *(v21 - 1)) & 1) == 0)
    {
      v21 += 3;
      v22 -= 24;
      if (!v22)
      {
        v27 = *(a1 + 8);
        WTF::StringImpl::createWithoutCopyingNonEmpty();
        Inspector::BackendDispatcher::reportProtocolError();
        return Inspector::ObjCInspectorCSSBackendDispatcher::setLayoutContextTypeChangedMode(&v34);
      }
    }

    v23 = *v21;
    LOBYTE(v34) = 0;
    v24 = a5[1];
    if (v24 == 1)
    {
      LOBYTE(v34) = *a5;
    }

    v31 = 0;
    if (a6[1] == 1)
    {
      v31 = *a6;
      v25 = &v31;
    }

    else
    {
      v25 = 0;
    }

    if (v24)
    {
      v26 = &v34;
    }

    else
    {
      v26 = 0;
    }

    return [*(a1 + 16) removeInterceptionWithErrorCallback:v33 successCallback:v32 url:v15 stage:v23 caseSensitive:v26 isRegex:v25];
  }

  else
  {
    v29 = *(a1 + 8);
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    Inspector::BackendDispatcher::reportProtocolError();
    return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v34);
  }
}

void sub_273CB7190(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 72);
  *(v1 - 72) = 0;
  if (v3)
  {
  }

  _Unwind_Resume(exception_object);
}

uint64_t ___ZN9Inspector37ObjCInspectorNetworkBackendDispatcher18removeInterceptionElRKN3WTF6StringES4_ONSt3__18optionalIbEES8__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(*(a1 + 32) + 8);
  MEMORY[0x2743DB520](&v4);
  Inspector::BackendDispatcher::reportProtocolError();
  return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v4);
}

void sub_273CB7254(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10)
{
  if (a10)
  {
    if (atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a10, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

_DWORD *___ZN9Inspector37ObjCInspectorNetworkBackendDispatcher18removeInterceptionElRKN3WTF6StringES4_ONSt3__18optionalIbEES8__block_invoke_2(WTF::JSONImpl::Object *a1)
{
  v2 = *(a1 + 4);
  WTF::JSONImpl::Object::create(&v6, a1);
  v3 = *(v2 + 8);
  v4 = *(a1 + 5);
  Inspector::BackendDispatcher::sendResponse();
  result = v6;
  v6 = 0;
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

void sub_273CB72EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, _DWORD *a10)
{
  if (a10)
  {
    Inspector::toJSONObjectArray(a10);
  }

  _Unwind_Resume(exception_object);
}

atomic_uint *Inspector::ObjCInspectorNetworkBackendDispatcher::interceptContinue(Inspector::ObjCInspectorNetworkBackendDispatcher *this, uint64_t a2, atomic_uint **a3, const WTF::String *a4)
{
  v8 = *(this + 2);
  if (objc_opt_respondsToSelector())
  {
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = ___ZN9Inspector37ObjCInspectorNetworkBackendDispatcher17interceptContinueElRKN3WTF6StringES4__block_invoke;
    v24[3] = &__block_descriptor_48_e18_v16__0__NSString_8l;
    v24[4] = this;
    v24[5] = a2;
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = ___ZN9Inspector37ObjCInspectorNetworkBackendDispatcher17interceptContinueElRKN3WTF6StringES4__block_invoke_2;
    v23[3] = &__block_descriptor_48_e5_v8__0l;
    v23[4] = this;
    v23[5] = a2;
    v9 = *a3;
    if (*a3)
    {
      atomic_fetch_add_explicit(v9, 2u, memory_order_relaxed);
      MEMORY[0x2743DB4B0](&v25, v9);
      if (atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v9, v10);
      }
    }

    else
    {
      v25 = &stru_2882B1C88;
      v22 = &stru_2882B1C88;
    }

    v11 = v25;
    v25 = 0;
    if (v11)
    {
      v12 = v11;
      v13 = v25;
      v25 = 0;
      if (v13)
      {
      }
    }

    v14 = *a4;
    if (*a4)
    {
      v15 = *(v14 + 8);
      v16 = *(v14 + 4) | (((*(v14 + 16) >> 2) & 1) << 32);
    }

    else
    {
      v15 = 0;
      v16 = 0x100000000;
    }

    v17 = &qword_279EAA850;
    v18 = 48;
    while ((WTF::operator==(v15, v16, *(v17 - 2), *(v17 - 1)) & 1) == 0)
    {
      v17 += 3;
      v18 -= 24;
      if (!v18)
      {
        v19 = *(this + 1);
        WTF::StringImpl::createWithoutCopyingNonEmpty();
        Inspector::BackendDispatcher::reportProtocolError();
        return Inspector::ObjCInspectorCSSBackendDispatcher::setLayoutContextTypeChangedMode(&v25);
      }
    }

    return [*(this + 2) interceptContinueWithErrorCallback:v24 successCallback:v23 requestId:v11 stage:*v17];
  }

  else
  {
    v21 = *(this + 1);
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    Inspector::BackendDispatcher::reportProtocolError();
    return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v25);
  }
}

void sub_273CB753C(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 56);
  *(v1 - 56) = 0;
  if (v3)
  {
  }

  _Unwind_Resume(exception_object);
}

uint64_t ___ZN9Inspector37ObjCInspectorNetworkBackendDispatcher17interceptContinueElRKN3WTF6StringES4__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(*(a1 + 32) + 8);
  MEMORY[0x2743DB520](&v4);
  Inspector::BackendDispatcher::reportProtocolError();
  return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v4);
}

void sub_273CB7600(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10)
{
  if (a10)
  {
    if (atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a10, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

_DWORD *___ZN9Inspector37ObjCInspectorNetworkBackendDispatcher17interceptContinueElRKN3WTF6StringES4__block_invoke_2(WTF::JSONImpl::Object *a1)
{
  v2 = *(a1 + 4);
  WTF::JSONImpl::Object::create(&v6, a1);
  v3 = *(v2 + 8);
  v4 = *(a1 + 5);
  Inspector::BackendDispatcher::sendResponse();
  result = v6;
  v6 = 0;
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

void sub_273CB7698(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, _DWORD *a10)
{
  if (a10)
  {
    Inspector::toJSONObjectArray(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t Inspector::ObjCInspectorNetworkBackendDispatcher::interceptWithRequest(uint64_t a1, uint64_t a2, atomic_uint **a3, atomic_uint **a4, atomic_uint **a5, void *a6, atomic_uint **a7)
{
  v14 = *(a1 + 16);
  if (objc_opt_respondsToSelector())
  {
    v52[0] = MEMORY[0x277D85DD0];
    v52[1] = 3221225472;
    v52[2] = ___ZN9Inspector37ObjCInspectorNetworkBackendDispatcher20interceptWithRequestElRKN3WTF6StringES4_S4_ONS1_6RefPtrINS1_8JSONImpl6ObjectENS1_12RawPtrTraitsIS7_EENS1_21DefaultRefDerefTraitsIS7_EEEES4__block_invoke;
    v52[3] = &__block_descriptor_48_e18_v16__0__NSString_8l;
    v52[4] = a1;
    v52[5] = a2;
    v51[0] = MEMORY[0x277D85DD0];
    v51[1] = 3221225472;
    v51[2] = ___ZN9Inspector37ObjCInspectorNetworkBackendDispatcher20interceptWithRequestElRKN3WTF6StringES4_S4_ONS1_6RefPtrINS1_8JSONImpl6ObjectENS1_12RawPtrTraitsIS7_EENS1_21DefaultRefDerefTraitsIS7_EEEES4__block_invoke_2;
    v51[3] = &__block_descriptor_48_e5_v8__0l;
    v51[4] = a1;
    v51[5] = a2;
    v15 = *a3;
    if (*a3)
    {
      atomic_fetch_add_explicit(v15, 2u, memory_order_relaxed);
      MEMORY[0x2743DB4B0](&v53, v15);
      if (atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v15, v16);
      }
    }

    else
    {
      v53 = &stru_2882B1C88;
      v46 = &stru_2882B1C88;
    }

    v17 = v53;
    v53 = 0;
    if (v17)
    {
      v18 = v17;
      v19 = v53;
      v53 = 0;
      if (v19)
      {
      }
    }

    v53 = 0;
    v20 = *a4;
    if (*a4)
    {
      atomic_fetch_add_explicit(v20, 2u, memory_order_relaxed);
      MEMORY[0x2743DB4B0](&v50, v20);
      if (atomic_fetch_add_explicit(v20, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v20, v21);
      }

      v22 = v50;
      v50 = 0;
      if (v22)
      {
        v23 = v22;
        v24 = v50;
        v53 = v22;
        v50 = 0;
        if (v24)
        {
        }
      }

      else
      {
        v53 = 0;
      }
    }

    v50 = 0;
    v25 = *a5;
    if (*a5)
    {
      atomic_fetch_add_explicit(v25, 2u, memory_order_relaxed);
      MEMORY[0x2743DB4B0](&v49, v25);
      if (atomic_fetch_add_explicit(v25, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v25, v26);
      }

      v27 = v49;
      v49 = 0;
      if (v27)
      {
        v28 = v27;
        v29 = v49;
        v49 = 0;
        v50 = v27;
        if (v29)
        {
        }
      }

      else
      {
        v50 = 0;
      }
    }

    v49 = 0;
    if (*a6)
    {
      v30 = [RWIProtocolNetworkHeaders alloc];
      v48 = *a6;
      *a6 = 0;
      v31 = [(RWIProtocolJSONObject *)v30 initWithJSONObject:&v48];
      v32 = v31;
      if (v31)
      {
        v33 = v31;
      }

      v34 = v48;
      v48 = 0;
      v49 = v32;
      if (v34)
      {
        if (*v34 == 1)
        {
          WTF::JSONImpl::Value::operator delete();
        }

        else
        {
          --*v34;
        }
      }
    }

    v48 = 0;
    v35 = *a7;
    if (*a7)
    {
      atomic_fetch_add_explicit(v35, 2u, memory_order_relaxed);
      MEMORY[0x2743DB4B0](&v47, v35);
      if (atomic_fetch_add_explicit(v35, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v35, v36);
      }

      v37 = v47;
      v47 = 0;
      if (v37)
      {
        v38 = v37;
        v39 = v47;
        v47 = 0;
        v48 = v37;
        if (v39)
        {
        }
      }

      else
      {
        v48 = 0;
      }

      v40 = &v48;
      if (!*a7)
      {
        v40 = 0;
      }
    }

    else
    {
      v40 = 0;
    }

    if (*a4)
    {
      v41 = &v53;
    }

    else
    {
      v41 = 0;
    }

    if (*a5)
    {
      v42 = &v50;
    }

    else
    {
      v42 = 0;
    }

    if (*a6)
    {
      v43 = &v49;
    }

    else
    {
      v43 = 0;
    }

    return [*(a1 + 16) interceptWithRequestWithErrorCallback:v52 successCallback:v51 requestId:v17 url:v41 method:v42 headers:v43 postData:{v40, v47, v48, v49, v50}];
  }

  else
  {
    v45 = *(a1 + 8);
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    Inspector::BackendDispatcher::reportProtocolError();
    return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v53);
  }
}

void sub_273CB7A44(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

uint64_t ___ZN9Inspector37ObjCInspectorNetworkBackendDispatcher20interceptWithRequestElRKN3WTF6StringES4_S4_ONS1_6RefPtrINS1_8JSONImpl6ObjectENS1_12RawPtrTraitsIS7_EENS1_21DefaultRefDerefTraitsIS7_EEEES4__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(*(a1 + 32) + 8);
  MEMORY[0x2743DB520](&v4);
  Inspector::BackendDispatcher::reportProtocolError();
  return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v4);
}

void sub_273CB7B80(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10)
{
  if (a10)
  {
    if (atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a10, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

_DWORD *___ZN9Inspector37ObjCInspectorNetworkBackendDispatcher20interceptWithRequestElRKN3WTF6StringES4_S4_ONS1_6RefPtrINS1_8JSONImpl6ObjectENS1_12RawPtrTraitsIS7_EENS1_21DefaultRefDerefTraitsIS7_EEEES4__block_invoke_2(WTF::JSONImpl::Object *a1)
{
  v2 = *(a1 + 4);
  WTF::JSONImpl::Object::create(&v6, a1);
  v3 = *(v2 + 8);
  v4 = *(a1 + 5);
  Inspector::BackendDispatcher::sendResponse();
  result = v6;
  v6 = 0;
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

void sub_273CB7C18(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, _DWORD *a10)
{
  if (a10)
  {
    Inspector::toJSONObjectArray(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t Inspector::ObjCInspectorNetworkBackendDispatcher::interceptWithResponse(uint64_t a1, uint64_t a2, atomic_uint **a3, atomic_uint **a4, uint64_t a5, atomic_uint **a6, int *a7, atomic_uint **a8, id **a9)
{
  v17 = *(a1 + 16);
  if (objc_opt_respondsToSelector())
  {
    v56[0] = MEMORY[0x277D85DD0];
    v56[1] = 3221225472;
    v56[2] = ___ZN9Inspector37ObjCInspectorNetworkBackendDispatcher21interceptWithResponseElRKN3WTF6StringES4_bS4_ONSt3__18optionalIiEES4_ONS1_6RefPtrINS1_8JSONImpl6ObjectENS1_12RawPtrTraitsISB_EENS1_21DefaultRefDerefTraitsISB_EEEE_block_invoke;
    v56[3] = &__block_descriptor_48_e18_v16__0__NSString_8l;
    v56[4] = a1;
    v56[5] = a2;
    v55[0] = MEMORY[0x277D85DD0];
    v55[1] = 3221225472;
    v55[2] = ___ZN9Inspector37ObjCInspectorNetworkBackendDispatcher21interceptWithResponseElRKN3WTF6StringES4_bS4_ONSt3__18optionalIiEES4_ONS1_6RefPtrINS1_8JSONImpl6ObjectENS1_12RawPtrTraitsISB_EENS1_21DefaultRefDerefTraitsISB_EEEE_block_invoke_2;
    v55[3] = &__block_descriptor_48_e5_v8__0l;
    v55[4] = a1;
    v55[5] = a2;
    v18 = *a3;
    if (*a3)
    {
      atomic_fetch_add_explicit(v18, 2u, memory_order_relaxed);
      MEMORY[0x2743DB4B0](&v57, v18);
      if (atomic_fetch_add_explicit(v18, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v18, v19);
      }
    }

    else
    {
      v57 = &stru_2882B1C88;
      v49 = &stru_2882B1C88;
    }

    v20 = v57;
    v57 = 0;
    if (v20)
    {
      v21 = v20;
      v22 = v57;
      v57 = 0;
      if (v22)
      {
      }
    }

    v23 = *a4;
    if (v23)
    {
      atomic_fetch_add_explicit(v23, 2u, memory_order_relaxed);
      MEMORY[0x2743DB4B0](&v57, v23);
      if (atomic_fetch_add_explicit(v23, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v23, v24);
      }
    }

    else
    {
      v57 = &stru_2882B1C88;
      v50 = &stru_2882B1C88;
    }

    v25 = v57;
    v57 = 0;
    if (v25)
    {
      v26 = v25;
      v27 = v57;
      v57 = 0;
      if (v27)
      {
      }
    }

    v57 = 0;
    v28 = *a6;
    if (*a6)
    {
      atomic_fetch_add_explicit(v28, 2u, memory_order_relaxed);
      MEMORY[0x2743DB4B0](&v54, v28);
      if (atomic_fetch_add_explicit(v28, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v28, v29);
      }

      v30 = v54;
      v54 = 0;
      if (v30)
      {
        v31 = v30;
        v32 = v54;
        v57 = v30;
        v54 = 0;
        if (v32)
        {
        }
      }

      else
      {
        v57 = 0;
      }
    }

    v53 = 0;
    if (*(a7 + 4) == 1)
    {
      v53 = *a7;
    }

    v54 = 0;
    v33 = *a8;
    if (*a8)
    {
      atomic_fetch_add_explicit(v33, 2u, memory_order_relaxed);
      MEMORY[0x2743DB4B0](&v52, v33);
      if (atomic_fetch_add_explicit(v33, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v33, v34);
      }

      v35 = v52;
      v52 = 0;
      if (v35)
      {
        v36 = v35;
        v37 = v52;
        v54 = v35;
        v52 = 0;
        if (v37)
        {
        }
      }

      else
      {
        v54 = 0;
      }
    }

    v52 = 0;
    v38 = *a9;
    if (*a9)
    {
      v39 = [RWIProtocolNetworkHeaders alloc];
      v51 = *a9;
      *a9 = 0;
      v40 = [(RWIProtocolJSONObject *)v39 initWithJSONObject:&v51];
      v41 = v40;
      if (v40)
      {
        v42 = v40;
      }

      v43 = v51;
      v51 = 0;
      v52 = v41;
      if (v43)
      {
        if (*v43 == 1)
        {
          WTF::JSONImpl::Value::operator delete();
        }

        else
        {
          --*v43;
        }
      }

      v38 = &v52;
      if (!*a9)
      {
        v38 = 0;
      }
    }

    if (*a6)
    {
      v44 = &v57;
    }

    else
    {
      v44 = 0;
    }

    v45 = &v53;
    if (!*(a7 + 4))
    {
      v45 = 0;
    }

    v46 = &v54;
    if (!*a8)
    {
      v46 = 0;
    }

    return [*(a1 + 16) interceptWithResponseWithErrorCallback:v56 successCallback:v55 requestId:v20 content:v25 base64Encoded:a5 mimeType:v44 status:v45 statusText:v46 headers:{v38, v51, v52}];
  }

  else
  {
    v48 = *(a1 + 8);
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    Inspector::BackendDispatcher::reportProtocolError();
    return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v57);
  }
}

void sub_273CB7FFC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, _DWORD *a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  if (a12)
  {
    Inspector::toJSONObjectArray(a12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ___ZN9Inspector37ObjCInspectorNetworkBackendDispatcher21interceptWithResponseElRKN3WTF6StringES4_bS4_ONSt3__18optionalIiEES4_ONS1_6RefPtrINS1_8JSONImpl6ObjectENS1_12RawPtrTraitsISB_EENS1_21DefaultRefDerefTraitsISB_EEEE_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(*(a1 + 32) + 8);
  MEMORY[0x2743DB520](&v4);
  Inspector::BackendDispatcher::reportProtocolError();
  return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v4);
}

void sub_273CB8140(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10)
{
  if (a10)
  {
    if (atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a10, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

_DWORD *___ZN9Inspector37ObjCInspectorNetworkBackendDispatcher21interceptWithResponseElRKN3WTF6StringES4_bS4_ONSt3__18optionalIiEES4_ONS1_6RefPtrINS1_8JSONImpl6ObjectENS1_12RawPtrTraitsISB_EENS1_21DefaultRefDerefTraitsISB_EEEE_block_invoke_2(WTF::JSONImpl::Object *a1)
{
  v2 = *(a1 + 4);
  WTF::JSONImpl::Object::create(&v6, a1);
  v3 = *(v2 + 8);
  v4 = *(a1 + 5);
  Inspector::BackendDispatcher::sendResponse();
  result = v6;
  v6 = 0;
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

void sub_273CB81D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, _DWORD *a10)
{
  if (a10)
  {
    Inspector::toJSONObjectArray(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t Inspector::ObjCInspectorNetworkBackendDispatcher::interceptRequestWithResponse(uint64_t a1, uint64_t a2, atomic_uint **a3, atomic_uint **a4, uint64_t a5, atomic_uint **a6, int a7, atomic_uint **a8, uint64_t a9)
{
  v17 = *(a1 + 16);
  if (objc_opt_respondsToSelector())
  {
    v49[0] = MEMORY[0x277D85DD0];
    v49[1] = 3221225472;
    v49[2] = ___ZN9Inspector37ObjCInspectorNetworkBackendDispatcher28interceptRequestWithResponseElRKN3WTF6StringES4_bS4_iS4_ONS1_3RefINS1_8JSONImpl6ObjectENS1_12RawPtrTraitsIS7_EENS1_21DefaultRefDerefTraitsIS7_EEEE_block_invoke;
    v49[3] = &__block_descriptor_48_e18_v16__0__NSString_8l;
    v49[4] = a1;
    v49[5] = a2;
    v48[0] = MEMORY[0x277D85DD0];
    v48[1] = 3221225472;
    v48[2] = ___ZN9Inspector37ObjCInspectorNetworkBackendDispatcher28interceptRequestWithResponseElRKN3WTF6StringES4_bS4_iS4_ONS1_3RefINS1_8JSONImpl6ObjectENS1_12RawPtrTraitsIS7_EENS1_21DefaultRefDerefTraitsIS7_EEEE_block_invoke_2;
    v48[3] = &__block_descriptor_48_e5_v8__0l;
    v48[4] = a1;
    v48[5] = a2;
    v18 = *a3;
    if (*a3)
    {
      atomic_fetch_add_explicit(v18, 2u, memory_order_relaxed);
      MEMORY[0x2743DB4B0](&v50, v18);
      if (atomic_fetch_add_explicit(v18, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v18, v19);
      }
    }

    else
    {
      v50 = &stru_2882B1C88;
      v43 = &stru_2882B1C88;
    }

    v20 = v50;
    v50 = 0;
    if (v20)
    {
      v21 = v20;
      v22 = v50;
      v50 = 0;
      if (v22)
      {
      }
    }

    v23 = *a4;
    if (v23)
    {
      atomic_fetch_add_explicit(v23, 2u, memory_order_relaxed);
      MEMORY[0x2743DB4B0](&v50, v23);
      if (atomic_fetch_add_explicit(v23, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v23, v24);
      }
    }

    else
    {
      v50 = &stru_2882B1C88;
      v44 = &stru_2882B1C88;
    }

    v25 = v50;
    v50 = 0;
    if (v25)
    {
      v26 = v25;
      v27 = v50;
      v50 = 0;
      if (v27)
      {
      }
    }

    v28 = *a6;
    if (v28)
    {
      atomic_fetch_add_explicit(v28, 2u, memory_order_relaxed);
      MEMORY[0x2743DB4B0](&v50, v28);
      if (atomic_fetch_add_explicit(v28, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v28, v29);
      }
    }

    else
    {
      v50 = &stru_2882B1C88;
      v45 = &stru_2882B1C88;
    }

    v30 = v50;
    v50 = 0;
    if (v30)
    {
      v31 = v30;
      v32 = v50;
      v50 = 0;
      if (v32)
      {
      }
    }

    v33 = *a8;
    if (v33)
    {
      atomic_fetch_add_explicit(v33, 2u, memory_order_relaxed);
      MEMORY[0x2743DB4B0](&v50, v33);
      if (atomic_fetch_add_explicit(v33, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v33, v34);
      }
    }

    else
    {
      v50 = &stru_2882B1C88;
      v46 = &stru_2882B1C88;
    }

    v35 = v50;
    v50 = 0;
    if (v35)
    {
      v36 = v35;
      v37 = v50;
      v50 = 0;
      if (v37)
      {
      }
    }

    v38 = [(RWIProtocolJSONObject *)[RWIProtocolNetworkHeaders alloc] initWithJSONObject:a9];
    v39 = v38;
    if (v38)
    {
      v40 = v38;
    }

    LODWORD(v47) = a7;
    return [*(a1 + 16) interceptRequestWithResponseWithErrorCallback:v49 successCallback:v48 requestId:v20 content:v25 base64Encoded:a5 mimeType:v30 status:v47 statusText:v35 headers:v39];
  }

  else
  {
    v42 = *(a1 + 8);
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    Inspector::BackendDispatcher::reportProtocolError();
    return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v50);
  }
}

void sub_273CB852C(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 72);
  *(v1 - 72) = 0;
  if (v3)
  {
  }

  _Unwind_Resume(exception_object);
}

uint64_t ___ZN9Inspector37ObjCInspectorNetworkBackendDispatcher28interceptRequestWithResponseElRKN3WTF6StringES4_bS4_iS4_ONS1_3RefINS1_8JSONImpl6ObjectENS1_12RawPtrTraitsIS7_EENS1_21DefaultRefDerefTraitsIS7_EEEE_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(*(a1 + 32) + 8);
  MEMORY[0x2743DB520](&v4);
  Inspector::BackendDispatcher::reportProtocolError();
  return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v4);
}

void sub_273CB864C(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10)
{
  if (a10)
  {
    if (atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a10, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

_DWORD *___ZN9Inspector37ObjCInspectorNetworkBackendDispatcher28interceptRequestWithResponseElRKN3WTF6StringES4_bS4_iS4_ONS1_3RefINS1_8JSONImpl6ObjectENS1_12RawPtrTraitsIS7_EENS1_21DefaultRefDerefTraitsIS7_EEEE_block_invoke_2(WTF::JSONImpl::Object *a1)
{
  v2 = *(a1 + 4);
  WTF::JSONImpl::Object::create(&v6, a1);
  v3 = *(v2 + 8);
  v4 = *(a1 + 5);
  Inspector::BackendDispatcher::sendResponse();
  result = v6;
  v6 = 0;
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

void sub_273CB86E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, _DWORD *a10)
{
  if (a10)
  {
    Inspector::toJSONObjectArray(a10);
  }

  _Unwind_Resume(exception_object);
}

atomic_uint *Inspector::ObjCInspectorNetworkBackendDispatcher::interceptRequestWithError(Inspector::ObjCInspectorNetworkBackendDispatcher *this, uint64_t a2, atomic_uint **a3, const WTF::String *a4)
{
  v8 = *(this + 2);
  if (objc_opt_respondsToSelector())
  {
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = ___ZN9Inspector37ObjCInspectorNetworkBackendDispatcher25interceptRequestWithErrorElRKN3WTF6StringES4__block_invoke;
    v24[3] = &__block_descriptor_48_e18_v16__0__NSString_8l;
    v24[4] = this;
    v24[5] = a2;
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = ___ZN9Inspector37ObjCInspectorNetworkBackendDispatcher25interceptRequestWithErrorElRKN3WTF6StringES4__block_invoke_2;
    v23[3] = &__block_descriptor_48_e5_v8__0l;
    v23[4] = this;
    v23[5] = a2;
    v9 = *a3;
    if (*a3)
    {
      atomic_fetch_add_explicit(v9, 2u, memory_order_relaxed);
      MEMORY[0x2743DB4B0](&v25, v9);
      if (atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v9, v10);
      }
    }

    else
    {
      v25 = &stru_2882B1C88;
      v22 = &stru_2882B1C88;
    }

    v11 = v25;
    v25 = 0;
    if (v11)
    {
      v12 = v11;
      v13 = v25;
      v25 = 0;
      if (v13)
      {
      }
    }

    v14 = *a4;
    if (*a4)
    {
      v15 = *(v14 + 8);
      v16 = *(v14 + 4) | (((*(v14 + 16) >> 2) & 1) << 32);
    }

    else
    {
      v15 = 0;
      v16 = 0x100000000;
    }

    v17 = &qword_279EAA880;
    v18 = 96;
    while ((WTF::operator==(v15, v16, *(v17 - 2), *(v17 - 1)) & 1) == 0)
    {
      v17 += 3;
      v18 -= 24;
      if (!v18)
      {
        v19 = *(this + 1);
        WTF::StringImpl::createWithoutCopyingNonEmpty();
        Inspector::BackendDispatcher::reportProtocolError();
        return Inspector::ObjCInspectorCSSBackendDispatcher::setLayoutContextTypeChangedMode(&v25);
      }
    }

    return [*(this + 2) interceptRequestWithErrorWithErrorCallback:v24 successCallback:v23 requestId:v11 errorType:*v17];
  }

  else
  {
    v21 = *(this + 1);
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    Inspector::BackendDispatcher::reportProtocolError();
    return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v25);
  }
}

void sub_273CB8934(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 56);
  *(v1 - 56) = 0;
  if (v3)
  {
  }

  _Unwind_Resume(exception_object);
}

uint64_t ___ZN9Inspector37ObjCInspectorNetworkBackendDispatcher25interceptRequestWithErrorElRKN3WTF6StringES4__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(*(a1 + 32) + 8);
  MEMORY[0x2743DB520](&v4);
  Inspector::BackendDispatcher::reportProtocolError();
  return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v4);
}

void sub_273CB89F8(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10)
{
  if (a10)
  {
    if (atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a10, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

_DWORD *___ZN9Inspector37ObjCInspectorNetworkBackendDispatcher25interceptRequestWithErrorElRKN3WTF6StringES4__block_invoke_2(WTF::JSONImpl::Object *a1)
{
  v2 = *(a1 + 4);
  WTF::JSONImpl::Object::create(&v6, a1);
  v3 = *(v2 + 8);
  v4 = *(a1 + 5);
  Inspector::BackendDispatcher::sendResponse();
  result = v6;
  v6 = 0;
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

void sub_273CB8A90(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, _DWORD *a10)
{
  if (a10)
  {
    Inspector::toJSONObjectArray(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t Inspector::ObjCInspectorPageBackendDispatcher::enable(Inspector::ObjCInspectorPageBackendDispatcher *this, uint64_t a2)
{
  v4 = *(this + 2);
  if (objc_opt_respondsToSelector())
  {
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = ___ZN9Inspector34ObjCInspectorPageBackendDispatcher6enableEl_block_invoke;
    v8[3] = &__block_descriptor_48_e18_v16__0__NSString_8l;
    v8[4] = this;
    v8[5] = a2;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = ___ZN9Inspector34ObjCInspectorPageBackendDispatcher6enableEl_block_invoke_2;
    v7[3] = &__block_descriptor_48_e5_v8__0l;
    v7[4] = this;
    v7[5] = a2;
    return [*(this + 2) enableWithErrorCallback:v8 successCallback:v7];
  }

  else
  {
    v6 = *(this + 1);
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    Inspector::BackendDispatcher::reportProtocolError();
    return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v9);
  }
}

void sub_273CB8BCC(_Unwind_Exception *exception_object, WTF::StringImpl *a2)
{
  v4 = *(v2 - 40);
  *(v2 - 40) = 0;
  if (v4)
  {
    if (atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v4, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t ___ZN9Inspector34ObjCInspectorPageBackendDispatcher6enableEl_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(*(a1 + 32) + 8);
  MEMORY[0x2743DB520](&v4);
  Inspector::BackendDispatcher::reportProtocolError();
  return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v4);
}

void sub_273CB8C58(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10)
{
  if (a10)
  {
    if (atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a10, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

_DWORD *___ZN9Inspector34ObjCInspectorPageBackendDispatcher6enableEl_block_invoke_2(WTF::JSONImpl::Object *a1)
{
  v2 = *(a1 + 4);
  WTF::JSONImpl::Object::create(&v6, a1);
  v3 = *(v2 + 8);
  v4 = *(a1 + 5);
  Inspector::BackendDispatcher::sendResponse();
  result = v6;
  v6 = 0;
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

void sub_273CB8CF0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, _DWORD *a10)
{
  if (a10)
  {
    Inspector::toJSONObjectArray(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t Inspector::ObjCInspectorPageBackendDispatcher::disable(Inspector::ObjCInspectorPageBackendDispatcher *this, uint64_t a2)
{
  v4 = *(this + 2);
  if (objc_opt_respondsToSelector())
  {
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = ___ZN9Inspector34ObjCInspectorPageBackendDispatcher7disableEl_block_invoke;
    v8[3] = &__block_descriptor_48_e18_v16__0__NSString_8l;
    v8[4] = this;
    v8[5] = a2;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = ___ZN9Inspector34ObjCInspectorPageBackendDispatcher7disableEl_block_invoke_2;
    v7[3] = &__block_descriptor_48_e5_v8__0l;
    v7[4] = this;
    v7[5] = a2;
    return [*(this + 2) disableWithErrorCallback:v8 successCallback:v7];
  }

  else
  {
    v6 = *(this + 1);
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    Inspector::BackendDispatcher::reportProtocolError();
    return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v9);
  }
}

void sub_273CB8E2C(_Unwind_Exception *exception_object, WTF::StringImpl *a2)
{
  v4 = *(v2 - 40);
  *(v2 - 40) = 0;
  if (v4)
  {
    if (atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v4, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t ___ZN9Inspector34ObjCInspectorPageBackendDispatcher7disableEl_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(*(a1 + 32) + 8);
  MEMORY[0x2743DB520](&v4);
  Inspector::BackendDispatcher::reportProtocolError();
  return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v4);
}

void sub_273CB8EB8(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10)
{
  if (a10)
  {
    if (atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a10, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

_DWORD *___ZN9Inspector34ObjCInspectorPageBackendDispatcher7disableEl_block_invoke_2(WTF::JSONImpl::Object *a1)
{
  v2 = *(a1 + 4);
  WTF::JSONImpl::Object::create(&v6, a1);
  v3 = *(v2 + 8);
  v4 = *(a1 + 5);
  Inspector::BackendDispatcher::sendResponse();
  result = v6;
  v6 = 0;
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

void sub_273CB8F50(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, _DWORD *a10)
{
  if (a10)
  {
    Inspector::toJSONObjectArray(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t Inspector::ObjCInspectorPageBackendDispatcher::reload(uint64_t a1, uint64_t a2, _BYTE *a3, char *a4)
{
  v8 = *(a1 + 16);
  if (objc_opt_respondsToSelector())
  {
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = ___ZN9Inspector34ObjCInspectorPageBackendDispatcher6reloadElONSt3__18optionalIbEES4__block_invoke;
    v16[3] = &__block_descriptor_48_e18_v16__0__NSString_8l;
    v16[4] = a1;
    v16[5] = a2;
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = ___ZN9Inspector34ObjCInspectorPageBackendDispatcher6reloadElONSt3__18optionalIbEES4__block_invoke_2;
    v15[3] = &__block_descriptor_48_e5_v8__0l;
    v15[4] = a1;
    v15[5] = a2;
    LOBYTE(v17) = 0;
    v9 = a3[1];
    if (v9 == 1)
    {
      LOBYTE(v17) = *a3;
    }

    v14 = 0;
    if (a4[1] == 1)
    {
      v14 = *a4;
      v10 = &v14;
    }

    else
    {
      v10 = 0;
    }

    if (v9)
    {
      v11 = &v17;
    }

    else
    {
      v11 = 0;
    }

    return [*(a1 + 16) reloadWithErrorCallback:v16 successCallback:v15 ignoreCache:v11 revalidateAllResources:v10];
  }

  else
  {
    v13 = *(a1 + 8);
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    Inspector::BackendDispatcher::reportProtocolError();
    return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v17);
  }
}

void sub_273CB90DC(_Unwind_Exception *exception_object, WTF::StringImpl *a2)
{
  v4 = *(v2 - 40);
  *(v2 - 40) = 0;
  if (v4)
  {
    if (atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v4, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t ___ZN9Inspector34ObjCInspectorPageBackendDispatcher6reloadElONSt3__18optionalIbEES4__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(*(a1 + 32) + 8);
  MEMORY[0x2743DB520](&v4);
  Inspector::BackendDispatcher::reportProtocolError();
  return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v4);
}

void sub_273CB9168(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10)
{
  if (a10)
  {
    if (atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a10, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

_DWORD *___ZN9Inspector34ObjCInspectorPageBackendDispatcher6reloadElONSt3__18optionalIbEES4__block_invoke_2(WTF::JSONImpl::Object *a1)
{
  v2 = *(a1 + 4);
  WTF::JSONImpl::Object::create(&v6, a1);
  v3 = *(v2 + 8);
  v4 = *(a1 + 5);
  Inspector::BackendDispatcher::sendResponse();
  result = v6;
  v6 = 0;
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

void sub_273CB9200(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, _DWORD *a10)
{
  if (a10)
  {
    Inspector::toJSONObjectArray(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t Inspector::ObjCInspectorPageBackendDispatcher::navigate(Inspector::ObjCInspectorPageBackendDispatcher *this, uint64_t a2, atomic_uint **a3)
{
  v6 = *(this + 2);
  if (objc_opt_respondsToSelector())
  {
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = ___ZN9Inspector34ObjCInspectorPageBackendDispatcher8navigateElRKN3WTF6StringE_block_invoke;
    v16[3] = &__block_descriptor_48_e18_v16__0__NSString_8l;
    v16[4] = this;
    v16[5] = a2;
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = ___ZN9Inspector34ObjCInspectorPageBackendDispatcher8navigateElRKN3WTF6StringE_block_invoke_2;
    v15[3] = &__block_descriptor_48_e5_v8__0l;
    v15[4] = this;
    v15[5] = a2;
    v7 = *a3;
    if (*a3)
    {
      atomic_fetch_add_explicit(v7, 2u, memory_order_relaxed);
      MEMORY[0x2743DB4B0](&v17, v7);
      if (atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v7, v8);
      }
    }

    else
    {
      v17 = &stru_2882B1C88;
      v14 = &stru_2882B1C88;
    }

    v9 = v17;
    v17 = 0;
    if (v9)
    {
      v10 = v9;
      v11 = v17;
      v17 = 0;
      if (v11)
      {
      }
    }

    return [*(this + 2) navigateWithErrorCallback:v16 successCallback:v15 url:v9];
  }

  else
  {
    v13 = *(this + 1);
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    Inspector::BackendDispatcher::reportProtocolError();
    return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v17);
  }
}

void sub_273CB93B0(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 40);
  *(v1 - 40) = 0;
  if (v3)
  {
  }

  _Unwind_Resume(exception_object);
}

uint64_t ___ZN9Inspector34ObjCInspectorPageBackendDispatcher8navigateElRKN3WTF6StringE_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(*(a1 + 32) + 8);
  MEMORY[0x2743DB520](&v4);
  Inspector::BackendDispatcher::reportProtocolError();
  return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v4);
}

void sub_273CB9470(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10)
{
  if (a10)
  {
    if (atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a10, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

_DWORD *___ZN9Inspector34ObjCInspectorPageBackendDispatcher8navigateElRKN3WTF6StringE_block_invoke_2(WTF::JSONImpl::Object *a1)
{
  v2 = *(a1 + 4);
  WTF::JSONImpl::Object::create(&v6, a1);
  v3 = *(v2 + 8);
  v4 = *(a1 + 5);
  Inspector::BackendDispatcher::sendResponse();
  result = v6;
  v6 = 0;
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

void sub_273CB9508(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, _DWORD *a10)
{
  if (a10)
  {
    Inspector::toJSONObjectArray(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t Inspector::ObjCInspectorPageBackendDispatcher::overrideUserAgent(Inspector::ObjCInspectorPageBackendDispatcher *this, uint64_t a2, atomic_uint **a3)
{
  v6 = *(this + 2);
  if (objc_opt_respondsToSelector())
  {
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = ___ZN9Inspector34ObjCInspectorPageBackendDispatcher17overrideUserAgentElRKN3WTF6StringE_block_invoke;
    v17[3] = &__block_descriptor_48_e18_v16__0__NSString_8l;
    v17[4] = this;
    v17[5] = a2;
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = ___ZN9Inspector34ObjCInspectorPageBackendDispatcher17overrideUserAgentElRKN3WTF6StringE_block_invoke_2;
    v16[3] = &__block_descriptor_48_e5_v8__0l;
    v16[4] = this;
    v16[5] = a2;
    v18 = 0;
    v7 = *a3;
    if (*a3)
    {
      atomic_fetch_add_explicit(v7, 2u, memory_order_relaxed);
      MEMORY[0x2743DB4B0](&v15, v7);
      if (atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v7, v8);
      }

      v9 = v15;
      v15 = 0;
      if (v9)
      {
        v10 = v9;
        v11 = v15;
        v18 = v9;
        v15 = 0;
        if (v11)
        {
        }
      }

      else
      {
        v18 = 0;
      }

      if (*a3)
      {
        v12 = &v18;
      }

      else
      {
        v12 = 0;
      }
    }

    else
    {
      v12 = 0;
    }

    return [*(this + 2) overrideUserAgentWithErrorCallback:v17 successCallback:v16 value:{v12, v15}];
  }

  else
  {
    v14 = *(this + 1);
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    Inspector::BackendDispatcher::reportProtocolError();
    return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v18);
  }
}

void sub_273CB96C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9)
{
  if (a9)
  {
  }

  _Unwind_Resume(exception_object);
}

uint64_t ___ZN9Inspector34ObjCInspectorPageBackendDispatcher17overrideUserAgentElRKN3WTF6StringE_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(*(a1 + 32) + 8);
  MEMORY[0x2743DB520](&v4);
  Inspector::BackendDispatcher::reportProtocolError();
  return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v4);
}

void sub_273CB9788(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10)
{
  if (a10)
  {
    if (atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a10, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

_DWORD *___ZN9Inspector34ObjCInspectorPageBackendDispatcher17overrideUserAgentElRKN3WTF6StringE_block_invoke_2(WTF::JSONImpl::Object *a1)
{
  v2 = *(a1 + 4);
  WTF::JSONImpl::Object::create(&v6, a1);
  v3 = *(v2 + 8);
  v4 = *(a1 + 5);
  Inspector::BackendDispatcher::sendResponse();
  result = v6;
  v6 = 0;
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

void sub_273CB9820(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, _DWORD *a10)
{
  if (a10)
  {
    Inspector::toJSONObjectArray(a10);
  }

  _Unwind_Resume(exception_object);
}

atomic_uint *Inspector::ObjCInspectorPageBackendDispatcher::overrideSetting(uint64_t a1, uint64_t a2, uint64_t *a3, _BYTE *a4)
{
  v8 = *(a1 + 16);
  if (objc_opt_respondsToSelector())
  {
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = ___ZN9Inspector34ObjCInspectorPageBackendDispatcher15overrideSettingElRKN3WTF6StringEONSt3__18optionalIbEE_block_invoke;
    v20[3] = &__block_descriptor_48_e18_v16__0__NSString_8l;
    v20[4] = a1;
    v20[5] = a2;
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = ___ZN9Inspector34ObjCInspectorPageBackendDispatcher15overrideSettingElRKN3WTF6StringEONSt3__18optionalIbEE_block_invoke_2;
    v19[3] = &__block_descriptor_48_e5_v8__0l;
    v19[4] = a1;
    v19[5] = a2;
    v9 = *a3;
    if (*a3)
    {
      v10 = *(v9 + 8);
      v11 = *(v9 + 4) | (((*(v9 + 16) >> 2) & 1) << 32);
    }

    else
    {
      v10 = 0;
      v11 = 0x100000000;
    }

    v12 = &qword_279EAA8E0;
    v13 = 288;
    while ((WTF::operator==(v10, v11, *(v12 - 2), *(v12 - 1)) & 1) == 0)
    {
      v12 += 3;
      v13 -= 24;
      if (!v13)
      {
        v16 = *(a1 + 8);
        WTF::StringImpl::createWithoutCopyingNonEmpty();
        Inspector::BackendDispatcher::reportProtocolError();
        return Inspector::ObjCInspectorCSSBackendDispatcher::setLayoutContextTypeChangedMode(&v21);
      }
    }

    v14 = *v12;
    LOBYTE(v21) = 0;
    if (a4[1] == 1)
    {
      LOBYTE(v21) = *a4;
      v15 = &v21;
    }

    else
    {
      v15 = 0;
    }

    return [*(a1 + 16) overrideSettingWithErrorCallback:v20 successCallback:v19 setting:v14 value:v15];
  }

  else
  {
    v18 = *(a1 + 8);
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    Inspector::BackendDispatcher::reportProtocolError();
    return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v21);
  }
}

void sub_273CB9A24(_Unwind_Exception *exception_object, WTF::StringImpl *a2)
{
  v4 = *(v2 - 56);
  *(v2 - 56) = 0;
  if (v4)
  {
    if (atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v4, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t ___ZN9Inspector34ObjCInspectorPageBackendDispatcher15overrideSettingElRKN3WTF6StringEONSt3__18optionalIbEE_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(*(a1 + 32) + 8);
  MEMORY[0x2743DB520](&v4);
  Inspector::BackendDispatcher::reportProtocolError();
  return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v4);
}

void sub_273CB9AB4(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10)
{
  if (a10)
  {
    if (atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a10, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

_DWORD *___ZN9Inspector34ObjCInspectorPageBackendDispatcher15overrideSettingElRKN3WTF6StringEONSt3__18optionalIbEE_block_invoke_2(WTF::JSONImpl::Object *a1)
{
  v2 = *(a1 + 4);
  WTF::JSONImpl::Object::create(&v6, a1);
  v3 = *(v2 + 8);
  v4 = *(a1 + 5);
  Inspector::BackendDispatcher::sendResponse();
  result = v6;
  v6 = 0;
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

void sub_273CB9B4C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, _DWORD *a10)
{
  if (a10)
  {
    Inspector::toJSONObjectArray(a10);
  }

  _Unwind_Resume(exception_object);
}

atomic_uint *Inspector::ObjCInspectorPageBackendDispatcher::overrideUserPreference(Inspector::ObjCInspectorPageBackendDispatcher *this, uint64_t a2, const WTF::String *a3, const WTF::String *a4)
{
  v8 = *(this + 2);
  if (objc_opt_respondsToSelector())
  {
    v33[0] = MEMORY[0x277D85DD0];
    v33[1] = 3221225472;
    v33[2] = ___ZN9Inspector34ObjCInspectorPageBackendDispatcher22overrideUserPreferenceElRKN3WTF6StringES4__block_invoke;
    v33[3] = &__block_descriptor_48_e18_v16__0__NSString_8l;
    v33[4] = this;
    v33[5] = a2;
    v32[0] = MEMORY[0x277D85DD0];
    v32[1] = 3221225472;
    v32[2] = ___ZN9Inspector34ObjCInspectorPageBackendDispatcher22overrideUserPreferenceElRKN3WTF6StringES4__block_invoke_2;
    v32[3] = &__block_descriptor_48_e5_v8__0l;
    v32[4] = this;
    v32[5] = a2;
    v9 = *a3;
    if (*a3)
    {
      v10 = *(v9 + 8);
      v11 = *(v9 + 4) | (((*(v9 + 16) >> 2) & 1) << 32);
    }

    else
    {
      v10 = 0;
      v11 = 0x100000000;
    }

    v12 = &qword_279EAAA00;
    v13 = 72;
    while ((WTF::operator==(v10, v11, *(v12 - 2), *(v12 - 1)) & 1) == 0)
    {
      v12 += 3;
      v13 -= 24;
      if (!v13)
      {
        v24 = *(this + 1);
        WTF::StringImpl::createWithoutCopyingNonEmpty();
        Inspector::BackendDispatcher::reportProtocolError();
        return Inspector::ObjCInspectorCSSBackendDispatcher::setLayoutContextTypeChangedMode(&v30);
      }
    }

    v14 = *v12;
    LOBYTE(v30) = 0;
    LOBYTE(v31) = 0;
    v15 = *a4;
    if (*a4)
    {
      v16 = *(v15 + 8);
      v17 = *(v15 + 4) | (((*(v15 + 16) >> 2) & 1) << 32);
      v18 = &qword_279EAAA48;
      v19 = 120;
      while ((WTF::operator==(v16, v17, *(v18 - 2), *(v18 - 1)) & 1) == 0)
      {
        v18 += 3;
        v19 -= 24;
        if (!v19)
        {
          v22 = 0;
          v23 = 0;
          goto LABEL_16;
        }
      }

      v23 = *v18;
      v22 = 1;
LABEL_16:
      v30 = v23;
      LOBYTE(v31) = v22;
      v21 = *(this + 2);
      if (*a4)
      {
        if ((v22 & 1) == 0)
        {
          v28 = std::__throw_bad_optional_access[abi:sn200100]();
          v29 = v30;
          v30 = 0;
          if (v29)
          {
            if (atomic_fetch_add_explicit(v29, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v29, v27);
            }
          }

          _Unwind_Resume(v28);
        }

        v20 = &v30;
      }

      else
      {
        v20 = 0;
      }
    }

    else
    {
      v20 = 0;
      v21 = *(this + 2);
    }

    return [v21 overrideUserPreferenceWithErrorCallback:v33 successCallback:v32 name:v14 value:{v20, v30, v31}];
  }

  else
  {
    v26 = *(this + 1);
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    Inspector::BackendDispatcher::reportProtocolError();
    return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v30);
  }
}

uint64_t ___ZN9Inspector34ObjCInspectorPageBackendDispatcher22overrideUserPreferenceElRKN3WTF6StringES4__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(*(a1 + 32) + 8);
  MEMORY[0x2743DB520](&v4);
  Inspector::BackendDispatcher::reportProtocolError();
  return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v4);
}

void sub_273CB9E64(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10)
{
  if (a10)
  {
    if (atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a10, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

_DWORD *___ZN9Inspector34ObjCInspectorPageBackendDispatcher22overrideUserPreferenceElRKN3WTF6StringES4__block_invoke_2(WTF::JSONImpl::Object *a1)
{
  v2 = *(a1 + 4);
  WTF::JSONImpl::Object::create(&v6, a1);
  v3 = *(v2 + 8);
  v4 = *(a1 + 5);
  Inspector::BackendDispatcher::sendResponse();
  result = v6;
  v6 = 0;
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

void sub_273CB9EFC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, _DWORD *a10)
{
  if (a10)
  {
    Inspector::toJSONObjectArray(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t Inspector::ObjCInspectorPageBackendDispatcher::getCookies(Inspector::ObjCInspectorPageBackendDispatcher *this, uint64_t a2)
{
  v4 = *(this + 2);
  if (objc_opt_respondsToSelector())
  {
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = ___ZN9Inspector34ObjCInspectorPageBackendDispatcher10getCookiesEl_block_invoke;
    v8[3] = &__block_descriptor_48_e18_v16__0__NSString_8l;
    v8[4] = this;
    v8[5] = a2;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = ___ZN9Inspector34ObjCInspectorPageBackendDispatcher10getCookiesEl_block_invoke_2;
    v7[3] = &__block_descriptor_48_e17_v16__0__NSArray_8l;
    v7[4] = this;
    v7[5] = a2;
    return [*(this + 2) getCookiesWithErrorCallback:v8 successCallback:v7];
  }

  else
  {
    v6 = *(this + 1);
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    Inspector::BackendDispatcher::reportProtocolError();
    return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v9);
  }
}

void sub_273CBA038(_Unwind_Exception *exception_object, WTF::StringImpl *a2)
{
  v4 = *(v2 - 40);
  *(v2 - 40) = 0;
  if (v4)
  {
    if (atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v4, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t ___ZN9Inspector34ObjCInspectorPageBackendDispatcher10getCookiesEl_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(*(a1 + 32) + 8);
  MEMORY[0x2743DB520](&v4);
  Inspector::BackendDispatcher::reportProtocolError();
  return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v4);
}

void sub_273CBA0C4(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10)
{
  if (a10)
  {
    if (atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a10, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

_DWORD *___ZN9Inspector34ObjCInspectorPageBackendDispatcher10getCookiesEl_block_invoke_2(WTF::JSONImpl::Object *a1, void *a2)
{
  v37 = *MEMORY[0x277D85DE8];
  v24 = *(a1 + 4);
  WTF::JSONImpl::Object::create(&v33, a1);
  if (!a2)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"required parameter '%@' cannot be nil", @"cookies"}];
  }

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v3 = [a2 countByEnumeratingWithState:&v29 objects:v36 count:16];
  if (v3)
  {
    v4 = *v30;
    v5 = *MEMORY[0x277CBE660];
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v30 != v4)
        {
          objc_enumerationMutation(a2);
        }

        v7 = *(*(&v29 + 1) + 8 * i);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v8 = MEMORY[0x277CBEAD8];
          v9 = objc_opt_class();
          [v8 raise:v5 format:{@"array should contain objects of type '%@', found bad value: %@", NSStringFromClass(v9), v7}];
        }
      }

      v3 = [a2 countByEnumeratingWithState:&v29 objects:v36 count:16];
    }

    while (v3);
  }

  v10 = v33;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v28 = v34;
  Inspector::toJSONObjectArray(a2, &v26);
  v11 = v26;
  v26 = 0;
  v27 = v11;
  WTF::HashMap<WTF::String,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::inlineSet<WTF::String const&,WTF::Ref<WTF::JSONImpl::ArrayBase,WTF::RawPtrTraits<WTF::JSONImpl::ArrayBase>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::ArrayBase>>>(v10 + 2, &v28, &v27, &v34);
  if (v35 == 1)
  {
    v13 = *(v10 + 9);
    if (v13 == *(v10 + 8))
    {
      WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WTF::String const&>((v10 + 3), &v28);
    }

    else
    {
      v14 = v10[3];
      v15 = v28;
      if (v28)
      {
        atomic_fetch_add_explicit(v28, 2u, memory_order_relaxed);
      }

      v16 = *(v10 + 9);
      *(v14 + 8 * v13) = v15;
      *(v10 + 9) = v16 + 1;
    }
  }

  v17 = v27;
  v27 = 0;
  if (v17)
  {
    Inspector::toJSONObjectArray(v17);
  }

  v18 = v26;
  v26 = 0;
  if (v18)
  {
    if (*v18 == 1)
    {
      WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*v18;
    }
  }

  v19 = v28;
  v28 = 0;
  if (v19 && atomic_fetch_add_explicit(v19, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v19, v12);
  }

  v20 = *(v24 + 8);
  v21 = *(a1 + 5);
  Inspector::BackendDispatcher::sendResponse();
  result = ___ZN9Inspector33ObjCInspectorCSSBackendDispatcher23getComputedStyleForNodeEli_block_invoke_2_cold_3(&v33);
  v23 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_273CBA388(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, WTF::StringImpl *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, _DWORD *a25)
{
  if (a16 && atomic_fetch_add_explicit(a16, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a16, a2);
  }

  if (a25)
  {
    Inspector::toJSONObjectArray(a25);
  }

  _Unwind_Resume(exception_object);
}

uint64_t Inspector::ObjCInspectorPageBackendDispatcher::setCookie(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v8 = *(a1 + 16);
  if (objc_opt_respondsToSelector())
  {
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = ___ZN9Inspector34ObjCInspectorPageBackendDispatcher9setCookieElON3WTF3RefINS1_8JSONImpl6ObjectENS1_12RawPtrTraitsIS4_EENS1_21DefaultRefDerefTraitsIS4_EEEEONSt3__18optionalIbEE_block_invoke;
    v16[3] = &__block_descriptor_48_e18_v16__0__NSString_8l;
    v16[4] = a1;
    v16[5] = a2;
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = ___ZN9Inspector34ObjCInspectorPageBackendDispatcher9setCookieElON3WTF3RefINS1_8JSONImpl6ObjectENS1_12RawPtrTraitsIS4_EENS1_21DefaultRefDerefTraitsIS4_EEEEONSt3__18optionalIbEE_block_invoke_2;
    v15[3] = &__block_descriptor_48_e5_v8__0l;
    v15[4] = a1;
    v15[5] = a2;
    v9 = [(RWIProtocolJSONObject *)[RWIProtocolPageCookie alloc] initWithJSONObject:a3];
    v10 = v9;
    if (v9)
    {
      v11 = v9;
    }

    LOBYTE(v17) = 0;
    if (a4[1] == 1)
    {
      LOBYTE(v17) = *a4;
      v12 = &v17;
    }

    else
    {
      v12 = 0;
    }

    return [*(a1 + 16) setCookieWithErrorCallback:v16 successCallback:v15 cookie:v10 shouldPartition:v12];
  }

  else
  {
    v14 = *(a1 + 8);
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    Inspector::BackendDispatcher::reportProtocolError();
    return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v17);
  }
}

void sub_273CBA594(_Unwind_Exception *exception_object, WTF::StringImpl *a2)
{
  v4 = *(v2 - 40);
  *(v2 - 40) = 0;
  if (v4)
  {
    if (atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v4, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t ___ZN9Inspector34ObjCInspectorPageBackendDispatcher9setCookieElON3WTF3RefINS1_8JSONImpl6ObjectENS1_12RawPtrTraitsIS4_EENS1_21DefaultRefDerefTraitsIS4_EEEEONSt3__18optionalIbEE_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(*(a1 + 32) + 8);
  MEMORY[0x2743DB520](&v4);
  Inspector::BackendDispatcher::reportProtocolError();
  return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v4);
}

void sub_273CBA620(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10)
{
  if (a10)
  {
    if (atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a10, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

_DWORD *___ZN9Inspector34ObjCInspectorPageBackendDispatcher9setCookieElON3WTF3RefINS1_8JSONImpl6ObjectENS1_12RawPtrTraitsIS4_EENS1_21DefaultRefDerefTraitsIS4_EEEEONSt3__18optionalIbEE_block_invoke_2(WTF::JSONImpl::Object *a1)
{
  v2 = *(a1 + 4);
  WTF::JSONImpl::Object::create(&v6, a1);
  v3 = *(v2 + 8);
  v4 = *(a1 + 5);
  Inspector::BackendDispatcher::sendResponse();
  result = v6;
  v6 = 0;
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

void sub_273CBA6B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, _DWORD *a10)
{
  if (a10)
  {
    Inspector::toJSONObjectArray(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t Inspector::ObjCInspectorPageBackendDispatcher::deleteCookie(Inspector::ObjCInspectorPageBackendDispatcher *this, uint64_t a2, atomic_uint **a3, atomic_uint **a4)
{
  v8 = *(this + 2);
  if (objc_opt_respondsToSelector())
  {
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = ___ZN9Inspector34ObjCInspectorPageBackendDispatcher12deleteCookieElRKN3WTF6StringES4__block_invoke;
    v24[3] = &__block_descriptor_48_e18_v16__0__NSString_8l;
    v24[4] = this;
    v24[5] = a2;
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = ___ZN9Inspector34ObjCInspectorPageBackendDispatcher12deleteCookieElRKN3WTF6StringES4__block_invoke_2;
    v23[3] = &__block_descriptor_48_e5_v8__0l;
    v23[4] = this;
    v23[5] = a2;
    v9 = *a3;
    if (*a3)
    {
      atomic_fetch_add_explicit(v9, 2u, memory_order_relaxed);
      MEMORY[0x2743DB4B0](&v25, v9);
      if (atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v9, v10);
      }
    }

    else
    {
      v25 = &stru_2882B1C88;
      v21 = &stru_2882B1C88;
    }

    v11 = v25;
    v25 = 0;
    if (v11)
    {
      v12 = v11;
      v13 = v25;
      v25 = 0;
      if (v13)
      {
      }
    }

    v14 = *a4;
    if (v14)
    {
      atomic_fetch_add_explicit(v14, 2u, memory_order_relaxed);
      MEMORY[0x2743DB4B0](&v25, v14);
      if (atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v14, v15);
      }
    }

    else
    {
      v25 = &stru_2882B1C88;
      v22 = &stru_2882B1C88;
    }

    v16 = v25;
    v25 = 0;
    if (v16)
    {
      v17 = v16;
      v18 = v25;
      v25 = 0;
      if (v18)
      {
      }
    }

    return [*(this + 2) deleteCookieWithErrorCallback:v24 successCallback:v23 cookieName:v11 url:v16];
  }

  else
  {
    v20 = *(this + 1);
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    Inspector::BackendDispatcher::reportProtocolError();
    return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v25);
  }
}

void sub_273CBA8DC(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 40);
  *(v1 - 40) = 0;
  if (v3)
  {
  }

  _Unwind_Resume(exception_object);
}

uint64_t ___ZN9Inspector34ObjCInspectorPageBackendDispatcher12deleteCookieElRKN3WTF6StringES4__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(*(a1 + 32) + 8);
  MEMORY[0x2743DB520](&v4);
  Inspector::BackendDispatcher::reportProtocolError();
  return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v4);
}

void sub_273CBA9BC(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10)
{
  if (a10)
  {
    if (atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a10, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

_DWORD *___ZN9Inspector34ObjCInspectorPageBackendDispatcher12deleteCookieElRKN3WTF6StringES4__block_invoke_2(WTF::JSONImpl::Object *a1)
{
  v2 = *(a1 + 4);
  WTF::JSONImpl::Object::create(&v6, a1);
  v3 = *(v2 + 8);
  v4 = *(a1 + 5);
  Inspector::BackendDispatcher::sendResponse();
  result = v6;
  v6 = 0;
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

void sub_273CBAA54(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, _DWORD *a10)
{
  if (a10)
  {
    Inspector::toJSONObjectArray(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t Inspector::ObjCInspectorPageBackendDispatcher::getResourceTree(Inspector::ObjCInspectorPageBackendDispatcher *this, uint64_t a2)
{
  v4 = *(this + 2);
  if (objc_opt_respondsToSelector())
  {
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = ___ZN9Inspector34ObjCInspectorPageBackendDispatcher15getResourceTreeEl_block_invoke;
    v8[3] = &__block_descriptor_48_e18_v16__0__NSString_8l;
    v8[4] = this;
    v8[5] = a2;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = ___ZN9Inspector34ObjCInspectorPageBackendDispatcher15getResourceTreeEl_block_invoke_2;
    v7[3] = &__block_descriptor_48_e42_v16__0__RWIProtocolPageFrameResourceTree_8l;
    v7[4] = this;
    v7[5] = a2;
    return [*(this + 2) getResourceTreeWithErrorCallback:v8 successCallback:v7];
  }

  else
  {
    v6 = *(this + 1);
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    Inspector::BackendDispatcher::reportProtocolError();
    return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v9);
  }
}

void sub_273CBAB90(_Unwind_Exception *exception_object, WTF::StringImpl *a2)
{
  v4 = *(v2 - 40);
  *(v2 - 40) = 0;
  if (v4)
  {
    if (atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v4, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t ___ZN9Inspector34ObjCInspectorPageBackendDispatcher15getResourceTreeEl_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(*(a1 + 32) + 8);
  MEMORY[0x2743DB520](&v4);
  Inspector::BackendDispatcher::reportProtocolError();
  return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v4);
}

void sub_273CBAC1C(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10)
{
  if (a10)
  {
    if (atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a10, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

_DWORD *___ZN9Inspector34ObjCInspectorPageBackendDispatcher15getResourceTreeEl_block_invoke_2(WTF::JSONImpl::Object *a1, void *a2)
{
  v4 = *(a1 + 4);
  WTF::JSONImpl::Object::create(&v20, a1);
  if (!a2)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"required parameter '%@' cannot be nil", @"frameTree"}];
  }

  v5 = v20;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v19 = v21;
  if (a2)
  {
    [a2 toJSONObject];
    v6 = v17;
  }

  else
  {
    v6 = 0;
  }

  v18 = v6;
  WTF::HashMap<WTF::String,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::inlineSet<WTF::String const&,WTF::Ref<WTF::JSONImpl::ObjectBase,WTF::RawPtrTraits<WTF::JSONImpl::ObjectBase>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::ObjectBase>>>(v5 + 2, &v19, &v18, &v21);
  if (v22 == 1)
  {
    v8 = *(v5 + 9);
    if (v8 == *(v5 + 8))
    {
      WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WTF::String const&>((v5 + 3), &v19);
    }

    else
    {
      v9 = v5[3];
      v10 = v19;
      if (v19)
      {
        atomic_fetch_add_explicit(v19, 2u, memory_order_relaxed);
      }

      v11 = *(v5 + 9);
      *(v9 + 8 * v8) = v10;
      *(v5 + 9) = v11 + 1;
    }
  }

  v12 = v18;
  v18 = 0;
  if (v12)
  {
    Inspector::toJSONObjectArray(v12);
  }

  v13 = v19;
  v19 = 0;
  if (v13 && atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v13, v7);
  }

  v14 = *(v4 + 8);
  v15 = *(a1 + 5);
  Inspector::BackendDispatcher::sendResponse();
  return ___ZN9Inspector33ObjCInspectorCSSBackendDispatcher23getComputedStyleForNodeEli_block_invoke_2_cold_3(&v20);
}

void sub_273CBADD0(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, WTF::StringImpl *a12, _DWORD *a13)
{
  if (a12 && atomic_fetch_add_explicit(a12, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a12, a2);
  }

  if (a13)
  {
    Inspector::toJSONObjectArray(a13);
  }

  _Unwind_Resume(exception_object);
}

uint64_t Inspector::ObjCInspectorPageBackendDispatcher::getResourceContent(Inspector::ObjCInspectorPageBackendDispatcher *this, uint64_t a2, atomic_uint **a3, atomic_uint **a4)
{
  v8 = *(this + 2);
  if (objc_opt_respondsToSelector())
  {
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = ___ZN9Inspector34ObjCInspectorPageBackendDispatcher18getResourceContentElRKN3WTF6StringES4__block_invoke;
    v24[3] = &__block_descriptor_48_e18_v16__0__NSString_8l;
    v24[4] = this;
    v24[5] = a2;
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = ___ZN9Inspector34ObjCInspectorPageBackendDispatcher18getResourceContentElRKN3WTF6StringES4__block_invoke_2;
    v23[3] = &__block_descriptor_48_e21_v20__0__NSString_8B16l;
    v23[4] = this;
    v23[5] = a2;
    v9 = *a3;
    if (*a3)
    {
      atomic_fetch_add_explicit(v9, 2u, memory_order_relaxed);
      MEMORY[0x2743DB4B0](&v25, v9);
      if (atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v9, v10);
      }
    }

    else
    {
      v25 = &stru_2882B1C88;
      v21 = &stru_2882B1C88;
    }

    v11 = v25;
    v25 = 0;
    if (v11)
    {
      v12 = v11;
      v13 = v25;
      v25 = 0;
      if (v13)
      {
      }
    }

    v14 = *a4;
    if (v14)
    {
      atomic_fetch_add_explicit(v14, 2u, memory_order_relaxed);
      MEMORY[0x2743DB4B0](&v25, v14);
      if (atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v14, v15);
      }
    }

    else
    {
      v25 = &stru_2882B1C88;
      v22 = &stru_2882B1C88;
    }

    v16 = v25;
    v25 = 0;
    if (v16)
    {
      v17 = v16;
      v18 = v25;
      v25 = 0;
      if (v18)
      {
      }
    }

    return [*(this + 2) getResourceContentWithErrorCallback:v24 successCallback:v23 frameId:v11 url:v16];
  }

  else
  {
    v20 = *(this + 1);
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    Inspector::BackendDispatcher::reportProtocolError();
    return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v25);
  }
}

void sub_273CBB05C(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 40);
  *(v1 - 40) = 0;
  if (v3)
  {
  }

  _Unwind_Resume(exception_object);
}

uint64_t ___ZN9Inspector34ObjCInspectorPageBackendDispatcher18getResourceContentElRKN3WTF6StringES4__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(*(a1 + 32) + 8);
  MEMORY[0x2743DB520](&v4);
  Inspector::BackendDispatcher::reportProtocolError();
  return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v4);
}

void sub_273CBB13C(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10)
{
  if (a10)
  {
    if (atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a10, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

_DWORD *___ZN9Inspector34ObjCInspectorPageBackendDispatcher18getResourceContentElRKN3WTF6StringES4__block_invoke_2(WTF::JSONImpl::Object *a1, uint64_t a2, WTF::JSONImpl::Value *a3)
{
  v6 = *(a1 + 4);
  WTF::JSONImpl::Object::create(&v14, a1);
  if (!a2)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"required parameter '%@' cannot be nil", @"content"}];
  }

  v7 = v14;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v13 = v15;
  MEMORY[0x2743DB520](&v12, a2);
  WTF::JSONImpl::ObjectBase::setString(v7, &v13, &v12);
  ___ZN9Inspector33ObjCInspectorCSSBackendDispatcher17getStyleSheetTextElRKN3WTF6StringE_block_invoke_2_cold_1(&v12);
  v8 = v14;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v13 = v15;
  WTF::JSONImpl::ObjectBase::setBoolean(v8, &v13, a3);
  Inspector::ObjCInspectorCSSBackendDispatcher::setLayoutContextTypeChangedMode(&v13);
  v9 = *(v6 + 8);
  v10 = *(a1 + 5);
  Inspector::BackendDispatcher::sendResponse();
  return ___ZN9Inspector33ObjCInspectorCSSBackendDispatcher23getComputedStyleForNodeEli_block_invoke_2_cold_3(&v14);
}

void sub_273CBB280(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, WTF::StringImpl *a11, WTF::StringImpl *a12, _DWORD *a13)
{
  if (a12 && atomic_fetch_add_explicit(a12, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a12, a2);
  }

  if (a13)
  {
    Inspector::toJSONObjectArray(a13);
  }

  _Unwind_Resume(exception_object);
}

uint64_t Inspector::ObjCInspectorPageBackendDispatcher::setBootstrapScript(Inspector::ObjCInspectorPageBackendDispatcher *this, uint64_t a2, atomic_uint **a3)
{
  v6 = *(this + 2);
  if (objc_opt_respondsToSelector())
  {
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = ___ZN9Inspector34ObjCInspectorPageBackendDispatcher18setBootstrapScriptElRKN3WTF6StringE_block_invoke;
    v17[3] = &__block_descriptor_48_e18_v16__0__NSString_8l;
    v17[4] = this;
    v17[5] = a2;
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = ___ZN9Inspector34ObjCInspectorPageBackendDispatcher18setBootstrapScriptElRKN3WTF6StringE_block_invoke_2;
    v16[3] = &__block_descriptor_48_e5_v8__0l;
    v16[4] = this;
    v16[5] = a2;
    v18 = 0;
    v7 = *a3;
    if (*a3)
    {
      atomic_fetch_add_explicit(v7, 2u, memory_order_relaxed);
      MEMORY[0x2743DB4B0](&v15, v7);
      if (atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v7, v8);
      }

      v9 = v15;
      v15 = 0;
      if (v9)
      {
        v10 = v9;
        v11 = v15;
        v18 = v9;
        v15 = 0;
        if (v11)
        {
        }
      }

      else
      {
        v18 = 0;
      }

      if (*a3)
      {
        v12 = &v18;
      }

      else
      {
        v12 = 0;
      }
    }

    else
    {
      v12 = 0;
    }

    return [*(this + 2) setBootstrapScriptWithErrorCallback:v17 successCallback:v16 source:{v12, v15}];
  }

  else
  {
    v14 = *(this + 1);
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    Inspector::BackendDispatcher::reportProtocolError();
    return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v18);
  }
}

void sub_273CBB49C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9)
{
  if (a9)
  {
  }

  _Unwind_Resume(exception_object);
}

uint64_t ___ZN9Inspector34ObjCInspectorPageBackendDispatcher18setBootstrapScriptElRKN3WTF6StringE_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(*(a1 + 32) + 8);
  MEMORY[0x2743DB520](&v4);
  Inspector::BackendDispatcher::reportProtocolError();
  return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v4);
}

void sub_273CBB55C(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10)
{
  if (a10)
  {
    if (atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a10, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

_DWORD *___ZN9Inspector34ObjCInspectorPageBackendDispatcher18setBootstrapScriptElRKN3WTF6StringE_block_invoke_2(WTF::JSONImpl::Object *a1)
{
  v2 = *(a1 + 4);
  WTF::JSONImpl::Object::create(&v6, a1);
  v3 = *(v2 + 8);
  v4 = *(a1 + 5);
  Inspector::BackendDispatcher::sendResponse();
  result = v6;
  v6 = 0;
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

void sub_273CBB5F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, _DWORD *a10)
{
  if (a10)
  {
    Inspector::toJSONObjectArray(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t Inspector::ObjCInspectorPageBackendDispatcher::searchInResource(uint64_t a1, uint64_t a2, atomic_uint **a3, atomic_uint **a4, atomic_uint **a5, char *a6, char *a7, atomic_uint **a8)
{
  v16 = *(a1 + 16);
  if (objc_opt_respondsToSelector())
  {
    v51[0] = MEMORY[0x277D85DD0];
    v51[1] = 3221225472;
    v51[2] = ___ZN9Inspector34ObjCInspectorPageBackendDispatcher16searchInResourceElRKN3WTF6StringES4_S4_ONSt3__18optionalIbEES8_S4__block_invoke;
    v51[3] = &__block_descriptor_48_e18_v16__0__NSString_8l;
    v51[4] = a1;
    v51[5] = a2;
    v50[0] = MEMORY[0x277D85DD0];
    v50[1] = 3221225472;
    v50[2] = ___ZN9Inspector34ObjCInspectorPageBackendDispatcher16searchInResourceElRKN3WTF6StringES4_S4_ONSt3__18optionalIbEES8_S4__block_invoke_2;
    v50[3] = &__block_descriptor_48_e17_v16__0__NSArray_8l;
    v50[4] = a1;
    v50[5] = a2;
    v17 = *a3;
    if (*a3)
    {
      atomic_fetch_add_explicit(v17, 2u, memory_order_relaxed);
      MEMORY[0x2743DB4B0](&v52, v17);
      if (atomic_fetch_add_explicit(v17, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v17, v18);
      }
    }

    else
    {
      v52 = &stru_2882B1C88;
      v44 = &stru_2882B1C88;
    }

    v19 = v52;
    v52 = 0;
    if (v19)
    {
      v20 = v19;
      v21 = v52;
      v52 = 0;
      if (v21)
      {
      }
    }

    v22 = *a4;
    if (v22)
    {
      atomic_fetch_add_explicit(v22, 2u, memory_order_relaxed);
      MEMORY[0x2743DB4B0](&v52, v22);
      if (atomic_fetch_add_explicit(v22, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v22, v23);
      }
    }

    else
    {
      v52 = &stru_2882B1C88;
      v45 = &stru_2882B1C88;
    }

    v24 = v52;
    v52 = 0;
    if (v24)
    {
      v25 = v24;
      v26 = v52;
      v52 = 0;
      if (v26)
      {
      }
    }

    v27 = *a5;
    if (v27)
    {
      atomic_fetch_add_explicit(v27, 2u, memory_order_relaxed);
      MEMORY[0x2743DB4B0](&v52, v27);
      if (atomic_fetch_add_explicit(v27, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v27, v28);
      }
    }

    else
    {
      v52 = &stru_2882B1C88;
      v46 = &stru_2882B1C88;
    }

    v29 = v52;
    v52 = 0;
    if (v29)
    {
      v30 = v29;
      v31 = v52;
      v52 = 0;
      if (v31)
      {
      }
    }

    v49 = 0;
    v32 = a6[1];
    if (v32 == 1)
    {
      v49 = *a6;
    }

    v48 = 0;
    v33 = a7[1];
    if (v33 == 1)
    {
      v48 = *a7;
    }

    v52 = 0;
    v34 = *a8;
    if (*a8)
    {
      atomic_fetch_add_explicit(v34, 2u, memory_order_relaxed);
      MEMORY[0x2743DB4B0](&v47, v34);
      if (atomic_fetch_add_explicit(v34, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v34, v35);
      }

      v36 = v47;
      v47 = 0;
      if (v36)
      {
        v37 = v36;
        v38 = v47;
        v52 = v36;
        v47 = 0;
        if (v38)
        {
        }
      }

      else
      {
        v52 = 0;
      }

      LOBYTE(v32) = a6[1];
      LOBYTE(v33) = a7[1];
      v39 = &v52;
      if (!*a8)
      {
        v39 = 0;
      }
    }

    else
    {
      v39 = 0;
    }

    if (v32)
    {
      v40 = &v49;
    }

    else
    {
      v40 = 0;
    }

    v41 = &v48;
    if ((v33 & 1) == 0)
    {
      v41 = 0;
    }

    return [*(a1 + 16) searchInResourceWithErrorCallback:v51 successCallback:v50 frameId:v19 url:v24 query:v29 caseSensitive:v40 isRegex:v41 requestId:v39];
  }

  else
  {
    v43 = *(a1 + 8);
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    Inspector::BackendDispatcher::reportProtocolError();
    return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v52);
  }
}

void sub_273CBB97C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12)
{
  if (a12)
  {
  }

  _Unwind_Resume(exception_object);
}

uint64_t ___ZN9Inspector34ObjCInspectorPageBackendDispatcher16searchInResourceElRKN3WTF6StringES4_S4_ONSt3__18optionalIbEES8_S4__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(*(a1 + 32) + 8);
  MEMORY[0x2743DB520](&v4);
  Inspector::BackendDispatcher::reportProtocolError();
  return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v4);
}

void sub_273CBBAAC(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10)
{
  if (a10)
  {
    if (atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a10, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

_DWORD *___ZN9Inspector34ObjCInspectorPageBackendDispatcher16searchInResourceElRKN3WTF6StringES4_S4_ONSt3__18optionalIbEES8_S4__block_invoke_2(WTF::JSONImpl::Object *a1, void *a2)
{
  v37 = *MEMORY[0x277D85DE8];
  v24 = *(a1 + 4);
  WTF::JSONImpl::Object::create(&v33, a1);
  if (!a2)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"required parameter '%@' cannot be nil", @"result"}];
  }

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v3 = [a2 countByEnumeratingWithState:&v29 objects:v36 count:16];
  if (v3)
  {
    v4 = *v30;
    v5 = *MEMORY[0x277CBE660];
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v30 != v4)
        {
          objc_enumerationMutation(a2);
        }

        v7 = *(*(&v29 + 1) + 8 * i);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v8 = MEMORY[0x277CBEAD8];
          v9 = objc_opt_class();
          [v8 raise:v5 format:{@"array should contain objects of type '%@', found bad value: %@", NSStringFromClass(v9), v7}];
        }
      }

      v3 = [a2 countByEnumeratingWithState:&v29 objects:v36 count:16];
    }

    while (v3);
  }

  v10 = v33;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v28 = v34;
  Inspector::toJSONObjectArray(a2, &v26);
  v11 = v26;
  v26 = 0;
  v27 = v11;
  WTF::HashMap<WTF::String,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::inlineSet<WTF::String const&,WTF::Ref<WTF::JSONImpl::ArrayBase,WTF::RawPtrTraits<WTF::JSONImpl::ArrayBase>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::ArrayBase>>>(v10 + 2, &v28, &v27, &v34);
  if (v35 == 1)
  {
    v13 = *(v10 + 9);
    if (v13 == *(v10 + 8))
    {
      WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WTF::String const&>((v10 + 3), &v28);
    }

    else
    {
      v14 = v10[3];
      v15 = v28;
      if (v28)
      {
        atomic_fetch_add_explicit(v28, 2u, memory_order_relaxed);
      }

      v16 = *(v10 + 9);
      *(v14 + 8 * v13) = v15;
      *(v10 + 9) = v16 + 1;
    }
  }

  v17 = v27;
  v27 = 0;
  if (v17)
  {
    Inspector::toJSONObjectArray(v17);
  }

  v18 = v26;
  v26 = 0;
  if (v18)
  {
    if (*v18 == 1)
    {
      WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*v18;
    }
  }

  v19 = v28;
  v28 = 0;
  if (v19 && atomic_fetch_add_explicit(v19, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v19, v12);
  }

  v20 = *(v24 + 8);
  v21 = *(a1 + 5);
  Inspector::BackendDispatcher::sendResponse();
  result = ___ZN9Inspector33ObjCInspectorCSSBackendDispatcher23getComputedStyleForNodeEli_block_invoke_2_cold_3(&v33);
  v23 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_273CBBD70(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, WTF::StringImpl *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, _DWORD *a25)
{
  if (a16 && atomic_fetch_add_explicit(a16, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a16, a2);
  }

  if (a25)
  {
    Inspector::toJSONObjectArray(a25);
  }

  _Unwind_Resume(exception_object);
}

uint64_t Inspector::ObjCInspectorPageBackendDispatcher::searchInResources(uint64_t a1, uint64_t a2, atomic_uint **a3, _BYTE *a4, char *a5)
{
  v10 = *(a1 + 16);
  if (objc_opt_respondsToSelector())
  {
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = ___ZN9Inspector34ObjCInspectorPageBackendDispatcher17searchInResourcesElRKN3WTF6StringEONSt3__18optionalIbEES8__block_invoke;
    v24[3] = &__block_descriptor_48_e18_v16__0__NSString_8l;
    v24[4] = a1;
    v24[5] = a2;
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = ___ZN9Inspector34ObjCInspectorPageBackendDispatcher17searchInResourcesElRKN3WTF6StringEONSt3__18optionalIbEES8__block_invoke_2;
    v23[3] = &__block_descriptor_48_e17_v16__0__NSArray_8l;
    v23[4] = a1;
    v23[5] = a2;
    v11 = *a3;
    if (*a3)
    {
      atomic_fetch_add_explicit(v11, 2u, memory_order_relaxed);
      MEMORY[0x2743DB4B0](&v25, v11);
      if (atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v11, v12);
      }
    }

    else
    {
      v25 = &stru_2882B1C88;
      v21 = &stru_2882B1C88;
    }

    v13 = v25;
    v25 = 0;
    if (v13)
    {
      v14 = v13;
      v15 = v25;
      v25 = 0;
      if (v15)
      {
      }
    }

    LOBYTE(v25) = 0;
    v16 = a4[1];
    if (v16 == 1)
    {
      LOBYTE(v25) = *a4;
    }

    v22 = 0;
    if (a5[1] == 1)
    {
      v22 = *a5;
      v17 = &v22;
    }

    else
    {
      v17 = 0;
    }

    if (v16)
    {
      v18 = &v25;
    }

    else
    {
      v18 = 0;
    }

    return [*(a1 + 16) searchInResourcesWithErrorCallback:v24 successCallback:v23 text:v13 caseSensitive:v18 isRegex:v17];
  }

  else
  {
    v20 = *(a1 + 8);
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    Inspector::BackendDispatcher::reportProtocolError();
    return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v25);
  }
}

void sub_273CBBFF4(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 56);
  *(v1 - 56) = 0;
  if (v3)
  {
  }

  _Unwind_Resume(exception_object);
}

uint64_t ___ZN9Inspector34ObjCInspectorPageBackendDispatcher17searchInResourcesElRKN3WTF6StringEONSt3__18optionalIbEES8__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(*(a1 + 32) + 8);
  MEMORY[0x2743DB520](&v4);
  Inspector::BackendDispatcher::reportProtocolError();
  return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v4);
}

void sub_273CBC0B4(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10)
{
  if (a10)
  {
    if (atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a10, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

_DWORD *___ZN9Inspector34ObjCInspectorPageBackendDispatcher17searchInResourcesElRKN3WTF6StringEONSt3__18optionalIbEES8__block_invoke_2(WTF::JSONImpl::Object *a1, void *a2)
{
  v37 = *MEMORY[0x277D85DE8];
  v24 = *(a1 + 4);
  WTF::JSONImpl::Object::create(&v33, a1);
  if (!a2)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"required parameter '%@' cannot be nil", @"result"}];
  }

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v3 = [a2 countByEnumeratingWithState:&v29 objects:v36 count:16];
  if (v3)
  {
    v4 = *v30;
    v5 = *MEMORY[0x277CBE660];
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v30 != v4)
        {
          objc_enumerationMutation(a2);
        }

        v7 = *(*(&v29 + 1) + 8 * i);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v8 = MEMORY[0x277CBEAD8];
          v9 = objc_opt_class();
          [v8 raise:v5 format:{@"array should contain objects of type '%@', found bad value: %@", NSStringFromClass(v9), v7}];
        }
      }

      v3 = [a2 countByEnumeratingWithState:&v29 objects:v36 count:16];
    }

    while (v3);
  }

  v10 = v33;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v28 = v34;
  Inspector::toJSONObjectArray(a2, &v26);
  v11 = v26;
  v26 = 0;
  v27 = v11;
  WTF::HashMap<WTF::String,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::inlineSet<WTF::String const&,WTF::Ref<WTF::JSONImpl::ArrayBase,WTF::RawPtrTraits<WTF::JSONImpl::ArrayBase>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::ArrayBase>>>(v10 + 2, &v28, &v27, &v34);
  if (v35 == 1)
  {
    v13 = *(v10 + 9);
    if (v13 == *(v10 + 8))
    {
      WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WTF::String const&>((v10 + 3), &v28);
    }

    else
    {
      v14 = v10[3];
      v15 = v28;
      if (v28)
      {
        atomic_fetch_add_explicit(v28, 2u, memory_order_relaxed);
      }

      v16 = *(v10 + 9);
      *(v14 + 8 * v13) = v15;
      *(v10 + 9) = v16 + 1;
    }
  }

  v17 = v27;
  v27 = 0;
  if (v17)
  {
    Inspector::toJSONObjectArray(v17);
  }

  v18 = v26;
  v26 = 0;
  if (v18)
  {
    if (*v18 == 1)
    {
      WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*v18;
    }
  }

  v19 = v28;
  v28 = 0;
  if (v19 && atomic_fetch_add_explicit(v19, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v19, v12);
  }

  v20 = *(v24 + 8);
  v21 = *(a1 + 5);
  Inspector::BackendDispatcher::sendResponse();
  result = ___ZN9Inspector33ObjCInspectorCSSBackendDispatcher23getComputedStyleForNodeEli_block_invoke_2_cold_3(&v33);
  v23 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_273CBC378(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, WTF::StringImpl *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, _DWORD *a25)
{
  if (a16 && atomic_fetch_add_explicit(a16, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a16, a2);
  }

  if (a25)
  {
    Inspector::toJSONObjectArray(a25);
  }

  _Unwind_Resume(exception_object);
}

uint64_t Inspector::ObjCInspectorPageBackendDispatcher::setShowPaintRects(Inspector::ObjCInspectorPageBackendDispatcher *this, uint64_t a2, uint64_t a3)
{
  v6 = *(this + 2);
  if (objc_opt_respondsToSelector())
  {
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = ___ZN9Inspector34ObjCInspectorPageBackendDispatcher17setShowPaintRectsElb_block_invoke;
    v10[3] = &__block_descriptor_48_e18_v16__0__NSString_8l;
    v10[4] = this;
    v10[5] = a2;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = ___ZN9Inspector34ObjCInspectorPageBackendDispatcher17setShowPaintRectsElb_block_invoke_2;
    v9[3] = &__block_descriptor_48_e5_v8__0l;
    v9[4] = this;
    v9[5] = a2;
    return [*(this + 2) setShowPaintRectsWithErrorCallback:v10 successCallback:v9 result:a3];
  }

  else
  {
    v8 = *(this + 1);
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    Inspector::BackendDispatcher::reportProtocolError();
    return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v11);
  }
}

void sub_273CBC538(_Unwind_Exception *exception_object, WTF::StringImpl *a2)
{
  v4 = *(v2 - 40);
  *(v2 - 40) = 0;
  if (v4)
  {
    if (atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v4, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t ___ZN9Inspector34ObjCInspectorPageBackendDispatcher17setShowPaintRectsElb_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(*(a1 + 32) + 8);
  MEMORY[0x2743DB520](&v4);
  Inspector::BackendDispatcher::reportProtocolError();
  return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v4);
}

void sub_273CBC5C4(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10)
{
  if (a10)
  {
    if (atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a10, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

_DWORD *___ZN9Inspector34ObjCInspectorPageBackendDispatcher17setShowPaintRectsElb_block_invoke_2(WTF::JSONImpl::Object *a1)
{
  v2 = *(a1 + 4);
  WTF::JSONImpl::Object::create(&v6, a1);
  v3 = *(v2 + 8);
  v4 = *(a1 + 5);
  Inspector::BackendDispatcher::sendResponse();
  result = v6;
  v6 = 0;
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

void sub_273CBC65C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, _DWORD *a10)
{
  if (a10)
  {
    Inspector::toJSONObjectArray(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t Inspector::ObjCInspectorPageBackendDispatcher::setEmulatedMedia(Inspector::ObjCInspectorPageBackendDispatcher *this, uint64_t a2, atomic_uint **a3)
{
  v6 = *(this + 2);
  if (objc_opt_respondsToSelector())
  {
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = ___ZN9Inspector34ObjCInspectorPageBackendDispatcher16setEmulatedMediaElRKN3WTF6StringE_block_invoke;
    v16[3] = &__block_descriptor_48_e18_v16__0__NSString_8l;
    v16[4] = this;
    v16[5] = a2;
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = ___ZN9Inspector34ObjCInspectorPageBackendDispatcher16setEmulatedMediaElRKN3WTF6StringE_block_invoke_2;
    v15[3] = &__block_descriptor_48_e5_v8__0l;
    v15[4] = this;
    v15[5] = a2;
    v7 = *a3;
    if (*a3)
    {
      atomic_fetch_add_explicit(v7, 2u, memory_order_relaxed);
      MEMORY[0x2743DB4B0](&v17, v7);
      if (atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v7, v8);
      }
    }

    else
    {
      v17 = &stru_2882B1C88;
      v14 = &stru_2882B1C88;
    }

    v9 = v17;
    v17 = 0;
    if (v9)
    {
      v10 = v9;
      v11 = v17;
      v17 = 0;
      if (v11)
      {
      }
    }

    return [*(this + 2) setEmulatedMediaWithErrorCallback:v16 successCallback:v15 media:v9];
  }

  else
  {
    v13 = *(this + 1);
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    Inspector::BackendDispatcher::reportProtocolError();
    return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v17);
  }
}

void sub_273CBC80C(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 40);
  *(v1 - 40) = 0;
  if (v3)
  {
  }

  _Unwind_Resume(exception_object);
}

uint64_t ___ZN9Inspector34ObjCInspectorPageBackendDispatcher16setEmulatedMediaElRKN3WTF6StringE_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(*(a1 + 32) + 8);
  MEMORY[0x2743DB520](&v4);
  Inspector::BackendDispatcher::reportProtocolError();
  return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v4);
}

void sub_273CBC8CC(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10)
{
  if (a10)
  {
    if (atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a10, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

_DWORD *___ZN9Inspector34ObjCInspectorPageBackendDispatcher16setEmulatedMediaElRKN3WTF6StringE_block_invoke_2(WTF::JSONImpl::Object *a1)
{
  v2 = *(a1 + 4);
  WTF::JSONImpl::Object::create(&v6, a1);
  v3 = *(v2 + 8);
  v4 = *(a1 + 5);
  Inspector::BackendDispatcher::sendResponse();
  result = v6;
  v6 = 0;
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

void sub_273CBC964(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, _DWORD *a10)
{
  if (a10)
  {
    Inspector::toJSONObjectArray(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t Inspector::ObjCInspectorPageBackendDispatcher::snapshotNode(Inspector::ObjCInspectorPageBackendDispatcher *this, uint64_t a2, uint64_t a3)
{
  v6 = *(this + 2);
  if (objc_opt_respondsToSelector())
  {
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = ___ZN9Inspector34ObjCInspectorPageBackendDispatcher12snapshotNodeEli_block_invoke;
    v10[3] = &__block_descriptor_48_e18_v16__0__NSString_8l;
    v10[4] = this;
    v10[5] = a2;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = ___ZN9Inspector34ObjCInspectorPageBackendDispatcher12snapshotNodeEli_block_invoke_2;
    v9[3] = &__block_descriptor_48_e18_v16__0__NSString_8l;
    v9[4] = this;
    v9[5] = a2;
    return [*(this + 2) snapshotNodeWithErrorCallback:v10 successCallback:v9 nodeId:a3];
  }

  else
  {
    v8 = *(this + 1);
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    Inspector::BackendDispatcher::reportProtocolError();
    return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v11);
  }
}

void sub_273CBCAA0(_Unwind_Exception *exception_object, WTF::StringImpl *a2)
{
  v4 = *(v2 - 40);
  *(v2 - 40) = 0;
  if (v4)
  {
    if (atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v4, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t ___ZN9Inspector34ObjCInspectorPageBackendDispatcher12snapshotNodeEli_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(*(a1 + 32) + 8);
  MEMORY[0x2743DB520](&v4);
  Inspector::BackendDispatcher::reportProtocolError();
  return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v4);
}

void sub_273CBCB2C(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10)
{
  if (a10)
  {
    if (atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a10, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

_DWORD *___ZN9Inspector34ObjCInspectorPageBackendDispatcher12snapshotNodeEli_block_invoke_2(WTF::JSONImpl::Object *a1, uint64_t a2)
{
  v4 = *(a1 + 4);
  WTF::JSONImpl::Object::create(&v10, a1);
  if (!a2)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"required parameter '%@' cannot be nil", @"dataURL"}];
  }

  v5 = v10;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v9 = v11;
  MEMORY[0x2743DB520](&v11, a2);
  WTF::JSONImpl::ObjectBase::setString(v5, &v9, &v11);
  ___ZN9Inspector33ObjCInspectorCSSBackendDispatcher17getStyleSheetTextElRKN3WTF6StringE_block_invoke_2_cold_1(&v11);
  v6 = *(v4 + 8);
  v7 = *(a1 + 5);
  Inspector::BackendDispatcher::sendResponse();
  return ___ZN9Inspector33ObjCInspectorCSSBackendDispatcher23getComputedStyleForNodeEli_block_invoke_2_cold_3(&v10);
}

void sub_273CBCC2C(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10, _DWORD *a11, WTF::StringImpl *a12)
{
  if (a12 && atomic_fetch_add_explicit(a12, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a12, a2);
  }

  if (a10 && atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a10, a2);
  }

  if (a11)
  {
    Inspector::toJSONObjectArray(a11);
  }

  _Unwind_Resume(exception_object);
}

atomic_uint *Inspector::ObjCInspectorPageBackendDispatcher::snapshotRect(Inspector::ObjCInspectorPageBackendDispatcher *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const WTF::String *a7)
{
  v14 = *(this + 2);
  if (objc_opt_respondsToSelector())
  {
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = ___ZN9Inspector34ObjCInspectorPageBackendDispatcher12snapshotRectEliiiiRKN3WTF6StringE_block_invoke;
    v24[3] = &__block_descriptor_48_e18_v16__0__NSString_8l;
    v24[4] = this;
    v24[5] = a2;
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = ___ZN9Inspector34ObjCInspectorPageBackendDispatcher12snapshotRectEliiiiRKN3WTF6StringE_block_invoke_2;
    v23[3] = &__block_descriptor_48_e18_v16__0__NSString_8l;
    v23[4] = this;
    v23[5] = a2;
    v15 = *a7;
    if (*a7)
    {
      v16 = *(v15 + 8);
      v17 = *(v15 + 4) | (((*(v15 + 16) >> 2) & 1) << 32);
    }

    else
    {
      v16 = 0;
      v17 = 0x100000000;
    }

    v18 = &qword_279EAAAC0;
    v19 = 48;
    while ((WTF::operator==(v16, v17, *(v18 - 2), *(v18 - 1)) & 1) == 0)
    {
      v18 += 3;
      v19 -= 24;
      if (!v19)
      {
        v20 = *(this + 1);
        WTF::StringImpl::createWithoutCopyingNonEmpty();
        Inspector::BackendDispatcher::reportProtocolError();
        return Inspector::ObjCInspectorCSSBackendDispatcher::setLayoutContextTypeChangedMode(&v25);
      }
    }

    return [*(this + 2) snapshotRectWithErrorCallback:v24 successCallback:v23 x:a3 y:a4 width:a5 height:a6 coordinateSystem:*v18];
  }

  else
  {
    v22 = *(this + 1);
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    Inspector::BackendDispatcher::reportProtocolError();
    return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v25);
  }
}

void sub_273CBCE88(_Unwind_Exception *exception_object, WTF::StringImpl *a2)
{
  v4 = *(v2 - 88);
  *(v2 - 88) = 0;
  if (v4)
  {
    if (atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v4, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t ___ZN9Inspector34ObjCInspectorPageBackendDispatcher12snapshotRectEliiiiRKN3WTF6StringE_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(*(a1 + 32) + 8);
  MEMORY[0x2743DB520](&v4);
  Inspector::BackendDispatcher::reportProtocolError();
  return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v4);
}

void sub_273CBCF18(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10)
{
  if (a10)
  {
    if (atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a10, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

_DWORD *___ZN9Inspector34ObjCInspectorPageBackendDispatcher12snapshotRectEliiiiRKN3WTF6StringE_block_invoke_2(WTF::JSONImpl::Object *a1, uint64_t a2)
{
  v4 = *(a1 + 4);
  WTF::JSONImpl::Object::create(&v10, a1);
  if (!a2)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"required parameter '%@' cannot be nil", @"dataURL"}];
  }

  v5 = v10;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v9 = v11;
  MEMORY[0x2743DB520](&v11, a2);
  WTF::JSONImpl::ObjectBase::setString(v5, &v9, &v11);
  ___ZN9Inspector33ObjCInspectorCSSBackendDispatcher17getStyleSheetTextElRKN3WTF6StringE_block_invoke_2_cold_1(&v11);
  v6 = *(v4 + 8);
  v7 = *(a1 + 5);
  Inspector::BackendDispatcher::sendResponse();
  return ___ZN9Inspector33ObjCInspectorCSSBackendDispatcher23getComputedStyleForNodeEli_block_invoke_2_cold_3(&v10);
}

void sub_273CBD018(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10, _DWORD *a11, WTF::StringImpl *a12)
{
  if (a12 && atomic_fetch_add_explicit(a12, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a12, a2);
  }

  if (a10 && atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a10, a2);
  }

  if (a11)
  {
    Inspector::toJSONObjectArray(a11);
  }

  _Unwind_Resume(exception_object);
}

uint64_t Inspector::ObjCInspectorPageBackendDispatcher::archive(Inspector::ObjCInspectorPageBackendDispatcher *this, uint64_t a2)
{
  v4 = *(this + 2);
  if (objc_opt_respondsToSelector())
  {
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = ___ZN9Inspector34ObjCInspectorPageBackendDispatcher7archiveEl_block_invoke;
    v8[3] = &__block_descriptor_48_e18_v16__0__NSString_8l;
    v8[4] = this;
    v8[5] = a2;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = ___ZN9Inspector34ObjCInspectorPageBackendDispatcher7archiveEl_block_invoke_2;
    v7[3] = &__block_descriptor_48_e18_v16__0__NSString_8l;
    v7[4] = this;
    v7[5] = a2;
    return [*(this + 2) archiveWithErrorCallback:v8 successCallback:v7];
  }

  else
  {
    v6 = *(this + 1);
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    Inspector::BackendDispatcher::reportProtocolError();
    return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v9);
  }
}

void sub_273CBD1A0(_Unwind_Exception *exception_object, WTF::StringImpl *a2)
{
  v4 = *(v2 - 40);
  *(v2 - 40) = 0;
  if (v4)
  {
    if (atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v4, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t ___ZN9Inspector34ObjCInspectorPageBackendDispatcher7archiveEl_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(*(a1 + 32) + 8);
  MEMORY[0x2743DB520](&v4);
  Inspector::BackendDispatcher::reportProtocolError();
  return Inspector::ObjCInspectorCSSBackendDispatcher::enable(&v4);
}

void sub_273CBD22C(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10)
{
  if (a10)
  {
    if (atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a10, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

_DWORD *___ZN9Inspector34ObjCInspectorPageBackendDispatcher7archiveEl_block_invoke_2(WTF::JSONImpl::Object *a1, uint64_t a2)
{
  v4 = *(a1 + 4);
  WTF::JSONImpl::Object::create(&v10, a1);
  if (!a2)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"required parameter '%@' cannot be nil", @"data"}];
  }

  v5 = v10;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v9 = v11;
  MEMORY[0x2743DB520](&v11, a2);
  WTF::JSONImpl::ObjectBase::setString(v5, &v9, &v11);
  ___ZN9Inspector33ObjCInspectorCSSBackendDispatcher17getStyleSheetTextElRKN3WTF6StringE_block_invoke_2_cold_1(&v11);
  v6 = *(v4 + 8);
  v7 = *(a1 + 5);
  Inspector::BackendDispatcher::sendResponse();
  return ___ZN9Inspector33ObjCInspectorCSSBackendDispatcher23getComputedStyleForNodeEli_block_invoke_2_cold_3(&v10);
}

void sub_273CBD32C(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10, _DWORD *a11, WTF::StringImpl *a12)
{
  if (a12 && atomic_fetch_add_explicit(a12, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a12, a2);
  }

  if (a10 && atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a10, a2);
  }

  if (a11)
  {
    Inspector::toJSONObjectArray(a11);
  }

  _Unwind_Resume(exception_object);
}

WTF **WTF::HashMap<WTF::String,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::inlineSet<WTF::String const&,WTF::Ref<WTF::JSONImpl::ArrayBase,WTF::RawPtrTraits<WTF::JSONImpl::ArrayBase>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::ArrayBase>>>@<X0>(uint64_t *a1@<X0>, WTF::StringImpl **a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v26 = a3;
  v8 = *a1;
  if (*a1 || (WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::expand(a1, 0), (v8 = *a1) != 0))
  {
    v9 = *(v8 - 8);
  }

  else
  {
    v9 = 0;
  }

  v10 = *(*a2 + 4);
  if (v10 < 0x100)
  {
    v11 = WTF::StringImpl::hashSlowCase(*a2);
  }

  else
  {
    v11 = v10 >> 8;
  }

  v12 = 0;
  for (i = 1; ; ++i)
  {
    v14 = v11 & v9;
    v15 = (v8 + 16 * (v11 & v9));
    v16 = *v15;
    if (*v15 != -1)
    {
      break;
    }

    v12 = (v8 + 16 * v14);
LABEL_13:
    v11 = i + v14;
  }

  if (!v16)
  {
    if (v12)
    {
      *v12 = 0;
      v12[1] = 0;
      --*(*a1 - 16);
      v15 = v12;
    }

    result = WTF::HashMapTranslator<WTF::HashMap<WTF::String,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::String>>::translate<WTF::String const&,WTF::KeyValuePair<WTF::String,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>,WTF::HashTableAddResult<WTF::HashTableIterator<WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>,WTF::String,WTF::KeyValuePair<WTF::String,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>>> WTF::HashMap<WTF::String,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::inlineAdd<WTF::String const&,WTF::Ref<WTF::JSONImpl::ArrayBase,WTF::RawPtrTraits<WTF::JSONImpl::ArrayBase>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::ArrayBase>>>(WTF::String const&,WTF::Ref<WTF::JSONImpl::ArrayBase,WTF::RawPtrTraits<WTF::JSONImpl::ArrayBase>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::ArrayBase>> &&)::{lambda(void)#1}>(v15, a2, &v26);
    v18 = *a1;
    if (*a1)
    {
      v19 = *(v18 - 12) + 1;
    }

    else
    {
      v19 = 1;
    }

    *(v18 - 12) = v19;
    v22 = (*(v18 - 16) + v19);
    v23 = *(v18 - 4);
    if (v23 > 0x400)
    {
      if (v23 > 2 * v22)
      {
        goto LABEL_26;
      }
    }

    else if (3 * v23 > 4 * v22)
    {
      goto LABEL_26;
    }

    result = WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::expand(a1, v15);
    v15 = result;
    v18 = *a1;
    if (!*a1)
    {
      v24 = 0;
      goto LABEL_27;
    }

LABEL_26:
    v24 = *(v18 - 4);
LABEL_27:
    *a4 = v15;
    *(a4 + 8) = v18 + 16 * v24;
    *(a4 + 16) = 1;
    return result;
  }

  if (!WTF::equal(v16, *a2, a3))
  {
    goto LABEL_13;
  }

  v20 = *a1;
  if (*a1)
  {
    v21 = *(v20 - 4);
  }

  else
  {
    v21 = 0;
  }

  *a4 = v15;
  *(a4 + 8) = v20 + 16 * v21;
  *(a4 + 16) = 0;
  v25 = *a3;
  *a3 = 0;
  result = v15[1];
  v15[1] = v25;
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

uint64_t WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::expand(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  if (*a1 && (v4 = *(v3 - 4)) != 0)
  {
    v5 = v4 << (6 * *(v3 - 12) >= (2 * v4));
  }

  else
  {
    v5 = 8;
  }

  return WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::rehash(a1, v5, a2);
}

_DWORD *WTF::HashMapTranslator<WTF::HashMap<WTF::String,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::String>>::translate<WTF::String const&,WTF::KeyValuePair<WTF::String,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>,WTF::HashTableAddResult<WTF::HashTableIterator<WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>,WTF::String,WTF::KeyValuePair<WTF::String,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>>> WTF::HashMap<WTF::String,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::inlineAdd<WTF::String const&,WTF::Ref<WTF::JSONImpl::ArrayBase,WTF::RawPtrTraits<WTF::JSONImpl::ArrayBase>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::ArrayBase>>>(WTF::String const&,WTF::Ref<WTF::JSONImpl::ArrayBase,WTF::RawPtrTraits<WTF::JSONImpl::ArrayBase>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::ArrayBase>> &&)::{lambda(void)#1}>(uint64_t a1, WTF::StringImpl *a2, uint64_t **a3)
{
  WTF::String::operator=(a1, a2);
  v5 = **a3;
  **a3 = 0;
  result = *(a1 + 8);
  *(a1 + 8) = v5;
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

uint64_t WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::rehash(uint64_t *a1, unsigned int a2, uint64_t a3)
{
  v6 = *a1;
  if (*a1)
  {
    v7 = *(v6 - 4);
    v8 = *(v6 - 12);
  }

  else
  {
    v7 = 0;
    v8 = 0;
  }

  v9 = WTF::fastZeroedMalloc((16 * a2 + 16));
  *a1 = (v9 + 4);
  v9[2] = a2 - 1;
  v9[3] = a2;
  *v9 = 0;
  v9[1] = v8;
  v11 = 0;
  if (v7)
  {
    v12 = v6;
    v13 = v7;
    do
    {
      v10 = *v12;
      if (*v12 != -1)
      {
        if (v10)
        {
          v14 = WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::lookupForReinsert(a1, v12);
          v15 = *(v14 + 8);
          *(v14 + 8) = 0;
          if (v15)
          {
            if (*v15 == 1)
            {
              WTF::JSONImpl::Value::operator delete();
            }

            else
            {
              --*v15;
            }
          }

          v16 = *v14;
          *v14 = 0;
          if (v16 && atomic_fetch_add_explicit(v16, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v16, v10);
          }

          v17 = *v12;
          *v12 = 0;
          *v14 = v17;
          v18 = *(v12 + 8);
          *(v12 + 8) = 0;
          *(v14 + 8) = v18;
          v19 = *(v12 + 8);
          *(v12 + 8) = 0;
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

          v20 = *v12;
          *v12 = 0;
          if (v20 && atomic_fetch_add_explicit(v20, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v20, v10);
          }

          if (v12 == a3)
          {
            v11 = v14;
          }
        }

        else
        {
          WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::rehash(v12, 0, v11, &v22);
          v11 = v22;
        }
      }

      v12 += 16;
      --v13;
    }

    while (v13);
  }

  else
  {
    result = 0;
    if (!v6)
    {
      return result;
    }
  }

  WTF::fastFree((v6 - 16), v10);
  return v11;
}

uint64_t WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::lookupForReinsert(uint64_t *a1, WTF::StringImpl **a2)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = *(v2 - 8);
  }

  else
  {
    v3 = 0;
  }

  v4 = *(*a2 + 4);
  if (v4 < 0x100)
  {
    v5 = WTF::StringImpl::hashSlowCase(*a2);
  }

  else
  {
    v5 = v4 >> 8;
  }

  v6 = 0;
  do
  {
    v7 = v5 & v3;
    v5 = ++v6 + v7;
  }

  while (*(v2 + 16 * v7));
  return v2 + 16 * v7;
}

WTF **WTF::HashMap<WTF::String,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::inlineSet<WTF::String const&,WTF::Ref<WTF::JSONImpl::ObjectBase,WTF::RawPtrTraits<WTF::JSONImpl::ObjectBase>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::ObjectBase>>>@<X0>(uint64_t *a1@<X0>, WTF::StringImpl **a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v26 = a3;
  v8 = *a1;
  if (*a1 || (WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::expand(a1, 0), (v8 = *a1) != 0))
  {
    v9 = *(v8 - 8);
  }

  else
  {
    v9 = 0;
  }

  v10 = *(*a2 + 4);
  if (v10 < 0x100)
  {
    v11 = WTF::StringImpl::hashSlowCase(*a2);
  }

  else
  {
    v11 = v10 >> 8;
  }

  v12 = 0;
  for (i = 1; ; ++i)
  {
    v14 = v11 & v9;
    v15 = (v8 + 16 * (v11 & v9));
    v16 = *v15;
    if (*v15 != -1)
    {
      break;
    }

    v12 = (v8 + 16 * v14);
LABEL_13:
    v11 = i + v14;
  }

  if (!v16)
  {
    if (v12)
    {
      *v12 = 0;
      v12[1] = 0;
      --*(*a1 - 16);
      v15 = v12;
    }

    result = WTF::HashMapTranslator<WTF::HashMap<WTF::String,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::String>>::translate<WTF::String const&,WTF::KeyValuePair<WTF::String,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>,WTF::HashTableAddResult<WTF::HashTableIterator<WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>,WTF::String,WTF::KeyValuePair<WTF::String,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>>> WTF::HashMap<WTF::String,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::inlineAdd<WTF::String const&,WTF::Ref<WTF::JSONImpl::ArrayBase,WTF::RawPtrTraits<WTF::JSONImpl::ArrayBase>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::ArrayBase>>>(WTF::String const&,WTF::Ref<WTF::JSONImpl::ArrayBase,WTF::RawPtrTraits<WTF::JSONImpl::ArrayBase>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::ArrayBase>> &&)::{lambda(void)#1}>(v15, a2, &v26);
    v21 = *a1;
    if (*a1)
    {
      v22 = *(v21 - 12) + 1;
    }

    else
    {
      v22 = 1;
    }

    *(v21 - 12) = v22;
    v23 = (*(v21 - 16) + v22);
    v24 = *(v21 - 4);
    if (v24 > 0x400)
    {
      if (v24 > 2 * v23)
      {
        goto LABEL_35;
      }
    }

    else if (3 * v24 > 4 * v23)
    {
      goto LABEL_35;
    }

    result = WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::expand(a1, v15);
    v15 = result;
    v21 = *a1;
    if (!*a1)
    {
      v25 = 0;
      goto LABEL_36;
    }

LABEL_35:
    v25 = *(v21 - 4);
LABEL_36:
    *a4 = v15;
    *(a4 + 8) = v21 + 16 * v25;
    *(a4 + 16) = 1;
    return result;
  }

  if (!WTF::equal(v16, *a2, a3))
  {
    goto LABEL_13;
  }

  v17 = *a1;
  if (*a1)
  {
    v18 = *(v17 - 4);
  }

  else
  {
    v18 = 0;
  }

  *a4 = v15;
  *(a4 + 8) = v17 + 16 * v18;
  *(a4 + 16) = 0;
  v19 = *a3;
  *a3 = 0;
  result = v15[1];
  v15[1] = v19;
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

uint64_t WTF::operator==(uint64_t result, uint64_t a2, unsigned __int8 *a3, uint64_t a4)
{
  if (a4)
  {
    v4 = a4 - 1;
  }

  else
  {
    v4 = 0;
  }

  v5 = a2 == v4 && result == a3;
  if (result == a3 || a2 != v4)
  {
    return v5;
  }

  if (!a2)
  {
    return 1;
  }

  v6 = v4;
  if ((a2 & 0x100000000) != 0)
  {
    if (!v4)
    {
      goto LABEL_69;
    }

    if (*result == *a3)
    {
      v14 = v4 - 1;
      if (v4 == 1)
      {
        return 1;
      }

      v15 = (result + 1);
      v16 = (a3 + 1);
      if (v14 == 1)
      {
        if (!v14)
        {
          goto LABEL_69;
        }

        v17 = v15->u8[0];
        v18 = v16->u8[0];
        return v17 == v18;
      }

      v23 = __clz(v14 - 1);
      if (v23 <= 28)
      {
        if (v23 == 27)
        {
          v27 = vandq_s8(vceqq_s8(*(result + v6 - 16), *&a3[v6 - 16]), vceqq_s8(*(result + 1), *(a3 + 1)));
          v27.i8[0] = vminvq_u8(v27);
          return v27.i32[0] != 0;
        }

        if (v23 != 28)
        {
LABEL_58:
          v28 = vceqq_s8(*v15, *v16);
          v28.i8[0] = vminvq_u8(v28);
          v5 = v28.u32[0];
          if (!v28.i32[0])
          {
            return v5;
          }

          if (v14 >= 0x10)
          {
            v29 = v14 & 0xF;
            do
            {
              v30 = vceqq_s8(*(v15 + v29), *(v16 + v29));
              v30.i8[0] = vminvq_u8(v30);
              v5 = v30.i32[0] != 0;
              v29 += 16;
              if (v30.i32[0])
              {
                v31 = v29 >= v14;
              }

              else
              {
                v31 = 1;
              }
            }

            while (!v31);
            return v5;
          }

          return 1;
        }

        if (v15->i64[0] == v16->i64[0])
        {
          return *(result + v6 - 8) == *&a3[v6 - 8];
        }
      }

      else
      {
        switch(v23)
        {
          case 29:
            if (v15->i32[0] == v16->i32[0])
            {
              v26 = *(result + v6 - 4);
              v25 = *&a3[v6 - 4];
              return v26 == v25;
            }

            break;
          case 30:
            if (v15->u16[0] == v16->u16[0])
            {
              v26 = *(result + v6 - 2);
              v25 = *&a3[v6 - 2];
              return v26 == v25;
            }

            break;
          case 31:
            v17 = v15->u16[0];
            v18 = v16->u16[0];
            return v17 == v18;
          default:
            goto LABEL_58;
        }
      }
    }

    return 0;
  }

  if (v4)
  {
    if (*result == *a3)
    {
      v7 = (result + 2);
      v8 = v6 - 1;
      v9 = (a3 + 1);
      if ((v6 - 1) >= 8)
      {
        v10 = vceqq_s16(*v7, vmovl_u8(*v9));
        v10.i16[0] = vminvq_u16(v10);
        v5 = v10.u32[0];
        if (v10.i32[0])
        {
          v11 = v8 & 7;
          do
          {
            v12 = vceqq_s16(*(v7 + 2 * v11), vmovl_u8(*(v9 + v11)));
            v12.i16[0] = vminvq_u16(v12);
            v5 = v12.i32[0] != 0;
            v11 += 8;
            if (v12.i32[0])
            {
              v13 = v11 >= v8;
            }

            else
            {
              v13 = 1;
            }
          }

          while (!v13);
        }

        return v5;
      }

      if (v8 >= 4)
      {
        v20 = (v9->u32[0] | (v9->u32[0] << 16)) & 0xFFFF0000FFFFLL;
        v21 = (*(v9->u32 + (v8 & 3)) | (*(v9->u32 + (v8 & 3)) << 16)) & 0xFFFF0000FFFFLL;
        v22 = (v21 | (v21 << 8)) & 0xFF00FF00FF00FFLL;
        return ((v20 | (v20 << 8)) & 0xFF00FF00FF00FFLL) == v7->i64[0] && v22 == *(v7->i64 + 2 * (v8 & 3));
      }

      if (v8 >= 2)
      {
        v19 = ((v9->u16[0] | (v9->u16[0] << 8)) & 0xFF00FF) == v7->i32[0];
        v24 = (*(v9->u16 + (v8 & 1)) | (*(v9->u16 + (v8 & 1)) << 8)) & 0xFF00FF;
        return v19 && v24 == *(v7->i32 + 2 * (v8 & 1));
      }

      if (v6 == 2)
      {
        v25 = v9->u8[0];
        v26 = v7->u16[0];
        return v26 == v25;
      }

      return 1;
    }

    return 0;
  }

LABEL_69:
  __break(1u);
  return result;
}

WTF *WTF::RefCounted<Inspector::BackendDispatcher>::deref(WTF *result, void *a2)
{
  v2 = result;
  if (*result == 1)
  {
    WTF::Vector<std::tuple<Inspector::BackendDispatcher::CommonErrorCode,WTF::String>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(result + 24, a2);
    v4 = *(v2 + 2);
    if (v4)
    {
      WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,Inspector::SupplementalBackendDispatcher *>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,Inspector::SupplementalBackendDispatcher *>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,Inspector::SupplementalBackendDispatcher *,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<Inspector::SupplementalBackendDispatcher *>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v4, v3);
    }

    v5 = *(v2 + 1);
    *(v2 + 1) = 0;
    if (v5)
    {
      WTF::RefCounted<Inspector::FrontendRouter>::deref(v5, v3);
    }

    if (*v2 != 1)
    {
      WTF::RefCounted<Inspector::BackendDispatcher>::deref();
    }

    return WTF::fastFree(v2, v3);
  }

  else
  {
    --*result;
  }

  return result;
}

uint64_t WTF::Vector<std::tuple<Inspector::BackendDispatcher::CommonErrorCode,WTF::String>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(uint64_t a1, void *a2)
{
  v3 = *(a1 + 12);
  if (v3)
  {
    WTF::VectorDestructor<true,std::tuple<Inspector::BackendDispatcher::CommonErrorCode,WTF::String>>::destruct(*a1, (*a1 + 16 * v3));
  }

  v4 = *a1;
  if (*a1)
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    WTF::fastFree(v4, a2);
  }

  return a1;
}

WTF::StringImpl **WTF::VectorDestructor<true,std::tuple<Inspector::BackendDispatcher::CommonErrorCode,WTF::String>>::destruct(WTF::StringImpl **result, WTF::StringImpl *a2)
{
  if (result != a2)
  {
    return WTF::VectorDestructor<true,std::tuple<Inspector::BackendDispatcher::CommonErrorCode,WTF::String>>::destruct(result, a2);
  }

  return result;
}

uint64_t WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,Inspector::SupplementalBackendDispatcher *>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,Inspector::SupplementalBackendDispatcher *>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,Inspector::SupplementalBackendDispatcher *,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<Inspector::SupplementalBackendDispatcher *>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(WTF::StringImpl *a1, void *a2)
{
  v3 = *(a1 - 1);
  if (v3)
  {
    WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,Inspector::SupplementalBackendDispatcher *>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,Inspector::SupplementalBackendDispatcher *>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,Inspector::SupplementalBackendDispatcher *,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<Inspector::SupplementalBackendDispatcher *>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v3, a1);
  }

  return WTF::fastFree((a1 - 16), a2);
}

uint64_t WTF::RefCounted<Inspector::FrontendRouter>::deref(uint64_t this, void *a2)
{
  v2 = this;
  if (*this == 1)
  {
    v3 = *(this + 8);
    if ((v2 + 24) != v3 && v3 != 0)
    {
      *(v2 + 8) = 0;
      *(v2 + 16) = 0;
      WTF::fastFree(v3, a2);
      if (*v2 != 1)
      {
        WTF::RefCounted<Inspector::BackendDispatcher>::deref();
      }
    }

    return WTF::fastFree(v2, a2);
  }

  else
  {
    --*this;
  }

  return this;
}

uint64_t OUTLINED_FUNCTION_0_3(uint64_t *a1)
{
  result = *a1;
  *a1 = 0;
  return result;
}

uint64_t OUTLINED_FUNCTION_2_0()
{
  result = *v0;
  *v0 = 0;
  return result;
}

void sub_273CBE090(_Unwind_Exception *a1, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t *a10, uint64_t a11, uint64_t a12, Inspector::InspectorAgentBase *a13, uint64_t a14)
{
  if (a10)
  {
    [RWIProtocolConfiguration setCSSHandler:a10];
  }

  if (a13)
  {
    Inspector::AlternateDispatchableAgent<Inspector::CSSBackendDispatcher,Inspector::AlternateCSSBackendDispatcher>::~AlternateDispatchableAgent(a13, a2);
    WTF::fastFree(v15, v16);
  }

  std::unique_ptr<Inspector::ObjCInspectorCSSBackendDispatcher>::reset[abi:sn200100](&a14, 0);
  _Unwind_Resume(a1);
}

void sub_273CBE2AC(_Unwind_Exception *a1, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t *a10, uint64_t a11, uint64_t a12, Inspector::InspectorAgentBase *a13, uint64_t a14)
{
  if (a10)
  {
    [RWIProtocolConfiguration setCSSHandler:a10];
  }

  if (a13)
  {
    Inspector::AlternateDispatchableAgent<Inspector::DOMBackendDispatcher,Inspector::AlternateDOMBackendDispatcher>::~AlternateDispatchableAgent(a13, a2);
    WTF::fastFree(v15, v16);
  }

  std::unique_ptr<Inspector::ObjCInspectorCSSBackendDispatcher>::reset[abi:sn200100](&a14, 0);
  _Unwind_Resume(a1);
}

void sub_273CBE478(_Unwind_Exception *a1, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t *a10, uint64_t a11, uint64_t a12, Inspector::InspectorAgentBase *a13, uint64_t a14)
{
  if (a10)
  {
    [RWIProtocolConfiguration setCSSHandler:a10];
  }

  if (a13)
  {
    Inspector::AlternateDispatchableAgent<Inspector::DOMStorageBackendDispatcher,Inspector::AlternateDOMStorageBackendDispatcher>::~AlternateDispatchableAgent(a13, a2);
    WTF::fastFree(v15, v16);
  }

  std::unique_ptr<Inspector::ObjCInspectorCSSBackendDispatcher>::reset[abi:sn200100](&a14, 0);
  _Unwind_Resume(a1);
}

void sub_273CBE644(_Unwind_Exception *a1, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t *a10, uint64_t a11, uint64_t a12, Inspector::InspectorAgentBase *a13, uint64_t a14)
{
  if (a10)
  {
    [RWIProtocolConfiguration setCSSHandler:a10];
  }

  if (a13)
  {
    Inspector::AlternateDispatchableAgent<Inspector::NetworkBackendDispatcher,Inspector::AlternateNetworkBackendDispatcher>::~AlternateDispatchableAgent(a13, a2);
    WTF::fastFree(v15, v16);
  }

  std::unique_ptr<Inspector::ObjCInspectorCSSBackendDispatcher>::reset[abi:sn200100](&a14, 0);
  _Unwind_Resume(a1);
}

void sub_273CBE810(_Unwind_Exception *a1, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t *a10, uint64_t a11, uint64_t a12, Inspector::InspectorAgentBase *a13, uint64_t a14)
{
  if (a10)
  {
    [RWIProtocolConfiguration setCSSHandler:a10];
  }

  if (a13)
  {
    Inspector::AlternateDispatchableAgent<Inspector::PageBackendDispatcher,Inspector::AlternatePageBackendDispatcher>::~AlternateDispatchableAgent(a13, a2);
    WTF::fastFree(v15, v16);
  }

  std::unique_ptr<Inspector::ObjCInspectorCSSBackendDispatcher>::reset[abi:sn200100](&a14, 0);
  _Unwind_Resume(a1);
}

void *Inspector::ObjCInspectorCSSBackendDispatcher::ObjCInspectorCSSBackendDispatcher(void *a1, void *a2)
{
  a1[1] = 0;
  *a1 = &unk_2882B15C8;
  a1[2] = 0;
  if (a2)
  {
    v4 = a2;
    v5 = a1[2];
    a1[2] = a2;
    if (v5)
    {
    }
  }

  return a1;
}

void sub_273CBEA2C(_Unwind_Exception *a1, void *a2)
{
  v5 = *(v2 + 16);
  *(v2 + 16) = 0;
  if (v5)
  {
  }

  Inspector::ObjCInspectorCSSBackendDispatcher::ObjCInspectorCSSBackendDispatcher(v3, a2);
  _Unwind_Resume(a1);
}

atomic_uint *std::make_unique[abi:sn200100]<Inspector::AlternateDispatchableAgent<Inspector::CSSBackendDispatcher,Inspector::AlternateCSSBackendDispatcher>,WTF::ASCIILiteral,Inspector::AugmentableInspectorController &,std::unique_ptr<Inspector::ObjCInspectorCSSBackendDispatcher>,0>@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, void *a4@<X8>)
{
  v8 = WTF::fastMalloc(0x20);
  v9 = a1[1];
  if (v9)
  {
    if (v9 == 1)
    {
      v10 = MEMORY[0x277CD4668];
      atomic_fetch_add_explicit(MEMORY[0x277CD4668], 2u, memory_order_relaxed);
    }

    else
    {
      v11 = *a1;
      WTF::StringImpl::createWithoutCopyingNonEmpty();
      v10 = v15[1];
    }

    v15[0] = v10;
  }

  else
  {
    v15[0] = 0;
  }

  v12 = *a3;
  *a3 = 0;
  v14 = v12;
  Inspector::AlternateDispatchableAgent<Inspector::CSSBackendDispatcher,Inspector::AlternateCSSBackendDispatcher>::AlternateDispatchableAgent(v8, v15, a2, &v14);
  return std::make_unique[abi:sn200100]<Inspector::AlternateDispatchableAgent<Inspector::CSSBackendDispatcher,Inspector::AlternateCSSBackendDispatcher>,WTF::ASCIILiteral,Inspector::AugmentableInspectorController &,std::unique_ptr<Inspector::ObjCInspectorCSSBackendDispatcher>,0>(v8, a4, &v14);
}

void *Inspector::AlternateDispatchableAgent<Inspector::CSSBackendDispatcher,Inspector::AlternateCSSBackendDispatcher>::AlternateDispatchableAgent(void *a1, atomic_uint **a2, uint64_t a3, uint64_t *a4)
{
  *a1 = &unk_2882B1A20;
  v6 = *a2;
  if (*a2)
  {
    atomic_fetch_add_explicit(v6, 2u, memory_order_relaxed);
  }

  *a1 = &unk_2882B19E0;
  a1[1] = v6;
  v7 = *a4;
  *a4 = 0;
  a1[2] = v7;
  (*(*a3 + 40))(a3);
  Inspector::CSSBackendDispatcher::create();
  v8 = a1[2];
  *(a1[3] + 24) = v8;
  v9 = (*(*a3 + 40))(a3);
  ++*v9;
  v11 = *(v8 + 8);
  *(v8 + 8) = v9;
  if (v11)
  {
    WTF::RefCounted<Inspector::BackendDispatcher>::deref(v11, v10);
  }

  return a1;
}

void sub_273CBEC68(_Unwind_Exception *a1)
{
  WTF::Ref<Inspector::CSSBackendDispatcher,WTF::RawPtrTraits<Inspector::CSSBackendDispatcher>,WTF::DefaultRefDerefTraits<Inspector::CSSBackendDispatcher>>::~Ref((v1 + 24));
  v4 = *(v1 + 16);
  *(v1 + 16) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  Inspector::InspectorAgentBase::~InspectorAgentBase(v1, v3);
  _Unwind_Resume(a1);
}

_DWORD **WTF::Ref<Inspector::CSSBackendDispatcher,WTF::RawPtrTraits<Inspector::CSSBackendDispatcher>,WTF::DefaultRefDerefTraits<Inspector::CSSBackendDispatcher>>::~Ref(_DWORD **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (v2[2] == 1)
    {
      (*(*v2 + 8))(v2);
    }

    else
    {
      --v2[2];
    }
  }

  return a1;
}

uint64_t Inspector::AlternateDispatchableAgent<Inspector::CSSBackendDispatcher,Inspector::AlternateCSSBackendDispatcher>::~AlternateDispatchableAgent(Inspector::InspectorAgentBase *a1, void *a2)
{
  Inspector::AlternateDispatchableAgent<Inspector::CSSBackendDispatcher,Inspector::AlternateCSSBackendDispatcher>::~AlternateDispatchableAgent(a1, a2);

  return WTF::fastFree(v2, v3);
}

uint64_t std::unique_ptr<Inspector::ObjCInspectorCSSBackendDispatcher>::reset[abi:sn200100](uint64_t *a1, uint64_t a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    return std::unique_ptr<Inspector::ObjCInspectorCSSBackendDispatcher>::reset[abi:sn200100](result);
  }

  return result;
}

void *Inspector::ObjCInspectorDOMBackendDispatcher::ObjCInspectorDOMBackendDispatcher(void *a1, void *a2)
{
  a1[1] = 0;
  *a1 = &unk_2882B1680;
  a1[2] = 0;
  if (a2)
  {
    v4 = a2;
    v5 = a1[2];
    a1[2] = a2;
    if (v5)
    {
    }
  }

  return a1;
}

void sub_273CBEE00(_Unwind_Exception *a1, void *a2)
{
  v5 = *(v2 + 16);
  *(v2 + 16) = 0;
  if (v5)
  {
  }

  Inspector::ObjCInspectorCSSBackendDispatcher::ObjCInspectorCSSBackendDispatcher(v3, a2);
  _Unwind_Resume(a1);
}

atomic_uint *std::make_unique[abi:sn200100]<Inspector::AlternateDispatchableAgent<Inspector::DOMBackendDispatcher,Inspector::AlternateDOMBackendDispatcher>,WTF::ASCIILiteral,Inspector::AugmentableInspectorController &,std::unique_ptr<Inspector::ObjCInspectorDOMBackendDispatcher>,0>@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, void *a4@<X8>)
{
  v8 = WTF::fastMalloc(0x20);
  v9 = a1[1];
  if (v9)
  {
    if (v9 == 1)
    {
      v10 = MEMORY[0x277CD4668];
      atomic_fetch_add_explicit(MEMORY[0x277CD4668], 2u, memory_order_relaxed);
    }

    else
    {
      v11 = *a1;
      WTF::StringImpl::createWithoutCopyingNonEmpty();
      v10 = v15[1];
    }

    v15[0] = v10;
  }

  else
  {
    v15[0] = 0;
  }

  v12 = *a3;
  *a3 = 0;
  v14 = v12;
  Inspector::AlternateDispatchableAgent<Inspector::DOMBackendDispatcher,Inspector::AlternateDOMBackendDispatcher>::AlternateDispatchableAgent(v8, v15, a2, &v14);
  return std::make_unique[abi:sn200100]<Inspector::AlternateDispatchableAgent<Inspector::DOMBackendDispatcher,Inspector::AlternateDOMBackendDispatcher>,WTF::ASCIILiteral,Inspector::AugmentableInspectorController &,std::unique_ptr<Inspector::ObjCInspectorDOMBackendDispatcher>,0>(v8, a4, &v14);
}

void *Inspector::AlternateDispatchableAgent<Inspector::DOMBackendDispatcher,Inspector::AlternateDOMBackendDispatcher>::AlternateDispatchableAgent(void *a1, atomic_uint **a2, uint64_t a3, uint64_t *a4)
{
  *a1 = &unk_2882B1A20;
  v6 = *a2;
  if (*a2)
  {
    atomic_fetch_add_explicit(v6, 2u, memory_order_relaxed);
  }

  *a1 = &unk_2882B1A60;
  a1[1] = v6;
  v7 = *a4;
  *a4 = 0;
  a1[2] = v7;
  (*(*a3 + 40))(a3);
  Inspector::DOMBackendDispatcher::create();
  v8 = a1[2];
  *(a1[3] + 24) = v8;
  v9 = (*(*a3 + 40))(a3);
  ++*v9;
  v11 = *(v8 + 8);
  *(v8 + 8) = v9;
  if (v11)
  {
    WTF::RefCounted<Inspector::BackendDispatcher>::deref(v11, v10);
  }

  return a1;
}