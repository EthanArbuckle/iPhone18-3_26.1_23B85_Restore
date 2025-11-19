@interface DOMNodeList
- (DOMNode)item:(unsigned int)index;
- (unsigned)length;
- (void)dealloc;
@end

@implementation DOMNodeList

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
    v5.super_class = DOMNodeList;
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

@end