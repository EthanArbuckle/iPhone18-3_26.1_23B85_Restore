@interface MHSchemaMHVoiceTriggerEventInfo
- (BOOL)isEqual:(id)a3;
- (MHSchemaMHVoiceTriggerEventInfo)initWithDictionary:(id)a3;
- (MHSchemaMHVoiceTriggerEventInfo)initWithJSON:(id)a3;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasActiveChannel:(BOOL)a3;
- (void)setHasAnalyzerPrependingSamples:(BOOL)a3;
- (void)setHasAnalyzerTrailingSamples:(BOOL)a3;
- (void)setHasBiometricClue:(BOOL)a3;
- (void)setHasClientStartSampleCount:(BOOL)a3;
- (void)setHasCumulativeDowntimeInSec:(BOOL)a3;
- (void)setHasCumulativeUptimeInSec:(BOOL)a3;
- (void)setHasDeltaTimeInNsFromlastPHSReject:(BOOL)a3;
- (void)setHasDeviceHandheld:(BOOL)a3;
- (void)setHasDidAudioStall:(BOOL)a3;
- (void)setHasDisplayWakeTimeOffsetInNs:(BOOL)a3;
- (void)setHasDowntimeInSec:(BOOL)a3;
- (void)setHasEffectiveThreshold:(BOOL)a3;
- (void)setHasEnhancedCarplayTriggerMode:(BOOL)a3;
- (void)setHasExtraSamplesAtStart:(BOOL)a3;
- (void)setHasHardwareSamplerate:(BOOL)a3;
- (void)setHasHostPowerStateAtTrigger:(BOOL)a3;
- (void)setHasIsBargeIn:(BOOL)a3;
- (void)setHasIsContinuous:(BOOL)a3;
- (void)setHasIsHSJSTriggerFromAlwaysOnMicBuffer:(BOOL)a3;
- (void)setHasIsMaximized:(BOOL)a3;
- (void)setHasIsMediaPlaying:(BOOL)a3;
- (void)setHasIsSecondChance:(BOOL)a3;
- (void)setHasIsTriggerEvent:(BOOL)a3;
- (void)setHasIsWakeFromSleep:(BOOL)a3;
- (void)setHasLastConsecutivePHSRejects:(BOOL)a3;
- (void)setHasLastConsecutiveVTRejects:(BOOL)a3;
- (void)setHasLastDisplayWakeTimeOffsetInNs:(BOOL)a3;
- (void)setHasMediaVolume:(BOOL)a3;
- (void)setHasNeptuneDetectionApiScore:(BOOL)a3;
- (void)setHasOnBatteryPower:(BOOL)a3;
- (void)setHasRecognizerScaleFactor:(BOOL)a3;
- (void)setHasRecognizerScore:(BOOL)a3;
- (void)setHasRecognizerThresholdOffset:(BOOL)a3;
- (void)setHasRecognizerWaitTimeInNs:(BOOL)a3;
- (void)setHasRemoteMicVADMyriadThreshold:(BOOL)a3;
- (void)setHasRemoteMicVADScore:(BOOL)a3;
- (void)setHasRemoteMicVADThreshold:(BOOL)a3;
- (void)setHasSatBeingTrained:(BOOL)a3;
- (void)setHasSatNumTrainingUtterances:(BOOL)a3;
- (void)setHasSatScore:(BOOL)a3;
- (void)setHasSatThreshold:(BOOL)a3;
- (void)setHasSatTriggered:(BOOL)a3;
- (void)setHasSecondPassAnalyerEndSampleCount:(BOOL)a3;
- (void)setHasSecondPassAssetLoadCompleteTimeInNs:(BOOL)a3;
- (void)setHasSecondPassAssetLoadStartTimeInNs:(BOOL)a3;
- (void)setHasSecondPassAssetQueryCompleteTimeInNs:(BOOL)a3;
- (void)setHasSecondPassAssetQueryStartTimeInNs:(BOOL)a3;
- (void)setHasSecondPassAudioStreamReadyTimeInNs:(BOOL)a3;
- (void)setHasSecondPassAudioStreamStartTimeInNs:(BOOL)a3;
- (void)setHasSecondPassCheckerModelKeywordDetectionEndTimeInNs:(BOOL)a3;
- (void)setHasSecondPassFirstAudioPacketReceptionTimeInNs:(BOOL)a3;
- (void)setHasSecondPassLastAudioPacketReceptionTimeInNs:(BOOL)a3;
- (void)setHasShadowMicScore:(BOOL)a3;
- (void)setHasShadowMicScoreThresholdForVAD:(BOOL)a3;
- (void)setHasSiriIsActiveOrOtherAssertion:(BOOL)a3;
- (void)setHasTdSpeakerRecognizerCombinationWeight:(BOOL)a3;
- (void)setHasTdSpeakerRecognizerCombinedScore:(BOOL)a3;
- (void)setHasTdSpeakerRecognizerCombinedThreshold:(BOOL)a3;
- (void)setHasTdSpeakerRecognizerScore:(BOOL)a3;
- (void)setHasThreshold:(BOOL)a3;
- (void)setHasTotalSampleCount:(BOOL)a3;
- (void)setHasTotalSamplesAtEndOfCapture:(BOOL)a3;
- (void)setHasTotalSamplesAtTriggerEnd:(BOOL)a3;
- (void)setHasTotalSamplesAtTriggerStart:(BOOL)a3;
- (void)setHasTriggerDurationInNs:(BOOL)a3;
- (void)setHasTriggerEndNs:(BOOL)a3;
- (void)setHasTriggerEndSampleCount:(BOOL)a3;
- (void)setHasTriggerEndTime:(BOOL)a3;
- (void)setHasTriggerEndTimeOffsetInNs:(BOOL)a3;
- (void)setHasTriggerExplicitSatScore:(BOOL)a3;
- (void)setHasTriggerExplicitTDSRSatScore:(BOOL)a3;
- (void)setHasTriggerFireNs:(BOOL)a3;
- (void)setHasTriggerFireSampleCount:(BOOL)a3;
- (void)setHasTriggerFireTimeOffsetInNs:(BOOL)a3;
- (void)setHasTriggerFiredTime:(BOOL)a3;
- (void)setHasTriggerScore:(BOOL)a3;
- (void)setHasTriggerStartNs:(BOOL)a3;
- (void)setHasTriggerStartSampleCount:(BOOL)a3;
- (void)setHasTriggerStartTime:(BOOL)a3;
- (void)setHasTriggerStartTimeOffsetInNs:(BOOL)a3;
- (void)setHasTwoShotAudibleFeedbackDelayInNs:(BOOL)a3;
- (void)setHasUptimeInSec:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation MHSchemaMHVoiceTriggerEventInfo

- (MHSchemaMHVoiceTriggerEventInfo)initWithDictionary:(id)a3
{
  v4 = a3;
  v199.receiver = self;
  v199.super_class = MHSchemaMHVoiceTriggerEventInfo;
  v5 = [(MHSchemaMHVoiceTriggerEventInfo *)&v199 init];

  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"secondPassAnalyerStartSampleCount"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[MHSchemaMHVoiceTriggerEventInfo setSecondPassAnalyerStartSampleCount:](v5, "setSecondPassAnalyerStartSampleCount:", [v6 unsignedLongLongValue]);
    }

    v7 = [v4 objectForKeyedSubscript:@"secondPassAnalyerEndSampleCount"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[MHSchemaMHVoiceTriggerEventInfo setSecondPassAnalyerEndSampleCount:](v5, "setSecondPassAnalyerEndSampleCount:", [v7 unsignedLongLongValue]);
    }

    v8 = [v4 objectForKeyedSubscript:@"satScore"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v8 floatValue];
      [(MHSchemaMHVoiceTriggerEventInfo *)v5 setSatScore:?];
    }

    v9 = [v4 objectForKeyedSubscript:@"satNumTrainingUtterances"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[MHSchemaMHVoiceTriggerEventInfo setSatNumTrainingUtterances:](v5, "setSatNumTrainingUtterances:", [v9 unsignedIntValue]);
    }

    v10 = [v4 objectForKeyedSubscript:@"satThreshold"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v10 floatValue];
      [(MHSchemaMHVoiceTriggerEventInfo *)v5 setSatThreshold:?];
    }

    v11 = [v4 objectForKeyedSubscript:@"satTriggered"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[MHSchemaMHVoiceTriggerEventInfo setSatTriggered:](v5, "setSatTriggered:", [v11 BOOLValue]);
    }

    v147 = v8;
    v12 = [v4 objectForKeyedSubscript:@"tdSpeakerRecognizerScore"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v12 floatValue];
      [(MHSchemaMHVoiceTriggerEventInfo *)v5 setTdSpeakerRecognizerScore:?];
    }

    v143 = v12;
    v13 = [v4 objectForKeyedSubscript:@"tdSpeakerRecognizerCombinedScore"];
    objc_opt_class();
    v198 = v13;
    if (objc_opt_isKindOfClass())
    {
      [v13 floatValue];
      [(MHSchemaMHVoiceTriggerEventInfo *)v5 setTdSpeakerRecognizerCombinedScore:?];
    }

    v146 = v9;
    v14 = [v4 objectForKeyedSubscript:@"tdSpeakerRecognizerCombinedThreshold"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v14 floatValue];
      [(MHSchemaMHVoiceTriggerEventInfo *)v5 setTdSpeakerRecognizerCombinedThreshold:?];
    }

    v15 = [v4 objectForKeyedSubscript:@"tdSpeakerRecognizerCombinationWeight"];
    objc_opt_class();
    v197 = v15;
    if (objc_opt_isKindOfClass())
    {
      [v15 floatValue];
      [(MHSchemaMHVoiceTriggerEventInfo *)v5 setTdSpeakerRecognizerCombinationWeight:?];
    }

    v142 = v14;
    v16 = [v4 objectForKeyedSubscript:@"biometricClue"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[MHSchemaMHVoiceTriggerEventInfo setBiometricClue:](v5, "setBiometricClue:", [v16 intValue]);
    }

    v141 = v16;
    v17 = [v4 objectForKeyedSubscript:@"satBeingTrained"];
    objc_opt_class();
    v196 = v17;
    if (objc_opt_isKindOfClass())
    {
      -[MHSchemaMHVoiceTriggerEventInfo setSatBeingTrained:](v5, "setSatBeingTrained:", [v17 BOOLValue]);
    }

    v18 = [v4 objectForKeyedSubscript:@"lastConsecutivePHSRejects"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[MHSchemaMHVoiceTriggerEventInfo setLastConsecutivePHSRejects:](v5, "setLastConsecutivePHSRejects:", [v18 unsignedIntValue]);
    }

    v19 = [v4 objectForKeyedSubscript:@"deltaTimeInNsFromlastPHSReject"];
    objc_opt_class();
    v195 = v19;
    if (objc_opt_isKindOfClass())
    {
      -[MHSchemaMHVoiceTriggerEventInfo setDeltaTimeInNsFromlastPHSReject:](v5, "setDeltaTimeInNsFromlastPHSReject:", [v19 unsignedLongLongValue]);
    }

    v145 = v10;
    v20 = [v4 objectForKeyedSubscript:@"triggerExplicitSatScore"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v20 floatValue];
      [(MHSchemaMHVoiceTriggerEventInfo *)v5 setTriggerExplicitSatScore:?];
    }

    v21 = [v4 objectForKeyedSubscript:@"triggerExplicitTDSRSatScore"];
    objc_opt_class();
    v194 = v21;
    if (objc_opt_isKindOfClass())
    {
      [v21 floatValue];
      [(MHSchemaMHVoiceTriggerEventInfo *)v5 setTriggerExplicitTDSRSatScore:?];
    }

    v144 = v11;
    v22 = [v4 objectForKeyedSubscript:@"shadowMicScore"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v22 floatValue];
      [(MHSchemaMHVoiceTriggerEventInfo *)v5 setShadowMicScore:?];
    }

    v23 = [v4 objectForKeyedSubscript:@"shadowMicScoreThresholdForVAD"];
    objc_opt_class();
    v193 = v23;
    if (objc_opt_isKindOfClass())
    {
      [v23 floatValue];
      [(MHSchemaMHVoiceTriggerEventInfo *)v5 setShadowMicScoreThresholdForVAD:?];
    }

    v24 = [v4 objectForKeyedSubscript:@"remoteMicVADScore"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v24 floatValue];
      [(MHSchemaMHVoiceTriggerEventInfo *)v5 setRemoteMicVADScore:?];
    }

    v25 = [v4 objectForKeyedSubscript:@"remoteMicVADThreshold"];
    objc_opt_class();
    v192 = v25;
    if (objc_opt_isKindOfClass())
    {
      [v25 floatValue];
      [(MHSchemaMHVoiceTriggerEventInfo *)v5 setRemoteMicVADThreshold:?];
    }

    v140 = v18;
    v26 = [v4 objectForKeyedSubscript:@"remoteMicVADMyriadThreshold"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v26 floatValue];
      [(MHSchemaMHVoiceTriggerEventInfo *)v5 setRemoteMicVADMyriadThreshold:?];
    }

    v136 = v26;
    v27 = [v4 objectForKeyedSubscript:@"enhancedCarplayTriggerMode"];
    objc_opt_class();
    v191 = v27;
    if (objc_opt_isKindOfClass())
    {
      -[MHSchemaMHVoiceTriggerEventInfo setEnhancedCarplayTriggerMode:](v5, "setEnhancedCarplayTriggerMode:", [v27 intValue]);
    }

    v139 = v20;
    v28 = [v4 objectForKeyedSubscript:@"triggerStartSampleCount"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[MHSchemaMHVoiceTriggerEventInfo setTriggerStartSampleCount:](v5, "setTriggerStartSampleCount:", [v28 unsignedLongLongValue]);
    }

    v29 = [v4 objectForKeyedSubscript:@"clientStartSampleCount"];
    objc_opt_class();
    v190 = v29;
    if (objc_opt_isKindOfClass())
    {
      -[MHSchemaMHVoiceTriggerEventInfo setClientStartSampleCount:](v5, "setClientStartSampleCount:", [v29 unsignedLongLongValue]);
    }

    v138 = v22;
    v30 = [v4 objectForKeyedSubscript:@"triggerEndSampleCount"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[MHSchemaMHVoiceTriggerEventInfo setTriggerEndSampleCount:](v5, "setTriggerEndSampleCount:", [v30 unsignedLongLongValue]);
    }

    v31 = [v4 objectForKeyedSubscript:@"triggerFireSampleCount"];
    objc_opt_class();
    v189 = v31;
    if (objc_opt_isKindOfClass())
    {
      -[MHSchemaMHVoiceTriggerEventInfo setTriggerFireSampleCount:](v5, "setTriggerFireSampleCount:", [v31 unsignedLongLongValue]);
    }

    v135 = v28;
    v32 = [v4 objectForKeyedSubscript:@"triggerStartNs"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[MHSchemaMHVoiceTriggerEventInfo setTriggerStartNs:](v5, "setTriggerStartNs:", [v32 unsignedLongLongValue]);
    }

    v133 = v32;
    v33 = [v4 objectForKeyedSubscript:@"triggerEndNs"];
    objc_opt_class();
    v188 = v33;
    if (objc_opt_isKindOfClass())
    {
      -[MHSchemaMHVoiceTriggerEventInfo setTriggerEndNs:](v5, "setTriggerEndNs:", [v33 unsignedLongLongValue]);
    }

    v137 = v24;
    v34 = [v4 objectForKeyedSubscript:@"triggerFireNs"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[MHSchemaMHVoiceTriggerEventInfo setTriggerFireNs:](v5, "setTriggerFireNs:", [v34 unsignedLongLongValue]);
    }

    v35 = [v4 objectForKeyedSubscript:@"extraSamplesAtStart"];
    objc_opt_class();
    v187 = v35;
    if (objc_opt_isKindOfClass())
    {
      -[MHSchemaMHVoiceTriggerEventInfo setExtraSamplesAtStart:](v5, "setExtraSamplesAtStart:", [v35 unsignedLongLongValue]);
    }

    v134 = v30;
    v36 = [v4 objectForKeyedSubscript:@"analyzerPrependingSamples"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[MHSchemaMHVoiceTriggerEventInfo setAnalyzerPrependingSamples:](v5, "setAnalyzerPrependingSamples:", [v36 unsignedLongLongValue]);
    }

    v131 = v36;
    v37 = [v4 objectForKeyedSubscript:@"analyzerTrailingSamples"];
    objc_opt_class();
    v186 = v37;
    if (objc_opt_isKindOfClass())
    {
      -[MHSchemaMHVoiceTriggerEventInfo setAnalyzerTrailingSamples:](v5, "setAnalyzerTrailingSamples:", [v37 unsignedLongLongValue]);
    }

    v38 = [v4 objectForKeyedSubscript:@"isTriggerEvent"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[MHSchemaMHVoiceTriggerEventInfo setIsTriggerEvent:](v5, "setIsTriggerEvent:", [v38 BOOLValue]);
    }

    v39 = [v4 objectForKeyedSubscript:@"totalSampleCount"];
    objc_opt_class();
    v185 = v39;
    if (objc_opt_isKindOfClass())
    {
      -[MHSchemaMHVoiceTriggerEventInfo setTotalSampleCount:](v5, "setTotalSampleCount:", [v39 unsignedLongLongValue]);
    }

    v132 = v34;
    v40 = [v4 objectForKeyedSubscript:@"triggerScore"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v40 floatValue];
      [(MHSchemaMHVoiceTriggerEventInfo *)v5 setTriggerScore:?];
    }

    v129 = v40;
    v41 = [v4 objectForKeyedSubscript:@"isMaximized"];
    objc_opt_class();
    v184 = v41;
    if (objc_opt_isKindOfClass())
    {
      -[MHSchemaMHVoiceTriggerEventInfo setIsMaximized:](v5, "setIsMaximized:", [v41 BOOLValue]);
    }

    v130 = v38;
    v42 = [v4 objectForKeyedSubscript:@"effectiveThreshold"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v42 floatValue];
      [(MHSchemaMHVoiceTriggerEventInfo *)v5 setEffectiveThreshold:?];
    }

    v43 = [v4 objectForKeyedSubscript:@"recognizerScore"];
    objc_opt_class();
    v183 = v43;
    if (objc_opt_isKindOfClass())
    {
      [v43 floatValue];
      [(MHSchemaMHVoiceTriggerEventInfo *)v5 setRecognizerScore:?];
    }

    v44 = [v4 objectForKeyedSubscript:@"recognizerThresholdOffset"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v44 floatValue];
      [(MHSchemaMHVoiceTriggerEventInfo *)v5 setRecognizerThresholdOffset:?];
    }

    v45 = [v4 objectForKeyedSubscript:@"recognizerWaitTimeInNs"];
    objc_opt_class();
    v182 = v45;
    if (objc_opt_isKindOfClass())
    {
      -[MHSchemaMHVoiceTriggerEventInfo setRecognizerWaitTimeInNs:](v5, "setRecognizerWaitTimeInNs:", [v45 unsignedLongLongValue]);
    }

    v46 = [v4 objectForKeyedSubscript:@"recognizerScaleFactor"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v46 floatValue];
      [(MHSchemaMHVoiceTriggerEventInfo *)v5 setRecognizerScaleFactor:?];
    }

    v47 = [v4 objectForKeyedSubscript:@"threshold"];
    objc_opt_class();
    v181 = v47;
    if (objc_opt_isKindOfClass())
    {
      [v47 floatValue];
      [(MHSchemaMHVoiceTriggerEventInfo *)v5 setThreshold:?];
    }

    v128 = v42;
    v48 = [v4 objectForKeyedSubscript:@"triggerStartTimeOffsetInNs"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[MHSchemaMHVoiceTriggerEventInfo setTriggerStartTimeOffsetInNs:](v5, "setTriggerStartTimeOffsetInNs:", [v48 unsignedLongLongValue]);
    }

    v125 = v48;
    v49 = [v4 objectForKeyedSubscript:@"triggerEndTimeOffsetInNs"];
    objc_opt_class();
    v180 = v49;
    if (objc_opt_isKindOfClass())
    {
      -[MHSchemaMHVoiceTriggerEventInfo setTriggerEndTimeOffsetInNs:](v5, "setTriggerEndTimeOffsetInNs:", [v49 unsignedLongLongValue]);
    }

    v50 = v6;
    v51 = [v4 objectForKeyedSubscript:@"triggerFireTimeOffsetInNs"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[MHSchemaMHVoiceTriggerEventInfo setTriggerFireTimeOffsetInNs:](v5, "setTriggerFireTimeOffsetInNs:", [v51 unsignedLongLongValue]);
    }

    v124 = v51;
    v52 = [v4 objectForKeyedSubscript:@"triggerStartTime"];
    objc_opt_class();
    v179 = v52;
    if (objc_opt_isKindOfClass())
    {
      [v52 doubleValue];
      [(MHSchemaMHVoiceTriggerEventInfo *)v5 setTriggerStartTime:?];
    }

    v53 = [v4 objectForKeyedSubscript:@"triggerEndTime"];
    objc_opt_class();
    v178 = v53;
    v54 = v50;
    if (objc_opt_isKindOfClass())
    {
      [v178 doubleValue];
      [(MHSchemaMHVoiceTriggerEventInfo *)v5 setTriggerEndTime:?];
    }

    v55 = [v4 objectForKeyedSubscript:@"triggerFiredTime"];
    objc_opt_class();
    v177 = v55;
    v127 = v44;
    if (objc_opt_isKindOfClass())
    {
      [v55 doubleValue];
      [(MHSchemaMHVoiceTriggerEventInfo *)v5 setTriggerFiredTime:?];
    }

    v56 = [v4 objectForKeyedSubscript:@"hardwareSamplerate"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[MHSchemaMHVoiceTriggerEventInfo setHardwareSamplerate:](v5, "setHardwareSamplerate:", [v56 unsignedIntValue]);
    }

    v123 = v56;
    v57 = [v4 objectForKeyedSubscript:@"isContinuous"];
    objc_opt_class();
    v176 = v57;
    if (objc_opt_isKindOfClass())
    {
      -[MHSchemaMHVoiceTriggerEventInfo setIsContinuous:](v5, "setIsContinuous:", [v57 BOOLValue]);
    }

    v58 = v7;
    v59 = [v4 objectForKeyedSubscript:@"triggerDurationInNs"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v59 floatValue];
      [(MHSchemaMHVoiceTriggerEventInfo *)v5 setTriggerDurationInNs:?];
    }

    v122 = v59;
    v60 = [v4 objectForKeyedSubscript:@"totalSamplesAtTriggerStart"];
    objc_opt_class();
    v175 = v60;
    if (objc_opt_isKindOfClass())
    {
      -[MHSchemaMHVoiceTriggerEventInfo setTotalSamplesAtTriggerStart:](v5, "setTotalSamplesAtTriggerStart:", [v60 unsignedLongLongValue]);
    }

    v61 = [v4 objectForKeyedSubscript:@"totalSamplesAtTriggerEnd"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[MHSchemaMHVoiceTriggerEventInfo setTotalSamplesAtTriggerEnd:](v5, "setTotalSamplesAtTriggerEnd:", [v61 unsignedLongLongValue]);
    }

    v121 = v61;
    v148 = v58;
    v149 = v54;
    v62 = [v4 objectForKeyedSubscript:@"totalSamplesAtEndOfCapture"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[MHSchemaMHVoiceTriggerEventInfo setTotalSamplesAtEndOfCapture:](v5, "setTotalSamplesAtEndOfCapture:", [v62 unsignedLongLongValue]);
    }

    v120 = v62;
    v63 = [v4 objectForKeyedSubscript:@"configVersion"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v64 = [v63 copy];
      [(MHSchemaMHVoiceTriggerEventInfo *)v5 setConfigVersion:v64];
    }

    v65 = [v4 objectForKeyedSubscript:@"configPath"];
    objc_opt_class();
    v174 = v65;
    if (objc_opt_isKindOfClass())
    {
      v66 = [v65 copy];
      [(MHSchemaMHVoiceTriggerEventInfo *)v5 setConfigPath:v66];
    }

    v67 = [v4 objectForKeyedSubscript:@"isSecondChance"];
    objc_opt_class();
    v173 = v67;
    if (objc_opt_isKindOfClass())
    {
      -[MHSchemaMHVoiceTriggerEventInfo setIsSecondChance:](v5, "setIsSecondChance:", [v67 BOOLValue]);
    }

    v68 = [v4 objectForKeyedSubscript:@"deviceHandheld"];
    objc_opt_class();
    v172 = v68;
    if (objc_opt_isKindOfClass())
    {
      -[MHSchemaMHVoiceTriggerEventInfo setDeviceHandheld:](v5, "setDeviceHandheld:", [v68 BOOLValue]);
    }

    v69 = [v4 objectForKeyedSubscript:@"activeChannel"];
    objc_opt_class();
    v171 = v69;
    if (objc_opt_isKindOfClass())
    {
      -[MHSchemaMHVoiceTriggerEventInfo setActiveChannel:](v5, "setActiveChannel:", [v69 unsignedIntValue]);
    }

    v70 = [v4 objectForKeyedSubscript:@"twoShotAudibleFeedbackDelayInNs"];
    objc_opt_class();
    v170 = v70;
    if (objc_opt_isKindOfClass())
    {
      -[MHSchemaMHVoiceTriggerEventInfo setTwoShotAudibleFeedbackDelayInNs:](v5, "setTwoShotAudibleFeedbackDelayInNs:", [v70 unsignedLongLongValue]);
    }

    v71 = [v4 objectForKeyedSubscript:@"cumulativeUptimeInSec"];
    objc_opt_class();
    v169 = v71;
    if (objc_opt_isKindOfClass())
    {
      [v71 floatValue];
      [(MHSchemaMHVoiceTriggerEventInfo *)v5 setCumulativeUptimeInSec:?];
    }

    v72 = [v4 objectForKeyedSubscript:@"cumulativeDowntimeInSec"];
    objc_opt_class();
    v168 = v72;
    if (objc_opt_isKindOfClass())
    {
      [v72 floatValue];
      [(MHSchemaMHVoiceTriggerEventInfo *)v5 setCumulativeDowntimeInSec:?];
    }

    v73 = [v4 objectForKeyedSubscript:@"hostPowerStateAtTrigger"];
    objc_opt_class();
    v167 = v73;
    if (objc_opt_isKindOfClass())
    {
      -[MHSchemaMHVoiceTriggerEventInfo setHostPowerStateAtTrigger:](v5, "setHostPowerStateAtTrigger:", [v73 intValue]);
    }

    v74 = [v4 objectForKeyedSubscript:@"isMediaPlaying"];
    objc_opt_class();
    v166 = v74;
    if (objc_opt_isKindOfClass())
    {
      -[MHSchemaMHVoiceTriggerEventInfo setIsMediaPlaying:](v5, "setIsMediaPlaying:", [v74 BOOLValue]);
    }

    v75 = [v4 objectForKeyedSubscript:@"mediaVolume"];
    objc_opt_class();
    v165 = v75;
    if (objc_opt_isKindOfClass())
    {
      [v75 floatValue];
      [(MHSchemaMHVoiceTriggerEventInfo *)v5 setMediaVolume:?];
    }

    v76 = [v4 objectForKeyedSubscript:@"audioProviderUUID"];
    objc_opt_class();
    v164 = v76;
    if (objc_opt_isKindOfClass())
    {
      v77 = [[SISchemaUUID alloc] initWithDictionary:v76];
      [(MHSchemaMHVoiceTriggerEventInfo *)v5 setAudioProviderUUID:v77];
    }

    v78 = [v4 objectForKeyedSubscript:@"onBatteryPower"];
    objc_opt_class();
    v163 = v78;
    if (objc_opt_isKindOfClass())
    {
      -[MHSchemaMHVoiceTriggerEventInfo setOnBatteryPower:](v5, "setOnBatteryPower:", [v78 BOOLValue]);
    }

    v79 = [v4 objectForKeyedSubscript:@"didWakeAP"];
    objc_opt_class();
    v162 = v79;
    if (objc_opt_isKindOfClass())
    {
      -[MHSchemaMHVoiceTriggerEventInfo setDidWakeAP:](v5, "setDidWakeAP:", [v79 BOOLValue]);
    }

    v80 = [v4 objectForKeyedSubscript:@"uptimeInSec"];
    objc_opt_class();
    v161 = v80;
    if (objc_opt_isKindOfClass())
    {
      [v80 floatValue];
      [(MHSchemaMHVoiceTriggerEventInfo *)v5 setUptimeInSec:?];
    }

    v81 = [v4 objectForKeyedSubscript:@"downtimeInSec"];
    objc_opt_class();
    v160 = v81;
    if (objc_opt_isKindOfClass())
    {
      [v81 floatValue];
      [(MHSchemaMHVoiceTriggerEventInfo *)v5 setDowntimeInSec:?];
    }

    v82 = [v4 objectForKeyedSubscript:@"lastConsecutiveVTRejects"];
    objc_opt_class();
    v159 = v82;
    if (objc_opt_isKindOfClass())
    {
      -[MHSchemaMHVoiceTriggerEventInfo setLastConsecutiveVTRejects:](v5, "setLastConsecutiveVTRejects:", [v82 unsignedIntValue]);
    }

    v83 = [v4 objectForKeyedSubscript:@"captureFilePath"];
    objc_opt_class();
    v158 = v83;
    if (objc_opt_isKindOfClass())
    {
      v84 = [v83 copy];
      [(MHSchemaMHVoiceTriggerEventInfo *)v5 setCaptureFilePath:v84];
    }

    v85 = [v4 objectForKeyedSubscript:@"configDataHash"];
    objc_opt_class();
    v157 = v85;
    if (objc_opt_isKindOfClass())
    {
      v86 = [v85 copy];
      [(MHSchemaMHVoiceTriggerEventInfo *)v5 setConfigDataHash:v86];
    }

    v87 = v46;
    v88 = [v4 objectForKeyedSubscript:@"siriIsActiveOrOtherAssertion"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[MHSchemaMHVoiceTriggerEventInfo setSiriIsActiveOrOtherAssertion:](v5, "setSiriIsActiveOrOtherAssertion:", [v88 BOOLValue]);
    }

    v89 = [v4 objectForKeyedSubscript:@"didAudioStall"];
    objc_opt_class();
    v156 = v89;
    if (objc_opt_isKindOfClass())
    {
      -[MHSchemaMHVoiceTriggerEventInfo setDidAudioStall:](v5, "setDidAudioStall:", [v89 BOOLValue]);
    }

    v90 = [v4 objectForKeyedSubscript:@"isBargeIn"];
    objc_opt_class();
    v155 = v90;
    v91 = v87;
    if (objc_opt_isKindOfClass())
    {
      -[MHSchemaMHVoiceTriggerEventInfo setIsBargeIn:](v5, "setIsBargeIn:", [v155 BOOLValue]);
    }

    v92 = [v4 objectForKeyedSubscript:@"isWakeFromSleep"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[MHSchemaMHVoiceTriggerEventInfo setIsWakeFromSleep:](v5, "setIsWakeFromSleep:", [v92 BOOLValue]);
    }

    v93 = [v4 objectForKeyedSubscript:@"secondPassAssetQueryStartTimeInNs"];
    objc_opt_class();
    v154 = v93;
    if (objc_opt_isKindOfClass())
    {
      -[MHSchemaMHVoiceTriggerEventInfo setSecondPassAssetQueryStartTimeInNs:](v5, "setSecondPassAssetQueryStartTimeInNs:", [v93 unsignedLongLongValue]);
    }

    v94 = [v4 objectForKeyedSubscript:@"secondPassAssetQueryCompleteTimeInNs"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[MHSchemaMHVoiceTriggerEventInfo setSecondPassAssetQueryCompleteTimeInNs:](v5, "setSecondPassAssetQueryCompleteTimeInNs:", [v94 unsignedLongLongValue]);
    }

    v95 = [v4 objectForKeyedSubscript:@"secondPassAssetLoadStartTimeInNs"];
    objc_opt_class();
    v153 = v95;
    if (objc_opt_isKindOfClass())
    {
      -[MHSchemaMHVoiceTriggerEventInfo setSecondPassAssetLoadStartTimeInNs:](v5, "setSecondPassAssetLoadStartTimeInNs:", [v95 unsignedLongLongValue]);
    }

    v96 = [v4 objectForKeyedSubscript:@"secondPassAssetLoadCompleteTimeInNs"];
    objc_opt_class();
    v152 = v96;
    if (objc_opt_isKindOfClass())
    {
      -[MHSchemaMHVoiceTriggerEventInfo setSecondPassAssetLoadCompleteTimeInNs:](v5, "setSecondPassAssetLoadCompleteTimeInNs:", [v96 unsignedLongLongValue]);
    }

    v97 = v63;
    v98 = [v4 objectForKeyedSubscript:@"secondPassAudioStreamStartTimeInNs"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[MHSchemaMHVoiceTriggerEventInfo setSecondPassAudioStreamStartTimeInNs:](v5, "setSecondPassAudioStreamStartTimeInNs:", [v98 unsignedLongLongValue]);
    }

    v99 = [v4 objectForKeyedSubscript:@"secondPassAudioStreamReadyTimeInNs"];
    objc_opt_class();
    v151 = v99;
    if (objc_opt_isKindOfClass())
    {
      -[MHSchemaMHVoiceTriggerEventInfo setSecondPassAudioStreamReadyTimeInNs:](v5, "setSecondPassAudioStreamReadyTimeInNs:", [v99 unsignedLongLongValue]);
    }

    v100 = [v4 objectForKeyedSubscript:@"secondPassFirstAudioPacketReceptionTimeInNs"];
    objc_opt_class();
    v150 = v100;
    v101 = v97;
    if (objc_opt_isKindOfClass())
    {
      -[MHSchemaMHVoiceTriggerEventInfo setSecondPassFirstAudioPacketReceptionTimeInNs:](v5, "setSecondPassFirstAudioPacketReceptionTimeInNs:", [v150 unsignedLongLongValue]);
    }

    v126 = v91;
    v102 = [v4 objectForKeyedSubscript:@"secondPassLastAudioPacketReceptionTimeInNs"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[MHSchemaMHVoiceTriggerEventInfo setSecondPassLastAudioPacketReceptionTimeInNs:](v5, "setSecondPassLastAudioPacketReceptionTimeInNs:", [v102 unsignedLongLongValue]);
    }

    v117 = v92;
    v103 = [v4 objectForKeyedSubscript:@"secondPassCheckerModelKeywordDetectionStartTimeInNs"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[MHSchemaMHVoiceTriggerEventInfo setSecondPassCheckerModelKeywordDetectionStartTimeInNs:](v5, "setSecondPassCheckerModelKeywordDetectionStartTimeInNs:", [v103 unsignedLongLongValue]);
    }

    v116 = v98;
    v118 = v88;
    v104 = [v4 objectForKeyedSubscript:@"secondPassCheckerModelKeywordDetectionEndTimeInNs"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[MHSchemaMHVoiceTriggerEventInfo setSecondPassCheckerModelKeywordDetectionEndTimeInNs:](v5, "setSecondPassCheckerModelKeywordDetectionEndTimeInNs:", [v104 unsignedLongLongValue]);
    }

    v105 = [v4 objectForKeyedSubscript:@"triggerPhrase"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v106 = [v105 copy];
      [(MHSchemaMHVoiceTriggerEventInfo *)v5 setTriggerPhrase:v106];
    }

    v115 = v102;
    v107 = [v4 objectForKeyedSubscript:@"lastDisplayWakeTimeOffsetInNs"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v107 doubleValue];
      [(MHSchemaMHVoiceTriggerEventInfo *)v5 setLastDisplayWakeTimeOffsetInNs:?];
    }

    v119 = v101;
    v108 = [v4 objectForKeyedSubscript:{@"isHSJSTriggerFromAlwaysOnMicBuffer", v103}];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[MHSchemaMHVoiceTriggerEventInfo setIsHSJSTriggerFromAlwaysOnMicBuffer:](v5, "setIsHSJSTriggerFromAlwaysOnMicBuffer:", [v108 BOOLValue]);
    }

    v109 = v94;
    v110 = [v4 objectForKeyedSubscript:@"displayWakeTimeOffsetInNs"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[MHSchemaMHVoiceTriggerEventInfo setDisplayWakeTimeOffsetInNs:](v5, "setDisplayWakeTimeOffsetInNs:", [v110 unsignedLongLongValue]);
    }

    v111 = [v4 objectForKeyedSubscript:@"neptuneDetectionApiScore"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v111 floatValue];
      [(MHSchemaMHVoiceTriggerEventInfo *)v5 setNeptuneDetectionApiScore:?];
    }

    v112 = v5;
  }

  return v5;
}

- (MHSchemaMHVoiceTriggerEventInfo)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(MHSchemaMHVoiceTriggerEventInfo *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(MHSchemaMHVoiceTriggerEventInfo *)self dictionaryRepresentation];
  if ([MEMORY[0x1E696ACB0] isValidJSONObject:v2])
  {
    v3 = [MEMORY[0x1E696ACB0] dataWithJSONObject:v2 options:0 error:0];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  p_has = &self->_has;
  has = self->_has;
  if ((has & 0x100000000000000) != 0)
  {
    v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[MHSchemaMHVoiceTriggerEventInfo activeChannel](self, "activeChannel")}];
    [v3 setObject:v9 forKeyedSubscript:@"activeChannel"];

    has = *p_has;
    if ((*p_has & 0x40000000) == 0)
    {
LABEL_3:
      if ((has & 0x80000000) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((has & 0x40000000) == 0)
  {
    goto LABEL_3;
  }

  v10 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[MHSchemaMHVoiceTriggerEventInfo analyzerPrependingSamples](self, "analyzerPrependingSamples")}];
  [v3 setObject:v10 forKeyedSubscript:@"analyzerPrependingSamples"];

  if ((*p_has & 0x80000000) != 0)
  {
LABEL_4:
    v6 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[MHSchemaMHVoiceTriggerEventInfo analyzerTrailingSamples](self, "analyzerTrailingSamples")}];
    [v3 setObject:v6 forKeyedSubscript:@"analyzerTrailingSamples"];
  }

LABEL_5:
  if (self->_audioProviderUUID)
  {
    v7 = [(MHSchemaMHVoiceTriggerEventInfo *)self audioProviderUUID];
    v8 = [v7 dictionaryRepresentation];
    if (v8)
    {
      [v3 setObject:v8 forKeyedSubscript:@"audioProviderUUID"];
    }

    else
    {
      v11 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v11 forKeyedSubscript:@"audioProviderUUID"];
    }
  }

  if ((*(&self->_has + 1) & 4) != 0)
  {
    v12 = [(MHSchemaMHVoiceTriggerEventInfo *)self biometricClue]- 1;
    if (v12 > 3)
    {
      v13 = @"MHBIOMETRICMATCHRESULT_UNKOWN";
    }

    else
    {
      v13 = off_1E78D99F8[v12];
    }

    [v3 setObject:v13 forKeyedSubscript:@"biometricClue"];
  }

  if (self->_captureFilePath)
  {
    v14 = [(MHSchemaMHVoiceTriggerEventInfo *)self captureFilePath];
    v15 = [v14 copy];
    [v3 setObject:v15 forKeyedSubscript:@"captureFilePath"];
  }

  if ((*(&self->_has + 2) & 0x80) != 0)
  {
    v16 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[MHSchemaMHVoiceTriggerEventInfo clientStartSampleCount](self, "clientStartSampleCount")}];
    [v3 setObject:v16 forKeyedSubscript:@"clientStartSampleCount"];
  }

  if (self->_configDataHash)
  {
    v17 = [(MHSchemaMHVoiceTriggerEventInfo *)self configDataHash];
    v18 = [v17 copy];
    [v3 setObject:v18 forKeyedSubscript:@"configDataHash"];
  }

  if (self->_configPath)
  {
    v19 = [(MHSchemaMHVoiceTriggerEventInfo *)self configPath];
    v20 = [v19 copy];
    [v3 setObject:v20 forKeyedSubscript:@"configPath"];
  }

  if (self->_configVersion)
  {
    v21 = [(MHSchemaMHVoiceTriggerEventInfo *)self configVersion];
    v22 = [v21 copy];
    [v3 setObject:v22 forKeyedSubscript:@"configVersion"];
  }

  v23 = *p_has;
  if ((*p_has & 0x800000000000000) != 0)
  {
    v32 = MEMORY[0x1E696AD98];
    [(MHSchemaMHVoiceTriggerEventInfo *)self cumulativeDowntimeInSec];
    v33 = [v32 numberWithFloat:?];
    [v3 setObject:v33 forKeyedSubscript:@"cumulativeDowntimeInSec"];

    v23 = *p_has;
    if ((*p_has & 0x400000000000000) == 0)
    {
LABEL_30:
      if ((v23 & 0x2000) == 0)
      {
        goto LABEL_31;
      }

      goto LABEL_49;
    }
  }

  else if ((v23 & 0x400000000000000) == 0)
  {
    goto LABEL_30;
  }

  v34 = MEMORY[0x1E696AD98];
  [(MHSchemaMHVoiceTriggerEventInfo *)self cumulativeUptimeInSec];
  v35 = [v34 numberWithFloat:?];
  [v3 setObject:v35 forKeyedSubscript:@"cumulativeUptimeInSec"];

  v23 = *p_has;
  if ((*p_has & 0x2000) == 0)
  {
LABEL_31:
    if ((v23 & 0x80000000000000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_32;
  }

LABEL_49:
  v36 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[MHSchemaMHVoiceTriggerEventInfo deltaTimeInNsFromlastPHSReject](self, "deltaTimeInNsFromlastPHSReject")}];
  [v3 setObject:v36 forKeyedSubscript:@"deltaTimeInNsFromlastPHSReject"];

  if ((*p_has & 0x80000000000000) != 0)
  {
LABEL_32:
    v24 = [MEMORY[0x1E696AD98] numberWithBool:{-[MHSchemaMHVoiceTriggerEventInfo deviceHandheld](self, "deviceHandheld")}];
    [v3 setObject:v24 forKeyedSubscript:@"deviceHandheld"];
  }

LABEL_33:
  v25 = *(&self->_has + 4);
  if ((v25 & 0x20) != 0)
  {
    v26 = [MEMORY[0x1E696AD98] numberWithBool:{-[MHSchemaMHVoiceTriggerEventInfo didAudioStall](self, "didAudioStall")}];
    [v3 setObject:v26 forKeyedSubscript:@"didAudioStall"];

    v25 = *(&self->_has + 4);
  }

  if (v25)
  {
    v27 = [MEMORY[0x1E696AD98] numberWithBool:{-[MHSchemaMHVoiceTriggerEventInfo didWakeAP](self, "didWakeAP")}];
    [v3 setObject:v27 forKeyedSubscript:@"didWakeAP"];
  }

  if ((*(&self->_has + 10) & 0x10) != 0)
  {
    v28 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[MHSchemaMHVoiceTriggerEventInfo displayWakeTimeOffsetInNs](self, "displayWakeTimeOffsetInNs")}];
    [v3 setObject:v28 forKeyedSubscript:@"displayWakeTimeOffsetInNs"];
  }

  if ((*(&self->_has + 4) & 4) != 0)
  {
    v29 = MEMORY[0x1E696AD98];
    [(MHSchemaMHVoiceTriggerEventInfo *)self downtimeInSec];
    v30 = [v29 numberWithFloat:?];
    [v3 setObject:v30 forKeyedSubscript:@"downtimeInSec"];
  }

  v31 = *p_has;
  if ((*p_has & 0x1000000000) != 0)
  {
    v37 = MEMORY[0x1E696AD98];
    [(MHSchemaMHVoiceTriggerEventInfo *)self effectiveThreshold];
    v38 = [v37 numberWithFloat:?];
    [v3 setObject:v38 forKeyedSubscript:@"effectiveThreshold"];

    v31 = *p_has;
    if ((*p_has & 0x200000) == 0)
    {
LABEL_43:
      if ((v31 & 0x20000000) == 0)
      {
        goto LABEL_44;
      }

      goto LABEL_56;
    }
  }

  else if ((v31 & 0x200000) == 0)
  {
    goto LABEL_43;
  }

  v39 = [(MHSchemaMHVoiceTriggerEventInfo *)self enhancedCarplayTriggerMode]- 1;
  if (v39 > 2)
  {
    v40 = @"MHFIRSTPASSENHANCEDCARPLAYTRIGGERMODE_UNKNOWN";
  }

  else
  {
    v40 = off_1E78D9A18[v39];
  }

  [v3 setObject:v40 forKeyedSubscript:@"enhancedCarplayTriggerMode"];
  v31 = *p_has;
  if ((*p_has & 0x20000000) == 0)
  {
LABEL_44:
    if ((v31 & 0x1000000000000) == 0)
    {
      goto LABEL_45;
    }

    goto LABEL_57;
  }

LABEL_56:
  v41 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[MHSchemaMHVoiceTriggerEventInfo extraSamplesAtStart](self, "extraSamplesAtStart")}];
  [v3 setObject:v41 forKeyedSubscript:@"extraSamplesAtStart"];

  v31 = *p_has;
  if ((*p_has & 0x1000000000000) == 0)
  {
LABEL_45:
    if ((v31 & 0x1000000000000000) == 0)
    {
      goto LABEL_62;
    }

    goto LABEL_58;
  }

LABEL_57:
  v42 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[MHSchemaMHVoiceTriggerEventInfo hardwareSamplerate](self, "hardwareSamplerate")}];
  [v3 setObject:v42 forKeyedSubscript:@"hardwareSamplerate"];

  if ((*p_has & 0x1000000000000000) == 0)
  {
    goto LABEL_62;
  }

LABEL_58:
  v43 = [(MHSchemaMHVoiceTriggerEventInfo *)self hostPowerStateAtTrigger]- 1;
  if (v43 > 3)
  {
    v44 = @"MHHOSTPOWERSTATE_UNKNOWN";
  }

  else
  {
    v44 = off_1E78D9A30[v43];
  }

  [v3 setObject:v44 forKeyedSubscript:@"hostPowerStateAtTrigger"];
LABEL_62:
  if ((*(&self->_has + 4) & 0x40) != 0)
  {
    v45 = [MEMORY[0x1E696AD98] numberWithBool:{-[MHSchemaMHVoiceTriggerEventInfo isBargeIn](self, "isBargeIn")}];
    [v3 setObject:v45 forKeyedSubscript:@"isBargeIn"];
  }

  if ((*(&self->_has + 6) & 2) != 0)
  {
    v46 = [MEMORY[0x1E696AD98] numberWithBool:{-[MHSchemaMHVoiceTriggerEventInfo isContinuous](self, "isContinuous")}];
    [v3 setObject:v46 forKeyedSubscript:@"isContinuous"];
  }

  if ((*(&self->_has + 10) & 8) != 0)
  {
    v47 = [MEMORY[0x1E696AD98] numberWithBool:{-[MHSchemaMHVoiceTriggerEventInfo isHSJSTriggerFromAlwaysOnMicBuffer](self, "isHSJSTriggerFromAlwaysOnMicBuffer")}];
    [v3 setObject:v47 forKeyedSubscript:@"isHSJSTriggerFromAlwaysOnMicBuffer"];
  }

  v48 = *p_has;
  if ((*p_has & 0x800000000) != 0)
  {
    v86 = [MEMORY[0x1E696AD98] numberWithBool:{-[MHSchemaMHVoiceTriggerEventInfo isMaximized](self, "isMaximized")}];
    [v3 setObject:v86 forKeyedSubscript:@"isMaximized"];

    v48 = *p_has;
    if ((*p_has & 0x2000000000000000) == 0)
    {
LABEL_70:
      if ((v48 & 0x40000000000000) == 0)
      {
        goto LABEL_71;
      }

      goto LABEL_157;
    }
  }

  else if ((v48 & 0x2000000000000000) == 0)
  {
    goto LABEL_70;
  }

  v87 = [MEMORY[0x1E696AD98] numberWithBool:{-[MHSchemaMHVoiceTriggerEventInfo isMediaPlaying](self, "isMediaPlaying")}];
  [v3 setObject:v87 forKeyedSubscript:@"isMediaPlaying"];

  v48 = *p_has;
  if ((*p_has & 0x40000000000000) == 0)
  {
LABEL_71:
    if ((v48 & 0x100000000) == 0)
    {
      goto LABEL_73;
    }

    goto LABEL_72;
  }

LABEL_157:
  v88 = [MEMORY[0x1E696AD98] numberWithBool:{-[MHSchemaMHVoiceTriggerEventInfo isSecondChance](self, "isSecondChance")}];
  [v3 setObject:v88 forKeyedSubscript:@"isSecondChance"];

  if ((*p_has & 0x100000000) != 0)
  {
LABEL_72:
    v49 = [MEMORY[0x1E696AD98] numberWithBool:{-[MHSchemaMHVoiceTriggerEventInfo isTriggerEvent](self, "isTriggerEvent")}];
    [v3 setObject:v49 forKeyedSubscript:@"isTriggerEvent"];
  }

LABEL_73:
  if ((*(&self->_has + 4) & 0x80) != 0)
  {
    v50 = [MEMORY[0x1E696AD98] numberWithBool:{-[MHSchemaMHVoiceTriggerEventInfo isWakeFromSleep](self, "isWakeFromSleep")}];
    [v3 setObject:v50 forKeyedSubscript:@"isWakeFromSleep"];
  }

  if ((*(&self->_has + 1) & 0x10) != 0)
  {
    v51 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[MHSchemaMHVoiceTriggerEventInfo lastConsecutivePHSRejects](self, "lastConsecutivePHSRejects")}];
    [v3 setObject:v51 forKeyedSubscript:@"lastConsecutivePHSRejects"];
  }

  if ((*(&self->_has + 4) & 8) != 0)
  {
    v52 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[MHSchemaMHVoiceTriggerEventInfo lastConsecutiveVTRejects](self, "lastConsecutiveVTRejects")}];
    [v3 setObject:v52 forKeyedSubscript:@"lastConsecutiveVTRejects"];
  }

  if ((*(&self->_has + 10) & 4) != 0)
  {
    v53 = MEMORY[0x1E696AD98];
    [(MHSchemaMHVoiceTriggerEventInfo *)self lastDisplayWakeTimeOffsetInNs];
    v54 = [v53 numberWithDouble:?];
    [v3 setObject:v54 forKeyedSubscript:@"lastDisplayWakeTimeOffsetInNs"];
  }

  if ((*(&self->_has + 7) & 0x40) != 0)
  {
    v55 = MEMORY[0x1E696AD98];
    [(MHSchemaMHVoiceTriggerEventInfo *)self mediaVolume];
    v56 = [v55 numberWithFloat:?];
    [v3 setObject:v56 forKeyedSubscript:@"mediaVolume"];
  }

  if ((*(&self->_has + 10) & 0x20) != 0)
  {
    v57 = MEMORY[0x1E696AD98];
    [(MHSchemaMHVoiceTriggerEventInfo *)self neptuneDetectionApiScore];
    v58 = [v57 numberWithFloat:?];
    [v3 setObject:v58 forKeyedSubscript:@"neptuneDetectionApiScore"];
  }

  v59 = *p_has;
  if ((*p_has & 0x8000000000000000) != 0)
  {
    v129 = [MEMORY[0x1E696AD98] numberWithBool:{-[MHSchemaMHVoiceTriggerEventInfo onBatteryPower](self, "onBatteryPower")}];
    [v3 setObject:v129 forKeyedSubscript:@"onBatteryPower"];

    v59 = *p_has;
    if ((*p_has & 0x10000000000) == 0)
    {
LABEL_87:
      if ((v59 & 0x2000000000) == 0)
      {
        goto LABEL_88;
      }

      goto LABEL_193;
    }
  }

  else if ((v59 & 0x10000000000) == 0)
  {
    goto LABEL_87;
  }

  v130 = MEMORY[0x1E696AD98];
  [(MHSchemaMHVoiceTriggerEventInfo *)self recognizerScaleFactor];
  v131 = [v130 numberWithFloat:?];
  [v3 setObject:v131 forKeyedSubscript:@"recognizerScaleFactor"];

  v59 = *p_has;
  if ((*p_has & 0x2000000000) == 0)
  {
LABEL_88:
    if ((v59 & 0x4000000000) == 0)
    {
      goto LABEL_89;
    }

    goto LABEL_194;
  }

LABEL_193:
  v132 = MEMORY[0x1E696AD98];
  [(MHSchemaMHVoiceTriggerEventInfo *)self recognizerScore];
  v133 = [v132 numberWithFloat:?];
  [v3 setObject:v133 forKeyedSubscript:@"recognizerScore"];

  v59 = *p_has;
  if ((*p_has & 0x4000000000) == 0)
  {
LABEL_89:
    if ((v59 & 0x8000000000) == 0)
    {
      goto LABEL_90;
    }

    goto LABEL_195;
  }

LABEL_194:
  v134 = MEMORY[0x1E696AD98];
  [(MHSchemaMHVoiceTriggerEventInfo *)self recognizerThresholdOffset];
  v135 = [v134 numberWithFloat:?];
  [v3 setObject:v135 forKeyedSubscript:@"recognizerThresholdOffset"];

  v59 = *p_has;
  if ((*p_has & 0x8000000000) == 0)
  {
LABEL_90:
    if ((v59 & 0x100000) == 0)
    {
      goto LABEL_91;
    }

    goto LABEL_196;
  }

LABEL_195:
  v136 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[MHSchemaMHVoiceTriggerEventInfo recognizerWaitTimeInNs](self, "recognizerWaitTimeInNs")}];
  [v3 setObject:v136 forKeyedSubscript:@"recognizerWaitTimeInNs"];

  v59 = *p_has;
  if ((*p_has & 0x100000) == 0)
  {
LABEL_91:
    if ((v59 & 0x40000) == 0)
    {
      goto LABEL_92;
    }

    goto LABEL_197;
  }

LABEL_196:
  v137 = MEMORY[0x1E696AD98];
  [(MHSchemaMHVoiceTriggerEventInfo *)self remoteMicVADMyriadThreshold];
  v138 = [v137 numberWithFloat:?];
  [v3 setObject:v138 forKeyedSubscript:@"remoteMicVADMyriadThreshold"];

  v59 = *p_has;
  if ((*p_has & 0x40000) == 0)
  {
LABEL_92:
    if ((v59 & 0x80000) == 0)
    {
      goto LABEL_93;
    }

    goto LABEL_198;
  }

LABEL_197:
  v139 = MEMORY[0x1E696AD98];
  [(MHSchemaMHVoiceTriggerEventInfo *)self remoteMicVADScore];
  v140 = [v139 numberWithFloat:?];
  [v3 setObject:v140 forKeyedSubscript:@"remoteMicVADScore"];

  v59 = *p_has;
  if ((*p_has & 0x80000) == 0)
  {
LABEL_93:
    if ((v59 & 0x800) == 0)
    {
      goto LABEL_94;
    }

    goto LABEL_199;
  }

LABEL_198:
  v141 = MEMORY[0x1E696AD98];
  [(MHSchemaMHVoiceTriggerEventInfo *)self remoteMicVADThreshold];
  v142 = [v141 numberWithFloat:?];
  [v3 setObject:v142 forKeyedSubscript:@"remoteMicVADThreshold"];

  v59 = *p_has;
  if ((*p_has & 0x800) == 0)
  {
LABEL_94:
    if ((v59 & 8) == 0)
    {
      goto LABEL_95;
    }

    goto LABEL_200;
  }

LABEL_199:
  v143 = [MEMORY[0x1E696AD98] numberWithBool:{-[MHSchemaMHVoiceTriggerEventInfo satBeingTrained](self, "satBeingTrained")}];
  [v3 setObject:v143 forKeyedSubscript:@"satBeingTrained"];

  v59 = *p_has;
  if ((*p_has & 8) == 0)
  {
LABEL_95:
    if ((v59 & 4) == 0)
    {
      goto LABEL_96;
    }

    goto LABEL_201;
  }

LABEL_200:
  v144 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[MHSchemaMHVoiceTriggerEventInfo satNumTrainingUtterances](self, "satNumTrainingUtterances")}];
  [v3 setObject:v144 forKeyedSubscript:@"satNumTrainingUtterances"];

  v59 = *p_has;
  if ((*p_has & 4) == 0)
  {
LABEL_96:
    if ((v59 & 0x10) == 0)
    {
      goto LABEL_97;
    }

    goto LABEL_202;
  }

LABEL_201:
  v145 = MEMORY[0x1E696AD98];
  [(MHSchemaMHVoiceTriggerEventInfo *)self satScore];
  v146 = [v145 numberWithFloat:?];
  [v3 setObject:v146 forKeyedSubscript:@"satScore"];

  v59 = *p_has;
  if ((*p_has & 0x10) == 0)
  {
LABEL_97:
    if ((v59 & 0x20) == 0)
    {
      goto LABEL_98;
    }

    goto LABEL_203;
  }

LABEL_202:
  v147 = MEMORY[0x1E696AD98];
  [(MHSchemaMHVoiceTriggerEventInfo *)self satThreshold];
  v148 = [v147 numberWithFloat:?];
  [v3 setObject:v148 forKeyedSubscript:@"satThreshold"];

  v59 = *p_has;
  if ((*p_has & 0x20) == 0)
  {
LABEL_98:
    if ((v59 & 2) == 0)
    {
      goto LABEL_99;
    }

    goto LABEL_204;
  }

LABEL_203:
  v149 = [MEMORY[0x1E696AD98] numberWithBool:{-[MHSchemaMHVoiceTriggerEventInfo satTriggered](self, "satTriggered")}];
  [v3 setObject:v149 forKeyedSubscript:@"satTriggered"];

  v59 = *p_has;
  if ((*p_has & 2) == 0)
  {
LABEL_99:
    if ((v59 & 1) == 0)
    {
      goto LABEL_101;
    }

    goto LABEL_100;
  }

LABEL_204:
  v150 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[MHSchemaMHVoiceTriggerEventInfo secondPassAnalyerEndSampleCount](self, "secondPassAnalyerEndSampleCount")}];
  [v3 setObject:v150 forKeyedSubscript:@"secondPassAnalyerEndSampleCount"];

  if (*p_has)
  {
LABEL_100:
    v60 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[MHSchemaMHVoiceTriggerEventInfo secondPassAnalyerStartSampleCount](self, "secondPassAnalyerStartSampleCount")}];
    [v3 setObject:v60 forKeyedSubscript:@"secondPassAnalyerStartSampleCount"];
  }

LABEL_101:
  v61 = *(&self->_has + 4);
  if ((v61 & 0x800) != 0)
  {
    v89 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[MHSchemaMHVoiceTriggerEventInfo secondPassAssetLoadCompleteTimeInNs](self, "secondPassAssetLoadCompleteTimeInNs")}];
    [v3 setObject:v89 forKeyedSubscript:@"secondPassAssetLoadCompleteTimeInNs"];

    v61 = *(&self->_has + 4);
    if ((v61 & 0x400) == 0)
    {
LABEL_103:
      if ((v61 & 0x200) == 0)
      {
        goto LABEL_104;
      }

      goto LABEL_161;
    }
  }

  else if ((*(&self->_has + 4) & 0x400) == 0)
  {
    goto LABEL_103;
  }

  v90 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[MHSchemaMHVoiceTriggerEventInfo secondPassAssetLoadStartTimeInNs](self, "secondPassAssetLoadStartTimeInNs")}];
  [v3 setObject:v90 forKeyedSubscript:@"secondPassAssetLoadStartTimeInNs"];

  v61 = *(&self->_has + 4);
  if ((v61 & 0x200) == 0)
  {
LABEL_104:
    if ((v61 & 0x100) == 0)
    {
      goto LABEL_105;
    }

    goto LABEL_162;
  }

LABEL_161:
  v91 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[MHSchemaMHVoiceTriggerEventInfo secondPassAssetQueryCompleteTimeInNs](self, "secondPassAssetQueryCompleteTimeInNs")}];
  [v3 setObject:v91 forKeyedSubscript:@"secondPassAssetQueryCompleteTimeInNs"];

  v61 = *(&self->_has + 4);
  if ((v61 & 0x100) == 0)
  {
LABEL_105:
    if ((v61 & 0x2000) == 0)
    {
      goto LABEL_106;
    }

    goto LABEL_163;
  }

LABEL_162:
  v92 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[MHSchemaMHVoiceTriggerEventInfo secondPassAssetQueryStartTimeInNs](self, "secondPassAssetQueryStartTimeInNs")}];
  [v3 setObject:v92 forKeyedSubscript:@"secondPassAssetQueryStartTimeInNs"];

  v61 = *(&self->_has + 4);
  if ((v61 & 0x2000) == 0)
  {
LABEL_106:
    if ((v61 & 0x1000) == 0)
    {
      goto LABEL_108;
    }

    goto LABEL_107;
  }

LABEL_163:
  v93 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[MHSchemaMHVoiceTriggerEventInfo secondPassAudioStreamReadyTimeInNs](self, "secondPassAudioStreamReadyTimeInNs")}];
  [v3 setObject:v93 forKeyedSubscript:@"secondPassAudioStreamReadyTimeInNs"];

  if ((*(&self->_has + 4) & 0x1000) != 0)
  {
LABEL_107:
    v62 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[MHSchemaMHVoiceTriggerEventInfo secondPassAudioStreamStartTimeInNs](self, "secondPassAudioStreamStartTimeInNs")}];
    [v3 setObject:v62 forKeyedSubscript:@"secondPassAudioStreamStartTimeInNs"];
  }

LABEL_108:
  v63 = *(&self->_has + 10);
  if ((v63 & 2) != 0)
  {
    v64 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[MHSchemaMHVoiceTriggerEventInfo secondPassCheckerModelKeywordDetectionEndTimeInNs](self, "secondPassCheckerModelKeywordDetectionEndTimeInNs")}];
    [v3 setObject:v64 forKeyedSubscript:@"secondPassCheckerModelKeywordDetectionEndTimeInNs"];

    v63 = *(&self->_has + 10);
  }

  if (v63)
  {
    v65 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[MHSchemaMHVoiceTriggerEventInfo secondPassCheckerModelKeywordDetectionStartTimeInNs](self, "secondPassCheckerModelKeywordDetectionStartTimeInNs")}];
    [v3 setObject:v65 forKeyedSubscript:@"secondPassCheckerModelKeywordDetectionStartTimeInNs"];
  }

  v66 = *(&self->_has + 4);
  if ((v66 & 0x4000) != 0)
  {
    v67 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[MHSchemaMHVoiceTriggerEventInfo secondPassFirstAudioPacketReceptionTimeInNs](self, "secondPassFirstAudioPacketReceptionTimeInNs")}];
    [v3 setObject:v67 forKeyedSubscript:@"secondPassFirstAudioPacketReceptionTimeInNs"];

    v66 = *(&self->_has + 4);
  }

  if (v66 < 0)
  {
    v68 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[MHSchemaMHVoiceTriggerEventInfo secondPassLastAudioPacketReceptionTimeInNs](self, "secondPassLastAudioPacketReceptionTimeInNs")}];
    [v3 setObject:v68 forKeyedSubscript:@"secondPassLastAudioPacketReceptionTimeInNs"];
  }

  v69 = *p_has;
  if ((*p_has & 0x10000) != 0)
  {
    v70 = MEMORY[0x1E696AD98];
    [(MHSchemaMHVoiceTriggerEventInfo *)self shadowMicScore];
    v71 = [v70 numberWithFloat:?];
    [v3 setObject:v71 forKeyedSubscript:@"shadowMicScore"];

    v69 = *p_has;
  }

  if ((v69 & 0x20000) != 0)
  {
    v72 = MEMORY[0x1E696AD98];
    [(MHSchemaMHVoiceTriggerEventInfo *)self shadowMicScoreThresholdForVAD];
    v73 = [v72 numberWithFloat:?];
    [v3 setObject:v73 forKeyedSubscript:@"shadowMicScoreThresholdForVAD"];
  }

  if ((*(&self->_has + 4) & 0x10) != 0)
  {
    v74 = [MEMORY[0x1E696AD98] numberWithBool:{-[MHSchemaMHVoiceTriggerEventInfo siriIsActiveOrOtherAssertion](self, "siriIsActiveOrOtherAssertion")}];
    [v3 setObject:v74 forKeyedSubscript:@"siriIsActiveOrOtherAssertion"];
  }

  v75 = *p_has;
  if ((*p_has & 0x200) != 0)
  {
    v94 = MEMORY[0x1E696AD98];
    [(MHSchemaMHVoiceTriggerEventInfo *)self tdSpeakerRecognizerCombinationWeight];
    v95 = [v94 numberWithFloat:?];
    [v3 setObject:v95 forKeyedSubscript:@"tdSpeakerRecognizerCombinationWeight"];

    v75 = *p_has;
    if ((*p_has & 0x80) == 0)
    {
LABEL_124:
      if ((v75 & 0x100) == 0)
      {
        goto LABEL_125;
      }

      goto LABEL_167;
    }
  }

  else if ((v75 & 0x80) == 0)
  {
    goto LABEL_124;
  }

  v96 = MEMORY[0x1E696AD98];
  [(MHSchemaMHVoiceTriggerEventInfo *)self tdSpeakerRecognizerCombinedScore];
  v97 = [v96 numberWithFloat:?];
  [v3 setObject:v97 forKeyedSubscript:@"tdSpeakerRecognizerCombinedScore"];

  v75 = *p_has;
  if ((*p_has & 0x100) == 0)
  {
LABEL_125:
    if ((v75 & 0x40) == 0)
    {
      goto LABEL_126;
    }

    goto LABEL_168;
  }

LABEL_167:
  v98 = MEMORY[0x1E696AD98];
  [(MHSchemaMHVoiceTriggerEventInfo *)self tdSpeakerRecognizerCombinedThreshold];
  v99 = [v98 numberWithFloat:?];
  [v3 setObject:v99 forKeyedSubscript:@"tdSpeakerRecognizerCombinedThreshold"];

  v75 = *p_has;
  if ((*p_has & 0x40) == 0)
  {
LABEL_126:
    if ((v75 & 0x20000000000) == 0)
    {
      goto LABEL_127;
    }

    goto LABEL_169;
  }

LABEL_168:
  v100 = MEMORY[0x1E696AD98];
  [(MHSchemaMHVoiceTriggerEventInfo *)self tdSpeakerRecognizerScore];
  v101 = [v100 numberWithFloat:?];
  [v3 setObject:v101 forKeyedSubscript:@"tdSpeakerRecognizerScore"];

  v75 = *p_has;
  if ((*p_has & 0x20000000000) == 0)
  {
LABEL_127:
    if ((v75 & 0x200000000) == 0)
    {
      goto LABEL_128;
    }

    goto LABEL_170;
  }

LABEL_169:
  v102 = MEMORY[0x1E696AD98];
  [(MHSchemaMHVoiceTriggerEventInfo *)self threshold];
  v103 = [v102 numberWithFloat:?];
  [v3 setObject:v103 forKeyedSubscript:@"threshold"];

  v75 = *p_has;
  if ((*p_has & 0x200000000) == 0)
  {
LABEL_128:
    if ((v75 & 0x20000000000000) == 0)
    {
      goto LABEL_129;
    }

    goto LABEL_171;
  }

LABEL_170:
  v104 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[MHSchemaMHVoiceTriggerEventInfo totalSampleCount](self, "totalSampleCount")}];
  [v3 setObject:v104 forKeyedSubscript:@"totalSampleCount"];

  v75 = *p_has;
  if ((*p_has & 0x20000000000000) == 0)
  {
LABEL_129:
    if ((v75 & 0x10000000000000) == 0)
    {
      goto LABEL_130;
    }

    goto LABEL_172;
  }

LABEL_171:
  v105 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[MHSchemaMHVoiceTriggerEventInfo totalSamplesAtEndOfCapture](self, "totalSamplesAtEndOfCapture")}];
  [v3 setObject:v105 forKeyedSubscript:@"totalSamplesAtEndOfCapture"];

  v75 = *p_has;
  if ((*p_has & 0x10000000000000) == 0)
  {
LABEL_130:
    if ((v75 & 0x8000000000000) == 0)
    {
      goto LABEL_131;
    }

    goto LABEL_173;
  }

LABEL_172:
  v106 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[MHSchemaMHVoiceTriggerEventInfo totalSamplesAtTriggerEnd](self, "totalSamplesAtTriggerEnd")}];
  [v3 setObject:v106 forKeyedSubscript:@"totalSamplesAtTriggerEnd"];

  v75 = *p_has;
  if ((*p_has & 0x8000000000000) == 0)
  {
LABEL_131:
    if ((v75 & 0x4000000000000) == 0)
    {
      goto LABEL_132;
    }

    goto LABEL_174;
  }

LABEL_173:
  v107 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[MHSchemaMHVoiceTriggerEventInfo totalSamplesAtTriggerStart](self, "totalSamplesAtTriggerStart")}];
  [v3 setObject:v107 forKeyedSubscript:@"totalSamplesAtTriggerStart"];

  v75 = *p_has;
  if ((*p_has & 0x4000000000000) == 0)
  {
LABEL_132:
    if ((v75 & 0x8000000) == 0)
    {
      goto LABEL_133;
    }

    goto LABEL_175;
  }

LABEL_174:
  v108 = MEMORY[0x1E696AD98];
  [(MHSchemaMHVoiceTriggerEventInfo *)self triggerDurationInNs];
  v109 = [v108 numberWithFloat:?];
  [v3 setObject:v109 forKeyedSubscript:@"triggerDurationInNs"];

  v75 = *p_has;
  if ((*p_has & 0x8000000) == 0)
  {
LABEL_133:
    if ((v75 & 0x1000000) == 0)
    {
      goto LABEL_134;
    }

    goto LABEL_176;
  }

LABEL_175:
  v110 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[MHSchemaMHVoiceTriggerEventInfo triggerEndNs](self, "triggerEndNs")}];
  [v3 setObject:v110 forKeyedSubscript:@"triggerEndNs"];

  v75 = *p_has;
  if ((*p_has & 0x1000000) == 0)
  {
LABEL_134:
    if ((v75 & 0x400000000000) == 0)
    {
      goto LABEL_135;
    }

    goto LABEL_177;
  }

LABEL_176:
  v111 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[MHSchemaMHVoiceTriggerEventInfo triggerEndSampleCount](self, "triggerEndSampleCount")}];
  [v3 setObject:v111 forKeyedSubscript:@"triggerEndSampleCount"];

  v75 = *p_has;
  if ((*p_has & 0x400000000000) == 0)
  {
LABEL_135:
    if ((v75 & 0x80000000000) == 0)
    {
      goto LABEL_136;
    }

    goto LABEL_178;
  }

LABEL_177:
  v112 = MEMORY[0x1E696AD98];
  [(MHSchemaMHVoiceTriggerEventInfo *)self triggerEndTime];
  v113 = [v112 numberWithDouble:?];
  [v3 setObject:v113 forKeyedSubscript:@"triggerEndTime"];

  v75 = *p_has;
  if ((*p_has & 0x80000000000) == 0)
  {
LABEL_136:
    if ((v75 & 0x4000) == 0)
    {
      goto LABEL_137;
    }

    goto LABEL_179;
  }

LABEL_178:
  v114 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[MHSchemaMHVoiceTriggerEventInfo triggerEndTimeOffsetInNs](self, "triggerEndTimeOffsetInNs")}];
  [v3 setObject:v114 forKeyedSubscript:@"triggerEndTimeOffsetInNs"];

  v75 = *p_has;
  if ((*p_has & 0x4000) == 0)
  {
LABEL_137:
    if ((v75 & 0x8000) == 0)
    {
      goto LABEL_138;
    }

    goto LABEL_180;
  }

LABEL_179:
  v115 = MEMORY[0x1E696AD98];
  [(MHSchemaMHVoiceTriggerEventInfo *)self triggerExplicitSatScore];
  v116 = [v115 numberWithFloat:?];
  [v3 setObject:v116 forKeyedSubscript:@"triggerExplicitSatScore"];

  v75 = *p_has;
  if ((*p_has & 0x8000) == 0)
  {
LABEL_138:
    if ((v75 & 0x10000000) == 0)
    {
      goto LABEL_139;
    }

    goto LABEL_181;
  }

LABEL_180:
  v117 = MEMORY[0x1E696AD98];
  [(MHSchemaMHVoiceTriggerEventInfo *)self triggerExplicitTDSRSatScore];
  v118 = [v117 numberWithFloat:?];
  [v3 setObject:v118 forKeyedSubscript:@"triggerExplicitTDSRSatScore"];

  v75 = *p_has;
  if ((*p_has & 0x10000000) == 0)
  {
LABEL_139:
    if ((v75 & 0x2000000) == 0)
    {
      goto LABEL_140;
    }

    goto LABEL_182;
  }

LABEL_181:
  v119 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[MHSchemaMHVoiceTriggerEventInfo triggerFireNs](self, "triggerFireNs")}];
  [v3 setObject:v119 forKeyedSubscript:@"triggerFireNs"];

  v75 = *p_has;
  if ((*p_has & 0x2000000) == 0)
  {
LABEL_140:
    if ((v75 & 0x100000000000) == 0)
    {
      goto LABEL_141;
    }

    goto LABEL_183;
  }

LABEL_182:
  v120 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[MHSchemaMHVoiceTriggerEventInfo triggerFireSampleCount](self, "triggerFireSampleCount")}];
  [v3 setObject:v120 forKeyedSubscript:@"triggerFireSampleCount"];

  v75 = *p_has;
  if ((*p_has & 0x100000000000) == 0)
  {
LABEL_141:
    if ((v75 & 0x800000000000) == 0)
    {
      goto LABEL_143;
    }

    goto LABEL_142;
  }

LABEL_183:
  v121 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[MHSchemaMHVoiceTriggerEventInfo triggerFireTimeOffsetInNs](self, "triggerFireTimeOffsetInNs")}];
  [v3 setObject:v121 forKeyedSubscript:@"triggerFireTimeOffsetInNs"];

  if ((*p_has & 0x800000000000) != 0)
  {
LABEL_142:
    v76 = MEMORY[0x1E696AD98];
    [(MHSchemaMHVoiceTriggerEventInfo *)self triggerFiredTime];
    v77 = [v76 numberWithDouble:?];
    [v3 setObject:v77 forKeyedSubscript:@"triggerFiredTime"];
  }

LABEL_143:
  if (self->_triggerPhrase)
  {
    v78 = [(MHSchemaMHVoiceTriggerEventInfo *)self triggerPhrase];
    v79 = [v78 copy];
    [v3 setObject:v79 forKeyedSubscript:@"triggerPhrase"];
  }

  v80 = *p_has;
  if ((*p_has & 0x400000000) != 0)
  {
    v122 = MEMORY[0x1E696AD98];
    [(MHSchemaMHVoiceTriggerEventInfo *)self triggerScore];
    v123 = [v122 numberWithFloat:?];
    [v3 setObject:v123 forKeyedSubscript:@"triggerScore"];

    v80 = *p_has;
    if ((*p_has & 0x4000000) == 0)
    {
LABEL_147:
      if ((v80 & 0x400000) == 0)
      {
        goto LABEL_148;
      }

      goto LABEL_187;
    }
  }

  else if ((v80 & 0x4000000) == 0)
  {
    goto LABEL_147;
  }

  v124 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[MHSchemaMHVoiceTriggerEventInfo triggerStartNs](self, "triggerStartNs")}];
  [v3 setObject:v124 forKeyedSubscript:@"triggerStartNs"];

  v80 = *p_has;
  if ((*p_has & 0x400000) == 0)
  {
LABEL_148:
    if ((v80 & 0x200000000000) == 0)
    {
      goto LABEL_149;
    }

    goto LABEL_188;
  }

LABEL_187:
  v125 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[MHSchemaMHVoiceTriggerEventInfo triggerStartSampleCount](self, "triggerStartSampleCount")}];
  [v3 setObject:v125 forKeyedSubscript:@"triggerStartSampleCount"];

  v80 = *p_has;
  if ((*p_has & 0x200000000000) == 0)
  {
LABEL_149:
    if ((v80 & 0x40000000000) == 0)
    {
      goto LABEL_150;
    }

    goto LABEL_189;
  }

LABEL_188:
  v126 = MEMORY[0x1E696AD98];
  [(MHSchemaMHVoiceTriggerEventInfo *)self triggerStartTime];
  v127 = [v126 numberWithDouble:?];
  [v3 setObject:v127 forKeyedSubscript:@"triggerStartTime"];

  v80 = *p_has;
  if ((*p_has & 0x40000000000) == 0)
  {
LABEL_150:
    if ((v80 & 0x200000000000000) == 0)
    {
      goto LABEL_152;
    }

    goto LABEL_151;
  }

LABEL_189:
  v128 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[MHSchemaMHVoiceTriggerEventInfo triggerStartTimeOffsetInNs](self, "triggerStartTimeOffsetInNs")}];
  [v3 setObject:v128 forKeyedSubscript:@"triggerStartTimeOffsetInNs"];

  if ((*p_has & 0x200000000000000) != 0)
  {
LABEL_151:
    v81 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[MHSchemaMHVoiceTriggerEventInfo twoShotAudibleFeedbackDelayInNs](self, "twoShotAudibleFeedbackDelayInNs")}];
    [v3 setObject:v81 forKeyedSubscript:@"twoShotAudibleFeedbackDelayInNs"];
  }

LABEL_152:
  if ((*(&self->_has + 4) & 2) != 0)
  {
    v82 = MEMORY[0x1E696AD98];
    [(MHSchemaMHVoiceTriggerEventInfo *)self uptimeInSec];
    v83 = [v82 numberWithFloat:?];
    [v3 setObject:v83 forKeyedSubscript:@"uptimeInSec"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];
  v84 = v3;

  return v3;
}

- (unint64_t)hash
{
  p_has = &self->_has;
  has = self->_has;
  if (has)
  {
    v257 = 2654435761u * self->_secondPassAnalyerStartSampleCount;
    if ((has & 2) != 0)
    {
LABEL_3:
      v256 = 2654435761u * self->_secondPassAnalyerEndSampleCount;
      if ((has & 4) != 0)
      {
        goto LABEL_4;
      }

LABEL_11:
      v11 = 0;
      goto LABEL_12;
    }
  }

  else
  {
    v257 = 0;
    if ((has & 2) != 0)
    {
      goto LABEL_3;
    }
  }

  v256 = 0;
  if ((has & 4) == 0)
  {
    goto LABEL_11;
  }

LABEL_4:
  satScore = self->_satScore;
  if (satScore >= 0.0)
  {
    v8 = satScore;
  }

  else
  {
    v8 = -satScore;
  }

  *v2.i64 = floor(v8 + 0.5);
  v9 = (v8 - *v2.i64) * 1.84467441e19;
  *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
  v10.f64[0] = NAN;
  v10.f64[1] = NAN;
  v2 = vbslq_s8(vnegq_f64(v10), v3, v2);
  v11 = 2654435761u * *v2.i64;
  if (v9 >= 0.0)
  {
    if (v9 > 0.0)
    {
      v11 += v9;
    }
  }

  else
  {
    v11 -= fabs(v9);
  }

LABEL_12:
  if ((has & 8) == 0)
  {
    v254 = 0;
    if ((has & 0x10) != 0)
    {
      goto LABEL_14;
    }

LABEL_20:
    v16 = 0;
    goto LABEL_21;
  }

  v254 = 2654435761 * self->_satNumTrainingUtterances;
  if ((has & 0x10) == 0)
  {
    goto LABEL_20;
  }

LABEL_14:
  satThreshold = self->_satThreshold;
  if (satThreshold >= 0.0)
  {
    v13 = satThreshold;
  }

  else
  {
    v13 = -satThreshold;
  }

  *v2.i64 = floor(v13 + 0.5);
  v14 = (v13 - *v2.i64) * 1.84467441e19;
  *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
  v15.f64[0] = NAN;
  v15.f64[1] = NAN;
  v2 = vbslq_s8(vnegq_f64(v15), v3, v2);
  v16 = 2654435761u * *v2.i64;
  if (v14 >= 0.0)
  {
    if (v14 > 0.0)
    {
      v16 += v14;
    }
  }

  else
  {
    v16 -= fabs(v14);
  }

LABEL_21:
  if ((has & 0x20) == 0)
  {
    v252 = 0;
    if ((has & 0x40) != 0)
    {
      goto LABEL_23;
    }

LABEL_29:
    v21 = 0;
    goto LABEL_30;
  }

  v252 = 2654435761 * self->_satTriggered;
  if ((has & 0x40) == 0)
  {
    goto LABEL_29;
  }

LABEL_23:
  tdSpeakerRecognizerScore = self->_tdSpeakerRecognizerScore;
  if (tdSpeakerRecognizerScore >= 0.0)
  {
    v18 = tdSpeakerRecognizerScore;
  }

  else
  {
    v18 = -tdSpeakerRecognizerScore;
  }

  *v2.i64 = floor(v18 + 0.5);
  v19 = (v18 - *v2.i64) * 1.84467441e19;
  *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
  v20.f64[0] = NAN;
  v20.f64[1] = NAN;
  v2 = vbslq_s8(vnegq_f64(v20), v3, v2);
  v21 = 2654435761u * *v2.i64;
  if (v19 >= 0.0)
  {
    if (v19 > 0.0)
    {
      v21 += v19;
    }
  }

  else
  {
    v21 -= fabs(v19);
  }

LABEL_30:
  if ((has & 0x80) != 0)
  {
    tdSpeakerRecognizerCombinedScore = self->_tdSpeakerRecognizerCombinedScore;
    if (tdSpeakerRecognizerCombinedScore >= 0.0)
    {
      v24 = tdSpeakerRecognizerCombinedScore;
    }

    else
    {
      v24 = -tdSpeakerRecognizerCombinedScore;
    }

    *v2.i64 = floor(v24 + 0.5);
    v25 = (v24 - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v26.f64[0] = NAN;
    v26.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v26), v3, v2);
    v22 = 2654435761u * *v2.i64;
    if (v25 >= 0.0)
    {
      if (v25 > 0.0)
      {
        v22 += v25;
      }
    }

    else
    {
      v22 -= fabs(v25);
    }
  }

  else
  {
    v22 = 0;
  }

  if ((has & 0x100) != 0)
  {
    tdSpeakerRecognizerCombinedThreshold = self->_tdSpeakerRecognizerCombinedThreshold;
    if (tdSpeakerRecognizerCombinedThreshold >= 0.0)
    {
      v29 = tdSpeakerRecognizerCombinedThreshold;
    }

    else
    {
      v29 = -tdSpeakerRecognizerCombinedThreshold;
    }

    *v2.i64 = floor(v29 + 0.5);
    v30 = (v29 - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v31.f64[0] = NAN;
    v31.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v31), v3, v2);
    v27 = 2654435761u * *v2.i64;
    if (v30 >= 0.0)
    {
      if (v30 > 0.0)
      {
        v27 += v30;
      }
    }

    else
    {
      v27 -= fabs(v30);
    }
  }

  else
  {
    v27 = 0;
  }

  if ((has & 0x200) != 0)
  {
    tdSpeakerRecognizerCombinationWeight = self->_tdSpeakerRecognizerCombinationWeight;
    if (tdSpeakerRecognizerCombinationWeight >= 0.0)
    {
      v34 = tdSpeakerRecognizerCombinationWeight;
    }

    else
    {
      v34 = -tdSpeakerRecognizerCombinationWeight;
    }

    *v2.i64 = floor(v34 + 0.5);
    v35 = (v34 - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v36.f64[0] = NAN;
    v36.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v36), v3, v2);
    v32 = 2654435761u * *v2.i64;
    if (v35 >= 0.0)
    {
      if (v35 > 0.0)
      {
        v32 += v35;
      }
    }

    else
    {
      v32 -= fabs(v35);
    }
  }

  else
  {
    v32 = 0;
  }

  if ((has & 0x400) != 0)
  {
    v247 = 2654435761 * self->_biometricClue;
    if ((has & 0x800) != 0)
    {
LABEL_65:
      v246 = 2654435761 * self->_satBeingTrained;
      if ((has & 0x1000) != 0)
      {
        goto LABEL_66;
      }

      goto LABEL_75;
    }
  }

  else
  {
    v247 = 0;
    if ((has & 0x800) != 0)
    {
      goto LABEL_65;
    }
  }

  v246 = 0;
  if ((has & 0x1000) != 0)
  {
LABEL_66:
    v245 = 2654435761 * self->_lastConsecutivePHSRejects;
    if ((has & 0x2000) != 0)
    {
      goto LABEL_67;
    }

    goto LABEL_76;
  }

LABEL_75:
  v245 = 0;
  if ((has & 0x2000) != 0)
  {
LABEL_67:
    v244 = 2654435761u * self->_deltaTimeInNsFromlastPHSReject;
    if ((has & 0x4000) != 0)
    {
      goto LABEL_68;
    }

LABEL_77:
    v41 = 0;
    goto LABEL_78;
  }

LABEL_76:
  v244 = 0;
  if ((has & 0x4000) == 0)
  {
    goto LABEL_77;
  }

LABEL_68:
  triggerExplicitSatScore = self->_triggerExplicitSatScore;
  if (triggerExplicitSatScore >= 0.0)
  {
    v38 = triggerExplicitSatScore;
  }

  else
  {
    v38 = -triggerExplicitSatScore;
  }

  *v2.i64 = floor(v38 + 0.5);
  v39 = (v38 - *v2.i64) * 1.84467441e19;
  *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
  v40.f64[0] = NAN;
  v40.f64[1] = NAN;
  v2 = vbslq_s8(vnegq_f64(v40), v3, v2);
  v41 = 2654435761u * *v2.i64;
  if (v39 >= 0.0)
  {
    if (v39 > 0.0)
    {
      v41 += v39;
    }
  }

  else
  {
    v41 -= fabs(v39);
  }

LABEL_78:
  if ((has & 0x8000) != 0)
  {
    triggerExplicitTDSRSatScore = self->_triggerExplicitTDSRSatScore;
    if (triggerExplicitTDSRSatScore >= 0.0)
    {
      v44 = triggerExplicitTDSRSatScore;
    }

    else
    {
      v44 = -triggerExplicitTDSRSatScore;
    }

    *v2.i64 = floor(v44 + 0.5);
    v45 = (v44 - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v46.f64[0] = NAN;
    v46.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v46), v3, v2);
    v42 = 2654435761u * *v2.i64;
    if (v45 >= 0.0)
    {
      if (v45 > 0.0)
      {
        v42 += v45;
      }
    }

    else
    {
      v42 -= fabs(v45);
    }
  }

  else
  {
    v42 = 0;
  }

  if ((has & 0x10000) != 0)
  {
    shadowMicScore = self->_shadowMicScore;
    if (shadowMicScore >= 0.0)
    {
      v49 = shadowMicScore;
    }

    else
    {
      v49 = -shadowMicScore;
    }

    *v2.i64 = floor(v49 + 0.5);
    v50 = (v49 - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v51.f64[0] = NAN;
    v51.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v51), v3, v2);
    v47 = 2654435761u * *v2.i64;
    if (v50 >= 0.0)
    {
      if (v50 > 0.0)
      {
        v47 += v50;
      }
    }

    else
    {
      v47 -= fabs(v50);
    }
  }

  else
  {
    v47 = 0;
  }

  if ((has & 0x20000) != 0)
  {
    shadowMicScoreThresholdForVAD = self->_shadowMicScoreThresholdForVAD;
    if (shadowMicScoreThresholdForVAD >= 0.0)
    {
      v54 = shadowMicScoreThresholdForVAD;
    }

    else
    {
      v54 = -shadowMicScoreThresholdForVAD;
    }

    *v2.i64 = floor(v54 + 0.5);
    v55 = (v54 - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v56.f64[0] = NAN;
    v56.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v56), v3, v2);
    v52 = 2654435761u * *v2.i64;
    if (v55 >= 0.0)
    {
      if (v55 > 0.0)
      {
        v52 += v55;
      }
    }

    else
    {
      v52 -= fabs(v55);
    }
  }

  else
  {
    v52 = 0;
  }

  if ((has & 0x40000) != 0)
  {
    remoteMicVADScore = self->_remoteMicVADScore;
    if (remoteMicVADScore >= 0.0)
    {
      v59 = remoteMicVADScore;
    }

    else
    {
      v59 = -remoteMicVADScore;
    }

    *v2.i64 = floor(v59 + 0.5);
    v60 = (v59 - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v61.f64[0] = NAN;
    v61.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v61), v3, v2);
    v57 = 2654435761u * *v2.i64;
    if (v60 >= 0.0)
    {
      if (v60 > 0.0)
      {
        v57 += v60;
      }
    }

    else
    {
      v57 -= fabs(v60);
    }
  }

  else
  {
    v57 = 0;
  }

  if ((has & 0x80000) != 0)
  {
    remoteMicVADThreshold = self->_remoteMicVADThreshold;
    if (remoteMicVADThreshold >= 0.0)
    {
      v64 = remoteMicVADThreshold;
    }

    else
    {
      v64 = -remoteMicVADThreshold;
    }

    *v2.i64 = floor(v64 + 0.5);
    v65 = (v64 - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v66.f64[0] = NAN;
    v66.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v66), v3, v2);
    v62 = 2654435761u * *v2.i64;
    if (v65 >= 0.0)
    {
      if (v65 > 0.0)
      {
        v62 += v65;
      }
    }

    else
    {
      v62 -= fabs(v65);
    }
  }

  else
  {
    v62 = 0;
  }

  if ((has & 0x100000) != 0)
  {
    remoteMicVADMyriadThreshold = self->_remoteMicVADMyriadThreshold;
    if (remoteMicVADMyriadThreshold >= 0.0)
    {
      v69 = remoteMicVADMyriadThreshold;
    }

    else
    {
      v69 = -remoteMicVADMyriadThreshold;
    }

    *v2.i64 = floor(v69 + 0.5);
    v70 = (v69 - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v71.f64[0] = NAN;
    v71.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v71), v3, v2);
    v67 = 2654435761u * *v2.i64;
    if (v70 >= 0.0)
    {
      if (v70 > 0.0)
      {
        v67 += v70;
      }
    }

    else
    {
      v67 -= fabs(v70);
    }
  }

  else
  {
    v67 = 0;
  }

  if ((has & 0x200000) != 0)
  {
    v236 = 2654435761 * self->_enhancedCarplayTriggerMode;
    if ((has & 0x400000) != 0)
    {
LABEL_136:
      v235 = 2654435761u * self->_triggerStartSampleCount;
      if ((has & 0x800000) != 0)
      {
        goto LABEL_137;
      }

      goto LABEL_155;
    }
  }

  else
  {
    v236 = 0;
    if ((has & 0x400000) != 0)
    {
      goto LABEL_136;
    }
  }

  v235 = 0;
  if ((has & 0x800000) != 0)
  {
LABEL_137:
    v234 = 2654435761u * self->_clientStartSampleCount;
    if ((has & 0x1000000) != 0)
    {
      goto LABEL_138;
    }

    goto LABEL_156;
  }

LABEL_155:
  v234 = 0;
  if ((has & 0x1000000) != 0)
  {
LABEL_138:
    v233 = 2654435761u * self->_triggerEndSampleCount;
    if ((has & 0x2000000) != 0)
    {
      goto LABEL_139;
    }

    goto LABEL_157;
  }

LABEL_156:
  v233 = 0;
  if ((has & 0x2000000) != 0)
  {
LABEL_139:
    v232 = 2654435761u * self->_triggerFireSampleCount;
    if ((has & 0x4000000) != 0)
    {
      goto LABEL_140;
    }

    goto LABEL_158;
  }

LABEL_157:
  v232 = 0;
  if ((has & 0x4000000) != 0)
  {
LABEL_140:
    v231 = 2654435761u * self->_triggerStartNs;
    if ((has & 0x8000000) != 0)
    {
      goto LABEL_141;
    }

    goto LABEL_159;
  }

LABEL_158:
  v231 = 0;
  if ((has & 0x8000000) != 0)
  {
LABEL_141:
    v230 = 2654435761u * self->_triggerEndNs;
    if ((has & 0x10000000) != 0)
    {
      goto LABEL_142;
    }

    goto LABEL_160;
  }

LABEL_159:
  v230 = 0;
  if ((has & 0x10000000) != 0)
  {
LABEL_142:
    v229 = 2654435761u * self->_triggerFireNs;
    if ((has & 0x20000000) != 0)
    {
      goto LABEL_143;
    }

    goto LABEL_161;
  }

LABEL_160:
  v229 = 0;
  if ((has & 0x20000000) != 0)
  {
LABEL_143:
    v228 = 2654435761u * self->_extraSamplesAtStart;
    if ((has & 0x40000000) != 0)
    {
      goto LABEL_144;
    }

    goto LABEL_162;
  }

LABEL_161:
  v228 = 0;
  if ((has & 0x40000000) != 0)
  {
LABEL_144:
    v227 = 2654435761u * self->_analyzerPrependingSamples;
    if ((has & 0x80000000) != 0)
    {
      goto LABEL_145;
    }

    goto LABEL_163;
  }

LABEL_162:
  v227 = 0;
  if ((has & 0x80000000) != 0)
  {
LABEL_145:
    v226 = 2654435761u * self->_analyzerTrailingSamples;
    if ((has & 0x100000000) != 0)
    {
      goto LABEL_146;
    }

    goto LABEL_164;
  }

LABEL_163:
  v226 = 0;
  if ((has & 0x100000000) != 0)
  {
LABEL_146:
    v225 = 2654435761 * self->_isTriggerEvent;
    if ((has & 0x200000000) != 0)
    {
      goto LABEL_147;
    }

    goto LABEL_165;
  }

LABEL_164:
  v225 = 0;
  if ((has & 0x200000000) != 0)
  {
LABEL_147:
    v224 = 2654435761u * self->_totalSampleCount;
    if ((has & 0x400000000) != 0)
    {
      goto LABEL_148;
    }

LABEL_166:
    v76 = 0;
    goto LABEL_167;
  }

LABEL_165:
  v224 = 0;
  if ((has & 0x400000000) == 0)
  {
    goto LABEL_166;
  }

LABEL_148:
  triggerScore = self->_triggerScore;
  if (triggerScore >= 0.0)
  {
    v73 = triggerScore;
  }

  else
  {
    v73 = -triggerScore;
  }

  *v2.i64 = floor(v73 + 0.5);
  v74 = (v73 - *v2.i64) * 1.84467441e19;
  *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
  v75.f64[0] = NAN;
  v75.f64[1] = NAN;
  v2 = vbslq_s8(vnegq_f64(v75), v3, v2);
  v76 = 2654435761u * *v2.i64;
  if (v74 >= 0.0)
  {
    if (v74 > 0.0)
    {
      v76 += v74;
    }
  }

  else
  {
    v76 -= fabs(v74);
  }

LABEL_167:
  if ((has & 0x800000000) == 0)
  {
    v222 = 0;
    if ((has & 0x1000000000) != 0)
    {
      goto LABEL_169;
    }

LABEL_175:
    v81 = 0;
    goto LABEL_176;
  }

  v222 = 2654435761 * self->_isMaximized;
  if ((has & 0x1000000000) == 0)
  {
    goto LABEL_175;
  }

LABEL_169:
  effectiveThreshold = self->_effectiveThreshold;
  if (effectiveThreshold >= 0.0)
  {
    v78 = effectiveThreshold;
  }

  else
  {
    v78 = -effectiveThreshold;
  }

  *v2.i64 = floor(v78 + 0.5);
  v79 = (v78 - *v2.i64) * 1.84467441e19;
  *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
  v80.f64[0] = NAN;
  v80.f64[1] = NAN;
  v2 = vbslq_s8(vnegq_f64(v80), v3, v2);
  v81 = 2654435761u * *v2.i64;
  if (v79 >= 0.0)
  {
    if (v79 > 0.0)
    {
      v81 += v79;
    }
  }

  else
  {
    v81 -= fabs(v79);
  }

LABEL_176:
  if ((has & 0x2000000000) != 0)
  {
    recognizerScore = self->_recognizerScore;
    if (recognizerScore >= 0.0)
    {
      v84 = recognizerScore;
    }

    else
    {
      v84 = -recognizerScore;
    }

    *v2.i64 = floor(v84 + 0.5);
    v85 = (v84 - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v86.f64[0] = NAN;
    v86.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v86), v3, v2);
    v82 = 2654435761u * *v2.i64;
    if (v85 >= 0.0)
    {
      if (v85 > 0.0)
      {
        v82 += v85;
      }
    }

    else
    {
      v82 -= fabs(v85);
    }
  }

  else
  {
    v82 = 0;
  }

  if ((has & 0x4000000000) != 0)
  {
    recognizerThresholdOffset = self->_recognizerThresholdOffset;
    if (recognizerThresholdOffset >= 0.0)
    {
      v89 = recognizerThresholdOffset;
    }

    else
    {
      v89 = -recognizerThresholdOffset;
    }

    *v2.i64 = floor(v89 + 0.5);
    v90 = (v89 - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v91.f64[0] = NAN;
    v91.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v91), v3, v2);
    v87 = 2654435761u * *v2.i64;
    if (v90 >= 0.0)
    {
      if (v90 > 0.0)
      {
        v87 += v90;
      }
    }

    else
    {
      v87 -= fabs(v90);
    }
  }

  else
  {
    v87 = 0;
  }

  if ((has & 0x8000000000) == 0)
  {
    v219 = 0;
    if ((has & 0x10000000000) != 0)
    {
      goto LABEL_200;
    }

LABEL_206:
    v96 = 0;
    goto LABEL_207;
  }

  v219 = 2654435761u * self->_recognizerWaitTimeInNs;
  if ((has & 0x10000000000) == 0)
  {
    goto LABEL_206;
  }

LABEL_200:
  recognizerScaleFactor = self->_recognizerScaleFactor;
  if (recognizerScaleFactor >= 0.0)
  {
    v93 = recognizerScaleFactor;
  }

  else
  {
    v93 = -recognizerScaleFactor;
  }

  *v2.i64 = floor(v93 + 0.5);
  v94 = (v93 - *v2.i64) * 1.84467441e19;
  *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
  v95.f64[0] = NAN;
  v95.f64[1] = NAN;
  v2 = vbslq_s8(vnegq_f64(v95), v3, v2);
  v96 = 2654435761u * *v2.i64;
  if (v94 >= 0.0)
  {
    if (v94 > 0.0)
    {
      v96 += v94;
    }
  }

  else
  {
    v96 -= fabs(v94);
  }

LABEL_207:
  if ((has & 0x20000000000) != 0)
  {
    threshold = self->_threshold;
    if (threshold >= 0.0)
    {
      v99 = threshold;
    }

    else
    {
      v99 = -threshold;
    }

    *v2.i64 = floor(v99 + 0.5);
    v100 = (v99 - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v101.f64[0] = NAN;
    v101.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v101), v3, v2);
    v97 = 2654435761u * *v2.i64;
    if (v100 >= 0.0)
    {
      if (v100 > 0.0)
      {
        v97 += v100;
      }
    }

    else
    {
      v97 -= fabs(v100);
    }
  }

  else
  {
    v97 = 0;
  }

  if ((has & 0x40000000000) != 0)
  {
    v218 = 2654435761u * self->_triggerStartTimeOffsetInNs;
    if ((has & 0x80000000000) != 0)
    {
LABEL_220:
      v217 = 2654435761u * self->_triggerEndTimeOffsetInNs;
      if ((has & 0x100000000000) != 0)
      {
        goto LABEL_221;
      }

LABEL_228:
      v216 = 0;
      if ((has & 0x200000000000) != 0)
      {
        goto LABEL_222;
      }

LABEL_229:
      v105 = 0;
      goto LABEL_230;
    }
  }

  else
  {
    v218 = 0;
    if ((has & 0x80000000000) != 0)
    {
      goto LABEL_220;
    }
  }

  v217 = 0;
  if ((has & 0x100000000000) == 0)
  {
    goto LABEL_228;
  }

LABEL_221:
  v216 = 2654435761u * self->_triggerFireTimeOffsetInNs;
  if ((has & 0x200000000000) == 0)
  {
    goto LABEL_229;
  }

LABEL_222:
  triggerStartTime = self->_triggerStartTime;
  if (triggerStartTime < 0.0)
  {
    triggerStartTime = -triggerStartTime;
  }

  *v2.i64 = floor(triggerStartTime + 0.5);
  v103 = (triggerStartTime - *v2.i64) * 1.84467441e19;
  *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
  v104.f64[0] = NAN;
  v104.f64[1] = NAN;
  v2 = vbslq_s8(vnegq_f64(v104), v3, v2);
  v105 = 2654435761u * *v2.i64;
  if (v103 >= 0.0)
  {
    if (v103 > 0.0)
    {
      v105 += v103;
    }
  }

  else
  {
    v105 -= fabs(v103);
  }

LABEL_230:
  if ((has & 0x400000000000) != 0)
  {
    triggerEndTime = self->_triggerEndTime;
    if (triggerEndTime < 0.0)
    {
      triggerEndTime = -triggerEndTime;
    }

    *v2.i64 = floor(triggerEndTime + 0.5);
    v108 = (triggerEndTime - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v109.f64[0] = NAN;
    v109.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v109), v3, v2);
    v106 = 2654435761u * *v2.i64;
    if (v108 >= 0.0)
    {
      if (v108 > 0.0)
      {
        v106 += v108;
      }
    }

    else
    {
      v106 -= fabs(v108);
    }
  }

  else
  {
    v106 = 0;
  }

  if ((has & 0x800000000000) != 0)
  {
    triggerFiredTime = self->_triggerFiredTime;
    if (triggerFiredTime < 0.0)
    {
      triggerFiredTime = -triggerFiredTime;
    }

    *v2.i64 = floor(triggerFiredTime + 0.5);
    v112 = (triggerFiredTime - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v113.f64[0] = NAN;
    v113.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v113), v3, v2);
    v110 = 2654435761u * *v2.i64;
    if (v112 >= 0.0)
    {
      if (v112 > 0.0)
      {
        v110 += v112;
      }
    }

    else
    {
      v110 -= fabs(v112);
    }
  }

  else
  {
    v110 = 0;
  }

  if ((has & 0x1000000000000) != 0)
  {
    v214 = 2654435761 * self->_hardwareSamplerate;
    if ((has & 0x2000000000000) != 0)
    {
LABEL_250:
      v213 = 2654435761 * self->_isContinuous;
      if ((has & 0x4000000000000) != 0)
      {
        goto LABEL_251;
      }

LABEL_258:
      v118 = 0;
      goto LABEL_259;
    }
  }

  else
  {
    v214 = 0;
    if ((has & 0x2000000000000) != 0)
    {
      goto LABEL_250;
    }
  }

  v213 = 0;
  if ((has & 0x4000000000000) == 0)
  {
    goto LABEL_258;
  }

LABEL_251:
  triggerDurationInNs = self->_triggerDurationInNs;
  if (triggerDurationInNs >= 0.0)
  {
    v115 = triggerDurationInNs;
  }

  else
  {
    v115 = -triggerDurationInNs;
  }

  *v2.i64 = floor(v115 + 0.5);
  v116 = (v115 - *v2.i64) * 1.84467441e19;
  *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
  v117.f64[0] = NAN;
  v117.f64[1] = NAN;
  v118 = 2654435761u * *vbslq_s8(vnegq_f64(v117), v3, v2).i64;
  if (v116 >= 0.0)
  {
    if (v116 > 0.0)
    {
      v118 += v116;
    }
  }

  else
  {
    v118 -= fabs(v116);
  }

LABEL_259:
  if ((has & 0x8000000000000) != 0)
  {
    v211 = 2654435761u * self->_totalSamplesAtTriggerStart;
    if ((has & 0x10000000000000) != 0)
    {
      goto LABEL_261;
    }
  }

  else
  {
    v211 = 0;
    if ((has & 0x10000000000000) != 0)
    {
LABEL_261:
      v210 = 2654435761u * self->_totalSamplesAtTriggerEnd;
      goto LABEL_264;
    }
  }

  v210 = 0;
LABEL_264:
  v255 = v11;
  v253 = v16;
  v250 = v22;
  v251 = v21;
  v248 = v32;
  v249 = v27;
  v242 = v42;
  v243 = v41;
  v240 = v52;
  v241 = v47;
  v238 = v62;
  v239 = v57;
  v237 = v67;
  v223 = v76;
  v220 = v82;
  v221 = v81;
  if ((has & 0x20000000000000) != 0)
  {
    v209 = 2654435761u * self->_totalSamplesAtEndOfCapture;
  }

  else
  {
    v209 = 0;
  }

  v208 = [(NSString *)self->_configVersion hash];
  v207 = [(NSString *)self->_configPath hash];
  v121 = *p_has;
  if ((*p_has & 0x40000000000000) != 0)
  {
    v206 = 2654435761 * self->_isSecondChance;
    if ((v121 & 0x80000000000000) != 0)
    {
LABEL_269:
      v205 = 2654435761 * self->_deviceHandheld;
      if ((v121 & 0x100000000000000) != 0)
      {
        goto LABEL_270;
      }

      goto LABEL_279;
    }
  }

  else
  {
    v206 = 0;
    if ((v121 & 0x80000000000000) != 0)
    {
      goto LABEL_269;
    }
  }

  v205 = 0;
  if ((v121 & 0x100000000000000) != 0)
  {
LABEL_270:
    v204 = 2654435761 * self->_activeChannel;
    if ((v121 & 0x200000000000000) != 0)
    {
      goto LABEL_271;
    }

    goto LABEL_280;
  }

LABEL_279:
  v204 = 0;
  if ((v121 & 0x200000000000000) != 0)
  {
LABEL_271:
    v203 = 2654435761u * self->_twoShotAudibleFeedbackDelayInNs;
    if ((v121 & 0x400000000000000) != 0)
    {
      goto LABEL_272;
    }

LABEL_281:
    v126 = 0;
    goto LABEL_282;
  }

LABEL_280:
  v203 = 0;
  if ((v121 & 0x400000000000000) == 0)
  {
    goto LABEL_281;
  }

LABEL_272:
  cumulativeUptimeInSec = self->_cumulativeUptimeInSec;
  if (cumulativeUptimeInSec >= 0.0)
  {
    v123 = cumulativeUptimeInSec;
  }

  else
  {
    v123 = -cumulativeUptimeInSec;
  }

  *v119.i64 = floor(v123 + 0.5);
  v124 = (v123 - *v119.i64) * 1.84467441e19;
  *v120.i64 = *v119.i64 - trunc(*v119.i64 * 5.42101086e-20) * 1.84467441e19;
  v125.f64[0] = NAN;
  v125.f64[1] = NAN;
  v119 = vbslq_s8(vnegq_f64(v125), v120, v119);
  v126 = 2654435761u * *v119.i64;
  if (v124 >= 0.0)
  {
    if (v124 > 0.0)
    {
      v126 += v124;
    }
  }

  else
  {
    v126 -= fabs(v124);
  }

LABEL_282:
  if ((v121 & 0x800000000000000) != 0)
  {
    cumulativeDowntimeInSec = self->_cumulativeDowntimeInSec;
    if (cumulativeDowntimeInSec >= 0.0)
    {
      v129 = cumulativeDowntimeInSec;
    }

    else
    {
      v129 = -cumulativeDowntimeInSec;
    }

    *v119.i64 = floor(v129 + 0.5);
    v130 = (v129 - *v119.i64) * 1.84467441e19;
    *v120.i64 = *v119.i64 - trunc(*v119.i64 * 5.42101086e-20) * 1.84467441e19;
    v131.f64[0] = NAN;
    v131.f64[1] = NAN;
    v119 = vbslq_s8(vnegq_f64(v131), v120, v119);
    v127 = 2654435761u * *v119.i64;
    if (v130 >= 0.0)
    {
      if (v130 > 0.0)
      {
        v127 += v130;
      }
    }

    else
    {
      v127 -= fabs(v130);
    }
  }

  else
  {
    v127 = 0;
  }

  if ((v121 & 0x1000000000000000) != 0)
  {
    v200 = 2654435761 * self->_hostPowerStateAtTrigger;
    if ((v121 & 0x2000000000000000) != 0)
    {
      goto LABEL_297;
    }
  }

  else
  {
    v200 = 0;
    if ((v121 & 0x2000000000000000) != 0)
    {
LABEL_297:
      v199 = 2654435761 * self->_isMediaPlaying;
      goto LABEL_300;
    }
  }

  v199 = 0;
LABEL_300:
  v201 = v127;
  v202 = v126;
  if ((v121 & 0x4000000000000000) != 0)
  {
    mediaVolume = self->_mediaVolume;
    if (mediaVolume >= 0.0)
    {
      v134 = mediaVolume;
    }

    else
    {
      v134 = -mediaVolume;
    }

    *v119.i64 = floor(v134 + 0.5);
    v135 = (v134 - *v119.i64) * 1.84467441e19;
    *v120.i64 = *v119.i64 - trunc(*v119.i64 * 5.42101086e-20) * 1.84467441e19;
    v136.f64[0] = NAN;
    v136.f64[1] = NAN;
    v132 = 2654435761u * *vbslq_s8(vnegq_f64(v136), v120, v119).i64;
    if (v135 >= 0.0)
    {
      if (v135 > 0.0)
      {
        v132 += v135;
      }
    }

    else
    {
      v132 -= fabs(v135);
    }
  }

  else
  {
    v132 = 0;
  }

  v198 = v132;
  v197 = [(SISchemaUUID *)self->_audioProviderUUID hash];
  if ((*p_has & 0x8000000000000000) != 0)
  {
    v196 = 2654435761 * self->_onBatteryPower;
  }

  else
  {
    v196 = 0;
  }

  v139 = *(p_has + 4);
  if ((v139 & 1) == 0)
  {
    v195 = 0;
    if ((v139 & 2) != 0)
    {
      goto LABEL_314;
    }

LABEL_320:
    v144 = 0;
    goto LABEL_321;
  }

  v195 = 2654435761 * self->_didWakeAP;
  if ((v139 & 2) == 0)
  {
    goto LABEL_320;
  }

LABEL_314:
  uptimeInSec = self->_uptimeInSec;
  if (uptimeInSec >= 0.0)
  {
    v141 = uptimeInSec;
  }

  else
  {
    v141 = -uptimeInSec;
  }

  *v137.i64 = floor(v141 + 0.5);
  v142 = (v141 - *v137.i64) * 1.84467441e19;
  *v138.i64 = *v137.i64 - trunc(*v137.i64 * 5.42101086e-20) * 1.84467441e19;
  v143.f64[0] = NAN;
  v143.f64[1] = NAN;
  v137 = vbslq_s8(vnegq_f64(v143), v138, v137);
  v144 = 2654435761u * *v137.i64;
  if (v142 >= 0.0)
  {
    if (v142 > 0.0)
    {
      v144 += v142;
    }
  }

  else
  {
    v144 -= fabs(v142);
  }

LABEL_321:
  if ((v139 & 4) != 0)
  {
    downtimeInSec = self->_downtimeInSec;
    if (downtimeInSec >= 0.0)
    {
      v147 = downtimeInSec;
    }

    else
    {
      v147 = -downtimeInSec;
    }

    *v137.i64 = floor(v147 + 0.5);
    v148 = (v147 - *v137.i64) * 1.84467441e19;
    *v138.i64 = *v137.i64 - trunc(*v137.i64 * 5.42101086e-20) * 1.84467441e19;
    v149.f64[0] = NAN;
    v149.f64[1] = NAN;
    v145 = 2654435761u * *vbslq_s8(vnegq_f64(v149), v138, v137).i64;
    if (v148 >= 0.0)
    {
      if (v148 > 0.0)
      {
        v145 += v148;
      }
    }

    else
    {
      v145 -= fabs(v148);
    }
  }

  else
  {
    v145 = 0;
  }

  v193 = v145;
  v194 = v144;
  if ((v139 & 8) != 0)
  {
    v192 = 2654435761 * self->_lastConsecutiveVTRejects;
  }

  else
  {
    v192 = 0;
  }

  v191 = [(NSString *)self->_captureFilePath hash];
  v190 = [(NSString *)self->_configDataHash hash];
  v150 = *(p_has + 4);
  if ((v150 & 0x10) != 0)
  {
    v189 = 2654435761 * self->_siriIsActiveOrOtherAssertion;
    if ((v150 & 0x20) != 0)
    {
LABEL_337:
      v188 = 2654435761 * self->_didAudioStall;
      if ((v150 & 0x40) != 0)
      {
        goto LABEL_338;
      }

      goto LABEL_346;
    }
  }

  else
  {
    v189 = 0;
    if ((v150 & 0x20) != 0)
    {
      goto LABEL_337;
    }
  }

  v188 = 0;
  if ((v150 & 0x40) != 0)
  {
LABEL_338:
    v187 = 2654435761 * self->_isBargeIn;
    if ((v150 & 0x80) != 0)
    {
      goto LABEL_339;
    }

    goto LABEL_347;
  }

LABEL_346:
  v187 = 0;
  if ((v150 & 0x80) != 0)
  {
LABEL_339:
    v186 = 2654435761 * self->_isWakeFromSleep;
    if ((*(p_has + 4) & 0x100) != 0)
    {
      goto LABEL_340;
    }

    goto LABEL_348;
  }

LABEL_347:
  v186 = 0;
  if ((*(p_has + 4) & 0x100) != 0)
  {
LABEL_340:
    v185 = 2654435761u * self->_secondPassAssetQueryStartTimeInNs;
    if ((*(p_has + 4) & 0x200) != 0)
    {
      goto LABEL_341;
    }

    goto LABEL_349;
  }

LABEL_348:
  v185 = 0;
  if ((*(p_has + 4) & 0x200) != 0)
  {
LABEL_341:
    v184 = 2654435761u * self->_secondPassAssetQueryCompleteTimeInNs;
    if ((*(p_has + 4) & 0x400) != 0)
    {
      goto LABEL_342;
    }

LABEL_350:
    v183 = 0;
    if ((*(p_has + 4) & 0x800) != 0)
    {
      goto LABEL_343;
    }

    goto LABEL_351;
  }

LABEL_349:
  v184 = 0;
  if ((*(p_has + 4) & 0x400) == 0)
  {
    goto LABEL_350;
  }

LABEL_342:
  v183 = 2654435761u * self->_secondPassAssetLoadStartTimeInNs;
  if ((*(p_has + 4) & 0x800) != 0)
  {
LABEL_343:
    v182 = 2654435761u * self->_secondPassAssetLoadCompleteTimeInNs;
    goto LABEL_352;
  }

LABEL_351:
  v182 = 0;
LABEL_352:
  v215 = v96;
  if ((*(p_has + 4) & 0x1000) != 0)
  {
    v181 = 2654435761u * self->_secondPassAudioStreamStartTimeInNs;
  }

  else
  {
    v181 = 0;
  }

  v212 = v87;
  if ((*(p_has + 4) & 0x2000) == 0)
  {
    v180 = 0;
    if ((*(p_has + 4) & 0x4000) != 0)
    {
      goto LABEL_357;
    }

LABEL_360:
    v179 = 0;
    if ((*(p_has + 4) & 0x8000) != 0)
    {
      goto LABEL_358;
    }

    goto LABEL_361;
  }

  v180 = 2654435761u * self->_secondPassAudioStreamReadyTimeInNs;
  if ((*(p_has + 4) & 0x4000) == 0)
  {
    goto LABEL_360;
  }

LABEL_357:
  v179 = 2654435761u * self->_secondPassFirstAudioPacketReceptionTimeInNs;
  if ((*(p_has + 4) & 0x8000) != 0)
  {
LABEL_358:
    v178 = 2654435761u * self->_secondPassLastAudioPacketReceptionTimeInNs;
    goto LABEL_362;
  }

LABEL_361:
  v178 = 0;
LABEL_362:
  if (*(p_has + 10))
  {
    v151 = 2654435761u * self->_secondPassCheckerModelKeywordDetectionStartTimeInNs;
    if ((*(p_has + 10) & 2) != 0)
    {
      goto LABEL_364;
    }
  }

  else
  {
    v151 = 0;
    if ((*(p_has + 10) & 2) != 0)
    {
LABEL_364:
      v152 = 2654435761u * self->_secondPassCheckerModelKeywordDetectionEndTimeInNs;
      goto LABEL_367;
    }
  }

  v152 = 0;
LABEL_367:
  v153 = [(NSString *)self->_triggerPhrase hash];
  if ((*(p_has + 10) & 4) != 0)
  {
    lastDisplayWakeTimeOffsetInNs = self->_lastDisplayWakeTimeOffsetInNs;
    if (lastDisplayWakeTimeOffsetInNs < 0.0)
    {
      lastDisplayWakeTimeOffsetInNs = -lastDisplayWakeTimeOffsetInNs;
    }

    *v154.i64 = floor(lastDisplayWakeTimeOffsetInNs + 0.5);
    v168 = (lastDisplayWakeTimeOffsetInNs - *v154.i64) * 1.84467441e19;
    *v155.i64 = *v154.i64 - trunc(*v154.i64 * 5.42101086e-20) * 1.84467441e19;
    v169.f64[0] = NAN;
    v169.f64[1] = NAN;
    v154 = vbslq_s8(vnegq_f64(v169), v155, v154);
    v156 = 2654435761u * *v154.i64;
    v157 = v248;
    v159 = v242;
    v158 = v243;
    v161 = v239;
    v160 = v240;
    v163 = v237;
    v162 = v238;
    v164 = v223;
    v166 = v220;
    v165 = v221;
    if (v168 >= 0.0)
    {
      if (v168 > 0.0)
      {
        v156 += v168;
      }
    }

    else
    {
      v156 -= fabs(v168);
    }
  }

  else
  {
    v156 = 0;
    v157 = v248;
    v159 = v242;
    v158 = v243;
    v161 = v239;
    v160 = v240;
    v163 = v237;
    v162 = v238;
    v164 = v223;
    v166 = v220;
    v165 = v221;
  }

  if ((*(p_has + 10) & 8) == 0)
  {
    v170 = 0;
    if ((*(p_has + 10) & 0x10) != 0)
    {
      goto LABEL_377;
    }

LABEL_384:
    v171 = 0;
    if ((*(p_has + 10) & 0x20) != 0)
    {
      goto LABEL_378;
    }

LABEL_385:
    v176 = 0;
    return v256 ^ v257 ^ v255 ^ v254 ^ v253 ^ v252 ^ v251 ^ v250 ^ v249 ^ v157 ^ v247 ^ v246 ^ v245 ^ v244 ^ v158 ^ v159 ^ v241 ^ v160 ^ v161 ^ v162 ^ v163 ^ v236 ^ v235 ^ v234 ^ v233 ^ v232 ^ v231 ^ v230 ^ v229 ^ v228 ^ v227 ^ v226 ^ v225 ^ v224 ^ v164 ^ v222 ^ v165 ^ v166 ^ v212 ^ v219 ^ v215 ^ v97 ^ v218 ^ v217 ^ v216 ^ v105 ^ v106 ^ v110 ^ v214 ^ v213 ^ v118 ^ v211 ^ v210 ^ v209 ^ v208 ^ v207 ^ v206 ^ v205 ^ v204 ^ v203 ^ v202 ^ v201 ^ v200 ^ v199 ^ v198 ^ v197 ^ v196 ^ v195 ^ v194 ^ v193 ^ v192 ^ v191 ^ v190 ^ v189 ^ v188 ^ v187 ^ v186 ^ v185 ^ v184 ^ v183 ^ v182 ^ v181 ^ v180 ^ v179 ^ v178 ^ v151 ^ v152 ^ v153 ^ v156 ^ v170 ^ v171 ^ v176;
  }

  v170 = 2654435761 * self->_isHSJSTriggerFromAlwaysOnMicBuffer;
  if ((*(p_has + 10) & 0x10) == 0)
  {
    goto LABEL_384;
  }

LABEL_377:
  v171 = 2654435761u * self->_displayWakeTimeOffsetInNs;
  if ((*(p_has + 10) & 0x20) == 0)
  {
    goto LABEL_385;
  }

LABEL_378:
  neptuneDetectionApiScore = self->_neptuneDetectionApiScore;
  if (neptuneDetectionApiScore >= 0.0)
  {
    v173 = neptuneDetectionApiScore;
  }

  else
  {
    v173 = -neptuneDetectionApiScore;
  }

  *v154.i64 = floor(v173 + 0.5);
  v174 = (v173 - *v154.i64) * 1.84467441e19;
  *v155.i64 = *v154.i64 - trunc(*v154.i64 * 5.42101086e-20) * 1.84467441e19;
  v175.f64[0] = NAN;
  v175.f64[1] = NAN;
  v176 = 2654435761u * *vbslq_s8(vnegq_f64(v175), v155, v154).i64;
  if (v174 >= 0.0)
  {
    if (v174 > 0.0)
    {
      v176 += v174;
    }
  }

  else
  {
    v176 -= fabs(v174);
  }

  return v256 ^ v257 ^ v255 ^ v254 ^ v253 ^ v252 ^ v251 ^ v250 ^ v249 ^ v157 ^ v247 ^ v246 ^ v245 ^ v244 ^ v158 ^ v159 ^ v241 ^ v160 ^ v161 ^ v162 ^ v163 ^ v236 ^ v235 ^ v234 ^ v233 ^ v232 ^ v231 ^ v230 ^ v229 ^ v228 ^ v227 ^ v226 ^ v225 ^ v224 ^ v164 ^ v222 ^ v165 ^ v166 ^ v212 ^ v219 ^ v215 ^ v97 ^ v218 ^ v217 ^ v216 ^ v105 ^ v106 ^ v110 ^ v214 ^ v213 ^ v118 ^ v211 ^ v210 ^ v209 ^ v208 ^ v207 ^ v206 ^ v205 ^ v204 ^ v203 ^ v202 ^ v201 ^ v200 ^ v199 ^ v198 ^ v197 ^ v196 ^ v195 ^ v194 ^ v193 ^ v192 ^ v191 ^ v190 ^ v189 ^ v188 ^ v187 ^ v186 ^ v185 ^ v184 ^ v183 ^ v182 ^ v181 ^ v180 ^ v179 ^ v178 ^ v151 ^ v152 ^ v153 ^ v156 ^ v170 ^ v171 ^ v176;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_370;
  }

  p_has = &self->_has;
  has = self->_has;
  v7 = (v4 + 556);
  v8 = *(v4 + 556);
  if ((has & 1) != (*(v4 + 139) & 1))
  {
    goto LABEL_370;
  }

  if (has)
  {
    secondPassAnalyerStartSampleCount = self->_secondPassAnalyerStartSampleCount;
    if (secondPassAnalyerStartSampleCount != [v4 secondPassAnalyerStartSampleCount])
    {
      goto LABEL_370;
    }

    has = *p_has;
    v8 = *v7;
  }

  v10 = (has >> 1) & 1;
  if (v10 != ((v8 >> 1) & 1))
  {
    goto LABEL_370;
  }

  if (v10)
  {
    secondPassAnalyerEndSampleCount = self->_secondPassAnalyerEndSampleCount;
    if (secondPassAnalyerEndSampleCount != [v4 secondPassAnalyerEndSampleCount])
    {
      goto LABEL_370;
    }

    has = *p_has;
    v8 = *v7;
  }

  v12 = (has >> 2) & 1;
  if (v12 != ((v8 >> 2) & 1))
  {
    goto LABEL_370;
  }

  if (v12)
  {
    satScore = self->_satScore;
    [v4 satScore];
    if (satScore != v14)
    {
      goto LABEL_370;
    }

    has = *p_has;
    v8 = *v7;
  }

  v15 = (has >> 3) & 1;
  if (v15 != ((v8 >> 3) & 1))
  {
    goto LABEL_370;
  }

  if (v15)
  {
    satNumTrainingUtterances = self->_satNumTrainingUtterances;
    if (satNumTrainingUtterances != [v4 satNumTrainingUtterances])
    {
      goto LABEL_370;
    }

    has = *p_has;
    v8 = *v7;
  }

  v17 = (has >> 4) & 1;
  if (v17 != ((v8 >> 4) & 1))
  {
    goto LABEL_370;
  }

  if (v17)
  {
    satThreshold = self->_satThreshold;
    [v4 satThreshold];
    if (satThreshold != v19)
    {
      goto LABEL_370;
    }

    has = *p_has;
    v8 = *v7;
  }

  v20 = (has >> 5) & 1;
  if (v20 != ((v8 >> 5) & 1))
  {
    goto LABEL_370;
  }

  if (v20)
  {
    satTriggered = self->_satTriggered;
    if (satTriggered != [v4 satTriggered])
    {
      goto LABEL_370;
    }

    has = *p_has;
    v8 = *v7;
  }

  v22 = (has >> 6) & 1;
  if (v22 != ((v8 >> 6) & 1))
  {
    goto LABEL_370;
  }

  if (v22)
  {
    tdSpeakerRecognizerScore = self->_tdSpeakerRecognizerScore;
    [v4 tdSpeakerRecognizerScore];
    if (tdSpeakerRecognizerScore != v24)
    {
      goto LABEL_370;
    }

    has = *p_has;
    v8 = *v7;
  }

  v25 = (has >> 7) & 1;
  if (v25 != ((v8 >> 7) & 1))
  {
    goto LABEL_370;
  }

  if (v25)
  {
    tdSpeakerRecognizerCombinedScore = self->_tdSpeakerRecognizerCombinedScore;
    [v4 tdSpeakerRecognizerCombinedScore];
    if (tdSpeakerRecognizerCombinedScore != v27)
    {
      goto LABEL_370;
    }

    has = *p_has;
    v8 = *v7;
  }

  v28 = (has >> 8) & 1;
  if (v28 != ((v8 >> 8) & 1))
  {
    goto LABEL_370;
  }

  if (v28)
  {
    tdSpeakerRecognizerCombinedThreshold = self->_tdSpeakerRecognizerCombinedThreshold;
    [v4 tdSpeakerRecognizerCombinedThreshold];
    if (tdSpeakerRecognizerCombinedThreshold != v30)
    {
      goto LABEL_370;
    }

    has = *p_has;
    v8 = *v7;
  }

  v31 = (has >> 9) & 1;
  if (v31 != ((v8 >> 9) & 1))
  {
    goto LABEL_370;
  }

  if (v31)
  {
    tdSpeakerRecognizerCombinationWeight = self->_tdSpeakerRecognizerCombinationWeight;
    [v4 tdSpeakerRecognizerCombinationWeight];
    if (tdSpeakerRecognizerCombinationWeight != v33)
    {
      goto LABEL_370;
    }

    has = *p_has;
    v8 = *v7;
  }

  v34 = (has >> 10) & 1;
  if (v34 != ((v8 >> 10) & 1))
  {
    goto LABEL_370;
  }

  if (v34)
  {
    biometricClue = self->_biometricClue;
    if (biometricClue != [v4 biometricClue])
    {
      goto LABEL_370;
    }

    has = *p_has;
    v8 = *v7;
  }

  v36 = (has >> 11) & 1;
  if (v36 != ((v8 >> 11) & 1))
  {
    goto LABEL_370;
  }

  if (v36)
  {
    satBeingTrained = self->_satBeingTrained;
    if (satBeingTrained != [v4 satBeingTrained])
    {
      goto LABEL_370;
    }

    has = *p_has;
    v8 = *v7;
  }

  v38 = (has >> 12) & 1;
  if (v38 != ((v8 >> 12) & 1))
  {
    goto LABEL_370;
  }

  if (v38)
  {
    lastConsecutivePHSRejects = self->_lastConsecutivePHSRejects;
    if (lastConsecutivePHSRejects != [v4 lastConsecutivePHSRejects])
    {
      goto LABEL_370;
    }

    has = *p_has;
    v8 = *v7;
  }

  v40 = (has >> 13) & 1;
  if (v40 != ((v8 >> 13) & 1))
  {
    goto LABEL_370;
  }

  if (v40)
  {
    deltaTimeInNsFromlastPHSReject = self->_deltaTimeInNsFromlastPHSReject;
    if (deltaTimeInNsFromlastPHSReject != [v4 deltaTimeInNsFromlastPHSReject])
    {
      goto LABEL_370;
    }

    has = *p_has;
    v8 = *v7;
  }

  v42 = (has >> 14) & 1;
  if (v42 != ((v8 >> 14) & 1))
  {
    goto LABEL_370;
  }

  if (v42)
  {
    triggerExplicitSatScore = self->_triggerExplicitSatScore;
    [v4 triggerExplicitSatScore];
    if (triggerExplicitSatScore != v44)
    {
      goto LABEL_370;
    }

    has = *p_has;
    v8 = *v7;
  }

  v45 = (has >> 15) & 1;
  if (v45 != ((v8 >> 15) & 1))
  {
    goto LABEL_370;
  }

  if (v45)
  {
    triggerExplicitTDSRSatScore = self->_triggerExplicitTDSRSatScore;
    [v4 triggerExplicitTDSRSatScore];
    if (triggerExplicitTDSRSatScore != v47)
    {
      goto LABEL_370;
    }

    has = *p_has;
    v8 = *v7;
  }

  v48 = WORD1(has) & 1;
  if (v48 != (WORD1(v8) & 1))
  {
    goto LABEL_370;
  }

  if (v48)
  {
    shadowMicScore = self->_shadowMicScore;
    [v4 shadowMicScore];
    if (shadowMicScore != v50)
    {
      goto LABEL_370;
    }

    has = *p_has;
    v8 = *v7;
  }

  v51 = (has >> 17) & 1;
  if (v51 != ((v8 >> 17) & 1))
  {
    goto LABEL_370;
  }

  if (v51)
  {
    shadowMicScoreThresholdForVAD = self->_shadowMicScoreThresholdForVAD;
    [v4 shadowMicScoreThresholdForVAD];
    if (shadowMicScoreThresholdForVAD != v53)
    {
      goto LABEL_370;
    }

    has = *p_has;
    v8 = *v7;
  }

  v54 = (has >> 18) & 1;
  if (v54 != ((v8 >> 18) & 1))
  {
    goto LABEL_370;
  }

  if (v54)
  {
    remoteMicVADScore = self->_remoteMicVADScore;
    [v4 remoteMicVADScore];
    if (remoteMicVADScore != v56)
    {
      goto LABEL_370;
    }

    has = *p_has;
    v8 = *v7;
  }

  v57 = (has >> 19) & 1;
  if (v57 != ((v8 >> 19) & 1))
  {
    goto LABEL_370;
  }

  if (v57)
  {
    remoteMicVADThreshold = self->_remoteMicVADThreshold;
    [v4 remoteMicVADThreshold];
    if (remoteMicVADThreshold != v59)
    {
      goto LABEL_370;
    }

    has = *p_has;
    v8 = *v7;
  }

  v60 = (has >> 20) & 1;
  if (v60 != ((v8 >> 20) & 1))
  {
    goto LABEL_370;
  }

  if (v60)
  {
    remoteMicVADMyriadThreshold = self->_remoteMicVADMyriadThreshold;
    [v4 remoteMicVADMyriadThreshold];
    if (remoteMicVADMyriadThreshold != v62)
    {
      goto LABEL_370;
    }

    has = *p_has;
    v8 = *v7;
  }

  v63 = (has >> 21) & 1;
  if (v63 != ((v8 >> 21) & 1))
  {
    goto LABEL_370;
  }

  if (v63)
  {
    enhancedCarplayTriggerMode = self->_enhancedCarplayTriggerMode;
    if (enhancedCarplayTriggerMode != [v4 enhancedCarplayTriggerMode])
    {
      goto LABEL_370;
    }

    has = *p_has;
    v8 = *v7;
  }

  v65 = (has >> 22) & 1;
  if (v65 != ((v8 >> 22) & 1))
  {
    goto LABEL_370;
  }

  if (v65)
  {
    triggerStartSampleCount = self->_triggerStartSampleCount;
    if (triggerStartSampleCount != [v4 triggerStartSampleCount])
    {
      goto LABEL_370;
    }

    has = *p_has;
    v8 = *v7;
  }

  v67 = (has >> 23) & 1;
  if (v67 != ((v8 >> 23) & 1))
  {
    goto LABEL_370;
  }

  if (v67)
  {
    clientStartSampleCount = self->_clientStartSampleCount;
    if (clientStartSampleCount != [v4 clientStartSampleCount])
    {
      goto LABEL_370;
    }

    has = *p_has;
    v8 = *v7;
  }

  v69 = BYTE3(has) & 1;
  if (v69 != (BYTE3(v8) & 1))
  {
    goto LABEL_370;
  }

  if (v69)
  {
    triggerEndSampleCount = self->_triggerEndSampleCount;
    if (triggerEndSampleCount != [v4 triggerEndSampleCount])
    {
      goto LABEL_370;
    }

    has = *p_has;
    v8 = *v7;
  }

  v71 = (has >> 25) & 1;
  if (v71 != ((v8 >> 25) & 1))
  {
    goto LABEL_370;
  }

  if (v71)
  {
    triggerFireSampleCount = self->_triggerFireSampleCount;
    if (triggerFireSampleCount != [v4 triggerFireSampleCount])
    {
      goto LABEL_370;
    }

    has = *p_has;
    v8 = *v7;
  }

  v73 = (has >> 26) & 1;
  if (v73 != ((v8 >> 26) & 1))
  {
    goto LABEL_370;
  }

  if (v73)
  {
    triggerStartNs = self->_triggerStartNs;
    if (triggerStartNs != [v4 triggerStartNs])
    {
      goto LABEL_370;
    }

    has = *p_has;
    v8 = *v7;
  }

  v75 = (has >> 27) & 1;
  if (v75 != ((v8 >> 27) & 1))
  {
    goto LABEL_370;
  }

  if (v75)
  {
    triggerEndNs = self->_triggerEndNs;
    if (triggerEndNs != [v4 triggerEndNs])
    {
      goto LABEL_370;
    }

    has = *p_has;
    v8 = *v7;
  }

  v77 = (has >> 28) & 1;
  if (v77 != ((v8 >> 28) & 1))
  {
    goto LABEL_370;
  }

  if (v77)
  {
    triggerFireNs = self->_triggerFireNs;
    if (triggerFireNs != [v4 triggerFireNs])
    {
      goto LABEL_370;
    }

    has = *p_has;
    v8 = *v7;
  }

  v79 = (has >> 29) & 1;
  if (v79 != ((v8 >> 29) & 1))
  {
    goto LABEL_370;
  }

  if (v79)
  {
    extraSamplesAtStart = self->_extraSamplesAtStart;
    if (extraSamplesAtStart != [v4 extraSamplesAtStart])
    {
      goto LABEL_370;
    }

    has = *p_has;
    v8 = *v7;
  }

  v81 = (has >> 30) & 1;
  if (v81 != ((v8 >> 30) & 1))
  {
    goto LABEL_370;
  }

  if (v81)
  {
    analyzerPrependingSamples = self->_analyzerPrependingSamples;
    if (analyzerPrependingSamples != [v4 analyzerPrependingSamples])
    {
      goto LABEL_370;
    }

    has = *p_has;
    v8 = *v7;
  }

  if (((v8 ^ has) & 0x80000000) != 0)
  {
    goto LABEL_370;
  }

  if ((has & 0x80000000) != 0)
  {
    analyzerTrailingSamples = self->_analyzerTrailingSamples;
    if (analyzerTrailingSamples != [v4 analyzerTrailingSamples])
    {
      goto LABEL_370;
    }

    has = *p_has;
    v8 = *v7;
  }

  v84 = HIDWORD(has) & 1;
  if (v84 != (BYTE4(v8) & 1))
  {
    goto LABEL_370;
  }

  if (v84)
  {
    isTriggerEvent = self->_isTriggerEvent;
    if (isTriggerEvent != [v4 isTriggerEvent])
    {
      goto LABEL_370;
    }

    has = *p_has;
    v8 = *v7;
  }

  v86 = (has >> 33) & 1;
  if (v86 != ((v8 >> 33) & 1))
  {
    goto LABEL_370;
  }

  if (v86)
  {
    totalSampleCount = self->_totalSampleCount;
    if (totalSampleCount != [v4 totalSampleCount])
    {
      goto LABEL_370;
    }

    has = *p_has;
    v8 = *v7;
  }

  v88 = (has >> 34) & 1;
  if (v88 != ((v8 >> 34) & 1))
  {
    goto LABEL_370;
  }

  if (v88)
  {
    triggerScore = self->_triggerScore;
    [v4 triggerScore];
    if (triggerScore != v90)
    {
      goto LABEL_370;
    }

    has = *p_has;
    v8 = *v7;
  }

  v91 = (has >> 35) & 1;
  if (v91 != ((v8 >> 35) & 1))
  {
    goto LABEL_370;
  }

  if (v91)
  {
    isMaximized = self->_isMaximized;
    if (isMaximized != [v4 isMaximized])
    {
      goto LABEL_370;
    }

    has = *p_has;
    v8 = *v7;
  }

  v93 = (has >> 36) & 1;
  if (v93 != ((v8 >> 36) & 1))
  {
    goto LABEL_370;
  }

  if (v93)
  {
    effectiveThreshold = self->_effectiveThreshold;
    [v4 effectiveThreshold];
    if (effectiveThreshold != v95)
    {
      goto LABEL_370;
    }

    has = *p_has;
    v8 = *v7;
  }

  v96 = (has >> 37) & 1;
  if (v96 != ((v8 >> 37) & 1))
  {
    goto LABEL_370;
  }

  if (v96)
  {
    recognizerScore = self->_recognizerScore;
    [v4 recognizerScore];
    if (recognizerScore != v98)
    {
      goto LABEL_370;
    }

    has = *p_has;
    v8 = *v7;
  }

  v99 = (has >> 38) & 1;
  if (v99 != ((v8 >> 38) & 1))
  {
    goto LABEL_370;
  }

  if (v99)
  {
    recognizerThresholdOffset = self->_recognizerThresholdOffset;
    [v4 recognizerThresholdOffset];
    if (recognizerThresholdOffset != v101)
    {
      goto LABEL_370;
    }

    has = *p_has;
    v8 = *v7;
  }

  v102 = (has >> 39) & 1;
  if (v102 != ((v8 >> 39) & 1))
  {
    goto LABEL_370;
  }

  if (v102)
  {
    recognizerWaitTimeInNs = self->_recognizerWaitTimeInNs;
    if (recognizerWaitTimeInNs != [v4 recognizerWaitTimeInNs])
    {
      goto LABEL_370;
    }

    has = *p_has;
    v8 = *v7;
  }

  v104 = (has >> 40) & 1;
  if (v104 != ((v8 >> 40) & 1))
  {
    goto LABEL_370;
  }

  if (v104)
  {
    recognizerScaleFactor = self->_recognizerScaleFactor;
    [v4 recognizerScaleFactor];
    if (recognizerScaleFactor != v106)
    {
      goto LABEL_370;
    }

    has = *p_has;
    v8 = *v7;
  }

  v107 = (has >> 41) & 1;
  if (v107 != ((v8 >> 41) & 1))
  {
    goto LABEL_370;
  }

  if (v107)
  {
    threshold = self->_threshold;
    [v4 threshold];
    if (threshold != v109)
    {
      goto LABEL_370;
    }

    has = *p_has;
    v8 = *v7;
  }

  v110 = (has >> 42) & 1;
  if (v110 != ((v8 >> 42) & 1))
  {
    goto LABEL_370;
  }

  if (v110)
  {
    triggerStartTimeOffsetInNs = self->_triggerStartTimeOffsetInNs;
    if (triggerStartTimeOffsetInNs != [v4 triggerStartTimeOffsetInNs])
    {
      goto LABEL_370;
    }

    has = *p_has;
    v8 = *v7;
  }

  v112 = (has >> 43) & 1;
  if (v112 != ((v8 >> 43) & 1))
  {
    goto LABEL_370;
  }

  if (v112)
  {
    triggerEndTimeOffsetInNs = self->_triggerEndTimeOffsetInNs;
    if (triggerEndTimeOffsetInNs != [v4 triggerEndTimeOffsetInNs])
    {
      goto LABEL_370;
    }

    has = *p_has;
    v8 = *v7;
  }

  v114 = (has >> 44) & 1;
  if (v114 != ((v8 >> 44) & 1))
  {
    goto LABEL_370;
  }

  if (v114)
  {
    triggerFireTimeOffsetInNs = self->_triggerFireTimeOffsetInNs;
    if (triggerFireTimeOffsetInNs != [v4 triggerFireTimeOffsetInNs])
    {
      goto LABEL_370;
    }

    has = *p_has;
    v8 = *v7;
  }

  v116 = (has >> 45) & 1;
  if (v116 != ((v8 >> 45) & 1))
  {
    goto LABEL_370;
  }

  if (v116)
  {
    triggerStartTime = self->_triggerStartTime;
    [v4 triggerStartTime];
    if (triggerStartTime != v118)
    {
      goto LABEL_370;
    }

    has = *p_has;
    v8 = *v7;
  }

  v119 = (has >> 46) & 1;
  if (v119 != ((v8 >> 46) & 1))
  {
    goto LABEL_370;
  }

  if (v119)
  {
    triggerEndTime = self->_triggerEndTime;
    [v4 triggerEndTime];
    if (triggerEndTime != v121)
    {
      goto LABEL_370;
    }

    has = *p_has;
    v8 = *v7;
  }

  v122 = (has >> 47) & 1;
  if (v122 != ((v8 >> 47) & 1))
  {
    goto LABEL_370;
  }

  if (v122)
  {
    triggerFiredTime = self->_triggerFiredTime;
    [v4 triggerFiredTime];
    if (triggerFiredTime != v124)
    {
      goto LABEL_370;
    }

    has = *p_has;
    v8 = *v7;
  }

  v125 = HIWORD(has) & 1;
  if (v125 != (HIWORD(v8) & 1))
  {
    goto LABEL_370;
  }

  if (v125)
  {
    hardwareSamplerate = self->_hardwareSamplerate;
    if (hardwareSamplerate != [v4 hardwareSamplerate])
    {
      goto LABEL_370;
    }

    has = *p_has;
    v8 = *v7;
  }

  v127 = (has >> 49) & 1;
  if (v127 != ((v8 >> 49) & 1))
  {
    goto LABEL_370;
  }

  if (v127)
  {
    isContinuous = self->_isContinuous;
    if (isContinuous != [v4 isContinuous])
    {
      goto LABEL_370;
    }

    has = *p_has;
    v8 = *v7;
  }

  v129 = (has >> 50) & 1;
  if (v129 != ((v8 >> 50) & 1))
  {
    goto LABEL_370;
  }

  if (v129)
  {
    triggerDurationInNs = self->_triggerDurationInNs;
    [v4 triggerDurationInNs];
    if (triggerDurationInNs != v131)
    {
      goto LABEL_370;
    }

    has = *p_has;
    v8 = *v7;
  }

  v132 = (has >> 51) & 1;
  if (v132 != ((v8 >> 51) & 1))
  {
    goto LABEL_370;
  }

  if (v132)
  {
    totalSamplesAtTriggerStart = self->_totalSamplesAtTriggerStart;
    if (totalSamplesAtTriggerStart != [v4 totalSamplesAtTriggerStart])
    {
      goto LABEL_370;
    }

    has = *p_has;
    v8 = *v7;
  }

  v134 = (has >> 52) & 1;
  if (v134 != ((v8 >> 52) & 1))
  {
    goto LABEL_370;
  }

  if (v134)
  {
    totalSamplesAtTriggerEnd = self->_totalSamplesAtTriggerEnd;
    if (totalSamplesAtTriggerEnd != [v4 totalSamplesAtTriggerEnd])
    {
      goto LABEL_370;
    }

    has = *p_has;
    v8 = *v7;
  }

  v136 = (has >> 53) & 1;
  if (v136 != ((v8 >> 53) & 1))
  {
    goto LABEL_370;
  }

  if (v136)
  {
    totalSamplesAtEndOfCapture = self->_totalSamplesAtEndOfCapture;
    if (totalSamplesAtEndOfCapture != [v4 totalSamplesAtEndOfCapture])
    {
      goto LABEL_370;
    }
  }

  v138 = [(MHSchemaMHVoiceTriggerEventInfo *)self configVersion];
  v139 = [v4 configVersion];
  if ((v138 != 0) == (v139 == 0))
  {
    goto LABEL_353;
  }

  v140 = [(MHSchemaMHVoiceTriggerEventInfo *)self configVersion];
  if (v140)
  {
    v141 = v140;
    v142 = [(MHSchemaMHVoiceTriggerEventInfo *)self configVersion];
    v143 = [v4 configVersion];
    v144 = [v142 isEqual:v143];

    if (!v144)
    {
      goto LABEL_370;
    }
  }

  else
  {
  }

  v138 = [(MHSchemaMHVoiceTriggerEventInfo *)self configPath];
  v139 = [v4 configPath];
  if ((v138 != 0) == (v139 == 0))
  {
    goto LABEL_353;
  }

  v145 = [(MHSchemaMHVoiceTriggerEventInfo *)self configPath];
  if (v145)
  {
    v146 = v145;
    v147 = [(MHSchemaMHVoiceTriggerEventInfo *)self configPath];
    v148 = [v4 configPath];
    v149 = [v147 isEqual:v148];

    if (!v149)
    {
      goto LABEL_370;
    }
  }

  else
  {
  }

  v150 = *p_has;
  v151 = (*p_has >> 54) & 1;
  v152 = *v7;
  if (v151 != ((*v7 >> 54) & 1))
  {
    goto LABEL_370;
  }

  if (v151)
  {
    isSecondChance = self->_isSecondChance;
    if (isSecondChance != [v4 isSecondChance])
    {
      goto LABEL_370;
    }

    v150 = *p_has;
    v152 = *v7;
  }

  v154 = (v150 >> 55) & 1;
  if (v154 != ((v152 >> 55) & 1))
  {
    goto LABEL_370;
  }

  if (v154)
  {
    deviceHandheld = self->_deviceHandheld;
    if (deviceHandheld != [v4 deviceHandheld])
    {
      goto LABEL_370;
    }

    v150 = *p_has;
    v152 = *v7;
  }

  v156 = HIBYTE(v150) & 1;
  if (v156 != (HIBYTE(v152) & 1))
  {
    goto LABEL_370;
  }

  if (v156)
  {
    activeChannel = self->_activeChannel;
    if (activeChannel != [v4 activeChannel])
    {
      goto LABEL_370;
    }

    v150 = *p_has;
    v152 = *v7;
  }

  v158 = (v150 >> 57) & 1;
  if (v158 != ((v152 & 0x200000000000000) != 0))
  {
    goto LABEL_370;
  }

  if (v158)
  {
    twoShotAudibleFeedbackDelayInNs = self->_twoShotAudibleFeedbackDelayInNs;
    if (twoShotAudibleFeedbackDelayInNs != [v4 twoShotAudibleFeedbackDelayInNs])
    {
      goto LABEL_370;
    }

    v150 = *p_has;
    v152 = *v7;
  }

  v160 = (v150 >> 58) & 1;
  if (v160 != ((v152 & 0x400000000000000) != 0))
  {
    goto LABEL_370;
  }

  if (v160)
  {
    cumulativeUptimeInSec = self->_cumulativeUptimeInSec;
    [v4 cumulativeUptimeInSec];
    if (cumulativeUptimeInSec != v162)
    {
      goto LABEL_370;
    }

    v150 = *p_has;
    v152 = *v7;
  }

  v163 = (v150 >> 59) & 1;
  if (v163 != ((v152 & 0x800000000000000) != 0))
  {
    goto LABEL_370;
  }

  if (v163)
  {
    cumulativeDowntimeInSec = self->_cumulativeDowntimeInSec;
    [v4 cumulativeDowntimeInSec];
    if (cumulativeDowntimeInSec != v165)
    {
      goto LABEL_370;
    }

    v150 = *p_has;
    v152 = *v7;
  }

  v166 = (v150 >> 60) & 1;
  if (v166 != ((v152 & 0x1000000000000000) != 0))
  {
    goto LABEL_370;
  }

  if (v166)
  {
    hostPowerStateAtTrigger = self->_hostPowerStateAtTrigger;
    if (hostPowerStateAtTrigger != [v4 hostPowerStateAtTrigger])
    {
      goto LABEL_370;
    }

    v150 = *p_has;
    v152 = *v7;
  }

  v168 = (v150 >> 61) & 1;
  if (v168 != ((v152 & 0x2000000000000000) != 0))
  {
    goto LABEL_370;
  }

  if (v168)
  {
    isMediaPlaying = self->_isMediaPlaying;
    if (isMediaPlaying != [v4 isMediaPlaying])
    {
      goto LABEL_370;
    }

    v150 = *p_has;
    v152 = *v7;
  }

  v170 = (v150 >> 62) & 1;
  if (v170 != ((v152 & 0x4000000000000000) != 0))
  {
    goto LABEL_370;
  }

  if (v170)
  {
    mediaVolume = self->_mediaVolume;
    [v4 mediaVolume];
    if (mediaVolume != v172)
    {
      goto LABEL_370;
    }
  }

  v138 = [(MHSchemaMHVoiceTriggerEventInfo *)self audioProviderUUID];
  v139 = [v4 audioProviderUUID];
  if ((v138 != 0) == (v139 == 0))
  {
    goto LABEL_353;
  }

  v173 = [(MHSchemaMHVoiceTriggerEventInfo *)self audioProviderUUID];
  if (v173)
  {
    v174 = v173;
    v175 = [(MHSchemaMHVoiceTriggerEventInfo *)self audioProviderUUID];
    v176 = [v4 audioProviderUUID];
    v177 = [v175 isEqual:v176];

    if (!v177)
    {
      goto LABEL_370;
    }
  }

  else
  {
  }

  if (((*v7 ^ *p_has) & 0x8000000000000000) != 0)
  {
    goto LABEL_370;
  }

  if ((*p_has & 0x8000000000000000) != 0)
  {
    onBatteryPower = self->_onBatteryPower;
    if (onBatteryPower != [v4 onBatteryPower])
    {
      goto LABEL_370;
    }
  }

  v179 = *(&self->_has + 4);
  v180 = *(v4 + 282);
  if ((v179 & 1) != (v180 & 1))
  {
    goto LABEL_370;
  }

  if (v179)
  {
    didWakeAP = self->_didWakeAP;
    if (didWakeAP != [v4 didWakeAP])
    {
      goto LABEL_370;
    }

    v179 = *(&self->_has + 4);
    v180 = *(v4 + 282);
  }

  v182 = (v179 >> 1) & 1;
  if (v182 != ((v180 >> 1) & 1))
  {
    goto LABEL_370;
  }

  if (v182)
  {
    uptimeInSec = self->_uptimeInSec;
    [v4 uptimeInSec];
    if (uptimeInSec != v184)
    {
      goto LABEL_370;
    }

    v179 = *(&self->_has + 4);
    v180 = *(v4 + 282);
  }

  v185 = (v179 >> 2) & 1;
  if (v185 != ((v180 >> 2) & 1))
  {
    goto LABEL_370;
  }

  if (v185)
  {
    downtimeInSec = self->_downtimeInSec;
    [v4 downtimeInSec];
    if (downtimeInSec != v187)
    {
      goto LABEL_370;
    }

    v179 = *(&self->_has + 4);
    v180 = *(v4 + 282);
  }

  v188 = (v179 >> 3) & 1;
  if (v188 != ((v180 >> 3) & 1))
  {
    goto LABEL_370;
  }

  if (v188)
  {
    lastConsecutiveVTRejects = self->_lastConsecutiveVTRejects;
    if (lastConsecutiveVTRejects != [v4 lastConsecutiveVTRejects])
    {
      goto LABEL_370;
    }
  }

  v138 = [(MHSchemaMHVoiceTriggerEventInfo *)self captureFilePath];
  v139 = [v4 captureFilePath];
  if ((v138 != 0) == (v139 == 0))
  {
    goto LABEL_353;
  }

  v190 = [(MHSchemaMHVoiceTriggerEventInfo *)self captureFilePath];
  if (v190)
  {
    v191 = v190;
    v192 = [(MHSchemaMHVoiceTriggerEventInfo *)self captureFilePath];
    v193 = [v4 captureFilePath];
    v194 = [v192 isEqual:v193];

    if (!v194)
    {
      goto LABEL_370;
    }
  }

  else
  {
  }

  v138 = [(MHSchemaMHVoiceTriggerEventInfo *)self configDataHash];
  v139 = [v4 configDataHash];
  if ((v138 != 0) == (v139 == 0))
  {
    goto LABEL_353;
  }

  v195 = [(MHSchemaMHVoiceTriggerEventInfo *)self configDataHash];
  if (v195)
  {
    v196 = v195;
    v197 = [(MHSchemaMHVoiceTriggerEventInfo *)self configDataHash];
    v198 = [v4 configDataHash];
    v199 = [v197 isEqual:v198];

    if (!v199)
    {
      goto LABEL_370;
    }
  }

  else
  {
  }

  v200 = *(&self->_has + 4);
  v201 = (v200 >> 4) & 1;
  v202 = *(v4 + 282);
  if (v201 != ((v202 >> 4) & 1))
  {
    goto LABEL_370;
  }

  if (v201)
  {
    siriIsActiveOrOtherAssertion = self->_siriIsActiveOrOtherAssertion;
    if (siriIsActiveOrOtherAssertion != [v4 siriIsActiveOrOtherAssertion])
    {
      goto LABEL_370;
    }

    v200 = *(&self->_has + 4);
    v202 = *(v4 + 282);
  }

  v204 = (v200 >> 5) & 1;
  if (v204 != ((v202 >> 5) & 1))
  {
    goto LABEL_370;
  }

  if (v204)
  {
    didAudioStall = self->_didAudioStall;
    if (didAudioStall != [v4 didAudioStall])
    {
      goto LABEL_370;
    }

    v200 = *(&self->_has + 4);
    v202 = *(v4 + 282);
  }

  v206 = (v200 >> 6) & 1;
  if (v206 != ((v202 >> 6) & 1))
  {
    goto LABEL_370;
  }

  if (v206)
  {
    isBargeIn = self->_isBargeIn;
    if (isBargeIn != [v4 isBargeIn])
    {
      goto LABEL_370;
    }

    v200 = *(&self->_has + 4);
    v202 = *(v4 + 282);
  }

  v208 = (v200 >> 7) & 1;
  if (v208 != ((v202 >> 7) & 1))
  {
    goto LABEL_370;
  }

  if (v208)
  {
    isWakeFromSleep = self->_isWakeFromSleep;
    if (isWakeFromSleep != [v4 isWakeFromSleep])
    {
      goto LABEL_370;
    }

    v200 = *(&self->_has + 4);
    v202 = *(v4 + 282);
  }

  v210 = (v200 >> 8) & 1;
  if (v210 != ((v202 >> 8) & 1))
  {
    goto LABEL_370;
  }

  if (v210)
  {
    secondPassAssetQueryStartTimeInNs = self->_secondPassAssetQueryStartTimeInNs;
    if (secondPassAssetQueryStartTimeInNs != [v4 secondPassAssetQueryStartTimeInNs])
    {
      goto LABEL_370;
    }

    v200 = *(&self->_has + 4);
    v202 = *(v4 + 282);
  }

  v212 = (v200 >> 9) & 1;
  if (v212 != ((v202 >> 9) & 1))
  {
    goto LABEL_370;
  }

  if (v212)
  {
    secondPassAssetQueryCompleteTimeInNs = self->_secondPassAssetQueryCompleteTimeInNs;
    if (secondPassAssetQueryCompleteTimeInNs != [v4 secondPassAssetQueryCompleteTimeInNs])
    {
      goto LABEL_370;
    }

    v200 = *(&self->_has + 4);
    v202 = *(v4 + 282);
  }

  v214 = (v200 >> 10) & 1;
  if (v214 != ((v202 >> 10) & 1))
  {
    goto LABEL_370;
  }

  if (v214)
  {
    secondPassAssetLoadStartTimeInNs = self->_secondPassAssetLoadStartTimeInNs;
    if (secondPassAssetLoadStartTimeInNs != [v4 secondPassAssetLoadStartTimeInNs])
    {
      goto LABEL_370;
    }

    v200 = *(&self->_has + 4);
    v202 = *(v4 + 282);
  }

  v216 = (v200 >> 11) & 1;
  if (v216 != ((v202 >> 11) & 1))
  {
    goto LABEL_370;
  }

  if (v216)
  {
    secondPassAssetLoadCompleteTimeInNs = self->_secondPassAssetLoadCompleteTimeInNs;
    if (secondPassAssetLoadCompleteTimeInNs != [v4 secondPassAssetLoadCompleteTimeInNs])
    {
      goto LABEL_370;
    }

    v200 = *(&self->_has + 4);
    v202 = *(v4 + 282);
  }

  v218 = (v200 >> 12) & 1;
  if (v218 != ((v202 >> 12) & 1))
  {
    goto LABEL_370;
  }

  if (v218)
  {
    secondPassAudioStreamStartTimeInNs = self->_secondPassAudioStreamStartTimeInNs;
    if (secondPassAudioStreamStartTimeInNs != [v4 secondPassAudioStreamStartTimeInNs])
    {
      goto LABEL_370;
    }

    v200 = *(&self->_has + 4);
    v202 = *(v4 + 282);
  }

  v220 = (v200 >> 13) & 1;
  if (v220 != ((v202 >> 13) & 1))
  {
    goto LABEL_370;
  }

  if (v220)
  {
    secondPassAudioStreamReadyTimeInNs = self->_secondPassAudioStreamReadyTimeInNs;
    if (secondPassAudioStreamReadyTimeInNs != [v4 secondPassAudioStreamReadyTimeInNs])
    {
      goto LABEL_370;
    }

    v200 = *(&self->_has + 4);
    v202 = *(v4 + 282);
  }

  v222 = (v200 >> 14) & 1;
  if (v222 != ((v202 >> 14) & 1))
  {
    goto LABEL_370;
  }

  if (v222)
  {
    secondPassFirstAudioPacketReceptionTimeInNs = self->_secondPassFirstAudioPacketReceptionTimeInNs;
    if (secondPassFirstAudioPacketReceptionTimeInNs != [v4 secondPassFirstAudioPacketReceptionTimeInNs])
    {
      goto LABEL_370;
    }

    v200 = *(&self->_has + 4);
    v202 = *(v4 + 282);
  }

  if (((v202 ^ v200) & 0x8000) != 0)
  {
    goto LABEL_370;
  }

  if ((v200 & 0x8000) != 0)
  {
    secondPassLastAudioPacketReceptionTimeInNs = self->_secondPassLastAudioPacketReceptionTimeInNs;
    if (secondPassLastAudioPacketReceptionTimeInNs != [v4 secondPassLastAudioPacketReceptionTimeInNs])
    {
      goto LABEL_370;
    }
  }

  v225 = *(&self->_has + 10);
  v226 = v4[566];
  if ((v225 & 1) != (v226 & 1))
  {
    goto LABEL_370;
  }

  if (v225)
  {
    secondPassCheckerModelKeywordDetectionStartTimeInNs = self->_secondPassCheckerModelKeywordDetectionStartTimeInNs;
    if (secondPassCheckerModelKeywordDetectionStartTimeInNs != [v4 secondPassCheckerModelKeywordDetectionStartTimeInNs])
    {
      goto LABEL_370;
    }

    v225 = *(&self->_has + 10);
    v226 = v4[566];
  }

  v228 = (v225 >> 1) & 1;
  if (v228 != ((v226 >> 1) & 1))
  {
    goto LABEL_370;
  }

  if (v228)
  {
    secondPassCheckerModelKeywordDetectionEndTimeInNs = self->_secondPassCheckerModelKeywordDetectionEndTimeInNs;
    if (secondPassCheckerModelKeywordDetectionEndTimeInNs != [v4 secondPassCheckerModelKeywordDetectionEndTimeInNs])
    {
      goto LABEL_370;
    }
  }

  v138 = [(MHSchemaMHVoiceTriggerEventInfo *)self triggerPhrase];
  v139 = [v4 triggerPhrase];
  if ((v138 != 0) == (v139 == 0))
  {
LABEL_353:

    goto LABEL_370;
  }

  v230 = [(MHSchemaMHVoiceTriggerEventInfo *)self triggerPhrase];
  if (v230)
  {
    v231 = v230;
    v232 = [(MHSchemaMHVoiceTriggerEventInfo *)self triggerPhrase];
    v233 = [v4 triggerPhrase];
    v234 = [v232 isEqual:v233];

    if (!v234)
    {
      goto LABEL_370;
    }
  }

  else
  {
  }

  v235 = *(&self->_has + 10);
  v236 = (v235 >> 2) & 1;
  v237 = v4[566];
  if (v236 == ((v237 >> 2) & 1))
  {
    if (v236)
    {
      lastDisplayWakeTimeOffsetInNs = self->_lastDisplayWakeTimeOffsetInNs;
      [v4 lastDisplayWakeTimeOffsetInNs];
      if (lastDisplayWakeTimeOffsetInNs != v239)
      {
        goto LABEL_370;
      }

      v235 = *(&self->_has + 10);
      v237 = v4[566];
    }

    v240 = (v235 >> 3) & 1;
    if (v240 == ((v237 >> 3) & 1))
    {
      if (v240)
      {
        isHSJSTriggerFromAlwaysOnMicBuffer = self->_isHSJSTriggerFromAlwaysOnMicBuffer;
        if (isHSJSTriggerFromAlwaysOnMicBuffer != [v4 isHSJSTriggerFromAlwaysOnMicBuffer])
        {
          goto LABEL_370;
        }

        v235 = *(&self->_has + 10);
        v237 = v4[566];
      }

      v242 = (v235 >> 4) & 1;
      if (v242 == ((v237 >> 4) & 1))
      {
        if (v242)
        {
          displayWakeTimeOffsetInNs = self->_displayWakeTimeOffsetInNs;
          if (displayWakeTimeOffsetInNs != [v4 displayWakeTimeOffsetInNs])
          {
            goto LABEL_370;
          }

          v235 = *(&self->_has + 10);
          v237 = v4[566];
        }

        v244 = (v235 >> 5) & 1;
        if (v244 == ((v237 >> 5) & 1))
        {
          if (!v244 || (neptuneDetectionApiScore = self->_neptuneDetectionApiScore, [v4 neptuneDetectionApiScore], neptuneDetectionApiScore == v246))
          {
            v247 = 1;
            goto LABEL_371;
          }
        }
      }
    }
  }

LABEL_370:
  v247 = 0;
LABEL_371:

  return v247;
}

- (void)writeTo:(id)a3
{
  v18 = a3;
  p_has = &self->_has;
  has = self->_has;
  if (has)
  {
    PBDataWriterWriteUint64Field();
    has = *p_has;
    if ((*p_has & 2) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_111;
    }
  }

  else if ((has & 2) == 0)
  {
    goto LABEL_3;
  }

  PBDataWriterWriteUint64Field();
  has = *p_has;
  if ((*p_has & 4) == 0)
  {
LABEL_4:
    if ((has & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_112;
  }

LABEL_111:
  PBDataWriterWriteFloatField();
  has = *p_has;
  if ((*p_has & 8) == 0)
  {
LABEL_5:
    if ((has & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_113;
  }

LABEL_112:
  PBDataWriterWriteUint32Field();
  has = *p_has;
  if ((*p_has & 0x10) == 0)
  {
LABEL_6:
    if ((has & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_114;
  }

LABEL_113:
  PBDataWriterWriteFloatField();
  has = *p_has;
  if ((*p_has & 0x20) == 0)
  {
LABEL_7:
    if ((has & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_115;
  }

LABEL_114:
  PBDataWriterWriteBOOLField();
  has = *p_has;
  if ((*p_has & 0x40) == 0)
  {
LABEL_8:
    if ((has & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_116;
  }

LABEL_115:
  PBDataWriterWriteFloatField();
  has = *p_has;
  if ((*p_has & 0x80) == 0)
  {
LABEL_9:
    if ((has & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_117;
  }

LABEL_116:
  PBDataWriterWriteFloatField();
  has = *p_has;
  if ((*p_has & 0x100) == 0)
  {
LABEL_10:
    if ((has & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_118;
  }

LABEL_117:
  PBDataWriterWriteFloatField();
  has = *p_has;
  if ((*p_has & 0x200) == 0)
  {
LABEL_11:
    if ((has & 0x400) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_119;
  }

LABEL_118:
  PBDataWriterWriteFloatField();
  has = *p_has;
  if ((*p_has & 0x400) == 0)
  {
LABEL_12:
    if ((has & 0x800) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_120;
  }

LABEL_119:
  PBDataWriterWriteInt32Field();
  has = *p_has;
  if ((*p_has & 0x800) == 0)
  {
LABEL_13:
    if ((has & 0x1000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_121;
  }

LABEL_120:
  PBDataWriterWriteBOOLField();
  has = *p_has;
  if ((*p_has & 0x1000) == 0)
  {
LABEL_14:
    if ((has & 0x2000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_122;
  }

LABEL_121:
  PBDataWriterWriteUint32Field();
  has = *p_has;
  if ((*p_has & 0x2000) == 0)
  {
LABEL_15:
    if ((has & 0x4000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_123;
  }

LABEL_122:
  PBDataWriterWriteUint64Field();
  has = *p_has;
  if ((*p_has & 0x4000) == 0)
  {
LABEL_16:
    if ((has & 0x8000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_124;
  }

LABEL_123:
  PBDataWriterWriteFloatField();
  has = *p_has;
  if ((*p_has & 0x8000) == 0)
  {
LABEL_17:
    if ((has & 0x10000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_125;
  }

LABEL_124:
  PBDataWriterWriteFloatField();
  has = *p_has;
  if ((*p_has & 0x10000) == 0)
  {
LABEL_18:
    if ((has & 0x20000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_126;
  }

LABEL_125:
  PBDataWriterWriteFloatField();
  has = *p_has;
  if ((*p_has & 0x20000) == 0)
  {
LABEL_19:
    if ((has & 0x40000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_127;
  }

LABEL_126:
  PBDataWriterWriteFloatField();
  has = *p_has;
  if ((*p_has & 0x40000) == 0)
  {
LABEL_20:
    if ((has & 0x80000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_128;
  }

LABEL_127:
  PBDataWriterWriteFloatField();
  has = *p_has;
  if ((*p_has & 0x80000) == 0)
  {
LABEL_21:
    if ((has & 0x100000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_129;
  }

LABEL_128:
  PBDataWriterWriteFloatField();
  has = *p_has;
  if ((*p_has & 0x100000) == 0)
  {
LABEL_22:
    if ((has & 0x200000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_130;
  }

LABEL_129:
  PBDataWriterWriteFloatField();
  has = *p_has;
  if ((*p_has & 0x200000) == 0)
  {
LABEL_23:
    if ((has & 0x400000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_131;
  }

LABEL_130:
  PBDataWriterWriteInt32Field();
  has = *p_has;
  if ((*p_has & 0x400000) == 0)
  {
LABEL_24:
    if ((has & 0x800000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_132;
  }

LABEL_131:
  PBDataWriterWriteUint64Field();
  has = *p_has;
  if ((*p_has & 0x800000) == 0)
  {
LABEL_25:
    if ((has & 0x1000000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_133;
  }

LABEL_132:
  PBDataWriterWriteUint64Field();
  has = *p_has;
  if ((*p_has & 0x1000000) == 0)
  {
LABEL_26:
    if ((has & 0x2000000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_134;
  }

LABEL_133:
  PBDataWriterWriteUint64Field();
  has = *p_has;
  if ((*p_has & 0x2000000) == 0)
  {
LABEL_27:
    if ((has & 0x4000000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_135;
  }

LABEL_134:
  PBDataWriterWriteUint64Field();
  has = *p_has;
  if ((*p_has & 0x4000000) == 0)
  {
LABEL_28:
    if ((has & 0x8000000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_136;
  }

LABEL_135:
  PBDataWriterWriteUint64Field();
  has = *p_has;
  if ((*p_has & 0x8000000) == 0)
  {
LABEL_29:
    if ((has & 0x10000000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_137;
  }

LABEL_136:
  PBDataWriterWriteUint64Field();
  has = *p_has;
  if ((*p_has & 0x10000000) == 0)
  {
LABEL_30:
    if ((has & 0x20000000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_138;
  }

LABEL_137:
  PBDataWriterWriteUint64Field();
  has = *p_has;
  if ((*p_has & 0x20000000) == 0)
  {
LABEL_31:
    if ((has & 0x40000000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_139;
  }

LABEL_138:
  PBDataWriterWriteUint64Field();
  has = *p_has;
  if ((*p_has & 0x40000000) == 0)
  {
LABEL_32:
    if ((has & 0x80000000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_140;
  }

LABEL_139:
  PBDataWriterWriteUint64Field();
  has = *p_has;
  if ((*p_has & 0x80000000) == 0)
  {
LABEL_33:
    if ((has & 0x100000000) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_141;
  }

LABEL_140:
  PBDataWriterWriteUint64Field();
  has = *p_has;
  if ((*p_has & 0x100000000) == 0)
  {
LABEL_34:
    if ((has & 0x200000000) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_142;
  }

LABEL_141:
  PBDataWriterWriteBOOLField();
  has = *p_has;
  if ((*p_has & 0x200000000) == 0)
  {
LABEL_35:
    if ((has & 0x400000000) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_143;
  }

LABEL_142:
  PBDataWriterWriteUint64Field();
  has = *p_has;
  if ((*p_has & 0x400000000) == 0)
  {
LABEL_36:
    if ((has & 0x800000000) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_144;
  }

LABEL_143:
  PBDataWriterWriteFloatField();
  has = *p_has;
  if ((*p_has & 0x800000000) == 0)
  {
LABEL_37:
    if ((has & 0x1000000000) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_145;
  }

LABEL_144:
  PBDataWriterWriteBOOLField();
  has = *p_has;
  if ((*p_has & 0x1000000000) == 0)
  {
LABEL_38:
    if ((has & 0x2000000000) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_146;
  }

LABEL_145:
  PBDataWriterWriteFloatField();
  has = *p_has;
  if ((*p_has & 0x2000000000) == 0)
  {
LABEL_39:
    if ((has & 0x4000000000) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_147;
  }

LABEL_146:
  PBDataWriterWriteFloatField();
  has = *p_has;
  if ((*p_has & 0x4000000000) == 0)
  {
LABEL_40:
    if ((has & 0x8000000000) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_148;
  }

LABEL_147:
  PBDataWriterWriteFloatField();
  has = *p_has;
  if ((*p_has & 0x8000000000) == 0)
  {
LABEL_41:
    if ((has & 0x10000000000) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_149;
  }

LABEL_148:
  PBDataWriterWriteUint64Field();
  has = *p_has;
  if ((*p_has & 0x10000000000) == 0)
  {
LABEL_42:
    if ((has & 0x20000000000) == 0)
    {
      goto LABEL_43;
    }

    goto LABEL_150;
  }

LABEL_149:
  PBDataWriterWriteFloatField();
  has = *p_has;
  if ((*p_has & 0x20000000000) == 0)
  {
LABEL_43:
    if ((has & 0x40000000000) == 0)
    {
      goto LABEL_44;
    }

    goto LABEL_151;
  }

LABEL_150:
  PBDataWriterWriteFloatField();
  has = *p_has;
  if ((*p_has & 0x40000000000) == 0)
  {
LABEL_44:
    if ((has & 0x80000000000) == 0)
    {
      goto LABEL_45;
    }

    goto LABEL_152;
  }

LABEL_151:
  PBDataWriterWriteUint64Field();
  has = *p_has;
  if ((*p_has & 0x80000000000) == 0)
  {
LABEL_45:
    if ((has & 0x100000000000) == 0)
    {
      goto LABEL_46;
    }

    goto LABEL_153;
  }

LABEL_152:
  PBDataWriterWriteUint64Field();
  has = *p_has;
  if ((*p_has & 0x100000000000) == 0)
  {
LABEL_46:
    if ((has & 0x200000000000) == 0)
    {
      goto LABEL_47;
    }

    goto LABEL_154;
  }

LABEL_153:
  PBDataWriterWriteUint64Field();
  has = *p_has;
  if ((*p_has & 0x200000000000) == 0)
  {
LABEL_47:
    if ((has & 0x400000000000) == 0)
    {
      goto LABEL_48;
    }

    goto LABEL_155;
  }

LABEL_154:
  PBDataWriterWriteDoubleField();
  has = *p_has;
  if ((*p_has & 0x400000000000) == 0)
  {
LABEL_48:
    if ((has & 0x800000000000) == 0)
    {
      goto LABEL_49;
    }

    goto LABEL_156;
  }

LABEL_155:
  PBDataWriterWriteDoubleField();
  has = *p_has;
  if ((*p_has & 0x800000000000) == 0)
  {
LABEL_49:
    if ((has & 0x1000000000000) == 0)
    {
      goto LABEL_50;
    }

    goto LABEL_157;
  }

LABEL_156:
  PBDataWriterWriteDoubleField();
  has = *p_has;
  if ((*p_has & 0x1000000000000) == 0)
  {
LABEL_50:
    if ((has & 0x2000000000000) == 0)
    {
      goto LABEL_51;
    }

    goto LABEL_158;
  }

LABEL_157:
  PBDataWriterWriteUint32Field();
  has = *p_has;
  if ((*p_has & 0x2000000000000) == 0)
  {
LABEL_51:
    if ((has & 0x4000000000000) == 0)
    {
      goto LABEL_52;
    }

    goto LABEL_159;
  }

LABEL_158:
  PBDataWriterWriteBOOLField();
  has = *p_has;
  if ((*p_has & 0x4000000000000) == 0)
  {
LABEL_52:
    if ((has & 0x8000000000000) == 0)
    {
      goto LABEL_53;
    }

    goto LABEL_160;
  }

LABEL_159:
  PBDataWriterWriteFloatField();
  has = *p_has;
  if ((*p_has & 0x8000000000000) == 0)
  {
LABEL_53:
    if ((has & 0x10000000000000) == 0)
    {
      goto LABEL_54;
    }

    goto LABEL_161;
  }

LABEL_160:
  PBDataWriterWriteUint64Field();
  has = *p_has;
  if ((*p_has & 0x10000000000000) == 0)
  {
LABEL_54:
    if ((has & 0x20000000000000) == 0)
    {
      goto LABEL_56;
    }

    goto LABEL_55;
  }

LABEL_161:
  PBDataWriterWriteUint64Field();
  if ((*p_has & 0x20000000000000) != 0)
  {
LABEL_55:
    PBDataWriterWriteUint64Field();
  }

LABEL_56:
  v6 = [(MHSchemaMHVoiceTriggerEventInfo *)self configVersion];

  if (v6)
  {
    PBDataWriterWriteStringField();
  }

  v7 = [(MHSchemaMHVoiceTriggerEventInfo *)self configPath];

  if (v7)
  {
    PBDataWriterWriteStringField();
  }

  v8 = *p_has;
  if ((*p_has & 0x40000000000000) != 0)
  {
    PBDataWriterWriteBOOLField();
    v8 = *p_has;
    if ((*p_has & 0x80000000000000) == 0)
    {
LABEL_62:
      if ((v8 & 0x100000000000000) == 0)
      {
        goto LABEL_63;
      }

      goto LABEL_165;
    }
  }

  else if ((v8 & 0x80000000000000) == 0)
  {
    goto LABEL_62;
  }

  PBDataWriterWriteBOOLField();
  v8 = *p_has;
  if ((*p_has & 0x100000000000000) == 0)
  {
LABEL_63:
    if ((v8 & 0x200000000000000) == 0)
    {
      goto LABEL_64;
    }

    goto LABEL_166;
  }

LABEL_165:
  PBDataWriterWriteUint32Field();
  v8 = *p_has;
  if ((*p_has & 0x200000000000000) == 0)
  {
LABEL_64:
    if ((v8 & 0x400000000000000) == 0)
    {
      goto LABEL_65;
    }

    goto LABEL_167;
  }

LABEL_166:
  PBDataWriterWriteUint64Field();
  v8 = *p_has;
  if ((*p_has & 0x400000000000000) == 0)
  {
LABEL_65:
    if ((v8 & 0x800000000000000) == 0)
    {
      goto LABEL_66;
    }

    goto LABEL_168;
  }

LABEL_167:
  PBDataWriterWriteFloatField();
  v8 = *p_has;
  if ((*p_has & 0x800000000000000) == 0)
  {
LABEL_66:
    if ((v8 & 0x1000000000000000) == 0)
    {
      goto LABEL_67;
    }

    goto LABEL_169;
  }

LABEL_168:
  PBDataWriterWriteFloatField();
  v8 = *p_has;
  if ((*p_has & 0x1000000000000000) == 0)
  {
LABEL_67:
    if ((v8 & 0x2000000000000000) == 0)
    {
      goto LABEL_68;
    }

    goto LABEL_170;
  }

LABEL_169:
  PBDataWriterWriteInt32Field();
  v8 = *p_has;
  if ((*p_has & 0x2000000000000000) == 0)
  {
LABEL_68:
    if ((v8 & 0x4000000000000000) == 0)
    {
      goto LABEL_70;
    }

    goto LABEL_69;
  }

LABEL_170:
  PBDataWriterWriteBOOLField();
  if ((*p_has & 0x4000000000000000) != 0)
  {
LABEL_69:
    PBDataWriterWriteFloatField();
  }

LABEL_70:
  v9 = [(MHSchemaMHVoiceTriggerEventInfo *)self audioProviderUUID];

  if (v9)
  {
    v10 = [(MHSchemaMHVoiceTriggerEventInfo *)self audioProviderUUID];
    PBDataWriterWriteSubmessage();
  }

  if ((*p_has & 0x8000000000000000) != 0)
  {
    PBDataWriterWriteBOOLField();
  }

  v11 = *(&self->_has + 4);
  if (v11)
  {
    PBDataWriterWriteBOOLField();
    v11 = *(&self->_has + 4);
    if ((v11 & 2) == 0)
    {
LABEL_76:
      if ((v11 & 4) == 0)
      {
        goto LABEL_77;
      }

      goto LABEL_174;
    }
  }

  else if ((v11 & 2) == 0)
  {
    goto LABEL_76;
  }

  PBDataWriterWriteFloatField();
  v11 = *(&self->_has + 4);
  if ((v11 & 4) == 0)
  {
LABEL_77:
    if ((v11 & 8) == 0)
    {
      goto LABEL_79;
    }

    goto LABEL_78;
  }

LABEL_174:
  PBDataWriterWriteFloatField();
  if ((*(&self->_has + 4) & 8) != 0)
  {
LABEL_78:
    PBDataWriterWriteUint32Field();
  }

LABEL_79:
  v12 = [(MHSchemaMHVoiceTriggerEventInfo *)self captureFilePath];

  if (v12)
  {
    PBDataWriterWriteStringField();
  }

  v13 = [(MHSchemaMHVoiceTriggerEventInfo *)self configDataHash];

  if (v13)
  {
    PBDataWriterWriteStringField();
  }

  v14 = *(&self->_has + 4);
  if ((v14 & 0x10) != 0)
  {
    PBDataWriterWriteBOOLField();
    v14 = *(&self->_has + 4);
    if ((v14 & 0x20) == 0)
    {
LABEL_85:
      if ((v14 & 0x40) == 0)
      {
        goto LABEL_86;
      }

      goto LABEL_178;
    }
  }

  else if ((v14 & 0x20) == 0)
  {
    goto LABEL_85;
  }

  PBDataWriterWriteBOOLField();
  v14 = *(&self->_has + 4);
  if ((v14 & 0x40) == 0)
  {
LABEL_86:
    if ((v14 & 0x80) == 0)
    {
      goto LABEL_87;
    }

    goto LABEL_179;
  }

LABEL_178:
  PBDataWriterWriteBOOLField();
  v14 = *(&self->_has + 4);
  if ((v14 & 0x80) == 0)
  {
LABEL_87:
    if ((v14 & 0x100) == 0)
    {
      goto LABEL_88;
    }

    goto LABEL_180;
  }

LABEL_179:
  PBDataWriterWriteBOOLField();
  v14 = *(&self->_has + 4);
  if ((v14 & 0x100) == 0)
  {
LABEL_88:
    if ((v14 & 0x200) == 0)
    {
      goto LABEL_89;
    }

    goto LABEL_181;
  }

LABEL_180:
  PBDataWriterWriteUint64Field();
  v14 = *(&self->_has + 4);
  if ((v14 & 0x200) == 0)
  {
LABEL_89:
    if ((v14 & 0x400) == 0)
    {
      goto LABEL_90;
    }

    goto LABEL_182;
  }

LABEL_181:
  PBDataWriterWriteUint64Field();
  v14 = *(&self->_has + 4);
  if ((v14 & 0x400) == 0)
  {
LABEL_90:
    if ((v14 & 0x800) == 0)
    {
      goto LABEL_91;
    }

    goto LABEL_183;
  }

LABEL_182:
  PBDataWriterWriteUint64Field();
  v14 = *(&self->_has + 4);
  if ((v14 & 0x800) == 0)
  {
LABEL_91:
    if ((v14 & 0x1000) == 0)
    {
      goto LABEL_92;
    }

    goto LABEL_184;
  }

LABEL_183:
  PBDataWriterWriteUint64Field();
  v14 = *(&self->_has + 4);
  if ((v14 & 0x1000) == 0)
  {
LABEL_92:
    if ((v14 & 0x2000) == 0)
    {
      goto LABEL_93;
    }

    goto LABEL_185;
  }

LABEL_184:
  PBDataWriterWriteUint64Field();
  v14 = *(&self->_has + 4);
  if ((v14 & 0x2000) == 0)
  {
LABEL_93:
    if ((v14 & 0x4000) == 0)
    {
      goto LABEL_94;
    }

LABEL_186:
    PBDataWriterWriteUint64Field();
    if ((*(&self->_has + 4) & 0x8000) == 0)
    {
      goto LABEL_95;
    }

    goto LABEL_187;
  }

LABEL_185:
  PBDataWriterWriteUint64Field();
  v14 = *(&self->_has + 4);
  if ((v14 & 0x4000) != 0)
  {
    goto LABEL_186;
  }

LABEL_94:
  if ((v14 & 0x8000) == 0)
  {
    goto LABEL_95;
  }

LABEL_187:
  PBDataWriterWriteUint64Field();
LABEL_95:
  v15 = *(&self->_has + 10);
  if (v15)
  {
    PBDataWriterWriteUint64Field();
    v15 = *(&self->_has + 10);
  }

  if ((v15 & 2) != 0)
  {
    PBDataWriterWriteUint64Field();
  }

  v16 = [(MHSchemaMHVoiceTriggerEventInfo *)self triggerPhrase];

  if (v16)
  {
    PBDataWriterWriteStringField();
  }

  v17 = *(&self->_has + 10);
  if ((v17 & 4) != 0)
  {
    PBDataWriterWriteDoubleField();
    v17 = *(&self->_has + 10);
    if ((v17 & 8) == 0)
    {
LABEL_103:
      if ((v17 & 0x10) == 0)
      {
        goto LABEL_104;
      }

      goto LABEL_190;
    }
  }

  else if ((*(&self->_has + 10) & 8) == 0)
  {
    goto LABEL_103;
  }

  PBDataWriterWriteBOOLField();
  v17 = *(&self->_has + 10);
  if ((v17 & 0x10) == 0)
  {
LABEL_104:
    if ((v17 & 0x20) == 0)
    {
      goto LABEL_106;
    }

    goto LABEL_105;
  }

LABEL_190:
  PBDataWriterWriteUint64Field();
  if ((*(&self->_has + 10) & 0x20) != 0)
  {
LABEL_105:
    PBDataWriterWriteFloatField();
  }

LABEL_106:
}

- (void)setHasNeptuneDetectionApiScore:(BOOL)a3
{
  if (a3)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_has + 10) = *(&self->_has + 10) & 0xDF | v3;
}

- (void)setHasDisplayWakeTimeOffsetInNs:(BOOL)a3
{
  if (a3)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_has + 10) = *(&self->_has + 10) & 0xEF | v3;
}

- (void)setHasIsHSJSTriggerFromAlwaysOnMicBuffer:(BOOL)a3
{
  if (a3)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_has + 10) = *(&self->_has + 10) & 0xF7 | v3;
}

- (void)setHasLastDisplayWakeTimeOffsetInNs:(BOOL)a3
{
  if (a3)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_has + 10) = *(&self->_has + 10) & 0xFB | v3;
}

- (void)setHasSecondPassCheckerModelKeywordDetectionEndTimeInNs:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_has + 10) = *(&self->_has + 10) & 0xFD | v3;
}

- (void)setHasSecondPassLastAudioPacketReceptionTimeInNs:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x8000;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_has + 4) = v3 & 0x8000 | *(&self->_has + 4) & 0x7FFF;
}

- (void)setHasSecondPassFirstAudioPacketReceptionTimeInNs:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x4000;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_has + 4) = *(&self->_has + 4) & 0xBFFF | v3;
}

- (void)setHasSecondPassAudioStreamReadyTimeInNs:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x2000;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_has + 4) = *(&self->_has + 4) & 0xDFFF | v3;
}

- (void)setHasSecondPassAudioStreamStartTimeInNs:(BOOL)a3
{
  if (a3)
  {
    v3 = 4096;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_has + 4) = *(&self->_has + 4) & 0xEFFF | v3;
}

- (void)setHasSecondPassAssetLoadCompleteTimeInNs:(BOOL)a3
{
  if (a3)
  {
    v3 = 2048;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_has + 4) = *(&self->_has + 4) & 0xF7FF | v3;
}

- (void)setHasSecondPassAssetLoadStartTimeInNs:(BOOL)a3
{
  if (a3)
  {
    v3 = 1024;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_has + 4) = *(&self->_has + 4) & 0xFBFF | v3;
}

- (void)setHasSecondPassAssetQueryCompleteTimeInNs:(BOOL)a3
{
  if (a3)
  {
    v3 = 512;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_has + 4) = *(&self->_has + 4) & 0xFDFF | v3;
}

- (void)setHasSecondPassAssetQueryStartTimeInNs:(BOOL)a3
{
  if (a3)
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_has + 4) = *(&self->_has + 4) & 0xFEFF | v3;
}

- (void)setHasIsWakeFromSleep:(BOOL)a3
{
  if (a3)
  {
    v3 = 128;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_has + 4) = *(&self->_has + 4) & 0xFF7F | v3;
}

- (void)setHasIsBargeIn:(BOOL)a3
{
  if (a3)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_has + 4) = *(&self->_has + 4) & 0xFFBF | v3;
}

- (void)setHasDidAudioStall:(BOOL)a3
{
  if (a3)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_has + 4) = *(&self->_has + 4) & 0xFFDF | v3;
}

- (void)setHasSiriIsActiveOrOtherAssertion:(BOOL)a3
{
  if (a3)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_has + 4) = *(&self->_has + 4) & 0xFFEF | v3;
}

- (void)setHasLastConsecutiveVTRejects:(BOOL)a3
{
  if (a3)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_has + 4) = *(&self->_has + 4) & 0xFFF7 | v3;
}

- (void)setHasDowntimeInSec:(BOOL)a3
{
  if (a3)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_has + 4) = *(&self->_has + 4) & 0xFFFB | v3;
}

- (void)setHasUptimeInSec:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_has + 4) = *(&self->_has + 4) & 0xFFFD | v3;
}

- (void)setHasOnBatteryPower:(BOOL)a3
{
  v3 = 0x8000000000000000;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = v3 & 0x8000000000000000 | *&self->_has & 0x7FFFFFFFFFFFFFFFLL;
}

- (void)setHasMediaVolume:(BOOL)a3
{
  v3 = 0x4000000000000000;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xBFFFFFFFFFFFFFFFLL | v3;
}

- (void)setHasIsMediaPlaying:(BOOL)a3
{
  v3 = 0x2000000000000000;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xDFFFFFFFFFFFFFFFLL | v3;
}

- (void)setHasHostPowerStateAtTrigger:(BOOL)a3
{
  v3 = 0x1000000000000000;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEFFFFFFFFFFFFFFFLL | v3;
}

- (void)setHasCumulativeDowntimeInSec:(BOOL)a3
{
  v3 = 0x800000000000000;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7FFFFFFFFFFFFFFLL | v3;
}

- (void)setHasCumulativeUptimeInSec:(BOOL)a3
{
  v3 = 0x400000000000000;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFBFFFFFFFFFFFFFFLL | v3;
}

- (void)setHasTwoShotAudibleFeedbackDelayInNs:(BOOL)a3
{
  v3 = 0x200000000000000;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFDFFFFFFFFFFFFFFLL | v3;
}

- (void)setHasActiveChannel:(BOOL)a3
{
  v3 = 0x100000000000000;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFEFFFFFFFFFFFFFFLL | v3;
}

- (void)setHasDeviceHandheld:(BOOL)a3
{
  v3 = 0x80000000000000;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFF7FFFFFFFFFFFFFLL | v3;
}

- (void)setHasIsSecondChance:(BOOL)a3
{
  v3 = 0x40000000000000;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFBFFFFFFFFFFFFFLL | v3;
}

- (void)setHasTotalSamplesAtEndOfCapture:(BOOL)a3
{
  v3 = 0x20000000000000;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFDFFFFFFFFFFFFFLL | v3;
}

- (void)setHasTotalSamplesAtTriggerEnd:(BOOL)a3
{
  v3 = 0x10000000000000;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFEFFFFFFFFFFFFFLL | v3;
}

- (void)setHasTotalSamplesAtTriggerStart:(BOOL)a3
{
  v3 = 0x8000000000000;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFF7FFFFFFFFFFFFLL | v3;
}

- (void)setHasTriggerDurationInNs:(BOOL)a3
{
  v3 = 0x4000000000000;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFBFFFFFFFFFFFFLL | v3;
}

- (void)setHasIsContinuous:(BOOL)a3
{
  v3 = 0x2000000000000;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFDFFFFFFFFFFFFLL | v3;
}

- (void)setHasHardwareSamplerate:(BOOL)a3
{
  v3 = 0x1000000000000;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFEFFFFFFFFFFFFLL | v3;
}

- (void)setHasTriggerFiredTime:(BOOL)a3
{
  v3 = 0x800000000000;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFF7FFFFFFFFFFFLL | v3;
}

- (void)setHasTriggerEndTime:(BOOL)a3
{
  v3 = 0x400000000000;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFBFFFFFFFFFFFLL | v3;
}

- (void)setHasTriggerStartTime:(BOOL)a3
{
  v3 = 0x200000000000;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFDFFFFFFFFFFFLL | v3;
}

- (void)setHasTriggerFireTimeOffsetInNs:(BOOL)a3
{
  v3 = 0x100000000000;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFEFFFFFFFFFFFLL | v3;
}

- (void)setHasTriggerEndTimeOffsetInNs:(BOOL)a3
{
  v3 = 0x80000000000;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFF7FFFFFFFFFFLL | v3;
}

- (void)setHasTriggerStartTimeOffsetInNs:(BOOL)a3
{
  v3 = 0x40000000000;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFBFFFFFFFFFFLL | v3;
}

- (void)setHasThreshold:(BOOL)a3
{
  v3 = 0x20000000000;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFDFFFFFFFFFFLL | v3;
}

- (void)setHasRecognizerScaleFactor:(BOOL)a3
{
  v3 = 0x10000000000;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFEFFFFFFFFFFLL | v3;
}

- (void)setHasRecognizerWaitTimeInNs:(BOOL)a3
{
  v3 = 0x8000000000;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFF7FFFFFFFFFLL | v3;
}

- (void)setHasRecognizerThresholdOffset:(BOOL)a3
{
  v3 = 0x4000000000;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFBFFFFFFFFFLL | v3;
}

- (void)setHasRecognizerScore:(BOOL)a3
{
  v3 = 0x2000000000;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFDFFFFFFFFFLL | v3;
}

- (void)setHasEffectiveThreshold:(BOOL)a3
{
  v3 = 0x1000000000;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFEFFFFFFFFFLL | v3;
}

- (void)setHasIsMaximized:(BOOL)a3
{
  v3 = 0x800000000;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFF7FFFFFFFFLL | v3;
}

- (void)setHasTriggerScore:(BOOL)a3
{
  v3 = 0x400000000;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFFBFFFFFFFFLL | v3;
}

- (void)setHasTotalSampleCount:(BOOL)a3
{
  v3 = 0x200000000;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFFDFFFFFFFFLL | v3;
}

- (void)setHasIsTriggerEvent:(BOOL)a3
{
  v3 = 0x100000000;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFFEFFFFFFFFLL | v3;
}

- (void)setHasAnalyzerTrailingSamples:(BOOL)a3
{
  v3 = 0x80000000;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFFF7FFFFFFFLL | v3;
}

- (void)setHasAnalyzerPrependingSamples:(BOOL)a3
{
  v3 = 0x40000000;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFFFBFFFFFFFLL | v3;
}

- (void)setHasExtraSamplesAtStart:(BOOL)a3
{
  v3 = 0x20000000;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFFFDFFFFFFFLL | v3;
}

- (void)setHasTriggerFireNs:(BOOL)a3
{
  v3 = 0x10000000;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFFFEFFFFFFFLL | v3;
}

- (void)setHasTriggerEndNs:(BOOL)a3
{
  v3 = 0x8000000;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFFFF7FFFFFFLL | v3;
}

- (void)setHasTriggerStartNs:(BOOL)a3
{
  v3 = 0x4000000;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFFFFBFFFFFFLL | v3;
}

- (void)setHasTriggerFireSampleCount:(BOOL)a3
{
  v3 = 0x2000000;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFFFFDFFFFFFLL | v3;
}

- (void)setHasTriggerEndSampleCount:(BOOL)a3
{
  v3 = 0x1000000;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFFFFEFFFFFFLL | v3;
}

- (void)setHasClientStartSampleCount:(BOOL)a3
{
  v3 = 0x800000;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFFFFF7FFFFFLL | v3;
}

- (void)setHasTriggerStartSampleCount:(BOOL)a3
{
  v3 = 0x400000;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFFFFFBFFFFFLL | v3;
}

- (void)setHasEnhancedCarplayTriggerMode:(BOOL)a3
{
  v3 = 0x200000;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFFFFFDFFFFFLL | v3;
}

- (void)setHasRemoteMicVADMyriadThreshold:(BOOL)a3
{
  v3 = 0x100000;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFFFFFEFFFFFLL | v3;
}

- (void)setHasRemoteMicVADThreshold:(BOOL)a3
{
  v3 = 0x80000;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFFFFFF7FFFFLL | v3;
}

- (void)setHasRemoteMicVADScore:(BOOL)a3
{
  v3 = 0x40000;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFFFFFFBFFFFLL | v3;
}

- (void)setHasShadowMicScoreThresholdForVAD:(BOOL)a3
{
  v3 = 0x20000;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFFFFFFDFFFFLL | v3;
}

- (void)setHasShadowMicScore:(BOOL)a3
{
  v3 = 0x10000;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFFFFFFEFFFFLL | v3;
}

- (void)setHasTriggerExplicitTDSRSatScore:(BOOL)a3
{
  v3 = 0x8000;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFFFFFFF7FFFLL | v3;
}

- (void)setHasTriggerExplicitSatScore:(BOOL)a3
{
  v3 = 0x4000;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFFFFFFFBFFFLL | v3;
}

- (void)setHasDeltaTimeInNsFromlastPHSReject:(BOOL)a3
{
  v3 = 0x2000;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFFFFFFFDFFFLL | v3;
}

- (void)setHasLastConsecutivePHSRejects:(BOOL)a3
{
  v3 = 4096;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFFFFFFFEFFFLL | v3;
}

- (void)setHasSatBeingTrained:(BOOL)a3
{
  v3 = 2048;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFFFFFFFF7FFLL | v3;
}

- (void)setHasBiometricClue:(BOOL)a3
{
  v3 = 1024;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFFFFFFFFBFFLL | v3;
}

- (void)setHasTdSpeakerRecognizerCombinationWeight:(BOOL)a3
{
  v3 = 512;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFFFFFFFFDFFLL | v3;
}

- (void)setHasTdSpeakerRecognizerCombinedThreshold:(BOOL)a3
{
  v3 = 256;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFFFFFFFFEFFLL | v3;
}

- (void)setHasTdSpeakerRecognizerCombinedScore:(BOOL)a3
{
  v3 = 128;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFFFFFFFFF7FLL | v3;
}

- (void)setHasTdSpeakerRecognizerScore:(BOOL)a3
{
  v3 = 64;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFFFFFFFFFBFLL | v3;
}

- (void)setHasSatTriggered:(BOOL)a3
{
  v3 = 32;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFFFFFFFFFDFLL | v3;
}

- (void)setHasSatThreshold:(BOOL)a3
{
  v3 = 16;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFFFFFFFFFEFLL | v3;
}

- (void)setHasSatNumTrainingUtterances:(BOOL)a3
{
  v3 = 8;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFFFFFFFFFF7 | v3;
}

- (void)setHasSatScore:(BOOL)a3
{
  v3 = 4;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFFFFFFFFFFBLL | v3;
}

- (void)setHasSecondPassAnalyerEndSampleCount:(BOOL)a3
{
  v3 = 2;
  if (!a3)
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFFFFFFFFFFFFFDLL | v3;
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v9.receiver = self;
  v9.super_class = MHSchemaMHVoiceTriggerEventInfo;
  v4 = a3;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:v4];
  v6 = [(MHSchemaMHVoiceTriggerEventInfo *)self audioProviderUUID:v9.receiver];
  v7 = [v6 applySensitiveConditionsPolicy:v4];

  LODWORD(v4) = [v7 suppressMessage];
  if (v4)
  {
    [(MHSchemaMHVoiceTriggerEventInfo *)self deleteAudioProviderUUID];
  }

  return v5;
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end