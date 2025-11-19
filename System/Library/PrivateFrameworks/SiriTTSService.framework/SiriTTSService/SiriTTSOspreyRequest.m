@interface SiriTTSOspreyRequest
- (id)underlyingRequest;
@end

@implementation SiriTTSOspreyRequest

- (id)underlyingRequest
{
  v3 = objc_alloc_init(OPTTSMutableStartTextToSpeechStreamingRequest);
  v4 = [(SiriTTSOspreyRequest *)self speechId];
  [(OPTTSMutableStartTextToSpeechStreamingRequest *)v3 setSpeech_id:v4];

  v5 = [MEMORY[0x1E696AFB0] UUID];
  v6 = [v5 UUIDString];
  [(OPTTSMutableStartTextToSpeechStreamingRequest *)v3 setSession_id:v6];

  v7 = [MEMORY[0x1E696AFB0] UUID];
  v8 = [v7 UUIDString];
  [(OPTTSMutableStartTextToSpeechStreamingRequest *)v3 setStream_id:v8];

  v9 = [(SiriTTSOspreyRequest *)self language];
  [(OPTTSMutableStartTextToSpeechStreamingRequest *)v3 setLanguage:v9];

  v10 = [(SiriTTSOspreyRequest *)self voiceName];
  [(OPTTSMutableStartTextToSpeechStreamingRequest *)v3 setVoice_name:v10];

  v11 = [(SiriTTSOspreyRequest *)self preferredType];
  LOBYTE(v8) = [v11 isEqualToString:@"neural"];

  if (v8)
  {
    v12 = 1;
LABEL_5:
    [(OPTTSMutableStartTextToSpeechStreamingRequest *)v3 setPreferred_voice_type:v12];
    goto LABEL_6;
  }

  v13 = [(SiriTTSOspreyRequest *)self preferredType];
  v14 = [v13 isEqualToString:@"gryphon"];

  if (v14)
  {
    v12 = 2;
    goto LABEL_5;
  }

LABEL_6:
  v15 = objc_alloc_init(OPTTSMutableTextToSpeechRequestProsodyControlConfig);
  [(SiriTTSOspreyRequest *)self neuralSentencePitch];
  [(OPTTSMutableTextToSpeechRequestProsodyControlConfig *)v15 setGlobal_sent_pitch:?];
  [(SiriTTSOspreyRequest *)self neuralSentencePitchRange];
  [(OPTTSMutableTextToSpeechRequestProsodyControlConfig *)v15 setGlobal_sent_pitchrange:?];
  [(SiriTTSOspreyRequest *)self neuralSentenceDuration];
  [(OPTTSMutableTextToSpeechRequestProsodyControlConfig *)v15 setGlobal_sent_duration:?];
  [(SiriTTSOspreyRequest *)self neuralSentenceEnergy];
  [(OPTTSMutableTextToSpeechRequestProsodyControlConfig *)v15 setGlobal_sent_energy:?];
  [(SiriTTSOspreyRequest *)self neuralSentenceTilt];
  [(OPTTSMutableTextToSpeechRequestProsodyControlConfig *)v15 setGlobal_sent_tilt:?];
  [(OPTTSMutableStartTextToSpeechStreamingRequest *)v3 setProsody_control_config:v15];
  v16 = [(SiriTTSOspreyRequest *)self text];
  [(SiriTTSOspreyRequest *)self volume];
  if (v17 != 0.8)
  {
    [(SiriTTSOspreyRequest *)self volume];
    if (v18 != 0.0)
    {
      v19 = MEMORY[0x1E696AEC0];
      [(SiriTTSOspreyRequest *)self volume];
      v21 = [v19 stringWithFormat:@"\x1B\\vol=%d\\%@", (v20 * 100.0), v16];

      v16 = v21;
    }
  }

  [(SiriTTSOspreyRequest *)self rate];
  if (v22 != 1.0)
  {
    [(SiriTTSOspreyRequest *)self rate];
    if (v23 != 0.0)
    {
      v24 = MEMORY[0x1E696AEC0];
      [(SiriTTSOspreyRequest *)self rate];
      v26 = [v24 stringWithFormat:@"\x1B\\rate=%d\\%@", (v25 * 100.0), v16];

      v16 = v26;
    }
  }

  [(SiriTTSOspreyRequest *)self pitch];
  if (v27 != 1.0)
  {
    [(SiriTTSOspreyRequest *)self pitch];
    if (v28 != 0.0)
    {
      v29 = MEMORY[0x1E696AEC0];
      [(SiriTTSOspreyRequest *)self pitch];
      v31 = [v29 stringWithFormat:@"\x1B\\pitch=%d\\%@", (v30 * 100.0), v16];

      v16 = v31;
    }
  }

  [(OPTTSMutableStartTextToSpeechStreamingRequest *)v3 setText:v16];
  [(OPTTSMutableStartTextToSpeechStreamingRequest *)v3 setAudio_type:1];
  [(OPTTSMutableStartTextToSpeechStreamingRequest *)v3 setEnable_word_timing_info:1];
  if ([(SiriTTSOspreyRequest *)self serverLogs])
  {
    v32 = objc_alloc_init(OPTTSMutableTTSRequestFeatureFlags);
    [(OPTTSMutableTTSRequestFeatureFlags *)v32 setFe_feature:1];
    [(OPTTSMutableStartTextToSpeechStreamingRequest *)v3 setFeature_flags:v32];
  }

  v33 = objc_alloc_init(OPTTSMutableTextToSpeechRequestMeta);
  v34 = [(SiriTTSOspreyRequest *)self appId];
  [(OPTTSMutableTextToSpeechRequestMeta *)v33 setApp_id:v34];

  [(OPTTSMutableTextToSpeechRequestMeta *)v33 setChannel_type:2];
  [(OPTTSMutableStartTextToSpeechStreamingRequest *)v3 setMeta_info:v33];
  v35 = [(SiriTTSOspreyRequest *)self experimentId];

  if (v35)
  {
    v36 = objc_alloc_init(OPTTSMutableTextToSpeechRequestExperiment);
    v37 = [(SiriTTSOspreyRequest *)self experimentId];
    [(OPTTSMutableTextToSpeechRequestExperiment *)v36 setExperiment_identifier:v37];

    [(OPTTSMutableStartTextToSpeechStreamingRequest *)v3 setExperiment:v36];
  }

  return v3;
}

@end