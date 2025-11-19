@interface DOMTextEvent
- (NSString)data;
- (void)initTextEvent:(id)a3 canBubbleArg:(BOOL)a4 cancelableArg:(BOOL)a5 viewArg:(id)a6 dataArg:(id)a7;
@end

@implementation DOMTextEvent

- (NSString)data
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v11);
  v3 = *(self->super.super.super._internal + 12);
  if (v3)
  {
    atomic_fetch_add_explicit(v3, 2u, memory_order_relaxed);
    atomic_fetch_add_explicit(v3, 2u, memory_order_relaxed);
    MEMORY[0x1CCA63450](&v10, v3);
    if (atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v3, v4);
    }
  }

  else
  {
    v10 = &stru_1F472E7E8;
    v9 = &stru_1F472E7E8;
  }

  v5 = v10;
  v10 = 0;
  if (v5)
  {
    v6 = v5;
    v7 = v10;
    v10 = 0;
    if (v7)
    {
    }
  }

  if (v3 && atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v3, v4);
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v11, v4);
  return v5;
}

- (void)initTextEvent:(id)a3 canBubbleArg:(BOOL)a4 cancelableArg:(BOOL)a5 viewArg:(id)a6 dataArg:(id)a7
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v22);
  WTF::AtomStringImpl::add(&v23, a3, v10);
  v21 = v23;
  if (!a6)
  {
    goto LABEL_7;
  }

  v11 = *(a6 + 2);
  if (!v11)
  {
    goto LABEL_8;
  }

  v12 = *(v11 + 28);
  v13 = *(v12 + 736);
  if (!v13 || !WebCore::LocalDOMWindow::frame(*(v12 + 736)))
  {
LABEL_7:
    v11 = 0;
    goto LABEL_8;
  }

  v11 = *(WebCore::LocalDOMWindow::frame(v13) + 104);
  if (v11)
  {
    ++*v11;
  }

LABEL_8:
  v23 = v11;
  MEMORY[0x1CCA63A40](&v20, a7);
  WebCore::TextEvent::initTextEvent();
  v15 = v20;
  v20 = 0;
  if (v15 && atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v15, v14);
  }

  v16 = v23;
  v23 = 0;
  if (v16)
  {
    if (*v16 == 1)
    {
      WebCore::WindowProxy::~WindowProxy(v16);
      bmalloc::api::tzoneFree(v18, v19);
      v17 = v21;
      v21 = 0;
      if (!v17)
      {
        goto LABEL_19;
      }

      goto LABEL_17;
    }

    --*v16;
  }

  v17 = v21;
  v21 = 0;
  if (!v17)
  {
    goto LABEL_19;
  }

LABEL_17:
  if (atomic_fetch_add_explicit(v17, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v17, v14);
  }

LABEL_19:
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v22, v14);
}

@end