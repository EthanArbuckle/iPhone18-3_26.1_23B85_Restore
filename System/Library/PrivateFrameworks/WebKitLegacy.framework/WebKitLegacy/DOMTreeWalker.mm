@interface DOMTreeWalker
- (DOMNode)currentNode;
- (DOMNode)firstChild;
- (DOMNode)lastChild;
- (DOMNode)nextNode;
- (DOMNode)nextSibling;
- (DOMNode)parentNode;
- (DOMNode)previousNode;
- (DOMNode)previousSibling;
- (DOMNode)root;
- (id)filter;
- (unsigned)whatToShow;
- (void)dealloc;
- (void)setCurrentNode:(DOMNode *)currentNode;
@end

@implementation DOMTreeWalker

- (void)dealloc
{
  v3 = objc_opt_class();
  if ((WebCoreObjCScheduleDeallocateOnMainThread(v3, self) & 1) == 0)
  {
    internal = self->super._internal;
    if (!internal)
    {
LABEL_22:
      v9.receiver = self;
      v9.super_class = DOMTreeWalker;
      [(DOMObject *)&v9 dealloc];
      return;
    }

    if (*(internal + 2) != 1)
    {
      --*(internal + 2);
      goto LABEL_22;
    }

    v6 = *(internal + 5);
    *(internal + 5) = 0;
    if (v6)
    {
      if (*(v6 + 7) == 2)
      {
        WebCore::Node::removedLastRef(v6);
      }

      else
      {
        *(v6 + 7) -= 2;
      }
    }

    v7 = *(internal + 3);
    *(internal + 3) = 0;
    if (v7)
    {
      if (v7[4] == 1)
      {
        (*(*v7 + 16))(v7);
        v8 = *(internal + 2);
        *(internal + 2) = 0;
        if (!v8)
        {
LABEL_18:
          if (*(internal + 2) != 1)
          {
            __break(0xC471u);
            return;
          }

          if (*internal)
          {
            *(*internal + 8) = 3;
            *internal = 0;
          }

          bmalloc::api::tzoneFree(internal, v4);
          goto LABEL_22;
        }

LABEL_15:
        if (*(v8 + 7) == 2)
        {
          WebCore::Node::removedLastRef(v8);
        }

        else
        {
          *(v8 + 7) -= 2;
        }

        goto LABEL_18;
      }

      --v7[4];
    }

    v8 = *(internal + 2);
    *(internal + 2) = 0;
    if (!v8)
    {
      goto LABEL_18;
    }

    goto LABEL_15;
  }
}

- (DOMNode)root
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v6);
  v3 = kit(*(self->super._internal + 2));
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v6, v4);
  return v3;
}

- (unsigned)whatToShow
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v5);
  LODWORD(self) = *(self->super._internal + 8);
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v5, v3);
  return self;
}

- (id)filter
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v6);
  v3 = kit(*(self->super._internal + 3));
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v6, v4);
  return v3;
}

- (DOMNode)currentNode
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v6);
  v3 = kit(*(self->super._internal + 5));
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v6, v4);
  return v3;
}

- (void)setCurrentNode:(DOMNode *)currentNode
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v7);
  if (!currentNode || (internal = currentNode->super._internal) == 0)
  {
    raiseTypeErrorException();
  }

  WebCore::TreeWalker::setCurrentNode(self->super._internal, internal);
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v7, v6);
}

- (DOMNode)parentNode
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v11);
  WebCore::TreeWalker::parentNode(&v8, self->super._internal);
  v4 = v10;
  if (v10)
  {
    v5 = 0;
  }

  else
  {
    v5 = kit(v8);
    v4 = v10;
    if (!v10)
    {
      goto LABEL_8;
    }
  }

  if (v4 != 255)
  {
    v6 = v9;
    v9 = 0;
    if (v6)
    {
      if (atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v6, v3);
      }
    }
  }

LABEL_8:
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v11, v3);
  return v5;
}

- (DOMNode)firstChild
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v11);
  WebCore::TreeWalker::firstChild(&v8, self->super._internal);
  v4 = v10;
  if (v10)
  {
    v5 = 0;
  }

  else
  {
    v5 = kit(v8);
    v4 = v10;
    if (!v10)
    {
      goto LABEL_8;
    }
  }

  if (v4 != 255)
  {
    v6 = v9;
    v9 = 0;
    if (v6)
    {
      if (atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v6, v3);
      }
    }
  }

LABEL_8:
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v11, v3);
  return v5;
}

- (DOMNode)lastChild
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v11);
  WebCore::TreeWalker::lastChild(&v8, self->super._internal);
  v4 = v10;
  if (v10)
  {
    v5 = 0;
  }

  else
  {
    v5 = kit(v8);
    v4 = v10;
    if (!v10)
    {
      goto LABEL_8;
    }
  }

  if (v4 != 255)
  {
    v6 = v9;
    v9 = 0;
    if (v6)
    {
      if (atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v6, v3);
      }
    }
  }

LABEL_8:
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v11, v3);
  return v5;
}

- (DOMNode)previousSibling
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v11);
  MEMORY[0x1CCA63E50](&v8, self->super._internal);
  v4 = v10;
  if (v10)
  {
    v5 = 0;
  }

  else
  {
    v5 = kit(v8);
    v4 = v10;
    if (!v10)
    {
      goto LABEL_8;
    }
  }

  if (v4 != 255)
  {
    v6 = v9;
    v9 = 0;
    if (v6)
    {
      if (atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v6, v3);
      }
    }
  }

LABEL_8:
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v11, v3);
  return v5;
}

- (DOMNode)nextSibling
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v11);
  MEMORY[0x1CCA63E20](&v8, self->super._internal);
  v4 = v10;
  if (v10)
  {
    v5 = 0;
  }

  else
  {
    v5 = kit(v8);
    v4 = v10;
    if (!v10)
    {
      goto LABEL_8;
    }
  }

  if (v4 != 255)
  {
    v6 = v9;
    v9 = 0;
    if (v6)
    {
      if (atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v6, v3);
      }
    }
  }

LABEL_8:
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v11, v3);
  return v5;
}

- (DOMNode)previousNode
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v11);
  WebCore::TreeWalker::previousNode(&v8, self->super._internal);
  v4 = v10;
  if (v10)
  {
    v5 = 0;
  }

  else
  {
    v5 = kit(v8);
    v4 = v10;
    if (!v10)
    {
      goto LABEL_8;
    }
  }

  if (v4 != 255)
  {
    v6 = v9;
    v9 = 0;
    if (v6)
    {
      if (atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v6, v3);
      }
    }
  }

LABEL_8:
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v11, v3);
  return v5;
}

- (DOMNode)nextNode
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v11);
  WebCore::TreeWalker::nextNode(&v8, self->super._internal);
  v4 = v10;
  if (v10)
  {
    v5 = 0;
  }

  else
  {
    v5 = kit(v8);
    v4 = v10;
    if (!v10)
    {
      goto LABEL_8;
    }
  }

  if (v4 != 255)
  {
    v6 = v9;
    v9 = 0;
    if (v6)
    {
      if (atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v6, v3);
      }
    }
  }

LABEL_8:
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v11, v3);
  return v5;
}

@end