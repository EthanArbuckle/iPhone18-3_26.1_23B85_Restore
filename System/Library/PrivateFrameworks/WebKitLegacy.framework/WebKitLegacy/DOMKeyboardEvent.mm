@interface DOMKeyboardEvent
- (BOOL)altKey;
- (BOOL)ctrlKey;
- (BOOL)getModifierState:(NSString *)keyIdentifierArg;
- (BOOL)metaKey;
- (BOOL)shiftKey;
- (NSString)keyIdentifier;
- (int)charCode;
- (int)keyCode;
- (unsigned)keyLocation;
- (unsigned)location;
- (void)initKeyboardEvent:(NSString *)type canBubble:(BOOL)canBubble cancelable:(BOOL)cancelable view:(DOMAbstractView *)view keyIdentifier:(NSString *)keyIdentifier keyLocation:(unsigned int)keyLocation ctrlKey:(BOOL)ctrlKey altKey:(BOOL)altKey shiftKey:(BOOL)shiftKey metaKey:(BOOL)metaKey;
- (void)initKeyboardEvent:(NSString *)type canBubble:(BOOL)canBubble cancelable:(BOOL)cancelable view:(DOMAbstractView *)view keyIdentifier:(NSString *)keyIdentifier keyLocation:(unsigned int)keyLocation ctrlKey:(BOOL)ctrlKey altKey:(BOOL)altKey shiftKey:(BOOL)shiftKey metaKey:(BOOL)metaKey altGraphKey:(BOOL)altGraphKey;
- (void)initKeyboardEvent:(NSString *)type canBubble:(BOOL)canBubble cancelable:(BOOL)cancelable view:(DOMAbstractView *)view keyIdentifier:(NSString *)keyIdentifier location:(unsigned int)location ctrlKey:(BOOL)ctrlKey altKey:(BOOL)altKey shiftKey:(BOOL)shiftKey metaKey:(BOOL)metaKey;
- (void)initKeyboardEvent:(NSString *)type canBubble:(BOOL)canBubble cancelable:(BOOL)cancelable view:(DOMAbstractView *)view keyIdentifier:(NSString *)keyIdentifier location:(unsigned int)location ctrlKey:(BOOL)ctrlKey altKey:(BOOL)altKey shiftKey:(BOOL)shiftKey metaKey:(BOOL)metaKey altGraphKey:(BOOL)altGraphKey;
@end

@implementation DOMKeyboardEvent

- (NSString)keyIdentifier
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v11);
  v3 = *(self->super.super.super._internal + 15);
  if (v3)
  {
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

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v11, v4);
  return v5;
}

- (unsigned)location
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v5);
  LODWORD(self) = *(self->super.super.super._internal + 32);
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v5, v3);
  return self;
}

- (unsigned)keyLocation
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v5);
  LODWORD(self) = *(self->super.super.super._internal + 32);
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v5, v3);
  return self;
}

- (BOOL)ctrlKey
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v5);
  LODWORD(self) = (*(self->super.super.super._internal + 92) >> 1) & 1;
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v5, v3);
  return self;
}

- (BOOL)shiftKey
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v5);
  LODWORD(self) = (*(self->super.super.super._internal + 92) >> 3) & 1;
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v5, v3);
  return self;
}

- (BOOL)altKey
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v5);
  LOBYTE(self) = *(self->super.super.super._internal + 92);
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v5, v3);
  return self & 1;
}

- (BOOL)metaKey
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v5);
  LODWORD(self) = (*(self->super.super.super._internal + 92) >> 2) & 1;
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v5, v3);
  return self;
}

- (int)keyCode
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v5);
  LODWORD(self) = WebCore::KeyboardEvent::keyCode(self->super.super.super._internal);
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v5, v3);
  return self;
}

- (int)charCode
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v5);
  LODWORD(self) = WebCore::KeyboardEvent::charCode(self->super.super.super._internal);
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v5, v3);
  return self;
}

- (BOOL)getModifierState:(NSString *)keyIdentifierArg
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v11);
  internal = self->super.super.super._internal;
  MEMORY[0x1CCA63A40](&v10, keyIdentifierArg);
  ModifierState = WebCore::UIEventWithKeyState::getModifierState(internal, &v10);
  v8 = v10;
  v10 = 0;
  if (v8 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v8, v6);
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v11, v6);
  return ModifierState;
}

- (void)initKeyboardEvent:(NSString *)type canBubble:(BOOL)canBubble cancelable:(BOOL)cancelable view:(DOMAbstractView *)view keyIdentifier:(NSString *)keyIdentifier location:(unsigned int)location ctrlKey:(BOOL)ctrlKey altKey:(BOOL)altKey shiftKey:(BOOL)shiftKey metaKey:(BOOL)metaKey altGraphKey:(BOOL)altGraphKey
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v28);
  WTF::AtomStringImpl::add(&v29, type, v16);
  v27 = v29;
  if (!view)
  {
    goto LABEL_7;
  }

  internal = view->super._internal;
  if (!internal)
  {
    goto LABEL_8;
  }

  v19 = *(internal + 28);
  v20 = *(v19 + 736);
  if (!v20 || !WebCore::LocalDOMWindow::frame(*(v19 + 736)))
  {
LABEL_7:
    internal = 0;
    goto LABEL_8;
  }

  internal = *(WebCore::LocalDOMWindow::frame(v20) + 104);
  if (internal)
  {
    ++*internal;
  }

LABEL_8:
  v26 = internal;
  WTF::AtomStringImpl::add(&v29, keyIdentifier, v17);
  v25 = v29;
  WebCore::KeyboardEvent::initKeyboardEvent();
  if (v25 && atomic_fetch_add_explicit(v25, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v25, v21);
  }

  if (v26)
  {
    if (*v26 == 1)
    {
      WebCore::WindowProxy::~WindowProxy(v26);
      bmalloc::api::tzoneFree(v23, v24);
      v22 = v27;
      if (!v27)
      {
        goto LABEL_19;
      }

      goto LABEL_17;
    }

    --*v26;
  }

  v22 = v27;
  if (!v27)
  {
    goto LABEL_19;
  }

LABEL_17:
  if (atomic_fetch_add_explicit(v22, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v22, v21);
  }

LABEL_19:
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v28, v21);
}

- (void)initKeyboardEvent:(NSString *)type canBubble:(BOOL)canBubble cancelable:(BOOL)cancelable view:(DOMAbstractView *)view keyIdentifier:(NSString *)keyIdentifier location:(unsigned int)location ctrlKey:(BOOL)ctrlKey altKey:(BOOL)altKey shiftKey:(BOOL)shiftKey metaKey:(BOOL)metaKey
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v27);
  WTF::AtomStringImpl::add(&v28, type, v15);
  v26 = v28;
  if (!view)
  {
    goto LABEL_7;
  }

  internal = view->super._internal;
  if (!internal)
  {
    goto LABEL_8;
  }

  v18 = *(internal + 28);
  v19 = *(v18 + 736);
  if (!v19 || !WebCore::LocalDOMWindow::frame(*(v18 + 736)))
  {
LABEL_7:
    internal = 0;
    goto LABEL_8;
  }

  internal = *(WebCore::LocalDOMWindow::frame(v19) + 104);
  if (internal)
  {
    ++*internal;
  }

LABEL_8:
  v25 = internal;
  WTF::AtomStringImpl::add(&v28, keyIdentifier, v16);
  v24 = v28;
  WebCore::KeyboardEvent::initKeyboardEvent();
  if (v24 && atomic_fetch_add_explicit(v24, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v24, v20);
  }

  if (v25)
  {
    if (*v25 == 1)
    {
      WebCore::WindowProxy::~WindowProxy(v25);
      bmalloc::api::tzoneFree(v22, v23);
      v21 = v26;
      if (!v26)
      {
        goto LABEL_19;
      }

      goto LABEL_17;
    }

    --*v25;
  }

  v21 = v26;
  if (!v26)
  {
    goto LABEL_19;
  }

LABEL_17:
  if (atomic_fetch_add_explicit(v21, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v21, v20);
  }

LABEL_19:
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v27, v20);
}

- (void)initKeyboardEvent:(NSString *)type canBubble:(BOOL)canBubble cancelable:(BOOL)cancelable view:(DOMAbstractView *)view keyIdentifier:(NSString *)keyIdentifier keyLocation:(unsigned int)keyLocation ctrlKey:(BOOL)ctrlKey altKey:(BOOL)altKey shiftKey:(BOOL)shiftKey metaKey:(BOOL)metaKey altGraphKey:(BOOL)altGraphKey
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v28);
  WTF::AtomStringImpl::add(&v29, type, v16);
  v27 = v29;
  if (!view)
  {
    goto LABEL_7;
  }

  internal = view->super._internal;
  if (!internal)
  {
    goto LABEL_8;
  }

  v19 = *(internal + 28);
  v20 = *(v19 + 736);
  if (!v20 || !WebCore::LocalDOMWindow::frame(*(v19 + 736)))
  {
LABEL_7:
    internal = 0;
    goto LABEL_8;
  }

  internal = *(WebCore::LocalDOMWindow::frame(v20) + 104);
  if (internal)
  {
    ++*internal;
  }

LABEL_8:
  v26 = internal;
  WTF::AtomStringImpl::add(&v29, keyIdentifier, v17);
  v25 = v29;
  WebCore::KeyboardEvent::initKeyboardEvent();
  if (v25 && atomic_fetch_add_explicit(v25, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v25, v21);
  }

  if (v26)
  {
    if (*v26 == 1)
    {
      WebCore::WindowProxy::~WindowProxy(v26);
      bmalloc::api::tzoneFree(v23, v24);
      v22 = v27;
      if (!v27)
      {
        goto LABEL_19;
      }

      goto LABEL_17;
    }

    --*v26;
  }

  v22 = v27;
  if (!v27)
  {
    goto LABEL_19;
  }

LABEL_17:
  if (atomic_fetch_add_explicit(v22, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v22, v21);
  }

LABEL_19:
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v28, v21);
}

- (void)initKeyboardEvent:(NSString *)type canBubble:(BOOL)canBubble cancelable:(BOOL)cancelable view:(DOMAbstractView *)view keyIdentifier:(NSString *)keyIdentifier keyLocation:(unsigned int)keyLocation ctrlKey:(BOOL)ctrlKey altKey:(BOOL)altKey shiftKey:(BOOL)shiftKey metaKey:(BOOL)metaKey
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v27);
  WTF::AtomStringImpl::add(&v28, type, v15);
  v26 = v28;
  if (!view)
  {
    goto LABEL_7;
  }

  internal = view->super._internal;
  if (!internal)
  {
    goto LABEL_8;
  }

  v18 = *(internal + 28);
  v19 = *(v18 + 736);
  if (!v19 || !WebCore::LocalDOMWindow::frame(*(v18 + 736)))
  {
LABEL_7:
    internal = 0;
    goto LABEL_8;
  }

  internal = *(WebCore::LocalDOMWindow::frame(v19) + 104);
  if (internal)
  {
    ++*internal;
  }

LABEL_8:
  v25 = internal;
  WTF::AtomStringImpl::add(&v28, keyIdentifier, v16);
  v24 = v28;
  WebCore::KeyboardEvent::initKeyboardEvent();
  if (v24 && atomic_fetch_add_explicit(v24, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v24, v20);
  }

  if (v25)
  {
    if (*v25 == 1)
    {
      WebCore::WindowProxy::~WindowProxy(v25);
      bmalloc::api::tzoneFree(v22, v23);
      v21 = v26;
      if (!v26)
      {
        goto LABEL_19;
      }

      goto LABEL_17;
    }

    --*v25;
  }

  v21 = v26;
  if (!v26)
  {
    goto LABEL_19;
  }

LABEL_17:
  if (atomic_fetch_add_explicit(v21, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v21, v20);
  }

LABEL_19:
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v27, v20);
}

@end