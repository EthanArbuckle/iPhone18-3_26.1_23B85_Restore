@interface NSData(_PASAdditions)
- (id)_pas_dataWithNonnullBytes;
@end

@implementation NSData(_PASAdditions)

- (id)_pas_dataWithNonnullBytes
{
  selfCopy = self;
  if (![self bytes] && !objc_msgSend(selfCopy, "length"))
  {
    selfCopy = &unk_1EE71B5D8;
  }

  return selfCopy;
}

@end