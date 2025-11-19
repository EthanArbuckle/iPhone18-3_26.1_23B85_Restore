@interface SUICVoiceSelectionViewModelVoice
- (NSString)localizedDisplayName;
- (SUICVoiceSelectionViewModelVoice)initWithVoice:(id)a3 isCurrentSiriVoice:(BOOL)a4;
@end

@implementation SUICVoiceSelectionViewModelVoice

- (SUICVoiceSelectionViewModelVoice)initWithVoice:(id)a3 isCurrentSiriVoice:(BOOL)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = SUICVoiceSelectionViewModelVoice;
  v8 = [(SUICVoiceSelectionViewModelVoice *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_voiceInfo, a3);
    v9->_isCurrentSiriVoice = a4;
  }

  return v9;
}

- (NSString)localizedDisplayName
{
  v3 = [MEMORY[0x1E698D178] sharedInstance];
  v4 = [(AFVoiceInfo *)self->_voiceInfo languageCode];
  v5 = [(AFVoiceInfo *)self->_voiceInfo name];
  v6 = [v3 outputVoiceDescriptorForOutputLanguageCode:v4 voiceName:v5];

  v7 = [v6 localizedDisplay];

  return v7;
}

@end