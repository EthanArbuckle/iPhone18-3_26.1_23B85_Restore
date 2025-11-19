@interface SFSpeechSynthesisRequest
- (SFSpeechSynthesisRequest)init;
- (SFSpeechSynthesisVoice)voice;
- (id)description;
@end

@implementation SFSpeechSynthesisRequest

- (SFSpeechSynthesisVoice)voice
{
  WeakRetained = objc_loadWeakRetained(&self->_voice);

  return WeakRetained;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v13 = *&self->_locale;
  type = self->_type;
  text = self->_text;
  solutionType = self->_solutionType;
  voiceName = self->_voiceName;
  clientBundleIdentifier = self->_clientBundleIdentifier;
  requestIdentifer = self->_requestIdentifer;
  v10 = [MEMORY[0x277CCABB0] numberWithBool:self->_useCache];
  v11 = [v3 stringWithFormat:@"locale:%@, gender:%@, voiceName:%@, text:'%@', requestType:%ld, solutionType:%ld, appId:%@, requestId:%@, useCache:%@, devServiceType:%@", v13, voiceName, text, type, solutionType, clientBundleIdentifier, requestIdentifer, v10, self->_devServiceType];

  return v11;
}

- (SFSpeechSynthesisRequest)init
{
  v3.receiver = self;
  v3.super_class = SFSpeechSynthesisRequest;
  result = [(SFSpeechSynthesisRequest *)&v3 init];
  if (result)
  {
    result->_useCache = 1;
  }

  return result;
}

@end