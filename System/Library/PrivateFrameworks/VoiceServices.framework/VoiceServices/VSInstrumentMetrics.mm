@interface VSInstrumentMetrics
+ (id)descriptionFormatter;
+ (id)stringOfSourceOfTTS:(int64_t)s;
+ (id)vs_metricsFromSTSMetrics:(id)metrics;
- (VSInstrumentMetrics)initWithCoder:(id)coder;
- (double)_clockFactor;
- (double)audioQueueLatency;
- (double)eagerRequestTimeGap;
- (double)realTimeFactor;
- (double)serverStreamFirstPacketLatency;
- (double)serverStreamLastPacketLatency;
- (double)timeToPlaybackLatency;
- (double)timeToSpeakLatency;
- (double)ttsSynthesisLatency;
- (id)description;
- (id)dictionaryMetrics;
- (int64_t)speechEstimatedOutputBeginTimestamp;
- (void)encodeWithCoder:(id)coder;
@end

@implementation VSInstrumentMetrics

- (id)dictionaryMetrics
{
  v71 = *MEMORY[0x277D85DE8];
  v42[0] = @"character_count";
  v41 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[NSString length](self->_utterance, "length")}];
  v43 = v41;
  v42[1] = @"voice_asset_key";
  v42[2] = @"voice_resource_asset_key";
  v27 = vdupq_n_s64(&stru_2881D71A8);
  v44 = vbslq_s8(vceqzq_s64(*&self->_voiceAssetKey), v27, *&self->_voiceAssetKey);
  v42[3] = @"is_warm_start";
  v40 = [MEMORY[0x277CCABB0] numberWithBool:self->_isWarmStart];
  v45 = v40;
  v42[4] = @"tts_synthesis_latency";
  v3 = MEMORY[0x277CCABB0];
  [(VSInstrumentMetrics *)self ttsSynthesisLatency];
  v39 = [v3 numberWithDouble:?];
  v46 = v39;
  v42[5] = @"tts_total_latency";
  v4 = MEMORY[0x277CCABB0];
  [(VSInstrumentMetrics *)self timeToSpeakLatency];
  v38 = [v4 numberWithDouble:?];
  v47 = v38;
  v42[6] = @"tts_and_playback_total_latency";
  v5 = MEMORY[0x277CCABB0];
  [(VSInstrumentMetrics *)self timeToPlaybackLatency];
  v37 = [v5 numberWithDouble:?];
  v48 = v37;
  v42[7] = @"audio_queue_latency";
  v6 = MEMORY[0x277CCABB0];
  [(VSInstrumentMetrics *)self audioQueueLatency];
  v36 = [v6 numberWithDouble:?];
  v49 = v36;
  v42[8] = @"audio_duration";
  v35 = [MEMORY[0x277CCABB0] numberWithDouble:self->_audioDuration];
  v50 = v35;
  v42[9] = @"is_speech_request";
  v34 = [MEMORY[0x277CCABB0] numberWithBool:self->_isSpeechRequest];
  v51 = v34;
  v42[10] = @"synthesis_to_speech_time_gap";
  v7 = MEMORY[0x277CCABB0];
  [(VSInstrumentMetrics *)self eagerRequestTimeGap];
  v33 = [v7 numberWithDouble:?];
  v52 = v33;
  v42[11] = @"is_synthesis_cached";
  v32 = [MEMORY[0x277CCABB0] numberWithBool:{-[VSInstrumentMetrics isSynthesisCached](self, "isSynthesisCached")}];
  v53 = v32;
  v42[12] = @"prompt_count";
  v31 = [MEMORY[0x277CCABB0] numberWithInteger:self->_promptCount];
  v54 = v31;
  v42[13] = @"source_of_tts";
  v8 = [MEMORY[0x277CCABB0] numberWithInteger:self->_sourceOfTTS];
  v30 = v8;
  audioOutputRoute = self->_audioOutputRoute;
  if (!audioOutputRoute)
  {
    audioOutputRoute = &stru_2881D71A8;
  }

  v55 = v8;
  v56 = audioOutputRoute;
  v42[14] = @"audio_output_route";
  v42[15] = @"error_code";
  v29 = [MEMORY[0x277CCABB0] numberWithInteger:self->_errorCode];
  v57 = v29;
  v42[16] = @"client_bundle_identifier";
  v42[17] = @"experiment_identifier";
  v58 = vbslq_s8(vceqzq_s64(*&self->_clientBundleIdentifier), v27, *&self->_clientBundleIdentifier);
  v42[18] = @"is_server_tts";
  v28 = [MEMORY[0x277CCABB0] numberWithBool:self->_isServerTTS];
  v59 = v28;
  v42[19] = @"is_server_stream_tts";
  v26 = [MEMORY[0x277CCABB0] numberWithBool:self->_isServerStreamTTS];
  v60 = v26;
  v42[20] = @"is_server_timeout";
  v25 = [MEMORY[0x277CCABB0] numberWithBool:self->_isServerTimeout];
  v61 = v25;
  v42[21] = @"can_use_server_tts";
  v10 = [MEMORY[0x277CCABB0] numberWithBool:self->_canUseServerTTS];
  v62 = v10;
  v42[22] = @"is_server_tts_racing";
  v11 = [MEMORY[0x277CCABB0] numberWithBool:self->_isServerTTSRacing];
  v63 = v11;
  v42[23] = @"server_first_packet_latency";
  v12 = MEMORY[0x277CCABB0];
  [(VSInstrumentMetrics *)self serverStreamFirstPacketLatency];
  v13 = [v12 numberWithDouble:?];
  v64 = v13;
  v42[24] = @"server_last_packet_latency";
  v14 = MEMORY[0x277CCABB0];
  [(VSInstrumentMetrics *)self serverStreamLastPacketLatency];
  v15 = [v14 numberWithDouble:?];
  v65 = v15;
  v42[25] = @"server_streamed_audio_duration";
  v16 = [MEMORY[0x277CCABB0] numberWithDouble:self->_serverStreamedAudioDuration];
  v66 = v16;
  v42[26] = @"real_time_factor";
  v17 = MEMORY[0x277CCABB0];
  [(VSInstrumentMetrics *)self cappedRealTimeFactor];
  v18 = [v17 numberWithDouble:?];
  v67 = v18;
  v42[27] = @"neural_alignment_stall";
  v19 = [MEMORY[0x277CCABB0] numberWithBool:self->_neuralAlignmentStall];
  v68 = v19;
  v42[28] = @"neural_audio_click";
  v20 = [MEMORY[0x277CCABB0] numberWithBool:self->_neuralAudioClick];
  v69 = v20;
  v42[29] = @"neural_fallback";
  v21 = [MEMORY[0x277CCABB0] numberWithBool:self->_neuralFallback];
  v70 = v21;
  v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v43 forKeys:v42 count:30];

  v23 = *MEMORY[0x277D85DE8];

  return v22;
}

- (double)serverStreamLastPacketLatency
{
  serverLastPacketTimestamp = self->_serverLastPacketTimestamp;
  if (!serverLastPacketTimestamp)
  {
    return 0.0;
  }

  v3 = (serverLastPacketTimestamp - self->_synthesisBeginTimestamp);
  [(VSInstrumentMetrics *)self _clockFactor];
  return v4 * v3;
}

- (double)serverStreamFirstPacketLatency
{
  serverFirstPacketTimestamp = self->_serverFirstPacketTimestamp;
  if (!serverFirstPacketTimestamp)
  {
    return 0.0;
  }

  v3 = (serverFirstPacketTimestamp - self->_synthesisBeginTimestamp);
  [(VSInstrumentMetrics *)self _clockFactor];
  return v4 * v3;
}

- (double)realTimeFactor
{
  audioDuration = self->_audioDuration;
  [(VSInstrumentMetrics *)self ttsSynthesisLatency];
  return audioDuration / v3;
}

- (double)eagerRequestTimeGap
{
  eagerRequestCreatedTimestampDiffs = self->_eagerRequestCreatedTimestampDiffs;
  [(VSInstrumentMetrics *)self _clockFactor];
  return v3 * eagerRequestCreatedTimestampDiffs;
}

- (double)ttsSynthesisLatency
{
  synthesisEndTimestamp = self->_synthesisEndTimestamp;
  if (!synthesisEndTimestamp)
  {
    return 0.0;
  }

  v3 = (synthesisEndTimestamp - self->_synthesisBeginTimestamp);
  [(VSInstrumentMetrics *)self _clockFactor];
  return v4 * v3;
}

- (double)audioQueueLatency
{
  audioStartTimestampDiffs = self->_audioStartTimestampDiffs;
  [(VSInstrumentMetrics *)self _clockFactor];
  return v3 * audioStartTimestampDiffs;
}

- (double)timeToPlaybackLatency
{
  speechEndTimestamp = self->_speechEndTimestamp;
  if (speechEndTimestamp)
  {
    v4 = (speechEndTimestamp - self->_requestCreatedTimestamp);
    [(VSInstrumentMetrics *)self _clockFactor];
    return fmax(-(self->_audioDuration - v4 * v5), 0.0);
  }

  else
  {

    [(VSInstrumentMetrics *)self timeToSpeakLatency];
  }

  return result;
}

- (double)timeToSpeakLatency
{
  speechBeginTimestamp = self->_speechBeginTimestamp;
  if (!speechBeginTimestamp)
  {
    return 0.0;
  }

  v3 = (speechBeginTimestamp - self->_requestCreatedTimestamp);
  [(VSInstrumentMetrics *)self _clockFactor];
  return v4 * v3;
}

- (int64_t)speechEstimatedOutputBeginTimestamp
{
  speechBeginTimestamp = self->_speechBeginTimestamp;
  speechEndTimestamp = self->_speechEndTimestamp;
  audioDuration = self->_audioDuration;
  [(VSInstrumentMetrics *)self _clockFactor];
  v6 = speechEndTimestamp - audioDuration / v5;
  if (v6 <= speechBeginTimestamp)
  {
    return speechBeginTimestamp;
  }

  return v6;
}

- (double)_clockFactor
{
  if (_clockFactor_onceToken != -1)
  {
    dispatch_once(&_clockFactor_onceToken, &__block_literal_global_193);
  }

  return *&_clockFactor_clockToSeconds;
}

double __35__VSInstrumentMetrics__clockFactor__block_invoke()
{
  info = 0;
  mach_timebase_info(&info);
  LODWORD(v1) = info.denom;
  LODWORD(v0) = info.numer;
  result = v0 / v1 / 1000000000.0;
  _clockFactor_clockToSeconds = *&result;
  return result;
}

- (VSInstrumentMetrics)initWithCoder:(id)coder
{
  coderCopy = coder;
  v21.receiver = self;
  v21.super_class = VSInstrumentMetrics;
  v5 = [(VSInstrumentMetrics *)&v21 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_utterance"];
    utterance = v5->_utterance;
    v5->_utterance = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_voiceAssetKey"];
    voiceAssetKey = v5->_voiceAssetKey;
    v5->_voiceAssetKey = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_voiceResourceAssetKey"];
    voiceResourceAssetKey = v5->_voiceResourceAssetKey;
    v5->_voiceResourceAssetKey = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_audioOutputRoute"];
    audioOutputRoute = v5->_audioOutputRoute;
    v5->_audioOutputRoute = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_clientBundleIdentifier"];
    clientBundleIdentifier = v5->_clientBundleIdentifier;
    v5->_clientBundleIdentifier = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_experimentIdentifier"];
    experimentIdentifier = v5->_experimentIdentifier;
    v5->_experimentIdentifier = v16;

    v5->_promptCount = [coderCopy decodeIntegerForKey:@"_promptCount"];
    v5->_sourceOfTTS = [coderCopy decodeIntegerForKey:@"_sourceOfTTS"];
    v5->_errorCode = [coderCopy decodeIntegerForKey:@"_errorCode"];
    v5->_requestCreatedTimestamp = [coderCopy decodeInt64ForKey:@"_requestCreatedTimestamp"];
    v5->_synthesisBeginTimestamp = [coderCopy decodeInt64ForKey:@"_synthesisBeginTimestamp"];
    v5->_synthesisEndTimestamp = [coderCopy decodeInt64ForKey:@"_synthesisEndTimestamp"];
    v5->_speechBeginTimestamp = [coderCopy decodeInt64ForKey:@"_speechBeginTimestamp"];
    v5->_speechEndTimestamp = [coderCopy decodeInt64ForKey:@"_speechEndTimestamp"];
    v5->_audioStartTimestampDiffs = [coderCopy decodeInt64ForKey:@"_audioStartTimestampDiffs"];
    v5->_serverFirstPacketTimestamp = [coderCopy decodeInt64ForKey:@"_serverFirstPacketTimestamp"];
    [coderCopy decodeDoubleForKey:@"_audioDuration"];
    v5->_audioDuration = v18;
    [coderCopy decodeDoubleForKey:@"_serverStreamedAudioDuration"];
    v5->_serverStreamedAudioDuration = v19;
    v5->_isWarmStart = [coderCopy decodeBoolForKey:@"_isWarmStart"];
    v5->_isCacheHitFromDisk = [coderCopy decodeBoolForKey:@"_isCacheHitFromDisk"];
    v5->_isCacheHitFromMemory = [coderCopy decodeBoolForKey:@"_isCacheHitFromMemory"];
    v5->_isSpeechRequest = [coderCopy decodeBoolForKey:@"_isSpeechRequest"];
    v5->_canUseServerTTS = [coderCopy decodeBoolForKey:@"_canUseServerTTS"];
    v5->_isServerTTS = [coderCopy decodeBoolForKey:@"_isServerTTS"];
    v5->_isServerStreamTTS = [coderCopy decodeBoolForKey:@"_isServerStreamTTS"];
    v5->_isServerTimeout = [coderCopy decodeBoolForKey:@"_isServerTimeout"];
    v5->_isServerTTSRacing = [coderCopy decodeBoolForKey:@"_isServerTTSRacing"];
    v5->_neuralAlignmentStall = [coderCopy decodeBoolForKey:@"_neuralAlignmentStall"];
    v5->_neuralAudioClick = [coderCopy decodeBoolForKey:@"_neuralAudioClick"];
    v5->_neuralFallback = [coderCopy decodeBoolForKey:@"_neuralFallback"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  utterance = self->_utterance;
  coderCopy = coder;
  [coderCopy encodeObject:utterance forKey:@"_utterance"];
  [coderCopy encodeObject:self->_voiceAssetKey forKey:@"_voiceAssetKey"];
  [coderCopy encodeObject:self->_voiceResourceAssetKey forKey:@"_voiceResourceAssetKey"];
  [coderCopy encodeObject:self->_audioOutputRoute forKey:@"_audioOutputRoute"];
  [coderCopy encodeObject:self->_clientBundleIdentifier forKey:@"_clientBundleIdentifier"];
  [coderCopy encodeObject:self->_experimentIdentifier forKey:@"_experimentIdentifier"];
  [coderCopy encodeInteger:self->_promptCount forKey:@"_promptCount"];
  [coderCopy encodeInteger:self->_sourceOfTTS forKey:@"_sourceOfTTS"];
  [coderCopy encodeInteger:self->_errorCode forKey:@"_errorCode"];
  [coderCopy encodeInt64:self->_requestCreatedTimestamp forKey:@"_requestCreatedTimestamp"];
  [coderCopy encodeInt64:self->_synthesisBeginTimestamp forKey:@"_synthesisBeginTimestamp"];
  [coderCopy encodeInt64:self->_synthesisEndTimestamp forKey:@"_synthesisEndTimestamp"];
  [coderCopy encodeInt64:self->_speechBeginTimestamp forKey:@"_speechBeginTimestamp"];
  [coderCopy encodeInt64:self->_speechEndTimestamp forKey:@"_speechEndTimestamp"];
  [coderCopy encodeInt64:self->_audioStartTimestampDiffs forKey:@"_audioStartTimestampDiffs"];
  [coderCopy encodeInt64:self->_serverFirstPacketTimestamp forKey:@"_serverFirstPacketTimestamp"];
  [coderCopy encodeDouble:@"_audioDuration" forKey:self->_audioDuration];
  [coderCopy encodeDouble:@"_serverStreamedAudioDuration" forKey:self->_serverStreamedAudioDuration];
  [coderCopy encodeBool:self->_isWarmStart forKey:@"_isWarmStart"];
  [coderCopy encodeBool:self->_isCacheHitFromDisk forKey:@"_isCacheHitFromDisk"];
  [coderCopy encodeBool:self->_isCacheHitFromMemory forKey:@"_isCacheHitFromMemory"];
  [coderCopy encodeBool:self->_isSpeechRequest forKey:@"_isSpeechRequest"];
  [coderCopy encodeBool:self->_canUseServerTTS forKey:@"_canUseServerTTS"];
  [coderCopy encodeBool:self->_isServerTTS forKey:@"_isServerTTS"];
  [coderCopy encodeBool:self->_isServerStreamTTS forKey:@"_isServerStreamTTS"];
  [coderCopy encodeBool:self->_isServerTimeout forKey:@"_isServerTimeout"];
  [coderCopy encodeBool:self->_isServerTTSRacing forKey:@"_isServerTTSRacing"];
  [coderCopy encodeBool:self->_neuralAlignmentStall forKey:@"_neuralAlignmentStall"];
  [coderCopy encodeBool:self->_neuralAudioClick forKey:@"_neuralAudioClick"];
  [coderCopy encodeBool:self->_neuralFallback forKey:@"_neuralFallback"];
}

- (id)description
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CCAB68] stringWithString:@"{\n"];
  dictionaryMetrics = [(VSInstrumentMetrics *)self dictionaryMetrics];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = [&unk_2881E0BD8 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v16;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(&unk_2881E0BD8);
        }

        v9 = *(*(&v15 + 1) + 8 * i);
        v10 = [dictionaryMetrics objectForKeyedSubscript:v9];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v11 = +[VSInstrumentMetrics descriptionFormatter];
          v12 = [v11 stringFromNumber:v10];
          [v3 appendFormat:@"  %@: %@, \n", v9, v12];
        }

        else
        {
          [v3 appendFormat:@"  %@: %@, \n", v9, v10];
        }
      }

      v6 = [&unk_2881E0BD8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v6);
  }

  [v3 appendString:@"}"];

  v13 = *MEMORY[0x277D85DE8];

  return v3;
}

+ (id)stringOfSourceOfTTS:(int64_t)s
{
  if (s > 8)
  {
    return @"unknown";
  }

  else
  {
    return off_279E4EC20[s];
  }
}

+ (id)descriptionFormatter
{
  if (descriptionFormatter_onceToken != -1)
  {
    dispatch_once(&descriptionFormatter_onceToken, &__block_literal_global);
  }

  v3 = descriptionFormatter_formatter;

  return v3;
}

uint64_t __43__VSInstrumentMetrics_descriptionFormatter__block_invoke()
{
  v0 = objc_opt_new();
  v1 = descriptionFormatter_formatter;
  descriptionFormatter_formatter = v0;

  [descriptionFormatter_formatter setMinimumFractionDigits:0];
  v2 = descriptionFormatter_formatter;

  return [v2 setMaximumFractionDigits:4];
}

+ (id)vs_metricsFromSTSMetrics:(id)metrics
{
  metricsCopy = metrics;
  v4 = objc_alloc_init(VSInstrumentMetrics);
  utterance = [metricsCopy utterance];
  [(VSInstrumentMetrics *)v4 setUtterance:utterance];

  voiceAssetKey = [metricsCopy voiceAssetKey];
  [(VSInstrumentMetrics *)v4 setVoiceAssetKey:voiceAssetKey];

  voiceResourceAssetKey = [metricsCopy voiceResourceAssetKey];
  [(VSInstrumentMetrics *)v4 setVoiceResourceAssetKey:voiceResourceAssetKey];

  audioOutputRoute = [metricsCopy audioOutputRoute];
  [(VSInstrumentMetrics *)v4 setAudioOutputRoute:audioOutputRoute];

  clientBundleIdentifier = [metricsCopy clientBundleIdentifier];
  [(VSInstrumentMetrics *)v4 setClientBundleIdentifier:clientBundleIdentifier];

  experimentIdentifier = [metricsCopy experimentIdentifier];
  [(VSInstrumentMetrics *)v4 setExperimentIdentifier:experimentIdentifier];

  -[VSInstrumentMetrics setRequestCreatedTimestamp:](v4, "setRequestCreatedTimestamp:", [metricsCopy requestCreatedTime]);
  [metricsCopy eagerRequestGapInterval];
  v12 = v11;
  [(VSInstrumentMetrics *)v4 _clockFactor];
  [(VSInstrumentMetrics *)v4 setEagerRequestCreatedTimestampDiffs:(v12 / v13)];
  -[VSInstrumentMetrics setSynthesisBeginTimestamp:](v4, "setSynthesisBeginTimestamp:", [metricsCopy synthesisBeginTime]);
  -[VSInstrumentMetrics setSynthesisEndTimestamp:](v4, "setSynthesisEndTimestamp:", [metricsCopy synthesisEndTime]);
  -[VSInstrumentMetrics setSpeechBeginTimestamp:](v4, "setSpeechBeginTimestamp:", [metricsCopy speechBeginTime]);
  -[VSInstrumentMetrics setSpeechEndTimestamp:](v4, "setSpeechEndTimestamp:", [metricsCopy speechEndTime]);
  [metricsCopy audioStartLatency];
  v15 = v14;
  [(VSInstrumentMetrics *)v4 _clockFactor];
  [(VSInstrumentMetrics *)v4 setAudioStartTimestampDiffs:(v15 / v16)];
  -[VSInstrumentMetrics setServerFirstPacketTimestamp:](v4, "setServerFirstPacketTimestamp:", [metricsCopy serverFirstPacketTime]);
  -[VSInstrumentMetrics setServerLastPacketTimestamp:](v4, "setServerLastPacketTimestamp:", [metricsCopy serverLastPacketTime]);
  [metricsCopy serverStreamedAudioDuration];
  [(VSInstrumentMetrics *)v4 setServerStreamedAudioDuration:?];
  [metricsCopy audioDuration];
  [(VSInstrumentMetrics *)v4 setAudioDuration:?];
  -[VSInstrumentMetrics setIsWarmStart:](v4, "setIsWarmStart:", [metricsCopy isWarmStart]);
  v17 = [metricsCopy sourceOfTTS] == 5 || objc_msgSend(metricsCopy, "sourceOfTTS") == 3;
  [(VSInstrumentMetrics *)v4 setIsServerTTS:v17];
  -[VSInstrumentMetrics setIsServerStreamTTS:](v4, "setIsServerStreamTTS:", [metricsCopy sourceOfTTS] == 5);
  -[VSInstrumentMetrics setIsServerTimeout:](v4, "setIsServerTimeout:", [metricsCopy errorCode] == 602);
  -[VSInstrumentMetrics setIsServerTTSRacing:](v4, "setIsServerTTSRacing:", [metricsCopy isServerTTSRacing]);
  -[VSInstrumentMetrics setCanUseServerTTS:](v4, "setCanUseServerTTS:", [metricsCopy privacySensitive] ^ 1);
  -[VSInstrumentMetrics setNeuralAlignmentStall:](v4, "setNeuralAlignmentStall:", [metricsCopy neuralAlignmentStall]);
  -[VSInstrumentMetrics setNeuralAudioClick:](v4, "setNeuralAudioClick:", [metricsCopy neuralAudioClick]);
  -[VSInstrumentMetrics setNeuralFallback:](v4, "setNeuralFallback:", [metricsCopy neuralFallback]);
  -[VSInstrumentMetrics setPromptCount:](v4, "setPromptCount:", [metricsCopy promptCount]);
  -[VSInstrumentMetrics setErrorCode:](v4, "setErrorCode:", [metricsCopy errorCode]);
  -[VSInstrumentMetrics setSourceOfTTS:](v4, "setSourceOfTTS:", [metricsCopy sourceOfTTS]);
  -[VSInstrumentMetrics setIsCacheHitFromDisk:](v4, "setIsCacheHitFromDisk:", [metricsCopy sourceOfTTS] == 8);

  return v4;
}

@end