WTF::StringImpl *WebScriptDebugger::handlePause(WTF::StringImpl *result, WebCore::JSDOMWindowBase *this)
{
  if (*(result + 248))
  {
    return result;
  }

  v2 = result;
  if (*(result + 13) != 1)
  {
    return result;
  }

  *(result + 248) = 1;
  v3 = WebCore::JSDOMWindowBase::wrapped(this);
  v4 = (*(*v3 + 104))(v3);
  if (!v4 || (*(v4 + 136) & 1) != 0 || (v5 = *(*(v4 + 208) + 16), ((*(*v5 + 1032))(v5) & 1) != 0))
  {
    v6 = 0;
  }

  else
  {
    v6 = v5[3];
  }

  v7 = [v6 webView];
  v8 = JSC::Debugger::currentDebuggerCallFrame(v2);
  v9 = *(v2 + 56);
  JSC::DebuggerCallFrame::functionName();
  v10 = [WebScriptCallFrame alloc];
  v11 = WebCore::ScriptController::windowScriptObject(*(*(v6[1] + 8) + 232));
  if (v21)
  {
    atomic_fetch_add_explicit(v21, 2u, memory_order_relaxed);
  }

  v20 = v21;
  v13 = [(WebScriptCallFrame *)v10 _initWithGlobalObject:v11 functionName:&v20 exceptionValue:v9];
  v14 = v20;
  v20 = 0;
  if (v14 && atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v14, v12);
  }

  if (v7)
  {
    v15 = (*(v7 + 80) + 656);
    v16 = *(*(v7 + 80) + 680);
    if (!v16)
    {
      goto LABEL_21;
    }

LABEL_16:
    if (v15[1] == 1)
    {
      v17 = *(v2 + 48);
      v18 = JSC::DebuggerCallFrame::sourceID(v8);
      if (*(*(v7 + 80) + 112))
      {
        (v16)(*(*(v7 + 80) + 112), sel_webView_exceptionWasRaised_hasHandler_sourceId_line_forWebFrame_, v7, v13, (v17 >> 7) & 1, v18, v8[6], v6, v20);
      }
    }

    else
    {
      v19 = JSC::DebuggerCallFrame::sourceID(v8);
      if (*(*(v7 + 80) + 112))
      {
        v16(*(*(v7 + 80) + 112), sel_webView_exceptionWasRaised_sourceId_line_forWebFrame_, v7, v13, v19, v8[6], v6);
      }
    }

    goto LABEL_21;
  }

  v15 = &WebViewGetScriptDebugDelegateImplementations(WebView *)::empty;
  v16 = qword_1EC261300;
  if (qword_1EC261300)
  {
    goto LABEL_16;
  }

LABEL_21:
  *(v2 + 248) = 0;
  if (v13)
  {
  }

  result = v21;
  v21 = 0;
  if (result)
  {
    if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(result, v12);
    }
  }

  return result;
}

void WebScriptDebugger::~WebScriptDebugger(WebScriptDebugger *this)
{
  v1 = *(this + 33);
  if (v1)
  {
    v2 = (v1 - 16);
    v3 = *(((v1 - 16) & 0xFFFFFFFFFFFFF000) + 0x10);
    v4 = *(v1 - 8);
    if (v4)
    {
      v5 = *v2;
      *v4 = *v2;
      *(v5 + 8) = v4;
      *v2 = 0;
      v2[1] = 0;
    }

    *v2 = *(v3 + 40);
    *(v3 + 40) = v2;
    *(this + 33) = 0;
  }

  JSC::Debugger::~Debugger(this);
}

{
  v1 = *(this + 33);
  if (v1)
  {
    v2 = (v1 - 16);
    v3 = *(((v1 - 16) & 0xFFFFFFFFFFFFF000) + 0x10);
    v4 = *(v1 - 8);
    if (v4)
    {
      v5 = *v2;
      *v4 = *v2;
      *(v5 + 8) = v4;
      *v2 = 0;
      v2[1] = 0;
    }

    *v2 = *(v3 + 40);
    *(v3 + 40) = v2;
    *(this + 33) = 0;
  }

  JSC::Debugger::~Debugger(this);

  bmalloc::api::tzoneFree(v6, v7);
}

void ___ZL43hardwareKeyboardAvailabilityChangedCallbackP22__CFNotificationCenterPvPK10__CFStringPKvPK14__CFDictionary_block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v2 = [WeakRetained _frame];
    if (v2)
    {
      v3 = *(*(v2 + 8) + 8);
      if (v3)
      {
        WebCore::EventHandler::capsLockStateMayHaveChanged(*(v3 + 336));
      }
    }
  }
}

uint64_t *createSelectorExceptionMap(void)
{
  v0 = WTF::fastMalloc(8);
  *v0 = 0;
  v3 = "InsertNewline";
  v4 = 14;
  v5 = sel_insertNewlineIgnoringFieldEditor_;
  WTF::HashMap<objc_selector *,WTF::String,WTF::DefaultHash<objc_selector *>,WTF::HashTraits<objc_selector *>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::add<WTF::ASCIILiteral>(v2, v0, &v5, &v3);
  v4 = 14;
  v5 = sel_insertParagraphSeparator_;
  v3 = "InsertNewline";
  WTF::HashMap<objc_selector *,WTF::String,WTF::DefaultHash<objc_selector *>,WTF::HashTraits<objc_selector *>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::add<WTF::ASCIILiteral>(v2, v0, &v5, &v3);
  v3 = "InsertTab";
  v4 = 10;
  v5 = sel_insertTabIgnoringFieldEditor_;
  WTF::HashMap<objc_selector *,WTF::String,WTF::DefaultHash<objc_selector *>,WTF::HashTraits<objc_selector *>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::add<WTF::ASCIILiteral>(v2, v0, &v5, &v3);
  v3 = "MovePageDown";
  v4 = 13;
  v5 = sel_pageDown_;
  WTF::HashMap<objc_selector *,WTF::String,WTF::DefaultHash<objc_selector *>,WTF::HashTraits<objc_selector *>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::add<WTF::ASCIILiteral>(v2, v0, &v5, &v3);
  v3 = "MovePageDownAndModifySelection";
  v4 = 31;
  v5 = sel_pageDownAndModifySelection_;
  WTF::HashMap<objc_selector *,WTF::String,WTF::DefaultHash<objc_selector *>,WTF::HashTraits<objc_selector *>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::add<WTF::ASCIILiteral>(v2, v0, &v5, &v3);
  v3 = "MovePageUp";
  v4 = 11;
  v5 = sel_pageUp_;
  WTF::HashMap<objc_selector *,WTF::String,WTF::DefaultHash<objc_selector *>,WTF::HashTraits<objc_selector *>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::add<WTF::ASCIILiteral>(v2, v0, &v5, &v3);
  v3 = "MovePageUpAndModifySelection";
  v4 = 29;
  v5 = sel_pageUpAndModifySelection_;
  WTF::HashMap<objc_selector *,WTF::String,WTF::DefaultHash<objc_selector *>,WTF::HashTraits<objc_selector *>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::add<WTF::ASCIILiteral>(v2, v0, &v5, &v3);
  return v0;
}

WTF::StringImpl *WTF::HashMap<objc_selector *,WTF::String,WTF::DefaultHash<objc_selector *>,WTF::HashTraits<objc_selector *>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::add<WTF::ASCIILiteral>(WTF::StringImpl *result, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  v4 = *a3;
  if (*a3 == -1 || !v4)
  {
    __break(0xC471u);
    JUMPOUT(0x1C7A872D0);
  }

  v5 = a2;
  v6 = result;
  v7 = *a2;
  if (!*a2)
  {
    v8 = a3;
    v9 = a4;
    result = WTF::HashTable<objc_selector *,WTF::KeyValuePair<objc_selector *,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<objc_selector *,WTF::String>>,WTF::DefaultHash<objc_selector *>,WTF::HashMap<objc_selector *,WTF::String,WTF::DefaultHash<objc_selector *>,WTF::HashTraits<objc_selector *>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<objc_selector *>,WTF::FastMalloc>::rehash(a2, 8u, 0);
    a3 = v8;
    a4 = v9;
    v7 = *v5;
    v4 = *v8;
  }

  v10 = *(v7 - 8);
  v11 = (v4 + ~(v4 << 32)) ^ ((v4 + ~(v4 << 32)) >> 22);
  v12 = 9 * ((v11 + ~(v11 << 13)) ^ ((v11 + ~(v11 << 13)) >> 8));
  v13 = (v12 ^ (v12 >> 15)) + ~((v12 ^ (v12 >> 15)) << 27);
  v14 = v10 & ((v13 >> 31) ^ v13);
  v15 = (v7 + 16 * v14);
  v16 = *v15;
  if (*v15)
  {
    v17 = 0;
    v18 = 1;
    do
    {
      if (v16 == v4)
      {
        v25 = 0;
        v26 = v7 + 16 * *(v7 - 4);
        goto LABEL_31;
      }

      if (v16 == -1)
      {
        v17 = v15;
      }

      v14 = (v14 + v18) & v10;
      v15 = (v7 + 16 * v14);
      v16 = *v15;
      ++v18;
    }

    while (*v15);
    if (v17)
    {
      *v17 = 0;
      v17[1] = 0;
      --*(*v5 - 16);
      v4 = *a3;
      v15 = v17;
    }
  }

  *v15 = v4;
  v19 = *(a4 + 8);
  if (v19)
  {
    a2 = (v19 - 1);
    if (v19 == 1)
    {
      v27 = MEMORY[0x1E696EB88];
      atomic_fetch_add_explicit(MEMORY[0x1E696EB88], 2u, memory_order_relaxed);
      result = v15[1];
      v15[1] = v27;
      if (!result)
      {
        goto LABEL_19;
      }

      goto LABEL_17;
    }

    WTF::StringImpl::createWithoutCopyingNonEmpty();
    v19 = v28;
  }

  result = v15[1];
  v15[1] = v19;
  if (!result)
  {
    goto LABEL_19;
  }

LABEL_17:
  if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    result = WTF::StringImpl::destroy(result, a2);
  }

LABEL_19:
  v20 = *v5;
  if (*v5)
  {
    v21 = *(v20 - 16);
    v22 = *(v20 - 12) + 1;
    *(v20 - 12) = v22;
    v23 = (v21 + v22);
    v24 = *(v20 - 4);
    if (v24 <= 0x400)
    {
      goto LABEL_21;
    }

LABEL_27:
    if (v24 > 2 * v23)
    {
      goto LABEL_30;
    }

    goto LABEL_28;
  }

  v22 = 1;
  MEMORY[0xFFFFFFFFFFFFFFF4] = 1;
  v23 = (MEMORY[0xFFFFFFFFFFFFFFF0] + 1);
  v24 = MEMORY[0xFFFFFFFFFFFFFFFC];
  if (MEMORY[0xFFFFFFFFFFFFFFFC] > 0x400u)
  {
    goto LABEL_27;
  }

LABEL_21:
  if (3 * v24 <= 4 * v23)
  {
    if (!v24)
    {
      result = WTF::HashTable<objc_selector *,WTF::KeyValuePair<objc_selector *,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<objc_selector *,WTF::String>>,WTF::DefaultHash<objc_selector *>,WTF::HashMap<objc_selector *,WTF::String,WTF::DefaultHash<objc_selector *>,WTF::HashTraits<objc_selector *>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<objc_selector *>,WTF::FastMalloc>::rehash(v5, 8u, v15);
      v15 = result;
      v20 = *v5;
      if (!*v5)
      {
LABEL_24:
        v24 = 0;
        goto LABEL_30;
      }

LABEL_29:
      v24 = *(v20 - 4);
      goto LABEL_30;
    }

LABEL_28:
    result = WTF::HashTable<objc_selector *,WTF::KeyValuePair<objc_selector *,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<objc_selector *,WTF::String>>,WTF::DefaultHash<objc_selector *>,WTF::HashMap<objc_selector *,WTF::String,WTF::DefaultHash<objc_selector *>,WTF::HashTraits<objc_selector *>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<objc_selector *>,WTF::FastMalloc>::rehash(v5, v24 << (6 * v22 >= (2 * v24)), v15);
    v15 = result;
    v20 = *v5;
    if (!*v5)
    {
      goto LABEL_24;
    }

    goto LABEL_29;
  }

LABEL_30:
  v26 = v20 + 16 * v24;
  v25 = 1;
LABEL_31:
  *v6 = v15;
  *(v6 + 1) = v26;
  *(v6 + 16) = v25;
  return result;
}

uint64_t WTF::HashTable<objc_selector *,WTF::KeyValuePair<objc_selector *,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<objc_selector *,WTF::String>>,WTF::DefaultHash<objc_selector *>,WTF::HashMap<objc_selector *,WTF::String,WTF::DefaultHash<objc_selector *>,WTF::HashTraits<objc_selector *>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<objc_selector *>,WTF::FastMalloc>::rehash(uint64_t *a1, unsigned int a2, uint64_t *a3)
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
  if (v7)
  {
    v11 = 0;
    v12 = 0;
    do
    {
      v13 = (v6 + 16 * v11);
      v14 = *v13;
      if (*v13 != -1)
      {
        if (v14)
        {
          v16 = *a1;
          if (*a1)
          {
            v17 = *(v16 - 8);
          }

          else
          {
            v17 = 0;
          }

          v18 = (~(v14 << 32) + v14) ^ ((~(v14 << 32) + v14) >> 22);
          v19 = 9 * ((v18 + ~(v18 << 13)) ^ ((v18 + ~(v18 << 13)) >> 8));
          v20 = (v19 ^ (v19 >> 15)) + ~((v19 ^ (v19 >> 15)) << 27);
          v21 = v17 & ((v20 >> 31) ^ v20);
          v22 = 1;
          do
          {
            v23 = v21;
            v24 = *(v16 + 16 * v21);
            v21 = (v21 + v22++) & v17;
          }

          while (v24);
          v25 = v16 + 16 * v23;
          v26 = *(v25 + 8);
          *(v25 + 8) = 0;
          if (v26 && atomic_fetch_add_explicit(v26, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v26, v10);
          }

          v27 = *v13;
          v13[1] = 0;
          *v25 = v27;
          v28 = v13[1];
          v13[1] = 0;
          if (v28 && atomic_fetch_add_explicit(v28, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v28, v10);
          }

          if (v13 == a3)
          {
            v12 = v25;
          }
        }

        else
        {
          v15 = v13[1];
          v13[1] = 0;
          if (v15)
          {
            if (atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v15, v10);
            }
          }
        }
      }

      ++v11;
    }

    while (v11 != v7);
  }

  else
  {
    v12 = 0;
    result = 0;
    if (!v6)
    {
      return result;
    }
  }

  WTF::fastFree((v6 - 16), v10);
  return v12;
}

void WebCore::PlatformKeyboardEvent::~PlatformKeyboardEvent(WebCore::PlatformKeyboardEvent *this, WTF::StringImpl *a2)
{
  v3 = *(this + 13);
  *(this + 13) = 0;
  if (v3)
  {
  }

  v4 = *(this + 11);
  *(this + 11) = 0;
  if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v4, a2);
  }

  v5 = *(this + 10);
  *(this + 10) = 0;
  if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v5, a2);
  }

  v6 = *(this + 9);
  *(this + 9) = 0;
  if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v6, a2);
  }

  v7 = *(this + 8);
  *(this + 8) = 0;
  if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v7, a2);
  }

  v8 = *(this + 7);
  *(this + 7) = 0;
  if (v8)
  {
    if (atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v8, a2);
    }
  }
}

void WebCore::ResourceCacheValidationSuppressor::~ResourceCacheValidationSuppressor(atomic_uint **this, void *a2)
{
  v2 = *this;
  v3 = *(*this + 1);
  if (v3)
  {
    *(v3 + 274) = *(this + 8);
    *this = 0;
    add = atomic_fetch_add(v2, 0xFFFFFFFF);
    if (add == 1)
    {
      atomic_store(add, v2);
      WTF::fastFree(v2, a2);
    }
  }

  else
  {
    __break(0xC471u);
  }
}

void WebCore::KeypressCommand::~KeypressCommand(WebCore::KeypressCommand *this, void *a2)
{
  v3 = *(this + 11);
  v4 = *(this + 4);
  if (v3)
  {
    v5 = 40 * v3;
    v6 = v4 + 32;
    while (1)
    {
      if (*v6 == 1 && (v7 = *(v6 - 1), (v7 & 0x8000000000000) != 0) && (v8 = (v7 & 0xFFFFFFFFFFFFLL), atomic_fetch_add((v7 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1))
      {
        atomic_store(1u, v8);
        WTF::fastFree(v8, a2);
        if (*(v6 - 16) == 1)
        {
LABEL_8:
          v9 = *(v6 - 3);
          if ((v9 & 0x8000000000000) != 0)
          {
            v10 = (v9 & 0xFFFFFFFFFFFFLL);
            if (atomic_fetch_add((v9 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
            {
              atomic_store(1u, v10);
              WTF::fastFree(v10, a2);
            }
          }
        }
      }

      else if (*(v6 - 16) == 1)
      {
        goto LABEL_8;
      }

      v6 += 40;
      v5 -= 40;
      if (!v5)
      {
        v4 = *(this + 4);
        break;
      }
    }
  }

  if (v4)
  {
    *(this + 4) = 0;
    *(this + 10) = 0;
    WTF::fastFree(v4, a2);
  }

  v11 = *(this + 7);
  v12 = *(this + 2);
  if (v11)
  {
    v13 = 32 * v11;
    v14 = (v12 + 16);
    do
    {
      v16 = *v14;
      v14 += 4;
      v15 = v16;
      if ((v16 & 0x8000000000000) != 0)
      {
        v17 = (v15 & 0xFFFFFFFFFFFFLL);
        if (atomic_fetch_add((v15 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
        {
          atomic_store(1u, v17);
          WTF::fastFree(v17, a2);
        }
      }

      v13 -= 32;
    }

    while (v13);
    v12 = *(this + 2);
  }

  if (v12)
  {
    *(this + 2) = 0;
    *(this + 6) = 0;
    WTF::fastFree(v12, a2);
  }

  v18 = *(this + 1);
  *(this + 1) = 0;
  if (v18 && atomic_fetch_add_explicit(v18, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v18, a2);
  }

  v19 = *this;
  *this = 0;
  if (v19)
  {
    if (atomic_fetch_add_explicit(v19, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v19, a2);
    }
  }
}

WebCore::EditingStyle **WTF::Ref<WebCore::EditingStyle,WTF::RawPtrTraits<WebCore::EditingStyle>,WTF::DefaultRefDerefTraits<WebCore::EditingStyle>>::~Ref(WebCore::EditingStyle **result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    if (*v1 == 1)
    {
      v2 = result;
      WebCore::EditingStyle::~EditingStyle(v1);
      WTF::fastFree(v3, v4);
      return v2;
    }

    else
    {
      --*v1;
    }
  }

  return result;
}

unint64_t WTF::Vector<WebCore::KeypressCommand,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v4 = *a1;
  if (*a1 > a3 || v4 + 80 * *(a1 + 12) <= a3)
  {
    v11 = *(a1 + 8);
    if (v11 + (v11 >> 1) <= v11 + 1)
    {
      v12 = v11 + 1;
    }

    else
    {
      v12 = v11 + (v11 >> 1);
    }

    if (v12 <= a2)
    {
      v12 = a2;
    }

    if (v12 <= 0x10)
    {
      v13 = 16;
    }

    else
    {
      v13 = v12;
    }

    WTF::Vector<WebCore::KeypressCommand,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v13);
    return a3;
  }

  else
  {
    v5 = a3 - v4;
    v6 = *(a1 + 8);
    if (v6 + (v6 >> 1) <= v6 + 1)
    {
      v7 = v6 + 1;
    }

    else
    {
      v7 = v6 + (v6 >> 1);
    }

    if (v7 <= a2)
    {
      v7 = a2;
    }

    if (v7 <= 0x10)
    {
      v8 = 16;
    }

    else
    {
      v8 = v7;
    }

    WTF::Vector<WebCore::KeypressCommand,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v8);
    return *a1 + v5;
  }
}

uint64_t WTF::Vector<WebCore::KeypressCommand,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(uint64_t result, unint64_t a2)
{
  if (*(result + 8) < a2)
  {
    if (a2 >= 0x3333334)
    {
      __break(0xC471u);
    }

    else
    {
      v2 = result;
      v3 = *result;
      v4 = *(result + 12);
      v5 = 80 * a2;
      result = WTF::fastMalloc((80 * a2));
      *(v2 + 8) = v5 / 0x50;
      *v2 = result;
      if (v4)
      {
        v7 = result;
        result = v3;
        do
        {
          v8 = *result;
          *result = 0;
          *v7 = v8;
          v9 = *(result + 8);
          *(result + 8) = 0;
          *(v7 + 16) = 0;
          *(v7 + 24) = 0;
          *(v7 + 8) = v9;
          v10 = *(result + 16);
          *(result + 16) = 0;
          *(v7 + 16) = v10;
          LODWORD(v10) = *(result + 24);
          *(result + 24) = 0;
          *(v7 + 24) = v10;
          LODWORD(v10) = *(result + 28);
          *(result + 28) = 0;
          *(v7 + 28) = v10;
          *(v7 + 32) = 0;
          *(v7 + 40) = 0;
          v11 = *(result + 32);
          *(result + 32) = 0;
          *(v7 + 32) = v11;
          LODWORD(v11) = *(result + 40);
          *(result + 40) = 0;
          *(v7 + 40) = v11;
          LODWORD(v11) = *(result + 44);
          *(result + 44) = 0;
          *(v7 + 44) = v11;
          v12 = *(result + 64);
          *(v7 + 48) = *(result + 48);
          *(v7 + 64) = v12;
          WebCore::KeypressCommand::~KeypressCommand(result, v6);
          v7 += 80;
          result = v13 + 80;
        }

        while (result != (v3 + 80 * v4));
      }

      if (v3)
      {
        if (*v2 == v3)
        {
          *v2 = 0;
          *(v2 + 8) = 0;
        }

        return WTF::fastFree(v3, v6);
      }
    }
  }

  return result;
}

void JSC::Strong<JSC::JSGlobalObject,(JSC::ShouldStrongDestructorGrabLock)0>::~Strong(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1)
  {
    v2 = (v1 - 16);
    v3 = *(((v1 - 16) & 0xFFFFFFFFFFFFF000) + 0x10);
    v4 = *(v1 - 8);
    if (v4)
    {
      v5 = *v2;
      *v4 = *v2;
      *(v5 + 8) = v4;
      *v2 = 0;
      v2[1] = 0;
    }

    *v2 = *(v3 + 40);
    *(v3 + 40) = v2;
    *(a1 + 8) = 0;
  }

  JUMPOUT(0x1CCA6A890);
}

uint64_t WTF::Vector<JSC::Breakpoint::Action,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(uint64_t a1, WTF::StringImpl *a2)
{
  v3 = *(a1 + 12);
  v4 = *a1;
  if (v3)
  {
    v5 = 24 * v3;
    v6 = (v4 + 8);
    do
    {
      v7 = *v6;
      *v6 = 0;
      if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v7, a2);
      }

      v6 += 3;
      v5 -= 24;
    }

    while (v5);
    v4 = *a1;
  }

  if (v4)
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    WTF::fastFree(v4, a2);
  }

  return a1;
}

uint64_t WTF::RefCounted<JSC::Breakpoint>::deref(uint64_t this, WTF::StringImpl *a2)
{
  v2 = this;
  if (*this == 1)
  {
    v3 = *(this + 52);
    v4 = *(this + 40);
    if (v3)
    {
      v5 = 24 * v3;
      v6 = (v4 + 8);
      do
      {
        v7 = *v6;
        *v6 = 0;
        if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v7, a2);
        }

        v6 += 3;
        v5 -= 24;
      }

      while (v5);
      v4 = *(v2 + 40);
    }

    if (v4)
    {
      *(v2 + 40) = 0;
      *(v2 + 48) = 0;
      WTF::fastFree(v4, a2);
    }

    v8 = *(v2 + 32);
    *(v2 + 32) = 0;
    if (v8 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v8, a2);
    }

    if (*v2 == 1)
    {

      return bmalloc::api::tzoneFree(v2, a2);
    }

    else
    {
      this = 191;
      __break(0xC471u);
    }
  }

  else
  {
    --*this;
  }

  return this;
}

void sub_1C7A8801C(_Unwind_Exception *exception_object, void *a2)
{
  if (*v2 == 1)
  {
    WTF::fastFree(v2, a2);
    _Unwind_Resume(exception_object);
  }

  --*v2;
  _Unwind_Resume(exception_object);
}

void sub_1C7A8810C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, _DWORD *a10)
{
  WTF::Ref<WebCore::DOMWrapperWorld,WTF::RawPtrTraits<WebCore::DOMWrapperWorld>,WTF::DefaultRefDerefTraits<WebCore::DOMWrapperWorld>>::~Ref(&a10);
  if (a9)
  {
    if (atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a9, v11);
    }
  }

  _Unwind_Resume(a1);
}

_DWORD **WTF::Ref<WebCore::DOMWrapperWorld,WTF::RawPtrTraits<WebCore::DOMWrapperWorld>,WTF::DefaultRefDerefTraits<WebCore::DOMWrapperWorld>>::~Ref(_DWORD **result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    if (*v1 == 1)
    {
      v2 = result;
      v3 = MEMORY[0x1CCA65100](v1);
      WTF::fastFree(v3, v4);
      return v2;
    }

    else
    {
      --*v1;
    }
  }

  return result;
}

void sub_1C7A883FC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  WTF::Ref<WebCore::DOMWrapperWorld,WTF::RawPtrTraits<WebCore::DOMWrapperWorld>,WTF::DefaultRefDerefTraits<WebCore::DOMWrapperWorld>>::~Ref(va);
  _Unwind_Resume(a1);
}

void sub_1C7A88658(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  WTF::Ref<WebCore::DOMWrapperWorld,WTF::RawPtrTraits<WebCore::DOMWrapperWorld>,WTF::DefaultRefDerefTraits<WebCore::DOMWrapperWorld>>::~Ref(va);
  _Unwind_Resume(a1);
}

void sub_1C7A8866C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  WTF::Ref<WebCore::DOMWrapperWorld,WTF::RawPtrTraits<WebCore::DOMWrapperWorld>,WTF::DefaultRefDerefTraits<WebCore::DOMWrapperWorld>>::~Ref(va);
  _Unwind_Resume(a1);
}

void sub_1C7A88BB4(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::RenderingResource,(WTF::DestructionThread)0>::deref((a10 + 8), a2);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_1C7A88F28(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10, WTF::StringImpl *a11, uint64_t a12)
{
  if (a11 && atomic_fetch_add_explicit(a11, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a11, a2);
  }

  if (a10)
  {
    if (atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a10, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

void sub_1C7A8ACD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, bmalloc::api *a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  MEMORY[0x1CCA65F00](&a68);
  if (atomic_fetch_add(v69 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v69 + 2);
    (*(*v69 + 16))(v69);
    if (!v68)
    {
LABEL_5:
      _Unwind_Resume(a1);
    }
  }

  else if (!v68)
  {
    goto LABEL_5;
  }

  _Unwind_Resume(a1);
}

WebViewGroup **WTF::Ref<WebViewGroup,WTF::RawPtrTraits<WebViewGroup>,WTF::DefaultRefDerefTraits<WebViewGroup>>::~Ref(WebViewGroup **result, WTF::StringImpl *a2)
{
  v2 = *result;
  *result = 0;
  if (v2)
  {
    if (*v2 == 1)
    {
      v3 = result;
      WebViewGroup::~WebViewGroup(v2, a2);
      WTF::fastFree(v4, v5);
      return v3;
    }

    else
    {
      --*v2;
    }
  }

  return result;
}

id **WTF::UniqueRef<WebChromeClientIOS>::~UniqueRef(id **result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    objc_destroyWeak(v1 + 2);
    WebCore::ChromeClient::~ChromeClient(v1);
    bmalloc::api::tzoneFree(v3, v4);
    return v2;
  }

  return result;
}

bmalloc::api **WTF::UniqueRef<WebCore::DummyStorageProvider>::~UniqueRef(bmalloc::api **a1, WTF::StringImpl *a2)
{
  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    v4 = *(v3 + 2);
    *(v3 + 2) = 0;
    if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v4, a2);
    }

    v5 = *(v3 + 1);
    *(v3 + 1) = 0;
    if (v5 && atomic_fetch_add(v5 + 2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v5 + 2);
      (*(*v5 + 8))(v5);
    }

    bmalloc::api::tzoneFree(v3, a2);
  }

  return a1;
}

void *WTF::UniqueRef<WebCore::DummySpeechRecognitionProvider>::~UniqueRef(void **a1, void *a2)
{
  v2 = a1;
  v3 = *a1;
  *v2 = 0;
  if (v3)
  {
    v4 = v2;
    v5 = *(v3 + 1);
    *(v3 + 1) = 0;
    if (v5)
    {
      if (v5[2] == 1)
      {
        v6 = v3;
        (*(*v5 + 8))(v5);
        v3 = v6;
      }

      else
      {
        --v5[2];
      }
    }

    bmalloc::api::tzoneFree(v3, a2);
    return v4;
  }

  return v2;
}

uint64_t *mpark::variant<WebCore::PageConfiguration::LocalMainFrameCreationParameters,WTF::CompletionHandler<WTF::UniqueRef<WebCore::RemoteFrameClient> ()(WebCore::RemoteFrame &)>>::~variant(uint64_t *result)
{
  v1 = *(result + 16);
  if (v1 != 255)
  {
    v2 = *result;
    *result = 0;
    if (v1)
    {
      if (v2)
      {
        goto LABEL_6;
      }
    }

    else if (v2)
    {
LABEL_6:
      v3 = result;
      (*(*v2 + 8))(v2);
      result = v3;
    }
  }

  *(result + 16) = -1;
  return result;
}

WebEditorClient **WTF::UniqueRef<WebEditorClient>::~UniqueRef(WebEditorClient **a1)
{
  v1 = a1;
  v2 = *a1;
  *v1 = 0;
  if (v2)
  {
    v3 = v1;
    WebEditorClient::~WebEditorClient(v2);
    bmalloc::api::tzoneFree(v4, v5);
    return v3;
  }

  return v1;
}

void WebInstallMemoryPressureHandler()
{
  v0 = [objc_msgSend(MEMORY[0x1E695E000] "standardUserDefaults")];
  if ((v0 & 1) == 0)
  {
    WebCore::registerMemoryReleaseNotifyCallbacks(v0);
    if (atomic_load_explicit(&qword_1ED6A6158, memory_order_acquire) != -1)
    {
      v3 = &v1;
      v2 = &v3;
      std::__call_once(&qword_1ED6A6158, &v2, std::__call_once_proxy[abi:sn200100]<std::tuple<WebInstallMemoryPressureHandler::$_0 &&>>);
    }
  }
}

void sub_1C7A8D42C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32, uint64_t a33, bmalloc::api *a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, char a40, uint64_t a41, uint64_t a42, uint64_t a43, char a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, char a55, uint64_t a56, uint64_t a57, WTF::StringImpl *a58, WTF::StringImpl *a59, uint64_t a60, uint64_t a61, char a62)
{
  MEMORY[0x1CCA65F00](&a62);
  if (atomic_fetch_add(v63 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v63 + 2);
    (*(*v63 + 16))(v63);
    if (!v62)
    {
LABEL_5:
      _Unwind_Resume(a1);
    }
  }

  else if (!v62)
  {
    goto LABEL_5;
  }

  _Unwind_Resume(a1);
}

void sub_1C7A8DF84(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    WTF::RefCountedAndCanMakeWeakPtr<WebCore::HistoryItem>::deref(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_1C7A8E0C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    (*(*a10 + 8))(a10);
  }

  _Block_release(0);
  _Unwind_Resume(a1);
}

void sub_1C7A8E3A0(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    (*(*a10 + 8))(a10);
  }

  if (atomic_fetch_add(v11, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v11);
    WTF::fastFree(v11, a2);
  }

  if (v10[4] == 1)
  {
    (*(*v10 + 8))(v10);
    _Unwind_Resume(exception_object);
  }

  --v10[4];
  _Unwind_Resume(exception_object);
}

void sub_1C7A8E8E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9)
{
  if (a9)
  {
  }

  if (v9)
  {
    WTF::RefCounted<WebCore::TextIndicator>::deref(v9);
  }

  _Unwind_Resume(exception_object);
}

void sub_1C7A8EE74(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  if (v13[4] == 1)
  {
    (*(*v13 + 8))(v13);
    _Unwind_Resume(exception_object);
  }

  --v13[4];
  _Unwind_Resume(exception_object);
}

void WebCore::DragData::~DragData(WebCore::DragData *this, WTF::StringImpl *a2)
{
  v3 = *(this + 9);
  *(this + 9) = 0;
  if (v3 && atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v3, a2);
  }

  v4 = *(this + 11);
  v5 = *(this + 4);
  if (v4)
  {
    v6 = 8 * v4;
    do
    {
      v7 = *v5;
      *v5 = 0;
      if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v7, a2);
      }

      v5 = (v5 + 8);
      v6 -= 8;
    }

    while (v6);
    v5 = *(this + 4);
  }

  if (v5)
  {
    *(this + 4) = 0;
    *(this + 10) = 0;
    WTF::fastFree(v5, a2);
  }
}

void sub_1C7A8F180(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  if (v13[4] == 1)
  {
    (*(*v13 + 8))(v13);
    _Unwind_Resume(exception_object);
  }

  --v13[4];
  _Unwind_Resume(exception_object);
}

void sub_1C7A8F36C(_Unwind_Exception *exception_object)
{
  if (v1[4] == 1)
  {
    (*(*v1 + 8))(v1);
    _Unwind_Resume(exception_object);
  }

  --v1[4];
  _Unwind_Resume(exception_object);
}

void sub_1C7A8F9D8(_Unwind_Exception *a1)
{
  v5 = *(v3 - 112);
  *(v3 - 112) = 0;
  if (v5)
  {
    WTF::RefCounted<WebCore::TextIndicator>::deref(v5);
  }

  std::optional<WebCore::SimpleRange>::~optional((v3 - 104));
  if (v2[4] == 1)
  {
    (*(*v2 + 8))(v2);
    WTF::RefCountedAndCanMakeWeakPtr<WebCore::Page>::deref(v1);
    _Unwind_Resume(a1);
  }

  --v2[4];
  WTF::RefCountedAndCanMakeWeakPtr<WebCore::Page>::deref(v1);
  _Unwind_Resume(a1);
}

void sub_1C7A9012C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, _DWORD *a10)
{
  if (a10)
  {
    if (a10[6] != 1)
    {
      --a10[6];
      _Unwind_Resume(exception_object);
    }

    (*(*a10 + 8))(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_1C7A90244(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WebCore::EditingStyle *a10)
{
  if (a10)
  {
    WTF::RefCounted<WebCore::EditingStyle>::deref(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_1C7A908E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, id a9)
{
  if (a9)
  {
  }

  _Unwind_Resume(exception_object);
}

void sub_1C7A90A24(_Unwind_Exception *exception_object)
{
  if (v1)
  {
  }

  _Unwind_Resume(exception_object);
}

void sub_1C7A90E24(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, CFTypeRef cf)
{
  if (cf)
  {
    CFRelease(cf);
    if (!v10)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else if (!v10)
  {
    goto LABEL_3;
  }

  CFRelease(v10);
  _Unwind_Resume(exception_object);
}

void sub_1C7A9114C(_Unwind_Exception *a1)
{
  if (v2[4] == 1)
  {
    (*(*v2 + 8))(v2);
  }

  else
  {
    --v2[4];
  }

  if (*v1)
  {
    --*v1;
    if (*v3)
    {
      --*v3;
      _Unwind_Resume(a1);
    }
  }

  __break(0xC471u);
  JUMPOUT(0x1C7A91210);
}

void sub_1C7A919F8(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9)
{
  if (a9)
  {
    if (atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a9, a2);
      _Unwind_Resume(exception_object);
    }
  }

  _Unwind_Resume(exception_object);
}

void sub_1C7A92D80(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10)
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

void sub_1C7A92F04(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, WTF::StringImpl *a12)
{
  if (a12)
  {
    if (atomic_fetch_add_explicit(a12, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a12, a2);
      _Unwind_Resume(exception_object);
    }
  }

  _Unwind_Resume(exception_object);
}

void sub_1C7A9326C(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, WTF::StringImpl *a13, WebCore::TextResourceDecoder *a14, WTF::StringImpl *a15)
{
  v16 = a15;
  a15 = 0;
  if (v16 && atomic_fetch_add_explicit(v16, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v16, a2);
  }

  WTF::Ref<WebCore::TextResourceDecoder,WTF::RawPtrTraits<WebCore::TextResourceDecoder>,WTF::DefaultRefDerefTraits<WebCore::TextResourceDecoder>>::~Ref(&a14);
  if (a13)
  {
    if (atomic_fetch_add_explicit(a13, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a13, v17);
    }
  }

  _Unwind_Resume(a1);
}

void sub_1C7A93640(_Unwind_Exception *a1)
{
  if (v1)
  {
    v2 = a1;

    a1 = v2;
  }

  _Unwind_Resume(a1);
}

void sub_1C7A937B0(_Unwind_Exception *exception_object)
{
  if (v1)
  {
  }

  _Unwind_Resume(exception_object);
}

void sub_1C7A94220(_Unwind_Exception *exception_object)
{
  v3 = 1;
  atomic_compare_exchange_strong_explicit(v1, &v3, 0, memory_order_release, memory_order_relaxed);
  if (v3 == 1)
  {
    _Unwind_Resume(exception_object);
  }

  WTF::Lock::unlockSlow(v1);
  _Unwind_Resume(exception_object);
}

void sub_1C7A94548(_Unwind_Exception *exception_object)
{
  v3 = 1;
  atomic_compare_exchange_strong_explicit(v1, &v3, 0, memory_order_release, memory_order_relaxed);
  if (v3 == 1)
  {
    _Unwind_Resume(exception_object);
  }

  WTF::Lock::unlockSlow(v1);
  _Unwind_Resume(exception_object);
}

void sub_1C7A948DC(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, WTF *a13, int a14)
{
  if (!a13)
  {
    _Unwind_Resume(exception_object);
  }

  WTF::fastFree(a13, a2);
  _Unwind_Resume(exception_object);
}

void sub_1C7A94E00(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10, WTF::StringImpl *a11, uint64_t a12, uint64_t a13, WebCore::Node *a14)
{
  if (a10 && atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a10, a2);
  }

  if (a14)
  {
    if (*(a14 + 7) == 2)
    {
      WebCore::Node::removedLastRef(a14);
    }

    else
    {
      *(a14 + 7) -= 2;
    }
  }

  if (a11 && atomic_fetch_add_explicit(a11, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a11, a2);
  }

  if (v15[4] == 1)
  {
    (*(*v15 + 8))(v15);
    WTF::RefCountedAndCanMakeWeakPtr<WebCore::Page>::deref(v14);
    _Unwind_Resume(a1);
  }

  --v15[4];
  WTF::RefCountedAndCanMakeWeakPtr<WebCore::Page>::deref(v14);
  _Unwind_Resume(a1);
}

void sub_1C7A95314(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9)
{
  if (atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v9, a2);
  }

  if (atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v9, a2);
  }

  _Unwind_Resume(exception_object);
}

void sub_1C7A95668(_Unwind_Exception *exception_object)
{
  if (v1)
  {
  }

  _Unwind_Resume(exception_object);
}

void sub_1C7A95794(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, WTF::StringImpl *a10, WTF::StringImpl *a11, atomic_uint *a12)
{
  if (a9 && atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a9, a2);
  }

  if (a10 && atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a10, a2);
  }

  WTF::Ref<WebCore::SecurityOrigin,WTF::RawPtrTraits<WebCore::SecurityOrigin>,WTF::DefaultRefDerefTraits<WebCore::SecurityOrigin>>::~Ref(&a12, a2);
  if (a11)
  {
    if (atomic_fetch_add_explicit(a11, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a11, v13);
    }
  }

  _Unwind_Resume(a1);
}

atomic_uint **WTF::Ref<WebCore::SecurityOrigin,WTF::RawPtrTraits<WebCore::SecurityOrigin>,WTF::DefaultRefDerefTraits<WebCore::SecurityOrigin>>::~Ref(atomic_uint **a1, WTF::StringImpl *a2)
{
  v3 = *a1;
  *a1 = 0;
  if (!v3)
  {
    return a1;
  }

  add = atomic_fetch_add(v3, 0xFFFFFFFF);
  if (add != 1)
  {
    return a1;
  }

  atomic_store(add, v3);
  v6 = a1;
  WebCore::SecurityOrigin::~SecurityOrigin(v3, a2);
  WTF::fastFree(v7, v8);
  return v6;
}

void sub_1C7A95998(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, WTF::StringImpl *a10, WTF::StringImpl *a11, atomic_uint *a12)
{
  if (a9 && atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a9, a2);
  }

  if (a10 && atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a10, a2);
  }

  WTF::Ref<WebCore::SecurityOrigin,WTF::RawPtrTraits<WebCore::SecurityOrigin>,WTF::DefaultRefDerefTraits<WebCore::SecurityOrigin>>::~Ref(&a12, a2);
  if (a11)
  {
    if (atomic_fetch_add_explicit(a11, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a11, v13);
    }
  }

  _Unwind_Resume(a1);
}

void sub_1C7A95E10(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, char a12, uint64_t a13, WebCore::UserScript *a14, WebViewGroup *a15, WTF::StringImpl *a16, WTF::StringImpl *a17)
{
  std::unique_ptr<WebCore::UserScript>::~unique_ptr[abi:sn200100](&a9, a2);
  std::unique_ptr<WebCore::UserScript>::~unique_ptr[abi:sn200100](&a14, v18);
  WTF::Ref<WebViewGroup,WTF::RawPtrTraits<WebViewGroup>,WTF::DefaultRefDerefTraits<WebViewGroup>>::~Ref(&a15, v19);
  v21 = a16;
  a16 = 0;
  if (v21)
  {
    if (atomic_fetch_add_explicit(v21, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v21, v20);
    }
  }

  _Unwind_Resume(a1);
}

WebCore::UserScript **std::unique_ptr<WebCore::UserScript>::~unique_ptr[abi:sn200100](WebCore::UserScript **a1, WTF::StringImpl *a2)
{
  v2 = a1;
  v3 = *a1;
  *v2 = 0;
  if (v3)
  {
    v4 = v2;
    WebCore::UserScript::~UserScript(v3, a2);
    bmalloc::api::tzoneFree(v5, v6);
    return v4;
  }

  return v2;
}

void sub_1C7A9624C(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, WebCore::UserScript *a11, __int16 a12, char a13, char a14, uint64_t a15, char a16, uint64_t a17, WebCore::UserScript *a18, WebViewGroup *a19, WTF::StringImpl *a20, WTF::StringImpl *a21)
{
  std::unique_ptr<WebCore::UserScript>::~unique_ptr[abi:sn200100](&a11, a2);
  std::unique_ptr<WebCore::UserScript>::~unique_ptr[abi:sn200100](&a18, v22);
  WTF::Ref<WebViewGroup,WTF::RawPtrTraits<WebViewGroup>,WTF::DefaultRefDerefTraits<WebViewGroup>>::~Ref(&a19, v23);
  v25 = a20;
  a20 = 0;
  if (v25)
  {
    if (atomic_fetch_add_explicit(v25, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v25, v24);
    }
  }

  _Unwind_Resume(a1);
}

void sub_1C7A96410(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, WTF::StringImpl *a14)
{
  if (a9 && atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a9, a2);
  }

  if (a14)
  {
    if (atomic_fetch_add_explicit(a14, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a14, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

void sub_1C7A96530(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, WTF::StringImpl *a14)
{
  if (a9 && atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a9, a2);
  }

  if (a14)
  {
    if (atomic_fetch_add_explicit(a14, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a14, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

void sub_1C7A9660C(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10)
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

void sub_1C7A966BC(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10)
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

void sub_1C7A9675C(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10)
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

void sub_1C7A96828(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10)
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

void sub_1C7A968AC(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10)
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

void sub_1C7A96934(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10)
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

void sub_1C7A97874(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if (v12)
  {

    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_1C7A97BE0(_Unwind_Exception *exception_object)
{
  if (v1)
  {
  }

  _Unwind_Resume(exception_object);
}

void sub_1C7A97D40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  if (a10)
  {
    v10 = a1;

    a1 = v10;
  }

  _Unwind_Resume(a1);
}

void sub_1C7A97DBC(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10)
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

void sub_1C7A98394(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

void sub_1C7A98468(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

void sub_1C7A98CC8(_Unwind_Exception *exception_object)
{
  if (v1[4] == 1)
  {
    (*(*v1 + 8))(v1);
    _Unwind_Resume(exception_object);
  }

  --v1[4];
  _Unwind_Resume(exception_object);
}

void sub_1C7A99580(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  if (a10)
  {

    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_1C7A9972C(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10)
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

void sub_1C7A999D0(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, uint64_t a10)
{
  if (a9)
  {
    if (atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a9, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

void sub_1C7A99F04(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, WTF::StringImpl *a12)
{
  if (a12)
  {
    if (atomic_fetch_add_explicit(a12, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a12, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

void sub_1C7A9A16C(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10, WTF::StringImpl *a11, uint64_t a12, uint64_t a13, WTF::StringImpl *a14)
{
  if (a11)
  {
    if (atomic_fetch_add_explicit(a11, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a11, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

void sub_1C7A9A334(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  if (a10)
  {

    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_1C7A9A56C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

void sub_1C7A9A7DC(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    CFRelease(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_1C7A9B0C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

void sub_1C7A9B4B8(_Unwind_Exception *a1, void *a2, uint64_t a3, ...)
{
  va_start(va, a3);
  WTF::Ref<WTF::SchedulePair,WTF::RawPtrTraits<WTF::SchedulePair>,WTF::DefaultRefDerefTraits<WTF::SchedulePair>>::~Ref(va, a2);
  _Unwind_Resume(a1);
}

void *WTF::Ref<WTF::SchedulePair,WTF::RawPtrTraits<WTF::SchedulePair>,WTF::DefaultRefDerefTraits<WTF::SchedulePair>>::~Ref(void *result, void *a2)
{
  v2 = *result;
  *result = 0;
  if (v2 && atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
  {
    v3 = result;
    atomic_store(1u, v2);
    v4 = *(v2 + 24);
    *(v2 + 24) = 0;
    if (v4)
    {
      CFRelease(v4);
    }

    v5 = *(v2 + 16);
    *(v2 + 16) = 0;
    if (v5)
    {
      CFRelease(v5);
    }

    v6 = *(v2 + 8);
    *(v2 + 8) = 0;
    if (v6)
    {
    }

    WTF::fastFree(v2, a2);
    return v3;
  }

  return result;
}

void sub_1C7A9B650(_Unwind_Exception *a1, void *a2, uint64_t a3, ...)
{
  va_start(va, a3);
  WTF::Ref<WTF::SchedulePair,WTF::RawPtrTraits<WTF::SchedulePair>,WTF::DefaultRefDerefTraits<WTF::SchedulePair>>::~Ref(va, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A9BAEC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WebCore::Node *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, WTF::StringImpl *a15, WebCore::Node *a16)
{
  std::optional<WebCore::SimpleRange>::~optional(&a16);
  std::optional<WebCore::SimpleRange>::~optional(&a10);
  v18 = a15;
  a15 = 0;
  if (v18)
  {
    if (atomic_fetch_add_explicit(v18, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v18, v17);
    }
  }

  _Unwind_Resume(a1);
}

void sub_1C7A9C7A0(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9)
{
  if (a9)
  {
    if (atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a9, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

void sub_1C7A9C9E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::optional<WebCore::SimpleRange>::~optional(va);
  _Unwind_Resume(a1);
}

void sub_1C7A9C9F4(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    if (*(v1 + 7) == 2)
    {
      WebCore::Node::removedLastRef(v1);
      _Unwind_Resume(exception_object);
    }

    *(v1 + 7) -= 2;
  }

  _Unwind_Resume(exception_object);
}

void sub_1C7A9CC70(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  std::optional<WebCore::SimpleRange>::~optional(va1);
  WebCore::SimpleRange::~SimpleRange(va);
  _Unwind_Resume(a1);
}

void sub_1C7A9CD78(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::optional<WebCore::SimpleRange>::~optional(va);
  _Unwind_Resume(a1);
}

void sub_1C7A9CED4(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    if (*(v1 + 7) == 2)
    {
      WebCore::Node::removedLastRef(v1);
      _Unwind_Resume(exception_object);
    }

    *(v1 + 7) -= 2;
  }

  _Unwind_Resume(exception_object);
}

void sub_1C7A9D5C4(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    if (*(v1 + 7) == 2)
    {
      WebCore::Node::removedLastRef(v1);
      _Unwind_Resume(exception_object);
    }

    *(v1 + 7) -= 2;
  }

  _Unwind_Resume(exception_object);
}

void sub_1C7A9D780(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  WTF::Ref<WebCore::MutableStyleProperties,WTF::RawPtrTraits<WebCore::MutableStyleProperties>,WTF::DefaultRefDerefTraits<WebCore::MutableStyleProperties>>::~Ref(va);
  (*(*v2 + 8))(v2);
  _Unwind_Resume(a1);
}

void sub_1C7A9DFE4(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    if (*(v1 + 7) == 2)
    {
      WebCore::Node::removedLastRef(v1);
      _Unwind_Resume(exception_object);
    }

    *(v1 + 7) -= 2;
  }

  _Unwind_Resume(exception_object);
}

void sub_1C7A9E0F8(_Unwind_Exception *a1, WTF::StringImpl *a2, uint64_t a3, ...)
{
  va_start(va, a3);
  v5 = *(v3 - 24);
  *(v3 - 24) = 0;
  if (v5)
  {

    WebCore::FontAttributes::~FontAttributes(va, v6);
    _Unwind_Resume(a1);
  }

  WebCore::FontAttributes::~FontAttributes(va, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A9E130(_Unwind_Exception *exception_object)
{
  v2 = v1;
  if (v2)
  {
    v4 = v2;
    v5 = *(v2 + 7) - 2;
    if (!v5)
    {
      WebCore::Node::removedLastRef(v4);
      _Unwind_Resume(exception_object);
    }

    *(v4 + 7) = v5;
  }

  _Unwind_Resume(exception_object);
}

void sub_1C7A9E358(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    if (*(v1 + 7) == 2)
    {
      WebCore::Node::removedLastRef(v1);
      _Unwind_Resume(exception_object);
    }

    *(v1 + 7) -= 2;
  }

  _Unwind_Resume(exception_object);
}

void sub_1C7A9E7D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, CFTypeRef cf)
{
  if (cf)
  {
    CFRelease(cf);
  }

  _Unwind_Resume(exception_object);
}

void sub_1C7A9F1DC(_Unwind_Exception *a1)
{
  std::unique_ptr<WebCore::RunLoopObserver>::~unique_ptr[abi:sn200100](v2);
  std::unique_ptr<WebCore::RunLoopObserver>::~unique_ptr[abi:sn200100](v3);
  WeakPtrBase = WTF::CanMakeWeakPtrBase<WTF::WeakPtrFactory<WebFrameLoaderClient,WTF::DefaultWeakPtrImpl>,(WTF::WeakPtrFactoryInitialization)0>::~CanMakeWeakPtrBase(v1, v5);
  bmalloc::api::tzoneFree(WeakPtrBase, v7);
  _Unwind_Resume(a1);
}

void sub_1C7A9F5F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

void sub_1C7A9FCBC(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, char a10)
{
  if (a9)
  {
    if (atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a9, a2);
      _Unwind_Resume(exception_object);
    }
  }

  _Unwind_Resume(exception_object);
}

void sub_1C7A9FF94(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, WTF::StringImpl *a11, uint64_t a12)
{
  if (a11)
  {
    if (atomic_fetch_add_explicit(a11, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a11, a2);
      WTF::RefCountedAndCanMakeWeakPtr<WebCore::Page>::deref(v12);
      _Unwind_Resume(a1);
    }
  }

  WTF::RefCountedAndCanMakeWeakPtr<WebCore::Page>::deref(v12);
  _Unwind_Resume(a1);
}

void sub_1C7AA0278(_Unwind_Exception *a1, void *a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  WTF::Vector<WTF::Ref<WebCore::ShadowRoot,WTF::RawPtrTraits<WebCore::ShadowRoot>,WTF::DefaultRefDerefTraits<WebCore::ShadowRoot>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(va, a2);
  _Unwind_Resume(a1);
}

void sub_1C7AA0290(_Unwind_Exception *a1, void *a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  if (v4)
  {
  }

  WTF::Vector<WTF::Ref<WebCore::ShadowRoot,WTF::RawPtrTraits<WebCore::ShadowRoot>,WTF::DefaultRefDerefTraits<WebCore::ShadowRoot>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(va, a2);
  _Unwind_Resume(a1);
}

void *std::unique_ptr<WebCore::RunLoopObserver>::~unique_ptr[abi:sn200100](void *a1)
{
  v1 = a1;
  v2 = *a1;
  *v1 = 0;
  if (v2)
  {
    v3 = v1;
    v4 = MEMORY[0x1CCA653D0]();
    bmalloc::api::tzoneFree(v4, v5);
    return v3;
  }

  return v1;
}

uint64_t PageStorageSessionProvider::storageSession(PageStorageSessionProvider *this)
{
  v1 = *(this + 2);
  if (!v1)
  {
    return 0;
  }

  v2 = *(v1 + 8);
  if (!v2)
  {
    return 0;
  }

  v3 = WebCore::Page::sessionID(v2);

  return NetworkStorageSessionMap::storageSession(v3, v4);
}

void PageStorageSessionProvider::~PageStorageSessionProvider(PageStorageSessionProvider *this, void *a2)
{
  v2 = *(this + 2);
  *(this + 2) = 0;
  if (v2)
  {
    add = atomic_fetch_add(v2, 0xFFFFFFFF);
    if (add == 1)
    {
      atomic_store(add, v2);
      WTF::fastFree(v2, a2);
    }
  }
}

{
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3 && (add = atomic_fetch_add(v3, 0xFFFFFFFF), add == 1))
  {
    v6 = v2;
    atomic_store(add, v3);
    v5 = this;
    WTF::fastFree(v3, a2);
    this = v5;
  }

  WTF::fastFree(this, a2);
}

uint64_t WebCore::CacheStorageProvider::createCacheStorageConnection@<X0>(void *a1@<X8>)
{
  result = WTF::fastMalloc(0x18);
  *(result + 8) = 1;
  *(result + 16) = 0;
  *result = &unk_1F472BE60;
  *a1 = result;
  return result;
}

void WebCore::CacheStorageProvider::~CacheStorageProvider(WebCore::CacheStorageProvider *this, void *a2)
{
  if (*(this + 4) == 1)
  {
    v2 = *(this + 1);
    if (v2)
    {
      *(v2 + 8) = 0;
      *(this + 1) = 0;
      add = atomic_fetch_add(v2, 0xFFFFFFFF);
      if (add == 1)
      {
        atomic_store(add, v2);
        WTF::fastFree(v2, a2);
      }
    }
  }

  else
  {
    __break(0xC471u);
  }
}

{
  if (*(this + 4) == 1)
  {
    v3 = *(this + 1);
    if (v3 && (*(v3 + 8) = 0, *(this + 1) = 0, add = atomic_fetch_add(v3, 0xFFFFFFFF), add == 1))
    {
      v6 = v2;
      atomic_store(add, v3);
      v5 = this;
      WTF::fastFree(v3, a2);
      this = v5;
    }

    WTF::fastFree(this, a2);
  }

  else
  {
    __break(0xC471u);
  }
}

void WebCore::CacheStorageProvider::DummyCacheStorageConnection::~DummyCacheStorageConnection(WebCore::CacheStorageProvider::DummyCacheStorageConnection *this, void *a2)
{
  *this = &unk_1F472BEE8;
  v2 = *(this + 2);
  if (v2)
  {
    WTF::fastFree((v2 - 16), a2);
  }
}

{
  *this = &unk_1F472BEE8;
  v3 = *(this + 2);
  if (v3)
  {
    v4 = this;
    WTF::fastFree((v3 - 16), a2);
    this = v4;
    v2 = vars8;
  }

  WTF::fastFree(this, a2);
}

WTF::Lock *WebCore::CacheStorageProvider::DummyCacheStorageConnection::open@<X0>(uint64_t *a1@<X8>)
{
  v108[1] = *MEMORY[0x1E69E9840];
  v93 = 0uLL;
  *&v94 = "open";
  *(&v94 + 1) = 0;
  v2 = WTF::fastMalloc(0x90);
  *(v2 + 8) = 1;
  *v2 = &unk_1F472BF70;
  v3 = v94;
  *(v2 + 16) = v93;
  *(v2 + 32) = v3;
  *(v2 + 48) = 0;
  v4 = (v2 + 48);
  *(v2 + 88) = 0;
  *(v2 + 96) = v2 + 112;
  *(v2 + 104) = 1;
  *(v2 + 120) = 0;
  *(v2 + 128) = 0;
  *(v2 + 136) = 0;
  v5 = WTF::NativePromiseBase::logChannel(v2);
  v6 = v5;
  if (!*v5 || v5[16] < 4u)
  {
    goto LABEL_63;
  }

  WTF::String::String(&v102, "creating ");
  WTF::LogArgument<WTF::NativePromise<WebCore::DOMCacheEngine::CacheIdentifierOperationResult,WebCore::DOMCacheEngine::Error,0u>>::toString(&v101, v2);
  v7 = v101;
  if (v102)
  {
    v8 = *(v102 + 1);
    if (v101)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v8 = 0;
    if (v101)
    {
LABEL_5:
      v9 = *(v101 + 1);
      if ((v9 | v8) < 0)
      {
        goto LABEL_159;
      }

      goto LABEL_9;
    }
  }

  v9 = 0;
  if (v8 < 0)
  {
LABEL_159:
    v95 = 0;
    goto LABEL_160;
  }

LABEL_9:
  v10 = (v8 + v9);
  if (__OFADD__(v8, v9))
  {
    goto LABEL_159;
  }

  if (!v102)
  {
    if (!v101)
    {
      v12 = 1;
      goto LABEL_17;
    }

LABEL_15:
    v12 = (*(v101 + 16) >> 2) & 1;
    goto LABEL_17;
  }

  v11 = *(v102 + 4);
  v12 = (v11 >> 2) & 1;
  if (v101 && (v11 & 4) != 0)
  {
    goto LABEL_15;
  }

LABEL_17:
  WTF::tryMakeStringImplFromAdaptersInternal<WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>>(v10, v12, v102, v101, &v95);
  if (!v95)
  {
LABEL_160:
    __break(0xC471u);
LABEL_161:
    JUMPOUT(0x1C7AA1060);
  }

  v101 = 0;
  if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v7, v13);
  }

  v14 = v102;
  v102 = 0;
  if (v14 && atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v14, v13);
  }

  v15 = *(v6 + 4);
  v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);
  if (!v16 || ((WTF::String::utf8(), v97) ? (v18 = v97 + 16) : (v18 = 0), *buf = 136446210, *v104 = v18, _os_log_impl(&dword_1C79C0000, v15, OS_LOG_TYPE_DEFAULT, "%{public}s", buf, 0xCu), v16 = v97, v97 = 0, !v16))
  {
LABEL_31:
    if (*v6)
    {
      goto LABEL_32;
    }

    goto LABEL_60;
  }

  if (*v16 != 1)
  {
    --*v16;
    goto LABEL_31;
  }

  v16 = WTF::fastFree(v16, v17);
  if (*v6)
  {
LABEL_32:
    if (v6[16] >= 4u)
    {
      v19 = MEMORY[0x1E696EBC0];
      while (1)
      {
        v20 = *v19;
        if (v20)
        {
          break;
        }

        v21 = *v19;
        atomic_compare_exchange_strong_explicit(v19, &v21, v20 | 1, memory_order_acquire, memory_order_acquire);
        if (v21 == v20)
        {
          v91 = a1;
          v22 = WTF::Logger::observers(v16);
          v23 = *(v22 + 12);
          if (v23)
          {
            v24 = *v22;
            v25 = *v22 + 8 * v23;
            do
            {
              v26 = *v24;
              *buf = 0;
              WTF::String::String(&v104[4], "creating ");
              v105 = 0;
              WTF::LogArgument<WTF::NativePromise<WebCore::DOMCacheEngine::CacheIdentifierOperationResult,WebCore::DOMCacheEngine::Error,0u>>::toString(&v106, v2);
              v97 = 0;
              v98 = 0;
              v27 = WTF::fastMalloc(0x20);
              LODWORD(v98) = 2;
              v97 = v27;
              v28 = HIDWORD(v98);
              v29 = v27 + 16 * HIDWORD(v98);
              *v29 = *buf;
              v30 = *&v104[4];
              if (*&v104[4])
              {
                atomic_fetch_add_explicit(*&v104[4], 2u, memory_order_relaxed);
                v28 = HIDWORD(v98);
                v27 = v97;
              }

              *(v29 + 1) = v30;
              v31 = v28 + 1;
              HIDWORD(v98) = v31;
              v32 = v27 + 16 * v31;
              *v32 = v105;
              v33 = v106;
              if (v106)
              {
                atomic_fetch_add_explicit(v106, 2u, memory_order_relaxed);
                v31 = HIDWORD(v98);
              }

              *(v32 + 1) = v33;
              HIDWORD(v98) = v31 + 1;
              (*(*v26 + 16))(v26, v6, 4, &v97);
              v34 = v97;
              if (HIDWORD(v98))
              {
                v35 = 16 * HIDWORD(v98);
                v36 = (v97 + 8);
                do
                {
                  v37 = *v36;
                  *v36 = 0;
                  if (v37 && atomic_fetch_add_explicit(v37, 0xFFFFFFFE, memory_order_relaxed) == 2)
                  {
                    WTF::StringImpl::destroy(v37, v17);
                  }

                  v36 += 2;
                  v35 -= 16;
                }

                while (v35);
                v34 = v97;
              }

              if (v34)
              {
                v97 = 0;
                LODWORD(v98) = 0;
                WTF::fastFree(v34, v17);
              }

              v38 = v106;
              v106 = 0;
              if (v38 && atomic_fetch_add_explicit(v38, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v38, v17);
              }

              v39 = *&v104[4];
              *&v104[4] = 0;
              if (v39 && atomic_fetch_add_explicit(v39, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v39, v17);
              }

              ++v24;
            }

            while (v24 != v25);
          }

          v40 = 1;
          atomic_compare_exchange_strong_explicit(v19, &v40, 0, memory_order_release, memory_order_relaxed);
          a1 = v91;
          v4 = (v2 + 48);
          if (v40 != 1)
          {
            WTF::Lock::unlockSlow(MEMORY[0x1E696EBC0]);
          }

          break;
        }
      }
    }
  }

LABEL_60:
  v5 = v95;
  v95 = 0;
  if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    v5 = WTF::StringImpl::destroy(v5, v17);
  }

LABEL_63:
  v41 = 0;
  *a1 = v2;
  v95 = v4;
  v96 = 1;
  atomic_compare_exchange_strong_explicit((v2 + 48), &v41, 1u, memory_order_acquire, memory_order_acquire);
  if (v41)
  {
    v5 = MEMORY[0x1CCA63990](v4);
  }

  v42 = WTF::NativePromiseBase::logChannel(v5);
  v43 = v42;
  if (*v42 && v42[16] >= 4u)
  {
    WTF::Logger::LogSiteIdentifier::toString(&v101, &v93);
    WTF::String::String(&v100, " rejecting ");
    WTF::LogArgument<WTF::NativePromise<WebCore::DOMCacheEngine::CacheIdentifierOperationResult,WebCore::DOMCacheEngine::Error,0u>>::toString(&v99, v2);
    v44 = v99;
    if (v101)
    {
      v45 = *(v101 + 1);
      if (v100)
      {
        goto LABEL_69;
      }
    }

    else
    {
      v45 = 0;
      if (v100)
      {
LABEL_69:
        v46 = *(v100 + 1);
        if (v99)
        {
          goto LABEL_70;
        }

        goto LABEL_74;
      }
    }

    v46 = 0;
    if (v99)
    {
LABEL_70:
      v47 = *(v99 + 4);
      if ((v47 | v46) < 0)
      {
        goto LABEL_157;
      }

      goto LABEL_75;
    }

LABEL_74:
    v47 = 0;
    if (v46 < 0)
    {
LABEL_157:
      v102 = 0;
      goto LABEL_158;
    }

LABEL_75:
    v48 = __OFADD__(v46, v47);
    v49 = v46 + v47;
    v50 = v48;
    if (v45 < 0)
    {
      goto LABEL_157;
    }

    if (v50)
    {
      goto LABEL_157;
    }

    v51 = (v45 + v49);
    if (__OFADD__(v45, v49))
    {
      goto LABEL_157;
    }

    if (v101 && (*(v101 + 16) & 4) == 0)
    {
      v52 = 0;
      goto LABEL_93;
    }

    if (v100)
    {
      v53 = *(v100 + 4);
      v52 = (v53 >> 2) & 1;
      if (!v99 || (v53 & 4) == 0)
      {
LABEL_93:
        WTF::tryMakeStringImplFromAdaptersInternal<WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>>(v51, v52, v101, v100, v99, &v102);
        if (!v102)
        {
LABEL_158:
          __break(0xC471u);
          goto LABEL_161;
        }

        v99 = 0;
        if (v44 && atomic_fetch_add_explicit(v44, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v44, v54);
        }

        v55 = v100;
        v100 = 0;
        if (v55 && atomic_fetch_add_explicit(v55, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v55, v54);
        }

        v56 = v101;
        v101 = 0;
        if (v56 && atomic_fetch_add_explicit(v56, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v56, v54);
        }

        v57 = *(v43 + 4);
        v58 = os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT);
        if (v58)
        {
          WTF::String::utf8();
          v60 = v97 ? v97 + 16 : 0;
          *buf = 136446210;
          *v104 = v60;
          _os_log_impl(&dword_1C79C0000, v57, OS_LOG_TYPE_DEFAULT, "%{public}s", buf, 0xCu);
          v58 = v97;
          v97 = 0;
          if (v58)
          {
            if (*v58 == 1)
            {
              v58 = WTF::fastFree(v58, v59);
              if (*v43)
              {
LABEL_111:
                if (v43[16] >= 4u)
                {
                  v61 = MEMORY[0x1E696EBC0];
                  while (1)
                  {
                    v62 = *v61;
                    if (v62)
                    {
                      break;
                    }

                    v63 = *v61;
                    atomic_compare_exchange_strong_explicit(v61, &v63, v62 | 1, memory_order_acquire, memory_order_acquire);
                    if (v63 == v62)
                    {
                      v64 = WTF::Logger::observers(v58);
                      v65 = *(v64 + 12);
                      if (v65)
                      {
                        v66 = *v64;
                        v92 = *v64 + 8 * v65;
                        do
                        {
                          v67 = *v66;
                          *buf = 0;
                          WTF::Logger::LogSiteIdentifier::toString(&v104[4], &v93);
                          v105 = 0;
                          WTF::String::String(&v106, " rejecting ");
                          v107 = 0;
                          WTF::LogArgument<WTF::NativePromise<WebCore::DOMCacheEngine::CacheIdentifierOperationResult,WebCore::DOMCacheEngine::Error,0u>>::toString(v108, v2);
                          v97 = 0;
                          v98 = 0;
                          v68 = WTF::fastMalloc(0x30);
                          LODWORD(v98) = 3;
                          v97 = v68;
                          v69 = HIDWORD(v98);
                          v70 = v68 + 16 * HIDWORD(v98);
                          *v70 = *buf;
                          v71 = *&v104[4];
                          if (*&v104[4])
                          {
                            atomic_fetch_add_explicit(*&v104[4], 2u, memory_order_relaxed);
                            v69 = HIDWORD(v98);
                            v68 = v97;
                          }

                          *(v70 + 1) = v71;
                          v72 = v69 + 1;
                          HIDWORD(v98) = v72;
                          v73 = v68 + 16 * v72;
                          *v73 = v105;
                          v74 = v106;
                          if (v106)
                          {
                            atomic_fetch_add_explicit(v106, 2u, memory_order_relaxed);
                            v72 = HIDWORD(v98);
                            v68 = v97;
                          }

                          *(v73 + 1) = v74;
                          v75 = v72 + 1;
                          HIDWORD(v98) = v75;
                          v76 = v68 + 16 * v75;
                          *v76 = v107;
                          v77 = v108[0];
                          if (v108[0])
                          {
                            atomic_fetch_add_explicit(v108[0], 2u, memory_order_relaxed);
                            v75 = HIDWORD(v98);
                          }

                          *(v76 + 1) = v77;
                          HIDWORD(v98) = v75 + 1;
                          (*(*v67 + 16))(v67, v43, 4, &v97);
                          v78 = v97;
                          if (HIDWORD(v98))
                          {
                            v79 = 16 * HIDWORD(v98);
                            v80 = (v97 + 8);
                            do
                            {
                              v81 = *v80;
                              *v80 = 0;
                              if (v81 && atomic_fetch_add_explicit(v81, 0xFFFFFFFE, memory_order_relaxed) == 2)
                              {
                                WTF::StringImpl::destroy(v81, v59);
                              }

                              v80 += 2;
                              v79 -= 16;
                            }

                            while (v79);
                            v78 = v97;
                          }

                          if (v78)
                          {
                            v97 = 0;
                            LODWORD(v98) = 0;
                            WTF::fastFree(v78, v59);
                          }

                          v82 = v108[0];
                          v108[0] = 0;
                          if (v82 && atomic_fetch_add_explicit(v82, 0xFFFFFFFE, memory_order_relaxed) == 2)
                          {
                            WTF::StringImpl::destroy(v82, v59);
                          }

                          v83 = v106;
                          v106 = 0;
                          if (v83 && atomic_fetch_add_explicit(v83, 0xFFFFFFFE, memory_order_relaxed) == 2)
                          {
                            WTF::StringImpl::destroy(v83, v59);
                          }

                          v84 = *&v104[4];
                          *&v104[4] = 0;
                          if (v84 && atomic_fetch_add_explicit(v84, 0xFFFFFFFE, memory_order_relaxed) == 2)
                          {
                            WTF::StringImpl::destroy(v84, v59);
                          }

                          ++v66;
                        }

                        while (v66 != v92);
                      }

                      v85 = 1;
                      atomic_compare_exchange_strong_explicit(v61, &v85, 0, memory_order_release, memory_order_relaxed);
                      if (v85 != 1)
                      {
                        WTF::Lock::unlockSlow(MEMORY[0x1E696EBC0]);
                      }

                      break;
                    }
                  }
                }
              }

LABEL_144:
              v86 = v102;
              v102 = 0;
              if (v86 && atomic_fetch_add_explicit(v86, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v86, v59);
              }

              goto LABEL_147;
            }

            --*v58;
          }
        }

        if (*v43)
        {
          goto LABEL_111;
        }

        goto LABEL_144;
      }
    }

    else if (!v99)
    {
      v52 = 1;
      goto LABEL_93;
    }

    v52 = (*(v99 + 16) >> 2) & 1;
    goto LABEL_93;
  }

LABEL_147:
  v87 = *(v2 + 88);
  if (v87 >= 2 && v87 != 255)
  {
    v88 = *(v2 + 56);
    *(v2 + 56) = 0;
    if (v88)
    {
      (*(*v88 + 8))(v88);
    }
  }

  *(v2 + 56) = 5;
  *(v2 + 80) = 1;
  *(v2 + 88) = 1;
  result = WTF::NativePromise<WebCore::DOMCacheEngine::CacheIdentifierOperationResult,WebCore::DOMCacheEngine::Error,0u>::dispatchAll(v2, &v95);
  v90 = v96;
  if (v96 == 1)
  {
    result = v95;
    atomic_compare_exchange_strong_explicit(v95, &v90, 0, memory_order_release, memory_order_relaxed);
    if (v90 != 1)
    {
      return WTF::Lock::unlockSlow(result);
    }
  }

  return result;
}

void sub_1C7AA1070(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, WTF::StringImpl *a17, char a18, WTF *a19, int a20, uint64_t a21, WTF::StringImpl *a22, uint64_t a23, WTF::StringImpl *a24, char a25, WTF::StringImpl *a26, uint64_t a27, WTF::StringImpl *a28, uint64_t a29, WTF::StringImpl *a30)
{
  *v31 = 0;
  if (atomic_fetch_add(v30 + 2, 0xFFFFFFFF) != 1)
  {
    _Unwind_Resume(exception_object);
  }

  atomic_store(1u, v30 + 2);
  (*(*v30 + 16))(v30);
  _Unwind_Resume(exception_object);
}

void sub_1C7AA1324(_Unwind_Exception *a1, WTF::StringImpl *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, WTF::StringImpl *a17)
{
  v20 = 1;
  atomic_compare_exchange_strong_explicit(v18, &v20, 0, memory_order_release, memory_order_relaxed);
  if (v20 == 1)
  {
    v21 = a17;
    if (!a17)
    {
      goto LABEL_5;
    }
  }

  else
  {
    WTF::Lock::unlockSlow(MEMORY[0x1E696EBC0]);
    v21 = a17;
    if (!a17)
    {
      goto LABEL_5;
    }
  }

  if (atomic_fetch_add_explicit(v21, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v21, a2);
  }

LABEL_5:
  WTF::Vector<WTF::NativePromiseProducer<WebCore::DOMCacheEngine::CacheIdentifierOperationResult,WebCore::DOMCacheEngine::Error,0u>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(a9);
  WTF::Vector<WTF::Ref<WTF::NativePromise<WebCore::DOMCacheEngine::CacheIdentifierOperationResult,WebCore::DOMCacheEngine::Error,0u>::ThenCallbackBase,WTF::RawPtrTraits<WTF::NativePromise<WebCore::DOMCacheEngine::CacheIdentifierOperationResult,WebCore::DOMCacheEngine::Error,0u>::ThenCallbackBase>,WTF::DefaultRefDerefTraits<WTF::NativePromise<WebCore::DOMCacheEngine::CacheIdentifierOperationResult,WebCore::DOMCacheEngine::Error,0u>::ThenCallbackBase>>,1ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(a10);
  WTF::NativePromise<WebCore::DOMCacheEngine::CacheIdentifierOperationResult,WebCore::DOMCacheEngine::Error,0u>::Storage::~Storage(v17 + 56);
  WTF::fastFree(v17, v22);
  _Unwind_Resume(a1);
}

void sub_1C7AA132C(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, WTF::StringImpl *a17, uint64_t a18, WTF *a19, int a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, WTF::StringImpl *a26, uint64_t a27, WTF::StringImpl *a28)
{
  if (a26 && atomic_fetch_add_explicit(a26, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a26, a2);
  }

  v31 = 1;
  atomic_compare_exchange_strong_explicit(v29, &v31, 0, memory_order_release, memory_order_relaxed);
  if (v31 == 1)
  {
    v32 = a17;
    if (!a17)
    {
      goto LABEL_8;
    }
  }

  else
  {
    WTF::Lock::unlockSlow(MEMORY[0x1E696EBC0]);
    v32 = a17;
    if (!a17)
    {
      goto LABEL_8;
    }
  }

  if (atomic_fetch_add_explicit(v32, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v32, a2);
  }

LABEL_8:
  WTF::Vector<WTF::NativePromiseProducer<WebCore::DOMCacheEngine::CacheIdentifierOperationResult,WebCore::DOMCacheEngine::Error,0u>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(a9, a2);
  WTF::Vector<WTF::Ref<WTF::NativePromise<WebCore::DOMCacheEngine::CacheIdentifierOperationResult,WebCore::DOMCacheEngine::Error,0u>::ThenCallbackBase,WTF::RawPtrTraits<WTF::NativePromise<WebCore::DOMCacheEngine::CacheIdentifierOperationResult,WebCore::DOMCacheEngine::Error,0u>::ThenCallbackBase>,WTF::DefaultRefDerefTraits<WTF::NativePromise<WebCore::DOMCacheEngine::CacheIdentifierOperationResult,WebCore::DOMCacheEngine::Error,0u>::ThenCallbackBase>>,1ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(a10, v33);
  WTF::NativePromise<WebCore::DOMCacheEngine::CacheIdentifierOperationResult,WebCore::DOMCacheEngine::Error,0u>::Storage::~Storage(v28 + 7);
  WTF::fastFree(v28, v34);
  _Unwind_Resume(a1);
}

WTF::Lock *WebCore::CacheStorageProvider::DummyCacheStorageConnection::remove@<X0>(uint64_t *a1@<X8>)
{
  v108[1] = *MEMORY[0x1E69E9840];
  v93 = 0uLL;
  *&v94 = "remove";
  *(&v94 + 1) = 0;
  v2 = WTF::fastMalloc(0x78);
  *(v2 + 8) = 1;
  *v2 = &unk_1F472BFC0;
  v3 = v94;
  *(v2 + 16) = v93;
  *(v2 + 32) = v3;
  *(v2 + 48) = 0;
  v4 = (v2 + 48);
  *(v2 + 64) = 0;
  *(v2 + 72) = v2 + 88;
  *(v2 + 80) = 1;
  *(v2 + 96) = 0;
  *(v2 + 104) = 0;
  *(v2 + 112) = 0;
  v5 = WTF::NativePromiseBase::logChannel(v2);
  v6 = v5;
  if (!*v5 || v5[16] < 4u)
  {
    goto LABEL_63;
  }

  WTF::String::String(&v102, "creating ");
  WTF::LogArgument<WTF::NativePromise<BOOL,WebCore::DOMCacheEngine::Error,0u>>::toString(&v101, v2);
  v7 = v101;
  if (v102)
  {
    v8 = *(v102 + 1);
    if (v101)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v8 = 0;
    if (v101)
    {
LABEL_5:
      v9 = *(v101 + 1);
      if ((v9 | v8) < 0)
      {
        goto LABEL_159;
      }

      goto LABEL_9;
    }
  }

  v9 = 0;
  if (v8 < 0)
  {
LABEL_159:
    v95 = 0;
    goto LABEL_160;
  }

LABEL_9:
  v10 = (v8 + v9);
  if (__OFADD__(v8, v9))
  {
    goto LABEL_159;
  }

  if (!v102)
  {
    if (!v101)
    {
      v12 = 1;
      goto LABEL_17;
    }

LABEL_15:
    v12 = (*(v101 + 16) >> 2) & 1;
    goto LABEL_17;
  }

  v11 = *(v102 + 4);
  v12 = (v11 >> 2) & 1;
  if (v101 && (v11 & 4) != 0)
  {
    goto LABEL_15;
  }

LABEL_17:
  WTF::tryMakeStringImplFromAdaptersInternal<WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>>(v10, v12, v102, v101, &v95);
  if (!v95)
  {
LABEL_160:
    __break(0xC471u);
LABEL_161:
    JUMPOUT(0x1C7AA1DD0);
  }

  v101 = 0;
  if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v7, v13);
  }

  v14 = v102;
  v102 = 0;
  if (v14 && atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v14, v13);
  }

  v15 = *(v6 + 4);
  v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);
  if (!v16 || ((WTF::String::utf8(), v97) ? (v18 = v97 + 16) : (v18 = 0), *buf = 136446210, *v104 = v18, _os_log_impl(&dword_1C79C0000, v15, OS_LOG_TYPE_DEFAULT, "%{public}s", buf, 0xCu), v16 = v97, v97 = 0, !v16))
  {
LABEL_31:
    if (*v6)
    {
      goto LABEL_32;
    }

    goto LABEL_60;
  }

  if (*v16 != 1)
  {
    --*v16;
    goto LABEL_31;
  }

  v16 = WTF::fastFree(v16, v17);
  if (*v6)
  {
LABEL_32:
    if (v6[16] >= 4u)
    {
      v19 = MEMORY[0x1E696EBC0];
      while (1)
      {
        v20 = *v19;
        if (v20)
        {
          break;
        }

        v21 = *v19;
        atomic_compare_exchange_strong_explicit(v19, &v21, v20 | 1, memory_order_acquire, memory_order_acquire);
        if (v21 == v20)
        {
          v91 = a1;
          v22 = WTF::Logger::observers(v16);
          v23 = *(v22 + 12);
          if (v23)
          {
            v24 = *v22;
            v25 = *v22 + 8 * v23;
            do
            {
              v26 = *v24;
              *buf = 0;
              WTF::String::String(&v104[4], "creating ");
              v105 = 0;
              WTF::LogArgument<WTF::NativePromise<BOOL,WebCore::DOMCacheEngine::Error,0u>>::toString(&v106, v2);
              v97 = 0;
              v98 = 0;
              v27 = WTF::fastMalloc(0x20);
              LODWORD(v98) = 2;
              v97 = v27;
              v28 = HIDWORD(v98);
              v29 = v27 + 16 * HIDWORD(v98);
              *v29 = *buf;
              v30 = *&v104[4];
              if (*&v104[4])
              {
                atomic_fetch_add_explicit(*&v104[4], 2u, memory_order_relaxed);
                v28 = HIDWORD(v98);
                v27 = v97;
              }

              *(v29 + 1) = v30;
              v31 = v28 + 1;
              HIDWORD(v98) = v31;
              v32 = v27 + 16 * v31;
              *v32 = v105;
              v33 = v106;
              if (v106)
              {
                atomic_fetch_add_explicit(v106, 2u, memory_order_relaxed);
                v31 = HIDWORD(v98);
              }

              *(v32 + 1) = v33;
              HIDWORD(v98) = v31 + 1;
              (*(*v26 + 16))(v26, v6, 4, &v97);
              v34 = v97;
              if (HIDWORD(v98))
              {
                v35 = 16 * HIDWORD(v98);
                v36 = (v97 + 8);
                do
                {
                  v37 = *v36;
                  *v36 = 0;
                  if (v37 && atomic_fetch_add_explicit(v37, 0xFFFFFFFE, memory_order_relaxed) == 2)
                  {
                    WTF::StringImpl::destroy(v37, v17);
                  }

                  v36 += 2;
                  v35 -= 16;
                }

                while (v35);
                v34 = v97;
              }

              if (v34)
              {
                v97 = 0;
                LODWORD(v98) = 0;
                WTF::fastFree(v34, v17);
              }

              v38 = v106;
              v106 = 0;
              if (v38 && atomic_fetch_add_explicit(v38, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v38, v17);
              }

              v39 = *&v104[4];
              *&v104[4] = 0;
              if (v39 && atomic_fetch_add_explicit(v39, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v39, v17);
              }

              ++v24;
            }

            while (v24 != v25);
          }

          v40 = 1;
          atomic_compare_exchange_strong_explicit(v19, &v40, 0, memory_order_release, memory_order_relaxed);
          a1 = v91;
          v4 = (v2 + 48);
          if (v40 != 1)
          {
            WTF::Lock::unlockSlow(MEMORY[0x1E696EBC0]);
          }

          break;
        }
      }
    }
  }

LABEL_60:
  v5 = v95;
  v95 = 0;
  if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    v5 = WTF::StringImpl::destroy(v5, v17);
  }

LABEL_63:
  v41 = 0;
  *a1 = v2;
  v95 = v4;
  v96 = 1;
  atomic_compare_exchange_strong_explicit((v2 + 48), &v41, 1u, memory_order_acquire, memory_order_acquire);
  if (v41)
  {
    v5 = MEMORY[0x1CCA63990](v4);
  }

  v42 = WTF::NativePromiseBase::logChannel(v5);
  v43 = v42;
  if (*v42 && v42[16] >= 4u)
  {
    WTF::Logger::LogSiteIdentifier::toString(&v101, &v93);
    WTF::String::String(&v100, " rejecting ");
    WTF::LogArgument<WTF::NativePromise<BOOL,WebCore::DOMCacheEngine::Error,0u>>::toString(&v99, v2);
    v44 = v99;
    if (v101)
    {
      v45 = *(v101 + 1);
      if (v100)
      {
        goto LABEL_69;
      }
    }

    else
    {
      v45 = 0;
      if (v100)
      {
LABEL_69:
        v46 = *(v100 + 1);
        if (v99)
        {
          goto LABEL_70;
        }

        goto LABEL_74;
      }
    }

    v46 = 0;
    if (v99)
    {
LABEL_70:
      v47 = *(v99 + 4);
      if ((v47 | v46) < 0)
      {
        goto LABEL_157;
      }

      goto LABEL_75;
    }

LABEL_74:
    v47 = 0;
    if (v46 < 0)
    {
LABEL_157:
      v102 = 0;
      goto LABEL_158;
    }

LABEL_75:
    v48 = __OFADD__(v46, v47);
    v49 = v46 + v47;
    v50 = v48;
    if (v45 < 0)
    {
      goto LABEL_157;
    }

    if (v50)
    {
      goto LABEL_157;
    }

    v51 = (v45 + v49);
    if (__OFADD__(v45, v49))
    {
      goto LABEL_157;
    }

    if (v101 && (*(v101 + 16) & 4) == 0)
    {
      v52 = 0;
      goto LABEL_93;
    }

    if (v100)
    {
      v53 = *(v100 + 4);
      v52 = (v53 >> 2) & 1;
      if (!v99 || (v53 & 4) == 0)
      {
LABEL_93:
        WTF::tryMakeStringImplFromAdaptersInternal<WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>>(v51, v52, v101, v100, v99, &v102);
        if (!v102)
        {
LABEL_158:
          __break(0xC471u);
          goto LABEL_161;
        }

        v99 = 0;
        if (v44 && atomic_fetch_add_explicit(v44, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v44, v54);
        }

        v55 = v100;
        v100 = 0;
        if (v55 && atomic_fetch_add_explicit(v55, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v55, v54);
        }

        v56 = v101;
        v101 = 0;
        if (v56 && atomic_fetch_add_explicit(v56, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v56, v54);
        }

        v57 = *(v43 + 4);
        v58 = os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT);
        if (v58)
        {
          WTF::String::utf8();
          v60 = v97 ? v97 + 16 : 0;
          *buf = 136446210;
          *v104 = v60;
          _os_log_impl(&dword_1C79C0000, v57, OS_LOG_TYPE_DEFAULT, "%{public}s", buf, 0xCu);
          v58 = v97;
          v97 = 0;
          if (v58)
          {
            if (*v58 == 1)
            {
              v58 = WTF::fastFree(v58, v59);
              if (*v43)
              {
LABEL_111:
                if (v43[16] >= 4u)
                {
                  v61 = MEMORY[0x1E696EBC0];
                  while (1)
                  {
                    v62 = *v61;
                    if (v62)
                    {
                      break;
                    }

                    v63 = *v61;
                    atomic_compare_exchange_strong_explicit(v61, &v63, v62 | 1, memory_order_acquire, memory_order_acquire);
                    if (v63 == v62)
                    {
                      v64 = WTF::Logger::observers(v58);
                      v65 = *(v64 + 12);
                      if (v65)
                      {
                        v66 = *v64;
                        v92 = *v64 + 8 * v65;
                        do
                        {
                          v67 = *v66;
                          *buf = 0;
                          WTF::Logger::LogSiteIdentifier::toString(&v104[4], &v93);
                          v105 = 0;
                          WTF::String::String(&v106, " rejecting ");
                          v107 = 0;
                          WTF::LogArgument<WTF::NativePromise<BOOL,WebCore::DOMCacheEngine::Error,0u>>::toString(v108, v2);
                          v97 = 0;
                          v98 = 0;
                          v68 = WTF::fastMalloc(0x30);
                          LODWORD(v98) = 3;
                          v97 = v68;
                          v69 = HIDWORD(v98);
                          v70 = v68 + 16 * HIDWORD(v98);
                          *v70 = *buf;
                          v71 = *&v104[4];
                          if (*&v104[4])
                          {
                            atomic_fetch_add_explicit(*&v104[4], 2u, memory_order_relaxed);
                            v69 = HIDWORD(v98);
                            v68 = v97;
                          }

                          *(v70 + 1) = v71;
                          v72 = v69 + 1;
                          HIDWORD(v98) = v72;
                          v73 = v68 + 16 * v72;
                          *v73 = v105;
                          v74 = v106;
                          if (v106)
                          {
                            atomic_fetch_add_explicit(v106, 2u, memory_order_relaxed);
                            v72 = HIDWORD(v98);
                            v68 = v97;
                          }

                          *(v73 + 1) = v74;
                          v75 = v72 + 1;
                          HIDWORD(v98) = v75;
                          v76 = v68 + 16 * v75;
                          *v76 = v107;
                          v77 = v108[0];
                          if (v108[0])
                          {
                            atomic_fetch_add_explicit(v108[0], 2u, memory_order_relaxed);
                            v75 = HIDWORD(v98);
                          }

                          *(v76 + 1) = v77;
                          HIDWORD(v98) = v75 + 1;
                          (*(*v67 + 16))(v67, v43, 4, &v97);
                          v78 = v97;
                          if (HIDWORD(v98))
                          {
                            v79 = 16 * HIDWORD(v98);
                            v80 = (v97 + 8);
                            do
                            {
                              v81 = *v80;
                              *v80 = 0;
                              if (v81 && atomic_fetch_add_explicit(v81, 0xFFFFFFFE, memory_order_relaxed) == 2)
                              {
                                WTF::StringImpl::destroy(v81, v59);
                              }

                              v80 += 2;
                              v79 -= 16;
                            }

                            while (v79);
                            v78 = v97;
                          }

                          if (v78)
                          {
                            v97 = 0;
                            LODWORD(v98) = 0;
                            WTF::fastFree(v78, v59);
                          }

                          v82 = v108[0];
                          v108[0] = 0;
                          if (v82 && atomic_fetch_add_explicit(v82, 0xFFFFFFFE, memory_order_relaxed) == 2)
                          {
                            WTF::StringImpl::destroy(v82, v59);
                          }

                          v83 = v106;
                          v106 = 0;
                          if (v83 && atomic_fetch_add_explicit(v83, 0xFFFFFFFE, memory_order_relaxed) == 2)
                          {
                            WTF::StringImpl::destroy(v83, v59);
                          }

                          v84 = *&v104[4];
                          *&v104[4] = 0;
                          if (v84 && atomic_fetch_add_explicit(v84, 0xFFFFFFFE, memory_order_relaxed) == 2)
                          {
                            WTF::StringImpl::destroy(v84, v59);
                          }

                          ++v66;
                        }

                        while (v66 != v92);
                      }

                      v85 = 1;
                      atomic_compare_exchange_strong_explicit(v61, &v85, 0, memory_order_release, memory_order_relaxed);
                      if (v85 != 1)
                      {
                        WTF::Lock::unlockSlow(MEMORY[0x1E696EBC0]);
                      }

                      break;
                    }
                  }
                }
              }

LABEL_144:
              v86 = v102;
              v102 = 0;
              if (v86 && atomic_fetch_add_explicit(v86, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v86, v59);
              }

              goto LABEL_147;
            }

            --*v58;
          }
        }

        if (*v43)
        {
          goto LABEL_111;
        }

        goto LABEL_144;
      }
    }

    else if (!v99)
    {
      v52 = 1;
      goto LABEL_93;
    }

    v52 = (*(v99 + 16) >> 2) & 1;
    goto LABEL_93;
  }

LABEL_147:
  v87 = *(v2 + 64);
  if (v87 >= 2 && v87 != 255)
  {
    v88 = *(v2 + 56);
    *(v2 + 56) = 0;
    if (v88)
    {
      (*(*v88 + 8))(v88);
    }
  }

  *(v2 + 56) = 261;
  *(v2 + 64) = 1;
  result = WTF::NativePromise<BOOL,WebCore::DOMCacheEngine::Error,0u>::dispatchAll(v2, &v95);
  v90 = v96;
  if (v96 == 1)
  {
    result = v95;
    atomic_compare_exchange_strong_explicit(v95, &v90, 0, memory_order_release, memory_order_relaxed);
    if (v90 != 1)
    {
      return WTF::Lock::unlockSlow(result);
    }
  }

  return result;
}

void sub_1C7AA1DE0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, WTF::StringImpl *a17, char a18, WTF *a19, int a20, uint64_t a21, WTF::StringImpl *a22, uint64_t a23, WTF::StringImpl *a24, char a25, WTF::StringImpl *a26, uint64_t a27, WTF::StringImpl *a28, uint64_t a29, WTF::StringImpl *a30)
{
  *v31 = 0;
  if (atomic_fetch_add(v30 + 2, 0xFFFFFFFF) != 1)
  {
    _Unwind_Resume(exception_object);
  }

  atomic_store(1u, v30 + 2);
  (*(*v30 + 16))(v30);
  _Unwind_Resume(exception_object);
}

void sub_1C7AA2094(_Unwind_Exception *a1, WTF::StringImpl *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, WTF::StringImpl *a17)
{
  v20 = 1;
  atomic_compare_exchange_strong_explicit(v18, &v20, 0, memory_order_release, memory_order_relaxed);
  if (v20 == 1)
  {
    v21 = a17;
    if (!a17)
    {
      goto LABEL_5;
    }
  }

  else
  {
    WTF::Lock::unlockSlow(MEMORY[0x1E696EBC0]);
    v21 = a17;
    if (!a17)
    {
      goto LABEL_5;
    }
  }

  if (atomic_fetch_add_explicit(v21, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v21, a2);
  }

LABEL_5:
  WTF::Vector<WTF::NativePromiseProducer<BOOL,WebCore::DOMCacheEngine::Error,0u>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(a9);
  WTF::Vector<WTF::Ref<WTF::NativePromise<WebCore::DOMCacheEngine::CacheIdentifierOperationResult,WebCore::DOMCacheEngine::Error,0u>::ThenCallbackBase,WTF::RawPtrTraits<WTF::NativePromise<WebCore::DOMCacheEngine::CacheIdentifierOperationResult,WebCore::DOMCacheEngine::Error,0u>::ThenCallbackBase>,WTF::DefaultRefDerefTraits<WTF::NativePromise<WebCore::DOMCacheEngine::CacheIdentifierOperationResult,WebCore::DOMCacheEngine::Error,0u>::ThenCallbackBase>>,1ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(a10);
  WTF::NativePromise<BOOL,WebCore::DOMCacheEngine::Error,0u>::Storage::~Storage(v17 + 56);
  WTF::fastFree(v17, v22);
  _Unwind_Resume(a1);
}

void sub_1C7AA209C(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, WTF::StringImpl *a17, uint64_t a18, WTF *a19, int a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, WTF::StringImpl *a26, uint64_t a27, WTF::StringImpl *a28)
{
  if (a26 && atomic_fetch_add_explicit(a26, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a26, a2);
  }

  v31 = 1;
  atomic_compare_exchange_strong_explicit(v29, &v31, 0, memory_order_release, memory_order_relaxed);
  if (v31 == 1)
  {
    v32 = a17;
    if (!a17)
    {
      goto LABEL_8;
    }
  }

  else
  {
    WTF::Lock::unlockSlow(MEMORY[0x1E696EBC0]);
    v32 = a17;
    if (!a17)
    {
      goto LABEL_8;
    }
  }

  if (atomic_fetch_add_explicit(v32, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v32, a2);
  }

LABEL_8:
  WTF::Vector<WTF::NativePromiseProducer<BOOL,WebCore::DOMCacheEngine::Error,0u>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(a9, a2);
  WTF::Vector<WTF::Ref<WTF::NativePromise<WebCore::DOMCacheEngine::CacheIdentifierOperationResult,WebCore::DOMCacheEngine::Error,0u>::ThenCallbackBase,WTF::RawPtrTraits<WTF::NativePromise<WebCore::DOMCacheEngine::CacheIdentifierOperationResult,WebCore::DOMCacheEngine::Error,0u>::ThenCallbackBase>,WTF::DefaultRefDerefTraits<WTF::NativePromise<WebCore::DOMCacheEngine::CacheIdentifierOperationResult,WebCore::DOMCacheEngine::Error,0u>::ThenCallbackBase>>,1ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(a10, v33);
  WTF::NativePromise<BOOL,WebCore::DOMCacheEngine::Error,0u>::Storage::~Storage(v28 + 7);
  WTF::fastFree(v28, v34);
  _Unwind_Resume(a1);
}

WTF::Lock *WebCore::CacheStorageProvider::DummyCacheStorageConnection::retrieveCaches@<X0>(uint64_t *a1@<X8>)
{
  v112[1] = *MEMORY[0x1E69E9840];
  v97 = 0uLL;
  *&v98 = "retrieveCaches";
  *(&v98 + 1) = 0;
  v2 = WTF::fastMalloc(0x90);
  *(v2 + 8) = 1;
  *v2 = &unk_1F472C010;
  v3 = v98;
  *(v2 + 16) = v97;
  *(v2 + 32) = v3;
  *(v2 + 48) = 0;
  v4 = (v2 + 48);
  *(v2 + 88) = 0;
  *(v2 + 96) = v2 + 112;
  *(v2 + 104) = 1;
  *(v2 + 120) = 0;
  *(v2 + 128) = 0;
  *(v2 + 136) = 0;
  v5 = WTF::NativePromiseBase::logChannel(v2);
  v6 = v5;
  if (!*v5 || v5[16] < 4u)
  {
    goto LABEL_63;
  }

  WTF::String::String(&v106, "creating ");
  WTF::LogArgument<WTF::NativePromise<WebCore::DOMCacheEngine::CacheInfos,WebCore::DOMCacheEngine::Error,0u>>::toString(&v105, v2);
  v7 = v105;
  if (v106)
  {
    v8 = *(v106 + 1);
    if (v105)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v8 = 0;
    if (v105)
    {
LABEL_5:
      v9 = *(v105 + 1);
      if ((v9 | v8) < 0)
      {
        goto LABEL_170;
      }

      goto LABEL_9;
    }
  }

  v9 = 0;
  if (v8 < 0)
  {
LABEL_170:
    v99 = 0;
    goto LABEL_171;
  }

LABEL_9:
  v10 = (v8 + v9);
  if (__OFADD__(v8, v9))
  {
    goto LABEL_170;
  }

  if (!v106)
  {
    if (!v105)
    {
      v12 = 1;
      goto LABEL_17;
    }

LABEL_15:
    v12 = (*(v105 + 16) >> 2) & 1;
    goto LABEL_17;
  }

  v11 = *(v106 + 4);
  v12 = (v11 >> 2) & 1;
  if (v105 && (v11 & 4) != 0)
  {
    goto LABEL_15;
  }

LABEL_17:
  WTF::tryMakeStringImplFromAdaptersInternal<WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>>(v10, v12, v106, v105, &v99);
  if (!v99)
  {
LABEL_171:
    __break(0xC471u);
LABEL_172:
    JUMPOUT(0x1C7AA2BBCLL);
  }

  v105 = 0;
  if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v7, v13);
  }

  v14 = v106;
  v106 = 0;
  if (v14 && atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v14, v13);
  }

  v15 = *(v6 + 4);
  v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);
  if (!v16 || ((WTF::String::utf8(), v101) ? (v18 = v101 + 16) : (v18 = 0), *buf = 136446210, *v108 = v18, _os_log_impl(&dword_1C79C0000, v15, OS_LOG_TYPE_DEFAULT, "%{public}s", buf, 0xCu), v16 = v101, v101 = 0, !v16))
  {
LABEL_31:
    if (*v6)
    {
      goto LABEL_32;
    }

    goto LABEL_60;
  }

  if (*v16 != 1)
  {
    --*v16;
    goto LABEL_31;
  }

  v16 = WTF::fastFree(v16, v17);
  if (*v6)
  {
LABEL_32:
    if (v6[16] >= 4u)
    {
      v19 = MEMORY[0x1E696EBC0];
      while (1)
      {
        v20 = *v19;
        if (v20)
        {
          break;
        }

        v21 = *v19;
        atomic_compare_exchange_strong_explicit(v19, &v21, v20 | 1, memory_order_acquire, memory_order_acquire);
        if (v21 == v20)
        {
          v95 = a1;
          v22 = WTF::Logger::observers(v16);
          v23 = *(v22 + 12);
          if (v23)
          {
            v24 = *v22;
            v25 = *v22 + 8 * v23;
            do
            {
              v26 = *v24;
              *buf = 0;
              WTF::String::String(&v108[4], "creating ");
              v109 = 0;
              WTF::LogArgument<WTF::NativePromise<WebCore::DOMCacheEngine::CacheInfos,WebCore::DOMCacheEngine::Error,0u>>::toString(&v110, v2);
              v101 = 0;
              v102 = 0;
              v27 = WTF::fastMalloc(0x20);
              LODWORD(v102) = 2;
              v101 = v27;
              v28 = HIDWORD(v102);
              v29 = v27 + 16 * HIDWORD(v102);
              *v29 = *buf;
              v30 = *&v108[4];
              if (*&v108[4])
              {
                atomic_fetch_add_explicit(*&v108[4], 2u, memory_order_relaxed);
                v28 = HIDWORD(v102);
                v27 = v101;
              }

              *(v29 + 1) = v30;
              v31 = v28 + 1;
              HIDWORD(v102) = v31;
              v32 = v27 + 16 * v31;
              *v32 = v109;
              v33 = v110;
              if (v110)
              {
                atomic_fetch_add_explicit(v110, 2u, memory_order_relaxed);
                v31 = HIDWORD(v102);
              }

              *(v32 + 1) = v33;
              HIDWORD(v102) = v31 + 1;
              (*(*v26 + 16))(v26, v6, 4, &v101);
              v34 = v101;
              if (HIDWORD(v102))
              {
                v35 = 16 * HIDWORD(v102);
                v36 = (v101 + 8);
                do
                {
                  v37 = *v36;
                  *v36 = 0;
                  if (v37 && atomic_fetch_add_explicit(v37, 0xFFFFFFFE, memory_order_relaxed) == 2)
                  {
                    WTF::StringImpl::destroy(v37, v17);
                  }

                  v36 += 2;
                  v35 -= 16;
                }

                while (v35);
                v34 = v101;
              }

              if (v34)
              {
                v101 = 0;
                LODWORD(v102) = 0;
                WTF::fastFree(v34, v17);
              }

              v38 = v110;
              v110 = 0;
              if (v38 && atomic_fetch_add_explicit(v38, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v38, v17);
              }

              v39 = *&v108[4];
              *&v108[4] = 0;
              if (v39 && atomic_fetch_add_explicit(v39, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v39, v17);
              }

              ++v24;
            }

            while (v24 != v25);
          }

          v40 = 1;
          atomic_compare_exchange_strong_explicit(v19, &v40, 0, memory_order_release, memory_order_relaxed);
          a1 = v95;
          v4 = (v2 + 48);
          if (v40 != 1)
          {
            WTF::Lock::unlockSlow(MEMORY[0x1E696EBC0]);
          }

          break;
        }
      }
    }
  }

LABEL_60:
  v5 = v99;
  v99 = 0;
  if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    v5 = WTF::StringImpl::destroy(v5, v17);
  }

LABEL_63:
  v41 = 0;
  *a1 = v2;
  v99 = v4;
  v100 = 1;
  atomic_compare_exchange_strong_explicit((v2 + 48), &v41, 1u, memory_order_acquire, memory_order_acquire);
  if (v41)
  {
    v5 = MEMORY[0x1CCA63990](v4);
  }

  v42 = WTF::NativePromiseBase::logChannel(v5);
  v44 = v42;
  if (*v42 && v42[16] >= 4u)
  {
    WTF::Logger::LogSiteIdentifier::toString(&v105, &v97);
    WTF::String::String(&v104, " rejecting ");
    WTF::LogArgument<WTF::NativePromise<WebCore::DOMCacheEngine::CacheInfos,WebCore::DOMCacheEngine::Error,0u>>::toString(&v103, v2);
    v45 = v103;
    if (v105)
    {
      v46 = *(v105 + 1);
      if (v104)
      {
        goto LABEL_69;
      }
    }

    else
    {
      v46 = 0;
      if (v104)
      {
LABEL_69:
        v47 = *(v104 + 1);
        if (v103)
        {
          goto LABEL_70;
        }

        goto LABEL_74;
      }
    }

    v47 = 0;
    if (v103)
    {
LABEL_70:
      v48 = *(v103 + 4);
      if ((v48 | v47) < 0)
      {
        goto LABEL_168;
      }

      goto LABEL_75;
    }

LABEL_74:
    v48 = 0;
    if (v47 < 0)
    {
LABEL_168:
      v106 = 0;
      goto LABEL_169;
    }

LABEL_75:
    v49 = __OFADD__(v47, v48);
    v50 = v47 + v48;
    v51 = v49;
    if (v46 < 0)
    {
      goto LABEL_168;
    }

    if (v51)
    {
      goto LABEL_168;
    }

    v52 = (v46 + v50);
    if (__OFADD__(v46, v50))
    {
      goto LABEL_168;
    }

    if (v105 && (*(v105 + 16) & 4) == 0)
    {
      v53 = 0;
      goto LABEL_93;
    }

    if (v104)
    {
      v54 = *(v104 + 4);
      v53 = (v54 >> 2) & 1;
      if (!v103 || (v54 & 4) == 0)
      {
LABEL_93:
        WTF::tryMakeStringImplFromAdaptersInternal<WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>>(v52, v53, v105, v104, v103, &v106);
        if (!v106)
        {
LABEL_169:
          __break(0xC471u);
          goto LABEL_172;
        }

        v103 = 0;
        if (v45 && atomic_fetch_add_explicit(v45, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v45, v55);
        }

        v56 = v104;
        v104 = 0;
        if (v56 && atomic_fetch_add_explicit(v56, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v56, v55);
        }

        v57 = v105;
        v105 = 0;
        if (v57 && atomic_fetch_add_explicit(v57, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v57, v55);
        }

        v58 = *(v44 + 4);
        v59 = os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT);
        if (v59)
        {
          WTF::String::utf8();
          v60 = v101 ? v101 + 16 : 0;
          *buf = 136446210;
          *v108 = v60;
          _os_log_impl(&dword_1C79C0000, v58, OS_LOG_TYPE_DEFAULT, "%{public}s", buf, 0xCu);
          v59 = v101;
          v101 = 0;
          if (v59)
          {
            if (*v59 == 1)
            {
              v59 = WTF::fastFree(v59, v43);
              if (*v44)
              {
LABEL_111:
                if (v44[16] >= 4u)
                {
                  v61 = MEMORY[0x1E696EBC0];
                  while (1)
                  {
                    v62 = *v61;
                    if (v62)
                    {
                      break;
                    }

                    v63 = *v61;
                    atomic_compare_exchange_strong_explicit(v61, &v63, v62 | 1, memory_order_acquire, memory_order_acquire);
                    if (v63 == v62)
                    {
                      v64 = WTF::Logger::observers(v59);
                      v65 = *(v64 + 12);
                      if (v65)
                      {
                        v66 = *v64;
                        v96 = *v64 + 8 * v65;
                        do
                        {
                          v67 = *v66;
                          *buf = 0;
                          WTF::Logger::LogSiteIdentifier::toString(&v108[4], &v97);
                          v109 = 0;
                          WTF::String::String(&v110, " rejecting ");
                          v111 = 0;
                          WTF::LogArgument<WTF::NativePromise<WebCore::DOMCacheEngine::CacheInfos,WebCore::DOMCacheEngine::Error,0u>>::toString(v112, v2);
                          v101 = 0;
                          v102 = 0;
                          v68 = WTF::fastMalloc(0x30);
                          LODWORD(v102) = 3;
                          v101 = v68;
                          v69 = HIDWORD(v102);
                          v70 = v68 + 16 * HIDWORD(v102);
                          *v70 = *buf;
                          v71 = *&v108[4];
                          if (*&v108[4])
                          {
                            atomic_fetch_add_explicit(*&v108[4], 2u, memory_order_relaxed);
                            v69 = HIDWORD(v102);
                            v68 = v101;
                          }

                          *(v70 + 1) = v71;
                          v72 = v69 + 1;
                          HIDWORD(v102) = v72;
                          v73 = v68 + 16 * v72;
                          *v73 = v109;
                          v74 = v110;
                          if (v110)
                          {
                            atomic_fetch_add_explicit(v110, 2u, memory_order_relaxed);
                            v72 = HIDWORD(v102);
                            v68 = v101;
                          }

                          *(v73 + 1) = v74;
                          v75 = v72 + 1;
                          HIDWORD(v102) = v75;
                          v76 = v68 + 16 * v75;
                          *v76 = v111;
                          v77 = v112[0];
                          if (v112[0])
                          {
                            atomic_fetch_add_explicit(v112[0], 2u, memory_order_relaxed);
                            v75 = HIDWORD(v102);
                          }

                          *(v76 + 1) = v77;
                          HIDWORD(v102) = v75 + 1;
                          (*(*v67 + 16))(v67, v44, 4, &v101);
                          v78 = v101;
                          if (HIDWORD(v102))
                          {
                            v79 = 16 * HIDWORD(v102);
                            v80 = (v101 + 8);
                            do
                            {
                              v81 = *v80;
                              *v80 = 0;
                              if (v81 && atomic_fetch_add_explicit(v81, 0xFFFFFFFE, memory_order_relaxed) == 2)
                              {
                                WTF::StringImpl::destroy(v81, v43);
                              }

                              v80 += 2;
                              v79 -= 16;
                            }

                            while (v79);
                            v78 = v101;
                          }

                          if (v78)
                          {
                            v101 = 0;
                            LODWORD(v102) = 0;
                            WTF::fastFree(v78, v43);
                          }

                          v82 = v112[0];
                          v112[0] = 0;
                          if (v82 && atomic_fetch_add_explicit(v82, 0xFFFFFFFE, memory_order_relaxed) == 2)
                          {
                            WTF::StringImpl::destroy(v82, v43);
                          }

                          v83 = v110;
                          v110 = 0;
                          if (v83 && atomic_fetch_add_explicit(v83, 0xFFFFFFFE, memory_order_relaxed) == 2)
                          {
                            WTF::StringImpl::destroy(v83, v43);
                          }

                          v84 = *&v108[4];
                          *&v108[4] = 0;
                          if (v84 && atomic_fetch_add_explicit(v84, 0xFFFFFFFE, memory_order_relaxed) == 2)
                          {
                            WTF::StringImpl::destroy(v84, v43);
                          }

                          ++v66;
                        }

                        while (v66 != v96);
                      }

                      v85 = 1;
                      atomic_compare_exchange_strong_explicit(v61, &v85, 0, memory_order_release, memory_order_relaxed);
                      if (v85 != 1)
                      {
                        WTF::Lock::unlockSlow(MEMORY[0x1E696EBC0]);
                      }

                      break;
                    }
                  }
                }
              }

LABEL_144:
              v86 = v106;
              v106 = 0;
              if (v86 && atomic_fetch_add_explicit(v86, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v86, v43);
              }

              goto LABEL_147;
            }

            --*v59;
          }
        }

        if (*v44)
        {
          goto LABEL_111;
        }

        goto LABEL_144;
      }
    }

    else if (!v103)
    {
      v53 = 1;
      goto LABEL_93;
    }

    v53 = (*(v103 + 16) >> 2) & 1;
    goto LABEL_93;
  }

LABEL_147:
  if (*(v2 + 88) > 1u)
  {
    if (*(v2 + 88) == 2)
    {
      v92 = *(v2 + 56);
      *(v2 + 56) = 0;
      if (v92)
      {
        (*(*v92 + 8))(v92);
      }
    }
  }

  else if (*(v2 + 88) && !*(v2 + 80))
  {
    v87 = *(v2 + 68);
    v88 = *(v2 + 56);
    if (v87)
    {
      v89 = 24 * v87;
      v90 = (v88 + 16);
      do
      {
        v91 = *v90;
        *v90 = 0;
        if (v91 && atomic_fetch_add_explicit(v91, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v91, v43);
        }

        v90 += 3;
        v89 -= 24;
      }

      while (v89);
      v88 = *(v2 + 56);
    }

    if (v88)
    {
      *(v2 + 56) = 0;
      *(v2 + 64) = 0;
      WTF::fastFree(v88, v43);
    }
  }

  *(v2 + 56) = 5;
  *(v2 + 80) = 1;
  *(v2 + 88) = 1;
  result = WTF::NativePromise<WebCore::DOMCacheEngine::CacheInfos,WebCore::DOMCacheEngine::Error,0u>::dispatchAll(v2, &v99);
  v94 = v100;
  if (v100 == 1)
  {
    result = v99;
    atomic_compare_exchange_strong_explicit(v99, &v94, 0, memory_order_release, memory_order_relaxed);
    if (v94 != 1)
    {
      return WTF::Lock::unlockSlow(result);
    }
  }

  return result;
}

void sub_1C7AA2BCC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, WTF::StringImpl *a17, char a18, WTF *a19, int a20, uint64_t a21, WTF::StringImpl *a22, uint64_t a23, WTF::StringImpl *a24, char a25, WTF::StringImpl *a26, uint64_t a27, WTF::StringImpl *a28, uint64_t a29, WTF::StringImpl *a30)
{
  *v31 = 0;
  if (atomic_fetch_add(v30 + 2, 0xFFFFFFFF) != 1)
  {
    _Unwind_Resume(exception_object);
  }

  atomic_store(1u, v30 + 2);
  (*(*v30 + 16))(v30);
  _Unwind_Resume(exception_object);
}

void sub_1C7AA2E80(_Unwind_Exception *a1, WTF::StringImpl *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, WTF::StringImpl *a17)
{
  v20 = 1;
  atomic_compare_exchange_strong_explicit(v18, &v20, 0, memory_order_release, memory_order_relaxed);
  if (v20 == 1)
  {
    v21 = a17;
    if (!a17)
    {
      goto LABEL_5;
    }
  }

  else
  {
    WTF::Lock::unlockSlow(MEMORY[0x1E696EBC0]);
    v21 = a17;
    if (!a17)
    {
      goto LABEL_5;
    }
  }

  if (atomic_fetch_add_explicit(v21, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v21, a2);
  }

LABEL_5:
  WTF::Vector<WTF::NativePromiseProducer<WebCore::DOMCacheEngine::CacheInfos,WebCore::DOMCacheEngine::Error,0u>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(a9);
  WTF::Vector<WTF::Ref<WTF::NativePromise<WebCore::DOMCacheEngine::CacheIdentifierOperationResult,WebCore::DOMCacheEngine::Error,0u>::ThenCallbackBase,WTF::RawPtrTraits<WTF::NativePromise<WebCore::DOMCacheEngine::CacheIdentifierOperationResult,WebCore::DOMCacheEngine::Error,0u>::ThenCallbackBase>,WTF::DefaultRefDerefTraits<WTF::NativePromise<WebCore::DOMCacheEngine::CacheIdentifierOperationResult,WebCore::DOMCacheEngine::Error,0u>::ThenCallbackBase>>,1ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(a10);
  mpark::detail::destructor<mpark::detail::traits<WTF::NativePromise<WebCore::DOMCacheEngine::CacheInfos,WebCore::DOMCacheEngine::Error,0u>::Storage::NoResult,std::experimental::fundamentals_v3::expected<WebCore::DOMCacheEngine::CacheInfos,WebCore::DOMCacheEngine::Error>,WTF::Function<std::experimental::fundamentals_v3::expected<WebCore::DOMCacheEngine::CacheInfos,WebCore::DOMCacheEngine::Error> ()(void)>>,(mpark::detail::Trait)1>::~destructor(v17 + 56);
  WTF::fastFree(v17, v22);
  _Unwind_Resume(a1);
}

void sub_1C7AA2E88(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, WTF::StringImpl *a17, uint64_t a18, WTF *a19, int a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, WTF::StringImpl *a26, uint64_t a27, WTF::StringImpl *a28)
{
  if (a26 && atomic_fetch_add_explicit(a26, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a26, a2);
  }

  v31 = 1;
  atomic_compare_exchange_strong_explicit(v29, &v31, 0, memory_order_release, memory_order_relaxed);
  if (v31 == 1)
  {
    v32 = a17;
    if (!a17)
    {
      goto LABEL_8;
    }
  }

  else
  {
    WTF::Lock::unlockSlow(MEMORY[0x1E696EBC0]);
    v32 = a17;
    if (!a17)
    {
      goto LABEL_8;
    }
  }

  if (atomic_fetch_add_explicit(v32, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v32, a2);
  }

LABEL_8:
  WTF::Vector<WTF::NativePromiseProducer<WebCore::DOMCacheEngine::CacheInfos,WebCore::DOMCacheEngine::Error,0u>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(a9, a2);
  WTF::Vector<WTF::Ref<WTF::NativePromise<WebCore::DOMCacheEngine::CacheIdentifierOperationResult,WebCore::DOMCacheEngine::Error,0u>::ThenCallbackBase,WTF::RawPtrTraits<WTF::NativePromise<WebCore::DOMCacheEngine::CacheIdentifierOperationResult,WebCore::DOMCacheEngine::Error,0u>::ThenCallbackBase>,WTF::DefaultRefDerefTraits<WTF::NativePromise<WebCore::DOMCacheEngine::CacheIdentifierOperationResult,WebCore::DOMCacheEngine::Error,0u>::ThenCallbackBase>>,1ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(a10, v33);
  mpark::detail::destructor<mpark::detail::traits<WTF::NativePromise<WebCore::DOMCacheEngine::CacheInfos,WebCore::DOMCacheEngine::Error,0u>::Storage::NoResult,std::experimental::fundamentals_v3::expected<WebCore::DOMCacheEngine::CacheInfos,WebCore::DOMCacheEngine::Error>,WTF::Function<std::experimental::fundamentals_v3::expected<WebCore::DOMCacheEngine::CacheInfos,WebCore::DOMCacheEngine::Error> ()(void)>>,(mpark::detail::Trait)1>::~destructor(v28 + 56, v34);
  WTF::fastFree(v28, v35);
  _Unwind_Resume(a1);
}

WTF::Lock *WebCore::CacheStorageProvider::DummyCacheStorageConnection::retrieveRecords@<X0>(uint64_t *a1@<X8>)
{
  v109[1] = *MEMORY[0x1E69E9840];
  v94 = 0uLL;
  *&v95 = "retrieveRecords";
  *(&v95 + 1) = 0;
  v2 = WTF::fastMalloc(0x88);
  *(v2 + 8) = 1;
  *v2 = &unk_1F472C060;
  v3 = v95;
  *(v2 + 16) = v94;
  *(v2 + 32) = v3;
  *(v2 + 48) = 0;
  v4 = (v2 + 48);
  *(v2 + 80) = 0;
  *(v2 + 88) = v2 + 104;
  *(v2 + 96) = 1;
  *(v2 + 112) = 0;
  *(v2 + 120) = 0;
  *(v2 + 128) = 0;
  v5 = WTF::NativePromiseBase::logChannel(v2);
  v6 = v5;
  if (!*v5 || v5[16] < 4u)
  {
    goto LABEL_63;
  }

  WTF::String::String(&v103, "creating ");
  WTF::LogArgument<WTF::NativePromise<WTF::Vector<WebCore::DOMCacheEngine::CrossThreadRecord,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::DOMCacheEngine::Error,0u>>::toString(&v102, v2);
  v7 = v102;
  if (v103)
  {
    v8 = *(v103 + 1);
    if (v102)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v8 = 0;
    if (v102)
    {
LABEL_5:
      v9 = *(v102 + 1);
      if ((v9 | v8) < 0)
      {
        goto LABEL_166;
      }

      goto LABEL_9;
    }
  }

  v9 = 0;
  if (v8 < 0)
  {
LABEL_166:
    v96 = 0;
    goto LABEL_167;
  }

LABEL_9:
  v10 = (v8 + v9);
  if (__OFADD__(v8, v9))
  {
    goto LABEL_166;
  }

  if (!v103)
  {
    if (!v102)
    {
      v12 = 1;
      goto LABEL_17;
    }

LABEL_15:
    v12 = (*(v102 + 16) >> 2) & 1;
    goto LABEL_17;
  }

  v11 = *(v103 + 4);
  v12 = (v11 >> 2) & 1;
  if (v102 && (v11 & 4) != 0)
  {
    goto LABEL_15;
  }

LABEL_17:
  WTF::tryMakeStringImplFromAdaptersInternal<WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>>(v10, v12, v103, v102, &v96);
  if (!v96)
  {
LABEL_167:
    __break(0xC471u);
LABEL_168:
    JUMPOUT(0x1C7AA3974);
  }

  v102 = 0;
  if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v7, v13);
  }

  v14 = v103;
  v103 = 0;
  if (v14 && atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v14, v13);
  }

  v15 = *(v6 + 4);
  v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);
  if (!v16 || ((WTF::String::utf8(), v98) ? (v18 = v98 + 16) : (v18 = 0), *buf = 136446210, *v105 = v18, _os_log_impl(&dword_1C79C0000, v15, OS_LOG_TYPE_DEFAULT, "%{public}s", buf, 0xCu), v16 = v98, v98 = 0, !v16))
  {
LABEL_31:
    if (*v6)
    {
      goto LABEL_32;
    }

    goto LABEL_60;
  }

  if (*v16 != 1)
  {
    --*v16;
    goto LABEL_31;
  }

  v16 = WTF::fastFree(v16, v17);
  if (*v6)
  {
LABEL_32:
    if (v6[16] >= 4u)
    {
      v19 = MEMORY[0x1E696EBC0];
      while (1)
      {
        v20 = *v19;
        if (v20)
        {
          break;
        }

        v21 = *v19;
        atomic_compare_exchange_strong_explicit(v19, &v21, v20 | 1, memory_order_acquire, memory_order_acquire);
        if (v21 == v20)
        {
          v92 = a1;
          v22 = WTF::Logger::observers(v16);
          v23 = *(v22 + 12);
          if (v23)
          {
            v24 = *v22;
            v25 = *v22 + 8 * v23;
            do
            {
              v26 = *v24;
              *buf = 0;
              WTF::String::String(&v105[4], "creating ");
              v106 = 0;
              WTF::LogArgument<WTF::NativePromise<WTF::Vector<WebCore::DOMCacheEngine::CrossThreadRecord,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::DOMCacheEngine::Error,0u>>::toString(&v107, v2);
              v98 = 0;
              v99 = 0;
              v27 = WTF::fastMalloc(0x20);
              LODWORD(v99) = 2;
              v98 = v27;
              v28 = HIDWORD(v99);
              v29 = v27 + 16 * HIDWORD(v99);
              *v29 = *buf;
              v30 = *&v105[4];
              if (*&v105[4])
              {
                atomic_fetch_add_explicit(*&v105[4], 2u, memory_order_relaxed);
                v28 = HIDWORD(v99);
                v27 = v98;
              }

              *(v29 + 1) = v30;
              v31 = v28 + 1;
              HIDWORD(v99) = v31;
              v32 = v27 + 16 * v31;
              *v32 = v106;
              v33 = v107;
              if (v107)
              {
                atomic_fetch_add_explicit(v107, 2u, memory_order_relaxed);
                v31 = HIDWORD(v99);
              }

              *(v32 + 1) = v33;
              HIDWORD(v99) = v31 + 1;
              (*(*v26 + 16))(v26, v6, 4, &v98);
              v34 = v98;
              if (HIDWORD(v99))
              {
                v35 = 16 * HIDWORD(v99);
                v36 = (v98 + 8);
                do
                {
                  v37 = *v36;
                  *v36 = 0;
                  if (v37 && atomic_fetch_add_explicit(v37, 0xFFFFFFFE, memory_order_relaxed) == 2)
                  {
                    WTF::StringImpl::destroy(v37, v17);
                  }

                  v36 += 2;
                  v35 -= 16;
                }

                while (v35);
                v34 = v98;
              }

              if (v34)
              {
                v98 = 0;
                LODWORD(v99) = 0;
                WTF::fastFree(v34, v17);
              }

              v38 = v107;
              v107 = 0;
              if (v38 && atomic_fetch_add_explicit(v38, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v38, v17);
              }

              v39 = *&v105[4];
              *&v105[4] = 0;
              if (v39 && atomic_fetch_add_explicit(v39, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v39, v17);
              }

              ++v24;
            }

            while (v24 != v25);
          }

          v40 = 1;
          atomic_compare_exchange_strong_explicit(v19, &v40, 0, memory_order_release, memory_order_relaxed);
          a1 = v92;
          v4 = (v2 + 48);
          if (v40 != 1)
          {
            WTF::Lock::unlockSlow(MEMORY[0x1E696EBC0]);
          }

          break;
        }
      }
    }
  }

LABEL_60:
  v5 = v96;
  v96 = 0;
  if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    v5 = WTF::StringImpl::destroy(v5, v17);
  }

LABEL_63:
  v41 = 0;
  *a1 = v2;
  v96 = v4;
  v97 = 1;
  atomic_compare_exchange_strong_explicit((v2 + 48), &v41, 1u, memory_order_acquire, memory_order_acquire);
  if (v41)
  {
    v5 = MEMORY[0x1CCA63990](v4);
  }

  v42 = WTF::NativePromiseBase::logChannel(v5);
  v44 = v42;
  if (*v42 && v42[16] >= 4u)
  {
    WTF::Logger::LogSiteIdentifier::toString(&v102, &v94);
    WTF::String::String(&v101, " rejecting ");
    WTF::LogArgument<WTF::NativePromise<WTF::Vector<WebCore::DOMCacheEngine::CrossThreadRecord,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::DOMCacheEngine::Error,0u>>::toString(&v100, v2);
    v45 = v100;
    if (v102)
    {
      v46 = *(v102 + 1);
      if (v101)
      {
        goto LABEL_69;
      }
    }

    else
    {
      v46 = 0;
      if (v101)
      {
LABEL_69:
        v47 = *(v101 + 1);
        if (v100)
        {
          goto LABEL_70;
        }

        goto LABEL_74;
      }
    }

    v47 = 0;
    if (v100)
    {
LABEL_70:
      v48 = *(v100 + 4);
      if ((v48 | v47) < 0)
      {
        goto LABEL_164;
      }

      goto LABEL_75;
    }

LABEL_74:
    v48 = 0;
    if (v47 < 0)
    {
LABEL_164:
      v103 = 0;
      goto LABEL_165;
    }

LABEL_75:
    v49 = __OFADD__(v47, v48);
    v50 = v47 + v48;
    v51 = v49;
    if (v46 < 0)
    {
      goto LABEL_164;
    }

    if (v51)
    {
      goto LABEL_164;
    }

    v52 = (v46 + v50);
    if (__OFADD__(v46, v50))
    {
      goto LABEL_164;
    }

    if (v102 && (*(v102 + 16) & 4) == 0)
    {
      v53 = 0;
      goto LABEL_93;
    }

    if (v101)
    {
      v54 = *(v101 + 4);
      v53 = (v54 >> 2) & 1;
      if (!v100 || (v54 & 4) == 0)
      {
LABEL_93:
        WTF::tryMakeStringImplFromAdaptersInternal<WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>>(v52, v53, v102, v101, v100, &v103);
        if (!v103)
        {
LABEL_165:
          __break(0xC471u);
          goto LABEL_168;
        }

        v100 = 0;
        if (v45 && atomic_fetch_add_explicit(v45, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v45, v55);
        }

        v56 = v101;
        v101 = 0;
        if (v56 && atomic_fetch_add_explicit(v56, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v56, v55);
        }

        v57 = v102;
        v102 = 0;
        if (v57 && atomic_fetch_add_explicit(v57, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v57, v55);
        }

        v58 = *(v44 + 4);
        v59 = os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT);
        if (v59)
        {
          WTF::String::utf8();
          v60 = v98 ? v98 + 16 : 0;
          *buf = 136446210;
          *v105 = v60;
          _os_log_impl(&dword_1C79C0000, v58, OS_LOG_TYPE_DEFAULT, "%{public}s", buf, 0xCu);
          v59 = v98;
          v98 = 0;
          if (v59)
          {
            if (*v59 == 1)
            {
              v59 = WTF::fastFree(v59, v43);
              if (*v44)
              {
LABEL_111:
                if (v44[16] >= 4u)
                {
                  v61 = MEMORY[0x1E696EBC0];
                  while (1)
                  {
                    v62 = *v61;
                    if (v62)
                    {
                      break;
                    }

                    v63 = *v61;
                    atomic_compare_exchange_strong_explicit(v61, &v63, v62 | 1, memory_order_acquire, memory_order_acquire);
                    if (v63 == v62)
                    {
                      v64 = WTF::Logger::observers(v59);
                      v65 = *(v64 + 12);
                      if (v65)
                      {
                        v66 = *v64;
                        v93 = *v64 + 8 * v65;
                        do
                        {
                          v67 = *v66;
                          *buf = 0;
                          WTF::Logger::LogSiteIdentifier::toString(&v105[4], &v94);
                          v106 = 0;
                          WTF::String::String(&v107, " rejecting ");
                          v108 = 0;
                          WTF::LogArgument<WTF::NativePromise<WTF::Vector<WebCore::DOMCacheEngine::CrossThreadRecord,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::DOMCacheEngine::Error,0u>>::toString(v109, v2);
                          v98 = 0;
                          v99 = 0;
                          v68 = WTF::fastMalloc(0x30);
                          LODWORD(v99) = 3;
                          v98 = v68;
                          v69 = HIDWORD(v99);
                          v70 = v68 + 16 * HIDWORD(v99);
                          *v70 = *buf;
                          v71 = *&v105[4];
                          if (*&v105[4])
                          {
                            atomic_fetch_add_explicit(*&v105[4], 2u, memory_order_relaxed);
                            v69 = HIDWORD(v99);
                            v68 = v98;
                          }

                          *(v70 + 1) = v71;
                          v72 = v69 + 1;
                          HIDWORD(v99) = v72;
                          v73 = v68 + 16 * v72;
                          *v73 = v106;
                          v74 = v107;
                          if (v107)
                          {
                            atomic_fetch_add_explicit(v107, 2u, memory_order_relaxed);
                            v72 = HIDWORD(v99);
                            v68 = v98;
                          }

                          *(v73 + 1) = v74;
                          v75 = v72 + 1;
                          HIDWORD(v99) = v75;
                          v76 = v68 + 16 * v75;
                          *v76 = v108;
                          v77 = v109[0];
                          if (v109[0])
                          {
                            atomic_fetch_add_explicit(v109[0], 2u, memory_order_relaxed);
                            v75 = HIDWORD(v99);
                          }

                          *(v76 + 1) = v77;
                          HIDWORD(v99) = v75 + 1;
                          (*(*v67 + 16))(v67, v44, 4, &v98);
                          v78 = v98;
                          if (HIDWORD(v99))
                          {
                            v79 = 16 * HIDWORD(v99);
                            v80 = (v98 + 8);
                            do
                            {
                              v81 = *v80;
                              *v80 = 0;
                              if (v81 && atomic_fetch_add_explicit(v81, 0xFFFFFFFE, memory_order_relaxed) == 2)
                              {
                                WTF::StringImpl::destroy(v81, v43);
                              }

                              v80 += 2;
                              v79 -= 16;
                            }

                            while (v79);
                            v78 = v98;
                          }

                          if (v78)
                          {
                            v98 = 0;
                            LODWORD(v99) = 0;
                            WTF::fastFree(v78, v43);
                          }

                          v82 = v109[0];
                          v109[0] = 0;
                          if (v82 && atomic_fetch_add_explicit(v82, 0xFFFFFFFE, memory_order_relaxed) == 2)
                          {
                            WTF::StringImpl::destroy(v82, v43);
                          }

                          v83 = v107;
                          v107 = 0;
                          if (v83 && atomic_fetch_add_explicit(v83, 0xFFFFFFFE, memory_order_relaxed) == 2)
                          {
                            WTF::StringImpl::destroy(v83, v43);
                          }

                          v84 = *&v105[4];
                          *&v105[4] = 0;
                          if (v84 && atomic_fetch_add_explicit(v84, 0xFFFFFFFE, memory_order_relaxed) == 2)
                          {
                            WTF::StringImpl::destroy(v84, v43);
                          }

                          ++v66;
                        }

                        while (v66 != v93);
                      }

                      v85 = 1;
                      atomic_compare_exchange_strong_explicit(v61, &v85, 0, memory_order_release, memory_order_relaxed);
                      if (v85 != 1)
                      {
                        WTF::Lock::unlockSlow(MEMORY[0x1E696EBC0]);
                      }

                      break;
                    }
                  }
                }
              }

LABEL_144:
              v86 = v103;
              v103 = 0;
              if (v86 && atomic_fetch_add_explicit(v86, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v86, v43);
              }

              goto LABEL_147;
            }

            --*v59;
          }
        }

        if (*v44)
        {
          goto LABEL_111;
        }

        goto LABEL_144;
      }
    }

    else if (!v100)
    {
      v53 = 1;
      goto LABEL_93;
    }

    v53 = (*(v100 + 16) >> 2) & 1;
    goto LABEL_93;
  }

LABEL_147:
  if (*(v2 + 80) > 1u)
  {
    if (*(v2 + 80) == 2)
    {
      v89 = *(v2 + 56);
      *(v2 + 56) = 0;
      if (v89)
      {
        (*(*v89 + 8))(v89);
      }
    }
  }

  else if (*(v2 + 80))
  {
    if (!*(v2 + 72))
    {
      v87 = *(v2 + 68);
      if (v87)
      {
        WTF::VectorTypeOperations<WebCore::DOMCacheEngine::CrossThreadRecord>::destruct(*(v2 + 56), (*(v2 + 56) + 608 * v87));
      }

      v88 = *(v2 + 56);
      if (v88)
      {
        *(v2 + 56) = 0;
        *(v2 + 64) = 0;
        WTF::fastFree(v88, v43);
      }
    }

    *(v2 + 72) = -1;
  }

  *(v2 + 56) = 5;
  *(v2 + 72) = 1;
  *(v2 + 80) = 1;
  result = WTF::NativePromise<WTF::Vector<WebCore::DOMCacheEngine::CrossThreadRecord,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::DOMCacheEngine::Error,0u>::dispatchAll(v2, &v96);
  v91 = v97;
  if (v97 == 1)
  {
    result = v96;
    atomic_compare_exchange_strong_explicit(v96, &v91, 0, memory_order_release, memory_order_relaxed);
    if (v91 != 1)
    {
      return WTF::Lock::unlockSlow(result);
    }
  }

  return result;
}

void sub_1C7AA3984(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, WTF::StringImpl *a17, char a18, WTF *a19, int a20, uint64_t a21, WTF::StringImpl *a22, uint64_t a23, WTF::StringImpl *a24, char a25, WTF::StringImpl *a26, uint64_t a27, WTF::StringImpl *a28, uint64_t a29, WTF::StringImpl *a30)
{
  *v31 = 0;
  if (atomic_fetch_add(v30 + 2, 0xFFFFFFFF) != 1)
  {
    _Unwind_Resume(exception_object);
  }

  atomic_store(1u, v30 + 2);
  (*(*v30 + 16))(v30);
  _Unwind_Resume(exception_object);
}

void sub_1C7AA3C58(_Unwind_Exception *a1, WTF::StringImpl *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, WTF::StringImpl *a17)
{
  v20 = 1;
  atomic_compare_exchange_strong_explicit(v18, &v20, 0, memory_order_release, memory_order_relaxed);
  if (v20 == 1)
  {
    v21 = a17;
    if (!a17)
    {
      goto LABEL_5;
    }
  }

  else
  {
    WTF::Lock::unlockSlow(MEMORY[0x1E696EBC0]);
    v21 = a17;
    if (!a17)
    {
      goto LABEL_5;
    }
  }

  if (atomic_fetch_add_explicit(v21, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v21, a2);
  }

LABEL_5:
  WTF::Vector<WTF::NativePromiseProducer<WTF::Vector<WebCore::DOMCacheEngine::CrossThreadRecord,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::DOMCacheEngine::Error,0u>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(a9);
  WTF::Vector<WTF::Ref<WTF::NativePromise<WebCore::DOMCacheEngine::CacheIdentifierOperationResult,WebCore::DOMCacheEngine::Error,0u>::ThenCallbackBase,WTF::RawPtrTraits<WTF::NativePromise<WebCore::DOMCacheEngine::CacheIdentifierOperationResult,WebCore::DOMCacheEngine::Error,0u>::ThenCallbackBase>,WTF::DefaultRefDerefTraits<WTF::NativePromise<WebCore::DOMCacheEngine::CacheIdentifierOperationResult,WebCore::DOMCacheEngine::Error,0u>::ThenCallbackBase>>,1ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(a10);
  mpark::detail::destructor<mpark::detail::traits<WTF::NativePromise<WTF::Vector<WebCore::DOMCacheEngine::CrossThreadRecord,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::DOMCacheEngine::Error,0u>::Storage::NoResult,std::experimental::fundamentals_v3::expected<WTF::Vector<WebCore::DOMCacheEngine::CrossThreadRecord,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::DOMCacheEngine::Error>,WTF::Function<std::experimental::fundamentals_v3::expected<WTF::Vector<WebCore::DOMCacheEngine::CrossThreadRecord,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::DOMCacheEngine::Error> ()(void)>>,(mpark::detail::Trait)1>::~destructor(v17 + 56);
  WTF::fastFree(v17, v22);
  _Unwind_Resume(a1);
}

void sub_1C7AA3C60(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, WTF::StringImpl *a17, uint64_t a18, WTF *a19, int a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, WTF::StringImpl *a26, uint64_t a27, WTF::StringImpl *a28)
{
  if (a26 && atomic_fetch_add_explicit(a26, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a26, a2);
  }

  v31 = 1;
  atomic_compare_exchange_strong_explicit(v29, &v31, 0, memory_order_release, memory_order_relaxed);
  if (v31 == 1)
  {
    v32 = a17;
    if (!a17)
    {
      goto LABEL_8;
    }
  }

  else
  {
    WTF::Lock::unlockSlow(MEMORY[0x1E696EBC0]);
    v32 = a17;
    if (!a17)
    {
      goto LABEL_8;
    }
  }

  if (atomic_fetch_add_explicit(v32, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v32, a2);
  }

LABEL_8:
  WTF::Vector<WTF::NativePromiseProducer<WTF::Vector<WebCore::DOMCacheEngine::CrossThreadRecord,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::DOMCacheEngine::Error,0u>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(a9, a2);
  WTF::Vector<WTF::Ref<WTF::NativePromise<WebCore::DOMCacheEngine::CacheIdentifierOperationResult,WebCore::DOMCacheEngine::Error,0u>::ThenCallbackBase,WTF::RawPtrTraits<WTF::NativePromise<WebCore::DOMCacheEngine::CacheIdentifierOperationResult,WebCore::DOMCacheEngine::Error,0u>::ThenCallbackBase>,WTF::DefaultRefDerefTraits<WTF::NativePromise<WebCore::DOMCacheEngine::CacheIdentifierOperationResult,WebCore::DOMCacheEngine::Error,0u>::ThenCallbackBase>>,1ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(a10, v33);
  mpark::detail::destructor<mpark::detail::traits<WTF::NativePromise<WTF::Vector<WebCore::DOMCacheEngine::CrossThreadRecord,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::DOMCacheEngine::Error,0u>::Storage::NoResult,std::experimental::fundamentals_v3::expected<WTF::Vector<WebCore::DOMCacheEngine::CrossThreadRecord,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::DOMCacheEngine::Error>,WTF::Function<std::experimental::fundamentals_v3::expected<WTF::Vector<WebCore::DOMCacheEngine::CrossThreadRecord,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::DOMCacheEngine::Error> ()(void)>>,(mpark::detail::Trait)1>::~destructor(v28 + 56, v34);
  WTF::fastFree(v28, v35);
  _Unwind_Resume(a1);
}

WTF::Lock *WebCore::CacheStorageProvider::DummyCacheStorageConnection::batchDeleteOperation@<X0>(uint64_t *a1@<X8>)
{
  v3 = 5;
  v2[0] = 0;
  v2[1] = 0;
  v2[2] = "batchDeleteOperation";
  v2[3] = 0;
  return WTF::NativePromise<WTF::Vector<unsigned long long,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::DOMCacheEngine::Error,0u>::createAndReject<WebCore::DOMCacheEngine::Error,std::enable_if<true,void>>(a1, &v3, v2);
}

WTF::Lock *WebCore::CacheStorageProvider::DummyCacheStorageConnection::batchPutOperation@<X0>(uint64_t *a1@<X8>)
{
  v3 = 5;
  v2[0] = 0;
  v2[1] = 0;
  v2[2] = "batchPutOperation";
  v2[3] = 0;
  return WTF::NativePromise<WTF::Vector<unsigned long long,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebCore::DOMCacheEngine::Error,0u>::createAndReject<WebCore::DOMCacheEngine::Error,std::enable_if<true,void>>(a1, &v3, v2);
}

WTF::Lock *WebCore::CacheStorageConnection::clearMemoryRepresentation@<X0>(uint64_t *a1@<X8>)
{
  v108[1] = *MEMORY[0x1E69E9840];
  v93 = 0uLL;
  *&v94 = "clearMemoryRepresentation";
  *(&v94 + 1) = 0;
  v2 = WTF::fastMalloc(0x78);
  *(v2 + 8) = 1;
  *v2 = &unk_1F472C100;
  v3 = v94;
  *(v2 + 16) = v93;
  *(v2 + 32) = v3;
  *(v2 + 48) = 0;
  v4 = (v2 + 48);
  *(v2 + 64) = 0;
  *(v2 + 72) = v2 + 88;
  *(v2 + 80) = 1;
  *(v2 + 96) = 0;
  *(v2 + 104) = 0;
  *(v2 + 112) = 0;
  v5 = WTF::NativePromiseBase::logChannel(v2);
  v6 = v5;
  if (!*v5 || v5[16] < 4u)
  {
    goto LABEL_63;
  }

  WTF::String::String(&v102, "creating ");
  WTF::LogArgument<WTF::NativePromise<void,WebCore::DOMCacheEngine::Error,0u>>::toString(&v101, v2);
  v7 = v101;
  if (v102)
  {
    v8 = *(v102 + 1);
    if (v101)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v8 = 0;
    if (v101)
    {
LABEL_5:
      v9 = *(v101 + 1);
      if ((v9 | v8) < 0)
      {
        goto LABEL_159;
      }

      goto LABEL_9;
    }
  }

  v9 = 0;
  if (v8 < 0)
  {
LABEL_159:
    v95 = 0;
    goto LABEL_160;
  }

LABEL_9:
  v10 = (v8 + v9);
  if (__OFADD__(v8, v9))
  {
    goto LABEL_159;
  }

  if (!v102)
  {
    if (!v101)
    {
      v12 = 1;
      goto LABEL_17;
    }

LABEL_15:
    v12 = (*(v101 + 16) >> 2) & 1;
    goto LABEL_17;
  }

  v11 = *(v102 + 4);
  v12 = (v11 >> 2) & 1;
  if (v101 && (v11 & 4) != 0)
  {
    goto LABEL_15;
  }

LABEL_17:
  WTF::tryMakeStringImplFromAdaptersInternal<WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>>(v10, v12, v102, v101, &v95);
  if (!v95)
  {
LABEL_160:
    __break(0xC471u);
LABEL_161:
    JUMPOUT(0x1C7AA479CLL);
  }

  v101 = 0;
  if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v7, v13);
  }

  v14 = v102;
  v102 = 0;
  if (v14 && atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v14, v13);
  }

  v15 = *(v6 + 4);
  v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);
  if (!v16 || ((WTF::String::utf8(), v97) ? (v18 = v97 + 16) : (v18 = 0), *buf = 136446210, *v104 = v18, _os_log_impl(&dword_1C79C0000, v15, OS_LOG_TYPE_DEFAULT, "%{public}s", buf, 0xCu), v16 = v97, v97 = 0, !v16))
  {
LABEL_31:
    if (*v6)
    {
      goto LABEL_32;
    }

    goto LABEL_60;
  }

  if (*v16 != 1)
  {
    --*v16;
    goto LABEL_31;
  }

  v16 = WTF::fastFree(v16, v17);
  if (*v6)
  {
LABEL_32:
    if (v6[16] >= 4u)
    {
      v19 = MEMORY[0x1E696EBC0];
      while (1)
      {
        v20 = *v19;
        if (v20)
        {
          break;
        }

        v21 = *v19;
        atomic_compare_exchange_strong_explicit(v19, &v21, v20 | 1, memory_order_acquire, memory_order_acquire);
        if (v21 == v20)
        {
          v91 = a1;
          v22 = WTF::Logger::observers(v16);
          v23 = *(v22 + 12);
          if (v23)
          {
            v24 = *v22;
            v25 = *v22 + 8 * v23;
            do
            {
              v26 = *v24;
              *buf = 0;
              WTF::String::String(&v104[4], "creating ");
              v105 = 0;
              WTF::LogArgument<WTF::NativePromise<void,WebCore::DOMCacheEngine::Error,0u>>::toString(&v106, v2);
              v97 = 0;
              v98 = 0;
              v27 = WTF::fastMalloc(0x20);
              LODWORD(v98) = 2;
              v97 = v27;
              v28 = HIDWORD(v98);
              v29 = v27 + 16 * HIDWORD(v98);
              *v29 = *buf;
              v30 = *&v104[4];
              if (*&v104[4])
              {
                atomic_fetch_add_explicit(*&v104[4], 2u, memory_order_relaxed);
                v28 = HIDWORD(v98);
                v27 = v97;
              }

              *(v29 + 1) = v30;
              v31 = v28 + 1;
              HIDWORD(v98) = v31;
              v32 = v27 + 16 * v31;
              *v32 = v105;
              v33 = v106;
              if (v106)
              {
                atomic_fetch_add_explicit(v106, 2u, memory_order_relaxed);
                v31 = HIDWORD(v98);
              }

              *(v32 + 1) = v33;
              HIDWORD(v98) = v31 + 1;
              (*(*v26 + 16))(v26, v6, 4, &v97);
              v34 = v97;
              if (HIDWORD(v98))
              {
                v35 = 16 * HIDWORD(v98);
                v36 = (v97 + 8);
                do
                {
                  v37 = *v36;
                  *v36 = 0;
                  if (v37 && atomic_fetch_add_explicit(v37, 0xFFFFFFFE, memory_order_relaxed) == 2)
                  {
                    WTF::StringImpl::destroy(v37, v17);
                  }

                  v36 += 2;
                  v35 -= 16;
                }

                while (v35);
                v34 = v97;
              }

              if (v34)
              {
                v97 = 0;
                LODWORD(v98) = 0;
                WTF::fastFree(v34, v17);
              }

              v38 = v106;
              v106 = 0;
              if (v38 && atomic_fetch_add_explicit(v38, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v38, v17);
              }

              v39 = *&v104[4];
              *&v104[4] = 0;
              if (v39 && atomic_fetch_add_explicit(v39, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v39, v17);
              }

              ++v24;
            }

            while (v24 != v25);
          }

          v40 = 1;
          atomic_compare_exchange_strong_explicit(v19, &v40, 0, memory_order_release, memory_order_relaxed);
          a1 = v91;
          v4 = (v2 + 48);
          if (v40 != 1)
          {
            WTF::Lock::unlockSlow(MEMORY[0x1E696EBC0]);
          }

          break;
        }
      }
    }
  }

LABEL_60:
  v5 = v95;
  v95 = 0;
  if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    v5 = WTF::StringImpl::destroy(v5, v17);
  }

LABEL_63:
  v41 = 0;
  *a1 = v2;
  v95 = v4;
  v96 = 1;
  atomic_compare_exchange_strong_explicit((v2 + 48), &v41, 1u, memory_order_acquire, memory_order_acquire);
  if (v41)
  {
    v5 = MEMORY[0x1CCA63990](v4);
  }

  v42 = WTF::NativePromiseBase::logChannel(v5);
  v43 = v42;
  if (*v42 && v42[16] >= 4u)
  {
    WTF::Logger::LogSiteIdentifier::toString(&v101, &v93);
    WTF::String::String(&v100, " rejecting ");
    WTF::LogArgument<WTF::NativePromise<void,WebCore::DOMCacheEngine::Error,0u>>::toString(&v99, v2);
    v44 = v99;
    if (v101)
    {
      v45 = *(v101 + 1);
      if (v100)
      {
        goto LABEL_69;
      }
    }

    else
    {
      v45 = 0;
      if (v100)
      {
LABEL_69:
        v46 = *(v100 + 1);
        if (v99)
        {
          goto LABEL_70;
        }

        goto LABEL_74;
      }
    }

    v46 = 0;
    if (v99)
    {
LABEL_70:
      v47 = *(v99 + 4);
      if ((v47 | v46) < 0)
      {
        goto LABEL_157;
      }

      goto LABEL_75;
    }

LABEL_74:
    v47 = 0;
    if (v46 < 0)
    {
LABEL_157:
      v102 = 0;
      goto LABEL_158;
    }

LABEL_75:
    v48 = __OFADD__(v46, v47);
    v49 = v46 + v47;
    v50 = v48;
    if (v45 < 0)
    {
      goto LABEL_157;
    }

    if (v50)
    {
      goto LABEL_157;
    }

    v51 = (v45 + v49);
    if (__OFADD__(v45, v49))
    {
      goto LABEL_157;
    }

    if (v101 && (*(v101 + 16) & 4) == 0)
    {
      v52 = 0;
      goto LABEL_93;
    }

    if (v100)
    {
      v53 = *(v100 + 4);
      v52 = (v53 >> 2) & 1;
      if (!v99 || (v53 & 4) == 0)
      {
LABEL_93:
        WTF::tryMakeStringImplFromAdaptersInternal<WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>>(v51, v52, v101, v100, v99, &v102);
        if (!v102)
        {
LABEL_158:
          __break(0xC471u);
          goto LABEL_161;
        }

        v99 = 0;
        if (v44 && atomic_fetch_add_explicit(v44, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v44, v54);
        }

        v55 = v100;
        v100 = 0;
        if (v55 && atomic_fetch_add_explicit(v55, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v55, v54);
        }

        v56 = v101;
        v101 = 0;
        if (v56 && atomic_fetch_add_explicit(v56, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v56, v54);
        }

        v57 = *(v43 + 4);
        v58 = os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT);
        if (v58)
        {
          WTF::String::utf8();
          v60 = v97 ? v97 + 16 : 0;
          *buf = 136446210;
          *v104 = v60;
          _os_log_impl(&dword_1C79C0000, v57, OS_LOG_TYPE_DEFAULT, "%{public}s", buf, 0xCu);
          v58 = v97;
          v97 = 0;
          if (v58)
          {
            if (*v58 == 1)
            {
              v58 = WTF::fastFree(v58, v59);
              if (*v43)
              {
LABEL_111:
                if (v43[16] >= 4u)
                {
                  v61 = MEMORY[0x1E696EBC0];
                  while (1)
                  {
                    v62 = *v61;
                    if (v62)
                    {
                      break;
                    }

                    v63 = *v61;
                    atomic_compare_exchange_strong_explicit(v61, &v63, v62 | 1, memory_order_acquire, memory_order_acquire);
                    if (v63 == v62)
                    {
                      v64 = WTF::Logger::observers(v58);
                      v65 = *(v64 + 12);
                      if (v65)
                      {
                        v66 = *v64;
                        v92 = *v64 + 8 * v65;
                        do
                        {
                          v67 = *v66;
                          *buf = 0;
                          WTF::Logger::LogSiteIdentifier::toString(&v104[4], &v93);
                          v105 = 0;
                          WTF::String::String(&v106, " rejecting ");
                          v107 = 0;
                          WTF::LogArgument<WTF::NativePromise<void,WebCore::DOMCacheEngine::Error,0u>>::toString(v108, v2);
                          v97 = 0;
                          v98 = 0;
                          v68 = WTF::fastMalloc(0x30);
                          LODWORD(v98) = 3;
                          v97 = v68;
                          v69 = HIDWORD(v98);
                          v70 = v68 + 16 * HIDWORD(v98);
                          *v70 = *buf;
                          v71 = *&v104[4];
                          if (*&v104[4])
                          {
                            atomic_fetch_add_explicit(*&v104[4], 2u, memory_order_relaxed);
                            v69 = HIDWORD(v98);
                            v68 = v97;
                          }

                          *(v70 + 1) = v71;
                          v72 = v69 + 1;
                          HIDWORD(v98) = v72;
                          v73 = v68 + 16 * v72;
                          *v73 = v105;
                          v74 = v106;
                          if (v106)
                          {
                            atomic_fetch_add_explicit(v106, 2u, memory_order_relaxed);
                            v72 = HIDWORD(v98);
                            v68 = v97;
                          }

                          *(v73 + 1) = v74;
                          v75 = v72 + 1;
                          HIDWORD(v98) = v75;
                          v76 = v68 + 16 * v75;
                          *v76 = v107;
                          v77 = v108[0];
                          if (v108[0])
                          {
                            atomic_fetch_add_explicit(v108[0], 2u, memory_order_relaxed);
                            v75 = HIDWORD(v98);
                          }

                          *(v76 + 1) = v77;
                          HIDWORD(v98) = v75 + 1;
                          (*(*v67 + 16))(v67, v43, 4, &v97);
                          v78 = v97;
                          if (HIDWORD(v98))
                          {
                            v79 = 16 * HIDWORD(v98);
                            v80 = (v97 + 8);
                            do
                            {
                              v81 = *v80;
                              *v80 = 0;
                              if (v81 && atomic_fetch_add_explicit(v81, 0xFFFFFFFE, memory_order_relaxed) == 2)
                              {
                                WTF::StringImpl::destroy(v81, v59);
                              }

                              v80 += 2;
                              v79 -= 16;
                            }

                            while (v79);
                            v78 = v97;
                          }

                          if (v78)
                          {
                            v97 = 0;
                            LODWORD(v98) = 0;
                            WTF::fastFree(v78, v59);
                          }

                          v82 = v108[0];
                          v108[0] = 0;
                          if (v82 && atomic_fetch_add_explicit(v82, 0xFFFFFFFE, memory_order_relaxed) == 2)
                          {
                            WTF::StringImpl::destroy(v82, v59);
                          }

                          v83 = v106;
                          v106 = 0;
                          if (v83 && atomic_fetch_add_explicit(v83, 0xFFFFFFFE, memory_order_relaxed) == 2)
                          {
                            WTF::StringImpl::destroy(v83, v59);
                          }

                          v84 = *&v104[4];
                          *&v104[4] = 0;
                          if (v84 && atomic_fetch_add_explicit(v84, 0xFFFFFFFE, memory_order_relaxed) == 2)
                          {
                            WTF::StringImpl::destroy(v84, v59);
                          }

                          ++v66;
                        }

                        while (v66 != v92);
                      }

                      v85 = 1;
                      atomic_compare_exchange_strong_explicit(v61, &v85, 0, memory_order_release, memory_order_relaxed);
                      if (v85 != 1)
                      {
                        WTF::Lock::unlockSlow(MEMORY[0x1E696EBC0]);
                      }

                      break;
                    }
                  }
                }
              }

LABEL_144:
              v86 = v102;
              v102 = 0;
              if (v86 && atomic_fetch_add_explicit(v86, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v86, v59);
              }

              goto LABEL_147;
            }

            --*v58;
          }
        }

        if (*v43)
        {
          goto LABEL_111;
        }

        goto LABEL_144;
      }
    }

    else if (!v99)
    {
      v52 = 1;
      goto LABEL_93;
    }

    v52 = (*(v99 + 16) >> 2) & 1;
    goto LABEL_93;
  }

LABEL_147:
  v87 = *(v2 + 64);
  if (v87 >= 2 && v87 != 255)
  {
    v88 = *(v2 + 56);
    *(v2 + 56) = 0;
    if (v88)
    {
      (*(*v88 + 8))(v88);
    }
  }

  *(v2 + 56) = 256;
  *(v2 + 64) = 1;
  result = WTF::NativePromise<void,WebCore::DOMCacheEngine::Error,0u>::dispatchAll(v2, &v95);
  v90 = v96;
  if (v96 == 1)
  {
    result = v95;
    atomic_compare_exchange_strong_explicit(v95, &v90, 0, memory_order_release, memory_order_relaxed);
    if (v90 != 1)
    {
      return WTF::Lock::unlockSlow(result);
    }
  }

  return result;
}

void sub_1C7AA47AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, WTF::StringImpl *a17, char a18, WTF *a19, int a20, uint64_t a21, WTF::StringImpl *a22, uint64_t a23, WTF::StringImpl *a24, char a25, WTF::StringImpl *a26, uint64_t a27, WTF::StringImpl *a28, uint64_t a29, WTF::StringImpl *a30)
{
  *v31 = 0;
  if (atomic_fetch_add(v30 + 2, 0xFFFFFFFF) != 1)
  {
    _Unwind_Resume(exception_object);
  }

  atomic_store(1u, v30 + 2);
  (*(*v30 + 16))(v30);
  _Unwind_Resume(exception_object);
}

void sub_1C7AA4A60(_Unwind_Exception *a1, WTF::StringImpl *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, WTF::StringImpl *a17)
{
  v20 = 1;
  atomic_compare_exchange_strong_explicit(v18, &v20, 0, memory_order_release, memory_order_relaxed);
  if (v20 == 1)
  {
    v21 = a17;
    if (!a17)
    {
      goto LABEL_5;
    }
  }

  else
  {
    WTF::Lock::unlockSlow(MEMORY[0x1E696EBC0]);
    v21 = a17;
    if (!a17)
    {
      goto LABEL_5;
    }
  }

  if (atomic_fetch_add_explicit(v21, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v21, a2);
  }

LABEL_5:
  WTF::Vector<WTF::NativePromiseProducer<void,WebCore::DOMCacheEngine::Error,0u>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(a9);
  WTF::Vector<WTF::Ref<WTF::NativePromise<WebCore::DOMCacheEngine::CacheIdentifierOperationResult,WebCore::DOMCacheEngine::Error,0u>::ThenCallbackBase,WTF::RawPtrTraits<WTF::NativePromise<WebCore::DOMCacheEngine::CacheIdentifierOperationResult,WebCore::DOMCacheEngine::Error,0u>::ThenCallbackBase>,WTF::DefaultRefDerefTraits<WTF::NativePromise<WebCore::DOMCacheEngine::CacheIdentifierOperationResult,WebCore::DOMCacheEngine::Error,0u>::ThenCallbackBase>>,1ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(a10);
  WTF::NativePromise<void,WebCore::DOMCacheEngine::Error,0u>::Storage::~Storage(v17 + 56);
  WTF::fastFree(v17, v22);
  _Unwind_Resume(a1);
}

void sub_1C7AA4A68(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, WTF::StringImpl *a17, uint64_t a18, WTF *a19, int a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, WTF::StringImpl *a26, uint64_t a27, WTF::StringImpl *a28)
{
  if (a26 && atomic_fetch_add_explicit(a26, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a26, a2);
  }

  v31 = 1;
  atomic_compare_exchange_strong_explicit(v29, &v31, 0, memory_order_release, memory_order_relaxed);
  if (v31 == 1)
  {
    v32 = a17;
    if (!a17)
    {
      goto LABEL_8;
    }
  }

  else
  {
    WTF::Lock::unlockSlow(MEMORY[0x1E696EBC0]);
    v32 = a17;
    if (!a17)
    {
      goto LABEL_8;
    }
  }

  if (atomic_fetch_add_explicit(v32, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v32, a2);
  }

LABEL_8:
  WTF::Vector<WTF::NativePromiseProducer<void,WebCore::DOMCacheEngine::Error,0u>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(a9, a2);
  WTF::Vector<WTF::Ref<WTF::NativePromise<WebCore::DOMCacheEngine::CacheIdentifierOperationResult,WebCore::DOMCacheEngine::Error,0u>::ThenCallbackBase,WTF::RawPtrTraits<WTF::NativePromise<WebCore::DOMCacheEngine::CacheIdentifierOperationResult,WebCore::DOMCacheEngine::Error,0u>::ThenCallbackBase>,WTF::DefaultRefDerefTraits<WTF::NativePromise<WebCore::DOMCacheEngine::CacheIdentifierOperationResult,WebCore::DOMCacheEngine::Error,0u>::ThenCallbackBase>>,1ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(a10, v33);
  WTF::NativePromise<void,WebCore::DOMCacheEngine::Error,0u>::Storage::~Storage(v28 + 7);
  WTF::fastFree(v28, v34);
  _Unwind_Resume(a1);
}

WTF::Lock *WebCore::CacheStorageConnection::engineRepresentation@<X0>(uint64_t *a1@<X8>)
{
  v109[1] = *MEMORY[0x1E69E9840];
  v94 = 0uLL;
  *&v95 = "engineRepresentation";
  *(&v95 + 1) = 0;
  v3 = WTF::fastMalloc(0x80);
  *(v3 + 8) = 1;
  *v3 = &unk_1F472C150;
  v4 = v95;
  *(v3 + 16) = v94;
  *(v3 + 32) = v4;
  *(v3 + 48) = 0;
  v5 = (v3 + 48);
  *(v3 + 72) = 0;
  *(v3 + 80) = v3 + 96;
  *(v3 + 88) = 1;
  *(v3 + 104) = 0;
  *(v3 + 112) = 0;
  *(v3 + 120) = 0;
  v6 = WTF::NativePromiseBase::logChannel(v3);
  v7 = v6;
  if (!*v6 || v6[16] < 4u)
  {
    goto LABEL_63;
  }

  WTF::String::String(&v103, "creating ");
  WTF::LogArgument<WTF::NativePromise<WTF::String,WebCore::DOMCacheEngine::Error,0u>>::toString(&v102, v3);
  v8 = v102;
  if (v103)
  {
    v9 = *(v103 + 1);
    if (v102)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v9 = 0;
    if (v102)
    {
LABEL_5:
      v10 = *(v102 + 1);
      if ((v10 | v9) < 0)
      {
        goto LABEL_164;
      }

      goto LABEL_9;
    }
  }

  v10 = 0;
  if (v9 < 0)
  {
LABEL_164:
    v96 = 0;
    goto LABEL_165;
  }

LABEL_9:
  v11 = (v9 + v10);
  if (__OFADD__(v9, v10))
  {
    goto LABEL_164;
  }

  if (!v103)
  {
    if (!v102)
    {
      v13 = 1;
      goto LABEL_17;
    }

LABEL_15:
    v13 = (*(v102 + 16) >> 2) & 1;
    goto LABEL_17;
  }

  v12 = *(v103 + 4);
  v13 = (v12 >> 2) & 1;
  if (v102 && (v12 & 4) != 0)
  {
    goto LABEL_15;
  }

LABEL_17:
  WTF::tryMakeStringImplFromAdaptersInternal<WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>>(v11, v13, v103, v102, &v96);
  if (!v96)
  {
LABEL_165:
    __break(0xC471u);
LABEL_166:
    JUMPOUT(0x1C7AA553CLL);
  }

  v102 = 0;
  if (v8 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v8, v14);
  }

  v15 = v103;
  v103 = 0;
  if (v15 && atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v15, v14);
  }

  v16 = *(v7 + 4);
  v17 = os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);
  if (!v17 || ((WTF::String::utf8(), v98) ? (v19 = v98 + 16) : (v19 = 0), *buf = 136446210, *v105 = v19, _os_log_impl(&dword_1C79C0000, v16, OS_LOG_TYPE_DEFAULT, "%{public}s", buf, 0xCu), v17 = v98, v98 = 0, !v17))
  {
LABEL_31:
    if (*v7)
    {
      goto LABEL_32;
    }

    goto LABEL_60;
  }

  if (*v17 != 1)
  {
    --*v17;
    goto LABEL_31;
  }

  v17 = WTF::fastFree(v17, v18);
  if (*v7)
  {
LABEL_32:
    if (v7[16] >= 4u)
    {
      v20 = MEMORY[0x1E696EBC0];
      while (1)
      {
        v21 = *v20;
        if (v21)
        {
          break;
        }

        v22 = *v20;
        atomic_compare_exchange_strong_explicit(v20, &v22, v21 | 1, memory_order_acquire, memory_order_acquire);
        if (v22 == v21)
        {
          v92 = a1;
          v23 = WTF::Logger::observers(v17);
          v24 = *(v23 + 12);
          if (v24)
          {
            v25 = *v23;
            v26 = *v23 + 8 * v24;
            do
            {
              v27 = *v25;
              *buf = 0;
              WTF::String::String(&v105[4], "creating ");
              v106 = 0;
              WTF::LogArgument<WTF::NativePromise<WTF::String,WebCore::DOMCacheEngine::Error,0u>>::toString(&v107, v3);
              v98 = 0;
              v99 = 0;
              v28 = WTF::fastMalloc(0x20);
              LODWORD(v99) = 2;
              v98 = v28;
              v29 = HIDWORD(v99);
              v30 = v28 + 16 * HIDWORD(v99);
              *v30 = *buf;
              v31 = *&v105[4];
              if (*&v105[4])
              {
                atomic_fetch_add_explicit(*&v105[4], 2u, memory_order_relaxed);
                v29 = HIDWORD(v99);
                v28 = v98;
              }

              *(v30 + 1) = v31;
              v32 = v29 + 1;
              HIDWORD(v99) = v32;
              v33 = v28 + 16 * v32;
              *v33 = v106;
              v34 = v107;
              if (v107)
              {
                atomic_fetch_add_explicit(v107, 2u, memory_order_relaxed);
                v32 = HIDWORD(v99);
              }

              *(v33 + 1) = v34;
              HIDWORD(v99) = v32 + 1;
              (*(*v27 + 16))(v27, v7, 4, &v98);
              v35 = v98;
              if (HIDWORD(v99))
              {
                v36 = 16 * HIDWORD(v99);
                v37 = (v98 + 8);
                do
                {
                  v38 = *v37;
                  *v37 = 0;
                  if (v38 && atomic_fetch_add_explicit(v38, 0xFFFFFFFE, memory_order_relaxed) == 2)
                  {
                    WTF::StringImpl::destroy(v38, v18);
                  }

                  v37 += 2;
                  v36 -= 16;
                }

                while (v36);
                v35 = v98;
              }

              if (v35)
              {
                v98 = 0;
                LODWORD(v99) = 0;
                WTF::fastFree(v35, v18);
              }

              v39 = v107;
              v107 = 0;
              if (v39 && atomic_fetch_add_explicit(v39, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v39, v18);
              }

              v40 = *&v105[4];
              *&v105[4] = 0;
              if (v40 && atomic_fetch_add_explicit(v40, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v40, v18);
              }

              ++v25;
            }

            while (v25 != v26);
          }

          v41 = 1;
          atomic_compare_exchange_strong_explicit(v20, &v41, 0, memory_order_release, memory_order_relaxed);
          a1 = v92;
          v5 = (v3 + 48);
          if (v41 != 1)
          {
            WTF::Lock::unlockSlow(MEMORY[0x1E696EBC0]);
          }

          break;
        }
      }
    }
  }

LABEL_60:
  v6 = v96;
  v96 = 0;
  if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    v6 = WTF::StringImpl::destroy(v6, v18);
  }

LABEL_63:
  v42 = 0;
  *a1 = v3;
  v96 = v5;
  v97 = 1;
  atomic_compare_exchange_strong_explicit((v3 + 48), &v42, 1u, memory_order_acquire, memory_order_acquire);
  if (v42)
  {
    v6 = MEMORY[0x1CCA63990](v5);
  }

  v43 = WTF::NativePromiseBase::logChannel(v6);
  v45 = v43;
  if (*v43 && v43[16] >= 4u)
  {
    WTF::Logger::LogSiteIdentifier::toString(&v102, &v94);
    WTF::String::String(&v101, " rejecting ");
    WTF::LogArgument<WTF::NativePromise<WTF::String,WebCore::DOMCacheEngine::Error,0u>>::toString(&v100, v3);
    v46 = v100;
    if (v102)
    {
      v47 = *(v102 + 1);
      if (v101)
      {
        goto LABEL_69;
      }
    }

    else
    {
      v47 = 0;
      if (v101)
      {
LABEL_69:
        v48 = *(v101 + 1);
        if (v100)
        {
          goto LABEL_70;
        }

        goto LABEL_74;
      }
    }

    v48 = 0;
    if (v100)
    {
LABEL_70:
      v49 = *(v100 + 4);
      if ((v49 | v48) < 0)
      {
        goto LABEL_162;
      }

      goto LABEL_75;
    }

LABEL_74:
    v49 = 0;
    if (v48 < 0)
    {
LABEL_162:
      v103 = 0;
      goto LABEL_163;
    }

LABEL_75:
    v50 = __OFADD__(v48, v49);
    v51 = v48 + v49;
    v52 = v50;
    if (v47 < 0)
    {
      goto LABEL_162;
    }

    if (v52)
    {
      goto LABEL_162;
    }

    v53 = (v47 + v51);
    if (__OFADD__(v47, v51))
    {
      goto LABEL_162;
    }

    if (v102 && (*(v102 + 16) & 4) == 0)
    {
      v54 = 0;
      goto LABEL_93;
    }

    if (v101)
    {
      v55 = *(v101 + 4);
      v54 = (v55 >> 2) & 1;
      if (!v100 || (v55 & 4) == 0)
      {
LABEL_93:
        WTF::tryMakeStringImplFromAdaptersInternal<WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>>(v53, v54, v102, v101, v100, &v103);
        if (!v103)
        {
LABEL_163:
          __break(0xC471u);
          goto LABEL_166;
        }

        v100 = 0;
        if (v46 && atomic_fetch_add_explicit(v46, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v46, v56);
        }

        v57 = v101;
        v101 = 0;
        if (v57 && atomic_fetch_add_explicit(v57, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v57, v56);
        }

        v58 = v102;
        v102 = 0;
        if (v58 && atomic_fetch_add_explicit(v58, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v58, v56);
        }

        v59 = *(v45 + 4);
        v60 = os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT);
        if (v60)
        {
          WTF::String::utf8();
          v61 = v98 ? v98 + 16 : 0;
          *buf = 136446210;
          *v105 = v61;
          _os_log_impl(&dword_1C79C0000, v59, OS_LOG_TYPE_DEFAULT, "%{public}s", buf, 0xCu);
          v60 = v98;
          v98 = 0;
          if (v60)
          {
            if (*v60 == 1)
            {
              v60 = WTF::fastFree(v60, v44);
              if (*v45)
              {
LABEL_111:
                if (v45[16] >= 4u)
                {
                  v62 = MEMORY[0x1E696EBC0];
                  while (1)
                  {
                    v63 = *v62;
                    if (v63)
                    {
                      break;
                    }

                    v64 = *v62;
                    atomic_compare_exchange_strong_explicit(v62, &v64, v63 | 1, memory_order_acquire, memory_order_acquire);
                    if (v64 == v63)
                    {
                      v65 = WTF::Logger::observers(v60);
                      v66 = *(v65 + 12);
                      if (v66)
                      {
                        v67 = *v65;
                        v93 = *v65 + 8 * v66;
                        do
                        {
                          v68 = *v67;
                          *buf = 0;
                          WTF::Logger::LogSiteIdentifier::toString(&v105[4], &v94);
                          v106 = 0;
                          WTF::String::String(&v107, " rejecting ");
                          v108 = 0;
                          WTF::LogArgument<WTF::NativePromise<WTF::String,WebCore::DOMCacheEngine::Error,0u>>::toString(v109, v3);
                          v98 = 0;
                          v99 = 0;
                          v69 = WTF::fastMalloc(0x30);
                          LODWORD(v99) = 3;
                          v98 = v69;
                          v70 = HIDWORD(v99);
                          v71 = v69 + 16 * HIDWORD(v99);
                          *v71 = *buf;
                          v72 = *&v105[4];
                          if (*&v105[4])
                          {
                            atomic_fetch_add_explicit(*&v105[4], 2u, memory_order_relaxed);
                            v70 = HIDWORD(v99);
                            v69 = v98;
                          }

                          *(v71 + 1) = v72;
                          v73 = v70 + 1;
                          HIDWORD(v99) = v73;
                          v74 = v69 + 16 * v73;
                          *v74 = v106;
                          v75 = v107;
                          if (v107)
                          {
                            atomic_fetch_add_explicit(v107, 2u, memory_order_relaxed);
                            v73 = HIDWORD(v99);
                            v69 = v98;
                          }

                          *(v74 + 1) = v75;
                          v76 = v73 + 1;
                          HIDWORD(v99) = v76;
                          v77 = v69 + 16 * v76;
                          *v77 = v108;
                          v78 = v109[0];
                          if (v109[0])
                          {
                            atomic_fetch_add_explicit(v109[0], 2u, memory_order_relaxed);
                            v76 = HIDWORD(v99);
                          }

                          *(v77 + 1) = v78;
                          HIDWORD(v99) = v76 + 1;
                          (*(*v68 + 16))(v68, v45, 4, &v98);
                          v79 = v98;
                          if (HIDWORD(v99))
                          {
                            v80 = 16 * HIDWORD(v99);
                            v81 = (v98 + 8);
                            do
                            {
                              v82 = *v81;
                              *v81 = 0;
                              if (v82 && atomic_fetch_add_explicit(v82, 0xFFFFFFFE, memory_order_relaxed) == 2)
                              {
                                WTF::StringImpl::destroy(v82, v44);
                              }

                              v81 += 2;
                              v80 -= 16;
                            }

                            while (v80);
                            v79 = v98;
                          }

                          if (v79)
                          {
                            v98 = 0;
                            LODWORD(v99) = 0;
                            WTF::fastFree(v79, v44);
                          }

                          v83 = v109[0];
                          v109[0] = 0;
                          if (v83 && atomic_fetch_add_explicit(v83, 0xFFFFFFFE, memory_order_relaxed) == 2)
                          {
                            WTF::StringImpl::destroy(v83, v44);
                          }

                          v84 = v107;
                          v107 = 0;
                          if (v84 && atomic_fetch_add_explicit(v84, 0xFFFFFFFE, memory_order_relaxed) == 2)
                          {
                            WTF::StringImpl::destroy(v84, v44);
                          }

                          v85 = *&v105[4];
                          *&v105[4] = 0;
                          if (v85 && atomic_fetch_add_explicit(v85, 0xFFFFFFFE, memory_order_relaxed) == 2)
                          {
                            WTF::StringImpl::destroy(v85, v44);
                          }

                          ++v67;
                        }

                        while (v67 != v93);
                      }

                      v86 = 1;
                      atomic_compare_exchange_strong_explicit(v62, &v86, 0, memory_order_release, memory_order_relaxed);
                      if (v86 != 1)
                      {
                        WTF::Lock::unlockSlow(MEMORY[0x1E696EBC0]);
                      }

                      break;
                    }
                  }
                }
              }

LABEL_144:
              v87 = v103;
              v103 = 0;
              if (v87 && atomic_fetch_add_explicit(v87, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v87, v44);
              }

              goto LABEL_147;
            }

            --*v60;
          }
        }

        if (*v45)
        {
          goto LABEL_111;
        }

        goto LABEL_144;
      }
    }

    else if (!v100)
    {
      v54 = 1;
      goto LABEL_93;
    }

    v54 = (*(v100 + 16) >> 2) & 1;
    goto LABEL_93;
  }

LABEL_147:
  if (*(v3 + 72) > 1u)
  {
    if (*(v3 + 72) == 2)
    {
      v89 = *(v3 + 56);
      *(v3 + 56) = 0;
      if (v89)
      {
        (*(*v89 + 8))(v89);
      }
    }
  }

  else if (*(v3 + 72))
  {
    if (!*(v3 + 64))
    {
      v88 = *(v3 + 56);
      *(v3 + 56) = 0;
      if (v88)
      {
        if (atomic_fetch_add_explicit(v88, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v88, v44);
        }
      }
    }
  }

  *(v3 + 56) = 0;
  *(v3 + 64) = 1;
  *(v3 + 72) = 1;
  result = WTF::NativePromise<WTF::String,WebCore::DOMCacheEngine::Error,0u>::dispatchAll(v3, &v96);
  v91 = v97;
  if (v97 == 1)
  {
    result = v96;
    atomic_compare_exchange_strong_explicit(v96, &v91, 0, memory_order_release, memory_order_relaxed);
    if (v91 != 1)
    {
      return WTF::Lock::unlockSlow(result);
    }
  }

  return result;
}

void sub_1C7AA554C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, WTF::StringImpl *a17, char a18, WTF *a19, int a20, uint64_t a21, WTF::StringImpl *a22, uint64_t a23, WTF::StringImpl *a24, char a25, WTF::StringImpl *a26, uint64_t a27, WTF::StringImpl *a28, uint64_t a29, WTF::StringImpl *a30)
{
  *v31 = 0;
  if (atomic_fetch_add(v30 + 2, 0xFFFFFFFF) != 1)
  {
    _Unwind_Resume(exception_object);
  }

  atomic_store(1u, v30 + 2);
  (*(*v30 + 16))(v30);
  _Unwind_Resume(exception_object);
}

void sub_1C7AA5800(_Unwind_Exception *a1, WTF::StringImpl *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, WTF::StringImpl *a17)
{
  v20 = 1;
  atomic_compare_exchange_strong_explicit(v18, &v20, 0, memory_order_release, memory_order_relaxed);
  if (v20 == 1)
  {
    v21 = a17;
    if (!a17)
    {
      goto LABEL_5;
    }
  }

  else
  {
    WTF::Lock::unlockSlow(MEMORY[0x1E696EBC0]);
    v21 = a17;
    if (!a17)
    {
      goto LABEL_5;
    }
  }

  if (atomic_fetch_add_explicit(v21, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v21, a2);
  }

LABEL_5:
  WTF::Vector<WTF::NativePromiseProducer<WTF::String,WebCore::DOMCacheEngine::Error,0u>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(a9);
  WTF::Vector<WTF::Ref<WTF::NativePromise<WebCore::DOMCacheEngine::CacheIdentifierOperationResult,WebCore::DOMCacheEngine::Error,0u>::ThenCallbackBase,WTF::RawPtrTraits<WTF::NativePromise<WebCore::DOMCacheEngine::CacheIdentifierOperationResult,WebCore::DOMCacheEngine::Error,0u>::ThenCallbackBase>,WTF::DefaultRefDerefTraits<WTF::NativePromise<WebCore::DOMCacheEngine::CacheIdentifierOperationResult,WebCore::DOMCacheEngine::Error,0u>::ThenCallbackBase>>,1ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(a10);
  WTF::NativePromise<WTF::String,WebCore::DOMCacheEngine::Error,0u>::Storage::~Storage(v17 + 56);
  WTF::fastFree(v17, v22);
  _Unwind_Resume(a1);
}

void sub_1C7AA5808(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, WTF::StringImpl *a17, uint64_t a18, WTF *a19, int a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, WTF::StringImpl *a26, uint64_t a27, WTF::StringImpl *a28)
{
  if (a26 && atomic_fetch_add_explicit(a26, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a26, a2);
  }

  v31 = 1;
  atomic_compare_exchange_strong_explicit(v29, &v31, 0, memory_order_release, memory_order_relaxed);
  if (v31 == 1)
  {
    v32 = a17;
    if (!a17)
    {
      goto LABEL_8;
    }
  }

  else
  {
    WTF::Lock::unlockSlow(MEMORY[0x1E696EBC0]);
    v32 = a17;
    if (!a17)
    {
      goto LABEL_8;
    }
  }

  if (atomic_fetch_add_explicit(v32, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v32, a2);
  }

LABEL_8:
  WTF::Vector<WTF::NativePromiseProducer<WTF::String,WebCore::DOMCacheEngine::Error,0u>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(a9, a2);
  WTF::Vector<WTF::Ref<WTF::NativePromise<WebCore::DOMCacheEngine::CacheIdentifierOperationResult,WebCore::DOMCacheEngine::Error,0u>::ThenCallbackBase,WTF::RawPtrTraits<WTF::NativePromise<WebCore::DOMCacheEngine::CacheIdentifierOperationResult,WebCore::DOMCacheEngine::Error,0u>::ThenCallbackBase>,WTF::DefaultRefDerefTraits<WTF::NativePromise<WebCore::DOMCacheEngine::CacheIdentifierOperationResult,WebCore::DOMCacheEngine::Error,0u>::ThenCallbackBase>>,1ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(a10, v33);
  WTF::NativePromise<WTF::String,WebCore::DOMCacheEngine::Error,0u>::Storage::~Storage(v28 + 56, v34);
  WTF::fastFree(v28, v35);
  _Unwind_Resume(a1);
}

uint64_t WTF::Vector<WTF::NativePromiseProducer<WebCore::DOMCacheEngine::CacheIdentifierOperationResult,WebCore::DOMCacheEngine::Error,0u>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(uint64_t a1, void *a2)
{
  v3 = *(a1 + 12);
  if (v3)
  {
    v4 = *a1;
    v5 = 40 * v3;
    do
    {
      v4 = WTF::NativePromiseProducer<WebCore::DOMCacheEngine::CacheIdentifierOperationResult,WebCore::DOMCacheEngine::Error,0u>::~NativePromiseProducer(v4) + 5;
      v5 -= 40;
    }

    while (v5);
  }

  v6 = *a1;
  if (*a1)
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    WTF::fastFree(v6, a2);
  }

  return a1;
}

uint64_t WTF::Vector<WTF::Ref<WTF::NativePromise<WebCore::DOMCacheEngine::CacheIdentifierOperationResult,WebCore::DOMCacheEngine::Error,0u>::ThenCallbackBase,WTF::RawPtrTraits<WTF::NativePromise<WebCore::DOMCacheEngine::CacheIdentifierOperationResult,WebCore::DOMCacheEngine::Error,0u>::ThenCallbackBase>,WTF::DefaultRefDerefTraits<WTF::NativePromise<WebCore::DOMCacheEngine::CacheIdentifierOperationResult,WebCore::DOMCacheEngine::Error,0u>::ThenCallbackBase>>,1ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(uint64_t result, void *a2)
{
  v2 = *(result + 12);
  v3 = *result;
  if (v2)
  {
    v4 = 8 * v2;
    do
    {
      v5 = *v3;
      *v3 = 0;
      if (v5 && atomic_fetch_add(v5 + 2, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v5 + 2);
        v6 = result;
        (*(*v5 + 8))(v5);
        result = v6;
      }

      v3 = (v3 + 8);
      v4 -= 8;
    }

    while (v4);
    v3 = *result;
  }

  if ((result + 16) != v3 && v3 != 0)
  {
    *result = 0;
    *(result + 8) = 0;
    v8 = result;
    WTF::fastFree(v3, a2);
    return v8;
  }

  return result;
}

uint64_t *WTF::NativePromise<WebCore::DOMCacheEngine::CacheIdentifierOperationResult,WebCore::DOMCacheEngine::Error,0u>::Storage::~Storage(uint64_t *result)
{
  v1 = *(result + 32);
  if (v1 >= 2 && v1 != 255)
  {
    v2 = *result;
    *result = 0;
    if (v2)
    {
      v3 = result;
      (*(*v2 + 8))(v2);
      result = v3;
    }
  }

  *(result + 32) = -1;
  return result;
}

uint64_t WTF::NativePromise<WebCore::DOMCacheEngine::CacheIdentifierOperationResult,WebCore::DOMCacheEngine::Error,0u>::assertIsDead(uint64_t result)
{
  v1 = 0;
  v2 = (result + 48);
  atomic_compare_exchange_strong_explicit((result + 48), &v1, 1u, memory_order_acquire, memory_order_acquire);
  if (v1)
  {
    v7 = result;
    MEMORY[0x1CCA63990](result + 48);
    result = v7;
    v3 = *(v7 + 132);
    if (!v3)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v3 = *(result + 132);
    if (!v3)
    {
      goto LABEL_9;
    }
  }

  v4 = *(result + 120);
  v5 = 40 * v3;
  do
  {
    v6 = *v4;
    if (*v4)
    {
      atomic_fetch_add(v6 + 2, 1u);
      result = WTF::NativePromise<WebCore::DOMCacheEngine::CacheIdentifierOperationResult,WebCore::DOMCacheEngine::Error,0u>::assertIsDead(v6);
      if (atomic_fetch_add(v6 + 2, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v6 + 2);
        result = (*(*v6 + 16))(v6);
      }
    }

    v4 += 5;
    v5 -= 40;
  }

  while (v5);
LABEL_9:
  v8 = 1;
  atomic_compare_exchange_strong_explicit(v2, &v8, 0, memory_order_release, memory_order_relaxed);
  if (v8 != 1)
  {

    return WTF::Lock::unlockSlow(v2);
  }

  return result;
}

void sub_1C7AA5BC4(_Unwind_Exception *exception_object)
{
  if (atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v2 + 2);
    (*(*v2 + 16))(v2);
    v6 = 1;
    atomic_compare_exchange_strong_explicit(v1, &v6, 0, memory_order_release, memory_order_relaxed);
    if (v6 == 1)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else
  {
    v5 = 1;
    atomic_compare_exchange_strong_explicit(v1, &v5, 0, memory_order_release, memory_order_relaxed);
    if (v5 == 1)
    {
      goto LABEL_3;
    }
  }

  WTF::Lock::unlockSlow(v1);
  _Unwind_Resume(exception_object);
}

uint64_t WTF::NativePromise<WebCore::DOMCacheEngine::CacheIdentifierOperationResult,WebCore::DOMCacheEngine::Error,0u>::~NativePromise(uint64_t a1)
{
  v1 = WTF::NativePromise<WebCore::DOMCacheEngine::CacheIdentifierOperationResult,WebCore::DOMCacheEngine::Error,0u>::~NativePromise(a1);

  return WTF::fastFree(v1, v2);
}

uint64_t WTF::LogArgument<WTF::NativePromise<WebCore::DOMCacheEngine::CacheIdentifierOperationResult,WebCore::DOMCacheEngine::Error,0u>>::toString(void *a1, uint64_t a2)
{
  WTF::LogArgument<void const*>::toString();
  result = WTF::Logger::LogSiteIdentifier::toString(&v16, (a2 + 16));
  if (v17)
  {
    v6 = *(v17 + 1);
    if (v16)
    {
LABEL_3:
      v7 = *(v16 + 1);
      if ((v7 & 0x80000000) == 0)
      {
        v4 = __OFADD__(v7, 1);
        v8 = v7 + 1;
        if (!v4)
        {
          goto LABEL_9;
        }
      }

LABEL_30:
      *a1 = 0;
LABEL_31:
      __break(0xC471u);
      return result;
    }
  }

  else
  {
    v6 = 0;
    if (v16)
    {
      goto LABEL_3;
    }
  }

  v8 = 1;
  if (v4)
  {
    goto LABEL_30;
  }

LABEL_9:
  v4 = __OFADD__(v8, 1);
  v9 = v8 + 1;
  v10 = v4;
  if (v6 < 0)
  {
    goto LABEL_30;
  }

  if (v10)
  {
    goto LABEL_30;
  }

  v4 = __OFADD__(v6, v9);
  v11 = v6 + v9;
  if (v4)
  {
    goto LABEL_30;
  }

  result = (v11 + 13);
  if (__OFADD__(v11, 13))
  {
    goto LABEL_30;
  }

  v12 = (!v17 || (*(v17 + 16) & 4) != 0) && (!v16 || (*(v16 + 16) & 4) != 0);
  result = WTF::tryMakeStringImplFromAdaptersInternal<WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<char,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<char,void>>(result, v12, "NativePromise", 0xDuLL, v17, 60, v16, 62, &v18);
  v14 = v18;
  *a1 = v18;
  if (!v14)
  {
    goto LABEL_31;
  }

  v15 = v16;
  v16 = 0;
  if (v15 && atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v15, v13);
  }

  result = v17;
  v17 = 0;
  if (result)
  {
    if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(result, v13);
    }
  }

  return result;
}

void sub_1C7AA5DA4(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10, WTF::StringImpl *a11)
{
  if (a10 && atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a10, a2);
  }

  if (a11)
  {
    if (atomic_fetch_add_explicit(a11, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a11, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t WTF::Vector<WTF::JSONLogValue,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(uint64_t a1, WTF::StringImpl *a2)
{
  v3 = *(a1 + 12);
  v4 = *a1;
  if (v3)
  {
    v5 = 16 * v3;
    v6 = (v4 + 8);
    do
    {
      v7 = *v6;
      *v6 = 0;
      if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v7, a2);
      }

      v6 += 2;
      v5 -= 16;
    }

    while (v5);
    v4 = *a1;
  }

  if (v4)
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    WTF::fastFree(v4, a2);
  }

  return a1;
}

atomic_uint **WTF::NativePromiseProducer<WebCore::DOMCacheEngine::CacheIdentifierOperationResult,WebCore::DOMCacheEngine::Error,0u>::~NativePromiseProducer(atomic_uint **a1)
{
  v1 = a1;
  v2 = *a1;
  if (!*a1)
  {
    return v1;
  }

  atomic_fetch_add(v2 + 2, 1u);
  WTF::NativePromise<WebCore::DOMCacheEngine::CacheIdentifierOperationResult,WebCore::DOMCacheEngine::Error,0u>::assertIsDead(v2);
  if (atomic_fetch_add(v2 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v2 + 2);
    (*(*v2 + 16))(v2);
    v1 = a1;
    v4 = *a1;
    *a1 = 0;
    if (!v4)
    {
      return v1;
    }
  }

  else
  {
    v1 = a1;
    v4 = *a1;
    *a1 = 0;
    if (!v4)
    {
      return v1;
    }
  }

  if (atomic_fetch_add(v4 + 2, 0xFFFFFFFF) != 1)
  {
    return v1;
  }

  atomic_store(1u, v4 + 2);
  (*(*v4 + 16))(v4);
  return a1;
}

void sub_1C7AA5F8C(_Unwind_Exception *exception_object)
{
  v4 = v2;
  if (atomic_fetch_add(v4, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v1 + 2);
    (*(*v1 + 16))(v1);
    v6 = *v3;
    *v3 = 0;
    if (!v6)
    {
      goto LABEL_4;
    }
  }

  else
  {
    v6 = *v3;
    *v3 = 0;
    if (!v6)
    {
      goto LABEL_4;
    }
  }

  if (atomic_fetch_add(v6 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v6 + 2);
    (*(*v6 + 16))(v6);
    _Unwind_Resume(exception_object);
  }

LABEL_4:
  _Unwind_Resume(exception_object);
}

unint64_t WTF::NativePromise<WebCore::DOMCacheEngine::CacheIdentifierOperationResult,WebCore::DOMCacheEngine::Error,0u>::~NativePromise(uint64_t a1)
{
  v60[2] = *MEMORY[0x1E69E9840];
  v2 = WTF::NativePromiseBase::logChannel(a1);
  if (*v2)
  {
    v3 = *(v2 + 16) >= 4u;
  }

  else
  {
    v3 = 0;
  }

  if (v3)
  {
    WTF::String::String(&v55, "destroying ");
    result = WTF::LogArgument<WTF::NativePromise<WebCore::DOMCacheEngine::CacheIdentifierOperationResult,WebCore::DOMCacheEngine::Error,0u>>::toString(&v54, a1);
    v5 = v54;
    if (v55)
    {
      v6 = *(v55 + 1);
      if (v54)
      {
        goto LABEL_8;
      }
    }

    else
    {
      v6 = 0;
      if (v54)
      {
LABEL_8:
        v7 = *(v54 + 4);
        if ((v7 | v6) < 0)
        {
          goto LABEL_90;
        }

LABEL_12:
        result = (v6 + v7);
        if (!__OFADD__(v6, v7))
        {
          if (v55)
          {
            v8 = *(v55 + 4);
            v9 = (v8 >> 2) & 1;
            if (!v54 || (v8 & 4) == 0)
            {
LABEL_20:
              result = WTF::tryMakeStringImplFromAdaptersInternal<WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>>(result, v9, v55, v54, &v56);
              if (!v56)
              {
LABEL_91:
                __break(0xC471u);
                return result;
              }

              v54 = 0;
              if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v5, v10);
              }

              v11 = v55;
              v55 = 0;
              if (v11 && atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v11, v10);
              }

              v12 = *(v2 + 32);
              v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
              if (v13)
              {
                WTF::String::utf8();
                v15 = v52 ? v52 + 16 : 0;
                *buf = 136446210;
                *v58 = v15;
                _os_log_impl(&dword_1C79C0000, v12, OS_LOG_TYPE_DEFAULT, "%{public}s", buf, 0xCu);
                v13 = v52;
                v52 = 0;
                if (v13)
                {
                  if (*v13 == 1)
                  {
                    v13 = WTF::fastFree(v13, v14);
                    if (*v2)
                    {
LABEL_35:
                      if (*(v2 + 16) >= 4u)
                      {
                        v16 = MEMORY[0x1E696EBC0];
                        while (1)
                        {
                          v17 = *v16;
                          if (v17)
                          {
                            break;
                          }

                          v18 = *v16;
                          atomic_compare_exchange_strong_explicit(v16, &v18, v17 | 1, memory_order_acquire, memory_order_acquire);
                          if (v18 == v17)
                          {
                            v19 = WTF::Logger::observers(v13);
                            v20 = *(v19 + 12);
                            if (v20)
                            {
                              v21 = *v19;
                              v22 = *v19 + 8 * v20;
                              do
                              {
                                v23 = *v21;
                                *buf = 0;
                                WTF::String::String(&v58[4], "destroying ");
                                v59 = 0;
                                WTF::LogArgument<WTF::NativePromise<WebCore::DOMCacheEngine::CacheIdentifierOperationResult,WebCore::DOMCacheEngine::Error,0u>>::toString(v60, a1);
                                v52 = 0;
                                v53 = 0;
                                v24 = WTF::fastMalloc(0x20);
                                LODWORD(v53) = 2;
                                v52 = v24;
                                v25 = HIDWORD(v53);
                                v26 = v24 + 16 * HIDWORD(v53);
                                *v26 = *buf;
                                v27 = *&v58[4];
                                if (*&v58[4])
                                {
                                  atomic_fetch_add_explicit(*&v58[4], 2u, memory_order_relaxed);
                                  v25 = HIDWORD(v53);
                                  v24 = v52;
                                }

                                *(v26 + 1) = v27;
                                v28 = v25 + 1;
                                HIDWORD(v53) = v28;
                                v29 = v24 + 16 * v28;
                                *v29 = v59;
                                v30 = v60[0];
                                if (v60[0])
                                {
                                  atomic_fetch_add_explicit(v60[0], 2u, memory_order_relaxed);
                                  v28 = HIDWORD(v53);
                                }

                                *(v29 + 1) = v30;
                                HIDWORD(v53) = v28 + 1;
                                (*(*v23 + 16))(v23, v2, 4, &v52);
                                v31 = v52;
                                if (HIDWORD(v53))
                                {
                                  v32 = 16 * HIDWORD(v53);
                                  v33 = (v52 + 8);
                                  do
                                  {
                                    v34 = *v33;
                                    *v33 = 0;
                                    if (v34 && atomic_fetch_add_explicit(v34, 0xFFFFFFFE, memory_order_relaxed) == 2)
                                    {
                                      WTF::StringImpl::destroy(v34, v14);
                                    }

                                    v33 += 2;
                                    v32 -= 16;
                                  }

                                  while (v32);
                                  v31 = v52;
                                }

                                if (v31)
                                {
                                  v52 = 0;
                                  LODWORD(v53) = 0;
                                  WTF::fastFree(v31, v14);
                                }

                                v35 = v60[0];
                                v60[0] = 0;
                                if (v35 && atomic_fetch_add_explicit(v35, 0xFFFFFFFE, memory_order_relaxed) == 2)
                                {
                                  WTF::StringImpl::destroy(v35, v14);
                                }

                                v36 = *&v58[4];
                                *&v58[4] = 0;
                                if (v36 && atomic_fetch_add_explicit(v36, 0xFFFFFFFE, memory_order_relaxed) == 2)
                                {
                                  WTF::StringImpl::destroy(v36, v14);
                                }

                                ++v21;
                              }

                              while (v21 != v22);
                            }

                            v37 = 1;
                            atomic_compare_exchange_strong_explicit(v16, &v37, 0, memory_order_release, memory_order_relaxed);
                            if (v37 != 1)
                            {
                              WTF::Lock::unlockSlow(MEMORY[0x1E696EBC0]);
                            }

                            break;
                          }
                        }
                      }
                    }

LABEL_63:
                    v38 = v56;
                    v56 = 0;
                    if (v38 && atomic_fetch_add_explicit(v38, 0xFFFFFFFE, memory_order_relaxed) == 2)
                    {
                      WTF::StringImpl::destroy(v38, v14);
                    }

                    goto LABEL_66;
                  }

                  --*v13;
                }
              }

              if (*v2)
              {
                goto LABEL_35;
              }

              goto LABEL_63;
            }
          }

          else if (!v54)
          {
            v9 = 1;
            goto LABEL_20;
          }

          v9 = (*(v54 + 16) >> 2) & 1;
          goto LABEL_20;
        }

LABEL_90:
        v56 = 0;
        goto LABEL_91;
      }
    }

    v7 = 0;
    if (v6 < 0)
    {
      goto LABEL_90;
    }

    goto LABEL_12;
  }

LABEL_66:
  WTF::NativePromise<WebCore::DOMCacheEngine::CacheIdentifierOperationResult,WebCore::DOMCacheEngine::Error,0u>::assertIsDead(a1);
  v40 = *(a1 + 132);
  if (v40)
  {
    v41 = *(a1 + 120);
    v42 = 40 * v40;
    do
    {
      v41 = WTF::NativePromiseProducer<WebCore::DOMCacheEngine::CacheIdentifierOperationResult,WebCore::DOMCacheEngine::Error,0u>::~NativePromiseProducer(v41) + 5;
      v42 -= 40;
    }

    while (v42);
  }

  v43 = *(a1 + 120);
  if (v43)
  {
    *(a1 + 120) = 0;
    *(a1 + 128) = 0;
    WTF::fastFree(v43, v39);
  }

  v44 = *(a1 + 108);
  v45 = *(a1 + 96);
  if (v44)
  {
    v46 = 8 * v44;
    do
    {
      v47 = *v45;
      *v45 = 0;
      if (v47 && atomic_fetch_add(v47 + 2, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v47 + 2);
        v48 = v45;
        (*(*v47 + 8))(v47);
        v45 = v48;
      }

      v45 = (v45 + 8);
      v46 -= 8;
    }

    while (v46);
    v45 = *(a1 + 96);
  }

  if ((a1 + 112) != v45 && v45 != 0)
  {
    *(a1 + 96) = 0;
    *(a1 + 104) = 0;
    WTF::fastFree(v45, v39);
  }

  v50 = *(a1 + 88);
  if (v50 >= 2 && v50 != 255)
  {
    v51 = *(a1 + 56);
    *(a1 + 56) = 0;
    if (v51)
    {
      (*(*v51 + 8))(v51);
    }
  }

  *(a1 + 88) = -1;
  return a1;
}

void sub_1C7AA6578(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF *a10, int a11, uint64_t a12, uint64_t a13, WTF::StringImpl *a14, uint64_t a15, WTF::StringImpl *a16, uint64_t a17, WTF::StringImpl *a18)
{
  v21 = 1;
  atomic_compare_exchange_strong_explicit(v19, &v21, 0, memory_order_release, memory_order_relaxed);
  if (v21 == 1)
  {
    v22 = a14;
    if (!a14)
    {
      goto LABEL_6;
    }
  }

  else
  {
    WTF::Lock::unlockSlow(MEMORY[0x1E696EBC0]);
    v22 = a14;
    if (!a14)
    {
      goto LABEL_6;
    }
  }

  if (atomic_fetch_add_explicit(v22, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v22, a2);
  }

LABEL_6:
  WTF::Vector<WTF::NativePromiseProducer<WebCore::DOMCacheEngine::CacheIdentifierOperationResult,WebCore::DOMCacheEngine::Error,0u>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v18 + 120, a2);
  WTF::Vector<WTF::Ref<WTF::NativePromise<WebCore::DOMCacheEngine::CacheIdentifierOperationResult,WebCore::DOMCacheEngine::Error,0u>::ThenCallbackBase,WTF::RawPtrTraits<WTF::NativePromise<WebCore::DOMCacheEngine::CacheIdentifierOperationResult,WebCore::DOMCacheEngine::Error,0u>::ThenCallbackBase>,WTF::DefaultRefDerefTraits<WTF::NativePromise<WebCore::DOMCacheEngine::CacheIdentifierOperationResult,WebCore::DOMCacheEngine::Error,0u>::ThenCallbackBase>>,1ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v18 + 96, v23);
  WTF::NativePromise<WebCore::DOMCacheEngine::CacheIdentifierOperationResult,WebCore::DOMCacheEngine::Error,0u>::Storage::~Storage((v18 + 56));
  _Unwind_Resume(a1);
}

uint64_t WTF::NativePromise<WebCore::DOMCacheEngine::CacheIdentifierOperationResult,WebCore::DOMCacheEngine::Error,0u>::dispatchAll(uint64_t a1, atomic_uchar *volatile *a2)
{
  v114[1] = *MEMORY[0x1E69E9840];
  v95 = &v97;
  v4 = *(a1 + 96);
  v5 = (a1 + 112);
  if (v4 == (a1 + 112))
  {
    v6 = *(a1 + 108);
    memcpy(&v97, v5, 8 * v6);
    v4 = &v97;
  }

  else
  {
    *(a1 + 96) = v5;
    v95 = v4;
    v6 = *(a1 + 108);
    *(a1 + 104) = 1;
  }

  v96 = v6;
  *(a1 + 104) = 1;
  v93 = *(a1 + 132);
  v94 = *(a1 + 120);
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  if (v6)
  {
    v7 = 8 * v6;
    do
    {
      v8 = *v4;
      if (!*(*v4 + 16) || (v9 = atomic_load((a1 + 137)), v9 == 1) && (*(**(v8 + 16) + 24))(*(v8 + 16)))
      {
        if (*(v8 + 56) == 1)
        {
          *&buf = v8;
          WTF::NativePromiseBase::log<char [32],WTF::NativePromise<WebCore::DOMCacheEngine::CacheIdentifierOperationResult,WebCore::DOMCacheEngine::Error,0u>,char [21],void const*,char [11],WTF::Logger::LogSiteIdentifier,char [2]>(a1, &buf, (v8 + 24));
        }

        else
        {
          v13 = *a2;
          v14 = 1;
          atomic_compare_exchange_strong_explicit(*a2, &v14, 0, memory_order_release, memory_order_relaxed);
          if (v14 != 1)
          {
            WTF::Lock::unlockSlow(v13);
          }

          if (WTF::NativePromise<WebCore::DOMCacheEngine::CacheIdentifierOperationResult,WebCore::DOMCacheEngine::Error,0u>::hasRunnable(a1))
          {
            WTF::NativePromise<WebCore::DOMCacheEngine::CacheIdentifierOperationResult,WebCore::DOMCacheEngine::Error,0u>::takeResultRunnable(&v99, a1);
            v15 = v99;
            (*(*v99 + 16))(&buf, v99);
            (*(*v8 + 24))(v8, a1, &buf);
            (*(*v15 + 8))(v15);
          }

          else
          {
            WTF::NativePromise<WebCore::DOMCacheEngine::CacheIdentifierOperationResult,WebCore::DOMCacheEngine::Error,0u>::takeResult(&buf, a1);
            (*(*v8 + 24))(v8, a1, &buf);
          }

          v16 = 0;
          atomic_compare_exchange_strong_explicit(*a2, &v16, 1u, memory_order_acquire, memory_order_acquire);
          if (v16)
          {
            MEMORY[0x1CCA63990]();
          }
        }
      }

      else
      {
        v10 = *(v8 + 16);
        atomic_fetch_add((v8 + 8), 1u);
        *&buf = v8;
        *(&buf + 1) = a1;
        atomic_fetch_add((a1 + 8), 1u);
        v11 = WTF::fastMalloc(0x18);
        *v11 = &unk_1F472BF98;
        *(v11 + 8) = buf;
        *(v11 + 16) = a1;
        buf = 0uLL;
        v99 = v11;
        (*(*v10 + 16))(v10, &v99);
        v12 = v99;
        v99 = 0;
        if (v12)
        {
          (*(*v12 + 8))(v12);
        }
      }

      v4 = (v4 + 8);
      v7 -= 8;
    }

    while (v7);
  }

  v17 = v94;
  if (!v93)
  {
    goto LABEL_149;
  }

  v18 = MEMORY[0x1E696EBC0];
  v19 = v94;
  v20 = (v94 + 40 * v93);
  do
  {
    while (1)
    {
      v21 = *v19;
      *v19 = 0;
      v99 = v21;
      v22 = *(v19 + 24);
      v100 = *(v19 + 8);
      v101 = v22;
      if (v21)
      {
        atomic_fetch_add((v21 + 8), 1u);
      }

      v23 = 0;
      v98[0] = 0;
      v98[1] = 0;
      v98[2] = "<chained promise>";
      v98[3] = 0;
      v24 = (v21 + 48);
      v102 = (v21 + 48);
      v103 = 1;
      atomic_compare_exchange_strong_explicit((v21 + 48), &v23, 1u, memory_order_acquire, memory_order_acquire);
      if (v23)
      {
        v24 = MEMORY[0x1CCA63990]();
      }

      v25 = WTF::NativePromiseBase::logChannel(v24);
      v26 = v25;
      if (*v25 && v25[16] >= 4u)
      {
        WTF::Logger::LogSiteIdentifier::toString(&v108, v98);
        WTF::String::String(&v107, " settling chained promise ");
        result = WTF::LogArgument<WTF::NativePromise<WebCore::DOMCacheEngine::CacheIdentifierOperationResult,WebCore::DOMCacheEngine::Error,0u>>::toString(&v106, v21);
        if (v108)
        {
          v28 = *(v108 + 4);
          v29 = v107;
          if (v107)
          {
            goto LABEL_31;
          }
        }

        else
        {
          v28 = 0;
          v29 = v107;
          if (v107)
          {
LABEL_31:
            v30 = *(v29 + 4);
            v31 = v106;
            if (v106)
            {
              goto LABEL_32;
            }

            goto LABEL_36;
          }
        }

        v30 = 0;
        v31 = v106;
        if (v106)
        {
LABEL_32:
          v32 = *(v31 + 4);
          if ((v32 | v30) < 0)
          {
            goto LABEL_164;
          }

          goto LABEL_37;
        }

LABEL_36:
        v32 = 0;
        if (v30 < 0)
        {
          goto LABEL_164;
        }

LABEL_37:
        v33 = __OFADD__(v30, v32);
        v34 = v30 + v32;
        v35 = v33;
        if (v28 < 0 || (v35 & 1) != 0 || (result = (v28 + v34), __OFADD__(v28, v34)))
        {
LABEL_164:
          v109 = 0;
LABEL_165:
          __break(0xC471u);
          return result;
        }

        if (v108 && (*(v108 + 16) & 4) == 0)
        {
          v36 = 0;
          goto LABEL_53;
        }

        if (v29)
        {
          v37 = *(v29 + 16);
          v36 = (v37 >> 2) & 1;
          if (!v31 || (v37 & 4) == 0)
          {
LABEL_53:
            result = WTF::tryMakeStringImplFromAdaptersInternal<WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>>(result, v36, v108, v29, v31, &v109);
            if (!v109)
            {
              goto LABEL_165;
            }

            v106 = 0;
            if (v31 && atomic_fetch_add_explicit(v31, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v31, v38);
            }

            v39 = v107;
            v107 = 0;
            if (v39 && atomic_fetch_add_explicit(v39, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v39, v38);
            }

            v40 = v108;
            v108 = 0;
            if (v40 && atomic_fetch_add_explicit(v40, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v40, v38);
            }

            v41 = *(v26 + 4);
            v42 = os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT);
            if (v42)
            {
              WTF::String::utf8();
              v44 = v104 ? v104 + 16 : 0;
              LODWORD(buf) = 136446210;
              *(&buf + 4) = v44;
              _os_log_impl(&dword_1C79C0000, v41, OS_LOG_TYPE_DEFAULT, "%{public}s", &buf, 0xCu);
              v42 = v104;
              v104 = 0;
              if (v42)
              {
                if (*v42 == 1)
                {
                  v42 = WTF::fastFree(v42, v43);
                  if (*v26)
                  {
LABEL_71:
                    if (v26[16] >= 4u)
                    {
                      while (1)
                      {
                        v45 = *v18;
                        if (v45)
                        {
                          break;
                        }

                        v46 = *v18;
                        atomic_compare_exchange_strong_explicit(v18, &v46, v45 | 1, memory_order_acquire, memory_order_acquire);
                        if (v46 == v45)
                        {
                          v47 = WTF::Logger::observers(v42);
                          v48 = *(v47 + 12);
                          if (v48)
                          {
                            v49 = *v47;
                            v50 = *v47 + 8 * v48;
                            do
                            {
                              v51 = *v49;
                              LODWORD(buf) = 0;
                              WTF::Logger::LogSiteIdentifier::toString(&buf + 1, v98);
                              v111 = 0;
                              WTF::String::String(&v112, " settling chained promise ");
                              v113 = 0;
                              WTF::LogArgument<WTF::NativePromise<WebCore::DOMCacheEngine::CacheIdentifierOperationResult,WebCore::DOMCacheEngine::Error,0u>>::toString(v114, v21);
                              v104 = 0;
                              v105 = 0;
                              v52 = WTF::fastMalloc(0x30);
                              LODWORD(v105) = 3;
                              v104 = v52;
                              v53 = HIDWORD(v105);
                              v54 = v52 + 16 * HIDWORD(v105);
                              *v54 = buf;
                              v55 = *(&buf + 1);
                              if (*(&buf + 1))
                              {
                                atomic_fetch_add_explicit(*(&buf + 1), 2u, memory_order_relaxed);
                                v53 = HIDWORD(v105);
                                v52 = v104;
                              }

                              *(v54 + 1) = v55;
                              v56 = v53 + 1;
                              HIDWORD(v105) = v56;
                              v57 = v52 + 16 * v56;
                              *v57 = v111;
                              v58 = v112;
                              if (v112)
                              {
                                atomic_fetch_add_explicit(v112, 2u, memory_order_relaxed);
                                v56 = HIDWORD(v105);
                                v52 = v104;
                              }

                              *(v57 + 1) = v58;
                              v59 = v56 + 1;
                              HIDWORD(v105) = v59;
                              v60 = v52 + 16 * v59;
                              *v60 = v113;
                              v61 = v114[0];
                              if (v114[0])
                              {
                                atomic_fetch_add_explicit(v114[0], 2u, memory_order_relaxed);
                                v59 = HIDWORD(v105);
                              }

                              *(v60 + 1) = v61;
                              HIDWORD(v105) = v59 + 1;
                              (*(*v51 + 16))(v51, v26, 4, &v104);
                              v62 = v104;
                              if (HIDWORD(v105))
                              {
                                v63 = 16 * HIDWORD(v105);
                                v64 = (v104 + 8);
                                do
                                {
                                  v65 = *v64;
                                  *v64 = 0;
                                  if (v65 && atomic_fetch_add_explicit(v65, 0xFFFFFFFE, memory_order_relaxed) == 2)
                                  {
                                    WTF::StringImpl::destroy(v65, v43);
                                  }

                                  v64 += 2;
                                  v63 -= 16;
                                }

                                while (v63);
                                v62 = v104;
                              }

                              if (v62)
                              {
                                v104 = 0;
                                LODWORD(v105) = 0;
                                WTF::fastFree(v62, v43);
                              }

                              v66 = v114[0];
                              v114[0] = 0;
                              if (v66 && atomic_fetch_add_explicit(v66, 0xFFFFFFFE, memory_order_relaxed) == 2)
                              {
                                WTF::StringImpl::destroy(v66, v43);
                              }

                              v67 = v112;
                              v112 = 0;
                              if (v67 && atomic_fetch_add_explicit(v67, 0xFFFFFFFE, memory_order_relaxed) == 2)
                              {
                                WTF::StringImpl::destroy(v67, v43);
                              }

                              v68 = *(&buf + 1);
                              *(&buf + 1) = 0;
                              if (v68 && atomic_fetch_add_explicit(v68, 0xFFFFFFFE, memory_order_relaxed) == 2)
                              {
                                WTF::StringImpl::destroy(v68, v43);
                              }

                              ++v49;
                            }

                            while (v49 != v50);
                          }

                          v69 = 1;
                          v18 = MEMORY[0x1E696EBC0];
                          atomic_compare_exchange_strong_explicit(MEMORY[0x1E696EBC0], &v69, 0, memory_order_release, memory_order_relaxed);
                          v20 = (v94 + 40 * v93);
                          if (v69 != 1)
                          {
                            WTF::Lock::unlockSlow(v18);
                          }

                          break;
                        }
                      }
                    }
                  }

LABEL_103:
                  v70 = v109;
                  v109 = 0;
                  if (v70 && atomic_fetch_add_explicit(v70, 0xFFFFFFFE, memory_order_relaxed) == 2)
                  {
                    WTF::StringImpl::destroy(v70, v43);
                  }

                  goto LABEL_106;
                }

                --*v42;
              }
            }

            if (*v26)
            {
              goto LABEL_71;
            }

            goto LABEL_103;
          }
        }

        else if (!v31)
        {
          v36 = 1;
          goto LABEL_53;
        }

        v36 = (*(v31 + 16) >> 2) & 1;
        goto LABEL_53;
      }

LABEL_106:
      v71 = *(v21 + 88);
      v72 = *(a1 + 88);
      if (v71 != 255 || v72 != 255)
      {
        switch(v72)
        {
          case 255:
            if (v71 >= 2 && v71 != 255)
            {
              v73 = *(v21 + 56);
              *(v21 + 56) = 0;
              if (v73)
              {
                (*(*v73 + 8))(v73);
              }
            }

            v74 = -1;
            goto LABEL_139;
          case 2:
            if (v71 < 2 || v71 == 255)
            {
              goto LABEL_138;
            }

            if (v71 != 2)
            {
              v81 = *(v21 + 56);
              *(v21 + 56) = 0;
              if (v81)
              {
                (*(*v81 + 8))(v81);
              }

LABEL_138:
              v82 = *(a1 + 56);
              *(a1 + 56) = 0;
              *(v21 + 56) = v82;
              v74 = 2;
LABEL_139:
              *(v21 + 88) = v74;
              break;
            }

            v76 = *(a1 + 56);
            *(a1 + 56) = 0;
            v77 = *(v21 + 56);
            *(v21 + 56) = v76;
            if (v77)
            {
              (*(*v77 + 8))(v77);
            }

            break;
          case 1:
            if (!*(v21 + 88) || v71 == 255)
            {
              goto LABEL_135;
            }

            if (v71 != 1)
            {
              v79 = *(v21 + 56);
              *(v21 + 56) = 0;
              if (v79)
              {
                (*(*v79 + 8))(v79);
              }

LABEL_135:
              *(v21 + 88) = -1;
              v80 = *(a1 + 56);
              *(v21 + 72) = *(a1 + 72);
              *(v21 + 56) = v80;
              v74 = 1;
              goto LABEL_139;
            }

            v75 = *(a1 + 56);
            *(v21 + 72) = *(a1 + 72);
            *(v21 + 56) = v75;
            break;
          default:
            if (*(v21 + 88))
            {
              if (v71 != 1 && v71 != 255)
              {
                v78 = *(v21 + 56);
                *(v21 + 56) = 0;
                if (v78)
                {
                  (*(*v78 + 8))(v78);
                }
              }

              *(v21 + 88) = 0;
            }

            break;
        }
      }

      WTF::NativePromise<WebCore::DOMCacheEngine::CacheIdentifierOperationResult,WebCore::DOMCacheEngine::Error,0u>::dispatchAll(v21, &v102);
      v83 = v103;
      if (v103 == 1)
      {
        v84 = v102;
        atomic_compare_exchange_strong_explicit(v102, &v83, 0, memory_order_release, memory_order_relaxed);
        if (v83 != 1)
        {
          break;
        }
      }

      v85 = (v21 + 8);
      add = atomic_fetch_add((v21 + 8), 0xFFFFFFFF);
      if (add == 1)
      {
        goto LABEL_146;
      }

LABEL_143:
      WTF::NativePromiseProducer<WebCore::DOMCacheEngine::CacheIdentifierOperationResult,WebCore::DOMCacheEngine::Error,0u>::~NativePromiseProducer(&v99);
      v19 = (v19 + 40);
      if (v19 == v20)
      {
        goto LABEL_147;
      }
    }

    WTF::Lock::unlockSlow(v84);
    v85 = (v21 + 8);
    add = atomic_fetch_add((v21 + 8), 0xFFFFFFFF);
    if (add != 1)
    {
      goto LABEL_143;
    }

LABEL_146:
    atomic_store(add, v85);
    (*(*v21 + 16))(v21);
    WTF::NativePromiseProducer<WebCore::DOMCacheEngine::CacheIdentifierOperationResult,WebCore::DOMCacheEngine::Error,0u>::~NativePromiseProducer(&v99);
    v19 = (v19 + 40);
  }

  while (v19 != v20);
LABEL_147:
  v17 = v94;
  v87 = 40 * v93;
  v88 = v94;
  do
  {
    v88 = WTF::NativePromiseProducer<WebCore::DOMCacheEngine::CacheIdentifierOperationResult,WebCore::DOMCacheEngine::Error,0u>::~NativePromiseProducer(v88) + 5;
    v87 -= 40;
  }

  while (v87);
LABEL_149:
  if (v17)
  {
    WTF::fastFree(v17, v5);
  }

  result = v95;
  if (v96)
  {
    v89 = 8 * v96;
    do
    {
      v90 = *result;
      *result = 0;
      if (v90 && atomic_fetch_add(v90 + 2, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v90 + 2);
        v91 = result;
        (*(*v90 + 8))(v90);
        result = v91;
      }

      result += 8;
      v89 -= 8;
    }

    while (v89);
    result = v95;
  }

  if (&v97 != result && result != 0)
  {
    return WTF::fastFree(result, v5);
  }

  return result;
}

void sub_1C7AA723C(_Unwind_Exception *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va1, a10);
  va_start(va, a10);
  v14 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v12 = 0;
  atomic_compare_exchange_strong_explicit(*v10, &v12, 1u, memory_order_acquire, memory_order_acquire);
  if (v12)
  {
    MEMORY[0x1CCA63990]();
  }

  WTF::Vector<WTF::NativePromiseProducer<WebCore::DOMCacheEngine::CacheIdentifierOperationResult,WebCore::DOMCacheEngine::Error,0u>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(va, a2);
  WTF::Vector<WTF::Ref<WTF::NativePromise<WebCore::DOMCacheEngine::CacheIdentifierOperationResult,WebCore::DOMCacheEngine::Error,0u>::ThenCallbackBase,WTF::RawPtrTraits<WTF::NativePromise<WebCore::DOMCacheEngine::CacheIdentifierOperationResult,WebCore::DOMCacheEngine::Error,0u>::ThenCallbackBase>,WTF::DefaultRefDerefTraits<WTF::NativePromise<WebCore::DOMCacheEngine::CacheIdentifierOperationResult,WebCore::DOMCacheEngine::Error,0u>::ThenCallbackBase>>,1ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(va1, v13);
  _Unwind_Resume(a1);
}

void sub_1C7AA72B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, WTF::Lock *a31, char a32, WTF *a33, int a34)
{
  if (v34)
  {
    if (atomic_fetch_add(v34 + 2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v34 + 2);
      (*(*v34 + 16))(v34);
    }
  }

  WTF::NativePromiseProducer<WebCore::DOMCacheEngine::CacheIdentifierOperationResult,WebCore::DOMCacheEngine::Error,0u>::~NativePromiseProducer(&a26);
  WTF::Vector<WTF::NativePromiseProducer<WebCore::DOMCacheEngine::CacheIdentifierOperationResult,WebCore::DOMCacheEngine::Error,0u>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&a17, v36);
  WTF::Vector<WTF::Ref<WTF::NativePromise<WebCore::DOMCacheEngine::CacheIdentifierOperationResult,WebCore::DOMCacheEngine::Error,0u>::ThenCallbackBase,WTF::RawPtrTraits<WTF::NativePromise<WebCore::DOMCacheEngine::CacheIdentifierOperationResult,WebCore::DOMCacheEngine::Error,0u>::ThenCallbackBase>,WTF::DefaultRefDerefTraits<WTF::NativePromise<WebCore::DOMCacheEngine::CacheIdentifierOperationResult,WebCore::DOMCacheEngine::Error,0u>::ThenCallbackBase>>,1ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&a19, v37);
  _Unwind_Resume(a1);
}

WTF::StringImpl *WTF::NativePromiseBase::log<char [32],WTF::NativePromise<WebCore::DOMCacheEngine::CacheIdentifierOperationResult,WebCore::DOMCacheEngine::Error,0u>,char [21],void const*,char [11],WTF::Logger::LogSiteIdentifier,char [2]>(WTF::NativePromiseBase *a1, uint64_t a2, WTF::Logger::LogSiteIdentifier *a3)
{
  result = WTF::NativePromiseBase::logChannel(a1);
  if (*result)
  {
    v7 = *(result + 16) >= 4u;
  }

  else
  {
    v7 = 0;
  }

  if (v7)
  {

    return WTF::Logger::log<char [32],WTF::NativePromise<WebCore::DOMCacheEngine::CacheIdentifierOperationResult,WebCore::DOMCacheEngine::Error,0u>,char [21],void const*,char [11],WTF::Logger::LogSiteIdentifier,char [2]>(result, a1, a2, a3);
  }

  return result;
}

BOOL WTF::NativePromise<WebCore::DOMCacheEngine::CacheIdentifierOperationResult,WebCore::DOMCacheEngine::Error,0u>::hasRunnable(uint64_t a1)
{
  v1 = 0;
  v2 = (a1 + 48);
  v3 = 1;
  atomic_compare_exchange_strong_explicit((a1 + 48), &v1, 1u, memory_order_acquire, memory_order_acquire);
  if (v1)
  {
    MEMORY[0x1CCA63990](a1 + 48);
    v4 = *(a1 + 88);
    atomic_compare_exchange_strong_explicit(v2, &v3, 0, memory_order_release, memory_order_relaxed);
    if (v3 == 1)
    {
      return v4 == 2;
    }
  }

  else
  {
    v4 = *(a1 + 88);
    atomic_compare_exchange_strong_explicit(v2, &v3, 0, memory_order_release, memory_order_relaxed);
    if (v3 == 1)
    {
      return v4 == 2;
    }
  }

  WTF::Lock::unlockSlow(v2);
  return v4 == 2;
}

mpark *WTF::NativePromise<WebCore::DOMCacheEngine::CacheIdentifierOperationResult,WebCore::DOMCacheEngine::Error,0u>::takeResultRunnable(mpark *result, uint64_t a2)
{
  v2 = 0;
  v3 = (a2 + 48);
  atomic_compare_exchange_strong_explicit((a2 + 48), &v2, 1u, memory_order_acquire, memory_order_acquire);
  if (!v2)
  {
    if (*(a2 + 88) == 2)
    {
      goto LABEL_3;
    }

LABEL_6:
    mpark::throw_bad_variant_access(result);
  }

  v6 = result;
  v7 = a2;
  MEMORY[0x1CCA63990](a2 + 48);
  result = v6;
  a2 = v7;
  if (*(v7 + 88) != 2)
  {
    goto LABEL_6;
  }

LABEL_3:
  v4 = *(a2 + 56);
  *(a2 + 56) = 0;
  *result = v4;
  v5 = 1;
  atomic_compare_exchange_strong_explicit((a2 + 48), &v5, 0, memory_order_release, memory_order_relaxed);
  if (v5 != 1)
  {

    return WTF::Lock::unlockSlow(v3);
  }

  return result;
}

mpark *WTF::NativePromise<WebCore::DOMCacheEngine::CacheIdentifierOperationResult,WebCore::DOMCacheEngine::Error,0u>::takeResult(mpark *result, uint64_t a2)
{
  v2 = 0;
  v3 = (a2 + 48);
  atomic_compare_exchange_strong_explicit((a2 + 48), &v2, 1u, memory_order_acquire, memory_order_acquire);
  if (!v2)
  {
    if (*(a2 + 88) == 1)
    {
      goto LABEL_3;
    }

LABEL_6:
    mpark::throw_bad_variant_access(result);
  }

  v6 = result;
  v7 = a2;
  MEMORY[0x1CCA63990](a2 + 48);
  result = v6;
  a2 = v7;
  if (*(v7 + 88) != 1)
  {
    goto LABEL_6;
  }

LABEL_3:
  v4 = *(a2 + 72);
  *result = *(a2 + 56);
  *(result + 1) = v4;
  v5 = 1;
  atomic_compare_exchange_strong_explicit((a2 + 48), &v5, 0, memory_order_release, memory_order_relaxed);
  if (v5 != 1)
  {

    return WTF::Lock::unlockSlow(v3);
  }

  return result;
}

WTF::StringImpl *WTF::Logger::log<char [32],WTF::NativePromise<WebCore::DOMCacheEngine::CacheIdentifierOperationResult,WebCore::DOMCacheEngine::Error,0u>,char [21],void const*,char [11],WTF::Logger::LogSiteIdentifier,char [2]>(uint64_t a1, uint64_t a2, uint64_t a3, WTF::Logger::LogSiteIdentifier *a4)
{
  v94[1] = *MEMORY[0x1E69E9840];
  WTF::String::String(&v75, "ThenCallback disconnected from ");
  WTF::LogArgument<WTF::NativePromise<WebCore::DOMCacheEngine::CacheIdentifierOperationResult,WebCore::DOMCacheEngine::Error,0u>>::toString(&v74, a2);
  WTF::String::String(&v73, " aborting [callback:");
  WTF::LogArgument<void const*>::toString();
  WTF::String::String(&v71, " callSite:");
  WTF::Logger::LogSiteIdentifier::toString(&v70, a4);
  WTF::String::String(&v69, "]");
  v8 = v74;
  v67 = v74;
  v81 = v73;
  *&buf = v75;
  v79 = v71;
  v80 = v72;
  v77 = v69;
  v78 = v70;
  result = WTF::tryMakeStringFromAdapters<WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>>(&buf, &v67, &v81, &v80, &v79, &v78, &v77, &v76);
  if (!v76)
  {
    __break(0xC471u);
    return result;
  }

  v11 = v69;
  v69 = 0;
  if (v11 && atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v11, v10);
  }

  v12 = v70;
  v70 = 0;
  if (v12 && atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v12, v10);
  }

  v13 = v71;
  v71 = 0;
  if (v13 && atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v13, v10);
  }

  v14 = v72;
  v72 = 0;
  if (v14 && atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v14, v10);
  }

  v15 = v73;
  v73 = 0;
  if (v15 && atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v15, v10);
  }

  v74 = 0;
  if (v8 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v8, v10);
  }

  v16 = v75;
  v75 = 0;
  if (v16 && atomic_fetch_add_explicit(v16, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v16, v10);
  }

  v17 = *(a1 + 32);
  v18 = os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);
  if (!v18 || ((WTF::String::utf8(), v67) ? (v20 = v67 + 16) : (v20 = 0), LODWORD(buf) = 136446210, *(&buf + 4) = v20, _os_log_impl(&dword_1C79C0000, v17, OS_LOG_TYPE_DEFAULT, "%{public}s", &buf, 0xCu), v18 = v67, v67 = 0, !v18))
  {
LABEL_30:
    if (*a1)
    {
      goto LABEL_31;
    }

    goto LABEL_84;
  }

  if (*v18 != 1)
  {
    --*v18;
    goto LABEL_30;
  }

  v18 = WTF::fastFree(v18, v19);
  if (*a1)
  {
LABEL_31:
    if (*(a1 + 16) >= 4u)
    {
      v21 = MEMORY[0x1E696EBC0];
      while (1)
      {
        v22 = *v21;
        if (v22)
        {
          break;
        }

        v23 = *v21;
        atomic_compare_exchange_strong_explicit(v21, &v23, v22 | 1, memory_order_acquire, memory_order_acquire);
        if (v23 == v22)
        {
          v24 = WTF::Logger::observers(v18);
          v25 = *(v24 + 12);
          if (v25)
          {
            v26 = *v24;
            v66 = *v24 + 8 * v25;
            do
            {
              v27 = *v26;
              LODWORD(buf) = 0;
              WTF::String::String((&buf + 8), "ThenCallback disconnected from ");
              v83 = 0;
              WTF::LogArgument<WTF::NativePromise<WebCore::DOMCacheEngine::CacheIdentifierOperationResult,WebCore::DOMCacheEngine::Error,0u>>::toString(&v84, a2);
              v85 = 0;
              WTF::String::String(&v86, " aborting [callback:");
              v87 = 0;
              WTF::LogArgument<void const*>::toString();
              v89 = 0;
              WTF::String::String(&v90, " callSite:");
              v91 = 0;
              WTF::Logger::LogSiteIdentifier::toString(&v92, a4);
              v93 = 0;
              WTF::String::String(v94, "]");
              v67 = 0;
              v68 = 0;
              v28 = WTF::fastMalloc(0x70);
              LODWORD(v68) = 7;
              v67 = v28;
              v29 = HIDWORD(v68);
              v30 = v28 + 16 * HIDWORD(v68);
              *v30 = buf;
              v31 = *(&buf + 1);
              if (*(&buf + 1))
              {
                atomic_fetch_add_explicit(*(&buf + 1), 2u, memory_order_relaxed);
                v29 = HIDWORD(v68);
                v28 = v67;
              }

              *(v30 + 1) = v31;
              v32 = v29 + 1;
              HIDWORD(v68) = v32;
              v33 = v28 + 16 * v32;
              *v33 = v83;
              v34 = v84;
              if (v84)
              {
                atomic_fetch_add_explicit(v84, 2u, memory_order_relaxed);
                v32 = HIDWORD(v68);
                v28 = v67;
              }

              *(v33 + 1) = v34;
              v35 = v32 + 1;
              HIDWORD(v68) = v35;
              v36 = v28 + 16 * v35;
              *v36 = v85;
              v37 = v86;
              if (v86)
              {
                atomic_fetch_add_explicit(v86, 2u, memory_order_relaxed);
                v35 = HIDWORD(v68);
                v28 = v67;
              }

              *(v36 + 1) = v37;
              v38 = v35 + 1;
              HIDWORD(v68) = v38;
              v39 = v28 + 16 * v38;
              *v39 = v87;
              v40 = v88;
              if (v88)
              {
                atomic_fetch_add_explicit(v88, 2u, memory_order_relaxed);
                v38 = HIDWORD(v68);
                v28 = v67;
              }

              *(v39 + 1) = v40;
              v41 = v38 + 1;
              HIDWORD(v68) = v41;
              v42 = v28 + 16 * v41;
              *v42 = v89;
              v43 = v90;
              if (v90)
              {
                atomic_fetch_add_explicit(v90, 2u, memory_order_relaxed);
                v41 = HIDWORD(v68);
                v28 = v67;
              }

              *(v42 + 1) = v43;
              v44 = v41 + 1;
              HIDWORD(v68) = v44;
              v45 = v28 + 16 * v44;
              *v45 = v91;
              v46 = v92;
              if (v92)
              {
                atomic_fetch_add_explicit(v92, 2u, memory_order_relaxed);
                v44 = HIDWORD(v68);
                v28 = v67;
              }

              *(v45 + 1) = v46;
              v47 = v44 + 1;
              HIDWORD(v68) = v47;
              v48 = v28 + 16 * v47;
              *v48 = v93;
              v49 = v94[0];
              if (v94[0])
              {
                atomic_fetch_add_explicit(v94[0], 2u, memory_order_relaxed);
                v47 = HIDWORD(v68);
              }

              *(v48 + 1) = v49;
              HIDWORD(v68) = v47 + 1;
              (*(*v27 + 16))(v27, a1, 4, &v67);
              v50 = v67;
              if (HIDWORD(v68))
              {
                v51 = a1;
                v52 = a2;
                v53 = a3;
                v54 = a4;
                v55 = 16 * HIDWORD(v68);
                v56 = (v67 + 8);
                do
                {
                  v57 = *v56;
                  *v56 = 0;
                  if (v57 && atomic_fetch_add_explicit(v57, 0xFFFFFFFE, memory_order_relaxed) == 2)
                  {
                    WTF::StringImpl::destroy(v57, v19);
                  }

                  v56 += 2;
                  v55 -= 16;
                }

                while (v55);
                v50 = v67;
                a4 = v54;
                a3 = v53;
                a2 = v52;
                a1 = v51;
              }

              if (v50)
              {
                v67 = 0;
                LODWORD(v68) = 0;
                WTF::fastFree(v50, v19);
              }

              v58 = v94[0];
              v94[0] = 0;
              if (v58 && atomic_fetch_add_explicit(v58, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v58, v19);
              }

              v59 = v92;
              v92 = 0;
              if (v59 && atomic_fetch_add_explicit(v59, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v59, v19);
              }

              v60 = v90;
              v90 = 0;
              if (v60 && atomic_fetch_add_explicit(v60, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v60, v19);
              }

              v61 = v88;
              v88 = 0;
              if (v61 && atomic_fetch_add_explicit(v61, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v61, v19);
              }

              v62 = v86;
              v86 = 0;
              if (v62 && atomic_fetch_add_explicit(v62, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v62, v19);
              }

              v63 = v84;
              v84 = 0;
              if (v63 && atomic_fetch_add_explicit(v63, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v63, v19);
              }

              v64 = *(&buf + 1);
              *(&buf + 1) = 0;
              if (v64 && atomic_fetch_add_explicit(v64, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v64, v19);
              }

              ++v26;
            }

            while (v26 != v66);
          }

          v65 = 1;
          atomic_compare_exchange_strong_explicit(MEMORY[0x1E696EBC0], &v65, 0, memory_order_release, memory_order_relaxed);
          if (v65 != 1)
          {
            WTF::Lock::unlockSlow(MEMORY[0x1E696EBC0]);
          }

          break;
        }
      }
    }
  }

LABEL_84:
  result = v76;
  v76 = 0;
  if (result)
  {
    if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(result, v19);
    }
  }

  return result;
}

void sub_1C7AA7EA8(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, WTF *a16, int a17, WTF::StringImpl *a18, WTF::StringImpl *a19, WTF::StringImpl *a20, WTF::StringImpl *a21, WTF::StringImpl *a22, WTF::StringImpl *a23, _Unwind_Exception *exception_objecta, WTF::StringImpl *a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31, WTF::StringImpl *a32, uint64_t a33, WTF::StringImpl *a34, uint64_t a35, WTF::StringImpl *a36, uint64_t a37, WTF::StringImpl *a38, uint64_t a39, WTF::StringImpl *a40, uint64_t a41, WTF::StringImpl *a42, uint64_t a43, WTF::StringImpl *a44)
{
  v45 = 1;
  atomic_compare_exchange_strong_explicit(MEMORY[0x1E696EBC0], &v45, 0, memory_order_release, memory_order_relaxed);
  if (v45 == 1)
  {
    v46 = a25;
    if (!a25)
    {
      goto LABEL_6;
    }
  }

  else
  {
    WTF::Lock::unlockSlow(MEMORY[0x1E696EBC0]);
    v46 = a25;
    if (!a25)
    {
      goto LABEL_6;
    }
  }

  if (atomic_fetch_add_explicit(v46, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v46, a2);
    _Unwind_Resume(exception_object);
  }

LABEL_6:
  _Unwind_Resume(exception_object);
}

void *WTF::Detail::CallableWrapper<WTF::NativePromise<WebCore::DOMCacheEngine::CacheIdentifierOperationResult,WebCore::DOMCacheEngine::Error,0u>::ThenCallbackBase::dispatch(WTF::NativePromise<WebCore::DOMCacheEngine::CacheIdentifierOperationResult,WebCore::DOMCacheEngine::Error,0u>&,WTF::Locker<WTF::Lock,void> &)::{lambda(void)#1},void>::~CallableWrapper(void *result)
{
  *result = &unk_1F472BF98;
  v1 = result[2];
  result[2] = 0;
  if (v1 && atomic_fetch_add(v1 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v1 + 2);
    v3 = result;
    (*(*v1 + 16))(v1);
    result = v3;
    v2 = v3[1];
    v3[1] = 0;
    if (!v2)
    {
      return result;
    }
  }

  else
  {
    v2 = result[1];
    result[1] = 0;
    if (!v2)
    {
      return result;
    }
  }

  if (atomic_fetch_add(v2 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v2 + 2);
    v4 = result;
    (*(*v2 + 8))(v2);
    return v4;
  }

  return result;
}

uint64_t WTF::Detail::CallableWrapper<WTF::NativePromise<WebCore::DOMCacheEngine::CacheIdentifierOperationResult,WebCore::DOMCacheEngine::Error,0u>::ThenCallbackBase::dispatch(WTF::NativePromise<WebCore::DOMCacheEngine::CacheIdentifierOperationResult,WebCore::DOMCacheEngine::Error,0u>&,WTF::Locker<WTF::Lock,void> &)::{lambda(void)#1},void>::~CallableWrapper(WTF *a1, void *a2)
{
  *a1 = &unk_1F472BF98;
  v2 = *(a1 + 2);
  *(a1 + 2) = 0;
  if (v2 && atomic_fetch_add(v2 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v2 + 2);
    v5 = a1;
    (*(*v2 + 16))(v2);
    a1 = v5;
    v3 = *(v5 + 1);
    *(v5 + 1) = 0;
    if (!v3)
    {
LABEL_5:

      return WTF::fastFree(a1, a2);
    }
  }

  else
  {
    v3 = *(a1 + 1);
    *(a1 + 1) = 0;
    if (!v3)
    {
      goto LABEL_5;
    }
  }

  if (atomic_fetch_add(v3 + 2, 0xFFFFFFFF) != 1)
  {
    goto LABEL_5;
  }

  atomic_store(1u, v3 + 2);
  v6 = a1;
  (*(*v3 + 8))(v3);
  a1 = v6;

  return WTF::fastFree(a1, a2);
}

WTF::StringImpl *WTF::Detail::CallableWrapper<WTF::NativePromise<WebCore::DOMCacheEngine::CacheIdentifierOperationResult,WebCore::DOMCacheEngine::Error,0u>::ThenCallbackBase::dispatch(WTF::NativePromise<WebCore::DOMCacheEngine::CacheIdentifierOperationResult,WebCore::DOMCacheEngine::Error,0u>&,WTF::Locker<WTF::Lock,void> &)::{lambda(void)#1},void>::call(WTF::NativePromiseBase *a1)
{
  v2 = *(a1 + 1);
  v1 = *(a1 + 2);
  if (*(v2 + 56) == 1)
  {
    *&v21[0] = *(a1 + 1);
    result = WTF::NativePromiseBase::logChannel(a1);
    if (*result)
    {
      v4 = *(result + 16) >= 4u;
    }

    else
    {
      v4 = 0;
    }

    if (v4)
    {
      return WTF::Logger::log<char [32],WTF::NativePromise<WebCore::DOMCacheEngine::CacheIdentifierOperationResult,WebCore::DOMCacheEngine::Error,0u>,char [21],void const*,char [11],WTF::Logger::LogSiteIdentifier,char [2]>(result, v1, v21, (v2 + 24));
    }

    return result;
  }

  v5 = 0;
  v6 = (v1 + 48);
  v7 = 1;
  atomic_compare_exchange_strong_explicit((v1 + 48), &v5, 1u, memory_order_acquire, memory_order_acquire);
  if (v5)
  {
    v15 = a1;
    MEMORY[0x1CCA63990](v1 + 48);
    a1 = v15;
    v8 = *(v1 + 88);
    atomic_compare_exchange_strong_explicit(v6, &v7, 0, memory_order_release, memory_order_relaxed);
    if (v7 == 1)
    {
LABEL_10:
      v9 = *(a1 + 1);
      v10 = *(a1 + 2);
      v11 = (v10 + 48);
      if (v8 == 2)
      {
        goto LABEL_11;
      }

      goto LABEL_18;
    }
  }

  else
  {
    v8 = *(v1 + 88);
    atomic_compare_exchange_strong_explicit(v6, &v7, 0, memory_order_release, memory_order_relaxed);
    if (v7 == 1)
    {
      goto LABEL_10;
    }
  }

  v16 = a1;
  a1 = WTF::Lock::unlockSlow(v6);
  v17 = v16 + 8;
  v9 = *(v16 + 1);
  v10 = *(v17 + 1);
  v11 = (v10 + 48);
  if (v8 == 2)
  {
LABEL_11:
    v12 = 0;
    atomic_compare_exchange_strong_explicit(v11, &v12, 1u, memory_order_acquire, memory_order_acquire);
    if (v12)
    {
      a1 = MEMORY[0x1CCA63990](v11);
      if (*(v10 + 88) == 2)
      {
        goto LABEL_13;
      }
    }

    else if (*(v10 + 88) == 2)
    {
LABEL_13:
      v13 = *(v10 + 56);
      *(v10 + 56) = 0;
      v14 = 1;
      atomic_compare_exchange_strong_explicit((v10 + 48), &v14, 0, memory_order_release, memory_order_relaxed);
      if (v14 != 1)
      {
        WTF::Lock::unlockSlow(v11);
      }

      (*(*v13 + 16))(v21, v13);
      (*(*v9 + 24))(v9, v10, v21);
      return (*(*v13 + 8))(v13);
    }

LABEL_26:
    mpark::throw_bad_variant_access(a1);
  }

LABEL_18:
  v18 = 0;
  atomic_compare_exchange_strong_explicit(v11, &v18, 1u, memory_order_acquire, memory_order_acquire);
  if (v18)
  {
    a1 = MEMORY[0x1CCA63990](v11);
    if (*(v10 + 88) != 1)
    {
      goto LABEL_26;
    }
  }

  else if (*(v10 + 88) != 1)
  {
    goto LABEL_26;
  }

  v19 = *(v10 + 72);
  v21[0] = *(v10 + 56);
  v21[1] = v19;
  v20 = 1;
  atomic_compare_exchange_strong_explicit((v10 + 48), &v20, 0, memory_order_release, memory_order_relaxed);
  if (v20 != 1)
  {
    WTF::Lock::unlockSlow(v11);
  }

  return (*(*v9 + 24))(v9, v10, v21);
}

unsigned int **WTF::NativePromise<WebCore::DOMCacheEngine::CacheIdentifierOperationResult,WebCore::DOMCacheEngine::Error,0u>::ThenCallbackBase::dispatch(WTF::NativePromise<WebCore::DOMCacheEngine::CacheIdentifierOperationResult,WebCore::DOMCacheEngine::Error,0u>&,WTF::Locker<WTF::Lock,void> &)::{lambda(void)#1}::~Locker(unsigned int **result)
{
  v1 = result[1];
  result[1] = 0;
  if (v1 && atomic_fetch_add(v1 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v1 + 2);
    v3 = result;
    (*(*v1 + 16))(v1);
    result = v3;
    v2 = *v3;
    *v3 = 0;
    if (!v2)
    {
      return result;
    }
  }

  else
  {
    v2 = *result;
    *result = 0;
    if (!v2)
    {
      return result;
    }
  }

  if (atomic_fetch_add(v2 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v2 + 2);
    v4 = result;
    (*(*v2 + 8))(v2);
    return v4;
  }

  return result;
}

uint64_t WTF::Vector<WTF::NativePromiseProducer<BOOL,WebCore::DOMCacheEngine::Error,0u>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(uint64_t a1, void *a2)
{
  v3 = *(a1 + 12);
  if (v3)
  {
    v4 = *a1;
    v5 = 40 * v3;
    do
    {
      v4 = WTF::NativePromiseProducer<BOOL,WebCore::DOMCacheEngine::Error,0u>::~NativePromiseProducer(v4) + 5;
      v5 -= 40;
    }

    while (v5);
  }

  v6 = *a1;
  if (*a1)
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    WTF::fastFree(v6, a2);
  }

  return a1;
}

uint64_t *WTF::NativePromise<BOOL,WebCore::DOMCacheEngine::Error,0u>::Storage::~Storage(uint64_t *result)
{
  v1 = *(result + 8);
  if (v1 >= 2 && v1 != 255)
  {
    v2 = *result;
    *result = 0;
    if (v2)
    {
      v3 = result;
      (*(*v2 + 8))(v2);
      result = v3;
    }
  }

  *(result + 8) = -1;
  return result;
}

uint64_t WTF::NativePromise<BOOL,WebCore::DOMCacheEngine::Error,0u>::assertIsDead(uint64_t result)
{
  v1 = 0;
  v2 = (result + 48);
  atomic_compare_exchange_strong_explicit((result + 48), &v1, 1u, memory_order_acquire, memory_order_acquire);
  if (v1)
  {
    v7 = result;
    MEMORY[0x1CCA63990](result + 48);
    result = v7;
    v3 = *(v7 + 108);
    if (!v3)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v3 = *(result + 108);
    if (!v3)
    {
      goto LABEL_9;
    }
  }

  v4 = *(result + 96);
  v5 = 40 * v3;
  do
  {
    v6 = *v4;
    if (*v4)
    {
      atomic_fetch_add(v6 + 2, 1u);
      result = WTF::NativePromise<BOOL,WebCore::DOMCacheEngine::Error,0u>::assertIsDead(v6);
      if (atomic_fetch_add(v6 + 2, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v6 + 2);
        result = (*(*v6 + 16))(v6);
      }
    }

    v4 += 5;
    v5 -= 40;
  }

  while (v5);
LABEL_9:
  v8 = 1;
  atomic_compare_exchange_strong_explicit(v2, &v8, 0, memory_order_release, memory_order_relaxed);
  if (v8 != 1)
  {

    return WTF::Lock::unlockSlow(v2);
  }

  return result;
}

void sub_1C7AA8950(_Unwind_Exception *exception_object)
{
  if (atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v2 + 2);
    (*(*v2 + 16))(v2);
    v6 = 1;
    atomic_compare_exchange_strong_explicit(v1, &v6, 0, memory_order_release, memory_order_relaxed);
    if (v6 == 1)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else
  {
    v5 = 1;
    atomic_compare_exchange_strong_explicit(v1, &v5, 0, memory_order_release, memory_order_relaxed);
    if (v5 == 1)
    {
      goto LABEL_3;
    }
  }

  WTF::Lock::unlockSlow(v1);
  _Unwind_Resume(exception_object);
}

uint64_t WTF::NativePromise<BOOL,WebCore::DOMCacheEngine::Error,0u>::~NativePromise(uint64_t a1)
{
  v1 = WTF::NativePromise<BOOL,WebCore::DOMCacheEngine::Error,0u>::~NativePromise(a1);

  return WTF::fastFree(v1, v2);
}

uint64_t WTF::LogArgument<WTF::NativePromise<BOOL,WebCore::DOMCacheEngine::Error,0u>>::toString(void *a1, uint64_t a2)
{
  WTF::LogArgument<void const*>::toString();
  result = WTF::Logger::LogSiteIdentifier::toString(&v16, (a2 + 16));
  if (v17)
  {
    v6 = *(v17 + 1);
    if (v16)
    {
LABEL_3:
      v7 = *(v16 + 1);
      if ((v7 & 0x80000000) == 0)
      {
        v4 = __OFADD__(v7, 1);
        v8 = v7 + 1;
        if (!v4)
        {
          goto LABEL_9;
        }
      }

LABEL_30:
      *a1 = 0;
LABEL_31:
      __break(0xC471u);
      return result;
    }
  }

  else
  {
    v6 = 0;
    if (v16)
    {
      goto LABEL_3;
    }
  }

  v8 = 1;
  if (v4)
  {
    goto LABEL_30;
  }

LABEL_9:
  v4 = __OFADD__(v8, 1);
  v9 = v8 + 1;
  v10 = v4;
  if (v6 < 0)
  {
    goto LABEL_30;
  }

  if (v10)
  {
    goto LABEL_30;
  }

  v4 = __OFADD__(v6, v9);
  v11 = v6 + v9;
  if (v4)
  {
    goto LABEL_30;
  }

  result = (v11 + 13);
  if (__OFADD__(v11, 13))
  {
    goto LABEL_30;
  }

  v12 = (!v17 || (*(v17 + 16) & 4) != 0) && (!v16 || (*(v16 + 16) & 4) != 0);
  result = WTF::tryMakeStringImplFromAdaptersInternal<WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<char,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<char,void>>(result, v12, "NativePromise", 0xDuLL, v17, 60, v16, 62, &v18);
  v14 = v18;
  *a1 = v18;
  if (!v14)
  {
    goto LABEL_31;
  }

  v15 = v16;
  v16 = 0;
  if (v15 && atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v15, v13);
  }

  result = v17;
  v17 = 0;
  if (result)
  {
    if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(result, v13);
    }
  }

  return result;
}

void sub_1C7AA8B30(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10, WTF::StringImpl *a11)
{
  if (a10 && atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a10, a2);
  }

  if (a11)
  {
    if (atomic_fetch_add_explicit(a11, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a11, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

atomic_uint **WTF::NativePromiseProducer<BOOL,WebCore::DOMCacheEngine::Error,0u>::~NativePromiseProducer(atomic_uint **a1)
{
  v1 = a1;
  v2 = *a1;
  if (!*a1)
  {
    return v1;
  }

  atomic_fetch_add(v2 + 2, 1u);
  WTF::NativePromise<BOOL,WebCore::DOMCacheEngine::Error,0u>::assertIsDead(v2);
  if (atomic_fetch_add(v2 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v2 + 2);
    (*(*v2 + 16))(v2);
    v1 = a1;
    v4 = *a1;
    *a1 = 0;
    if (!v4)
    {
      return v1;
    }
  }

  else
  {
    v1 = a1;
    v4 = *a1;
    *a1 = 0;
    if (!v4)
    {
      return v1;
    }
  }

  if (atomic_fetch_add(v4 + 2, 0xFFFFFFFF) != 1)
  {
    return v1;
  }

  atomic_store(1u, v4 + 2);
  (*(*v4 + 16))(v4);
  return a1;
}

void sub_1C7AA8C90(_Unwind_Exception *exception_object)
{
  v4 = v2;
  if (atomic_fetch_add(v4, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v1 + 2);
    (*(*v1 + 16))(v1);
    v6 = *v3;
    *v3 = 0;
    if (!v6)
    {
      goto LABEL_4;
    }
  }

  else
  {
    v6 = *v3;
    *v3 = 0;
    if (!v6)
    {
      goto LABEL_4;
    }
  }

  if (atomic_fetch_add(v6 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v6 + 2);
    (*(*v6 + 16))(v6);
    _Unwind_Resume(exception_object);
  }

LABEL_4:
  _Unwind_Resume(exception_object);
}

unint64_t WTF::NativePromise<BOOL,WebCore::DOMCacheEngine::Error,0u>::~NativePromise(uint64_t a1)
{
  v60[2] = *MEMORY[0x1E69E9840];
  v2 = WTF::NativePromiseBase::logChannel(a1);
  if (*v2)
  {
    v3 = *(v2 + 16) >= 4u;
  }

  else
  {
    v3 = 0;
  }

  if (v3)
  {
    WTF::String::String(&v55, "destroying ");
    result = WTF::LogArgument<WTF::NativePromise<BOOL,WebCore::DOMCacheEngine::Error,0u>>::toString(&v54, a1);
    v5 = v54;
    if (v55)
    {
      v6 = *(v55 + 1);
      if (v54)
      {
        goto LABEL_8;
      }
    }

    else
    {
      v6 = 0;
      if (v54)
      {
LABEL_8:
        v7 = *(v54 + 4);
        if ((v7 | v6) < 0)
        {
          goto LABEL_90;
        }

LABEL_12:
        result = (v6 + v7);
        if (!__OFADD__(v6, v7))
        {
          if (v55)
          {
            v8 = *(v55 + 4);
            v9 = (v8 >> 2) & 1;
            if (!v54 || (v8 & 4) == 0)
            {
LABEL_20:
              result = WTF::tryMakeStringImplFromAdaptersInternal<WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>>(result, v9, v55, v54, &v56);
              if (!v56)
              {
LABEL_91:
                __break(0xC471u);
                return result;
              }

              v54 = 0;
              if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v5, v10);
              }

              v11 = v55;
              v55 = 0;
              if (v11 && atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v11, v10);
              }

              v12 = *(v2 + 32);
              v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
              if (v13)
              {
                WTF::String::utf8();
                v15 = v52 ? v52 + 16 : 0;
                *buf = 136446210;
                *v58 = v15;
                _os_log_impl(&dword_1C79C0000, v12, OS_LOG_TYPE_DEFAULT, "%{public}s", buf, 0xCu);
                v13 = v52;
                v52 = 0;
                if (v13)
                {
                  if (*v13 == 1)
                  {
                    v13 = WTF::fastFree(v13, v14);
                    if (*v2)
                    {
LABEL_35:
                      if (*(v2 + 16) >= 4u)
                      {
                        v16 = MEMORY[0x1E696EBC0];
                        while (1)
                        {
                          v17 = *v16;
                          if (v17)
                          {
                            break;
                          }

                          v18 = *v16;
                          atomic_compare_exchange_strong_explicit(v16, &v18, v17 | 1, memory_order_acquire, memory_order_acquire);
                          if (v18 == v17)
                          {
                            v19 = WTF::Logger::observers(v13);
                            v20 = *(v19 + 12);
                            if (v20)
                            {
                              v21 = *v19;
                              v22 = *v19 + 8 * v20;
                              do
                              {
                                v23 = *v21;
                                *buf = 0;
                                WTF::String::String(&v58[4], "destroying ");
                                v59 = 0;
                                WTF::LogArgument<WTF::NativePromise<BOOL,WebCore::DOMCacheEngine::Error,0u>>::toString(v60, a1);
                                v52 = 0;
                                v53 = 0;
                                v24 = WTF::fastMalloc(0x20);
                                LODWORD(v53) = 2;
                                v52 = v24;
                                v25 = HIDWORD(v53);
                                v26 = v24 + 16 * HIDWORD(v53);
                                *v26 = *buf;
                                v27 = *&v58[4];
                                if (*&v58[4])
                                {
                                  atomic_fetch_add_explicit(*&v58[4], 2u, memory_order_relaxed);
                                  v25 = HIDWORD(v53);
                                  v24 = v52;
                                }

                                *(v26 + 1) = v27;
                                v28 = v25 + 1;
                                HIDWORD(v53) = v28;
                                v29 = v24 + 16 * v28;
                                *v29 = v59;
                                v30 = v60[0];
                                if (v60[0])
                                {
                                  atomic_fetch_add_explicit(v60[0], 2u, memory_order_relaxed);
                                  v28 = HIDWORD(v53);
                                }

                                *(v29 + 1) = v30;
                                HIDWORD(v53) = v28 + 1;
                                (*(*v23 + 16))(v23, v2, 4, &v52);
                                v31 = v52;
                                if (HIDWORD(v53))
                                {
                                  v32 = 16 * HIDWORD(v53);
                                  v33 = (v52 + 8);
                                  do
                                  {
                                    v34 = *v33;
                                    *v33 = 0;
                                    if (v34 && atomic_fetch_add_explicit(v34, 0xFFFFFFFE, memory_order_relaxed) == 2)
                                    {
                                      WTF::StringImpl::destroy(v34, v14);
                                    }

                                    v33 += 2;
                                    v32 -= 16;
                                  }

                                  while (v32);
                                  v31 = v52;
                                }

                                if (v31)
                                {
                                  v52 = 0;
                                  LODWORD(v53) = 0;
                                  WTF::fastFree(v31, v14);
                                }

                                v35 = v60[0];
                                v60[0] = 0;
                                if (v35 && atomic_fetch_add_explicit(v35, 0xFFFFFFFE, memory_order_relaxed) == 2)
                                {
                                  WTF::StringImpl::destroy(v35, v14);
                                }

                                v36 = *&v58[4];
                                *&v58[4] = 0;
                                if (v36 && atomic_fetch_add_explicit(v36, 0xFFFFFFFE, memory_order_relaxed) == 2)
                                {
                                  WTF::StringImpl::destroy(v36, v14);
                                }

                                ++v21;
                              }

                              while (v21 != v22);
                            }

                            v37 = 1;
                            atomic_compare_exchange_strong_explicit(v16, &v37, 0, memory_order_release, memory_order_relaxed);
                            if (v37 != 1)
                            {
                              WTF::Lock::unlockSlow(MEMORY[0x1E696EBC0]);
                            }

                            break;
                          }
                        }
                      }
                    }

LABEL_63:
                    v38 = v56;
                    v56 = 0;
                    if (v38 && atomic_fetch_add_explicit(v38, 0xFFFFFFFE, memory_order_relaxed) == 2)
                    {
                      WTF::StringImpl::destroy(v38, v14);
                    }

                    goto LABEL_66;
                  }

                  --*v13;
                }
              }

              if (*v2)
              {
                goto LABEL_35;
              }

              goto LABEL_63;
            }
          }

          else if (!v54)
          {
            v9 = 1;
            goto LABEL_20;
          }

          v9 = (*(v54 + 16) >> 2) & 1;
          goto LABEL_20;
        }

LABEL_90:
        v56 = 0;
        goto LABEL_91;
      }
    }

    v7 = 0;
    if (v6 < 0)
    {
      goto LABEL_90;
    }

    goto LABEL_12;
  }

LABEL_66:
  WTF::NativePromise<BOOL,WebCore::DOMCacheEngine::Error,0u>::assertIsDead(a1);
  v40 = *(a1 + 108);
  if (v40)
  {
    v41 = *(a1 + 96);
    v42 = 40 * v40;
    do
    {
      v41 = WTF::NativePromiseProducer<BOOL,WebCore::DOMCacheEngine::Error,0u>::~NativePromiseProducer(v41) + 5;
      v42 -= 40;
    }

    while (v42);
  }

  v43 = *(a1 + 96);
  if (v43)
  {
    *(a1 + 96) = 0;
    *(a1 + 104) = 0;
    WTF::fastFree(v43, v39);
  }

  v44 = *(a1 + 84);
  v45 = *(a1 + 72);
  if (v44)
  {
    v46 = 8 * v44;
    do
    {
      v47 = *v45;
      *v45 = 0;
      if (v47 && atomic_fetch_add(v47 + 2, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v47 + 2);
        v48 = v45;
        (*(*v47 + 8))(v47);
        v45 = v48;
      }

      v45 = (v45 + 8);
      v46 -= 8;
    }

    while (v46);
    v45 = *(a1 + 72);
  }

  if ((a1 + 88) != v45 && v45 != 0)
  {
    *(a1 + 72) = 0;
    *(a1 + 80) = 0;
    WTF::fastFree(v45, v39);
  }

  v50 = *(a1 + 64);
  if (v50 >= 2 && v50 != 255)
  {
    v51 = *(a1 + 56);
    *(a1 + 56) = 0;
    if (v51)
    {
      (*(*v51 + 8))(v51);
    }
  }

  *(a1 + 64) = -1;
  return a1;
}