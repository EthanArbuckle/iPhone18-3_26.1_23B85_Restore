@interface NSURL(ActionIdentifier)
- (uint64_t)re_actionIdentifierHashValue;
@end

@implementation NSURL(ActionIdentifier)

- (uint64_t)re_actionIdentifierHashValue
{
  standardizedURL = [self standardizedURL];
  absoluteString = [standardizedURL absoluteString];
  re_actionIdentifierHashValue = [absoluteString re_actionIdentifierHashValue];

  return re_actionIdentifierHashValue;
}

@end