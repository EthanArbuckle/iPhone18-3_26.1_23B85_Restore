@interface SiriTTSSpeechRequest
- (BOOL)disableCompactVoice;
- (BOOL)immediate;
- (BOOL)minimizeDeviceUsage;
- (BOOL)privacySensitive;
- (BOOL)whisper;
- (SiriTTSAudibleContext)audibleContext;
- (SiriTTSSynthesisContext)synthesisContext;
- (float)pitch;
- (float)playbackVolume;
- (float)rate;
- (float)volume;
- (id)contextInfo;
- (id)customResourceURLs;
- (id)didGenerateAudio;
- (id)didGenerateWordTimings;
- (id)didStartSpeaking;
- (id)prosodyProperties;
- (id)siriAceViewId;
- (id)siriRequestId;
- (id)text;
- (id)voice;
- (int64_t)synthesisPriority;
- (int64_t)synthesisProfile;
- (unsigned)audioSessionId;
- (void)encodeWithCoder:(id)a3;
- (void)setAudibleContext:(id)a3;
- (void)setContextInfo:(id)a3;
- (void)setCustomResourceURLs:(id)a3;
- (void)setDidGenerateAudio:(id)a3;
- (void)setDidGenerateWordTimings:(id)a3;
- (void)setDidStartSpeaking:(id)a3;
- (void)setPitch:(float)a3;
- (void)setPlaybackVolume:(float)a3;
- (void)setProsodyProperties:(id)a3;
- (void)setRate:(float)a3;
- (void)setSiriAceViewId:(id)a3;
- (void)setSiriRequestId:(id)a3;
- (void)setSynthesisContext:(id)a3;
- (void)setSynthesisPriority:(int64_t)a3;
- (void)setSynthesisProfile:(int64_t)a3;
- (void)setText:(id)a3;
- (void)setVoice:(id)a3;
- (void)setVolume:(float)a3;
@end

@implementation SiriTTSSpeechRequest

- (SiriTTSAudibleContext)audibleContext
{
  v2 = sub_1B1A9449C();

  return v2;
}

- (SiriTTSSynthesisContext)synthesisContext
{
  v2 = sub_1B1A945B0();

  return v2;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1B1AD6CBC(v4);
}

- (void)setAudibleContext:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1B1B11F9C();
}

- (void)setSynthesisContext:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1B1B120B0();
}

- (BOOL)whisper
{
  v2 = [(SiriTTSSpeechRequest *)self synthesisContext];
  v3 = [v2 whisper];

  return v3;
}

- (void)setDidGenerateWordTimings:(id)a3
{
  v4 = a3;
  v5 = [(SiriTTSSpeechRequest *)self synthesisContext];
  [v5 setDidGenerateWordTimings:v4];
}

- (id)didGenerateWordTimings
{
  v2 = [(SiriTTSSpeechRequest *)self synthesisContext];
  v3 = [v2 didGenerateWordTimings];

  return v3;
}

- (void)setDidGenerateAudio:(id)a3
{
  v4 = a3;
  v5 = [(SiriTTSSpeechRequest *)self synthesisContext];
  [v5 setDidGenerateAudio:v4];
}

- (id)didGenerateAudio
{
  v2 = [(SiriTTSSpeechRequest *)self synthesisContext];
  v3 = [v2 didGenerateAudio];

  return v3;
}

- (void)setProsodyProperties:(id)a3
{
  v4 = a3;
  v5 = [(SiriTTSSpeechRequest *)self synthesisContext];
  [v5 setProsodyProperties:v4];
}

- (id)prosodyProperties
{
  v2 = [(SiriTTSSpeechRequest *)self synthesisContext];
  v3 = [v2 prosodyProperties];

  return v3;
}

- (void)setSynthesisPriority:(int64_t)a3
{
  v4 = [(SiriTTSSpeechRequest *)self synthesisContext];
  [v4 setSynthesisPriority:a3];
}

- (int64_t)synthesisPriority
{
  v2 = [(SiriTTSSpeechRequest *)self synthesisContext];
  v3 = [v2 synthesisPriority];

  return v3;
}

- (void)setSynthesisProfile:(int64_t)a3
{
  v4 = [(SiriTTSSpeechRequest *)self synthesisContext];
  [v4 setSynthesisProfile:a3];
}

- (int64_t)synthesisProfile
{
  v2 = [(SiriTTSSpeechRequest *)self synthesisContext];
  v3 = [v2 synthesisProfile];

  return v3;
}

- (BOOL)disableCompactVoice
{
  v2 = [(SiriTTSSpeechRequest *)self synthesisContext];
  v3 = [v2 disableCompactVoice];

  return v3;
}

- (void)setCustomResourceURLs:(id)a3
{
  v4 = a3;
  v5 = [(SiriTTSSpeechRequest *)self synthesisContext];
  [v5 setCustomResourceURLs:v4];
}

- (id)customResourceURLs
{
  v2 = [(SiriTTSSpeechRequest *)self synthesisContext];
  v3 = [v2 customResourceURLs];

  return v3;
}

- (void)setVolume:(float)a3
{
  v5 = [(SiriTTSSpeechRequest *)self synthesisContext];
  *&v4 = a3;
  [v5 setVolume:v4];
}

- (float)volume
{
  v2 = [(SiriTTSSpeechRequest *)self synthesisContext];
  [v2 volume];
  v4 = v3;

  return v4;
}

- (void)setPitch:(float)a3
{
  v5 = [(SiriTTSSpeechRequest *)self synthesisContext];
  *&v4 = a3;
  [v5 setPitch:v4];
}

- (float)pitch
{
  v2 = [(SiriTTSSpeechRequest *)self synthesisContext];
  [v2 pitch];
  v4 = v3;

  return v4;
}

- (void)setRate:(float)a3
{
  v5 = [(SiriTTSSpeechRequest *)self synthesisContext];
  *&v4 = a3;
  [v5 setRate:v4];
}

- (float)rate
{
  v2 = [(SiriTTSSpeechRequest *)self synthesisContext];
  [v2 rate];
  v4 = v3;

  return v4;
}

- (void)setContextInfo:(id)a3
{
  v4 = a3;
  v5 = [(SiriTTSSpeechRequest *)self synthesisContext];
  [v5 setContextInfo:v4];
}

- (id)contextInfo
{
  v2 = [(SiriTTSSpeechRequest *)self synthesisContext];
  v3 = [v2 contextInfo];

  return v3;
}

- (BOOL)minimizeDeviceUsage
{
  v2 = [(SiriTTSSpeechRequest *)self synthesisContext];
  v3 = [v2 minimizeDeviceUsage];

  return v3;
}

- (BOOL)privacySensitive
{
  v2 = [(SiriTTSSpeechRequest *)self synthesisContext];
  v3 = [v2 privacySensitive];

  return v3;
}

- (void)setVoice:(id)a3
{
  v4 = a3;
  v5 = [(SiriTTSSpeechRequest *)self synthesisContext];
  [v5 setVoice:v4];
}

- (id)voice
{
  v2 = [(SiriTTSSpeechRequest *)self synthesisContext];
  v3 = [v2 voice];

  return v3;
}

- (void)setText:(id)a3
{
  v4 = a3;
  v5 = [(SiriTTSSpeechRequest *)self synthesisContext];
  [v5 setText:v4];
}

- (id)text
{
  v2 = [(SiriTTSSpeechRequest *)self synthesisContext];
  v3 = [v2 text];

  return v3;
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
  v5 = [(SiriTTSSpeechRequest *)self audibleContext];
  [v5 setDidStartSpeaking:v4];
}

- (id)didStartSpeaking
{
  v2 = [(SiriTTSSpeechRequest *)self audibleContext];
  v3 = [v2 didStartSpeaking];

  return v3;
}

- (void)setPlaybackVolume:(float)a3
{
  v5 = [(SiriTTSSpeechRequest *)self audibleContext];
  *&v4 = a3;
  [v5 setPlaybackVolume:v4];
}

- (float)playbackVolume
{
  v2 = [(SiriTTSSpeechRequest *)self audibleContext];
  [v2 playbackVolume];
  v4 = v3;

  return v4;
}

- (BOOL)immediate
{
  v2 = [(SiriTTSSpeechRequest *)self audibleContext];
  v3 = [v2 immediate];

  return v3;
}

- (unsigned)audioSessionId
{
  v2 = [(SiriTTSSpeechRequest *)self audibleContext];
  v3 = [v2 audioSessionId];

  return v3;
}

@end