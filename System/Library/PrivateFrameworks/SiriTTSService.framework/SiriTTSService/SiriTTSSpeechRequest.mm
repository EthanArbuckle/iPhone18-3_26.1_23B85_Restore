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
- (void)encodeWithCoder:(id)coder;
- (void)setAudibleContext:(id)context;
- (void)setContextInfo:(id)info;
- (void)setCustomResourceURLs:(id)ls;
- (void)setDidGenerateAudio:(id)audio;
- (void)setDidGenerateWordTimings:(id)timings;
- (void)setDidStartSpeaking:(id)speaking;
- (void)setPitch:(float)pitch;
- (void)setPlaybackVolume:(float)volume;
- (void)setProsodyProperties:(id)properties;
- (void)setRate:(float)rate;
- (void)setSiriAceViewId:(id)id;
- (void)setSiriRequestId:(id)id;
- (void)setSynthesisContext:(id)context;
- (void)setSynthesisPriority:(int64_t)priority;
- (void)setSynthesisProfile:(int64_t)profile;
- (void)setText:(id)text;
- (void)setVoice:(id)voice;
- (void)setVolume:(float)volume;
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

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  sub_1B1AD6CBC(coderCopy);
}

- (void)setAudibleContext:(id)context
{
  contextCopy = context;
  selfCopy = self;
  sub_1B1B11F9C();
}

- (void)setSynthesisContext:(id)context
{
  contextCopy = context;
  selfCopy = self;
  sub_1B1B120B0();
}

- (BOOL)whisper
{
  synthesisContext = [(SiriTTSSpeechRequest *)self synthesisContext];
  whisper = [synthesisContext whisper];

  return whisper;
}

- (void)setDidGenerateWordTimings:(id)timings
{
  timingsCopy = timings;
  synthesisContext = [(SiriTTSSpeechRequest *)self synthesisContext];
  [synthesisContext setDidGenerateWordTimings:timingsCopy];
}

- (id)didGenerateWordTimings
{
  synthesisContext = [(SiriTTSSpeechRequest *)self synthesisContext];
  didGenerateWordTimings = [synthesisContext didGenerateWordTimings];

  return didGenerateWordTimings;
}

- (void)setDidGenerateAudio:(id)audio
{
  audioCopy = audio;
  synthesisContext = [(SiriTTSSpeechRequest *)self synthesisContext];
  [synthesisContext setDidGenerateAudio:audioCopy];
}

- (id)didGenerateAudio
{
  synthesisContext = [(SiriTTSSpeechRequest *)self synthesisContext];
  didGenerateAudio = [synthesisContext didGenerateAudio];

  return didGenerateAudio;
}

- (void)setProsodyProperties:(id)properties
{
  propertiesCopy = properties;
  synthesisContext = [(SiriTTSSpeechRequest *)self synthesisContext];
  [synthesisContext setProsodyProperties:propertiesCopy];
}

- (id)prosodyProperties
{
  synthesisContext = [(SiriTTSSpeechRequest *)self synthesisContext];
  prosodyProperties = [synthesisContext prosodyProperties];

  return prosodyProperties;
}

- (void)setSynthesisPriority:(int64_t)priority
{
  synthesisContext = [(SiriTTSSpeechRequest *)self synthesisContext];
  [synthesisContext setSynthesisPriority:priority];
}

- (int64_t)synthesisPriority
{
  synthesisContext = [(SiriTTSSpeechRequest *)self synthesisContext];
  synthesisPriority = [synthesisContext synthesisPriority];

  return synthesisPriority;
}

- (void)setSynthesisProfile:(int64_t)profile
{
  synthesisContext = [(SiriTTSSpeechRequest *)self synthesisContext];
  [synthesisContext setSynthesisProfile:profile];
}

- (int64_t)synthesisProfile
{
  synthesisContext = [(SiriTTSSpeechRequest *)self synthesisContext];
  synthesisProfile = [synthesisContext synthesisProfile];

  return synthesisProfile;
}

- (BOOL)disableCompactVoice
{
  synthesisContext = [(SiriTTSSpeechRequest *)self synthesisContext];
  disableCompactVoice = [synthesisContext disableCompactVoice];

  return disableCompactVoice;
}

- (void)setCustomResourceURLs:(id)ls
{
  lsCopy = ls;
  synthesisContext = [(SiriTTSSpeechRequest *)self synthesisContext];
  [synthesisContext setCustomResourceURLs:lsCopy];
}

- (id)customResourceURLs
{
  synthesisContext = [(SiriTTSSpeechRequest *)self synthesisContext];
  customResourceURLs = [synthesisContext customResourceURLs];

  return customResourceURLs;
}

- (void)setVolume:(float)volume
{
  synthesisContext = [(SiriTTSSpeechRequest *)self synthesisContext];
  *&v4 = volume;
  [synthesisContext setVolume:v4];
}

- (float)volume
{
  synthesisContext = [(SiriTTSSpeechRequest *)self synthesisContext];
  [synthesisContext volume];
  v4 = v3;

  return v4;
}

- (void)setPitch:(float)pitch
{
  synthesisContext = [(SiriTTSSpeechRequest *)self synthesisContext];
  *&v4 = pitch;
  [synthesisContext setPitch:v4];
}

- (float)pitch
{
  synthesisContext = [(SiriTTSSpeechRequest *)self synthesisContext];
  [synthesisContext pitch];
  v4 = v3;

  return v4;
}

- (void)setRate:(float)rate
{
  synthesisContext = [(SiriTTSSpeechRequest *)self synthesisContext];
  *&v4 = rate;
  [synthesisContext setRate:v4];
}

- (float)rate
{
  synthesisContext = [(SiriTTSSpeechRequest *)self synthesisContext];
  [synthesisContext rate];
  v4 = v3;

  return v4;
}

- (void)setContextInfo:(id)info
{
  infoCopy = info;
  synthesisContext = [(SiriTTSSpeechRequest *)self synthesisContext];
  [synthesisContext setContextInfo:infoCopy];
}

- (id)contextInfo
{
  synthesisContext = [(SiriTTSSpeechRequest *)self synthesisContext];
  contextInfo = [synthesisContext contextInfo];

  return contextInfo;
}

- (BOOL)minimizeDeviceUsage
{
  synthesisContext = [(SiriTTSSpeechRequest *)self synthesisContext];
  minimizeDeviceUsage = [synthesisContext minimizeDeviceUsage];

  return minimizeDeviceUsage;
}

- (BOOL)privacySensitive
{
  synthesisContext = [(SiriTTSSpeechRequest *)self synthesisContext];
  privacySensitive = [synthesisContext privacySensitive];

  return privacySensitive;
}

- (void)setVoice:(id)voice
{
  voiceCopy = voice;
  synthesisContext = [(SiriTTSSpeechRequest *)self synthesisContext];
  [synthesisContext setVoice:voiceCopy];
}

- (id)voice
{
  synthesisContext = [(SiriTTSSpeechRequest *)self synthesisContext];
  voice = [synthesisContext voice];

  return voice;
}

- (void)setText:(id)text
{
  textCopy = text;
  synthesisContext = [(SiriTTSSpeechRequest *)self synthesisContext];
  [synthesisContext setText:textCopy];
}

- (id)text
{
  synthesisContext = [(SiriTTSSpeechRequest *)self synthesisContext];
  text = [synthesisContext text];

  return text;
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
  audibleContext = [(SiriTTSSpeechRequest *)self audibleContext];
  [audibleContext setDidStartSpeaking:speakingCopy];
}

- (id)didStartSpeaking
{
  audibleContext = [(SiriTTSSpeechRequest *)self audibleContext];
  didStartSpeaking = [audibleContext didStartSpeaking];

  return didStartSpeaking;
}

- (void)setPlaybackVolume:(float)volume
{
  audibleContext = [(SiriTTSSpeechRequest *)self audibleContext];
  *&v4 = volume;
  [audibleContext setPlaybackVolume:v4];
}

- (float)playbackVolume
{
  audibleContext = [(SiriTTSSpeechRequest *)self audibleContext];
  [audibleContext playbackVolume];
  v4 = v3;

  return v4;
}

- (BOOL)immediate
{
  audibleContext = [(SiriTTSSpeechRequest *)self audibleContext];
  immediate = [audibleContext immediate];

  return immediate;
}

- (unsigned)audioSessionId
{
  audibleContext = [(SiriTTSSpeechRequest *)self audibleContext];
  audioSessionId = [audibleContext audioSessionId];

  return audioSessionId;
}

@end