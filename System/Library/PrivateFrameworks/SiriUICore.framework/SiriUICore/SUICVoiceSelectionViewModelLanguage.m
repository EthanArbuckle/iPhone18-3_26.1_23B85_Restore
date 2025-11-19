@interface SUICVoiceSelectionViewModelLanguage
- (SUICVoiceSelectionViewModelLanguage)initWithLanguageCode:(id)a3 localizedDisplayName:(id)a4 isCurrentOutputLanguage:(BOOL)a5;
@end

@implementation SUICVoiceSelectionViewModelLanguage

- (SUICVoiceSelectionViewModelLanguage)initWithLanguageCode:(id)a3 localizedDisplayName:(id)a4 isCurrentOutputLanguage:(BOOL)a5
{
  v9 = a3;
  v10 = a4;
  v16.receiver = self;
  v16.super_class = SUICVoiceSelectionViewModelLanguage;
  v11 = [(SUICVoiceSelectionViewModelLanguage *)&v16 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_languageCode, a3);
    v13 = [v10 copy];
    localizedDisplayName = v12->_localizedDisplayName;
    v12->_localizedDisplayName = v13;

    v12->_isCurrentOutputLanguage = a5;
  }

  return v12;
}

@end