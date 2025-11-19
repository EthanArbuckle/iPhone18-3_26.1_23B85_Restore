uint64_t WebCore::WebSocketChannel::didFailToReceiveSocketStreamData(WebCore::WebSocketChannel *this, atomic_uint *a2)
{
  v3 = (a2 + 2);
  atomic_fetch_add(a2 + 2, 1u);
  result = (*(*a2 + 40))(a2);
  a2[16] = 3;
  if (atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3);
    v5 = WTF::fastMalloc(0x10);
    *v5 = &unk_1F472B1C8;
    v5[1] = v3;
    v6 = v5;
    WTF::ensureOnMainThread();
    result = v6;
    if (v6)
    {
      return (*(*v6 + 8))(v6);
    }
  }

  return result;
}

void *WebCore::WebSocketChannel::didUpdateBufferedAmount(void *this, WebCore::SocketStreamHandle *a2, uint64_t a3)
{
  v3 = this[8];
  if (!v3)
  {
    return this;
  }

  v4 = 0;
  this = this[7];
  atomic_compare_exchange_strong_explicit(v3, &v4, 1u, memory_order_acquire, memory_order_acquire);
  if (v4)
  {
    v11 = this;
    v12 = a3;
    MEMORY[0x1CCA63990](v3, a2);
    this = v11;
    a3 = v12;
    if (*(v3 + 24))
    {
LABEL_4:
      ++*(v3 + 8);
      v5 = 1;
      atomic_compare_exchange_strong_explicit(v3, &v5, 0, memory_order_release, memory_order_relaxed);
      if (v5 == 1)
      {
        goto LABEL_5;
      }

      goto LABEL_18;
    }
  }

  else if (*(v3 + 24))
  {
    goto LABEL_4;
  }

  this = 0;
  v13 = 1;
  atomic_compare_exchange_strong_explicit(v3, &v13, 0, memory_order_release, memory_order_relaxed);
  if (v13 == 1)
  {
LABEL_5:
    if (!this)
    {
      return this;
    }

    goto LABEL_6;
  }

LABEL_18:
  v14 = this;
  v15 = v3;
  v16 = a3;
  WTF::Lock::unlockSlow(v15);
  this = v14;
  a3 = v16;
  if (!v14)
  {
    return this;
  }

LABEL_6:
  v6 = this + 1;
  this = (*(*this + 48))(this, a3);
  while (1)
  {
    v7 = *v6;
    if ((*v6 & 1) == 0)
    {
      break;
    }

    v8 = *v6;
    atomic_compare_exchange_strong_explicit(v6, &v8, v7 - 2, memory_order_relaxed, memory_order_relaxed);
    if (v8 == v7)
    {
      if (v7 == 3)
      {
        v9 = WTF::fastMalloc(0x10);
        *v9 = &unk_1F472B308;
        v9[1] = v6;
        v17 = v9;
        WTF::ensureOnMainThread();
        this = v17;
        if (v17)
        {
          return (*(*v17 + 8))(v17);
        }
      }

      return this;
    }
  }

  v10 = *v6;

  return WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebCore::WebSocketChannelClient,(WTF::DestructionThread)1>(v10);
}

WTF::StringImpl *WebCore::WebSocketChannel::didFailSocketStream(WebCore::WebSocketChannel *this, atomic_uint *a2, const WebCore::SocketStreamError *a3)
{
  v29 = 0;
  if (*(a3 + 24) == 1)
  {
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    v5 = *(this + 6);
    if (!v5)
    {
      goto LABEL_15;
    }

    goto LABEL_11;
  }

  v6 = *(a3 + 2);
  if (!v6)
  {
    v22 = *a3;
    v31[0] = "WebSocket network error: error code ";
    v31[1] = 36;
    v30 = v22;
    WTF::tryMakeStringFromAdapters<WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<int,void>>(v31, &v30, &v28);
    if (v28)
    {
      v29 = v28;
      v5 = *(this + 6);
      if (!v5)
      {
        goto LABEL_15;
      }

      goto LABEL_11;
    }

    __break(0xC471u);
LABEL_44:
    JUMPOUT(0x1C79EEF3CLL);
  }

  atomic_fetch_add_explicit(v6, 2u, memory_order_relaxed);
  v7 = v6[1];
  if (v7 < 0 || __OFADD__(v7, 25) || (WTF::tryMakeStringImplFromAdaptersInternal<WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::String,void>>(v31, v7 + 25, (v6[4] >> 2) & 1, "WebSocket network error: ", 0x19uLL, v6), !v31[0]))
  {
    __break(0xC471u);
    goto LABEL_44;
  }

  v29 = v31[0];
  if (atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v6, v8);
  }

  v5 = *(this + 6);
  if (v5)
  {
LABEL_11:
    if (*(v5 + 8))
    {
      WebCore::LegacyWebSocketInspectorInstrumentation::didReceiveWebSocketFrameError();
      v9 = *(this + 6);
      if (!v9 || !*(v9 + 8))
      {
        __break(0xC471u);
        JUMPOUT(0x1C79EEF5CLL);
      }

      WebCore::Document::addConsoleMessage();
    }
  }

LABEL_15:
  *(this + 225) = 1;
  v10 = *(this + 8);
  if (!v10)
  {
    goto LABEL_27;
  }

  v11 = 0;
  v12 = *(this + 7);
  atomic_compare_exchange_strong_explicit(v10, &v11, 1u, memory_order_acquire, memory_order_acquire);
  if (v11)
  {
    v25 = v12;
    MEMORY[0x1CCA63990](v10);
    v12 = v25;
    if (*(v10 + 24))
    {
LABEL_18:
      ++*(v10 + 8);
      v13 = 1;
      atomic_compare_exchange_strong_explicit(v10, &v13, 0, memory_order_release, memory_order_relaxed);
      if (v13 == 1)
      {
        goto LABEL_19;
      }

      goto LABEL_39;
    }
  }

  else if (*(v10 + 24))
  {
    goto LABEL_18;
  }

  v12 = 0;
  v26 = 1;
  atomic_compare_exchange_strong_explicit(v10, &v26, 0, memory_order_release, memory_order_relaxed);
  if (v26 == 1)
  {
LABEL_19:
    if (!v12)
    {
      goto LABEL_27;
    }

    goto LABEL_20;
  }

LABEL_39:
  v27 = v12;
  WTF::Lock::unlockSlow(v10);
  v12 = v27;
  if (!v27)
  {
    goto LABEL_27;
  }

LABEL_20:
  v14 = v12 + 1;
  (*(*v12 + 40))(v12, &v29);
  do
  {
    v15 = *v14;
    if ((*v14 & 1) == 0)
    {
      WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebCore::WebSocketChannelClient,(WTF::DestructionThread)1>(*v14);
      goto LABEL_27;
    }

    v16 = *v14;
    atomic_compare_exchange_strong_explicit(v14, &v16, v15 - 2, memory_order_relaxed, memory_order_relaxed);
  }

  while (v16 != v15);
  if (v15 == 3)
  {
    v17 = WTF::fastMalloc(0x10);
    *v17 = &unk_1F472B308;
    v17[1] = v14;
    v31[0] = v17;
    WTF::ensureOnMainThread();
    v18 = v31[0];
    v31[0] = 0;
    if (v18)
    {
      (*(*v18 + 8))(v18);
    }
  }

LABEL_27:
  v19 = (a2 + 2);
  atomic_fetch_add(a2 + 2, 1u);
  (*(*a2 + 40))(a2);
  a2[16] = 3;
  if (atomic_fetch_add(a2 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v19);
    v23 = WTF::fastMalloc(0x10);
    *v23 = &unk_1F472B1C8;
    v23[1] = v19;
    v31[0] = v23;
    WTF::ensureOnMainThread();
    v24 = v31[0];
    v31[0] = 0;
    if (v24)
    {
      (*(*v24 + 8))(v24);
    }
  }

  result = v29;
  v29 = 0;
  if (result)
  {
    if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(result, v20);
    }
  }

  return result;
}

uint64_t WebCore::WebSocketChannel::didFinishLoading(WebCore::WebSocketChannel *this)
{
  *(this + 82) = 2;
  result = WebCore::WebSocketChannel::processOutgoingFrameQueue(this);
  if (*(this + 2) == 1)
  {
    WebCore::WebSocketChannel::~WebSocketChannel(this);

    return bmalloc::api::tzoneFree(v3, v4);
  }

  else
  {
    --*(this + 2);
  }

  return result;
}

uint64_t non-virtual thunk toWebCore::WebSocketChannel::didFinishLoading(WebCore::WebSocketChannel *this)
{
  v2 = (this - 32);
  *(this + 74) = 2;
  result = WebCore::WebSocketChannel::processOutgoingFrameQueue(this - 32);
  if (*(this - 6) == 1)
  {
    WebCore::WebSocketChannel::~WebSocketChannel(v2);

    return bmalloc::api::tzoneFree(v4, v5);
  }

  else
  {
    --*(this - 6);
  }

  return result;
}

WTF::StringImpl *WebCore::WebSocketChannel::didFail(uint64_t a1, unsigned int a2)
{
  v4 = *(a1 + 320);
  *(a1 + 320) = 0;
  if (v4)
  {
    (*(*v4 + 64))(v4);
  }

  *(a1 + 328) = 3;
  v11[0] = "Failed to load Blob: error code = ";
  v11[1] = 34;
  v10 = a2;
  result = WTF::tryMakeStringFromAdapters<WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<int,void>>(v11, &v10, &v9);
  if (v9)
  {
    WebCore::WebSocketChannel::fail(a1, &v9);
    result = v9;
    v9 = 0;
    if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      result = WTF::StringImpl::destroy(result, v6);
    }

    if (*(a1 + 8) == 1)
    {
      WebCore::WebSocketChannel::~WebSocketChannel(a1);
      return bmalloc::api::tzoneFree(v7, v8);
    }

    else
    {
      --*(a1 + 8);
    }
  }

  else
  {
    __break(0xC471u);
  }

  return result;
}

uint64_t WTF::makeString<WTF::ASCIILiteral,unsigned int>(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = 0;
  v5 = a2;
  do
  {
    ++v4;
    v6 = v5 > 9;
    v5 /= 0xAu;
  }

  while (v6);
  if (v4 < 0 || (v7 = (v4 + 44), __OFADD__(v4, 44)) || (result = WTF::tryFastCompactMalloc((v7 + 20)), !v8))
  {
    *v3 = 0;
    __break(0xC471u);
  }

  else
  {
    qmemcpy((v8 + 20), "Received fragmented control frame: opcode = ", 44);
    *v8 = 2;
    *(v8 + 4) = v7;
    *(v8 + 8) = v8 + 20;
    *(v8 + 16) = 4;
    result = WTF::writeIntegerToBufferImpl<unsigned char,unsigned int,(WTF::PositiveOrNegativeNumber)0>(a2, (v8 + 64), v7 - 44);
    *v3 = v8;
  }

  return result;
}

uint64_t WTF::makeString<WTF::ASCIILiteral,unsigned long,WTF::ASCIILiteral>(uint64_t result, unint64_t a2)
{
  v2 = a2;
  v3 = result;
  v25[4] = *MEMORY[0x1E69E9840];
  LODWORD(v4) = 54;
  v5 = a2;
  do
  {
    v4 = (v4 + 1);
    v6 = v5 > 9;
    v5 /= 0xAuLL;
  }

  while (v6);
  if (v4 - 54 < 0 || __OFADD__(v4 - 54, 6) || __OFADD__(v4 - 48, 48) || (result = WTF::tryFastCompactMalloc((v4 + 20)), (v7 = v25[0]) == 0))
  {
    *v3 = 0;
    __break(0xC471u);
  }

  else
  {
    v8 = 0;
    *(v25[0] + 20) = *"Received control frame having too long payload: ";
    *v7 = 2;
    *(v7 + 4) = v4;
    *(v7 + 8) = v7 + 20;
    *(v7 + 16) = 4;
    *(v7 + 36) = *" frame having too long payload: ";
    v9 = v4 - 48;
    v10 = v7 + 68;
    v11 = 25;
    *(v7 + 52) = *"o long payload: ";
    result = 1;
    v12 = v2;
    while (result != 26)
    {
      v13 = result;
      v14 = v8;
      --v11;
      *(v25 + v11) = (v12 % 0xA) | 0x30;
      ++result;
      ++v8;
      v6 = v12 > 9;
      v12 /= 0xAuLL;
      if (!v6)
      {
        if (v14 >= v9)
        {
          v15 = v4 - 48;
        }

        else
        {
          v15 = v14;
        }

        if (v15 >= 8)
        {
          v17 = v15 + 1;
          v18 = v17 & 7;
          if ((v17 & 7) == 0)
          {
            v18 = 8;
          }

          v16 = v17 - v18;
          if (v14 >= v4 - 48)
          {
            v14 = v4 - 48;
          }

          v19 = v14 - v18 + 1;
          v20 = v25;
          v21 = (v7 + 68);
          do
          {
            *v21++ = *(v20++ + v11);
            v19 -= 8;
          }

          while (v19);
        }

        else
        {
          v16 = 0;
        }

        v22 = v25 + v16;
        while (v4 - 48 != v16)
        {
          *(v10 + v16++) = v22[v11];
          ++v22;
          if (v13 == v16)
          {
            LODWORD(v23) = 0;
            do
            {
              v23 = (v23 + 1);
              v6 = v2 > 9;
              v2 /= 0xAuLL;
            }

            while (v6);
            if (v9 >= v23)
            {
              v24 = v10 + v23;
              *(v24 + 4) = 29541;
              *v24 = 1954112032;
              *v3 = v7;
              return result;
            }

            goto LABEL_29;
          }
        }

        break;
      }
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

WebCore::DeflateResultHolder *WebCore::WebSocketChannel::sendFrame(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  WebCore::WebSocketFrame::WebSocketFrame();
  WebCore::LegacyWebSocketInspectorInstrumentation::didSendWebSocketFrame();
  WebCore::WebSocketDeflateFramer::deflate(&v20, (a1 + 336), v21);
  if (*(v20 + 8))
  {
    v18 = 0;
    v19 = 0;
    WebCore::WebSocketFrame::makeFrameData();
    v7 = *(a1 + 80);
    v8 = *a5;
    *a5 = 0;
    v17 = v8;
    if ((v7[16] | 2) == 2)
    {
      (*(*v8 + 16))(v8, 0, 0);
      v17 = 0;
    }

    else
    {
      (*(*v7 + 24))(v7, 0, 0, &v17);
      v8 = v17;
      v17 = 0;
      if (!v8)
      {
        goto LABEL_12;
      }
    }

    (*(*v8 + 8))(v8);
LABEL_12:
    v13 = v18;
    if (v18)
    {
      v18 = 0;
      LODWORD(v19) = 0;
      WTF::fastFree(v13, v12);
    }

    goto LABEL_14;
  }

  v9 = *(v20 + 2);
  if (v9)
  {
    atomic_fetch_add_explicit(v9, 2u, memory_order_relaxed);
  }

  v18 = v9;
  WebCore::WebSocketChannel::fail(a1, &v18);
  v11 = v18;
  v18 = 0;
  if (v11 && atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v11, v10);
  }

  (*(**a5 + 16))(*a5, 0);
LABEL_14:
  result = v20;
  v20 = 0;
  if (result)
  {
    WebCore::DeflateResultHolder::~DeflateResultHolder(result);
    return bmalloc::api::tzoneFree(v15, v16);
  }

  return result;
}

void WebBroadcastChannelRegistry::~WebBroadcastChannelRegistry(WebBroadcastChannelRegistry *this, void *a2)
{
  *this = &unk_1F472AFD8;
  v2 = *(this + 3);
  if (v2)
  {
    v3 = this;
    v4 = *(v2 - 4);
    if (v4)
    {
      for (i = 0; i != v4; ++i)
      {
        v6 = (v2 + 24 * i);
        if (*v6 != -1)
        {
          v7 = v6[2];
          if (v7)
          {
            v8 = *(v7 - 4);
            if (v8)
            {
              v9 = v6[2];
              do
              {
                v10 = *v9;
                if (*v9 != -1)
                {
                  v11 = *(v9 + 8);
                  if (v11)
                  {
                    *(v9 + 8) = 0;
                    *(v9 + 16) = 0;
                    WTF::fastFree(v11, a2);
                    v10 = *v9;
                  }

                  *v9 = 0;
                  if (v10 && atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
                  {
                    WTF::StringImpl::destroy(v10, a2);
                  }
                }

                v9 += 24;
                --v8;
              }

              while (v8);
            }

            WTF::fastFree((v7 - 16), a2);
          }

          v12 = v6[1];
          v6[1] = 0;
          if (v12)
          {
            WTF::ThreadSafeRefCounted<WebCore::SecurityOrigin,(WTF::DestructionThread)0>::deref(v12, a2);
          }

          v13 = *v6;
          *v6 = 0;
          if (v13)
          {
            WTF::ThreadSafeRefCounted<WebCore::SecurityOrigin,(WTF::DestructionThread)0>::deref(v13, a2);
          }
        }
      }
    }

    WTF::fastFree((v2 - 16), a2);
    this = v3;
  }

  v14 = *(this + 2);
  if (!v14 || (*(v14 + 8) = 0, *(this + 2) = 0, atomic_fetch_add(v14, 0xFFFFFFFF) != 1))
  {
    if (*(this + 2) == 1)
    {
      return;
    }

LABEL_27:
    __break(0xC471u);
    return;
  }

  atomic_store(1u, v14);
  v15 = this;
  WTF::fastFree(v14, a2);
  if (*(v15 + 2) != 1)
  {
    goto LABEL_27;
  }
}

{
  *this = &unk_1F472AFD8;
  v2 = *(this + 3);
  if (v2)
  {
    v3 = this;
    v4 = *(v2 - 4);
    if (v4)
    {
      for (i = 0; i != v4; ++i)
      {
        v6 = (v2 + 24 * i);
        if (*v6 != -1)
        {
          v7 = v6[2];
          if (v7)
          {
            v8 = *(v7 - 4);
            if (v8)
            {
              v9 = v6[2];
              do
              {
                v10 = *v9;
                if (*v9 != -1)
                {
                  v11 = *(v9 + 8);
                  if (v11)
                  {
                    *(v9 + 8) = 0;
                    *(v9 + 16) = 0;
                    WTF::fastFree(v11, a2);
                    v10 = *v9;
                  }

                  *v9 = 0;
                  if (v10 && atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
                  {
                    WTF::StringImpl::destroy(v10, a2);
                  }
                }

                v9 += 24;
                --v8;
              }

              while (v8);
            }

            WTF::fastFree((v7 - 16), a2);
          }

          v12 = v6[1];
          v6[1] = 0;
          if (v12)
          {
            WTF::ThreadSafeRefCounted<WebCore::SecurityOrigin,(WTF::DestructionThread)0>::deref(v12, a2);
          }

          v13 = *v6;
          *v6 = 0;
          if (v13)
          {
            WTF::ThreadSafeRefCounted<WebCore::SecurityOrigin,(WTF::DestructionThread)0>::deref(v13, a2);
          }
        }
      }
    }

    WTF::fastFree((v2 - 16), a2);
    this = v3;
  }

  v14 = *(this + 2);
  if (v14)
  {
    *(v14 + 8) = 0;
    *(this + 2) = 0;
    if (atomic_fetch_add(v14, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v14);
      v15 = this;
      WTF::fastFree(v14, a2);
      this = v15;
      if (*(v15 + 2) == 1)
      {
        goto LABEL_25;
      }

LABEL_29:
      __break(0xC471u);
      return;
    }
  }

  if (*(this + 2) != 1)
  {
    goto LABEL_29;
  }

LABEL_25:

  WTF::fastFree(this, a2);
}

WebCore::WebSocketChannel *WebCore::WebSocketChannel::derefThreadableWebSocketChannel(WebCore::WebSocketChannel *this)
{
  if (*(this + 2) == 1)
  {
    WebCore::WebSocketChannel::~WebSocketChannel(this);

    return bmalloc::api::tzoneFree(v2, v3);
  }

  else
  {
    --*(this + 2);
  }

  return this;
}

uint64_t non-virtual thunk toWebCore::WebSocketChannel::derefThreadableWebSocketChannel(uint64_t this)
{
  if (*(this - 8) == 1)
  {
    WebCore::WebSocketChannel::~WebSocketChannel((this - 16));

    return bmalloc::api::tzoneFree(v2, v3);
  }

  else
  {
    --*(this - 8);
  }

  return this;
}

uint64_t WebCore::ResourceRequest::operator=(uint64_t a1, uint64_t a2)
{
  WTF::URL::operator=(a1, a2);
  WTF::URL::operator=(a1 + 40, (a2 + 40));
  *(a1 + 80) = *(a2 + 80);
  v5 = *(a2 + 88);
  *(a2 + 88) = 0;
  v6 = *(a1 + 88);
  *(a1 + 88) = v5;
  if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v6, v4);
  }

  v7 = *(a1 + 108);
  v8 = *(a1 + 96);
  if (v7)
  {
    v9 = 16 * v7;
    v10 = (v8 + 8);
    do
    {
      v11 = *v10;
      *v10 = 0;
      if (v11 && atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v11, v4);
      }

      v10 += 2;
      v9 -= 16;
    }

    while (v9);
    v8 = *(a1 + 96);
  }

  if (v8)
  {
    *(a1 + 96) = 0;
    *(a1 + 104) = 0;
    WTF::fastFree(v8, v4);
  }

  v12 = *(a2 + 96);
  *(a2 + 96) = 0;
  *(a1 + 96) = v12;
  LODWORD(v12) = *(a2 + 104);
  *(a2 + 104) = 0;
  *(a1 + 104) = v12;
  LODWORD(v12) = *(a2 + 108);
  *(a2 + 108) = 0;
  *(a1 + 108) = v12;
  v13 = *(a1 + 124);
  v14 = *(a1 + 112);
  if (v13)
  {
    v15 = 16 * v13;
    v16 = (v14 + 8);
    do
    {
      v17 = *v16;
      *v16 = 0;
      if (v17 && atomic_fetch_add_explicit(v17, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v17, v4);
      }

      v18 = *(v16 - 1);
      *(v16 - 1) = 0;
      if (v18 && atomic_fetch_add_explicit(v18, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v18, v4);
      }

      v16 += 2;
      v15 -= 16;
    }

    while (v15);
    v14 = *(a1 + 112);
  }

  if (v14)
  {
    *(a1 + 112) = 0;
    *(a1 + 120) = 0;
    WTF::fastFree(v14, v4);
  }

  v19 = *(a2 + 112);
  *(a2 + 112) = 0;
  *(a1 + 112) = v19;
  LODWORD(v19) = *(a2 + 120);
  *(a2 + 120) = 0;
  *(a1 + 120) = v19;
  LODWORD(v19) = *(a2 + 124);
  *(a2 + 124) = 0;
  *(a1 + 124) = v19;
  v20 = *(a1 + 140);
  v21 = *(a1 + 128);
  if (v20)
  {
    v22 = 8 * v20;
    do
    {
      v23 = *v21;
      *v21 = 0;
      if (v23 && atomic_fetch_add_explicit(v23, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v23, v4);
      }

      v21 = (v21 + 8);
      v22 -= 8;
    }

    while (v22);
    v21 = *(a1 + 128);
  }

  if (v21)
  {
    *(a1 + 128) = 0;
    *(a1 + 136) = 0;
    WTF::fastFree(v21, v4);
  }

  v24 = *(a2 + 128);
  *(a2 + 128) = 0;
  *(a1 + 128) = v24;
  LODWORD(v24) = *(a2 + 136);
  *(a2 + 136) = 0;
  *(a1 + 136) = v24;
  LODWORD(v24) = *(a2 + 140);
  *(a2 + 140) = 0;
  *(a1 + 140) = v24;
  LODWORD(v24) = *(a2 + 144);
  *(a1 + 148) = *(a2 + 148);
  *(a1 + 144) = v24;
  v25 = *(a2 + 152);
  *(a2 + 152) = 0;
  v26 = *(a1 + 152);
  *(a1 + 152) = v25;
  if (v26 && atomic_fetch_add_explicit(v26, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v26, v4);
  }

  v27 = *(a2 + 160);
  *(a2 + 160) = 0;
  v28 = *(a1 + 160);
  *(a1 + 160) = v27;
  if (v28 && atomic_fetch_add_explicit(v28, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v28, v4);
  }

  v29 = *(a2 + 168);
  *(a2 + 168) = 0;
  v30 = *(a1 + 168);
  *(a1 + 168) = v29;
  if (v30)
  {
    if (*v30 == 1)
    {
      v31 = MEMORY[0x1CCA67F60]();
      bmalloc::api::tzoneFree(v31, v32);
    }

    else
    {
      --*v30;
    }
  }

  v33 = *(a2 + 176);
  *(a1 + 184) = *(a2 + 184);
  *(a1 + 176) = v33;
  v34 = *(a2 + 192);
  *(a2 + 192) = 0;
  v35 = *(a1 + 192);
  *(a1 + 192) = v34;
  if (v35)
  {
    CFRelease(v35);
  }

  return a1;
}

double WTF::URL::operator=(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *a2 = 0;
  v4 = *a1;
  *a1 = v3;
  if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    v5 = a1;
    WTF::StringImpl::destroy(v4, a2);
    a1 = v5;
  }

  *(a1 + 8) = *(a1 + 8) & 0xFFFFFFFE | a2[1] & 1;
  v6 = *(a2 + 2);
  *(a2 + 2) = v6 & 0xFFFFFFFE;
  v7 = *(a1 + 8) & 0xFFFFFFFD | (2 * ((v6 >> 1) & 1));
  *(a1 + 8) = v7;
  v8 = v7 & 0xFFFFFFFB | (4 * ((*(a2 + 2) >> 2) & 1));
  *(a1 + 8) = v8;
  v9 = v8 & 0xFFFFFFC7 | (8 * ((*(a2 + 2) >> 3) & 7));
  *(a1 + 8) = v9;
  *(a1 + 8) = a2[1] & 0xFFFFFFC0 | v9 & 0x3F;
  *(a1 + 12) = *(a2 + 12);
  result = *(a2 + 28);
  *(a1 + 28) = result;
  *(a1 + 36) = *(a2 + 9);
  return result;
}

WebCore::ResourceRequest *WebCore::ResourceRequest::ResourceRequest(WebCore::ResourceRequest *this)
{
  v9 = 0;
  WTF::URL::invalidate(&v9);
  v2 = v9;
  v9 = 0;
  *this = v2;
  v3 = v10;
  *(this + 8) = v10;
  *(this + 24) = v11;
  LODWORD(v10) = v3 & 0xFFFFFFFE;
  *(this + 5) = 0;
  WTF::URL::invalidate((this + 40));
  *(this + 10) = *MEMORY[0x1E69E2628];
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  *(this + 11) = v12;
  WebCore::HTTPHeaderMap::HTTPHeaderMap((this + 96));
  *(this + 16) = 0;
  *(this + 17) = 0;
  *(this + 36) = 0x10000;
  *(this + 148) = 4;
  *(this + 19) = 0;
  v5 = *MEMORY[0x1E696EBA8];
  if (*MEMORY[0x1E696EBA8])
  {
    atomic_fetch_add_explicit(v5, 2u, memory_order_relaxed);
    v6 = *(this + 148) | 2;
  }

  else
  {
    v6 = 6;
  }

  *(this + 20) = v5;
  *(this + 21) = 0;
  *(this + 176) = 0;
  *(this + 180) = 0;
  *(this + 184) = *(this + 184) & 0xE0 | 5;
  *(this + 148) = v6;
  v7 = v9;
  v9 = 0;
  if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v7, v4);
  }

  *(this + 24) = 0;
  return this;
}

void WebCore::ResourceRequest::~ResourceRequest(WebCore::ResourceRequest *this, WTF::StringImpl *a2)
{
  v3 = *(this + 24);
  *(this + 24) = 0;
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = *(this + 21);
  *(this + 21) = 0;
  if (v4)
  {
    if (*v4 == 1)
    {
      v6 = MEMORY[0x1CCA67F60]();
      bmalloc::api::tzoneFree(v6, v7);
      v5 = *(this + 20);
      *(this + 20) = 0;
      if (!v5)
      {
        goto LABEL_11;
      }

      goto LABEL_9;
    }

    --*v4;
  }

  v5 = *(this + 20);
  *(this + 20) = 0;
  if (!v5)
  {
    goto LABEL_11;
  }

LABEL_9:
  if (atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v5, a2);
  }

LABEL_11:
  v8 = *(this + 19);
  *(this + 19) = 0;
  if (v8 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v8, a2);
  }

  WebCore::ResourceRequestBase::RequestData::~RequestData(this, a2);
}

{
  v3 = *(this + 24);
  *(this + 24) = 0;
  if (v3)
  {
  }

  v4 = *(this + 21);
  *(this + 21) = 0;
  if (v4)
  {
    if (*v4 == 1)
    {
      v6 = MEMORY[0x1CCA67F60]();
      bmalloc::api::tzoneFree(v6, v7);
      v5 = *(this + 20);
      *(this + 20) = 0;
      if (!v5)
      {
        goto LABEL_11;
      }

      goto LABEL_9;
    }

    --*v4;
  }

  v5 = *(this + 20);
  *(this + 20) = 0;
  if (!v5)
  {
    goto LABEL_11;
  }

LABEL_9:
  if (atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v5, a2);
  }

LABEL_11:
  v8 = *(this + 19);
  *(this + 19) = 0;
  if (v8 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v8, a2);
  }

  WebCore::ResourceRequestBase::RequestData::~RequestData(this, a2);
}

void WebCore::ResourceRequestBase::RequestData::~RequestData(WebCore::ResourceRequestBase::RequestData *this, WTF::StringImpl *a2)
{
  v3 = *(this + 35);
  v4 = *(this + 16);
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
    v4 = *(this + 16);
  }

  if (v4)
  {
    *(this + 16) = 0;
    *(this + 34) = 0;
    WTF::fastFree(v4, a2);
  }

  WebCore::HTTPHeaderMap::~HTTPHeaderMap((this + 96), a2);
  v8 = *(this + 11);
  *(this + 11) = 0;
  if (v8 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v8, v7);
  }

  v9 = *(this + 5);
  *(this + 5) = 0;
  if (v9 && atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v9, v7);
  }

  v10 = *this;
  *this = 0;
  if (v10)
  {
    if (atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v10, v7);
    }
  }
}

void WebCore::HTTPHeaderMap::~HTTPHeaderMap(WebCore::HTTPHeaderMap *this, WTF::StringImpl *a2)
{
  v3 = *(this + 7);
  v4 = *(this + 2);
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

      v8 = *(v6 - 1);
      *(v6 - 1) = 0;
      if (v8 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v8, a2);
      }

      v6 += 2;
      v5 -= 16;
    }

    while (v5);
    v4 = *(this + 2);
  }

  if (v4)
  {
    *(this + 2) = 0;
    *(this + 6) = 0;
    WTF::fastFree(v4, a2);
  }

  v9 = *(this + 3);
  v10 = *this;
  if (v9)
  {
    v11 = 16 * v9;
    v12 = (v10 + 8);
    do
    {
      v13 = *v12;
      *v12 = 0;
      if (v13 && atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v13, a2);
      }

      v12 += 2;
      v11 -= 16;
    }

    while (v11);
    v10 = *this;
  }

  if (v10)
  {
    *this = 0;
    *(this + 2) = 0;
    WTF::fastFree(v10, a2);
  }
}

uint64_t WTF::Deque<WTF::RefPtr<WebCore::ResourceLoader,WTF::RawPtrTraits<WebCore::ResourceLoader>,WTF::DefaultRefDerefTraits<WebCore::ResourceLoader>>,0ul>::destroyAll(uint64_t result)
{
  v1 = *(result + 8);
  v2 = *(result + 16);
  v3 = *(result + 24);
  v4 = *result;
  v5 = v1 - *result;
  if (v1 < *result)
  {
    if (v1 <= v3)
    {
      if (v1)
      {
        v6 = result;
        v7 = 8 * v1;
        v8 = *(result + 16);
        do
        {
          result = *v8;
          *v8 = 0;
          if (result)
          {
            if (*(result + 16) == 1)
            {
              result = (*(*result + 8))(result);
            }

            else
            {
              --*(result + 16);
            }
          }

          ++v8;
          v7 -= 8;
        }

        while (v7);
        v4 = *v6;
      }

      if (v4 <= v3)
      {
        if (v4 != v3)
        {
          v10 = 8 * v4;
          v11 = (v2 + v10);
          v12 = 8 * v3 - v10;
          do
          {
            result = *v11;
            *v11 = 0;
            if (result)
            {
              if (*(result + 16) == 1)
              {
                result = (*(*result + 8))(result);
              }

              else
              {
                --*(result + 16);
              }
            }

            ++v11;
            v12 -= 8;
          }

          while (v12);
        }

        return result;
      }
    }

LABEL_32:
    __break(1u);
    return result;
  }

  v9 = v3 - v4;
  if (v3 < v4)
  {
    goto LABEL_32;
  }

  if (v5 == -1)
  {
    v5 = v3 - v4;
    if (!v9)
    {
      return result;
    }
  }

  else
  {
    if (v9 < v5)
    {
      goto LABEL_32;
    }

    if (!v5)
    {
      return result;
    }
  }

  v13 = 8 * v5;
  v14 = (v2 + 8 * v4);
  do
  {
    result = *v14;
    *v14 = 0;
    if (result)
    {
      if (*(result + 16) == 1)
      {
        result = (*(*result + 8))(result);
      }

      else
      {
        --*(result + 16);
      }
    }

    ++v14;
    v13 -= 8;
  }

  while (v13);
  return result;
}

WebCore::ResourceRequest *WebCore::ResourceRequest::ResourceRequest(WebCore::ResourceRequest *this, const WebCore::ResourceRequest *a2)
{
  v4 = *a2;
  if (*a2)
  {
    atomic_fetch_add_explicit(v4, 2u, memory_order_relaxed);
  }

  *this = v4;
  v5 = *(a2 + 8);
  *(this + 24) = *(a2 + 24);
  *(this + 8) = v5;
  v6 = *(a2 + 5);
  if (v6)
  {
    atomic_fetch_add_explicit(v6, 2u, memory_order_relaxed);
  }

  *(this + 5) = v6;
  v7 = *(a2 + 4);
  *(this + 3) = *(a2 + 3);
  *(this + 4) = v7;
  *(this + 10) = *(a2 + 10);
  v8 = *(a2 + 11);
  if (v8)
  {
    atomic_fetch_add_explicit(v8, 2u, memory_order_relaxed);
  }

  v9 = *(a2 + 27);
  *(this + 12) = 0;
  *(this + 13) = 0;
  *(this + 11) = v8;
  *(this + 27) = v9;
  if (v9)
  {
    if (v9 >> 28)
    {
      goto LABEL_41;
    }

    v10 = WTF::fastMalloc((16 * v9));
    *(this + 26) = v9;
    *(this + 12) = v10;
    v11 = *(a2 + 27);
    if (v11)
    {
      v12 = *(a2 + 12);
      v13 = v12 + 16 * v11;
      do
      {
        *v10 = *v12;
        v14 = *(v12 + 8);
        if (v14)
        {
          atomic_fetch_add_explicit(v14, 2u, memory_order_relaxed);
        }

        *(v10 + 8) = v14;
        v10 += 16;
        v12 += 16;
      }

      while (v12 != v13);
    }
  }

  v15 = *(a2 + 31);
  *(this + 14) = 0;
  *(this + 15) = 0;
  *(this + 31) = v15;
  if (v15)
  {
    if (v15 >> 28)
    {
      __break(0xC471u);
      JUMPOUT(0x1C79F0628);
    }

    v16 = WTF::fastMalloc((16 * v15));
    *(this + 30) = v15;
    *(this + 14) = v16;
    v17 = *(a2 + 31);
    if (v17)
    {
      v18 = *(a2 + 14);
      v19 = &v18[2 * v17];
      do
      {
        v20 = *v18;
        if (*v18)
        {
          atomic_fetch_add_explicit(v20, 2u, memory_order_relaxed);
        }

        *v16 = v20;
        v21 = v18[1];
        if (v21)
        {
          atomic_fetch_add_explicit(v21, 2u, memory_order_relaxed);
        }

        v16[1] = v21;
        v16 += 2;
        v18 += 2;
      }

      while (v18 != v19);
    }
  }

  v22 = *(a2 + 35);
  *(this + 16) = 0;
  *(this + 17) = 0;
  *(this + 35) = v22;
  if (v22)
  {
    if (!(v22 >> 29))
    {
      v23 = WTF::fastMalloc((8 * v22));
      *(this + 34) = v22;
      *(this + 16) = v23;
      v24 = *(a2 + 35);
      if (v24)
      {
        v25 = *(a2 + 16);
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

      goto LABEL_30;
    }

LABEL_41:
    __break(0xC471u);
    JUMPOUT(0x1C79F0620);
  }

LABEL_30:
  v28 = *(a2 + 36);
  *(this + 148) = *(a2 + 148);
  *(this + 36) = v28;
  v29 = *(a2 + 19);
  if (v29)
  {
    atomic_fetch_add_explicit(v29, 2u, memory_order_relaxed);
  }

  *(this + 19) = v29;
  v30 = *(a2 + 20);
  if (v30)
  {
    atomic_fetch_add_explicit(v30, 2u, memory_order_relaxed);
  }

  *(this + 20) = v30;
  v31 = *(a2 + 21);
  if (v31)
  {
    ++*v31;
  }

  *(this + 21) = v31;
  v32 = *(a2 + 22);
  *(this + 184) = *(a2 + 184);
  *(this + 22) = v32;
  v33 = *(a2 + 24);
  *(this + 24) = v33;
  if (v33)
  {
    CFRetain(v33);
  }

  return this;
}

WTF::StringImpl *PingHandle::timeoutTimerFired(PingHandle *this)
{
  v2 = WebCore::ResourceRequestBase::url((this + 24));
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v3 = v14[0];
  v18 = 0;
  v4 = *v2;
  if (*v2)
  {
    atomic_fetch_add_explicit(v4, 2u, memory_order_relaxed);
  }

  v19 = v4;
  v5 = *(v2 + 24);
  v20 = *(v2 + 8);
  v21 = v5;
  if (v14[0])
  {
    atomic_fetch_add_explicit(v14[0], 2u, memory_order_relaxed);
  }

  v22 = v14[0];
  v23 = 0;
  v24 = 4;
  v25 = 0;
  v26 = 1;
  WebCore::ResourceResponseBase::ResourceResponseBase(v14);
  cf = 0;
  v17 = 0;
  v15 = v15 & 0xF1 | 4;
  v7 = *(this + 36);
  *(this + 36) = 0;
  if (v7)
  {
    (*(*v7 + 16))(v7, &v18, v14);
    (*(*v7 + 8))(v7);
    v8 = cf;
    cf = 0;
    if (v8)
    {
      CFRelease(v8);
    }
  }

  WebCore::ResourceResponseBase::~ResourceResponseBase(v14, v6);
  v10 = v25;
  v25 = 0;
  if (v10)
  {
    CFRelease(v10);
  }

  v11 = v22;
  v22 = 0;
  if (v11 && atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v11, v9);
  }

  v12 = v19;
  v19 = 0;
  if (v12 && atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v12, v9);
  }

  result = v18;
  v18 = 0;
  if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    result = WTF::StringImpl::destroy(result, v9);
  }

  if (v3)
  {
    if (atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(v3, v9);
    }
  }

  return result;
}

void PingHandle::~PingHandle(PingHandle *this)
{
  PingHandle::~PingHandle(this);

  bmalloc::api::tzoneFree(v1, v2);
}

{
  v2 = *(this + 2);
  if (v2)
  {
    WebCore::ResourceHandle::clearClient(v2);
    (*(**(this + 2) + 80))(*(this + 2));
  }

  v3 = *(this + 36);
  *(this + 36) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  *(this + 28) = &unk_1F472A8C8;
  v4 = *(this + 34);
  *(this + 34) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  WebCore::TimerBase::~TimerBase((this + 224));
  v6 = *(this + 27);
  *(this + 27) = 0;
  if (v6)
  {
    CFRelease(v6);
  }

  v7 = *(this + 24);
  *(this + 24) = 0;
  if (!v7)
  {
LABEL_12:
    v8 = *(this + 23);
    *(this + 23) = 0;
    if (!v8)
    {
      goto LABEL_17;
    }

    goto LABEL_15;
  }

  if (*v7 != 1)
  {
    --*v7;
    goto LABEL_12;
  }

  v9 = MEMORY[0x1CCA67F60]();
  bmalloc::api::tzoneFree(v9, v10);
  v8 = *(this + 23);
  *(this + 23) = 0;
  if (!v8)
  {
    goto LABEL_17;
  }

LABEL_15:
  if (atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v8, v5);
  }

LABEL_17:
  v11 = *(this + 22);
  *(this + 22) = 0;
  if (v11)
  {
    if (atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v11, v5);
    }
  }

  WebCore::ResourceRequestBase::RequestData::~RequestData((this + 24), v5);
  v12 = *(this + 2);
  *(this + 2) = 0;
  if (!v12)
  {
LABEL_23:
    WebCore::ResourceHandleClient::~ResourceHandleClient(this);
    if (*(this + 2) == 1)
    {
      return;
    }

LABEL_26:
    __break(0xC471u);
    return;
  }

  if (v12[4] != 1)
  {
    --v12[4];
    goto LABEL_23;
  }

  (*(*v12 + 48))(v12);
  WebCore::ResourceHandleClient::~ResourceHandleClient(this);
  if (*(this + 2) != 1)
  {
    goto LABEL_26;
  }
}

WTF::StringImpl *PingHandle::didReceiveData(PingHandle *this, WebCore::ResourceHandle *a2, const WebCore::SharedBuffer *a3)
{
  v16 = 0;
  v17 = 0;
  WTF::URL::invalidate(&v17);
  v19 = 0;
  v18[0] = 0;
  *(v18 + 6) = 0;
  v20 = 1;
  WebCore::ResourceResponseBase::ResourceResponseBase(v12);
  cf = 0;
  v15 = 0;
  v13 = v13 & 0xF1 | 4;
  v5 = *(this + 36);
  *(this + 36) = 0;
  if (v5)
  {
    (*(*v5 + 16))(v5, &v16, v12);
    (*(*v5 + 8))(v5);
    v6 = cf;
    cf = 0;
    if (v6)
    {
      CFRelease(v6);
    }
  }

  WebCore::ResourceResponseBase::~ResourceResponseBase(v12, v4);
  v8 = v19;
  v19 = 0;
  if (v8)
  {
    CFRelease(v8);
  }

  v9 = v18[0];
  v18[0] = 0;
  if (v9 && atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v9, v7);
  }

  v10 = v17;
  v17 = 0;
  if (v10 && atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v10, v7);
  }

  result = v16;
  v16 = 0;
  if (result)
  {
    if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(result, v7);
    }
  }

  return result;
}

WTF::StringImpl *PingHandle::didFinishLoading(uint64_t a1)
{
  v14 = 0;
  v15 = 0;
  WTF::URL::invalidate(&v15);
  v17 = 0;
  v16[0] = 0;
  *(v16 + 6) = 0;
  v18 = 1;
  WebCore::ResourceResponseBase::ResourceResponseBase(v10);
  cf = 0;
  v13 = 0;
  v11 = v11 & 0xF1 | 4;
  v3 = *(a1 + 288);
  *(a1 + 288) = 0;
  if (v3)
  {
    (*(*v3 + 16))(v3, &v14, v10);
    (*(*v3 + 8))(v3);
    v4 = cf;
    cf = 0;
    if (v4)
    {
      CFRelease(v4);
    }
  }

  WebCore::ResourceResponseBase::~ResourceResponseBase(v10, v2);
  v6 = v17;
  v17 = 0;
  if (v6)
  {
    CFRelease(v6);
  }

  v7 = v16[0];
  v16[0] = 0;
  if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v7, v5);
  }

  v8 = v15;
  v15 = 0;
  if (v8 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v8, v5);
  }

  result = v14;
  v14 = 0;
  if (result)
  {
    if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(result, v5);
    }
  }

  return result;
}

void PingHandle::didFail(PingHandle *this, WebCore::ResourceHandle *a2, const WebCore::ResourceError *a3)
{
  WebCore::ResourceResponseBase::ResourceResponseBase(v8);
  cf = 0;
  v11 = 0;
  v9 = v9 & 0xF1 | 4;
  v6 = *(this + 36);
  *(this + 36) = 0;
  if (v6)
  {
    (*(*v6 + 16))(v6, a3, v8);
    (*(*v6 + 8))(v6);
    v7 = cf;
    cf = 0;
    if (v7)
    {
      CFRelease(v7);
    }
  }

  WebCore::ResourceResponseBase::~ResourceResponseBase(v8, v5);
}

void PingHandle::willSendRequestAsync(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  WebCore::ResourceRequest::operator=(a1 + 24, a3);
  if (*(a1 + 281) == 1)
  {
    WebCore::ResourceRequest::ResourceRequest(v35, (a1 + 24));
    v7 = *a5;
    *a5 = 0;
    (*(*v7 + 16))(v7, v35);
    (*(*v7 + 8))(v7);
    v9 = cf;
    cf = 0;
    if (v9)
    {
      CFRelease(v9);
    }

    v10 = v39;
    v39 = 0;
    if (v10)
    {
      if (*v10 == 1)
      {
        v17 = MEMORY[0x1CCA67F60]();
        bmalloc::api::tzoneFree(v17, v18);
        v11 = v38;
        v38 = 0;
        if (!v11)
        {
LABEL_19:
          v19 = v37;
          v37 = 0;
          if (v19)
          {
            if (atomic_fetch_add_explicit(v19, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v19, v8);
            }
          }

          WebCore::ResourceRequestBase::RequestData::~RequestData(v35, v8);
          return;
        }

LABEL_17:
        if (atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v11, v8);
        }

        goto LABEL_19;
      }

      --*v10;
    }

    v11 = v38;
    v38 = 0;
    if (!v11)
    {
      goto LABEL_19;
    }

    goto LABEL_17;
  }

  WebCore::ResourceRequest::ResourceRequest(v35);
  v12 = *a5;
  *a5 = 0;
  (*(*v12 + 16))(v12, v35);
  (*(*v12 + 8))(v12);
  v14 = cf;
  cf = 0;
  if (v14)
  {
    CFRelease(v14);
  }

  v15 = v39;
  v39 = 0;
  if (v15)
  {
    if (*v15 == 1)
    {
      v20 = MEMORY[0x1CCA67F60]();
      bmalloc::api::tzoneFree(v20, v21);
      v16 = v38;
      v38 = 0;
      if (!v16)
      {
        goto LABEL_27;
      }

LABEL_25:
      if (atomic_fetch_add_explicit(v16, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v16, v13);
      }

      goto LABEL_27;
    }

    --*v15;
  }

  v16 = v38;
  v38 = 0;
  if (v16)
  {
    goto LABEL_25;
  }

LABEL_27:
  v22 = v37;
  v37 = 0;
  if (v22 && atomic_fetch_add_explicit(v22, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v22, v13);
  }

  WebCore::ResourceRequestBase::RequestData::~RequestData(v35, v13);
  v23 = WebCore::ResourceRequestBase::url((a1 + 24));
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v24 = v35[0];
  v43 = 0;
  v25 = *v23;
  if (*v23)
  {
    atomic_fetch_add_explicit(v25, 2u, memory_order_relaxed);
  }

  v44 = v25;
  v26 = *(v23 + 24);
  v45 = *(v23 + 8);
  v46 = v26;
  if (v24)
  {
    atomic_fetch_add_explicit(v24, 2u, memory_order_relaxed);
  }

  v47 = v24;
  v48 = 0;
  v49 = 2;
  v50 = 0;
  v51 = 1;
  WebCore::ResourceResponseBase::ResourceResponseBase(v35);
  v41 = 0;
  v42 = 0;
  v36 = v36 & 0xF1 | 4;
  v28 = *(a1 + 288);
  *(a1 + 288) = 0;
  if (v28)
  {
    (*(*v28 + 16))(v28, &v43, v35);
    (*(*v28 + 8))(v28);
    v29 = v41;
    v41 = 0;
    if (v29)
    {
      CFRelease(v29);
    }
  }

  WebCore::ResourceResponseBase::~ResourceResponseBase(v35, v27);
  v31 = v50;
  v50 = 0;
  if (v31)
  {
    CFRelease(v31);
  }

  v32 = v47;
  v47 = 0;
  if (v32 && atomic_fetch_add_explicit(v32, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v32, v30);
  }

  v33 = v44;
  v44 = 0;
  if (v33 && atomic_fetch_add_explicit(v33, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v33, v30);
  }

  v34 = v43;
  v43 = 0;
  if (v34 && atomic_fetch_add_explicit(v34, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v34, v30);
  }

  if (v24 && atomic_fetch_add_explicit(v24, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v24, v30);
  }
}

WTF::StringImpl *PingHandle::didReceiveResponseAsync(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v6 = *a4;
  *a4 = 0;
  (*(*v6 + 16))(v6);
  (*(*v6 + 8))(v6);
  v13 = 0;
  v14 = 0;
  WTF::URL::invalidate(&v14);
  cf = 0;
  v15[0] = 0;
  *(v15 + 6) = 0;
  v17 = 1;
  v8 = *(a1 + 288);
  *(a1 + 288) = 0;
  if (v8)
  {
    (*(*v8 + 16))(v8, &v13, a3);
    (*(*v8 + 8))(v8);
    v9 = cf;
    cf = 0;
    if (v9)
    {
      CFRelease(v9);
    }
  }

  v10 = v15[0];
  v15[0] = 0;
  if (v10 && atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v10, v7);
  }

  v11 = v14;
  v14 = 0;
  if (v11 && atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v11, v7);
  }

  result = v13;
  v13 = 0;
  if (result)
  {
    if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(result, v7);
    }
  }

  return result;
}

WTF::StringImpl *PingHandle::canAuthenticateAgainstProtectionSpaceAsync(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v5 = *a4;
  *a4 = 0;
  (*(*v5 + 16))(v5, 0);
  (*(*v5 + 8))(v5);
  v6 = WebCore::ResourceRequestBase::url((a1 + 24));
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v7 = v18[0];
  v22 = 0;
  v8 = *v6;
  if (*v6)
  {
    atomic_fetch_add_explicit(v8, 2u, memory_order_relaxed);
  }

  v23 = v8;
  v9 = *(v6 + 24);
  v24 = *(v6 + 8);
  v25 = v9;
  if (v18[0])
  {
    atomic_fetch_add_explicit(v18[0], 2u, memory_order_relaxed);
  }

  v26 = v18[0];
  v27 = 0;
  v28 = 2;
  v29 = 0;
  v30 = 1;
  WebCore::ResourceResponseBase::ResourceResponseBase(v18);
  cf = 0;
  v21 = 0;
  v19 = v19 & 0xF1 | 4;
  v11 = *(a1 + 288);
  *(a1 + 288) = 0;
  if (v11)
  {
    (*(*v11 + 16))(v11, &v22, v18);
    (*(*v11 + 8))(v11);
    v12 = cf;
    cf = 0;
    if (v12)
    {
      CFRelease(v12);
    }
  }

  WebCore::ResourceResponseBase::~ResourceResponseBase(v18, v10);
  v14 = v29;
  v29 = 0;
  if (v14)
  {
    CFRelease(v14);
  }

  v15 = v26;
  v26 = 0;
  if (v15 && atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v15, v13);
  }

  v16 = v23;
  v23 = 0;
  if (v16 && atomic_fetch_add_explicit(v16, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v16, v13);
  }

  result = v22;
  v22 = 0;
  if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    result = WTF::StringImpl::destroy(result, v13);
  }

  if (v7)
  {
    if (atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(v7, v13);
    }
  }

  return result;
}

uint64_t WebCore::ResourceHandleClient::willCacheResponseAsync(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v4 = *a4;
  *a4 = 0;
  (*(*v4 + 16))(v4, a3);
  v5 = *(*v4 + 8);

  return v5(v4);
}

void WebCore::ResourceResponseBase::~ResourceResponseBase(WebCore::ResourceResponseBase *this, WTF::StringImpl *a2)
{
  v3 = *(this + 18);
  *(this + 18) = 0;
  if (v3 && atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v3, a2);
  }

  if (*(this + 128) == 1)
  {
    v4 = *(this + 15);
    *(this + 15) = 0;
    if (v4)
    {
      CFRelease(v4);
    }
  }

  v5 = *(this + 14);
  *(this + 14) = 0;
  if (!v5 || atomic_fetch_add(v5, 0xFFFFFFFF) != 1)
  {
    WebCore::HTTPHeaderMap::~HTTPHeaderMap((this + 80), a2);
    v7 = *(this + 9);
    *(this + 9) = 0;
    if (!v7)
    {
      goto LABEL_12;
    }

    goto LABEL_10;
  }

  atomic_store(1u, v5);
  v12 = *(v5 + 128);
  *(v5 + 128) = 0;
  if (v12)
  {
    if (*v12 == 1)
    {
      WebCore::AdditionalNetworkLoadMetricsForWebInspector::~AdditionalNetworkLoadMetricsForWebInspector(v12, a2);
      WTF::fastFree(v13, v14);
    }

    else
    {
      --*v12;
    }
  }

  v15 = *(v5 + 96);
  *(v5 + 96) = 0;
  if (v15 && atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v15, a2);
  }

  WTF::fastFree(v5, a2);
  WebCore::HTTPHeaderMap::~HTTPHeaderMap((this + 80), v16);
  v7 = *(this + 9);
  *(this + 9) = 0;
  if (v7)
  {
LABEL_10:
    if (atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v7, v6);
    }
  }

LABEL_12:
  v8 = *(this + 8);
  *(this + 8) = 0;
  if (v8 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v8, v6);
  }

  v9 = *(this + 7);
  *(this + 7) = 0;
  if (v9 && atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v9, v6);
  }

  v10 = *(this + 5);
  *(this + 5) = 0;
  if (v10 && atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v10, v6);
  }

  v11 = *this;
  *this = 0;
  if (v11)
  {
    if (atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v11, v6);
    }
  }
}

void WebCore::AdditionalNetworkLoadMetricsForWebInspector::~AdditionalNetworkLoadMetricsForWebInspector(WebCore::AdditionalNetworkLoadMetricsForWebInspector *this, WTF::StringImpl *a2)
{
  WebCore::HTTPHeaderMap::~HTTPHeaderMap((this + 40), a2);
  v4 = *(this + 4);
  *(this + 4) = 0;
  if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v4, v3);
  }

  v5 = *(this + 3);
  *(this + 3) = 0;
  if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v5, v3);
  }

  v6 = *(this + 2);
  *(this + 2) = 0;
  if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v6, v3);
  }

  v7 = *(this + 1);
  *(this + 1) = 0;
  if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v7, v3);
  }

  if (*this != 1)
  {
    __break(0xC471u);
  }
}

uint64_t WTF::Detail::CallableWrapper<WebCore::Timer::Timer<PingHandle,PingHandle>(PingHandle &,void (PingHandle::*)(void))::{lambda(void)#1},void>::call(void *a1)
{
  v2 = a1[1];
  v1 = a1[2];
  ++*(v2 + 2);
  v3 = a1[3];
  v4 = (v2 + (v3 >> 1));
  if (v3)
  {
    result = (*(*v4 + v1))();
    v6 = *(v2 + 2) - 1;
    if (*(v2 + 2) != 1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    result = v1(v4);
    v6 = *(v2 + 2) - 1;
    if (*(v2 + 2) != 1)
    {
LABEL_3:
      *(v2 + 2) = v6;
      return result;
    }
  }

  PingHandle::~PingHandle(v2);

  return bmalloc::api::tzoneFree(v7, v8);
}

uint64_t WTF::ThreadSafeRefCounted<WebCore::SecurityOrigin,(WTF::DestructionThread)0>::deref(uint64_t result, WTF::StringImpl *a2)
{
  add = atomic_fetch_add(result, 0xFFFFFFFF);
  if (add == 1)
  {
    atomic_store(add, result);
    v4 = *(result + 48);
    *(result + 48) = 0;
    v8 = result;
    if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v4, a2);
      result = v8;
    }

    v5 = *(result + 40);
    *(result + 40) = 0;
    if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v5, a2);
      result = v8;
    }

    if (!*(result + 32))
    {
      v6 = *(result + 16);
      *(result + 16) = 0;
      if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v6, a2);
        result = v8;
      }

      v7 = *(result + 8);
      *(result + 8) = 0;
      if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v7, a2);
        result = v8;
      }
    }

    *(result + 32) = -1;

    return WTF::fastFree(result, a2);
  }

  return result;
}

void *WTF::Detail::CallableWrapper<PingHandle::start(WebCore::NetworkingContext *,WebCore::ResourceRequest const&,BOOL,BOOL,WTF::CompletionHandler<void ()(WebCore::ResourceError const&,WebCore::ResourceResponse const&)> &&)::{lambda(WebCore::ResourceError const&,WebCore::ResourceResponse const&)#1},void,WebCore::ResourceError const&,WebCore::ResourceResponse const&>::~CallableWrapper(void *a1)
{
  *a1 = &unk_1F472B0D8;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = a1[1];
  a1[1] = 0;
  if (!v3)
  {
    return a1;
  }

  if (*(v3 + 2) != 1)
  {
    --*(v3 + 2);
    return a1;
  }

  PingHandle::~PingHandle(v3);
  bmalloc::api::tzoneFree(v5, v6);
  return a1;
}

uint64_t WTF::Detail::CallableWrapper<PingHandle::start(WebCore::NetworkingContext *,WebCore::ResourceRequest const&,BOOL,BOOL,WTF::CompletionHandler<void ()(WebCore::ResourceError const&,WebCore::ResourceResponse const&)> &&)::{lambda(WebCore::ResourceError const&,WebCore::ResourceResponse const&)#1},void,WebCore::ResourceError const&,WebCore::ResourceResponse const&>::~CallableWrapper(WTF *this, void *a2)
{
  *this = &unk_1F472B0D8;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(this + 1);
  *(this + 1) = 0;
  if (!v4)
  {
    goto LABEL_6;
  }

  if (*(v4 + 2) != 1)
  {
    --*(v4 + 2);
LABEL_6:
    v5 = this;

    return WTF::fastFree(v5, a2);
  }

  PingHandle::~PingHandle(v4);
  bmalloc::api::tzoneFree(v7, v8);
  v5 = this;

  return WTF::fastFree(v5, a2);
}

uint64_t WTF::Detail::CallableWrapper<PingHandle::start(WebCore::NetworkingContext *,WebCore::ResourceRequest const&,BOOL,BOOL,WTF::CompletionHandler<void ()(WebCore::ResourceError const&,WebCore::ResourceResponse const&)> &&)::{lambda(WebCore::ResourceError const&,WebCore::ResourceResponse const&)#1},void,WebCore::ResourceError const&,WebCore::ResourceResponse const&>::call(uint64_t a1)
{
  v1 = *(a1 + 16);
  *(a1 + 16) = 0;
  (*(*v1 + 16))(v1);
  v2 = *(*v1 + 8);

  return v2(v1);
}

void WebCore::EventListenerMap::~EventListenerMap(WebCore::EventListenerMap *this, void *a2)
{
  v3 = *(this + 3);
  v4 = *this;
  if (!v3)
  {
    goto LABEL_27;
  }

  v5 = v4 + 32 * v3;
  do
  {
    v6 = *(v4 + 20);
    v7 = *(v4 + 8);
    if (v6)
    {
      v8 = 8 * v6;
      while (1)
      {
        v9 = *v7;
        *v7 = 0;
        if (v9)
        {
          if (*v9 == 1)
          {
            v10 = v9[1];
            v9[1] = 0;
            if (v10)
            {
              if (v10[4] != 1)
              {
                --v10[4];
                goto LABEL_13;
              }

              v11 = v9;
              (*(*v10 + 8))(v10);
              v9 = v11;
              if (*v11 != 1)
              {
LABEL_30:
                __break(0xC471u);
                return;
              }
            }

            else
            {
LABEL_13:
              if (*v9 != 1)
              {
                goto LABEL_30;
              }
            }

            WTF::fastFree(v9, a2);
            goto LABEL_7;
          }

          --*v9;
        }

LABEL_7:
        v7 = (v7 + 8);
        v8 -= 8;
        if (!v8)
        {
          v7 = *(v4 + 8);
          break;
        }
      }
    }

    if ((v4 + 24) != v7 && v7 != 0)
    {
      *(v4 + 8) = 0;
      *(v4 + 16) = 0;
      WTF::fastFree(v7, a2);
    }

    v13 = *v4;
    *v4 = 0;
    if (v13 && atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v13, a2);
    }

    v4 += 32;
  }

  while (v4 != v5);
  v4 = *this;
LABEL_27:
  if (v4)
  {
    *this = 0;
    *(this + 2) = 0;
    WTF::fastFree(v4, a2);
  }
}

uint64_t WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector<unsigned char const,18446744073709551615ul>(uint64_t result, __int128 *a2, WTF *this)
{
  *result = 0;
  *(result + 8) = 0;
  *(result + 12) = this;
  if (this)
  {
    if (this >> 32)
    {
      __break(0xC471u);
      return result;
    }

    v5 = result;
    v6 = a2;
    v7 = WTF::fastMalloc(this);
    result = v5;
    *(v5 + 8) = this;
    *v5 = v7;
    if (this < 8 || (v7 - a2) < 0x20)
    {
      goto LABEL_16;
    }

    if (this < 0x20)
    {
      v8 = 0;
      goto LABEL_11;
    }

    v8 = (this & 0xFFFFFFE0);
    v9 = a2 + 1;
    v10 = v7 + 16;
    v11 = v8;
    do
    {
      v12 = *v9;
      *(v10 - 1) = *(v9 - 1);
      *v10 = v12;
      v9 += 2;
      v10 += 2;
      v11 = (v11 - 32);
    }

    while (v11);
    if (this != v8)
    {
      if ((this & 0x18) == 0)
      {
        v6 = (v8 + a2);
        v7 = v8 + v7;
        goto LABEL_16;
      }

LABEL_11:
      v13 = &v7[this & 0xFFFFFFF8];
      v6 = (a2 + (this & 0xFFFFFFF8));
      v14 = (v8 + a2);
      v15 = (v8 + v7);
      v16 = v8 - (this & 0xFFFFFFF8);
      do
      {
        v17 = *v14++;
        *v15++ = v17;
        v16 += 8;
      }

      while (v16);
      v7 = v13;
      if (this == (this & 0xFFFFFFF8))
      {
        return result;
      }

      do
      {
LABEL_16:
        v18 = *v6;
        v6 = (v6 + 1);
        *v7++ = v18;
      }

      while (v6 != (this + a2));
    }
  }

  return result;
}

uint64_t WTF::NativePromise<WTF::Ref<WebCore::WebTransportSession,WTF::RawPtrTraits<WebCore::WebTransportSession>,WTF::DefaultRefDerefTraits<WebCore::WebTransportSession>>,void,0u>::assertIsDead(uint64_t result)
{
  v1 = 0;
  v2 = (result + 48);
  atomic_compare_exchange_strong_explicit((result + 48), &v1, 1u, memory_order_acquire, memory_order_acquire);
  if (v1)
  {
    v7 = result;
    MEMORY[0x1CCA63990](result + 48);
    result = v7;
    v3 = *(v7 + 116);
    if (!v3)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v3 = *(result + 116);
    if (!v3)
    {
      goto LABEL_9;
    }
  }

  v4 = *(result + 104);
  v5 = 40 * v3;
  do
  {
    v6 = *v4;
    if (*v4)
    {
      atomic_fetch_add(v6 + 2, 1u);
      result = WTF::NativePromise<WTF::Ref<WebCore::WebTransportSession,WTF::RawPtrTraits<WebCore::WebTransportSession>,WTF::DefaultRefDerefTraits<WebCore::WebTransportSession>>,void,0u>::assertIsDead(v6);
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

uint64_t WTF::NativePromise<WTF::Ref<WebCore::WebTransportSession,WTF::RawPtrTraits<WebCore::WebTransportSession>,WTF::DefaultRefDerefTraits<WebCore::WebTransportSession>>,void,0u>::~NativePromise(uint64_t a1)
{
  v1 = WTF::NativePromise<WTF::Ref<WebCore::WebTransportSession,WTF::RawPtrTraits<WebCore::WebTransportSession>,WTF::DefaultRefDerefTraits<WebCore::WebTransportSession>>,void,0u>::~NativePromise(a1);

  return WTF::fastFree(v1, v2);
}

uint64_t WTF::LogArgument<WTF::NativePromise<WTF::Ref<WebCore::WebTransportSession,WTF::RawPtrTraits<WebCore::WebTransportSession>,WTF::DefaultRefDerefTraits<WebCore::WebTransportSession>>,void,0u>>::toString(void *a1, uint64_t a2)
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

unint64_t WTF::tryMakeStringImplFromAdaptersInternal<WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>>@<X0>(unint64_t result@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  if (!a2)
  {
    if (!result)
    {
      goto LABEL_14;
    }

    if (result > 0x7FFFFFEF)
    {
      goto LABEL_13;
    }

    v21 = result;
    result = WTF::tryFastCompactMalloc(((2 * result) + 20));
    v9 = v120;
    if (!v120)
    {
      goto LABEL_15;
    }

    v22 = (v120 + 20);
    *v120 = 2;
    *(v120 + 4) = v21;
    *(v120 + 8) = v120 + 20;
    *(v120 + 16) = 0;
    v23 = a3;
    if (!a3)
    {
      v27 = a4;
      goto LABEL_81;
    }

    v24 = v21;
    v25 = *(a3 + 8);
    v26 = *(a3 + 4);
    v27 = a4;
    if ((*(a3 + 16) & 4) == 0)
    {
      if (v26)
      {
        if (v26 == 1)
        {
          *v22 = v25->i16[0];
        }

        else
        {
          result = memcpy((v120 + 20), v25, 2 * v26);
          v23 = a3;
          v24 = v21;
          v27 = a4;
        }
      }

LABEL_80:
      v23 = *(v23 + 4);
      if (v23 > v24)
      {
        goto LABEL_137;
      }

LABEL_81:
      if (!v27)
      {
        goto LABEL_15;
      }

      result = &v22[v23];
      v52 = *(v27 + 8);
      v64 = *(v27 + 4);
      if ((*(v27 + 16) & 4) == 0)
      {
        if (!v64)
        {
          goto LABEL_15;
        }

        if (v64 == 1)
        {
          *result = *v52;
          goto LABEL_15;
        }

        v53 = 2 * v64;
        goto LABEL_98;
      }

      v65 = (result + 2 * v64);
      if (v64 >= 0x40)
      {
        v66 = result + 2 * (v64 & 0xFFFFFFC0);
        v67 = 0uLL;
        do
        {
          v122.val[0] = *v52;
          v68 = *(v52 + 16);
          v124.val[0] = *(v52 + 32);
          v69 = *(v52 + 48);
          v52 += 64;
          v70 = v69;
          v124.val[1] = 0uLL;
          v126.val[0] = v68;
          v122.val[1] = 0uLL;
          v71 = result;
          vst2q_s8(v71, v122);
          v71 += 32;
          v126.val[1] = 0uLL;
          vst2q_s8(v71, v126);
          v72 = (result + 64);
          vst2q_s8(v72, v124);
          v73 = (result + 96);
          vst2q_s8(v73, *(&v67 - 1));
          result += 128;
        }

        while (result != v66);
        result = v66;
      }

      if (result == v65)
      {
        goto LABEL_15;
      }

      v74 = v120 + 2 * (v23 + v64) - result + 18;
      if (v74 < 0xE || result < v52 + (v74 >> 1) + 1 && v52 < (v74 & 0xFFFFFFFFFFFFFFFELL) + result + 2)
      {
        v75 = v52;
        v76 = result;
        goto LABEL_95;
      }

      v78 = (v74 >> 1) + 1;
      if (v74 >= 0x3E)
      {
        v79 = v78 & 0xFFFFFFFFFFFFFFE0;
        v110 = (result + 32);
        v111 = (v52 + 16);
        v112 = v78 & 0xFFFFFFFFFFFFFFE0;
        do
        {
          v113 = *v111[-2].i8;
          v114 = vmovl_u8(*v111);
          v115 = vmovl_high_u8(*v111->i8);
          v110[-2] = vmovl_u8(*v113.i8);
          v110[-1] = vmovl_high_u8(v113);
          *v110 = v114;
          v110[1] = v115;
          v110 += 4;
          v111 += 4;
          v112 -= 32;
        }

        while (v112);
        if (v78 == v79)
        {
          goto LABEL_15;
        }

        if ((v78 & 0x18) == 0)
        {
          v76 = (result + 2 * v79);
          v75 = (v52 + v79);
          do
          {
LABEL_95:
            v77 = *v75++;
            *v76++ = v77;
          }

          while (v76 != v65);
          goto LABEL_15;
        }
      }

      else
      {
        v79 = 0;
      }

      v75 = (v52 + (v78 & 0xFFFFFFFFFFFFFFF8));
      v76 = (result + 2 * (v78 & 0xFFFFFFFFFFFFFFF8));
      v116 = (result + 2 * v79);
      v117 = (v52 + v79);
      v118 = v79 - (v78 & 0xFFFFFFFFFFFFFFF8);
      do
      {
        v119 = *v117++;
        *v116++ = vmovl_u8(v119);
        v118 += 8;
      }

      while (v118);
      if (v78 == (v78 & 0xFFFFFFFFFFFFFFF8))
      {
        goto LABEL_15;
      }

      goto LABEL_95;
    }

    v28 = &v22[v26];
    if (v26 < 0x40)
    {
      v29 = v120 + 20;
    }

    else
    {
      v29 = &v22[v26 & 0xFFFFFFC0];
      v30 = 0uLL;
      v31 = (v120 + 20);
      do
      {
        v121.val[0] = *v25;
        v32 = v25[1];
        v123.val[0] = v25[2];
        v33 = v25[3];
        v25 += 4;
        v34 = v33;
        v123.val[1] = 0uLL;
        v125.val[0] = v32;
        v121.val[1] = 0uLL;
        v35 = v31;
        vst2q_s8(v35, v121);
        v35 += 32;
        v125.val[1] = 0uLL;
        vst2q_s8(v35, v125);
        v36 = v31 + 64;
        vst2q_s8(v36, v123);
        v37 = v31 + 96;
        vst2q_s8(v37, *(&v30 - 1));
        v31 += 128;
      }

      while (v31 != v29);
    }

    if (v29 == v28)
    {
      goto LABEL_80;
    }

    v45 = v120 + 2 * v26 - v29 + 18;
    if (v45 < 0xE || (v29 < v25->u64 + (v45 >> 1) + 1 ? (v46 = v25 >= (v45 & 0xFFFFFFFFFFFFFFFELL) + v29 + 2) : (v46 = 1), !v46))
    {
      v49 = v25;
      v50 = v29;
      goto LABEL_55;
    }

    v47 = (v45 >> 1) + 1;
    if (v45 >= 0x3E)
    {
      v48 = v47 & 0xFFFFFFFFFFFFFFE0;
      v101 = (v29 + 32);
      v102 = &v25[1];
      v103 = v47 & 0xFFFFFFFFFFFFFFE0;
      do
      {
        v104 = *v102[-2].i8;
        v105 = vmovl_u8(*v102);
        v106 = vmovl_high_u8(*v102->i8);
        v101[-2] = vmovl_u8(*v104.i8);
        v101[-1] = vmovl_high_u8(v104);
        *v101 = v105;
        v101[1] = v106;
        v101 += 4;
        v102 += 4;
        v103 -= 32;
      }

      while (v103);
      if (v47 == v48)
      {
        goto LABEL_80;
      }

      if ((v47 & 0x18) == 0)
      {
        v50 = (v29 + 2 * v48);
        v49 = (v25 + v48);
        goto LABEL_55;
      }
    }

    else
    {
      v48 = 0;
    }

    v49 = (v25 + (v47 & 0xFFFFFFFFFFFFFFF8));
    v50 = (v29 + 2 * (v47 & 0xFFFFFFFFFFFFFFF8));
    v107 = (v29 + 2 * v48);
    result = v25->u64 + v48;
    v108 = v48 - (v47 & 0xFFFFFFFFFFFFFFF8);
    do
    {
      v109 = *result;
      result += 8;
      *v107++ = vmovl_u8(v109);
      v108 += 8;
    }

    while (v108);
    if (v47 == (v47 & 0xFFFFFFFFFFFFFFF8))
    {
      goto LABEL_80;
    }

    do
    {
LABEL_55:
      v51 = v49->u8[0];
      v49 = (v49 + 1);
      *v50++ = v51;
    }

    while (v50 != v28);
    goto LABEL_80;
  }

  if (!result)
  {
LABEL_14:
    v9 = MEMORY[0x1E696EB88];
    atomic_fetch_add_explicit(MEMORY[0x1E696EB88], 2u, memory_order_relaxed);
    goto LABEL_15;
  }

  if ((result & 0x80000000) != 0)
  {
LABEL_13:
    v9 = 0;
    goto LABEL_15;
  }

  v8 = result;
  result = WTF::tryFastCompactMalloc((result + 20));
  v9 = v120;
  if (!v120)
  {
    goto LABEL_15;
  }

  v10 = (v120 + 20);
  *v120 = 2;
  *(v120 + 4) = v8;
  *(v120 + 8) = v120 + 20;
  *(v120 + 16) = 4;
  v11 = a3;
  if (!a3)
  {
    v15 = a4;
LABEL_59:
    if (v15)
    {
      result = &v10[v11];
      v52 = *(v15 + 8);
      v53 = *(v15 + 4);
      if ((*(v15 + 16) & 4) == 0)
      {
        v54 = (result + v53);
        if (v53 >= 0x10)
        {
          v55 = result + (v53 & 0xFFFFFFF0);
          do
          {
            v56 = vld2q_s8(v52);
            v52 += 32;
            *result = v56;
            result += 16;
          }

          while (result != v55);
        }

        if (result == v54)
        {
          goto LABEL_15;
        }

        v57 = v11 + v120 + v53;
        v58 = v57 - result + 20;
        if (v58 < 4 || (result < v52 - 2 * result + 2 * v57 + 40 ? (v59 = v52 >= v57 + 20) : (v59 = 1), !v59))
        {
          v61 = result;
          v62 = v52;
          goto LABEL_77;
        }

        if (v58 >= 0x20)
        {
          v60 = v58 & 0xFFFFFFFFFFFFFFE0;
          v90 = (v52 + 32);
          v91 = (result + 16);
          v92 = v58 & 0xFFFFFFFFFFFFFFE0;
          do
          {
            v94 = v90[-2];
            v93 = v90[-1];
            v96 = *v90;
            v95 = v90[1];
            v90 += 4;
            v91[-1] = vuzp1q_s8(v94, v93);
            *v91 = vuzp1q_s8(v96, v95);
            v91 += 2;
            v92 -= 32;
          }

          while (v92);
          if (v58 == v60)
          {
            goto LABEL_15;
          }

          if ((v58 & 0x1C) == 0)
          {
            v62 = (v52 + 2 * v60);
            v61 = (result + v60);
            do
            {
LABEL_77:
              v63 = *v62;
              v62 += 2;
              *v61++ = v63;
            }

            while (v61 != v54);
            goto LABEL_15;
          }
        }

        else
        {
          v60 = 0;
        }

        v61 = (result + (v58 & 0xFFFFFFFFFFFFFFFCLL));
        v62 = (v52 + 2 * (v58 & 0xFFFFFFFFFFFFFFFCLL));
        v97 = (v52 + 2 * v60);
        v98 = (result + v60);
        v99 = v60 - (v58 & 0xFFFFFFFFFFFFFFFCLL);
        do
        {
          v100 = *v97++;
          *v98++ = vuzp1_s8(v100, v100).u32[0];
          v99 += 4;
        }

        while (v99);
        if (v58 == (v58 & 0xFFFFFFFFFFFFFFFCLL))
        {
          goto LABEL_15;
        }

        goto LABEL_77;
      }

      if (v53)
      {
        if (v53 == 1)
        {
          *result = *v52;
          goto LABEL_15;
        }

LABEL_98:
        result = memcpy(result, v52, v53);
      }
    }

LABEL_15:
    *a5 = v9;
    return result;
  }

  v12 = v8;
  v13 = *(a3 + 8);
  v14 = *(a3 + 4);
  v15 = a4;
  if ((*(a3 + 16) & 4) != 0)
  {
    if (v14)
    {
      if (v14 == 1)
      {
        *v10 = v13->i8[0];
      }

      else
      {
        result = memcpy((v120 + 20), v13, v14);
        v11 = a3;
        v12 = v8;
        v15 = a4;
      }
    }
  }

  else
  {
    v16 = &v10[v14];
    if (v14 < 0x10)
    {
      v17 = v120 + 20;
    }

    else
    {
      v17 = v120 + 20;
      do
      {
        v18 = vld2q_s8(v13->i8);
        v13 += 2;
        *v17 = v18;
        v17 += 16;
      }

      while (v17 != &v10[v14 & 0xFFFFFFF0]);
    }

    if (v17 != v16)
    {
      v38 = v120 + v14;
      v39 = v120 + v14 - v17 + 20;
      if (v39 < 4 || (v17 < &v13[2].u64[1] + 2 * v38 + -2 * v17 ? (v40 = v13 >= v38 + 20) : (v40 = 1), !v40))
      {
        v42 = v17;
        v43 = v13;
        goto LABEL_42;
      }

      if (v39 >= 0x20)
      {
        v41 = v39 & 0xFFFFFFFFFFFFFFE0;
        v80 = v13 + 2;
        v81 = (v17 + 16);
        v82 = v39 & 0xFFFFFFFFFFFFFFE0;
        do
        {
          v84 = v80[-2];
          v83 = v80[-1];
          v86 = *v80;
          v85 = v80[1];
          v80 += 4;
          v81[-1] = vuzp1q_s8(v84, v83);
          *v81 = vuzp1q_s8(v86, v85);
          v81 += 2;
          v82 -= 32;
        }

        while (v82);
        if (v39 == v41)
        {
          goto LABEL_58;
        }

        if ((v39 & 0x1C) == 0)
        {
          v43 = (v13 + 2 * v41);
          v42 = (v17 + v41);
          do
          {
LABEL_42:
            v44 = v43->i8[0];
            v43 = (v43 + 2);
            *v42++ = v44;
          }

          while (v42 != v16);
          goto LABEL_58;
        }
      }

      else
      {
        v41 = 0;
      }

      v42 = (v17 + (v39 & 0xFFFFFFFFFFFFFFFCLL));
      v43 = (v13 + 2 * (v39 & 0xFFFFFFFFFFFFFFFCLL));
      result = v13 + 2 * v41;
      v87 = (v17 + v41);
      v88 = v41 - (v39 & 0xFFFFFFFFFFFFFFFCLL);
      do
      {
        v89 = *result;
        result += 8;
        *v87++ = vuzp1_s8(v89, v89).u32[0];
        v88 += 4;
      }

      while (v88);
      if (v39 != (v39 & 0xFFFFFFFFFFFFFFFCLL))
      {
        goto LABEL_42;
      }
    }
  }

LABEL_58:
  v11 = *(v11 + 4);
  if (v11 <= v12)
  {
    goto LABEL_59;
  }

LABEL_137:
  __break(1u);
  return result;
}

unint64_t WTF::tryMakeStringImplFromAdaptersInternal<WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<char,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<char,void>>@<X0>(unint64_t result@<X0>, int a2@<W1>, _BYTE *a3@<X2>, size_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X6>, char a8@<W7>, void *a9@<X8>)
{
  v9 = result;
  if (!a2)
  {
    if (!result)
    {
      goto LABEL_11;
    }

    if (result > 0x7FFFFFEF)
    {
      goto LABEL_10;
    }

    v24 = result;
    v31 = a9;
    result = WTF::tryFastCompactMalloc((2 * result + 20));
    v17 = v64;
    if (!v64)
    {
LABEL_31:
      a9 = v31;
      goto LABEL_36;
    }

    v32 = v64 + 20;
    *v64 = 2;
    *(v64 + 4) = v24;
    *(v64 + 8) = v64 + 20;
    *(v64 + 16) = 0;
    v33 = v64 + 20 + 2 * a4;
    if (a4 < 0x40)
    {
      v34 = v64 + 20;
      v37 = a7;
      v38 = a5;
      v39 = a8;
      v40 = a6;
      v41 = a3;
    }

    else
    {
      v34 = v32 + 2 * (a4 & 0x7FFFFFFFFFFFFFC0);
      v35 = 0uLL;
      v36 = (v64 + 20);
      v37 = a7;
      v38 = a5;
      v39 = a8;
      v40 = a6;
      v41 = a3;
      do
      {
        v65.val[0] = *v41;
        v42 = *(v41 + 16);
        v66.val[0] = *(v41 + 32);
        v43 = *(v41 + 48);
        v41 += 64;
        v44 = v43;
        v66.val[1] = 0uLL;
        v67.val[0] = v42;
        v65.val[1] = 0uLL;
        v45 = v36;
        vst2q_s8(v45, v65);
        v45 += 32;
        v67.val[1] = 0uLL;
        vst2q_s8(v45, v67);
        v46 = v36 + 64;
        vst2q_s8(v46, v66);
        v47 = v36 + 96;
        vst2q_s8(v47, *(&v35 - 1));
        v36 += 128;
      }

      while (v36 != v34);
    }

    if (v34 == v33)
    {
LABEL_29:
      if (v9 < a4)
      {
        goto LABEL_46;
      }

      result = WTF::stringTypeAdapterAccumulator<char16_t,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<char,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<char,void>>((v32 + 2 * a4), v9 - a4, v38, v40, v37, v39);
      goto LABEL_31;
    }

    v48 = v64 + 2 * a4 - v34 + 18;
    if (v48 < 0xE || (v34 < v41 + (v48 >> 1) + 1 ? (v49 = v41 >= (v48 & 0xFFFFFFFFFFFFFFFELL) + v34 + 2) : (v49 = 1), !v49))
    {
      v51 = v41;
      v52 = v34;
      goto LABEL_28;
    }

    v50 = (v48 >> 1) + 1;
    if (v48 >= 0x3E)
    {
      result = v50 & 0xFFFFFFFFFFFFFFE0;
      v54 = (v34 + 32);
      v55 = (v41 + 16);
      v56 = v50 & 0xFFFFFFFFFFFFFFE0;
      do
      {
        v57 = *v55[-2].i8;
        v58 = vmovl_u8(*v55);
        v59 = vmovl_high_u8(*v55->i8);
        v54[-2] = vmovl_u8(*v57.i8);
        v54[-1] = vmovl_high_u8(v57);
        *v54 = v58;
        v54[1] = v59;
        v54 += 4;
        v55 += 4;
        v56 -= 32;
      }

      while (v56);
      if (v50 == result)
      {
        goto LABEL_29;
      }

      if ((v50 & 0x18) == 0)
      {
        v52 = (v34 + 2 * result);
        v51 = (v41 + result);
        do
        {
LABEL_28:
          v53 = *v51++;
          *v52++ = v53;
        }

        while (v52 != v33);
        goto LABEL_29;
      }
    }

    else
    {
      result = 0;
    }

    v51 = (v41 + (v50 & 0xFFFFFFFFFFFFFFF8));
    v52 = (v34 + 2 * (v50 & 0xFFFFFFFFFFFFFFF8));
    v60 = (v34 + 2 * result);
    v61 = (v41 + result);
    result -= v50 & 0xFFFFFFFFFFFFFFF8;
    do
    {
      v62 = *v61++;
      *v60++ = vmovl_u8(v62);
      result += 8;
    }

    while (result);
    if (v50 == (v50 & 0xFFFFFFFFFFFFFFF8))
    {
      goto LABEL_29;
    }

    goto LABEL_28;
  }

  if (!result)
  {
LABEL_11:
    v17 = MEMORY[0x1E696EB88];
    atomic_fetch_add_explicit(MEMORY[0x1E696EB88], 2u, memory_order_relaxed);
    goto LABEL_36;
  }

  if ((result & 0x80000000) != 0)
  {
LABEL_10:
    v17 = 0;
LABEL_36:
    *a9 = v17;
    return result;
  }

  v10 = result;
  v63 = a9;
  result = WTF::tryFastCompactMalloc((result + 20));
  v17 = v64;
  if (!v64)
  {
LABEL_35:
    a9 = v63;
    goto LABEL_36;
  }

  v18 = (v64 + 20);
  *v64 = 2;
  *(v64 + 4) = v10;
  *(v64 + 8) = v64 + 20;
  *(v64 + 16) = 4;
  v19 = a7;
  v20 = a5;
  v21 = a8;
  v22 = a6;
  v23 = a4;
  if (a4)
  {
    if (a4 == 1)
    {
      *v18 = *a3;
    }

    else
    {
      result = memcpy((v64 + 20), a3, a4);
      v23 = a4;
      v22 = a6;
      v21 = a8;
      v20 = a5;
      v19 = a7;
    }
  }

  if (v9 >= v23)
  {
    result = WTF::stringTypeAdapterAccumulator<unsigned char,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<char,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<char,void>>(&v18[v23], v9 - v23, v20, v22, v19, v21);
    goto LABEL_35;
  }

LABEL_46:
  __break(1u);
  return result;
}

int8x16_t *WTF::stringTypeAdapterAccumulator<unsigned char,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<char,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<char,void>>(int8x16_t *result, unint64_t a2, uint64_t a3, __int8 a4, uint64_t a5, char a6)
{
  if (!a3)
  {
    v11 = 0;
    goto LABEL_26;
  }

  v6 = *(a3 + 8);
  v7 = *(a3 + 4);
  if ((*(a3 + 16) & 4) == 0)
  {
    v8 = (result + v7);
    if (v7 < 0x10)
    {
      v9 = result;
      if (result == v8)
      {
        goto LABEL_25;
      }
    }

    else
    {
      v9 = result;
      do
      {
        v10 = vld2q_s8(v6);
        v6 += 32;
        *v9++ = v10;
      }

      while (v9 != &result->i8[v7 & 0xFFFFFFF0]);
      if (v9 == v8)
      {
        goto LABEL_25;
      }
    }

    v12 = &result->i8[v7];
    v13 = &result->i8[v7] - v9;
    if (v13 < 4 || (v9 < &v6[2 * v13] ? (v14 = v6 >= v12) : (v14 = 1), !v14))
    {
      v16 = v9;
      v17 = v6;
      goto LABEL_22;
    }

    if (v13 >= 0x20)
    {
      v15 = v13 & 0xFFFFFFFFFFFFFFE0;
      v44 = (v6 + 32);
      v45 = v9 + 1;
      v46 = v13 & 0xFFFFFFFFFFFFFFE0;
      do
      {
        v48 = v44[-2];
        v47 = v44[-1];
        v50 = *v44;
        v49 = v44[1];
        v44 += 4;
        v45[-1] = vuzp1q_s8(v48, v47);
        *v45 = vuzp1q_s8(v50, v49);
        v45 += 2;
        v46 -= 32;
      }

      while (v46);
      if (v13 == v15)
      {
        goto LABEL_25;
      }

      if ((v13 & 0x1C) == 0)
      {
        v17 = &v6[2 * v15];
        v16 = (v9 + v15);
        goto LABEL_22;
      }
    }

    else
    {
      v15 = 0;
    }

    v16 = (v9 + (v13 & 0xFFFFFFFFFFFFFFFCLL));
    v17 = &v6[2 * (v13 & 0xFFFFFFFFFFFFFFFCLL)];
    v51 = &v6[2 * v15];
    v52 = (v9->i32 + v15);
    v53 = v15 - (v13 & 0xFFFFFFFFFFFFFFFCLL);
    do
    {
      v54 = *v51++;
      *v52++ = vuzp1_s8(v54, v54).u32[0];
      v53 += 4;
    }

    while (v53);
    if (v13 == (v13 & 0xFFFFFFFFFFFFFFFCLL))
    {
      goto LABEL_25;
    }

    do
    {
LABEL_22:
      v18 = *v17;
      v17 += 2;
      v16->i8[0] = v18;
      v16 = (v16 + 1);
    }

    while (v16 != v8);
    goto LABEL_25;
  }

  if (v7)
  {
    if (v7 == 1)
    {
      result->i8[0] = *v6;
    }

    else
    {
      v19 = result;
      v20 = a2;
      v21 = a3;
      v22 = a6;
      v23 = a5;
      v24 = a4;
      memcpy(result, *(a3 + 8), *(a3 + 4));
      a3 = v21;
      a4 = v24;
      a2 = v20;
      result = v19;
      a5 = v23;
      a6 = v22;
    }
  }

LABEL_25:
  v11 = *(a3 + 4);
  if (a2 < v11)
  {
    goto LABEL_72;
  }

LABEL_26:
  if (a2 == v11)
  {
    goto LABEL_72;
  }

  result->i8[v11] = a4;
  v25 = &result->i8[v11 + 1];
  v26 = a2 + ~v11;
  if (a5)
  {
    v27 = *(a5 + 8);
    v28 = *(a5 + 4);
    if ((*(a5 + 16) & 4) != 0)
    {
      if (v28)
      {
        if (v28 == 1)
        {
          *v25 = v27->i8[0];
        }

        else
        {
          v42 = a6;
          v43 = a5;
          result = memcpy(&result->i8[v11 + 1], v27, v28);
          a5 = v43;
          a6 = v42;
        }
      }

LABEL_51:
      v32 = *(a5 + 4);
      if (v26 < v32)
      {
        goto LABEL_72;
      }

      goto LABEL_52;
    }

    v29 = (v25 + v28);
    if (v28 < 0x10)
    {
      v30 = &result->i8[v11 + 1];
      if (v25 == v29)
      {
        goto LABEL_51;
      }
    }

    else
    {
      v30 = &result->i8[v11 + 1];
      do
      {
        v31 = vld2q_s8(v27->i8);
        v27 += 2;
        *v30++ = v31;
      }

      while (v30 != (v25 + (v28 & 0xFFFFFFF0)));
      if (v30 == v29)
      {
        goto LABEL_51;
      }
    }

    v33 = &result->i8[v11 + v28];
    v34 = v33 - v30;
    v35 = v33 - v30 + 1;
    if (v35 < 4 || ((v36 = (v33 + 1), v30 < &v27->i16[v34 + 1]) ? (v37 = v27 >= v36) : (v37 = 1), !v37))
    {
      v39 = v30;
      v40 = v27;
      goto LABEL_48;
    }

    if (v35 >= 0x20)
    {
      v38 = v35 & 0xFFFFFFFFFFFFFFE0;
      v55 = v27 + 2;
      v56 = (v30 + 1);
      v57 = v35 & 0xFFFFFFFFFFFFFFE0;
      do
      {
        v59 = v55[-2];
        v58 = v55[-1];
        v61 = *v55;
        v60 = v55[1];
        v55 += 4;
        v56[-1] = vuzp1q_s8(v59, v58);
        *v56 = vuzp1q_s8(v61, v60);
        v56 += 2;
        v57 -= 32;
      }

      while (v57);
      if (v35 == v38)
      {
        goto LABEL_51;
      }

      if ((v35 & 0x1C) == 0)
      {
        v40 = (v27 + 2 * v38);
        v39 = (v30 + v38);
        goto LABEL_48;
      }
    }

    else
    {
      v38 = 0;
    }

    v39 = (v30 + (v35 & 0xFFFFFFFFFFFFFFFCLL));
    v40 = (v27 + 2 * (v35 & 0xFFFFFFFFFFFFFFFCLL));
    v62 = (v27 + 2 * v38);
    v63 = (v30 + v38);
    v64 = v38 - (v35 & 0xFFFFFFFFFFFFFFFCLL);
    do
    {
      v65 = *v62++;
      *v63++ = vuzp1_s8(v65, v65).u32[0];
      v64 += 4;
    }

    while (v64);
    if (v35 == (v35 & 0xFFFFFFFFFFFFFFFCLL))
    {
      goto LABEL_51;
    }

    do
    {
LABEL_48:
      v41 = v40->i8[0];
      v40 = (v40 + 2);
      *v39 = v41;
      v39 = (v39 + 1);
    }

    while (v39 != v29);
    goto LABEL_51;
  }

  v32 = 0;
LABEL_52:
  if (v26 != v32)
  {
    *(v25 + v32) = a6;
    return result;
  }

LABEL_72:
  __break(1u);
  return result;
}

char *WTF::stringTypeAdapterAccumulator<char16_t,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<char,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<char,void>>(char *result, unint64_t a2, uint64_t a3, char a4, uint64_t a5, char a6)
{
  if (!a3)
  {
    v8 = 0;
    goto LABEL_26;
  }

  v6 = *(a3 + 8);
  v7 = *(a3 + 4);
  if ((*(a3 + 16) & 4) != 0)
  {
    v9 = &result[2 * v7];
    if (v7 < 0x40)
    {
      v10 = result;
      if (result == v9)
      {
        goto LABEL_25;
      }
    }

    else
    {
      v10 = &result[2 * (v7 & 0xFFFFFFC0)];
      v11 = 0uLL;
      v12 = result;
      do
      {
        v76.val[0] = *v6;
        v13 = *(v6 + 16);
        v78.val[0] = *(v6 + 32);
        v14 = *(v6 + 48);
        v6 += 64;
        v15 = v14;
        v78.val[1] = 0uLL;
        v80.val[0] = v13;
        v76.val[1] = 0uLL;
        v16 = v12;
        vst2q_s8(v16, v76);
        v16 += 32;
        v80.val[1] = 0uLL;
        vst2q_s8(v16, v80);
        v17 = v12 + 64;
        vst2q_s8(v17, v78);
        v18 = v12 + 96;
        vst2q_s8(v18, *(&v11 - 1));
        v12 += 128;
      }

      while (v12 != v10);
      if (v10 == v9)
      {
        goto LABEL_25;
      }
    }

    v19 = &v9[-v10 - 2];
    if (v19 < 0xE || (v10 < v6 + (v19 >> 1) + 1 ? (v20 = v6 >= (v19 & 0xFFFFFFFFFFFFFFFELL) + v10 + 2) : (v20 = 1), !v20))
    {
      v23 = v6;
      v24 = v10;
      goto LABEL_22;
    }

    v21 = (v19 >> 1) + 1;
    if (v19 >= 0x3E)
    {
      v22 = v21 & 0xFFFFFFFFFFFFFFE0;
      v56 = (v10 + 32);
      v57 = (v6 + 16);
      v58 = v21 & 0xFFFFFFFFFFFFFFE0;
      do
      {
        v59 = *v57[-2].i8;
        v60 = vmovl_u8(*v57);
        v61 = vmovl_high_u8(*v57->i8);
        v56[-2] = vmovl_u8(*v59.i8);
        v56[-1] = vmovl_high_u8(v59);
        *v56 = v60;
        v56[1] = v61;
        v56 += 4;
        v57 += 4;
        v58 -= 32;
      }

      while (v58);
      if (v21 == v22)
      {
        goto LABEL_25;
      }

      if ((v21 & 0x18) == 0)
      {
        v24 = (v10 + 2 * v22);
        v23 = (v6 + v22);
        goto LABEL_22;
      }
    }

    else
    {
      v22 = 0;
    }

    v23 = (v6 + (v21 & 0xFFFFFFFFFFFFFFF8));
    v24 = (v10 + 2 * (v21 & 0xFFFFFFFFFFFFFFF8));
    v62 = (v10 + 2 * v22);
    v63 = (v6 + v22);
    v64 = v22 - (v21 & 0xFFFFFFFFFFFFFFF8);
    do
    {
      v65 = *v63++;
      *v62++ = vmovl_u8(v65);
      v64 += 8;
    }

    while (v64);
    if (v21 == (v21 & 0xFFFFFFFFFFFFFFF8))
    {
      goto LABEL_25;
    }

    do
    {
LABEL_22:
      v25 = *v23++;
      *v24 = v25;
      v24 += 2;
    }

    while (v24 != v9);
    goto LABEL_25;
  }

  if (v7)
  {
    if (v7 == 1)
    {
      *result = *v6;
    }

    else
    {
      v26 = result;
      v27 = a2;
      v28 = a3;
      v29 = a6;
      v30 = a5;
      v31 = a4;
      memcpy(result, *(a3 + 8), 2 * v7);
      a3 = v28;
      result = v26;
      a4 = v31;
      a2 = v27;
      a5 = v30;
      a6 = v29;
    }
  }

LABEL_25:
  v8 = *(a3 + 4);
  if (a2 < v8)
  {
    goto LABEL_69;
  }

LABEL_26:
  if (a2 == v8)
  {
    goto LABEL_69;
  }

  v32 = &result[2 * v8];
  *v32 = a4;
  v33 = v32 + 2;
  v34 = a2 + ~v8;
  if (a5)
  {
    v35 = *(a5 + 8);
    v36 = *(a5 + 4);
    if ((*(a5 + 16) & 4) == 0)
    {
      if (v36)
      {
        if (v36 == 1)
        {
          *v33 = v35->i16[0];
        }

        else
        {
          v52 = a6;
          v53 = a5;
          result = memcpy(v33, v35, 2 * v36);
          a5 = v53;
          a6 = v52;
        }
      }

LABEL_46:
      v37 = *(a5 + 4);
      if (v34 < v37)
      {
        goto LABEL_69;
      }

      goto LABEL_47;
    }

    v38 = &v33[v36];
    if (v36 < 0x40)
    {
      v39 = (v32 + 2);
      if (v33 == v38)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v39 = &v33[v36 & 0xFFFFFFC0];
      v40 = 0uLL;
      v41 = v32 + 2;
      do
      {
        v77.val[0] = *v35;
        v42 = v35[1];
        v79.val[0] = v35[2];
        v43 = v35[3];
        v35 += 4;
        v44 = v43;
        v79.val[1] = 0uLL;
        v81.val[0] = v42;
        v77.val[1] = 0uLL;
        v45 = v41;
        vst2q_s8(v45, v77);
        v45 += 32;
        v81.val[1] = 0uLL;
        vst2q_s8(v45, v81);
        v46 = v41 + 64;
        vst2q_s8(v46, v79);
        v47 = v41 + 96;
        vst2q_s8(v47, *(&v40 - 1));
        v41 += 128;
      }

      while (v41 != v39);
      if (v39 == v38)
      {
        goto LABEL_46;
      }
    }

    v48 = &v32[2 * v36 - v39];
    if (v48 < 0xE || v39 < v35->u64 + (v48 >> 1) + 1 && v35 < (v48 & 0xFFFFFFFFFFFFFFFELL) + v39 + 2)
    {
      v49 = v35;
      v50 = v39;
      goto LABEL_43;
    }

    v54 = (v48 >> 1) + 1;
    if (v48 >= 0x3E)
    {
      v55 = v54 & 0xFFFFFFFFFFFFFFE0;
      v66 = (v39 + 32);
      v67 = &v35[1];
      v68 = v54 & 0xFFFFFFFFFFFFFFE0;
      do
      {
        v69 = *v67[-2].i8;
        v70 = vmovl_u8(*v67);
        v71 = vmovl_high_u8(*v67->i8);
        v66[-2] = vmovl_u8(*v69.i8);
        v66[-1] = vmovl_high_u8(v69);
        *v66 = v70;
        v66[1] = v71;
        v66 += 4;
        v67 += 4;
        v68 -= 32;
      }

      while (v68);
      if (v54 == v55)
      {
        goto LABEL_46;
      }

      if ((v54 & 0x18) == 0)
      {
        v50 = (v39 + 2 * v55);
        v49 = (v35 + v55);
        goto LABEL_43;
      }
    }

    else
    {
      v55 = 0;
    }

    v49 = (v35 + (v54 & 0xFFFFFFFFFFFFFFF8));
    v50 = (v39 + 2 * (v54 & 0xFFFFFFFFFFFFFFF8));
    v72 = (v39 + 2 * v55);
    v73 = &v35->i8[v55];
    v74 = v55 - (v54 & 0xFFFFFFFFFFFFFFF8);
    do
    {
      v75 = *v73++;
      *v72++ = vmovl_u8(v75);
      v74 += 8;
    }

    while (v74);
    if (v54 == (v54 & 0xFFFFFFFFFFFFFFF8))
    {
      goto LABEL_46;
    }

    do
    {
LABEL_43:
      v51 = v49->u8[0];
      v49 = (v49 + 1);
      *v50++ = v51;
    }

    while (v50 != v38);
    goto LABEL_46;
  }

  v37 = 0;
LABEL_47:
  if (v34 != v37)
  {
    v33[v37] = a6;
    return result;
  }

LABEL_69:
  __break(1u);
  return result;
}

unint64_t WTF::NativePromise<WTF::Ref<WebCore::WebTransportSession,WTF::RawPtrTraits<WebCore::WebTransportSession>,WTF::DefaultRefDerefTraits<WebCore::WebTransportSession>>,void,0u>::~NativePromise(uint64_t a1)
{
  v62[2] = *MEMORY[0x1E69E9840];
  v2 = WTF::NativePromiseBase::logChannel(a1);
  if (*v2)
  {
    v3 = v2[16] >= 4u;
  }

  else
  {
    v3 = 0;
  }

  if (v3)
  {
    v4 = v2;
    WTF::String::String(&v57, "destroying ");
    result = WTF::LogArgument<WTF::NativePromise<WTF::Ref<WebCore::WebTransportSession,WTF::RawPtrTraits<WebCore::WebTransportSession>,WTF::DefaultRefDerefTraits<WebCore::WebTransportSession>>,void,0u>>::toString(&v56, a1);
    v6 = v56;
    if (v57)
    {
      v7 = *(v57 + 1);
      if (v56)
      {
        goto LABEL_8;
      }
    }

    else
    {
      v7 = 0;
      if (v56)
      {
LABEL_8:
        v8 = *(v56 + 4);
        if ((v8 | v7) < 0)
        {
          goto LABEL_104;
        }

LABEL_12:
        result = (v7 + v8);
        if (!__OFADD__(v7, v8))
        {
          if (v57)
          {
            v9 = *(v57 + 4);
            v10 = (v9 >> 2) & 1;
            if (!v56 || (v9 & 4) == 0)
            {
LABEL_19:
              result = WTF::tryMakeStringImplFromAdaptersInternal<WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>>(result, v10, v57, v56, &v58);
              if (!v58)
              {
LABEL_105:
                __break(0xC471u);
                return result;
              }

LABEL_20:
              v56 = 0;
              if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v6, v11);
              }

              v12 = v57;
              v57 = 0;
              if (v12 && atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v12, v11);
              }

              v13 = *(v4 + 4);
              v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
              if (v14)
              {
                WTF::String::utf8();
                v16 = v54 ? v54 + 16 : 0;
                *buf = 136446210;
                *v60 = v16;
                _os_log_impl(&dword_1C79C0000, v13, OS_LOG_TYPE_DEFAULT, "%{public}s", buf, 0xCu);
                v14 = v54;
                v54 = 0;
                if (v14)
                {
                  if (*v14 == 1)
                  {
                    v14 = WTF::fastFree(v14, v15);
                    if (*v4)
                    {
LABEL_34:
                      if (v4[16] >= 4u)
                      {
                        v17 = MEMORY[0x1E696EBC0];
                        while (1)
                        {
                          v18 = *v17;
                          if (v18)
                          {
                            break;
                          }

                          v19 = *v17;
                          atomic_compare_exchange_strong_explicit(v17, &v19, v18 | 1, memory_order_acquire, memory_order_acquire);
                          if (v19 == v18)
                          {
                            v20 = WTF::Logger::observers(v14);
                            v21 = *(v20 + 12);
                            if (v21)
                            {
                              v22 = *v20;
                              v23 = *v20 + 8 * v21;
                              do
                              {
                                v24 = *v22;
                                *buf = 0;
                                WTF::String::String(&v60[4], "destroying ");
                                v61 = 0;
                                WTF::LogArgument<WTF::NativePromise<WTF::Ref<WebCore::WebTransportSession,WTF::RawPtrTraits<WebCore::WebTransportSession>,WTF::DefaultRefDerefTraits<WebCore::WebTransportSession>>,void,0u>>::toString(v62, a1);
                                v54 = 0;
                                v55 = 0;
                                v25 = WTF::fastMalloc(0x20);
                                LODWORD(v55) = 2;
                                v54 = v25;
                                v26 = HIDWORD(v55);
                                v27 = v25 + 16 * HIDWORD(v55);
                                *v27 = *buf;
                                v28 = *&v60[4];
                                if (*&v60[4])
                                {
                                  atomic_fetch_add_explicit(*&v60[4], 2u, memory_order_relaxed);
                                  v26 = HIDWORD(v55);
                                  v25 = v54;
                                }

                                *(v27 + 1) = v28;
                                v29 = v26 + 1;
                                HIDWORD(v55) = v29;
                                v30 = v25 + 16 * v29;
                                *v30 = v61;
                                v31 = v62[0];
                                if (v62[0])
                                {
                                  atomic_fetch_add_explicit(v62[0], 2u, memory_order_relaxed);
                                  v29 = HIDWORD(v55);
                                }

                                *(v30 + 1) = v31;
                                HIDWORD(v55) = v29 + 1;
                                (*(*v24 + 16))(v24, v4, 4, &v54);
                                v32 = v54;
                                if (HIDWORD(v55))
                                {
                                  v33 = 16 * HIDWORD(v55);
                                  v34 = (v54 + 8);
                                  do
                                  {
                                    v35 = *v34;
                                    *v34 = 0;
                                    if (v35 && atomic_fetch_add_explicit(v35, 0xFFFFFFFE, memory_order_relaxed) == 2)
                                    {
                                      WTF::StringImpl::destroy(v35, v15);
                                    }

                                    v34 += 2;
                                    v33 -= 16;
                                  }

                                  while (v33);
                                  v32 = v54;
                                }

                                if (v32)
                                {
                                  v54 = 0;
                                  LODWORD(v55) = 0;
                                  WTF::fastFree(v32, v15);
                                }

                                v36 = v62[0];
                                v62[0] = 0;
                                if (v36 && atomic_fetch_add_explicit(v36, 0xFFFFFFFE, memory_order_relaxed) == 2)
                                {
                                  WTF::StringImpl::destroy(v36, v15);
                                }

                                v37 = *&v60[4];
                                *&v60[4] = 0;
                                if (v37 && atomic_fetch_add_explicit(v37, 0xFFFFFFFE, memory_order_relaxed) == 2)
                                {
                                  WTF::StringImpl::destroy(v37, v15);
                                }

                                ++v22;
                              }

                              while (v22 != v23);
                            }

                            v38 = 1;
                            atomic_compare_exchange_strong_explicit(v17, &v38, 0, memory_order_release, memory_order_relaxed);
                            if (v38 != 1)
                            {
                              WTF::Lock::unlockSlow(MEMORY[0x1E696EBC0]);
                            }

                            break;
                          }
                        }
                      }
                    }

LABEL_62:
                    v39 = v58;
                    v58 = 0;
                    if (v39 && atomic_fetch_add_explicit(v39, 0xFFFFFFFE, memory_order_relaxed) == 2)
                    {
                      WTF::StringImpl::destroy(v39, v15);
                    }

                    goto LABEL_65;
                  }

                  --*v14;
                }
              }

              if (*v4)
              {
                goto LABEL_34;
              }

              goto LABEL_62;
            }
          }

          else if (!v56)
          {
            result = WTF::tryMakeStringImplFromAdaptersInternal<WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>>(result, 1, 0, 0, &v58);
            if (!v58)
            {
              goto LABEL_105;
            }

            goto LABEL_20;
          }

          v10 = (*(v56 + 16) >> 2) & 1;
          goto LABEL_19;
        }

LABEL_104:
        v58 = 0;
        goto LABEL_105;
      }
    }

    v8 = 0;
    if (v7 < 0)
    {
      goto LABEL_104;
    }

    goto LABEL_12;
  }

LABEL_65:
  WTF::NativePromise<WTF::Ref<WebCore::WebTransportSession,WTF::RawPtrTraits<WebCore::WebTransportSession>,WTF::DefaultRefDerefTraits<WebCore::WebTransportSession>>,void,0u>::assertIsDead(a1);
  v41 = *(a1 + 116);
  v42 = *(a1 + 104);
  if (!v41)
  {
    goto LABEL_76;
  }

  v43 = 40 * v41;
  do
  {
    v44 = *v42;
    if (!*v42)
    {
      goto LABEL_67;
    }

    atomic_fetch_add(v44 + 2, 1u);
    WTF::NativePromise<WTF::Ref<WebCore::WebTransportSession,WTF::RawPtrTraits<WebCore::WebTransportSession>,WTF::DefaultRefDerefTraits<WebCore::WebTransportSession>>,void,0u>::assertIsDead(v44);
    if (atomic_fetch_add(v44 + 2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v44 + 2);
      (*(*v44 + 16))(v44);
      v45 = *v42;
      *v42 = 0;
      if (!v45)
      {
        goto LABEL_67;
      }
    }

    else
    {
      v45 = *v42;
      *v42 = 0;
      if (!v45)
      {
        goto LABEL_67;
      }
    }

    if (atomic_fetch_add(v45 + 2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v45 + 2);
      (*(*v45 + 16))(v45);
    }

LABEL_67:
    v42 = (v42 + 40);
    v43 -= 40;
  }

  while (v43);
  v42 = *(a1 + 104);
LABEL_76:
  if (v42)
  {
    *(a1 + 104) = 0;
    *(a1 + 112) = 0;
    WTF::fastFree(v42, v40);
  }

  v46 = *(a1 + 92);
  v47 = *(a1 + 80);
  if (v46)
  {
    v48 = 8 * v46;
    do
    {
      v49 = *v47;
      *v47 = 0;
      if (v49 && atomic_fetch_add(v49 + 2, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v49 + 2);
        v50 = v47;
        (*(*v49 + 8))(v49);
        v47 = v50;
      }

      v47 = (v47 + 8);
      v48 -= 8;
    }

    while (v48);
    v47 = *(a1 + 80);
  }

  if ((a1 + 96) != v47 && v47 != 0)
  {
    *(a1 + 80) = 0;
    *(a1 + 88) = 0;
    WTF::fastFree(v47, v40);
  }

  if (*(a1 + 72) > 1u)
  {
    if (*(a1 + 72) == 2)
    {
      v53 = *(a1 + 56);
      *(a1 + 56) = 0;
      if (v53)
      {
        (*(*v53 + 8))(v53);
      }
    }
  }

  else if (*(a1 + 72))
  {
    if (!*(a1 + 64))
    {
      v52 = *(a1 + 56);
      *(a1 + 56) = 0;
      if (v52)
      {
        (*(*v52 + 8))(v52);
      }
    }

    *(a1 + 64) = -1;
  }

  *(a1 + 72) = -1;
  return a1;
}

uint64_t WTF::tryMakeStringImplFromAdaptersInternal<WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>>@<X0>(uint64_t result@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v6 = result;
  if (!a2)
  {
    if (result)
    {
      if (result <= 0x7FFFFFEF)
      {
        v13 = result;
        v11 = a6;
        result = WTF::tryFastCompactMalloc((2 * result + 20));
        v12 = v17;
        if (v17)
        {
          *v17 = 2;
          *(v17 + 4) = v13;
          *(v17 + 8) = v17 + 20;
          *(v17 + 16) = 0;
          result = WTF::stringTypeAdapterAccumulator<char16_t,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>>((v17 + 20), v6, a3, a4, a5);
        }

        goto LABEL_12;
      }

      goto LABEL_8;
    }

LABEL_9:
    v12 = MEMORY[0x1E696EB88];
    atomic_fetch_add_explicit(MEMORY[0x1E696EB88], 2u, memory_order_relaxed);
    goto LABEL_13;
  }

  if (!result)
  {
    goto LABEL_9;
  }

  if ((result & 0x80000000) == 0)
  {
    v7 = result;
    v11 = a6;
    result = WTF::tryFastCompactMalloc((result + 20));
    v12 = v17;
    if (v17)
    {
      *v17 = 2;
      *(v17 + 4) = v7;
      *(v17 + 8) = v17 + 20;
      *(v17 + 16) = 4;
      result = WTF::stringTypeAdapterAccumulator<unsigned char,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>>((v17 + 20), v6, a3, a4, a5);
    }

LABEL_12:
    a6 = v11;
    goto LABEL_13;
  }

LABEL_8:
  v12 = 0;
LABEL_13:
  *a6 = v12;
  return result;
}

char *WTF::stringTypeAdapterAccumulator<unsigned char,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>>(char *result, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a3)
  {
    v10 = 0;
    goto LABEL_26;
  }

  v5 = *(a3 + 8);
  v6 = *(a3 + 4);
  if ((*(a3 + 16) & 4) == 0)
  {
    v7 = &result[v6];
    if (v6 < 0x10)
    {
      v8 = result;
      if (result == v7)
      {
        goto LABEL_25;
      }
    }

    else
    {
      v8 = result;
      do
      {
        v9 = vld2q_s8(v5);
        v5 += 32;
        *v8++ = v9;
      }

      while (v8 != &result[v6 & 0xFFFFFFF0]);
      if (v8 == v7)
      {
        goto LABEL_25;
      }
    }

    v11 = &result[v6];
    v12 = &result[v6] - v8;
    if (v12 < 4 || (v8 < &v5[2 * v12] ? (v13 = v5 >= v11) : (v13 = 1), !v13))
    {
      v15 = v8;
      v16 = v5;
      goto LABEL_22;
    }

    if (v12 >= 0x20)
    {
      v14 = v12 & 0xFFFFFFFFFFFFFFE0;
      v54 = (v5 + 32);
      v55 = v8 + 1;
      v56 = v12 & 0xFFFFFFFFFFFFFFE0;
      do
      {
        v58 = v54[-2];
        v57 = v54[-1];
        v60 = *v54;
        v59 = v54[1];
        v54 += 4;
        v55[-1] = vuzp1q_s8(v58, v57);
        *v55 = vuzp1q_s8(v60, v59);
        v55 += 2;
        v56 -= 32;
      }

      while (v56);
      if (v12 == v14)
      {
        goto LABEL_25;
      }

      if ((v12 & 0x1C) == 0)
      {
        v16 = &v5[2 * v14];
        v15 = (v8 + v14);
        goto LABEL_22;
      }
    }

    else
    {
      v14 = 0;
    }

    v15 = (v8 + (v12 & 0xFFFFFFFFFFFFFFFCLL));
    v16 = &v5[2 * (v12 & 0xFFFFFFFFFFFFFFFCLL)];
    v61 = &v5[2 * v14];
    v62 = (v8->i32 + v14);
    v63 = v14 - (v12 & 0xFFFFFFFFFFFFFFFCLL);
    do
    {
      v64 = *v61++;
      *v62++ = vuzp1_s8(v64, v64).u32[0];
      v63 += 4;
    }

    while (v63);
    if (v12 == (v12 & 0xFFFFFFFFFFFFFFFCLL))
    {
      goto LABEL_25;
    }

    do
    {
LABEL_22:
      v17 = *v16;
      v16 += 2;
      v15->i8[0] = v17;
      v15 = (v15 + 1);
    }

    while (v15 != v7);
    goto LABEL_25;
  }

  if (v6)
  {
    if (v6 == 1)
    {
      *result = *v5;
    }

    else
    {
      v18 = result;
      v19 = a2;
      v20 = a3;
      v21 = a5;
      v22 = a4;
      memcpy(result, *(a3 + 8), *(a3 + 4));
      a3 = v20;
      a2 = v19;
      a4 = v22;
      a5 = v21;
      result = v18;
    }
  }

LABEL_25:
  v10 = *(a3 + 4);
  if (a2 < v10)
  {
LABEL_101:
    __break(1u);
    return result;
  }

LABEL_26:
  v23 = &result[v10];
  if (!a4)
  {
    v30 = 0;
    goto LABEL_51;
  }

  v24 = a2 - v10;
  v25 = *(a4 + 8);
  v26 = *(a4 + 4);
  if ((*(a4 + 16) & 4) == 0)
  {
    v27 = &v23[v26];
    if (v26 < 0x10)
    {
      v28 = &result[v10];
      if (v23 == v27)
      {
        goto LABEL_50;
      }
    }

    else
    {
      v28 = &result[v10];
      do
      {
        v29 = vld2q_s8(v25);
        v25 += 32;
        *v28++ = v29;
      }

      while (v28 != &v23[v26 & 0xFFFFFFF0]);
      if (v28 == v27)
      {
        goto LABEL_50;
      }
    }

    v31 = &result[v10 + v26];
    v32 = v31 - v28;
    if ((v31 - v28) < 4 || (v28 < &v25[2 * v32] ? (v33 = v25 >= v31) : (v33 = 1), !v33))
    {
      v35 = v28;
      v36 = v25;
      goto LABEL_47;
    }

    if (v32 >= 0x20)
    {
      v34 = v32 & 0xFFFFFFFFFFFFFFE0;
      v65 = (v25 + 32);
      v66 = v28 + 1;
      v67 = v32 & 0xFFFFFFFFFFFFFFE0;
      do
      {
        v69 = v65[-2];
        v68 = v65[-1];
        v71 = *v65;
        v70 = v65[1];
        v65 += 4;
        v66[-1] = vuzp1q_s8(v69, v68);
        *v66 = vuzp1q_s8(v71, v70);
        v66 += 2;
        v67 -= 32;
      }

      while (v67);
      if (v32 == v34)
      {
        goto LABEL_50;
      }

      if ((v32 & 0x1C) == 0)
      {
        v36 = &v25[2 * v34];
        v35 = (v28 + v34);
        goto LABEL_47;
      }
    }

    else
    {
      v34 = 0;
    }

    v35 = (v28 + (v32 & 0xFFFFFFFFFFFFFFFCLL));
    v36 = &v25[2 * (v32 & 0xFFFFFFFFFFFFFFFCLL)];
    v72 = &v25[2 * v34];
    v73 = (v28->i32 + v34);
    v74 = v34 - (v32 & 0xFFFFFFFFFFFFFFFCLL);
    do
    {
      v75 = *v72++;
      *v73++ = vuzp1_s8(v75, v75).u32[0];
      v74 += 4;
    }

    while (v74);
    if (v32 == (v32 & 0xFFFFFFFFFFFFFFFCLL))
    {
      goto LABEL_50;
    }

    do
    {
LABEL_47:
      v37 = *v36;
      v36 += 2;
      v35->i8[0] = v37;
      v35 = (v35 + 1);
    }

    while (v35 != v27);
    goto LABEL_50;
  }

  if (v26)
  {
    if (v26 == 1)
    {
      *v23 = *v25;
    }

    else
    {
      v38 = result;
      v39 = a5;
      v40 = a4;
      memcpy(&result[v10], v25, v26);
      a4 = v40;
      a5 = v39;
      result = v38;
    }
  }

LABEL_50:
  v30 = *(a4 + 4);
  if (v24 < v30)
  {
    goto LABEL_101;
  }

LABEL_51:
  if (!a5)
  {
    return result;
  }

  v41 = &v23[v30];
  v42 = *(a5 + 8);
  v43 = *(a5 + 4);
  if ((*(a5 + 16) & 4) != 0)
  {
    if (v43)
    {
      if (v43 == 1)
      {
        v41->i8[0] = v42->i8[0];
      }

      else
      {

        return memcpy(&v23[v30], v42, v43);
      }
    }
  }

  else
  {
    v44 = (v41 + v43);
    if (v43 >= 0x10)
    {
      v45 = (v41 + (v43 & 0xFFFFFFF0));
      do
      {
        v46 = vld2q_s8(v42->i8);
        v42 += 2;
        *v41++ = v46;
      }

      while (v41 != v45);
    }

    if (v41 != v44)
    {
      v47 = &result[v43 + v10 + v30] - v41;
      if (v47 < 4 || ((v48 = &result[v43 + v30 + v10], v41 < (v42 + 2 * (v48 - v41))) ? (v49 = v42 >= v48) : (v49 = 1), !v49))
      {
        v51 = v41;
        v52 = v42;
        goto LABEL_69;
      }

      if (v47 >= 0x20)
      {
        v50 = v47 & 0xFFFFFFFFFFFFFFE0;
        v76 = v42 + 2;
        v77 = v41 + 1;
        v78 = v47 & 0xFFFFFFFFFFFFFFE0;
        do
        {
          v80 = v76[-2];
          v79 = v76[-1];
          v82 = *v76;
          v81 = v76[1];
          v76 += 4;
          v77[-1] = vuzp1q_s8(v80, v79);
          *v77 = vuzp1q_s8(v82, v81);
          v77 += 2;
          v78 -= 32;
        }

        while (v78);
        if (v47 == v50)
        {
          return result;
        }

        if ((v47 & 0x1C) == 0)
        {
          v52 = (v42 + 2 * v50);
          v51 = (v41 + v50);
          do
          {
LABEL_69:
            v53 = v52->i8[0];
            v52 = (v52 + 2);
            v51->i8[0] = v53;
            v51 = (v51 + 1);
          }

          while (v51 != v44);
          return result;
        }
      }

      else
      {
        v50 = 0;
      }

      v51 = (v41 + (v47 & 0xFFFFFFFFFFFFFFFCLL));
      v52 = (v42 + 2 * (v47 & 0xFFFFFFFFFFFFFFFCLL));
      v83 = (v42 + 2 * v50);
      v84 = (v41->i32 + v50);
      v85 = v50 - (v47 & 0xFFFFFFFFFFFFFFFCLL);
      do
      {
        v86 = *v83++;
        *v84++ = vuzp1_s8(v86, v86).u32[0];
        v85 += 4;
      }

      while (v85);
      if (v47 != (v47 & 0xFFFFFFFFFFFFFFFCLL))
      {
        goto LABEL_69;
      }
    }
  }

  return result;
}

uint16x8_t *WTF::stringTypeAdapterAccumulator<char16_t,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>>(uint16x8_t *result, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a3)
  {
    v7 = 0;
    goto LABEL_26;
  }

  v5 = *(a3 + 8);
  v6 = *(a3 + 4);
  if ((*(a3 + 16) & 4) != 0)
  {
    v8 = (result + 2 * v6);
    if (v6 < 0x40)
    {
      v9 = result;
      if (result == v8)
      {
        goto LABEL_25;
      }
    }

    else
    {
      v9 = result + 2 * (v6 & 0xFFFFFFC0);
      v10 = 0uLL;
      v11 = result;
      do
      {
        v103.val[0] = *v5;
        v12 = *(v5 + 16);
        v106.val[0] = *(v5 + 32);
        v13 = *(v5 + 48);
        v5 += 64;
        v14 = v13;
        v106.val[1] = 0uLL;
        v109.val[0] = v12;
        v103.val[1] = 0uLL;
        v15 = v11;
        vst2q_s8(v15, v103);
        v15 += 32;
        v109.val[1] = 0uLL;
        vst2q_s8(v15, v109);
        v16 = v11 + 64;
        vst2q_s8(v16, v106);
        v17 = v11 + 96;
        vst2q_s8(v17, *(&v10 - 1));
        v11 += 128;
      }

      while (v11 != v9);
      if (v9 == v8)
      {
        goto LABEL_25;
      }
    }

    v18 = v8 - v9 - 2;
    if (v18 < 0xE || (v9 < v5 + (v18 >> 1) + 1 ? (v19 = v5 >= (v18 & 0xFFFFFFFFFFFFFFFELL) + v9 + 2) : (v19 = 1), !v19))
    {
      v22 = v5;
      v23 = v9;
      goto LABEL_22;
    }

    v20 = (v18 >> 1) + 1;
    if (v18 >= 0x3E)
    {
      v21 = v20 & 0xFFFFFFFFFFFFFFE0;
      v72 = (v9 + 32);
      v73 = (v5 + 16);
      v74 = v20 & 0xFFFFFFFFFFFFFFE0;
      do
      {
        v75 = *v73[-2].i8;
        v76 = vmovl_u8(*v73);
        v77 = vmovl_high_u8(*v73->i8);
        v72[-2] = vmovl_u8(*v75.i8);
        v72[-1] = vmovl_high_u8(v75);
        *v72 = v76;
        v72[1] = v77;
        v72 += 4;
        v73 += 4;
        v74 -= 32;
      }

      while (v74);
      if (v20 == v21)
      {
        goto LABEL_25;
      }

      if ((v20 & 0x18) == 0)
      {
        v23 = (v9 + 2 * v21);
        v22 = (v5 + v21);
        goto LABEL_22;
      }
    }

    else
    {
      v21 = 0;
    }

    v22 = (v5 + (v20 & 0xFFFFFFFFFFFFFFF8));
    v23 = (v9 + 2 * (v20 & 0xFFFFFFFFFFFFFFF8));
    v78 = (v9 + 2 * v21);
    v79 = (v5 + v21);
    v80 = v21 - (v20 & 0xFFFFFFFFFFFFFFF8);
    do
    {
      v81 = *v79++;
      *v78++ = vmovl_u8(v81);
      v80 += 8;
    }

    while (v80);
    if (v20 == (v20 & 0xFFFFFFFFFFFFFFF8))
    {
      goto LABEL_25;
    }

    do
    {
LABEL_22:
      v24 = *v22++;
      v23->i16[0] = v24;
      v23 = (v23 + 2);
    }

    while (v23 != v8);
    goto LABEL_25;
  }

  if (v6)
  {
    if (v6 == 1)
    {
      result->i16[0] = *v5;
    }

    else
    {
      v25 = result;
      v26 = a2;
      v27 = a3;
      v28 = a5;
      v29 = a4;
      memcpy(result, *(a3 + 8), 2 * v6);
      a3 = v27;
      result = v25;
      a2 = v26;
      a4 = v29;
      a5 = v28;
    }
  }

LABEL_25:
  v7 = *(a3 + 4);
  if (a2 < v7)
  {
LABEL_102:
    __break(1u);
    return result;
  }

LABEL_26:
  v30 = &result->i8[2 * v7];
  if (!a4)
  {
    v34 = 0;
    goto LABEL_51;
  }

  v31 = a2 - v7;
  v32 = *(a4 + 8);
  v33 = *(a4 + 4);
  if ((*(a4 + 16) & 4) != 0)
  {
    v35 = &v30[2 * v33];
    if (v33 < 0x40)
    {
      v36 = v30;
      if (v30 == v35)
      {
        goto LABEL_50;
      }
    }

    else
    {
      v36 = &v30[2 * (v33 & 0xFFFFFFC0)];
      v37 = 0uLL;
      v38 = v30;
      do
      {
        v104.val[0] = *v32;
        v39 = v32[1];
        v107.val[0] = v32[2];
        v40 = v32[3];
        v32 += 4;
        v41 = v40;
        v107.val[1] = 0uLL;
        v110.val[0] = v39;
        v104.val[1] = 0uLL;
        v42 = v38;
        vst2q_s8(v42, v104);
        v42 += 32;
        v110.val[1] = 0uLL;
        vst2q_s8(v42, v110);
        v43 = v38 + 64;
        vst2q_s8(v43, v107);
        v44 = v38 + 96;
        vst2q_s8(v44, *(&v37 - 1));
        v38 += 128;
      }

      while (v38 != v36);
      if (v36 == v35)
      {
        goto LABEL_50;
      }
    }

    v45 = &v35[-v36 - 2];
    if (v45 < 0xE || (v36 < v32->u64 + (v45 >> 1) + 1 ? (v46 = v32 >= (v45 & 0xFFFFFFFFFFFFFFFELL) + v36 + 2) : (v46 = 1), !v46))
    {
      v49 = v32;
      v50 = v36;
      goto LABEL_47;
    }

    v47 = (v45 >> 1) + 1;
    if (v45 >= 0x3E)
    {
      v48 = v47 & 0xFFFFFFFFFFFFFFE0;
      v82 = (v36 + 32);
      v83 = &v32[1];
      v84 = v47 & 0xFFFFFFFFFFFFFFE0;
      do
      {
        v85 = *v83[-2].i8;
        v86 = vmovl_u8(*v83);
        v87 = vmovl_high_u8(*v83->i8);
        v82[-2] = vmovl_u8(*v85.i8);
        v82[-1] = vmovl_high_u8(v85);
        *v82 = v86;
        v82[1] = v87;
        v82 += 4;
        v83 += 4;
        v84 -= 32;
      }

      while (v84);
      if (v47 == v48)
      {
        goto LABEL_50;
      }

      if ((v47 & 0x18) == 0)
      {
        v50 = (v36 + 2 * v48);
        v49 = (v32 + v48);
        goto LABEL_47;
      }
    }

    else
    {
      v48 = 0;
    }

    v49 = (v32 + (v47 & 0xFFFFFFFFFFFFFFF8));
    v50 = (v36 + 2 * (v47 & 0xFFFFFFFFFFFFFFF8));
    v88 = (v36 + 2 * v48);
    v89 = &v32->i8[v48];
    v90 = v48 - (v47 & 0xFFFFFFFFFFFFFFF8);
    do
    {
      v91 = *v89++;
      *v88++ = vmovl_u8(v91);
      v90 += 8;
    }

    while (v90);
    if (v47 == (v47 & 0xFFFFFFFFFFFFFFF8))
    {
      goto LABEL_50;
    }

    do
    {
LABEL_47:
      v51 = v49->u8[0];
      v49 = (v49 + 1);
      *v50 = v51;
      v50 += 2;
    }

    while (v50 != v35);
    goto LABEL_50;
  }

  if (v33)
  {
    if (v33 == 1)
    {
      *v30 = v32->i16[0];
    }

    else
    {
      v52 = a5;
      v53 = a4;
      result = memcpy(v30, v32, 2 * v33);
      a4 = v53;
      a5 = v52;
    }
  }

LABEL_50:
  v34 = *(a4 + 4);
  if (v31 < v34)
  {
    goto LABEL_102;
  }

LABEL_51:
  if (!a5)
  {
    return result;
  }

  result = &v30[2 * v34];
  v54 = *(a5 + 8);
  v55 = *(a5 + 4);
  if ((*(a5 + 16) & 4) == 0)
  {
    if (v55)
    {
      if (v55 == 1)
      {
        result->i16[0] = v54->i16[0];
      }

      else
      {

        return memcpy(result, v54, 2 * v55);
      }
    }

    return result;
  }

  v56 = (result + 2 * v55);
  if (v55 >= 0x40)
  {
    v57 = (result + 2 * (v55 & 0xFFFFFFC0));
    v58 = 0uLL;
    do
    {
      v105.val[0] = *v54;
      v59 = v54[1];
      v108.val[0] = v54[2];
      v60 = v54[3];
      v54 += 4;
      v61 = v60;
      v108.val[1] = 0uLL;
      v111.val[0] = v59;
      v105.val[1] = 0uLL;
      v62 = result;
      vst2q_s8(v62, v105);
      v62 += 32;
      v111.val[1] = 0uLL;
      vst2q_s8(v62, v111);
      i8 = result[4].i8;
      vst2q_s8(i8, v108);
      v64 = result[6].i8;
      vst2q_s8(v64, *(&v58 - 1));
      result += 8;
    }

    while (result != v57);
    result = v57;
  }

  if (result != v56)
  {
    v65 = v56 - result - 2;
    if (v65 < 0xE || (result < &v54->i8[(v65 >> 1) + 1] ? (v66 = v54 >= (&result->i16[1] + (v65 & 0xFFFFFFFFFFFFFFFELL))) : (v66 = 1), !v66))
    {
      v69 = v54;
      v70 = result;
      goto LABEL_70;
    }

    v67 = (v65 >> 1) + 1;
    if (v65 >= 0x3E)
    {
      v68 = v67 & 0xFFFFFFFFFFFFFFE0;
      v92 = result + 2;
      v93 = &v54[1];
      v94 = v67 & 0xFFFFFFFFFFFFFFE0;
      do
      {
        v95 = *v93[-2].i8;
        v96 = vmovl_u8(*v93);
        v97 = vmovl_high_u8(*v93->i8);
        v92[-2] = vmovl_u8(*v95.i8);
        v92[-1] = vmovl_high_u8(v95);
        *v92 = v96;
        v92[1] = v97;
        v92 += 4;
        v93 += 4;
        v94 -= 32;
      }

      while (v94);
      if (v67 == v68)
      {
        return result;
      }

      if ((v67 & 0x18) == 0)
      {
        v70 = (result + 2 * v68);
        v69 = (v54 + v68);
        goto LABEL_70;
      }
    }

    else
    {
      v68 = 0;
    }

    v69 = (v54 + (v67 & 0xFFFFFFFFFFFFFFF8));
    v70 = (result + 2 * (v67 & 0xFFFFFFFFFFFFFFF8));
    v98 = (result + 2 * v68);
    v99 = &v54->i8[v68];
    v100 = v68 - (v67 & 0xFFFFFFFFFFFFFFF8);
    do
    {
      v101 = *v99++;
      *v98++ = vmovl_u8(v101);
      v100 += 8;
    }

    while (v100);
    if (v67 == (v67 & 0xFFFFFFFFFFFFFFF8))
    {
      return result;
    }

    do
    {
LABEL_70:
      v71 = v69->u8[0];
      v69 = (v69 + 1);
      v70->i16[0] = v71;
      v70 = (v70 + 2);
    }

    while (v70 != v56);
  }

  return result;
}

WTF *WTF::NativePromise<WTF::Ref<WebCore::WebTransportSession,WTF::RawPtrTraits<WebCore::WebTransportSession>,WTF::DefaultRefDerefTraits<WebCore::WebTransportSession>>,void,0u>::dispatchAll(uint64_t a1, atomic_uchar *volatile *a2)
{
  v35 = &v37;
  v4 = *(a1 + 80);
  v5 = (a1 + 96);
  if (v4 == (a1 + 96))
  {
    v6 = *(a1 + 92);
    memcpy(&v37, v5, 8 * v6);
    v4 = &v37;
  }

  else
  {
    *(a1 + 80) = v5;
    v35 = v4;
    v6 = *(a1 + 92);
  }

  v36 = v6;
  *(a1 + 88) = 1;
  v7 = *(a1 + 104);
  v8 = *(a1 + 116);
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  if (v6)
  {
    for (i = 8 * v6; i; i -= 8)
    {
      v10 = *v4;
      if (!*(*v4 + 16) || (v11 = atomic_load((a1 + 121)), v11 == 1) && (*(**(v10 + 2) + 24))(*(v10 + 2)))
      {
        if (v10[56] != 1)
        {
          v15 = *a2;
          v16 = 1;
          atomic_compare_exchange_strong_explicit(*a2, &v16, 0, memory_order_release, memory_order_relaxed);
          if (v16 == 1)
          {
            if (WTF::NativePromise<WTF::Ref<WebCore::WebTransportSession,WTF::RawPtrTraits<WebCore::WebTransportSession>,WTF::DefaultRefDerefTraits<WebCore::WebTransportSession>>,void,0u>::hasRunnable(a1))
            {
LABEL_16:
              WTF::NativePromise<WTF::Ref<WebCore::WebTransportSession,WTF::RawPtrTraits<WebCore::WebTransportSession>,WTF::DefaultRefDerefTraits<WebCore::WebTransportSession>>,void,0u>::takeResultRunnable(&v42, a1);
              v17 = v42;
              (*(*v42 + 16))(&v38, v42);
              (*(*v10 + 24))(v10, a1, &v38);
              if (!v39)
              {
                v18 = v38;
                v38 = 0;
                if (v18)
                {
                  (*(*v18 + 8))(v18);
                }
              }

              LOBYTE(v39) = -1;
              (*(*v17 + 8))(v17);
LABEL_24:
              v20 = 0;
              atomic_compare_exchange_strong_explicit(*a2, &v20, 1u, memory_order_acquire, memory_order_acquire);
              if (v20)
              {
                MEMORY[0x1CCA63990]();
              }

              goto LABEL_7;
            }
          }

          else
          {
            WTF::Lock::unlockSlow(v15);
            if (WTF::NativePromise<WTF::Ref<WebCore::WebTransportSession,WTF::RawPtrTraits<WebCore::WebTransportSession>,WTF::DefaultRefDerefTraits<WebCore::WebTransportSession>>,void,0u>::hasRunnable(a1))
            {
              goto LABEL_16;
            }
          }

          WTF::NativePromise<WTF::Ref<WebCore::WebTransportSession,WTF::RawPtrTraits<WebCore::WebTransportSession>,WTF::DefaultRefDerefTraits<WebCore::WebTransportSession>>,void,0u>::takeResult(&v38, a1);
          (*(*v10 + 24))(v10, a1, &v38);
          if (!v39)
          {
            v19 = v38;
            v38 = 0;
            if (v19)
            {
              (*(*v19 + 8))(v19);
            }
          }

          goto LABEL_24;
        }

        v38 = v10;
        WTF::NativePromiseBase::log<char [32],WTF::NativePromise<WTF::Ref<WebCore::WebTransportSession,WTF::RawPtrTraits<WebCore::WebTransportSession>,WTF::DefaultRefDerefTraits<WebCore::WebTransportSession>>,void,0u>,char [21],void const*,char [11],WTF::Logger::LogSiteIdentifier,char [2]>(a1, &v38, (v10 + 24));
      }

      else
      {
        v12 = *(v10 + 2);
        atomic_fetch_add(v10 + 2, 1u);
        atomic_fetch_add((a1 + 8), 1u);
        v13 = WTF::fastMalloc(0x18);
        *v13 = &unk_1F472B178;
        v13[1] = v10;
        v13[2] = a1;
        v38 = v13;
        (*(*v12 + 16))(v12, &v38);
        v14 = v38;
        v38 = 0;
        if (v14)
        {
          (*(*v14 + 8))(v14);
        }
      }

LABEL_7:
      v4 = (v4 + 8);
    }
  }

  if (v8)
  {
    v21 = 40 * v8;
    v22 = 40 * v8;
    v23 = v7;
    while (1)
    {
      while (1)
      {
        v24 = *v23;
        *v23 = 0;
        if (v24)
        {
          break;
        }

        v38 = 0;
        v39 = 0;
        v40 = "<chained promise>";
        v41 = 0;
        WTF::NativePromise<WTF::Ref<WebCore::WebTransportSession,WTF::RawPtrTraits<WebCore::WebTransportSession>,WTF::DefaultRefDerefTraits<WebCore::WebTransportSession>>,void,0u>::settleAsChainedPromise<WTF::NativePromise<WTF::Ref<WebCore::WebTransportSession,WTF::RawPtrTraits<WebCore::WebTransportSession>,WTF::DefaultRefDerefTraits<WebCore::WebTransportSession>>,void,0u>::Storage>(0, (a1 + 56), &v38);
        v23 += 5;
        v22 -= 40;
        if (!v22)
        {
          goto LABEL_39;
        }
      }

      v25 = (v24 + 2);
      atomic_fetch_add(v24 + 2, 1u);
      v38 = 0;
      v39 = 0;
      v40 = "<chained promise>";
      v41 = 0;
      WTF::NativePromise<WTF::Ref<WebCore::WebTransportSession,WTF::RawPtrTraits<WebCore::WebTransportSession>,WTF::DefaultRefDerefTraits<WebCore::WebTransportSession>>,void,0u>::settleAsChainedPromise<WTF::NativePromise<WTF::Ref<WebCore::WebTransportSession,WTF::RawPtrTraits<WebCore::WebTransportSession>,WTF::DefaultRefDerefTraits<WebCore::WebTransportSession>>,void,0u>::Storage>(v24, (a1 + 56), &v38);
      if (atomic_fetch_add(v24 + 2, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v25);
        (*(*v24 + 16))(v24);
        atomic_fetch_add(v25, 1u);
        WTF::NativePromise<WTF::Ref<WebCore::WebTransportSession,WTF::RawPtrTraits<WebCore::WebTransportSession>,WTF::DefaultRefDerefTraits<WebCore::WebTransportSession>>,void,0u>::assertIsDead(v24);
        if (atomic_fetch_add(v25, 0xFFFFFFFF) == 1)
        {
LABEL_37:
          atomic_store(1u, v24 + 2);
          (*(*v24 + 16))(v24);
          v26 = (v24 + 2);
          if (atomic_fetch_add(v24 + 2, 0xFFFFFFFF) != 1)
          {
            goto LABEL_32;
          }

          goto LABEL_38;
        }
      }

      else
      {
        atomic_fetch_add(v25, 1u);
        WTF::NativePromise<WTF::Ref<WebCore::WebTransportSession,WTF::RawPtrTraits<WebCore::WebTransportSession>,WTF::DefaultRefDerefTraits<WebCore::WebTransportSession>>,void,0u>::assertIsDead(v24);
        if (atomic_fetch_add(v25, 0xFFFFFFFF) == 1)
        {
          goto LABEL_37;
        }
      }

      v26 = (v24 + 2);
      if (atomic_fetch_add(v24 + 2, 0xFFFFFFFF) == 1)
      {
LABEL_38:
        atomic_store(1u, v26);
        (*(*v24 + 16))(v24);
        v23 += 5;
        v22 -= 40;
        if (!v22)
        {
LABEL_39:
          v27 = v7;
          while (1)
          {
            v28 = *v27;
            if (*v27)
            {
              atomic_fetch_add(v28 + 2, 1u);
              WTF::NativePromise<WTF::Ref<WebCore::WebTransportSession,WTF::RawPtrTraits<WebCore::WebTransportSession>,WTF::DefaultRefDerefTraits<WebCore::WebTransportSession>>,void,0u>::assertIsDead(v28);
              if (atomic_fetch_add(v28 + 2, 0xFFFFFFFF) == 1)
              {
                atomic_store(1u, v28 + 2);
                (*(*v28 + 16))(v28);
                v29 = *v27;
                *v27 = 0;
                if (v29)
                {
LABEL_44:
                  if (atomic_fetch_add(v29 + 2, 0xFFFFFFFF) == 1)
                  {
                    atomic_store(1u, v29 + 2);
                    (*(*v29 + 16))(v29);
                  }
                }
              }

              else
              {
                v29 = *v27;
                *v27 = 0;
                if (v29)
                {
                  goto LABEL_44;
                }
              }
            }

            v27 += 5;
            v21 -= 40;
            if (!v21)
            {
              goto LABEL_48;
            }
          }
        }
      }

      else
      {
LABEL_32:
        v23 += 5;
        v22 -= 40;
        if (!v22)
        {
          goto LABEL_39;
        }
      }
    }
  }

LABEL_48:
  if (v7)
  {
    WTF::fastFree(v7, v5);
  }

  result = v35;
  if (v36)
  {
    v31 = 8 * v36;
    do
    {
      v32 = *result;
      *result = 0;
      if (v32 && atomic_fetch_add(v32 + 2, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v32 + 2);
        v33 = result;
        (*(*v32 + 8))(v32);
        result = v33;
      }

      result = (result + 8);
      v31 -= 8;
    }

    while (v31);
    result = v35;
  }

  if (&v37 != result && result != 0)
  {
    return WTF::fastFree(result, v5);
  }

  return result;
}

WTF::StringImpl *WTF::NativePromiseBase::log<char [32],WTF::NativePromise<WTF::Ref<WebCore::WebTransportSession,WTF::RawPtrTraits<WebCore::WebTransportSession>,WTF::DefaultRefDerefTraits<WebCore::WebTransportSession>>,void,0u>,char [21],void const*,char [11],WTF::Logger::LogSiteIdentifier,char [2]>(WTF::NativePromiseBase *a1, uint64_t a2, WTF::Logger::LogSiteIdentifier *a3)
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

    return WTF::Logger::log<char [32],WTF::NativePromise<WTF::Ref<WebCore::WebTransportSession,WTF::RawPtrTraits<WebCore::WebTransportSession>,WTF::DefaultRefDerefTraits<WebCore::WebTransportSession>>,void,0u>,char [21],void const*,char [11],WTF::Logger::LogSiteIdentifier,char [2]>(result, a1, a2, a3);
  }

  return result;
}

BOOL WTF::NativePromise<WTF::Ref<WebCore::WebTransportSession,WTF::RawPtrTraits<WebCore::WebTransportSession>,WTF::DefaultRefDerefTraits<WebCore::WebTransportSession>>,void,0u>::hasRunnable(uint64_t a1)
{
  v1 = 0;
  v2 = (a1 + 48);
  v3 = 1;
  atomic_compare_exchange_strong_explicit((a1 + 48), &v1, 1u, memory_order_acquire, memory_order_acquire);
  if (v1)
  {
    MEMORY[0x1CCA63990](a1 + 48);
    v4 = *(a1 + 72);
    atomic_compare_exchange_strong_explicit(v2, &v3, 0, memory_order_release, memory_order_relaxed);
    if (v3 == 1)
    {
      return v4 == 2;
    }
  }

  else
  {
    v4 = *(a1 + 72);
    atomic_compare_exchange_strong_explicit(v2, &v3, 0, memory_order_release, memory_order_relaxed);
    if (v3 == 1)
    {
      return v4 == 2;
    }
  }

  WTF::Lock::unlockSlow(v2);
  return v4 == 2;
}

mpark *WTF::NativePromise<WTF::Ref<WebCore::WebTransportSession,WTF::RawPtrTraits<WebCore::WebTransportSession>,WTF::DefaultRefDerefTraits<WebCore::WebTransportSession>>,void,0u>::takeResultRunnable(mpark *result, uint64_t a2)
{
  v2 = 0;
  v3 = (a2 + 48);
  atomic_compare_exchange_strong_explicit((a2 + 48), &v2, 1u, memory_order_acquire, memory_order_acquire);
  if (!v2)
  {
    if (*(a2 + 72) == 2)
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
  if (*(v7 + 72) != 2)
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

mpark *WTF::NativePromise<WTF::Ref<WebCore::WebTransportSession,WTF::RawPtrTraits<WebCore::WebTransportSession>,WTF::DefaultRefDerefTraits<WebCore::WebTransportSession>>,void,0u>::takeResult(mpark *result, uint64_t a2)
{
  v2 = 0;
  v3 = (a2 + 48);
  atomic_compare_exchange_strong_explicit((a2 + 48), &v2, 1u, memory_order_acquire, memory_order_acquire);
  if (!v2)
  {
    if (*(a2 + 72) == 1)
    {
      goto LABEL_3;
    }

LABEL_10:
    mpark::throw_bad_variant_access(result);
  }

  v7 = result;
  v8 = a2;
  MEMORY[0x1CCA63990](a2 + 48);
  a2 = v8;
  result = v7;
  if (*(v8 + 72) != 1)
  {
    goto LABEL_10;
  }

LABEL_3:
  *result = 0;
  *(result + 8) = -1;
  v4 = *(a2 + 64);
  if (v4 != 255)
  {
    if (!*(a2 + 64))
    {
      v5 = *(a2 + 56);
      *(a2 + 56) = 0;
      *result = v5;
    }

    *(result + 8) = v4;
  }

  v6 = 1;
  atomic_compare_exchange_strong_explicit(v3, &v6, 0, memory_order_release, memory_order_relaxed);
  if (v6 != 1)
  {

    return WTF::Lock::unlockSlow(v3);
  }

  return result;
}

WTF::StringImpl *WTF::Logger::log<char [32],WTF::NativePromise<WTF::Ref<WebCore::WebTransportSession,WTF::RawPtrTraits<WebCore::WebTransportSession>,WTF::DefaultRefDerefTraits<WebCore::WebTransportSession>>,void,0u>,char [21],void const*,char [11],WTF::Logger::LogSiteIdentifier,char [2]>(uint64_t a1, uint64_t a2, uint64_t a3, WTF::Logger::LogSiteIdentifier *a4)
{
  v89[1] = *MEMORY[0x1E69E9840];
  WTF::String::String(&v70, "ThenCallback disconnected from ");
  WTF::LogArgument<WTF::NativePromise<WTF::Ref<WebCore::WebTransportSession,WTF::RawPtrTraits<WebCore::WebTransportSession>,WTF::DefaultRefDerefTraits<WebCore::WebTransportSession>>,void,0u>>::toString(&v69, a2);
  WTF::String::String(&v68, " aborting [callback:");
  WTF::LogArgument<void const*>::toString();
  WTF::String::String(&v66, " callSite:");
  WTF::Logger::LogSiteIdentifier::toString(&v65, a4);
  WTF::String::String(&v64, "]");
  v7 = v69;
  v62 = v69;
  v76 = v68;
  *&buf = v70;
  v74 = v66;
  v75 = v67;
  v72 = v64;
  v73 = v65;
  result = WTF::tryMakeStringFromAdapters<WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>>(&buf, &v62, &v76, &v75, &v74, &v73, &v72, &v71);
  if (!v71)
  {
    __break(0xC471u);
    return result;
  }

  v10 = v64;
  v64 = 0;
  if (v10 && atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v10, v9);
  }

  v11 = v65;
  v65 = 0;
  if (v11 && atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v11, v9);
  }

  v12 = v66;
  v66 = 0;
  if (v12 && atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v12, v9);
  }

  v13 = v67;
  v67 = 0;
  if (v13 && atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v13, v9);
  }

  v14 = v68;
  v68 = 0;
  if (v14 && atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v14, v9);
  }

  v69 = 0;
  if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v7, v9);
  }

  v15 = v70;
  v70 = 0;
  if (v15 && atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v15, v9);
  }

  v16 = *(a1 + 32);
  v17 = os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);
  if (!v17 || ((WTF::String::utf8(), v62) ? (v19 = v62 + 16) : (v19 = 0), LODWORD(buf) = 136446210, *(&buf + 4) = v19, _os_log_impl(&dword_1C79C0000, v16, OS_LOG_TYPE_DEFAULT, "%{public}s", &buf, 0xCu), v17 = v62, v62 = 0, !v17))
  {
LABEL_30:
    if (*a1)
    {
      goto LABEL_31;
    }

    goto LABEL_84;
  }

  if (*v17 != 1)
  {
    --*v17;
    goto LABEL_30;
  }

  v17 = WTF::fastFree(v17, v18);
  if (*a1)
  {
LABEL_31:
    if (*(a1 + 16) >= 4u)
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
          v23 = WTF::Logger::observers(v17);
          v24 = *(v23 + 12);
          if (v24)
          {
            v25 = *v23;
            v26 = *v23 + 8 * v24;
            do
            {
              v27 = *v25;
              LODWORD(buf) = 0;
              WTF::String::String((&buf + 8), "ThenCallback disconnected from ");
              v78 = 0;
              WTF::LogArgument<WTF::NativePromise<WTF::Ref<WebCore::WebTransportSession,WTF::RawPtrTraits<WebCore::WebTransportSession>,WTF::DefaultRefDerefTraits<WebCore::WebTransportSession>>,void,0u>>::toString(&v79, a2);
              v80 = 0;
              WTF::String::String(&v81, " aborting [callback:");
              v82 = 0;
              WTF::LogArgument<void const*>::toString();
              v84 = 0;
              WTF::String::String(&v85, " callSite:");
              v86 = 0;
              WTF::Logger::LogSiteIdentifier::toString(&v87, a4);
              v88 = 0;
              WTF::String::String(v89, "]");
              v62 = 0;
              v63 = 0;
              v28 = WTF::fastMalloc(0x70);
              LODWORD(v63) = 7;
              v62 = v28;
              v29 = HIDWORD(v63);
              v30 = v28 + 16 * HIDWORD(v63);
              *v30 = buf;
              v31 = *(&buf + 1);
              if (*(&buf + 1))
              {
                atomic_fetch_add_explicit(*(&buf + 1), 2u, memory_order_relaxed);
                v29 = HIDWORD(v63);
                v28 = v62;
              }

              *(v30 + 1) = v31;
              v32 = v29 + 1;
              HIDWORD(v63) = v32;
              v33 = v28 + 16 * v32;
              *v33 = v78;
              v34 = v79;
              if (v79)
              {
                atomic_fetch_add_explicit(v79, 2u, memory_order_relaxed);
                v32 = HIDWORD(v63);
                v28 = v62;
              }

              *(v33 + 1) = v34;
              v35 = v32 + 1;
              HIDWORD(v63) = v35;
              v36 = v28 + 16 * v35;
              *v36 = v80;
              v37 = v81;
              if (v81)
              {
                atomic_fetch_add_explicit(v81, 2u, memory_order_relaxed);
                v35 = HIDWORD(v63);
                v28 = v62;
              }

              *(v36 + 1) = v37;
              v38 = v35 + 1;
              HIDWORD(v63) = v38;
              v39 = v28 + 16 * v38;
              *v39 = v82;
              v40 = v83;
              if (v83)
              {
                atomic_fetch_add_explicit(v83, 2u, memory_order_relaxed);
                v38 = HIDWORD(v63);
                v28 = v62;
              }

              *(v39 + 1) = v40;
              v41 = v38 + 1;
              HIDWORD(v63) = v41;
              v42 = v28 + 16 * v41;
              *v42 = v84;
              v43 = v85;
              if (v85)
              {
                atomic_fetch_add_explicit(v85, 2u, memory_order_relaxed);
                v41 = HIDWORD(v63);
                v28 = v62;
              }

              *(v42 + 1) = v43;
              v44 = v41 + 1;
              HIDWORD(v63) = v44;
              v45 = v28 + 16 * v44;
              *v45 = v86;
              v46 = v87;
              if (v87)
              {
                atomic_fetch_add_explicit(v87, 2u, memory_order_relaxed);
                v44 = HIDWORD(v63);
                v28 = v62;
              }

              *(v45 + 1) = v46;
              v47 = v44 + 1;
              HIDWORD(v63) = v47;
              v48 = v28 + 16 * v47;
              *v48 = v88;
              v49 = v89[0];
              if (v89[0])
              {
                atomic_fetch_add_explicit(v89[0], 2u, memory_order_relaxed);
                v47 = HIDWORD(v63);
              }

              *(v48 + 1) = v49;
              HIDWORD(v63) = v47 + 1;
              (*(*v27 + 16))(v27, a1, 4, &v62);
              v50 = v62;
              if (HIDWORD(v63))
              {
                v51 = 16 * HIDWORD(v63);
                v52 = (v62 + 8);
                do
                {
                  v53 = *v52;
                  *v52 = 0;
                  if (v53 && atomic_fetch_add_explicit(v53, 0xFFFFFFFE, memory_order_relaxed) == 2)
                  {
                    WTF::StringImpl::destroy(v53, v18);
                  }

                  v52 += 2;
                  v51 -= 16;
                }

                while (v51);
                v50 = v62;
              }

              if (v50)
              {
                v62 = 0;
                LODWORD(v63) = 0;
                WTF::fastFree(v50, v18);
              }

              v54 = v89[0];
              v89[0] = 0;
              if (v54 && atomic_fetch_add_explicit(v54, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v54, v18);
              }

              v55 = v87;
              v87 = 0;
              if (v55 && atomic_fetch_add_explicit(v55, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v55, v18);
              }

              v56 = v85;
              v85 = 0;
              if (v56 && atomic_fetch_add_explicit(v56, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v56, v18);
              }

              v57 = v83;
              v83 = 0;
              if (v57 && atomic_fetch_add_explicit(v57, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v57, v18);
              }

              v58 = v81;
              v81 = 0;
              if (v58 && atomic_fetch_add_explicit(v58, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v58, v18);
              }

              v59 = v79;
              v79 = 0;
              if (v59 && atomic_fetch_add_explicit(v59, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v59, v18);
              }

              v60 = *(&buf + 1);
              *(&buf + 1) = 0;
              if (v60 && atomic_fetch_add_explicit(v60, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v60, v18);
              }

              ++v25;
            }

            while (v25 != v26);
          }

          v61 = 1;
          atomic_compare_exchange_strong_explicit(v20, &v61, 0, memory_order_release, memory_order_relaxed);
          if (v61 != 1)
          {
            WTF::Lock::unlockSlow(MEMORY[0x1E696EBC0]);
          }

          break;
        }
      }
    }
  }

LABEL_84:
  result = v71;
  v71 = 0;
  if (result)
  {
    if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(result, v18);
    }
  }

  return result;
}

uint64_t WTF::tryMakeStringFromAdapters<WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>>@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, uint64_t *a5@<X4>, uint64_t *a6@<X5>, uint64_t *a7@<X6>, void *a8@<X8>)
{
  v13 = *result;
  if (*result)
  {
    v14 = *(v13 + 4);
    v15 = *a2;
    if (*a2)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v14 = 0;
    v15 = *a2;
    if (*a2)
    {
LABEL_3:
      v16 = *(v15 + 4);
      v17 = *a3;
      if (*a3)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  v16 = 0;
  v17 = *a3;
  if (*a3)
  {
LABEL_4:
    v18 = *(v17 + 4);
    v19 = *a4;
    if (*a4)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  v18 = 0;
  v19 = *a4;
  if (*a4)
  {
LABEL_5:
    v20 = *(v19 + 4);
    v21 = *a5;
    if (*a5)
    {
      goto LABEL_6;
    }

    goto LABEL_14;
  }

LABEL_13:
  v20 = 0;
  v21 = *a5;
  if (*a5)
  {
LABEL_6:
    v22 = *(v21 + 4);
    v23 = *a6;
    if (*a6)
    {
      goto LABEL_7;
    }

    goto LABEL_15;
  }

LABEL_14:
  v22 = 0;
  v23 = *a6;
  if (*a6)
  {
LABEL_7:
    v24 = *(v23 + 4);
    v25 = *a7;
    if (v25)
    {
      goto LABEL_8;
    }

    goto LABEL_16;
  }

LABEL_15:
  v24 = 0;
  v25 = *a7;
  if (v25)
  {
LABEL_8:
    v26 = *(v25 + 4);
    if ((v26 | v24) < 0)
    {
      goto LABEL_44;
    }

    goto LABEL_17;
  }

LABEL_16:
  v26 = 0;
  if (v24 < 0)
  {
LABEL_44:
    *a8 = 0;
    return result;
  }

LABEL_17:
  v27 = __OFADD__(v24, v26);
  v28 = v24 + v26;
  v29 = v27;
  if (v22 < 0 || (v29 & 1) != 0)
  {
    goto LABEL_44;
  }

  v27 = __OFADD__(v22, v28);
  v30 = v22 + v28;
  v31 = v27;
  if (v20 < 0 || v31)
  {
    goto LABEL_44;
  }

  v27 = __OFADD__(v20, v30);
  v32 = v20 + v30;
  v33 = v27;
  if (v18 < 0 || v33)
  {
    goto LABEL_44;
  }

  v27 = __OFADD__(v18, v32);
  v34 = v18 + v32;
  v35 = v27;
  if (v16 < 0 || v35)
  {
    goto LABEL_44;
  }

  v27 = __OFADD__(v16, v34);
  v36 = v16 + v34;
  v37 = v27;
  if (v14 < 0)
  {
    goto LABEL_44;
  }

  if (v37)
  {
    goto LABEL_44;
  }

  result = (v14 + v36);
  if (__OFADD__(v14, v36))
  {
    goto LABEL_44;
  }

  if ((!v13 || (*(v13 + 16) & 4) != 0) && (!v15 || (*(v15 + 16) & 4) != 0) && (!v17 || (*(v17 + 16) & 4) != 0) && (!v19 || (*(v19 + 16) & 4) != 0) && (!v21 || (*(v21 + 16) & 4) != 0))
  {
    if (v23)
    {
      v39 = *(v23 + 16);
      v38 = (v39 >> 2) & 1;
      if (!v25 || (v39 & 4) == 0)
      {
        return WTF::tryMakeStringImplFromAdaptersInternal<WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>>(result, v38, v13, v15, v17, v19, v21, v23, a8, v25);
      }
    }

    else if (!v25)
    {
      v38 = 1;
      return WTF::tryMakeStringImplFromAdaptersInternal<WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>>(result, v38, v13, v15, v17, v19, v21, v23, a8, v25);
    }

    v38 = (*(v25 + 16) >> 2) & 1;
  }

  else
  {
    v38 = 0;
  }

  return WTF::tryMakeStringImplFromAdaptersInternal<WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>>(result, v38, v13, v15, v17, v19, v21, v23, a8, v25);
}

uint64_t WTF::tryMakeStringImplFromAdaptersInternal<WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>>@<X0>(uint64_t result@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, uint64_t a10)
{
  v10 = result;
  if (!a2)
  {
    if (result)
    {
      if (result <= 0x7FFFFFEF)
      {
        v19 = result;
        v17 = a9;
        result = WTF::tryFastCompactMalloc((2 * result + 20));
        v18 = v27;
        if (v27)
        {
          *v27 = 2;
          *(v27 + 4) = v19;
          *(v27 + 8) = v27 + 20;
          *(v27 + 16) = 0;
          result = WTF::stringTypeAdapterAccumulator<char16_t,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>>((v27 + 20), v10, a3, a4, a5, a6, a7, a8, a10);
        }

        goto LABEL_12;
      }

      goto LABEL_8;
    }

LABEL_9:
    v18 = MEMORY[0x1E696EB88];
    atomic_fetch_add_explicit(MEMORY[0x1E696EB88], 2u, memory_order_relaxed);
    goto LABEL_13;
  }

  if (!result)
  {
    goto LABEL_9;
  }

  if ((result & 0x80000000) == 0)
  {
    v11 = result;
    v17 = a9;
    result = WTF::tryFastCompactMalloc((result + 20));
    v18 = v27;
    if (v27)
    {
      *v27 = 2;
      *(v27 + 4) = v11;
      *(v27 + 8) = v27 + 20;
      *(v27 + 16) = 4;
      result = WTF::stringTypeAdapterAccumulator<unsigned char,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>>((v27 + 20), v10, a3, a4, a5, a6, a7, a8, a10);
    }

LABEL_12:
    a9 = v17;
    goto LABEL_13;
  }

LABEL_8:
  v18 = 0;
LABEL_13:
  *a9 = v18;
  return result;
}

char *WTF::stringTypeAdapterAccumulator<unsigned char,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>>(char *result, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (!a3)
  {
    v14 = 0;
    goto LABEL_26;
  }

  v9 = *(a3 + 8);
  v10 = *(a3 + 4);
  if ((*(a3 + 16) & 4) == 0)
  {
    v11 = &result[v10];
    if (v10 < 0x10)
    {
      v12 = result;
      if (result == v11)
      {
        goto LABEL_25;
      }
    }

    else
    {
      v12 = result;
      do
      {
        v13 = vld2q_s8(v9);
        v9 += 32;
        *v12++ = v13;
      }

      while (v12 != &result[v10 & 0xFFFFFFF0]);
      if (v12 == v11)
      {
        goto LABEL_25;
      }
    }

    v15 = &result[v10];
    v16 = &result[v10] - v12;
    if (v16 < 4 || (v12 < &v9[2 * v16] ? (v17 = v9 >= v15) : (v17 = 1), !v17))
    {
      v19 = v12;
      v20 = v9;
      goto LABEL_22;
    }

    if (v16 >= 0x20)
    {
      v18 = v16 & 0xFFFFFFFFFFFFFFE0;
      v50 = (v9 + 32);
      v51 = v12 + 1;
      v52 = v16 & 0xFFFFFFFFFFFFFFE0;
      do
      {
        v54 = v50[-2];
        v53 = v50[-1];
        v56 = *v50;
        v55 = v50[1];
        v50 += 4;
        v51[-1] = vuzp1q_s8(v54, v53);
        *v51 = vuzp1q_s8(v56, v55);
        v51 += 2;
        v52 -= 32;
      }

      while (v52);
      if (v16 == v18)
      {
        goto LABEL_25;
      }

      if ((v16 & 0x1C) == 0)
      {
        v20 = &v9[2 * v18];
        v19 = (v12 + v18);
        goto LABEL_22;
      }
    }

    else
    {
      v18 = 0;
    }

    v19 = (v12 + (v16 & 0xFFFFFFFFFFFFFFFCLL));
    v20 = &v9[2 * (v16 & 0xFFFFFFFFFFFFFFFCLL)];
    v57 = &v9[2 * v18];
    v58 = (v12->i32 + v18);
    v59 = v18 - (v16 & 0xFFFFFFFFFFFFFFFCLL);
    do
    {
      v60 = *v57++;
      *v58++ = vuzp1_s8(v60, v60).u32[0];
      v59 += 4;
    }

    while (v59);
    if (v16 == (v16 & 0xFFFFFFFFFFFFFFFCLL))
    {
      goto LABEL_25;
    }

    do
    {
LABEL_22:
      v21 = *v20;
      v20 += 2;
      v19->i8[0] = v21;
      v19 = (v19 + 1);
    }

    while (v19 != v11);
    goto LABEL_25;
  }

  if (v10)
  {
    if (v10 == 1)
    {
      *result = *v9;
    }

    else
    {
      v22 = result;
      v23 = a2;
      v24 = a3;
      v25 = a8;
      v26 = a7;
      v27 = a6;
      v28 = a5;
      v29 = a4;
      memcpy(result, *(a3 + 8), *(a3 + 4));
      a3 = v24;
      a2 = v23;
      result = v22;
      a4 = v29;
      a5 = v28;
      a6 = v27;
      a7 = v26;
      a8 = v25;
    }
  }

LABEL_25:
  v14 = *(a3 + 4);
  if (a2 < v14)
  {
    goto LABEL_72;
  }

LABEL_26:
  v30 = a2 - v14;
  v31 = &result[v14];
  if (a4)
  {
    v32 = *(a4 + 8);
    v33 = *(a4 + 4);
    if ((*(a4 + 16) & 4) != 0)
    {
      if (v33)
      {
        if (v33 == 1)
        {
          *v31 = v32->i8[0];
        }

        else
        {
          v45 = a8;
          v46 = a7;
          v47 = a6;
          v48 = a5;
          v49 = a4;
          result = memcpy(&result[v14], v32, v33);
          a4 = v49;
          a5 = v48;
          a6 = v47;
          a7 = v46;
          a8 = v45;
        }
      }

LABEL_50:
      v37 = *(a4 + 4);
      if (v30 >= v37)
      {
        goto LABEL_51;
      }

LABEL_72:
      __break(1u);
      return result;
    }

    v34 = &v31[v33];
    if (v33 < 0x10)
    {
      v35 = &result[v14];
      if (v31 == v34)
      {
        goto LABEL_50;
      }
    }

    else
    {
      v35 = &result[v14];
      do
      {
        v36 = vld2q_s8(v32->i8);
        v32 += 2;
        *v35++ = v36;
      }

      while (v35 != &v31[v33 & 0xFFFFFFF0]);
      if (v35 == v34)
      {
        goto LABEL_50;
      }
    }

    v38 = &result[v14 + v33];
    v39 = v38 - v35;
    if ((v38 - v35) < 4 || (v35 < (v32 + 2 * v39) ? (v40 = v32 >= v38) : (v40 = 1), !v40))
    {
      v42 = v35;
      v43 = v32;
      goto LABEL_47;
    }

    if (v39 >= 0x20)
    {
      v41 = v39 & 0xFFFFFFFFFFFFFFE0;
      v61 = v32 + 2;
      v62 = v35 + 1;
      v63 = v39 & 0xFFFFFFFFFFFFFFE0;
      do
      {
        v65 = v61[-2];
        v64 = v61[-1];
        v67 = *v61;
        v66 = v61[1];
        v61 += 4;
        v62[-1] = vuzp1q_s8(v65, v64);
        *v62 = vuzp1q_s8(v67, v66);
        v62 += 2;
        v63 -= 32;
      }

      while (v63);
      if (v39 == v41)
      {
        goto LABEL_50;
      }

      if ((v39 & 0x1C) == 0)
      {
        v43 = (v32 + 2 * v41);
        v42 = (v35 + v41);
        goto LABEL_47;
      }
    }

    else
    {
      v41 = 0;
    }

    v42 = (v35 + (v39 & 0xFFFFFFFFFFFFFFFCLL));
    v43 = (v32 + 2 * (v39 & 0xFFFFFFFFFFFFFFFCLL));
    v68 = (v32 + 2 * v41);
    v69 = (v35->i32 + v41);
    v70 = v41 - (v39 & 0xFFFFFFFFFFFFFFFCLL);
    do
    {
      v71 = *v68++;
      *v69++ = vuzp1_s8(v71, v71).u32[0];
      v70 += 4;
    }

    while (v70);
    if (v39 == (v39 & 0xFFFFFFFFFFFFFFFCLL))
    {
      goto LABEL_50;
    }

    do
    {
LABEL_47:
      v44 = v43->i8[0];
      v43 = (v43 + 2);
      v42->i8[0] = v44;
      v42 = (v42 + 1);
    }

    while (v42 != v34);
    goto LABEL_50;
  }

  v37 = 0;
LABEL_51:

  return WTF::stringTypeAdapterAccumulator<unsigned char,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>>(&v31[v37], v30 - v37, a5, a6, a7, a8, a9);
}

uint16x8_t *WTF::stringTypeAdapterAccumulator<char16_t,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>>(uint16x8_t *result, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (!a3)
  {
    v11 = 0;
    goto LABEL_26;
  }

  v9 = *(a3 + 8);
  v10 = *(a3 + 4);
  if ((*(a3 + 16) & 4) != 0)
  {
    v12 = (result + 2 * v10);
    if (v10 < 0x40)
    {
      v13 = result;
      if (result == v12)
      {
        goto LABEL_25;
      }
    }

    else
    {
      v13 = result + 2 * (v10 & 0xFFFFFFC0);
      v14 = 0uLL;
      v15 = result;
      do
      {
        v85.val[0] = *v9;
        v16 = *(v9 + 16);
        v87.val[0] = *(v9 + 32);
        v17 = *(v9 + 48);
        v9 += 64;
        v18 = v17;
        v87.val[1] = 0uLL;
        v89.val[0] = v16;
        v85.val[1] = 0uLL;
        v19 = v15;
        vst2q_s8(v19, v85);
        v19 += 32;
        v89.val[1] = 0uLL;
        vst2q_s8(v19, v89);
        i8 = v15[4].i8;
        vst2q_s8(i8, v87);
        v21 = v15[6].i8;
        vst2q_s8(v21, *(&v14 - 1));
        v15 += 8;
      }

      while (v15 != v13);
      if (v13 == v12)
      {
        goto LABEL_25;
      }
    }

    v22 = v12 - v13 - 2;
    if (v22 < 0xE || (v13 < v9 + (v22 >> 1) + 1 ? (v23 = v9 >= (v22 & 0xFFFFFFFFFFFFFFFELL) + v13 + 2) : (v23 = 1), !v23))
    {
      v26 = v9;
      v27 = v13;
      goto LABEL_22;
    }

    v24 = (v22 >> 1) + 1;
    if (v22 >= 0x3E)
    {
      v25 = v24 & 0xFFFFFFFFFFFFFFE0;
      v64 = (v13 + 32);
      v65 = (v9 + 16);
      v66 = v24 & 0xFFFFFFFFFFFFFFE0;
      do
      {
        v67 = *v65[-2].i8;
        v68 = vmovl_u8(*v65);
        v69 = vmovl_high_u8(*v65->i8);
        v64[-2] = vmovl_u8(*v67.i8);
        v64[-1] = vmovl_high_u8(v67);
        *v64 = v68;
        v64[1] = v69;
        v64 += 4;
        v65 += 4;
        v66 -= 32;
      }

      while (v66);
      if (v24 == v25)
      {
        goto LABEL_25;
      }

      if ((v24 & 0x18) == 0)
      {
        v27 = (v13 + 2 * v25);
        v26 = (v9 + v25);
        goto LABEL_22;
      }
    }

    else
    {
      v25 = 0;
    }

    v26 = (v9 + (v24 & 0xFFFFFFFFFFFFFFF8));
    v27 = (v13 + 2 * (v24 & 0xFFFFFFFFFFFFFFF8));
    v70 = (v13 + 2 * v25);
    v71 = (v9 + v25);
    v72 = v25 - (v24 & 0xFFFFFFFFFFFFFFF8);
    do
    {
      v73 = *v71++;
      *v70++ = vmovl_u8(v73);
      v72 += 8;
    }

    while (v72);
    if (v24 == (v24 & 0xFFFFFFFFFFFFFFF8))
    {
      goto LABEL_25;
    }

    do
    {
LABEL_22:
      v28 = *v26++;
      v27->i16[0] = v28;
      v27 = (v27 + 2);
    }

    while (v27 != v12);
    goto LABEL_25;
  }

  if (v10)
  {
    if (v10 == 1)
    {
      result->i16[0] = *v9;
    }

    else
    {
      v29 = result;
      v30 = a2;
      v31 = a3;
      v32 = a8;
      v33 = a7;
      v34 = a6;
      v35 = a5;
      v36 = a4;
      memcpy(result, *(a3 + 8), 2 * v10);
      a3 = v31;
      a2 = v30;
      result = v29;
      a4 = v36;
      a5 = v35;
      a6 = v34;
      a7 = v33;
      a8 = v32;
    }
  }

LABEL_25:
  v11 = *(a3 + 4);
  if (a2 < v11)
  {
    goto LABEL_72;
  }

LABEL_26:
  v37 = a2 - v11;
  v38 = &result->i16[v11];
  if (a4)
  {
    v39 = *(a4 + 8);
    v40 = *(a4 + 4);
    if ((*(a4 + 16) & 4) == 0)
    {
      if (v40)
      {
        if (v40 == 1)
        {
          *v38 = v39->i16[0];
        }

        else
        {
          v59 = a8;
          v60 = a7;
          v61 = a6;
          v62 = a5;
          v63 = a4;
          result = memcpy(v38, v39, 2 * v40);
          a4 = v63;
          a5 = v62;
          a6 = v61;
          a7 = v60;
          a8 = v59;
        }
      }

LABEL_50:
      v41 = *(a4 + 4);
      if (v37 >= v41)
      {
        goto LABEL_51;
      }

LABEL_72:
      __break(1u);
      return result;
    }

    v42 = &v38[v40];
    if (v40 < 0x40)
    {
      v43 = v38;
      if (v38 == v42)
      {
        goto LABEL_50;
      }
    }

    else
    {
      v43 = &v38[v40 & 0xFFFFFFC0];
      v44 = 0uLL;
      v45 = v38;
      do
      {
        v86.val[0] = *v39;
        v46 = v39[1];
        v88.val[0] = v39[2];
        v47 = v39[3];
        v39 += 4;
        v48 = v47;
        v88.val[1] = 0uLL;
        v90.val[0] = v46;
        v86.val[1] = 0uLL;
        v49 = v45;
        vst2q_s8(v49, v86);
        v49 += 32;
        v90.val[1] = 0uLL;
        vst2q_s8(v49, v90);
        v50 = v45 + 64;
        vst2q_s8(v50, v88);
        v51 = v45 + 96;
        vst2q_s8(v51, *(&v44 - 1));
        v45 += 128;
      }

      while (v45 != v43);
      if (v43 == v42)
      {
        goto LABEL_50;
      }
    }

    v52 = v42 - v43 - 2;
    if (v52 < 0xE || (v43 < v39->u64 + (v52 >> 1) + 1 ? (v53 = v39 >= (v52 & 0xFFFFFFFFFFFFFFFELL) + v43 + 2) : (v53 = 1), !v53))
    {
      v56 = v39;
      v57 = v43;
      goto LABEL_47;
    }

    v54 = (v52 >> 1) + 1;
    if (v52 >= 0x3E)
    {
      v55 = v54 & 0xFFFFFFFFFFFFFFE0;
      v74 = (v43 + 32);
      v75 = &v39[1];
      v76 = v54 & 0xFFFFFFFFFFFFFFE0;
      do
      {
        v77 = *v75[-2].i8;
        v78 = vmovl_u8(*v75);
        v79 = vmovl_high_u8(*v75->i8);
        v74[-2] = vmovl_u8(*v77.i8);
        v74[-1] = vmovl_high_u8(v77);
        *v74 = v78;
        v74[1] = v79;
        v74 += 4;
        v75 += 4;
        v76 -= 32;
      }

      while (v76);
      if (v54 == v55)
      {
        goto LABEL_50;
      }

      if ((v54 & 0x18) == 0)
      {
        v57 = (v43 + 2 * v55);
        v56 = (v39 + v55);
        goto LABEL_47;
      }
    }

    else
    {
      v55 = 0;
    }

    v56 = (v39 + (v54 & 0xFFFFFFFFFFFFFFF8));
    v57 = (v43 + 2 * (v54 & 0xFFFFFFFFFFFFFFF8));
    v80 = (v43 + 2 * v55);
    v81 = &v39->i8[v55];
    v82 = v55 - (v54 & 0xFFFFFFFFFFFFFFF8);
    do
    {
      v83 = *v81++;
      *v80++ = vmovl_u8(v83);
      v82 += 8;
    }

    while (v82);
    if (v54 == (v54 & 0xFFFFFFFFFFFFFFF8))
    {
      goto LABEL_50;
    }

    do
    {
LABEL_47:
      v58 = v56->u8[0];
      v56 = (v56 + 1);
      *v57++ = v58;
    }

    while (v57 != v42);
    goto LABEL_50;
  }

  v41 = 0;
LABEL_51:

  return WTF::stringTypeAdapterAccumulator<char16_t,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>>(&v38[v41], v37 - v41, a5, a6, a7, a8, a9);
}

char *WTF::stringTypeAdapterAccumulator<unsigned char,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>>(char *result, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (!a3)
  {
    v12 = 0;
    goto LABEL_26;
  }

  v7 = *(a3 + 8);
  v8 = *(a3 + 4);
  if ((*(a3 + 16) & 4) == 0)
  {
    v9 = &result[v8];
    if (v8 < 0x10)
    {
      v10 = result;
      if (result == v9)
      {
        goto LABEL_25;
      }
    }

    else
    {
      v10 = result;
      do
      {
        v11 = vld2q_s8(v7);
        v7 += 32;
        *v10++ = v11;
      }

      while (v10 != &result[v8 & 0xFFFFFFF0]);
      if (v10 == v9)
      {
        goto LABEL_25;
      }
    }

    v13 = &result[v8];
    v14 = &result[v8] - v10;
    if (v14 < 4 || (v10 < &v7[2 * v14] ? (v15 = v7 >= v13) : (v15 = 1), !v15))
    {
      v17 = v10;
      v18 = v7;
      goto LABEL_22;
    }

    if (v14 >= 0x20)
    {
      v16 = v14 & 0xFFFFFFFFFFFFFFE0;
      v46 = (v7 + 32);
      v47 = v10 + 1;
      v48 = v14 & 0xFFFFFFFFFFFFFFE0;
      do
      {
        v50 = v46[-2];
        v49 = v46[-1];
        v52 = *v46;
        v51 = v46[1];
        v46 += 4;
        v47[-1] = vuzp1q_s8(v50, v49);
        *v47 = vuzp1q_s8(v52, v51);
        v47 += 2;
        v48 -= 32;
      }

      while (v48);
      if (v14 == v16)
      {
        goto LABEL_25;
      }

      if ((v14 & 0x1C) == 0)
      {
        v18 = &v7[2 * v16];
        v17 = (v10 + v16);
        goto LABEL_22;
      }
    }

    else
    {
      v16 = 0;
    }

    v17 = (v10 + (v14 & 0xFFFFFFFFFFFFFFFCLL));
    v18 = &v7[2 * (v14 & 0xFFFFFFFFFFFFFFFCLL)];
    v53 = &v7[2 * v16];
    v54 = (v10->i32 + v16);
    v55 = v16 - (v14 & 0xFFFFFFFFFFFFFFFCLL);
    do
    {
      v56 = *v53++;
      *v54++ = vuzp1_s8(v56, v56).u32[0];
      v55 += 4;
    }

    while (v55);
    if (v14 == (v14 & 0xFFFFFFFFFFFFFFFCLL))
    {
      goto LABEL_25;
    }

    do
    {
LABEL_22:
      v19 = *v18;
      v18 += 2;
      v17->i8[0] = v19;
      v17 = (v17 + 1);
    }

    while (v17 != v9);
    goto LABEL_25;
  }

  if (v8)
  {
    if (v8 == 1)
    {
      *result = *v7;
    }

    else
    {
      v20 = result;
      v21 = a2;
      v22 = a3;
      v23 = a7;
      v24 = a6;
      v25 = a5;
      v26 = a4;
      memcpy(result, *(a3 + 8), *(a3 + 4));
      a3 = v22;
      a2 = v21;
      result = v20;
      a4 = v26;
      a5 = v25;
      a6 = v24;
      a7 = v23;
    }
  }

LABEL_25:
  v12 = *(a3 + 4);
  if (a2 < v12)
  {
    goto LABEL_72;
  }

LABEL_26:
  v27 = a2 - v12;
  v28 = &result[v12];
  if (a4)
  {
    v29 = *(a4 + 8);
    v30 = *(a4 + 4);
    if ((*(a4 + 16) & 4) != 0)
    {
      if (v30)
      {
        if (v30 == 1)
        {
          *v28 = v29->i8[0];
        }

        else
        {
          v42 = a7;
          v43 = a6;
          v44 = a5;
          v45 = a4;
          result = memcpy(&result[v12], v29, v30);
          a4 = v45;
          a5 = v44;
          a6 = v43;
          a7 = v42;
        }
      }

LABEL_50:
      v34 = *(a4 + 4);
      if (v27 >= v34)
      {
        goto LABEL_51;
      }

LABEL_72:
      __break(1u);
      return result;
    }

    v31 = &v28[v30];
    if (v30 < 0x10)
    {
      v32 = &result[v12];
      if (v28 == v31)
      {
        goto LABEL_50;
      }
    }

    else
    {
      v32 = &result[v12];
      do
      {
        v33 = vld2q_s8(v29->i8);
        v29 += 2;
        *v32++ = v33;
      }

      while (v32 != &v28[v30 & 0xFFFFFFF0]);
      if (v32 == v31)
      {
        goto LABEL_50;
      }
    }

    v35 = &result[v12 + v30];
    v36 = v35 - v32;
    if ((v35 - v32) < 4 || (v32 < (v29 + 2 * v36) ? (v37 = v29 >= v35) : (v37 = 1), !v37))
    {
      v39 = v32;
      v40 = v29;
      goto LABEL_47;
    }

    if (v36 >= 0x20)
    {
      v38 = v36 & 0xFFFFFFFFFFFFFFE0;
      v57 = v29 + 2;
      v58 = v32 + 1;
      v59 = v36 & 0xFFFFFFFFFFFFFFE0;
      do
      {
        v61 = v57[-2];
        v60 = v57[-1];
        v63 = *v57;
        v62 = v57[1];
        v57 += 4;
        v58[-1] = vuzp1q_s8(v61, v60);
        *v58 = vuzp1q_s8(v63, v62);
        v58 += 2;
        v59 -= 32;
      }

      while (v59);
      if (v36 == v38)
      {
        goto LABEL_50;
      }

      if ((v36 & 0x1C) == 0)
      {
        v40 = (v29 + 2 * v38);
        v39 = (v32 + v38);
        goto LABEL_47;
      }
    }

    else
    {
      v38 = 0;
    }

    v39 = (v32 + (v36 & 0xFFFFFFFFFFFFFFFCLL));
    v40 = (v29 + 2 * (v36 & 0xFFFFFFFFFFFFFFFCLL));
    v64 = (v29 + 2 * v38);
    v65 = (v32->i32 + v38);
    v66 = v38 - (v36 & 0xFFFFFFFFFFFFFFFCLL);
    do
    {
      v67 = *v64++;
      *v65++ = vuzp1_s8(v67, v67).u32[0];
      v66 += 4;
    }

    while (v66);
    if (v36 == (v36 & 0xFFFFFFFFFFFFFFFCLL))
    {
      goto LABEL_50;
    }

    do
    {
LABEL_47:
      v41 = v40->i8[0];
      v40 = (v40 + 2);
      v39->i8[0] = v41;
      v39 = (v39 + 1);
    }

    while (v39 != v31);
    goto LABEL_50;
  }

  v34 = 0;
LABEL_51:

  return WTF::stringTypeAdapterAccumulator<unsigned char,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>>(&v28[v34], v27 - v34, a5, a6, a7);
}

uint16x8_t *WTF::stringTypeAdapterAccumulator<char16_t,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>>(uint16x8_t *result, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (!a3)
  {
    v9 = 0;
    goto LABEL_26;
  }

  v7 = *(a3 + 8);
  v8 = *(a3 + 4);
  if ((*(a3 + 16) & 4) != 0)
  {
    v10 = (result + 2 * v8);
    if (v8 < 0x40)
    {
      v11 = result;
      if (result == v10)
      {
        goto LABEL_25;
      }
    }

    else
    {
      v11 = result + 2 * (v8 & 0xFFFFFFC0);
      v12 = 0uLL;
      v13 = result;
      do
      {
        v81.val[0] = *v7;
        v14 = *(v7 + 16);
        v83.val[0] = *(v7 + 32);
        v15 = *(v7 + 48);
        v7 += 64;
        v16 = v15;
        v83.val[1] = 0uLL;
        v85.val[0] = v14;
        v81.val[1] = 0uLL;
        v17 = v13;
        vst2q_s8(v17, v81);
        v17 += 32;
        v85.val[1] = 0uLL;
        vst2q_s8(v17, v85);
        i8 = v13[4].i8;
        vst2q_s8(i8, v83);
        v19 = v13[6].i8;
        vst2q_s8(v19, *(&v12 - 1));
        v13 += 8;
      }

      while (v13 != v11);
      if (v11 == v10)
      {
        goto LABEL_25;
      }
    }

    v20 = v10 - v11 - 2;
    if (v20 < 0xE || (v11 < v7 + (v20 >> 1) + 1 ? (v21 = v7 >= (v20 & 0xFFFFFFFFFFFFFFFELL) + v11 + 2) : (v21 = 1), !v21))
    {
      v24 = v7;
      v25 = v11;
      goto LABEL_22;
    }

    v22 = (v20 >> 1) + 1;
    if (v20 >= 0x3E)
    {
      v23 = v22 & 0xFFFFFFFFFFFFFFE0;
      v60 = (v11 + 32);
      v61 = (v7 + 16);
      v62 = v22 & 0xFFFFFFFFFFFFFFE0;
      do
      {
        v63 = *v61[-2].i8;
        v64 = vmovl_u8(*v61);
        v65 = vmovl_high_u8(*v61->i8);
        v60[-2] = vmovl_u8(*v63.i8);
        v60[-1] = vmovl_high_u8(v63);
        *v60 = v64;
        v60[1] = v65;
        v60 += 4;
        v61 += 4;
        v62 -= 32;
      }

      while (v62);
      if (v22 == v23)
      {
        goto LABEL_25;
      }

      if ((v22 & 0x18) == 0)
      {
        v25 = (v11 + 2 * v23);
        v24 = (v7 + v23);
        goto LABEL_22;
      }
    }

    else
    {
      v23 = 0;
    }

    v24 = (v7 + (v22 & 0xFFFFFFFFFFFFFFF8));
    v25 = (v11 + 2 * (v22 & 0xFFFFFFFFFFFFFFF8));
    v66 = (v11 + 2 * v23);
    v67 = (v7 + v23);
    v68 = v23 - (v22 & 0xFFFFFFFFFFFFFFF8);
    do
    {
      v69 = *v67++;
      *v66++ = vmovl_u8(v69);
      v68 += 8;
    }

    while (v68);
    if (v22 == (v22 & 0xFFFFFFFFFFFFFFF8))
    {
      goto LABEL_25;
    }

    do
    {
LABEL_22:
      v26 = *v24++;
      v25->i16[0] = v26;
      v25 = (v25 + 2);
    }

    while (v25 != v10);
    goto LABEL_25;
  }

  if (v8)
  {
    if (v8 == 1)
    {
      result->i16[0] = *v7;
    }

    else
    {
      v27 = result;
      v28 = a2;
      v29 = a3;
      v30 = a7;
      v31 = a6;
      v32 = a5;
      v33 = a4;
      memcpy(result, *(a3 + 8), 2 * v8);
      a3 = v29;
      a2 = v28;
      result = v27;
      a4 = v33;
      a5 = v32;
      a6 = v31;
      a7 = v30;
    }
  }

LABEL_25:
  v9 = *(a3 + 4);
  if (a2 < v9)
  {
    goto LABEL_72;
  }

LABEL_26:
  v34 = a2 - v9;
  v35 = &result->i16[v9];
  if (a4)
  {
    v36 = *(a4 + 8);
    v37 = *(a4 + 4);
    if ((*(a4 + 16) & 4) == 0)
    {
      if (v37)
      {
        if (v37 == 1)
        {
          *v35 = v36->i16[0];
        }

        else
        {
          v56 = a7;
          v57 = a6;
          v58 = a5;
          v59 = a4;
          result = memcpy(v35, v36, 2 * v37);
          a4 = v59;
          a5 = v58;
          a6 = v57;
          a7 = v56;
        }
      }

LABEL_50:
      v38 = *(a4 + 4);
      if (v34 >= v38)
      {
        goto LABEL_51;
      }

LABEL_72:
      __break(1u);
      return result;
    }

    v39 = &v35[v37];
    if (v37 < 0x40)
    {
      v40 = v35;
      if (v35 == v39)
      {
        goto LABEL_50;
      }
    }

    else
    {
      v40 = &v35[v37 & 0xFFFFFFC0];
      v41 = 0uLL;
      v42 = v35;
      do
      {
        v82.val[0] = *v36;
        v43 = v36[1];
        v84.val[0] = v36[2];
        v44 = v36[3];
        v36 += 4;
        v45 = v44;
        v84.val[1] = 0uLL;
        v86.val[0] = v43;
        v82.val[1] = 0uLL;
        v46 = v42;
        vst2q_s8(v46, v82);
        v46 += 32;
        v86.val[1] = 0uLL;
        vst2q_s8(v46, v86);
        v47 = v42 + 64;
        vst2q_s8(v47, v84);
        v48 = v42 + 96;
        vst2q_s8(v48, *(&v41 - 1));
        v42 += 128;
      }

      while (v42 != v40);
      if (v40 == v39)
      {
        goto LABEL_50;
      }
    }

    v49 = v39 - v40 - 2;
    if (v49 < 0xE || (v40 < v36->u64 + (v49 >> 1) + 1 ? (v50 = v36 >= (v49 & 0xFFFFFFFFFFFFFFFELL) + v40 + 2) : (v50 = 1), !v50))
    {
      v53 = v36;
      v54 = v40;
      goto LABEL_47;
    }

    v51 = (v49 >> 1) + 1;
    if (v49 >= 0x3E)
    {
      v52 = v51 & 0xFFFFFFFFFFFFFFE0;
      v70 = (v40 + 32);
      v71 = &v36[1];
      v72 = v51 & 0xFFFFFFFFFFFFFFE0;
      do
      {
        v73 = *v71[-2].i8;
        v74 = vmovl_u8(*v71);
        v75 = vmovl_high_u8(*v71->i8);
        v70[-2] = vmovl_u8(*v73.i8);
        v70[-1] = vmovl_high_u8(v73);
        *v70 = v74;
        v70[1] = v75;
        v70 += 4;
        v71 += 4;
        v72 -= 32;
      }

      while (v72);
      if (v51 == v52)
      {
        goto LABEL_50;
      }

      if ((v51 & 0x18) == 0)
      {
        v54 = (v40 + 2 * v52);
        v53 = (v36 + v52);
        goto LABEL_47;
      }
    }

    else
    {
      v52 = 0;
    }

    v53 = (v36 + (v51 & 0xFFFFFFFFFFFFFFF8));
    v54 = (v40 + 2 * (v51 & 0xFFFFFFFFFFFFFFF8));
    v76 = (v40 + 2 * v52);
    v77 = &v36->i8[v52];
    v78 = v52 - (v51 & 0xFFFFFFFFFFFFFFF8);
    do
    {
      v79 = *v77++;
      *v76++ = vmovl_u8(v79);
      v78 += 8;
    }

    while (v78);
    if (v51 == (v51 & 0xFFFFFFFFFFFFFFF8))
    {
      goto LABEL_50;
    }

    do
    {
LABEL_47:
      v55 = v53->u8[0];
      v53 = (v53 + 1);
      *v54++ = v55;
    }

    while (v54 != v39);
    goto LABEL_50;
  }

  v38 = 0;
LABEL_51:

  return WTF::stringTypeAdapterAccumulator<char16_t,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>>(&v35[v38], v34 - v38, a5, a6, a7);
}

void *WTF::Detail::CallableWrapper<WTF::NativePromise<WTF::Ref<WebCore::WebTransportSession,WTF::RawPtrTraits<WebCore::WebTransportSession>,WTF::DefaultRefDerefTraits<WebCore::WebTransportSession>>,void,0u>::ThenCallbackBase::dispatch(WTF::NativePromise<WTF::Ref<WebCore::WebTransportSession,WTF::RawPtrTraits<WebCore::WebTransportSession>,WTF::DefaultRefDerefTraits<WebCore::WebTransportSession>>,void,0u>&,WTF::Locker<WTF::Lock,void> &)::{lambda(void)#1},void>::~CallableWrapper(void *result)
{
  *result = &unk_1F472B178;
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

uint64_t WTF::Detail::CallableWrapper<WTF::NativePromise<WTF::Ref<WebCore::WebTransportSession,WTF::RawPtrTraits<WebCore::WebTransportSession>,WTF::DefaultRefDerefTraits<WebCore::WebTransportSession>>,void,0u>::ThenCallbackBase::dispatch(WTF::NativePromise<WTF::Ref<WebCore::WebTransportSession,WTF::RawPtrTraits<WebCore::WebTransportSession>,WTF::DefaultRefDerefTraits<WebCore::WebTransportSession>>,void,0u>&,WTF::Locker<WTF::Lock,void> &)::{lambda(void)#1},void>::~CallableWrapper(WTF *a1, void *a2)
{
  *a1 = &unk_1F472B178;
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

unsigned __int8 *WTF::Detail::CallableWrapper<WTF::NativePromise<WTF::Ref<WebCore::WebTransportSession,WTF::RawPtrTraits<WebCore::WebTransportSession>,WTF::DefaultRefDerefTraits<WebCore::WebTransportSession>>,void,0u>::ThenCallbackBase::dispatch(WTF::NativePromise<WTF::Ref<WebCore::WebTransportSession,WTF::RawPtrTraits<WebCore::WebTransportSession>,WTF::DefaultRefDerefTraits<WebCore::WebTransportSession>>,void,0u>&,WTF::Locker<WTF::Lock,void> &)::{lambda(void)#1},void>::call(WTF::NativePromiseBase *a1)
{
  v2 = *(a1 + 1);
  v1 = *(a1 + 2);
  if (*(v2 + 56) == 1)
  {
    v22 = *(a1 + 1);
    result = WTF::NativePromiseBase::logChannel(a1);
    if (*result)
    {
      v4 = result[16] >= 4u;
    }

    else
    {
      v4 = 0;
    }

    if (v4)
    {
      return WTF::Logger::log<char [32],WTF::NativePromise<WTF::Ref<WebCore::WebTransportSession,WTF::RawPtrTraits<WebCore::WebTransportSession>,WTF::DefaultRefDerefTraits<WebCore::WebTransportSession>>,void,0u>,char [21],void const*,char [11],WTF::Logger::LogSiteIdentifier,char [2]>(result, v1, &v22, (v2 + 24));
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
    v8 = *(v1 + 72);
    atomic_compare_exchange_strong_explicit(v6, &v7, 0, memory_order_release, memory_order_relaxed);
    if (v7 == 1)
    {
LABEL_11:
      v9 = *(a1 + 1);
      v10 = *(a1 + 2);
      if (v8 == 2)
      {
        goto LABEL_12;
      }

      goto LABEL_22;
    }
  }

  else
  {
    v8 = *(v1 + 72);
    atomic_compare_exchange_strong_explicit(v6, &v7, 0, memory_order_release, memory_order_relaxed);
    if (v7 == 1)
    {
      goto LABEL_11;
    }
  }

  v16 = a1;
  a1 = WTF::Lock::unlockSlow(v6);
  v17 = v16 + 8;
  v9 = *(v16 + 1);
  v10 = *(v17 + 1);
  if (v8 == 2)
  {
LABEL_12:
    v11 = 0;
    a1 = (v10 + 48);
    atomic_compare_exchange_strong_explicit((v10 + 48), &v11, 1u, memory_order_acquire, memory_order_acquire);
    if (v11)
    {
      MEMORY[0x1CCA63990]();
      a1 = (v10 + 48);
      if (*(v10 + 72) == 2)
      {
        goto LABEL_14;
      }
    }

    else if (*(v10 + 72) == 2)
    {
LABEL_14:
      v12 = *(v10 + 56);
      *(v10 + 56) = 0;
      v13 = 1;
      atomic_compare_exchange_strong_explicit((v10 + 48), &v13, 0, memory_order_release, memory_order_relaxed);
      if (v13 != 1)
      {
        WTF::Lock::unlockSlow(a1);
      }

      (*(*v12 + 16))(&v22, v12);
      (*(*v9 + 24))(v9, v10, &v22);
      if (!v23)
      {
        v14 = v22;
        v22 = 0;
        if (v14)
        {
          (*(*v14 + 8))(v14);
        }
      }

      v23 = -1;
      return (*(*v12 + 8))(v12);
    }

LABEL_36:
    mpark::throw_bad_variant_access(a1);
  }

LABEL_22:
  v18 = 0;
  atomic_compare_exchange_strong_explicit((v10 + 48), &v18, 1u, memory_order_acquire, memory_order_acquire);
  if (v18)
  {
    a1 = MEMORY[0x1CCA63990](v10 + 48);
    if (*(v10 + 72) != 1)
    {
      goto LABEL_36;
    }
  }

  else if (*(v10 + 72) != 1)
  {
    goto LABEL_36;
  }

  LOBYTE(v22) = 0;
  v23 = -1;
  v19 = *(v10 + 64);
  if (v19 != 255)
  {
    if (!*(v10 + 64))
    {
      v20 = *(v10 + 56);
      *(v10 + 56) = 0;
      v22 = v20;
    }

    v23 = v19;
  }

  v21 = 1;
  atomic_compare_exchange_strong_explicit((v10 + 48), &v21, 0, memory_order_release, memory_order_relaxed);
  if (v21 != 1)
  {
    WTF::Lock::unlockSlow((v10 + 48));
  }

  result = (*(*v9 + 24))(v9, v10, &v22);
  if (!v23)
  {
    result = v22;
    v22 = 0;
    if (result)
    {
      return (*(*result + 8))(result);
    }
  }

  return result;
}

uint64_t WTF::NativePromise<WTF::Ref<WebCore::WebTransportSession,WTF::RawPtrTraits<WebCore::WebTransportSession>,WTF::DefaultRefDerefTraits<WebCore::WebTransportSession>>,void,0u>::settleAsChainedPromise<WTF::NativePromise<WTF::Ref<WebCore::WebTransportSession,WTF::RawPtrTraits<WebCore::WebTransportSession>,WTF::DefaultRefDerefTraits<WebCore::WebTransportSession>>,void,0u>::Storage>(uint64_t a1, uint64_t *a2, WTF::Logger::LogSiteIdentifier *a3)
{
  v6 = 0;
  v97[2] = *MEMORY[0x1E69E9840];
  v7 = (a1 + 48);
  v84 = v7;
  v85 = 1;
  atomic_compare_exchange_strong_explicit(v7, &v6, 1u, memory_order_acquire, memory_order_acquire);
  if (v6)
  {
    v81 = MEMORY[0x1CCA63990]();
    v8 = WTF::NativePromiseBase::logChannel(v81);
    if (*v8)
    {
      v82 = v8[16] >= 4u;
    }

    else
    {
      v82 = 0;
    }

    if (!v82)
    {
      goto LABEL_85;
    }
  }

  else
  {
    v8 = WTF::NativePromiseBase::logChannel(v7);
    if (*v8)
    {
      v9 = v8[16] >= 4u;
    }

    else
    {
      v9 = 0;
    }

    if (!v9)
    {
      goto LABEL_85;
    }
  }

  v10 = v8;
  WTF::Logger::LogSiteIdentifier::toString(&v90, a3);
  WTF::String::String(&v89, " settling chained promise ");
  result = WTF::LogArgument<WTF::NativePromise<WTF::Ref<WebCore::WebTransportSession,WTF::RawPtrTraits<WebCore::WebTransportSession>,WTF::DefaultRefDerefTraits<WebCore::WebTransportSession>>,void,0u>>::toString(&v88, a1);
  v12 = v88;
  if (v90)
  {
    v13 = *(v90 + 1);
    if (v89)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v13 = 0;
    if (v89)
    {
LABEL_9:
      v14 = *(v89 + 1);
      if (v88)
      {
        goto LABEL_10;
      }

      goto LABEL_14;
    }
  }

  v14 = 0;
  if (v88)
  {
LABEL_10:
    v15 = *(v88 + 4);
    if ((v15 | v14) < 0)
    {
      goto LABEL_172;
    }

    goto LABEL_15;
  }

LABEL_14:
  v15 = 0;
  if (v14 < 0)
  {
LABEL_172:
    v91 = 0;
    goto LABEL_173;
  }

LABEL_15:
  v16 = __OFADD__(v14, v15);
  v17 = v14 + v15;
  v18 = v16;
  if (v13 < 0)
  {
    goto LABEL_172;
  }

  if (v18)
  {
    goto LABEL_172;
  }

  result = (v13 + v17);
  if (__OFADD__(v13, v17))
  {
    goto LABEL_172;
  }

  if (v90 && (*(v90 + 16) & 4) == 0)
  {
    result = WTF::tryMakeStringImplFromAdaptersInternal<WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>>(result, 0, v90, v89, v88, &v91);
    if (!v91)
    {
      goto LABEL_173;
    }

    goto LABEL_32;
  }

  if (!v89)
  {
    if (!v88)
    {
      result = WTF::tryMakeStringImplFromAdaptersInternal<WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>>(result, 1, v90, 0, 0, &v91);
      if (!v91)
      {
        goto LABEL_173;
      }

      goto LABEL_32;
    }

    goto LABEL_30;
  }

  v20 = *(v89 + 4);
  v21 = (v20 >> 2) & 1;
  if (v88 && (v20 & 4) != 0)
  {
LABEL_30:
    v21 = (*(v88 + 16) >> 2) & 1;
  }

  result = WTF::tryMakeStringImplFromAdaptersInternal<WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>>(result, v21, v90, v89, v88, &v91);
  if (!v91)
  {
LABEL_173:
    __break(0xC471u);
    return result;
  }

LABEL_32:
  v88 = 0;
  if (v12 && atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v12, v19);
  }

  v22 = v89;
  v89 = 0;
  if (v22 && atomic_fetch_add_explicit(v22, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v22, v19);
  }

  v23 = v90;
  v90 = 0;
  if (v23 && atomic_fetch_add_explicit(v23, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v23, v19);
  }

  v24 = *(v10 + 4);
  v25 = os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT);
  if (!v25 || ((WTF::String::utf8(), v86) ? (v27 = v86 + 16) : (v27 = 0), *buf = 136446210, *v93 = v27, _os_log_impl(&dword_1C79C0000, v24, OS_LOG_TYPE_DEFAULT, "%{public}s", buf, 0xCu), v25 = v86, v86 = 0, !v25))
  {
LABEL_48:
    if (*v10)
    {
      goto LABEL_49;
    }

    goto LABEL_82;
  }

  if (*v25 != 1)
  {
    --*v25;
    goto LABEL_48;
  }

  v25 = WTF::fastFree(v25, v26);
  if (*v10)
  {
LABEL_49:
    if (v10[16] >= 4u)
    {
      v28 = MEMORY[0x1E696EBC0];
      while (1)
      {
        v29 = *v28;
        if (v29)
        {
          break;
        }

        v30 = *v28;
        atomic_compare_exchange_strong_explicit(v28, &v30, v29 | 1, memory_order_acquire, memory_order_acquire);
        if (v30 == v29)
        {
          v31 = WTF::Logger::observers(v25);
          v32 = *(v31 + 12);
          if (v32)
          {
            v33 = *v31;
            v83 = *v31 + 8 * v32;
            do
            {
              v34 = *v33;
              *buf = 0;
              WTF::Logger::LogSiteIdentifier::toString(&v93[4], a3);
              v94 = 0;
              WTF::String::String(&v95, " settling chained promise ");
              v96 = 0;
              WTF::LogArgument<WTF::NativePromise<WTF::Ref<WebCore::WebTransportSession,WTF::RawPtrTraits<WebCore::WebTransportSession>,WTF::DefaultRefDerefTraits<WebCore::WebTransportSession>>,void,0u>>::toString(v97, a1);
              v86 = 0;
              v87 = 0;
              v35 = WTF::fastMalloc(0x30);
              LODWORD(v87) = 3;
              v86 = v35;
              v36 = HIDWORD(v87);
              v37 = v35 + 16 * HIDWORD(v87);
              *v37 = *buf;
              v38 = *&v93[4];
              if (*&v93[4])
              {
                atomic_fetch_add_explicit(*&v93[4], 2u, memory_order_relaxed);
                v36 = HIDWORD(v87);
                v35 = v86;
              }

              *(v37 + 1) = v38;
              v39 = v36 + 1;
              HIDWORD(v87) = v39;
              v40 = v35 + 16 * v39;
              *v40 = v94;
              v41 = v95;
              if (v95)
              {
                atomic_fetch_add_explicit(v95, 2u, memory_order_relaxed);
                v39 = HIDWORD(v87);
                v35 = v86;
              }

              *(v40 + 1) = v41;
              v42 = v39 + 1;
              HIDWORD(v87) = v42;
              v43 = v35 + 16 * v42;
              *v43 = v96;
              v44 = v97[0];
              if (v97[0])
              {
                atomic_fetch_add_explicit(v97[0], 2u, memory_order_relaxed);
                v42 = HIDWORD(v87);
              }

              *(v43 + 1) = v44;
              HIDWORD(v87) = v42 + 1;
              (*(*v34 + 16))(v34, v10, 4, &v86);
              v45 = v86;
              if (HIDWORD(v87))
              {
                v46 = a3;
                v47 = 16 * HIDWORD(v87);
                v48 = (v86 + 8);
                do
                {
                  v49 = *v48;
                  *v48 = 0;
                  if (v49 && atomic_fetch_add_explicit(v49, 0xFFFFFFFE, memory_order_relaxed) == 2)
                  {
                    WTF::StringImpl::destroy(v49, v26);
                  }

                  v48 += 2;
                  v47 -= 16;
                }

                while (v47);
                v45 = v86;
                a3 = v46;
              }

              if (v45)
              {
                v86 = 0;
                LODWORD(v87) = 0;
                WTF::fastFree(v45, v26);
              }

              v50 = v97[0];
              v97[0] = 0;
              if (v50 && atomic_fetch_add_explicit(v50, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v50, v26);
              }

              v51 = v95;
              v95 = 0;
              if (v51 && atomic_fetch_add_explicit(v51, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v51, v26);
              }

              v52 = *&v93[4];
              *&v93[4] = 0;
              if (v52 && atomic_fetch_add_explicit(v52, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v52, v26);
              }

              ++v33;
            }

            while (v33 != v83);
          }

          v53 = 1;
          atomic_compare_exchange_strong_explicit(v28, &v53, 0, memory_order_release, memory_order_relaxed);
          if (v53 != 1)
          {
            WTF::Lock::unlockSlow(MEMORY[0x1E696EBC0]);
          }

          break;
        }
      }
    }
  }

LABEL_82:
  v54 = v91;
  v91 = 0;
  if (v54 && atomic_fetch_add_explicit(v54, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v54, v26);
  }

LABEL_85:
  v55 = *(a1 + 72);
  v56 = *(a2 + 16);
  if (v55 == 255 && v56 == 255)
  {
    goto LABEL_161;
  }

  if (v56 != 255)
  {
    if (v56 == 2)
    {
      if (*(a1 + 72) > 1u)
      {
        if (v55 != 255)
        {
          v68 = *a2;
          *a2 = 0;
          v69 = *(a1 + 56);
          *(a1 + 56) = v68;
          if (!v69)
          {
            goto LABEL_161;
          }

          goto LABEL_160;
        }
      }

      else if (*(a1 + 72))
      {
        if (!*(a1 + 64))
        {
          v61 = *(a1 + 56);
          *(a1 + 56) = 0;
          if (v61)
          {
            (*(*v61 + 8))(v61);
          }
        }

        *(a1 + 64) = -1;
      }

      v66 = *a2;
      *a2 = 0;
      *(a1 + 56) = v66;
      *(a1 + 72) = 2;
      goto LABEL_161;
    }

    if (v56 != 1)
    {
      if (*(a1 + 72) > 1u)
      {
        if (v55 == 2)
        {
          v67 = *(a1 + 56);
          *(a1 + 56) = 0;
          if (v67)
          {
            (*(*v67 + 8))(v67);
          }
        }

        *(a1 + 72) = 0;
      }

      else if (*(a1 + 72))
      {
        if (!*(a1 + 64))
        {
          v62 = *(a1 + 56);
          *(a1 + 56) = 0;
          if (v62)
          {
            (*(*v62 + 8))(v62);
          }
        }

        *(a1 + 64) = -1;
        *(a1 + 72) = 0;
      }

      goto LABEL_161;
    }

    if (*(a1 + 72) > 1u)
    {
      if (v55 == 2)
      {
        v63 = *(a1 + 56);
        *(a1 + 56) = 0;
        if (v63)
        {
          (*(*v63 + 8))(v63);
        }
      }
    }

    else if (*(a1 + 72))
    {
      v58 = *(a2 + 8);
      if (*(a2 + 8))
      {
        v59 = 0;
      }

      else
      {
        v59 = *a2;
        *a2 = 0;
      }

      v70 = *(a1 + 64);
      if (*(a1 + 64))
      {
        v71 = (a1 + 64);
        if (v70 == 255)
        {
          v69 = 0;
          v72 = 1;
          if (v58)
          {
            if (v58 == 255)
            {
              goto LABEL_161;
            }

            goto LABEL_156;
          }

          goto LABEL_151;
        }

        v69 = 0;
        v72 = 1;
      }

      else
      {
        v72 = 0;
        v70 = 0;
        v69 = *(a1 + 56);
        *(a1 + 56) = 0;
        v71 = (a1 + 64);
      }

      if (v58)
      {
        if (v58 == 255)
        {
          if (!v70)
          {
            v73 = *(a1 + 56);
            *(a1 + 56) = 0;
            if (v73)
            {
              v74 = v69;
              (*(*v73 + 8))(v73);
              v69 = v74;
            }
          }

          v75 = -1;
          goto LABEL_157;
        }

        if (v70 != 1)
        {
          if (!v70)
          {
            v76 = *(a1 + 56);
            *(a1 + 56) = 0;
            if (v76)
            {
              v77 = v69;
              (*(*v76 + 8))(v76);
              v69 = v77;
            }
          }

LABEL_156:
          v75 = 1;
LABEL_157:
          *v71 = v75;
        }
      }

      else
      {
        if (v70)
        {
LABEL_151:
          *(a1 + 56) = v59;
          *(a1 + 64) = 0;
          goto LABEL_158;
        }

        v79 = *(a1 + 56);
        *(a1 + 56) = v59;
        if (v79)
        {
          v80 = v69;
          (*(*v79 + 8))(v79);
          v69 = v80;
        }
      }

LABEL_158:
      if ((v72 & 1) != 0 || !v69)
      {
        goto LABEL_161;
      }

LABEL_160:
      (*(*v69 + 8))(v69);
      goto LABEL_161;
    }

    *(a1 + 56) = 0;
    *(a1 + 64) = -1;
    v64 = *(a2 + 8);
    if (v64 != 255)
    {
      if (!*(a2 + 8))
      {
        v65 = *a2;
        *a2 = 0;
        *(a1 + 56) = v65;
      }

      *(a1 + 64) = v64;
    }

    *(a1 + 72) = 1;
    goto LABEL_161;
  }

  if (*(a1 + 72) > 1u)
  {
    if (v55 == 2)
    {
      v60 = *(a1 + 56);
      *(a1 + 56) = 0;
      if (v60)
      {
        (*(*v60 + 8))(v60);
      }
    }
  }

  else if (*(a1 + 72))
  {
    if (!*(a1 + 64))
    {
      v57 = *(a1 + 56);
      *(a1 + 56) = 0;
      if (v57)
      {
        (*(*v57 + 8))(v57);
      }
    }

    *(a1 + 64) = -1;
    *(a1 + 72) = -1;
    goto LABEL_161;
  }

  *(a1 + 72) = -1;
LABEL_161:
  result = WTF::NativePromise<WTF::Ref<WebCore::WebTransportSession,WTF::RawPtrTraits<WebCore::WebTransportSession>,WTF::DefaultRefDerefTraits<WebCore::WebTransportSession>>,void,0u>::dispatchAll(a1, &v84);
  v78 = v85;
  if (v85 == 1)
  {
    result = v84;
    atomic_compare_exchange_strong_explicit(v84, &v78, 0, memory_order_release, memory_order_relaxed);
    if (v78 != 1)
    {
      return WTF::Lock::unlockSlow(result);
    }
  }

  return result;
}

uint64_t WTF::tryMakeStringFromAdapters<WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<int,void>>@<X0>(uint64_t result@<X0>, unsigned int *a2@<X1>, void *a3@<X8>)
{
  v37 = *MEMORY[0x1E69E9840];
  v3 = *(result + 8);
  v4 = *a2;
  if ((v4 & 0x80000000) != 0)
  {
    v8 = -v4;
    v5 = 1;
    do
    {
      ++v5;
      v9 = v8 >= 0xA;
      v8 /= 0xAu;
    }

    while (v9);
  }

  else
  {
    v5 = 0;
    v6 = *a2;
    do
    {
      ++v5;
      v7 = v6 > 9;
      v6 /= 0xAu;
    }

    while (v7);
  }

  if (((v5 | v3) & 0x80000000) == 0)
  {
    v10 = (v3 + v5);
    if (!__OFADD__(v3, v5))
    {
      if (!v10)
      {
        v11 = MEMORY[0x1E696EB88];
        atomic_fetch_add_explicit(MEMORY[0x1E696EB88], 2u, memory_order_relaxed);
        goto LABEL_55;
      }

      if ((v10 & 0x80000000) == 0)
      {
        v12 = a3;
        v13 = *result;
        result = WTF::tryFastCompactMalloc((v10 + 20));
        v11 = v31;
        if (v31)
        {
          v14 = v31 + 5;
          *v31 = 2;
          v11[1] = v10;
          *(v11 + 1) = v11 + 5;
          v11[4] = 4;
          if (v3)
          {
            if (v3 == 1)
            {
              *v14 = *v13;
            }

            else
            {
              result = memcpy(v11 + 5, v13, v3);
            }
          }

          v15 = v10 - v3;
          if (v10 >= v3)
          {
            v16 = &v14[v3];
            if ((v4 & 0x80000000) == 0)
            {
              result = WTF::writeIntegerToBufferImpl<unsigned char,unsigned int,(WTF::PositiveOrNegativeNumber)0>(v4, v16, v15);
              goto LABEL_22;
            }

            v17 = -v4;
            v36 = (-v4 % 0xAu) | 0x30;
            if (-v4 >= 0xA)
            {
              v35 = (-v4 / 0xAu - 10 * ((429496730 * (-v4 / 0xAu)) >> 32)) | 0x30;
              a3 = v12;
              if (v17 >= 0x64)
              {
                v18 = 10;
                v34 = (v17 / 0x64 - 10 * ((429496730 * (v17 / 0x64)) >> 32)) | 0x30;
                if (v17 >= 0x3E8)
                {
                  v33 = (v17 / 0x3E8 - 10 * ((429496730 * (v17 / 0x3E8)) >> 32)) | 0x30;
                  if (v17 >> 4 >= 0x271)
                  {
                    v32 = (v17 / 0x2710 - 10 * ((429496730 * (v17 / 0x2710)) >> 32)) | 0x30;
                    if (v17 >> 5 >= 0xC35)
                    {
                      HIBYTE(v31) = (v17 / 0x186A0 - 10 * ((52429 * (v17 / 0x186A0)) >> 19)) | 0x30;
                      if (v17 >= 0xF4240)
                      {
                        BYTE6(v31) = (v17 / 0xF4240 - 10 * ((6554 * (v17 / 0xF4240)) >> 16)) | 0x30;
                        if (v17 >= 0x989680)
                        {
                          BYTE5(v31) = ((v17 / 0x989680) % 0xAu) | 0x30;
                          if (v17 >= 0x5F5E100)
                          {
                            BYTE4(v31) = (v17 / 0x5F5E100 - 10 * ((26 * (v17 / 0x5F5E100)) >> 8)) | 0x30;
                            if (v17 >= 0x3B9ACA00)
                            {
                              BYTE3(v31) = (v17 / 0x3B9ACA00) | 0x30;
                              v18 = 4;
                            }

                            else
                            {
                              v18 = 5;
                            }
                          }

                          else
                          {
                            v18 = 6;
                          }
                        }

                        else
                        {
                          v18 = 7;
                        }
                      }

                      else
                      {
                        v18 = 8;
                      }
                    }

                    else
                    {
                      v18 = 9;
                    }
                  }
                }

                else
                {
                  v18 = 11;
                }
              }

              else
              {
                v18 = 12;
              }
            }

            else
            {
              v18 = 13;
              a3 = v12;
            }

            *(&v31 + v18 - 2) = 45;
            v19 = v18 ^ 0xF;
            v20 = 14 - v18;
            if (v15 < 14 - v18)
            {
              v20 = v10 - v3;
            }

            if (v20 >= v19)
            {
              v20 = v18 ^ 0xF;
            }

            if (v20 >= 8)
            {
              v22 = v20 + 1;
              v23 = v22 & 7;
              if ((v22 & 7) == 0)
              {
                v23 = 8;
              }

              v21 = v22 - v23;
              v24 = (&v31 + v18 - 2);
              v25 = v21;
              do
              {
                v26 = *v24++;
                *v16 = v26;
                v16 += 8;
                v25 -= 8;
              }

              while (v25);
            }

            else
            {
              v21 = 0;
            }

            v27 = v19 - v21;
            v28 = v21 + v3 + 20;
            v29 = v21 + v3 - v10;
            v30 = v18 + v21 - 2;
            while (v27 && v29)
            {
              *(v11 + v28++) = *(&v31 + v30);
              ++v29;
              ++v30;
              if (!--v27)
              {
                goto LABEL_55;
              }
            }
          }

          __break(1u);
        }

LABEL_22:
        a3 = v12;
        goto LABEL_55;
      }
    }
  }

  v11 = 0;
LABEL_55:
  *a3 = v11;
  return result;
}

uint64_t WTF::writeIntegerToBufferImpl<unsigned char,unsigned int,(WTF::PositiveOrNegativeNumber)0>(uint64_t result, _BYTE *a2, uint64_t a3)
{
  v6 = *MEMORY[0x1E69E9840];
  v5[12] = (result % 0xA) | 0x30;
  if (result >= 0xA)
  {
    v5[11] = (result / 0xA - 10 * ((429496730 * (result / 0xA)) >> 32)) | 0x30;
    if (result >= 0x64)
    {
      v3 = 10;
      v5[10] = (result / 0x64 - 10 * ((429496730 * (result / 0x64)) >> 32)) | 0x30;
      if (result >= 0x3E8)
      {
        v5[9] = (result / 0x3E8 - 10 * ((429496730 * (result / 0x3E8)) >> 32)) | 0x30;
        if (result >> 4 >= 0x271)
        {
          v5[8] = (result / 0x2710 - 10 * ((429496730 * (result / 0x2710)) >> 32)) | 0x30;
          if (result >> 5 >= 0xC35)
          {
            v5[7] = (result / 0x186A0 - 10 * ((52429 * (result / 0x186A0)) >> 19)) | 0x30;
            if (result >= 0xF4240)
            {
              v5[6] = (result / 0xF4240 - 10 * ((6554 * (result / 0xF4240)) >> 16)) | 0x30;
              if (result >= 0x989680)
              {
                v5[5] = (result / 0x989680 - 10 * ((6554 * (result / 0x989680)) >> 16)) | 0x30;
                if (result >= 0x5F5E100)
                {
                  v5[4] = (result / 0x5F5E100 - 10 * ((26 * (result / 0x5F5E100)) >> 8)) | 0x30;
                  if (result >= 0x3B9ACA00)
                  {
                    v5[3] = (result / 0x3B9ACA00) | 0x30;
                    v3 = 3;
                    v4 = 10;
                  }

                  else
                  {
                    v3 = 4;
                    v4 = 9;
                  }
                }

                else
                {
                  v3 = 5;
                  v4 = 8;
                }
              }

              else
              {
                v3 = 6;
                v4 = 7;
              }
            }

            else
            {
              v3 = 7;
              v4 = 6;
            }
          }

          else
          {
            v3 = 8;
            v4 = 5;
          }
        }

        else
        {
          v3 = 9;
          v4 = 4;
        }
      }

      else
      {
        v4 = 3;
      }
    }

    else
    {
      v3 = 11;
      v4 = 2;
    }
  }

  else
  {
    v3 = 12;
    v4 = 1;
  }

  do
  {
    if (v3 == 13 || !a3)
    {
      __break(1u);
    }

    *a2++ = v5[v3];
    --a3;
    ++v3;
    --v4;
  }

  while (v4);
  return result;
}

void *WTF::HashTable<PAL::SessionID,WTF::KeyValuePair<PAL::SessionID,std::unique_ptr<WebCore::NetworkStorageSession>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<PAL::SessionID,std::unique_ptr<WebCore::NetworkStorageSession>>>,WTF::DefaultHash<PAL::SessionID>,WTF::HashMap<PAL::SessionID,std::unique_ptr<WebCore::NetworkStorageSession>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<std::unique_ptr<WebCore::NetworkStorageSession>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<PAL::SessionID>,WTF::FastMalloc>::rehash(unsigned int a1, uint64_t *a2)
{
  v4 = globalSessionMap(void)::map;
  if (globalSessionMap(void)::map)
  {
    v5 = *(globalSessionMap(void)::map - 4);
    v6 = *(globalSessionMap(void)::map - 12);
    v7 = 16 * a1;
    v9 = WTF::fastMalloc((v7 + 16));
    v10 = v9 + 4;
    if (!a1)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v5 = 0;
  v6 = 0;
  v7 = 16 * a1;
  v9 = WTF::fastMalloc((v7 + 16));
  v10 = v9 + 4;
  if (a1)
  {
LABEL_3:
    bzero(v10, v7);
  }

LABEL_4:
  globalSessionMap(void)::map = v10;
  v9[2] = a1 - 1;
  v9[3] = a1;
  *v9 = 0;
  v9[1] = v6;
  if (v5)
  {
    v11 = 0;
    v12 = 0;
    v13 = v5;
    while (1)
    {
      v14 = (v4 + 16 * v11);
      v15 = *v14;
      if (*v14 != -1)
      {
        if (v15)
        {
          if (globalSessionMap(void)::map)
          {
            v18 = *(globalSessionMap(void)::map - 8);
          }

          else
          {
            v18 = 0;
          }

          v19 = (v15 + ~(v15 << 32)) ^ ((v15 + ~(v15 << 32)) >> 22);
          v20 = 9 * ((v19 + ~(v19 << 13)) ^ ((v19 + ~(v19 << 13)) >> 8));
          v21 = (v20 ^ (v20 >> 15)) + ~((v20 ^ (v20 >> 15)) << 27);
          v22 = v18 & ((v21 >> 31) ^ v21);
          v23 = 1;
          do
          {
            v24 = v22;
            v25 = *(globalSessionMap(void)::map + 16 * v22);
            v22 = (v22 + v23++) & v18;
          }

          while (v25);
          v26 = (globalSessionMap(void)::map + 16 * v24);
          v27 = v26[1];
          v26[1] = 0;
          if (v27)
          {
            v28 = MEMORY[0x1CCA666A0]();
            if (!*(v28 + 8))
            {
              bmalloc::api::tzoneFree(v28, v8);
              goto LABEL_23;
            }

            *(v28 + 336) = 0u;
            *(v28 + 352) = 0u;
            *(v28 + 304) = 0u;
            *(v28 + 320) = 0u;
            *(v28 + 272) = 0u;
            *(v28 + 288) = 0u;
            *(v28 + 240) = 0u;
            *(v28 + 256) = 0u;
            *(v28 + 208) = 0u;
            *(v28 + 224) = 0u;
            *(v28 + 176) = 0u;
            *(v28 + 192) = 0u;
            *(v28 + 144) = 0u;
            *(v28 + 160) = 0u;
            *(v28 + 112) = 0u;
            *(v28 + 128) = 0u;
            *(v28 + 80) = 0u;
            *(v28 + 96) = 0u;
            *(v28 + 48) = 0u;
            *(v28 + 64) = 0u;
            *(v28 + 16) = 0u;
            *(v28 + 32) = 0u;
            *v28 = 0u;
            v33 = *v14;
            v34 = v14[1];
            v14[1] = 0;
            *v26 = v33;
            v26[1] = v34;
            v35 = v14[1];
            v14[1] = 0;
            if (!v35)
            {
LABEL_7:
              if (v14 == a2)
              {
                v12 = v26;
              }

              goto LABEL_9;
            }
          }

          else
          {
LABEL_23:
            v29 = *v14;
            v30 = v14[1];
            v14[1] = 0;
            *v26 = v29;
            v26[1] = v30;
            v31 = v14[1];
            v14[1] = 0;
            if (!v31)
            {
              goto LABEL_7;
            }
          }

          v32 = MEMORY[0x1CCA666A0]();
          if (*(v32 + 8))
          {
            *(v32 + 336) = 0u;
            *(v32 + 352) = 0u;
            *(v32 + 304) = 0u;
            *(v32 + 320) = 0u;
            *(v32 + 272) = 0u;
            *(v32 + 288) = 0u;
            *(v32 + 240) = 0u;
            *(v32 + 256) = 0u;
            *(v32 + 208) = 0u;
            *(v32 + 224) = 0u;
            *(v32 + 176) = 0u;
            *(v32 + 192) = 0u;
            *(v32 + 144) = 0u;
            *(v32 + 160) = 0u;
            *(v32 + 112) = 0u;
            *(v32 + 128) = 0u;
            *(v32 + 80) = 0u;
            *(v32 + 96) = 0u;
            *(v32 + 48) = 0u;
            *(v32 + 64) = 0u;
            *(v32 + 16) = 0u;
            *(v32 + 32) = 0u;
            *v32 = 0u;
          }

          else
          {
            bmalloc::api::tzoneFree(v32, v8);
          }

          goto LABEL_7;
        }

        v16 = v14[1];
        v14[1] = 0;
        if (v16)
        {
          v17 = MEMORY[0x1CCA666A0]();
          if (*(v17 + 8))
          {
            *(v17 + 336) = 0u;
            *(v17 + 352) = 0u;
            *(v17 + 304) = 0u;
            *(v17 + 320) = 0u;
            *(v17 + 272) = 0u;
            *(v17 + 288) = 0u;
            *(v17 + 240) = 0u;
            *(v17 + 256) = 0u;
            *(v17 + 208) = 0u;
            *(v17 + 224) = 0u;
            *(v17 + 176) = 0u;
            *(v17 + 192) = 0u;
            *(v17 + 144) = 0u;
            *(v17 + 160) = 0u;
            *(v17 + 112) = 0u;
            *(v17 + 128) = 0u;
            *(v17 + 80) = 0u;
            *(v17 + 96) = 0u;
            *(v17 + 48) = 0u;
            *(v17 + 64) = 0u;
            *(v17 + 16) = 0u;
            *(v17 + 32) = 0u;
            *v17 = 0u;
          }

          else
          {
            bmalloc::api::tzoneFree(v17, v8);
          }
        }
      }

LABEL_9:
      if (++v11 == v13)
      {
        goto LABEL_32;
      }
    }
  }

  v12 = 0;
  result = 0;
  if (v4)
  {
LABEL_32:
    WTF::fastFree((v4 - 16), v8);
    return v12;
  }

  return result;
}

const void **WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0,unsigned char const>(const void **result, unint64_t a2)
{
  v2 = *(result + 2);
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

  if (HIDWORD(v3))
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

    v7 = *(result + 3);
    v8 = WTF::fastMalloc(v6);
    *(v4 + 2) = v6;
    *v4 = v8;
    result = memcpy(v8, v5, v7);
    if (v5)
    {
      if (*v4 == v5)
      {
        *v4 = 0;
        *(v4 + 2) = 0;
        v10 = v5;
      }

      else
      {
        v10 = v5;
      }

      return WTF::fastFree(v10, v9);
    }
  }

  return result;
}