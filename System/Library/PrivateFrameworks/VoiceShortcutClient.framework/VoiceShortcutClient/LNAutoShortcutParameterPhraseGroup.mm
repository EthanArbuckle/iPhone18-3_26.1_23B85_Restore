@interface LNAutoShortcutParameterPhraseGroup
- (LNAutoShortcutParameterPhraseGroup)initWithParameterID:(id)a3 phrases:(id)a4;
- (void)addPhrase:(id)a3;
@end

@implementation LNAutoShortcutParameterPhraseGroup

- (void)addPhrase:(id)a3
{
  v4 = [(NSArray *)self->_phrases arrayByAddingObject:a3];
  phrases = self->_phrases;
  self->_phrases = v4;

  MEMORY[0x1EEE66BB8]();
}

- (LNAutoShortcutParameterPhraseGroup)initWithParameterID:(id)a3 phrases:(id)a4
{
  v7 = a3;
  v8 = a4;
  v15.receiver = self;
  v15.super_class = LNAutoShortcutParameterPhraseGroup;
  v9 = [(LNAutoShortcutParameterPhraseGroup *)&v15 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_parameterID, a3);
    v11 = [v8 mutableCopy];
    phrases = v10->_phrases;
    v10->_phrases = v11;

    v13 = v10;
  }

  return v10;
}

@end