@interface SiriTTSSynthesisRequest
- (BOOL)disableCompactVoice;
- (BOOL)minimizeDeviceUsage;
- (BOOL)privacySensitive;
- (BOOL)whisper;
- (SiriTTSSynthesisContext)synthesisContext;
- (float)pitch;
- (float)rate;
- (float)volume;
- (id)contextInfo;
- (id)customResourceURLs;
- (id)didGenerateAudio;
- (id)didGenerateWordTimings;
- (id)prosodyProperties;
- (id)text;
- (id)voice;
- (int64_t)synthesisPriority;
- (int64_t)synthesisProfile;
- (void)encodeWithCoder:(id)coder;
- (void)setContextInfo:(id)info;
- (void)setCustomResourceURLs:(id)ls;
- (void)setDidGenerateAudio:(id)audio;
- (void)setDidGenerateWordTimings:(id)timings;
- (void)setPitch:(float)pitch;
- (void)setProsodyProperties:(id)properties;
- (void)setRate:(float)rate;
- (void)setSynthesisContext:(id)context;
- (void)setSynthesisPriority:(int64_t)priority;
- (void)setSynthesisProfile:(int64_t)profile;
- (void)setText:(id)text;
- (void)setVoice:(id)voice;
- (void)setVolume:(float)volume;
@end

@implementation SiriTTSSynthesisRequest

- (SiriTTSSynthesisContext)synthesisContext
{
  v2 = sub_1B1A93FE8();

  return v2;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  sub_1B1A9CD00(coderCopy);
}

- (void)setSynthesisContext:(id)context
{
  contextCopy = context;
  selfCopy = self;
  sub_1B1B112AC();
}

- (BOOL)whisper
{
  synthesisContext = [(SiriTTSSynthesisRequest *)self synthesisContext];
  whisper = [synthesisContext whisper];

  return whisper;
}

- (void)setDidGenerateWordTimings:(id)timings
{
  timingsCopy = timings;
  synthesisContext = [(SiriTTSSynthesisRequest *)self synthesisContext];
  [synthesisContext setDidGenerateWordTimings:timingsCopy];
}

- (id)didGenerateWordTimings
{
  synthesisContext = [(SiriTTSSynthesisRequest *)self synthesisContext];
  didGenerateWordTimings = [synthesisContext didGenerateWordTimings];

  return didGenerateWordTimings;
}

- (void)setDidGenerateAudio:(id)audio
{
  audioCopy = audio;
  synthesisContext = [(SiriTTSSynthesisRequest *)self synthesisContext];
  [synthesisContext setDidGenerateAudio:audioCopy];
}

- (id)didGenerateAudio
{
  synthesisContext = [(SiriTTSSynthesisRequest *)self synthesisContext];
  didGenerateAudio = [synthesisContext didGenerateAudio];

  return didGenerateAudio;
}

- (void)setProsodyProperties:(id)properties
{
  propertiesCopy = properties;
  synthesisContext = [(SiriTTSSynthesisRequest *)self synthesisContext];
  [synthesisContext setProsodyProperties:propertiesCopy];
}

- (id)prosodyProperties
{
  synthesisContext = [(SiriTTSSynthesisRequest *)self synthesisContext];
  prosodyProperties = [synthesisContext prosodyProperties];

  return prosodyProperties;
}

- (void)setSynthesisPriority:(int64_t)priority
{
  synthesisContext = [(SiriTTSSynthesisRequest *)self synthesisContext];
  [synthesisContext setSynthesisPriority:priority];
}

- (int64_t)synthesisPriority
{
  synthesisContext = [(SiriTTSSynthesisRequest *)self synthesisContext];
  synthesisPriority = [synthesisContext synthesisPriority];

  return synthesisPriority;
}

- (void)setSynthesisProfile:(int64_t)profile
{
  synthesisContext = [(SiriTTSSynthesisRequest *)self synthesisContext];
  [synthesisContext setSynthesisProfile:profile];
}

- (int64_t)synthesisProfile
{
  synthesisContext = [(SiriTTSSynthesisRequest *)self synthesisContext];
  synthesisProfile = [synthesisContext synthesisProfile];

  return synthesisProfile;
}

- (BOOL)disableCompactVoice
{
  synthesisContext = [(SiriTTSSynthesisRequest *)self synthesisContext];
  disableCompactVoice = [synthesisContext disableCompactVoice];

  return disableCompactVoice;
}

- (void)setCustomResourceURLs:(id)ls
{
  lsCopy = ls;
  synthesisContext = [(SiriTTSSynthesisRequest *)self synthesisContext];
  [synthesisContext setCustomResourceURLs:lsCopy];
}

- (id)customResourceURLs
{
  synthesisContext = [(SiriTTSSynthesisRequest *)self synthesisContext];
  customResourceURLs = [synthesisContext customResourceURLs];

  return customResourceURLs;
}

- (void)setVolume:(float)volume
{
  synthesisContext = [(SiriTTSSynthesisRequest *)self synthesisContext];
  *&v4 = volume;
  [synthesisContext setVolume:v4];
}

- (float)volume
{
  synthesisContext = [(SiriTTSSynthesisRequest *)self synthesisContext];
  [synthesisContext volume];
  v4 = v3;

  return v4;
}

- (void)setPitch:(float)pitch
{
  synthesisContext = [(SiriTTSSynthesisRequest *)self synthesisContext];
  *&v4 = pitch;
  [synthesisContext setPitch:v4];
}

- (float)pitch
{
  synthesisContext = [(SiriTTSSynthesisRequest *)self synthesisContext];
  [synthesisContext pitch];
  v4 = v3;

  return v4;
}

- (void)setRate:(float)rate
{
  synthesisContext = [(SiriTTSSynthesisRequest *)self synthesisContext];
  *&v4 = rate;
  [synthesisContext setRate:v4];
}

- (float)rate
{
  synthesisContext = [(SiriTTSSynthesisRequest *)self synthesisContext];
  [synthesisContext rate];
  v4 = v3;

  return v4;
}

- (void)setContextInfo:(id)info
{
  infoCopy = info;
  synthesisContext = [(SiriTTSSynthesisRequest *)self synthesisContext];
  [synthesisContext setContextInfo:infoCopy];
}

- (id)contextInfo
{
  synthesisContext = [(SiriTTSSynthesisRequest *)self synthesisContext];
  contextInfo = [synthesisContext contextInfo];

  return contextInfo;
}

- (BOOL)minimizeDeviceUsage
{
  synthesisContext = [(SiriTTSSynthesisRequest *)self synthesisContext];
  minimizeDeviceUsage = [synthesisContext minimizeDeviceUsage];

  return minimizeDeviceUsage;
}

- (BOOL)privacySensitive
{
  synthesisContext = [(SiriTTSSynthesisRequest *)self synthesisContext];
  privacySensitive = [synthesisContext privacySensitive];

  return privacySensitive;
}

- (void)setVoice:(id)voice
{
  voiceCopy = voice;
  synthesisContext = [(SiriTTSSynthesisRequest *)self synthesisContext];
  [synthesisContext setVoice:voiceCopy];
}

- (id)voice
{
  synthesisContext = [(SiriTTSSynthesisRequest *)self synthesisContext];
  voice = [synthesisContext voice];

  return voice;
}

- (void)setText:(id)text
{
  textCopy = text;
  synthesisContext = [(SiriTTSSynthesisRequest *)self synthesisContext];
  [synthesisContext setText:textCopy];
}

- (id)text
{
  synthesisContext = [(SiriTTSSynthesisRequest *)self synthesisContext];
  text = [synthesisContext text];

  return text;
}

@end