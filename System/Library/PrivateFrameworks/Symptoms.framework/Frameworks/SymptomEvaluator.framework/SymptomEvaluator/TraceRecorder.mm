@interface TraceRecorder
+ (id)configureClass:(id)class;
+ (id)sharedInstance;
- (id)_jsonForAWDReport:(id)report;
- (id)_jsonForName:(id)name objectString:(id)string;
- (id)_jsonForObject:(id)object;
- (id)_parseFormat:(char *)format args:(char *)args;
- (int)configureInstance:(id)instance;
- (void)assessStartStop;
- (void)setTimerCallbackWithDelay:(double)delay queue:(id)queue reference:(id)reference;
- (void)setTraceFileRootName:(id)name;
- (void)startRecording;
- (void)stopRecording;
@end

@implementation TraceRecorder

- (id)_jsonForName:(id)name objectString:(id)string
{
  string = 0;
  if (name && string)
  {
    string = [MEMORY[0x277CCACA8] stringWithFormat:@"{\n            objectname:        %@, \n            object:\n    %@\n        }", name, string];
    v4 = vars8;
  }

  return string;
}

- (id)_jsonForAWDReport:(id)report
{
  reportCopy = report;
  v5 = reportCopy;
  if (reportCopy)
  {
    v6 = [reportCopy description];
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

- (id)_jsonForObject:(id)object
{
  objectCopy = object;
  if (!objectCopy)
  {
    v11 = MEMORY[0x277CCAAA0];
    dictionary = [MEMORY[0x277CBEAC0] dictionary];
    v13 = [v11 dataWithJSONObject:dictionary options:1 error:0];

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
      dictionaryForm = [objectCopy dictionaryForm];
      if (dictionaryForm)
      {
        v6 = [MEMORY[0x277CCAAA0] dataWithJSONObject:dictionaryForm options:1 error:0];
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
      dictionaryForm = 0;
    }

    v6 = 0;
    goto LABEL_15;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v18 = objectCopy;
    v19 = objc_opt_class();
    v20 = NSStringFromClass(v19);
    uUIDString = [v18 UUIDString];

    v22 = [(TraceRecorder *)self _jsonForName:v20 objectString:uUIDString];

    v17 = v22;
LABEL_17:

    goto LABEL_18;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v23 = [(TraceRecorder *)self _jsonForAWDReport:objectCopy];
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v35 = 0;
      v25 = [MEMORY[0x277CCAAA0] dataWithJSONObject:objectCopy options:1 error:&v35];
      v26 = v35;
      v27 = v26;
      if (!v25 || v26)
      {
        v33 = objc_opt_class();
        v29 = NSStringFromClass(v33);
        v32 = @"UNKNOWN_ENCODING";
        selfCopy2 = self;
        v31 = v29;
      }

      else
      {
        v27 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v25 encoding:4];
        v28 = objc_opt_class();
        v29 = NSStringFromClass(v28);
        selfCopy2 = self;
        v31 = v29;
        v32 = v27;
      }

      v34 = [(TraceRecorder *)selfCopy2 _jsonForName:v31 objectString:v32];

      v17 = v34;
      goto LABEL_17;
    }

    v23 = -[TraceRecorder _jsonForNumber:](self, "_jsonForNumber:", [objectCopy longLongValue]);
  }

  v17 = v23;
LABEL_18:

  return v17;
}

- (id)_parseFormat:(char *)format args:(char *)args
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
      format += 2;
      do
      {
        v13 = *(format - 2);
        if (!*(format - 2))
        {
          goto LABEL_59;
        }

        ++format;
      }

      while (v13 != 37);
      if (!v5)
      {
        v5 = objc_alloc_init(MEMORY[0x277CCAB68]);
      }

      [v5 appendFormat:@", \n        param%d:         ", v6];
      formatCopy = format - 1;
      v15 = *(format - 2);
      switch(v15)
      {
        case 'h':
          v17 = 0;
          v16 = 0;
          goto LABEL_14;
        case 'l':
          v17 = 0;
          v15 = *(format - 1);
          v16 = 1;
          if (v15 == 108)
          {
            v18 = 4;
            formatCopy = format;
LABEL_15:
            format = &format[v18 - 3];
            v15 = *formatCopy;
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
          --format;
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
          argsCopy = args;
          args += 8;
          [v5 appendFormat:@"%p", *argsCopy];
        }

        else if (v15 == 115)
        {
          argsCopy2 = args;
          args += 8;
          v23 = *argsCopy2;
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
          argsCopy3 = args;
          args += 8;
          v43 = *argsCopy3;
          dateStringMillisecondsFromReferenceInterval(*argsCopy3);
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
          argsCopy4 = args;
          args += 8;
          [v5 appendFormat:v7, *argsCopy4];
        }

        else if (v16)
        {
          argsCopy5 = args;
          args += 8;
          [v5 appendFormat:v8, *argsCopy5];
        }

        else if (v17)
        {
          argsCopy6 = args;
          args += 8;
          [v5 appendFormat:@"%zx", *argsCopy6];
        }

        else
        {
          argsCopy7 = args;
          args += 8;
          [v5 appendFormat:v9, *argsCopy7];
        }
      }
    }

    if (v15 > 98)
    {
      if (v15 == 99)
      {
        argsCopy8 = args;
        args += 8;
        [v5 appendFormat:@"%c", *argsCopy8];
        goto LABEL_2;
      }

      if (v15 != 100)
      {
        if (v15 == 102)
        {
          argsCopy9 = args;
          args += 8;
          [v5 appendFormat:@"%f", *argsCopy9];
        }

        goto LABEL_2;
      }

LABEL_38:
      if (v19)
      {
        argsCopy10 = args;
        args += 8;
        [v5 appendFormat:v10, *argsCopy10];
      }

      else if (v16)
      {
        argsCopy11 = args;
        args += 8;
        [v5 appendFormat:v11, *argsCopy11];
      }

      else if (v17)
      {
        argsCopy12 = args;
        args += 8;
        [v5 appendFormat:v12, *argsCopy12];
      }

      else
      {
        argsCopy13 = args;
        args += 8;
        [v5 appendFormat:@"%d", *argsCopy13];
      }

      goto LABEL_2;
    }

    if (v15 != 64)
    {
      break;
    }

    argsCopy14 = args;
    args += 8;
    v52 = *argsCopy14;
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

- (void)setTraceFileRootName:(id)name
{
  objc_storeStrong(&self->_traceFileRootName, name);

  [(TraceRecorder *)self assessStartStop];
}

- (void)setTimerCallbackWithDelay:(double)delay queue:(id)queue reference:(id)reference
{
  v19 = *MEMORY[0x277D85DE8];
  queueCopy = queue;
  referenceCopy = reference;
  v9 = apparentTimeLogHandle;
  if (os_log_type_enabled(apparentTimeLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218242;
    delayCopy = delay;
    v17 = 2112;
    v18 = referenceCopy;
    _os_log_impl(&dword_23255B000, v9, OS_LOG_TYPE_DEFAULT, "TraceRecorder setTimerCallbackWithDelay %.3f for reference %@", buf, 0x16u);
  }

  v10 = dispatch_time(0, (delay * 1000000000.0));
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __59__TraceRecorder_setTimerCallbackWithDelay_queue_reference___block_invoke;
  block[3] = &unk_27898A0C8;
  v14 = referenceCopy;
  v11 = referenceCopy;
  dispatch_after(v10, queueCopy, block);

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

- (int)configureInstance:(id)instance
{
  instanceCopy = instance;
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

+ (id)configureClass:(id)class
{
  classCopy = class;
  v4 = +[TraceRecorder sharedInstance];
  [v4 configureInstance:classCopy];

  return v4;
}

+ (id)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __31__TraceRecorder_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
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