@interface SiriTTSAudioRequest
- (BOOL)immediate;
- (SiriTTSAudibleContext)audibleContext;
- (SiriTTSAudioData)audio;
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
@end

@implementation SiriTTSAudioRequest

- (SiriTTSAudioData)audio
{
  v2 = AudioRequest.audio.getter();

  return v2;
}

- (SiriTTSAudibleContext)audibleContext
{
  v2 = sub_1B1B10C28();

  return v2;
}

- (void)setAudibleContext:(id)context
{
  contextCopy = context;
  selfCopy = self;
  sub_1B1B10CC8();
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  sub_1B1B10E4C(coderCopy);
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
  audibleContext = [(SiriTTSAudioRequest *)self audibleContext];
  [audibleContext setDidStartSpeaking:speakingCopy];
}

- (id)didStartSpeaking
{
  audibleContext = [(SiriTTSAudioRequest *)self audibleContext];
  didStartSpeaking = [audibleContext didStartSpeaking];

  return didStartSpeaking;
}

- (void)setPlaybackVolume:(float)volume
{
  audibleContext = [(SiriTTSAudioRequest *)self audibleContext];
  *&v4 = volume;
  [audibleContext setPlaybackVolume:v4];
}

- (float)playbackVolume
{
  audibleContext = [(SiriTTSAudioRequest *)self audibleContext];
  [audibleContext playbackVolume];
  v4 = v3;

  return v4;
}

- (BOOL)immediate
{
  audibleContext = [(SiriTTSAudioRequest *)self audibleContext];
  immediate = [audibleContext immediate];

  return immediate;
}

- (unsigned)audioSessionId
{
  audibleContext = [(SiriTTSAudioRequest *)self audibleContext];
  audioSessionId = [audibleContext audioSessionId];

  return audioSessionId;
}

@end