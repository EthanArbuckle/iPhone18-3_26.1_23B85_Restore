@interface DOMTokenList
- (BOOL)contains:(id)a3;
- (BOOL)toggle:(id)a3 force:(BOOL)a4;
- (NSString)value;
- (id)item:(unsigned int)a3;
- (unsigned)length;
- (void)dealloc;
- (void)setValue:(id)a3;
@end

@implementation DOMTokenList

- (void)dealloc
{
  v3 = objc_opt_class();
  if ((WebCoreObjCScheduleDeallocateOnMainThread(v3, self) & 1) == 0)
  {
    internal = self->super._internal;
    if (internal)
    {
      v5 = *internal;
      if (!*internal)
      {
        __break(0xC471u);
        return;
      }

      if (*(v5 + 7) == 2)
      {
        WebCore::Node::removedLastRef(v5);
      }

      else
      {
        *(v5 + 7) -= 2;
      }
    }

    v6.receiver = self;
    v6.super_class = DOMTokenList;
    [(DOMObject *)&v6 dealloc];
  }
}

- (unsigned)length
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v5);
  LODWORD(self) = *(WebCore::DOMTokenList::tokens(self->super._internal) + 12);
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v5, v3);
  return self;
}

- (NSString)value
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v11);
  v3 = *WebCore::DOMTokenList::value(self->super._internal);
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

- (void)setValue:(id)a3
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v7);
  WTF::AtomStringImpl::add(&v8, a3, v4);
  v6 = v8;
  WebCore::DOMTokenList::setValue();
  if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v6, v5);
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v7, v5);
}

- (id)item:(unsigned int)a3
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v15);
  v5 = WebCore::DOMTokenList::tokens(self->super._internal);
  if (*(v5 + 12) <= a3)
  {
    v6 = MEMORY[0x1E696EB90];
  }

  else
  {
    v6 = (*v5 + 8 * a3);
  }

  v7 = *v6;
  if (*v6)
  {
    atomic_fetch_add_explicit(v7, 2u, memory_order_relaxed);
    MEMORY[0x1CCA63450](&v14, v7);
    if (atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v7, v8);
    }
  }

  else
  {
    v14 = &stru_1F472E7E8;
    v13 = &stru_1F472E7E8;
  }

  v9 = v14;
  v14 = 0;
  if (v9)
  {
    v10 = v9;
    v11 = v14;
    v14 = 0;
    if (v11)
    {
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v15, v8);
  return v9;
}

- (BOOL)contains:(id)a3
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v9);
  WTF::AtomStringImpl::add(&v10, a3, v4);
  v8 = v10;
  v6 = WebCore::DOMTokenList::contains();
  if (v8 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v8, v5);
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v9, v5);
  return v6;
}

- (BOOL)toggle:(id)a3 force:(BOOL)a4
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v13);
  WTF::AtomStringImpl::add(v14, a3, v5);
  v9 = v14[0];
  v6 = WebCore::DOMTokenList::toggle();
  if (v12)
  {
    if (v12 == 1)
    {
      LOBYTE(v14[0]) = v10;
      v14[1] = v11;
      raiseDOMErrorException();
    }

    mpark::throw_bad_variant_access(v6);
  }

  if (v9 && atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v9, v7);
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v13, v7);
  return v10;
}

@end