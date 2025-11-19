@interface DOMFile
- (NSString)name;
- (int64_t)lastModified;
@end

@implementation DOMFile

- (NSString)name
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v11);
  v3 = *(self->super.super._internal + 19);
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

- (int64_t)lastModified
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v6);
  Modified = WebCore::File::lastModified(self->super.super._internal);
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v6, v4);
  return Modified;
}

@end