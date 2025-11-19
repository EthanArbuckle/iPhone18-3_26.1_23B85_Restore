@interface INSpeakableString(WFNaming)
- (id)wfName;
@end

@implementation INSpeakableString(WFNaming)

- (id)wfName
{
  v1 = [a1 spokenPhrase];
  v2 = WFAbbreviatedNameFromText();

  return v2;
}

@end