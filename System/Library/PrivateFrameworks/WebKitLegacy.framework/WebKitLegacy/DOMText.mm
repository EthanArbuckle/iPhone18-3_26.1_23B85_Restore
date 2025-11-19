@interface DOMText
- (DOMText)replaceWholeText:(NSString *)content;
- (DOMText)splitText:(unsigned int)offset;
- (NSString)wholeText;
@end

@implementation DOMText

- (NSString)wholeText
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v13);
  WebCore::Text::wholeText(&v11, self->super.super.super._internal);
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

- (DOMText)splitText:(unsigned int)offset
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v11);
  v4 = WebCore::Text::splitText(self->super.super.super._internal);
  if (v10)
  {
    if (v10 == 1)
    {
      v11[80] = v8;
      v12 = v9;
      raiseDOMErrorException();
    }

    mpark::throw_bad_variant_access(v4);
  }

  v6 = kit(v8);
  if (v8)
  {
    if (*(v8 + 7) == 2)
    {
      WebCore::Node::removedLastRef(v8);
    }

    else
    {
      *(v8 + 7) -= 2;
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v11, v5);
  return v6;
}

- (DOMText)replaceWholeText:(NSString *)content
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v10);
  internal = self->super.super.super._internal;
  if (internal)
  {
    *(internal + 7) += 2;
  }

  MEMORY[0x1CCA63A40](&v9, content);
  WebCore::Text::replaceWholeText(internal, &v9);
  v7 = v9;
  v9 = 0;
  if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v7, v6);
  }

  if (internal)
  {
    if (*(internal + 7) == 2)
    {
      WebCore::Node::removedLastRef(internal);
    }

    else
    {
      *(internal + 7) -= 2;
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v10, v6);
  return self;
}

@end