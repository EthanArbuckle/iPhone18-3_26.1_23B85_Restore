void (*WebFrameLoaderClient::dispatchDidStartProvisionalLoad(WebFrameLoaderClient *this))(void)
{
  v2 = *WebCore::ResourceRequestBase::url((*(*(*(*(*(this + 3) + 8) + 8) + 208) + 104) + 880));
  if (v2)
  {
    atomic_fetch_add_explicit(v2, 2u, memory_order_relaxed);
    MEMORY[0x1CCA63450](&v14, v2);
    if (atomic_fetch_add_explicit(v2, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v2, v3);
    }
  }

  else
  {
    v14 = &stru_1F472E7E8;
    v13 = &stru_1F472E7E8;
  }

  v4 = *(*(this + 3) + 8);
  v5 = v14;
  v14 = 0;
  v6 = *(v4 + 64);
  *(v4 + 64) = v5;
  if (v6)
  {

    v7 = v14;
    v14 = 0;
    if (v7)
    {
    }
  }

  v8 = *(this + 3);
  if (!v8)
  {
    goto LABEL_12;
  }

  v9 = *(*(v8 + 8) + 8);
  if (!v9)
  {
    goto LABEL_12;
  }

  v10 = *(v9 + 24);
  if (!v10)
  {
    Weak = 0;
    goto LABEL_16;
  }

  Weak = *(v10 + 8);
  if (!Weak)
  {
LABEL_16:
    [-[WebView _UIKitDelegateForwarder](Weak "_UIKitDelegateForwarder")];
    goto LABEL_13;
  }

  if ((*(Weak->super.viewRef->var1->notificationCallback + 180))(Weak->super.viewRef->var1))
  {
LABEL_12:
    Weak = 0;
    [objc_msgSend(0 "_UIKitDelegateForwarder")];
    goto LABEL_13;
  }

  Weak = objc_loadWeak(&Weak->super.viewRef->var1->responderCallback);
  [-[WebView _UIKitDelegateForwarder](Weak "_UIKitDelegateForwarder")];
  if (Weak)
  {
    result = Weak->_private->frameLoadDelegateImplementations.didStartProvisionalLoadForFrameFunc;
    if (!result)
    {
      return result;
    }

    return CallFrameLoadDelegate(result, Weak, sel_webView_didStartProvisionalLoadForFrame_, *(this + 3));
  }

LABEL_13:
  result = qword_1EC261268;
  if (!qword_1EC261268)
  {
    return result;
  }

  return CallFrameLoadDelegate(result, Weak, sel_webView_didStartProvisionalLoadForFrame_, *(this + 3));
}

void sub_1C7A6544C(_Unwind_Exception *exception_object, WTF::StringImpl *a2)
{
  if (atomic_fetch_add_explicit(v2, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v2, a2);
  }

  _Unwind_Resume(exception_object);
}

void WebFrameLoaderClient::dispatchDidReceiveTitle(uint64_t a1, WTF::StringImpl *a2)
{
  v3 = *a2;
  if (*a2)
  {
    if (v3[1] <= 0x3E8)
    {
      atomic_fetch_add_explicit(v3, 2u, memory_order_relaxed);
      v19 = v3;
      v20 = *(a2 + 8);
      v5 = *(a1 + 24);
      if (!v5)
      {
LABEL_12:
        v8 = 0;
        goto LABEL_13;
      }
    }

    else
    {
      WTF::StringImpl::substring(v3);
      v20 = *(a2 + 8);
      v5 = *(a1 + 24);
      if (!v5)
      {
        goto LABEL_12;
      }
    }
  }

  else
  {
    v19 = 0;
    v20 = *(a2 + 8);
    v5 = *(a1 + 24);
    if (!v5)
    {
      goto LABEL_12;
    }
  }

  v6 = *(*(v5 + 8) + 8);
  if (!v6)
  {
    goto LABEL_12;
  }

  v7 = *(v6 + 24);
  if (!v7)
  {
    goto LABEL_12;
  }

  v8 = *(v7 + 8);
  if (!v8)
  {
    goto LABEL_13;
  }

  if ((*(**(v8[7] + 16) + 1440))(*(v8[7] + 16)))
  {
    goto LABEL_12;
  }

  Weak = objc_loadWeak((*(v8[7] + 16) + 16));
  v8 = Weak;
  if (Weak)
  {
    v9 = v19;
    if (!*(Weak[10] + 536))
    {
      goto LABEL_20;
    }

    goto LABEL_14;
  }

LABEL_13:
  v9 = v19;
  if (!qword_1EC261270)
  {
    goto LABEL_20;
  }

LABEL_14:
  if (v9)
  {
    atomic_fetch_add_explicit(v9, 2u, memory_order_relaxed);
    MEMORY[0x1CCA63450](&v18, v9);
    if (atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v9, v10);
    }
  }

  else
  {
    v18 = &stru_1F472E7E8;
    v17 = &stru_1F472E7E8;
  }

  v11 = v18;
  v12 = *(a1 + 24);
  v13 = [v8 _frameLoadDelegateForwarder];
  CallDelegate(v8, v13, sel_webView_didReceiveTitle_forFrame_, v11, v12, v14);
  v15 = v18;
  v18 = 0;
  if (v15)
  {
  }

  v9 = v19;
LABEL_20:
  v19 = 0;
  if (v9)
  {
    if (atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v9, a2);
    }
  }
}

void sub_1C7A65658(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, WTF::StringImpl *a11)
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

void (*WebFrameLoaderClient::dispatchDidCommitLoad(uint64_t a1))(void)
{
  v2 = *(a1 + 24);
  if (!v2)
  {
    goto LABEL_6;
  }

  v3 = *(*(v2 + 8) + 8);
  if (!v3)
  {
    goto LABEL_6;
  }

  v4 = *(v3 + 24);
  if (!v4)
  {
    goto LABEL_6;
  }

  Weak = *(v4 + 8);
  if (!Weak)
  {
    goto LABEL_7;
  }

  if (((*(Weak->super.viewRef->var1->notificationCallback + 180))(Weak->super.viewRef->var1) & 1) == 0)
  {
    Weak = objc_loadWeak(&Weak->super.viewRef->var1->responderCallback);
  }

  else
  {
LABEL_6:
    Weak = 0;
  }

LABEL_7:
  [(WebView *)Weak _didCommitLoadForFrame:*(a1 + 24)];
  v6 = *(*(a1 + 24) + 8);
  v7 = *(v6 + 64);
  if (v7)
  {
    v8 = v7;
  }

  v9 = *(v6 + 56);
  *(v6 + 56) = v7;
  if (v9)
  {
  }

  v10 = *(*(a1 + 24) + 8);
  v11 = *(v10 + 64);
  *(v10 + 64) = 0;
  if (v11)
  {
  }

  [-[WebView _UIKitDelegateForwarder](Weak "_UIKitDelegateForwarder")];
  if (Weak)
  {
    result = Weak->_private->frameLoadDelegateImplementations.didCommitLoadForFrameFunc;
    if (!result)
    {
      return result;
    }
  }

  else
  {
    result = qword_1EC261278;
    if (!qword_1EC261278)
    {
      return result;
    }
  }

  v13 = *(a1 + 24);

  return CallFrameLoadDelegate(result, Weak, sel_webView_didCommitLoadForFrame_, v13);
}

uint64_t WebFrameLoaderClient::dispatchDidFailProvisionalLoad(uint64_t a1, uint64_t a2)
{
  v4 = *(*(a1 + 24) + 8);
  v5 = *(v4 + 64);
  *(v4 + 64) = 0;
  if (v5)
  {
  }

  v6 = *(a1 + 24);
  if (!v6)
  {
    goto LABEL_8;
  }

  v7 = *(*(v6 + 8) + 8);
  if (!v7)
  {
    goto LABEL_8;
  }

  v8 = *(v7 + 24);
  if (!v8)
  {
    goto LABEL_8;
  }

  v9 = *(v8 + 8);
  if (!v9)
  {
    goto LABEL_9;
  }

  if ((*(**(v9[7] + 16) + 1440))(*(v9[7] + 16)))
  {
LABEL_8:
    v9 = 0;
    goto LABEL_9;
  }

  Weak = objc_loadWeak((*(v9[7] + 16) + 16));
  v9 = Weak;
  if (!Weak)
  {
LABEL_9:
    if (!qword_1EC261280)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  if (*(Weak[10] + 552))
  {
LABEL_10:
    v10 = MEMORY[0x1CCA691D0](a2);
    v11 = *(a1 + 24);
    v12 = [v9 _frameLoadDelegateForwarder];
    CallDelegate(v9, v12, sel_webView_didFailProvisionalLoadWithError_forFrame_, v10, v11, v13);
  }

LABEL_11:
  v14 = *(a1 + 24);
  v15 = *(*(v14 + 8) + 40);
  v16 = MEMORY[0x1CCA691D0](a2);

  return [v15 webFrame:v14 didFinishLoadWithError:v16];
}

uint64_t WebFrameLoaderClient::dispatchDidFailLoad(WebFrameLoaderClient *this, const WebCore::ResourceError *a2)
{
  v4 = *(this + 3);
  if (!v4)
  {
    goto LABEL_6;
  }

  v5 = *(*(v4 + 8) + 8);
  if (!v5)
  {
    goto LABEL_6;
  }

  v6 = *(v5 + 24);
  if (!v6)
  {
    goto LABEL_6;
  }

  v7 = *(v6 + 8);
  if (!v7)
  {
    goto LABEL_7;
  }

  if ((*(**(v7[7] + 16) + 1440))(*(v7[7] + 16)))
  {
LABEL_6:
    v7 = 0;
    goto LABEL_7;
  }

  Weak = objc_loadWeak((*(v7[7] + 16) + 16));
  v7 = Weak;
  if (!Weak)
  {
LABEL_7:
    if (!qword_1EC261288)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  if (*(Weak[10] + 560))
  {
LABEL_8:
    v8 = MEMORY[0x1CCA691D0](a2);
    v9 = *(this + 3);
    v10 = [v7 _frameLoadDelegateForwarder];
    CallDelegate(v7, v10, sel_webView_didFailLoadWithError_forFrame_, v8, v9, v11);
  }

LABEL_9:
  [objc_msgSend(v7 "_UIKitDelegateForwarder")];
  v12 = *(this + 3);
  v13 = *(*(v12 + 8) + 40);
  v14 = MEMORY[0x1CCA691D0](a2);

  return [v13 webFrame:v12 didFinishLoadWithError:v14];
}

void (*WebFrameLoaderClient::dispatchDidFinishDocumentLoad(WebFrameLoaderClient *this))(void)
{
  v2 = *(this + 3);
  if (!v2)
  {
    goto LABEL_6;
  }

  v3 = *(*(v2 + 8) + 8);
  if (!v3)
  {
    goto LABEL_6;
  }

  v4 = *(v3 + 24);
  if (!v4)
  {
    goto LABEL_6;
  }

  Weak = *(v4 + 8);
  if (!Weak)
  {
    goto LABEL_7;
  }

  if (((*(Weak->super.viewRef->var1->notificationCallback + 180))(Weak->super.viewRef->var1) & 1) == 0)
  {
    Weak = objc_loadWeak(&Weak->super.viewRef->var1->responderCallback);
  }

  else
  {
LABEL_6:
    Weak = 0;
  }

LABEL_7:
  v6 = [(WebView *)Weak _webMailDelegate];
  if (objc_opt_respondsToSelector())
  {
    [v6 _webthread_webView:Weak didFinishDocumentLoadForFrame:*(this + 3)];
  }

  if (Weak)
  {
    result = Weak->_private->frameLoadDelegateImplementations.didFinishDocumentLoadForFrameFunc;
    if (!result)
    {
      return result;
    }
  }

  else
  {
    result = qword_1EC2612B8;
    if (!qword_1EC2612B8)
    {
      return result;
    }
  }

  v8 = *(this + 3);

  return CallFrameLoadDelegate(result, Weak, sel_webView_didFinishDocumentLoadForFrame_, v8);
}

uint64_t WebFrameLoaderClient::dispatchDidFinishLoad(WebFrameLoaderClient *this)
{
  v2 = *(this + 3);
  if (!v2)
  {
    goto LABEL_6;
  }

  v3 = *(*(v2 + 8) + 8);
  if (!v3)
  {
    goto LABEL_6;
  }

  v4 = *(v3 + 24);
  if (!v4)
  {
    goto LABEL_6;
  }

  Weak = *(v4 + 8);
  if (!Weak)
  {
    goto LABEL_7;
  }

  if (((*(Weak->super.viewRef->var1->notificationCallback + 180))(Weak->super.viewRef->var1) & 1) == 0)
  {
    Weak = objc_loadWeak(&Weak->super.viewRef->var1->responderCallback);
  }

  else
  {
LABEL_6:
    Weak = 0;
  }

LABEL_7:
  [-[WebView _UIKitDelegateForwarder](Weak "_UIKitDelegateForwarder")];
  v6 = [(WebView *)Weak _webMailDelegate];
  if (objc_opt_respondsToSelector())
  {
    [v6 _webthread_webView:Weak didFinishLoadForFrame:*(this + 3)];
  }

  if (Weak)
  {
    didFinishLoadForFrameFunc = Weak->_private->frameLoadDelegateImplementations.didFinishLoadForFrameFunc;
    if (!didFinishLoadForFrameFunc)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  didFinishLoadForFrameFunc = qword_1EC261290;
  if (qword_1EC261290)
  {
LABEL_11:
    CallFrameLoadDelegate(didFinishLoadForFrameFunc, Weak, sel_webView_didFinishLoadForFrame_, *(this + 3));
  }

LABEL_12:
  v8 = *(*(*(this + 3) + 8) + 40);

  return [v8 webFrame:? didFinishLoadWithError:?];
}

uint64_t WebFrameLoaderClient::dispatchDidReachLayoutMilestone(uint64_t result, char a2)
{
  v3 = result;
  v4 = *(result + 24);
  if (!v4)
  {
    goto LABEL_6;
  }

  v5 = *(*(v4 + 8) + 8);
  if (!v5)
  {
    goto LABEL_6;
  }

  v6 = *(v5 + 24);
  if (!v6)
  {
    goto LABEL_6;
  }

  v7 = *(v6 + 8);
  if (!v7)
  {
    goto LABEL_7;
  }

  result = (*(v7->super.viewRef->var1->notificationCallback + 180))(v7->super.viewRef->var1);
  if ((result & 1) == 0)
  {
    result = objc_loadWeak(&v7->super.viewRef->var1->responderCallback);
    v7 = result;
    if (result)
    {
      v8 = (*(result + 80) + 416);
      v9 = *(*(result + 80) + 648);
      if (!v9)
      {
        goto LABEL_10;
      }

      goto LABEL_8;
    }
  }

  else
  {
LABEL_6:
    v7 = 0;
  }

LABEL_7:
  v8 = &WebViewGetFrameLoadDelegateImplementations(WebView *)::empty;
  v9 = off_1EC2612E0;
  if (!off_1EC2612E0)
  {
    goto LABEL_10;
  }

LABEL_8:
  result = v7->_private->frameLoadDelegate;
  if (result)
  {
    result = v9(result, sel_webThreadWebView_didLayout_, v7, a2 & 7);
  }

LABEL_10:
  if ((a2 & 1) == 0)
  {
    goto LABEL_20;
  }

  v10 = v8[20];
  if (v10)
  {
    CallFrameLoadDelegate(v10, v7, sel_webView_didFirstLayoutInFrame_, *(v3 + 24));
  }

  [-[WebView _UIKitDelegateForwarder](v7 "_UIKitDelegateForwarder")];
  v11 = [*(*(*(v3 + 24) + 8) + 16) _scrollView];
  v12 = *(v3 + 24);
  if (!v12 || (v13 = *(*(v12 + 8) + 8)) == 0 || (v14 = *(v13 + 24)) == 0 || (v15 = *(v14 + 8)) == 0 || ((*(**(*(v15 + 56) + 16) + 1440))(*(*(v15 + 56) + 16)) & 1) != 0)
  {
    result = [0 drawsBackground];
    if (!result)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

  result = [objc_loadWeak((*(*(v15 + 56) + 16) + 16)) drawsBackground];
  if (result)
  {
LABEL_19:
    result = [v11 setDrawsBackground:1];
  }

LABEL_20:
  if ((a2 & 2) != 0)
  {
    v16 = v8[21];
    if (v16)
    {
      CallFrameLoadDelegate(v16, v7, sel_webView_didFirstVisuallyNonEmptyLayoutInFrame_, *(v3 + 24));
    }

    result = [(WebView *)v7 mainFrame];
    if (result == *(v3 + 24))
    {
      v17 = [(WebView *)v7 _UIKitDelegateForwarder];
      v18 = *(v3 + 24);

      return [v17 webView:v7 didFirstVisuallyNonEmptyLayoutInFrame:v18];
    }
  }

  return result;
}

uint64_t WebFrameLoaderClient::dispatchCreatePage(uint64_t a1, uint64_t a2, int a3)
{
  v5 = *(a1 + 24);
  if (v5 && (v6 = *(*(v5 + 8) + 8)) != 0 && (v7 = *(v6 + 24)) != 0 && (v8 = *(v7 + 8)) != 0 && ((*(**(*(v8 + 56) + 16) + 1440))(*(*(v8 + 56) + 16)) & 1) == 0)
  {
    Weak = objc_loadWeak((*(*(v8 + 56) + 16) + 16));
  }

  else
  {
    Weak = 0;
  }

  v10 = objc_alloc_init(MEMORY[0x1E695DF20]);
  v11 = [objc_msgSend(Weak "_UIDelegateForwarder")];
  v12 = v11;
  if (v11)
  {
    if (a3 == 1)
    {
      [v11 mainFrame];
      WebCore::Frame::setOpenerForWebKitLegacy();
    }

    v13 = *(a1 + 24);
    if (v13)
    {
      v14 = *(*(v13 + 8) + 8);
      if (v14)
      {
        ++*(v14 + 4);
        v15 = WebCore::LocalFrame::effectiveSandboxFlags(v14);
        [v12 page];
        (*(**(v19 + 176) + 128))(*(v19 + 176), (v15 & ((v15 << 6) >> 15)), 0);
        if (*(v14 + 4) == 1)
        {
          (*(*v14 + 8))(v14);
        }

        else
        {
          --*(v14 + 4);
        }
      }
    }
  }

  v16 = [v12 mainFrame];
  if (!v16)
  {
    v17 = 0;
    if (!v10)
    {
      return v17;
    }

    goto LABEL_17;
  }

  v17 = *(*(v16 + 8) + 8);
  if (v10)
  {
LABEL_17:
  }

  return v17;
}

void sub_1C7A661B8(_Unwind_Exception *a1)
{
  if (v2[4] == 1)
  {
    (*(*v2 + 8))(v2);
  }

  else
  {
    --v2[4];
  }

  if (v1)
  {
  }

  _Unwind_Resume(a1);
}

uint64_t WebFrameLoaderClient::dispatchShow(WebFrameLoaderClient *this)
{
  v1 = *(this + 3);
  if (!v1)
  {
    goto LABEL_6;
  }

  v2 = *(*(v1 + 8) + 8);
  if (!v2)
  {
    goto LABEL_6;
  }

  v3 = *(v2 + 24);
  if (!v3)
  {
    goto LABEL_6;
  }

  Weak = *(v3 + 8);
  if (!Weak)
  {
    goto LABEL_7;
  }

  if (((*(**(Weak[7] + 16) + 1440))(*(Weak[7] + 16)) & 1) == 0)
  {
    Weak = objc_loadWeak((*(Weak[7] + 16) + 16));
  }

  else
  {
LABEL_6:
    Weak = 0;
  }

LABEL_7:
  v5 = [Weak _UIDelegateForwarder];

  return [v5 webViewShow:Weak];
}

void WebFrameLoaderClient::dispatchDecidePolicyForResponse(uint64_t a1, WebCore::ResourceResponseBase *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *(a1 + 24);
  if (!v8)
  {
    goto LABEL_6;
  }

  v9 = *(*(v8 + 8) + 8);
  if (!v9)
  {
    goto LABEL_6;
  }

  v10 = *(v9 + 24);
  if (!v10)
  {
    goto LABEL_6;
  }

  Weak = *(v10 + 8);
  if (!Weak)
  {
    goto LABEL_7;
  }

  if (((*(**(Weak[7] + 16) + 1440))(*(Weak[7] + 16)) & 1) == 0)
  {
    Weak = objc_loadWeak((*(Weak[7] + 16) + 16));
  }

  else
  {
LABEL_6:
    Weak = 0;
  }

LABEL_7:
  v12 = [Weak _policyDelegateForwarder];
  v13 = *WebCore::ResourceResponseBase::mimeType(a2);
  if (v13)
  {
    atomic_fetch_add_explicit(v13, 2u, memory_order_relaxed);
    MEMORY[0x1CCA63450](&v23, v13);
    if (atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v13, v14);
    }
  }

  else
  {
    v23 = &stru_1F472E7E8;
    v22 = &stru_1F472E7E8;
  }

  v15 = v23;
  v16 = WebCore::ResourceRequest::nsURLRequest();
  v17 = *(a1 + 24);
  [objc_loadWeak((a1 + 32)) invalidate];
  v18 = [WebFramePolicyListener alloc];
  v19 = *(a1 + 24);
  if (v19)
  {
    v19 = *(*(v19 + 8) + 8);
  }

  v24 = v19;
  v20 = [(WebFramePolicyListener *)v18 initWithFrame:&v24 policyFunction:a5 defaultPolicy:0, v23];
  objc_storeWeak((a1 + 32), v20);
  [v12 webView:Weak decidePolicyForMIMEType:v15 request:v16 frame:v17 decisionListener:v20];
  if (v20)
  {
  }

  v21 = v23;
  v23 = 0;
  if (v21)
  {
  }
}

void sub_1C7A66478(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9)
{
  if (atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v9, a2);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

id WebFrameLoaderClient::setUpPolicyListener(WebFramePolicyListener **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  [objc_loadWeak((a2 + 32)) invalidate];
  if (a4)
  {
    v10 = [WebFramePolicyListener alloc];
    v11 = *(a2 + 24);
    if (v11)
    {
      v11 = *(*(v11 + 8) + 8);
    }

    v16 = v11;
    v12 = [(WebFramePolicyListener *)v10 initWithFrame:&v16 policyFunction:a3 defaultPolicy:2 appLinkURL:a4 referrerURL:a5];
  }

  else
  {
    v13 = [WebFramePolicyListener alloc];
    v14 = *(a2 + 24);
    if (v14)
    {
      v14 = *(*(v14 + 8) + 8);
    }

    v16 = v14;
    v12 = [(WebFramePolicyListener *)v13 initWithFrame:&v16 policyFunction:a3 defaultPolicy:2];
  }

  *a1 = v12;
  return objc_storeWeak((a2 + 32), v12);
}

void sub_1C7A665B4(_Unwind_Exception *exception_object)
{
  *v1 = 0;
  if (v2)
  {
  }

  _Unwind_Resume(exception_object);
}

void WebFrameLoaderClient::dispatchDecidePolicyForNewWindowAction(uint64_t a1, uint64_t a2, WebCore::ResourceRequestBase *this, uint64_t a4, atomic_uint **a5, uint64_t a6, uint64_t a7)
{
  v13 = *(a1 + 24);
  if (v13)
  {
    v14 = *(*(v13 + 8) + 8);
    if (v14)
    {
      v15 = *(v14 + 24);
      if (v15)
      {
        v16 = *(v15 + 8);
        if (v16)
        {
          if (((*(**(*(v16 + 56) + 16) + 1440))(*(*(v16 + 56) + 16)) & 1) == 0)
          {
            Weak = objc_loadWeak((*(*(v16 + 56) + 16) + 16));
            v18 = *(a2 + 480);
            if (v18)
            {
              goto LABEL_7;
            }

LABEL_20:
            v20 = 0;
LABEL_21:
            v25 = 0;
            goto LABEL_22;
          }
        }
      }
    }
  }

  Weak = 0;
  v18 = *(a2 + 480);
  if (!v18)
  {
    goto LABEL_20;
  }

LABEL_7:
  if (*(v18 + 60) || *(v18 + 12) != 1)
  {
    goto LABEL_20;
  }

  v19 = WebCore::ResourceRequestBase::url(this);
  WTF::URL::createCFURL(v38, v19);
  v20 = v38[0];
  WebCore::ResourceRequestBase::httpReferrer(v38, this);
  v22 = v38[0];
  if (!v38[0])
  {
    goto LABEL_21;
  }

  v23 = *(v38[0] + 1);
  v38[0] = 0;
  if (atomic_fetch_add_explicit(v22, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v22, v21);
  }

  if (!v23)
  {
    goto LABEL_21;
  }

  WebCore::ResourceRequestBase::httpReferrer(&v37, this);
  MEMORY[0x1CCA63950](v38, &v37, 0);
  WTF::URL::createCFURL(&v39, v38);
  v25 = v39;
  v39 = 0;
  v26 = v38[0];
  v38[0] = 0;
  if (v26 && atomic_fetch_add_explicit(v26, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v26, v24);
  }

  v27 = v37;
  v37 = 0;
  if (v27 && atomic_fetch_add_explicit(v27, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v27, v24);
  }

LABEL_22:
  v28 = [Weak _policyDelegateForwarder];
  v29 = WebFrameLoaderClient::actionDictionary(a1, a2, a4);
  v30 = WebCore::ResourceRequest::nsURLRequest();
  v31 = *a5;
  if (v31)
  {
    atomic_fetch_add_explicit(v31, 2u, memory_order_relaxed);
    MEMORY[0x1CCA63450](v38, v31);
    if (atomic_fetch_add_explicit(v31, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v31, v32);
    }
  }

  else
  {
    v38[0] = &stru_1F472E7E8;
    v36 = &stru_1F472E7E8;
  }

  v33 = v38[0];
  WebFrameLoaderClient::setUpPolicyListener(&v39, a1, a7, v20, v25);
  v34 = v39;
  [v28 webView:Weak decidePolicyForNewWindowAction:v29 request:v30 newFrameName:v33 decisionListener:v39];
  if (v34)
  {
  }

  v35 = v38[0];
  v38[0] = 0;
  if (v35)
  {
  }

  if (v25)
  {
  }

  if (v20)
  {
  }
}

void sub_1C7A66868(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10, WTF::StringImpl *a11)
{
  if (v12)
  {
  }

  if (v11)
  {
  }

  _Unwind_Resume(exception_object);
}

uint64_t WebFrameLoaderClient::actionDictionary(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = WebCore::ResourceRequestBase::url((a2 + 240));
  v6 = *v5;
  if (*v5)
  {
    atomic_fetch_add_explicit(v6, 2u, memory_order_relaxed);
  }

  v22 = v6;
  v7 = *(v5 + 24);
  v23 = *(v5 + 8);
  v24 = v7;
  WTF::URL::createCFURL(&v27, &v22);
  v9 = v22;
  v22 = 0;
  if (v9 && atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v9, v8);
  }

  v10 = MEMORY[0x1E695DF90];
  v11 = [MEMORY[0x1E696AD98] numberWithInt:*(a2 + 868)];
  v12 = WebActionNavigationTypeKey;
  v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:0];
  v14 = [v10 dictionaryWithObjectsAndKeys:{v11, v12, v13, WebActionModifierFlagsKey, v27, WebActionOriginalURLKey, 0}];
  v15 = *(a2 + 464);
  v25 = *(a2 + 448);
  v26 = v15;
  if (BYTE12(v15) == 1)
  {
    v16 = [WebElementDictionary alloc];
    WebCore::EventHandler::hitTestResultAtPoint();
    v17 = [(WebElementDictionary *)v16 initWithHitTestResult:&v22];
    MEMORY[0x1CCA64820](&v22);
    result = [v14 setObject:v17 forKey:WebActionElementKey];
    if ((BYTE12(v26) & 1) == 0)
    {
      __break(1u);
      return result;
    }

    if (v25)
    {
      v19 = BYTE8(v26);
    }

    else
    {
      v19 = -2;
    }

    v20 = [MEMORY[0x1E696AD98] numberWithChar:v19];
    [v14 setObject:v20 forKey:WebActionButtonKey];
    if (v17)
    {
    }
  }

  if (a3)
  {
    [v14 setObject:kit(*(a3 + 32)) forKey:WebActionFormKey[0]];
  }

  v21 = v27;
  v27 = 0;
  if (v21)
  {
  }

  return v14;
}

void sub_1C7A66B38(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, WTF::StringImpl *a16)
{
  if (v16)
  {
  }

  v19 = *(v17 - 72);
  *(v17 - 72) = 0;
  if (v19)
  {
  }

  _Unwind_Resume(exception_object);
}

void WebFrameLoaderClient::dispatchDecidePolicyForNavigationAction(uint64_t a1, uint64_t a2, WebCore::ResourceRequestBase *this, int a4, uint64_t a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v17 = *(a1 + 24);
  if (!v17)
  {
    Weak = 0;
    v21 = 1;
    v22 = *(a2 + 480);
    if (!v22)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

  v18 = *(v17[1] + 8);
  if (v18)
  {
    v19 = *(v18 + 24);
    if (v19)
    {
      Weak = *(v19 + 8);
      if (Weak)
      {
        if ((*(**(Weak[7] + 16) + 1440))(*(Weak[7] + 16)))
        {
          goto LABEL_6;
        }

        Weak = objc_loadWeak((*(Weak[7] + 16) + 16));
        v17 = *(a1 + 24);
        if (!v17)
        {
          goto LABEL_19;
        }

LABEL_12:
        v17 = *(v17[1] + 8);
        if (v17)
        {
          v23 = v17[15];
          if (v23)
          {
            v23 = v23[1];
          }

          if (v23 != v17)
          {
            goto LABEL_21;
          }

          v21 = 0;
          v22 = *(a2 + 480);
          if (!v22)
          {
            goto LABEL_21;
          }

          goto LABEL_20;
        }

        goto LABEL_19;
      }
    }

    else
    {
      Weak = 0;
    }

    v17 = *(a1 + 24);
    if (!v17)
    {
      goto LABEL_19;
    }

    goto LABEL_12;
  }

LABEL_6:
  Weak = 0;
  v17 = *(a1 + 24);
  if (v17)
  {
    goto LABEL_12;
  }

LABEL_19:
  v21 = 1;
  v22 = *(a2 + 480);
  if (!v22)
  {
LABEL_21:
    v24 = 0;
    goto LABEL_22;
  }

LABEL_20:
  if (*(v22 + 60))
  {
    goto LABEL_21;
  }

  v31 = *(v22 + 12);
  if (v31 != 1)
  {
    v21 = 1;
  }

  if ((v21 & 1) == 0)
  {
    v32 = v17[28];
    if (!v32)
    {
      goto LABEL_156;
    }

    v33 = WTF::URL::host((v32 + 800));
    v35 = v34;
    v36 = WebCore::ResourceRequestBase::url((a2 + 240));
    v37 = *v36;
    if (*v36)
    {
      atomic_fetch_add_explicit(v37, 2u, memory_order_relaxed);
    }

    v110 = v37;
    v38 = *(v36 + 24);
    v111 = *(v36 + 8);
    v112 = v38;
    v39 = WTF::URL::host(&v110);
    v41 = v35 == v40 && v33 == v39;
    if (v33 == v39 || v35 != v40)
    {
      goto LABEL_152;
    }

    if (!v35)
    {
      goto LABEL_150;
    }

    v42 = v40;
    if ((v35 & 0x100000000) == 0)
    {
      if ((v40 & 0x100000000) == 0)
      {
        if (v40)
        {
          if (*v33 != *v39)
          {
            goto LABEL_151;
          }

          v43 = v40 - 1;
          if (v40 == 1)
          {
            goto LABEL_150;
          }

          v44 = (v33 + 1);
          v45 = (v39 + 1);
          if (v40 == 2)
          {
LABEL_50:
            v46 = v44->u16[0];
            v47 = v45->u16[0];
LABEL_79:
            v41 = v46 == v47;
            goto LABEL_152;
          }

          v75 = __clz(v40 - 2);
          if (v75 <= 29)
          {
            if (v75 != 28)
            {
              if (v75 == 29)
              {
                if (v44->i64[0] == v45->i64[0])
                {
                  v42 = 2 * v40;
LABEL_124:
                  v41 = *(v33 + v42 - 8) == *(v39 + v42 - 8);
                  goto LABEL_152;
                }

LABEL_151:
                v41 = 0;
                goto LABEL_152;
              }

LABEL_129:
              v91 = vceqq_s16(*v44, *v45);
              v91.i16[0] = vminvq_u16(v91);
              if (!v91.i32[0])
              {
                goto LABEL_151;
              }

              if (v40 >= 9uLL)
              {
                v92 = v43 & 7;
                do
                {
                  v93 = vceqq_s16(*(v44 + 2 * v92), *(v45 + 2 * v92));
                  v93.i16[0] = vminvq_u16(v93);
                  v41 = v93.i32[0] != 0;
                  v92 += 8;
                  if (v93.i32[0])
                  {
                    v94 = v92 >= v43;
                  }

                  else
                  {
                    v94 = 1;
                  }
                }

                while (!v94);
                goto LABEL_152;
              }

LABEL_150:
              v41 = 1;
              goto LABEL_152;
            }

            v95 = vandq_s8(vceqq_s16(*&v33[v40 - 8], *&v39[v40 - 8]), vceqq_s16(*(v33 + 1), *(v39 + 1)));
            v95.i16[0] = vminvq_u16(v95);
LABEL_147:
            v41 = v95.i32[0] != 0;
            goto LABEL_152;
          }

          if (v75 != 30)
          {
            if (v75 == 31)
            {
              v46 = v44->i32[0];
              v47 = v45->i32[0];
              goto LABEL_79;
            }

            goto LABEL_129;
          }

          if (v44->i32[0] != v45->i32[0])
          {
            goto LABEL_151;
          }

          v42 = 2 * v40;
          goto LABEL_142;
        }

LABEL_173:
        __break(1u);
        return;
      }

      if (!v40)
      {
        goto LABEL_173;
      }

      if (*v33 != *v39)
      {
        goto LABEL_151;
      }

      v55 = (v33 + 1);
      v56 = v40 - 1;
      v57 = (v39 + 1);
      if (v56 >= 8)
      {
        v58 = vceqq_s16(*v55, vmovl_u8(*v57));
        v58.i16[0] = vminvq_u16(v58);
        if (!v58.i32[0])
        {
          goto LABEL_151;
        }

        v59 = v56 & 7;
        do
        {
          v60 = vceqq_s16(*(v55 + 2 * v59), vmovl_u8(*(v57 + v59)));
          v60.i16[0] = vminvq_u16(v60);
          v41 = v60.i32[0] != 0;
          v59 += 8;
          if (v60.i32[0])
          {
            v61 = v59 >= v56;
          }

          else
          {
            v61 = 1;
          }
        }

        while (!v61);
        goto LABEL_152;
      }

      if (v56 >= 4)
      {
        v69 = (v57->u32[0] | (v57->u32[0] << 16)) & 0xFFFF0000FFFFLL;
        v68 = ((v69 | (v69 << 8)) & 0xFF00FF00FF00FFLL) == v55->i64[0];
        v70 = v56 & 3;
        v71 = (*(v57->u32 + v70) | (*(v57->u32 + v70) << 16)) & 0xFFFF0000FFFFLL;
        v72 = (v71 | (v71 << 8)) & 0xFF00FF00FF00FFLL;
        v73 = *(v55->i64 + 2 * v70);
        v41 = v68 && v72 == v73;
        goto LABEL_152;
      }

      if (v56 >= 2)
      {
        v83 = (v57->u16[0] | (v57->u16[0] << 8)) & 0xFF00FF;
        v84 = v55->i32[0];
        v85 = v56 & 1;
        v86 = (*(v57->u16 + v85) | (*(v57->u16 + v85) << 8)) & 0xFF00FF;
        v87 = *(v55->i32 + 2 * v85);
        v41 = v83 == v84 && v86 == v87;
        goto LABEL_152;
      }

      if (v40 != 2)
      {
        goto LABEL_150;
      }

      v89 = v57->u8[0];
      v90 = v55->u16[0];
LABEL_145:
      v41 = v90 == v89;
      goto LABEL_152;
    }

    if ((v40 & 0x100000000) != 0)
    {
      if (!v40)
      {
        goto LABEL_173;
      }

      if (*v33 != *v39)
      {
        goto LABEL_151;
      }

      v62 = v40 - 1;
      if (v40 == 1)
      {
        goto LABEL_150;
      }

      v44 = (v33 + 1);
      v45 = (v39 + 1);
      if (v40 == 2)
      {
        v46 = v44->u8[0];
        v47 = v45->u8[0];
        goto LABEL_79;
      }

      v76 = __clz(v40 - 2);
      if (v76 <= 28)
      {
        if (v76 == 27)
        {
          v95 = vandq_s8(vceqq_s8(*(v33 + v40 - 16), *(v39 + v40 - 16)), vceqq_s8(*(v33 + 1), *(v39 + 1)));
          v95.i8[0] = vminvq_u8(v95);
          goto LABEL_147;
        }

        if (v76 == 28)
        {
          if (v44->i64[0] == v45->i64[0])
          {
            goto LABEL_124;
          }

          goto LABEL_151;
        }
      }

      else
      {
        switch(v76)
        {
          case 29:
            if (v44->i32[0] != v45->i32[0])
            {
              goto LABEL_151;
            }

LABEL_142:
            v90 = *(v33 + v42 - 4);
            v89 = *(v39 + v42 - 4);
            goto LABEL_145;
          case 30:
            if (v44->u16[0] != v45->u16[0])
            {
              goto LABEL_151;
            }

            v90 = *(v33 + v40 - 2);
            v89 = *(v39 + v40 - 2);
            goto LABEL_145;
          case 31:
            goto LABEL_50;
        }
      }

      v96 = vceqq_s8(*v44, *v45);
      v96.i8[0] = vminvq_u8(v96);
      if (!v96.i32[0])
      {
        goto LABEL_151;
      }

      if (v40 < 0x11uLL)
      {
        goto LABEL_150;
      }

      v105 = v62 & 0xF;
      do
      {
        v106 = vceqq_s8(*(v44 + v105), *(v45 + v105));
        v106.i8[0] = vminvq_u8(v106);
        v41 = v106.i32[0] != 0;
        v105 += 16;
        if (v106.i32[0])
        {
          v107 = v105 >= v62;
        }

        else
        {
          v107 = 1;
        }
      }

      while (!v107);
    }

    else
    {
      if (!v40)
      {
        goto LABEL_173;
      }

      if (*v39 != *v33)
      {
        goto LABEL_151;
      }

      v48 = (v33 + 1);
      v49 = v40 - 1;
      v50 = (v39 + 1);
      if (v49 < 8)
      {
        if (v49 >= 4)
        {
          v63 = (v48->u32[0] | (v48->u32[0] << 16)) & 0xFFFF0000FFFFLL;
          v68 = ((v63 | (v63 << 8)) & 0xFF00FF00FF00FFLL) == v50->i64[0];
          v64 = v49 & 3;
          v65 = (*(v48->u32 + v64) | (*(v48->u32 + v64) << 16)) & 0xFFFF0000FFFFLL;
          v66 = (v65 | (v65 << 8)) & 0xFF00FF00FF00FFLL;
          v67 = *(v50->i64 + 2 * v64);
          v68 = v68 && v66 == v67;
          v41 = v68;
          goto LABEL_152;
        }

        if (v49 >= 2)
        {
          v77 = (v48->u16[0] | (v48->u16[0] << 8)) & 0xFF00FF;
          v78 = v50->i32[0];
          v79 = v49 & 1;
          v80 = (*(v48->u16 + v79) | (*(v48->u16 + v79) << 8)) & 0xFF00FF;
          v81 = *(v50->i32 + 2 * v79);
          v41 = v77 == v78 && v80 == v81;
          goto LABEL_152;
        }

        if (v40 == 2)
        {
          v47 = v48->u8[0];
          v46 = v50->u16[0];
          goto LABEL_79;
        }

        goto LABEL_150;
      }

      v51 = vceqq_s16(*v50, vmovl_u8(*v48));
      v51.i16[0] = vminvq_u16(v51);
      if (!v51.i32[0])
      {
        goto LABEL_151;
      }

      v52 = v49 & 7;
      do
      {
        v53 = vceqq_s16(*(v50 + 2 * v52), vmovl_u8(*(v48 + v52)));
        v53.i16[0] = vminvq_u16(v53);
        v41 = v53.i32[0] != 0;
        v52 += 8;
        if (v53.i32[0])
        {
          v54 = v52 >= v49;
        }

        else
        {
          v54 = 1;
        }
      }

      while (!v54);
    }

LABEL_152:
    v97 = v110;
    v110 = 0;
    if (v97 && atomic_fetch_add_explicit(v97, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v97, v40);
    }

    if (v41)
    {
      goto LABEL_21;
    }

    goto LABEL_156;
  }

  if (v31 != 1)
  {
    goto LABEL_21;
  }

LABEL_156:
  v98 = WebCore::ResourceRequestBase::url(this);
  WTF::URL::createCFURL(&v110, v98);
  v24 = v110;
  WebCore::ResourceRequestBase::httpReferrer(&v110, this);
  v100 = v110;
  if (v110)
  {
    v101 = *(v110 + 1);
    v110 = 0;
    if (atomic_fetch_add_explicit(v100, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v100, v99);
    }

    if (v101)
    {
      WebCore::ResourceRequestBase::httpReferrer(&v108, this);
      MEMORY[0x1CCA63950](&v110, &v108, 0);
      WTF::URL::createCFURL(&v109, &v110);
      v25 = v109;
      v103 = v110;
      v109 = 0;
      v110 = 0;
      if (v103 && atomic_fetch_add_explicit(v103, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v103, v102);
      }

      v104 = v108;
      v108 = 0;
      if (v104 && atomic_fetch_add_explicit(v104, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v104, v102);
      }

      goto LABEL_23;
    }
  }

LABEL_22:
  v25 = 0;
LABEL_23:
  v26 = [Weak _policyDelegateForwarder];
  v27 = WebFrameLoaderClient::actionDictionary(a1, a2, a5);
  v28 = WebCore::ResourceRequest::nsURLRequest();
  v29 = *(a1 + 24);
  WebFrameLoaderClient::setUpPolicyListener(&v110, a1, a13, v24, v25);
  v30 = v110;
  [v26 webView:Weak decidePolicyForNavigationAction:v27 request:v28 frame:v29 decisionListener:v110];
  if (v30)
  {
  }

  if (v25)
  {
  }

  if (v24)
  {
  }
}

void sub_1C7A673E0(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10, uint64_t a11, WTF::StringImpl *a12)
{
  if (a12 && atomic_fetch_add_explicit(a12, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a12, a2);
  }

  if (a10 && atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a10, a2);
  }

  if (!v12)
  {
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

id WebFrameLoaderClient::cancelPolicyCheck(id *this)
{
  result = objc_loadWeakRetained(this + 4);
  if (result)
  {

    [objc_loadWeak(this + 4) invalidate];

    return objc_storeWeak(this + 4, 0);
  }

  return result;
}

uint64_t WebFrameLoaderClient::dispatchUnableToImplementPolicy(WebFrameLoaderClient *this, const WebCore::ResourceError *a2)
{
  v4 = *(this + 3);
  if (!v4)
  {
    goto LABEL_6;
  }

  v5 = *(*(v4 + 8) + 8);
  if (!v5)
  {
    goto LABEL_6;
  }

  v6 = *(v5 + 24);
  if (!v6)
  {
    goto LABEL_6;
  }

  Weak = *(v6 + 8);
  if (!Weak)
  {
    goto LABEL_7;
  }

  if (((*(**(Weak[7] + 16) + 1440))(*(Weak[7] + 16)) & 1) == 0)
  {
    Weak = objc_loadWeak((*(Weak[7] + 16) + 16));
  }

  else
  {
LABEL_6:
    Weak = 0;
  }

LABEL_7:
  v8 = [Weak _policyDelegateForwarder];
  v9 = MEMORY[0x1CCA691D0](a2);
  v10 = *(this + 3);

  return [v8 webView:Weak unableToImplementPolicyWithError:v9 frame:v10];
}

id WebFrameLoaderClient::dispatchWillSendSubmitEvent(uint64_t a1, uint64_t *a2)
{
  v4 = *(a1 + 24);
  if (v4 && (v5 = *(*(v4 + 8) + 8)) != 0 && (v6 = *(v5 + 24)) != 0 && (v7 = *(v6 + 8)) != 0 && ((*(**(*(v7 + 56) + 16) + 1440))(*(*(v7 + 56) + 16)) & 1) == 0)
  {
    result = [objc_loadWeak((*(*(v7 + 56) + 16) + 16)) _formDelegate];
    if (!result)
    {
      return result;
    }
  }

  else
  {
    result = [0 _formDelegate];
    if (!result)
    {
      return result;
    }
  }

  v9 = kit(*(*a2 + 32));
  FormFieldValuesDictionary = makeFormFieldValuesDictionary(*a2);
  v11 = *(a1 + 24);
  if (v11 && (v12 = *(*(v11 + 8) + 8)) != 0 && (v13 = *(v12 + 24)) != 0 && (v14 = *(v13 + 8)) != 0 && ((*(**(*(v14 + 56) + 16) + 1440))(*(*(v14 + 56) + 16)) & 1) == 0)
  {
    Weak = objc_loadWeak((*(*(v14 + 56) + 16) + 16));
  }

  else
  {
    Weak = 0;
  }

  v16 = *(a1 + 24);

  return CallFormDelegate(Weak, sel_willSendSubmitEventToForm_inFrame_withValues_, v9, v16, FormFieldValuesDictionary);
}

void *makeFormFieldValuesDictionary(uint64_t a1)
{
  v2 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:*(a1 + 52)];
  v3 = *(a1 + 52);
  if (v3)
  {
    v4 = 16 * v3;
    v5 = (*(a1 + 40) + 8);
    do
    {
      v6 = *v5;
      if (*v5)
      {
        atomic_fetch_add_explicit(v6, 2u, memory_order_relaxed);
        MEMORY[0x1CCA63450](&v18, v6);
        if (atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v6, v7);
        }
      }

      else
      {
        v18 = &stru_1F472E7E8;
        v13 = &stru_1F472E7E8;
      }

      v8 = v18;
      v9 = *(v5 - 1);
      if (v9)
      {
        atomic_fetch_add_explicit(v9, 2u, memory_order_relaxed);
        MEMORY[0x1CCA63450](&v17, v9);
        if (atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v9, v10);
        }
      }

      else
      {
        v17 = &stru_1F472E7E8;
        v14 = &stru_1F472E7E8;
      }

      [v2 setObject:v8 forKey:{v17, v17}];
      v11 = v17;
      v17 = 0;
      if (v11)
      {
      }

      v12 = v18;
      v18 = 0;
      if (v12)
      {
      }

      v5 += 2;
      v4 -= 16;
    }

    while (v4);
  }

  if (v2)
  {
    v15 = v2;
  }

  return v2;
}

void sub_1C7A67894(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  if (a10)
  {
  }

  if (v10)
  {
  }

  _Unwind_Resume(exception_object);
}

uint64_t WebFrameLoaderClient::dispatchWillSubmitForm(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v6 = *(a1 + 24);
  if (v6 && (v7 = *(*(v6 + 8) + 8)) != 0 && (v8 = *(v7 + 24)) != 0 && (v9 = *(v8 + 8)) != 0 && ((*(**(*(v9 + 56) + 16) + 1440))(*(*(v9 + 56) + 16)) & 1) == 0)
  {
    if ([objc_loadWeak((*(*(v9 + 56) + 16) + 16)) _formDelegate])
    {
      goto LABEL_7;
    }
  }

  else if ([0 _formDelegate])
  {
LABEL_7:
    FormFieldValuesDictionary = makeFormFieldValuesDictionary(a2);
    v11 = *(a1 + 24);
    if (!v11)
    {
      goto LABEL_12;
    }

    v12 = *(*(v11 + 8) + 8);
    if (!v12)
    {
      goto LABEL_12;
    }

    v13 = *(v12 + 24);
    if (v13)
    {
      Weak = *(v13 + 8);
      if (Weak)
      {
        if (((*(Weak->super.viewRef->var1->notificationCallback + 180))(Weak->super.viewRef->var1) & 1) == 0)
        {
          Weak = objc_loadWeak(&Weak->super.viewRef->var1->responderCallback);
          v15 = *(a1 + 24);
          v16 = *(*(a2 + 56) + 552);
          if (!v16)
          {
            goto LABEL_18;
          }

LABEL_16:
          v17 = *(v16 + 8);
          if (v17)
          {
            v18 = *(*(v17 + 208) + 16);
            if (((*(*v18 + 1032))(v18) & 1) == 0)
            {
              v19 = v18[3];
              goto LABEL_19;
            }
          }

LABEL_18:
          v19 = 0;
LABEL_19:
          v20 = kit(*(a2 + 32));
          v21 = *a3;
          *a3 = 0;
          v22 = WTF::fastMalloc(0x10);
          *v22 = &unk_1F472BC90;
          v22[1] = v21;
          v29 = v22;
          [objc_loadWeak((a1 + 32)) invalidate];
          v23 = [WebFramePolicyListener alloc];
          v24 = *(a1 + 24);
          if (v24)
          {
            v24 = *(*(v24 + 8) + 8);
          }

          v30 = v24;
          v25 = [(WebFramePolicyListener *)v23 initWithFrame:&v30 policyFunction:&v29 defaultPolicy:2];
          objc_storeWeak((a1 + 32), v25);
          CallFormDelegate(Weak, sel_frame_sourceFrame_willSubmitForm_withValues_submissionListener_, v15, v19, v20, FormFieldValuesDictionary, v25);
          if (v25)
          {
          }

          result = v29;
          v29 = 0;
          if (result)
          {
            return (*(*result + 8))(result);
          }

          return result;
        }

LABEL_12:
        Weak = 0;
        v15 = *(a1 + 24);
        v16 = *(*(a2 + 56) + 552);
        if (!v16)
        {
          goto LABEL_18;
        }

        goto LABEL_16;
      }
    }

    else
    {
      Weak = 0;
    }

    v15 = *(a1 + 24);
    v16 = *(*(a2 + 56) + 552);
    if (!v16)
    {
      goto LABEL_18;
    }

    goto LABEL_16;
  }

  v27 = *a3;
  *a3 = 0;
  (*(*v27 + 16))(v27);
  v28 = *(*v27 + 8);

  return v28(v27);
}

void sub_1C7A67C88(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9)
{
  if (v9)
  {
  }

  if (!a9)
  {
    _Unwind_Resume(exception_object);
  }

  (*(*a9 + 8))(a9);
  _Unwind_Resume(exception_object);
}

uint64_t WebFrameLoaderClient::revertToProvisionalState(WebFrameLoaderClient *this, WebCore::DocumentLoader *a2)
{
  if (a2)
  {
    v2 = *(a2 + 451);
  }

  else
  {
    v2 = 0;
  }

  return [v2 _revertToProvisionalState];
}

uint64_t WebFrameLoaderClient::setMainDocumentError(WebFrameLoaderClient *this, WebCore::DocumentLoader *a2, const WebCore::ResourceError *a3)
{
  if (a2)
  {
    v3 = *(a2 + 451);
  }

  else
  {
    v3 = 0;
  }

  v4 = MEMORY[0x1CCA691D0](a3);

  return [v3 _setMainDocumentError:v4];
}

uint64_t WebFrameLoaderClient::setMainFrameDocumentReady(WebFrameLoaderClient *this, uint64_t a2)
{
  v3 = *(this + 3);
  if (v3)
  {
    v4 = *(*(v3 + 8) + 8);
    if (v4 && (v5 = *(v4 + 24)) != 0 && (v6 = *(v5 + 8)) != 0)
    {
      if ((*(**(*(v6 + 56) + 16) + 1440))(*(*(v6 + 56) + 16)))
      {
        Weak = 0;
        v9 = a2;
      }

      else
      {
        Weak = objc_loadWeak((*(*(v6 + 56) + 16) + 16));
        v9 = a2;
      }
    }

    else
    {
      Weak = 0;
      v9 = a2;
    }
  }

  else
  {
    Weak = 0;
    v9 = a2;
  }

  return [Weak setMainFrameDocumentReady:v9];
}

void WebFrameLoaderClient::startDownload(uint64_t a1, WebCore::ResourceRequestBase *this)
{
  v3 = *(a1 + 24);
  if (!v3)
  {
    goto LABEL_6;
  }

  v4 = *(*(v3 + 8) + 8);
  if (!v4)
  {
    goto LABEL_6;
  }

  v5 = *(v4 + 24);
  if (!v5)
  {
    goto LABEL_6;
  }

  Weak = *(v5 + 8);
  if (!Weak)
  {
    goto LABEL_7;
  }

  if (((*(**(Weak[7] + 16) + 1440))(*(Weak[7] + 16)) & 1) == 0)
  {
    Weak = objc_loadWeak((*(Weak[7] + 16) + 16));
  }

  else
  {
LABEL_6:
    Weak = 0;
  }

LABEL_7:
  v7 = WebCore::ResourceRequestBase::url(this);
  WTF::URL::createCFURL(&v9, v7);
  [Weak _downloadURL:v9];
  v8 = v9;
  v9 = 0;
  if (v8)
  {
  }
}

void sub_1C7A67F50(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

uint64_t WebFrameLoaderClient::didReplaceMultipartContent(WebFrameLoaderClient *this)
{
  result = *(*(*(*(this + 3) + 8) + 8) + 216);
  if (result)
  {
    return MEMORY[0x1EEE557A8]();
  }

  return result;
}

void WebFrameLoaderClient::committedLoad(WebFrameLoaderClient *this, WebCore::DocumentLoader *a2, const WebCore::SharedBuffer *a3)
{
  if (a2)
  {
    v3 = *(a2 + 451);
  }

  else
  {
    v3 = 0;
  }

  WebCore::SharedBuffer::createNSData(&v5, a3);
  [v3 _receivedData:v5];
  v4 = v5;
  v5 = 0;
  if (v4)
  {
  }
}

void sub_1C7A67FEC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

uint64_t WebFrameLoaderClient::finishedLoading(WebFrameLoaderClient *this, WebCore::DocumentLoader *a2)
{
  if (a2)
  {
    v2 = *(a2 + 451);
  }

  else
  {
    v2 = 0;
  }

  return [v2 _finishedLoading];
}

void WebFrameLoaderClient::updateGlobalHistory(WebFrameLoaderClient *this)
{
  v2 = *(*(*(this + 3) + 8) + 8);
  if (v2 && (v3 = *(v2 + 24)) != 0 && (v4 = *(v3 + 8)) != 0 && ((*(**(*(v4 + 56) + 16) + 1440))(*(*(v4 + 56) + 16)) & 1) == 0)
  {
    Weak = objc_loadWeak((*(*(v4 + 56) + 16) + 16));
  }

  else
  {
    Weak = 0;
  }

  v6 = *(*(*(*(*(this + 3) + 8) + 8) + 208) + 96);
  v7 = WebCore::DocumentLoader::urlForHistory(v49, v6);
  v8 = WTF::aboutBlankURL(v7);
  v11 = WTF::equal(v49[0], *v8, v9);
  v12 = v49[0];
  v49[0] = 0;
  if (v12 && atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v12, v10);
  }

  if ((v11 & 1) == 0)
  {
    if (![Weak historyDelegate])
    {
      v13 = +[WebHistory optionalSharedHistory];
      WebCore::DocumentLoader::urlForHistory(v49, v6);
      WTF::URL::createCFURL(&v48, v49);
      v14 = v48;
      v15 = v6[203];
      if (v15)
      {
        atomic_fetch_add_explicit(v15, 2u, memory_order_relaxed);
        MEMORY[0x1CCA63450](&v47, v15);
        if (atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v15, v16);
        }
      }

      else
      {
        v47 = &stru_1F472E7E8;
        v44 = &stru_1F472E7E8;
      }

      v17 = v47;
      v18 = *WebCore::ResourceRequestBase::httpMethod((v6 + 85));
      if (v18)
      {
        atomic_fetch_add_explicit(v18, 2u, memory_order_relaxed);
        MEMORY[0x1CCA63450](&v46, v18);
        if (atomic_fetch_add_explicit(v18, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v18, v19);
        }
      }

      else
      {
        v46 = &stru_1F472E7E8;
        v45 = &stru_1F472E7E8;
      }

      [(WebHistory *)v13 _visitedURL:v14 withTitle:v17 method:v46 wasFailure:WebCore::DocumentLoader::urlForHistoryReflectsFailure(v6)];
      v21 = v46;
      v46 = 0;
      if (v21)
      {
      }

      v22 = v47;
      v47 = 0;
      if (v22)
      {
      }

      v23 = v48;
      v48 = 0;
      if (v23)
      {
      }

      v24 = v49[0];
      v49[0] = 0;
      if (v24 && atomic_fetch_add_explicit(v24, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v24, v20);
      }

      return;
    }

    if (Weak)
    {
      if (!*(Weak[10] + 688))
      {
        return;
      }
    }

    else if (!WebViewGetHistoryDelegateImplementations(WebView *)::empty)
    {
      return;
    }

    v25 = [WebNavigationData alloc];
    v26 = *WebCore::ResourceRequestBase::url((v6 + 110));
    if (v26)
    {
      atomic_fetch_add_explicit(v26, 2u, memory_order_relaxed);
      MEMORY[0x1CCA63450](&v48, v26);
      if (atomic_fetch_add_explicit(v26, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v26, v27);
      }

      v28 = v48;
      v29 = v6[203];
      if (!v29)
      {
        goto LABEL_41;
      }
    }

    else
    {
      v48 = &stru_1F472E7E8;
      v42 = &stru_1F472E7E8;
      v28 = &stru_1F472E7E8;
      v29 = v6[203];
      if (!v29)
      {
LABEL_41:
        v33 = WebCore::ResourceRequest::nsURLRequest();
        v34 = WebCore::ResourceResponse::nsURLResponse((v6 + 160));
        v35 = v6[45];
        v36 = v6[342];
        if (v36)
        {
          atomic_fetch_add_explicit(v36, 2u, memory_order_relaxed);
          MEMORY[0x1CCA63450](v49, v36);
          if (atomic_fetch_add_explicit(v36, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v36, v37);
          }
        }

        else
        {
          v49[0] = &stru_1F472E7E8;
          v43 = &stru_1F472E7E8;
        }

        v39 = [(WebNavigationData *)v25 initWithURLString:v28 title:v29 originalRequest:v33 response:v34 hasSubstituteData:v35 != 0 clientRedirectSource:v49[0]];
        v40 = v49[0];
        v49[0] = 0;
        if (v40)
        {
        }

        v41 = v48;
        v48 = 0;
        if (v41)
        {
        }

        CallDelegate(Weak, *(Weak[10] + 120), sel_webView_didNavigateWithNavigationData_inFrame_, v39, *(this + 3), v38);
        if (v39)
        {
        }

        return;
      }
    }

    atomic_fetch_add_explicit(v29, 2u, memory_order_relaxed);
    MEMORY[0x1CCA63450](v49, v29);
    if (atomic_fetch_add_explicit(v29, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v29, v30);
    }

    v29 = v49[0];
    v49[0] = 0;
    if (v29)
    {
      v31 = v29;
      v32 = v49[0];
      v49[0] = 0;
      if (v32)
      {
      }
    }

    goto LABEL_41;
  }
}

void sub_1C7A68458(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, WTF::StringImpl *a12)
{
  if (a11)
  {
  }

  if (a12)
  {
    if (atomic_fetch_add_explicit(a12, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a12, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

void WebFrameLoaderClient::updateGlobalHistoryRedirectLinks(WebFrameLoaderClient *this)
{
  v2 = *(this + 3);
  if (v2)
  {
    v3 = *(*(v2 + 8) + 8);
    if (v3)
    {
      v4 = *(v3 + 24);
      if (v4)
      {
        Weak = *(v4 + 8);
        if (Weak)
        {
          if (((*(**(Weak[7] + 16) + 1440))(*(Weak[7] + 16)) & 1) == 0)
          {
            Weak = objc_loadWeak((*(Weak[7] + 16) + 16));
            if (![Weak historyDelegate])
            {
              goto LABEL_7;
            }

            goto LABEL_10;
          }

          goto LABEL_6;
        }
      }

      else
      {
        Weak = 0;
      }

      if (![Weak historyDelegate])
      {
        goto LABEL_7;
      }

      goto LABEL_10;
    }
  }

LABEL_6:
  Weak = 0;
  if (![0 historyDelegate])
  {
LABEL_7:
    v6 = 0;
    goto LABEL_13;
  }

LABEL_10:
  if (Weak)
  {
    v6 = (Weak[10] + 688);
  }

  else
  {
    v6 = &WebViewGetHistoryDelegateImplementations(WebView *)::empty;
  }

LABEL_13:
  v7 = *(*(this + 3) + 8);
  v8 = *(*(*(v7 + 8) + 208) + 96);
  if (!v8[342])
  {
    goto LABEL_38;
  }

  if (v6)
  {
    if (!v6[1])
    {
      goto LABEL_38;
    }

    v9 = *(v7 + 56);
    WebCore::DocumentLoader::urlForHistory(v49, v8);
    v11 = v49[0];
    if (v49[0])
    {
      atomic_fetch_add_explicit(v49[0], 2u, memory_order_relaxed);
      v12 = v49[0];
      v49[0] = 0;
      if (v12 && atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v12, v10);
      }

      atomic_fetch_add_explicit(v11, 2u, memory_order_relaxed);
      MEMORY[0x1CCA63450](&v48, v11);
      if (atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v11, v13);
      }
    }

    else
    {
      v48 = &stru_1F472E7E8;
      v45 = &stru_1F472E7E8;
    }

    CallDelegate(Weak, *(Weak[10] + 120), sel_webView_didPerformClientRedirectFromURL_toURL_inFrame_, v9, v48, *(this + 3), v14);
    v16 = v48;
    v48 = 0;
    if (v16)
    {
    }

    goto LABEL_35;
  }

  v17 = +[WebHistory optionalSharedHistory];
  v18 = v8[342];
  if (v18)
  {
    atomic_fetch_add_explicit(v18, 2u, memory_order_relaxed);
    MEMORY[0x1CCA63450](v49, v18);
    if (atomic_fetch_add_explicit(v18, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v18, v19);
    }
  }

  else
  {
    v49[0] = &stru_1F472E7E8;
    v46 = &stru_1F472E7E8;
  }

  v20 = [(WebHistory *)v17 _itemForURLString:v49[0]];
  v21 = v49[0];
  v49[0] = 0;
  if (v21)
  {
  }

  if (v20)
  {
    WebCore::DocumentLoader::urlForHistory(v49, v8);
    v11 = v49[0];
    if (v49[0])
    {
      atomic_fetch_add_explicit(v49[0], 2u, memory_order_relaxed);
      v23 = v49[0];
      v48 = v11;
      v49[0] = 0;
      if (v23 && atomic_fetch_add_explicit(v23, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v23, v22);
      }
    }

    else
    {
      v48 = 0;
    }

    addRedirectURL(v20, &v48);
LABEL_35:
    if (v11 && atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v11, v15);
    }
  }

LABEL_38:
  WebCore::DocumentLoader::serverRedirectSourceForHistory(v49, v8);
  v25 = v49[0];
  if (v49[0])
  {
    if (atomic_fetch_add_explicit(v49[0], 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v25, v24);
    }

    if (v6)
    {
      if (v6[2])
      {
        WebCore::DocumentLoader::serverRedirectSourceForHistory(&v48, v8);
        v26 = v48;
        if (v48)
        {
          atomic_fetch_add_explicit(v48, 2u, memory_order_relaxed);
          MEMORY[0x1CCA63450](v49, v26);
          if (atomic_fetch_add_explicit(v26, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v26, v27);
          }
        }

        else
        {
          v49[0] = &stru_1F472E7E8;
          v42 = &stru_1F472E7E8;
        }

        v28 = v49[0];
        v29 = *WebCore::ResourceRequestBase::url((v8 + 110));
        if (v29)
        {
          atomic_fetch_add_explicit(v29, 2u, memory_order_relaxed);
          MEMORY[0x1CCA63450](&v47, v29);
          if (atomic_fetch_add_explicit(v29, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v29, v30);
          }
        }

        else
        {
          v47 = &stru_1F472E7E8;
          v43 = &stru_1F472E7E8;
        }

        CallDelegate(Weak, *(Weak[10] + 120), sel_webView_didPerformServerRedirectFromURL_toURL_inFrame_, v28, v47, *(this + 3), v31);
        v33 = v47;
        v47 = 0;
        if (v33)
        {
        }

        v34 = v49[0];
        v49[0] = 0;
        if (v34)
        {
        }

        if (v26)
        {
          if (atomic_fetch_add_explicit(v26, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v26, v32);
          }
        }
      }
    }

    else
    {
      v35 = +[WebHistory optionalSharedHistory];
      WebCore::DocumentLoader::serverRedirectSourceForHistory(&v48, v8);
      v36 = v48;
      if (v48)
      {
        atomic_fetch_add_explicit(v48, 2u, memory_order_relaxed);
        MEMORY[0x1CCA63450](v49, v36);
        if (atomic_fetch_add_explicit(v36, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v36, v37);
        }
      }

      else
      {
        v49[0] = &stru_1F472E7E8;
        v44 = &stru_1F472E7E8;
      }

      v39 = [(WebHistory *)v35 _itemForURLString:v49[0]];
      v40 = v49[0];
      v49[0] = 0;
      if (v40)
      {
      }

      if (v36 && atomic_fetch_add_explicit(v36, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v36, v38);
      }

      if (v39)
      {
        v41 = WebCore::ResourceRequestBase::url((v8 + 110));
        addRedirectURL(v39, v41);
      }
    }
  }
}

void sub_1C7A68A98(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if (v12)
  {
    if (atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v12, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

void addRedirectURL(WebHistoryItem *a1, const WTF::String *a2)
{
  if (!a1->_private->_redirectURLs.__ptr_)
  {
    v4 = WTF::fastMalloc(0x10);
    *v4 = 0;
    v4[1] = 0;
    v5 = a1->_private;
    ptr = v5->_redirectURLs.__ptr_;
    v5->_redirectURLs.__ptr_ = v4;
    if (ptr)
    {
      v7 = *(ptr + 3);
      v8 = *ptr;
      if (v7)
      {
        v9 = 8 * v7;
        do
        {
          v10 = *v8;
          *v8 = 0;
          if (v10 && atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v10, a2);
          }

          v8 = (v8 + 8);
          v9 -= 8;
        }

        while (v9);
        v8 = *ptr;
      }

      if (v8)
      {
        *ptr = 0;
        *(ptr + 2) = 0;
        WTF::fastFree(v8, a2);
      }

      WTF::fastFree(ptr, a2);
    }
  }

  v11 = a1->_private->_redirectURLs.__ptr_;
  v12 = *(v11 + 3);
  if (v12)
  {
    if (v12 != 1)
    {
      v13 = (*v11 + 8);
      v14 = 8 * v12 - 8;
      do
      {
        v15 = *v13;
        *v13 = 0;
        if (v15 && atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v15, a2);
        }

        ++v13;
        v14 -= 8;
      }

      while (v14);
    }

    goto LABEL_30;
  }

  v16 = *v11;
  if (*(v11 + 2))
  {
    if (!v16)
    {
      goto LABEL_30;
    }

LABEL_29:
    bzero(v16 + 8 * *(v11 + 3), 8 - 8 * *(v11 + 3));
    goto LABEL_30;
  }

  v17 = WTF::fastMalloc(0x80);
  *(v11 + 2) = 16;
  *v11 = v17;
  if (!v16)
  {
    v16 = v17;
    goto LABEL_29;
  }

  if (v17 == v16)
  {
    *v11 = 0;
    *(v11 + 2) = 0;
  }

  WTF::fastFree(v16, v18);
  v16 = *v11;
  if (*v11)
  {
    goto LABEL_29;
  }

LABEL_30:
  *(v11 + 3) = 1;
  v19 = a1->_private->_redirectURLs.__ptr_;
  if (*(v19 + 3))
  {
    v20 = *v19;
    v21 = *a2;
    if (*a2)
    {
      atomic_fetch_add_explicit(v21, 2u, memory_order_relaxed);
    }

    v22 = *v20;
    *v20 = v21;
    if (v22 && atomic_fetch_add_explicit(v22, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {

      WTF::StringImpl::destroy(v22, a2);
    }
  }

  else
  {
    __break(0xC471u);
  }
}

WTF::StringImpl *WebCore::DocumentLoader::serverRedirectSourceForHistory(WebCore::DocumentLoader *this, uint64_t a2)
{
  WebCore::DocumentLoader::urlForHistory(&v14, a2);
  v4 = WebCore::ResourceRequestBase::url((a2 + 880));
  if ((WTF::equal(v14, *v4, v5) & 1) != 0 || (v7 = WebCore::ResourceRequestBase::url((a2 + 880)), v8 = WTF::aboutBlankURL(v7), WTF::equal(*v7, *v8, v9)) || (WebCore::DocumentLoader::urlForHistory(&v13, a2), (v11 = v13) == 0))
  {
    *this = 0;
  }

  else
  {
    atomic_fetch_add_explicit(v13, 2u, memory_order_relaxed);
    v12 = v13;
    *this = v11;
    v13 = 0;
    if (v12 && atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v12, v6);
    }
  }

  result = v14;
  v14 = 0;
  if (result)
  {
    if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(result, v6);
    }
  }

  return result;
}

void sub_1C7A68EB8(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, WTF::StringImpl *a14)
{
  if (a14)
  {
    if (atomic_fetch_add_explicit(a14, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a14, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t WebFrameLoaderClient::shouldGoToHistoryItem(uint64_t a1, WebCore::HistoryItem *a2)
{
  v3 = *(a1 + 24);
  if (!v3 || (v4 = *(*(v3 + 8) + 8)) == 0 || (v5 = *(v4 + 24)) == 0)
  {
LABEL_6:
    Weak = 0;
    return [objc_msgSend(Weak "_policyDelegateForwarder")];
  }

  Weak = *(v5 + 8);
  if (Weak)
  {
    if (((*(**(Weak[7] + 16) + 1440))(*(Weak[7] + 16)) & 1) == 0)
    {
      Weak = objc_loadWeak((*(Weak[7] + 16) + 16));
      return [objc_msgSend(Weak "_policyDelegateForwarder")];
    }

    goto LABEL_6;
  }

  return [objc_msgSend(Weak "_policyDelegateForwarder")];
}

void (*WebFrameLoaderClient::didDisplayInsecureContent(WebFrameLoaderClient *this))(void)
{
  v1 = *(this + 3);
  if (v1 && (v2 = *(*(v1 + 8) + 8)) != 0 && (v3 = *(v2 + 24)) != 0 && (v4 = *(v3 + 8)) != 0 && ((*(**(*(v4 + 56) + 16) + 1440))(*(*(v4 + 56) + 16)) & 1) == 0)
  {
    Weak = objc_loadWeak((*(*(v4 + 56) + 16) + 16));
    v5 = Weak;
    if (Weak)
    {
      result = Weak->_private->frameLoadDelegateImplementations.didDisplayInsecureContentFunc;
      if (!result)
      {
        return result;
      }

      goto LABEL_8;
    }
  }

  else
  {
    v5 = 0;
  }

  result = qword_1EC2612C0;
  if (!qword_1EC2612C0)
  {
    return result;
  }

LABEL_8:

  return CallFrameLoadDelegate(result, v5, sel_webViewDidDisplayInsecureContent_);
}

void WebFrameLoaderClient::didRunInsecureContent(WebFrameLoaderClient *this, WebCore::SecurityOrigin *a2)
{
  v3 = *(this + 3);
  if (!v3)
  {
    goto LABEL_6;
  }

  v4 = *(*(v3 + 8) + 8);
  if (!v4)
  {
    goto LABEL_6;
  }

  v5 = *(v4 + 24);
  if (!v5)
  {
    goto LABEL_6;
  }

  v6 = *(v5 + 8);
  if (!v6)
  {
    goto LABEL_7;
  }

  if (((*(v6->super.viewRef->var1->notificationCallback + 180))(v6->super.viewRef->var1) & 1) == 0)
  {
    Weak = objc_loadWeak(&v6->super.viewRef->var1->responderCallback);
    v6 = Weak;
    if (Weak)
    {
      p_frameLoadDelegateImplementations = &Weak->_private->frameLoadDelegateImplementations;
      if (!Weak->_private->frameLoadDelegateImplementations.didRunInsecureContentFunc)
      {
        return;
      }

      goto LABEL_8;
    }
  }

  else
  {
LABEL_6:
    v6 = 0;
  }

LABEL_7:
  p_frameLoadDelegateImplementations = &WebViewGetFrameLoadDelegateImplementations(WebView *)::empty;
  if (!qword_1EC2612C8)
  {
    return;
  }

LABEL_8:
  v9 = [[WebSecurityOrigin alloc] _initWithWebCoreSecurityOrigin:a2];
  CallFrameLoadDelegate(p_frameLoadDelegateImplementations[26], v6, sel_webView_didRunInsecureContent_, v9);
  if (v9)
  {
  }
}

void sub_1C7A691E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

BOOL WebFrameLoaderClient::shouldFallBack(uint64_t a1, uint64_t a2)
{
  MEMORY[0x1CCA69A60](a2);
  if (*(a2 + 56) == -999)
  {
    return 0;
  }

  MEMORY[0x1CCA69A60](a2);
  return *(a2 + 56) != 204;
}

BOOL WebFrameLoaderClient::canHandleRequest(WebFrameLoaderClient *this, const WebCore::ResourceRequest *a2)
{
  v3 = WebCore::ResourceRequest::nsURLRequest();
  v4 = *(*(*(this + 3) + 8) + 8);
  v5 = *(v4 + 120);
  if (v5)
  {
    v5 = *(v5 + 8);
  }

  return [WebView _canHandleRequest:v3 forMainFrame:v5 == v4];
}

uint64_t WebFrameLoaderClient::canShowMIMEType(WebFrameLoaderClient *this, atomic_uint **a2)
{
  v2 = *(this + 3);
  if (v2 && (v3 = *(*(v2 + 8) + 8)) != 0 && (v4 = *(v3 + 24)) != 0)
  {
    Weak = *(v4 + 8);
    if (Weak)
    {
      if ((*(**(Weak[7] + 16) + 1440))(*(Weak[7] + 16)))
      {
        Weak = 0;
      }

      else
      {
        Weak = objc_loadWeak((*(Weak[7] + 16) + 16));
      }

      v7 = *a2;
      if (!v7)
      {
        goto LABEL_16;
      }

      goto LABEL_9;
    }
  }

  else
  {
    Weak = 0;
  }

  v7 = *a2;
  if (!*a2)
  {
LABEL_16:
    v13 = &stru_1F472E7E8;
    v12 = &stru_1F472E7E8;
    goto LABEL_11;
  }

LABEL_9:
  atomic_fetch_add_explicit(v7, 2u, memory_order_relaxed);
  MEMORY[0x1CCA63450](&v13, v7);
  if (atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v7, v8);
  }

LABEL_11:
  result = [Weak _canShowMIMEType:v13];
  v10 = v13;
  v13 = 0;
  if (v10)
  {
    v11 = result;

    return v11;
  }

  return result;
}

void sub_1C7A693D8(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v10, a2);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

BOOL WebFrameLoaderClient::canShowMIMETypeAsHTML(WebFrameLoaderClient *this, atomic_uint **a2)
{
  v2 = *a2;
  if (*a2)
  {
    atomic_fetch_add_explicit(v2, 2u, memory_order_relaxed);
    MEMORY[0x1CCA63450](&v8, v2);
    if (atomic_fetch_add_explicit(v2, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v2, v3);
    }
  }

  else
  {
    v8 = &stru_1F472E7E8;
    v7 = &stru_1F472E7E8;
  }

  result = [WebView canShowMIMETypeAsHTML:v8];
  v5 = v8;
  v8 = 0;
  if (v5)
  {
    v6 = result;

    return v6;
  }

  return result;
}

void sub_1C7A694B8(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v10, a2);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

BOOL WebFrameLoaderClient::representationExistsForURLScheme(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7[0] = a2;
  v7[1] = a3;
  WTF::StringView::createNSString(&v6, v7);
  result = [WebView _representationExistsForURLScheme:v6];
  v4 = v6;
  v6 = 0;
  if (v4)
  {
    v5 = result;

    return v5;
  }

  return result;
}

void sub_1C7A69560(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

void WebFrameLoaderClient::generatedMIMETypeForURLScheme(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v6[0] = a1;
  v6[1] = a2;
  WTF::StringView::createNSString(&v5, v6);
  MEMORY[0x1CCA63A40](a3, [WebView _generatedMIMETypeForURLScheme:v5]);
  v4 = v5;
  v5 = 0;
  if (v4)
  {
  }
}

void sub_1C7A695E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

uint64_t WebFrameLoaderClient::frameLoadCompleted(WebFrameLoaderClient *this)
{
  v2 = *(this + 3);
  if (v2 && (v3 = *(*(v2 + 8) + 8)) != 0 && (v4 = *(v3 + 24)) != 0 && (v5 = *(v4 + 8)) != 0 && ((*(**(*(v5 + 56) + 16) + 1440))(*(*(v5 + 56) + 16)) & 1) == 0)
  {
    result = [objc_loadWeak((*(*(v5 + 56) + 16) + 16)) drawsBackground];
    if (!result)
    {
      return result;
    }
  }

  else
  {
    result = [0 drawsBackground];
    if (!result)
    {
      return result;
    }
  }

  v7 = [*(*(*(this + 3) + 8) + 16) _scrollView];

  return [v7 setDrawsBackground:1];
}

uint64_t WebFrameLoaderClient::saveViewStateToItem(WebFrameLoaderClient *this, WebCore::HistoryItem *a2)
{
  v4 = *(this + 3);
  if (v4)
  {
    v5 = *(*(v4 + 8) + 8);
    if (v5)
    {
      v6 = *(v5 + 24);
      if (v6)
      {
        Weak = *(v6 + 8);
        if (Weak)
        {
          if (((*(**(Weak[7] + 16) + 1440))(*(Weak[7] + 16)) & 1) == 0)
          {
            Weak = objc_loadWeak((*(Weak[7] + 16) + 16));
            if (v4 == [Weak mainFrame])
            {
              goto LABEL_7;
            }

            goto LABEL_12;
          }

          goto LABEL_6;
        }
      }

      else
      {
        Weak = 0;
      }

      if (v4 == [Weak mainFrame])
      {
        goto LABEL_7;
      }

      goto LABEL_12;
    }
  }

LABEL_6:
  Weak = 0;
  if (v4 == [0 mainFrame])
  {
LABEL_7:
    v8 = [Weak _UIKitDelegateForwarder];
    v9 = kit(a2);

    return [v8 webView:Weak saveStateToHistoryItem:v9 forFrame:v4];
  }

LABEL_12:
  v11 = [*(*(*(this + 3) + 8) + 16) documentView];
  result = [v11 superview];
  if (result)
  {
    result = [v11 conformsToProtocol:&unk_1F4773938];
    if (result)
    {
      v12 = [v11 viewState];

      return MEMORY[0x1EEE543A8](a2, v12);
    }
  }

  return result;
}

uint64_t WebFrameLoaderClient::restoreViewState(uint64_t this)
{
  v1 = this;
  v2 = *(this + 24);
  if (!v2)
  {
    v4 = *(*(MEMORY[0xD0] + 32) + 16);
    if (!v4)
    {
      return this;
    }

LABEL_9:
    Weak = 0;
    if (v2 != [0 mainFrame])
    {
      goto LABEL_15;
    }

LABEL_10:
    v7 = [Weak _UIKitDelegateForwarder];
    v8 = kit(v4);

    return [v7 webView:Weak restoreStateFromHistoryItem:v8 forFrame:v2 force:0];
  }

  v3 = *(*(v2 + 8) + 8);
  v4 = *(*(*(v3 + 208) + 32) + 16);
  if (!v4)
  {
    return this;
  }

  v5 = *(v3 + 24);
  if (!v5)
  {
    Weak = 0;
LABEL_14:
    if (v2 != [Weak mainFrame])
    {
      goto LABEL_15;
    }

    goto LABEL_10;
  }

  Weak = *(v5 + 8);
  if (!Weak)
  {
    goto LABEL_14;
  }

  if ((*(**(Weak[7] + 16) + 1440))(*(Weak[7] + 16)))
  {
    goto LABEL_9;
  }

  Weak = objc_loadWeak((*(Weak[7] + 16) + 16));
  if (v2 == [Weak mainFrame])
  {
    goto LABEL_10;
  }

LABEL_15:
  v9 = [*(*(*(v1 + 24) + 8) + 16) documentView];
  this = [v9 conformsToProtocol:&unk_1F4773938];
  if (this)
  {
    this = WebCore::HistoryItem::viewState(v4);
    if (this)
    {

      return [v9 setViewState:this];
    }
  }

  return this;
}

uint64_t WebFrameLoaderClient::provisionalLoadStarted(WebFrameLoaderClient *this)
{
  v1 = [*(*(*(this + 3) + 8) + 16) _scrollView];

  return [v1 setDrawsBackground:0];
}

void WebFrameLoaderClient::createDocumentLoader(uint64_t a1@<X0>, WebDocumentLoaderMac **a2@<X8>)
{
  v4 = WTF::fastMalloc(0xE40);
  WebDocumentLoaderMac::WebDocumentLoaderMac();
  v5 = [WebDataSource alloc];
  ++*(v4 + 6);
  v13 = v4;
  v6 = [(WebDataSource *)v5 _initWithDocumentLoader:&v13];
  v7 = v13;
  v13 = 0;
  if (!v7)
  {
LABEL_4:
    v8 = *(a1 + 24);
    if (!v8)
    {
      goto LABEL_11;
    }

    goto LABEL_5;
  }

  if (*(v7 + 6) != 1)
  {
    --*(v7 + 6);
    goto LABEL_4;
  }

  (*(*v7 + 24))(v7);
  v8 = *(a1 + 24);
  if (!v8)
  {
    goto LABEL_11;
  }

LABEL_5:
  v9 = *(*(v8 + 8) + 8);
  if (v9)
  {
    v10 = *(v9 + 24);
    if (v10)
    {
      v11 = *(v10 + 8);
      if (v11)
      {
        if (((*(**(*(v11 + 56) + 16) + 1440))(*(*(v11 + 56) + 16)) & 1) == 0)
        {
          Weak = objc_loadWeak((*(*(v11 + 56) + 16) + 16));
          goto LABEL_12;
        }
      }
    }
  }

LABEL_11:
  Weak = 0;
LABEL_12:
  WebDocumentLoaderMac::setDataSource(v4, v6, Weak);
  *a2 = v4;
  if (v6)
  {
  }
}

void sub_1C7A69B88(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, _DWORD *a10)
{
  if (a10)
  {
    if (a10[6] == 1)
    {
      (*(*a10 + 24))(a10);
    }

    else
    {
      --a10[6];
    }
  }

  if (v10[6] == 1)
  {
    (*(*v10 + 24))(v10);
    _Unwind_Resume(exception_object);
  }

  --v10[6];
  _Unwind_Resume(exception_object);
}

void WebFrameLoaderClient::setTitle(uint64_t a1, atomic_uint **a2, WTF::URL *a3)
{
  v6 = *(a1 + 24);
  if (v6)
  {
    v7 = *(*(v6 + 8) + 8);
    if (v7)
    {
      v8 = *(v7 + 24);
      if (v8)
      {
        Weak = *(v8 + 8);
        if (Weak)
        {
          if ((*(**(Weak[7] + 16) + 1440))(*(Weak[7] + 16)))
          {
            goto LABEL_6;
          }

          Weak = objc_loadWeak((*(Weak[7] + 16) + 16));
          if (![Weak historyDelegate])
          {
            goto LABEL_7;
          }

LABEL_19:
          if (Weak)
          {
            v18 = (Weak[10] + 688);
            if (*(Weak[10] + 720))
            {
              goto LABEL_21;
            }
          }

          else
          {
            v18 = &WebViewGetHistoryDelegateImplementations(WebView *)::empty;
            if (qword_1EC261328)
            {
LABEL_21:
              v19 = *a2;
              if (v19)
              {
                atomic_fetch_add_explicit(v19, 2u, memory_order_relaxed);
                MEMORY[0x1CCA63450](&v39, v19);
                if (atomic_fetch_add_explicit(v19, 0xFFFFFFFE, memory_order_relaxed) == 2)
                {
                  WTF::StringImpl::destroy(v19, v20);
                }

                v21 = v39;
                v22 = *a3;
                if (v22)
                {
                  goto LABEL_25;
                }
              }

              else
              {
                v39 = &stru_1F472E7E8;
                v33 = &stru_1F472E7E8;
                v21 = &stru_1F472E7E8;
                v22 = *a3;
                if (v22)
                {
LABEL_25:
                  atomic_fetch_add_explicit(v22, 2u, memory_order_relaxed);
                  MEMORY[0x1CCA63450](&v38, v22);
                  if (atomic_fetch_add_explicit(v22, 0xFFFFFFFE, memory_order_relaxed) == 2)
                  {
                    WTF::StringImpl::destroy(v22, v23);
                  }

                  goto LABEL_27;
                }
              }

              v38 = &stru_1F472E7E8;
              v34 = &stru_1F472E7E8;
LABEL_27:
              CallDelegate(Weak, *(Weak[10] + 120), sel_webView_updateHistoryTitle_forURL_inFrame_, v21, v38, *(a1 + 24), v24);
              goto LABEL_37;
            }
          }

          if (!v18[3])
          {
            return;
          }

          v25 = *a2;
          if (v25)
          {
            atomic_fetch_add_explicit(v25, 2u, memory_order_relaxed);
            MEMORY[0x1CCA63450](&v39, v25);
            if (atomic_fetch_add_explicit(v25, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v25, v26);
            }

            v27 = v39;
            v28 = *a3;
            if (v28)
            {
              goto LABEL_34;
            }
          }

          else
          {
            v39 = &stru_1F472E7E8;
            v35 = &stru_1F472E7E8;
            v27 = &stru_1F472E7E8;
            v28 = *a3;
            if (v28)
            {
LABEL_34:
              atomic_fetch_add_explicit(v28, 2u, memory_order_relaxed);
              MEMORY[0x1CCA63450](&v38, v28);
              if (atomic_fetch_add_explicit(v28, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v28, v29);
              }

              goto LABEL_36;
            }
          }

          v38 = &stru_1F472E7E8;
          v36 = &stru_1F472E7E8;
LABEL_36:
          CallDelegate(Weak, *(Weak[10] + 120), sel_webView_updateHistoryTitle_forURL_, v27, v38, v30);
          goto LABEL_37;
        }
      }

      else
      {
        Weak = 0;
      }

      if (![Weak historyDelegate])
      {
        goto LABEL_7;
      }

      goto LABEL_19;
    }
  }

LABEL_6:
  Weak = 0;
  if ([0 historyDelegate])
  {
    goto LABEL_19;
  }

LABEL_7:
  WTF::URL::createCFURL(&v39, a3);
  v10 = [(__CFString *)v39 _webkit_canonicalize];
  v11 = v10;
  if (v10)
  {
    v12 = v10;
  }

  v13 = v39;
  v39 = v11;
  if (v13)
  {

    v11 = v39;
  }

  if (!v11 || ([-[__CFString absoluteString](v11 "absoluteString")] & 1) != 0)
  {
    goto LABEL_39;
  }

  v14 = +[WebHistory optionalSharedHistory];
  v15 = [(WebHistory *)v14 itemForURL:v39];
  v16 = *a2;
  if (v16)
  {
    atomic_fetch_add_explicit(v16, 2u, memory_order_relaxed);
    MEMORY[0x1CCA63450](&v38, v16);
    if (atomic_fetch_add_explicit(v16, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v16, v17);
    }
  }

  else
  {
    v38 = &stru_1F472E7E8;
    v37 = &stru_1F472E7E8;
  }

  [(WebHistoryItem *)v15 setTitle:v38, v38];
LABEL_37:
  v31 = v38;
  v38 = 0;
  if (v31)
  {
  }

LABEL_39:
  v32 = v39;
  v39 = 0;
  if (v32)
  {
  }
}

void sub_1C7A69FBC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  if (!a10)
  {
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t WebFrameLoaderClient::savePlatformDataToCachedFrame(WebFrameLoaderClient *this, WebCore::CachedFrame *a2)
{
  v4 = [*(*(*(this + 3) + 8) + 16) documentView];
  if (!WebCachedFramePlatformData::operator new(unsigned long)::s_heapRef)
  {
    NonCompactSlow = bmalloc::api::tzoneAllocateNonCompactSlow();
    *NonCompactSlow = &unk_1F472B9F0;
    NonCompactSlow[1] = v4;
    if (!v4)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  NonCompactSlow = bmalloc::api::tzoneAllocateNonCompact(WebCachedFramePlatformData::operator new(unsigned long)::s_heapRef, v3);
  *NonCompactSlow = &unk_1F472B9F0;
  NonCompactSlow[1] = v4;
  if (v4)
  {
LABEL_5:
    v6 = v4;
  }

LABEL_6:
  WebCore::CachedFrame::setCachedFramePlatformData();
  if (NonCompactSlow)
  {
    (*(*NonCompactSlow + 8))(NonCompactSlow);
  }

  v7 = *(this + 3);
  if (v7 && (v8 = *(*(v7 + 8) + 8)) != 0 && (v9 = *(v8 + 24)) != 0 && (v10 = *(v9 + 8)) != 0 && ((*(**(*(v10 + 56) + 16) + 1440))(*(*(v10 + 56) + 16)) & 1) == 0)
  {
    return [objc_loadWeak((*(*(v10 + 56) + 16) + 16)) _stopAllPlugInsForPageCache];
  }

  else
  {
    return [0 _stopAllPlugInsForPageCache];
  }
}

void sub_1C7A6A24C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (!a10)
  {
    _Unwind_Resume(exception_object);
  }

  (*(*a10 + 8))(a10);
  _Unwind_Resume(exception_object);
}

uint64_t WebFrameLoaderClient::transitionToCommittedFromCachedFrame(WebFrameLoaderClient *this, WebCore::CachedFrame *a2)
{
  v4 = WebCore::CachedFrame::cachedFramePlatformData(a2);
  v5 = *(v4 + 8);
  v6 = *(a2 + 1);
  if (v6)
  {
    v7 = *(v6 + 3608);
  }

  else
  {
    v7 = 0;
  }

  [*(v4 + 8) setDataSource:v7];
  v8 = *(*(*(this + 3) + 8) + 16);

  return [v8 _setDocumentView:v5];
}

uint64_t WebFrameLoaderClient::didRestoreFrameHierarchyForCachedFrame(WebFrameLoaderClient *this)
{
  v2 = *(this + 3);
  if (v2)
  {
    v3 = *(*(v2 + 8) + 8);
    if (v3 && (v4 = *(v3 + 24)) != 0 && (v5 = *(v4 + 8)) != 0 && ((*(**(*(v5 + 56) + 16) + 1440))(*(*(v5 + 56) + 16)) & 1) == 0)
    {
      Weak = objc_loadWeak((*(*(v5 + 56) + 16) + 16));
    }

    else
    {
      Weak = 0;
    }
  }

  else
  {
    Weak = 0;
  }

  return [Weak _restorePlugInsFromCache];
}

void WebFrameLoaderClient::transitionToCommittedForNewPage(uint64_t a1)
{
  v2 = [*(a1 + 24) _dataSource];
  [v2 _documentLoader];
  v3 = WebCore::ResourceResponseBase::mimeType((v27 + 1280));
  if (MEMORY[0x1CCA639B0](*v3, "text/html", 9))
  {
    v4 = 1;
  }

  else
  {
    v5 = [*(*(*(a1 + 24) + 8) + 16) _viewClassForMIMEType:{objc_msgSend(v2, "_responseMIMEType")}];
    v4 = v5 == objc_opt_class();
  }

  if (WebCore::FrameLoaderStateMachine::committingFirstRealLoad((*(*(*(*(a1 + 24) + 8) + 8) + 208) + 72)))
  {
    v6 = !v4;
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    [objc_msgSend(*(*(*(a1 + 24) + 8) + 16) "documentView")];
    return;
  }

  if (v4)
  {
    v7 = [WebHTMLView alloc];
    [*(*(*(a1 + 24) + 8) + 16) bounds];
    v8 = [(WebHTMLView *)v7 initWithFrame:?];
    [*(*(*(a1 + 24) + 8) + 16) _setDocumentView:v8];
    if (!v8)
    {
      return;
    }

    v9 = *(a1 + 24);
    if (v9)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v15 = [*(*(*(a1 + 24) + 8) + 16) _makeDocumentViewForDataSource:v2];
    if (!v15)
    {
      return;
    }

    v8 = v15;
    v16 = v15;
    v9 = *(a1 + 24);
    if (v9)
    {
LABEL_12:
      v10 = *(*(v9 + 8) + 8);
      v11 = *(v10 + 3);
      if (v11)
      {
        goto LABEL_13;
      }

      goto LABEL_20;
    }
  }

  v10 = 0;
  v11 = MEMORY[0x18];
  if (MEMORY[0x18])
  {
LABEL_13:
    v12 = *(v11 + 8);
    v13 = *(v10 + 15);
    if (v13)
    {
      goto LABEL_14;
    }

LABEL_21:
    v14 = 0;
    if (!v10)
    {
      goto LABEL_22;
    }

    goto LABEL_24;
  }

LABEL_20:
  v12 = 0;
  v13 = *(v10 + 15);
  if (!v13)
  {
    goto LABEL_21;
  }

LABEL_14:
  v14 = *(v13 + 8);
  if (v14 == v10)
  {
LABEL_22:
    v17 = *(v10 + 27);
    if (v17)
    {
      WebCore::ScrollView::setParentVisible(v17);
    }
  }

LABEL_24:
  WebCore::LocalFrame::setView();
  v27 = 0;
  WebCore::LocalFrameView::create(&v30, v10, v18);
  v19 = v30;
  ++*(v30 + 2);
  v27 = v19;
  WebCore::LocalFrame::setView();
  v20 = v27;
  v27 = 0;
  if (v20)
  {
    if (*(v20 + 2) == 1)
    {
      (*(*v20 + 8))(v20);
    }

    else
    {
      --*(v20 + 2);
    }
  }

  WebCore::Page::setDelegatesScaling(v12);
  [*(a1 + 24) _updateBackgroundAndUpdatesWhileOffscreen];
  [*(*(*(a1 + 24) + 8) + 16) _install];
  if (v14 == v10)
  {
    WebCore::ScrollView::setDelegatedScrollingMode();
    WebCore::ScrollView::setParentVisible(v30);
  }

  [(WebHTMLView *)v8 setDataSource:v2, v27];
  [v2 _documentLoader];
  if (v29)
  {
    MEMORY[0x1CCA63A40](&v27, [v2 pageTitle]);
    v28 = 0;
    WebCore::DocumentLoader::setTitle();
    v22 = v27;
    v27 = 0;
    if (v22)
    {
      if (atomic_fetch_add_explicit(v22, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v22, v21);
      }
    }
  }

  v23 = *(v10 + 14);
  if (v23)
  {
    v24 = *(v23 + 8);
    if (v24)
    {
      v25 = *(v10 + 27);
      (*(*v24 + 1256))(v24);
      WebCore::LocalFrameView::setCanHaveScrollbars(v25);
    }
  }

  if (v8 == [-[WebHTMLView window](v8 window])
  {
    WebCore::FocusController::setFocusedFrame();
    WebCore::FocusController::setFocused(v12[10]);
  }

  v26 = v30;
  v30 = 0;
  if (v26)
  {
    if (*(v26 + 2) == 1)
    {
      (*(*v26 + 8))(v26);
    }

    else
    {
      --*(v26 + 2);
    }
  }
}

uint64_t WebFrameLoaderClient::didRestoreFromBackForwardCache(WebFrameLoaderClient *this)
{
  v2 = *(this + 3);
  if (v2)
  {
    v3 = *(*(v2 + 8) + 8);
    if (v3)
    {
      v4 = *(v3 + 24);
      if (v4)
      {
        Weak = *(v4 + 8);
        if (Weak)
        {
          if (((*(**(Weak[7] + 16) + 1440))(*(Weak[7] + 16)) & 1) == 0)
          {
            Weak = objc_loadWeak((*(Weak[7] + 16) + 16));
            result = [Weak mainFrame];
            if (result != *(this + 3))
            {
              return result;
            }

            goto LABEL_7;
          }

          goto LABEL_6;
        }
      }

      else
      {
        Weak = 0;
      }

      result = [Weak mainFrame];
      if (result != *(this + 3))
      {
        return result;
      }

      goto LABEL_7;
    }
  }

LABEL_6:
  Weak = 0;
  result = [0 mainFrame];
  if (result != *(this + 3))
  {
    return result;
  }

LABEL_7:
  v7 = [Weak _UIKitDelegateForwarder];

  return [v7 webViewDidRestoreFromPageCache:Weak];
}

uint64_t WebFrameLoaderClient::userAgent@<X0>(uint64_t this@<X0>, const WTF::URL *a2@<X1>, atomic_uint **a3@<X8>)
{
  v3 = *(this + 24);
  if (v3 && (v4 = *(*(v3 + 8) + 8)) != 0 && (v5 = *(v4 + 24)) != 0 && (v6 = *(v5 + 8)) != 0 && (v7 = a3, this = (*(**(*(v6 + 56) + 16) + 1440))(*(*(v6 + 56) + 16), a2), a3 = v7, (this & 1) == 0) && (this = objc_loadWeak((*(*(v6 + 56) + 16) + 16)), a3 = v7, this))
  {

    return [this _userAgentString];
  }

  else
  {
    v8 = *MEMORY[0x1E696EBA8];
    if (*MEMORY[0x1E696EBA8])
    {
      atomic_fetch_add_explicit(v8, 2u, memory_order_relaxed);
    }

    *a3 = v8;
  }

  return this;
}

BOOL WebFrameLoaderClient::canCachePage(id *this)
{
  [objc_msgSend(this[3] "_dataSource")];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && (v2 = *(*(*(this[3] + 1) + 8) + 24)) != 0 && (v3 = *(v2 + 8)) != 0 && (v4 = *(*(v3 + 152) + 16), *(v4 + 65) == 1))
  {
    return *(v4 + 60) != 0;
  }

  else
  {
    return 0;
  }
}

void WebFrameLoaderClient::createFrame(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v5 = *(*(*(a3 + 48) + 8) + 552);
  if (v5 && (v6 = *(v5 + 8)) != 0 && (v7 = *(v6 + 24)) != 0 && (v8 = *(v7 + 8)) != 0)
  {
    v12 = objc_alloc_init(WebFrameView);
    [WebFrame _createSubframeWithOwnerElement:a3 page:v8 frameName:a2 frameView:v12];
    if (v23 && (v13 = *(*(v23 + 208) + 16), ((*(*v13 + 1032))(v13) & 1) == 0))
    {
      v14 = v13[3];
    }

    else
    {
      v14 = 0;
    }

    if ([v14 _dataSource])
    {
      v15 = [v14 _dataSource];
      if (v15)
      {
        [v15 _documentLoader];
        v16 = v22;
      }

      else
      {
        v16 = 0;
      }

      [objc_msgSend(*(a1 + 24) "_dataSource")];
      v18 = *(v21 + 1640);
      if (v18)
      {
        atomic_fetch_add_explicit(v18, 2u, memory_order_relaxed);
      }

      v19 = *(v16 + 1640);
      *(v16 + 1640) = v18;
      if (v19 && atomic_fetch_add_explicit(v19, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v19, v17);
      }
    }

    v20 = *(v23 + 24);
    if (v20 && *(v20 + 8))
    {
      *a4 = v23;
      if (v12)
      {
LABEL_21:
      }
    }

    else
    {
      *a4 = 0;
      if (*(v23 + 16) == 1)
      {
        (*(*v23 + 8))();
        if (v12)
        {
          goto LABEL_21;
        }
      }

      else
      {
        --*(v23 + 16);
        if (v12)
        {
          goto LABEL_21;
        }
      }
    }
  }

  else
  {
    *a4 = 0;
  }
}

_DWORD **WTF::Ref<WebCore::LocalFrame,WTF::RawPtrTraits<WebCore::LocalFrame>,WTF::DefaultRefDerefTraits<WebCore::LocalFrame>>::~Ref(_DWORD **result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    if (v1[4] == 1)
    {
      v2 = result;
      (*(*v1 + 8))(v1);
      return v2;
    }

    else
    {
      --v1[4];
    }
  }

  return result;
}

uint64_t WebFrameLoaderClient::objectContentType(WebFrameLoaderClient *this, const WTF::URL *a2, atomic_uint **a3)
{
  v4 = *a3;
  if (*a3)
  {
    atomic_fetch_add_explicit(v4, 2u, memory_order_relaxed);
    v36 = v4;
    if (v4[1])
    {
LABEL_3:
      v5 = *(this + 3);
      if (!v5)
      {
        goto LABEL_8;
      }

      v6 = *(*(v5 + 8) + 8);
      if (!v6)
      {
        goto LABEL_8;
      }

      v7 = *(v6 + 24);
      if (!v7)
      {
        goto LABEL_8;
      }

      Weak = *(v7 + 8);
      if (!Weak)
      {
        goto LABEL_9;
      }

      if (((*(**(Weak[7] + 16) + 1440))(*(Weak[7] + 16), a2) & 1) == 0)
      {
        Weak = objc_loadWeak((*(Weak[7] + 16) + 16));
      }

      else
      {
LABEL_8:
        Weak = 0;
      }

LABEL_9:
      atomic_fetch_add_explicit(v4, 2u, memory_order_relaxed);
      MEMORY[0x1CCA63450](&v35, v4, a2);
      if (atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v4, v9);
      }

      v11 = [Weak _pluginForMIMEType:v35];
      v12 = v35;
      v35 = 0;
      if (v12)
      {
      }

      isSupportedImageMIMEType = WebCore::MIMETypeRegistry::isSupportedImageMIMEType(&v36, v10);
      if (v11)
      {
        v14 = 3;
      }

      else
      {
        v14 = 0;
      }

      if (v11)
      {
        v15 = 1;
      }

      else
      {
        v15 = isSupportedImageMIMEType;
      }

      if (isSupportedImageMIMEType)
      {
        v16 = 1;
      }

      else
      {
        v16 = v14;
      }

      v17 = v36;
      if ((v15 & 1) == 0)
      {
        v18 = *(*(*(this + 3) + 8) + 16);
        if (v36)
        {
          atomic_fetch_add_explicit(v36, 2u, memory_order_relaxed);
          MEMORY[0x1CCA63450](&v35, v17);
          if (atomic_fetch_add_explicit(v17, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v17, v19);
          }
        }

        else
        {
          v35 = &stru_1F472E7E8;
          v33 = &stru_1F472E7E8;
        }

        v20 = [v18 _viewClassForMIMEType:v35];
        v21 = v35;
        v35 = 0;
        if (v21)
        {
        }

        v16 = 2 * (v20 != 0);
        v17 = v36;
      }

      v36 = 0;
      v4 = v17;
      if (!v17)
      {
        return v16;
      }

LABEL_30:
      if (atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) != 2)
      {
        return v16;
      }

LABEL_31:
      WTF::StringImpl::destroy(v4, a2);
      return v16;
    }
  }

  else
  {
    v36 = 0;
  }

  WTF::URL::createCFURL(&v35, a2);
  v23 = [-[__CFString path](v35 "path")];
  if ([v23 length])
  {
    MEMORY[0x1CCA63A40](&v34, [objc_msgSend(MEMORY[0x1E696AF48] "sharedMappings")]);
    v24 = v34;
    v34 = 0;
    v36 = v24;
    if (v4)
    {
      if (atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v4, a2);
        v25 = v34;
        v34 = 0;
        if (v25)
        {
          if (atomic_fetch_add_explicit(v25, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v25, a2);
          }
        }
      }
    }

    if (!v24 || !*(v24 + 1))
    {
      v26 = *(this + 3);
      if (v26 && (v27 = *(*(v26 + 8) + 8)) != 0 && (v28 = *(v27 + 24)) != 0 && (v29 = *(v28 + 8)) != 0 && ((*(**(*(v29 + 56) + 16) + 1440))(*(*(v29 + 56) + 16)) & 1) == 0)
      {
        v30 = objc_loadWeak((*(*(v29 + 56) + 16) + 16));
      }

      else
      {
        v30 = 0;
      }

      if ([v30 _pluginForExtension:v23])
      {
        v31 = v35;
        v35 = 0;
        if (v31)
        {
        }

        v16 = 3;
        v36 = 0;
        v4 = v24;
        if (!v24)
        {
          return v16;
        }

        goto LABEL_30;
      }
    }

    v4 = v24;
  }

  v32 = v35;
  v35 = 0;
  if (v32)
  {
  }

  if (v4)
  {
    if (!v4[1])
    {
      v36 = 0;
      v16 = 2;
      if (atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) != 2)
      {
        return v16;
      }

      goto LABEL_31;
    }

    goto LABEL_3;
  }

  return 2;
}

uint64_t sub_1C7A6B1D0(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, WTF::StringImpl *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  v18 = a2;
  if (v22 && atomic_fetch_add_explicit(v22, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v22, a2);
  }

  if (v18 != 1)
  {
    _Unwind_Resume(exception_object);
  }

  v20 = objc_begin_catch(exception_object);
  ReportBlockedObjCException(v20);
  objc_end_catch();
  return 0;
}

void WebFrameLoaderClient::createPlugin(uint64_t a1@<X0>, uint64_t a2@<X1>, WTF::URL *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, atomic_uint **a6@<X5>, WebCore::Widget **a7@<X8>)
{
  v13 = *(*(*(a1 + 24) + 8) + 8);
  v77 = a7;
  if (v13 && (v14 = *(v13 + 24)) != 0 && (v15 = *(v14 + 8)) != 0 && ((*(**(*(v15 + 56) + 16) + 1440))(*(*(v15 + 56) + 16)) & 1) == 0)
  {
    Weak = objc_loadWeak((*(*(v15 + 56) + 16) + 16));
  }

  else
  {
    Weak = 0;
  }

  WTF::URL::createCFURL(&v86, (*(*(*(*(a1 + 24) + 8) + 8) + 224) + 912));
  WTF::URL::createCFURL(&v85, a3);
  v18 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:*(a4 + 12)];
  v19 = *(a4 + 12);
  if (v19)
  {
    v20 = *a4;
    v21 = 8 * v19;
    do
    {
      WTF::makeNSArrayElement(&v82, v20, v17);
      if (v82)
      {
        [v18 addObject:?];
        v22 = v82;
        v82 = 0;
        if (v22)
        {
        }
      }

      v20 = (v20 + 8);
      v21 -= 8;
    }

    while (v21);
  }

  v23 = *a6;
  if (*a6 && v23[1])
  {
    atomic_fetch_add_explicit(v23, 2u, memory_order_relaxed);
    MEMORY[0x1CCA63450](&v82, v23);
    if (atomic_fetch_add_explicit(v23, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v23, v24);
    }

    v25 = v82;
    v26 = [Weak _pluginForMIMEType:v82];
  }

  else
  {
    v25 = 0;
    v26 = 0;
  }

  v27 = [objc_msgSend(v85 "path")];
  if (v26)
  {
    goto LABEL_19;
  }

  v31 = v27;
  if (![v27 length])
  {
    v26 = 0;
LABEL_106:
    v30 = 200;
    v29 = 1;
    if (*(a1 + 24))
    {
      goto LABEL_24;
    }

LABEL_107:
    v74 = WTF::fastMalloc(0x40);
    WebCore::Widget::Widget(v74, 0);
    *v74 = &unk_1F472BA18;
    *v77 = v74;
    if (v25)
    {
      goto LABEL_97;
    }

    goto LABEL_98;
  }

  v26 = [Weak _pluginForExtension:v31];
  if (!v26)
  {
    goto LABEL_106;
  }

  MEMORY[0x1CCA63A40](&v82, v31);
  v32 = [v26 MIMETypeForExtension:&v82];
  v34 = v32;
  if (v32)
  {
    v35 = v32;
  }

  v36 = v82;
  v82 = 0;
  if (v36 && atomic_fetch_add_explicit(v36, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v36, v33);
  }

  if ([(WTF::StringImpl *)v34 length])
  {
    v37 = v25;
    v38 = v34;
    if (!v25)
    {
      v25 = v34;
      goto LABEL_19;
    }
  }

  else
  {
    v37 = v34;
    v38 = v25;
    if (!v34)
    {
      goto LABEL_19;
    }
  }

  v25 = v38;
LABEL_19:
  v28 = *(a2 + 72);
  if (v28)
  {
    if ((*(v28 + 45) & 2) != 0)
    {
      goto LABEL_113;
    }

    if (*(v28 + 46) == 7)
    {
      WebCore::RenderEmbeddedObject::setPluginUnavailabilityReason();
    }
  }

  v29 = 0;
  v30 = 203;
  if (!*(a1 + 24))
  {
    goto LABEL_107;
  }

LABEL_24:
  if (Weak)
  {
    if (!*(Weak[10] + 392))
    {
      goto LABEL_96;
    }
  }

  else if (!qword_1EC2611E0)
  {
    goto LABEL_96;
  }

  v39 = *(a4 + 12);
  if (!v39)
  {
LABEL_70:
    v52 = *MEMORY[0x1E696EB90];
    if (*MEMORY[0x1E696EB90])
    {
      goto LABEL_71;
    }

    goto LABEL_72;
  }

  v40 = 0;
  v41 = *(MEMORY[0x1E696EBB8] + 112);
  v42 = *(MEMORY[0x1E696EBB8] + 108);
  v43 = *(MEMORY[0x1E696EBB8] + 117);
  v44 = *(MEMORY[0x1E696EBB8] + 103);
  v45 = *(MEMORY[0x1E696EBB8] + 105);
  v46 = *(MEMORY[0x1E696EBB8] + 110);
  v47 = *(MEMORY[0x1E696EBB8] + 115);
  v48 = *(MEMORY[0x1E696EBB8] + 97);
  v49 = *(MEMORY[0x1E696EBB8] + 101);
  while (1)
  {
    v50 = *(*a4 + 8 * v40);
    if (!v50 || *(v50 + 4) != 11)
    {
      goto LABEL_40;
    }

    v51 = *(v50 + 8);
    if ((*(v50 + 16) & 4) != 0)
    {
      break;
    }

    if (v41 == (*v51 | (32 * (*v51 - 65 < 0x1A))) && v42 == (v51[1] | (32 * (v51[1] - 65 < 0x1A))) && v43 == (v51[2] | (32 * (v51[2] - 65 < 0x1A))) && v44 == (v51[3] | (32 * (v51[3] - 65 < 0x1A))) && v45 == (v51[4] | (32 * (v51[4] - 65 < 0x1A))) && v46 == (v51[5] | (32 * (v51[5] - 65 < 0x1A))) && v47 == (v51[6] | (32 * (v51[6] - 65 < 0x1A))) && v41 == (v51[7] | (32 * (v51[7] - 65 < 0x1A))) && v48 == (v51[8] | (32 * (v51[8] - 65 < 0x1A))) && v44 == (v51[9] | (32 * (v51[9] - 65 < 0x1A))) && v49 == (v51[10] | (32 * (v51[10] - 65 < 0x1A))))
    {
      goto LABEL_67;
    }

LABEL_40:
    if (v39 == ++v40)
    {
      goto LABEL_70;
    }
  }

  if (*(MEMORY[0x1E696EBB8] + *v51) != v41 || *(MEMORY[0x1E696EBB8] + *(v51 + 1)) != v42 || *(MEMORY[0x1E696EBB8] + *(v51 + 2)) != v43 || *(MEMORY[0x1E696EBB8] + *(v51 + 3)) != v44 || *(MEMORY[0x1E696EBB8] + *(v51 + 4)) != v45 || *(MEMORY[0x1E696EBB8] + *(v51 + 5)) != v46 || *(MEMORY[0x1E696EBB8] + *(v51 + 6)) != v47 || *(MEMORY[0x1E696EBB8] + *(v51 + 7)) != v41 || *(MEMORY[0x1E696EBB8] + *(v51 + 8)) != v48 || *(MEMORY[0x1E696EBB8] + *(v51 + 9)) != v44 || *(MEMORY[0x1E696EBB8] + *(v51 + 10)) != v49)
  {
    goto LABEL_40;
  }

LABEL_67:
  if (v40 >= *(a5 + 12))
  {
LABEL_113:
    __break(0xC471u);
    JUMPOUT(0x1C7A6BAB0);
  }

  v52 = *(*a5 + 8 * v40);
  if (!v52)
  {
    goto LABEL_72;
  }

LABEL_71:
  atomic_fetch_add_explicit(v52, 2u, memory_order_relaxed);
LABEL_72:
  v79 = v52;
  WebCore::Document::completeURL();
  v54 = v79;
  v79 = 0;
  if (v54 && atomic_fetch_add_explicit(v54, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v54, v53);
  }

  if ((v83 & 2) == 0)
  {
    v79 = 0;
    WTF::URL::invalidate(&v79);
    v56 = v79;
    v79 = 0;
    v57 = v82;
    v82 = v56;
    if (v57 && atomic_fetch_add_explicit(v57, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v57, v55);
    }

    v83 = v80;
    LODWORD(v80) = v80 & 0xFFFFFFFE;
    v84 = v81;
    v58 = v79;
    v79 = 0;
    if (v58 && atomic_fetch_add_explicit(v58, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v58, v55);
    }
  }

  if (v29)
  {
    v79 = 0;
  }

  else
  {
    v59 = *[v26 pluginInfo];
    if (v59)
    {
      atomic_fetch_add_explicit(v59, 2u, memory_order_relaxed);
      MEMORY[0x1CCA63450](&v79, v59);
      if (atomic_fetch_add_explicit(v59, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v59, v60);
      }
    }

    else
    {
      v79 = &stru_1F472E7E8;
      v75 = &stru_1F472E7E8;
    }
  }

  v61 = objc_alloc(MEMORY[0x1E696ABC0]);
  v62 = v85;
  WTF::URL::createCFURL(&v78, &v82);
  v63 = [v61 _initWithPluginErrorCode:v30 contentURL:v62 pluginPageURL:v78 pluginName:v79 MIMEType:v25];
  v64 = v78;
  v78 = 0;
  if (v64)
  {
  }

  v65 = [*(a1 + 24) webView];
  v66 = [*(a1 + 24) _dataSource];
  v67 = [v65 _resourceLoadDelegateForwarder];
  CallDelegate(v65, v67, sel_webView_plugInFailedWithError_dataSource_, v63, v66, v68);
  if (v63)
  {
  }

  v70 = v79;
  v79 = 0;
  if (v70)
  {
  }

  v71 = v82;
  v82 = 0;
  if (v71 && atomic_fetch_add_explicit(v71, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v71, v69);
  }

LABEL_96:
  *v77 = 0;
  if (v25)
  {
LABEL_97:
  }

LABEL_98:
  if (v18)
  {
  }

  v72 = v85;
  v85 = 0;
  if (v72)
  {
  }

  v73 = v86;
  v86 = 0;
  if (v73)
  {
  }
}

void sub_1C7A6BABC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, WTF::StringImpl *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, WTF::StringImpl *a18)
{
  if (v19)
  {
  }

  if (v20)
  {
  }

  if (v18)
  {
  }

  v24 = *(v21 - 96);
  *(v21 - 96) = 0;
  if (v24)
  {
  }

  v25 = *(v21 - 88);
  *(v21 - 88) = 0;
  if (v25)
  {
  }

  if (a2 == 1)
  {
    v26 = objc_begin_catch(exception_object);
    ReportBlockedObjCException(v26);
    objc_end_catch();
    *a11 = 0;
    JUMPOUT(0x1C7A6B9DCLL);
  }

  _Unwind_Resume(exception_object);
}

void sub_1C7A6BCC4()
{
  if (!v0)
  {
    JUMPOUT(0x1C7A6BC70);
  }

  JUMPOUT(0x1C7A6BC6CLL);
}

void sub_1C7A6BD3C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  if (a2 != 1)
  {
    _Unwind_Resume(exception_object);
  }

  v14 = objc_begin_catch(exception_object);
  ReportBlockedObjCException(v14);

  objc_end_catch();
}

uint64_t WebFrameLoaderClient::sendH2Ping(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v40 = *MEMORY[0x1E69E9840];
  WebCore::internalError();
  v25 = *v11;
  v26 = v12;
  v27 = v13;
  v28 = v14;
  v29 = v15;
  v30 = v16;
  v31 = v17;
  v32 = v18;
  v33 = v19;
  v34 = v20;
  v36 = v22;
  v35 = v21;
  v37 = v23;
  v38 = v24;
  v39 = 1;
  v4 = *a3;
  *a3 = 0;
  (*(*v4 + 16))(v4, &v25);
  (*(*v4 + 8))(v4);
  if (v39 && v39 != 255)
  {
    v6 = v37;
    v37 = 0;
    if (v6)
    {
    }

    v7 = v34;
    v34 = 0;
    if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v7, v5);
    }

    v8 = *(&v25 + 1);
    *(&v25 + 1) = 0;
    if (v8 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v8, v5);
    }

    v9 = v25;
    *&v25 = 0;
    if (v9 && atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v9, v5);
    }
  }

  return 0;
}

void sub_1C7A6BFF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19)
{
  (*(*v19 + 8))(v19);
  mpark::detail::destructor<mpark::detail::traits<WTF::Seconds,WebCore::ResourceError>,(mpark::detail::Trait)1>::~destructor(v20 - 128, v22);
  WebCore::ResourceError::~ResourceError(&a19, v23);
  WebCore::ResourceError::~ResourceError(&a9, v24);
  _Unwind_Resume(a1);
}

WTF::AtomStringImpl *WebFrameLoaderClient::overrideMediaType@<X0>(WebFrameLoaderClient *this@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(this + 3);
  if (v3 && (v4 = *(*(v3 + 8) + 8)) != 0 && (v5 = *(v4 + 24)) != 0 && (v6 = *(v5 + 8)) != 0 && ((*(**(*(v6 + 56) + 16) + 1440))(*(*(v6 + 56) + 16)) & 1) == 0)
  {
    result = [objc_loadWeak((*(*(v6 + 56) + 16) + 16)) mediaStyle];
    if (result)
    {
      goto LABEL_7;
    }
  }

  else
  {
    result = [0 mediaStyle];
    if (result)
    {
LABEL_7:

      return WTF::AtomStringImpl::add(a2, result, v8);
    }
  }

  v9 = *MEMORY[0x1E696EB90];
  if (*MEMORY[0x1E696EB90])
  {
    atomic_fetch_add_explicit(v9, 2u, memory_order_relaxed);
  }

  *a2 = v9;
  return result;
}

WebCore::DOMWrapperWorld *WebFrameLoaderClient::dispatchDidClearWindowObjectInWorld(WebFrameLoaderClient *this, WebCore::DOMWrapperWorld *a2)
{
  v3 = this;
  v4 = *(this + 3);
  if (!v4)
  {
    goto LABEL_6;
  }

  v5 = *(*(v4 + 8) + 8);
  if (!v5)
  {
    goto LABEL_6;
  }

  v6 = *(v5 + 24);
  if (!v6)
  {
    goto LABEL_6;
  }

  v7 = *(v6 + 8);
  if (!v7)
  {
    goto LABEL_7;
  }

  this = (*(v7->super.viewRef->var1->notificationCallback + 180))(v7->super.viewRef->var1);
  if ((this & 1) == 0)
  {
    this = objc_loadWeak(&v7->super.viewRef->var1->responderCallback);
    v7 = this;
    if (this)
    {
      v8 = (*(this + 10) + 416);
      if (*(*(this + 10) + 432))
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }
  }

  else
  {
LABEL_6:
    v7 = 0;
  }

LABEL_7:
  v8 = &WebViewGetFrameLoadDelegateImplementations(WebView *)::empty;
  if (qword_1EC261208)
  {
LABEL_8:
    v9 = *(v3 + 3);
    v10 = [WebScriptWorld findOrCreateWorld:a2];
    v11 = [(WebView *)v7 _frameLoadDelegateForwarder];

    return CallDelegate(v7, v11, sel_webView_didClearWindowObjectForFrame_inScriptWorld_, v9, v10, v12);
  }

LABEL_13:
  result = WebCore::mainThreadNormalWorldSingleton(this);
  if (result != a2)
  {
    return result;
  }

  v14 = *(*(*(*(v3 + 3) + 8) + 8) + 232);
  if (*v8)
  {
    v15 = sel_webView_didCreateJavaScriptContext_forFrame_;
    v16 = WebCore::ScriptController::javaScriptContext(v14);
  }

  else
  {
    if (!v8[1])
    {
      v22 = v8[4];
      if (v22)
      {
        v23 = WebCore::ScriptController::windowScriptObject(v14);
        CallFrameLoadDelegate(v22, v7, sel_webView_windowScriptObjectAvailable_, v23);
      }

      goto LABEL_20;
    }

    v15 = sel_webView_didClearWindowObject_forFrame_;
    v16 = WebCore::ScriptController::windowScriptObject(v14);
  }

  v17 = v16;
  v18 = *(v3 + 3);
  v19 = [(WebView *)v7 _frameLoadDelegateForwarder];
  CallDelegate(v7, v19, v15, v17, v18, v20);
LABEL_20:
  result = [(WebView *)v7 scriptDebugDelegate];
  if (result)
  {
    [*(v3 + 3) _detachScriptDebugger];
    v21 = *(v3 + 3);

    return [v21 _attachScriptDebugger];
  }

  return result;
}

uint64_t WebFrameLoaderClient::createNetworkingContext@<X0>(WebFrameLoaderClient *this@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(this + 3);
  if (v3)
  {
    v4 = *(*(v3 + 8) + 8);
  }

  else
  {
    v4 = 0;
  }

  v5 = WTF::fastMalloc(0x18);
  *(v5 + 8) = 1;
  *v5 = &unk_1F472BBE8;
  if (!v4)
  {
    result = 0;
    goto LABEL_11;
  }

  result = *(v4 + 8);
  if (result)
  {
    goto LABEL_9;
  }

  result = WTF::fastCompactMalloc(0x10);
  *result = 1;
  *(result + 8) = v4;
  v8 = *(v4 + 8);
  *(v4 + 8) = result;
  if (!v8)
  {
    goto LABEL_9;
  }

  if (atomic_fetch_add(v8, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v8);
    WTF::fastFree(v8, v7);
    result = *(v4 + 8);
    if (!result)
    {
      goto LABEL_11;
    }

    goto LABEL_9;
  }

  result = *(v4 + 8);
  if (result)
  {
LABEL_9:
    atomic_fetch_add(result, 1u);
  }

LABEL_11:
  *(v5 + 16) = result;
  *v5 = &unk_1F472DD00;
  *a2 = v5;
  return result;
}

uint64_t WebFrameLoaderClient::createHistoryItemTree(uint64_t a1)
{
  v1 = *(*(*(*(a1 + 24) + 8) + 8) + 320);
  if (v1 && (v2 = *(v1 + 8)) != 0)
  {
    ++v2[4];
    result = WebCore::HistoryController::createItemTree();
    if (v2[4] == 1)
    {
      v4 = *(*v2 + 8);

      return v4(v2);
    }

    else
    {
      --v2[4];
    }
  }

  else
  {
    result = 133;
    __break(0xC471u);
  }

  return result;
}

void sub_1C7A6C510(_Unwind_Exception *exception_object)
{
  if (v1[4] == 1)
  {
    (*(*v1 + 8))(v1);
    _Unwind_Resume(exception_object);
  }

  --v1[4];
  _Unwind_Resume(exception_object);
}

uint64_t WebFrameLoaderClient::shouldLoadMediaElementURL(WebFrameLoaderClient *this, const WTF::URL *a2)
{
  v4 = *(this + 3);
  if (!v4 || (v5 = *(*(v4 + 8) + 8)) == 0)
  {
LABEL_6:
    Weak = 0;
    v8 = [0 policyDelegate];
    if (!v8)
    {
      return 1;
    }

    goto LABEL_10;
  }

  v6 = *(v5 + 24);
  if (!v6)
  {
    Weak = 0;
LABEL_9:
    v8 = [Weak policyDelegate];
    if (!v8)
    {
      return 1;
    }

    goto LABEL_10;
  }

  Weak = *(v6 + 8);
  if (!Weak)
  {
    goto LABEL_9;
  }

  if ((*(**(Weak[7] + 16) + 1440))(*(Weak[7] + 16)))
  {
    goto LABEL_6;
  }

  Weak = objc_loadWeak((*(Weak[7] + 16) + 16));
  v8 = [Weak policyDelegate];
  if (!v8)
  {
    return 1;
  }

LABEL_10:
  v9 = v8;
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 1;
  }

  WTF::URL::createCFURL(&v13, a2);
  result = [v9 webView:Weak shouldLoadMediaURL:v13 inFrame:*(this + 3)];
  v11 = v13;
  v13 = 0;
  if (v11)
  {
    v12 = result;

    return v12;
  }

  return result;
}

void sub_1C7A6C690(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

void WebFrameLoaderClient::createPreviewLoaderClient(id *this@<X0>, atomic_uint **a2@<X1>, atomic_uint **a3@<X2>, uint64_t *a4@<X8>)
{
  v26[2] = *MEMORY[0x1E69E9840];
  if (([objc_msgSend(objc_msgSend(this[3] "webView")] & 1) == 0)
  {
    goto LABEL_18;
  }

  v8 = *a2;
  if (v8)
  {
    atomic_fetch_add_explicit(v8, 2u, memory_order_relaxed);
    MEMORY[0x1CCA63450](&v23, v8);
    if (atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v8, v9);
    }
  }

  else
  {
    v23 = &stru_1F472E7E8;
    v21 = &stru_1F472E7E8;
  }

  TemporaryFileForQuickLook = WebCore::createTemporaryFileForQuickLook(v23, v9);
  v11 = TemporaryFileForQuickLook;
  if (TemporaryFileForQuickLook)
  {
    v12 = TemporaryFileForQuickLook;
  }

  v13 = v23;
  v23 = 0;
  if (v13)
  {
  }

  if (v11)
  {
    v14 = WTF::fastMalloc(0x20);
    *(v14 + 8) = 1;
    *v14 = &unk_1F472BC48;
    *(v14 + 16) = v11;
    v15 = v11;
    v16 = [MEMORY[0x1E696AC00] fileHandleForWritingAtPath:v11];
    *(v14 + 24) = v16;
    if (v16)
    {
      v17 = v16;
    }

    v26[0] = v11;
    v24 = WebQuickLookFileNameKey;
    v25 = WebQuickLookUTIKey;
    v18 = *a3;
    if (v18)
    {
      atomic_fetch_add_explicit(v18, 2u, memory_order_relaxed);
      MEMORY[0x1CCA63450](&v23, v18);
      if (atomic_fetch_add_explicit(v18, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v18, v19);
      }
    }

    else
    {
      v23 = &stru_1F472E7E8;
      v22 = &stru_1F472E7E8;
    }

    v26[1] = v23;
    [objc_msgSend(this[3] "provisionalDataSource")];
    v20 = v23;
    v23 = 0;
    if (v20)
    {
    }

    [objc_msgSend(this[3] provisionalDataSource];
    *a4 = v14;
  }

  else
  {
LABEL_18:
    *a4 = 0;
  }
}

void sub_1C7A6C8C0(_Unwind_Exception *a1)
{
  if (v2[2] == 1)
  {
    (*(*v2 + 8))(v2);

    _Unwind_Resume(a1);
  }

  --v2[2];

  _Unwind_Resume(a1);
}

void WebFrameLoaderClient::contentFilterDidBlockLoad(uint64_t a1, __int128 *a2)
{
  v42 = *MEMORY[0x1E69E9840];
  v2 = *(*(*(*(*(a1 + 24) + 8) + 8) + 208) + 24);
  v3 = *a2;
  v4 = a2[1];
  *a2 = 0;
  *(a2 + 1) = 0;
  v29 = v3;
  v30 = v4;
  v31 = a2[2];
  *(a2 + 4) = v4 & 0xFFFFFFFE;
  v5 = *(a2 + 9);
  if (v5)
  {
    if (v5 == a2 + 3)
    {
      v33 = v32;
      v22 = a2;
      (*(*v5 + 24))(v5, v32);
      a2 = v22;
      LOBYTE(v34) = 0;
      v37 = 0;
      if (*(v22 + 120) != 1)
      {
        goto LABEL_7;
      }
    }

    else
    {
      v33 = *(a2 + 9);
      *(a2 + 9) = 0;
      LOBYTE(v34) = 0;
      v37 = 0;
      if (*(a2 + 120) != 1)
      {
        goto LABEL_7;
      }
    }

    goto LABEL_6;
  }

  v33 = 0;
  LOBYTE(v34) = 0;
  v37 = 0;
  if (*(a2 + 120) == 1)
  {
LABEL_6:
    v6 = *(a2 + 10);
    *(a2 + 10) = 0;
    v34 = v6;
    v35 = *(a2 + 88);
    v36 = *(a2 + 104);
    *(a2 + 22) = v35 & 0xFFFFFFFE;
    v37 = 1;
  }

LABEL_7:
  v40 = *(a2 + 18);
  v7 = *(a2 + 16);
  v8 = *(a2 + 17);
  *(a2 + 16) = 0;
  *(a2 + 17) = 0;
  v39 = v8;
  *(a2 + 18) = 0;
  v41 = *(a2 + 152);
  v9 = v29;
  v38 = v7;
  *&v29 = 0;
  v10 = *(v2 + 32);
  *(v2 + 32) = v9;
  if (v10 && atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v10, a2);
  }

  v11 = *(&v29 + 1);
  *(&v29 + 1) = 0;
  v12 = *(v2 + 40);
  *(v2 + 40) = v11;
  if (v12 && atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v12, a2);
  }

  v13 = v30;
  v14 = v31;
  LODWORD(v30) = v30 & 0xFFFFFFFE;
  *(v2 + 48) = v13;
  *(v2 + 64) = v14;
  v15 = *(v2 + 104);
  *(v2 + 104) = 0;
  if (v15 == v2 + 80)
  {
    (*(*v15 + 32))(v15);
    v16 = v33;
    if (v33)
    {
      goto LABEL_17;
    }

LABEL_21:
    *(v2 + 104) = 0;
    v17 = *(v2 + 152);
    if (v17 != v37)
    {
      goto LABEL_31;
    }

    goto LABEL_22;
  }

  if (v15)
  {
    (*(*v15 + 40))(v15);
  }

  v16 = v33;
  if (!v33)
  {
    goto LABEL_21;
  }

LABEL_17:
  if (v16 == v32)
  {
    *(v2 + 104) = v2 + 80;
    (*(*v16 + 24))(v16, v2 + 80);
    v17 = *(v2 + 152);
    if (v17 != v37)
    {
      goto LABEL_31;
    }

LABEL_22:
    if (!v17)
    {
      goto LABEL_36;
    }

    v18 = v34;
    v34 = 0;
    v19 = *(v2 + 112);
    *(v2 + 112) = v18;
    if (v19 && atomic_fetch_add_explicit(v19, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v19, a2);
    }

    v20 = v35;
    *(v2 + 120) = v35;
    LODWORD(v35) = v20 & 0xFFFFFFFE;
    *(v2 + 136) = v36;
    v21 = *(v2 + 160);
    if (!v21)
    {
      goto LABEL_38;
    }

LABEL_37:
    *(v2 + 160) = 0;
    *(v2 + 168) = 0;
    WTF::fastFree(v21, a2);
    goto LABEL_38;
  }

  *(v2 + 104) = v16;
  v33 = 0;
  v17 = *(v2 + 152);
  if (v17 == v37)
  {
    goto LABEL_22;
  }

LABEL_31:
  if (v17)
  {
    v23 = *(v2 + 112);
    *(v2 + 112) = 0;
    if (v23 && atomic_fetch_add_explicit(v23, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v23, a2);
    }

    *(v2 + 152) = 0;
LABEL_36:
    v21 = *(v2 + 160);
    if (!v21)
    {
      goto LABEL_38;
    }

    goto LABEL_37;
  }

  v27 = v34;
  v34 = 0;
  *(v2 + 112) = v27;
  v28 = v35;
  *(v2 + 120) = v35;
  *(v2 + 136) = v36;
  LODWORD(v35) = v28 & 0xFFFFFFFE;
  *(v2 + 152) = 1;
  v21 = *(v2 + 160);
  if (v21)
  {
    goto LABEL_37;
  }

LABEL_38:
  *(v2 + 160) = v38;
  v24 = v39;
  v38 = 0;
  v39 = 0;
  *(v2 + 168) = v24;
  v25 = v40;
  v40 = 0;
  v26 = *(v2 + 176);
  *(v2 + 176) = v25;
  if (v26)
  {
  }

  *(v2 + 184) = v41;
  WebCore::ContentFilterUnblockHandler::~ContentFilterUnblockHandler(&v29, a2);
}

uint64_t WebFrameLoaderClient::getLoadDecisionForIcons(uint64_t result, uint64_t a2)
{
  v2 = *(result + 24);
  if (v2)
  {
    v2 = *(v2[1] + 8);
  }

  if ((*(v2[16] + 705) & 0x40) == 0)
  {
    goto LABEL_11;
  }

  v3 = v2[15];
  if (v3)
  {
    v3 = v3[1];
  }

  if (v3 == v2 && (v4 = a2, result = WebCore::ResourceRequestBase::url((*(v2[26] + 96) + 880)), a2 = v4, (*(result + 8) & 2) != 0) && (result = +[WebView _isIconLoadingEnabled], a2 = v4, (result & 1) != 0))
  {
    v5 = *(v4 + 12);
    if (v5)
    {
      v6 = 16 * v5;
      v7 = *v4 + 8;
      do
      {
        v7 += 16;
        v12 = WTF::fastMalloc(0x10);
        *v12 = &unk_1F472BCE0;
        v14 = v12;
        WebCore::DocumentLoader::didGetLoadDecisionForIcon();
        result = v14;
        if (v14)
        {
          result = (*(*v14 + 8))(v14);
        }

        v6 -= 16;
      }

      while (v6);
    }
  }

  else
  {
LABEL_11:
    v8 = *(a2 + 12);
    if (v8)
    {
      v9 = 16 * v8;
      v10 = *a2 + 8;
      do
      {
        v10 += 16;
        v11 = WTF::fastMalloc(0x10);
        *v11 = &unk_1F472BCB8;
        v13 = v11;
        WebCore::DocumentLoader::didGetLoadDecisionForIcon();
        result = v13;
        if (v13)
        {
          result = (*(*v13 + 8))(v13);
        }

        v9 -= 16;
      }

      while (v9);
    }
  }

  return result;
}

void sub_1C7A6CFB4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    (*(*a10 + 8))(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_1C7A6D204(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, WTF::StringImpl *a15)
{
  if (a15 && atomic_fetch_add_explicit(a15, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a15, a2);
  }

  if (a14)
  {
    WTF::ThreadSafeRefCounted<WebCore::SecurityOrigin,(WTF::DestructionThread)0>::deref(a14, a2);
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

void sub_1C7A6D644(_Unwind_Exception *a1)
{
  (*(*v2 + 8))(v2);
  if (v1[4] == 1)
  {
    (*(*v1 + 8))(v1);
    _Unwind_Resume(a1);
  }

  --v1[4];
  _Unwind_Resume(a1);
}

void sub_1C7A6D7A8(_Unwind_Exception *exception_object)
{
  if (v1)
  {
  }

  _Unwind_Resume(exception_object);
}

void sub_1C7A6DBCC(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10)
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

void sub_1C7A6DFBC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

void sub_1C7A6E2B8(_Unwind_Exception *a1)
{
  *v1 = 0;
  if (v2)
  {
    v3 = a1;

    a1 = v3;
  }

  _Unwind_Resume(a1);
}

void sub_1C7A6E4B4(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10)
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

void sub_1C7A6E684(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

void sub_1C7A6E800(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10)
{
  if (v10)
  {

    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_1C7A6EBCC(_Unwind_Exception *a1, WTF::StringImpl *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v11 = *(v9 - 40);
  *(v9 - 40) = 0;
  if (v11)
  {
    if (v11[6] == 1)
    {
      (*(*v11 + 24))(v11);
    }

    else
    {
      --v11[6];
    }
  }

  WebCore::SubstituteData::~SubstituteData(&a9, a2);
  WebCore::ResourceRequest::~ResourceRequest((v9 - 240), v12);
  _Unwind_Resume(a1);
}

void sub_1C7A6EF10(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, unsigned int *a10, void *a11, unsigned int *a12)
{
  if (a11)
  {
  }

  if (a10 && atomic_fetch_add(a10 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, a10 + 2);
    (*(*a10 + 8))(a10);
  }

  if (a12)
  {
    if (atomic_fetch_add(a12 + 2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, a12 + 2);
      (*(*a12 + 8))(a12);
      _Unwind_Resume(exception_object);
    }
  }

  _Unwind_Resume(exception_object);
}

void sub_1C7A6F1C4(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v10, a2);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_1C7A6F2C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

void sub_1C7A6F3D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, _DWORD *a10)
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

void sub_1C7A6F558(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, _DWORD *a9, _DWORD *a10)
{
  if (a9)
  {
    if (a9[2] == 1)
    {
      (*(*a9 + 8))(a9);
    }

    else
    {
      --a9[2];
    }
  }

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

void sub_1C7A6F74C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (v9)
  {
  }

  WTF::Vector<WTF::Ref<WebCore::ArchiveResource,WTF::RawPtrTraits<WebCore::ArchiveResource>,WTF::DefaultRefDerefTraits<WebCore::ArchiveResource>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&a9, v12);
  _Unwind_Resume(a1);
}

void sub_1C7A6F8D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9)
{
  if (a9)
  {
    if (*(a9 + 2) == 1)
    {
      (*(*a9 + 8))(a9);
    }

    else
    {
      --*(a9 + 2);
    }
  }

  v11 = *(v9 - 24);
  *(v9 - 24) = 0;
  if (v11)
  {
    if (v11[2] == 1)
    {
      (*(*v11 + 8))(v11);
      _Unwind_Resume(exception_object);
    }

    --v11[2];
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_1C7A6FA44(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, _DWORD *a10)
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

uint64_t vectorForDictationPhrasesArray@<X0>(NSArray *a1@<X0>, unsigned int *a2@<X8>)
{
  v2 = a2;
  v52 = *MEMORY[0x1E69E9840];
  *a2 = 0;
  *(a2 + 1) = 0;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  result = [(NSArray *)a1 countByEnumeratingWithState:&v46 objects:v51 count:16];
  v4 = result;
  if (result)
  {
    v37 = 0;
    v5 = 0;
    v6 = *v47;
    v34 = *v47;
    v39 = v2;
    do
    {
      v7 = 0;
      v35 = v4;
      do
      {
        if (*v47 != v6)
        {
          objc_enumerationMutation(a1);
        }

        v8 = *(*(&v46 + 1) + 8 * v7);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v44 = 0;
          v45 = 0;
          v38 = v7;
          if (v5 == v2[2])
          {
            v10 = WTF::Vector<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(v2, v5 + 1, &v44);
            v11 = v2[3];
            v37 = *v2;
            v12 = *v2 + 16 * v11;
            *v12 = 0;
            *(v12 + 8) = 0;
            v13 = *v10;
            *v10 = 0;
            *v12 = v13;
            LODWORD(v13) = *(v10 + 8);
            *(v10 + 8) = 0;
            *(v12 + 8) = v13;
            v14 = (v10 + 12);
          }

          else
          {
            v12 = v37 + 16 * v5;
            *v12 = 0;
            *(v12 + 8) = 0;
            v11 = v44;
            v44 = 0;
            *v12 = v11;
            LODWORD(v11) = v45;
            LODWORD(v45) = 0;
            *(v12 + 8) = v11;
            LODWORD(v11) = v2[3];
            v14 = &v45 + 1;
          }

          v15 = *v14;
          *v14 = 0;
          *(v12 + 12) = v15;
          v16 = v11 + 1;
          v2[3] = v11 + 1;
          v17 = v44;
          if (HIDWORD(v45))
          {
            v18 = 8 * HIDWORD(v45);
            do
            {
              v19 = *v17;
              *v17 = 0;
              if (v19 && atomic_fetch_add_explicit(v19, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v19, v9);
              }

              v17 = (v17 + 8);
              v18 -= 8;
            }

            while (v18);
            v17 = v44;
          }

          if (v17)
          {
            v44 = 0;
            LODWORD(v45) = 0;
            WTF::fastFree(v17, v9);
          }

          v40 = 0u;
          v41 = 0u;
          v42 = 0u;
          v43 = 0u;
          v20 = [v8 countByEnumeratingWithState:&v40 objects:v50 count:16];
          if (v20)
          {
            v21 = *v41;
            v37 = *v2;
            if (v16)
            {
              v22 = *v2 + 16 * v16;
              v23 = v16;
              do
              {
                for (i = 0; i != v20; ++i)
                {
                  if (*v41 != v21)
                  {
                    objc_enumerationMutation(v8);
                  }

                  v26 = *(*(&v40 + 1) + 8 * i);
                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    v27 = *(v22 - 4);
                    if (v27 == *(v22 - 8))
                    {
                      v28 = v27 + (v27 >> 1);
                      if (v28 <= v27 + 1)
                      {
                        v28 = v27 + 1;
                      }

                      if (v28 >> 29)
                      {
                        goto LABEL_55;
                      }

                      v29 = *(v22 - 16);
                      if (v28 <= 0x10)
                      {
                        v30 = 16;
                      }

                      else
                      {
                        v30 = v28;
                      }

                      v31 = WTF::fastMalloc((8 * v30));
                      *(v22 - 8) = v30;
                      *(v22 - 16) = v31;
                      memcpy(v31, v29, 8 * v27);
                      if (v29)
                      {
                        if (*(v22 - 16) == v29)
                        {
                          *(v22 - 16) = 0;
                          *(v22 - 8) = 0;
                        }

                        WTF::fastFree(v29, v32);
                      }

                      v25 = *(v22 - 16) + 8 * *(v22 - 4);
                    }

                    else
                    {
                      v25 = *(v22 - 16) + 8 * v27;
                    }

                    MEMORY[0x1CCA63A40](v25, v26);
                    ++*(v22 - 4);
                    v2 = v39;
                    v23 = v16;
                  }
                }

                v20 = [v8 countByEnumeratingWithState:&v40 objects:v50 count:16];
              }

              while (v20);
              v5 = v23;
              v6 = v34;
              v4 = v35;
            }

            else
            {
              do
              {
                for (j = 0; j != v20; ++j)
                {
                  if (*v41 != v21)
                  {
                    objc_enumerationMutation(v8);
                  }

                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
LABEL_55:
                    __break(0xC471u);
                    JUMPOUT(0x1C7A70034);
                  }
                }

                v20 = [v8 countByEnumeratingWithState:&v40 objects:v50 count:16];
              }

              while (v20);
              v5 = 0;
            }
          }

          else
          {
            v5 = v16;
          }

          v7 = v38;
        }

        ++v7;
      }

      while (v7 != v4);
      result = [(NSArray *)a1 countByEnumeratingWithState:&v46 objects:v51 count:16];
      v4 = result;
    }

    while (result);
  }

  return result;
}

void sub_1C7A70044(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25)
{
  v27 = *v25;
  if (*v25)
  {
    *v25 = 0;
    *(v25 + 8) = 0;
    WTF::fastFree(v27, a2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t WTF::Vector<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(uint64_t a1, WTF::StringImpl *a2)
{
  v3 = *(a1 + 12);
  v4 = *a1;
  if (v3)
  {
    v5 = (v4 + 16 * v3);
    do
    {
      v6 = *(v4 + 3);
      v7 = *v4;
      if (v6)
      {
        v8 = 8 * v6;
        do
        {
          v9 = *v7;
          *v7 = 0;
          if (v9 && atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v9, a2);
          }

          v7 = (v7 + 8);
          v8 -= 8;
        }

        while (v8);
        v7 = *v4;
      }

      if (v7)
      {
        *v4 = 0;
        *(v4 + 2) = 0;
        WTF::fastFree(v7, a2);
      }

      v4 = (v4 + 16);
    }

    while (v4 != v5);
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

void sub_1C7A704CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (v10)
  {
  }

  _Unwind_Resume(exception_object);
}

void sub_1C7A708BC(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, WTF::StringImpl *a14)
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

  _Unwind_Resume(a1);
}

uint64_t createUniqueWebDataURL(void)
{
  v0 = *MEMORY[0x1E695E480];
  v1 = CFUUIDCreate(*MEMORY[0x1E695E480]);
  v2 = CFUUIDCreateString(v0, v1);
  v3 = [MEMORY[0x1E695DFF8] URLWithString:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"applewebdata://%@", v2)}];
  if (v2)
  {
    CFRelease(v2);
  }

  if (v1)
  {
    CFRelease(v1);
  }

  return v3;
}

void sub_1C7A709D4(_Unwind_Exception *exception_object)
{
  if (!v1)
  {
    _Unwind_Resume(exception_object);
  }

  CFRelease(v1);
  _Unwind_Resume(exception_object);
}

void sub_1C7A70F40(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if ((a10 & 0x8000000000000) != 0)
  {
    v11 = (a10 & 0xFFFFFFFFFFFFLL);
    if (atomic_fetch_add((a10 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v11);
      WTF::fastFree(v11, a2);
      _Unwind_Resume(exception_object);
    }
  }

  _Unwind_Resume(exception_object);
}

void sub_1C7A7141C(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10, WTF::StringImpl *a11, uint64_t a12)
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
      _Unwind_Resume(exception_object);
    }
  }

  _Unwind_Resume(exception_object);
}

void sub_1C7A7161C(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, WTF::StringImpl *a13)
{
  v14 = a13;
  a13 = 0;
  if (v14)
  {
    if (atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v14, a2);
      WebCore::SimpleRange::~SimpleRange(&a9);
      _Unwind_Resume(a1);
    }
  }

  WebCore::SimpleRange::~SimpleRange(&a9);
  _Unwind_Resume(a1);
}

void sub_1C7A71888(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  WebCore::GraphicsContextCG::~GraphicsContextCG(va);
  _Unwind_Resume(a1);
}

void sub_1C7A7189C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  WebCore::GraphicsContextCG::~GraphicsContextCG(va);
  _Unwind_Resume(a1);
}

void sub_1C7A718B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  WebCore::GraphicsContextCG::~GraphicsContextCG(va);
  _Unwind_Resume(a1);
}

void sub_1C7A718C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  WebCore::GraphicsContextCG::~GraphicsContextCG(va);
  _Unwind_Resume(a1);
}

void sub_1C7A718DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  WebCore::GraphicsContextCG::~GraphicsContextCG(va);
  _Unwind_Resume(a1);
}

void sub_1C7A718F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  WebCore::GraphicsContextCG::~GraphicsContextCG(va);
  _Unwind_Resume(a1);
}

void sub_1C7A71BAC(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, WTF::StringImpl *a11, WTF::StringImpl *a12, uint64_t a13, char a14)
{
  if (a11)
  {
    if (atomic_fetch_add_explicit(a11, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a11, a2);
      MEMORY[0x1CCA63200](&a14);

      _Unwind_Resume(a1);
    }
  }

  MEMORY[0x1CCA63200](&a14);

  _Unwind_Resume(a1);
}

void sub_1C7A71D24(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, WebCore::Node *a12)
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

void sub_1C7A71EB8(_Unwind_Exception *exception_object)
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

void sub_1C7A722AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, WebCore::Node *a9, uint64_t a10, char a11)
{
  if (a9)
  {
    if (*(a9 + 7) == 2)
    {
      WebCore::Node::removedLastRef(a9);
      _Unwind_Resume(exception_object);
    }

    *(a9 + 7) -= 2;
  }

  _Unwind_Resume(exception_object);
}

void sub_1C7A72694(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WebCore::Node *a10, uint64_t a11, WebCore::Node *a12, uint64_t a13, char a14, WebCore::Node *a15)
{
  if (*(v15 + 7) == 2)
  {
    WebCore::Node::removedLastRef(v15);
  }

  else
  {
    *(v15 + 7) -= 2;
  }

  if (a14 == 1 && a12)
  {
    if (*(a12 + 7) == 2)
    {
      WebCore::Node::removedLastRef(a12);
      _Unwind_Resume(a1);
    }

    *(a12 + 7) -= 2;
  }

  _Unwind_Resume(a1);
}

void sub_1C7A72A70(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::optional<WebCore::SimpleRange>::~optional(va);
  _Unwind_Resume(a1);
}

void sub_1C7A72A84(_Unwind_Exception *exception_object)
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

void sub_1C7A72BD0(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10, WTF::StringImpl *a11, WebCore::Node *a12)
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

void sub_1C7A72E54(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, WebCore::Node *a15, WebCore::Node *a16, uint64_t a17, int a18)
{
  if (!a16)
  {
    if (!v18)
    {
      goto LABEL_3;
    }

LABEL_8:
    WTF::fastFree(v18, a2);
    _Unwind_Resume(exception_object);
  }

  if (*(a16 + 7) == 2)
  {
    WebCore::Node::removedLastRef(a16);
    if (v18)
    {
      goto LABEL_8;
    }
  }

  else
  {
    *(a16 + 7) -= 2;
    if (v18)
    {
      goto LABEL_8;
    }
  }

LABEL_3:
  _Unwind_Resume(exception_object);
}

void sub_1C7A72FD4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WebCore::Node *a10)
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

void sub_1C7A730A8(_Unwind_Exception *exception_object)
{
  if (*(v1 + 7) == 2)
  {
    WebCore::Node::removedLastRef(v1);
    _Unwind_Resume(exception_object);
  }

  *(v1 + 7) -= 2;
  _Unwind_Resume(exception_object);
}

void sub_1C7A731FC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::optional<WebCore::SimpleRange>::~optional(va);
  _Unwind_Resume(a1);
}

void sub_1C7A732B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WebCore::MutableStyleProperties *a10)
{
  if (a10)
  {
    WebCore::MutableStyleProperties::deref(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_1C7A73460(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  WTF::Ref<WebCore::MutableStyleProperties,WTF::RawPtrTraits<WebCore::MutableStyleProperties>,WTF::DefaultRefDerefTraits<WebCore::MutableStyleProperties>>::~Ref(va);
  (*(*v2 + 8))(v2);
  _Unwind_Resume(a1);
}

void sub_1C7A735B4(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10)
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

void sub_1C7A736A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, unsigned int *a9)
{
  if (a9)
  {
    if (atomic_fetch_add(a9 + 2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, a9 + 2);
      (*(*a9 + 8))(a9);
      _Unwind_Resume(exception_object);
    }
  }

  _Unwind_Resume(exception_object);
}

unsigned int *WebCore::SharedBuffer::create<NSData *&>@<X0>(WebCore::FragmentedSharedBuffer **a1@<X0>, NSData *a2@<X1>, uint64_t *a3@<X8>)
{
  WebCore::FragmentedSharedBuffer::create(&v6, *a1, a2);
  v4 = WTF::fastMalloc(0x40);
  MEMORY[0x1CCA64660](v4, &v6);
  *a3 = v4;
  result = v6;
  v6 = 0;
  if (result)
  {
    if (atomic_fetch_add(result + 2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, result + 2);
      return (*(*result + 8))(result);
    }
  }

  return result;
}

void sub_1C7A737A4(_Unwind_Exception *a1, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, unsigned int *a10)
{
  WTF::fastFree(v10, a2);
  if (a10)
  {
    if (atomic_fetch_add(a10 + 2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, a10 + 2);
      (*(*a10 + 8))(a10);
      _Unwind_Resume(a1);
    }
  }

  _Unwind_Resume(a1);
}

void sub_1C7A73970(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, CFTypeRef cf, uint64_t a10)
{
  if (cf)
  {
    CFRelease(cf);
  }

  if ((a10 & 0x8000000000000) != 0)
  {
    v11 = (a10 & 0xFFFFFFFFFFFFLL);
    if (atomic_fetch_add((a10 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v11);
      WTF::fastFree(v11, a2);
      _Unwind_Resume(exception_object);
    }
  }

  _Unwind_Resume(exception_object);
}

void sub_1C7A73C40(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22)
{
  v24 = *(v22 - 56);
  *(v22 - 56) = 0;
  if (v24)
  {
    if (*(v24 + 7) == 2)
    {
      WebCore::Node::removedLastRef(v24);
      _Unwind_Resume(exception_object);
    }

    *(v24 + 7) -= 2;
  }

  _Unwind_Resume(exception_object);
}

void sub_1C7A73DC4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WebCore::Node *a10, uint64_t a11, uint64_t a12, char a13)
{
  std::optional<WebCore::SimpleRange>::~optional((v13 - 56));
  WebCore::VisibleSelection::~VisibleSelection(&a13);
  if (a10)
  {
    if (*(a10 + 7) == 2)
    {
      WebCore::Node::removedLastRef(a10);
      _Unwind_Resume(a1);
    }

    *(a10 + 7) -= 2;
  }

  _Unwind_Resume(a1);
}

void sub_1C7A73F18(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::optional<WebCore::SimpleRange>::~optional(va);
  _Unwind_Resume(a1);
}

void sub_1C7A7401C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  WebCore::VisibleSelection::~VisibleSelection(&a9);
  std::optional<WebCore::SimpleRange>::~optional((v9 - 56));
  _Unwind_Resume(a1);
}

void sub_1C7A7439C(_Unwind_Exception *a1)
{
  v3 = v1;
  if (v3)
  {
    v5 = v3;
    v6 = *(v3 + 7) - 2;
    if (!v6)
    {
      WebCore::Node::removedLastRef(v5);
      std::optional<WebCore::SimpleRange>::~optional((v2 - 56));
      _Unwind_Resume(a1);
    }

    *(v5 + 7) = v6;
    std::optional<WebCore::SimpleRange>::~optional((v2 - 56));
    _Unwind_Resume(a1);
  }

  std::optional<WebCore::SimpleRange>::~optional((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_1C7A74B3C(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if ((a10 & 0x8000000000000) != 0)
  {
    v11 = (a10 & 0xFFFFFFFFFFFFLL);
    if (atomic_fetch_add((a10 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v11);
      WTF::fastFree(v11, a2);
      _Unwind_Resume(exception_object);
    }
  }

  _Unwind_Resume(exception_object);
}

void sub_1C7A74D04(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, CFTypeRef cf, uint64_t a10)
{
  if (cf)
  {
    CFRelease(cf);
  }

  if ((a10 & 0x8000000000000) != 0)
  {
    v11 = (a10 & 0xFFFFFFFFFFFFLL);
    if (atomic_fetch_add((a10 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v11);
      WTF::fastFree(v11, a2);
      _Unwind_Resume(exception_object);
    }
  }

  _Unwind_Resume(exception_object);
}

void sub_1C7A74F54(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::optional<WebCore::SimpleRange>::~optional(va);
  _Unwind_Resume(a1);
}

void sub_1C7A75104(_Unwind_Exception *exception_object)
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

void sub_1C7A75134(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::optional<WebCore::SimpleRange>::~optional(va);
  _Unwind_Resume(a1);
}

void sub_1C7A7523C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::optional<WebCore::SimpleRange>::~optional(va);
  _Unwind_Resume(a1);
}

void sub_1C7A753A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, WebCore::Node *a9, uint64_t a10, uint64_t a11, WebCore::Node *a12)
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

  if (a9)
  {
    if (*(a9 + 7) == 2)
    {
      WebCore::Node::removedLastRef(a9);
      _Unwind_Resume(exception_object);
    }

    *(a9 + 7) -= 2;
  }

  _Unwind_Resume(exception_object);
}

void sub_1C7A754DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WebCore::Node *a10)
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

void sub_1C7A755D8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::optional<WebCore::SimpleRange>::~optional(va);
  _Unwind_Resume(a1);
}

void sub_1C7A757B0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  WebCore::VisibleSelection::~VisibleSelection(va);
  _Unwind_Resume(a1);
}

void sub_1C7A75960(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, WebCore::Node *a14)
{
  v15 = a14;
  a14 = 0;
  if (v15)
  {
    if (*(v15 + 7) == 2)
    {
      WebCore::Node::removedLastRef(v15);
      std::optional<WebCore::SimpleRange>::~optional(&a9);
      _Unwind_Resume(a1);
    }

    *(v15 + 7) -= 2;
  }

  std::optional<WebCore::SimpleRange>::~optional(&a9);
  _Unwind_Resume(a1);
}

void sub_1C7A75AC0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WebCore::Node *a10)
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

void sub_1C7A75CC0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::optional<WebCore::SimpleRange>::~optional(va);
  _Unwind_Resume(a1);
}

void sub_1C7A75DA0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::optional<WebCore::SimpleRange>::~optional(va);
  _Unwind_Resume(a1);
}

void sub_1C7A75F30(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WebCore::Node *a10, uint64_t a11, WebCore::Node *a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18)
{
  WebCore::VisibleSelection::~VisibleSelection(&a18);
  WebCore::SimpleRange::~SimpleRange(&a14);
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

  if (a12)
  {
    if (*(a12 + 7) == 2)
    {
      WebCore::Node::removedLastRef(a12);
      _Unwind_Resume(a1);
    }

    *(a12 + 7) -= 2;
  }

  _Unwind_Resume(a1);
}

void sub_1C7A760C8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::optional<WebCore::SimpleRange>::~optional(va);
  _Unwind_Resume(a1);
}

void sub_1C7A760DC(_Unwind_Exception *exception_object)
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

void sub_1C7A763FC(_Unwind_Exception *a1, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, WTF::StringImpl *a12, char a13)
{
  WTF::HashMap<WTF::String,WTF::Vector<WebCore::CharacterRange,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Vector<WebCore::CharacterRange,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::~HashMap(&a9, a2);
  WTF::Vector<WebCore::CompositionHighlight,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&a10, v14);
  v16 = a12;
  a12 = 0;
  if (v16)
  {
    if (atomic_fetch_add_explicit(v16, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v16, v15);
      WTF::Vector<WebCore::CompositionUnderline,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&a13, v17);
      _Unwind_Resume(a1);
    }
  }

  WTF::Vector<WebCore::CompositionUnderline,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&a13, v15);
  _Unwind_Resume(a1);
}

void *WTF::HashMap<WTF::String,WTF::Vector<WebCore::CharacterRange,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Vector<WebCore::CharacterRange,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::~HashMap(void *result, void *a2)
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
          if (v7)
          {
            *(v5 + 8) = 0;
            *(v5 + 16) = 0;
            WTF::fastFree(v7, a2);
            v6 = *v5;
          }

          *v5 = 0;
          if (v6)
          {
            if (atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v6, a2);
            }
          }
        }

        v5 += 24;
        --v4;
      }

      while (v4);
    }

    WTF::fastFree((v2 - 16), a2);
    return v3;
  }

  return result;
}

uint64_t WTF::Vector<WebCore::CompositionHighlight,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(uint64_t result, void *a2)
{
  v2 = *(result + 12);
  v3 = *result;
  if (!v2)
  {
    goto LABEL_14;
  }

  v4 = 40 * v2;
  v5 = v3 + 32;
  do
  {
    if (*v5 == 1 && (v6 = *(v5 - 1), (v6 & 0x8000000000000) != 0) && (v7 = (v6 & 0xFFFFFFFFFFFFLL), atomic_fetch_add(v7, 0xFFFFFFFF) == 1))
    {
      atomic_store(1u, v7);
      v11 = result;
      WTF::fastFree(v7, a2);
      result = v11;
      if (*(v5 - 16) != 1)
      {
        goto LABEL_3;
      }
    }

    else if (*(v5 - 16) != 1)
    {
      goto LABEL_3;
    }

    v8 = *(v5 - 3);
    if ((v8 & 0x8000000000000) != 0)
    {
      v9 = (v8 & 0xFFFFFFFFFFFFLL);
      if (atomic_fetch_add(v9, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v9);
        v10 = result;
        WTF::fastFree(v9, a2);
        result = v10;
      }
    }

LABEL_3:
    v5 += 40;
    v4 -= 40;
  }

  while (v4);
  v3 = *result;
LABEL_14:
  if (v3)
  {
    *result = 0;
    *(result + 8) = 0;
    v12 = result;
    WTF::fastFree(v3, a2);
    return v12;
  }

  return result;
}

uint64_t WTF::Vector<WebCore::CompositionUnderline,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(uint64_t result, void *a2)
{
  v2 = *(result + 12);
  v3 = *result;
  if (v2)
  {
    v4 = 32 * v2;
    v5 = (v3 + 16);
    do
    {
      v7 = *v5;
      v5 += 4;
      v6 = v7;
      if ((v7 & 0x8000000000000) != 0)
      {
        v8 = (v6 & 0xFFFFFFFFFFFFLL);
        if (atomic_fetch_add(v8, 0xFFFFFFFF) == 1)
        {
          atomic_store(1u, v8);
          v9 = result;
          WTF::fastFree(v8, a2);
          result = v9;
        }
      }

      v4 -= 32;
    }

    while (v4);
    v3 = *result;
  }

  if (v3)
  {
    *result = 0;
    *(result + 8) = 0;
    v10 = result;
    WTF::fastFree(v3, a2);
    return v10;
  }

  return result;
}

void sub_1C7A76958(_Unwind_Exception *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  WTF::Vector<WebCore::CompositionUnderline,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(va, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A7696C(_Unwind_Exception *a1, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, WTF::StringImpl *a12, char a13)
{
  if (v13)
  {
    if (*(v13 + 7) == 2)
    {
      WebCore::Node::removedLastRef(v13);
      WTF::Vector<WebCore::CompositionUnderline,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&a13, v15);
      _Unwind_Resume(a1);
    }

    *(v13 + 7) -= 2;
    WTF::Vector<WebCore::CompositionUnderline,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&a13, a2);
    _Unwind_Resume(a1);
  }

  WTF::Vector<WebCore::CompositionUnderline,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&a13, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A76BD0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10)
{
  if (v10)
  {
    if (*(v10 + 7) == 2)
    {
      WebCore::Node::removedLastRef(v10);
      _Unwind_Resume(exception_object);
    }

    *(v10 + 7) -= 2;
  }

  _Unwind_Resume(exception_object);
}

void sub_1C7A76CFC(_Unwind_Exception *exception_object)
{
  if (*(v1 + 7) == 2)
  {
    WebCore::Node::removedLastRef(v1);
    _Unwind_Resume(exception_object);
  }

  *(v1 + 7) -= 2;
  _Unwind_Resume(exception_object);
}

void sub_1C7A76D28(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10)
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

void sub_1C7A76EA8(_Unwind_Exception *exception_object)
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

void sub_1C7A77298(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21)
{
  if (v21)
  {
  }

  _Unwind_Resume(exception_object);
}

uint64_t WTF::Vector<WTF::WeakPtr<WebCore::RenderedDocumentMarker,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(uint64_t result, void *a2)
{
  v2 = *(result + 12);
  v3 = *result;
  if (v2)
  {
    v4 = 8 * v2;
    do
    {
      while (1)
      {
        v5 = *v3;
        *v3 = 0;
        if (v5)
        {
          if (atomic_fetch_add(v5, 0xFFFFFFFF) == 1)
          {
            break;
          }
        }

        v3 = (v3 + 8);
        v4 -= 8;
        if (!v4)
        {
          goto LABEL_8;
        }
      }

      atomic_store(1u, v5);
      v6 = result;
      WTF::fastFree(v5, a2);
      result = v6;
      v3 = (v3 + 8);
      v4 -= 8;
    }

    while (v4);
LABEL_8:
    v3 = *result;
  }

  if (v3)
  {
    *result = 0;
    *(result + 8) = 0;
    v7 = result;
    WTF::fastFree(v3, a2);
    return v7;
  }

  return result;
}

void sub_1C7A776B8(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10, WTF::StringImpl *a11)
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

void sub_1C7A77868(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WebCore::Node *a10, WebCore::Node *a11)
{
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

void sub_1C7A779CC(_Unwind_Exception *exception_object)
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

void sub_1C7A77BB8(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10, WebCore::Node *a11, WebCore::Node *a12)
{
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

  if (a10)
  {
    if (atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a10, a2);
      std::optional<WebCore::SimpleRange>::~optional(&a12);
      _Unwind_Resume(a1);
    }
  }

  std::optional<WebCore::SimpleRange>::~optional(&a12);
  _Unwind_Resume(a1);
}

void sub_1C7A785B8(_Unwind_Exception *exception_object)
{
  if (*(v1 + 7) == 2)
  {
    WebCore::Node::removedLastRef(v1);
    _Unwind_Resume(exception_object);
  }

  *(v1 + 7) -= 2;
  _Unwind_Resume(exception_object);
}

void sub_1C7A78674(_Unwind_Exception *exception_object)
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

void sub_1C7A78834(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10, WebCore::Node *a11, WebCore::Node *a12)
{
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

  if (a10)
  {
    if (atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a10, a2);
      std::optional<WebCore::SimpleRange>::~optional(&a12);
      _Unwind_Resume(a1);
    }
  }

  std::optional<WebCore::SimpleRange>::~optional(&a12);
  _Unwind_Resume(a1);
}

void sub_1C7A78B04(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10)
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

void sub_1C7A78E58(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, WTF::StringImpl *a11, uint64_t a12, WTF::StringImpl *a13)
{
  if (a11 && atomic_fetch_add_explicit(a11, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a11, a2);
  }

  MEMORY[0x1CCA63200](&a13);
  if ((v14 & 1) == 0)
  {
  }

  _Unwind_Resume(a1);
}

void sub_1C7A79074(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10)
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

void sub_1C7A79184(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, uint64_t a10)
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

void sub_1C7A79698(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10, WebCore::Node *a11, WebCore::Node *a12)
{
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

  if (a10)
  {
    if (atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a10, a2);
      std::optional<WebCore::SimpleRange>::~optional(&a12);
      _Unwind_Resume(a1);
    }
  }

  std::optional<WebCore::SimpleRange>::~optional(&a12);
  _Unwind_Resume(a1);
}

void sub_1C7A79870(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10, WTF::StringImpl *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16)
{
  if (a16)
  {
  }

  if (a11 && atomic_fetch_add_explicit(a11, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a11, a2);
  }

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

void sub_1C7A79B1C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WebCore::Node *a10, WebCore::Node *a11, uint64_t a12, WebCore::Node *a13)
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

BOOL WebCore::operator==(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  if (*a1)
  {
    *(v2 + 7) += 2;
  }

  v14 = v2;
  v15 = *(a1 + 8);
  v16 = *(a1 + 12);
  v3 = *a2;
  if (*a2)
  {
    *(v3 + 7) += 2;
  }

  v11 = v3;
  v12 = *(a2 + 8);
  v13 = *(a2 + 12);
  if (v2 == v3)
  {
    if ((v16 & 8) == 0 && ((v5 = v16 & 7, v5 == 2) || v5 == 4))
    {
      v6 = WebCore::Position::offsetForPositionAfterAnchor(&v14);
      v7 = v13;
      if ((v13 & 8) != 0)
      {
        goto LABEL_18;
      }
    }

    else
    {
      v6 = v15;
      v7 = v13;
      if ((v13 & 8) != 0)
      {
        goto LABEL_18;
      }
    }

    v8 = v7 & 7;
    if (v8 == 2 || v8 == 4)
    {
      if (v6 != WebCore::Position::offsetForPositionAfterAnchor(&v11))
      {
LABEL_19:
        v4 = 0;
LABEL_20:
        v3 = v11;
        v11 = 0;
        if (!v3)
        {
          goto LABEL_23;
        }

        goto LABEL_21;
      }

LABEL_17:
      v4 = ((v13 ^ v16) & 7) == 0;
      goto LABEL_20;
    }

LABEL_18:
    if (v6 != v12)
    {
      goto LABEL_19;
    }

    goto LABEL_17;
  }

  v4 = 0;
  v11 = 0;
  if (!v3)
  {
LABEL_23:
    v9 = v14;
    v14 = 0;
    if (!v9)
    {
      return v4;
    }

    goto LABEL_26;
  }

LABEL_21:
  if (*(v3 + 7) != 2)
  {
    *(v3 + 7) -= 2;
    goto LABEL_23;
  }

  WebCore::Node::removedLastRef(v3);
  v9 = v14;
  v14 = 0;
  if (!v9)
  {
    return v4;
  }

LABEL_26:
  if (*(v9 + 7) != 2)
  {
    *(v9 + 7) -= 2;
    return v4;
  }

  WebCore::Node::removedLastRef(v9);
  return v4;
}

void sub_1C7A79D84(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, WebCore::Node *a9, uint64_t a10, WebCore::Node *a11)
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
      _Unwind_Resume(exception_object);
    }

    *(a11 + 7) -= 2;
  }

  _Unwind_Resume(exception_object);
}

void sub_1C7A79E84(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9)
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

void sub_1C7A7A244(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, WTF::StringImpl *a10)
{
  if (*(v10 + 7) == 2)
  {
    WebCore::Node::removedLastRef(v10);
    _Unwind_Resume(exception_object);
  }

  *(v10 + 7) -= 2;
  _Unwind_Resume(exception_object);
}

void sub_1C7A7A428(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, uint64_t a10)
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

void sub_1C7A7A8AC(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, WTF::StringImpl *a50)
{
  if (a50)
  {
    if (atomic_fetch_add_explicit(a50, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a50, a2);
      WebCore::ResourceRequest::~ResourceRequest((v50 - 232), v52);
      _Unwind_Resume(a1);
    }
  }

  WebCore::ResourceRequest::~ResourceRequest((v50 - 232), a2);
  _Unwind_Resume(a1);
}

void sub_1C7A7B5C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, _DWORD *a10)
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

void sub_1C7A7B750(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10)
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

WebCore::SubstituteData *WebCore::SubstituteData::SubstituteData(WebCore::SubstituteData *this)
{
  *(this + 1) = 0;
  *this = 0;
  WTF::URL::invalidate((this + 8));
  WebCore::ResourceResponseBase::ResourceResponseBase((this + 48));
  *(this + 37) = 0;
  *(this + 304) = 0;
  *(this + 186) = *(this + 186) & 0xF1 | 4;
  *(this + 312) = 1;
  return this;
}

void sub_1C7A7BB08(_Unwind_Exception *exception_object, WTF::StringImpl *a2)
{
  v4 = v3;
  v6 = *v4;
  *v4 = 0;
  if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v6, a2);
  }

  v7 = *v2;
  *v2 = 0;
  if (v7)
  {
    if (atomic_fetch_add(v7 + 2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v7 + 2);
      (*(*v7 + 8))(v7);
      _Unwind_Resume(exception_object);
    }
  }

  _Unwind_Resume(exception_object);
}

void WebCachedFramePlatformData::~WebCachedFramePlatformData(WebCachedFramePlatformData *this)
{
  v1 = *(this + 1);
  *this = &unk_1F472B9F0;
  *(this + 1) = 0;
  if (v1)
  {
  }
}

void WebCachedFramePlatformData::~WebCachedFramePlatformData(WebCachedFramePlatformData *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F472B9F0;
  *(this + 1) = 0;
  if (v3)
  {
    v4 = this;

    this = v4;
    v2 = vars8;
  }

  bmalloc::api::tzoneFree(this, a2);
}

void PluginWidget::~PluginWidget(PluginWidget *this)
{
  WebCore::Widget::~Widget(this);

  WTF::fastFree(v1, v2);
}

uint64_t PluginWidget::invalidateRect(WebCore::Widget *a1)
{
  v1 = WebCore::Widget::platformWidget(a1);
  WebCore::IntRect::operator CGRect();

  return [v1 setNeedsDisplayInRect:?];
}

uint64_t mpark::detail::destructor<mpark::detail::traits<WTF::Seconds,WebCore::ResourceError>,(mpark::detail::Trait)1>::~destructor(uint64_t result, WTF::StringImpl *a2)
{
  if (*(result + 80) && *(result + 80) != 255)
  {
    v2 = *(result + 64);
    *(result + 64) = 0;
    v3 = result;
    if (v2)
    {

      result = v3;
    }

    v4 = *(result + 48);
    *(result + 48) = 0;
    if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v4, a2);
      result = v3;
    }

    v5 = *(result + 8);
    *(result + 8) = 0;
    if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v5, a2);
      result = v3;
    }

    v6 = *result;
    *result = 0;
    if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v6, a2);
      result = v3;
    }
  }

  *(result + 80) = -1;
  return result;
}

void WebCore::NetworkingContext::sourceApplicationIdentifier(atomic_uint **a1@<X8>)
{
  v2 = *MEMORY[0x1E696EBA8];
  if (*MEMORY[0x1E696EBA8])
  {
    atomic_fetch_add_explicit(v2, 2u, memory_order_relaxed);
  }

  *a1 = v2;
}

uint64_t WebFrameLoaderClient::createPreviewLoaderClient(WTF::String const&,WTF::String const&)::QuickLookDocumentWriter::~QuickLookDocumentWriter(uint64_t a1)
{
  *a1 = &unk_1F472BC48;
  [objc_msgSend(MEMORY[0x1E696AC08] "defaultManager")];
  v2 = *(a1 + 24);
  *(a1 + 24) = 0;
  if (v2)
  {
  }

  v3 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v3)
  {
  }

  if (*(a1 + 8) == 1)
  {
    return a1;
  }

  result = 191;
  __break(0xC471u);
  return result;
}

{
  v1 = WebFrameLoaderClient::createPreviewLoaderClient(WTF::String const&,WTF::String const&)::QuickLookDocumentWriter::~QuickLookDocumentWriter(a1);

  return WTF::fastFree(v1, v2);
}

void sub_1C7A7BFD4(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 24);
  *(v1 + 24) = 0;
  if (v3)
  {

    v4 = *(v1 + 16);
    *(v1 + 16) = 0;
    if (!v4)
    {
LABEL_3:
      if (*(v1 + 8) == 1)
      {
        goto LABEL_4;
      }

      goto LABEL_7;
    }
  }

  else
  {
    v4 = *(v1 + 16);
    *(v1 + 16) = 0;
    if (!v4)
    {
      goto LABEL_3;
    }
  }

  if (*(v1 + 8) == 1)
  {
LABEL_4:
    _Unwind_Resume(exception_object);
  }

LABEL_7:
  __break(0xC471u);
}

void WebFrameLoaderClient::createPreviewLoaderClient(WTF::String const&,WTF::String const&)::QuickLookDocumentWriter::didReceiveData(uint64_t a1, WebCore::FragmentedSharedBuffer *this)
{
  v14 = *MEMORY[0x1E69E9840];
  WebCore::FragmentedSharedBuffer::createNSDataArray(&v12, this);
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v3 = v12;
  v4 = [v12 countByEnumeratingWithState:&v8 objects:v13 count:16];
  if (v4)
  {
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v3);
        }

        [*(a1 + 24) writeData:*(*(&v8 + 1) + 8 * v6++)];
      }

      while (v4 != v6);
      v4 = [v3 countByEnumeratingWithState:&v8 objects:v13 count:16];
    }

    while (v4);
  }

  v7 = v12;
  v12 = 0;
  if (v7)
  {
  }
}

void sub_1C7A7C174(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17)
{
  if (!a17)
  {
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

void WebCore::ContentFilterUnblockHandler::~ContentFilterUnblockHandler(WebCore::ContentFilterUnblockHandler *this, void *a2)
{
  v3 = *(this + 18);
  *(this + 18) = 0;
  if (v3)
  {
  }

  v4 = *(this + 16);
  if (v4)
  {
    *(this + 16) = 0;
    *(this + 34) = 0;
    WTF::fastFree(v4, a2);
  }

  if (*(this + 120) == 1)
  {
    v5 = *(this + 10);
    *(this + 10) = 0;
    if (v5)
    {
      if (atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v5, a2);
      }
    }
  }

  v6 = *(this + 9);
  if (v6 == (this + 48))
  {
    (*(*v6 + 32))(v6);
  }

  else if (v6)
  {
    (*(*v6 + 40))(v6);
  }

  v7 = *(this + 1);
  *(this + 1) = 0;
  if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v7, a2);
  }

  v8 = *this;
  *this = 0;
  if (v8)
  {
    if (atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v8, a2);
    }
  }
}

uint64_t WebCore::ResourceRequestBase::RequestData::RequestData(uint64_t a1, uint64_t *a2, char a3)
{
  v5 = *a2;
  *a2 = 0;
  *a1 = v5;
  v6 = *(a1 + 8) & 0xFFFFFFFE | a2[1] & 1;
  *(a1 + 8) = v6;
  v7 = v6 & 0xFFFFFFFD | (2 * ((*(a2 + 2) >> 1) & 1));
  *(a1 + 8) = v7;
  v8 = v7 & 0xFFFFFFFB | (4 * ((*(a2 + 2) >> 2) & 1));
  *(a1 + 8) = v8;
  v9 = v8 & 0xFFFFFFC7 | (8 * ((*(a2 + 2) >> 3) & 7));
  *(a1 + 8) = v9;
  *(a1 + 8) = a2[1] & 0xFFFFFFC0 | v9 & 0x3F;
  *(a1 + 12) = *(a2 + 12);
  *(a1 + 28) = *(a2 + 28);
  *(a1 + 36) = *(a2 + 9);
  *(a2 + 2) &= ~1u;
  *(a1 + 40) = 0;
  WTF::URL::invalidate((a1 + 40));
  *(a1 + 80) = *MEMORY[0x1E69E2628];
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  *(a1 + 88) = v11;
  WebCore::HTTPHeaderMap::HTTPHeaderMap((a1 + 96));
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  *(a1 + 144) = a3;
  *(a1 + 145) = 67109120;
  return a1;
}

void sub_1C7A7C408(_Unwind_Exception *exception_object, WTF::StringImpl *a2)
{
  v5 = v2[11];
  v2[11] = 0;
  if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v5, a2);
  }

  v6 = *v3;
  *v3 = 0;
  if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v6, a2);
  }

  v7 = *v2;
  *v2 = 0;
  if (v7)
  {
    if (atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v7, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

void WebCore::ResourceResponse::~ResourceResponse(WebCore::ResourceResponse *this, WTF::StringImpl *a2)
{
  v3 = *(this + 31);
  *(this + 31) = 0;
  if (v3)
  {
    v4 = this;

    this = v4;
    v2 = vars8;
  }

  WebCore::ResourceResponseBase::~ResourceResponseBase(this, a2);
}

uint64_t WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(uint64_t a1, WTF::StringImpl *a2)
{
  v3 = *(a1 + 12);
  v4 = *a1;
  if (v3)
  {
    v5 = 8 * v3;
    do
    {
      v6 = *v4;
      *v4 = 0;
      if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v6, a2);
      }

      v4 = (v4 + 8);
      v5 -= 8;
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

uint64_t WTF::Ref<WebCore::FrameTreeSyncData,WTF::RawPtrTraits<WebCore::FrameTreeSyncData>,WTF::DefaultRefDerefTraits<WebCore::FrameTreeSyncData>>::~Ref(uint64_t result, void *a2)
{
  v2 = *result;
  *result = 0;
  if (v2)
  {
    if (*v2 == 1)
    {
      v3 = result;
      v4 = *(v2 + 1);
      *(v2 + 1) = 0;
      if (v4 && (WTF::ThreadSafeRefCounted<WebCore::SecurityOrigin,(WTF::DestructionThread)0>::deref(v4, a2), *v2 != 1))
      {
        result = 191;
        __break(0xC471u);
      }

      else
      {
        bmalloc::api::tzoneFree(v2, a2);
        return v3;
      }
    }

    else
    {
      --*v2;
    }
  }

  return result;
}

void *WTF::Detail::CallableWrapper<WebFrameLoaderClient::dispatchWillSubmitForm(WebCore::FormState &,WTF::CompletionHandler<void ()(void)> &&)::$_0,void,WebCore::PolicyAction>::~CallableWrapper(void *result)
{
  v1 = result[1];
  *result = &unk_1F472BC90;
  result[1] = 0;
  if (v1)
  {
    v2 = result;
    (*(*v1 + 8))(v1);
    return v2;
  }

  return result;
}

uint64_t WTF::Detail::CallableWrapper<WebFrameLoaderClient::dispatchWillSubmitForm(WebCore::FormState &,WTF::CompletionHandler<void ()(void)> &&)::$_0,void,WebCore::PolicyAction>::~CallableWrapper(WTF *a1, void *a2)
{
  v3 = *(a1 + 1);
  *a1 = &unk_1F472BC90;
  *(a1 + 1) = 0;
  if (v3)
  {
    v4 = a1;
    (*(*v3 + 8))(v3);
    a1 = v4;
    v2 = vars8;
  }

  return WTF::fastFree(a1, a2);
}

uint64_t WTF::Detail::CallableWrapper<WebFrameLoaderClient::dispatchWillSubmitForm(WebCore::FormState &,WTF::CompletionHandler<void ()(void)> &&)::$_0,void,WebCore::PolicyAction>::call(uint64_t a1)
{
  v1 = *(a1 + 8);
  *(a1 + 8) = 0;
  (*(*v1 + 16))(v1);
  v2 = *(*v1 + 8);

  return v2(v1);
}

uint64_t WTF::Vector<WTF::Ref<WebCore::ArchiveResource,WTF::RawPtrTraits<WebCore::ArchiveResource>,WTF::DefaultRefDerefTraits<WebCore::ArchiveResource>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(uint64_t a1, void *a2)
{
  v3 = *(a1 + 12);
  v4 = *a1;
  if (v3)
  {
    v5 = 8 * v3;
    do
    {
      v6 = *v4;
      *v4 = 0;
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

      v4 = (v4 + 8);
      v5 -= 8;
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

unint64_t WTF::Vector<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(unsigned int *a1, unint64_t a2, unint64_t a3)
{
  v4 = *a1;
  if (*a1 > a3 || v4 + 16 * a1[3] <= a3)
  {
    WTF::Vector<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(a1, a2);
    return a3;
  }

  else
  {
    v5 = a3 - v4;
    WTF::Vector<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(a1, a2);
    return *a1 + v5;
  }
}

unsigned int *WTF::Vector<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(unsigned int *result, unint64_t a2)
{
  v2 = result[2];
  if (v2 + (v2 >> 1) <= v2 + 1)
  {
    v3 = v2 + 1;
  }

  else
  {
    v3 = v2 + (v2 >> 1);
  }

  if (v3 <= a2)
  {
    v3 = a2;
  }

  if (v3 >> 28)
  {
    __break(0xC471u);
  }

  else
  {
    v4 = result;
    v5 = *result;
    if (v3 <= 0x10)
    {
      v6 = 16;
    }

    else
    {
      v6 = v3;
    }

    v7 = result[3];
    result = WTF::fastMalloc((16 * v6));
    v4[2] = v6;
    *v4 = result;
    if (v7)
    {
      v9 = result;
      v10 = (v5 + 16 * v7);
      v11 = v5;
      do
      {
        *v9 = 0;
        *(v9 + 1) = 0;
        v12 = *v11;
        *v11 = 0;
        *v9 = v12;
        LODWORD(v12) = *(v11 + 2);
        *(v11 + 2) = 0;
        v9[2] = v12;
        LODWORD(v12) = *(v11 + 3);
        *(v11 + 3) = 0;
        v9[3] = v12;
        v13 = *(v11 + 3);
        v14 = *v11;
        if (v13)
        {
          v15 = 8 * v13;
          do
          {
            result = *v14;
            *v14 = 0;
            if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              result = WTF::StringImpl::destroy(result, v8);
            }

            v14 = (v14 + 8);
            v15 -= 8;
          }

          while (v15);
          v14 = *v11;
        }

        if (v14)
        {
          *v11 = 0;
          *(v11 + 2) = 0;
          result = WTF::fastFree(v14, v8);
        }

        v9 += 4;
        v11 = (v11 + 16);
      }

      while (v11 != v10);
    }

    if (v5)
    {
      if (*v4 == v5)
      {
        *v4 = 0;
        v4[2] = 0;
      }

      return WTF::fastFree(v5, v8);
    }
  }

  return result;
}

void sub_1C7A7CB4C(_Unwind_Exception *a1, void *a2)
{
  WTF::CanMakeWeakPtrBase<WTF::WeakPtrFactory<WebFrameLoaderClient,WTF::DefaultWeakPtrImpl>,(WTF::WeakPtrFactoryInitialization)0>::~CanMakeWeakPtrBase(v3, a2);
  WebCore::LocalFrameLoaderClient::~LocalFrameLoaderClient(v2);
  WTF::fastFree(v5, v6);
  _Unwind_Resume(a1);
}

WebCore::MutableStyleProperties *WebCore::MutableStyleProperties::deref(WebCore::MutableStyleProperties *this)
{
  if (*this == 1)
  {
    WebCore::MutableStyleProperties::~MutableStyleProperties(this);

    return WTF::fastFree(v2, v3);
  }

  else
  {
    --*this;
  }

  return this;
}

WebCore::MutableStyleProperties **WTF::Ref<WebCore::MutableStyleProperties,WTF::RawPtrTraits<WebCore::MutableStyleProperties>,WTF::DefaultRefDerefTraits<WebCore::MutableStyleProperties>>::~Ref(WebCore::MutableStyleProperties **result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    if (*v1 == 1)
    {
      v2 = result;
      WebCore::MutableStyleProperties::~MutableStyleProperties(v1);
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

void sub_1C7A7CE08(_Unwind_Exception *exception_object)
{
  if (v1)
  {
  }

  _Unwind_Resume(exception_object);
}

void sub_1C7A7D1AC(_Unwind_Exception *a1)
{
  *v1 = 0;
  if (v2)
  {
    v3 = a1;

    a1 = v3;
  }

  _Unwind_Resume(a1);
}

void sub_1C7A7D3BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, _DWORD *a10)
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

void sub_1C7A7DA50(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, CFTypeRef cf)
{
  if (cf)
  {
    CFRelease(cf);
  }

  if ((a9 & 0x8000000000000) != 0)
  {
    v11 = (a9 & 0xFFFFFFFFFFFFLL);
    if (atomic_fetch_add((a9 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v11);
      WTF::fastFree(v11, a2);
      _Unwind_Resume(exception_object);
    }
  }

  _Unwind_Resume(exception_object);
}

void sub_1C7A7F36C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::optional<WebCore::SimpleRange>::~optional(va);
  _Unwind_Resume(a1);
}

void sub_1C7A7F848(_Unwind_Exception *exception_object)
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

void sub_1C7A7F924(_Unwind_Exception *exception_object)
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

void sub_1C7A7FBA0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WebCore::Node *a10)
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

void sub_1C7A7FCCC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WebCore::Node *a10)
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

void sub_1C7A7FDC8(_Unwind_Exception *exception_object)
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

void sub_1C7A7FEA4(_Unwind_Exception *exception_object)
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

void sub_1C7A7FFB0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WebCore::Node *a10)
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

void sub_1C7A800DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WebCore::Node *a10)
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

void sub_1C7A80208(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WebCore::Node *a10)
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

__ZN7WebCore6Editor26decreaseSelectionListLevelEv:
      MEMORY[0x1EEE5ACE8](v5);
    }
  }
}

void sub_1C7A80300(_Unwind_Exception *exception_object)
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

void sub_1C7A80C6C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
  }

  _Unwind_Resume(exception_object);
}

void hardwareKeyboardAvailabilityChangedCallback(__CFNotificationCenter *a1, void *a2, const __CFString *a3, const void *a4, const __CFDictionary *a5)
{
  location = 0;
  objc_initWeak(&location, a2);
  v5 = 0;
  objc_copyWeak(&v5, &location);
  WebThreadRun();
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void sub_1C7A80D1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  objc_destroyWeak(va);
  objc_destroyWeak((v5 - 24));
  _Unwind_Resume(a1);
}

void sub_1C7A80E30(_Unwind_Exception *exception_object)
{
  if (v1)
  {
  }

  _Unwind_Resume(exception_object);
}

void sub_1C7A8113C(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10)
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

void sub_1C7A81284(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10)
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

void sub_1C7A81398(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, uint64_t a10, uint64_t a11, WebCore::Node *a12)
{
  if (a9 && atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a9, a2);
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

void sub_1C7A8148C(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, uint64_t a10, uint64_t a11, WebCore::Node *a12)
{
  if (a9 && atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a9, a2);
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

void sub_1C7A82260(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

void sub_1C7A8263C(_Unwind_Exception *a1, WTF::StringImpl *a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  WebCore::PlatformKeyboardEvent::~PlatformKeyboardEvent(va, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A82650(_Unwind_Exception *a1, WTF::StringImpl *a2, WebCore::WindowProxy *a3, uint64_t a4, ...)
{
  va_start(va, a4);
  if (a3)
  {
    WTF::RefCounted<WebCore::WindowProxy>::deref(a3);
  }

  WebCore::PlatformKeyboardEvent::~PlatformKeyboardEvent(va, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A82680(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    if (v1[6] == 1)
    {
      (*(*v1 + 8))(v1);
      _Unwind_Resume(exception_object);
    }

    --v1[6];
    _Unwind_Resume(exception_object);
  }

  JUMPOUT(0x1C7A82678);
}

void sub_1C7A826D0(_Unwind_Exception *exception_object)
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

  JUMPOUT(0x1C7A82678);
}

void sub_1C7A82C90(_Unwind_Exception *a1, void *a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  WebCore::ResourceCacheValidationSuppressor::~ResourceCacheValidationSuppressor(va, a2);
  _Unwind_Resume(a1);
}

void sub_1C7A82CA4(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, WTF::StringImpl *a11)
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

void sub_1C7A83130(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  WTF::Ref<WebCore::EditingStyle,WTF::RawPtrTraits<WebCore::EditingStyle>,WTF::DefaultRefDerefTraits<WebCore::EditingStyle>>::~Ref(va);
  (*(*v2 + 8))(v2);
  _Unwind_Resume(a1);
}

void sub_1C7A83234(_Unwind_Exception *exception_object)
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

void sub_1C7A83798(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v10, a2);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_1C7A83EEC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::optional<WebCore::SimpleRange>::~optional(va);
  _Unwind_Resume(a1);
}

void sub_1C7A83F00(_Unwind_Exception *exception_object)
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

void sub_1C7A8403C(_Unwind_Exception *exception_object)
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

__ZN7WebCore6Editor18confirmCompositionEv:
      MEMORY[0x1EEE5AC48](v7);
    }
  }
}

void sub_1C7A84144(_Unwind_Exception *exception_object)
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

void sub_1C7A8441C(_Unwind_Exception *a1, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, WTF::StringImpl *a12, char a13)
{
  WTF::HashMap<WTF::String,WTF::Vector<WebCore::CharacterRange,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Vector<WebCore::CharacterRange,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::~HashMap(&a9, a2);
  WTF::Vector<WebCore::CompositionHighlight,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&a10, v14);
  v16 = a12;
  a12 = 0;
  if (v16)
  {
    if (atomic_fetch_add_explicit(v16, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v16, v15);
      WTF::Vector<WebCore::CompositionUnderline,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&a13, v17);
      _Unwind_Resume(a1);
    }
  }

  WTF::Vector<WebCore::CompositionUnderline,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&a13, v15);
  _Unwind_Resume(a1);
}

void sub_1C7A847FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10, char a11, uint64_t a12, WebCore::Node *a13)
{
  if ((v14 & 1) == 0)
  {
    if (v13[4] != 1)
    {
      --v13[4];
      _Unwind_Resume(exception_object);
    }

    (*(*v13 + 8))(v13);
  }

  _Unwind_Resume(exception_object);
}

void sub_1C7A84D74(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
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

  v14 = *(v12 - 56);
  *(v12 - 56) = 0;
  if (v14 && atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v14, a2);
  }

  if (v10[4] == 1)
  {
    (*(*v10 + 8))(v10);
    _Unwind_Resume(exception_object);
  }

  --v10[4];
  _Unwind_Resume(exception_object);
}

void sub_1C7A85060(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF *a9, int a10)
{
  if (!a9)
  {
    _Unwind_Resume(exception_object);
  }

  WTF::fastFree(a9, a2);
  _Unwind_Resume(exception_object);
}

void sub_1C7A85444(_Unwind_Exception *a1)
{
  objc_end_catch();
  if (v1[4] == 1)
  {
    (*(*v1 + 8))(v1);
    _Unwind_Resume(a1);
  }

  --v1[4];
  _Unwind_Resume(a1);
}

void sub_1C7A85934(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, WTF::StringImpl *a14)
{
  std::optional<WebCore::SimpleRange>::~optional(&a9);
  v16 = a14;
  a14 = 0;
  if (v16)
  {
    if (atomic_fetch_add_explicit(v16, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v16, v15);
      _Unwind_Resume(a1);
    }
  }

  _Unwind_Resume(a1);
}

__ZN7WebCore6Editor34setMarkedTextMatchesAreHighlightedEb:
      MEMORY[0x1EEE5AD40](v7, v8);
    }
  }
}

void sub_1C7A85A64(_Unwind_Exception *exception_object)
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

void sub_1C7A85B34(_Unwind_Exception *exception_object)
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

void sub_1C7A85CD8(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF *a9, int a10)
{
  if (!a9)
  {
    _Unwind_Resume(exception_object);
  }

  WTF::fastFree(a9, a2);
  _Unwind_Resume(exception_object);
}

void sub_1C7A85E20(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10)
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

void sub_1C7A85F3C(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9)
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

void sub_1C7A86240(_Unwind_Exception *exception_object, WTF::StringImpl *a2)
{
  if (atomic_fetch_add_explicit(v2, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v2, a2);
  }

  _Unwind_Resume(exception_object);
}

JSC::Debugger *WebScriptDebugger::WebScriptDebugger(JSC::Debugger *a1, uint64_t a2)
{
  v4 = JSC::Debugger::Debugger();
  *v4 = &unk_1F472BD30;
  *(v4 + 248) = 0;
  v5 = *(a2 + 56);
  v6 = *(v5 + 752);
  if (!v6)
  {
    JSC::HandleSet::grow((v5 + 712));
    v6 = *(v5 + 752);
  }

  *(v5 + 752) = *v6;
  *(v6 + 16) = 0;
  *v6 = 0;
  *(v6 + 8) = 0;
  *(a1 + 32) = &unk_1F472BDD0;
  *(a1 + 33) = v6 + 16;
  if (!*(v6 + 16))
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFF000) + 0x10);
    v8 = v7[3];
    v7 += 3;
    *v6 = v8;
    *(v6 + 8) = v7;
    *v7 = v6;
    *(v8 + 8) = v6;
  }

  *(v6 + 16) = a2;
  JSC::Breakpoint::create();
  v10 = *(a1 + 21);
  *(a1 + 21) = v12;
  if (v10)
  {
    WTF::RefCounted<JSC::Breakpoint>::deref(v10, v9);
  }

  JSC::Debugger::setBreakpointsActivated(a1);
  JSC::Debugger::attach();
  return a1;
}

void sub_1C7A86430(_Unwind_Exception *a1, WTF::StringImpl *a2, uint64_t a3, ...)
{
  va_start(va, a3);
  WTF::Vector<JSC::Breakpoint::Action,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(va, a2);
  JSC::Strong<JSC::JSGlobalObject,(JSC::ShouldStrongDestructorGrabLock)0>::~Strong(v4);
  JSC::Debugger::~Debugger(v3);
  _Unwind_Resume(a1);
}

void sub_1C7A86454(_Unwind_Exception *a1)
{
  JSC::Strong<JSC::JSGlobalObject,(JSC::ShouldStrongDestructorGrabLock)0>::~Strong(v2);
  JSC::Debugger::~Debugger(v1);
  _Unwind_Resume(a1);
}

uint64_t JSC::Strong<JSC::JSGlobalObject,(JSC::ShouldStrongDestructorGrabLock)0>::~Strong(uint64_t result)
{
  v1 = *(result + 8);
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
    *(result + 8) = 0;
  }

  return result;
}

{
  v1 = *(result + 8);
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
    *(result + 8) = 0;
  }

  return result;
}

void WebScriptDebugger::sourceParsed(uint64_t a1, uint64_t a2, JSC::SourceProvider *a3, uint64_t a4, atomic_uint **a5)
{
  v46[1] = *MEMORY[0x1E69E9840];
  if (*(a1 + 248))
  {
    return;
  }

  *(a1 + 248) = 1;
  (*(*a3 + 24))(a3);
  if ((v9 & 0x100000000) != 0)
  {
    WTF::String::String();
  }

  else
  {
    WTF::String::String();
  }

  v11 = v42;
  if (v42 && *(v42 + 1))
  {
    atomic_fetch_add_explicit(v42, 2u, memory_order_relaxed);
    MEMORY[0x1CCA63450](&v41, v11);
    if (atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v11, v10);
    }
  }

  else
  {
    v41 = 0;
  }

  v12 = v42;
  v42 = 0;
  if (v12 && atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v12, v10);
  }

  WTF::URL::createCFURL(&v42, (a3 + 24));
  v13 = *(a3 + 28);
  v14 = JSC::VM::deprecatedVMEntryGlobalObject();
  v15 = WebCore::JSDOMWindowBase::wrapped(v14);
  v16 = (*(*v15 + 104))(v15);
  if (!v16 || (*(v16 + 136) & 1) != 0 || (v17 = *(*(v16 + 208) + 16), ((*(*v17 + 1032))(v17) & 1) != 0))
  {
    v18 = 0;
  }

  else
  {
    v18 = v17[3];
  }

  v19 = [v18 webView];
  v20 = v19;
  if (v19)
  {
    v21 = (*(v19 + 80) + 656);
    v22 = v13 + 1;
    if (a4 != -1)
    {
      goto LABEL_19;
    }

LABEL_32:
    v30 = *(v21 + 1);
    if (v30)
    {
      v31 = v41;
      v32 = v42;
      if (*v21 == 1)
      {
        v33 = *(a3 + 30);
        if (!v33)
        {
          JSC::SourceProvider::getID(a3);
          v33 = *(a3 + 30);
        }

        v34 = *(*(v20 + 80) + 112);
        if (v34)
        {
          (v30)(v34, sel_webView_didParseSource_baseLineNumber_fromURL_sourceId_forWebFrame_, v20, v31, v22, v32, v33, v18);
        }
      }

      else
      {
        v35 = [(WTF::StringImpl *)v42 absoluteString];
        v36 = *(a3 + 30);
        if (!v36)
        {
          JSC::SourceProvider::getID(a3);
          v36 = *(a3 + 30);
        }

        v37 = *(*(v20 + 80) + 112);
        if (v37)
        {
          v30(v37, sel_webView_didParseSource_fromURL_sourceId_forWebFrame_, v20, v31, v35, v36, v18);
        }
      }
    }

    goto LABEL_43;
  }

  v21 = &WebViewGetScriptDebugDelegateImplementations(WebView *)::empty;
  v22 = v13 + 1;
  if (a4 == -1)
  {
    goto LABEL_32;
  }

LABEL_19:
  v23 = *a5;
  if (*a5 && v23[1])
  {
    v43[0] = @"WebScriptErrorDescription";
    atomic_fetch_add_explicit(v23, 2u, memory_order_relaxed);
    MEMORY[0x1CCA63450](&v40, v23);
    if (atomic_fetch_add_explicit(v23, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v23, v24);
    }

    v43[1] = @"WebScriptErrorLineNumber";
    v44[0] = v40;
    v44[1] = [MEMORY[0x1E696AD98] numberWithInt:a4];
    v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v44 forKeys:v43 count:2];
    v26 = v40;
    v40 = 0;
    if (v26)
    {
    }
  }

  else
  {
    v45 = @"WebScriptErrorLineNumber";
    v46[0] = [MEMORY[0x1E696AD98] numberWithInt:a4];
    v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v46 forKeys:&v45 count:1];
  }

  v27 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"WebScriptErrorDomain" code:-100 userInfo:v25];
  v28 = *(v21 + 2);
  if (v28)
  {
    v29 = *(*(v20 + 80) + 112);
    if (v29)
    {
      v28(v29, sel_webView_failedToParseSource_baseLineNumber_fromURL_withError_forWebFrame_, v20, v41, v22, v42, v27, v18, v40);
    }
  }

  if (v27)
  {
  }

LABEL_43:
  *(a1 + 248) = 0;
  v38 = v42;
  v42 = 0;
  if (v38)
  {
  }

  v39 = v41;
  v41 = 0;
  if (v39)
  {
  }
}