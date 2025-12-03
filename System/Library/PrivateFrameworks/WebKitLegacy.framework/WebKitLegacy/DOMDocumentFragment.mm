@interface DOMDocumentFragment
- (id)children;
- (id)firstElementChild;
- (id)getElementById:(id)id;
- (id)lastElementChild;
- (id)querySelector:(id)selector;
- (id)querySelectorAll:(id)all;
- (unsigned)childElementCount;
@end

@implementation DOMDocumentFragment

- (id)children
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v8);
  WebCore::ContainerNode::children(&v7, self->super.super._internal);
  v4 = kit(v7);
  v5 = v7;
  v7 = 0;
  if (v5)
  {
    if (*(v5 + 4) == 1)
    {
      (*(*v5 + 8))(v5);
    }

    else
    {
      --*(v5 + 4);
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v8, v3);
  return v4;
}

- (id)firstElementChild
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v7);
  ElementChild = WebCore::ContainerNode::firstElementChild(self->super.super._internal);
  v4 = kit(ElementChild);
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v7, v5);
  return v4;
}

- (id)lastElementChild
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v7);
  ElementChild = WebCore::ContainerNode::lastElementChild(self->super.super._internal);
  v4 = kit(ElementChild);
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v7, v5);
  return v4;
}

- (unsigned)childElementCount
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v5);
  LODWORD(self) = WebCore::ContainerNode::childElementCount(self->super.super._internal);
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v5, v3);
  return self;
}

- (id)getElementById:(id)id
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v10);
  WTF::AtomStringImpl::add(&v11, id, v4);
  v9 = v11;
  ElementById = WebCore::DocumentFragment::getElementById();
  v7 = kit(ElementById);
  if (v9 && atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v9, v6);
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v10, v6);
  return v7;
}

- (id)querySelector:(id)selector
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v17);
  internal = self->super.super._internal;
  MEMORY[0x1CCA63A40](&v13, selector);
  Selector = WebCore::ContainerNode::querySelector(&v14, internal, &v13);
  if (v16)
  {
    if (v16 == 1)
    {
      v17[80] = v14;
      v12 = v15;
      v15 = 0;
      v18 = v12;
      raiseDOMErrorException();
    }

    mpark::throw_bad_variant_access(Selector);
  }

  v8 = kit(v14);
  if (v16)
  {
    if (v16 != 255)
    {
      v9 = v15;
      v15 = 0;
      if (v9)
      {
        if (atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v9, v7);
        }
      }
    }
  }

  v16 = -1;
  v10 = v13;
  v13 = 0;
  if (v10 && atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v10, v7);
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v17, v7);
  return v8;
}

- (id)querySelectorAll:(id)all
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v20);
  internal = self->super.super._internal;
  MEMORY[0x1CCA63A40](&v16, all);
  SelectorAll = WebCore::ContainerNode::querySelectorAll(&v17, internal, &v16);
  if (v19)
  {
    if (v19 == 1)
    {
      v20[80] = v17;
      v15 = v18;
      v18 = 0;
      v21 = v15;
      raiseDOMErrorException();
    }

    mpark::throw_bad_variant_access(SelectorAll);
  }

  v7 = v17;
  v17 = 0;
  v9 = kit(v7);
  if (!v7)
  {
LABEL_5:
    v10 = v19;
    if (v19 == 255)
    {
      goto LABEL_16;
    }

    goto LABEL_6;
  }

  if (*(v7 + 4) != 1)
  {
    --*(v7 + 4);
    goto LABEL_5;
  }

  (*(*v7 + 8))(v7);
  v10 = v19;
  if (v19 == 255)
  {
    goto LABEL_16;
  }

LABEL_6:
  if (v10)
  {
    v12 = v18;
    v18 = 0;
    if (v12 && atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v12, v8);
    }
  }

  else
  {
    v11 = v17;
    v17 = 0;
    if (v11)
    {
      if (*(v11 + 4) == 1)
      {
        (*(*v11 + 8))(v11);
      }

      else
      {
        --*(v11 + 4);
      }
    }
  }

LABEL_16:
  v19 = -1;
  v13 = v16;
  v16 = 0;
  if (v13 && atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v13, v8);
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v20, v8);
  return v9;
}

@end