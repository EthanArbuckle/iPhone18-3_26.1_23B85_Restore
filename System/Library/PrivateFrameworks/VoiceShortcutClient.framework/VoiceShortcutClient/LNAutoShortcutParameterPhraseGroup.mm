@interface LNAutoShortcutParameterPhraseGroup
- (LNAutoShortcutParameterPhraseGroup)initWithParameterID:(id)d phrases:(id)phrases;
- (void)addPhrase:(id)phrase;
@end

@implementation LNAutoShortcutParameterPhraseGroup

- (void)addPhrase:(id)phrase
{
  v4 = [(NSArray *)self->_phrases arrayByAddingObject:phrase];
  phrases = self->_phrases;
  self->_phrases = v4;

  MEMORY[0x1EEE66BB8]();
}

- (LNAutoShortcutParameterPhraseGroup)initWithParameterID:(id)d phrases:(id)phrases
{
  dCopy = d;
  phrasesCopy = phrases;
  v15.receiver = self;
  v15.super_class = LNAutoShortcutParameterPhraseGroup;
  v9 = [(LNAutoShortcutParameterPhraseGroup *)&v15 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_parameterID, d);
    v11 = [phrasesCopy mutableCopy];
    phrases = v10->_phrases;
    v10->_phrases = v11;

    v13 = v10;
  }

  return v10;
}

@end