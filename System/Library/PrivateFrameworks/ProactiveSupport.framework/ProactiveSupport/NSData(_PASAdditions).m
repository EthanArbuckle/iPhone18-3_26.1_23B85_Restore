@interface NSData(_PASAdditions)
- (id)_pas_dataWithNonnullBytes;
@end

@implementation NSData(_PASAdditions)

- (id)_pas_dataWithNonnullBytes
{
  v1 = a1;
  if (![a1 bytes] && !objc_msgSend(v1, "length"))
  {
    v1 = &unk_1EE71B5D8;
  }

  return v1;
}

@end