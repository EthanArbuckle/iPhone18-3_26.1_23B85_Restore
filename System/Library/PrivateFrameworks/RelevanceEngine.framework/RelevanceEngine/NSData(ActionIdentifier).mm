@interface NSData(ActionIdentifier)
- (uint64_t)re_actionIdentifierHashValue;
@end

@implementation NSData(ActionIdentifier)

- (uint64_t)re_actionIdentifierHashValue
{
  bytes = [self bytes];
  v3 = [self length];

  return REHashDataUInt64(bytes, v3);
}

@end