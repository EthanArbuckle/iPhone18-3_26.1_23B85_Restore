@interface SUICVoiceSelectionViewModel
- (SUICVoiceSelectionViewModel)initWithLanguages:(id)languages voices:(id)voices;
@end

@implementation SUICVoiceSelectionViewModel

- (SUICVoiceSelectionViewModel)initWithLanguages:(id)languages voices:(id)voices
{
  languagesCopy = languages;
  voicesCopy = voices;
  v14.receiver = self;
  v14.super_class = SUICVoiceSelectionViewModel;
  v8 = [(SUICVoiceSelectionViewModel *)&v14 init];
  if (v8)
  {
    v9 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithArray:languagesCopy copyItems:1];
    languages = v8->_languages;
    v8->_languages = v9;

    v11 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithArray:voicesCopy copyItems:1];
    voices = v8->_voices;
    v8->_voices = v11;
  }

  return v8;
}

@end