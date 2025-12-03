@interface INSpeakableString(WFNaming)
- (id)wfName;
@end

@implementation INSpeakableString(WFNaming)

- (id)wfName
{
  spokenPhrase = [self spokenPhrase];
  v2 = WFAbbreviatedNameFromText();

  return v2;
}

@end