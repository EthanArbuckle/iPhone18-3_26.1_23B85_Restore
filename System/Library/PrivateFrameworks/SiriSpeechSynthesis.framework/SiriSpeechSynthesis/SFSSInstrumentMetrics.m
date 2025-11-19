@interface SFSSInstrumentMetrics
- (double)clockFactor;
- (double)playbackDuration;
- (double)speakLatency;
- (double)synthesisLatency;
- (id)description;
- (id)dictionaryMetrics;
@end

@implementation SFSSInstrumentMetrics

- (id)dictionaryMetrics
{
  v39 = *MEMORY[0x277D85DE8];
  v19 = @"text";
  v20 = @"voice_asset_key";
  resourceAssetKey = &stru_2879AE8E0;
  v17 = vdupq_n_s64(&stru_2879AE8E0);
  v29 = vbslq_s8(vceqzq_s64(*&self->_text), v17, *&self->_text);
  if (self->_resourceAssetKey)
  {
    resourceAssetKey = self->_resourceAssetKey;
  }

  v30 = resourceAssetKey;
  v4 = [MEMORY[0x277CCABB0] numberWithBool:{self->_isSpeechRequest, *&v17, v19, v20, @"resource_asset_key", @"is_speech_request"}];
  v31 = v4;
  v21 = @"error_code";
  v5 = [MEMORY[0x277CCABB0] numberWithInteger:self->_errorCode];
  v32 = v5;
  v22 = @"source_of_tts";
  v6 = [MEMORY[0x277CCABB0] numberWithInteger:self->_sourceOfTTS];
  v33 = v6;
  v23 = @"speak_latency";
  v7 = MEMORY[0x277CCABB0];
  [(SFSSInstrumentMetrics *)self speakLatency];
  v8 = [v7 numberWithDouble:?];
  v34 = v8;
  v24 = @"synthesis_latency";
  v9 = MEMORY[0x277CCABB0];
  [(SFSSInstrumentMetrics *)self synthesisLatency];
  v10 = [v9 numberWithDouble:?];
  v35 = v10;
  v25 = @"playback_duration";
  v11 = MEMORY[0x277CCABB0];
  [(SFSSInstrumentMetrics *)self playbackDuration];
  v12 = [v11 numberWithDouble:?];
  v36 = v12;
  v26 = @"audio_duration";
  v13 = [MEMORY[0x277CCABB0] numberWithDouble:self->_audioDuration];
  v37 = v13;
  v27 = @"audio_output_route";
  v28 = @"client_bundle_identifier";
  v38 = vbslq_s8(vceqzq_s64(*&self->_audioOutputRoute), v18, *&self->_audioOutputRoute);
  v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v29 forKeys:&v19 count:12];

  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

- (double)playbackDuration
{
  speakEndTimestamp = self->_speakEndTimestamp;
  if (!speakEndTimestamp)
  {
    return 0.0;
  }

  v3 = (speakEndTimestamp - self->_speakBeginTimestamp);
  [(SFSSInstrumentMetrics *)self clockFactor];
  return v4 * v3;
}

- (double)speakLatency
{
  speakBeginTimestamp = self->_speakBeginTimestamp;
  if (!speakBeginTimestamp)
  {
    return 0.0;
  }

  v3 = (speakBeginTimestamp - self->_requestCreatedTimestamp);
  [(SFSSInstrumentMetrics *)self clockFactor];
  return v4 * v3;
}

- (double)synthesisLatency
{
  synthesisEndTimestamp = self->_synthesisEndTimestamp;
  if (!synthesisEndTimestamp)
  {
    return 0.0;
  }

  v3 = (synthesisEndTimestamp - self->_synthesisBeginTimestamp);
  [(SFSSInstrumentMetrics *)self clockFactor];
  return v4 * v3;
}

- (id)description
{
  v2 = [(SFSSInstrumentMetrics *)self dictionaryMetrics];
  v3 = [v2 description];

  return v3;
}

- (double)clockFactor
{
  if (clockFactor_onceToken != -1)
  {
    dispatch_once(&clockFactor_onceToken, &__block_literal_global_105);
  }

  return *&clockFactor_clockToSeconds;
}

double __36__SFSSInstrumentMetrics_clockFactor__block_invoke()
{
  info = 0;
  mach_timebase_info(&info);
  LODWORD(v1) = info.denom;
  LODWORD(v0) = info.numer;
  result = v0 / v1 / 1000000000.0;
  clockFactor_clockToSeconds = *&result;
  return result;
}

@end