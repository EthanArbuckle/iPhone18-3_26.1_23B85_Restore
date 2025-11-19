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
- (void)encodeWithCoder:(id)a3;
- (void)setAudibleContext:(id)a3;
- (void)setDidStartSpeaking:(id)a3;
- (void)setPlaybackVolume:(float)a3;
- (void)setSiriAceViewId:(id)a3;
- (void)setSiriRequestId:(id)a3;
- (void)setVoice:(id)a3;
@end

@implementation SiriTTSAudioHintRequest

- (SiriTTSAudibleContext)audibleContext
{
  v2 = sub_1B1B1317C();

  return v2;
}

- (void)setAudibleContext:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1B1B1321C();
}

- (SiriTTSSynthesisVoice)voice
{
  v2 = sub_1B1B13308();

  return v2;
}

- (void)setVoice:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1B1B133A8();
}

- (BOOL)isValid
{
  v2 = self;
  v3 = sub_1B1B1388C();

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1B1B13940(v4);
}

- (void)setSiriAceViewId:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(SiriTTSBaseRequest *)self setInteractionLinkId:v4];
  }
}

- (id)siriAceViewId
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [(SiriTTSBaseRequest *)self interactionLinkId];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setSiriRequestId:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(SiriTTSBaseRequest *)self setLogLinkId:v4];
  }
}

- (id)siriRequestId
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [(SiriTTSBaseRequest *)self logLinkId];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setDidStartSpeaking:(id)a3
{
  v4 = a3;
  v5 = [(SiriTTSAudioHintRequest *)self audibleContext];
  [v5 setDidStartSpeaking:v4];
}

- (id)didStartSpeaking
{
  v2 = [(SiriTTSAudioHintRequest *)self audibleContext];
  v3 = [v2 didStartSpeaking];

  return v3;
}

- (void)setPlaybackVolume:(float)a3
{
  v5 = [(SiriTTSAudioHintRequest *)self audibleContext];
  *&v4 = a3;
  [v5 setPlaybackVolume:v4];
}

- (float)playbackVolume
{
  v2 = [(SiriTTSAudioHintRequest *)self audibleContext];
  [v2 playbackVolume];
  v4 = v3;

  return v4;
}

- (BOOL)immediate
{
  v2 = [(SiriTTSAudioHintRequest *)self audibleContext];
  v3 = [v2 immediate];

  return v3;
}

- (unsigned)audioSessionId
{
  v2 = [(SiriTTSAudioHintRequest *)self audibleContext];
  v3 = [v2 audioSessionId];

  return v3;
}

@end