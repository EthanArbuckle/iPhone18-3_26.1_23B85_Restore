@interface DOMHTMLCollection
- (DOMNode)item:(unsigned int)index;
- (DOMNode)namedItem:(NSString *)name;
- (DOMNodeList)tags:(NSString *)name;
- (unsigned)length;
- (void)dealloc;
@end

@implementation DOMHTMLCollection

- (void)dealloc
{
  v3 = objc_opt_class();
  if ((WebCoreObjCScheduleDeallocateOnMainThread(v3, self) & 1) == 0)
  {
    internal = self->super._internal;
    if (internal)
    {
      if (*(internal + 4) == 1)
      {
        (*(*internal + 8))(internal);
      }

      else
      {
        --*(internal + 4);
      }
    }

    v5.receiver = self;
    v5.super_class = DOMHTMLCollection;
    [(DOMObject *)&v5 dealloc];
  }
}

- (unsigned)length
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v5);
  LODWORD(self) = (*(*self->super._internal + 16))(self->super._internal);
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v5, v3);
  return self;
}

- (DOMNode)item:(unsigned int)index
{
  v3 = *&index;
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v9);
  v5 = (*(*self->super._internal + 24))(self->super._internal, v3);
  v6 = kit(v5);
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v9, v7);
  return v6;
}

- (DOMNode)namedItem:(NSString *)name
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v13);
  internal = self->super._internal;
  WTF::AtomStringImpl::add(&v14, name, v6);
  v12 = v14;
  v7 = (*(*internal + 64))(internal, &v12);
  v9 = kit(v7);
  v10 = v12;
  v12 = 0;
  if (v10 && atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v10, v8);
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v13, v8);
  return v9;
}

- (DOMNodeList)tags:(NSString *)name
{
  if (name)
  {
    WebCore::JSMainThreadNullState::JSMainThreadNullState(v11);
    WTF::AtomStringImpl::add(&v12, name, v4);
    v9 = v12;
    WebCore::ContainerNode::getElementsByTagName();
    v6 = kit(v10);
    if (v10)
    {
      if (*(v10 + 4) == 1)
      {
        (*(*v10 + 8))();
        v7 = v9;
        if (v9)
        {
LABEL_6:
          if (atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v7, v5);
          }
        }

LABEL_8:
        WebCore::JSMainThreadNullState::~JSMainThreadNullState(v11, v5);
        return v6;
      }

      --*(v10 + 4);
    }

    v7 = v9;
    if (v9)
    {
      goto LABEL_6;
    }

    goto LABEL_8;
  }

  return 0;
}

@end