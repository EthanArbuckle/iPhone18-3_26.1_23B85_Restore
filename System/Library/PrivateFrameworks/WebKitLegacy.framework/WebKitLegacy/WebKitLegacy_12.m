uint64_t WebChromeClientIOS::runOpenPanel(WebCore::LocalFrame &,WebCore::FileChooser &)::$_0::~$_0(uint64_t a1)
{
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
  }

  v3 = *(a1 + 8);
  *(a1 + 8) = 0;
  if (v3)
  {
  }

  return a1;
}

uint64_t WebChromeClientIOS::didPreventDefaultForEvent(id *this)
{
  v2 = [objc_loadWeak(this + 2) _UIKitDelegateForwarder];
  Weak = objc_loadWeak(this + 2);

  return [v2 webViewDidPreventDefaultForEvent:Weak];
}

uint64_t WebChromeClientIOS::didReceiveMobileDocType(uint64_t this, int a2)
{
  if (a2)
  {
    v2 = this;
    v3 = [objc_loadWeak((this + 16)) _UIKitDelegateForwarder];
    Weak = objc_loadWeak((v2 + 16));

    return [v3 webViewDidReceiveMobileDocType:Weak];
  }

  return this;
}

uint64_t WebChromeClientIOS::setNeedsScrollNotifications(id *this, WebCore::LocalFrame *a2, uint64_t a3)
{
  v6 = [objc_loadWeak(this + 2) _UIKitDelegateForwarder];
  Weak = objc_loadWeak(this + 2);
  v8 = [MEMORY[0x1E696AD98] numberWithBool:a3];
  v9 = *(*(a2 + 26) + 16);
  if ((*(*v9 + 1032))(v9))
  {
    v10 = 0;
  }

  else
  {
    v10 = v9[3];
  }

  return [v6 webView:Weak needsScrollNotifications:v8 forFrame:v10];
}

uint64_t WebChromeClientIOS::didFinishContentChangeObserving(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (*(a2 + 224))
  {
    v5 = result;
    v6 = [objc_loadWeak((result + 16)) _UIKitDelegateForwarder];
    Weak = objc_loadWeak((v5 + 16));
    v8 = *(*(a2 + 208) + 16);
    if ((*(*v8 + 1032))(v8))
    {
      v9 = 0;
    }

    else
    {
      v9 = v8[3];
    }

    return [v6 webView:Weak didObserveDeferredContentChange:a3 forFrame:v9];
  }

  return result;
}

uint64_t WebChromeClientIOS::dispatchViewportPropertiesDidChange(uint64_t a1, uint64_t a2)
{
  v17[8] = *MEMORY[0x1E69E9840];
  v4 = [objc_loadWeak((a1 + 16)) _UIKitDelegateForwarder];
  Weak = objc_loadWeak((a1 + 16));
  v16[0] = WebViewportInitialScaleKey;
  LODWORD(v6) = *(a2 + 12);
  v17[0] = [MEMORY[0x1E696AD98] numberWithFloat:v6];
  v16[1] = WebViewportMinimumScaleKey;
  LODWORD(v7) = *(a2 + 16);
  v17[1] = [MEMORY[0x1E696AD98] numberWithFloat:v7];
  v16[2] = WebViewportMaximumScaleKey;
  LODWORD(v8) = *(a2 + 20);
  v17[2] = [MEMORY[0x1E696AD98] numberWithFloat:v8];
  v16[3] = WebViewportUserScalableKey;
  LODWORD(v9) = *(a2 + 24);
  v17[3] = [MEMORY[0x1E696AD98] numberWithFloat:v9];
  v17[4] = &unk_1F474C438;
  v16[4] = WebViewportShrinkToFitKey;
  v16[5] = WebViewportFitKey;
  v11 = *(a2 + 36);
  v12 = &WebViewportFitContainValue;
  if (v11 != 1)
  {
    v12 = &WebViewportFitAutoValue;
  }

  if (v11 == 2)
  {
    v13 = &WebViewportFitCoverValue;
  }

  else
  {
    v13 = v12;
  }

  v17[5] = *v13;
  v16[6] = WebViewportWidthKey;
  LODWORD(v10) = *(a2 + 4);
  v17[6] = [MEMORY[0x1E696AD98] numberWithFloat:v10];
  v16[7] = WebViewportHeightKey;
  LODWORD(v14) = *(a2 + 8);
  v17[7] = [MEMORY[0x1E696AD98] numberWithFloat:v14];
  return [v4 webView:Weak didReceiveViewportArguments:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v17, v16, 8)}];
}

uint64_t WebChromeClientIOS::notifyRevealedSelectionByScrollingFrame(id *this, WebCore::LocalFrame *a2)
{
  v3 = [objc_loadWeak(this + 2) _UIKitDelegateForwarder];
  v4 = *(*(a2 + 26) + 16);
  if ((*(*v4 + 1032))(v4))
  {
    v5 = 0;
    v6 = v3;
  }

  else
  {
    v5 = v4[3];
    v6 = v3;
  }

  return [v6 revealedSelectionByScrollingWebFrame:v5];
}

uint64_t WebChromeClientIOS::isStopping(id *this)
{
  Weak = objc_loadWeak(this + 2);

  return [Weak _isStopping];
}

uint64_t WebChromeClientIOS::didLayout(uint64_t a1, int a2)
{
  v4 = [objc_loadWeak((a1 + 16)) _UIKitDelegate];
  Weak = objc_loadWeak((a1 + 16));

  return [v4 webThreadWebViewDidLayout:Weak byScrolling:a2 == 1];
}

uint64_t WebChromeClientIOS::didStartOverflowScroll(id *this)
{
  v2 = [objc_msgSend(objc_loadWeak(this + 2) "_UIKitDelegateForwarder")];
  Weak = objc_loadWeak(this + 2);

  return [v2 webViewDidStartOverflowScroll:Weak];
}

uint64_t WebChromeClientIOS::didEndOverflowScroll(id *this)
{
  v2 = [objc_msgSend(objc_loadWeak(this + 2) "_UIKitDelegateForwarder")];
  Weak = objc_loadWeak(this + 2);

  return [v2 webViewDidEndOverflowScroll:Weak];
}

uint64_t WebChromeClientIOS::restoreFormNotifications(uint64_t this)
{
  v1 = *(this + 24);
  if (v1 <= 0)
  {
    v2 = 0;
  }

  else
  {
    v2 = v1 - 1;
  }

  *(this + 24) = v2;
  return this;
}

uint64_t WebChromeClientIOS::elementDidFocus(uint64_t result, WebCore::Node *a2)
{
  if (*(result + 24) <= 0)
  {
    v4 = result;
    v5 = [objc_loadWeak((result + 16)) _UIKitDelegateForwarder];
    Weak = objc_loadWeak((v4 + 16));
    v7 = kit(a2);

    return [v5 webView:Weak elementDidFocusNode:v7];
  }

  return result;
}

uint64_t WebChromeClientIOS::elementDidBlur(uint64_t this, WebCore::Element *a2)
{
  if (*(this + 24) <= 0)
  {
    v4 = this;
    v5 = [objc_loadWeak((this + 16)) _UIKitDelegateForwarder];
    Weak = objc_loadWeak((v4 + 16));
    v7 = kit(a2);

    return [v5 webView:Weak elementDidBlurNode:v7];
  }

  return this;
}

uint64_t WebChromeClientIOS::createPopupMenu@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  result = WTF::fastMalloc(0x18);
  *(result + 8) = 1;
  *result = &unk_1F472A768;
  *(result + 16) = a1;
  *a2 = result;
  return result;
}

uint64_t WebChromeClientIOS::createSearchPopupMenu@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  v4 = WTF::fastMalloc(0x18);
  *(v4 + 8) = 1;
  *v4 = &unk_1F472A7A8;
  result = WTF::fastMalloc(0x18);
  *(result + 8) = 1;
  *result = &unk_1F472A768;
  *(result + 16) = a1;
  *(v4 + 16) = result;
  *a2 = v4;
  return result;
}

uint64_t WebChromeClientIOS::attachRootGraphicsLayer(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = [objc_loadWeak((a1 + 16)) _UIKitDelegate];
  Weak = objc_loadWeak((a1 + 16));
  if (a3)
  {
    v7 = (*(*a3 + 624))(a3);
  }

  else
  {
    v7 = 0;
  }

  return [v5 _webthread_webView:Weak attachRootLayer:v7];
}

uint64_t WebChromeClientIOS::didFlushCompositingLayers(id *this)
{
  v2 = [objc_msgSend(objc_loadWeak(this + 2) "_UIKitDelegateForwarder")];
  Weak = objc_loadWeak(this + 2);

  return [v2 webViewDidCommitCompositingLayerChanges:Weak];
}

uint64_t WebChromeClientIOS::fetchCustomFixedPositionLayoutRect(uint64_t a1, uint64_t *a2)
{
  result = [objc_loadWeak((a1 + 16)) _fetchCustomFixedPositionLayoutRect:v8];
  if (result)
  {
    v5 = result;
    v6 = WebCore::enclosingIntRect(v8, v4);
    result = v5;
    *a2 = v6;
    a2[1] = v7;
  }

  return result;
}

uint64_t WebChromeClientIOS::updateViewportConstrainedLayers(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = [objc_loadWeak((a1 + 16)) _fixedPositionContent];

  return [v5 setViewportConstrainedLayers:a2 stickyContainerMap:a3];
}

uint64_t WebChromeClientIOS::addOrUpdateScrollingLayer(id *this, WebCore::Node *a2, CALayer *a3, CALayer *a4, const WebCore::IntSize *a5, uint64_t a6, char a7)
{
  v12 = kit(a2);
  v13 = [objc_msgSend(objc_loadWeak(this + 2) "_UIKitDelegateForwarder")];
  Weak = objc_loadWeak(this + 2);
  v15 = MEMORY[0x1E696B098];
  WebCore::IntSize::operator CGSize();
  LOBYTE(v17) = a7;
  return [v13 webView:Weak didCreateOrUpdateScrollingLayer:a3 withContentsLayer:a4 scrollSize:objc_msgSend(v15 forNode:"valueWithSize:") allowHorizontalScrollbar:v12 allowVerticalScrollbar:{a6, v17}];
}

uint64_t WebChromeClientIOS::removeScrollingLayer(id *this, WebCore::Node *a2, CALayer *a3, CALayer *a4)
{
  v7 = kit(a2);
  v8 = [objc_msgSend(objc_loadWeak(this + 2) "_UIKitDelegateForwarder")];
  Weak = objc_loadWeak(this + 2);

  return [v8 webView:Weak willRemoveScrollingLayer:a3 withContentsLayer:a4 forNode:v7];
}

uint64_t WebChromeClientIOS::webAppOrientationsUpdated(id *this)
{
  v2 = [objc_loadWeak(this + 2) _UIDelegateForwarder];
  Weak = objc_loadWeak(this + 2);

  return [v2 webViewSupportedOrientationsUpdated:Weak];
}

id WebChromeClientIOS::focusedElementChanged(id this, WebCore::Element *a2)
{
  if (a2)
  {
    if ((*(a2 + 16) & 0x10) != 0 && *(*(a2 + 13) + 24) == *(*MEMORY[0x1E69E2C70] + 24))
    {
      v2 = this;
      this = WebCore::HTMLInputElement::isText(a2);
      if (this)
      {
        Weak = objc_loadWeak((v2 + 16));
        v5 = kit(a2);
        v6 = *(*(*(a2 + 6) + 8) + 552);
        if (v6 && (v7 = *(v6 + 8)) != 0 && (v8 = *(*(v7 + 208) + 16), ((*(*v8 + 1032))(v8) & 1) == 0))
        {
          v9 = v8[3];
        }

        else
        {
          v9 = 0;
        }

        return CallFormDelegate(Weak, sel_didFocusTextField_inFrame_, v5, v9);
      }
    }
  }

  return this;
}

uint64_t WebChromeClientIOS::showPlaybackTargetPicker(uint64_t a1, uint64_t a2)
{
  [objc_msgSend(objc_loadWeak((a1 + 16)) "_UIKitDelegateForwarder")];
  [objc_msgSend(objc_loadWeak((a1 + 16)) "mainFrame")];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v14 = [objc_loadWeak((a1 + 16)) _UIKitDelegateForwarder];

  return [v14 showPlaybackTargetPicker:a2 fromRect:{v7, v9, v11, v13}];
}

void WebChromeClientIOS::~WebChromeClientIOS(id *this)
{
  objc_destroyWeak(this + 2);

  WebCore::ChromeClient::~ChromeClient(this);
}

{
  objc_destroyWeak(this + 2);
  WebCore::ChromeClient::~ChromeClient(this);

  bmalloc::api::tzoneFree(v2, v3);
}

void *WTF::Detail::CallableWrapper<WebChromeClientIOS::runOpenPanel(WebCore::LocalFrame &,WebCore::FileChooser &)::$_0,void>::~CallableWrapper(void *a1)
{
  *a1 = &unk_1F472D4F0;
  v2 = a1[3];
  a1[3] = 0;
  if (v2)
  {
  }

  v3 = a1[2];
  a1[2] = 0;
  if (v3)
  {
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebChromeClientIOS::runOpenPanel(WebCore::LocalFrame &,WebCore::FileChooser &)::$_0,void>::~CallableWrapper(WTF *this, void *a2)
{
  *this = &unk_1F472D4F0;
  v3 = *(this + 3);
  *(this + 3) = 0;
  if (v3)
  {
  }

  v4 = *(this + 2);
  *(this + 2) = 0;
  if (v4)
  {
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WebChromeClientIOS::runOpenPanel(WebCore::LocalFrame &,WebCore::FileChooser &)::$_0,void>::call(void *a1)
{
  v2 = a1[1];
  v3 = [objc_loadWeak((v2 + 16)) _UIKitDelegateForwarder];
  Weak = objc_loadWeak((v2 + 16));
  v5 = a1[2];
  v6 = a1[3];

  return [v3 webView:Weak runOpenPanelForFileButtonWithResultListener:v5 configuration:v6];
}

void sub_1C7AC63F4(_Unwind_Exception *a1, void *a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, WTF *);
  v6 = va_arg(va1, void);
  std::unique_ptr<WTF::HashCountedSet<WTF::ASCIILiteral,WTF::DefaultHash<WTF::ASCIILiteral>,WTF::HashTraits<WTF::ASCIILiteral>>>::~unique_ptr[abi:sn200100](va, a2);
  MEMORY[0x1CCA63200](va1);
  _Unwind_Resume(a1);
}

uint64_t createNSCountedSet(uint64_t *a1, uint64_t *a2)
{
  v4 = objc_alloc(MEMORY[0x1E696AB50]);
  if (*a2)
  {
    result = [v4 initWithCapacity:*(*a2 - 12)];
    v6 = result;
    *a1 = result;
    v7 = *a2;
    if (*a2)
    {
      goto LABEL_3;
    }

LABEL_16:
    v9 = 0;
    LODWORD(v8) = 0;
LABEL_17:
    v11 = v9;
    v9 = v7 + 24 * v8;
    if (v7)
    {
LABEL_14:
      v13 = *(v7 - 4);
      goto LABEL_21;
    }

LABEL_18:
    v14 = 0;
    if (!v11)
    {
      return result;
    }

    goto LABEL_24;
  }

  result = [v4 initWithCapacity:0];
  v6 = result;
  *a1 = result;
  v7 = *a2;
  if (!*a2)
  {
    goto LABEL_16;
  }

LABEL_3:
  v8 = *(v7 - 4);
  v9 = v7 + 24 * v8;
  if (!*(v7 - 12))
  {
    goto LABEL_17;
  }

  if (v8)
  {
    v10 = 24 * v8;
    v11 = v7;
    while (!*(v11 + 8) || *v11 == -1)
    {
      v11 += 24;
      v10 -= 24;
      if (!v10)
      {
        v11 = v9;
        break;
      }
    }

    if (v7)
    {
      goto LABEL_14;
    }

    goto LABEL_18;
  }

  v13 = 0;
  v11 = v7;
LABEL_21:
  v14 = v7 + 24 * v13;
  if (v11 == v14)
  {
    return result;
  }

  do
  {
LABEL_24:
    result = [MEMORY[0x1E696AEC0] stringWithUTF8String:*v11];
    if (*(v11 + 16))
    {
      v15 = result;
      v16 = 0;
      do
      {
        result = [v6 addObject:v15];
        ++v16;
      }

      while (v16 < *(v11 + 16));
    }

    do
    {
      v11 += 24;
      if (v11 == v9)
      {
        break;
      }
    }

    while (!*(v11 + 8) || *v11 == -1);
  }

  while (v11 != v14);
  return result;
}

void sub_1C7AC65A0(_Unwind_Exception *a1)
{
  *v1 = 0;
  if (v2)
  {
    v3 = a1;

    a1 = v3;
  }

  _Unwind_Resume(a1);
}

WTF **std::unique_ptr<WTF::HashCountedSet<WTF::ASCIILiteral,WTF::DefaultHash<WTF::ASCIILiteral>,WTF::HashTraits<WTF::ASCIILiteral>>>::~unique_ptr[abi:sn200100](WTF **result, void *a2)
{
  v2 = *result;
  *result = 0;
  if (v2)
  {
    v3 = result;
    if (*v2)
    {
      WTF::fastFree((*v2 - 16), a2);
    }

    WTF::fastFree(v2, a2);
    return v3;
  }

  return result;
}

void sub_1C7AC66C0(_Unwind_Exception *a1, void *a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, WTF *);
  v6 = va_arg(va1, void);
  std::unique_ptr<WTF::HashCountedSet<WTF::ASCIILiteral,WTF::DefaultHash<WTF::ASCIILiteral>,WTF::HashTraits<WTF::ASCIILiteral>>>::~unique_ptr[abi:sn200100](va, a2);
  MEMORY[0x1CCA63200](va1);
  _Unwind_Resume(a1);
}

void sub_1C7AC6838(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, _DWORD *a10)
{
  if (!a10)
  {
LABEL_4:
    _Unwind_Resume(a1);
  }

  if (*a10)
  {
    --*a10;
    goto LABEL_4;
  }

  __break(0xC471u);
}

void sub_1C7AC6904(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, _DWORD *a10)
{
  if (!a10)
  {
LABEL_4:
    _Unwind_Resume(a1);
  }

  if (*a10)
  {
    --*a10;
    goto LABEL_4;
  }

  __break(0xC471u);
}

void sub_1C7AC69D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, _DWORD *a10)
{
  if (!a10)
  {
LABEL_4:
    _Unwind_Resume(a1);
  }

  if (*a10)
  {
    --*a10;
    goto LABEL_4;
  }

  __break(0xC471u);
}

void sub_1C7AC6EE8(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, uint64_t a10)
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

void sub_1C7AC7018(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, uint64_t a10)
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

void sub_1C7AC715C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  WebCore::GraphicsContextCG::~GraphicsContextCG(va);
  _Unwind_Resume(a1);
}

unint64_t WebCryptoClient::serializeAndWrapCryptoKey@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  WebCore::CryptoKey::create();
  result = v30;
  if (!v30)
  {
    *a2 = 0;
    *(a2 + 16) = 0;
    return result;
  }

  WebCore::SerializedScriptValue::serializeCryptoKey();
  v34 = 0;
  v35 = 0;
  [objc_loadWeak((a1 + 8)) UIDelegate];
  v5 = objc_opt_respondsToSelector();
  if (v5)
  {
    Weak = objc_loadWeak((a1 + 8));
    v7 = CallUIDelegate(Weak, sel_webCryptoMasterKeyForWebView_);
    v8 = v7;
    if (!v7)
    {
      v31 = 0;
      v32 = 0;
      goto LABEL_30;
    }

    v9 = [v7 bytes];
    result = [v8 length];
    v10 = result;
    v31 = 0;
    LODWORD(v32) = 0;
    HIDWORD(v32) = result;
    if (result)
    {
      if (HIDWORD(result))
      {
        __break(0xC471u);
        return result;
      }

      v11 = WTF::fastMalloc(result);
      LODWORD(v32) = v10;
      v31 = v11;
      if (v10 < 8)
      {
        v12 = v9;
        goto LABEL_29;
      }

      v12 = v9;
      if (v11 - v9 < 0x20)
      {
        goto LABEL_29;
      }

      if (v10 < 0x20)
      {
        v13 = 0;
        goto LABEL_24;
      }

      v13 = v10 & 0xFFFFFFE0;
      v16 = (v9 + 16);
      v17 = (v11 + 16);
      v18 = v13;
      do
      {
        v19 = *v16;
        *(v17 - 1) = *(v16 - 1);
        *v17 = v19;
        v16 += 2;
        v17 += 2;
        v18 -= 32;
      }

      while (v18);
      if (v10 != v13)
      {
        if ((v10 & 0x18) == 0)
        {
          v12 = (v9 + v13);
          v11 = (v11 + v13);
          goto LABEL_29;
        }

LABEL_24:
        v12 = (v9 + (v10 & 0xFFFFFFF8));
        v20 = (v9 + v13);
        v21 = (v11 + v13);
        v22 = v13 - (v10 & 0xFFFFFFF8);
        do
        {
          v23 = *v20++;
          *v21++ = v23;
          v22 += 8;
        }

        while (v22);
        v11 = (v11 + (v10 & 0xFFFFFFF8));
        if (v10 == (v10 & 0xFFFFFFF8))
        {
          goto LABEL_30;
        }

        do
        {
LABEL_29:
          v24 = *v12++;
          *v11 = v24;
          v11 = (v11 + 1);
        }

        while (v12 != (v9 + v10));
      }
    }

LABEL_30:
    if (WebCore::wrapSerializedCryptoKey())
    {
      *a2 = v34;
      v25 = v35;
      v34 = 0;
      v35 = 0;
      *(a2 + 8) = v25;
      v26 = 1;
    }

    else
    {
      v26 = 0;
      *a2 = 0;
    }

    *(a2 + 16) = v26;
LABEL_34:
    v27 = v31;
    if (v31)
    {
      v31 = 0;
      LODWORD(v32) = 0;
      WTF::fastFree(v27, v14);
    }

    goto LABEL_36;
  }

  WebCore::defaultWebCryptoMasterKey(&v31, v5);
  if (v33 & 1) != 0 && (WebCore::wrapSerializedCryptoKey())
  {
    *a2 = v34;
    v15 = v35;
    v34 = 0;
    v35 = 0;
    *(a2 + 8) = v15;
    *(a2 + 16) = 1;
    if (v33 == 1)
    {
      goto LABEL_34;
    }
  }

  else
  {
    *a2 = 0;
    *(a2 + 16) = 0;
    if (v33 == 1)
    {
      goto LABEL_34;
    }
  }

LABEL_36:
  v28 = v34;
  if (v34)
  {
    v34 = 0;
    LODWORD(v35) = 0;
    WTF::fastFree(v28, v14);
  }

  if (v29)
  {
    WTF::fastFree(v29, v14);
  }

  result = v30;
  if (atomic_fetch_add(v30 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v30 + 2);
    return (*(*v30 + 8))();
  }

  return result;
}

void sub_1C7AC745C(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF *a9, int a10, unsigned int *a11, WTF *a12, int a13, int a14, char a15, WTF *a16, int a17)
{
  if (a15 == 1 && a12)
  {
    WTF::fastFree(a12, a2);
  }

  if (a16)
  {
    WTF::fastFree(a16, a2);
    v18 = a9;
    if (!a9)
    {
LABEL_6:
      v19 = a11;
      if (!a11)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }
  }

  else
  {
    v18 = a9;
    if (!a9)
    {
      goto LABEL_6;
    }
  }

  WTF::fastFree(v18, a2);
  v19 = a11;
  if (!a11)
  {
    goto LABEL_11;
  }

LABEL_10:
  if (atomic_fetch_add(v19 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v19 + 2);
    (*(*v19 + 8))(v19);
    _Unwind_Resume(exception_object);
  }

LABEL_11:
  _Unwind_Resume(exception_object);
}

unint64_t WebCryptoClient::unwrapCryptoKey@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v28 = *MEMORY[0x1E69E9840];
  result = WebCore::readSerializedCryptoKey();
  if ((v27 & 1) == 0)
  {
    goto LABEL_14;
  }

  [objc_loadWeak((a1 + 8)) UIDelegate];
  v6 = objc_opt_respondsToSelector();
  if (v6)
  {
    Weak = objc_loadWeak((a1 + 8));
    result = CallUIDelegate(Weak, sel_webCryptoMasterKeyForWebView_);
    v8 = result;
    if (!result)
    {
      v22 = 0;
      v23 = 0;
      goto LABEL_27;
    }

    v9 = [result bytes];
    result = [v8 length];
    v10 = result;
    v22 = 0;
    LODWORD(v23) = 0;
    HIDWORD(v23) = result;
    if (!result)
    {
      goto LABEL_27;
    }

    if (HIDWORD(result))
    {
      __break(0xC471u);
      goto LABEL_36;
    }

    result = WTF::fastMalloc(result);
    LODWORD(v23) = v10;
    v22 = result;
    if (v10 < 8)
    {
      v11 = v9;
      goto LABEL_26;
    }

    v11 = v9;
    if (result - v9 < 0x20)
    {
      goto LABEL_26;
    }

    if (v10 >= 0x20)
    {
      v12 = v10 & 0xFFFFFFE0;
      v13 = (v9 + 16);
      v14 = (result + 16);
      v15 = v12;
      do
      {
        v16 = *v13;
        *(v14 - 1) = *(v13 - 1);
        *v14 = v16;
        v13 += 2;
        v14 += 2;
        v15 -= 32;
      }

      while (v15);
      if (v10 == v12)
      {
LABEL_27:
        if (v27)
        {
          WebCore::unwrapCryptoKey();
LABEL_29:
          result = v22;
          if (v22)
          {
            v22 = 0;
            LODWORD(v23) = 0;
            result = WTF::fastFree(result, v5);
          }

          goto LABEL_31;
        }

LABEL_36:
        __break(1u);
        return result;
      }

      if ((v10 & 0x18) == 0)
      {
        v11 = (v9 + v12);
        result += v12;
        goto LABEL_26;
      }
    }

    else
    {
      v12 = 0;
    }

    v11 = (v9 + (v10 & 0xFFFFFFF8));
    v17 = (v9 + v12);
    v18 = (result + v12);
    v19 = v12 - (v10 & 0xFFFFFFF8);
    do
    {
      v20 = *v17++;
      *v18++ = v20;
      v19 += 8;
    }

    while (v19);
    result += v10 & 0xFFFFFFF8;
    if (v10 == (v10 & 0xFFFFFFF8))
    {
      goto LABEL_27;
    }

    do
    {
LABEL_26:
      v21 = *v11++;
      *result++ = v21;
    }

    while (v11 != (v9 + v10));
    goto LABEL_27;
  }

  result = WebCore::defaultWebCryptoMasterKey(&v22, v6);
  if (v24 == 1)
  {
    if ((v27 & 1) == 0)
    {
      goto LABEL_36;
    }

    result = WebCore::unwrapCryptoKey();
    if (v24 == 1)
    {
      goto LABEL_29;
    }
  }

  else
  {
LABEL_14:
    *a2 = 0;
    a2[16] = 0;
  }

LABEL_31:
  if (v27 == 1)
  {
    result = v25;
    if (v25)
    {
      v25 = 0;
      v26 = 0;
      return WTF::fastFree(result, v5);
    }
  }

  return result;
}

void sub_1C7AC778C(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF *a9, int a10, int a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, WTF *a16, int a17, uint64_t a18, uint64_t a19, char a20)
{
  if (a12 == 1 && a9)
  {
    WTF::fastFree(a9, a2);
  }

  if (a20 == 1)
  {
    if (a16)
    {
      WTF::fastFree(a16, a2);
      _Unwind_Resume(exception_object);
    }
  }

  _Unwind_Resume(exception_object);
}

void WebCryptoClient::~WebCryptoClient(id *this)
{
  objc_destroyWeak(this + 1);
}

{
  objc_destroyWeak(this + 1);

  bmalloc::api::tzoneFree(this, v2);
}

void sub_1C7AC7A44(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10)
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

void sub_1C7AC7C00(_Unwind_Exception *a1, WTF::StringImpl *a2, uint64_t a3, ...)
{
  va_start(va, a3);
  WTF::Vector<WebCore::SecurityOriginData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(va, a2);
  _Unwind_Resume(a1);
}

void sub_1C7AC7C18(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);

  if (v2)
  {
  }

  WTF::Vector<WebCore::SecurityOriginData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(va, v5);
  _Unwind_Resume(a1);
}

void sub_1C7AC7D78(_Unwind_Exception *a1, WTF::StringImpl *a2, uint64_t a3, ...)
{
  va_start(va, a3);
  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(va, a2);
  _Unwind_Resume(a1);
}

void sub_1C7AC7D90(_Unwind_Exception *a1, WTF::StringImpl *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, void *a12)
{
  v14 = a12;
  a12 = 0;
  if (v14)
  {

    if (!v12)
    {
LABEL_3:
      WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&a10, a2);
      _Unwind_Resume(a1);
    }
  }

  else if (!v12)
  {
    goto LABEL_3;
  }

  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&a10, v15);
  _Unwind_Resume(a1);
}

void sub_1C7AC7FB4(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  if (atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v10, a2);
    WebCore::DatabaseDetails::~DatabaseDetails(&a10, v12);
    _Unwind_Resume(a1);
  }

  WebCore::DatabaseDetails::~DatabaseDetails(&a10, a2);
  _Unwind_Resume(a1);
}

void sub_1C7AC800C(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9)
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

void sub_1C7AC81D4(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10)
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

void WebCore::DatabaseDetails::~DatabaseDetails(WebCore::DatabaseDetails *this, WTF::StringImpl *a2)
{
  v3 = *(this + 1);
  *(this + 1) = 0;
  if (v3 && atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v3, a2);
  }

  v4 = *this;
  *this = 0;
  if (v4)
  {
    if (atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v4, a2);
    }
  }
}

uint64_t *WTF::Vector<WebCore::SecurityOriginData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(uint64_t *a1, WTF::StringImpl *a2)
{
  v3 = *(a1 + 3);
  v4 = *a1;
  if (v3)
  {
    v5 = 32 * v3;
    do
    {
      if (!*(v4 + 24))
      {
        v6 = *(v4 + 8);
        *(v4 + 8) = 0;
        if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v6, a2);
        }

        v7 = *v4;
        *v4 = 0;
        if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v7, a2);
        }
      }

      *(v4 + 24) = -1;
      v4 += 32;
      v5 -= 32;
    }

    while (v5);
    v4 = *a1;
  }

  if (v4)
  {
    *a1 = 0;
    *(a1 + 2) = 0;
    WTF::fastFree(v4, a2);
  }

  return a1;
}

void WebKit::onNewDatabaseOriginAdded(WebKit *this, __CFNotificationCenter *a2, void *a3, const __CFString *a4, const void *a5, const __CFDictionary *a6)
{
  WebThreadLock();
  if (*(a2 + 8) == 1)
  {
    *(a2 + 8) = 0;
  }

  else
  {
    LocalCenter = CFNotificationCenterGetLocalCenter();
    v8 = WebDatabaseOriginsDidChangeNotification;

    CFNotificationCenterPostNotification(LocalCenter, v8, 0, 0, 1u);
  }
}

WebCore::DatabaseTracker *WebKit::onDatabaseDeleted(WebKit *this, __CFNotificationCenter *a2, void *a3, const __CFString *a4, const void *a5, const __CFDictionary *a6)
{
  result = WebThreadLock();
  if (*(a2 + 9) == 1)
  {
    *(a2 + 9) = 0;
  }

  else
  {
    v8 = WebCore::DatabaseTracker::singleton(result);

    return MEMORY[0x1EEE55DA0](v8);
  }

  return result;
}

void WebKit::onDatabaseOriginDeleted(WebKit *this, __CFNotificationCenter *a2, void *a3, const __CFString *a4, const void *a5, const __CFDictionary *a6)
{
  WebThreadLock();
  if (*(a2 + 10) == 1)
  {
    *(a2 + 10) = 0;
  }

  else
  {
    LocalCenter = CFNotificationCenterGetLocalCenter();
    v8 = WebDatabaseOriginsDidChangeNotification;

    CFNotificationCenterPostNotification(LocalCenter, v8, 0, 0, 1u);
  }
}

void WebKit::WebDatabaseManagerClient::~WebDatabaseManagerClient(WebKit::WebDatabaseManagerClient *this)
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, this, 0, 0);
}

{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, this, 0, 0);

  JUMPOUT(0x1CCA6A890);
}

void WebKit::WebDatabaseManagerClient::dispatchDidModifyOrigin(WebKit::WebDatabaseManagerClient *this, const WebCore::SecurityOriginData *a2)
{
  if (WTF::isMainThread(this))
  {
    v5 = [WebSecurityOrigin alloc];
    WebCore::SecurityOriginData::securityOrigin(&v12, a2);
    v7 = [(WebSecurityOrigin *)v5 _initWithWebCoreSecurityOrigin:v12];
    v8 = v12;
    v12 = 0;
    if (v8 && atomic_fetch_add(v8, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v8);
      WebCore::SecurityOrigin::~SecurityOrigin(v8, v6);
      WTF::fastFree(v10, v11);
    }

    v9 = [MEMORY[0x1E696AD88] defaultCenter];
    [v9 postNotificationName:WebDatabaseDidModifyOriginNotification object:v7];
    if (v7)
    {
    }
  }

  else
  {

    WebKit::DidModifyOriginData::dispatchToMainThread(this, a2, v4);
  }
}

void sub_1C7AC864C(_Unwind_Exception *a1, WTF::StringImpl *a2, uint64_t a3, ...)
{
  va_start(va, a3);
  WTF::Ref<WebCore::SecurityOrigin,WTF::RawPtrTraits<WebCore::SecurityOrigin>,WTF::DefaultRefDerefTraits<WebCore::SecurityOrigin>>::~Ref(va, a2);
  _Unwind_Resume(a1);
}

void sub_1C7AC8660(_Unwind_Exception *exception_object)
{
  if (v1)
  {
  }

  _Unwind_Resume(exception_object);
}

uint64_t WebKit::DidModifyOriginData::dispatchToMainThread(WebKit::DidModifyOriginData *this, WebKit::WebDatabaseManagerClient *a2, const WebCore::SecurityOriginData *a3)
{
  if (WebKit::DidModifyOriginData::operator new(unsigned long)::s_heapRef)
  {
    NonCompact = bmalloc::api::tzoneAllocateNonCompact(WebKit::DidModifyOriginData::operator new(unsigned long)::s_heapRef, a2);
  }

  else
  {
    NonCompact = bmalloc::api::tzoneAllocateNonCompactSlow();
  }

  v5 = NonCompact;
  *NonCompact = this;
  WebCore::SecurityOriginData::isolatedCopy();
  v6 = WTF::fastMalloc(0x10);
  *v6 = &unk_1F472D5B0;
  v6[1] = v5;
  v8 = v6;
  WTF::callOnMainThread();
  result = v8;
  if (v8)
  {
    return (*(*v8 + 8))(v8);
  }

  return result;
}

void sub_1C7AC874C(_Unwind_Exception *a1, WTF::StringImpl *a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v8 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v4 = v10;
  v10 = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
    WebKit::DidModifyOriginData::dispatchToMainThread(WebKit::WebDatabaseManagerClient &,WebCore::SecurityOriginData const&)::{lambda(void)#1}::~SecurityOriginData(va, v5);
    WebKit::DidModifyOriginData::dispatchToMainThread(WebKit::WebDatabaseManagerClient &,WebCore::SecurityOriginData const&)::{lambda(void)#1}::~SecurityOriginData(va1, v6);
    _Unwind_Resume(a1);
  }

  WebKit::DidModifyOriginData::dispatchToMainThread(WebKit::WebDatabaseManagerClient &,WebCore::SecurityOriginData const&)::{lambda(void)#1}::~SecurityOriginData(va, a2);
  WebKit::DidModifyOriginData::dispatchToMainThread(WebKit::WebDatabaseManagerClient &,WebCore::SecurityOriginData const&)::{lambda(void)#1}::~SecurityOriginData(va1, v7);
  _Unwind_Resume(a1);
}

void sub_1C7AC87B4(_Unwind_Exception *a1, void *a2)
{
  v3 = v2;
  bmalloc::api::tzoneFree(v3, a2);
  _Unwind_Resume(a1);
}

void WebKit::WebDatabaseManagerClient::dispatchDidModifyDatabase(WebKit::WebDatabaseManagerClient *this, const WebCore::SecurityOriginData *a2, atomic_uint **a3)
{
  if (WTF::isMainThread(this))
  {
    v7 = [WebSecurityOrigin alloc];
    WebCore::SecurityOriginData::securityOrigin(&v20, a2);
    v9 = [(WebSecurityOrigin *)v7 _initWithWebCoreSecurityOrigin:v20];
    v10 = v20;
    v20 = 0;
    if (v10 && atomic_fetch_add(v10, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v10);
      WebCore::SecurityOrigin::~SecurityOrigin(v10, v8);
      WTF::fastFree(v18, v19);
    }

    v11 = objc_alloc(MEMORY[0x1E695DF20]);
    v12 = *a3;
    if (v12)
    {
      atomic_fetch_add_explicit(v12, 2u, memory_order_relaxed);
      MEMORY[0x1CCA63450](&v20, v12);
      if (atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v12, v13);
      }
    }

    else
    {
      v20 = &stru_1F472E7E8;
      v17 = &stru_1F472E7E8;
    }

    v14 = [v11 initWithObjectsAndKeys:{v20, WebDatabaseIdentifierKey, 0}];
    v15 = v20;
    v20 = 0;
    if (v15)
    {
    }

    v16 = [MEMORY[0x1E696AD88] defaultCenter];
    [v16 postNotificationName:WebDatabaseDidModifyDatabaseNotification object:v9 userInfo:v14];
    if (v14)
    {
    }

    if (v9)
    {
    }
  }

  else
  {

    WebKit::DidModifyOriginData::dispatchToMainThread(this, a2, v6);
  }
}

void sub_1C7AC894C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if (v12)
  {
  }

  _Unwind_Resume(exception_object);
}

void WebKit::WebDatabaseManagerClient::dispatchDidAddNewOrigin(WebKit::WebDatabaseManagerClient *this)
{
  *(this + 8) = 1;
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();

  CFNotificationCenterPostNotification(DarwinNotifyCenter, @"com.apple.MobileSafariSettings.WebDatabaseOriginWasAddedNotification", 0, 0, 1u);
}

void WebKit::WebDatabaseManagerClient::dispatchDidDeleteDatabase(WebKit::WebDatabaseManagerClient *this)
{
  *(this + 9) = 1;
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();

  CFNotificationCenterPostNotification(DarwinNotifyCenter, @"com.apple.MobileSafariSettings.WebDatabaseWasDeletedNotification", 0, 0, 1u);
}

void WebKit::WebDatabaseManagerClient::dispatchDidDeleteDatabaseOrigin(WebKit::WebDatabaseManagerClient *this)
{
  *(this + 10) = 1;
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();

  CFNotificationCenterPostNotification(DarwinNotifyCenter, @"com.apple.MobileSafariSettings.WebDatabaseOriginWasDeletedNotification", 0, 0, 1u);
}

void *WTF::Detail::CallableWrapper<WebKit::DidModifyOriginData::dispatchToMainThread(WebKit::WebDatabaseManagerClient &,WebCore::SecurityOriginData const&)::{lambda(void)#1},void>::~CallableWrapper(void *a1, WTF::StringImpl *a2)
{
  v2 = a1;
  v3 = a1[1];
  *v2 = &unk_1F472D5B0;
  v2[1] = 0;
  if (v3)
  {
    v4 = v2;
    if (!*(v3 + 32))
    {
      v5 = *(v3 + 16);
      *(v3 + 16) = 0;
      if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        v6 = v3;
        WTF::StringImpl::destroy(v5, a2);
        v3 = v6;
      }

      v7 = *(v3 + 8);
      *(v3 + 8) = 0;
      if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        v8 = v3;
        WTF::StringImpl::destroy(v7, a2);
        v3 = v8;
      }
    }

    *(v3 + 32) = -1;
    bmalloc::api::tzoneFree(v3, a2);
    return v4;
  }

  return v2;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::DidModifyOriginData::dispatchToMainThread(WebKit::WebDatabaseManagerClient &,WebCore::SecurityOriginData const&)::{lambda(void)#1},void>::~CallableWrapper(WTF *this, WTF::StringImpl *a2)
{
  v3 = this;
  v4 = *(this + 1);
  *v3 = &unk_1F472D5B0;
  *(v3 + 1) = 0;
  if (v4)
  {
    v5 = v3;
    if (!*(v4 + 32))
    {
      v6 = *(v4 + 16);
      *(v4 + 16) = 0;
      if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        v7 = v4;
        WTF::StringImpl::destroy(v6, a2);
        v4 = v7;
      }

      v8 = *(v4 + 8);
      *(v4 + 8) = 0;
      if (v8 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        v9 = v4;
        WTF::StringImpl::destroy(v8, a2);
        v4 = v9;
      }
    }

    *(v4 + 32) = -1;
    bmalloc::api::tzoneFree(v4, a2);
    v3 = v5;
    v2 = vars8;
  }

  return WTF::fastFree(v3, a2);
}

void *WebKit::DidModifyOriginData::dispatchToMainThread(WebKit::WebDatabaseManagerClient &,WebCore::SecurityOriginData const&)::{lambda(void)#1}::~SecurityOriginData(void *a1, WTF::StringImpl *a2)
{
  v2 = a1;
  v3 = *a1;
  *v2 = 0;
  if (v3)
  {
    v4 = v2;
    if (!*(v3 + 32))
    {
      v5 = *(v3 + 16);
      *(v3 + 16) = 0;
      if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        v6 = v3;
        WTF::StringImpl::destroy(v5, a2);
        v3 = v6;
      }

      v7 = *(v3 + 8);
      *(v3 + 8) = 0;
      if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        v8 = v3;
        WTF::StringImpl::destroy(v7, a2);
        v3 = v8;
      }
    }

    *(v3 + 32) = -1;
    bmalloc::api::tzoneFree(v3, a2);
    return v4;
  }

  return v2;
}

_WORD *WTF::NeverDestroyed<WebKit::WebDatabaseManagerClient,WTF::AnyThreadsAccessTraits>::NeverDestroyed<>(_WORD *a1)
{
  *a1 = &unk_1F472D568;
  a1[4] = 0;
  *(a1 + 10) = 0;
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterAddObserver(DarwinNotifyCenter, a1, WebKit::onNewDatabaseOriginAdded, @"com.apple.MobileSafariSettings.WebDatabaseOriginWasAddedNotification", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  CFNotificationCenterAddObserver(DarwinNotifyCenter, a1, WebKit::onDatabaseDeleted, @"com.apple.MobileSafariSettings.WebDatabaseWasDeletedNotification", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  CFNotificationCenterAddObserver(DarwinNotifyCenter, a1, WebKit::onDatabaseOriginDeleted, @"com.apple.MobileSafariSettings.WebDatabaseOriginWasDeletedNotification", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  return a1;
}

void WebDatabaseProvider::~WebDatabaseProvider(WebDatabaseProvider *this, void *a2)
{
  v2 = *(this + 2);
  if (v2)
  {
    v3 = this;
    v4 = *(v2 - 4);
    if (v4)
    {
      v5 = (v2 + 8);
      do
      {
        if (*(v5 - 1) != -1)
        {
          v6 = *v5;
          *v5 = 0;
          if (v6)
          {
            if (atomic_fetch_add(v6 + 7, 0xFFFFFFFF) == 1)
            {
              atomic_store(1u, v6 + 7);
              (*(*v6 + 8))(v6);
            }
          }
        }

        v5 += 2;
        --v4;
      }

      while (v4);
    }

    WTF::fastFree((v2 - 16), a2);
    this = v3;
  }

  WebCore::DatabaseProvider::~DatabaseProvider(this);
}

{
  v3 = *(this + 2);
  if (v3)
  {
    v4 = *(v3 - 4);
    if (v4)
    {
      v5 = (v3 + 8);
      do
      {
        if (*(v5 - 1) != -1)
        {
          v6 = *v5;
          *v5 = 0;
          if (v6)
          {
            if (atomic_fetch_add(v6 + 7, 0xFFFFFFFF) == 1)
            {
              atomic_store(1u, v6 + 7);
              (*(*v6 + 8))(v6);
            }
          }
        }

        v5 += 2;
        --v4;
      }

      while (v4);
    }

    WTF::fastFree((v3 - 16), a2);
  }

  WebCore::DatabaseProvider::~DatabaseProvider(this);

  WTF::fastFree(v7, v8);
}

uint64_t WebDatabaseProvider::idbConnectionToServerForSession(WebDatabaseProvider *this, SessionID a2)
{
  if (a2.m_identifier == -1 || !a2.m_identifier)
  {
    __break(0xC471u);
    JUMPOUT(0x1C7AC9198);
  }

  v4 = *(this + 2);
  if (!v4)
  {
    WTF::HashTable<PAL::SessionID,WTF::KeyValuePair<PAL::SessionID,WTF::RefPtr<InProcessIDBServer,WTF::RawPtrTraits<InProcessIDBServer>,WTF::DefaultRefDerefTraits<InProcessIDBServer>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<PAL::SessionID,WTF::RefPtr<InProcessIDBServer,WTF::RawPtrTraits<InProcessIDBServer>,WTF::DefaultRefDerefTraits<InProcessIDBServer>>>>,WTF::DefaultHash<PAL::SessionID>,WTF::HashMap<PAL::SessionID,WTF::RefPtr<InProcessIDBServer,WTF::RawPtrTraits<InProcessIDBServer>,WTF::DefaultRefDerefTraits<InProcessIDBServer>>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<WTF::RefPtr<InProcessIDBServer,WTF::RawPtrTraits<InProcessIDBServer>,WTF::DefaultRefDerefTraits<InProcessIDBServer>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<PAL::SessionID>,WTF::FastMalloc>::rehash(this + 2, 8u, 0);
    v4 = *(this + 2);
  }

  v5 = *(v4 - 8);
  v6 = (~(a2.m_identifier << 32) + a2.m_identifier) ^ ((~(a2.m_identifier << 32) + a2.m_identifier) >> 22);
  v7 = 9 * ((v6 + ~(v6 << 13)) ^ ((v6 + ~(v6 << 13)) >> 8));
  v8 = (v7 ^ (v7 >> 15)) + ~((v7 ^ (v7 >> 15)) << 27);
  v9 = v5 & ((v8 >> 31) ^ v8);
  v10 = (v4 + 16 * v9);
  v11.m_identifier = *v10;
  if (!*v10)
  {
LABEL_13:
    *v10 = a2.m_identifier;
    if (a2.m_identifier > -2)
    {
      WebDatabaseProvider::indexedDatabaseDirectoryPath(&v27);
      v14 = WTF::fastMalloc(0x48);
      v16.m_identifier = a2.m_identifier;
      InProcessIDBServer::InProcessIDBServer(v14, v16, &v27);
      v18 = v27;
      v27 = 0;
      if (v18 && atomic_fetch_add_explicit(v18, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v18, v17);
      }
    }

    else
    {
      v14 = WTF::fastMalloc(0x48);
      v15.m_identifier = a2.m_identifier;
      InProcessIDBServer::InProcessIDBServer(v14, v15, MEMORY[0x1E696EBA0]);
    }

    v19 = v10[1];
    v10[1] = v14;
    if (v19 && atomic_fetch_add(v19 + 7, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v19 + 7);
      (*(*v19 + 8))(v19);
      v20 = *(this + 2);
      if (v20)
      {
LABEL_21:
        v21 = *(v20 - 16);
        v22 = *(v20 - 12) + 1;
        *(v20 - 12) = v22;
        v23 = (v21 + v22);
        v24 = *(v20 - 4);
        if (v24 <= 0x400)
        {
          goto LABEL_22;
        }

        goto LABEL_27;
      }
    }

    else
    {
      v20 = *(this + 2);
      if (v20)
      {
        goto LABEL_21;
      }
    }

    v22 = 1;
    *(v20 - 12) = 1;
    v23 = (*(v20 - 16) + 1);
    v24 = *(v20 - 4);
    if (v24 <= 0x400)
    {
LABEL_22:
      if (3 * v24 > 4 * v23)
      {
        return *(v10[1] + 48);
      }

      if (!v24)
      {
        v25 = 8;
LABEL_29:
        v10 = WTF::HashTable<PAL::SessionID,WTF::KeyValuePair<PAL::SessionID,WTF::RefPtr<InProcessIDBServer,WTF::RawPtrTraits<InProcessIDBServer>,WTF::DefaultRefDerefTraits<InProcessIDBServer>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<PAL::SessionID,WTF::RefPtr<InProcessIDBServer,WTF::RawPtrTraits<InProcessIDBServer>,WTF::DefaultRefDerefTraits<InProcessIDBServer>>>>,WTF::DefaultHash<PAL::SessionID>,WTF::HashMap<PAL::SessionID,WTF::RefPtr<InProcessIDBServer,WTF::RawPtrTraits<InProcessIDBServer>,WTF::DefaultRefDerefTraits<InProcessIDBServer>>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<WTF::RefPtr<InProcessIDBServer,WTF::RawPtrTraits<InProcessIDBServer>,WTF::DefaultRefDerefTraits<InProcessIDBServer>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<PAL::SessionID>,WTF::FastMalloc>::rehash(this + 2, v25, v10);
        return *(v10[1] + 48);
      }

LABEL_28:
      v25 = v24 << (6 * v22 >= (2 * v24));
      goto LABEL_29;
    }

LABEL_27:
    if (v24 > 2 * v23)
    {
      return *(v10[1] + 48);
    }

    goto LABEL_28;
  }

  v12 = 0;
  v13 = 1;
  while (v11.m_identifier != a2.m_identifier)
  {
    if (v11.m_identifier == -1)
    {
      v12 = v10;
    }

    v9 = (v9 + v13) & v5;
    v10 = (v4 + 16 * v9);
    v11.m_identifier = *v10;
    ++v13;
    if (!*v10)
    {
      if (v12)
      {
        *v12 = 0;
        v12[1] = 0;
        --*(*(this + 2) - 16);
        v10 = v12;
      }

      goto LABEL_13;
    }
  }

  return *(v10[1] + 48);
}

void *WebDatabaseProvider::deleteAllDatabases(void *this)
{
  v1 = this[2];
  if (!v1)
  {
    v3 = 0;
    v2 = 0;
LABEL_10:
    v5 = v3;
    v3 = (v1 + 16 * v2);
    if (!v1)
    {
      v7 = 0;
      if (!v5)
      {
        return this;
      }

      goto LABEL_17;
    }

    goto LABEL_8;
  }

  v2 = *(v1 - 4);
  v3 = (v1 + 16 * v2);
  if (!*(v1 - 12))
  {
    goto LABEL_10;
  }

  if (v2)
  {
    v4 = 16 * v2;
    v5 = this[2];
    while ((*v5 + 1) <= 1)
    {
      v5 += 2;
      v4 -= 16;
      if (!v4)
      {
        v5 = v3;
        break;
      }
    }

LABEL_8:
    v6 = *(v1 - 4);
    goto LABEL_14;
  }

  v6 = 0;
  v5 = this[2];
LABEL_14:
  v7 = (v1 + 16 * v6);
  if (v5 == v7)
  {
    return this;
  }

  do
  {
LABEL_17:
    v8 = v5[1];
    atomic_fetch_add((v8 + 28), 1u);
    v9 = WTF::fastMalloc(0x20);
    *v9 = &unk_1F472A710;
    v9[1] = v8;
    v9[2] = v8;
    v9[3] = 0xFFF0000000000000;
    v10 = v9;
    (*(**(v8 + 64) + 48))(*(v8 + 64), &v10);
    this = v10;
    v10 = 0;
    if (this)
    {
      this = (*(*this + 8))(this);
    }

    do
    {
      v5 += 2;
    }

    while (v5 != v3 && (*v5 + 1) <= 1);
  }

  while (v5 != v7);
  return this;
}

void *WTF::HashTable<PAL::SessionID,WTF::KeyValuePair<PAL::SessionID,WTF::RefPtr<InProcessIDBServer,WTF::RawPtrTraits<InProcessIDBServer>,WTF::DefaultRefDerefTraits<InProcessIDBServer>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<PAL::SessionID,WTF::RefPtr<InProcessIDBServer,WTF::RawPtrTraits<InProcessIDBServer>,WTF::DefaultRefDerefTraits<InProcessIDBServer>>>>,WTF::DefaultHash<PAL::SessionID>,WTF::HashMap<PAL::SessionID,WTF::RefPtr<InProcessIDBServer,WTF::RawPtrTraits<InProcessIDBServer>,WTF::DefaultRefDerefTraits<InProcessIDBServer>>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<WTF::RefPtr<InProcessIDBServer,WTF::RawPtrTraits<InProcessIDBServer>,WTF::DefaultRefDerefTraits<InProcessIDBServer>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<PAL::SessionID>,WTF::FastMalloc>::rehash(uint64_t *a1, unsigned int a2, uint64_t *a3)
{
  v6 = *a1;
  if (*a1)
  {
    v7 = *(v6 - 4);
    v8 = *(v6 - 12);
    v9 = 16 * a2;
    v11 = WTF::fastMalloc((v9 + 16));
    v12 = v11 + 4;
    if (!a2)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v7 = 0;
  v8 = 0;
  v9 = 16 * a2;
  v11 = WTF::fastMalloc((v9 + 16));
  v12 = v11 + 4;
  if (a2)
  {
LABEL_3:
    bzero(v12, v9);
  }

LABEL_4:
  *a1 = v12;
  v11[2] = a2 - 1;
  v11[3] = a2;
  *v11 = 0;
  v11[1] = v8;
  if (v7)
  {
    v13 = 0;
    v14 = 0;
    while (1)
    {
      v15 = (v6 + 16 * v13);
      v16 = *v15;
      if (*v15 != -1)
      {
        if (v16)
        {
          v18 = *a1;
          if (*a1)
          {
            v19 = *(v18 - 8);
          }

          else
          {
            v19 = 0;
          }

          v20 = (v16 + ~(v16 << 32)) ^ ((v16 + ~(v16 << 32)) >> 22);
          v21 = 9 * ((v20 + ~(v20 << 13)) ^ ((v20 + ~(v20 << 13)) >> 8));
          v22 = (v21 ^ (v21 >> 15)) + ~((v21 ^ (v21 >> 15)) << 27);
          v23 = v19 & ((v22 >> 31) ^ v22);
          v24 = 1;
          do
          {
            v25 = v23;
            v26 = *(v18 + 16 * v23);
            v23 = (v23 + v24++) & v19;
          }

          while (v26);
          v27 = (v18 + 16 * v25);
          v28 = v27[1];
          v27[1] = 0;
          if (v28 && atomic_fetch_add(v28 + 7, 0xFFFFFFFF) == 1)
          {
            atomic_store(1u, v28 + 7);
            (*(*v28 + 8))(v28);
            v32 = *v15;
            v33 = v15[1];
            v15[1] = 0;
            *v27 = v32;
            v27[1] = v33;
            v31 = v15[1];
            v15[1] = 0;
            if (v31)
            {
              goto LABEL_22;
            }
          }

          else
          {
            v29 = *v15;
            v30 = v15[1];
            v15[1] = 0;
            *v27 = v29;
            v27[1] = v30;
            v31 = v15[1];
            v15[1] = 0;
            if (v31)
            {
LABEL_22:
              if (atomic_fetch_add(v31 + 7, 0xFFFFFFFF) == 1)
              {
                atomic_store(1u, v31 + 7);
                (*(*v31 + 8))(v31);
              }
            }
          }

          if (v15 == a3)
          {
            v14 = v27;
          }

          goto LABEL_8;
        }

        v17 = v15[1];
        v15[1] = 0;
        if (v17)
        {
          if (atomic_fetch_add(v17 + 7, 0xFFFFFFFF) == 1)
          {
            atomic_store(1u, v17 + 7);
            (*(*v17 + 8))(v17);
          }
        }
      }

LABEL_8:
      if (++v13 == v7)
      {
        goto LABEL_29;
      }
    }
  }

  v14 = 0;
  result = 0;
  if (v6)
  {
LABEL_29:
    WTF::fastFree((v6 - 16), v10);
    return v14;
  }

  return result;
}

void WebDatabaseProvider::indexedDatabaseDirectoryPath(uint64_t a1@<X8>)
{
  v3 = [MEMORY[0x1E695E000] standardUserDefaults];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  v6 = [v4 objectForKey:WebDatabaseDirectoryDefaultsKey];
  if (v6 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v7 = v6;
    MEMORY[0x1CCA63A40](&v22, v6);
    WTF::FileSystemImpl::pathByAppendingComponent();
    v13 = v23;
    if (v23)
    {
      atomic_fetch_add_explicit(v23, 2u, memory_order_relaxed);
      MEMORY[0x1CCA63450](&v24, v13);
      if (atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v13, v14);
      }
    }

    else
    {
      v24 = &stru_1F472E7E8;
      v21 = &stru_1F472E7E8;
    }

    v15 = v24;
    v24 = 0;

    v17 = v24;
    v24 = 0;
    if (v17)
    {
    }

    v18 = v23;
    v23 = 0;
    if (v18 && atomic_fetch_add_explicit(v18, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v18, v16);
    }

    v19 = v22;
    v22 = 0;
    if (v19 && atomic_fetch_add_explicit(v19, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v19, v16);
    }

    v11 = v15;
  }

  else
  {
    MEMORY[0x1CCA63A40](&v22, [objc_msgSend(MEMORY[0x1E696AAE8] "mainBundle")]);
    WTF::FileSystemImpl::pathByAppendingComponent();
    v8 = v23;
    if (v23)
    {
      atomic_fetch_add_explicit(v23, 2u, memory_order_relaxed);
      MEMORY[0x1CCA63450](&v24, v8);
      if (atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v8, v9);
      }
    }

    else
    {
      v24 = &stru_1F472E7E8;
      v20 = &stru_1F472E7E8;
    }

    v10 = v23;
    v11 = v24;
    v23 = 0;
    v24 = 0;
    if (v10 && atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v10, v9);
    }

    v12 = v22;
    v22 = 0;
    if (v12 && atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v12, v9);
    }
  }

  MEMORY[0x1CCA63A40](a1, [(__CFString *)v11 stringByStandardizingPath]);
  if (v11)
  {
  }

  if (v4)
  {
  }
}

void sub_1C7AC984C(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10, WTF::StringImpl *a11)
{
  if (a11 && atomic_fetch_add_explicit(a11, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a11, a2);
  }

  if (a10 && atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a10, a2);
  }

  if (v11)
  {
  }

  _Unwind_Resume(a1);
}

id CallUIDelegate(WebView *a1, objc_selector *a2)
{
  result = [(WebView *)a1 _UIDelegateForSelector:a2];
  v6 = a1;
  if (result)
  {
    if (objc_opt_respondsToSelector())
    {
      NSInvocation = WebThreadMakeNSInvocation();
      [NSInvocation setArgument:&v6 atIndex:2];
      v5 = 0;
      WebThreadCallDelegate();
      result = [objc_msgSend(NSInvocation "methodSignature")];
      if (result)
      {
        [NSInvocation getReturnValue:&v5];
        return v5;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

id CallUIDelegate(WebView *a1, objc_selector *a2, objc_object *a3)
{
  result = [(WebView *)a1 _UIDelegateForSelector:a2];
  v8 = a3;
  v9 = a1;
  if (result)
  {
    if (objc_opt_respondsToSelector())
    {
      NSInvocation = WebThreadMakeNSInvocation();
      [NSInvocation setArgument:&v9 atIndex:2];
      [NSInvocation setArgument:&v8 atIndex:3];
      v7 = 0;
      WebThreadCallDelegate();
      result = [objc_msgSend(NSInvocation "methodSignature")];
      if (result)
      {
        [NSInvocation getReturnValue:&v7];
        return v7;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

id CallUIDelegate(WebView *a1, objc_selector *a2, objc_object *a3, char a4)
{
  result = [(WebView *)a1 _UIDelegateForSelector:a2];
  v11 = a3;
  v12 = a1;
  v10 = a4;
  if (result)
  {
    if (objc_opt_respondsToSelector())
    {
      NSInvocation = WebThreadMakeNSInvocation();
      [NSInvocation setArgument:&v12 atIndex:2];
      [NSInvocation setArgument:&v11 atIndex:3];
      [NSInvocation setArgument:&v10 atIndex:4];
      v9 = 0;
      WebThreadCallDelegate();
      result = [objc_msgSend(NSInvocation "methodSignature")];
      if (result)
      {
        [NSInvocation getReturnValue:&v9];
        return v9;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

id CallUIDelegate(WebView *a1, objc_selector *a2, objc_object *a3, objc_object *a4)
{
  result = [(WebView *)a1 _UIDelegateForSelector:a2];
  v11 = a3;
  v12 = a1;
  v10 = a4;
  if (result)
  {
    if (objc_opt_respondsToSelector())
    {
      NSInvocation = WebThreadMakeNSInvocation();
      [NSInvocation setArgument:&v12 atIndex:2];
      [NSInvocation setArgument:&v11 atIndex:3];
      [NSInvocation setArgument:&v10 atIndex:4];
      v9 = 0;
      WebThreadCallDelegate();
      result = [objc_msgSend(NSInvocation "methodSignature")];
      if (result)
      {
        [NSInvocation getReturnValue:&v9];
        return v9;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

id CallUIDelegate(WebView *a1, objc_selector *a2, objc_object *a3, objc_object *a4, objc_object *a5)
{
  result = [(WebView *)a1 _UIDelegateForSelector:a2];
  v14 = a3;
  v15 = a1;
  v12 = a5;
  v13 = a4;
  if (result)
  {
    if (objc_opt_respondsToSelector())
    {
      NSInvocation = WebThreadMakeNSInvocation();
      [NSInvocation setArgument:&v15 atIndex:2];
      [NSInvocation setArgument:&v14 atIndex:3];
      [NSInvocation setArgument:&v13 atIndex:4];
      [NSInvocation setArgument:&v12 atIndex:5];
      v11 = 0;
      WebThreadCallDelegate();
      result = [objc_msgSend(NSInvocation "methodSignature")];
      if (result)
      {
        [NSInvocation getReturnValue:&v11];
        return v11;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

id CallUIDelegate(WebView *a1, objc_selector *a2, objc_object *a3, uint64_t a4)
{
  result = [(WebView *)a1 _UIDelegateForSelector:a2];
  v11 = a3;
  v12 = a1;
  v10 = a4;
  if (result)
  {
    if (objc_opt_respondsToSelector())
    {
      NSInvocation = WebThreadMakeNSInvocation();
      [NSInvocation setArgument:&v12 atIndex:2];
      [NSInvocation setArgument:&v11 atIndex:3];
      [NSInvocation setArgument:&v10 atIndex:4];
      v9 = 0;
      WebThreadCallDelegate();
      result = [objc_msgSend(NSInvocation "methodSignature")];
      if (result)
      {
        [NSInvocation getReturnValue:&v9];
        return v9;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t CallUIDelegateReturningBoolean(char a1, WebView *a2, objc_selector *a3)
{
  v7 = a2;
  if ([(WebView *)a2 _UIDelegateForSelector:?]&& (objc_opt_respondsToSelector() & 1) != 0)
  {
    NSInvocation = WebThreadMakeNSInvocation();
    [NSInvocation setArgument:&v7 atIndex:2];
    v6 = 0;
    WebThreadCallDelegate();
    [NSInvocation getReturnValue:&v6];
    a1 = v6;
  }

  return a1 & 1;
}

uint64_t CallUIDelegateReturningBoolean(char a1, WebView *a2, objc_selector *a3, objc_object *a4)
{
  v8 = a4;
  v9 = a2;
  if ([(WebView *)a2 _UIDelegateForSelector:?]&& (objc_opt_respondsToSelector() & 1) != 0)
  {
    NSInvocation = WebThreadMakeNSInvocation();
    [NSInvocation setArgument:&v9 atIndex:2];
    [NSInvocation setArgument:&v8 atIndex:3];
    v7 = 0;
    WebThreadCallDelegate();
    [NSInvocation getReturnValue:&v7];
    a1 = v7;
  }

  return a1 & 1;
}

uint64_t CallUIDelegateReturningBoolean(char a1, WebView *a2, objc_selector *a3, objc_object *a4, char a5)
{
  v10 = a4;
  v11 = a2;
  v9 = a5;
  if ([(WebView *)a2 _UIDelegateForSelector:?]&& (objc_opt_respondsToSelector() & 1) != 0)
  {
    NSInvocation = WebThreadMakeNSInvocation();
    [NSInvocation setArgument:&v11 atIndex:2];
    [NSInvocation setArgument:&v10 atIndex:3];
    [NSInvocation setArgument:&v9 atIndex:4];
    v8 = 0;
    WebThreadCallDelegate();
    [NSInvocation getReturnValue:&v8];
    a1 = v8;
  }

  return a1 & 1;
}

uint64_t CallUIDelegateReturningBoolean(char a1, WebView *a2, objc_selector *a3, objc_object *a4, objc_object *a5)
{
  v10 = a4;
  v11 = a2;
  v9 = a5;
  if ([(WebView *)a2 _UIDelegateForSelector:?]&& (objc_opt_respondsToSelector() & 1) != 0)
  {
    NSInvocation = WebThreadMakeNSInvocation();
    [NSInvocation setArgument:&v11 atIndex:2];
    [NSInvocation setArgument:&v10 atIndex:3];
    [NSInvocation setArgument:&v9 atIndex:4];
    v8 = 0;
    WebThreadCallDelegate();
    [NSInvocation getReturnValue:&v8];
    a1 = v8;
  }

  return a1 & 1;
}

id CallFrameLoadDelegate(void (*a1)(void), WebView *a2, objc_selector *a3)
{
  result = [(WebView *)a2 _frameLoadDelegateForwarder];
  v7 = a2;
  if (result)
  {
    NSInvocation = WebThreadMakeNSInvocation();
    [NSInvocation setArgument:&v7 atIndex:2];
    v6 = 0;
    WebThreadCallDelegate();
    result = [objc_msgSend(NSInvocation "methodSignature")];
    if (result)
    {
      [NSInvocation getReturnValue:&v6];
      return v6;
    }
  }

  return result;
}

id CallFrameLoadDelegate(void (*a1)(void), WebView *a2, objc_selector *a3, objc_object *a4)
{
  result = [(WebView *)a2 _frameLoadDelegateForwarder];
  v9 = a4;
  v10 = a2;
  if (result)
  {
    NSInvocation = WebThreadMakeNSInvocation();
    [NSInvocation setArgument:&v10 atIndex:2];
    [NSInvocation setArgument:&v9 atIndex:3];
    v8 = 0;
    WebThreadCallDelegate();
    result = [objc_msgSend(NSInvocation "methodSignature")];
    if (result)
    {
      [NSInvocation getReturnValue:&v8];
      return v8;
    }
  }

  return result;
}

uint64_t CallDelegate(void (*a1)(void), WebView *a2, objc_object *a3, objc_selector *a4, objc_object *a5, objc_object *a6)
{
  v10 = a4;
  v11 = a1;
  v9 = a5;
  if (!a2)
  {
    return 0;
  }

  NSInvocation = WebThreadMakeNSInvocation();
  [NSInvocation setArgument:&v11 atIndex:2];
  [NSInvocation setArgument:&v10 atIndex:3];
  [NSInvocation setArgument:&v9 atIndex:4];
  v8 = 0;
  WebThreadCallDelegate();
  result = [objc_msgSend(NSInvocation "methodSignature")];
  if (result)
  {
    [NSInvocation getReturnValue:&v8];
    return v8;
  }

  return result;
}

uint64_t CallDelegate(void (*a1)(void), WebView *a2, objc_object *a3, objc_selector *a4, objc_object *a5, objc_object *a6, objc_object *a7)
{
  v13 = a1;
  v11 = a5;
  v12 = a4;
  v10 = a6;
  if (!a2)
  {
    return 0;
  }

  NSInvocation = WebThreadMakeNSInvocation();
  [NSInvocation setArgument:&v13 atIndex:2];
  [NSInvocation setArgument:&v12 atIndex:3];
  [NSInvocation setArgument:&v11 atIndex:4];
  [NSInvocation setArgument:&v10 atIndex:5];
  v9 = 0;
  WebThreadCallDelegate();
  result = [objc_msgSend(NSInvocation "methodSignature")];
  if (result)
  {
    [NSInvocation getReturnValue:&v9];
    return v9;
  }

  return result;
}

uint64_t CallDelegate(void (*a1)(void), WebView *a2, objc_object *a3, objc_selector *a4, objc_object *a5, objc_object *a6, objc_object *a7, objc_object *a8)
{
  v15 = a1;
  v13 = a5;
  v14 = a4;
  v11 = a7;
  v12 = a6;
  if (!a2)
  {
    return 0;
  }

  NSInvocation = WebThreadMakeNSInvocation();
  [NSInvocation setArgument:&v15 atIndex:2];
  [NSInvocation setArgument:&v14 atIndex:3];
  [NSInvocation setArgument:&v13 atIndex:4];
  [NSInvocation setArgument:&v12 atIndex:5];
  [NSInvocation setArgument:&v11 atIndex:6];
  v10 = 0;
  WebThreadCallDelegate();
  result = [objc_msgSend(NSInvocation "methodSignature")];
  if (result)
  {
    [NSInvocation getReturnValue:&v10];
    return v10;
  }

  return result;
}

id CallFrameLoadDelegate(void (*a1)(void), WebView *a2, objc_selector *a3, objc_object *a4, double a5, objc_object *a6, objc_object *a7)
{
  result = [(WebView *)a2 _frameLoadDelegateForwarder];
  v18 = a4;
  v19 = a2;
  v17 = a5;
  v15 = a7;
  v16 = a6;
  if (result)
  {
    NSInvocation = WebThreadMakeNSInvocation();
    [NSInvocation setArgument:&v19 atIndex:2];
    [NSInvocation setArgument:&v18 atIndex:3];
    [NSInvocation setArgument:&v17 atIndex:4];
    [NSInvocation setArgument:&v16 atIndex:5];
    [NSInvocation setArgument:&v15 atIndex:6];
    v14 = 0;
    WebThreadCallDelegate();
    result = [objc_msgSend(NSInvocation "methodSignature")];
    if (result)
    {
      [NSInvocation getReturnValue:&v14];
      return v14;
    }
  }

  return result;
}

id CallResourceLoadDelegate(void (*a1)(void), WebView *a2, objc_selector *a3, objc_object *a4, uint64_t a5, objc_object *a6)
{
  result = [(WebView *)a2 _resourceLoadDelegateForwarder];
  v15 = a4;
  v16 = a2;
  v13 = a6;
  v14 = a5;
  if (result)
  {
    NSInvocation = WebThreadMakeNSInvocation();
    [NSInvocation setArgument:&v16 atIndex:2];
    [NSInvocation setArgument:&v15 atIndex:3];
    [NSInvocation setArgument:&v14 atIndex:4];
    [NSInvocation setArgument:&v13 atIndex:5];
    v12 = 0;
    WebThreadCallDelegate();
    result = [objc_msgSend(NSInvocation "methodSignature")];
    if (result)
    {
      [NSInvocation getReturnValue:&v12];
      return v12;
    }
  }

  return result;
}

id CallResourceLoadDelegate(void (*a1)(void), WebView *a2, objc_selector *a3, objc_object *a4, objc_object *a5, uint64_t a6, objc_object *a7)
{
  result = [(WebView *)a2 _resourceLoadDelegateForwarder];
  v18 = a4;
  v19 = a2;
  v16 = a6;
  v17 = a5;
  v15 = a7;
  if (result)
  {
    NSInvocation = WebThreadMakeNSInvocation();
    [NSInvocation setArgument:&v19 atIndex:2];
    [NSInvocation setArgument:&v18 atIndex:3];
    [NSInvocation setArgument:&v17 atIndex:4];
    [NSInvocation setArgument:&v16 atIndex:5];
    [NSInvocation setArgument:&v15 atIndex:6];
    v14 = 0;
    WebThreadCallDelegate();
    result = [objc_msgSend(NSInvocation "methodSignature")];
    if (result)
    {
      [NSInvocation getReturnValue:&v14];
      return v14;
    }
  }

  return result;
}

id CallHistoryDelegate(void (*a1)(void), WebView *a2, objc_selector *a3)
{
  result = a2->_private->historyDelegate;
  v6 = a2;
  if (result)
  {
    NSInvocation = WebThreadMakeNSInvocation();
    [NSInvocation setArgument:&v6 atIndex:2];
    v5 = 0;
    WebThreadCallDelegate();
    result = [objc_msgSend(NSInvocation "methodSignature")];
    if (result)
    {
      [NSInvocation getReturnValue:&v5];
      return v5;
    }
  }

  return result;
}

id CallFormDelegate(WebView *a1, objc_selector *a2, objc_object *a3, objc_object *a4)
{
  v7 = a4;
  v8 = a3;
  result = [(WebView *)a1 _formDelegateForSelector:a2];
  if (result)
  {
    NSInvocation = WebThreadMakeNSInvocation();
    [NSInvocation setArgument:&v8 atIndex:2];
    [NSInvocation setArgument:&v7 atIndex:3];
    v6 = 0;
    WebThreadCallDelegate();
    result = [objc_msgSend(NSInvocation "methodSignature")];
    if (result)
    {
      [NSInvocation getReturnValue:&v6];
      return v6;
    }
  }

  return result;
}

id CallFormDelegate(WebView *a1, objc_selector *a2, objc_object *a3, objc_object *a4, objc_object *a5)
{
  v9 = a4;
  v10 = a3;
  v8 = a5;
  result = [(WebView *)a1 _formDelegateForSelector:a2];
  if (result)
  {
    NSInvocation = WebThreadMakeNSInvocation();
    [NSInvocation setArgument:&v10 atIndex:2];
    [NSInvocation setArgument:&v9 atIndex:3];
    [NSInvocation setArgument:&v8 atIndex:4];
    v7 = 0;
    WebThreadCallDelegate();
    result = [objc_msgSend(NSInvocation "methodSignature")];
    if (result)
    {
      [NSInvocation getReturnValue:&v7];
      return v7;
    }
  }

  return result;
}

id CallFormDelegate(WebView *a1, objc_selector *a2, objc_object *a3, objc_object *a4, objc_object *a5, objc_object *a6, objc_object *a7)
{
  v14 = a3;
  v12 = a5;
  v13 = a4;
  v10 = a7;
  v11 = a6;
  result = [(WebView *)a1 _formDelegateForSelector:a2];
  if (result)
  {
    NSInvocation = WebThreadMakeNSInvocation();
    [NSInvocation setArgument:&v14 atIndex:2];
    [NSInvocation setArgument:&v13 atIndex:3];
    [NSInvocation setArgument:&v12 atIndex:4];
    [NSInvocation setArgument:&v11 atIndex:5];
    [NSInvocation setArgument:&v10 atIndex:6];
    v9 = 0;
    WebThreadCallDelegate();
    result = [objc_msgSend(NSInvocation "methodSignature")];
    if (result)
    {
      [NSInvocation getReturnValue:&v9];
      return v9;
    }
  }

  return result;
}

uint64_t CallFormDelegateReturningBoolean(char a1, WebView *a2, objc_selector *a3, objc_object *a4, objc_selector *a5, objc_object *a6)
{
  v11 = a5;
  v12 = a4;
  v10 = a6;
  if ([(WebView *)a2 _formDelegateForSelector:?])
  {
    NSInvocation = WebThreadMakeNSInvocation();
    [NSInvocation setArgument:&v12 atIndex:2];
    [NSInvocation setArgument:&v11 atIndex:3];
    [NSInvocation setArgument:&v10 atIndex:4];
    v9 = 0;
    WebThreadCallDelegate();
    [NSInvocation getReturnValue:&v9];
    a1 = v9;
  }

  return a1 & 1;
}

void sub_1C7ACBC30(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, WTF *a11, WTF *a12)
{
  if (a12)
  {
    if (*a12 == 1)
    {
      WTF::fastFree(a12, a2);
    }

    else
    {
      --*a12;
    }
  }

  if (a11)
  {
    if (*a11 != 1)
    {
      --*a11;
      _Unwind_Resume(exception_object);
    }

    WTF::fastFree(a11, a2);
  }

  _Unwind_Resume(exception_object);
}

void sub_1C7ACBDF4(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF *a10)
{
  if (a10)
  {
    if (*a10 != 1)
    {
      --*a10;
      _Unwind_Resume(exception_object);
    }

    WTF::fastFree(a10, a2);
  }

  _Unwind_Resume(exception_object);
}

void sub_1C7ACBF9C(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF *a10)
{
  if (a10)
  {
    if (*a10 != 1)
    {
      --*a10;
      _Unwind_Resume(exception_object);
    }

    WTF::fastFree(a10, a2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::default_delete<WebCore::DeviceOrientationClientMock>::operator()[abi:sn200100](void *a1)
{
  v2 = (a1 + 5);
  a1[5] = &unk_1F472A8C8;
  v3 = a1[11];
  a1[11] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  WebCore::TimerBase::~TimerBase(v2);
  v5 = a1[3];
  a1[3] = 0;
  if (!v5)
  {
LABEL_6:
    v6 = a1[1];
    if (!v6)
    {
      goto LABEL_7;
    }

    goto LABEL_11;
  }

  if (*v5 != 1)
  {
    --*v5;
    goto LABEL_6;
  }

  WTF::fastFree(v5, v4);
  v6 = a1[1];
  if (!v6)
  {
    goto LABEL_7;
  }

LABEL_11:
  *(v6 + 8) = 0;
  a1[1] = 0;
  if (atomic_fetch_add(v6, 0xFFFFFFFF) != 1)
  {
LABEL_7:
    v7 = a1;

    return bmalloc::api::tzoneFree(v7, v4);
  }

  atomic_store(1u, v6);
  WTF::fastFree(v6, v4);
  v7 = a1;

  return bmalloc::api::tzoneFree(v7, v4);
}

void WebCore::SecurityOriginData::~SecurityOriginData(WebCore::SecurityOriginData *this, WTF::StringImpl *a2)
{
  if (*(this + 24))
  {
    *(this + 24) = -1;
  }

  else
  {
    v2 = *(this + 1);
    *(this + 1) = 0;
    if (v2 && atomic_fetch_add_explicit(v2, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      v3 = this;
      WTF::StringImpl::destroy(v2, a2);
      this = v3;
    }

    v4 = *this;
    *this = 0;
    if (v4)
    {
      if (atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        v5 = this;
        WTF::StringImpl::destroy(v4, a2);
        this = v5;
      }
    }

    *(this + 24) = -1;
  }
}

uint64_t WebDocumentLoaderMac::WebDocumentLoaderMac()
{
  result = WebCore::DocumentLoader::DocumentLoader();
  *result = &unk_1F472D600;
  *(result + 32) = &unk_1F472D6B0;
  *(result + 40) = &unk_1F472D6E0;
  *(result + 56) = &unk_1F472D738;
  *(result + 3608) = 0;
  *(result + 3616) = 0;
  *(result + 3624) = 0;
  *(result + 3640) = 0;
  *(result + 3632) = 0;
  return result;
}

void WebDocumentLoaderMac::setDataSource(WebDocumentLoaderMac *this, CFTypeRef cf, WebView *a3)
{
  *(this + 451) = cf;
  if (cf && (*(this + 3616) & 1) == 0)
  {
    *(this + 3616) = 1;
    CFRetain(cf);
  }

  v5 = [(WebView *)a3 resourceLoadDelegate];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  v8 = *(this + 453);
  *(this + 453) = v6;
  if (v8)
  {
  }

  v9 = [(WebView *)a3 downloadDelegate];
  v10 = v9;
  if (v9)
  {
    v11 = v9;
  }

  v12 = *(this + 454);
  *(this + 454) = v10;
  if (v12)
  {
  }
}

CFTypeRef WebDocumentLoaderMac::attachToFrame(WebDocumentLoaderMac *this)
{
  result = WebCore::DocumentLoader::attachToFrame(this);
  if ((*(this + 3616) & 1) == 0)
  {
    result = *(this + 451);
    if (result)
    {
      *(this + 3616) = 1;

      return CFRetain(result);
    }
  }

  return result;
}

void WebDocumentLoaderMac::detachFromFrame(uint64_t a1)
{
  WebCore::DocumentLoader::detachFromFrame();
  v2 = *(a1 + 3640);
  if ((!v2 || !*(v2 - 12)) && *(a1 + 3616) == 1)
  {
    *(a1 + 3616) = 0;
    v3 = *(a1 + 3608);

    CFRelease(v3);
  }
}

uint64_t *WebDocumentLoaderMac::increaseLoadCount(uint64_t *result, uint64_t a2)
{
  v2 = result;
  v12 = a2;
  v3 = result[455];
  if (!v3)
  {
LABEL_9:
    result = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::add<(WTF::ShouldValidateKey)1>(result + 455, &v12, &v11);
    if ((v2[452] & 1) == 0)
    {
      result = v2[451];
      if (result)
      {
        *(v2 + 3616) = 1;
        return CFRetain(result);
      }
    }

    return result;
  }

  if (a2 == -1 || !a2)
  {
    __break(0xC471u);
    JUMPOUT(0x1C7ACC5C4);
  }

  v4 = *(v3 - 8);
  v5 = (~(a2 << 32) + a2) ^ ((~(a2 << 32) + a2) >> 22);
  v6 = 9 * ((v5 + ~(v5 << 13)) ^ ((v5 + ~(v5 << 13)) >> 8));
  v7 = (v6 ^ (v6 >> 15)) + ~((v6 ^ (v6 >> 15)) << 27);
  v8 = v4 & ((v7 >> 31) ^ v7);
  v9 = *(v3 + 8 * v8);
  if (v9 != a2)
  {
    v10 = 1;
    while (v9)
    {
      v8 = (v8 + v10) & v4;
      v9 = *(v3 + 8 * v8);
      ++v10;
      if (v9 == a2)
      {
        return result;
      }
    }

    goto LABEL_9;
  }

  return result;
}

void WebDocumentLoaderMac::decreaseLoadCount(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 3640);
  if (!v2)
  {
    return;
  }

  if (a2 == -1 || !a2)
  {
    __break(0xC471u);
    JUMPOUT(0x1C7ACC790);
  }

  v3 = *(v2 - 8);
  v4 = (~(a2 << 32) + a2) ^ ((~(a2 << 32) + a2) >> 22);
  v5 = 9 * ((v4 + ~(v4 << 13)) ^ ((v4 + ~(v4 << 13)) >> 8));
  v6 = (v5 ^ (v5 >> 15)) + ~((v5 ^ (v5 >> 15)) << 27);
  v7 = v3 & ((v6 >> 31) ^ v6);
  v8 = *(v2 + 8 * v7);
  if (v8 == a2)
  {
LABEL_8:
    v10 = *(v2 - 4);
    if (v7 == v10)
    {
      return;
    }

    *(v2 + 8 * v7) = -1;
    v11 = vadd_s32(*(v2 - 16), 0xFFFFFFFF00000001);
    *(v2 - 16) = v11;
    v12 = v11.i32[1];
    if (v10 >= 9 && 6 * v11.i32[1] < v10)
    {
      v13 = (a1 + 3640);
      v14 = a1;
      WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::rehash((a1 + 3640), v10 >> 1, 0);
      a1 = v14;
      if (!*v13)
      {
LABEL_16:
        v15 = *(a1 + 3624);
        *(a1 + 3624) = 0;
        if (v15)
        {
          v16 = a1;

          a1 = v16;
        }

        v17 = *(a1 + 3632);
        *(a1 + 3632) = 0;
        if (v17)
        {
          v18 = a1;

          a1 = v18;
        }

        v19 = *(a1 + 16);
        if ((!v19 || !*(v19 + 8)) && *(a1 + 3616) == 1)
        {
          *(a1 + 3616) = 0;
          v20 = *(a1 + 3608);

          CFRelease(v20);
        }

        return;
      }

      v12 = *(*v13 - 12);
    }

    if (v12)
    {
      return;
    }

    goto LABEL_16;
  }

  v9 = 1;
  while (v8)
  {
    v7 = (v7 + v9) & v3;
    v8 = *(v2 + 8 * v7);
    ++v9;
    if (v8 == a2)
    {
      goto LABEL_8;
    }
  }
}

void WebDocumentLoaderMac::~WebDocumentLoaderMac(WebDocumentLoaderMac *this, void *a2)
{
  *this = &unk_1F472D600;
  *(this + 4) = &unk_1F472D6B0;
  *(this + 5) = &unk_1F472D6E0;
  *(this + 7) = &unk_1F472D738;
  v3 = *(this + 455);
  if (v3)
  {
    WTF::fastFree((v3 - 16), a2);
  }

  v4 = *(this + 454);
  *(this + 454) = 0;
  if (v4)
  {
  }

  v5 = *(this + 453);
  *(this + 453) = 0;
  if (v5)
  {
  }

  WebCore::DocumentLoader::~DocumentLoader(this);
}

{
  *this = &unk_1F472D600;
  *(this + 4) = &unk_1F472D6B0;
  *(this + 5) = &unk_1F472D6E0;
  *(this + 7) = &unk_1F472D738;
  v3 = *(this + 455);
  if (v3)
  {
    WTF::fastFree((v3 - 16), a2);
  }

  v4 = *(this + 454);
  *(this + 454) = 0;
  if (v4)
  {
  }

  v5 = *(this + 453);
  *(this + 453) = 0;
  if (v5)
  {
  }

  WebCore::DocumentLoader::~DocumentLoader(this);

  WTF::fastFree(v6, v7);
}

_DWORD *WebCore::DocumentLoader::deref(_DWORD *this)
{
  if (this[6] == 1)
  {
    return (*(*this + 24))();
  }

  --this[6];
  return this;
}

void non-virtual thunk toWebDocumentLoaderMac::~WebDocumentLoaderMac(WebDocumentLoaderMac *this, void *a2)
{
  v3 = (this - 32);
  *(this - 4) = &unk_1F472D600;
  *this = &unk_1F472D6B0;
  *(this + 1) = &unk_1F472D6E0;
  *(this + 3) = &unk_1F472D738;
  v4 = *(this + 451);
  if (v4)
  {
    WTF::fastFree((v4 - 16), a2);
  }

  v5 = *(this + 450);
  *(this + 450) = 0;
  if (v5)
  {
  }

  v6 = *(this + 449);
  *(this + 449) = 0;
  if (v6)
  {
  }

  WebCore::DocumentLoader::~DocumentLoader(v3);
}

{
  v3 = (this - 32);
  *(this - 4) = &unk_1F472D600;
  *this = &unk_1F472D6B0;
  *(this + 1) = &unk_1F472D6E0;
  *(this + 3) = &unk_1F472D738;
  v4 = *(this + 451);
  if (v4)
  {
    WTF::fastFree((v4 - 16), a2);
  }

  v5 = *(this + 450);
  *(this + 450) = 0;
  if (v5)
  {
  }

  v6 = *(this + 449);
  *(this + 449) = 0;
  if (v6)
  {
  }

  WebCore::DocumentLoader::~DocumentLoader(v3);

  WTF::fastFree(v7, v8);
}

{
  v3 = (this - 40);
  *(this - 5) = &unk_1F472D600;
  *(this - 1) = &unk_1F472D6B0;
  *this = &unk_1F472D6E0;
  *(this + 2) = &unk_1F472D738;
  v4 = *(this + 450);
  if (v4)
  {
    WTF::fastFree((v4 - 16), a2);
  }

  v5 = *(this + 449);
  *(this + 449) = 0;
  if (v5)
  {
  }

  v6 = *(this + 448);
  *(this + 448) = 0;
  if (v6)
  {
  }

  WebCore::DocumentLoader::~DocumentLoader(v3);
}

{
  v3 = (this - 40);
  *(this - 5) = &unk_1F472D600;
  *(this - 1) = &unk_1F472D6B0;
  *this = &unk_1F472D6E0;
  *(this + 2) = &unk_1F472D738;
  v4 = *(this + 450);
  if (v4)
  {
    WTF::fastFree((v4 - 16), a2);
  }

  v5 = *(this + 449);
  *(this + 449) = 0;
  if (v5)
  {
  }

  v6 = *(this + 448);
  *(this + 448) = 0;
  if (v6)
  {
  }

  WebCore::DocumentLoader::~DocumentLoader(v3);

  WTF::fastFree(v7, v8);
}

{
  v3 = (this - 56);
  *(this - 7) = &unk_1F472D600;
  *(this - 3) = &unk_1F472D6B0;
  *(this - 2) = &unk_1F472D6E0;
  *this = &unk_1F472D738;
  v4 = *(this + 448);
  if (v4)
  {
    WTF::fastFree((v4 - 16), a2);
  }

  v5 = *(this + 447);
  *(this + 447) = 0;
  if (v5)
  {
  }

  v6 = *(this + 446);
  *(this + 446) = 0;
  if (v6)
  {
  }

  WebCore::DocumentLoader::~DocumentLoader(v3);
}

{
  v3 = (this - 56);
  *(this - 7) = &unk_1F472D600;
  *(this - 3) = &unk_1F472D6B0;
  *(this - 2) = &unk_1F472D6E0;
  *this = &unk_1F472D738;
  v4 = *(this + 448);
  if (v4)
  {
    WTF::fastFree((v4 - 16), a2);
  }

  v5 = *(this + 447);
  *(this + 447) = 0;
  if (v5)
  {
  }

  v6 = *(this + 446);
  *(this + 446) = 0;
  if (v6)
  {
  }

  WebCore::DocumentLoader::~DocumentLoader(v3);

  WTF::fastFree(v7, v8);
}

uint64_t non-virtual thunk toWebCore::DocumentLoader::deref(uint64_t this)
{
  if (*(this - 16) == 1)
  {
    return (*(*(this - 40) + 24))();
  }

  --*(this - 16);
  return this;
}

uint64_t *WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::add<(WTF::ShouldValidateKey)1>@<X0>(uint64_t *result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a2;
  if (*a2 == -1 || !v4)
  {
    __break(0xC471u);
    JUMPOUT(0x1C7ACD160);
  }

  v5 = result;
  v6 = *result;
  if (!*result)
  {
    v7 = a2;
    result = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::rehash(result, 8u, 0);
    a2 = v7;
    v6 = *v5;
    v4 = *v7;
  }

  v8 = *(v6 - 8);
  v9 = (v4 + ~(v4 << 32)) ^ ((v4 + ~(v4 << 32)) >> 22);
  v10 = 9 * ((v9 + ~(v9 << 13)) ^ ((v9 + ~(v9 << 13)) >> 8));
  v11 = (v10 ^ (v10 >> 15)) + ~((v10 ^ (v10 >> 15)) << 27);
  v12 = v8 & ((v11 >> 31) ^ v11);
  v13 = (v6 + 8 * v12);
  v14 = *v13;
  if (*v13)
  {
    v15 = 0;
    v16 = 1;
    do
    {
      if (v14 == v4)
      {
        v22 = v6 + 8 * *(v6 - 4);
        *a3 = v13;
        *(a3 + 8) = v22;
        *(a3 + 16) = 0;
        return result;
      }

      if (v14 == -1)
      {
        v15 = v13;
      }

      v12 = (v12 + v16) & v8;
      v13 = (v6 + 8 * v12);
      v14 = *v13;
      ++v16;
    }

    while (*v13);
    if (v15)
    {
      *v15 = 0;
      --*(*v5 - 16);
      v4 = *a2;
      v13 = v15;
    }
  }

  *v13 = v4;
  v17 = *v5;
  if (*v5)
  {
    v18 = *(v17 - 16);
    v19 = *(v17 - 12) + 1;
    *(v17 - 12) = v19;
    v20 = (v18 + v19);
    v21 = *(v17 - 4);
    if (v21 <= 0x400)
    {
      goto LABEL_15;
    }

LABEL_21:
    if (v21 > 2 * v20)
    {
      goto LABEL_24;
    }

    goto LABEL_22;
  }

  v19 = 1;
  MEMORY[0xFFFFFFFFFFFFFFF4] = 1;
  v20 = (MEMORY[0xFFFFFFFFFFFFFFF0] + 1);
  v21 = MEMORY[0xFFFFFFFFFFFFFFFC];
  if (MEMORY[0xFFFFFFFFFFFFFFFC] > 0x400u)
  {
    goto LABEL_21;
  }

LABEL_15:
  if (3 * v21 <= 4 * v20)
  {
    if (!v21)
    {
      result = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::rehash(v5, 8u, v13);
      v13 = result;
      v17 = *v5;
      if (!*v5)
      {
LABEL_18:
        v21 = 0;
        goto LABEL_24;
      }

LABEL_23:
      v21 = *(v17 - 4);
      goto LABEL_24;
    }

LABEL_22:
    result = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::rehash(v5, v21 << (6 * v19 >= (2 * v21)), v13);
    v13 = result;
    v17 = *v5;
    if (!*v5)
    {
      goto LABEL_18;
    }

    goto LABEL_23;
  }

LABEL_24:
  *a3 = v13;
  *(a3 + 8) = v17 + 8 * v21;
  *(a3 + 16) = 1;
  return result;
}

void *WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ResourceLoaderIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::rehash(uint64_t *a1, unsigned int a2, uint64_t *a3)
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

  v9 = WTF::fastZeroedMalloc((8 * a2 + 16));
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
      v13 = (v6 + 8 * v11);
      v14 = *v13;
      if ((*v13 + 1) >= 2)
      {
        v15 = *a1;
        v16 = *a1 ? *(v15 - 8) : 0;
        v17 = (v14 + ~(v14 << 32)) ^ ((v14 + ~(v14 << 32)) >> 22);
        v18 = 9 * ((v17 + ~(v17 << 13)) ^ ((v17 + ~(v17 << 13)) >> 8));
        v19 = (v18 ^ (v18 >> 15)) + ~((v18 ^ (v18 >> 15)) << 27);
        v20 = v16 & ((v19 >> 31) ^ v19);
        v21 = 1;
        do
        {
          v22 = v20;
          v23 = *(v15 + 8 * v20);
          v20 = (v20 + v21++) & v16;
        }

        while (v23);
        v24 = (v15 + 8 * v22);
        *v24 = v14;
        if (v13 == a3)
        {
          v12 = v24;
        }
      }

      ++v11;
    }

    while (v11 != v7);
  }

  else
  {
    v12 = 0;
  }

  if (v6)
  {
    WTF::fastFree((v6 - 16), v10);
  }

  return v12;
}

void sub_1C7ACD4C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if (v12)
  {

    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_1C7ACD668(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  if (a14)
  {
    (*(*a14 + 8))(a14);
    v15 = a9;
    if (!a9)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else
  {
    v15 = a9;
    if (!a9)
    {
      goto LABEL_3;
    }
  }

  _Unwind_Resume(exception_object);
}

void sub_1C7ACD7A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if (v12)
  {
  }

  if (v13)
  {

    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_1C7ACD928(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if (v12)
  {

    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_1C7ACDAB0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  if (a14)
  {
    (*(*a14 + 8))(a14);
  }

  _Unwind_Resume(exception_object);
}

void sub_1C7ACDBB0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if (v12)
  {
  }

  if (v13)
  {

    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_1C7ACDCE8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if (v12)
  {
  }

  if (v13)
  {

    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_1C7ACDE08(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if (v12)
  {

    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_1C7ACDF2C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if (v12)
  {
  }

  if (v13)
  {

    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void WebDragClient::declareAndWriteDragImage(WebDragClient *this, const WTF::String *a2, WebCore::Element *a3, const WTF::URL *a4, const WTF::String *a5, WebCore::LocalFrame *a6)
{
  v6 = *(*(*(a3 + 6) + 8) + 552);
  if (!v6)
  {
    return;
  }

  v7 = *(v6 + 8);
  if (!v7)
  {
    return;
  }

  ++*(v7 + 16);
  v8 = *(v7 + 224);
  if (v8)
  {
    *(v8 + 7) += 2;
  }

  WebCore::Document::editor(v8);
  if (v8)
  {
    if (*(v8 + 7) == 2)
    {
      WebCore::Node::removedLastRef(v8);
      v10 = *(v7 + 24);
      if (!v10)
      {
        goto LABEL_14;
      }

      goto LABEL_11;
    }

    *(v8 + 7) -= 2;
  }

  v10 = *(v7 + 24);
  if (!v10)
  {
LABEL_14:
    v12 = 0;
    v14 = 0;
    v13 = 0;
    v15 = WebCore::PagePasteboardContext::operator new(unsigned long)::s_heapRef;
    if (WebCore::PagePasteboardContext::operator new(unsigned long)::s_heapRef)
    {
      goto LABEL_15;
    }

    goto LABEL_13;
  }

LABEL_11:
  v11 = *(v10 + 8);
  if (!v11)
  {
    goto LABEL_14;
  }

  v12 = *(v11 + 40) & 0xFFFFFFFFFFFFFF00;
  v13 = *(v11 + 40);
  v14 = *(v11 + 48);
  v15 = WebCore::PagePasteboardContext::operator new(unsigned long)::s_heapRef;
  if (WebCore::PagePasteboardContext::operator new(unsigned long)::s_heapRef)
  {
LABEL_15:
    NonCompact = bmalloc::api::tzoneAllocateNonCompact(v15, v9);
    goto LABEL_16;
  }

LABEL_13:
  NonCompact = bmalloc::api::tzoneAllocateNonCompactSlow();
LABEL_16:
  *NonCompact = &unk_1F472D980;
  *(NonCompact + 8) = v13 | v12;
  *(NonCompact + 16) = v14;
  v17 = NonCompact;
  WebCore::Pasteboard::createForDragAndDrop();
  WebCore::Editor::writeImageToPasteboard();
  if (v18)
  {
    (*(*v18 + 8))();
  }

  if (v17)
  {
    (*(*v17 + 8))(v17);
  }

  if (*(v7 + 16) == 1)
  {
    (*(*v7 + 8))(v7);
  }

  else
  {
    --*(v7 + 16);
  }
}

void sub_1C7ACEBEC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    (*(*a10 + 8))(a10);
  }

  if (a9)
  {
    (*(*a9 + 8))(a9);
  }

  if (v10[4] == 1)
  {
    (*(*v10 + 8))(v10);
    _Unwind_Resume(exception_object);
  }

  --v10[4];
  _Unwind_Resume(exception_object);
}

void WebEditorClient::WebEditorClient(WebEditorClient *this, WebView *a2)
{
  *(this + 4) = 0;
  *this = &unk_1F472D9A8;
  *(this + 1) = 0;
  *(this + 3) = &unk_1F472DCA0;
  *(this + 4) = a2;
  v3 = objc_alloc_init(WebEditorUndoTarget);
  *(this + 7) = 0;
  *(this + 5) = v3;
  *(this + 48) = 0;
  *(this + 32) = 0;
  WebCore::VisibleSelection::VisibleSelection((this + 72));
  *(this + 44) = 2;
}

void sub_1C7ACEFD4(_Unwind_Exception *a1, void *a2)
{
  v4 = v3;
  WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::TextCheckingRequestIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebCore::TextCheckingRequest,WTF::RawPtrTraits<WebCore::TextCheckingRequest>,WTF::DefaultRefDerefTraits<WebCore::TextCheckingRequest>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::TextCheckingRequestIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::TextCheckingRequestIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebCore::TextCheckingRequest,WTF::RawPtrTraits<WebCore::TextCheckingRequest>,WTF::DefaultRefDerefTraits<WebCore::TextCheckingRequest>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::~HashMap(v4, a2);
  v7 = *(v2 + 5);
  *(v2 + 5) = 0;
  if (v7)
  {

    WebCore::EditorClient::~EditorClient(v2, v8);
    _Unwind_Resume(a1);
  }

  WebCore::EditorClient::~EditorClient(v2, v6);
  _Unwind_Resume(a1);
}

void WebCore::EditorClient::~EditorClient(WebCore::EditorClient *this, void *a2)
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

void WebEditorClient::~WebEditorClient(WebEditorClient *this)
{
  WebCore::VisibleSelection::~VisibleSelection((this + 72));
  v3 = *(this + 7);
  if (v3)
  {
    v4 = *(v3 - 4);
    if (v4)
    {
      v5 = (v3 + 8);
      do
      {
        if (*(v5 - 1) != -1)
        {
          v6 = *v5;
          *v5 = 0;
          if (v6)
          {
            if (v6[2] == 1)
            {
              (*(*v6 + 8))(v6);
            }

            else
            {
              --v6[2];
            }
          }
        }

        v5 += 2;
        --v4;
      }

      while (v4);
    }

    WTF::fastFree((v3 - 16), v2);
  }

  v7 = *(this + 5);
  *(this + 5) = 0;
  if (v7)
  {
  }

  v8 = *(this + 1);
  if (v8)
  {
    *(v8 + 8) = 0;
    *(this + 1) = 0;
    if (atomic_fetch_add(v8, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v8);
      WTF::fastFree(v8, v2);
    }
  }
}

{
  WebEditorClient::~WebEditorClient(this);

  bmalloc::api::tzoneFree(v1, v2);
}

void non-virtual thunk toWebEditorClient::~WebEditorClient(WebEditorClient *this)
{
  WebEditorClient::~WebEditorClient((this - 24));
}

{
  WebEditorClient::~WebEditorClient((this - 24));

  bmalloc::api::tzoneFree(v1, v2);
}

uint64_t WebEditorClient::shouldDeleteRange(uint64_t a1)
{
  v2 = [*(a1 + 32) _editingDelegateForwarder];
  v3 = *(a1 + 32);
  WebCore::createLiveRange();
  v4 = kit(v6);
  if (v6)
  {
    if (*(v6 + 2) == 1)
    {
      (*(*v6 + 8))();
    }

    else
    {
      --*(v6 + 2);
    }
  }

  return [v2 webView:v3 shouldDeleteDOMRange:v4];
}

void sub_1C7ACF29C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, _DWORD *a10)
{
  if (a10)
  {
    if (a10[2] != 1)
    {
      --a10[2];
      _Unwind_Resume(exception_object);
    }

    (*(*a10 + 8))(a10);
  }

  _Unwind_Resume(exception_object);
}

void *WebEditorClient::smartInsertDeleteEnabled(WebEditorClient *this)
{
  result = *(this + 4);
  if (result)
  {
    [result page];
    if (v2)
    {
      return ((*(*(v2 + 120) + 720) >> 4) & 1);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void *WebEditorClient::isSelectTrailingWhitespaceEnabled(WebEditorClient *this)
{
  result = *(this + 4);
  if (result)
  {
    [result page];
    if (v2)
    {
      return (*(*(v2 + 120) + 715) >> 7);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t WebEditorClient::shouldApplyStyle(uint64_t a1, WebCore::StyleProperties *a2)
{
  v4 = [*(a1 + 32) _editingDelegateForwarder];
  v5 = *(a1 + 32);
  WebCore::StyleProperties::mutableCopy(&v15, a2);
  v6 = WebCore::MutableStyleProperties::ensureCSSStyleProperties(v15);
  v7 = kit(v6);
  WebCore::createLiveRange();
  v8 = kit(v16);
  v9 = v16;
  v16 = 0;
  if (v9)
  {
    if (*(v9 + 2) == 1)
    {
      (*(*v9 + 8))(v9);
    }

    else
    {
      --*(v9 + 2);
    }
  }

  result = [v4 webView:v5 shouldApplyStyle:v7 toElementsInDOMRange:v8];
  v11 = v15;
  v15 = 0;
  if (v11)
  {
    if (*v11 == 1)
    {
      v12 = result;
      WebCore::MutableStyleProperties::~MutableStyleProperties(v11);
      WTF::fastFree(v13, v14);
      return v12;
    }

    else
    {
      --*v11;
    }
  }

  return result;
}

void sub_1C7ACF4A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, WebCore::MutableStyleProperties *a9, _DWORD *a10)
{
  v11 = a10;
  a10 = 0;
  if (v11)
  {
    if (v11[2] == 1)
    {
      (*(*v11 + 8))(v11);
      WTF::Ref<WebCore::MutableStyleProperties,WTF::RawPtrTraits<WebCore::MutableStyleProperties>,WTF::DefaultRefDerefTraits<WebCore::MutableStyleProperties>>::~Ref(&a9);
      _Unwind_Resume(a1);
    }

    --v11[2];
    WTF::Ref<WebCore::MutableStyleProperties,WTF::RawPtrTraits<WebCore::MutableStyleProperties>,WTF::DefaultRefDerefTraits<WebCore::MutableStyleProperties>>::~Ref(&a9);
    _Unwind_Resume(a1);
  }

  WTF::Ref<WebCore::MutableStyleProperties,WTF::RawPtrTraits<WebCore::MutableStyleProperties>,WTF::DefaultRefDerefTraits<WebCore::MutableStyleProperties>>::~Ref(&a9);
  _Unwind_Resume(a1);
}

uint64_t WebEditorClient::shouldMoveRangeAfterDelete(id *this, WebCore::Node **a2, WebCore::Node **a3)
{
  v6 = [this[4] _editingDelegateForwarder];
  v7 = this[4];
  v8 = *a2;
  *(v8 + 7) = *(*a2 + 7) + 2;
  v24 = v8;
  v9 = a2[2];
  *(v9 + 7) += 2;
  v25 = v9;
  WebCore::createLiveRange();
  v10 = kit(v21);
  if (v21)
  {
    if (*(v21 + 2) == 1)
    {
      (*(*v21 + 8))();
    }

    else
    {
      --*(v21 + 2);
    }
  }

  v11 = *a3;
  *(v11 + 7) = *(*a3 + 7) + 2;
  v22 = v11;
  v12 = a3[2];
  *(v12 + 7) += 2;
  v23 = v12;
  WebCore::createLiveRange();
  v13 = kit(v26);
  if (v26)
  {
    if (*(v26 + 2) == 1)
    {
      (*(*v26 + 8))();
    }

    else
    {
      --*(v26 + 2);
    }
  }

  result = [v6 webView:v7 shouldMoveRangeAfterDelete:v10 replacingRange:v13];
  if (v23)
  {
    if (*(v23 + 7) == 2)
    {
      v16 = result;
      WebCore::Node::removedLastRef(v23);
      result = v16;
      v15 = v22;
      if (!v22)
      {
        goto LABEL_18;
      }

      goto LABEL_13;
    }

    *(v23 + 7) -= 2;
  }

  v15 = v22;
  if (!v22)
  {
    goto LABEL_18;
  }

LABEL_13:
  if (*(v15 + 7) == 2)
  {
    v17 = result;
    WebCore::Node::removedLastRef(v15);
    result = v17;
  }

  else
  {
    *(v15 + 7) -= 2;
  }

LABEL_18:
  if (v25)
  {
    if (*(v25 + 7) == 2)
    {
      v19 = result;
      WebCore::Node::removedLastRef(v25);
      result = v19;
      v18 = v24;
      if (!v24)
      {
        return result;
      }

      goto LABEL_22;
    }

    *(v25 + 7) -= 2;
  }

  v18 = v24;
  if (!v24)
  {
    return result;
  }

LABEL_22:
  if (*(v18 + 7) == 2)
  {
    v20 = result;
    WebCore::Node::removedLastRef(v18);
    return v20;
  }

  else
  {
    *(v18 + 7) -= 2;
  }

  return result;
}

void sub_1C7ACF7B0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v5 = va_arg(va1, WebCore::Node *);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v4 = *(v2 - 40);
  *(v2 - 40) = 0;
  if (v4)
  {
    if (v4[2] == 1)
    {
      (*(*v4 + 8))(v4);
    }

    else
    {
      --v4[2];
    }
  }

  std::optional<WebCore::SimpleRange>::~optional(va);
  std::optional<WebCore::SimpleRange>::~optional(va1);
  _Unwind_Resume(a1);
}

uint64_t WebEditorClient::shouldBeginEditing(id *this, WebCore::Node **a2)
{
  v4 = [this[4] _editingDelegateForwarder];
  v5 = this[4];
  v6 = *a2;
  *(v6 + 7) = *(*a2 + 7) + 2;
  v13 = v6;
  LODWORD(v15) = *(a2 + 2);
  v7 = a2[2];
  *(v7 + 7) += 2;
  v16 = v7;
  WebCore::createLiveRange();
  v8 = kit(v17);
  if (v17)
  {
    if (*(v17 + 2) == 1)
    {
      (*(*v17 + 8))();
    }

    else
    {
      --*(v17 + 2);
    }
  }

  result = [v4 webView:v5 shouldBeginEditingInDOMRange:{v8, v13, v15}];
  if (v16)
  {
    if (*(v16 + 7) == 2)
    {
      v11 = result;
      WebCore::Node::removedLastRef(v16);
      result = v11;
      v10 = v14;
      if (!v14)
      {
        return result;
      }

      goto LABEL_9;
    }

    *(v16 + 7) -= 2;
  }

  v10 = v14;
  if (!v14)
  {
    return result;
  }

LABEL_9:
  if (*(v10 + 7) == 2)
  {
    v12 = result;
    WebCore::Node::removedLastRef(v10);
    return v12;
  }

  else
  {
    *(v10 + 7) -= 2;
  }

  return result;
}

void sub_1C7ACFA08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, WebCore::Node *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, _DWORD *a14)
{
  v15 = a14;
  a14 = 0;
  if (v15)
  {
    if (v15[2] == 1)
    {
      (*(*v15 + 8))(v15);
      std::optional<WebCore::SimpleRange>::~optional(&a9);
      _Unwind_Resume(a1);
    }

    --v15[2];
    std::optional<WebCore::SimpleRange>::~optional(&a9);
    _Unwind_Resume(a1);
  }

  std::optional<WebCore::SimpleRange>::~optional(&a9);
  _Unwind_Resume(a1);
}

uint64_t WebEditorClient::shouldEndEditing(id *this, WebCore::Node **a2)
{
  v4 = [this[4] _editingDelegateForwarder];
  v5 = this[4];
  v6 = *a2;
  *(v6 + 7) = *(*a2 + 7) + 2;
  v13 = v6;
  LODWORD(v15) = *(a2 + 2);
  v7 = a2[2];
  *(v7 + 7) += 2;
  v16 = v7;
  WebCore::createLiveRange();
  v8 = kit(v17);
  if (v17)
  {
    if (*(v17 + 2) == 1)
    {
      (*(*v17 + 8))();
    }

    else
    {
      --*(v17 + 2);
    }
  }

  result = [v4 webView:v5 shouldEndEditingInDOMRange:{v8, v13, v15}];
  if (v16)
  {
    if (*(v16 + 7) == 2)
    {
      v11 = result;
      WebCore::Node::removedLastRef(v16);
      result = v11;
      v10 = v14;
      if (!v14)
      {
        return result;
      }

      goto LABEL_9;
    }

    *(v16 + 7) -= 2;
  }

  v10 = v14;
  if (!v14)
  {
    return result;
  }

LABEL_9:
  if (*(v10 + 7) == 2)
  {
    v12 = result;
    WebCore::Node::removedLastRef(v10);
    return v12;
  }

  else
  {
    *(v10 + 7) -= 2;
  }

  return result;
}

void sub_1C7ACFBF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, WebCore::Node *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, _DWORD *a14)
{
  v15 = a14;
  a14 = 0;
  if (v15)
  {
    if (v15[2] == 1)
    {
      (*(*v15 + 8))(v15);
      std::optional<WebCore::SimpleRange>::~optional(&a9);
      _Unwind_Resume(a1);
    }

    --v15[2];
    std::optional<WebCore::SimpleRange>::~optional(&a9);
    _Unwind_Resume(a1);
  }

  std::optional<WebCore::SimpleRange>::~optional(&a9);
  _Unwind_Resume(a1);
}

uint64_t WebEditorClient::shouldInsertText(uint64_t a1, atomic_uint **a2, uint64_t a3, int a4)
{
  v6 = *(a1 + 32);
  v7 = [v6 _editingDelegateForwarder];
  v8 = *a2;
  if (v8)
  {
    atomic_fetch_add_explicit(v8, 2u, memory_order_relaxed);
    MEMORY[0x1CCA63450](&v18, v8);
    if (atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v8, v9);
    }
  }

  else
  {
    v18 = &stru_1F472E7E8;
    v17 = &stru_1F472E7E8;
  }

  v10 = v18;
  WebCore::createLiveRange();
  v11 = kit(v19);
  v12 = v19;
  v19 = 0;
  if (v12)
  {
    if (*(v12 + 2) == 1)
    {
      (*(*v12 + 8))(v12);
    }

    else
    {
      --*(v12 + 2);
    }
  }

  if (a4 == 2)
  {
    v13 = 2;
  }

  else
  {
    v13 = a4 == 1;
  }

  result = [v7 webView:v6 shouldInsertText:v10 replacingDOMRange:v11 givenAction:{v13, v18, v19}];
  v15 = v18;
  v18 = 0;
  if (v15)
  {
    v16 = result;

    return v16;
  }

  return result;
}

void sub_1C7ACFDA8(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v10, a2);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t WebEditorClient::shouldChangeSelectedRange(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, uint64_t a5)
{
  v7 = *(a1 + 32);
  WebCore::createLiveRange();
  v8 = kit(v11);
  if (v11)
  {
    if (*(v11 + 2) == 1)
    {
      (*(*v11 + 8))();
    }

    else
    {
      --*(v11 + 2);
    }
  }

  WebCore::createLiveRange();
  v9 = kit(0);

  return [v7 _shouldChangeSelectedDOMRange:v8 toDOMRange:v9 affinity:a4 stillSelecting:a5];
}

void sub_1C7ACFF5C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, _DWORD *a10)
{
  if (a10)
  {
    if (a10[2] != 1)
    {
      --a10[2];
      _Unwind_Resume(exception_object);
    }

    (*(*a10 + 8))(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t WebEditorClient::stopDelayingAndCoalescingContentChangeNotifications(uint64_t this)
{
  v1 = this;
  *(this + 64) = 0;
  if (*(this + 65) == 1)
  {
    this = WebThreadPostNotification();
  }

  *(v1 + 65) = 0;
  return this;
}

uint64_t WebEditorClient::respondToChangedContents(uint64_t this)
{
  if (*(this + 64) != 1)
  {
    return WebThreadPostNotification();
  }

  *(this + 65) = 1;
  return this;
}

uint64_t WebEditorClient::respondToChangedSelection(uint64_t this, WebCore::LocalFrame *a2)
{
  if (!a2)
  {
    return this;
  }

  v3 = this;
  v4 = *(a2 + 28);
  if (v4)
  {
    *(v4 + 7) += 2;
  }

  this = WebCore::Document::editor(v4);
  if (v4)
  {
    if (*(v4 + 7) == 2)
    {
      v5 = this;
      this = WebCore::Node::removedLastRef(v4);
      if (*(v5 + 488))
      {
        return this;
      }

      goto LABEL_10;
    }

    *(v4 + 7) -= 2;
  }

  if (*(this + 488))
  {
    return this;
  }

LABEL_10:
  v6 = *(*(a2 + 26) + 16);
  if ((*(*v6 + 1032))(v6))
  {
    v7 = 0;
  }

  else
  {
    v7 = v6[3];
  }

  v8 = [objc_msgSend(v7 "frameView")];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v8 _selectionChanged];
    [*(v3 + 32) updateTouchBar];
    *(v3 + 176) = [v8 _isEditable];
  }

  this = [*(v3 + 32) _isClosing];
  if ((this & 1) == 0)
  {

    return WebThreadPostNotification();
  }

  return this;
}

void sub_1C7AD01BC(_Unwind_Exception *exception_object)
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

uint64_t WebEditorClient::shouldInsertNode(uint64_t a1, WebCore::Node *a2, uint64_t a3, int a4)
{
  v7 = [*(a1 + 32) _editingDelegateForwarder];
  v8 = *(a1 + 32);
  v9 = kit(a2);
  WebCore::createLiveRange();
  v10 = kit(v12);
  if (v12)
  {
    if (*(v12 + 2) == 1)
    {
      (*(*v12 + 8))();
    }

    else
    {
      --*(v12 + 2);
    }
  }

  return [v7 webView:v8 shouldInsertNode:v9 replacingDOMRange:v10 givenAction:a4];
}

void sub_1C7AD0320(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, _DWORD *a10)
{
  if (a10)
  {
    if (a10[2] != 1)
    {
      --a10[2];
      _Unwind_Resume(exception_object);
    }

    (*(*a10 + 8))(a10);
  }

  _Unwind_Resume(exception_object);
}

void WebEditorClient::registerUndoOrRedoStep(id *this, UndoStep *a2, int a3)
{
  v6 = [this[4] undoManager];
  if ([v6 isUndoing])
  {
    v7 = a3 == 0;
  }

  else
  {
    v7 = 0;
  }

  if (!v7 && (![v6 isRedoing] || (a3 & 1) == 0))
  {
    (*(*a2 + 40))(&v17, a2);
    v8 = v17;
    if (v17)
    {
      atomic_fetch_add_explicit(v17, 2u, memory_order_relaxed);
      MEMORY[0x1CCA63450](&v18, v8);
      if (atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v8, v9);
      }
    }

    else
    {
      v18 = &stru_1F472E7E8;
      v16 = &stru_1F472E7E8;
    }

    v10 = v17;
    v17 = 0;
    if (v10 && atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v10, v9);
    }

    v11 = this[5];
    ++*(a2 + 2);
    v17 = a2;
    v12 = [WebUndoStep stepWithUndoStep:&v17];
    if (a3)
    {
      v13 = sel_redoEditing_;
    }

    else
    {
      v13 = sel_undoEditing_;
    }

    [v6 registerUndoWithTarget:v11 selector:v13 object:v12];
    v14 = v17;
    v17 = 0;
    if (v14)
    {
      if (*(v14 + 2) == 1)
      {
        (*(*v14 + 8))(v14);
        if (v18)
        {
LABEL_20:
          [v6 setActionName:v17];
          v15 = v18;
          *(this + 48) = 1;
          v18 = 0;
          if (v15)
          {
          }

          return;
        }

LABEL_23:
        *(this + 48) = 1;
        return;
      }

      --*(v14 + 2);
    }

    if (v18)
    {
      goto LABEL_20;
    }

    goto LABEL_23;
  }
}

void sub_1C7AD0544(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, uint64_t a10)
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

uint64_t WebEditorClient::updateEditorStateAfterLayoutIfEditabilityChanged(uint64_t this)
{
  if (*(this + 176) != 2)
  {
    v1 = this;
    this = [*(this + 32) _selectedOrMainFrame];
    if (this)
    {
      v2 = *(*(this + 8) + 8);
      if (v2)
      {
        v3 = *(*(v2 + 208) + 16);
        v4 = ((*(*v3 + 1032))(v3) & 1) != 0 ? 0 : v3[3];
        v5 = [objc_msgSend(v4 "frameView")];
        objc_opt_class();
        this = objc_opt_isKindOfClass();
        if (this)
        {
          this = [v5 _isEditable];
          if (*(v1 + 176) != this)
          {
            v6 = *(v1 + 32);

            return [v6 updateTouchBar];
          }
        }
      }
    }
  }

  return this;
}

uint64_t WebEditorClient::clearUndoRedoOperations(uint64_t this)
{
  if (*(this + 48) == 1)
  {
    v1 = this;
    v2 = [*(this + 32) undoManager];
    v3 = [v2 groupingLevel];
    v4 = v3;
    if (v3 < 1)
    {
      this = [v2 removeAllActionsWithTarget:*(v1 + 40)];
    }

    else
    {
      v5 = v3;
      do
      {
        [v2 endUndoGrouping];
        --v5;
      }

      while (v5);
      [v2 removeAllActionsWithTarget:*(v1 + 40)];
      do
      {
        this = [v2 beginUndoGrouping];
        --v4;
      }

      while (v4);
    }

    *(v1 + 48) = 0;
  }

  return this;
}

uint64_t WebEditorClient::canUndo(id *this)
{
  v1 = [this[4] undoManager];

  return [v1 canUndo];
}

uint64_t WebEditorClient::canRedo(id *this)
{
  v1 = [this[4] undoManager];

  return [v1 canRedo];
}

uint64_t WebEditorClient::undo(id *this)
{
  result = [objc_msgSend(this[4] "undoManager")];
  if (result)
  {
    v3 = [this[4] undoManager];

    return [v3 undo];
  }

  return result;
}

uint64_t WebEditorClient::redo(id *this)
{
  result = [objc_msgSend(this[4] "undoManager")];
  if (result)
  {
    v3 = [this[4] undoManager];

    return [v3 redo];
  }

  return result;
}

uint64_t WebEditorClient::handleKeyboardEvent(WebEditorClient *this, WebCore::KeyboardEvent *a2)
{
  v3 = *(a2 + 7);
  if (v3 && (*(v3 + 22) & 2) == 0)
  {
    result = 105;
    __break(0xC471u);
    return result;
  }

  v4 = *(*(*(v3 + 48) + 8) + 552);
  if (!v4 || (v5 = *(v4 + 8)) == 0 || (v6 = *(*(v5 + 208) + 16), ((*(*v6 + 129))(v6) & 1) != 0))
  {
    result = [objc_msgSend(objc_msgSend(0 "frameView")];
    if (!result)
    {
      return result;
    }

    goto LABEL_7;
  }

  result = [objc_msgSend(objc_msgSend(v6[3] "frameView")];
  if (result)
  {
LABEL_7:
    *(a2 + 7) |= 0x80u;
  }

  return result;
}

objc_object *WebEditorClient::textFieldDidBeginEditing(objc_object *this, WebCore::Element *a2)
{
  if ((*(a2 + 16) & 0x10) != 0 && *(*(a2 + 13) + 24) == *(*MEMORY[0x1E69E2C70] + 24))
  {
    v2 = this;
    this = kit(a2);
    if (this)
    {
      v4 = a2;
      v5 = this;
      v6 = *(v2 + 32);
      v7 = *(*(*(v4 + 6) + 8) + 552);
      if (v7 && (v8 = *(v7 + 8)) != 0 && (v9 = *(*(v8 + 208) + 16), ((*(*v9 + 1032))(v9) & 1) == 0))
      {
        v10 = v9[3];
      }

      else
      {
        v10 = 0;
      }

      return CallFormDelegate(v6, sel_textFieldDidBeginEditing_inFrame_, v5, v10);
    }
  }

  return this;
}

objc_object *WebEditorClient::textFieldDidEndEditing(objc_object *this, WebCore::Element *a2)
{
  if ((*(a2 + 16) & 0x10) != 0 && *(*(a2 + 13) + 24) == *(*MEMORY[0x1E69E2C70] + 24))
  {
    v2 = this;
    this = kit(a2);
    if (this)
    {
      v4 = a2;
      v5 = this;
      v6 = *(v2 + 32);
      v7 = *(*(*(v4 + 6) + 8) + 552);
      if (v7 && (v8 = *(v7 + 8)) != 0 && (v9 = *(*(v8 + 208) + 16), ((*(*v9 + 1032))(v9) & 1) == 0))
      {
        v10 = v9[3];
      }

      else
      {
        v10 = 0;
      }

      return CallFormDelegate(v6, sel_textFieldDidEndEditing_inFrame_, v5, v10);
    }
  }

  return this;
}

objc_object *WebEditorClient::textDidChangeInTextField(objc_object *this, WebCore::Element *a2)
{
  if ((*(a2 + 16) & 0x10) != 0 && *(*(a2 + 13) + 24) == *(*MEMORY[0x1E69E2C70] + 24))
  {
    v2 = this;
    this = kit(a2);
    if (this)
    {
      v4 = a2;
      v5 = this;
      v6 = *(v2 + 32);
      v7 = *(*(*(v4 + 6) + 8) + 552);
      if (v7 && (v8 = *(v7 + 8)) != 0 && (v9 = *(*(v8 + 208) + 16), ((*(*v9 + 1032))(v9) & 1) == 0))
      {
        v10 = v9[3];
      }

      else
      {
        v10 = 0;
      }

      return CallFormDelegate(v6, sel_textDidChangeInTextField_inFrame_, v5, v10);
    }
  }

  return this;
}

uint64_t WebEditorClient::doTextFieldCommandFromEvent(WebEditorClient *this, WebCore::Element *a2, WebCore::KeyboardEvent *a3)
{
  if ((*(a2 + 16) & 0x10) == 0)
  {
    return 0;
  }

  if (*(*(a2 + 13) + 24) != *(*MEMORY[0x1E69E2C70] + 24))
  {
    return 0;
  }

  v6 = kit(a2);
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  if (MEMORY[0x1CCA639B0](*(a3 + 15), "Up", 2))
  {
    v8 = &selRef_moveUp_;
  }

  else if (MEMORY[0x1CCA639B0](*(a3 + 15), "Down", 4))
  {
    v8 = &selRef_moveDown_;
  }

  else if (MEMORY[0x1CCA639B0](*(a3 + 15), "U+001B", 6))
  {
    v8 = &selRef_cancel_;
  }

  else if (MEMORY[0x1CCA639B0](*(a3 + 15), "U+0009", 6))
  {
    if ((*(a3 + 92) & 8) != 0)
    {
      v8 = &selRef_insertBacktab_;
    }

    else
    {
      v8 = &selRef_insertTab_;
    }
  }

  else
  {
    if (!MEMORY[0x1CCA639B0](*(a3 + 15), "Enter", 5))
    {
      return 0;
    }

    v8 = &selRef_insertNewline_;
  }

  v9 = *v8;
  if (!*v8)
  {
    return 0;
  }

  v10 = *(this + 4);
  v11 = *(*(*(a2 + 6) + 8) + 552);
  if (v11 && (v12 = *(v11 + 8)) != 0 && (v13 = *(*(v12 + 208) + 16), ((*(*v13 + 1032))(v13) & 1) == 0))
  {
    v14 = v13[3];
  }

  else
  {
    v14 = 0;
  }

  return CallFormDelegateReturningBoolean(0, v10, sel_textField_doCommandBySelector_inFrame_, v7, v9, v14);
}

objc_object *WebEditorClient::textWillBeDeletedInTextField(objc_object *this, WebCore::Element *a2)
{
  if ((*(a2 + 16) & 0x10) != 0 && *(*(a2 + 13) + 24) == *(*MEMORY[0x1E69E2C70] + 24))
  {
    v2 = this;
    this = kit(a2);
    if (this)
    {
      v4 = a2;
      v5 = this;
      v6 = *(v2 + 32);
      v7 = *(*(*(v4 + 6) + 8) + 552);
      if (v7 && (v8 = *(v7 + 8)) != 0 && (v9 = *(*(v8 + 208) + 16), ((*(*v9 + 1032))(v9) & 1) == 0))
      {
        v10 = v9[3];
      }

      else
      {
        v10 = 0;
      }

      return CallFormDelegateReturningBoolean(0, v6, sel_textField_doCommandBySelector_inFrame_, v5, sel_deleteBackward_, v10);
    }
  }

  return this;
}

objc_object *WebEditorClient::textDidChangeInTextArea(objc_object *this, WebCore::Element *a2)
{
  if ((*(a2 + 16) & 0x10) != 0 && *(*(a2 + 13) + 24) == *(*MEMORY[0x1E69E2910] + 24))
  {
    v2 = this;
    this = kit(a2);
    if (this)
    {
      v4 = a2;
      v5 = this;
      v6 = *(v2 + 32);
      v7 = *(*(*(v4 + 6) + 8) + 552);
      if (v7 && (v8 = *(v7 + 8)) != 0 && (v9 = *(*(v8 + 208) + 16), ((*(*v9 + 1032))(v9) & 1) == 0))
      {
        v10 = v9[3];
      }

      else
      {
        v10 = 0;
      }

      return CallFormDelegate(v6, sel_textDidChangeInTextArea_inFrame_, v5, v10);
    }
  }

  return this;
}

uint64_t WebEditorClient::hasRichlyEditableSelection(id *this)
{
  [this[4] _UIKitDelegateForwarder];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  v2 = [this[4] _UIKitDelegateForwarder];

  return [v2 hasRichlyEditableSelection];
}

uint64_t WebEditorClient::getPasteboardItemsCount(id *this)
{
  [this[4] _UIKitDelegateForwarder];
  if (objc_opt_respondsToSelector())
  {
    return [objc_msgSend(this[4] "_UIKitDelegateForwarder")];
  }

  else
  {
    return 0;
  }
}

uint64_t WebEditorClient::shouldRevealCurrentSelectionAfterInsertion(id *this)
{
  [this[4] _UIKitDelegateForwarder];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 1;
  }

  v2 = [this[4] _UIKitDelegateForwarder];

  return [v2 shouldRevealCurrentSelectionAfterInsertion];
}

uint64_t WebEditorClient::shouldSuppressPasswordEcho(id *this)
{
  [this[4] _UIKitDelegateForwarder];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  v2 = [this[4] _UIKitDelegateForwarder];

  return [v2 shouldSuppressPasswordEcho];
}

uint64_t WebEditorClient::documentFragmentFromDelegate@<X0>(id *this@<X0>, int a2@<W1>, void *a3@<X8>)
{
  [this[4] _editingDelegateForwarder];
  result = objc_opt_respondsToSelector();
  if ((result & 1) != 0 && (result = [objc_msgSend(this[4] "_editingDelegateForwarder")]) != 0)
  {
    v7 = *(result + 16);
    if (v7)
    {
      *(v7 + 28) += 2;
    }

    *a3 = v7;
  }

  else
  {
    *a3 = 0;
  }

  return result;
}

uint64_t WebEditorClient::performsTwoStepPaste(uint64_t a1, WebCore::Node *a2)
{
  [*(a1 + 32) _UIKitDelegateForwarder];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  v4 = [*(a1 + 32) _UIKitDelegateForwarder];
  v5 = kit(a2);

  return [v4 performsTwoStepPaste:v5];
}

uint64_t WebEditorClient::performTwoStepDrop(uint64_t a1, WebCore::Node *a2, uint64_t a3, uint64_t a4)
{
  [*(a1 + 32) _UIKitDelegateForwarder];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  v8 = [*(a1 + 32) _UIKitDelegateForwarder];
  v9 = kit(a2);
  v10 = *a3;
  *(v10 + 7) = *(*a3 + 28) + 2;
  v17 = v10;
  LODWORD(v19) = *(a3 + 8);
  v11 = *(a3 + 16);
  *(v11 + 7) += 2;
  v20 = v11;
  WebCore::createLiveRange();
  v12 = kit(v21);
  if (v21)
  {
    if (*(v21 + 2) == 1)
    {
      (*(*v21 + 8))();
    }

    else
    {
      --*(v21 + 2);
    }
  }

  result = [v8 performTwoStepDrop:v9 atDestination:v12 isMove:{a4, v17, v19}];
  if (v20)
  {
    if (*(v20 + 7) == 2)
    {
      v15 = result;
      WebCore::Node::removedLastRef(v20);
      result = v15;
      v14 = v18;
      if (!v18)
      {
        return result;
      }

      goto LABEL_12;
    }

    *(v20 + 7) -= 2;
  }

  v14 = v18;
  if (!v18)
  {
    return result;
  }

LABEL_12:
  if (*(v14 + 7) == 2)
  {
    v16 = result;
    WebCore::Node::removedLastRef(v14);
    return v16;
  }

  else
  {
    *(v14 + 7) -= 2;
  }

  return result;
}

void sub_1C7AD14BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, WebCore::Node *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, _DWORD *a14)
{
  v15 = a14;
  a14 = 0;
  if (v15)
  {
    if (v15[2] == 1)
    {
      (*(*v15 + 8))(v15);
      std::optional<WebCore::SimpleRange>::~optional(&a9);
      _Unwind_Resume(a1);
    }

    --v15[2];
    std::optional<WebCore::SimpleRange>::~optional(&a9);
    _Unwind_Resume(a1);
  }

  std::optional<WebCore::SimpleRange>::~optional(&a9);
  _Unwind_Resume(a1);
}

uint64_t WebEditorClient::checkTextOfParagraph@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v64 = *MEMORY[0x1E69E9840];
  v62[0] = a2;
  v62[1] = a3;
  *a4 = 0;
  *(a4 + 8) = 0;
  v5 = [*(a1 + 32) _UIKitDelegateForwarder];
  WTF::StringView::createNSStringWithoutCopying(v55, v62);
  obj = [v5 checkSpellingOfString:*v55];
  v6 = *v55;
  *v55 = 0;
  if (v6)
  {
  }

  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  v61 = 0u;
  result = [obj countByEnumeratingWithState:&v58 objects:v63 count:16];
  v8 = result;
  if (result)
  {
    v9 = 0;
    v53 = 0;
    v54 = *v59;
    do
    {
      v10 = 0;
      v51 = v8;
      do
      {
        if (*v59 != v54)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v58 + 1) + 8 * v10);
        v57 = 0;
        v56 = 0u;
        *&v55[8] = 0u;
        v55[0] = 1;
        *&v55[8] = [v11 rangeValue];
        *&v55[16] = v12;
        if (v9 == *(a4 + 8))
        {
          v13 = WTF::Vector<WebCore::TextCheckingResult,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(a4, v9 + 1, v55);
          v53 = *a4;
          v14 = *a4 + 48 * *(a4 + 12);
          v15 = *v13;
          *(v14 + 16) = *(v13 + 16);
          *v14 = v15;
          v16 = *(v13 + 36);
          *(v14 + 24) = 0;
          *(v14 + 32) = 0;
          *(v14 + 36) = v16;
          if (v16)
          {
            if (v16 >= 0x6666667)
            {
              __break(0xC471u);
              JUMPOUT(0x1C7AD19E4);
            }

            v17 = 40 * v16;
            v18 = WTF::fastMalloc((40 * v16));
            *(v14 + 32) = v17 / 0x28;
            *(v14 + 24) = v18;
            v19 = *(v13 + 36);
            if (v19)
            {
              v20 = *(v13 + 24);
              v21 = v20 + 40 * v19;
              do
              {
                *v18 = *v20;
                v22 = *(v20 + 28);
                *(v18 + 16) = 0;
                *(v18 + 24) = 0;
                *(v18 + 28) = v22;
                if (v22)
                {
                  if (v22 >> 29)
                  {
                    __break(0xC471u);
                    JUMPOUT(0x1C7AD19D8);
                  }

                  v23 = WTF::fastMalloc((8 * v22));
                  *(v18 + 24) = v22;
                  *(v18 + 16) = v23;
                  v24 = *(v20 + 28);
                  if (v24)
                  {
                    v25 = *(v20 + 16);
                    v26 = 8 * v24;
                    do
                    {
                      v27 = *v25;
                      if (*v25)
                      {
                        atomic_fetch_add_explicit(v27, 2u, memory_order_relaxed);
                      }

                      *v23++ = v27;
                      ++v25;
                      v26 -= 8;
                    }

                    while (v26);
                  }
                }

                v28 = *(v20 + 32);
                if (v28)
                {
                  atomic_fetch_add_explicit(v28, 2u, memory_order_relaxed);
                }

                *(v18 + 32) = v28;
                v18 += 40;
                v20 += 40;
              }

              while (v20 != v21);
            }
          }

          v29 = *(v13 + 40);
          if (!v29)
          {
            v8 = v51;
            goto LABEL_42;
          }

          v8 = v51;
LABEL_41:
          atomic_fetch_add_explicit(v29, 2u, memory_order_relaxed);
          goto LABEL_42;
        }

        v14 = v53 + 48 * v9;
        v30 = *v55;
        *(v14 + 16) = *&v55[16];
        *v14 = v30;
        v31 = HIDWORD(v56);
        *(v14 + 24) = 0;
        *(v14 + 32) = 0;
        *(v14 + 36) = v31;
        if (v31)
        {
          if (v31 >= 0x6666667)
          {
LABEL_69:
            __break(0xC471u);
            JUMPOUT(0x1C7AD19D0);
          }

          v32 = 40 * v31;
          v33 = WTF::fastMalloc((40 * v31));
          *(v14 + 32) = v32 / 0x28;
          *(v14 + 24) = v33;
          if (HIDWORD(v56))
          {
            v34 = v56;
            v35 = v56 + 40 * HIDWORD(v56);
            do
            {
              *v33 = *v34;
              v36 = *(v34 + 28);
              *(v33 + 16) = 0;
              *(v33 + 24) = 0;
              *(v33 + 28) = v36;
              if (v36)
              {
                if (v36 >> 29)
                {
                  goto LABEL_69;
                }

                v37 = WTF::fastMalloc((8 * v36));
                *(v33 + 24) = v36;
                *(v33 + 16) = v37;
                v38 = *(v34 + 28);
                if (v38)
                {
                  v39 = *(v34 + 16);
                  v40 = 8 * v38;
                  do
                  {
                    v41 = *v39;
                    if (*v39)
                    {
                      atomic_fetch_add_explicit(v41, 2u, memory_order_relaxed);
                    }

                    *v37++ = v41;
                    ++v39;
                    v40 -= 8;
                  }

                  while (v40);
                }
              }

              v42 = *(v34 + 32);
              if (v42)
              {
                atomic_fetch_add_explicit(v42, 2u, memory_order_relaxed);
              }

              *(v33 + 32) = v42;
              v33 += 40;
              v34 += 40;
            }

            while (v34 != v35);
          }
        }

        v29 = v57;
        if (v57)
        {
          goto LABEL_41;
        }

LABEL_42:
        *(v14 + 40) = v29;
        v9 = *(a4 + 12) + 1;
        *(a4 + 12) = v9;
        v43 = v57;
        v57 = 0;
        if (v43 && atomic_fetch_add_explicit(v43, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v43, v12);
        }

        v44 = v56;
        if (HIDWORD(v56))
        {
          v45 = v56 + 40 * HIDWORD(v56);
          do
          {
            v46 = *(v44 + 32);
            *(v44 + 32) = 0;
            if (v46 && atomic_fetch_add_explicit(v46, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v46, v12);
            }

            v47 = *(v44 + 28);
            v48 = *(v44 + 16);
            if (v47)
            {
              v49 = 8 * v47;
              do
              {
                v50 = *v48;
                *v48 = 0;
                if (v50 && atomic_fetch_add_explicit(v50, 0xFFFFFFFE, memory_order_relaxed) == 2)
                {
                  WTF::StringImpl::destroy(v50, v12);
                }

                v48 = (v48 + 8);
                v49 -= 8;
              }

              while (v49);
              v48 = *(v44 + 16);
            }

            if (v48)
            {
              *(v44 + 16) = 0;
              *(v44 + 24) = 0;
              WTF::fastFree(v48, v12);
            }

            v44 += 40;
          }

          while (v44 != v45);
          v44 = v56;
        }

        if (v44)
        {
          *&v56 = 0;
          DWORD2(v56) = 0;
          WTF::fastFree(v44, v12);
        }

        ++v10;
      }

      while (v10 != v8);
      result = [obj countByEnumeratingWithState:&v58 objects:v63 count:16];
      v8 = result;
    }

    while (result);
  }

  return result;
}

void sub_1C7AD1A04(_Unwind_Exception *a1, WTF::StringImpl *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13)
{
  if (a13)
  {

    WTF::Vector<WebCore::TextCheckingResult,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v13, v15);
    _Unwind_Resume(a1);
  }

  WTF::Vector<WebCore::TextCheckingResult,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v13, a2);
  _Unwind_Resume(a1);
}

void *WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::TextCheckingRequestIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebCore::TextCheckingRequest,WTF::RawPtrTraits<WebCore::TextCheckingRequest>,WTF::DefaultRefDerefTraits<WebCore::TextCheckingRequest>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::TextCheckingRequestIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::TextCheckingRequestIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebCore::TextCheckingRequest,WTF::RawPtrTraits<WebCore::TextCheckingRequest>,WTF::DefaultRefDerefTraits<WebCore::TextCheckingRequest>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::~HashMap(void *result, void *a2)
{
  v2 = *result;
  if (*result)
  {
    v3 = result;
    v4 = *(v2 - 4);
    if (v4)
    {
      v5 = (v2 + 8);
      do
      {
        if (*(v5 - 1) != -1)
        {
          v6 = *v5;
          *v5 = 0;
          if (v6)
          {
            if (v6[2] == 1)
            {
              (*(*v6 + 8))(v6);
            }

            else
            {
              --v6[2];
            }
          }
        }

        v5 += 2;
        --v4;
      }

      while (v4);
    }

    WTF::fastFree((v2 - 16), a2);
    return v3;
  }

  return result;
}

void WebCore::TextCheckingResult::~TextCheckingResult(WebCore::TextCheckingResult *this, WTF::StringImpl *a2)
{
  v3 = *(this + 5);
  *(this + 5) = 0;
  if (v3 && atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v3, a2);
  }

  v4 = *(this + 9);
  v5 = *(this + 3);
  if (v4)
  {
    v6 = v5 + 40 * v4;
    do
    {
      v7 = *(v5 + 32);
      *(v5 + 32) = 0;
      if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v7, a2);
      }

      v8 = *(v5 + 28);
      v9 = *(v5 + 16);
      if (v8)
      {
        v10 = 8 * v8;
        do
        {
          v11 = *v9;
          *v9 = 0;
          if (v11 && atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v11, a2);
          }

          v9 = (v9 + 8);
          v10 -= 8;
        }

        while (v10);
        v9 = *(v5 + 16);
      }

      if (v9)
      {
        *(v5 + 16) = 0;
        *(v5 + 24) = 0;
        WTF::fastFree(v9, a2);
      }

      v5 += 40;
    }

    while (v5 != v6);
    v5 = *(this + 3);
  }

  if (v5)
  {
    *(this + 3) = 0;
    *(this + 8) = 0;
    WTF::fastFree(v5, a2);
  }
}

uint64_t WTF::Vector<WebCore::TextCheckingResult,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(uint64_t a1, WTF::StringImpl *a2)
{
  v3 = *(a1 + 12);
  if (v3)
  {
    v4 = *a1;
    v5 = 48 * v3;
    do
    {
      WebCore::TextCheckingResult::~TextCheckingResult(v4, a2);
      v4 = (v6 + 48);
      v5 -= 48;
    }

    while (v5);
  }

  v7 = *a1;
  if (*a1)
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    WTF::fastFree(v7, a2);
  }

  return a1;
}

unint64_t WTF::Vector<WebCore::TextCheckingResult,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v4 = *a1;
  if (*a1 > a3 || v4 + 48 * *(a1 + 12) <= a3)
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

    WTF::Vector<WebCore::TextCheckingResult,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v13);
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

    WTF::Vector<WebCore::TextCheckingResult,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v8);
    return *a1 + v5;
  }
}

uint64_t WTF::Vector<WebCore::TextCheckingResult,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(uint64_t result, unint64_t a2)
{
  if (*(result + 8) < a2)
  {
    if (a2 >= 0x5555556)
    {
      __break(0xC471u);
    }

    else
    {
      v2 = result;
      v3 = *result;
      v4 = *(result + 12);
      v5 = 48 * a2;
      result = WTF::fastMalloc((48 * a2));
      *(v2 + 8) = v5 / 0x30;
      *v2 = result;
      if (v4)
      {
        v7 = result;
        result = v3;
        do
        {
          v8 = *(result + 16);
          *v7 = *result;
          *(v7 + 24) = 0;
          *(v7 + 32) = 0;
          *(v7 + 16) = v8;
          v9 = *(result + 24);
          *(result + 24) = 0;
          *(v7 + 24) = v9;
          LODWORD(v9) = *(result + 32);
          *(result + 32) = 0;
          *(v7 + 32) = v9;
          LODWORD(v9) = *(result + 36);
          *(result + 36) = 0;
          *(v7 + 36) = v9;
          v10 = *(result + 40);
          *(result + 40) = 0;
          *(v7 + 40) = v10;
          WebCore::TextCheckingResult::~TextCheckingResult(result, v6);
          v7 += 48;
          result = v11 + 48;
        }

        while (result != (v3 + 48 * v4));
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

void sub_1C7AD2A10(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, void *a10)
{
  if (a10)
  {
  }

  if (a9)
  {
    if (atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a9, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

void sub_1C7AD2B2C(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10, uint64_t a11, void *a12)
{
  if (a12)
  {
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

void sub_1C7AD2C18(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9)
{
  v11 = *(v9 - 24);
  *(v9 - 24) = 0;
  if (v11)
  {
  }

  if (a9)
  {
    if (atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a9, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

void sub_1C7AD2CE8(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9)
{
  v11 = *(v9 - 24);
  *(v9 - 24) = 0;
  if (v11)
  {
  }

  if (a9)
  {
    if (atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a9, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

void sub_1C7AD2E34(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10, uint64_t a11, void *a12)
{
  if (a12)
  {
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

void sub_1C7AD2F20(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9)
{
  v11 = *(v9 - 24);
  *(v9 - 24) = 0;
  if (v11)
  {
  }

  if (a9)
  {
    if (atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a9, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

void sub_1C7AD3098(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, void *a10)
{
  if (a10)
  {
  }

  if (a9)
  {
    if (atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a9, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

void sub_1C7AD31AC(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, void *a10)
{
  if (a10)
  {
  }

  if (a9)
  {
    if (atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a9, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

void sub_1C7AD3908(_Unwind_Exception *exception_object)
{
  v3 = 1;
  atomic_compare_exchange_strong_explicit(v1, &v3, 0, memory_order_release, memory_order_relaxed);
  if (v3 == 1)
  {
    _Unwind_Resume(exception_object);
  }

  WTF::Lock::unlockSlow(webFixedPositionContentDataLock);
  _Unwind_Resume(exception_object);
}

void sub_1C7AD3B20(_Unwind_Exception *exception_object)
{
  v3 = 1;
  atomic_compare_exchange_strong_explicit(v1, &v3, 0, memory_order_release, memory_order_relaxed);
  if (v3 == 1)
  {
    _Unwind_Resume(exception_object);
  }

  WTF::Lock::unlockSlow(webFixedPositionContentDataLock);
  _Unwind_Resume(exception_object);
}

void sub_1C7AD41A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  v11 = 1;
  atomic_compare_exchange_strong_explicit(webFixedPositionContentDataLock, &v11, 0, memory_order_release, memory_order_relaxed);
  if (v11 == 1)
  {
    _Unwind_Resume(exception_object);
  }

  WTF::Lock::unlockSlow(webFixedPositionContentDataLock);
  _Unwind_Resume(exception_object);
}

WTF **std::unique_ptr<ViewportConstrainedLayerData>::~unique_ptr[abi:sn200100](WTF **result, void *a2)
{
  v2 = *result;
  *result = 0;
  if (v2)
  {
    v3 = result;
    v4 = *(v2 + 1);
    *(v2 + 1) = 0;
    if (v4)
    {
      (*(*v4 + 8))(v4);
    }

    WTF::fastFree(v2, a2);
    return v3;
  }

  return result;
}

_DWORD *WTF::HashTable<WTF::RetainPtr<CALayer>,WTF::KeyValuePair<WTF::RetainPtr<CALayer>,std::unique_ptr<ViewportConstrainedLayerData>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::RetainPtr<CALayer>,std::unique_ptr<ViewportConstrainedLayerData>>>,WTF::DefaultHash<WTF::RetainPtr<CALayer>>,WTF::HashMap<WTF::RetainPtr<CALayer>,std::unique_ptr<ViewportConstrainedLayerData>,WTF::DefaultHash<WTF::RetainPtr<CALayer>>,WTF::HashTraits<WTF::RetainPtr<CALayer>>,WTF::HashTraits<std::unique_ptr<ViewportConstrainedLayerData>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::RetainPtr<CALayer>>,WTF::FastMalloc>::rehash(uint64_t *a1, unsigned int a2)
{
  v4 = *a1;
  if (*a1)
  {
    v5 = *(v4 - 4);
    v6 = *(v4 - 12);
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

  result = WTF::fastZeroedMalloc((16 * a2 + 16));
  *a1 = (result + 4);
  result[2] = a2 - 1;
  result[3] = a2;
  *result = 0;
  result[1] = v6;
  if (v5)
  {
    v9 = 0;
    while (1)
    {
      v10 = (v4 + 16 * v9);
      v11 = *v10;
      if (*v10 != -1)
      {
        break;
      }

LABEL_6:
      if (++v9 == v5)
      {
        goto LABEL_34;
      }
    }

    if (!v11)
    {
      v12 = *(v10 + 1);
      *(v10 + 1) = 0;
      if (v12)
      {
        v13 = *(v12 + 1);
        *(v12 + 1) = 0;
        if (v13)
        {
          (*(*v13 + 8))(v13);
        }

        WTF::fastFree(v12, v8);
        v11 = *v10;
      }

      *v10 = 0;
      if (v11)
      {
      }

      goto LABEL_6;
    }

    v14 = *a1;
    if (*a1)
    {
      v15 = *(v14 - 8);
    }

    else
    {
      v15 = 0;
    }

    v16 = (v11 + ~(v11 << 32)) ^ ((v11 + ~(v11 << 32)) >> 22);
    v17 = 9 * ((v16 + ~(v16 << 13)) ^ ((v16 + ~(v16 << 13)) >> 8));
    v18 = (v17 ^ (v17 >> 15)) + ~((v17 ^ (v17 >> 15)) << 27);
    v19 = v15 & ((v18 >> 31) ^ v18);
    v20 = 1;
    do
    {
      v21 = v19;
      v22 = *(v14 + 16 * v19);
      v19 = (v19 + v20++) & v15;
    }

    while (v22);
    v23 = v14 + 16 * v21;
    v24 = *(v23 + 8);
    *(v23 + 8) = 0;
    if (v24)
    {
      v25 = *(v24 + 1);
      *(v24 + 1) = 0;
      if (v25)
      {
        (*(*v25 + 8))(v25);
      }

      WTF::fastFree(v24, v8);
      v26 = *v23;
      *v23 = 0;
      if (v26)
      {
      }

      v27 = *v10;
      *v10 = 0;
      *(v10 + 1) = 0;
      *v23 = v27;
      v28 = *(v10 + 1);
      *(v10 + 1) = 0;
      if (!v28)
      {
LABEL_26:
        v29 = *v10;
        *v10 = 0;
        if (!v29)
        {
          goto LABEL_6;
        }

        goto LABEL_32;
      }
    }

    else
    {
      *v23 = 0;
      v30 = *v10;
      *v10 = 0;
      *(v10 + 1) = 0;
      *v23 = v30;
      v28 = *(v10 + 1);
      *(v10 + 1) = 0;
      if (!v28)
      {
        goto LABEL_26;
      }
    }

    v31 = *(v28 + 1);
    *(v28 + 1) = 0;
    if (v31)
    {
      (*(*v31 + 8))(v31);
    }

    WTF::fastFree(v28, v8);
    v29 = *v10;
    *v10 = 0;
    if (!v29)
    {
      goto LABEL_6;
    }

LABEL_32:

    goto LABEL_6;
  }

  if (v4)
  {
LABEL_34:

    return WTF::fastFree((v4 - 16), v8);
  }

  return result;
}

void sub_1C7AD4964(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, WebCore::Node *a9, uint64_t a10, WebCore::Node *a11, uint64_t a12, WebCore::Node *a13, uint64_t a14, uint64_t a15, WebCore::Node *a16)
{
  if (a9)
  {
    if (*(a9 + 7) == 2)
    {
      WebCore::Node::removedLastRef(a9);
    }

    else
    {
      *(a9 + 7) -= 2;
    }
  }

  if (a11)
  {
    if (*(a11 + 7) == 2)
    {
      WebCore::Node::removedLastRef(a11);
    }

    else
    {
      *(a11 + 7) -= 2;
    }
  }

  if (a13)
  {
    if (*(a13 + 7) == 2)
    {
      WebCore::Node::removedLastRef(a13);
    }

    else
    {
      *(a13 + 7) -= 2;
    }
  }

  if (a16)
  {
    if (*(a16 + 7) == 2)
    {
      WebCore::Node::removedLastRef(a16);
      _Unwind_Resume(exception_object);
    }

    *(a16 + 7) -= 2;
  }

  _Unwind_Resume(exception_object);
}

void sub_1C7AD4BD0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WebCore::Node *a10)
{
  if (a10)
  {
    if (*(a10 + 7) == 2)
    {
      WebCore::Node::removedLastRef(a10);
      _Unwind_Resume(exception_object);
    }

    *(a10 + 7) -= 2;
  }

  _Unwind_Resume(exception_object);
}

void sub_1C7AD521C(_Unwind_Exception *a1, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, WebCore::Node *a12, uint64_t a13, uint64_t a14, WebCore::Node *a15, uint64_t a16, uint64_t a17, WTF *a18, int a19, WebCore::Node *a20, uint64_t a21, uint64_t a22, char a23)
{
  if (a12)
  {
    if (*(a12 + 7) == 2)
    {
      WebCore::Node::removedLastRef(a12);
    }

    else
    {
      *(a12 + 7) -= 2;
    }
  }

  if (a15)
  {
    if (*(a15 + 7) == 2)
    {
      WebCore::Node::removedLastRef(a15);
    }

    else
    {
      *(a15 + 7) -= 2;
    }
  }

  if (a20)
  {
    if (*(a20 + 7) == 2)
    {
      WebCore::Node::removedLastRef(a20);
    }

    else
    {
      *(a20 + 7) -= 2;
    }
  }

  if (a18)
  {
    WTF::fastFree(a18, a2);
  }

  WebCore::VisibleSelection::~VisibleSelection(&a23);
  std::optional<WebCore::SimpleRange>::~optional((v23 - 120));
  _Unwind_Resume(a1);
}

void sub_1C7AD5310(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, WebCore::Node *a20, uint64_t a21, uint64_t a22, char a23)
{
  if (a20)
  {
    if (*(a20 + 7) == 2)
    {
      WebCore::Node::removedLastRef(a20);
      WebCore::VisibleSelection::~VisibleSelection(&a23);
      std::optional<WebCore::SimpleRange>::~optional((v23 - 120));
      _Unwind_Resume(a1);
    }

    *(a20 + 7) -= 2;
    WebCore::VisibleSelection::~VisibleSelection(&a23);
    std::optional<WebCore::SimpleRange>::~optional((v23 - 120));
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x1C7AD52F8);
}

void sub_1C7AD5378(_Unwind_Exception *exception_object)
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

void sub_1C7AD5440(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WebCore::Node *a10)
{
  if (a10)
  {
    if (*(a10 + 7) == 2)
    {
      WebCore::Node::removedLastRef(a10);
      _Unwind_Resume(exception_object);
    }

    *(a10 + 7) -= 2;
  }

  _Unwind_Resume(exception_object);
}

void sub_1C7AD566C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, WebCore::Node *a9, uint64_t a10, uint64_t a11, WebCore::Node *a12)
{
  if (a9)
  {
    if (*(a9 + 7) == 2)
    {
      WebCore::Node::removedLastRef(a9);
    }

    else
    {
      *(a9 + 7) -= 2;
    }
  }

  if (a12)
  {
    if (*(a12 + 7) == 2)
    {
      WebCore::Node::removedLastRef(a12);
      _Unwind_Resume(exception_object);
    }

    *(a12 + 7) -= 2;
  }

  _Unwind_Resume(exception_object);
}

void sub_1C7AD5880(_Unwind_Exception *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (v9)
  {
  }

  WebCore::RenderObject::SelectionGeometries::~SelectionGeometries(&a9, a2);
  _Unwind_Resume(a1);
}

void sub_1C7AD59A0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::optional<WebCore::SimpleRange>::~optional(va);
  _Unwind_Resume(a1);
}

void sub_1C7AD5AA0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::optional<WebCore::SimpleRange>::~optional(va);
  _Unwind_Resume(a1);
}

void sub_1C7AD5C80(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WebCore::Node *a10, uint64_t a11, uint64_t a12, WebCore::Node *a13, uint64_t a14, uint64_t a15, WebCore::Node *a16)
{
  v18 = *(v16 - 24);
  *(v16 - 24) = 0;
  if (v18)
  {
    if (v18[2] == 1)
    {
      (*(*v18 + 8))(v18);
    }

    else
    {
      --v18[2];
    }
  }

  std::optional<WebCore::SimpleRange>::~optional(&a16);
  if (a10)
  {
    if (*(a10 + 7) == 2)
    {
      WebCore::Node::removedLastRef(a10);
    }

    else
    {
      *(a10 + 7) -= 2;
    }
  }

  if (a13)
  {
    if (*(a13 + 7) == 2)
    {
      WebCore::Node::removedLastRef(a13);
    }

    else
    {
      *(a13 + 7) -= 2;
    }
  }

  v19 = *(v16 - 48);
  *(v16 - 48) = 0;
  if (v19)
  {
    if (*(v19 + 7) == 2)
    {
      WebCore::Node::removedLastRef(v19);
      _Unwind_Resume(a1);
    }

    *(v19 + 7) -= 2;
  }

  _Unwind_Resume(a1);
}

void sub_1C7AD5DF4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WebCore::Node *a10)
{
  if (a10)
  {
    if (*(a10 + 7) == 2)
    {
      WebCore::Node::removedLastRef(a10);
      _Unwind_Resume(exception_object);
    }

    *(a10 + 7) -= 2;
  }

  _Unwind_Resume(exception_object);
}

void sub_1C7AD60CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, WebCore::Node *a9, uint64_t a10, uint64_t a11, WebCore::Node *a12, uint64_t a13, uint64_t a14, char a15)
{
  if (a12)
  {
    if (*(a12 + 7) == 2)
    {
      WebCore::Node::removedLastRef(a12);
    }

    else
    {
      *(a12 + 7) -= 2;
    }
  }

  WebCore::VisibleSelection::~VisibleSelection(&a15);
  v17 = *(v15 - 72);
  *(v15 - 72) = 0;
  if (v17)
  {
    if (*(v17 + 7) == 2)
    {
      WebCore::Node::removedLastRef(v17);
      _Unwind_Resume(a1);
    }

    *(v17 + 7) -= 2;
  }

  _Unwind_Resume(a1);
}

void sub_1C7AD6970(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, WebCore::Node *a13, uint64_t a14, uint64_t a15, WebCore::Node *a16, uint64_t a17, uint64_t a18, WebCore::Node *a19, uint64_t a20, uint64_t a21, WebCore::Node *a22, uint64_t a23, uint64_t a24, WebCore::Node *a25, uint64_t a26, uint64_t a27, char a28)
{
  if (a13)
  {
    if (*(a13 + 7) == 2)
    {
      WebCore::Node::removedLastRef(a13);
    }

    else
    {
      *(a13 + 7) -= 2;
    }
  }

  if (a16)
  {
    if (*(a16 + 7) == 2)
    {
      WebCore::Node::removedLastRef(a16);
    }

    else
    {
      *(a16 + 7) -= 2;
    }
  }

  if (a19)
  {
    if (*(a19 + 7) == 2)
    {
      WebCore::Node::removedLastRef(a19);
    }

    else
    {
      *(a19 + 7) -= 2;
    }
  }

  if (a22)
  {
    if (*(a22 + 7) == 2)
    {
      WebCore::Node::removedLastRef(a22);
    }

    else
    {
      *(a22 + 7) -= 2;
    }
  }

  if (a25)
  {
    if (*(a25 + 7) == 2)
    {
      WebCore::Node::removedLastRef(a25);
      WebCore::VisibleSelection::~VisibleSelection(&a28);
      _Unwind_Resume(a1);
    }

    *(a25 + 7) -= 2;
  }

  WebCore::VisibleSelection::~VisibleSelection(&a28);
  _Unwind_Resume(a1);
}

void sub_1C7AD6D60(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, WebCore::Node *a13, uint64_t a14, uint64_t a15, WebCore::Node *a16)
{
  if (a13)
  {
    if (*(a13 + 7) == 2)
    {
      WebCore::Node::removedLastRef(a13);
    }

    else
    {
      *(a13 + 7) -= 2;
    }
  }

  if (a16)
  {
    if (*(a16 + 7) == 2)
    {
      WebCore::Node::removedLastRef(a16);
      _Unwind_Resume(exception_object);
    }

    *(a16 + 7) -= 2;
  }

  _Unwind_Resume(exception_object);
}

void sub_1C7AD6EC8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, WebCore::Node *a9, uint64_t a10, uint64_t a11, WebCore::Node *a12)
{
  if (a12)
  {
    if (*(a12 + 7) == 2)
    {
      WebCore::Node::removedLastRef(a12);
      _Unwind_Resume(exception_object);
    }

    *(a12 + 7) -= 2;
  }

  _Unwind_Resume(exception_object);
}

void sub_1C7AD721C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, WebCore::Node *a9, uint64_t a10, uint64_t a11, WebCore::Node *a12, uint64_t a13, WebCore::Node *a14, uint64_t a15, uint64_t a16, WebCore::Node *a17)
{
  if (a9)
  {
    if (*(a9 + 7) == 2)
    {
      WebCore::Node::removedLastRef(a9);
    }

    else
    {
      *(a9 + 7) -= 2;
    }
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

  if (a12)
  {
    if (*(a12 + 7) == 2)
    {
      WebCore::Node::removedLastRef(a12);
    }

    else
    {
      *(a12 + 7) -= 2;
    }
  }

  if (a17)
  {
    if (*(a17 + 7) == 2)
    {
      WebCore::Node::removedLastRef(a17);
      _Unwind_Resume(exception_object);
    }

    *(a17 + 7) -= 2;
  }

  _Unwind_Resume(exception_object);
}

void sub_1C7AD779C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, WebCore::Node *a9, uint64_t a10, uint64_t a11, WebCore::Node *a12, uint64_t a13, uint64_t a14, WebCore::Node *a15)
{
  if (a12)
  {
    if (*(a12 + 7) == 2)
    {
      WebCore::Node::removedLastRef(a12);
    }

    else
    {
      *(a12 + 7) -= 2;
    }
  }

  if (a15)
  {
    if (*(a15 + 7) == 2)
    {
      WebCore::Node::removedLastRef(a15);
    }

    else
    {
      *(a15 + 7) -= 2;
    }
  }

  v17 = *(v15 - 56);
  *(v15 - 56) = 0;
  if (v17)
  {
    if (*(v17 + 7) == 2)
    {
      WebCore::Node::removedLastRef(v17);
      _Unwind_Resume(exception_object);
    }

    *(v17 + 7) -= 2;
  }

  _Unwind_Resume(exception_object);
}

void sub_1C7AD79D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WebCore::Node *a10, uint64_t a11, uint64_t a12, WebCore::Node *a13)
{
  if (a10)
  {
    if (*(a10 + 7) == 2)
    {
      WebCore::Node::removedLastRef(a10);
    }

    else
    {
      *(a10 + 7) -= 2;
    }
  }

  if (a13)
  {
    if (*(a13 + 7) == 2)
    {
      WebCore::Node::removedLastRef(a13);
    }

    else
    {
      *(a13 + 7) -= 2;
    }
  }

  v15 = *(v13 - 40);
  *(v13 - 40) = 0;
  if (v15)
  {
    if (*(v15 + 7) == 2)
    {
      WebCore::Node::removedLastRef(v15);
      _Unwind_Resume(exception_object);
    }

    *(v15 + 7) -= 2;
  }

  _Unwind_Resume(exception_object);
}

void sub_1C7AD7AE8(_Unwind_Exception *exception_object)
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

void sub_1C7AD7CA4(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    if (*(v1 + 7) == 2)
    {
      WebCore::Node::removedLastRef(v1);
      _Unwind_Resume(exception_object);
    }

    *(v1 + 7) -= 2;
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_1C7AD7D80(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WebCore::Node *a10)
{
  if (a10)
  {
    if (*(a10 + 7) == 2)
    {
      WebCore::Node::removedLastRef(a10);
      _Unwind_Resume(exception_object);
    }

    *(a10 + 7) -= 2;
  }

  _Unwind_Resume(exception_object);
}

void sub_1C7AD7E30(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WebCore::Node *a10)
{
  if (a10)
  {
    if (*(a10 + 7) == 2)
    {
      WebCore::Node::removedLastRef(a10);
      _Unwind_Resume(exception_object);
    }

    *(a10 + 7) -= 2;
  }

  _Unwind_Resume(exception_object);
}

void sub_1C7AD7F18(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WebCore::Node *a10)
{
  if (a10)
  {
    if (*(a10 + 7) == 2)
    {
      WebCore::Node::removedLastRef(a10);
      _Unwind_Resume(exception_object);
    }

    *(a10 + 7) -= 2;
  }

  _Unwind_Resume(exception_object);
}

void sub_1C7AD8F64(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WebCore::Node *a10, uint64_t a11, uint64_t a12, WebCore::Node *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, WebCore::Node *a26, uint64_t a27, uint64_t a28, WebCore::Node *a29)
{
  v31 = *(v29 - 128);
  *(v29 - 128) = 0;
  if (v31)
  {
    if (*(v31 + 7) == 2)
    {
      WebCore::Node::removedLastRef(v31);
    }

    else
    {
      *(v31 + 7) -= 2;
    }
  }

  v32 = *(v29 - 104);
  *(v29 - 104) = 0;
  if (v32)
  {
    if (*(v32 + 7) == 2)
    {
      WebCore::Node::removedLastRef(v32);
    }

    else
    {
      *(v32 + 7) -= 2;
    }
  }

  if (a10)
  {
    if (*(a10 + 7) == 2)
    {
      WebCore::Node::removedLastRef(a10);
    }

    else
    {
      *(a10 + 7) -= 2;
    }
  }

  WebCore::VisibleSelection::~VisibleSelection(&a29);
  if (a26)
  {
    if (*(a26 + 7) == 2)
    {
      WebCore::Node::removedLastRef(a26);
    }

    else
    {
      *(a26 + 7) -= 2;
    }
  }

  v33 = *(v29 - 248);
  *(v29 - 248) = 0;
  if (v33)
  {
    if (*(v33 + 7) == 2)
    {
      WebCore::Node::removedLastRef(v33);
    }

    else
    {
      *(v33 + 7) -= 2;
    }
  }

  v34 = *(v29 - 224);
  *(v29 - 224) = 0;
  if (v34)
  {
    if (*(v34 + 7) == 2)
    {
      WebCore::Node::removedLastRef(v34);
    }

    else
    {
      *(v34 + 7) -= 2;
    }
  }

  v35 = *(v29 - 200);
  *(v29 - 200) = 0;
  if (v35)
  {
    if (*(v35 + 7) == 2)
    {
      WebCore::Node::removedLastRef(v35);
      _Unwind_Resume(a1);
    }

    *(v35 + 7) -= 2;
  }

  _Unwind_Resume(a1);
}

uint64_t WebCore::VisibleSelection::operator=(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  *a2 = 0;
  v5 = *a1;
  *a1 = v4;
  if (v5)
  {
    if (*(v5 + 7) == 2)
    {
      WebCore::Node::removedLastRef(v5);
    }

    else
    {
      *(v5 + 7) -= 2;
    }
  }

  v6 = *(a2 + 2);
  *(a1 + 12) = *(a2 + 12);
  *(a1 + 8) = v6;
  v7 = a2[2];
  a2[2] = 0;
  v8 = *(a1 + 16);
  *(a1 + 16) = v7;
  if (v8)
  {
    if (*(v8 + 7) == 2)
    {
      WebCore::Node::removedLastRef(v8);
    }

    else
    {
      *(v8 + 7) -= 2;
    }
  }

  v9 = *(a2 + 6);
  *(a1 + 28) = *(a2 + 28);
  *(a1 + 24) = v9;
  v10 = a2[4];
  a2[4] = 0;
  v11 = *(a1 + 32);
  *(a1 + 32) = v10;
  if (v11)
  {
    if (*(v11 + 7) == 2)
    {
      WebCore::Node::removedLastRef(v11);
    }

    else
    {
      *(v11 + 7) -= 2;
    }
  }

  v12 = *(a2 + 10);
  *(a1 + 44) = *(a2 + 44);
  *(a1 + 40) = v12;
  v13 = a2[6];
  a2[6] = 0;
  v14 = *(a1 + 48);
  *(a1 + 48) = v13;
  if (v14)
  {
    if (*(v14 + 7) == 2)
    {
      WebCore::Node::removedLastRef(v14);
    }

    else
    {
      *(v14 + 7) -= 2;
    }
  }

  v15 = *(a2 + 14);
  *(a1 + 60) = *(a2 + 60);
  *(a1 + 56) = v15;
  v16 = a2[8];
  a2[8] = 0;
  v17 = *(a1 + 64);
  *(a1 + 64) = v16;
  if (v17)
  {
    if (*(v17 + 7) == 2)
    {
      WebCore::Node::removedLastRef(v17);
    }

    else
    {
      *(v17 + 7) -= 2;
    }
  }

  v18 = *(a2 + 18);
  *(a1 + 76) = *(a2 + 76);
  *(a1 + 72) = v18;
  v19 = a2[10];
  a2[10] = 0;
  v20 = *(a1 + 80);
  *(a1 + 80) = v19;
  if (v20)
  {
    if (*(v20 + 7) == 2)
    {
      WebCore::Node::removedLastRef(v20);
    }

    else
    {
      *(v20 + 7) -= 2;
    }
  }

  v21 = *(a2 + 22);
  *(a1 + 92) = *(a2 + 92);
  *(a1 + 88) = v21;
  *(a1 + 96) = *(a2 + 24);
  return a1;
}

void sub_1C7AD94D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WebCore::Node *a10)
{
  if (a10)
  {
    if (*(a10 + 7) == 2)
    {
      WebCore::Node::removedLastRef(a10);
      _Unwind_Resume(exception_object);
    }

    *(a10 + 7) -= 2;
  }

  _Unwind_Resume(exception_object);
}

void sub_1C7AD958C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WebCore::Node *a10)
{
  if (a10)
  {
    if (*(a10 + 7) == 2)
    {
      WebCore::Node::removedLastRef(a10);
      _Unwind_Resume(exception_object);
    }

    *(a10 + 7) -= 2;
  }

  _Unwind_Resume(exception_object);
}

void WebCore::RenderObject::SelectionGeometries::~SelectionGeometries(WebCore::RenderObject::SelectionGeometries *this, void *a2)
{
  v3 = *(this + 2);
  if (v3)
  {
    *(this + 2) = 0;
    *(this + 6) = 0;
    WTF::fastFree(v3, a2);
  }

  v4 = *this;
  if (*this)
  {
    *this = 0;
    *(this + 2) = 0;
    WTF::fastFree(v4, a2);
  }
}

uint64_t WebFrameNetworkingContext::ensurePrivateBrowsingSession(WebFrameNetworkingContext *this)
{
  MEMORY[0x1CCA63A40](&v9, [objc_msgSend(MEMORY[0x1E696AAE8] "mainBundle")]);
  v1.m_identifier = &v9;
  NetworkStorageSessionMap::ensureSession(0x8000000000000001, v1, v2);
  v4 = v9;
  v9 = 0;
  if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v4, v3);
  }

  v5 = *(globalSessionMap(void)::map - 8);
  v6 = v5 & 0xA6721BA;
  if (*(globalSessionMap(void)::map + 16 * v6) != 0x8000000000000001)
  {
    v7 = 1;
    do
    {
      v6 = (v6 + v7++) & v5;
    }

    while (*(globalSessionMap(void)::map + 16 * v6) != 0x8000000000000001);
  }

  return *(globalSessionMap(void)::map + 16 * v6 + 8);
}

void sub_1C7AD9900(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10)
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

uint64_t WebFrameNetworkingContext::localFileContentSniffingEnabled(WebFrameNetworkingContext *this)
{
  v1 = *(this + 2);
  if (v1 && (v2 = *(v1 + 8)) != 0)
  {
    return *(*(v2 + 128) + 705) >> 7;
  }

  else
  {
    return 0;
  }
}

uint64_t WebFrameNetworkingContext::scheduledRunLoopPairs(WebFrameNetworkingContext *this)
{
  v1 = *(this + 2);
  if (v1 && (v2 = *(v1 + 8)) != 0 && (v3 = *(v2 + 24)) != 0 && (v4 = *(v3 + 8)) != 0)
  {
    return *(v4 + 24);
  }

  else
  {
    return 0;
  }
}

uint64_t WebFrameNetworkingContext::sourceApplicationAuditData@<X0>(uint64_t this@<X0>, void *a2@<X8>)
{
  v2 = *(this + 16);
  if (v2 && (v3 = *(v2 + 8)) != 0 && (v4 = *(v3 + 24)) != 0 && (v5 = *(v4 + 8)) != 0)
  {
    this = (*(**(*(v5 + 56) + 16) + 1440))(*(*(v5 + 56) + 16));
    if ((this & 1) != 0 || (this = objc_loadWeak((*(*(v5 + 56) + 16) + 16))) == 0)
    {
      *a2 = 0;
    }

    else
    {
      this = [this _sourceApplicationAuditData];
      *a2 = this;
      if (this)
      {

        return CFRetain(this);
      }
    }
  }

  else
  {
    *a2 = 0;
  }

  return this;
}

void WebFrameNetworkingContext::sourceApplicationIdentifier(atomic_uint **a1@<X8>)
{
  v2 = *MEMORY[0x1E696EBA8];
  if (*MEMORY[0x1E696EBA8])
  {
    atomic_fetch_add_explicit(v2, 2u, memory_order_relaxed);
  }

  *a1 = v2;
}

uint64_t WebFrameNetworkingContext::storageSession(uint64_t this, void *a2)
{
  v2 = *(this + 16);
  if (v2)
  {
    v3 = *(v2 + 8);
    if (v3)
    {
      v4 = *(v3 + 24);
      if (v4)
      {
        this = *(v4 + 8);
        if (this)
        {
          this = WebCore::Page::sessionID(this);
          if (this <= -2)
          {
            {
              if (globalSessionMap(void)::map)
              {
                v5 = *(globalSessionMap(void)::map - 8);
                v6 = v5 & 0xA6721BA;
                v7 = *(globalSessionMap(void)::map + 16 * v6);
                if (v7 == 0x8000000000000001)
                {
LABEL_12:
                  this = *(globalSessionMap(void)::map + 16 * v6 + 8);
                  if (this)
                  {
                    return this;
                  }
                }

                else
                {
                  v8 = 1;
                  while (v7)
                  {
                    v6 = (v6 + v8) & v5;
                    v7 = *(globalSessionMap(void)::map + 16 * v6);
                    ++v8;
                    if (v7 == 0x8000000000000001)
                    {
                      goto LABEL_12;
                    }
                  }
                }
              }
            }

            else
            {
              globalSessionMap(void)::map = 0;
            }
          }
        }
      }
    }
  }

  return NetworkStorageSessionMap::defaultStorageSession(this, a2);
}

void WebFrameNetworkingContext::~WebFrameNetworkingContext(WebFrameNetworkingContext *this, void *a2)
{
  *this = &unk_1F472BBE8;
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
  *this = &unk_1F472BBE8;
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

void sub_1C7AD9D48(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10)
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

uint64_t WebGeolocationClient::startUpdating(id *this, const WTF::String *a2, int a3)
{
  if (a3)
  {
    (*(*this + 8))(this, 1);
  }

  v4 = [this[2] _geolocationProvider];
  v5 = this[2];

  return [v4 registerWebView:v5];
}

uint64_t WebGeolocationClient::stopUpdating(id *this)
{
  v2 = [this[2] _geolocationProvider];
  v3 = this[2];

  return [v2 unregisterWebView:v3];
}

void WebGeolocationClient::requestPermission(id *this, WebCore::Geolocation *a2)
{
  [this[2] UIDelegate];
  if (objc_opt_respondsToSelector())
  {
    v6 = [[WebGeolocationProviderInitializationListener alloc] initWithGeolocation:a2];
    [objc_msgSend(this[2] "_geolocationProvider")];
    if (v6)
    {
    }
  }

  else
  {
    v7 = 0;
    WebCore::Geolocation::setIsAllowed(a2, 0, &v7);
    v5 = v7;
    v7 = 0;
    if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v5, v4);
    }
  }
}

void sub_1C7AD9FD8(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, id a9, WTF::StringImpl *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v14 = a2;
  if (v17 && atomic_fetch_add_explicit(v17, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v17, a2);
  }

  if (v14 != 1)
  {
    _Unwind_Resume(exception_object);
  }

  v16 = objc_begin_catch(exception_object);
  ReportBlockedObjCException(v16);
  objc_end_catch();
}

uint64_t WebGeolocationClient::lastPosition@<X0>(id *this@<X0>, uint64_t a2@<X8>)
{
  result = [objc_msgSend(this[2] "_geolocationProvider")];
  if (result)
  {
    v4 = *(result + 8);
    v5 = *(v4 + 56);
    v6 = *(v4 + 88);
    *(a2 + 64) = *(v4 + 72);
    *(a2 + 80) = v6;
    *(a2 + 96) = *(v4 + 104);
    v7 = *(v4 + 24);
    *a2 = *(v4 + 8);
    *(a2 + 16) = v7;
    *(a2 + 32) = *(v4 + 40);
    *(a2 + 48) = v5;
    *(a2 + 112) = 1;
  }

  else
  {
    *a2 = 0;
    *(a2 + 112) = 0;
  }

  return result;
}

void sub_1C7ADA260(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10)
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

void sub_1C7ADA354(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10)
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

void sub_1C7ADA674(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  if (a2 != 1)
  {
    _Unwind_Resume(exception_object);
  }

  v16 = objc_begin_catch(exception_object);
  ReportBlockedObjCException(v16);
  objc_end_catch();
}

void sub_1C7ADA73C(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10)
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

_DWORD *WebGeolocationClient::deref(_DWORD *this)
{
  if (this[2] == 1)
  {
    return (*(*this + 24))();
  }

  --this[2];
  return this;
}

void WebGeolocationClient::~WebGeolocationClient(WebGeolocationClient *this)
{
  if (*(this + 2) != 1)
  {
    __break(0xC471u);
  }
}

void WebGeolocationClient::~WebGeolocationClient(WebGeolocationClient *this, void *a2)
{
  if (*(this + 2) == 1)
  {
    bmalloc::api::tzoneFree(this, a2);
  }

  else
  {
    __break(0xC471u);
  }
}

uint64_t initCLLocationManager(void)
{
  if (_MergedGlobals_2)
  {
    result = objc_getClass("CLLocationManager");
    qword_1EC2614E0 = result;
    if (result)
    {
LABEL_3:
      getCLLocationManagerClass = CLLocationManagerFunction;
      return result;
    }
  }

  else
  {
    qword_1EC2614E8 = ___ZL19CoreLocationLibraryv_block_invoke();
    _MergedGlobals_2 = 1;
    result = objc_getClass("CLLocationManager");
    qword_1EC2614E0 = result;
    if (result)
    {
      goto LABEL_3;
    }
  }

  result = 42;
  __break(0xC471u);
  return result;
}

uint64_t ___ZL19CoreLocationLibraryv_block_invoke()
{
  result = dlopen("/System/Library/Frameworks/CoreLocation.framework/CoreLocation", 2);
  if (!result)
  {
    result = 40;
    __break(0xC471u);
  }

  return result;
}

uint64_t initkCLLocationAccuracyBest(void)
{
  if (_MergedGlobals_2 == 1)
  {
    result = dlsym(qword_1EC2614E8, "kCLLocationAccuracyBest");
    if (result)
    {
LABEL_3:
      qword_1EC2614F0 = *result;
      _MergedGlobals_5 = kCLLocationAccuracyBestFunction;
      return result;
    }
  }

  else
  {
    qword_1EC2614E8 = ___ZL19CoreLocationLibraryv_block_invoke();
    _MergedGlobals_2 = 1;
    result = dlsym(qword_1EC2614E8, "kCLLocationAccuracyBest");
    if (result)
    {
      goto LABEL_3;
    }
  }

  result = 45;
  __break(0xC471u);
  return result;
}

uint64_t initkCLLocationAccuracyHundredMeters(void)
{
  if (_MergedGlobals_2 == 1)
  {
    result = dlsym(qword_1EC2614E8, "kCLLocationAccuracyHundredMeters");
    if (result)
    {
LABEL_3:
      qword_1EC2614F8 = *result;
      qword_1ED6A60A8 = kCLLocationAccuracyHundredMetersFunction;
      return result;
    }
  }

  else
  {
    qword_1EC2614E8 = ___ZL19CoreLocationLibraryv_block_invoke();
    _MergedGlobals_2 = 1;
    result = dlsym(qword_1EC2614E8, "kCLLocationAccuracyHundredMeters");
    if (result)
    {
      goto LABEL_3;
    }
  }

  result = 46;
  __break(0xC471u);
  return result;
}

void sub_1C7ADB834(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9)
{
  if (a9)
  {
    (*(*a9 + 8))(a9);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_1C7ADBA24(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9)
{
  if (a9)
  {
    (*(*a9 + 8))(a9);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t WTF::HashSet<WebView *,WTF::DefaultHash<WebView *>,WTF::HashTraits<WebView *>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>::remove(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  if (!*a1)
  {
    return 0;
  }

  v3 = *a2;
  if (*a2 == -1 || !v3)
  {
    __break(0xC471u);
    JUMPOUT(0x1C7ADBB94);
  }

  v4 = *(v2 - 8);
  v5 = (~(v3 << 32) + v3) ^ ((~(v3 << 32) + v3) >> 22);
  v6 = 9 * ((v5 + ~(v5 << 13)) ^ ((v5 + ~(v5 << 13)) >> 8));
  v7 = (v6 ^ (v6 >> 15)) + ~((v6 ^ (v6 >> 15)) << 27);
  v8 = v4 & ((v7 >> 31) ^ v7);
  v9 = *(v2 + 8 * v8);
  if (v9 != v3)
  {
    v10 = 1;
    while (v9)
    {
      v8 = (v8 + v10) & v4;
      v9 = *(v2 + 8 * v8);
      ++v10;
      if (v9 == v3)
      {
        goto LABEL_8;
      }
    }

    return 0;
  }

LABEL_8:
  if (v8 == *(v2 - 4))
  {
    return 0;
  }

  *(v2 + 8 * v8) = -1;
  v12 = *a1;
  v13 = vadd_s32(*(*a1 - 16), 0xFFFFFFFF00000001);
  *(v12 - 16) = v13;
  v14 = *(v12 - 4);
  if (6 * v13.i32[1] < v14 && v14 >= 9)
  {
    WTF::HashTable<WebView *,WebView *,WTF::IdentityExtractor,WTF::DefaultHash<WebView *>,WTF::HashTraits<WebView *>,WTF::HashTraits<WebView *>,WTF::FastMalloc>::rehash(a1, v14 >> 1, 0);
  }

  return 1;
}

void sub_1C7ADBC68(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    (*(*a10 + 8))(a10);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_1C7ADBF50(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9)
{
  if (v9)
  {

    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_1C7ADC108(_Unwind_Exception *a1, void *a2, uint64_t a3, ...)
{
  va_start(va, a3);
  WTF::HashMap<WTF::RetainPtr<WebView>,WTF::RetainPtr<objc_object  {objcproto44WebGeolocationProviderInitializationListener}*>,WTF::DefaultHash<WTF::RetainPtr<WebView>>,WTF::HashTraits<WTF::RetainPtr<WebView>>,WTF::DefaultHash<WTF::RetainPtr<WebView>><objc_object  {objcproto44WebGeolocationProviderInitializationListener}*>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::~HashMap(va, a2);
  _Unwind_Resume(a1);
}

void *WTF::HashMap<WTF::RetainPtr<WebView>,WTF::RetainPtr<objc_object  {objcproto44WebGeolocationProviderInitializationListener}*>,WTF::DefaultHash<WTF::RetainPtr<WebView>>,WTF::HashTraits<WTF::RetainPtr<WebView>>,WTF::DefaultHash<WTF::RetainPtr<WebView>><objc_object  {objcproto44WebGeolocationProviderInitializationListener}*>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::~HashMap(void *result, void *a2)
{
  v2 = *result;
  if (*result)
  {
    v3 = result;
    v4 = *(v2 - 4);
    if (v4)
    {
      v5 = *result;
      do
      {
        v6 = *v5;
        if (*v5 != -1)
        {
          v7 = *(v5 + 8);
          *(v5 + 8) = 0;
          if (v7)
          {

            v6 = *v5;
          }

          *v5 = 0;
          if (v6)
          {
          }
        }

        v5 += 16;
        --v4;
      }

      while (v4);
    }

    WTF::fastFree((v2 - 16), a2);
    return v3;
  }

  return result;
}

void sub_1C7ADC2F8(_Unwind_Exception *a1, void *a2, uint64_t a3, ...)
{
  va_start(va, a3);
  WTF::HashMap<WTF::RetainPtr<WebView>,WTF::RetainPtr<objc_object  {objcproto44WebGeolocationProviderInitializationListener}*>,WTF::DefaultHash<WTF::RetainPtr<WebView>>,WTF::HashTraits<WTF::RetainPtr<WebView>>,WTF::DefaultHash<WTF::RetainPtr<WebView>><objc_object  {objcproto44WebGeolocationProviderInitializationListener}*>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::~HashMap(va, a2);
  _Unwind_Resume(a1);
}

void sub_1C7ADCB28(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14)
{
  if (a14)
  {

    if (!v14)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else if (!v14)
  {
    goto LABEL_3;
  }

  _Unwind_Resume(exception_object);
}

uint64_t __copy_helper_block_e8_40c46_ZTSN3WTF9RetainPtrI22WebGeolocationPositionEE(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(result + 40) = v2;
  if (v2)
  {
    return MEMORY[0x1EEE66C98]();
  }

  return result;
}

void __destroy_helper_block_e8_40c46_ZTSN3WTF9RetainPtrI22WebGeolocationPositionEE(uint64_t a1)
{
  v1 = *(a1 + 40);
  *(a1 + 40) = 0;
  if (v1)
  {
  }
}

uint64_t *WTF::HashTable<WebView *,WebView *,WTF::IdentityExtractor,WTF::DefaultHash<WebView *>,WTF::HashTraits<WebView *>,WTF::HashTraits<WebView *>,WTF::FastMalloc>::add<(WTF::ShouldValidateKey)1>@<X0>(uint64_t *result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a2;
  if (*a2 == -1 || !v4)
  {
    __break(0xC471u);
    JUMPOUT(0x1C7ADCE70);
  }

  v5 = result;
  v6 = *result;
  if (!*result)
  {
    v7 = a2;
    result = WTF::HashTable<WebView *,WebView *,WTF::IdentityExtractor,WTF::DefaultHash<WebView *>,WTF::HashTraits<WebView *>,WTF::HashTraits<WebView *>,WTF::FastMalloc>::rehash(result, 8u, 0);
    a2 = v7;
    v6 = *v5;
    v4 = *v7;
  }

  v8 = *(v6 - 8);
  v9 = (v4 + ~(v4 << 32)) ^ ((v4 + ~(v4 << 32)) >> 22);
  v10 = 9 * ((v9 + ~(v9 << 13)) ^ ((v9 + ~(v9 << 13)) >> 8));
  v11 = (v10 ^ (v10 >> 15)) + ~((v10 ^ (v10 >> 15)) << 27);
  v12 = v8 & ((v11 >> 31) ^ v11);
  v13 = (v6 + 8 * v12);
  v14 = *v13;
  if (*v13)
  {
    v15 = 0;
    v16 = 1;
    do
    {
      if (v14 == v4)
      {
        v22 = v6 + 8 * *(v6 - 4);
        *a3 = v13;
        *(a3 + 8) = v22;
        *(a3 + 16) = 0;
        return result;
      }

      if (v14 == -1)
      {
        v15 = v13;
      }

      v12 = (v12 + v16) & v8;
      v13 = (v6 + 8 * v12);
      v14 = *v13;
      ++v16;
    }

    while (*v13);
    if (v15)
    {
      *v15 = 0;
      --*(*v5 - 16);
      v4 = *a2;
      v13 = v15;
    }
  }

  *v13 = v4;
  v17 = *v5;
  if (*v5)
  {
    v18 = *(v17 - 16);
    v19 = *(v17 - 12) + 1;
    *(v17 - 12) = v19;
    v20 = (v18 + v19);
    v21 = *(v17 - 4);
    if (v21 <= 0x400)
    {
      goto LABEL_15;
    }

LABEL_21:
    if (v21 > 2 * v20)
    {
      goto LABEL_24;
    }

    goto LABEL_22;
  }

  v19 = 1;
  MEMORY[0xFFFFFFFFFFFFFFF4] = 1;
  v20 = (MEMORY[0xFFFFFFFFFFFFFFF0] + 1);
  v21 = MEMORY[0xFFFFFFFFFFFFFFFC];
  if (MEMORY[0xFFFFFFFFFFFFFFFC] > 0x400u)
  {
    goto LABEL_21;
  }

LABEL_15:
  if (3 * v21 <= 4 * v20)
  {
    if (!v21)
    {
      result = WTF::HashTable<WebView *,WebView *,WTF::IdentityExtractor,WTF::DefaultHash<WebView *>,WTF::HashTraits<WebView *>,WTF::HashTraits<WebView *>,WTF::FastMalloc>::rehash(v5, 8u, v13);
      v13 = result;
      v17 = *v5;
      if (!*v5)
      {
LABEL_18:
        v21 = 0;
        goto LABEL_24;
      }

LABEL_23:
      v21 = *(v17 - 4);
      goto LABEL_24;
    }

LABEL_22:
    result = WTF::HashTable<WebView *,WebView *,WTF::IdentityExtractor,WTF::DefaultHash<WebView *>,WTF::HashTraits<WebView *>,WTF::HashTraits<WebView *>,WTF::FastMalloc>::rehash(v5, v21 << (6 * v19 >= (2 * v21)), v13);
    v13 = result;
    v17 = *v5;
    if (!*v5)
    {
      goto LABEL_18;
    }

    goto LABEL_23;
  }

LABEL_24:
  *a3 = v13;
  *(a3 + 8) = v17 + 8 * v21;
  *(a3 + 16) = 1;
  return result;
}

void *WTF::HashTable<WebView *,WebView *,WTF::IdentityExtractor,WTF::DefaultHash<WebView *>,WTF::HashTraits<WebView *>,WTF::HashTraits<WebView *>,WTF::FastMalloc>::rehash(uint64_t *a1, unsigned int a2, uint64_t *a3)
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

  v9 = WTF::fastZeroedMalloc((8 * a2 + 16));
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
      v13 = (v6 + 8 * v11);
      v14 = *v13;
      if ((*v13 + 1) >= 2)
      {
        v15 = *a1;
        v16 = *a1 ? *(v15 - 8) : 0;
        v17 = (~(v14 << 32) + v14) ^ ((~(v14 << 32) + v14) >> 22);
        v18 = 9 * ((v17 + ~(v17 << 13)) ^ ((v17 + ~(v17 << 13)) >> 8));
        v19 = (v18 ^ (v18 >> 15)) + ~((v18 ^ (v18 >> 15)) << 27);
        v20 = v16 & ((v19 >> 31) ^ v19);
        v21 = 1;
        do
        {
          v22 = v20;
          v23 = *(v15 + 8 * v20);
          v20 = (v20 + v21++) & v16;
        }

        while (v23);
        v24 = (v15 + 8 * v22);
        *v24 = v14;
        if (v13 == a3)
        {
          v12 = v24;
        }
      }

      ++v11;
    }

    while (v11 != v7);
  }

  else
  {
    v12 = 0;
  }

  if (v6)
  {
    WTF::fastFree((v6 - 16), v10);
  }

  return v12;
}

_DWORD *WTF::HashTable<WTF::RetainPtr<WebView>,WTF::KeyValuePair<WTF::RetainPtr<WebView>,WTF::RetainPtr<objc_object  {objcproto44WebGeolocationProviderInitializationListener}*>>,WTF::KeyValuePairKeyExtractor<WTF::RetainPtr<objc_object  {objcproto44WebGeolocationProviderInitializationListener}*>>,WTF::DefaultHash<WTF::RetainPtr<WebView>>,WTF::HashMap<WTF::RetainPtr<WebView>,objc_object  {objcproto44WebGeolocationProviderInitializationListener}*,WTF::DefaultHash,WTF::HashTraits<WTF::RetainPtr<WebView>>,WTF::HashMap<objc_object  {objcproto44WebGeolocationProviderInitializationListener}*>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits,WTF::ShouldValidateKey>::rehash(uint64_t *a1, unsigned int a2)
{
  v4 = *a1;
  if (*a1)
  {
    v5 = *(v4 - 4);
    v6 = *(v4 - 12);
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

  result = WTF::fastZeroedMalloc((16 * a2 + 16));
  *a1 = (result + 4);
  result[2] = a2 - 1;
  result[3] = a2;
  *result = 0;
  result[1] = v6;
  if (v5)
  {
    for (i = 0; i != v5; ++i)
    {
      v10 = v4 + 16 * i;
      v11 = *v10;
      if (*v10 != -1)
      {
        if (v11)
        {
          v13 = *a1;
          if (*a1)
          {
            v14 = *(v13 - 8);
          }

          else
          {
            v14 = 0;
          }

          v15 = (v11 + ~(v11 << 32)) ^ ((v11 + ~(v11 << 32)) >> 22);
          v16 = 9 * ((v15 + ~(v15 << 13)) ^ ((v15 + ~(v15 << 13)) >> 8));
          v17 = (v16 ^ (v16 >> 15)) + ~((v16 ^ (v16 >> 15)) << 27);
          v18 = v14 & ((v17 >> 31) ^ v17);
          v19 = 1;
          do
          {
            v20 = v18;
            v21 = *(v13 + 16 * v18);
            v18 = (v18 + v19++) & v14;
          }

          while (v21);
          v22 = v13 + 16 * v20;
          v23 = *(v22 + 8);
          *(v22 + 8) = 0;
          if (v23)
          {

            v24 = *v22;
            *v22 = 0;
            if (v24)
            {
            }
          }

          else
          {
            *v22 = 0;
          }

          v25 = *v10;
          *v10 = 0;
          *v22 = v25;
          v26 = *(v10 + 8);
          *(v10 + 8) = 0;
          *(v22 + 8) = v26;
          v27 = *(v10 + 8);
          *(v10 + 8) = 0;
          if (v27)
          {
          }

          v28 = *v10;
          *v10 = 0;
          if (v28)
          {
          }
        }

        else
        {
          v12 = *(v10 + 8);
          *(v10 + 8) = 0;
          if (v12)
          {

            v11 = *v10;
          }

          *v10 = 0;
          if (v11)
          {
          }
        }
      }
    }
  }

  else if (!v4)
  {
    return result;
  }

  return WTF::fastFree((v4 - 16), v8);
}

void sub_1C7ADE460(_Unwind_Exception *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  WTF::Vector<WTF::RetainPtr<NSMutableArray>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(va, a2);
  _Unwind_Resume(a1);
}

void sub_1C7ADE474(_Unwind_Exception *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  WTF::Vector<WTF::RetainPtr<NSMutableArray>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(va, a2);
  _Unwind_Resume(a1);
}

void sub_1C7ADE488(_Unwind_Exception *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  if (v11)
  {
  }

  WTF::Vector<WTF::RetainPtr<NSMutableArray>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(va, a2);
  _Unwind_Resume(a1);
}

uint64_t WTF::Vector<WTF::RetainPtr<NSMutableArray>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(uint64_t a1, void *a2)
{
  v3 = *(a1 + 12);
  if (v3)
  {
    v4 = *a1;
    v5 = 8 * v3;
    do
    {
      v6 = *v4;
      *v4 = 0;
      if (v6)
      {
      }

      ++v4;
      v5 -= 8;
    }

    while (v5);
  }

  v7 = *a1;
  if (*a1)
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    WTF::fastFree(v7, a2);
  }

  return a1;
}

void sub_1C7ADE95C(_Unwind_Exception *exception_object, void *a2)
{
  if (v2)
  {
    WTF::fastFree(v2, a2);
  }

  _Unwind_Resume(exception_object);
}

void sub_1C7ADEEF4(_Unwind_Exception *exception_object)
{
  if (v1)
  {
  }

  _Unwind_Resume(exception_object);
}

void sub_1C7ADF224(_Unwind_Exception *a1, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, WTF *a20, int a21)
{
  v22 = a20;
  if (a20)
  {
    a20 = 0;
    a21 = 0;
    WTF::fastFree(v22, a2);
  }

  HistoryPropertyListWriter::~HistoryPropertyListWriter(&a10);
  _Unwind_Resume(a1);
}

void WebHistoryWriter::~WebHistoryWriter(WebHistoryWriter *this, void *a2)
{
  *this = &unk_1F472DEC8;
  v3 = *(this + 10);
  if (v3)
  {
    *(this + 10) = 0;
    *(this + 22) = 0;
    v4 = this;
    WTF::fastFree(v3, a2);
    this = v4;
    v2 = vars8;
  }

  HistoryPropertyListWriter::~HistoryPropertyListWriter(this);
}

{
  *this = &unk_1F472DEC8;
  v3 = *(this + 10);
  if (v3)
  {
    *(this + 10) = 0;
    *(this + 22) = 0;
    WTF::fastFree(v3, a2);
  }

  HistoryPropertyListWriter::~HistoryPropertyListWriter(this);

  JUMPOUT(0x1CCA6A890);
}

{
  *this = &unk_1F472DEC8;
  v3 = *(this + 10);
  if (v3)
  {
    *(this + 10) = 0;
    *(this + 22) = 0;
    v4 = this;
    WTF::fastFree(v3, a2);
    this = v4;
    v2 = vars8;
  }

  HistoryPropertyListWriter::~HistoryPropertyListWriter(this);
}

void sub_1C7ADF96C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
  }

  _Unwind_Resume(exception_object);
}

uint64_t WebHistoryWriter::writeHistoryItems(uint64_t result, uint64_t a2)
{
  v2 = *(result + 92);
  v3 = (v2 - 1);
  if (v2 - 1 >= 0)
  {
    v5 = result;
    while (v3 < *(v5 + 92))
    {
      WTF::HashMap<long long,WTF::RetainPtr<NSMutableArray>,WTF::DefaultHash<long long>,WTF::HashTraits<long long>,WTF::HashTraits<WTF::RetainPtr<NSMutableArray>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<long long,WTF::RetainPtr<NSMutableArray>,WTF::DefaultHash<long long>,WTF::HashTraits<long long>,WTF::HashTraits<WTF::RetainPtr<NSMutableArray>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<long long>>,long long>(&v10, *(v5 + 72), *(*(v5 + 80) + 4 * v3));
      v7 = v10;
      if (v10)
      {
      }

      result = [v7 count];
      if (result)
      {
        v8 = result;
        for (i = 0; i != v8; ++i)
        {
          result = HistoryPropertyListWriter::writeHistoryItem(v5, a2, [v7 objectAtIndex:i]);
        }
      }

      if (v3-- <= 0)
      {
        return result;
      }
    }

    __break(0xC471u);
  }

  return result;
}

uint64_t WTF::HashMap<long long,WTF::RetainPtr<NSMutableArray>,WTF::DefaultHash<long long>,WTF::HashTraits<long long>,WTF::HashTraits<WTF::RetainPtr<NSMutableArray>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<long long,WTF::RetainPtr<NSMutableArray>,WTF::DefaultHash<long long>,WTF::HashTraits<long long>,WTF::HashTraits<WTF::RetainPtr<NSMutableArray>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<long long>>,long long>(uint64_t result, uint64_t *a2, const char *a3)
{
  if (a3 == -1)
  {
    __break(0xC471u);
    JUMPOUT(0x1C7ADFDC0);
  }

  if (!a3)
  {
    v11 = "/AppleInternal/Library/BuildRoots/4~CAs2ugA2tpMBixvyjjzI_x8zmF9N4IlVu0-_j7U/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/usr/local/include/wtf/HashTable.h";
    a3 = "void WTF::checkHashTableKey(const T &) [Key = long long, Value = WTF::KeyValuePair<long long, WTF::RetainPtr<NSMutableArray>>, Extractor = WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<long long, WTF::RetainPtr<NSMutableArray>>>, HashFunctions = WTF::DefaultHash<long long>, Traits = WTF::HashMap<long long, WTF::RetainPtr<NSMutableArray>>::KeyValuePairTraits, KeyTraits = WTF::HashTraits<long long>, HashTranslator = WTF::HashMapTranslatorAdapter<WTF::HashMap<long long, WTF::RetainPtr<NSMutableArray>>::KeyValuePairTraits, WTF::IdentityHashTranslator<WTF::HashMap<long long, WTF::RetainPtr<NSMutableArray>>::KeyValuePairTraits, WTF::DefaultHash<long long>>>, shouldValidateKey = WTF::ShouldValidateKey::Yes, T = long long]";
    result = 371;
    __break(0xC471u);
    return MEMORY[0x1EEE66C98](result, v11, a3);
  }

  v3 = *a2;
  if (*a2)
  {
    v4 = *(v3 - 8);
    v5 = &a3[~(a3 << 32)] ^ (&a3[~(a3 << 32)] >> 22);
    v6 = 9 * ((v5 + ~(v5 << 13)) ^ ((v5 + ~(v5 << 13)) >> 8));
    v7 = (v6 ^ (v6 >> 15)) + ~((v6 ^ (v6 >> 15)) << 27);
    v8 = v4 & ((v7 >> 31) ^ v7);
    v9 = *(v3 + 16 * v8);
    if (v9 != a3)
    {
      v10 = 1;
      while (v9)
      {
        v8 = (v8 + v10) & v4;
        v9 = *(v3 + 16 * v8);
        ++v10;
        if (v9 == a3)
        {
          goto LABEL_8;
        }
      }

      goto LABEL_10;
    }

LABEL_8:
    v11 = *(v3 + 16 * v8 + 8);
    *result = v11;
    if (!v11)
    {
      return result;
    }

    return MEMORY[0x1EEE66C98](result, v11, a3);
  }

LABEL_10:
  *result = 0;
  return result;
}

void sub_1C7AE004C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, WTF::StringImpl *a10, WTF::StringImpl *a11, uint64_t a12)
{
  WTF::Ref<WebCore::HistoryItem,WTF::RawPtrTraits<WebCore::HistoryItem>,WTF::DefaultRefDerefTraits<WebCore::HistoryItem>>::~Ref(&a12);
  if (a9 && atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a9, v13);
  }

  if (a10 && atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a10, v13);
  }

  if (a11)
  {
    if (atomic_fetch_add_explicit(a11, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a11, v13);
    }
  }

  _Unwind_Resume(a1);
}

void sub_1C7AE028C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, WTF::StringImpl *a10, WTF::StringImpl *a11, uint64_t a12)
{
  WTF::Ref<WebCore::HistoryItem,WTF::RawPtrTraits<WebCore::HistoryItem>,WTF::DefaultRefDerefTraits<WebCore::HistoryItem>>::~Ref(&a12);
  if (a9 && atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a9, v13);
  }

  if (a10 && atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a10, v13);
  }

  if (a11)
  {
    if (atomic_fetch_add_explicit(a11, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a11, v13);
    }
  }

  _Unwind_Resume(a1);
}

void sub_1C7AE0860(_Unwind_Exception *a1, void *a2)
{
  if (v3)
  {
    if (atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v3);
      WTF::fastFree(v3, a2);

      _Unwind_Resume(a1);
    }
  }

  _Unwind_Resume(a1);
}

void sub_1C7AE08A0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  WTF::Ref<WebCore::HistoryItem,WTF::RawPtrTraits<WebCore::HistoryItem>,WTF::DefaultRefDerefTraits<WebCore::HistoryItem>>::~Ref(va);
  _Unwind_Resume(a1);
}

void sub_1C7AE09FC(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10)
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

void sub_1C7AE0B18(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v10, a2);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_1C7AE0E54(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if (atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v12, a2);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t kit(WebCore::HistoryItem *a1)
{
  if (!a1)
  {
    return 0;
  }

  if (_MergedGlobals_19)
  {
    if (qword_1ED6A6220)
    {
      v2 = *(qword_1ED6A6220 - 8);
      v3 = (a1 + ~(a1 << 32)) ^ ((a1 + ~(a1 << 32)) >> 22);
      v4 = 9 * ((v3 + ~(v3 << 13)) ^ ((v3 + ~(v3 << 13)) >> 8));
      v5 = (v4 ^ (v4 >> 15)) + ~((v4 ^ (v4 >> 15)) << 27);
      v6 = v2 & ((v5 >> 31) ^ v5);
      for (i = 1; ; ++i)
      {
        v8 = v6;
        v9 = *(qword_1ED6A6220 + 16 * v6);
        if (v9 != -1)
        {
          if (!v9)
          {
            goto LABEL_15;
          }

          v10 = *(v9 + 8);
          if (!v10)
          {
            result = 92;
            __break(0xC471u);
            return result;
          }

          if (v10 == a1)
          {
            break;
          }
        }

        v6 = (v8 + i) & v2;
      }

      v11 = *(qword_1ED6A6220 + 16 * v8 + 8);
      if (!v11)
      {
        goto LABEL_15;
      }

      v12 = v11;
      v13 = v11;
      return v11;
    }
  }

  else
  {
    qword_1ED6A6220 = 0;
    _MergedGlobals_19 = 1;
  }

LABEL_15:
  v15 = [WebHistoryItem alloc];
  ++*(a1 + 2);
  v21 = a1;
  v16 = [(WebHistoryItem *)v15 initWithWebCoreHistoryItem:&v21];
  v11 = v16;
  if (v16)
  {
    v17 = v16;
  }

  v18 = v21;
  v21 = 0;
  if (!v18)
  {
    return v11;
  }

  if (*(v18 + 2) == 1)
  {
    v19 = MEMORY[0x1CCA64170]();
    WTF::fastFree(v19, v20);
  }

  else
  {
    --*(v18 + 2);
  }

  return v11;
}

void sub_1C7AE1078(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  WTF::Ref<WebCore::HistoryItem,WTF::RawPtrTraits<WebCore::HistoryItem>,WTF::DefaultRefDerefTraits<WebCore::HistoryItem>>::~Ref(va);
  _Unwind_Resume(a1);
}

void sub_1C7AE108C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  WTF::Ref<WebCore::HistoryItem,WTF::RawPtrTraits<WebCore::HistoryItem>,WTF::DefaultRefDerefTraits<WebCore::HistoryItem>>::~Ref(va);
  _Unwind_Resume(a1);
}

void sub_1C7AE12A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, WTF::StringImpl *a10, WTF::StringImpl *a11, uint64_t a12)
{
  WTF::Ref<WebCore::HistoryItem,WTF::RawPtrTraits<WebCore::HistoryItem>,WTF::DefaultRefDerefTraits<WebCore::HistoryItem>>::~Ref(&a12);
  if (a9 && atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a9, v13);
  }

  if (a10 && atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a10, v13);
  }

  if (a11)
  {
    if (atomic_fetch_add_explicit(a11, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a11, v13);
    }
  }

  _Unwind_Resume(a1);
}

void sub_1C7AE16D8(_Unwind_Exception *exception_object, void *a2)
{
  if (v2)
  {
    if (atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v2);
      WTF::fastFree(v2, a2);
      _Unwind_Resume(exception_object);
    }
  }

  _Unwind_Resume(exception_object);
}

void sub_1C7AE1770(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10)
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

void sub_1C7AE1C7C(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, WTF::StringImpl *a18)
{
  if (a18)
  {
    if (atomic_fetch_add_explicit(a18, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a18, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

void sub_1C7AE1CBC(_Unwind_Exception *a1, WTF::StringImpl *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(va, a2);
  _Unwind_Resume(a1);
}

void sub_1C7AE1CD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  WTF::Ref<WebCore::HistoryItem,WTF::RawPtrTraits<WebCore::HistoryItem>,WTF::DefaultRefDerefTraits<WebCore::HistoryItem>>::~Ref(va);

  _Unwind_Resume(a1);
}

void sub_1C7AE1D98(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10)
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

void sub_1C7AE21FC(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v10, a2);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void WTF::createNSArray<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &>(uint64_t *a1, uint64_t a2)
{
  v4 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:*(a2 + 12)];
  *a1 = v4;
  v6 = *(a2 + 12);
  if (v6)
  {
    v7 = v4;
    v8 = *a2;
    v9 = 8 * v6;
    do
    {
      WTF::makeNSArrayElement(&v11, v8, v5);
      if (v11)
      {
        [v7 addObject:?];
        v10 = v11;
        v11 = 0;
        if (v10)
        {
        }
      }

      v8 = (v8 + 8);
      v9 -= 8;
    }

    while (v9);
  }
}

void sub_1C7AE2328(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  if (a10)
  {

    *v10 = 0;
    if (!v11)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else
  {
    *v10 = 0;
    if (!v11)
    {
      goto LABEL_3;
    }
  }

  _Unwind_Resume(exception_object);
}

void sub_1C7AE247C(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10)
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

void sub_1C7AE2560(_Unwind_Exception *exception_object)
{
  if (v1)
  {
  }

  _Unwind_Resume(exception_object);
}

void sub_1C7AE2650(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, WTF::StringImpl *a10)
{
  if (a9)
  {
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

uint64_t WTF::HashTable<WTF::WeakRef<WebCore::HistoryItem,WTF::DefaultWeakPtrImpl>,WTF::KeyValuePair<WTF::WeakRef<WebCore::HistoryItem,WTF::DefaultWeakPtrImpl>,WebHistoryItem *>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::WeakRef<WebCore::HistoryItem,WTF::DefaultWeakPtrImpl>,WebHistoryItem *>>,WTF::DefaultHash<WTF::WeakRef<WebCore::HistoryItem,WTF::DefaultWeakPtrImpl>>,WTF::HashMap<WTF::WeakRef<WebCore::HistoryItem,WTF::DefaultWeakPtrImpl>,WebHistoryItem *,WTF::DefaultHash<WTF::WeakRef<WebCore::HistoryItem,WTF::DefaultWeakPtrImpl>>,WTF::HashTraits<WTF::WeakRef<WebCore::HistoryItem,WTF::DefaultWeakPtrImpl>>,WTF::HashTraits<WebHistoryItem *>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::WeakRef<WebCore::HistoryItem,WTF::DefaultWeakPtrImpl>>,WTF::FastMalloc>::rehash(unsigned int a1)
{
  v2 = qword_1ED6A6220;
  if (qword_1ED6A6220)
  {
    v3 = *(qword_1ED6A6220 - 4);
    v4 = *(qword_1ED6A6220 - 12);
  }

  else
  {
    v3 = 0;
    v4 = 0;
  }

  result = WTF::fastZeroedMalloc((16 * a1 + 16));
  qword_1ED6A6220 = result + 16;
  *(result + 8) = a1 - 1;
  *(result + 12) = a1;
  *result = 0;
  *(result + 4) = v4;
  if (v3)
  {
    v7 = 0;
    while (1)
    {
      v8 = (v2 + 16 * v7);
      v9 = *v8;
      if (*v8 != -1)
      {
        if (v9)
        {
          if (qword_1ED6A6220)
          {
            v10 = *(qword_1ED6A6220 - 8);
            v11 = *(v9 + 1);
            if (!v11)
            {
              goto LABEL_25;
            }
          }

          else
          {
            v10 = 0;
            v11 = *(v9 + 1);
            if (!v11)
            {
LABEL_25:
              result = 92;
              __break(0xC471u);
              return result;
            }
          }

          v12 = (~(v11 << 32) + v11) ^ ((~(v11 << 32) + v11) >> 22);
          v13 = 9 * ((v12 + ~(v12 << 13)) ^ ((v12 + ~(v12 << 13)) >> 8));
          v14 = (v13 ^ (v13 >> 15)) + ~((v13 ^ (v13 >> 15)) << 27);
          v15 = v10 & ((v14 >> 31) ^ v14);
          v16 = 1;
          do
          {
            v17 = v15;
            v18 = *(qword_1ED6A6220 + 16 * v15);
            v15 = (v15 + v16++) & v10;
          }

          while (v18);
          v19 = (qword_1ED6A6220 + 16 * v17);
          *v8 = 0;
          *v19 = v9;
          v20 = *v8;
          v19[1] = v8[1];
          *v8 = 0;
          if (v20 && atomic_fetch_add(v20, 0xFFFFFFFF) == 1)
          {
            atomic_store(1u, v20);
            WTF::fastFree(v20, v6);
          }
        }

        else
        {
          *v8 = 0;
        }
      }

      if (++v7 == v3)
      {
        goto LABEL_21;
      }
    }
  }

  if (v2)
  {
LABEL_21:

    return WTF::fastFree((v2 - 16), v6);
  }

  return result;
}

void WTF::createNSArray<WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> const&>(void **a1, WTF **a2)
{
  v4 = objc_alloc(MEMORY[0x1E695DF70]);
  if (*a2)
  {
    *a1 = [v4 initWithCapacity:*(*a2 - 3)];
    v6 = *a2;
    if (*a2)
    {
      goto LABEL_3;
    }

LABEL_12:
    v8 = 0;
    v7 = 0;
LABEL_13:
    v10 = v8;
    v8 = (v6 + 8 * v7);
    if (v6)
    {
      goto LABEL_10;
    }

LABEL_14:
    v12 = 0;
    goto LABEL_22;
  }

  *a1 = [v4 initWithCapacity:0];
  v6 = *a2;
  if (!*a2)
  {
    goto LABEL_12;
  }

LABEL_3:
  v7 = *(v6 - 1);
  v8 = (v6 + 8 * v7);
  if (!*(v6 - 3))
  {
    goto LABEL_13;
  }

  if (!v7)
  {
    v11 = 0;
    v10 = v6;
    goto LABEL_16;
  }

  v9 = 8 * v7;
  v10 = v6;
  while ((*v10 + 1) <= 1)
  {
    v10 = (v10 + 8);
    v9 -= 8;
    if (!v9)
    {
      v10 = v8;
      break;
    }
  }

  if (!v6)
  {
    goto LABEL_14;
  }

LABEL_10:
  v11 = *(v6 - 1);
LABEL_16:
  v12 = (v6 + 8 * v11);
LABEL_22:
  while (v10 != v12)
  {
    v13 = *a1;
    WTF::makeNSArrayElement(&v15, v10, v5);
    if (v15)
    {
      [v13 addObject:?];
      v14 = v15;
      v15 = 0;
      if (v14)
      {
      }
    }

    do
    {
      v10 = (v10 + 8);
    }

    while (v10 != v8 && (*v10 + 1) <= 1);
  }
}

void sub_1C7AE2E24(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  if (a10)
  {

    v12 = *v10;
    *v10 = 0;
    if (!v12)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else
  {
    v12 = *v10;
    *v10 = 0;
    if (!v12)
    {
      goto LABEL_3;
    }
  }

  _Unwind_Resume(exception_object);
}

void WTF::createNSArray<WTF::HashSet<WTF::String,WTF::ASCIICaseInsensitiveHash,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> &>(void **a1, WTF **a2)
{
  v4 = objc_alloc(MEMORY[0x1E695DF70]);
  if (*a2)
  {
    *a1 = [v4 initWithCapacity:*(*a2 - 3)];
    v6 = *a2;
    if (*a2)
    {
      goto LABEL_3;
    }

LABEL_12:
    v8 = 0;
    v7 = 0;
LABEL_13:
    v10 = v8;
    v8 = (v6 + 8 * v7);
    if (v6)
    {
      goto LABEL_10;
    }

LABEL_14:
    v12 = 0;
    goto LABEL_22;
  }

  *a1 = [v4 initWithCapacity:0];
  v6 = *a2;
  if (!*a2)
  {
    goto LABEL_12;
  }

LABEL_3:
  v7 = *(v6 - 1);
  v8 = (v6 + 8 * v7);
  if (!*(v6 - 3))
  {
    goto LABEL_13;
  }

  if (!v7)
  {
    v11 = 0;
    v10 = v6;
    goto LABEL_16;
  }

  v9 = 8 * v7;
  v10 = v6;
  while ((*v10 + 1) <= 1)
  {
    v10 = (v10 + 8);
    v9 -= 8;
    if (!v9)
    {
      v10 = v8;
      break;
    }
  }

  if (!v6)
  {
    goto LABEL_14;
  }

LABEL_10:
  v11 = *(v6 - 1);
LABEL_16:
  v12 = (v6 + 8 * v11);
LABEL_22:
  while (v10 != v12)
  {
    v13 = *a1;
    WTF::makeNSArrayElement(&v15, v10, v5);
    if (v15)
    {
      [v13 addObject:?];
      v14 = v15;
      v15 = 0;
      if (v14)
      {
      }
    }

    do
    {
      v10 = (v10 + 8);
    }

    while (v10 != v8 && (*v10 + 1) <= 1);
  }
}

void sub_1C7AE301C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  if (a10)
  {

    v12 = *v10;
    *v10 = 0;
    if (!v12)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else
  {
    v12 = *v10;
    *v10 = 0;
    if (!v12)
    {
      goto LABEL_3;
    }
  }

  _Unwind_Resume(exception_object);
}

void sub_1C7AE30F4(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF *a9)
{
  if (a9)
  {
    WTF::fastFree(a9, a2);
  }

  _Unwind_Resume(exception_object);
}

WTF::StringImpl *WTF::createNSArray<WTF::FixedVector<WTF::ASCIILiteral,WTF::FastMalloc>>(WTF::StringImpl **a1, unsigned int **a2)
{
  v4 = objc_alloc(MEMORY[0x1E695DF70]);
  if (*a2)
  {
    v5 = **a2;
  }

  else
  {
    v5 = 0;
  }

  result = [v4 initWithCapacity:v5];
  v8 = result;
  *a1 = result;
  v9 = *a2;
  v10 = (*a2 + 2);
  if (*a2)
  {
    v11 = (*a2 + 2);
  }

  else
  {
    v11 = 0;
  }

  if (v9)
  {
    v12 = v10 + 16 * *v9;
    if (v11 == v12)
    {
      return result;
    }
  }

  else
  {
    v12 = 0;
    if (!v11)
    {
      return result;
    }
  }

  v13 = MEMORY[0x1E696EB88];
  do
  {
    v14 = *(v11 + 8);
    if (v14)
    {
      v7 = (v14 - 1);
      if (v14 == 1)
      {
        atomic_fetch_add_explicit(v13, 2u, memory_order_relaxed);
        v15 = v13;
      }

      else
      {
        WTF::StringImpl::createWithoutCopyingNonEmpty();
        v15 = v18[1];
      }

      v17 = v15;
    }

    else
    {
      v17 = 0;
    }

    WTF::makeNSArrayElement(v18, &v17, v7);
    if (v18[0])
    {
      [(WTF::StringImpl *)v8 addObject:?];
      v16 = v18[0];
      v18[0] = 0;
      if (v16)
      {
      }
    }

    result = v17;
    v17 = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        result = WTF::StringImpl::destroy(result, v7);
      }
    }

    v11 += 16;
  }

  while (v11 != v12);
  return result;
}

void sub_1C7AE3258(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10, uint64_t a11)
{
  *v11 = 0;
  if (v12)
  {
  }

  _Unwind_Resume(exception_object);
}

void sub_1C7AE3334(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF *a9)
{
  if (a9)
  {
    WTF::fastFree(a9, a2);
  }

  _Unwind_Resume(exception_object);
}

void sub_1C7AE3648(_Unwind_Exception *a1, WTF::StringImpl *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  WebCore::ResourceError::~ResourceError(&a9, a2);

  _Unwind_Resume(a1);
}

void sub_1C7AE379C(_Unwind_Exception *exception_object)
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

void sub_1C7AE3A30(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10, uint64_t a11)
{
  if (a10)
  {
    if (atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a10, a2);
      _Unwind_Resume(exception_object);
    }
  }

  _Unwind_Resume(exception_object);
}

void sub_1C7AE3D34(_Unwind_Exception *a1, WTF::StringImpl *a2)
{
  if (*(v3 + 7) == 2)
  {
    WebCore::Node::removedLastRef(v3);
  }

  else
  {
    *(v3 + 7) -= 2;
  }

  if (v2)
  {
    if (atomic_fetch_add_explicit(v2, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v2, a2);
    }
  }

  --*v4;
  _Unwind_Resume(a1);
}

void sub_1C7AE3FA8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WebCore::Node *a10)
{
  if (a10)
  {
    if (*(a10 + 7) == 2)
    {
      WebCore::Node::removedLastRef(a10);
      _Unwind_Resume(exception_object);
    }

    *(a10 + 7) -= 2;
  }

  _Unwind_Resume(exception_object);
}