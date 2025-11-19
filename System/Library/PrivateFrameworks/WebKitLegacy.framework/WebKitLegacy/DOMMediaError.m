@interface DOMMediaError
- (unsigned)code;
- (void)dealloc;
@end

@implementation DOMMediaError

- (void)dealloc
{
  v3 = objc_opt_class();
  if ((WebCoreObjCScheduleDeallocateOnMainThread(v3, self) & 1) == 0)
  {
    internal = self->super._internal;
    if (internal)
    {
      if (*internal == 1)
      {
        v6 = *(internal + 1);
        *(internal + 1) = 0;
        if (v6)
        {
          if (atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v6, v4);
          }
        }

        if (*internal != 1)
        {
          __break(0xC471u);
          return;
        }

        WTF::fastFree(internal, v4);
      }

      else
      {
        --*internal;
      }
    }

    v7.receiver = self;
    v7.super_class = DOMMediaError;
    [(DOMObject *)&v7 dealloc];
  }
}

- (unsigned)code
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v5);
  LOWORD(self) = *(self->super._internal + 2);
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v5, v3);
  return self;
}

@end