@interface SAExclaveBinaryLoadInfo
- (id)exclave;
- (id)initWithBinary:(uint64_t)binary segment:(uint64_t)segment loadAddress:(void *)address exclave:;
@end

@implementation SAExclaveBinaryLoadInfo

- (id)initWithBinary:(uint64_t)binary segment:(uint64_t)segment loadAddress:(void *)address exclave:
{
  if (!self)
  {
    return 0;
  }

  v9.receiver = self;
  v9.super_class = SAExclaveBinaryLoadInfo;
  v6 = objc_msgSendSuper2(&v9, sel_initWithBinary_segment_loadAddress_, a2, binary, segment);
  v7 = v6;
  if (v6)
  {
    objc_storeWeak(v6 + 4, address);
  }

  return v7;
}

- (id)exclave
{
  WeakRetained = objc_loadWeakRetained(&self->_exclave);

  return WeakRetained;
}

@end