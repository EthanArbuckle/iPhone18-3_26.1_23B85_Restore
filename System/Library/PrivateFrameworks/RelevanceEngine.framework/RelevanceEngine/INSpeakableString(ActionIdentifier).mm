@interface INSpeakableString(ActionIdentifier)
- (uint64_t)re_actionIdentifierHashValue;
@end

@implementation INSpeakableString(ActionIdentifier)

- (uint64_t)re_actionIdentifierHashValue
{
  v1 = [a1 spokenPhrase];
  v2 = [v1 re_actionIdentifierHashValue];

  return v2;
}

@end