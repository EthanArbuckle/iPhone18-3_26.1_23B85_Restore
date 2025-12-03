@interface WAManagedFaultsHandler
+ (id)sharedManagedFaultsHandler;
- (WAManagedFaultsHandler)init;
- (void)processManagedFault:(id)fault at:(id)at;
@end

@implementation WAManagedFaultsHandler

+ (id)sharedManagedFaultsHandler
{
  if (qword_1EDE5CAA0 != -1)
  {
    dispatch_once(&qword_1EDE5CAA0, &__block_literal_global_1);
  }

  v3 = _MergedGlobals_1;

  return v3;
}

void __52__WAManagedFaultsHandler_sharedManagedFaultsHandler__block_invoke()
{
  v8 = *MEMORY[0x1E69E9840];
  v0 = objc_alloc_init(WAManagedFaultsHandler);
  v1 = _MergedGlobals_1;
  _MergedGlobals_1 = v0;

  if (!_MergedGlobals_1)
  {
    v2 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      v4 = 136446466;
      v5 = "+[WAManagedFaultsHandler sharedManagedFaultsHandler]_block_invoke";
      v6 = 1024;
      v7 = 42;
      _os_log_impl(&dword_1C8460000, v2, OS_LOG_TYPE_ERROR, "%{public}s::%d:ManagedFaultsHandler failed to init -- Unable to process Managed Faults on this process until process restarts", &v4, 0x12u);
    }
  }

  v3 = *MEMORY[0x1E69E9840];
}

- (WAManagedFaultsHandler)init
{
  v7.receiver = self;
  v7.super_class = WAManagedFaultsHandler;
  v2 = [(WAManagedFaultsHandler *)&v7 init];
  if (v2)
  {
    v9 = 0;
    v10 = &v9;
    v11 = 0x2050000000;
    v3 = getW5ClientClass_softClass;
    v12 = getW5ClientClass_softClass;
    if (!getW5ClientClass_softClass)
    {
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = __getW5ClientClass_block_invoke;
      v8[3] = &unk_1E830E7A8;
      v8[4] = &v9;
      __getW5ClientClass_block_invoke(v8);
      v3 = v10[3];
    }

    v4 = v3;
    _Block_object_dispose(&v9, 8);
    v5 = objc_alloc_init(v3);
    [(WAManagedFaultsHandler *)v2 setVelocityClient:v5];
  }

  return v2;
}

- (void)processManagedFault:(id)fault at:(id)at
{
  v37 = *MEMORY[0x1E69E9840];
  faultCopy = fault;
  atCopy = at;
  v8 = WALogCategoryDefaultHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446978;
    *&buf[4] = "[WAManagedFaultsHandler processManagedFault:at:]";
    *&buf[12] = 1024;
    *&buf[14] = 60;
    *&buf[18] = 2112;
    *&buf[20] = faultCopy;
    *&buf[28] = 2112;
    *&buf[30] = atCopy;
    _os_log_impl(&dword_1C8460000, v8, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:processManagedFault:%@ at:%@", buf, 0x26u);
  }

  v9 = WALogCategoryDefaultHandle();
  if (os_signpost_enabled(v9))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C8460000, v9, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "processManagedFault:", "", buf, 2u);
  }

  velocityClient = [(WAManagedFaultsHandler *)self velocityClient];
  v11 = velocityClient == 0;

  if (v11)
  {
    v21 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      *&buf[4] = "[WAManagedFaultsHandler processManagedFault:at:]";
      *&buf[12] = 1024;
      *&buf[14] = 68;
      _os_log_impl(&dword_1C8460000, v21, OS_LOG_TYPE_ERROR, "%{public}s::%d:velocity client unavailable", buf, 0x12u);
    }
  }

  else
  {
    if ([faultCopy containsString:@"FaultReasonSiriTimedOut"])
    {
      v12 = 3;
    }

    else if ([faultCopy containsString:@"FaultReasonAirplayRealtimeAudioUnderrun"])
    {
      v12 = 1;
    }

    else if ([faultCopy containsString:@"FaultReasonAirplayBufferedAudioUnderrun"])
    {
      v12 = 2;
    }

    else if ([faultCopy containsString:@"FaultReasonHomeKitFault"])
    {
      v12 = 4;
    }

    else if ([faultCopy containsString:@"FaultReasonAirplayConnectionStall"])
    {
      v12 = 6;
    }

    else
    {
      v13 = WALogCategoryDefaultHandle();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446722;
        *&buf[4] = "[WAManagedFaultsHandler processManagedFault:at:]";
        *&buf[12] = 1024;
        *&buf[14] = 84;
        *&buf[18] = 2112;
        *&buf[20] = faultCopy;
        _os_log_impl(&dword_1C8460000, v13, OS_LOG_TYPE_ERROR, "%{public}s::%d:processWiFiAnalyticsManagedFault: Unhnandled FaultName %@", buf, 0x1Cu);
      }

      v14 = WALogCategoryDefaultHandle();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
      {
        *buf = 138412290;
        *&buf[4] = faultCopy;
        _os_log_fault_impl(&dword_1C8460000, v14, OS_LOG_TYPE_FAULT, "processWiFiAnalyticsManagedFault: Unhnandled FaultName %@", buf, 0xCu);
      }

      v12 = 0x7FFFFFFFFFFFFFFFLL;
    }

    v30 = 0;
    v31 = &v30;
    v32 = 0x2050000000;
    v15 = getW5EventClass_softClass;
    v33 = getW5EventClass_softClass;
    if (!getW5EventClass_softClass)
    {
      *buf = MEMORY[0x1E69E9820];
      *&buf[8] = 3221225472;
      *&buf[16] = __getW5EventClass_block_invoke;
      *&buf[24] = &unk_1E830E7A8;
      *&buf[32] = &v30;
      __getW5EventClass_block_invoke(buf);
      v15 = v31[3];
    }

    v16 = v15;
    _Block_object_dispose(&v30, 8);
    v17 = objc_alloc_init(v15);
    [v17 setEventID:38];
    [atCopy timeIntervalSinceReferenceDate];
    [v17 setTimestamp:?];
    v34 = @"FaultType";
    v18 = [MEMORY[0x1E696AD98] numberWithInteger:v12];
    v35 = v18;
    v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v35 forKeys:&v34 count:1];
    [v17 setInfo:v19];

    velocityClient2 = [(WAManagedFaultsHandler *)self velocityClient];
    v29 = 0;
    [velocityClient2 submitFaultEvent:v17 error:&v29];
    v21 = v29;

    v22 = WALogCategoryDefaultHandle();
    v23 = v22;
    if (v21)
    {
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        v24 = [v21 description];
        v25 = v24;
        uTF8String = [v24 UTF8String];
        *buf = 136446722;
        *&buf[4] = "[WAManagedFaultsHandler processManagedFault:at:]";
        *&buf[12] = 1024;
        *&buf[14] = 96;
        *&buf[18] = 2080;
        *&buf[20] = uTF8String;
        _os_log_impl(&dword_1C8460000, v23, OS_LOG_TYPE_ERROR, "%{public}s::%d:[W5Client submitFaultEvent:error:] failed, (error=%s)", buf, 0x1Cu);
      }
    }

    else if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446978;
      *&buf[4] = "[WAManagedFaultsHandler processManagedFault:at:]";
      *&buf[12] = 1024;
      *&buf[14] = 98;
      *&buf[18] = 2112;
      *&buf[20] = faultCopy;
      *&buf[28] = 2112;
      *&buf[30] = v17;
      _os_log_impl(&dword_1C8460000, v23, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:[W5Client submitFaultEvent:error:] FaultName: %@ FaultEventDescription %@", buf, 0x26u);
    }
  }

  v27 = WALogCategoryDefaultHandle();
  if (os_signpost_enabled(v27))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C8460000, v27, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "processManagedFault:", "", buf, 2u);
  }

  v28 = *MEMORY[0x1E69E9840];
}

@end