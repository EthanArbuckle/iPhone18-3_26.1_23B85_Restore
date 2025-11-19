@interface DOMUIEvent
- (DOMAbstractView)view;
- (int)charCode;
- (int)detail;
- (int)keyCode;
- (int)layerX;
- (int)layerY;
- (int)pageX;
- (int)pageY;
- (int)which;
- (void)initUIEvent:(NSString *)type canBubble:(BOOL)canBubble cancelable:(BOOL)cancelable view:(DOMAbstractView *)view detail:(int)detail;
@end

@implementation DOMUIEvent

- (DOMAbstractView)view
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v8);
  v4 = *(self->super.super._internal + 10);
  if (v4 && (v5 = WebCore::WindowProxy::window(v4)) != 0 && (*(v5 + 56) & 1) == 0)
  {
    v6 = kit(v5);
  }

  else
  {
    v6 = 0;
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v8, v3);
  return v6;
}

- (int)detail
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v5);
  LODWORD(self) = *(self->super.super._internal + 22);
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v5, v3);
  return self;
}

- (int)keyCode
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v7);
  if (!(*(*self->super.super._internal + 80))(self->super.super._internal))
  {
    v5 = 0;
    goto LABEL_5;
  }

  internal = self->super.super._internal;
  if ((*(*internal + 80))(internal))
  {
    v5 = WebCore::KeyboardEvent::keyCode(internal);
LABEL_5:
    WebCore::JSMainThreadNullState::~JSMainThreadNullState(v7, v3);
    return v5;
  }

  result = 96;
  __break(0xC471u);
  return result;
}

- (int)charCode
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v7);
  if (!(*(*self->super.super._internal + 80))(self->super.super._internal))
  {
    v5 = 0;
    goto LABEL_5;
  }

  internal = self->super.super._internal;
  if ((*(*internal + 80))(internal))
  {
    v5 = WebCore::KeyboardEvent::charCode(internal);
LABEL_5:
    WebCore::JSMainThreadNullState::~JSMainThreadNullState(v7, v3);
    return v5;
  }

  result = 96;
  __break(0xC471u);
  return result;
}

- (int)layerX
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v5);
  LODWORD(self) = (*(*self->super.super._internal + 184))(self->super.super._internal);
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v5, v3);
  return self;
}

- (int)layerY
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v5);
  LODWORD(self) = (*(*self->super.super._internal + 192))(self->super.super._internal);
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v5, v3);
  return self;
}

- (int)pageX
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v5);
  LODWORD(self) = (*(*self->super.super._internal + 200))(self->super.super._internal);
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v5, v3);
  return self;
}

- (int)pageY
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v5);
  LODWORD(self) = (*(*self->super.super._internal + 208))(self->super.super._internal);
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v5, v3);
  return self;
}

- (int)which
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v5);
  LODWORD(self) = (*(*self->super.super._internal + 216))(self->super.super._internal);
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v5, v3);
  return self;
}

- (void)initUIEvent:(NSString *)type canBubble:(BOOL)canBubble cancelable:(BOOL)cancelable view:(DOMAbstractView *)view detail:(int)detail
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v19);
  WTF::AtomStringImpl::add(&v20, type, v9);
  v18 = v20;
  if (!view)
  {
    goto LABEL_7;
  }

  internal = view->super._internal;
  if (!internal)
  {
    goto LABEL_8;
  }

  v11 = *(internal + 28);
  v12 = *(v11 + 736);
  if (v12 && WebCore::LocalDOMWindow::frame(*(v11 + 736)))
  {
    internal = *(WebCore::LocalDOMWindow::frame(v12) + 104);
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
  v20 = internal;
  WebCore::UIEvent::initUIEvent();
  v14 = v20;
  v20 = 0;
  if (v14)
  {
    if (*v14 == 1)
    {
      WebCore::WindowProxy::~WindowProxy(v14);
      bmalloc::api::tzoneFree(v16, v17);
      v15 = v18;
      if (!v18)
      {
        goto LABEL_16;
      }

      goto LABEL_14;
    }

    --*v14;
  }

  v15 = v18;
  if (!v18)
  {
    goto LABEL_16;
  }

LABEL_14:
  if (atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v15, v13);
  }

LABEL_16:
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v19, v13);
}

@end