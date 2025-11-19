@interface SCDAVoiceTriggerCalculation
+ (id)_adjustRecord:(id)a3 withBoostAdjust:(int)a4 constantGoodness:(int)a5 oldRecord:(id)a6 evaluator:(id)a7 device:(id)a8;
+ (id)_changeNewRecord:(id)a3 tiebreakerIfIdenticalToOldRecord:(id)a4;
@end

@implementation SCDAVoiceTriggerCalculation

+ (id)_changeNewRecord:(id)a3 tiebreakerIfIdenticalToOldRecord:(id)a4
{
  v24 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  if ([v6 hasEqualAdvertisementData:v5])
  {
    [v5 generateTiebreaker];
    v7 = SCDALogContextCore;
    if (!os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_INFO))
    {
      goto LABEL_13;
    }

    v8 = v7;
    v9 = [v6 recordType];
    if (v9 > 0x14)
    {
      v10 = @"(unknown)";
    }

    else
    {
      v10 = off_1E85D38E0[v9];
    }

    v14 = v10;
    v18 = 136315650;
    v19 = "+[SCDAVoiceTriggerCalculation _changeNewRecord:tiebreakerIfIdenticalToOldRecord:]";
    v20 = 2112;
    v21 = v14;
    v22 = 2112;
    v23 = v6;
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
    v12 = [v6 recordType];
    if (v12 > 0x14)
    {
      v13 = @"(unknown)";
    }

    else
    {
      v13 = off_1E85D38E0[v12];
    }

    v14 = v13;
    v18 = 136315650;
    v19 = "+[SCDAVoiceTriggerCalculation _changeNewRecord:tiebreakerIfIdenticalToOldRecord:]";
    v20 = 2112;
    v21 = v14;
    v22 = 2112;
    v23 = v6;
    v15 = "%s #scda Voice trigger with active record (%@), using new record: %@";
  }

  _os_log_impl(&dword_1DA758000, v8, OS_LOG_TYPE_INFO, v15, &v18, 0x20u);

LABEL_13:
  v16 = *MEMORY[0x1E69E9840];

  return v5;
}

+ (id)_adjustRecord:(id)a3 withBoostAdjust:(int)a4 constantGoodness:(int)a5 oldRecord:(id)a6 evaluator:(id)a7 device:(id)a8
{
  v40 = *MEMORY[0x1E69E9840];
  v13 = a3;
  v14 = a6;
  v15 = a7;
  v16 = a8;
  v17 = [v16 deviceAdjust_DEPRECATED];
  if ([v15 deviceAdjustTrialEnabled])
  {
    v17 = [v15 deviceAdjustTrialValue];
    v18 = SCDALogContextCore;
    if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_INFO))
    {
      v28 = 136315394;
      v29 = "+[SCDAVoiceTriggerCalculation _adjustRecord:withBoostAdjust:constantGoodness:oldRecord:evaluator:device:]";
      v30 = 1024;
      LODWORD(v31) = v17;
      _os_log_impl(&dword_1DA758000, v18, OS_LOG_TYPE_INFO, "%s #scda Using Trial defined Device Adjust Value: %du", &v28, 0x12u);
    }
  }

  v19 = SCDALogContextCore;
  if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_INFO))
  {
    v20 = v19;
    v21 = [v16 deviceClassName];
    v22 = [v16 productTypeName];
    v23 = [v13 rawAudioGoodnessScore];
    v28 = 136316418;
    v29 = "+[SCDAVoiceTriggerCalculation _adjustRecord:withBoostAdjust:constantGoodness:oldRecord:evaluator:device:]";
    v30 = 2112;
    v31 = v21;
    v32 = 2112;
    v33 = v22;
    v34 = 1024;
    v35 = v17;
    v36 = 1024;
    v37 = a4;
    v38 = 1024;
    v39 = v23;
    _os_log_impl(&dword_1DA758000, v20, OS_LOG_TYPE_INFO, "%s #scda BTLE device class: %@ (%@) detected, deviceAdjust: %d incomingAdjustment %d, original rawAudioGoodnessScore: %d", &v28, 0x32u);
  }

  [v13 adjustByAdding:(v17 + a4)];
  if (a5 <= 0xFF)
  {
    v24 = SCDALogContextCore;
    if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_ERROR))
    {
      v28 = 136315394;
      v29 = "+[SCDAVoiceTriggerCalculation _adjustRecord:withBoostAdjust:constantGoodness:oldRecord:evaluator:device:]";
      v30 = 1024;
      LODWORD(v31) = a5;
      _os_log_error_impl(&dword_1DA758000, v24, OS_LOG_TYPE_ERROR, "%s #scda BTLE overriding to constant goodness %d", &v28, 0x12u);
    }

    [v13 setRawAudioGoodnessScore:0 withBump:a5];
  }

  v25 = [SCDAVoiceTriggerCalculation _changeNewRecord:v13 tiebreakerIfIdenticalToOldRecord:v14];

  v26 = *MEMORY[0x1E69E9840];

  return v25;
}

@end