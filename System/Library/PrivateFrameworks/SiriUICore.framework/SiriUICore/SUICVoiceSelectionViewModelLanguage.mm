@interface SUICVoiceSelectionViewModelLanguage
- (SUICVoiceSelectionViewModelLanguage)initWithLanguageCode:(id)code localizedDisplayName:(id)name isCurrentOutputLanguage:(BOOL)language;
@end

@implementation SUICVoiceSelectionViewModelLanguage

- (SUICVoiceSelectionViewModelLanguage)initWithLanguageCode:(id)code localizedDisplayName:(id)name isCurrentOutputLanguage:(BOOL)language
{
  codeCopy = code;
  nameCopy = name;
  v16.receiver = self;
  v16.super_class = SUICVoiceSelectionViewModelLanguage;
  v11 = [(SUICVoiceSelectionViewModelLanguage *)&v16 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_languageCode, code);
    v13 = [nameCopy copy];
    localizedDisplayName = v12->_localizedDisplayName;
    v12->_localizedDisplayName = v13;

    v12->_isCurrentOutputLanguage = language;
  }

  return v12;
}

@end