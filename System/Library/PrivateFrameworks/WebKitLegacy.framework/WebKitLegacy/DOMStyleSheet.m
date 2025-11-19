@interface DOMStyleSheet
- (BOOL)disabled;
- (DOMMediaList)media;
- (DOMNode)ownerNode;
- (DOMStyleSheet)parentStyleSheet;
- (NSString)href;
- (NSString)title;
- (NSString)type;
- (void)dealloc;
- (void)setDisabled:(BOOL)disabled;
@end

@implementation DOMStyleSheet

- (void)dealloc
{
  v3 = objc_opt_class();
  if ((WebCoreObjCScheduleDeallocateOnMainThread(v3, self) & 1) == 0)
  {
    internal = self->super._internal;
    if (internal)
    {
      if (*(internal + 2) == 1)
      {
        (*(*internal + 8))(internal);
      }

      else
      {
        --*(internal + 2);
      }
    }

    v5.receiver = self;
    v5.super_class = DOMStyleSheet;
    [(DOMObject *)&v5 dealloc];
  }
}

- (NSString)type
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v13);
  (*(*self->super._internal + 72))(&v11);
  v3 = v11;
  if (v11)
  {
    atomic_fetch_add_explicit(v11, 2u, memory_order_relaxed);
    MEMORY[0x1CCA63450](&v12, v3);
    if (atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v3, v4);
    }
  }

  else
  {
    v12 = &stru_1F472E7E8;
    v10 = &stru_1F472E7E8;
  }

  v5 = v12;
  v12 = 0;
  if (v5)
  {
    v6 = v5;
    v7 = v12;
    v12 = 0;
    if (v7)
    {
    }
  }

  v8 = v11;
  v11 = 0;
  if (v8 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v8, v4);
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v13, v4);
  return v5;
}

- (BOOL)disabled
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v5);
  LOBYTE(self) = (*(*self->super._internal + 16))(self->super._internal);
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v5, v3);
  return self;
}

- (void)setDisabled:(BOOL)disabled
{
  v3 = disabled;
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v6);
  (*(*self->super._internal + 24))(self->super._internal, v3);
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v6, v5);
}

- (DOMNode)ownerNode
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v7);
  v3 = (*(*self->super._internal + 32))(self->super._internal);
  v4 = kit(v3);
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v7, v5);
  return v4;
}

- (DOMStyleSheet)parentStyleSheet
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v7);
  v3 = (*(*self->super._internal + 40))(self->super._internal);
  v4 = kit(v3);
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v7, v5);
  return v4;
}

- (NSString)href
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v13);
  (*(*self->super._internal + 48))(&v11);
  v3 = v11;
  if (v11)
  {
    atomic_fetch_add_explicit(v11, 2u, memory_order_relaxed);
    MEMORY[0x1CCA63450](&v12, v3);
    if (atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v3, v4);
    }
  }

  else
  {
    v12 = &stru_1F472E7E8;
    v10 = &stru_1F472E7E8;
  }

  v5 = v12;
  v12 = 0;
  if (v5)
  {
    v6 = v5;
    v7 = v12;
    v12 = 0;
    if (v7)
    {
    }
  }

  v8 = v11;
  v11 = 0;
  if (v8 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v8, v4);
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v13, v4);
  return v5;
}

- (NSString)title
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v13);
  (*(*self->super._internal + 56))(&v11);
  v3 = v11;
  if (v11)
  {
    atomic_fetch_add_explicit(v11, 2u, memory_order_relaxed);
    MEMORY[0x1CCA63450](&v12, v3);
    if (atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v3, v4);
    }
  }

  else
  {
    v12 = &stru_1F472E7E8;
    v10 = &stru_1F472E7E8;
  }

  v5 = v12;
  v12 = 0;
  if (v5)
  {
    v6 = v5;
    v7 = v12;
    v12 = 0;
    if (v7)
    {
    }
  }

  v8 = v11;
  v11 = 0;
  if (v8 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v8, v4);
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v13, v4);
  return v5;
}

- (DOMMediaList)media
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v7);
  v3 = (*(*self->super._internal + 64))(self->super._internal);
  v4 = kit(v3);
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v7, v5);
  return v4;
}

@end