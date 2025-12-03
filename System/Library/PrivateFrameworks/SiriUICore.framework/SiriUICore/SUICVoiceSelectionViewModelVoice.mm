@interface SUICVoiceSelectionViewModelVoice
- (NSString)localizedDisplayName;
- (SUICVoiceSelectionViewModelVoice)initWithVoice:(id)voice isCurrentSiriVoice:(BOOL)siriVoice;
@end

@implementation SUICVoiceSelectionViewModelVoice

- (SUICVoiceSelectionViewModelVoice)initWithVoice:(id)voice isCurrentSiriVoice:(BOOL)siriVoice
{
  voiceCopy = voice;
  v11.receiver = self;
  v11.super_class = SUICVoiceSelectionViewModelVoice;
  v8 = [(SUICVoiceSelectionViewModelVoice *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_voiceInfo, voice);
    v9->_isCurrentSiriVoice = siriVoice;
  }

  return v9;
}

- (NSString)localizedDisplayName
{
  mEMORY[0x1E698D178] = [MEMORY[0x1E698D178] sharedInstance];
  languageCode = [(AFVoiceInfo *)self->_voiceInfo languageCode];
  name = [(AFVoiceInfo *)self->_voiceInfo name];
  v6 = [mEMORY[0x1E698D178] outputVoiceDescriptorForOutputLanguageCode:languageCode voiceName:name];

  localizedDisplay = [v6 localizedDisplay];

  return localizedDisplay;
}

@end