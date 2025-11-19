@interface TraceRecorder
+ (id)configureClass:(id)a3;
+ (id)sharedInstance;
- (id)_jsonForAWDReport:(id)a3;
- (id)_jsonForName:(id)a3 objectString:(id)a4;
- (id)_jsonForObject:(id)a3;
- (id)_parseFormat:(char *)a3 args:(char *)a4;
- (int)configureInstance:(id)a3;
- (void)assessStartStop;
- (void)setTimerCallbackWithDelay:(double)a3 queue:(id)a4 reference:(id)a5;
- (void)setTraceFileRootName:(id)a3;
- (void)startRecording;
- (void)stopRecording;
@end

@implementation TraceRecorder

- (id)_jsonForName:(id)a3 objectString:(id)a4
{
  v5 = 0;
  if (a3 && a4)
  {
    v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"{\n            objectname:        %@, \n            object:\n    %@\n        }", a3, a4];
    v4 = vars8;
  }

  return v5;
}

- (id)_jsonForAWDReport:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = [v4 description];
    v7 = [v6 stringByReplacingOccurrencesOfString:@" withString:@"\];
    v8 = [v7 stringByReplacingOccurrencesOfString:@"\n" withString:@"\\n"];

    v9 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@", v8];
  }

  else
  {
    v9 = @"<null>";
  }

  v10 = objc_opt_class();
  v11 = NSStringFromClass(v10);
  v12 = [(TraceRecorder *)self _jsonForName:v11 objectString:v9];

  return v12;
}

- (id)_jsonForObject:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    v11 = MEMORY[0x277CCAAA0];
    v12 = [MEMORY[0x277CBEAC0] dictionary];
    v13 = [v11 dataWithJSONObject:v12 options:1 error:0];

    v14 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v13 encoding:4];
    v15 = objc_opt_class();
    v16 = NSStringFromClass(v15);
    v17 = [(TraceRecorder *)self _jsonForName:v16 objectString:v14];

    goto LABEL_18;
  }

  sel_getUid("dictionaryForm");
  if (objc_opt_respondsToSelector())
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
    {
      v5 = [v4 dictionaryForm];
      if (v5)
      {
        v6 = [MEMORY[0x277CCAAA0] dataWithJSONObject:v5 options:1 error:0];
        if (v6)
        {
          v7 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v6 encoding:4];
          v8 = objc_opt_class();
          v9 = NSStringFromClass(v8);
          v10 = [(TraceRecorder *)self _jsonForName:v9 objectString:v7];

LABEL_16:
          v17 = v10;

          goto LABEL_17;
        }

LABEL_15:
        v10 = 0;
        goto LABEL_16;
      }
    }

    else
    {
      v5 = 0;
    }

    v6 = 0;
    goto LABEL_15;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v18 = v4;
    v19 = objc_opt_class();
    v20 = NSStringFromClass(v19);
    v21 = [v18 UUIDString];

    v22 = [(TraceRecorder *)self _jsonForName:v20 objectString:v21];

    v17 = v22;
LABEL_17:

    goto LABEL_18;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v23 = [(TraceRecorder *)self _jsonForAWDReport:v4];
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v35 = 0;
      v25 = [MEMORY[0x277CCAAA0] dataWithJSONObject:v4 options:1 error:&v35];
      v26 = v35;
      v27 = v26;
      if (!v25 || v26)
      {
        v33 = objc_opt_class();
        v29 = NSStringFromClass(v33);
        v32 = @"UNKNOWN_ENCODING";
        v30 = self;
        v31 = v29;
      }

      else
      {
        v27 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v25 encoding:4];
        v28 = objc_opt_class();
        v29 = NSStringFromClass(v28);
        v30 = self;
        v31 = v29;
        v32 = v27;
      }

      v34 = [(TraceRecorder *)v30 _jsonForName:v31 objectString:v32];

      v17 = v34;
      goto LABEL_17;
    }

    v23 = -[TraceRecorder _jsonForNumber:](self, "_jsonForNumber:", [v4 longLongValue]);
  }

  v17 = v23;
LABEL_18:

  return v17;
}

- (id)_parseFormat:(char *)a3 args:(char *)a4
{
  v5 = 0;
  v6 = 1;
  v7 = @"%llx";
  v8 = @"%lx";
  v9 = @"%x";
  v10 = @"%lld";
  v11 = @"%ld";
  v12 = @"%zd";
  while (1)
  {
    while (1)
    {
LABEL_2:
      a3 += 2;
      do
      {
        v13 = *(a3 - 2);
        if (!*(a3 - 2))
        {
          goto LABEL_59;
        }

        ++a3;
      }

      while (v13 != 37);
      if (!v5)
      {
        v5 = objc_alloc_init(MEMORY[0x277CCAB68]);
      }

      [v5 appendFormat:@", \n        param%d:         ", v6];
      v14 = a3 - 1;
      v15 = *(a3 - 2);
      switch(v15)
      {
        case 'h':
          v17 = 0;
          v16 = 0;
          goto LABEL_14;
        case 'l':
          v17 = 0;
          v15 = *(a3 - 1);
          v16 = 1;
          if (v15 == 108)
          {
            v18 = 4;
            v14 = a3;
LABEL_15:
            a3 = &a3[v18 - 3];
            v15 = *v14;
            v19 = v16;
            v16 = 0;
            break;
          }

          v19 = 0;
          break;
        case 'z':
          v16 = 0;
          v17 = 1;
LABEL_14:
          v18 = 3;
          goto LABEL_15;
        default:
          v17 = 0;
          v19 = 0;
          v16 = 0;
          --a3;
          break;
      }

      v6 = (v6 + 1);
      if (v15 <= 111)
      {
        break;
      }

      if (v15 <= 115)
      {
        if (v15 == 112)
        {
          v25 = a4;
          a4 += 8;
          [v5 appendFormat:@"%p", *v25];
        }

        else if (v15 == 115)
        {
          v22 = a4;
          a4 += 8;
          v23 = *v22;
          if (!v23)
          {
            v23 = "";
          }

          [v5 appendFormat:@"%s", v23];
        }
      }

      else
      {
        if (v15 == 116)
        {
          v42 = a4;
          a4 += 8;
          v43 = *v42;
          dateStringMillisecondsFromReferenceInterval(*v42);
          v44 = v12;
          v45 = v11;
          v46 = v10;
          v47 = v9;
          v48 = v8;
          v50 = v49 = v7;
          [v5 appendFormat:@"        {\n            type:         NSTimeInterval, \n            readable:     %@, \n            seconds:      %f\n        }", v50, *&v43];

          v7 = v49;
          v8 = v48;
          v9 = v47;
          v10 = v46;
          v11 = v45;
          v12 = v44;
          continue;
        }

        if (v15 == 117)
        {
          goto LABEL_38;
        }

        if (v15 != 120)
        {
          continue;
        }

LABEL_31:
        if (v19)
        {
          v21 = a4;
          a4 += 8;
          [v5 appendFormat:v7, *v21];
        }

        else if (v16)
        {
          v27 = a4;
          a4 += 8;
          [v5 appendFormat:v8, *v27];
        }

        else if (v17)
        {
          v39 = a4;
          a4 += 8;
          [v5 appendFormat:@"%zx", *v39];
        }

        else
        {
          v41 = a4;
          a4 += 8;
          [v5 appendFormat:v9, *v41];
        }
      }
    }

    if (v15 > 98)
    {
      if (v15 == 99)
      {
        v37 = a4;
        a4 += 8;
        [v5 appendFormat:@"%c", *v37];
        goto LABEL_2;
      }

      if (v15 != 100)
      {
        if (v15 == 102)
        {
          v20 = a4;
          a4 += 8;
          [v5 appendFormat:@"%f", *v20];
        }

        goto LABEL_2;
      }

LABEL_38:
      if (v19)
      {
        v24 = a4;
        a4 += 8;
        [v5 appendFormat:v10, *v24];
      }

      else if (v16)
      {
        v26 = a4;
        a4 += 8;
        [v5 appendFormat:v11, *v26];
      }

      else if (v17)
      {
        v38 = a4;
        a4 += 8;
        [v5 appendFormat:v12, *v38];
      }

      else
      {
        v40 = a4;
        a4 += 8;
        [v5 appendFormat:@"%d", *v40];
      }

      goto LABEL_2;
    }

    if (v15 != 64)
    {
      break;
    }

    v28 = a4;
    a4 += 8;
    v52 = *v28;
    +[TraceRecorder sharedInstance];
    v29 = v12;
    v30 = v11;
    v31 = v10;
    v32 = v9;
    v34 = v33 = v8;
    v35 = [v34 _jsonForObject:v52];

    v8 = v33;
    v9 = v32;
    v10 = v31;
    v11 = v30;
    v12 = v29;
    v7 = @"%llx";
    if (v35)
    {
      v36 = v35;
    }

    else
    {
      v36 = @"0";
    }

    [v5 appendString:v36];
  }

  if (v15 == 88)
  {
    goto LABEL_31;
  }

  if (v15)
  {
    goto LABEL_2;
  }

LABEL_59:

  return v5;
}

- (void)startRecording
{
  v16 = *MEMORY[0x277D85DE8];
  if (!self->_traceFileActive && self->_traceFileRootName)
  {
    v3 = formattedDateStringForCurrentTime();
    v4 = [v3 componentsSeparatedByString:@" "];
    traceFileRootName = self->_traceFileRootName;
    v6 = [v4 objectAtIndexedSubscript:0];
    v7 = [v4 objectAtIndexedSubscript:1];
    v8 = [(NSString *)traceFileRootName stringByAppendingFormat:@"-%@-%@", v6, v7];

    v9 = open([v8 UTF8String], 1538, 438);
    v10 = apparentTimeLogHandle;
    if (v9 < 0)
    {
      if (os_log_type_enabled(apparentTimeLogHandle, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v15 = v8;
        _os_log_impl(&dword_23255B000, v10, OS_LOG_TYPE_ERROR, "Unable to open trace file %@", buf, 0xCu);
      }
    }

    else
    {
      v11 = v9;
      if (os_log_type_enabled(apparentTimeLogHandle, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v15 = v8;
        _os_log_impl(&dword_23255B000, v10, OS_LOG_TYPE_DEFAULT, "Opened trace file %@", buf, 0xCu);
      }

      if (write(v11, "[\n", 2uLL) < 0)
      {
        v12 = apparentTimeLogHandle;
        if (os_log_type_enabled(apparentTimeLogHandle, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&dword_23255B000, v12, OS_LOG_TYPE_ERROR, "CallRecorder, initial trace failed", buf, 2u);
        }

        close(v11);
      }

      else
      {
        self->_traceFileActive = 1;
        self->_traceFD = v11;
      }
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)stopRecording
{
  if (self->_traceFileActive)
  {
    v13 = v2;
    v14 = v3;
    v5 = write(self->_traceFD, "\n    {\n        call:        endTraceSequence\n    }\n]\n", 0x39uLL);
    v6 = apparentTimeLogHandle;
    if (v5 < 0)
    {
      if (os_log_type_enabled(apparentTimeLogHandle, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        v7 = "CallRecorder, last write to tracefile failed";
        v8 = buf;
        v9 = v6;
        v10 = OS_LOG_TYPE_ERROR;
        goto LABEL_7;
      }
    }

    else if (os_log_type_enabled(apparentTimeLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 0;
      v7 = "CallRecorder, successfully closed trace file";
      v8 = &v11;
      v9 = v6;
      v10 = OS_LOG_TYPE_DEFAULT;
LABEL_7:
      _os_log_impl(&dword_23255B000, v9, v10, v7, v8, 2u);
    }

    close(self->_traceFD);
    self->_traceFD = 0;
    self->_traceFileActive = 0;
  }
}

- (void)assessStartStop
{
  if (!activeTraceTargets)
  {
    if (!self->_traceFileActive)
    {
      return;
    }

    goto LABEL_6;
  }

  traceFileActive = self->_traceFileActive;
  if (!self->_traceFileRootName)
  {
    if (!self->_traceFileActive)
    {
      return;
    }

LABEL_6:
    [(TraceRecorder *)self stopRecording];
    return;
  }

  if (!self->_traceFileActive)
  {
    [(TraceRecorder *)self startRecording];
  }
}

- (void)setTraceFileRootName:(id)a3
{
  objc_storeStrong(&self->_traceFileRootName, a3);

  [(TraceRecorder *)self assessStartStop];
}

- (void)setTimerCallbackWithDelay:(double)a3 queue:(id)a4 reference:(id)a5
{
  v19 = *MEMORY[0x277D85DE8];
  v7 = a4;
  v8 = a5;
  v9 = apparentTimeLogHandle;
  if (os_log_type_enabled(apparentTimeLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218242;
    v16 = a3;
    v17 = 2112;
    v18 = v8;
    _os_log_impl(&dword_23255B000, v9, OS_LOG_TYPE_DEFAULT, "TraceRecorder setTimerCallbackWithDelay %.3f for reference %@", buf, 0x16u);
  }

  v10 = dispatch_time(0, (a3 * 1000000000.0));
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __59__TraceRecorder_setTimerCallbackWithDelay_queue_reference___block_invoke;
  block[3] = &unk_27898A0C8;
  v14 = v8;
  v11 = v8;
  dispatch_after(v10, v7, block);

  v12 = *MEMORY[0x277D85DE8];
}

void __59__TraceRecorder_setTimerCallbackWithDelay_queue_reference___block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = apparentTimeLogHandle;
  if (os_log_type_enabled(apparentTimeLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v7 = 138412290;
    v8 = v3;
    _os_log_impl(&dword_23255B000, v2, OS_LOG_TYPE_DEFAULT, "TraceRecorder setTimerCallbackWithDelay, delay has happened for reference %@", &v7, 0xCu);
  }

  v4 = +[ApparentTimeHandler sharedInstance];
  v5 = *(a1 + 32);
  [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
  [v4 timerCallbackWithReference:v5 at:?];

  v6 = *MEMORY[0x277D85DE8];
}

- (int)configureInstance:(id)a3
{
  v4 = a3;
  shared_prefs_store = get_shared_prefs_store();
  v10[0] = 0;
  v10[1] = v10;
  v10[2] = 0x3032000000;
  v10[3] = __Block_byref_object_copy__0;
  v10[4] = __Block_byref_object_dispose__0;
  v11 = 0;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __35__TraceRecorder_configureInstance___block_invoke;
  v9[3] = &unk_27898AB00;
  v9[4] = self;
  v9[5] = v10;
  prefs_add_client(shared_prefs_store, "call_trace_file", v9);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __35__TraceRecorder_configureInstance___block_invoke_110;
  v8[3] = &unk_27898A0A0;
  v8[4] = self;
  prefs_add_client(shared_prefs_store, "call_trace_targets", v8);
  v6 = +[ApparentTimeHandler sharedInstance];
  [v6 setDelegate:self];

  _Block_object_dispose(v10, 8);
  return 0;
}

void __35__TraceRecorder_configureInstance___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = v4;
  if (!v4 || MEMORY[0x238389170](v4) != MEMORY[0x277D864C0])
  {
    goto LABEL_3;
  }

  v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:xpc_string_get_string_ptr(v5)];
  v10 = *(*(a1 + 40) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v9;

  v12 = apparentTimeLogHandle;
  if (os_log_type_enabled(apparentTimeLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v13 = *(*(*(a1 + 40) + 8) + 40);
    v16 = 138412290;
    v17 = v13;
    _os_log_impl(&dword_23255B000, v12, OS_LOG_TYPE_DEFAULT, "Processing flow_trace_file base name %@", &v16, 0xCu);
  }

  if (![*(*(*(a1 + 40) + 8) + 40) length])
  {
    v6 = *(a1 + 32);
    v7 = 0;
    goto LABEL_4;
  }

  if ([*(*(*(a1 + 40) + 8) + 40) isAbsolutePath])
  {
LABEL_3:
    v6 = *(a1 + 32);
    v7 = *(*(*(a1 + 40) + 8) + 40);
LABEL_4:
    [v6 setTraceFileRootName:v7];
    goto LABEL_5;
  }

  v14 = apparentTimeLogHandle;
  if (os_log_type_enabled(apparentTimeLogHandle, OS_LOG_TYPE_ERROR))
  {
    v15 = *(*(*(a1 + 40) + 8) + 40);
    v16 = 138412290;
    v17 = v15;
    _os_log_impl(&dword_23255B000, v14, OS_LOG_TYPE_ERROR, "trace file path not absolute, %@", &v16, 0xCu);
  }

LABEL_5:

  v8 = *MEMORY[0x277D85DE8];
}

void __35__TraceRecorder_configureInstance___block_invoke_110(uint64_t a1, uint64_t a2, void *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = v4;
  if (v4 && MEMORY[0x238389170](v4) == MEMORY[0x277D86498])
  {
    value = xpc_int64_get_value(v5);
    v12 = *(a1 + 32);
    if (value < 0)
    {
      [v12 setTraceTargets:0];
      v14 = apparentTimeLogHandle;
      if (!os_log_type_enabled(apparentTimeLogHandle, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_7;
      }

      *v15 = 134218240;
      *&v15[4] = value;
      *&v15[12] = 2048;
      *&v15[14] = 0;
      v7 = "Setting new active trace targets (%lld). Resetting to default value (0x%llx)";
      v8 = v14;
      v9 = 22;
      goto LABEL_6;
    }

    [v12 setTraceTargets:value];
    v13 = apparentTimeLogHandle;
    if (!os_log_type_enabled(apparentTimeLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_7;
    }

    *v15 = 134217984;
    *&v15[4] = value;
    v7 = "Setting new active trace targets (0x%llx)";
    v8 = v13;
LABEL_5:
    v9 = 12;
LABEL_6:
    _os_log_impl(&dword_23255B000, v8, OS_LOG_TYPE_DEFAULT, v7, v15, v9);
    goto LABEL_7;
  }

  [*(a1 + 32) setTraceTargets:0];
  v6 = apparentTimeLogHandle;
  if (os_log_type_enabled(apparentTimeLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    *v15 = 134217984;
    *&v15[4] = 0;
    v7 = "Setting new nil active trace targets. Setting to default value instead (0x%llx)";
    v8 = v6;
    goto LABEL_5;
  }

LABEL_7:
  [*(a1 + 32) assessStartStop];

  v10 = *MEMORY[0x277D85DE8];
}

+ (id)configureClass:(id)a3
{
  v3 = a3;
  v4 = +[TraceRecorder sharedInstance];
  [v4 configureInstance:v3];

  return v4;
}

+ (id)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __31__TraceRecorder_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (sharedInstance_pred_6 != -1)
  {
    dispatch_once(&sharedInstance_pred_6, block);
  }

  v2 = sharedInstance_sharedInstance_6;

  return v2;
}

void __31__TraceRecorder_sharedInstance__block_invoke(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = sharedInstance_sharedInstance_6;
  sharedInstance_sharedInstance_6 = v1;

  v3 = sharedInstance_sharedInstance_6;
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [ConfigurationHandler setConfigurationObject:v3 forName:v5];
}

- (void)_jsonForObject:(void *)a1 .cold.1(void *a1)
{
  v6 = *MEMORY[0x277D85DE8];
  v1 = objc_begin_catch(a1);
  v2 = apparentTimeLogHandle;
  if (os_log_type_enabled(apparentTimeLogHandle, OS_LOG_TYPE_ERROR))
  {
    v4 = 138412290;
    v5 = v1;
    _os_log_impl(&dword_23255B000, v2, OS_LOG_TYPE_ERROR, "Symptom exception trying to create JSON object from object %@", &v4, 0xCu);
  }

  objc_end_catch();
  v3 = *MEMORY[0x277D85DE8];
}

@end