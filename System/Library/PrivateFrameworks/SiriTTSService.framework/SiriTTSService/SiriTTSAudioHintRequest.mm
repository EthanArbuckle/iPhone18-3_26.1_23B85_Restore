@interface SiriTTSAudioHintRequest
- (BOOL)immediate;
- (BOOL)isValid;
- (SiriTTSAudibleContext)audibleContext;
- (SiriTTSSynthesisVoice)voice;
- (float)playbackVolume;
- (id)didStartSpeaking;
- (id)siriAceViewId;
- (id)siriRequestId;
- (unsigned)audioSessionId;
- (void)encodeWithCoder:(id)coder;
- (void)setAudibleContext:(id)context;
- (void)setDidStartSpeaking:(id)speaking;
- (void)setPlaybackVolume:(float)volume;
- (void)setSiriAceViewId:(id)id;
- (void)setSiriRequestId:(id)id;
- (void)setVoice:(id)voice;
@end

@implementation SiriTTSAudioHintRequest

- (SiriTTSAudibleContext)audibleContext
{
  v2 = sub_1B1B1317C();

  return v2;
}

- (void)setAudibleContext:(id)context
{
  contextCopy = context;
  selfCopy = self;
  sub_1B1B1321C();
}

- (SiriTTSSynthesisVoice)voice
{
  v2 = sub_1B1B13308();

  return v2;
}

- (void)setVoice:(id)voice
{
  voiceCopy = voice;
  selfCopy = self;
  sub_1B1B133A8();
}

- (BOOL)isValid
{
  selfCopy = self;
  v3 = sub_1B1B1388C();

  return v3;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  sub_1B1B13940(coderCopy);
}

- (void)setSiriAceViewId:(id)id
{
  idCopy = id;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(SiriTTSBaseRequest *)self setInteractionLinkId:idCopy];
  }
}

- (id)siriAceViewId
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    interactionLinkId = [(SiriTTSBaseRequest *)self interactionLinkId];
  }

  else
  {
    interactionLinkId = 0;
  }

  return interactionLinkId;
}

- (void)setSiriRequestId:(id)id
{
  idCopy = id;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(SiriTTSBaseRequest *)self setLogLinkId:idCopy];
  }
}

- (id)siriRequestId
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    logLinkId = [(SiriTTSBaseRequest *)self logLinkId];
  }

  else
  {
    logLinkId = 0;
  }

  return logLinkId;
}

- (void)setDidStartSpeaking:(id)speaking
{
  speakingCopy = speaking;
  audibleContext = [(SiriTTSAudioHintRequest *)self audibleContext];
  [audibleContext setDidStartSpeaking:speakingCopy];
}

- (id)didStartSpeaking
{
  audibleContext = [(SiriTTSAudioHintRequest *)self audibleContext];
  didStartSpeaking = [audibleContext didStartSpeaking];

  return didStartSpeaking;
}

- (void)setPlaybackVolume:(float)volume
{
  audibleContext = [(SiriTTSAudioHintRequest *)self audibleContext];
  *&v4 = volume;
  [audibleContext setPlaybackVolume:v4];
}

- (float)playbackVolume
{
  audibleContext = [(SiriTTSAudioHintRequest *)self audibleContext];
  [audibleContext playbackVolume];
  v4 = v3;

  return v4;
}

- (BOOL)immediate
{
  audibleContext = [(SiriTTSAudioHintRequest *)self audibleContext];
  immediate = [audibleContext immediate];

  return immediate;
}

- (unsigned)audioSessionId
{
  audibleContext = [(SiriTTSAudioHintRequest *)self audibleContext];
  audioSessionId = [audibleContext audioSessionId];

  return audioSessionId;
}

@end