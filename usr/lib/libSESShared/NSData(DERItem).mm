@interface NSData(DERItem)
- (uint64_t)DERItem;
@end

@implementation NSData(DERItem)

- (uint64_t)DERItem
{
  bytes = [self bytes];
  [self length];
  return bytes;
}

@end