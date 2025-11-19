@interface NSData(ActionIdentifier)
- (uint64_t)re_actionIdentifierHashValue;
@end

@implementation NSData(ActionIdentifier)

- (uint64_t)re_actionIdentifierHashValue
{
  v2 = [a1 bytes];
  v3 = [a1 length];

  return REHashDataUInt64(v2, v3);
}

@end