@interface DOMHTMLOptionsCollection
- (DOMNode)item:(unsigned int)index;
- (DOMNode)namedItem:(NSString *)name;
- (int)selectedIndex;
- (unsigned)length;
- (void)add:(DOMHTMLOptionElement *)option index:(unsigned int)index;
- (void)dealloc;
- (void)remove:(unsigned int)index;
- (void)setLength:(unsigned int)length;
- (void)setSelectedIndex:(int)selectedIndex;
@end

@implementation DOMHTMLOptionsCollection

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
    v5.super_class = DOMHTMLOptionsCollection;
    [(DOMObject *)&v5 dealloc];
  }
}

- (int)selectedIndex
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v5);
  LODWORD(self) = WebCore::HTMLOptionsCollection::selectedIndex(self->super._internal);
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v5, v3);
  return self;
}

- (void)setSelectedIndex:(int)selectedIndex
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v5);
  WebCore::HTMLOptionsCollection::setSelectedIndex(self->super._internal);
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v5, v4);
}

- (unsigned)length
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v5);
  LODWORD(self) = WebCore::HTMLOptionsCollection::length(self->super._internal);
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v5, v3);
  return self;
}

- (void)setLength:(unsigned int)length
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v8);
  WebCore::HTMLOptionsCollection::setLength(self->super._internal);
  if (v7 == 1)
  {
    v8[80] = v5;
    v9 = v6;
    raiseDOMErrorException();
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v8, v4);
}

- (DOMNode)namedItem:(NSString *)name
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v10);
  WTF::AtomStringImpl::add(&v11, name, v4);
  v9 = v11;
  v5 = WebCore::HTMLOptionsCollection::namedItem();
  v7 = kit(v5);
  if (v9 && atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v9, v6);
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v10, v6);
  return v7;
}

- (void)add:(DOMHTMLOptionElement *)option index:(unsigned int)index
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v11);
  if (!option)
  {
    raiseTypeErrorException();
  }

  internal = option->super.super.super.super._internal;
  if (internal)
  {
    *(internal + 7) += 2;
  }

  v7 = internal;
  WebCore::HTMLOptionsCollection::add();
  if (v10 == 1)
  {
    v11[80] = v8;
    v12 = v9;
    raiseDOMErrorException();
  }

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

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v11, v6);
}

- (void)remove:(unsigned int)index
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v5);
  WebCore::HTMLOptionsCollection::remove(self->super._internal);
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v5, v4);
}

- (DOMNode)item:(unsigned int)index
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v8);
  v4 = WebCore::HTMLOptionsCollection::item(self->super._internal);
  v5 = kit(v4);
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v8, v6);
  return v5;
}

@end