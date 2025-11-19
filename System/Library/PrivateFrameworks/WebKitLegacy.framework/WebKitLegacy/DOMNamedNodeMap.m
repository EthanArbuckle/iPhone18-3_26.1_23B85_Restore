@interface DOMNamedNodeMap
- (DOMNode)getNamedItem:(NSString *)name;
- (DOMNode)getNamedItemNS:(NSString *)namespaceURI localName:(NSString *)localName;
- (DOMNode)item:(unsigned int)index;
- (DOMNode)removeNamedItem:(NSString *)name;
- (DOMNode)removeNamedItemNS:(NSString *)namespaceURI localName:(NSString *)localName;
- (DOMNode)setNamedItem:(DOMNode *)node;
- (unsigned)length;
- (void)dealloc;
@end

@implementation DOMNamedNodeMap

- (void)dealloc
{
  v3 = objc_opt_class();
  if ((WebCoreObjCScheduleDeallocateOnMainThread(v3, self) & 1) == 0)
  {
    internal = self->super._internal;
    if (internal)
    {
      WebCore::NamedNodeMap::deref(internal);
    }

    v5.receiver = self;
    v5.super_class = DOMNamedNodeMap;
    [(DOMObject *)&v5 dealloc];
  }
}

- (unsigned)length
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v5);
  LODWORD(self) = WebCore::NamedNodeMap::length(self->super._internal);
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v5, v3);
  return self;
}

- (DOMNode)getNamedItem:(NSString *)name
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v11);
  WTF::AtomStringImpl::add(&v12, name, v4);
  v9 = v12;
  WebCore::NamedNodeMap::getNamedItem();
  v6 = kit(v10);
  if (v10)
  {
    if (*(v10 + 7) == 2)
    {
      WebCore::Node::removedLastRef(v10);
      v7 = v9;
      if (!v9)
      {
        goto LABEL_9;
      }

      goto LABEL_7;
    }

    *(v10 + 7) -= 2;
  }

  v7 = v9;
  if (!v9)
  {
    goto LABEL_9;
  }

LABEL_7:
  if (atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v7, v5);
  }

LABEL_9:
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v11, v5);
  return v6;
}

- (DOMNode)setNamedItem:(DOMNode *)node
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v12);
  if (!node)
  {
    raiseTypeErrorException();
  }

  internal = node->super._internal;
  if (((*(*internal + 184))(internal) & 1) == 0)
  {
    raiseTypeErrorException();
  }

  if ((*(*internal + 184))(internal))
  {
    v5 = WebCore::NamedNodeMap::setNamedItem();
    if (v11)
    {
      if (v11 == 1)
      {
        v12[80] = v9;
        v13 = v10;
        raiseDOMErrorException();
      }

      mpark::throw_bad_variant_access(v5);
    }

    v7 = kit(v9);
    if (v9)
    {
      if (*(v9 + 7) == 2)
      {
        WebCore::Node::removedLastRef(v9);
      }

      else
      {
        *(v9 + 7) -= 2;
      }
    }

    WebCore::JSMainThreadNullState::~JSMainThreadNullState(v12, v6);
    return v7;
  }

  else
  {
    result = 96;
    __break(0xC471u);
  }

  return result;
}

- (DOMNode)removeNamedItem:(NSString *)name
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v13);
  WTF::AtomStringImpl::add(v14, name, v4);
  v9 = v14[0];
  v5 = WebCore::NamedNodeMap::removeNamedItem();
  if (v12)
  {
    if (v12 == 1)
    {
      LOBYTE(v14[0]) = v10;
      v14[1] = v11;
      raiseDOMErrorException();
    }

    mpark::throw_bad_variant_access(v5);
  }

  v7 = kit(v10);
  if (v10)
  {
    if (*(v10 + 7) == 2)
    {
      WebCore::Node::removedLastRef(v10);
    }

    else
    {
      *(v10 + 7) -= 2;
    }
  }

  if (v9 && atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v9, v6);
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v13, v6);
  return v7;
}

- (DOMNode)item:(unsigned int)index
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v8);
  WebCore::NamedNodeMap::item(self->super._internal);
  v5 = kit(v7);
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

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v8, v4);
  return v5;
}

- (DOMNode)getNamedItemNS:(NSString *)namespaceURI localName:(NSString *)localName
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v15);
  WTF::AtomStringImpl::add(&v16, namespaceURI, v6);
  v13 = v16;
  WTF::AtomStringImpl::add(&v16, localName, v7);
  v12 = v16;
  WebCore::NamedNodeMap::getNamedItemNS();
  v9 = kit(v14);
  if (v14)
  {
    if (*(v14 + 7) == 2)
    {
      WebCore::Node::removedLastRef(v14);
      v10 = v12;
      if (!v12)
      {
        goto LABEL_9;
      }

      goto LABEL_7;
    }

    *(v14 + 7) -= 2;
  }

  v10 = v12;
  if (!v12)
  {
    goto LABEL_9;
  }

LABEL_7:
  if (atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v10, v8);
  }

LABEL_9:
  if (v13 && atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v13, v8);
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v15, v8);
  return v9;
}

- (DOMNode)removeNamedItemNS:(NSString *)namespaceURI localName:(NSString *)localName
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v17);
  WTF::AtomStringImpl::add(v18, namespaceURI, v6);
  v13 = v18[0];
  WTF::AtomStringImpl::add(v18, localName, v7);
  v12 = v18[0];
  v8 = WebCore::NamedNodeMap::removeNamedItemNS();
  if (v16)
  {
    if (v16 == 1)
    {
      LOBYTE(v18[0]) = v14;
      v18[1] = v15;
      raiseDOMErrorException();
    }

    mpark::throw_bad_variant_access(v8);
  }

  v10 = kit(v14);
  if (v14)
  {
    if (*(v14 + 7) == 2)
    {
      WebCore::Node::removedLastRef(v14);
    }

    else
    {
      *(v14 + 7) -= 2;
    }
  }

  if (v12 && atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v12, v9);
  }

  if (v13 && atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v13, v9);
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v17, v9);
  return v10;
}

@end