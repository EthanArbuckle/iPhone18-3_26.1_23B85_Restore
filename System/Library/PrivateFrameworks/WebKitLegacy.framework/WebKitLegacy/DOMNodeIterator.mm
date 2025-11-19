@interface DOMNodeIterator
- (BOOL)pointerBeforeReferenceNode;
- (DOMNode)nextNode;
- (DOMNode)previousNode;
- (DOMNode)referenceNode;
- (DOMNode)root;
- (id)filter;
- (unsigned)whatToShow;
- (void)dealloc;
@end

@implementation DOMNodeIterator

- (void)dealloc
{
  v3 = objc_opt_class();
  if ((WebCoreObjCScheduleDeallocateOnMainThread(v3, self) & 1) == 0)
  {
    if (self->super._internal)
    {
      [(DOMNodeIterator *)self detach];
      internal = self->super._internal;
      if (*(internal + 4) == 1)
      {
        v5 = MEMORY[0x1CCA644F0]();
        bmalloc::api::tzoneFree(v5, v6);
      }

      else
      {
        --*(internal + 4);
      }
    }

    v7.receiver = self;
    v7.super_class = DOMNodeIterator;
    [(DOMObject *)&v7 dealloc];
  }
}

- (DOMNode)root
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v6);
  v3 = kit(*(self->super._internal + 3));
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v6, v4);
  return v3;
}

- (unsigned)whatToShow
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v5);
  LODWORD(self) = *(self->super._internal + 10);
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v5, v3);
  return self;
}

- (id)filter
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v6);
  v3 = kit(*(self->super._internal + 4));
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v6, v4);
  return v3;
}

- (DOMNode)referenceNode
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v6);
  v3 = kit(*(self->super._internal + 6));
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v6, v4);
  return v3;
}

- (BOOL)pointerBeforeReferenceNode
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v5);
  LOBYTE(self) = *(self->super._internal + 56);
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v5, v3);
  return self;
}

- (DOMNode)nextNode
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v13);
  WebCore::NodeIterator::nextNode(&v10, self->super._internal);
  v4 = v12;
  if (v12)
  {
    v5 = 0;
    if (v12 == 255)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v6 = v10;
    v10 = 0;
    v5 = kit(v6);
    if (v6)
    {
      if (*(v6 + 7) == 2)
      {
        WebCore::Node::removedLastRef(v6);
        v4 = v12;
        if (v12 == 255)
        {
          goto LABEL_18;
        }

        goto LABEL_10;
      }

      *(v6 + 7) -= 2;
    }

    v4 = v12;
    if (v12 == 255)
    {
      goto LABEL_18;
    }
  }

LABEL_10:
  if (v4)
  {
    v8 = v11;
    v11 = 0;
    if (v8 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v8, v3);
    }
  }

  else
  {
    v7 = v10;
    v10 = 0;
    if (v7)
    {
      if (*(v7 + 7) == 2)
      {
        WebCore::Node::removedLastRef(v7);
      }

      else
      {
        *(v7 + 7) -= 2;
      }
    }
  }

LABEL_18:
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v13, v3);
  return v5;
}

- (DOMNode)previousNode
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v13);
  WebCore::NodeIterator::previousNode(&v10, self->super._internal);
  v4 = v12;
  if (v12)
  {
    v5 = 0;
    if (v12 == 255)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v6 = v10;
    v10 = 0;
    v5 = kit(v6);
    if (v6)
    {
      if (*(v6 + 7) == 2)
      {
        WebCore::Node::removedLastRef(v6);
        v4 = v12;
        if (v12 == 255)
        {
          goto LABEL_18;
        }

        goto LABEL_10;
      }

      *(v6 + 7) -= 2;
    }

    v4 = v12;
    if (v12 == 255)
    {
      goto LABEL_18;
    }
  }

LABEL_10:
  if (v4)
  {
    v8 = v11;
    v11 = 0;
    if (v8 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v8, v3);
    }
  }

  else
  {
    v7 = v10;
    v10 = 0;
    if (v7)
    {
      if (*(v7 + 7) == 2)
      {
        WebCore::Node::removedLastRef(v7);
      }

      else
      {
        *(v7 + 7) -= 2;
      }
    }
  }

LABEL_18:
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v13, v3);
  return v5;
}

@end