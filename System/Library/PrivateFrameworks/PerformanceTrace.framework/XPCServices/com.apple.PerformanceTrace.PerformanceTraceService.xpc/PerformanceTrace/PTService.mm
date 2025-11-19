@interface PTService
- (BOOL)_appendLogContentToKtraceFile:(id)a3 withError:(id *)a4;
- (BOOL)_aspSamplingInitFilter:(kperf_kdebug_filter *)a3 withSamplers:(unsigned int *)a4;
- (BOOL)_configureKtraceSession:(id)a3 withError:(id *)a4;
- (BOOL)_connectionIsEntitled:(id)a3 toEntitlement:(id)a4;
- (BOOL)_faultSamplingInitFilter:(kperf_kdebug_filter *)a3 withSamplers:(unsigned int *)a4;
- (BOOL)_graphicsSamplingInit;
- (BOOL)_postProcessKtraceFile:(id)a3 withError:(id *)a4;
- (BOOL)_syscallSamplingInitFilter:(kperf_kdebug_filter *)a3 withSamplers:(unsigned int *)a4;
- (BOOL)_validSymbolicationPreferences;
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (NSXPCConnection)recordingConnectionPointer;
- (PTService)init;
- (id)_generateToken:(id)a3;
- (id)_traceRecordArgsArrayFromConfig:(id)a3 outputFilePath:(id)a4 xpcConnection:(id)a5 error:(id *)a6;
- (void)_graphicsSamplingTeardown;
- (void)_startPerformanceTrace:(id)a3;
- (void)_startPerformanceTraceLegacy:(id)a3;
- (void)_stopPerformanceTrace;
- (void)_stopPerformanceTraceLegacy;
- (void)_symbolicateKtraceFile:(id)a3;
- (void)_updateRecordingStatus:(BOOL)a3;
- (void)applyConfig:(id)a3 withError:(id)a4;
- (void)getCurrentStoredConfig:(id)a3;
- (void)isInRecordingWorkflow:(id)a3;
- (void)pingService:(id)a3;
- (void)resetConfig:(id)a3;
- (void)startPerformanceTrace:(id)a3;
- (void)stopPerformanceTrace;
@end

@implementation PTService

- (void)_updateRecordingStatus:(BOOL)a3
{
  v3 = a3;
  if ([(PTService *)self isInRecordingWorkflow]!= a3)
  {
    self->_isInRecordingWorkflow = v3;
    v5 = sub_1000022A8();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = "Not recording";
      if (v3)
      {
        v6 = "Recording";
      }

      v7 = 136315138;
      v8 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Updated recording status to '%s'", &v7, 0xCu);
    }

    PTServicesPostStateDidChangeNotification();
  }
}

- (PTService)init
{
  v3.receiver = self;
  v3.super_class = PTService;
  result = [(PTService *)&v3 init];
  if (result)
  {
    result->_ktraceSession = 0;
    result->_isInRecordingWorkflow = 0;
  }

  return result;
}

- (BOOL)_connectionIsEntitled:(id)a3 toEntitlement:(id)a4
{
  v4 = [a3 valueForEntitlement:a4];
  if (objc_opt_respondsToSelector())
  {
    v5 = [v4 BOOLValue];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)_syscallSamplingInitFilter:(kperf_kdebug_filter *)a3 withSamplers:(unsigned int *)a4
{
  [(PTService *)self ktraceSession];
  ktrace_events_range();
  [(PTService *)self ktraceSession];
  ktrace_events_range();
  if (kperf_kdebug_filter_add_class_subclass_fn())
  {
    v6 = sub_1000022A8();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_10000E6DC();
    }

LABEL_7:

    return 0;
  }

  if (kperf_kdebug_filter_add_class_subclass_fn())
  {
    v6 = sub_1000022A8();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_10000E74C();
    }

    goto LABEL_7;
  }

  *a4 |= 8u;
  return 1;
}

- (BOOL)_faultSamplingInitFilter:(kperf_kdebug_filter *)a3 withSamplers:(unsigned int *)a4
{
  [(PTService *)self ktraceSession];
  ktrace_events_range();
  v5 = kperf_kdebug_filter_add_class_subclass_fn();
  if (v5)
  {
    v6 = sub_1000022A8();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_10000E7BC();
    }
  }

  else
  {
    *a4 |= 8u;
  }

  return v5 == 0;
}

- (BOOL)_graphicsSamplingInit
{
  for (i = 0; i != 5; ++i)
  {
    v5 = 1;
    sysctlbyname(off_1000186E0[i], 0, 0, &v5, 4uLL);
  }

  [(PTService *)self ktraceSession];
  ktrace_events_range();
  [(PTService *)self ktraceSession];
  ktrace_events_range();
  return 1;
}

- (void)_graphicsSamplingTeardown
{
  for (i = 0; i != 5; ++i)
  {
    sysctlbyname(off_1000186E0[i], 0, 0, 0, 4uLL);
  }
}

- (BOOL)_aspSamplingInitFilter:(kperf_kdebug_filter *)a3 withSamplers:(unsigned int *)a4
{
  [(PTService *)self ktraceSession:a3];
  ktrace_events_range();
  return 1;
}

- (BOOL)_configureKtraceSession:(id)a3 withError:(id *)a4
{
  v6 = a3;
  [(PTService *)self ktraceSession];
  ktrace_set_thread_groups_enabled();
  kperf_reset();
  kperf_action_count_set();
  v7 = kperf_kdebug_filter_create();
  if (!v7)
  {
    if (a4)
    {
      v17 = @"Unable to create kdebug filter for kperf";
      goto LABEL_48;
    }

LABEL_65:
    v42 = 0;
    goto LABEL_66;
  }

  v8 = v7;
  v9 = [v6 traceGroups];
  v10 = [v9 containsObject:&off_10001A5B0];

  if (v10 && ![(PTService *)self _graphicsSamplingInit])
  {
    if (a4)
    {
      v17 = @"Unable to init graphics sampling";
      goto LABEL_48;
    }

    goto LABEL_65;
  }

  v50 = 0;
  v11 = [v6 traceGroups];
  v12 = [v11 containsObject:&off_10001A5C8];

  if (v12 && ![(PTService *)self _syscallSamplingInitFilter:v8 withSamplers:&v50])
  {
    if (a4)
    {
      v17 = @"Unable to init syscall sampling";
      goto LABEL_48;
    }

    goto LABEL_65;
  }

  v13 = [v6 traceGroups];
  v14 = [v13 containsObject:&off_10001A5E0];

  if (!v14)
  {
    goto LABEL_9;
  }

  if (![(PTService *)self _faultSamplingInitFilter:v8 withSamplers:&v50])
  {
    if (a4)
    {
      v17 = @"Unable to init vmfault sampling";
      goto LABEL_48;
    }

    goto LABEL_65;
  }

  v12 = 1;
LABEL_9:
  v15 = [v6 traceGroups];
  v16 = [v15 containsObject:&off_10001A5F8];

  if (!v16)
  {
    if (!v12)
    {
      goto LABEL_33;
    }

    goto LABEL_18;
  }

  if ([(PTService *)self _aspSamplingInitFilter:v8 withSamplers:&v50])
  {
LABEL_18:
    if (kperf_kdebug_filter_set())
    {
      desc = kperf_kdebug_filter_create_desc();
      if (!a4)
      {
        goto LABEL_65;
      }

      v19 = "???";
      if (desc)
      {
        v19 = desc;
      }

      goto LABEL_63;
    }

    v20 = kperf_kdebug_action_set();
    if (v20)
    {
      if (!a4)
      {
        goto LABEL_65;
      }

      [NSString stringWithFormat:@"Unable to set kperf action for kdebug events: %{errno}d", v20];
      goto LABEL_63;
    }

    v21 = kperf_action_samplers_set();
    if (v21)
    {
      if (!a4)
      {
        goto LABEL_65;
      }

      [NSString stringWithFormat:@"Unable to set samplers for kdebug kperf events: %{errno}d", v21];
      goto LABEL_63;
    }

LABEL_33:
    kperf_kdebug_filter_destroy();
    v22 = [v6 traceGroups];
    v23 = [v22 containsObject:&off_10001A610];

    if (v23)
    {
      for (i = 0; i != 13; ++i)
      {
        [(PTService *)self ktraceSession];
        v25 = dword_100012220[i];
        ktrace_events_range();
      }

      v26 = &unk_100012258;
      v27 = 3;
      do
      {
        [(PTService *)self ktraceSession];
        v28 = *v26;
        v29 = (*(v26 - 1) << 24) | (*v26 << 16);
        ktrace_events_range();
        v26 += 2;
        --v27;
      }

      while (v27);
    }

    else
    {
      v30 = [v6 traceGroups];
      v31 = [v30 containsObject:&off_10001A628];

      if (v31)
      {
        for (j = 0; j != 8; ++j)
        {
          [(PTService *)self ktraceSession];
          v33 = dword_10001226C[j];
          ktrace_events_range();
        }

        v34 = 0;
        v35 = 1;
        do
        {
          v36 = v35;
          [(PTService *)self ktraceSession];
          v37 = &dword_10001228C[2 * v34];
          v39 = *v37;
          v38 = v37[1];
          ktrace_events_range();
          v35 = 0;
          v34 = 1;
        }

        while ((v36 & 1) != 0);
      }
    }

    v40 = [v6 traceGroups];
    v41 = [v40 containsObject:&off_10001A640];

    if (v41)
    {
      [v6 includeKernelStacks];
      if (kperf_action_samplers_set())
      {
        if (a4)
        {
          v17 = @"Unable to set samplers for kperf timer action";
          goto LABEL_48;
        }

        goto LABEL_65;
      }

      kperf_timer_count_set();
      v43 = 1000000 * [v6 callstackSamplingRateMS];
      kperf_ns_to_ticks();
      if (kperf_timer_period_set())
      {
        if (!a4)
        {
          goto LABEL_65;
        }

        [NSString stringWithFormat:@"Unable to set kperf timer period to %llu ns", v43];
        goto LABEL_63;
      }

      if (kperf_timer_period_get())
      {
        if (!a4)
        {
          goto LABEL_65;
        }

        v44 = @"Unable to retrieve kperf timer period";
LABEL_55:
        *a4 = [NSError error:0 description:v44];
        goto LABEL_65;
      }

      v45 = kperf_ticks_to_ns();
      if (v45 != v43)
      {
        if (!a4)
        {
          goto LABEL_65;
        }

        v47 = [NSString stringWithFormat:@"Unable to set the callstack sampling rate requested.                            Kperf timer period could only be set to %llu ns", v45];
        v48 = 4;
        goto LABEL_64;
      }

      if (kperf_timer_action_set())
      {
        if (!a4)
        {
          goto LABEL_65;
        }

        v44 = @"Unable to set kperf timer action";
        goto LABEL_55;
      }
    }

    [(PTService *)self ktraceSession];
    v42 = 1;
    ktrace_set_vnode_paths_enabled();
    v46 = kperf_sample_set();
    if (!v46)
    {
      goto LABEL_66;
    }

    if (!a4)
    {
      goto LABEL_65;
    }

    [NSString stringWithFormat:@"Could not enable sampling: %{errno}d", v46];
    v47 = LABEL_63:;
    v48 = 0;
LABEL_64:
    *a4 = [NSError error:v48 description:v47];

    goto LABEL_65;
  }

  if (!a4)
  {
    goto LABEL_65;
  }

  v17 = @"Unable to init asp sampling";
LABEL_48:
  [NSError error:0 description:v17];
  *a4 = v42 = 0;
LABEL_66:

  return v42;
}

- (BOOL)_validSymbolicationPreferences
{
  v2 = CFPreferencesCopyAppValue(@"DBGFileMappedPaths", @"com.apple.DebugSymbols");
  if (v2)
  {
    v3 = v2;
    v4 = CFGetTypeID(v2);
    if (v4 == CFArrayGetTypeID() && CFArrayGetCount(v3) >= 1)
    {
      v5 = 0;
      v6 = 0;
      v7 = 0;
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v3, v5);
        v9 = CFGetTypeID(ValueAtIndex);
        if (v9 == CFStringGetTypeID())
        {
          v7 |= CFStringCompare(ValueAtIndex, @"/Library/Caches/com.apple.bni.symbols/bursar.apple.com/uuids", 0) == kCFCompareEqualTo;
        }

        v10 = CFGetTypeID(ValueAtIndex);
        if (v10 == CFStringGetTypeID())
        {
          v6 |= CFStringCompare(ValueAtIndex, @"/Library/Caches/com.apple.bni.symbols/uuidsymmap.apple.com/uuids", 0) == kCFCompareEqualTo;
        }

        ++v5;
      }

      while (CFArrayGetCount(v3) > v5);
      CFRelease(v3);
      if (v7 & v6)
      {
        LOBYTE(v2) = CFPreferencesGetAppBooleanValue(@"XBSCopyExecutable", @"com.apple.dsymForUUID", 0) != 0;
        return v2;
      }
    }

    else
    {
      CFRelease(v3);
    }

    LOBYTE(v2) = 0;
  }

  return v2;
}

- (void)_symbolicateKtraceFile:(id)a3
{
  v3 = a3;
  has_internal_diagnostics = os_variant_has_internal_diagnostics();
  v5 = sub_1000022A8();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_INFO);
  if ((has_internal_diagnostics & 1) == 0)
  {
    if (v6)
    {
      LOWORD(v10[0]) = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Skipping symbolication because of OS variant.", v10, 2u);
    }

    goto LABEL_10;
  }

  if (v6)
  {
    LOWORD(v10[0]) = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Symbolicating Performance Trace", v10, 2u);
  }

  v7 = [v3 path];
  [v7 UTF8String];
  v8 = ktrace_file_open();

  if (!v8)
  {
    v5 = sub_1000022A8();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_10000E82C();
    }

LABEL_10:

    goto LABEL_11;
  }

  Mutable = CFArrayCreateMutable(0, 1, &kCFTypeArrayCallBacks);
  CFArrayAppendValue(Mutable, @"/");
  v10[0] = Mutable;
  v10[1] = 1;
  ktrace_create_dsym_search_configuration();
  ktrace_symbolicate_file();
  ktrace_free_dsym_search_configuration();
  ktrace_file_close();
  CFRelease(Mutable);
LABEL_11:
}

- (BOOL)_appendLogContentToKtraceFile:(id)a3 withError:(id *)a4
{
  v6 = a3;
  v7 = [(PTService *)self activeConfig];
  v8 = [v7 includeOSLogs];

  if (v8)
  {
    v9 = 71;
  }

  else
  {
    v9 = 0;
  }

  v10 = [(PTService *)self activeConfig];
  v11 = [v10 includeOSSignposts];

  if (v11)
  {
    v12 = v9 | 0x20;
  }

  else
  {
    v12 = v9;
  }

  if (!v12)
  {
    v22 = sub_1000022A8();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      sub_10000E984();
    }

    if (!a4)
    {
      goto LABEL_31;
    }

    v23 = @"Failed to append logs due to missing flags.";
LABEL_26:
    [NSError error:0 description:v23];
    *a4 = v24 = 0;
    goto LABEL_32;
  }

  v13 = [(PTService *)self startTime];

  v14 = sub_1000022A8();
  v15 = v14;
  if (!v13)
  {
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_10000E948();
    }

    if (!a4)
    {
      goto LABEL_31;
    }

    v23 = @"Unable to append logs due to missing startTime.";
    goto LABEL_26;
  }

  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "Starting to append logs.", buf, 2u);
  }

  v16 = [v6 path];
  [v16 UTF8String];
  v17 = ktrace_file_open();

  if (!v17)
  {
    v25 = *__error();
    v26 = sub_1000022A8();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      sub_10000E8D8();
    }

    if (a4)
    {
      v27 = [NSString stringWithFormat:@"Failed to open file to append logs: %{errno}d", v25];
      *a4 = [NSError error:0 description:v27];
    }

    goto LABEL_31;
  }

  v18 = [(PTService *)self startTime];
  appended = ktrace_file_append_local_log_content();

  if (appended)
  {
    v20 = sub_1000022A8();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      sub_10000E868();
    }

    if (a4)
    {
      v21 = [NSString stringWithFormat:@"Failed to append logs: %{errno}d", appended];
      *a4 = [NSError error:0 description:v21];
    }

    ktrace_file_close();
LABEL_31:
    v24 = 0;
    goto LABEL_32;
  }

  ktrace_file_close();
  v29 = sub_1000022A8();
  if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
  {
    *v30 = 0;
    _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_INFO, "Done appending logs.", v30, 2u);
  }

  v24 = 1;
LABEL_32:

  return v24;
}

- (BOOL)_postProcessKtraceFile:(id)a3 withError:(id *)a4
{
  v6 = a3;
  v7 = [v6 path];
  [v7 UTF8String];
  v8 = ktrace_file_open();

  if (v8)
  {
    ktrace_file_append_live_ariadne_signpost_specs();
    ktrace_file_close();
    if (ktrace_session_create())
    {
      ktrace_set_execnames_enabled();
      ktrace_session_set_event_names_enabled();
      v27 = 0;
      v28 = &v27;
      v29 = 0x2020000000;
      v30 = 0;
      v25[0] = 0;
      v25[1] = v25;
      v25[2] = 0x2020000000;
      v26 = 1;
      v24[0] = 0;
      v24[1] = v24;
      v24[2] = 0x2020000000;
      v24[3] = 0;
      ktrace_events_all();
      v9 = dispatch_semaphore_create(0);
      ktrace_set_completion_handler();
      v10 = [v6 path];
      [v10 UTF8String];
      v11 = ktrace_set_file();

      if (v11)
      {
        if (a4)
        {
          v12 = [NSString stringWithFormat:@"Failed to open trace file for post-processing: %{errno}d", v11];
          v13 = [NSError error:0 description:v12];
LABEL_15:
          *a4 = v13;

          goto LABEL_16;
        }

        goto LABEL_16;
      }

      v16 = &_dispatch_main_q;
      v17 = ktrace_start();

      if (v17)
      {
        if (a4)
        {
          v12 = [NSString stringWithFormat:@"Failed to parse trace file for post-processing: %{errno}d", v17];
          v13 = [NSError error:0 description:v12];
          goto LABEL_15;
        }

LABEL_16:
        ktrace_session_destroy();
        goto LABEL_17;
      }

      dispatch_semaphore_wait(v9, 0xFFFFFFFFFFFFFFFFLL);
      ktrace_session_destroy();
      if (v28[3])
      {
        if (a4)
        {
          [NSError error:6 description:@"Events were lost during tracing. Trace will be unreadable"];
          *a4 = v15 = 0;
          goto LABEL_18;
        }

LABEL_17:
        v15 = 0;
LABEL_18:

        _Block_object_dispose(v24, 8);
        _Block_object_dispose(v25, 8);
        _Block_object_dispose(&v27, 8);
        goto LABEL_19;
      }

      v19 = [(PTService *)self activeConfig];
      if ([v19 includeOSLogs])
      {
      }

      else
      {
        v20 = [(PTService *)self activeConfig];
        v21 = [v20 includeOSSignposts];

        if (!v21)
        {
          goto LABEL_28;
        }
      }

      if (![(PTService *)self _appendLogContentToKtraceFile:v6 withError:a4]|| *a4)
      {
        goto LABEL_17;
      }

LABEL_28:
      v22 = [(PTService *)self activeConfig];
      v23 = [v22 symbolicate];

      if (v23)
      {
        [(PTService *)self _symbolicateKtraceFile:v6];
      }

      v15 = 1;
      goto LABEL_18;
    }

    if (a4)
    {
      v14 = @"Failed to create the tracing session for post-processing";
      goto LABEL_10;
    }

LABEL_11:
    v15 = 0;
    goto LABEL_19;
  }

  if (!a4)
  {
    goto LABEL_11;
  }

  v14 = @"Failed to open the trace file to append specs";
LABEL_10:
  [NSError error:0 description:v14];
  *a4 = v15 = 0;
LABEL_19:

  return v15;
}

- (id)_generateToken:(id)a3
{
  v4 = [a3 path];
  [v4 UTF8String];
  v5 = [(PTService *)self activeConfig];
  [v5 ownerPID];
  v6 = sandbox_extension_issue_file_to_process_by_pid();

  if (v6)
  {
    v7 = [NSString stringWithUTF8String:v6];
    free(v6);
  }

  else
  {
    v8 = sub_1000022A8();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10000E9C0();
    }

    v7 = 0;
  }

  return v7;
}

- (void)startPerformanceTrace:(id)a3
{
  v4 = a3;
  [(PTService *)self _updateRecordingStatus:1];
  if ([v4 useTraceRecord])
  {
    [(PTService *)self _startPerformanceTrace:v4];
  }

  else
  {
    [(PTService *)self _startPerformanceTraceLegacy:v4];
  }
}

- (void)_startPerformanceTrace:(id)a3
{
  v4 = a3;
  v5 = +[NSXPCConnection currentConnection];
  v6 = sub_1000022A8();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [v4 ownerName];
    *buf = 138543618;
    v100 = v7;
    v101 = 1024;
    v102 = [v4 ownerPID];
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Starting PerformanceTrace for %{public}@ [%d]", buf, 0x12u);
  }

  if (![(PTService *)self ktraceRecording]&& ![(PTService *)self ktraceSession])
  {
    os_variant_has_internal_content();
    v16 = [v4 ownerName];
    v13 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"PerformanceTrace: %@ [%d]", v16, [v4 ownerPID]);

    if (v13)
    {
      [v13 UTF8String];
    }

    [(PTService *)self setKtraceRecording:ktrace_recording_create()];
    if ([(PTService *)self ktraceRecording])
    {
      if (ktrace_config_create_current())
      {
        if (ktrace_config_get_owner_kind() == 1)
        {
          owner_name = ktrace_config_get_owner_name();
          if (strncmp(owner_name, "com.apple.Perfor", 0x20uLL))
          {
            v18 = [NSString stringWithFormat:@"Cannot start tracing as another process already owns foreground tracing: %s [%i]", owner_name, ktrace_config_get_owner_pid()];
            v14 = [NSError error:3 description:v18];

            ktrace_config_destroy();
            v19 = [(PTService *)self activeConfig];

            if (v19)
            {
              v20 = [(PTService *)self activeConfig];
              [v20 setTracingActiveTransaction:0];

              [(PTService *)self setActiveConfig:0];
              [(PTService *)self setRecordingConnectionPointer:0];
              [(PTService *)self _updateRecordingStatus:0];
            }

            if ([(PTService *)self ktraceRecording])
            {
              [(PTService *)self ktraceRecording];
              ktrace_recording_destroy();
              kperf_reset();
              [(PTService *)self setKtraceRecording:0];
            }

            [(PTService *)self _graphicsSamplingTeardown];
            v21 = [v5 synchronousRemoteObjectProxyWithErrorHandler:&stru_100018818];
            v22 = sub_1000022A8();
            if (!os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_26;
            }

            goto LABEL_25;
          }

          v23 = sub_1000022A8();
          if (os_log_type_enabled(v23, OS_LOG_TYPE_FAULT))
          {
            sub_10000EA88();
          }

          v24 = ktrace_reset_existing();
          if (v24)
          {
            v25 = [NSString stringWithFormat:@"ktrace was left in a bad state and cannot be reset: %{errno}d", v24];
            v14 = [NSError error:0 description:v25];

            ktrace_config_destroy();
            v26 = [(PTService *)self activeConfig];

            if (v26)
            {
              v27 = [(PTService *)self activeConfig];
              [v27 setTracingActiveTransaction:0];

              [(PTService *)self setActiveConfig:0];
              [(PTService *)self setRecordingConnectionPointer:0];
              [(PTService *)self _updateRecordingStatus:0];
            }

            if ([(PTService *)self ktraceRecording])
            {
              [(PTService *)self ktraceRecording];
              ktrace_recording_destroy();
              kperf_reset();
              [(PTService *)self setKtraceRecording:0];
            }

            [(PTService *)self _graphicsSamplingTeardown];
            v21 = [v5 synchronousRemoteObjectProxyWithErrorHandler:&stru_1000187D8];
            v22 = sub_1000022A8();
            if (!os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_26;
            }

            goto LABEL_25;
          }

          v28 = kperf_reset();
          if (v28)
          {
            v29 = [NSString stringWithFormat:@"kperf was left in a bad state and cannot be reset: %{errno}d", v28];
            v14 = [NSError error:0 description:v29];

            ktrace_config_destroy();
            v30 = [(PTService *)self activeConfig];

            if (v30)
            {
              v31 = [(PTService *)self activeConfig];
              [v31 setTracingActiveTransaction:0];

              [(PTService *)self setActiveConfig:0];
              [(PTService *)self setRecordingConnectionPointer:0];
              [(PTService *)self _updateRecordingStatus:0];
            }

            if ([(PTService *)self ktraceRecording])
            {
              [(PTService *)self ktraceRecording];
              ktrace_recording_destroy();
              kperf_reset();
              [(PTService *)self setKtraceRecording:0];
            }

            [(PTService *)self _graphicsSamplingTeardown];
            v21 = [v5 synchronousRemoteObjectProxyWithErrorHandler:&stru_1000187F8];
            v22 = sub_1000022A8();
            if (!os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_26;
            }

            goto LABEL_25;
          }
        }

        ktrace_config_destroy();
      }

      [(PTService *)self setActiveConfig:v4];
      [(PTService *)self setRecordingConnectionPointer:v5];
      v32 = +[NSDate date];
      [(PTService *)self setStartTime:v32];

      v14 = objc_alloc_init(NSDateFormatter);
      [v14 setDateStyle:1];
      [v14 setDateFormat:@"yyyy-MM-dd-HHmmss"];
      v33 = [v4 traceName];
      v34 = v33;
      if (v33)
      {
        v21 = v33;
      }

      else
      {
        v35 = [(PTService *)self startTime];
        v36 = [v14 stringFromDate:v35];
        v21 = [NSString stringWithFormat:@"trace_%@.atrc", v36];
      }

      v37 = [v4 traceDirectoryURL];
      v38 = [v37 path];
      v39 = v38;
      v40 = @"/var/mobile/Library/Logs/CrashReporter/DiagnosticLogs/PerformanceTraces/";
      if (v38)
      {
        v40 = v38;
      }

      v41 = v40;

      v42 = PTServicesCreateTraceDirectory(v41);
      if (v42)
      {
        v43 = [(PTService *)self activeConfig];

        if (v43)
        {
          v44 = [(PTService *)self activeConfig];
          [v44 setTracingActiveTransaction:0];

          [(PTService *)self setActiveConfig:0];
          [(PTService *)self setRecordingConnectionPointer:0];
          [(PTService *)self _updateRecordingStatus:0];
        }

        if ([(PTService *)self ktraceRecording])
        {
          [(PTService *)self ktraceRecording];
          ktrace_recording_destroy();
          kperf_reset();
          [(PTService *)self setKtraceRecording:0];
        }

        [(PTService *)self _graphicsSamplingTeardown];
        v45 = [v5 synchronousRemoteObjectProxyWithErrorHandler:&stru_100018838];
        v46 = sub_1000022A8();
        if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
        {
          sub_10000E9FC(v42);
        }

        [v45 performanceTraceDidStart:v42];
      }

      else
      {
        v45 = [(__CFString *)v41 stringByAppendingPathComponent:v21];
        v97 = 0;
        v47 = [(PTService *)self _traceRecordArgsArrayFromConfig:v4 outputFilePath:v45 xpcConnection:v5 error:&v97];
        v76 = v97;
        v77 = v47;
        if (v76)
        {
          v48 = [(PTService *)self activeConfig];

          if (v48)
          {
            v49 = [(PTService *)self activeConfig];
            [v49 setTracingActiveTransaction:0];

            [(PTService *)self setActiveConfig:0];
            [(PTService *)self setRecordingConnectionPointer:0];
            [(PTService *)self _updateRecordingStatus:0];
          }

          if ([(PTService *)self ktraceRecording])
          {
            [(PTService *)self ktraceRecording];
            ktrace_recording_destroy();
            kperf_reset();
            [(PTService *)self setKtraceRecording:0];
          }

          [(PTService *)self _graphicsSamplingTeardown];
          v50 = [v5 synchronousRemoteObjectProxyWithErrorHandler:&stru_100018858];
          v51 = sub_1000022A8();
          if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
          {
            sub_10000E9FC(v76);
          }

          v52 = v76;
          [v50 performanceTraceDidStart:v76];
        }

        else
        {
          v73 = v41;
          v74 = v21;
          [(PTService *)self ktraceRecording];
          ktrace_recording_set_streams();
          v53 = os_transaction_create();
          [v4 setTracingActiveTransaction:v53];

          [(PTService *)self ktraceRecording];
          v89 = _NSConcreteStackBlock;
          v90 = 3221225472;
          v91 = sub_1000048FC;
          v92 = &unk_100018900;
          v93 = self;
          v75 = v5;
          v94 = v5;
          v95 = v4;
          v72 = v45;
          v96 = v45;
          ktrace_recording_follow_notifications();
          v54 = dispatch_get_global_queue(25, 0);
          v55 = dispatch_queue_create_with_target_V2("com.apple.PerformanceTrace.tracingStartedNotificationQueue", 0, v54);
          queue = v54;

          out_token = 0;
          handler[0] = _NSConcreteStackBlock;
          handler[1] = 3221225472;
          handler[2] = sub_100005214;
          handler[3] = &unk_100018948;
          v70 = v94;
          v87 = v70;
          notify_register_dispatch("com.apple.PerformanceTrace.StartedTraceRecord", &out_token, v55, handler);
          v69 = [v77 count];
          v56 = malloc_type_calloc(v69 + 1, 8uLL, 0x10040436913F5uLL);
          v82 = 0u;
          v83 = 0u;
          v84 = 0u;
          v85 = 0u;
          v57 = v77;
          v58 = [v57 countByEnumeratingWithState:&v82 objects:v98 count:16];
          if (v58)
          {
            v59 = v58;
            v67 = v55;
            v68 = v13;
            v60 = 0;
            v61 = *v83;
            do
            {
              v62 = 0;
              v63 = v60 << 32;
              v60 = v60;
              do
              {
                if (*v83 != v61)
                {
                  objc_enumerationMutation(v57);
                }

                v56[v60++] = strdup([*(*(&v82 + 1) + 8 * v62) UTF8String]);
                v62 = v62 + 1;
                v63 += &_mh_execute_header;
              }

              while (v59 != v62);
              v59 = [v57 countByEnumeratingWithState:&v82 objects:v98 count:16];
            }

            while (v59);
            v64 = v63 >> 32;
            v13 = v68;
            v55 = v67;
            v42 = 0;
          }

          else
          {
            v64 = 0;
          }

          v56[v64] = 0;
          v65 = sub_1000022A8();
          if (os_log_type_enabled(v65, OS_LOG_TYPE_DEFAULT))
          {
            v66 = [v57 componentsJoinedByString:@" "];
            *buf = 138412290;
            v100 = v66;
            _os_log_impl(&_mh_execute_header, v65, OS_LOG_TYPE_DEFAULT, "trace record args: %@", buf, 0xCu);
          }

          block[0] = _NSConcreteStackBlock;
          block[1] = 3221225472;
          block[2] = sub_1000052F8;
          block[3] = &unk_100018990;
          v81 = v69;
          block[4] = self;
          v80 = v56;
          v79 = v70;
          dispatch_async(queue, block);

          v21 = v74;
          v5 = v75;
          v45 = v72;
          v41 = v73;
          v52 = 0;
        }
      }

      goto LABEL_79;
    }

    v14 = [NSError error:0 description:@"Cannot start tracing as Performance Trace failed to create the ktrace recording"];
    v21 = [v5 synchronousRemoteObjectProxyWithErrorHandler:&stru_1000187B8];
    v22 = sub_1000022A8();
    if (!os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
LABEL_26:

      [v21 performanceTraceDidStart:v14];
LABEL_79:

      goto LABEL_11;
    }

LABEL_25:
    sub_10000E9FC(v14);
    goto LABEL_26;
  }

  v8 = [(PTService *)self activeConfig];

  if (v8)
  {
    v9 = [(PTService *)self activeConfig];
    v10 = [v9 ownerName];
    v11 = [(PTService *)self activeConfig];
    v12 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"Tracing is already in progress by another PerformanceTrace client: %@ [%i]", v10, [v11 ownerPID]);
    v13 = [NSError error:3 description:v12];

    v14 = [v5 synchronousRemoteObjectProxyWithErrorHandler:&stru_100018778];
    v15 = sub_1000022A8();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_9;
    }
  }

  else
  {
    v13 = [NSError error:3 description:@"Tracing is already in progress by another PerformanceTrace client: Unknown"];
    v14 = [v5 synchronousRemoteObjectProxyWithErrorHandler:&stru_100018798];
    v15 = sub_1000022A8();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
LABEL_9:
      sub_10000E9FC(v13);
    }
  }

  [v14 performanceTraceDidStart:v13];
LABEL_11:
}

- (id)_traceRecordArgsArrayFromConfig:(id)a3 outputFilePath:(id)a4 xpcConnection:(id)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = [NSMutableArray arrayWithObject:@"record"];
  v53 = v11;
  v14 = [NSArray arrayWithObjects:&v53 count:1];
  [v13 addObjectsFromArray:v14];

  v15 = [v10 traceRecordArgs];

  if (v15)
  {
    v16 = [v10 traceRecordArgs];
    [v13 addObjectsFromArray:v16];
  }

  v17 = [v10 planNameOrPath];

  if (v17)
  {
    v52[0] = @"--plan";
    v18 = [v10 planNameOrPath];
    v52[1] = v18;
    v19 = [NSArray arrayWithObjects:v52 count:2];
    [v13 addObjectsFromArray:v19];

    v20 = [v10 planNameOrPath];
    LODWORD(v19) = [v20 isAbsolutePath];

    if (v19)
    {
      [v13 addObject:@"--experimental"];
    }
  }

  v21 = [v10 traceGroups];
  v22 = [v21 containsObject:&off_10001A5B0];

  if (v22)
  {
    [v13 addObjectsFromArray:&off_10001A7C0];
  }

  v23 = [v10 traceGroups];
  v24 = [v23 containsObject:&off_10001A5C8];

  if (v24)
  {
    [v13 addObjectsFromArray:&off_10001A7D8];
  }

  v25 = [v10 traceGroups];
  v26 = [v25 containsObject:&off_10001A5E0];

  if (v26)
  {
    [v13 addObjectsFromArray:&off_10001A7F0];
  }

  v27 = [v10 traceGroups];
  v28 = [v27 containsObject:&off_10001A5F8];

  if (v28)
  {
    [v13 addObjectsFromArray:&off_10001A808];
  }

  v29 = [v10 traceGroups];
  v30 = [v29 containsObject:&off_10001A640];

  if (!v30 || [v10 callstackSamplingRateMS] == 1)
  {
    v31 = [v10 traceType];
    if (v31 == 2)
    {
      if (![v10 traceDurationSecs])
      {
        if (a6)
        {
          v37 = @"Non-zero traceDurationSecs must be specified when using ringbuffer mode";
LABEL_40:
          [NSString stringWithFormat:v37, v47];
          goto LABEL_41;
        }

LABEL_43:
        v40 = 0;
        goto LABEL_60;
      }

      v50[0] = @"--trailing-duration";
      v33 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%lus", [v10 traceDurationSecs]);
      v50[1] = v33;
      v34 = v50;
    }

    else
    {
      if (v31 != 1)
      {
        if (a6)
        {
          +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"Cannot start tracing as an unknown trace type is used: %lu", [v10 traceType]);
          v35 = LABEL_41:;
          v36 = 4;
          goto LABEL_42;
        }

        goto LABEL_43;
      }

      v32 = [v10 traceDurationSecs];
      if ((v32 - 31) <= 0xFFFFFFFFFFFFFFE1)
      {
        if (v12 && [(PTService *)self _connectionIsEntitled:v12 toEntitlement:@"com.apple.PerformanceTrace.OverrideTimeout"])
        {
          if (!v32)
          {
LABEL_36:
            if ([v10 kernelBufferSizeMB])
            {
              if ([v10 kernelBufferSizeMB] >= 0x401)
              {
                if (a6)
                {
                  v47 = 1024;
                  v37 = @"Cannot start tracing as PerformanceTrace cannot have a kernel buffer size larger than %dMB.";
                  goto LABEL_40;
                }

                goto LABEL_43;
              }

              v49[0] = @"--unsafe";
              v49[1] = @"--kdebug-buffer-size";
              v41 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%lumb", [v10 kernelBufferSizeMB]);
              v49[2] = v41;
              v42 = [NSArray arrayWithObjects:v49 count:3];
              [v13 addObjectsFromArray:v42];
            }

            if ([v10 enableSwiftUITracing])
            {
              [v13 addObjectsFromArray:&off_10001A820];
            }

            if ([v10 overrideIncludeOSLogs] && objc_msgSend(v10, "includeOSLogs"))
            {
              [v13 addObjectsFromArray:&off_10001A838];
            }

            if ([v10 overrideIncludeOSSignposts] && (objc_msgSend(v10, "includeOSSignposts") & 1) == 0)
            {
              [v13 addObjectsFromArray:&off_10001A850];
            }

            if ([v10 overrideSymbolicate])
            {
              if ([v10 symbolicate])
              {
                v43 = &off_10001A868;
              }

              else
              {
                v43 = &off_10001A880;
              }
            }

            else
            {
              v43 = &off_10001A898;
            }

            [v13 addObjectsFromArray:v43];
            [v13 addObjectsFromArray:&off_10001A8B0];
            v44 = qword_10001D7A0++;
            v35 = [NSString stringWithFormat:@"%s.%llu", "com.apple.PerformanceTrace.EndTraceRecord", v44];
            v48[0] = @"--end-on-notification";
            v48[1] = v35;
            v45 = [NSArray arrayWithObjects:v48 count:2];
            [v13 addObjectsFromArray:v45];

            [v10 setTraceRecordEndNotificationName:v35];
            v40 = [v13 copy];
            goto LABEL_59;
          }
        }

        else
        {
          v38 = sub_1000022A8();
          if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
          {
            sub_10000ECD8();
          }

          v32 = 30;
        }
      }

      v51[0] = @"--end-after-duration";
      v33 = [NSString stringWithFormat:@"%lus", v32];
      v51[1] = v33;
      v34 = v51;
    }

    v39 = [NSArray arrayWithObjects:v34 count:2];
    [v13 addObjectsFromArray:v39];

    goto LABEL_36;
  }

  if (!a6)
  {
    goto LABEL_43;
  }

  v35 = [NSString stringWithFormat:@"Callstack sampling rate other than 1ms not supported"];
  v36 = 0;
LABEL_42:
  [NSError error:v36 description:v35];
  *a6 = v40 = 0;
LABEL_59:

LABEL_60:

  return v40;
}

- (void)_startPerformanceTraceLegacy:(id)a3
{
  v4 = a3;
  v5 = +[NSXPCConnection currentConnection];
  v6 = sub_1000022A8();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [v4 ownerName];
    *buf = 138543618;
    v79 = v7;
    v80 = 1024;
    v81 = [v4 ownerPID];
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Starting PerformanceTrace (legacy) for %{public}@ [%d]", buf, 0x12u);
  }

  if (![(PTService *)self ktraceRecording]&& ![(PTService *)self ktraceSession])
  {
    [(PTService *)self setKtraceSession:ktrace_session_create()];
    if (![(PTService *)self ktraceSession])
    {
      v13 = [NSError error:0 description:@"Cannot start tracing as Performance Trace failed to create the ktrace session"];
      v14 = [v5 synchronousRemoteObjectProxyWithErrorHandler:&stru_1000189F0];
      v15 = sub_1000022A8();
      if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_10;
      }

      goto LABEL_9;
    }

    [(PTService *)self ktraceSession];
    ktrace_set_execnames_enabled();
    [(PTService *)self ktraceSession];
    ktrace_session_set_event_names_enabled();
    if (ktrace_config_create_current())
    {
      if (ktrace_config_get_owner_kind() == 1)
      {
        owner_name = ktrace_config_get_owner_name();
        if (strncmp(owner_name, "com.apple.Perfor", 0x20uLL))
        {
          v17 = [NSString stringWithFormat:@"Cannot start tracing as another process already owns foreground tracing: %s [%i]", owner_name, ktrace_config_get_owner_pid()];
          v13 = [NSError error:3 description:v17];

          ktrace_config_destroy();
          v18 = [(PTService *)self activeConfig];

          if (v18)
          {
            [(PTService *)self setActiveConfig:0];
            [(PTService *)self setRecordingConnectionPointer:0];
          }

          if ([(PTService *)self ktraceSession])
          {
            [(PTService *)self ktraceSession];
            ktrace_session_destroy();
            kperf_reset();
            [(PTService *)self setKtraceSession:0];
          }

          [(PTService *)self _graphicsSamplingTeardown];
          [(PTService *)self _updateRecordingStatus:0];
          v14 = [v5 synchronousRemoteObjectProxyWithErrorHandler:&stru_100018A50];
          v15 = sub_1000022A8();
          if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_10;
          }

          goto LABEL_9;
        }

        v19 = sub_1000022A8();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
        {
          sub_10000EA88();
        }

        v20 = ktrace_reset_existing();
        if (v20)
        {
          v21 = [NSString stringWithFormat:@"ktrace was left in a bad state and cannot be reset: %{errno}d", v20];
          v13 = [NSError error:0 description:v21];

          ktrace_config_destroy();
          v22 = [(PTService *)self activeConfig];

          if (v22)
          {
            [(PTService *)self setActiveConfig:0];
            [(PTService *)self setRecordingConnectionPointer:0];
          }

          if ([(PTService *)self ktraceSession])
          {
            [(PTService *)self ktraceSession];
            ktrace_session_destroy();
            kperf_reset();
            [(PTService *)self setKtraceSession:0];
          }

          [(PTService *)self _graphicsSamplingTeardown];
          [(PTService *)self _updateRecordingStatus:0];
          v14 = [v5 synchronousRemoteObjectProxyWithErrorHandler:&stru_100018A10];
          v15 = sub_1000022A8();
          if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_10;
          }

          goto LABEL_9;
        }

        v23 = kperf_reset();
        if (v23)
        {
          v24 = [NSString stringWithFormat:@"kperf was left in a bad state and cannot be reset: %{errno}d", v23];
          v13 = [NSError error:0 description:v24];

          ktrace_config_destroy();
          v25 = [(PTService *)self activeConfig];

          if (v25)
          {
            [(PTService *)self setActiveConfig:0];
            [(PTService *)self setRecordingConnectionPointer:0];
          }

          if ([(PTService *)self ktraceSession])
          {
            [(PTService *)self ktraceSession];
            ktrace_session_destroy();
            kperf_reset();
            [(PTService *)self setKtraceSession:0];
          }

          [(PTService *)self _graphicsSamplingTeardown];
          [(PTService *)self _updateRecordingStatus:0];
          v14 = [v5 synchronousRemoteObjectProxyWithErrorHandler:&stru_100018A30];
          v15 = sub_1000022A8();
          if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_10;
          }

          goto LABEL_9;
        }
      }

      ktrace_config_destroy();
    }

    [(PTService *)self setActiveConfig:v4];
    [(PTService *)self setRecordingConnectionPointer:v5];
    v26 = +[NSDate date];
    [(PTService *)self setStartTime:v26];

    v13 = objc_alloc_init(NSDateFormatter);
    [v13 setDateStyle:1];
    [v13 setDateFormat:@"yyyy-MM-dd-HHmmss"];
    v27 = [v4 traceName];
    v28 = v27;
    if (v27)
    {
      v14 = v27;
    }

    else
    {
      v29 = [(PTService *)self startTime];
      v30 = [v13 stringFromDate:v29];
      v14 = [NSString stringWithFormat:@"trace_%@.ktrace", v30];
    }

    v31 = [v4 traceDirectoryURL];
    v32 = [v31 path];
    v33 = v32;
    v34 = @"/var/mobile/Library/Logs/CrashReporter/DiagnosticLogs/PerformanceTraces/";
    if (v32)
    {
      v34 = v32;
    }

    v35 = v34;

    v36 = PTServicesCreateTraceDirectory(v35);
    if (v36)
    {
      v37 = [(PTService *)self activeConfig];

      if (v37)
      {
        [(PTService *)self setActiveConfig:0];
        [(PTService *)self setRecordingConnectionPointer:0];
      }

      if ([(PTService *)self ktraceSession])
      {
        [(PTService *)self ktraceSession];
        ktrace_session_destroy();
        kperf_reset();
        [(PTService *)self setKtraceSession:0];
      }

      [(PTService *)self _graphicsSamplingTeardown];
      [(PTService *)self _updateRecordingStatus:0];
      v38 = [v5 synchronousRemoteObjectProxyWithErrorHandler:&stru_100018A70];
      v39 = sub_1000022A8();
      if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
      {
        sub_10000E9FC(v36);
      }

      [v38 performanceTraceDidStart:v36];
      goto LABEL_104;
    }

    v38 = [(__CFString *)v35 stringByAppendingPathComponent:v14];
    v77 = 0;
    v40 = [(PTService *)self _configureKtraceSession:v4 withError:&v77];
    v41 = v77;
    if (v41 || (v40 & 1) == 0)
    {
      v47 = [(PTService *)self activeConfig];

      if (v47)
      {
        [(PTService *)self setActiveConfig:0];
        [(PTService *)self setRecordingConnectionPointer:0];
      }

      if ([(PTService *)self ktraceSession])
      {
        [(PTService *)self ktraceSession];
        ktrace_session_destroy();
        kperf_reset();
        [(PTService *)self setKtraceSession:0];
      }

      [(PTService *)self _graphicsSamplingTeardown];
      [(PTService *)self _updateRecordingStatus:0];
      v46 = [v5 synchronousRemoteObjectProxyWithErrorHandler:&stru_100018A90];
      v48 = sub_1000022A8();
      if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
      {
        sub_10000E9FC(v41);
      }

      [v46 performanceTraceDidStart:v41];
      goto LABEL_103;
    }

    if ([v4 kernelBufferSizeMB] >= 0x401)
    {
      v42 = [NSString stringWithFormat:@"Cannot start tracing as PerformanceTrace cannot have a kernel buffer size larger than %dMB.", 1024];
      v69 = [NSError error:4 description:v42];

      v43 = [(PTService *)self activeConfig];

      if (v43)
      {
        [(PTService *)self setActiveConfig:0];
        [(PTService *)self setRecordingConnectionPointer:0];
      }

      if ([(PTService *)self ktraceSession])
      {
        [(PTService *)self ktraceSession];
        ktrace_session_destroy();
        kperf_reset();
        [(PTService *)self setKtraceSession:0];
      }

      [(PTService *)self _graphicsSamplingTeardown];
      [(PTService *)self _updateRecordingStatus:0];
      v44 = [v5 synchronousRemoteObjectProxyWithErrorHandler:&stru_100018AB0];
      v45 = sub_1000022A8();
      v41 = 0;
      if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
      {
        sub_10000E9FC(v69);
      }

      v46 = v69;
      [v44 performanceTraceDidStart:v69];

      goto LABEL_103;
    }

    [(PTService *)self ktraceSession];
    [v4 kernelBufferSizeMB];
    ktrace_set_buffer_size();
    [(PTService *)self ktraceSession];
    [v4 kernelBufferDrainQoS];
    ktrace_set_collection_qos();
    [(PTService *)self ktraceSession];
    [v4 kernelBufferDrainRateMS];
    ktrace_set_collection_interval();
    v70 = os_transaction_create();
    [(PTService *)self ktraceSession];
    handler[5] = _NSConcreteStackBlock;
    handler[6] = 3221225472;
    handler[7] = sub_100006E90;
    handler[8] = &unk_100018AF8;
    handler[9] = self;
    v49 = v38;
    v73 = v49;
    v50 = v4;
    v74 = v50;
    v68 = v5;
    v75 = v68;
    v71 = v70;
    v76 = v71;
    ktrace_set_completion_handler();
    v51 = [v50 traceType];
    if (v51 == 2)
    {
      [(PTService *)self ktraceSession];
      started = ktrace_configure();
    }

    else
    {
      if (v51 != 1)
      {
        v57 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"Cannot start tracing as an unknown trace type is used: %lu", [v50 traceType]);
        v65 = [NSError error:4 description:v57];

        v58 = [(PTService *)self activeConfig];

        if (v58)
        {
          [(PTService *)self setActiveConfig:0];
          [(PTService *)self setRecordingConnectionPointer:0];
        }

        v41 = 0;
        if ([(PTService *)self ktraceSession])
        {
          [(PTService *)self ktraceSession];
          ktrace_session_destroy();
          kperf_reset();
          [(PTService *)self setKtraceSession:0];
        }

        [(PTService *)self _graphicsSamplingTeardown];
        [(PTService *)self _updateRecordingStatus:0];
        v55 = [v68 synchronousRemoteObjectProxyWithErrorHandler:&stru_100018B18];
        v56 = sub_1000022A8();
        if (!os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_88;
        }

LABEL_87:
        sub_10000E9FC(v65);
LABEL_88:

        [v55 performanceTraceDidStart:v65];
        v59 = v65;
LABEL_102:
        v46 = v71;

LABEL_103:
LABEL_104:

        goto LABEL_11;
      }

      [(PTService *)self ktraceSession];
      [v49 UTF8String];
      started = ktrace_start_writing_path();
    }

    if (started)
    {
      v53 = [NSString stringWithFormat:@"Cannot start tracing as Performance Trace failed to write to the expected output path: %{errno}d", started];
      v65 = [NSError error:4 description:v53];

      v54 = [(PTService *)self activeConfig];

      if (v54)
      {
        [(PTService *)self setActiveConfig:0];
        [(PTService *)self setRecordingConnectionPointer:0];
      }

      v41 = 0;
      if ([(PTService *)self ktraceSession])
      {
        [(PTService *)self ktraceSession];
        ktrace_session_destroy();
        kperf_reset();
        [(PTService *)self setKtraceSession:0];
      }

      [(PTService *)self _graphicsSamplingTeardown];
      [(PTService *)self _updateRecordingStatus:0];
      v55 = [v68 synchronousRemoteObjectProxyWithErrorHandler:&stru_100018B38];
      v56 = sub_1000022A8();
      if (!os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_88;
      }

      goto LABEL_87;
    }

    v66 = [v50 traceTimeoutS];
    v41 = 0;
    if ([v50 traceTimeoutS] && objc_msgSend(v50, "traceTimeoutS") < 0x1F || v68 && -[PTService _connectionIsEntitled:toEntitlement:](self, "_connectionIsEntitled:toEntitlement:", v68, @"com.apple.PerformanceTrace.OverrideTimeout"))
    {
      v60 = v66;
      if (!v66)
      {
        goto LABEL_99;
      }
    }

    else
    {
      v61 = sub_1000022A8();
      if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
      {
        sub_10000ECD8();
      }

      v60 = 30;
    }

    v67 = v60;
    v62 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, &_dispatch_main_q);
    v63 = dispatch_time(0, 1000000000 * v67);
    dispatch_source_set_timer(v62, v63, 0xFFFFFFFFFFFFFFFFLL, 0);
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_1000073A4;
    handler[3] = &unk_100018738;
    handler[4] = self;
    dispatch_source_set_event_handler(v62, handler);
    dispatch_activate(v62);
    [(PTService *)self setActiveTimer:v62];

LABEL_99:
    v64 = sub_1000022A8();
    if (os_log_type_enabled(v64, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v64, OS_LOG_TYPE_INFO, "Sucessfully started Performance Trace", buf, 2u);
    }

    v59 = [v68 synchronousRemoteObjectProxyWithErrorHandler:&stru_100018B58];
    [v59 performanceTraceDidStart:0];
    goto LABEL_102;
  }

  v8 = [(PTService *)self activeConfig];

  if (v8)
  {
    v9 = [(PTService *)self activeConfig];
    v10 = [v9 ownerName];
    v11 = [(PTService *)self activeConfig];
    v12 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"Tracing is already in progress by another PerformanceTrace client: %@ [%i]", v10, [v11 ownerPID]);
    v13 = [NSError error:3 description:v12];

    v14 = [v5 synchronousRemoteObjectProxyWithErrorHandler:&stru_1000189B0];
    v15 = sub_1000022A8();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_9;
    }
  }

  else
  {
    v13 = [NSError error:3 description:@"Tracing is already in progress by another PerformanceTrace client: Unknown"];
    v14 = [v5 synchronousRemoteObjectProxyWithErrorHandler:&stru_1000189D0];
    v15 = sub_1000022A8();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
LABEL_9:
      sub_10000E9FC(v13);
    }
  }

LABEL_10:

  [v14 performanceTraceDidStart:v13];
LABEL_11:
}

- (void)stopPerformanceTrace
{
  v3 = [(PTService *)self activeConfig];

  if (v3)
  {
    v4 = [(PTService *)self activeConfig];
    v5 = [v4 useTraceRecord];

    if (v5)
    {

      [(PTService *)self _stopPerformanceTrace];
    }

    else
    {

      [(PTService *)self _stopPerformanceTraceLegacy];
    }
  }
}

- (void)_stopPerformanceTrace
{
  v3 = +[NSXPCConnection currentConnection];
  v4 = sub_1000022A8();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [(PTService *)self activeConfig];
    v6 = [v5 ownerName];
    v7 = [(PTService *)self activeConfig];
    v20 = 138543618;
    v21 = v6;
    v22 = 1024;
    v23 = [v7 ownerPID];
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Stopping Performance Trace for %{public}@ [%d]", &v20, 0x12u);
  }

  if (![(PTService *)self ktraceRecording]|| ([(PTService *)self activeConfig], v8 = objc_claimAutoreleasedReturnValue(), v8, !v8))
  {
    v17 = sub_1000022A8();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      sub_10000EF58();
    }

    v16 = [NSError error:5 description:@"No current tracing session exists to stop."];
    v18 = [v3 synchronousRemoteObjectProxyWithErrorHandler:&stru_100018B78];
    v19 = sub_1000022A8();
    if (!os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_19;
    }

LABEL_18:
    sub_10000EECC(v16);
LABEL_19:

    [(PTService *)self _updateRecordingStatus:0];
    [v18 performanceTraceDidStop:v16];

    goto LABEL_20;
  }

  v9 = [(PTService *)self activeConfig];
  v10 = [v9 traceRecordEndNotificationName];
  v11 = [v10 UTF8String];

  v12 = sub_1000022A8();
  v13 = v12;
  if (!v11)
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_10000EE90();
    }

    v16 = [NSError error:5 description:@"Failed to extract valid notification name for trace record run"];
    v18 = [v3 synchronousRemoteObjectProxyWithErrorHandler:&stru_100018B98];
    v19 = sub_1000022A8();
    if (!os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    sub_10000EDE0();
  }

  if (notify_post(v11))
  {
    v14 = sub_1000022A8();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_10000EE20();
    }
  }

  v15 = sub_1000022A8();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    LOWORD(v20) = 0;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "Successfully stopped Performance Trace", &v20, 2u);
  }

  v16 = [v3 synchronousRemoteObjectProxyWithErrorHandler:&stru_100018BB8];
  [v16 performanceTraceDidStop:0];
LABEL_20:
}

- (void)_stopPerformanceTraceLegacy
{
  v3 = +[NSXPCConnection currentConnection];
  v4 = sub_1000022A8();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [(PTService *)self activeConfig];
    v6 = [v5 ownerName];
    v7 = [(PTService *)self activeConfig];
    *buf = 138543618;
    *&buf[4] = v6;
    *&buf[12] = 1024;
    *&buf[14] = [v7 ownerPID];
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Stopping PerformanceTrace (legacy) for %{public}@ [%d]", buf, 0x12u);
  }

  v8 = [(PTService *)self activeTimer];
  v9 = v8 == 0;

  if (!v9)
  {
    v10 = [(PTService *)self activeTimer];
    dispatch_source_cancel(v10);

    [(PTService *)self setActiveTimer:0];
  }

  if ([(PTService *)self ktraceSession])
  {
    v11 = [(PTService *)self activeConfig];
    v12 = [v11 traceType] == 1;

    if (v12)
    {
      [(PTService *)self ktraceSession];
      ktrace_end();
LABEL_61:
      v70 = sub_1000022A8();
      if (os_log_type_enabled(v70, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v70, OS_LOG_TYPE_INFO, "Successfully stopped Performance Trace", buf, 2u);
      }

      v71 = [v3 synchronousRemoteObjectProxyWithErrorHandler:&stru_100018CC0];
      [v71 performanceTraceDidStop:0];

      goto LABEL_64;
    }

    v17 = [(PTService *)self activeConfig];
    v18 = [v17 traceType] == 2;

    if (!v18)
    {
      goto LABEL_61;
    }

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    v81 = ktrace_session_create();
    v19 = objc_alloc_init(NSDateFormatter);
    [v19 setDateStyle:1];
    [v19 setDateFormat:@"yyyy-MM-dd-HHmmss"];
    v20 = [(PTService *)self activeConfig];
    v21 = [v20 traceName];
    v22 = v21;
    if (v21)
    {
      v75 = v21;
    }

    else
    {
      v23 = +[NSDate date];
      v24 = [v19 stringFromDate:v23];
      v75 = [NSString stringWithFormat:@"trace_%@.ktrace", v24];
    }

    v25 = [(PTService *)self activeConfig];
    v26 = [v25 traceDirectoryURL];
    v27 = [v26 path];
    v28 = v27;
    v29 = @"/var/mobile/Library/Logs/CrashReporter/DiagnosticLogs/PerformanceTraces/";
    if (v27)
    {
      v29 = v27;
    }

    v30 = v29;

    v76 = +[NSFileManager defaultManager];
    v78 = NSFilePosixPermissions;
    v79 = &off_10001A658;
    v31 = [NSDictionary dictionaryWithObjects:&v79 forKeys:&v78 count:1];
    v77 = 0;
    v32 = [v76 createDirectoryAtPath:v30 withIntermediateDirectories:1 attributes:v31 error:&v77];
    v33 = v77;
    v34 = v33;
    if ((v32 & 1) == 0)
    {
      v46 = [v33 localizedDescription];
      v47 = [NSString stringWithFormat:@"Cannot dump ringbuffer trace as Performance Trace cannot write to the target directory: %@", v46];
      v48 = [NSError error:4 description:v47 underlyingError:v34];

      v49 = [(PTService *)self activeConfig];
      v50 = v49 == 0;

      if (!v50)
      {
        [(PTService *)self setActiveConfig:0];
        [(PTService *)self setRecordingConnectionPointer:0];
      }

      if ([(PTService *)self ktraceSession])
      {
        [(PTService *)self ktraceSession];
        ktrace_end();
        [(PTService *)self ktraceSession];
        ktrace_session_destroy();
        kperf_reset();
        [(PTService *)self setKtraceSession:0];
      }

      if (*(*&buf[8] + 24))
      {
        ktrace_end();
        v51 = *(*&buf[8] + 24);
        ktrace_session_destroy();
        *(*&buf[8] + 24) = 0;
      }

      [(PTService *)self _graphicsSamplingTeardown];
      v52 = [v3 synchronousRemoteObjectProxyWithErrorHandler:&stru_100018BF8];
      v53 = sub_1000022A8();
      if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
      {
        [v48 description];
        objc_claimAutoreleasedReturnValue();
        sub_10000EF94();
      }

      [v52 performanceTraceDidStop:v48];
      [v52 performanceTraceDidComplete:0 withToken:0 withError:v48];

      goto LABEL_49;
    }

    v35 = [(__CFString *)v30 stringByAppendingPathComponent:v75];
    if (!*(*&buf[8] + 24))
    {
      v40 = [NSError error:0 description:@"Cannot stop ringbuffer tracing as Performance Trace was unable to generate a ktrace session"];
      v54 = [(PTService *)self activeConfig];
      v55 = v54 == 0;

      if (!v55)
      {
        [(PTService *)self setActiveConfig:0];
        [(PTService *)self setRecordingConnectionPointer:0];
      }

      if ([(PTService *)self ktraceSession])
      {
        [(PTService *)self ktraceSession];
        ktrace_end();
        [(PTService *)self ktraceSession];
        ktrace_session_destroy();
        kperf_reset();
        [(PTService *)self setKtraceSession:0];
      }

      if (*(*&buf[8] + 24))
      {
        ktrace_end();
        v56 = *(*&buf[8] + 24);
        ktrace_session_destroy();
        *(*&buf[8] + 24) = 0;
      }

      [(PTService *)self _graphicsSamplingTeardown];
      v44 = [v3 synchronousRemoteObjectProxyWithErrorHandler:&stru_100018C18];
      v45 = sub_1000022A8();
      if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
      {
        [v40 description];
        objc_claimAutoreleasedReturnValue();
        sub_10000EF94();
      }

      goto LABEL_48;
    }

    ktrace_set_execnames_enabled();
    v36 = *(*&buf[8] + 24);
    ktrace_session_set_event_names_enabled();
    v37 = *(*&buf[8] + 24);
    v38 = ktrace_set_use_existing();
    if (v38)
    {
      v39 = [NSString stringWithFormat:@"Cannot write ringbuffer trace due to failure to find existing session: %{errno}d", v38];
      v40 = [NSError error:0 description:v39];

      v41 = [(PTService *)self activeConfig];
      v42 = v41 == 0;

      if (!v42)
      {
        [(PTService *)self setActiveConfig:0];
        [(PTService *)self setRecordingConnectionPointer:0];
      }

      if ([(PTService *)self ktraceSession])
      {
        [(PTService *)self ktraceSession];
        ktrace_end();
        [(PTService *)self ktraceSession];
        ktrace_session_destroy();
        kperf_reset();
        [(PTService *)self setKtraceSession:0];
      }

      if (*(*&buf[8] + 24))
      {
        ktrace_end();
        v43 = *(*&buf[8] + 24);
        ktrace_session_destroy();
        *(*&buf[8] + 24) = 0;
      }

      [(PTService *)self _graphicsSamplingTeardown];
      v44 = [v3 synchronousRemoteObjectProxyWithErrorHandler:&stru_100018C38];
      v45 = sub_1000022A8();
      if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
      {
        [v40 description];
        objc_claimAutoreleasedReturnValue();
        sub_10000EF94();
      }

LABEL_48:

      [v44 performanceTraceDidStop:v40];
      [v44 performanceTraceDidComplete:0 withToken:0 withError:v40];

LABEL_49:
      _Block_object_dispose(buf, 8);
      goto LABEL_64;
    }

    v57 = os_transaction_create();
    v58 = *(*&buf[8] + 24);
    v59 = v35;
    v73 = v31;
    v72 = v3;
    v74 = v57;
    ktrace_set_completion_handler();
    [(PTService *)self ktraceSession];
    ktrace_session_free();
    [(PTService *)self setKtraceSession:0];
    v60 = *(*&buf[8] + 24);
    v61 = v59;
    [v59 UTF8String];
    started = ktrace_start_writing_path();
    if (started)
    {
      v63 = [NSString stringWithFormat:@"Cannot write ringbuffer trace due to failure to start writing out buffer: %{errno}d", started];
      v64 = [NSError error:0 description:v63];

      v65 = [(PTService *)self activeConfig];
      v66 = v65 == 0;

      if (!v66)
      {
        [(PTService *)self setActiveConfig:0];
        [(PTService *)self setRecordingConnectionPointer:0];
      }

      if ([(PTService *)self ktraceSession])
      {
        [(PTService *)self ktraceSession];
        ktrace_end();
        [(PTService *)self ktraceSession];
        ktrace_session_destroy();
        kperf_reset();
        [(PTService *)self setKtraceSession:0];
      }

      if (*(*&buf[8] + 24))
      {
        ktrace_end();
        v67 = *(*&buf[8] + 24);
        ktrace_session_destroy();
        *(*&buf[8] + 24) = 0;
      }

      [(PTService *)self _graphicsSamplingTeardown];
      v68 = [v72 synchronousRemoteObjectProxyWithErrorHandler:&stru_100018CA0];
      v69 = sub_1000022A8();
      if (os_log_type_enabled(v69, OS_LOG_TYPE_ERROR))
      {
        [v64 description];
        objc_claimAutoreleasedReturnValue();
        sub_10000EF94();
      }

      [v68 performanceTraceDidStop:v64];
      [v68 performanceTraceDidComplete:0 withToken:0 withError:v64];
    }

    _Block_object_dispose(buf, 8);
    if (!started)
    {
      goto LABEL_61;
    }
  }

  else
  {
    v13 = sub_1000022A8();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_10000EF58();
    }

    v14 = [NSError error:5 description:@"No current tracing session exists to stop."];
    v15 = [v3 synchronousRemoteObjectProxyWithErrorHandler:&stru_100018BD8];
    v16 = sub_1000022A8();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      sub_10000EFDC(v14);
    }

    [(PTService *)self _updateRecordingStatus:0];
    [v15 performanceTraceDidStop:v14];
  }

LABEL_64:
}

- (void)getCurrentStoredConfig:(id)a3
{
  v4 = a3;
  v5 = sub_1000022A8();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Getting Current Config", buf, 2u);
  }

  *buf = 0;
  v22[0] = buf;
  v22[1] = 0x3032000000;
  v22[2] = sub_100008F9C;
  v22[3] = sub_100008FAC;
  v23 = 0;
  v6 = +[NSFileManager defaultManager];
  v7 = [v6 fileExistsAtPath:@"/private/var/tmp/com.apple.PerformanceTrace"];

  if ((v7 & 1) == 0)
  {
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_100008FB4;
    v20[3] = &unk_100018640;
    v20[4] = buf;
    [(PTService *)self resetConfig:v20];
  }

  v8 = (v22[0] + 40);
  if (*(v22[0] + 40))
  {
    v9 = sub_1000022A8();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_10000F06C(v22);
    }

    (*(v4 + 2))(v4, *(v22[0] + 40), 0);
  }

  else
  {
    obj = 0;
    v10 = [NSData dataWithContentsOfFile:@"/private/var/tmp/com.apple.PerformanceTrace" options:1 error:&obj];
    objc_storeStrong(v8, obj);
    if (*(v22[0] + 40) || !v10)
    {
      v17 = sub_1000022A8();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        sub_10000F13C(v22);
      }

      (*(v4 + 2))(v4, *(v22[0] + 40), 0);
    }

    else
    {
      v11 = objc_opt_class();
      v12 = (v22[0] + 40);
      v18 = *(v22[0] + 40);
      v13 = [NSKeyedUnarchiver unarchivedObjectOfClass:v11 fromData:v10 error:&v18];
      objc_storeStrong(v12, v18);
      if (*(v22[0] + 40))
      {
        v14 = sub_1000022A8();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          sub_10000F0D4(v22);
        }

        v15 = 0;
        v16 = *(v22[0] + 40);
      }

      else
      {
        v16 = 0;
        v15 = v13;
      }

      (*(v4 + 2))(v4, v16, v15);
    }
  }

  _Block_object_dispose(buf, 8);
}

- (void)applyConfig:(id)a3 withError:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = sub_1000022A8();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Applying Config", buf, 2u);
  }

  [v6 setSource:3];
  v14 = 0;
  v8 = [NSKeyedArchiver archivedDataWithRootObject:v6 requiringSecureCoding:1 error:&v14];

  v9 = v14;
  if (v9)
  {
    v10 = v9;
    v11 = sub_1000022A8();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_10000F1A4();
    }

LABEL_11:

    v5[2](v5, v10);
    goto LABEL_12;
  }

  v13 = 0;
  v12 = [v8 writeToFile:@"/private/var/tmp/com.apple.PerformanceTrace" options:1 error:&v13];
  v10 = v13;
  if (v10 || (v12 & 1) == 0)
  {
    v11 = sub_1000022A8();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_10000F20C();
    }

    goto LABEL_11;
  }

  v5[2](v5, 0);
LABEL_12:
}

- (void)resetConfig:(id)a3
{
  v79 = a3;
  v3 = sub_1000022A8();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Resetting Config", buf, 2u);
  }

  v4 = [PTTraceConfig configWithTemplate:1];
  [v4 setSource:0];
  v5 = CFPreferencesCopyValue(@"selectedConfigName", @"com.apple.internal.taptotrace", @"mobile", kCFPreferencesAnyHost);
  v95[0] = @"/Library/Managed Preferences/";
  v95[1] = @"mobile";
  v6 = [@"com.apple.internal.taptotrace" stringByAppendingString:@".plist"];
  v95[2] = v6;
  v7 = [NSArray arrayWithObjects:v95 count:3];
  v8 = [NSURL fileURLWithPathComponents:v7];

  v9 = [v8 path];
  v10 = [NSDictionary dictionaryWithContentsOfFile:v9];

  if (v10)
  {
    v11 = [v10 valueForKey:@"selectedConfigName"];

    if (v11)
    {
      v12 = [v10 valueForKey:@"selectedConfigName"];

      v5 = v12;
    }
  }

  if (v5)
  {
    v13 = sub_1000022A8();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "Device has a legacy configuration installed. Resolving config.", buf, 2u);
    }

    [v4 setSymbolicate:0];
    [v4 setTraceType:2];
    [v4 setSource:1];
    if ([v5 isEqualToString:@"audio"])
    {
      [v4 setKernelBufferSizeMB:512];
      v14 = [NSMutableArray arrayWithObjects:&off_10001A610, &off_10001A640, &off_10001A5C8, &off_10001A5E0, 0];
      [v4 setTraceGroups:v14];
    }
  }

  v78 = v5;
  v80 = v4;
  v15 = CFPreferencesCopyMultiple(0, @"com.apple.PerformanceTrace.config", @"mobile", kCFPreferencesAnyHost);
  v94[0] = @"/Library/Managed Preferences/";
  v94[1] = @"mobile";
  v16 = [@"com.apple.PerformanceTrace.config" stringByAppendingString:@".plist"];
  v94[2] = v16;
  v17 = [NSArray arrayWithObjects:v94 count:3];
  v18 = [NSURL fileURLWithPathComponents:v17];

  v19 = [v18 path];
  v20 = [NSDictionary dictionaryWithContentsOfFile:v19];

  v89 = 0u;
  v90 = 0u;
  v87 = 0u;
  v88 = 0u;
  v21 = [v20 allKeys];
  v22 = [v21 countByEnumeratingWithState:&v87 objects:v93 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = *v88;
    do
    {
      for (i = 0; i != v23; i = i + 1)
      {
        if (*v88 != v24)
        {
          objc_enumerationMutation(v21);
        }

        v26 = *(*(&v87 + 1) + 8 * i);
        v27 = [v20 valueForKey:v26];

        if (v27)
        {
          v28 = [v20 valueForKey:v26];
          [(__CFDictionary *)v15 setValue:v28 forKey:v26];
        }
      }

      v23 = [v21 countByEnumeratingWithState:&v87 objects:v93 count:16];
    }

    while (v23);
  }

  v29 = v80;
  if (v15)
  {
    v30 = sub_1000022A8();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_INFO, "Device has a configuration installed. Resolving config.", buf, 2u);
    }

    v31 = [(__CFDictionary *)v15 valueForKey:@"symbolicate"];

    if (v31)
    {
      v32 = [(__CFDictionary *)v15 valueForKey:@"symbolicate"];
      [v80 setSymbolicate:{objc_msgSend(v32, "BOOLValue")}];

      [v80 setSource:2];
    }

    v33 = [(__CFDictionary *)v15 valueForKey:@"callstackSamplingRateMS"];

    if (v33)
    {
      v34 = [(__CFDictionary *)v15 valueForKey:@"callstackSamplingRateMS"];
      [v80 setCallstackSamplingRateMS:{objc_msgSend(v34, "unsignedLongValue")}];

      [v80 setSource:2];
    }

    v35 = [(__CFDictionary *)v15 valueForKey:@"traceName"];

    if (v35)
    {
      v36 = [(__CFDictionary *)v15 valueForKey:@"traceName"];
      v37 = [v36 copy];
      [v80 setTraceName:v37];

      [v80 setSource:2];
    }

    v38 = [(__CFDictionary *)v15 valueForKey:@"compressWhenFinished"];

    if (v38)
    {
      v39 = [(__CFDictionary *)v15 valueForKey:@"compressWhenFinished"];
      [v80 setCompressWhenFinished:{objc_msgSend(v39, "BOOLValue")}];

      [v80 setSource:2];
    }

    v40 = [(__CFDictionary *)v15 valueForKey:@"includeOSLogs"];

    if (v40)
    {
      v41 = [(__CFDictionary *)v15 valueForKey:@"includeOSLogs"];
      [v80 setIncludeOSLogs:{objc_msgSend(v41, "BOOLValue")}];

      [v80 setSource:2];
    }

    v42 = [(__CFDictionary *)v15 valueForKey:@"includeOSSignposts"];

    if (v42)
    {
      v43 = [(__CFDictionary *)v15 valueForKey:@"includeOSSignposts"];
      [v80 setIncludeOSSignposts:{objc_msgSend(v43, "BOOLValue")}];

      [v80 setSource:2];
    }

    v44 = [(__CFDictionary *)v15 valueForKey:@"traceTimeoutS"];

    if (v44)
    {
      v45 = [(__CFDictionary *)v15 valueForKey:@"traceTimeoutS"];
      [v80 setTraceTimeoutS:{objc_msgSend(v45, "unsignedLongValue")}];

      [v80 setSource:2];
    }

    v46 = [(__CFDictionary *)v15 valueForKey:@"skipNotification"];

    if (v46)
    {
      v47 = [(__CFDictionary *)v15 valueForKey:@"skipNotification"];
      [v80 setSkipNotification:{objc_msgSend(v47, "BOOLValue")}];

      [v80 setSource:2];
    }

    v48 = [(__CFDictionary *)v15 valueForKey:@"includeKernelStacks"];

    if (v48)
    {
      v49 = [(__CFDictionary *)v15 valueForKey:@"includeKernelStacks"];
      [v80 setIncludeKernelStacks:{objc_msgSend(v49, "BOOLValue")}];

      [v80 setSource:2];
    }

    v50 = [(__CFDictionary *)v15 valueForKey:@"kernelBufferSizeMB"];

    if (v50)
    {
      v51 = [(__CFDictionary *)v15 valueForKey:@"kernelBufferSizeMB"];
      [v80 setKernelBufferSizeMB:{objc_msgSend(v51, "unsignedLongValue")}];

      [v80 setSource:2];
    }

    v52 = [(__CFDictionary *)v15 valueForKey:@"kernelBufferDrainQoS"];

    if (v52)
    {
      v53 = [(__CFDictionary *)v15 valueForKey:@"kernelBufferDrainQoS"];
      [v80 setKernelBufferDrainQoS:{objc_msgSend(v53, "unsignedIntValue")}];

      [v80 setSource:2];
    }

    v54 = [(__CFDictionary *)v15 valueForKey:@"kernelBufferDrainRateMS"];

    if (v54)
    {
      v55 = [(__CFDictionary *)v15 valueForKey:@"kernelBufferDrainRateMS"];
      [v80 setKernelBufferDrainRateMS:{objc_msgSend(v55, "unsignedLongValue")}];

      [v80 setSource:2];
    }

    v56 = [(__CFDictionary *)v15 valueForKey:@"traceDirectoryURL"];

    if (v56)
    {
      v57 = [(__CFDictionary *)v15 valueForKey:@"traceDirectoryURL"];
      v58 = [NSURL fileURLWithPath:v57];
      [v80 setTraceDirectoryURL:v58];

      [v80 setSource:2];
    }

    v59 = [(__CFDictionary *)v15 valueForKey:@"traceType"];

    if (v59)
    {
      v60 = [(__CFDictionary *)v15 valueForKey:@"traceType"];
      [v80 setTraceType:traceTypeForString(v60)];

      [v80 setSource:2];
    }

    v61 = [(__CFDictionary *)v15 valueForKey:@"traceGroups"];

    if (v61)
    {
      v77 = v18;
      v62 = [(__CFDictionary *)v15 valueForKey:@"traceGroups"];
      v63 = +[NSMutableArray array];
      v83 = 0u;
      v84 = 0u;
      v85 = 0u;
      v86 = 0u;
      v64 = v62;
      v65 = [v64 countByEnumeratingWithState:&v83 objects:v92 count:16];
      if (v65)
      {
        v66 = v65;
        v67 = *v84;
        do
        {
          for (j = 0; j != v66; j = j + 1)
          {
            if (*v84 != v67)
            {
              objc_enumerationMutation(v64);
            }

            v69 = *(*(&v83 + 1) + 8 * j);
            if (v69 && traceGroupForString(*(*(&v83 + 1) + 8 * j)))
            {
              v70 = [NSNumber numberWithUnsignedInteger:traceGroupForString(v69)];
              [v63 addObject:v70];
            }
          }

          v66 = [v64 countByEnumeratingWithState:&v83 objects:v92 count:16];
        }

        while (v66);
      }

      v29 = v80;
      if ([v63 count])
      {
        [v80 setTraceGroups:v63];
        [v80 setSource:2];
      }

      v18 = v77;
    }
  }

  v82 = 0;
  v71 = [NSKeyedArchiver archivedDataWithRootObject:v29 requiringSecureCoding:1 error:&v82];
  v72 = v82;
  if (v72)
  {
    v73 = v72;
    v74 = sub_1000022A8();
    if (os_log_type_enabled(v74, OS_LOG_TYPE_ERROR))
    {
      sub_10000F1A4();
    }

LABEL_73:

    v76 = v79;
    (*(v79 + 2))(v79, v73);

    goto LABEL_74;
  }

  v81 = 0;
  v75 = [v71 writeToFile:@"/private/var/tmp/com.apple.PerformanceTrace" options:1 error:&v81];
  v73 = v81;
  if (v73 || (v75 & 1) == 0)
  {
    v74 = sub_1000022A8();
    if (os_log_type_enabled(v74, OS_LOG_TYPE_ERROR))
    {
      sub_10000F20C();
    }

    goto LABEL_73;
  }

  v76 = v79;
  (*(v79 + 2))(v79, 0);
LABEL_74:
}

- (void)pingService:(id)a3
{
  v3 = a3;
  v4 = +[NSXPCConnection currentConnection];
  proc_name([v4 processIdentifier], buffer, 0x21u);
  v5 = [NSString stringWithCString:buffer encoding:4];
  if (!v5)
  {
    v5 = [NSString stringWithCString:buffer encoding:1];
  }

  v6 = sub_1000022A8();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v8 = 138412802;
    v9 = v3;
    v10 = 2114;
    v11 = v5;
    v12 = 1024;
    v13 = [v4 processIdentifier];
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Received Ping: %@ from Client: %{public}@ [%i]", &v8, 0x1Cu);
  }

  v7 = [v4 synchronousRemoteObjectProxyWithErrorHandler:&stru_100018CE0];
  [v7 _didPingService:0];
}

- (void)isInRecordingWorkflow:(id)a3
{
  v5 = a3;
  (*(a3 + 2))(v5, [(PTService *)self isInRecordingWorkflow], 0);
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v5 = a4;
  v6 = [v5 processIdentifier];
  proc_name(v6, buffer, 0x20u);
  v7 = [NSString stringWithUTF8String:buffer];
  v8 = [(PTService *)self _connectionIsEntitled:v5 toEntitlement:@"com.apple.PerformanceTrace.Tracing"];
  if (v8)
  {
    v9 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___PTServiceInterface];
    [v5 setExportedInterface:v9];

    [v5 setExportedObject:self];
    v10 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___PTTraceSessionDelegatePrivate];
    [v5 setRemoteObjectInterface:v10];

    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_10000A1E0;
    v24[3] = &unk_100018990;
    v11 = v7;
    v28 = v6;
    v25 = v11;
    v26 = self;
    v27 = v5;
    [v5 setInvalidationHandler:v24];
    v16 = _NSConcreteStackBlock;
    v17 = 3221225472;
    v18 = sub_10000A31C;
    v19 = &unk_100018990;
    v12 = v11;
    v23 = v6;
    v20 = v12;
    v21 = self;
    v22 = v5;
    [v5 setInterruptionHandler:&v16];
    v13 = sub_1000022A8();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v30 = v12;
      v31 = 1024;
      v32 = v6;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Received and accepted new connection from %{public}@ [%d]", buf, 0x12u);
    }

    [v5 resume];
    v14 = v25;
  }

  else
  {
    v14 = sub_1000022A8();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_10000F2DC();
    }
  }

  return v8;
}

- (NSXPCConnection)recordingConnectionPointer
{
  WeakRetained = objc_loadWeakRetained(&self->_recordingConnectionPointer);

  return WeakRetained;
}

@end