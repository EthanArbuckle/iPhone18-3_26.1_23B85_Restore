@interface DOMBlob
- (id)type;
- (unint64_t)size;
- (void)dealloc;
@end

@implementation DOMBlob

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
    v5.super_class = DOMBlob;
    [(DOMObject *)&v5 dealloc];
  }
}

- (unint64_t)size
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v6);
  v3 = WebCore::Blob::size(self->super._internal);
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v6, v4);
  return v3;
}

- (id)type
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v11);
  v3 = *(self->super._internal + 7);
  if (v3)
  {
    atomic_fetch_add_explicit(v3, 2u, memory_order_relaxed);
    MEMORY[0x1CCA63450](&v10, v3);
    if (atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v3, v4);
    }
  }

  else
  {
    v10 = &stru_1F472E7E8;
    v9 = &stru_1F472E7E8;
  }

  v5 = v10;
  v10 = 0;
  if (v5)
  {
    v6 = v5;
    v7 = v10;
    v10 = 0;
    if (v7)
    {
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v11, v4);
  return v5;
}

@end