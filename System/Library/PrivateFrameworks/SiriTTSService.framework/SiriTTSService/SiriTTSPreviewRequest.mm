@interface SiriTTSPreviewRequest
- (BOOL)immediate;
- (NSURL)previewAudioURL;
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

@implementation SiriTTSPreviewRequest

- (SiriTTSAudibleContext)audibleContext
{
  v2 = sub_1B1B1229C();

  return v2;
}

- (void)setAudibleContext:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1B1B1233C();
}

- (SiriTTSSynthesisVoice)voice
{
  v2 = sub_1B1B12428();

  return v2;
}

- (void)setVoice:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1B1B124C8();
}

- (NSURL)previewAudioURL
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB761F00, &qword_1B1C36480);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v11 - v5;
  v7 = self;
  sub_1B1B12A30();

  v8 = sub_1B1C2C1C8();
  v9 = 0;
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) != 1)
  {
    v9 = sub_1B1C2C118();
    (*(*(v8 - 8) + 8))(v6, v8);
  }

  return v9;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1B1B12B98(v4);
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
  v5 = [(SiriTTSPreviewRequest *)self audibleContext];
  [v5 setDidStartSpeaking:v4];
}

- (id)didStartSpeaking
{
  v2 = [(SiriTTSPreviewRequest *)self audibleContext];
  v3 = [v2 didStartSpeaking];

  return v3;
}

- (void)setPlaybackVolume:(float)a3
{
  v5 = [(SiriTTSPreviewRequest *)self audibleContext];
  *&v4 = a3;
  [v5 setPlaybackVolume:v4];
}

- (float)playbackVolume
{
  v2 = [(SiriTTSPreviewRequest *)self audibleContext];
  [v2 playbackVolume];
  v4 = v3;

  return v4;
}

- (BOOL)immediate
{
  v2 = [(SiriTTSPreviewRequest *)self audibleContext];
  v3 = [v2 immediate];

  return v3;
}

- (unsigned)audioSessionId
{
  v2 = [(SiriTTSPreviewRequest *)self audibleContext];
  v3 = [v2 audioSessionId];

  return v3;
}

@end