@interface SAExclaveBinaryLoadInfo
- (id)exclave;
- (id)initWithBinary:(uint64_t)a3 segment:(uint64_t)a4 loadAddress:(void *)a5 exclave:;
@end

@implementation SAExclaveBinaryLoadInfo

- (id)initWithBinary:(uint64_t)a3 segment:(uint64_t)a4 loadAddress:(void *)a5 exclave:
{
  if (!a1)
  {
    return 0;
  }

  v9.receiver = a1;
  v9.super_class = SAExclaveBinaryLoadInfo;
  v6 = objc_msgSendSuper2(&v9, sel_initWithBinary_segment_loadAddress_, a2, a3, a4);
  v7 = v6;
  if (v6)
  {
    objc_storeWeak(v6 + 4, a5);
  }

  return v7;
}

- (id)exclave
{
  WeakRetained = objc_loadWeakRetained(&self->_exclave);

  return WeakRetained;
}

@end