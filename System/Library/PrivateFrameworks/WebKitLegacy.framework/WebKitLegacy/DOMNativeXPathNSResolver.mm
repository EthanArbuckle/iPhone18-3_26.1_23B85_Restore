@interface DOMNativeXPathNSResolver
- (id)lookupNamespaceURI:(id)a3;
- (void)dealloc;
@end

@implementation DOMNativeXPathNSResolver

- (void)dealloc
{
  internal = self->super._internal;
  if (internal)
  {
    if (*(internal + 2) == 1)
    {
      v3 = self;
      (*(*internal + 8))(self->super._internal, a2);
      self = v3;
    }

    else
    {
      --*(internal + 2);
    }
  }

  v4.receiver = self;
  v4.super_class = DOMNativeXPathNSResolver;
  [(DOMObject *)&v4 dealloc];
}

- (id)lookupNamespaceURI:(id)a3
{
  internal = self->super._internal;
  WTF::AtomStringImpl::add(&v13, a3, a2);
  (*(*internal + 16))(&v14, internal, &v13);
  v4 = v14;
  if (v14)
  {
    atomic_fetch_add_explicit(v14, 2u, memory_order_relaxed);
    MEMORY[0x1CCA63450](&v15, v4);
    if (atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v4, v5);
    }
  }

  else
  {
    v15 = &stru_1F472E7E8;
    v12 = &stru_1F472E7E8;
  }

  v6 = v15;
  v15 = 0;
  if (v6)
  {
    v7 = v6;
    v8 = v15;
    v15 = 0;
    if (v8)
    {
    }
  }

  v9 = v14;
  v14 = 0;
  if (v9 && atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v9, v5);
  }

  v10 = v13;
  v13 = 0;
  if (v10 && atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v10, v5);
  }

  return v6;
}

@end