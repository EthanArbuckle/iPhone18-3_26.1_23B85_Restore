@interface DOMMouseEvent
- (BOOL)altKey;
- (BOOL)ctrlKey;
- (BOOL)metaKey;
- (BOOL)shiftKey;
- (DOMNode)fromElement;
- (DOMNode)toElement;
- (__int16)button;
- (id)relatedTarget;
- (int)clientX;
- (int)clientY;
- (int)offsetX;
- (int)offsetY;
- (int)screenX;
- (int)screenY;
- (int)x;
- (int)y;
- (void)initMouseEvent:(NSString *)type canBubble:(BOOL)canBubble cancelable:(BOOL)cancelable view:(DOMAbstractView *)view detail:(int)detail screenX:(int)screenX screenY:(int)screenY clientX:(int)clientX clientY:(int)clientY ctrlKey:(BOOL)ctrlKey altKey:(BOOL)altKey shiftKey:(BOOL)shiftKey metaKey:(BOOL)metaKey button:(unsigned __int16)button relatedTarget:(id)relatedTarget;
@end

@implementation DOMMouseEvent

- (int)screenX
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v5);
  LODWORD(self) = *(self->super.super.super._internal + 24);
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v5, v3);
  return self;
}

- (int)screenY
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v5);
  LODWORD(self) = *(self->super.super.super._internal + 25);
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v5, v3);
  return self;
}

- (int)clientX
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v5);
  LODWORD(self) = *(self->super.super.super._internal + 26) / 64;
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v5, v3);
  return self;
}

- (int)clientY
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v5);
  LODWORD(self) = *(self->super.super.super._internal + 27) / 64;
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

- (__int16)button
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v5);
  LOWORD(self) = *(self->super.super.super._internal + 85);
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v5, v3);
  return self;
}

- (id)relatedTarget
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v7);
  v4 = *(self->super.super.super._internal + 22);
  if (v4 && (*(v4 + 22) & 2) != 0)
  {
    v5 = kit(v4);
  }

  else
  {
    v5 = 0;
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v7, v3);
  return v5;
}

- (int)offsetX
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v5);
  LODWORD(self) = WebCore::MouseRelatedEvent::offsetX(self->super.super.super._internal);
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v5, v3);
  return self;
}

- (int)offsetY
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v5);
  LODWORD(self) = WebCore::MouseRelatedEvent::offsetY(self->super.super.super._internal);
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v5, v3);
  return self;
}

- (int)x
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v5);
  LODWORD(self) = *(self->super.super.super._internal + 26) / 64;
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v5, v3);
  return self;
}

- (int)y
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v5);
  LODWORD(self) = *(self->super.super.super._internal + 27) / 64;
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v5, v3);
  return self;
}

- (DOMNode)fromElement
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v8);
  (*(*self->super.super.super._internal + 232))(&v7);
  v4 = kit(v7);
  v5 = v7;
  v7 = 0;
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

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v8, v3);
  return v4;
}

- (DOMNode)toElement
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v8);
  (*(*self->super.super.super._internal + 224))(&v7);
  v4 = kit(v7);
  v5 = v7;
  v7 = 0;
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

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v8, v3);
  return v4;
}

- (void)initMouseEvent:(NSString *)type canBubble:(BOOL)canBubble cancelable:(BOOL)cancelable view:(DOMAbstractView *)view detail:(int)detail screenX:(int)screenX screenY:(int)screenY clientX:(int)clientX clientY:(int)clientY ctrlKey:(BOOL)ctrlKey altKey:(BOOL)altKey shiftKey:(BOOL)shiftKey metaKey:(BOOL)metaKey button:(unsigned __int16)button relatedTarget:(id)relatedTarget
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v29);
  WTF::AtomStringImpl::add(&v30, type, v19);
  v28 = v30;
  if (!view)
  {
    goto LABEL_7;
  }

  internal = view->super._internal;
  if (!internal)
  {
    goto LABEL_8;
  }

  v21 = *(internal + 28);
  v22 = *(v21 + 736);
  if (v22 && WebCore::LocalDOMWindow::frame(*(v21 + 736)))
  {
    internal = *(WebCore::LocalDOMWindow::frame(v22) + 104);
    if (internal)
    {
      ++*internal;
    }
  }

  else
  {
LABEL_7:
    internal = 0;
  }

LABEL_8:
  v30 = internal;
  WebCore::MouseEvent::initMouseEvent();
  v24 = v30;
  v30 = 0;
  if (v24)
  {
    if (*v24 == 1)
    {
      WebCore::WindowProxy::~WindowProxy(v24);
      bmalloc::api::tzoneFree(v26, v27);
      v25 = v28;
      if (!v28)
      {
        goto LABEL_16;
      }

      goto LABEL_14;
    }

    --*v24;
  }

  v25 = v28;
  if (!v28)
  {
    goto LABEL_16;
  }

LABEL_14:
  if (atomic_fetch_add_explicit(v25, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v25, v23);
  }

LABEL_16:
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v29, v23);
}

@end