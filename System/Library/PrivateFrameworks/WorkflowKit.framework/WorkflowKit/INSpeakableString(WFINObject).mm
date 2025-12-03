@interface INSpeakableString(WFINObject)
- (id)wf_initWithIdentifier:()WFINObject displayString:;
@end

@implementation INSpeakableString(WFINObject)

- (id)wf_initWithIdentifier:()WFINObject displayString:
{
  v4 = [self initWithVocabularyIdentifier:a3 spokenPhrase:a4 pronunciationHint:0];

  return v4;
}

@end