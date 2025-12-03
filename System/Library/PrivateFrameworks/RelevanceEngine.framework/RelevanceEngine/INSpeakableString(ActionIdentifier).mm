@interface INSpeakableString(ActionIdentifier)
- (uint64_t)re_actionIdentifierHashValue;
@end

@implementation INSpeakableString(ActionIdentifier)

- (uint64_t)re_actionIdentifierHashValue
{
  spokenPhrase = [self spokenPhrase];
  re_actionIdentifierHashValue = [spokenPhrase re_actionIdentifierHashValue];

  return re_actionIdentifierHashValue;
}

@end