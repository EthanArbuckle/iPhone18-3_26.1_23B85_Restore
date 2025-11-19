@interface SVXSpeechSynthesisMetricsContextFactory
- (double)timeSecondScale;
- (id)creationContextFromInstrumentMetrics:(id)a3;
@end

@implementation SVXSpeechSynthesisMetricsContextFactory

- (double)timeSecondScale
{
  info = 0;
  mach_timebase_info(&info);
  LODWORD(v3) = info.denom;
  LODWORD(v2) = info.numer;
  return v2 / v3 / 1000000000.0;
}

- (id)creationContextFromInstrumentMetrics:(id)a3
{
  v44[15] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 sourceOfTTS];
  v6 = v5;
  v8 = v5 == 3 || v5 == 5;
  [(SVXSpeechSynthesisMetricsContextFactory *)self timeSecondScale];
  v10 = v9;
  v11 = [v4 synthesisEndTime];
  v12 = v10 * (v11 - [v4 synthesisBeginTime]);
  v13 = [v4 speechBeginTime];
  v14 = v10 * (v13 - [v4 requestCreatedTime]);
  v43[0] = @"character_count";
  v15 = MEMORY[0x277CCABB0];
  v42 = [v4 utterance];
  v41 = [v15 numberWithUnsignedInteger:{objc_msgSend(v42, "length")}];
  v44[0] = v41;
  v43[1] = @"voice_asset_key";
  v40 = [v4 voice];
  v16 = [v40 assetKey];
  v17 = v16;
  v18 = &stru_287A1C130;
  if (v16)
  {
    v18 = v16;
  }

  v44[1] = v18;
  v43[2] = @"is_warm_start";
  v39 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v4, "isWarmStart")}];
  v44[2] = v39;
  v43[3] = @"is_cache_hit_from_disk";
  v38 = [MEMORY[0x277CCABB0] numberWithInt:v6 == 8];
  v44[3] = v38;
  v43[4] = @"is_server_tts";
  v37 = [MEMORY[0x277CCABB0] numberWithBool:v8];
  v44[4] = v37;
  v43[5] = @"tts_synthesis_latency";
  *&v19 = v12;
  v20 = [MEMORY[0x277CCABB0] numberWithFloat:v19];
  v44[5] = v20;
  v43[6] = @"tts_total_latency";
  *&v21 = v14;
  v22 = [MEMORY[0x277CCABB0] numberWithFloat:v21];
  v44[6] = v22;
  v43[7] = @"audio_queue_latency";
  v23 = MEMORY[0x277CCABB0];
  [v4 audioStartLatency];
  v24 = [v23 numberWithDouble:?];
  v44[7] = v24;
  v43[8] = @"synthesis_to_speech_time";
  v25 = MEMORY[0x277CCABB0];
  [v4 eagerRequestGapInterval];
  v26 = [v25 numberWithDouble:?];
  v44[8] = v26;
  v44[9] = &unk_287A342E8;
  v43[9] = @"wait_for_synthesis_to_finish_time";
  v43[10] = @"audio_duration";
  v27 = MEMORY[0x277CCABB0];
  [v4 audioDuration];
  v28 = [v27 numberWithDouble:?];
  v44[10] = v28;
  v43[11] = @"is_speech_request";
  v29 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v4, "isAudibleRequest")}];
  v44[11] = v29;
  v44[12] = MEMORY[0x277CBEC28];
  v43[12] = @"is_cache_hit_from_memory";
  v43[13] = @"synthesis_to_speech_time_gap";
  v44[13] = &unk_287A342E8;
  v43[14] = @"audio_start_timestamp_diffs";
  v30 = MEMORY[0x277CCABB0];
  [v4 audioStartLatency];
  v32 = v31;

  v33 = [v30 numberWithDouble:v32 / v10];
  v44[14] = v33;
  v34 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v44 forKeys:v43 count:15];

  v35 = *MEMORY[0x277D85DE8];

  return v34;
}

@end