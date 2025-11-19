@interface SCDAInstrumentation
- (SCDAInstrumentation)init;
- (id)_boostTypeAsString:(unsigned __int8)a3;
- (id)_createSchemaClientEvent:(id)a3;
- (void)_logRequestLinkMessageRequestId:(id)a3 cdaId:(id)a4;
- (void)_sendAndLogClientEvent:(id)a3 stState:(int)a4 atTimestamp:(unint64_t)a5;
- (void)logCDADeviceStateActivityEnded:(int)a3 withCdaId:(id)a4 withTimestamp:(unint64_t)a5;
- (void)logCDADeviceStateActivityStartedOrChanged:(int)a3 withTrigger:(int)a4 withCdaId:(id)a5 withTimestamp:(unint64_t)a6;
- (void)logCDAElectionAdvertisingEnded:(int)a3 withCdaId:(id)a4 withTimestamp:(unint64_t)a5;
- (void)logCDAElectionAdvertisingEnding:(int)a3 withCdaId:(id)a4 withTimestamp:(unint64_t)a5;
- (void)logCDAElectionAdvertisingStarted:(int)a3 withCdaId:(id)a4 withTimestamp:(unint64_t)a5;
- (void)logCDAElectionAdvertisingStarting:(int)a3 withDelay:(float)a4 withInterval:(float)a5 withVoiceTriggerLatency:(float)a6 withCdaId:(id)a7 withTimestamp:(unint64_t)a8;
- (void)logCDAElectionDecisionMade:(int)a3 withDecision:(int)a4 withPreviousDecision:(int)a5 timeSincePreviousDecision:(unint64_t)a6 withWinningDevice:(id)a7 withThisDevice:(id)a8 withParticipants:(id)a9 withRawScore:(unsigned int)a10 withBoost:(id)a11 withCdaId:(id)a12 currentRequestId:(id)a13 withTimestamp:(unint64_t)a14;
- (void)logCDAElectionDecisionMadeDebug:(int)a3 withCrossDeviceArbitrationAllowed:(BOOL)a4 advertisementData:(id)a5 withDeviceGroup:(unsigned int)a6 withCdaId:(id)a7 withTimestamp:(unint64_t)a8;
- (void)logCDAElectionTimerEnded:(int)a3 withCdaId:(id)a4 withTimestamp:(unint64_t)a5;
- (void)updateBoost:(unsigned __int8)a3 value:(unsigned int)a4;
- (void)updateIsTrump:(BOOL)a3 withReason:(int)a4;
- (void)userFeedbackPublishArbitrationParticipationContext:(id)a3;
@end

@implementation SCDAInstrumentation

- (void)userFeedbackPublishArbitrationParticipationContext:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __74__SCDAInstrumentation_userFeedbackPublishArbitrationParticipationContext___block_invoke;
  v7[3] = &unk_1E85D38A0;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(queue, v7);
}

uint64_t __74__SCDAInstrumentation_userFeedbackPublishArbitrationParticipationContext___block_invoke(uint64_t a1)
{
  [*(a1 + 32) updateBoosts:*(*(a1 + 40) + 24) triggerType:*(*(a1 + 40) + 32) lastWin:*(*(a1 + 40) + 40) lastDecision:*(*(a1 + 40) + 48)];
  v2 = *(a1 + 32);
  v3 = *(*(a1 + 40) + 16);

  return [v3 publishArbitrationParticipationContext:v2];
}

- (void)_logRequestLinkMessageRequestId:(id)a3 cdaId:(id)a4
{
  v17 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v6 && v7)
  {
    queue = self->_queue;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __61__SCDAInstrumentation__logRequestLinkMessageRequestId_cdaId___block_invoke;
    v12[3] = &unk_1E85D38A0;
    v13 = v7;
    v14 = v6;
    dispatch_async(queue, v12);
  }

  else
  {
    v10 = SCDALogContextAnalytics;
    if (os_log_type_enabled(SCDALogContextAnalytics, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315138;
      v16 = "[SCDAInstrumentation _logRequestLinkMessageRequestId:cdaId:]";
      _os_log_debug_impl(&dword_1DA758000, v10, OS_LOG_TYPE_DEBUG, "%s Skipped emitting RequestLinkEvent as requestId or cdaId is nil", buf, 0xCu);
    }
  }

  v11 = *MEMORY[0x1E69E9840];
}

void __61__SCDAInstrumentation__logRequestLinkMessageRequestId_cdaId___block_invoke(uint64_t a1)
{
  v26 = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E69CF640]);
  v3 = objc_alloc(MEMORY[0x1E696AFB0]);
  v4 = [*(a1 + 32) UUIDString];
  v5 = [v3 initWithUUIDString:v4];
  v6 = [v2 initWithNSUUID:v5];

  v7 = objc_alloc_init(MEMORY[0x1E69CF5F8]);
  [v7 setUuid:v6];
  [v7 setComponent:23];
  v8 = objc_alloc(MEMORY[0x1E69CF640]);
  v9 = objc_alloc(MEMORY[0x1E696AFB0]);
  v10 = [*(a1 + 40) UUIDString];
  v11 = [v9 initWithUUIDString:v10];
  v12 = [v8 initWithNSUUID:v11];

  v13 = objc_alloc_init(MEMORY[0x1E69CF5F8]);
  [v13 setUuid:v12];
  [v13 setComponent:1];
  v14 = objc_alloc_init(MEMORY[0x1E69CF5E8]);
  [v14 setSource:v7];
  [v14 setTarget:v13];
  v15 = [MEMORY[0x1E69CE1E8] sharedStream];
  [v15 emitMessage:v14];

  v16 = SCDALogContextAnalytics;
  if (os_log_type_enabled(SCDALogContextAnalytics, OS_LOG_TYPE_DEBUG))
  {
    v19 = *(a1 + 32);
    v18 = *(a1 + 40);
    v20 = 136315650;
    v21 = "[SCDAInstrumentation _logRequestLinkMessageRequestId:cdaId:]_block_invoke";
    v22 = 2112;
    v23 = v18;
    v24 = 2112;
    v25 = v19;
    _os_log_debug_impl(&dword_1DA758000, v16, OS_LOG_TYPE_DEBUG, "%s Emitting Myriad RequestLinkEvent with requestId: %@, cdaId: %@", &v20, 0x20u);
  }

  v17 = *MEMORY[0x1E69E9840];
}

- (id)_createSchemaClientEvent:(id)a3
{
  v3 = MEMORY[0x1E69CE8D0];
  v4 = a3;
  v5 = objc_alloc_init(v3);
  v6 = [objc_alloc(MEMORY[0x1E69CF640]) initWithNSUUID:v4];

  v7 = objc_alloc_init(MEMORY[0x1E69CE8D8]);
  [v7 setCdaId:v6];
  [v5 setEventMetadata:v7];

  return v5;
}

- (void)updateIsTrump:(BOOL)a3 withReason:(int)a4
{
  queue = self->_queue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __48__SCDAInstrumentation_updateIsTrump_withReason___block_invoke;
  v5[3] = &unk_1E85D2A78;
  v5[4] = self;
  v7 = a3;
  v6 = a4;
  dispatch_async(queue, v5);
}

void __48__SCDAInstrumentation_updateIsTrump_withReason___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = *(*(a1 + 32) + 24);
  if (!v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E69CE948]);
    v4 = *(a1 + 32);
    v5 = *(v4 + 24);
    *(v4 + 24) = v3;

    v2 = *(*(a1 + 32) + 24);
  }

  [v2 setIsTrump:*(a1 + 44)];
  [*(*(a1 + 32) + 24) setTrumpReason:*(a1 + 40)];
  v6 = SCDALogContextAnalytics;
  if (os_log_type_enabled(SCDALogContextAnalytics, OS_LOG_TYPE_DEBUG))
  {
    v8 = *(a1 + 44);
    v9 = *(a1 + 40) - 1;
    if (v9 > 7)
    {
      v10 = @"CDATRUMPREASON_UNKNOWN";
    }

    else
    {
      v10 = off_1E85D2BA0[v9];
    }

    v12 = 136315650;
    v13 = "[SCDAInstrumentation updateIsTrump:withReason:]_block_invoke";
    v14 = 1024;
    v15 = v8;
    v16 = 2112;
    v17 = v10;
    v11 = v6;
    _os_log_debug_impl(&dword_1DA758000, v11, OS_LOG_TYPE_DEBUG, "%s trump: %d, with Reason:%@", &v12, 0x1Cu);
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (void)updateBoost:(unsigned __int8)a3 value:(unsigned int)a4
{
  queue = self->_queue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __41__SCDAInstrumentation_updateBoost_value___block_invoke;
  v5[3] = &unk_1E85D2A78;
  v5[4] = self;
  v7 = a3;
  v6 = a4;
  dispatch_async(queue, v5);
}

void __41__SCDAInstrumentation_updateBoost_value___block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  if (!*(*(a1 + 32) + 24))
  {
    v2 = objc_alloc_init(MEMORY[0x1E69CE948]);
    v3 = *(a1 + 32);
    v4 = *(v3 + 24);
    *(v3 + 24) = v2;
  }

  v5 = SCDALogContextAnalytics;
  if (os_log_type_enabled(SCDALogContextAnalytics, OS_LOG_TYPE_DEBUG))
  {
    v8 = *(a1 + 32);
    v9 = *(a1 + 44);
    v10 = v5;
    v11 = [v8 _boostTypeAsString:v9];
    v12 = *(a1 + 40);
    v13 = 136315650;
    v14 = "[SCDAInstrumentation updateBoost:value:]_block_invoke";
    v15 = 2112;
    v16 = v11;
    v17 = 1024;
    v18 = v12;
    _os_log_debug_impl(&dword_1DA758000, v10, OS_LOG_TYPE_DEBUG, "%s boostType: %@, boostValue:%d", &v13, 0x1Cu);
  }

  v6 = *(a1 + 44);
  if (v6 <= 3)
  {
    switch(v6)
    {
      case 1u:
        [*(*(a1 + 32) + 24) setDeviceBoost:*(a1 + 40)];
        break;
      case 2u:
        [*(*(a1 + 32) + 24) setRecentUnlockBoost:*(a1 + 40)];
        break;
      case 3u:
        [*(*(a1 + 32) + 24) setRecentRaiseToWakeBoost:*(a1 + 40)];
        break;
    }
  }

  else if (*(a1 + 44) > 5u)
  {
    if (v6 == 6)
    {
      [*(*(a1 + 32) + 24) setRecentPlaybackBoost:*(a1 + 40)];
    }

    else if (v6 == 7)
    {
      [*(*(a1 + 32) + 24) setRecentAlarmBoost:*(a1 + 40)];
    }
  }

  else if (v6 == 4)
  {
    [*(*(a1 + 32) + 24) setRecentSiriRequestBoost:*(a1 + 40)];
  }

  else if (v6 == 5)
  {
    [*(*(a1 + 32) + 24) setRecentMotionBoost:*(a1 + 40)];
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (id)_boostTypeAsString:(unsigned __int8)a3
{
  if ((a3 - 1) > 6)
  {
    return @"SCDABoostTypeUnknown";
  }

  else
  {
    return off_1E85D2B68[(a3 - 1)];
  }
}

- (void)_sendAndLogClientEvent:(id)a3 stState:(int)a4 atTimestamp:(unint64_t)a5
{
  v6 = MEMORY[0x1E69CE1E8];
  v7 = a3;
  v8 = [v6 sharedStream];
  [v8 emitMessage:v7 timestamp:a5];
}

- (void)logCDAElectionDecisionMadeDebug:(int)a3 withCrossDeviceArbitrationAllowed:(BOOL)a4 advertisementData:(id)a5 withDeviceGroup:(unsigned int)a6 withCdaId:(id)a7 withTimestamp:(unint64_t)a8
{
  v14 = a5;
  v15 = a7;
  queue = self->_queue;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __147__SCDAInstrumentation_logCDAElectionDecisionMadeDebug_withCrossDeviceArbitrationAllowed_advertisementData_withDeviceGroup_withCdaId_withTimestamp___block_invoke;
  v19[3] = &unk_1E85D2A50;
  v19[4] = self;
  v20 = v15;
  v25 = a4;
  v23 = a6;
  v24 = a3;
  v21 = v14;
  v22 = a8;
  v17 = v14;
  v18 = v15;
  dispatch_async(queue, v19);
}

void __147__SCDAInstrumentation_logCDAElectionDecisionMadeDebug_withCrossDeviceArbitrationAllowed_advertisementData_withDeviceGroup_withCdaId_withTimestamp___block_invoke(uint64_t a1)
{
  v25 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) _createSchemaClientEvent:*(a1 + 40)];
  v3 = objc_alloc_init(MEMORY[0x1E69CE8E0]);
  [v3 setIsCrossDeviceArbitrationAllowed:*(a1 + 72)];
  [v3 setDeviceGroup:*(a1 + 64)];
  [v3 setAdvertisementDatas:*(a1 + 48)];
  [v2 setDebugElectionDecisionMade:v3];
  [*(a1 + 32) _sendAndLogClientEvent:v2 stState:*(a1 + 68) atTimestamp:*(a1 + 56)];
  v4 = SCDALogContextAnalytics;
  if (os_log_type_enabled(SCDALogContextAnalytics, OS_LOG_TYPE_DEBUG))
  {
    v6 = *(a1 + 40);
    v7 = *(a1 + 68) - 1;
    if (v7 > 0x11)
    {
      v8 = @"CDASTATE_UNKNOWN";
    }

    else
    {
      v8 = off_1E85D2AD8[v7];
    }

    v9 = *(a1 + 72);
    v10 = *(a1 + 64);
    v11 = *(a1 + 48);
    v13 = 136316418;
    v14 = "[SCDAInstrumentation logCDAElectionDecisionMadeDebug:withCrossDeviceArbitrationAllowed:advertisementData:withDeviceGroup:withCdaId:withTimestamp:]_block_invoke";
    v15 = 2112;
    v16 = v6;
    v17 = 2112;
    v18 = v8;
    v19 = 1024;
    v20 = v9;
    v21 = 1024;
    v22 = v10;
    v23 = 2112;
    v24 = v11;
    v12 = v4;
    _os_log_debug_impl(&dword_1DA758000, v12, OS_LOG_TYPE_DEBUG, "%s cdaId: %@, state: %@, arbitrationAllowed: %d, deviceGroup: %d, advertisements: %@", &v13, 0x36u);
  }

  v5 = *MEMORY[0x1E69E9840];
}

- (void)logCDAElectionDecisionMade:(int)a3 withDecision:(int)a4 withPreviousDecision:(int)a5 timeSincePreviousDecision:(unint64_t)a6 withWinningDevice:(id)a7 withThisDevice:(id)a8 withParticipants:(id)a9 withRawScore:(unsigned int)a10 withBoost:(id)a11 withCdaId:(id)a12 currentRequestId:(id)a13 withTimestamp:(unint64_t)a14
{
  v18 = a7;
  v19 = a8;
  v20 = a9;
  v21 = a11;
  v22 = a12;
  v23 = a13;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __224__SCDAInstrumentation_logCDAElectionDecisionMade_withDecision_withPreviousDecision_timeSincePreviousDecision_withWinningDevice_withThisDevice_withParticipants_withRawScore_withBoost_withCdaId_currentRequestId_withTimestamp___block_invoke;
  block[3] = &unk_1E85D2A28;
  block[4] = self;
  v34 = v22;
  v42 = a4;
  v43 = a5;
  v35 = v18;
  v36 = v19;
  v37 = v21;
  v38 = v20;
  v44 = a10;
  v45 = a3;
  v40 = a6;
  v41 = a14;
  v39 = v23;
  v24 = v23;
  v25 = v20;
  v26 = v21;
  v27 = v19;
  v28 = v18;
  v29 = v22;
  dispatch_async(queue, block);
}

void __224__SCDAInstrumentation_logCDAElectionDecisionMade_withDecision_withPreviousDecision_timeSincePreviousDecision_withWinningDevice_withThisDevice_withParticipants_withRawScore_withBoost_withCdaId_currentRequestId_withTimestamp___block_invoke(uint64_t a1)
{
  v61 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) _createSchemaClientEvent:*(a1 + 40)];
  v3 = objc_alloc_init(MEMORY[0x1E69CE930]);
  [v3 setDecision:*(a1 + 104)];
  [v3 setPreviousDecision:*(a1 + 108)];
  [v3 setWinningDevice:*(a1 + 48)];
  [v3 setThisDevice:*(a1 + 56)];
  [v3 setRawGoodnessScore:*(a1 + 112)];
  [v3 setTimeSinceLastDecisionInMs:*(a1 + 88)];
  v4 = *(a1 + 64);
  if (!v4)
  {
    v4 = *(*(a1 + 32) + 24);
  }

  [v3 setGoodnessScoreBoosts:v4];
  [v3 setHeardParticipants:*(a1 + 72)];
  [v2 setElectionDecisionMade:v3];
  [*(a1 + 32) _sendAndLogClientEvent:v2 stState:*(a1 + 116) atTimestamp:*(a1 + 96)];
  [*(a1 + 32) _logRequestLinkMessageRequestId:*(a1 + 80) cdaId:*(a1 + 40)];
  v5 = SCDALogContextAnalytics;
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v10 = *(a1 + 116) - 1;
    if (v10 > 0x11)
    {
      v11 = @"CDASTATE_UNKNOWN";
    }

    else
    {
      v11 = off_1E85D2AD8[v10];
    }

    v32 = v11;
    v12 = @"CDADECISION_UNKNOWN";
    v13 = *(a1 + 104);
    v14 = *(a1 + 108);
    if (v13 == 1)
    {
      v15 = @"CDADECISION_WIN";
    }

    else
    {
      v15 = @"CDADECISION_UNKNOWN";
    }

    if (v13 == 2)
    {
      v16 = @"CDADECISION_LOSS";
    }

    else
    {
      v16 = v15;
    }

    if (v14 == 1)
    {
      v12 = @"CDADECISION_WIN";
    }

    if (v14 == 2)
    {
      v12 = @"CDADECISION_LOSS";
    }

    v29 = v12;
    v30 = *(a1 + 88);
    v31 = v16;
    v17 = *(a1 + 48);
    v26 = *(a1 + 40);
    v28 = [v17 goodnessScore];
    v18 = *(a1 + 56);
    v27 = [v18 goodnessScore];
    v19 = [*(a1 + 72) debugDescription];
    v25 = *(a1 + 112);
    v20 = [v3 goodnessScoreBoosts];
    v21 = [v20 debugDescription];
    v22 = [v3 goodnessScoreBoosts];
    v23 = [v22 trumpReason] - 1;
    if (v23 > 7)
    {
      v24 = @"CDATRUMPREASON_UNKNOWN";
    }

    else
    {
      v24 = off_1E85D2BA0[v23];
    }

    *buf = 136318466;
    v34 = "[SCDAInstrumentation logCDAElectionDecisionMade:withDecision:withPreviousDecision:timeSincePreviousDecision:withWinningDevice:withThisDevice:withParticipants:withRawScore:withBoost:withCdaId:currentRequestId:withTimestamp:]_block_invoke";
    v35 = 2112;
    v36 = v26;
    v37 = 2112;
    v38 = v32;
    v39 = 2112;
    v40 = v31;
    v41 = 2112;
    v42 = v29;
    v43 = 2048;
    v44 = v30;
    v45 = 2112;
    v46 = v17;
    v47 = 1024;
    v48 = v28;
    v49 = 2112;
    v50 = v18;
    v51 = 1024;
    v52 = v27;
    v53 = 2112;
    v54 = v19;
    v55 = 1024;
    v56 = v25;
    v57 = 2112;
    v58 = v21;
    v59 = 2112;
    v60 = v24;
    _os_log_debug_impl(&dword_1DA758000, v5, OS_LOG_TYPE_DEBUG, "%s cdaId: %@, state: %@, withDecision: %@, withPreviousDecision: %@, timeSincePreviousDecision: %llu, withWinningDevice: %@ (score: %d), withThisDevice: %@ (score: %d), withParticipants: %@, withRawScore:%u, withBoost:%@, withTrumpReason:%@", buf, 0x82u);
  }

  v6 = *(a1 + 32);
  v7 = *(v6 + 24);
  *(v6 + 24) = 0;

  *(*(a1 + 32) + 32) = 0;
  v8 = mach_absolute_time();
  *(*(a1 + 32) + 48) = v8;
  if (*(a1 + 104) == 1)
  {
    *(*(a1 + 32) + 40) = v8;
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (void)logCDAElectionTimerEnded:(int)a3 withCdaId:(id)a4 withTimestamp:(unint64_t)a5
{
  v8 = a4;
  queue = self->_queue;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __72__SCDAInstrumentation_logCDAElectionTimerEnded_withCdaId_withTimestamp___block_invoke;
  v11[3] = &unk_1E85D29D8;
  v11[4] = self;
  v12 = v8;
  v14 = a3;
  v13 = a5;
  v10 = v8;
  dispatch_async(queue, v11);
}

void __72__SCDAInstrumentation_logCDAElectionTimerEnded_withCdaId_withTimestamp___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) _createSchemaClientEvent:*(a1 + 40)];
  v3 = objc_alloc_init(MEMORY[0x1E69CE938]);
  [v3 setState:*(a1 + 56)];
  [v2 setElectionTimerEnded:v3];
  [*(a1 + 32) _sendAndLogClientEvent:v2 stState:*(a1 + 56) atTimestamp:*(a1 + 48)];
  v4 = SCDALogContextAnalytics;
  if (os_log_type_enabled(SCDALogContextAnalytics, OS_LOG_TYPE_DEBUG))
  {
    v6 = *(a1 + 40);
    v7 = *(a1 + 56) - 1;
    if (v7 > 0x11)
    {
      v8 = @"CDASTATE_UNKNOWN";
    }

    else
    {
      v8 = off_1E85D2AD8[v7];
    }

    v10 = 136315650;
    v11 = "[SCDAInstrumentation logCDAElectionTimerEnded:withCdaId:withTimestamp:]_block_invoke";
    v12 = 2112;
    v13 = v6;
    v14 = 2112;
    v15 = v8;
    v9 = v4;
    _os_log_debug_impl(&dword_1DA758000, v9, OS_LOG_TYPE_DEBUG, "%s cdaId: %@, state: %@", &v10, 0x20u);
  }

  v5 = *MEMORY[0x1E69E9840];
}

- (void)logCDAElectionAdvertisingEnding:(int)a3 withCdaId:(id)a4 withTimestamp:(unint64_t)a5
{
  v8 = a4;
  queue = self->_queue;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __79__SCDAInstrumentation_logCDAElectionAdvertisingEnding_withCdaId_withTimestamp___block_invoke;
  v11[3] = &unk_1E85D29D8;
  v11[4] = self;
  v12 = v8;
  v14 = a3;
  v13 = a5;
  v10 = v8;
  dispatch_async(queue, v11);
}

void __79__SCDAInstrumentation_logCDAElectionAdvertisingEnding_withCdaId_withTimestamp___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) _createSchemaClientEvent:*(a1 + 40)];
  v3 = objc_alloc_init(MEMORY[0x1E69CE918]);
  [v3 setState:*(a1 + 56)];
  v4 = objc_alloc_init(MEMORY[0x1E69CE8E8]);
  [v4 setStartedOrChanged:v3];
  [v2 setCdaAdvertisingEndChanged:v4];
  [*(a1 + 32) _sendAndLogClientEvent:v2 stState:*(a1 + 56) atTimestamp:*(a1 + 48)];
  v5 = SCDALogContextAnalytics;
  if (os_log_type_enabled(SCDALogContextAnalytics, OS_LOG_TYPE_DEBUG))
  {
    v7 = *(a1 + 40);
    v8 = *(a1 + 56) - 1;
    if (v8 > 0x11)
    {
      v9 = @"CDASTATE_UNKNOWN";
    }

    else
    {
      v9 = off_1E85D2AD8[v8];
    }

    v11 = 136315650;
    v12 = "[SCDAInstrumentation logCDAElectionAdvertisingEnding:withCdaId:withTimestamp:]_block_invoke";
    v13 = 2112;
    v14 = v7;
    v15 = 2112;
    v16 = v9;
    v10 = v5;
    _os_log_debug_impl(&dword_1DA758000, v10, OS_LOG_TYPE_DEBUG, "%s cdaId: %@, state: %@", &v11, 0x20u);
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (void)logCDAElectionAdvertisingEnded:(int)a3 withCdaId:(id)a4 withTimestamp:(unint64_t)a5
{
  v8 = a4;
  queue = self->_queue;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __78__SCDAInstrumentation_logCDAElectionAdvertisingEnded_withCdaId_withTimestamp___block_invoke;
  v11[3] = &unk_1E85D29D8;
  v11[4] = self;
  v12 = v8;
  v14 = a3;
  v13 = a5;
  v10 = v8;
  dispatch_async(queue, v11);
}

void __78__SCDAInstrumentation_logCDAElectionAdvertisingEnded_withCdaId_withTimestamp___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) _createSchemaClientEvent:*(a1 + 40)];
  v3 = objc_alloc_init(MEMORY[0x1E69CE910]);
  [v3 setState:*(a1 + 56)];
  v4 = objc_alloc_init(MEMORY[0x1E69CE8E8]);
  [v4 setEnded:v3];
  [v2 setCdaAdvertisingEndChanged:v4];
  [*(a1 + 32) _sendAndLogClientEvent:v2 stState:*(a1 + 56) atTimestamp:*(a1 + 48)];
  v5 = SCDALogContextAnalytics;
  if (os_log_type_enabled(SCDALogContextAnalytics, OS_LOG_TYPE_DEBUG))
  {
    v7 = *(a1 + 40);
    v8 = *(a1 + 56) - 1;
    if (v8 > 0x11)
    {
      v9 = @"CDASTATE_UNKNOWN";
    }

    else
    {
      v9 = off_1E85D2AD8[v8];
    }

    v11 = 136315650;
    v12 = "[SCDAInstrumentation logCDAElectionAdvertisingEnded:withCdaId:withTimestamp:]_block_invoke";
    v13 = 2112;
    v14 = v7;
    v15 = 2112;
    v16 = v9;
    v10 = v5;
    _os_log_debug_impl(&dword_1DA758000, v10, OS_LOG_TYPE_DEBUG, "%s cdaId: %@, state: %@", &v11, 0x20u);
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (void)logCDAElectionAdvertisingStarting:(int)a3 withDelay:(float)a4 withInterval:(float)a5 withVoiceTriggerLatency:(float)a6 withCdaId:(id)a7 withTimestamp:(unint64_t)a8
{
  v14 = a7;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __128__SCDAInstrumentation_logCDAElectionAdvertisingStarting_withDelay_withInterval_withVoiceTriggerLatency_withCdaId_withTimestamp___block_invoke;
  block[3] = &unk_1E85D2A00;
  block[4] = self;
  v18 = v14;
  v20 = a3;
  v21 = a4;
  v22 = a5;
  v23 = a6;
  v19 = a8;
  v16 = v14;
  dispatch_async(queue, block);
}

void __128__SCDAInstrumentation_logCDAElectionAdvertisingStarting_withDelay_withInterval_withVoiceTriggerLatency_withCdaId_withTimestamp___block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) _createSchemaClientEvent:*(a1 + 40)];
  v3 = objc_alloc_init(MEMORY[0x1E69CE928]);
  [v3 setState:*(a1 + 56)];
  LODWORD(v4) = *(a1 + 60);
  [v3 setAdvertisementDelay:v4];
  LODWORD(v5) = *(a1 + 64);
  [v3 setAdvertisementInterval:v5];
  LODWORD(v6) = *(a1 + 68);
  [v3 setVoiceTriggerLatency:v6];
  v7 = objc_alloc_init(MEMORY[0x1E69CE8F0]);
  [v7 setStartedOrChanged:v3];
  [v2 setCdaAdvertisingStartChanged:v7];
  [*(a1 + 32) _sendAndLogClientEvent:v2 stState:*(a1 + 56) atTimestamp:*(a1 + 48)];
  v8 = SCDALogContextAnalytics;
  if (os_log_type_enabled(SCDALogContextAnalytics, OS_LOG_TYPE_DEBUG))
  {
    v10 = *(a1 + 40);
    v11 = *(a1 + 56) - 1;
    if (v11 > 0x11)
    {
      v12 = @"CDASTATE_UNKNOWN";
    }

    else
    {
      v12 = off_1E85D2AD8[v11];
    }

    v14 = 136315650;
    v15 = "[SCDAInstrumentation logCDAElectionAdvertisingStarting:withDelay:withInterval:withVoiceTriggerLatency:withCdaId:withTimestamp:]_block_invoke";
    v16 = 2112;
    v17 = v10;
    v18 = 2112;
    v19 = v12;
    v13 = v8;
    _os_log_debug_impl(&dword_1DA758000, v13, OS_LOG_TYPE_DEBUG, "%s cdaId: %@, state: %@", &v14, 0x20u);
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (void)logCDAElectionAdvertisingStarted:(int)a3 withCdaId:(id)a4 withTimestamp:(unint64_t)a5
{
  v8 = a4;
  queue = self->_queue;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __80__SCDAInstrumentation_logCDAElectionAdvertisingStarted_withCdaId_withTimestamp___block_invoke;
  v11[3] = &unk_1E85D29D8;
  v11[4] = self;
  v12 = v8;
  v14 = a3;
  v13 = a5;
  v10 = v8;
  dispatch_async(queue, v11);
}

void __80__SCDAInstrumentation_logCDAElectionAdvertisingStarted_withCdaId_withTimestamp___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) _createSchemaClientEvent:*(a1 + 40)];
  v3 = objc_alloc_init(MEMORY[0x1E69CE920]);
  [v3 setState:*(a1 + 56)];
  v4 = objc_alloc_init(MEMORY[0x1E69CE8F0]);
  [v4 setEnded:v3];
  [v2 setCdaAdvertisingStartChanged:v4];
  [*(a1 + 32) _sendAndLogClientEvent:v2 stState:*(a1 + 56) atTimestamp:*(a1 + 48)];
  v5 = SCDALogContextAnalytics;
  if (os_log_type_enabled(SCDALogContextAnalytics, OS_LOG_TYPE_DEBUG))
  {
    v7 = *(a1 + 40);
    v8 = *(a1 + 56) - 1;
    if (v8 > 0x11)
    {
      v9 = @"CDASTATE_UNKNOWN";
    }

    else
    {
      v9 = off_1E85D2AD8[v8];
    }

    v11 = 136315650;
    v12 = "[SCDAInstrumentation logCDAElectionAdvertisingStarted:withCdaId:withTimestamp:]_block_invoke";
    v13 = 2112;
    v14 = v7;
    v15 = 2112;
    v16 = v9;
    v10 = v5;
    _os_log_debug_impl(&dword_1DA758000, v10, OS_LOG_TYPE_DEBUG, "%s cdaId: %@, state: %@", &v11, 0x20u);
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (void)logCDADeviceStateActivityEnded:(int)a3 withCdaId:(id)a4 withTimestamp:(unint64_t)a5
{
  v8 = a4;
  queue = self->_queue;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __78__SCDAInstrumentation_logCDADeviceStateActivityEnded_withCdaId_withTimestamp___block_invoke;
  v11[3] = &unk_1E85D29D8;
  v11[4] = self;
  v12 = v8;
  v14 = a3;
  v13 = a5;
  v10 = v8;
  dispatch_async(queue, v11);
}

void __78__SCDAInstrumentation_logCDADeviceStateActivityEnded_withCdaId_withTimestamp___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) _createSchemaClientEvent:*(a1 + 40)];
  v3 = objc_alloc_init(MEMORY[0x1E69CE8F8]);
  [v3 setState:*(a1 + 56)];
  v4 = objc_alloc_init(MEMORY[0x1E69CE908]);
  [v4 setEnded:v3];
  [v2 setDeviceElectionStateContext:v4];
  [*(a1 + 32) _sendAndLogClientEvent:v2 stState:*(a1 + 56) atTimestamp:*(a1 + 48)];
  v5 = SCDALogContextAnalytics;
  if (os_log_type_enabled(SCDALogContextAnalytics, OS_LOG_TYPE_DEBUG))
  {
    v7 = *(a1 + 40);
    v8 = *(a1 + 56) - 1;
    if (v8 > 0x11)
    {
      v9 = @"CDASTATE_UNKNOWN";
    }

    else
    {
      v9 = off_1E85D2AD8[v8];
    }

    v11 = 136315650;
    v12 = "[SCDAInstrumentation logCDADeviceStateActivityEnded:withCdaId:withTimestamp:]_block_invoke";
    v13 = 2112;
    v14 = v7;
    v15 = 2112;
    v16 = v9;
    v10 = v5;
    _os_log_debug_impl(&dword_1DA758000, v10, OS_LOG_TYPE_DEBUG, "%s cdaId: %@, state: %@", &v11, 0x20u);
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (void)logCDADeviceStateActivityStartedOrChanged:(int)a3 withTrigger:(int)a4 withCdaId:(id)a5 withTimestamp:(unint64_t)a6
{
  v10 = a5;
  queue = self->_queue;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __101__SCDAInstrumentation_logCDADeviceStateActivityStartedOrChanged_withTrigger_withCdaId_withTimestamp___block_invoke;
  v13[3] = &unk_1E85D29B0;
  v13[4] = self;
  v14 = v10;
  v16 = a3;
  v17 = a4;
  v15 = a6;
  v12 = v10;
  dispatch_async(queue, v13);
}

void __101__SCDAInstrumentation_logCDADeviceStateActivityStartedOrChanged_withTrigger_withCdaId_withTimestamp___block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) _createSchemaClientEvent:*(a1 + 40)];
  v3 = objc_alloc_init(MEMORY[0x1E69CE900]);
  [v3 setState:*(a1 + 56)];
  if (*(a1 + 60))
  {
    [v3 setTrigger:?];
    *(*(a1 + 32) + 32) = *(a1 + 60);
  }

  v4 = objc_alloc_init(MEMORY[0x1E69CE908]);
  [v4 setStartedOrChanged:v3];
  [v2 setDeviceElectionStateContext:v4];
  v5 = [MEMORY[0x1E69CE1E8] sharedStream];
  [v5 emitMessage:v2 timestamp:*(a1 + 48)];

  v6 = SCDALogContextAnalytics;
  if (os_log_type_enabled(SCDALogContextAnalytics, OS_LOG_TYPE_DEBUG))
  {
    v8 = *(a1 + 56) - 1;
    if (v8 > 0x11)
    {
      v9 = @"CDASTATE_UNKNOWN";
    }

    else
    {
      v9 = off_1E85D2AD8[v8];
    }

    v10 = *(a1 + 40);
    v11 = *(a1 + 60) - 1;
    if (v11 > 7)
    {
      v12 = @"CDATRIGGER_UKNOWN";
    }

    else
    {
      v12 = off_1E85D2A98[v11];
    }

    v14 = 136315906;
    v15 = "[SCDAInstrumentation logCDADeviceStateActivityStartedOrChanged:withTrigger:withCdaId:withTimestamp:]_block_invoke";
    v16 = 2112;
    v17 = v10;
    v18 = 2112;
    v19 = v9;
    v20 = 2112;
    v21 = v12;
    v13 = v6;
    _os_log_debug_impl(&dword_1DA758000, v13, OS_LOG_TYPE_DEBUG, "%s cdaId: %@, state: %@, trigger: %@", &v14, 0x2Au);
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (SCDAInstrumentation)init
{
  v8.receiver = self;
  v8.super_class = SCDAInstrumentation;
  v2 = [(SCDAInstrumentation *)&v8 init];
  if (v2)
  {
    v3 = SCDADispatchSerialQueueWithRelativePriority("com.apple.assistant.myriad.instrumentation", QOS_CLASS_UTILITY, 0);
    queue = v2->_queue;
    v2->_queue = v3;

    if ([MEMORY[0x1E698D148] isCrossDeviceArbitrationFeedbackEnabled])
    {
      v5 = objc_alloc_init(SCDAArbitrationParticipationController);
      arbitrationParticipationController = v2->_arbitrationParticipationController;
      v2->_arbitrationParticipationController = v5;
    }
  }

  return v2;
}

@end