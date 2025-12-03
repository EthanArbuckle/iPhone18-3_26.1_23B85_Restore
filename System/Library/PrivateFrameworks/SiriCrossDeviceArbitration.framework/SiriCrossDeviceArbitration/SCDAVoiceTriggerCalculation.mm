@interface SCDAVoiceTriggerCalculation
+ (id)_adjustRecord:(id)record withBoostAdjust:(int)adjust constantGoodness:(int)goodness oldRecord:(id)oldRecord evaluator:(id)evaluator device:(id)device;
+ (id)_changeNewRecord:(id)record tiebreakerIfIdenticalToOldRecord:(id)oldRecord;
@end

@implementation SCDAVoiceTriggerCalculation

+ (id)_changeNewRecord:(id)record tiebreakerIfIdenticalToOldRecord:(id)oldRecord
{
  v24 = *MEMORY[0x1E69E9840];
  recordCopy = record;
  oldRecordCopy = oldRecord;
  if ([oldRecordCopy hasEqualAdvertisementData:recordCopy])
  {
    [recordCopy generateTiebreaker];
    v7 = SCDALogContextCore;
    if (!os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_INFO))
    {
      goto LABEL_13;
    }

    v8 = v7;
    recordType = [oldRecordCopy recordType];
    if (recordType > 0x14)
    {
      v10 = @"(unknown)";
    }

    else
    {
      v10 = off_1E85D38E0[recordType];
    }

    v14 = v10;
    v18 = 136315650;
    v19 = "+[SCDAVoiceTriggerCalculation _changeNewRecord:tiebreakerIfIdenticalToOldRecord:]";
    v20 = 2112;
    v21 = v14;
    v22 = 2112;
    v23 = oldRecordCopy;
    v15 = "%s #scda Voice trigger with active record (%@), using original with adjusted TB: %@";
  }

  else
  {
    v11 = SCDALogContextCore;
    if (!os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_INFO))
    {
      goto LABEL_13;
    }

    v8 = v11;
    recordType2 = [oldRecordCopy recordType];
    if (recordType2 > 0x14)
    {
      v13 = @"(unknown)";
    }

    else
    {
      v13 = off_1E85D38E0[recordType2];
    }

    v14 = v13;
    v18 = 136315650;
    v19 = "+[SCDAVoiceTriggerCalculation _changeNewRecord:tiebreakerIfIdenticalToOldRecord:]";
    v20 = 2112;
    v21 = v14;
    v22 = 2112;
    v23 = oldRecordCopy;
    v15 = "%s #scda Voice trigger with active record (%@), using new record: %@";
  }

  _os_log_impl(&dword_1DA758000, v8, OS_LOG_TYPE_INFO, v15, &v18, 0x20u);

LABEL_13:
  v16 = *MEMORY[0x1E69E9840];

  return recordCopy;
}

+ (id)_adjustRecord:(id)record withBoostAdjust:(int)adjust constantGoodness:(int)goodness oldRecord:(id)oldRecord evaluator:(id)evaluator device:(id)device
{
  v40 = *MEMORY[0x1E69E9840];
  recordCopy = record;
  oldRecordCopy = oldRecord;
  evaluatorCopy = evaluator;
  deviceCopy = device;
  deviceAdjust_DEPRECATED = [deviceCopy deviceAdjust_DEPRECATED];
  if ([evaluatorCopy deviceAdjustTrialEnabled])
  {
    deviceAdjust_DEPRECATED = [evaluatorCopy deviceAdjustTrialValue];
    v18 = SCDALogContextCore;
    if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_INFO))
    {
      v28 = 136315394;
      v29 = "+[SCDAVoiceTriggerCalculation _adjustRecord:withBoostAdjust:constantGoodness:oldRecord:evaluator:device:]";
      v30 = 1024;
      LODWORD(v31) = deviceAdjust_DEPRECATED;
      _os_log_impl(&dword_1DA758000, v18, OS_LOG_TYPE_INFO, "%s #scda Using Trial defined Device Adjust Value: %du", &v28, 0x12u);
    }
  }

  v19 = SCDALogContextCore;
  if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_INFO))
  {
    v20 = v19;
    deviceClassName = [deviceCopy deviceClassName];
    productTypeName = [deviceCopy productTypeName];
    rawAudioGoodnessScore = [recordCopy rawAudioGoodnessScore];
    v28 = 136316418;
    v29 = "+[SCDAVoiceTriggerCalculation _adjustRecord:withBoostAdjust:constantGoodness:oldRecord:evaluator:device:]";
    v30 = 2112;
    v31 = deviceClassName;
    v32 = 2112;
    v33 = productTypeName;
    v34 = 1024;
    v35 = deviceAdjust_DEPRECATED;
    v36 = 1024;
    adjustCopy = adjust;
    v38 = 1024;
    v39 = rawAudioGoodnessScore;
    _os_log_impl(&dword_1DA758000, v20, OS_LOG_TYPE_INFO, "%s #scda BTLE device class: %@ (%@) detected, deviceAdjust: %d incomingAdjustment %d, original rawAudioGoodnessScore: %d", &v28, 0x32u);
  }

  [recordCopy adjustByAdding:(deviceAdjust_DEPRECATED + adjust)];
  if (goodness <= 0xFF)
  {
    v24 = SCDALogContextCore;
    if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_ERROR))
    {
      v28 = 136315394;
      v29 = "+[SCDAVoiceTriggerCalculation _adjustRecord:withBoostAdjust:constantGoodness:oldRecord:evaluator:device:]";
      v30 = 1024;
      LODWORD(v31) = goodness;
      _os_log_error_impl(&dword_1DA758000, v24, OS_LOG_TYPE_ERROR, "%s #scda BTLE overriding to constant goodness %d", &v28, 0x12u);
    }

    [recordCopy setRawAudioGoodnessScore:0 withBump:goodness];
  }

  v25 = [SCDAVoiceTriggerCalculation _changeNewRecord:recordCopy tiebreakerIfIdenticalToOldRecord:oldRecordCopy];

  v26 = *MEMORY[0x1E69E9840];

  return v25;
}

@end