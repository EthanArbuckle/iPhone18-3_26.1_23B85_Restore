@interface NSData(DER)
- (uint64_t)DERItem;
@end

@implementation NSData(DER)

- (uint64_t)DERItem
{
  bytes = [self bytes];
  [self length];
  return bytes;
}

@end