@interface SiriTTSOspreyRequest
- (id)underlyingRequest;
@end

@implementation SiriTTSOspreyRequest

- (id)underlyingRequest
{
  v3 = objc_alloc_init(OPTTSMutableStartTextToSpeechStreamingRequest);
  speechId = [(SiriTTSOspreyRequest *)self speechId];
  [(OPTTSMutableStartTextToSpeechStreamingRequest *)v3 setSpeech_id:speechId];

  uUID = [MEMORY[0x1E696AFB0] UUID];
  uUIDString = [uUID UUIDString];
  [(OPTTSMutableStartTextToSpeechStreamingRequest *)v3 setSession_id:uUIDString];

  uUID2 = [MEMORY[0x1E696AFB0] UUID];
  uUIDString2 = [uUID2 UUIDString];
  [(OPTTSMutableStartTextToSpeechStreamingRequest *)v3 setStream_id:uUIDString2];

  language = [(SiriTTSOspreyRequest *)self language];
  [(OPTTSMutableStartTextToSpeechStreamingRequest *)v3 setLanguage:language];

  voiceName = [(SiriTTSOspreyRequest *)self voiceName];
  [(OPTTSMutableStartTextToSpeechStreamingRequest *)v3 setVoice_name:voiceName];

  preferredType = [(SiriTTSOspreyRequest *)self preferredType];
  LOBYTE(uUIDString2) = [preferredType isEqualToString:@"neural"];

  if (uUIDString2)
  {
    v12 = 1;
LABEL_5:
    [(OPTTSMutableStartTextToSpeechStreamingRequest *)v3 setPreferred_voice_type:v12];
    goto LABEL_6;
  }

  preferredType2 = [(SiriTTSOspreyRequest *)self preferredType];
  v14 = [preferredType2 isEqualToString:@"gryphon"];

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
  text = [(SiriTTSOspreyRequest *)self text];
  [(SiriTTSOspreyRequest *)self volume];
  if (v17 != 0.8)
  {
    [(SiriTTSOspreyRequest *)self volume];
    if (v18 != 0.0)
    {
      v19 = MEMORY[0x1E696AEC0];
      [(SiriTTSOspreyRequest *)self volume];
      v21 = [v19 stringWithFormat:@"\x1B\\vol=%d\\%@", (v20 * 100.0), text];

      text = v21;
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
      v26 = [v24 stringWithFormat:@"\x1B\\rate=%d\\%@", (v25 * 100.0), text];

      text = v26;
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
      v31 = [v29 stringWithFormat:@"\x1B\\pitch=%d\\%@", (v30 * 100.0), text];

      text = v31;
    }
  }

  [(OPTTSMutableStartTextToSpeechStreamingRequest *)v3 setText:text];
  [(OPTTSMutableStartTextToSpeechStreamingRequest *)v3 setAudio_type:1];
  [(OPTTSMutableStartTextToSpeechStreamingRequest *)v3 setEnable_word_timing_info:1];
  if ([(SiriTTSOspreyRequest *)self serverLogs])
  {
    v32 = objc_alloc_init(OPTTSMutableTTSRequestFeatureFlags);
    [(OPTTSMutableTTSRequestFeatureFlags *)v32 setFe_feature:1];
    [(OPTTSMutableStartTextToSpeechStreamingRequest *)v3 setFeature_flags:v32];
  }

  v33 = objc_alloc_init(OPTTSMutableTextToSpeechRequestMeta);
  appId = [(SiriTTSOspreyRequest *)self appId];
  [(OPTTSMutableTextToSpeechRequestMeta *)v33 setApp_id:appId];

  [(OPTTSMutableTextToSpeechRequestMeta *)v33 setChannel_type:2];
  [(OPTTSMutableStartTextToSpeechStreamingRequest *)v3 setMeta_info:v33];
  experimentId = [(SiriTTSOspreyRequest *)self experimentId];

  if (experimentId)
  {
    v36 = objc_alloc_init(OPTTSMutableTextToSpeechRequestExperiment);
    experimentId2 = [(SiriTTSOspreyRequest *)self experimentId];
    [(OPTTSMutableTextToSpeechRequestExperiment *)v36 setExperiment_identifier:experimentId2];

    [(OPTTSMutableStartTextToSpeechStreamingRequest *)v3 setExperiment:v36];
  }

  return v3;
}

@end