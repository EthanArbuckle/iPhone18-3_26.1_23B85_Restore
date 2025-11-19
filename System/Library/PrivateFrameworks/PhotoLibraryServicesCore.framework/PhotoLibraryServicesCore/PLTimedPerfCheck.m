@interface PLTimedPerfCheck
+ (id)start;
- (PLTimedPerfCheck)init;
- (PLUnitMultiplier)perfUnitsFromPerfCheckInfo:(SEL)a3;
- (id)endSessionAndReturnPerfCheckExtraInformation;
- (id)perfCheckLogStringWithPerfCheckInfo:(id)a3;
- (void)dealloc;
- (void)setup;
@end

@implementation PLTimedPerfCheck

- (PLUnitMultiplier)perfUnitsFromPerfCheckInfo:(SEL)a3
{
  *retstr = *byte_1E7932018;
  v5 = a4;
  v6 = [v5 objectForKeyedSubscript:@"processMemoryPeakKiloBytesInitial"];
  [v6 doubleValue];
  PLUpdateSizeUnit(retstr->var0, retstr->var1, v7);

  v8 = [v5 objectForKeyedSubscript:@"processMemoryPeakKiloBytesAfterRequest"];
  [v8 doubleValue];
  PLUpdateSizeUnit(&retstr->var0[1], &retstr->var1[1], v9);

  v10 = [v5 objectForKeyedSubscript:@"processMemoryCurrentKiloBytesInitial"];
  [v10 doubleValue];
  PLUpdateSizeUnit(&retstr->var0[2], &retstr->var1[2], v11);

  v12 = [v5 objectForKeyedSubscript:@"processMemoryCurrentKiloBytesAfterRequest"];
  [v12 doubleValue];
  PLUpdateSizeUnit(&retstr->var0[3], &retstr->var1[3], v13);

  v14 = [v5 objectForKeyedSubscript:@"storageDirtied"];
  [v14 doubleValue];
  PLUpdateSizeUnit(&retstr->var0[4], &retstr->var1[4], v15);

  v16 = [v5 objectForKeyedSubscript:@"cpuTimeMilliSeconds"];

  [v16 doubleValue];
  v18 = v17;

  if (v18 > 1000.0)
  {
    retstr->var0[5] = 0.001;
    retstr->var1[5] = "s";
  }

  return result;
}

- (id)perfCheckLogStringWithPerfCheckInfo:(id)a3
{
  v4 = a3;
  if (v4 || ([(PLTimedPerfCheck *)self stop], (v4 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v5 = v4;
    [(PLTimedPerfCheck *)self perfUnitsFromPerfCheckInfo:v4];
    v27 = MEMORY[0x1E696AEC0];
    v28 = [v5 objectForKeyedSubscript:@"processMemoryPeakKiloBytesInitial"];
    [v28 doubleValue];
    v7 = v6 * 0.0;
    v8 = [v5 objectForKeyedSubscript:@"processMemoryPeakKiloBytesAfterRequest"];
    [v8 doubleValue];
    v10 = v9 * 0.0;
    v11 = [v5 objectForKeyedSubscript:@"processMemoryCurrentKiloBytesInitial"];
    [v11 doubleValue];
    v13 = v12 * 0.0;
    v14 = [v5 objectForKeyedSubscript:@"processMemoryCurrentKiloBytesAfterRequest"];
    [v14 doubleValue];
    v16 = v15 * 0.0;
    v17 = [v5 objectForKeyedSubscript:@"cpuTimeMilliSeconds"];
    [v17 doubleValue];
    v19 = v18 * 0.0;
    v20 = [v5 objectForKeyedSubscript:@"cpuMillionInstructions"];
    [v20 doubleValue];
    v22 = v21;
    v23 = [v5 objectForKeyedSubscript:@"storageDirtied"];
    [v23 doubleValue];
    v25 = [v27 stringWithFormat:@", dirty memory before/after peak:[%.1f %s/%.1f %s], current:[%.1f %s/%.1f %s], CPU time %.2f%s, instructions %.3fM, dirty storage %.1f %s", *&v7, 0, *&v10, 0, *&v13, 0, *&v16, 0, *&v19, 0, v22, v24 * 0.0, 0];
  }

  else
  {
    v25 = @" (error getting perf check info)";
  }

  return v25;
}

- (id)endSessionAndReturnPerfCheckExtraInformation
{
  v18[7] = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&self->_sessionCompletedLock);
  if (self->_isSessionCompleted)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v3 = MEMORY[0x1E69E9C10];
      v4 = "End performance check session called multiple times";
LABEL_17:
      _os_log_error_impl(&dword_1AA9BD000, v3, OS_LOG_TYPE_ERROR, v4, buf, 2u);
      goto LABEL_10;
    }

    goto LABEL_10;
  }

  if (!self->_pc_session)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v3 = MEMORY[0x1E69E9C10];
      v4 = "End performance check session called with invalid session token";
      goto LABEL_17;
    }

LABEL_10:
    v7 = 0;
    goto LABEL_13;
  }

  v5 = pc_session_end();
  if (v5)
  {
    v6 = v5;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      *&buf[4] = strerror(v6);
      _os_log_error_impl(&dword_1AA9BD000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Unable to end performance check session: %s", buf, 0xCu);
    }

    v7 = 0;
  }

  else
  {
    *buf = 0;
    pc_session_get_value();
    pc_session_get_value();
    pc_session_get_value();
    pc_session_get_value();
    pc_session_get_value();
    v17[0] = @"processMemoryPeakKiloBytesInitial";
    v8 = [MEMORY[0x1E696AD98] numberWithDouble:self->_initialProcessMemoryPeak];
    v18[0] = v8;
    v17[1] = @"processMemoryPeakKiloBytesAfterRequest";
    v9 = [MEMORY[0x1E696AD98] numberWithDouble:0.0];
    v18[1] = v9;
    v17[2] = @"processMemoryCurrentKiloBytesInitial";
    v10 = [MEMORY[0x1E696AD98] numberWithDouble:self->_initialProcessMemoryCurrent];
    v18[2] = v10;
    v17[3] = @"processMemoryCurrentKiloBytesAfterRequest";
    v11 = [MEMORY[0x1E696AD98] numberWithDouble:0.0];
    v18[3] = v11;
    v17[4] = @"cpuTimeMilliSeconds";
    v12 = [MEMORY[0x1E696AD98] numberWithDouble:0.0 / 1000000.0];
    v18[4] = v12;
    v17[5] = @"cpuMillionInstructions";
    v13 = [MEMORY[0x1E696AD98] numberWithDouble:0.0 / 1000000.0];
    v18[5] = v13;
    v17[6] = @"storageDirtied";
    v14 = [MEMORY[0x1E696AD98] numberWithDouble:0.0];
    v18[6] = v14;
    v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:v17 count:7];
  }

  self->_isSessionCompleted = 1;
LABEL_13:
  os_unfair_lock_unlock(&self->_sessionCompletedLock);

  return v7;
}

- (void)setup
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = pc_session_create();
  self->_pc_session = v3;
  if (v3)
  {
    getpid();
    pc_session_set_procpid();
    pc_session_add_metric();
    pc_session_add_metric();
    pc_session_add_metric();
    pc_session_add_metric();
    pc_session_add_metric();
    v4 = pc_session_begin();
    if (v4)
    {
      v5 = v4;
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315138;
        *&buf[4] = strerror(v5);
        _os_log_error_impl(&dword_1AA9BD000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Unable to begin performance check session: %s", buf, 0xCu);
      }

      pc_session_destroy();
      self->_pc_session = 0;
    }

    else
    {
      pc_session_get_value();
      pc_session_get_value();
    }
  }

  else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    *buf = 136315138;
    *&buf[4] = strerror(0);
    _os_log_error_impl(&dword_1AA9BD000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Unable to create performance check session: %s", buf, 0xCu);
  }
}

- (void)dealloc
{
  pc_session_destroy();
  self->_pc_session = 0;
  v3.receiver = self;
  v3.super_class = PLTimedPerfCheck;
  [(PLTimedPerfCheck *)&v3 dealloc];
}

- (PLTimedPerfCheck)init
{
  v5.receiver = self;
  v5.super_class = PLTimedPerfCheck;
  v2 = [(PLTimedPerfCheck *)&v5 init];
  v3 = v2;
  if (v2)
  {
    v2->_isSessionCompleted = 0;
    v2->_sessionCompletedLock._os_unfair_lock_opaque = 0;
    [(PLTimedPerfCheck *)v2 setup];
  }

  return v3;
}

+ (id)start
{
  v2 = objc_alloc_init(PLTimedPerfCheck);

  return v2;
}

@end