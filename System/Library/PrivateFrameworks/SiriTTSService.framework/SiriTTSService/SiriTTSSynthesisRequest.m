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
- (void)encodeWithCoder:(id)a3;
- (void)setContextInfo:(id)a3;
- (void)setCustomResourceURLs:(id)a3;
- (void)setDidGenerateAudio:(id)a3;
- (void)setDidGenerateWordTimings:(id)a3;
- (void)setPitch:(float)a3;
- (void)setProsodyProperties:(id)a3;
- (void)setRate:(float)a3;
- (void)setSynthesisContext:(id)a3;
- (void)setSynthesisPriority:(int64_t)a3;
- (void)setSynthesisProfile:(int64_t)a3;
- (void)setText:(id)a3;
- (void)setVoice:(id)a3;
- (void)setVolume:(float)a3;
@end

@implementation SiriTTSSynthesisRequest

- (SiriTTSSynthesisContext)synthesisContext
{
  v2 = sub_1B1A93FE8();

  return v2;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1B1A9CD00(v4);
}

- (void)setSynthesisContext:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1B1B112AC();
}

- (BOOL)whisper
{
  v2 = [(SiriTTSSynthesisRequest *)self synthesisContext];
  v3 = [v2 whisper];

  return v3;
}

- (void)setDidGenerateWordTimings:(id)a3
{
  v4 = a3;
  v5 = [(SiriTTSSynthesisRequest *)self synthesisContext];
  [v5 setDidGenerateWordTimings:v4];
}

- (id)didGenerateWordTimings
{
  v2 = [(SiriTTSSynthesisRequest *)self synthesisContext];
  v3 = [v2 didGenerateWordTimings];

  return v3;
}

- (void)setDidGenerateAudio:(id)a3
{
  v4 = a3;
  v5 = [(SiriTTSSynthesisRequest *)self synthesisContext];
  [v5 setDidGenerateAudio:v4];
}

- (id)didGenerateAudio
{
  v2 = [(SiriTTSSynthesisRequest *)self synthesisContext];
  v3 = [v2 didGenerateAudio];

  return v3;
}

- (void)setProsodyProperties:(id)a3
{
  v4 = a3;
  v5 = [(SiriTTSSynthesisRequest *)self synthesisContext];
  [v5 setProsodyProperties:v4];
}

- (id)prosodyProperties
{
  v2 = [(SiriTTSSynthesisRequest *)self synthesisContext];
  v3 = [v2 prosodyProperties];

  return v3;
}

- (void)setSynthesisPriority:(int64_t)a3
{
  v4 = [(SiriTTSSynthesisRequest *)self synthesisContext];
  [v4 setSynthesisPriority:a3];
}

- (int64_t)synthesisPriority
{
  v2 = [(SiriTTSSynthesisRequest *)self synthesisContext];
  v3 = [v2 synthesisPriority];

  return v3;
}

- (void)setSynthesisProfile:(int64_t)a3
{
  v4 = [(SiriTTSSynthesisRequest *)self synthesisContext];
  [v4 setSynthesisProfile:a3];
}

- (int64_t)synthesisProfile
{
  v2 = [(SiriTTSSynthesisRequest *)self synthesisContext];
  v3 = [v2 synthesisProfile];

  return v3;
}

- (BOOL)disableCompactVoice
{
  v2 = [(SiriTTSSynthesisRequest *)self synthesisContext];
  v3 = [v2 disableCompactVoice];

  return v3;
}

- (void)setCustomResourceURLs:(id)a3
{
  v4 = a3;
  v5 = [(SiriTTSSynthesisRequest *)self synthesisContext];
  [v5 setCustomResourceURLs:v4];
}

- (id)customResourceURLs
{
  v2 = [(SiriTTSSynthesisRequest *)self synthesisContext];
  v3 = [v2 customResourceURLs];

  return v3;
}

- (void)setVolume:(float)a3
{
  v5 = [(SiriTTSSynthesisRequest *)self synthesisContext];
  *&v4 = a3;
  [v5 setVolume:v4];
}

- (float)volume
{
  v2 = [(SiriTTSSynthesisRequest *)self synthesisContext];
  [v2 volume];
  v4 = v3;

  return v4;
}

- (void)setPitch:(float)a3
{
  v5 = [(SiriTTSSynthesisRequest *)self synthesisContext];
  *&v4 = a3;
  [v5 setPitch:v4];
}

- (float)pitch
{
  v2 = [(SiriTTSSynthesisRequest *)self synthesisContext];
  [v2 pitch];
  v4 = v3;

  return v4;
}

- (void)setRate:(float)a3
{
  v5 = [(SiriTTSSynthesisRequest *)self synthesisContext];
  *&v4 = a3;
  [v5 setRate:v4];
}

- (float)rate
{
  v2 = [(SiriTTSSynthesisRequest *)self synthesisContext];
  [v2 rate];
  v4 = v3;

  return v4;
}

- (void)setContextInfo:(id)a3
{
  v4 = a3;
  v5 = [(SiriTTSSynthesisRequest *)self synthesisContext];
  [v5 setContextInfo:v4];
}

- (id)contextInfo
{
  v2 = [(SiriTTSSynthesisRequest *)self synthesisContext];
  v3 = [v2 contextInfo];

  return v3;
}

- (BOOL)minimizeDeviceUsage
{
  v2 = [(SiriTTSSynthesisRequest *)self synthesisContext];
  v3 = [v2 minimizeDeviceUsage];

  return v3;
}

- (BOOL)privacySensitive
{
  v2 = [(SiriTTSSynthesisRequest *)self synthesisContext];
  v3 = [v2 privacySensitive];

  return v3;
}

- (void)setVoice:(id)a3
{
  v4 = a3;
  v5 = [(SiriTTSSynthesisRequest *)self synthesisContext];
  [v5 setVoice:v4];
}

- (id)voice
{
  v2 = [(SiriTTSSynthesisRequest *)self synthesisContext];
  v3 = [v2 voice];

  return v3;
}

- (void)setText:(id)a3
{
  v4 = a3;
  v5 = [(SiriTTSSynthesisRequest *)self synthesisContext];
  [v5 setText:v4];
}

- (id)text
{
  v2 = [(SiriTTSSynthesisRequest *)self synthesisContext];
  v3 = [v2 text];

  return v3;
}

@end