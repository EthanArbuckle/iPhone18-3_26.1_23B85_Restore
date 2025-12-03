@interface DOMHTMLCanvasElement
- (id)toDataURL:(id)l;
- (int)height;
- (int)width;
- (void)setHeight:(int)height;
- (void)setWidth:(int)width;
@end

@implementation DOMHTMLCanvasElement

- (int)width
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v5);
  LODWORD(self) = *(self->super.super.super.super._internal + 42);
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v5, v3);
  return self;
}

- (void)setWidth:(int)width
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v7);
  WebCore::HTMLCanvasElement::setWidth(self->super.super.super.super._internal);
  if (v6 == 1 && v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v5, v4);
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v7, v4);
}

- (int)height
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v5);
  LODWORD(self) = *(self->super.super.super.super._internal + 43);
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v5, v3);
  return self;
}

- (void)setHeight:(int)height
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v7);
  WebCore::HTMLCanvasElement::setHeight(self->super.super.super.super._internal);
  if (v6 == 1 && v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v5, v4);
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v7, v4);
}

- (id)toDataURL:(id)l
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v21);
  internal = self->super.super.super.super._internal;
  MEMORY[0x1CCA63A40](v17, l);
  WebCore::HTMLCanvasElement::toDataURL(&v18, internal, v17);
  v7 = v17[0];
  v17[0] = 0;
  if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    v7 = WTF::StringImpl::destroy(v7, v6);
  }

  if (v20)
  {
    if (v20 == 1)
    {
      LOBYTE(v17[0]) = v18;
      v16 = v19;
      v19 = 0;
      v17[1] = v16;
      raiseDOMErrorException();
    }

    mpark::throw_bad_variant_access(v7);
  }

  v8 = v18;
  v18 = 0;
  if (v8)
  {
    atomic_fetch_add_explicit(v8, 2u, memory_order_relaxed);
    MEMORY[0x1CCA63450](v17, v8);
    if (atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v8, v9);
    }
  }

  else
  {
    v17[0] = &stru_1F472E7E8;
    v15 = &stru_1F472E7E8;
  }

  v10 = v17[0];
  v17[0] = 0;
  if (v10)
  {
    v11 = v10;
    v12 = v17[0];
    v17[0] = 0;
    if (v12)
    {
    }
  }

  if (v8 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v8, v9);
  }

  if (v20 != 255)
  {
    if (v20)
    {
      v13 = v19;
      v19 = 0;
      if (!v13)
      {
        goto LABEL_21;
      }
    }

    else
    {
      v13 = v18;
      v18 = 0;
      if (!v13)
      {
        goto LABEL_21;
      }
    }

    if (atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v13, v9);
    }
  }

LABEL_21:
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v21, v9);
  return v10;
}

@end