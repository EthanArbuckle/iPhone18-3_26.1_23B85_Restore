@interface DOMMediaList
- (NSString)item:(unsigned int)index;
- (NSString)mediaText;
- (unsigned)length;
- (void)appendMedium:(NSString *)newMedium;
- (void)dealloc;
- (void)deleteMedium:(NSString *)oldMedium;
- (void)setMediaText:(NSString *)mediaText;
@end

@implementation DOMMediaList

- (void)dealloc
{
  v3 = objc_opt_class();
  if ((WebCoreObjCScheduleDeallocateOnMainThread(v3, self) & 1) == 0)
  {
    internal = self->super._internal;
    if (internal)
    {
      if (*internal == 1)
      {
        WebCore::MediaList::~MediaList(internal);
        WTF::fastFree(v5, v6);
      }

      else
      {
        --*internal;
      }
    }

    v7.receiver = self;
    v7.super_class = DOMMediaList;
    [(DOMObject *)&v7 dealloc];
  }
}

- (NSString)mediaText
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v13);
  WebCore::MediaList::mediaText(&v11, self->super._internal);
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

- (void)setMediaText:(NSString *)mediaText
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v9);
  internal = self->super._internal;
  MEMORY[0x1CCA63A40](&v8, mediaText);
  WebCore::MediaList::setMediaText(internal, &v8);
  v7 = v8;
  v8 = 0;
  if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v7, v6);
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v9, v6);
}

- (unsigned)length
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v5);
  LODWORD(self) = WebCore::MediaList::length(self->super._internal);
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v5, v3);
  return self;
}

- (NSString)item:(unsigned int)index
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v12);
  WebCore::MediaList::item(self->super._internal);
  if (v10)
  {
    atomic_fetch_add_explicit(v10, 2u, memory_order_relaxed);
    MEMORY[0x1CCA63450](&v11);
    if (atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v10, v4);
    }
  }

  else
  {
    v11 = &stru_1F472E7E8;
    v9 = &stru_1F472E7E8;
  }

  v5 = v11;
  v11 = 0;
  if (v5)
  {
    v6 = v5;
    v7 = v11;
    v11 = 0;
    if (v7)
    {
    }
  }

  if (v10 && atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v10, v4);
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v12, v4);
  return v5;
}

- (void)deleteMedium:(NSString *)oldMedium
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v13);
  internal = self->super._internal;
  MEMORY[0x1CCA63A40](&v9, oldMedium);
  WebCore::MediaList::deleteMedium(&v10, internal, &v9);
  if (v12 == 1)
  {
    v13[80] = v10;
    v8 = v11;
    v11 = 0;
    v14 = v8;
    raiseDOMErrorException();
  }

  v7 = v9;
  v9 = 0;
  if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v7, v6);
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v13, v6);
}

- (void)appendMedium:(NSString *)newMedium
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v9);
  internal = self->super._internal;
  MEMORY[0x1CCA63A40](&v8, newMedium);
  WebCore::MediaList::appendMedium(internal, &v8);
  v7 = v8;
  v8 = 0;
  if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v7, v6);
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v9, v6);
}

@end