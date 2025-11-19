@interface PTTraceSession
+ (id)initWithConfig:(id)a3;
- (PTTraceSession)init;
- (id)_getRemoteObjectProxy;
- (void)_didPingService:(id)a3;
- (void)_initConnection;
- (void)_invalidateSession;
- (void)_ping:(id)a3;
- (void)displayTraceCompletedAlertWithTraceFileURL:(id)a3 additionalInfo:(id)a4 notificationTimeoutSecs:(id)a5 completionHandler:(id)a6;
- (void)performanceTraceDidComplete:(id)a3 withToken:(id)a4 withError:(id)a5;
- (void)performanceTraceDidStart:(id)a3;
- (void)performanceTraceDidStop:(id)a3;
- (void)startPerformanceTrace;
- (void)stopPerformanceTrace;
@end

@implementation PTTraceSession

- (PTTraceSession)init
{
  v7.receiver = self;
  v7.super_class = PTTraceSession;
  v2 = [(PTTraceSession *)&v7 init];
  v3 = v2;
  if (v2)
  {
    v2->_isValid = 1;
    v4 = dispatch_queue_create("com.apple.performancetrace.client", 0);
    queue = v3->_queue;
    v3->_queue = v4;
  }

  return v3;
}

+ (id)initWithConfig:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(PTTraceSession);
  [(PTTraceSession *)v4 setConfig:v3];

  [(PTTraceSession *)v4 setConnection:0];

  return v4;
}

- (void)startPerformanceTrace
{
  v3 = _traceSessionClientHandle();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v7 = 0;
    _os_log_impl(&dword_25E3D3000, v3, OS_LOG_TYPE_INFO, "Starting Performance Trace", v7, 2u);
  }

  if ([(PTTraceSession *)self isValid])
  {
    v4 = [(PTTraceSession *)self connection];

    if (!v4)
    {
      [(PTTraceSession *)self _initConnection];
    }

    v5 = [(PTTraceSession *)self _getRemoteObjectProxy];
    v6 = [(PTTraceSession *)self config];
    [v5 startPerformanceTrace:v6];
  }

  else
  {
    v5 = [MEMORY[0x277CCA9B8] error:1 description:@"Unable to start Performance Trace as the session is no longer valid"];
    [(PTTraceSession *)self performanceTraceDidStart:v5];
  }
}

- (void)stopPerformanceTrace
{
  v3 = _traceSessionClientHandle();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v6 = 0;
    _os_log_impl(&dword_25E3D3000, v3, OS_LOG_TYPE_INFO, "Stopping Performance Trace", v6, 2u);
  }

  v4 = [(PTTraceSession *)self connection];

  if (!v4)
  {
    [(PTTraceSession *)self _initConnection];
  }

  v5 = [(PTTraceSession *)self _getRemoteObjectProxy];
  [v5 stopPerformanceTrace];
}

- (void)_ping:(id)a3
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = _traceSessionClientHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v9 = 138543362;
    v10 = v4;
    _os_log_impl(&dword_25E3D3000, v5, OS_LOG_TYPE_INFO, "Sending Ping: %{public}@", &v9, 0xCu);
  }

  v6 = [(PTTraceSession *)self connection];

  if (!v6)
  {
    [(PTTraceSession *)self _initConnection];
  }

  v7 = [(PTTraceSession *)self _getRemoteObjectProxy];
  [v7 pingService:v4];

  v8 = *MEMORY[0x277D85DE8];
}

- (void)_initConnection
{
  v3 = [objc_alloc(MEMORY[0x277CCAE80]) initWithServiceName:@"com.apple.PerformanceTrace.PerformanceTraceService"];
  v4 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_287020098];
  [v3 setRemoteObjectInterface:v4];
  [v3 setInvalidationHandler:&__block_literal_global_2];
  objc_initWeak(&location, self);
  v7 = MEMORY[0x277D85DD0];
  v8 = 3221225472;
  v9 = __33__PTTraceSession__initConnection__block_invoke_31;
  v10 = &unk_279A18D20;
  objc_copyWeak(&v11, &location);
  [v3 setInterruptionHandler:&v7];
  v5 = [MEMORY[0x277CCAE90] interfaceWithProtocol:{&unk_287020158, v7, v8, v9, v10}];
  [v3 setExportedInterface:v5];

  [v3 setExportedObject:self];
  [(PTTraceSession *)self setConnection:v3];
  v6 = [(PTTraceSession *)self connection];
  [v6 resume];

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

void __33__PTTraceSession__initConnection__block_invoke()
{
  v0 = _traceSessionClientHandle();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_INFO))
  {
    *v1 = 0;
    _os_log_impl(&dword_25E3D3000, v0, OS_LOG_TYPE_INFO, "XPC connection invalidated.", v1, 2u);
  }
}

void __33__PTTraceSession__initConnection__block_invoke_31(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = [WeakRetained delegate];
    if (v3)
    {
      v4 = v3;
      v5 = [v2 delegate];
      v6 = objc_opt_respondsToSelector();

      if (v6)
      {
        v7 = [MEMORY[0x277CCA9B8] error:2 description:@"Connection with PTService interrupted."];
        [v2 performanceTraceDidComplete:0 withToken:0 withError:v7];
      }
    }
  }

  v8 = _traceSessionClientHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    __33__PTTraceSession__initConnection__block_invoke_31_cold_1();
  }
}

- (id)_getRemoteObjectProxy
{
  v2 = [(PTTraceSession *)self connection];
  v3 = [v2 remoteObjectProxyWithErrorHandler:&__block_literal_global_89];

  return v3;
}

void __39__PTTraceSession__getRemoteObjectProxy__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = _traceSessionClientHandle();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __39__PTTraceSession__getRemoteObjectProxy__block_invoke_cold_1();
  }
}

- (void)_invalidateSession
{
  self->_isValid = 0;
  v3 = [(PTTraceSession *)self connection];

  if (v3)
  {
    v4 = [(PTTraceSession *)self connection];
    [v4 invalidate];
  }
}

- (void)performanceTraceDidStart:(id)a3
{
  v9 = a3;
  v4 = [(PTTraceSession *)self delegate];
  if (v4)
  {
    v5 = v4;
    v6 = [(PTTraceSession *)self delegate];
    v7 = objc_opt_respondsToSelector();

    if (v7)
    {
      v8 = [(PTTraceSession *)self delegate];
      [v8 performanceTraceDidStart:v9];
    }
  }
}

- (void)performanceTraceDidStop:(id)a3
{
  v9 = a3;
  v4 = [(PTTraceSession *)self delegate];
  if (v4)
  {
    v5 = v4;
    v6 = [(PTTraceSession *)self delegate];
    v7 = objc_opt_respondsToSelector();

    if (v7)
    {
      v8 = [(PTTraceSession *)self delegate];
      [v8 performanceTraceDidStop:v9];
    }
  }
}

- (void)performanceTraceDidComplete:(id)a3 withToken:(id)a4 withError:(id)a5
{
  v28 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = _traceSessionClientHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = [v8 path];
    v13 = v12;
    if (v12)
    {
      v14 = v12;
    }

    else
    {
      v14 = @"-";
    }

    v15 = [v10 localizedDescription];
    v16 = v15;
    if (v15)
    {
      v17 = v15;
    }

    else
    {
      v17 = @"-";
    }

    v24 = 138543618;
    v25 = v14;
    v26 = 2114;
    v27 = v17;
    _os_log_impl(&dword_25E3D3000, v11, OS_LOG_TYPE_DEFAULT, "Trace completed with URL: %{public}@, error: %{public}@", &v24, 0x16u);
  }

  v18 = [(PTTraceSession *)self delegate];
  if (v18)
  {
    v19 = v18;
    v20 = [(PTTraceSession *)self delegate];
    v21 = objc_opt_respondsToSelector();

    if (v21)
    {
      v22 = [(PTTraceSession *)self delegate];
      [v22 performanceTraceDidComplete:v8 withToken:v9 withError:v10];
    }
  }

  [(PTTraceSession *)self _invalidateSession];

  v23 = *MEMORY[0x277D85DE8];
}

- (void)_didPingService:(id)a3
{
  v9 = a3;
  v4 = [(PTTraceSession *)self delegate];
  if (v4)
  {
    v5 = v4;
    v6 = [(PTTraceSession *)self delegate];
    v7 = objc_opt_respondsToSelector();

    if (v7)
    {
      v8 = [(PTTraceSession *)self delegate];
      [v8 _didPingService:v9];
    }
  }
}

- (void)displayTraceCompletedAlertWithTraceFileURL:(id)a3 additionalInfo:(id)a4 notificationTimeoutSecs:(id)a5 completionHandler:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v38 = a6;
  v12 = [MEMORY[0x277CCAB68] stringWithString:@"Summary:\n\n\nSteps to reproduce\n1.\n2.\n3.\n\n"];
  v13 = [v10 objectForKeyedSubscript:@"StartingFGSceneIdentifiers"];
  v14 = [v10 objectForKeyedSubscript:@"EndingFGSceneIdentifiers"];
  if (v11)
  {
    [v11 doubleValue];
    v16 = v15;
  }

  else
  {
    v16 = 30.0;
  }

  v39 = v11;
  if (v13 && v14)
  {
    if ([v13 isEqualToArray:v14])
    {
      if (![v13 count])
      {
        v17 = @"com.apple.springboard";
        goto LABEL_31;
      }

      if ([v13 count] == 1)
      {
        v17 = [v13 firstObject];
        goto LABEL_31;
      }

      v35 = _traceSessionClientHandle();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
      {
        [PTTraceSession displayTraceCompletedAlertWithTraceFileURL:additionalInfo:notificationTimeoutSecs:completionHandler:];
      }
    }

    v17 = 0;
  }

  else
  {
    v17 = 0;
    if (!v13)
    {
      if (!v14)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }
  }

LABEL_31:
  v36 = descriptionStringForScenes(v13);
  [v12 appendFormat:@"Foreground scenes at start of trace:%@\n\n", v36];

  if (v14)
  {
LABEL_12:
    v18 = descriptionStringForScenes(v14);
    [v12 appendFormat:@"Foreground scenes at end of trace:%@\n\n", v18];
  }

LABEL_13:
  [v12 appendString:@"Attachments\n"];
  v47 = 0;
  v48 = &v47;
  v49 = 0x3032000000;
  v50 = __Block_byref_object_copy__1;
  v51 = __Block_byref_object_dispose__1;
  v52 = 0;
  v46 = 0;
  v19 = [v9 path];
  if (v9)
  {
    v20 = [MEMORY[0x277CCAA00] defaultManager];
    if ([v20 fileExistsAtPath:v19 isDirectory:&v46])
    {
      v21 = v46;

      if (v21 != 1)
      {
        goto LABEL_21;
      }
    }

    else
    {
    }
  }

  v22 = MEMORY[0x277CCACA8];
  v23 = [v9 path];
  v24 = [v22 stringWithFormat:@"Could not find trace file '%@'.", v23];

  v25 = _traceSessionClientHandle();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
  {
    [PTTraceSession displayTraceCompletedAlertWithTraceFileURL:additionalInfo:notificationTimeoutSecs:completionHandler:];
  }

  [v12 appendString:v24];
  [v12 appendString:@"\n"];
  v26 = [MEMORY[0x277CCA9B8] error:0 description:v24];
  v27 = v48[5];
  v48[5] = v26;

  v9 = 0;
LABEL_21:
  v28 = [MEMORY[0x277CBEB38] dictionaryWithObjectsAndKeys:{@"Performance", @"Classification", @"Not Applicable", @"Reproducibility", v12, @"Description", 0}];
  v29 = v28;
  if (v17)
  {
    [v28 setObject:v17 forKey:@"bundleID"];
  }

  if (v19)
  {
    [v29 setObject:v19 forKey:@"Attachments"];
    v30 = [v19 lastPathComponent];
    [v12 appendFormat:@"Trace file: '%@'.\n", v30];
  }

  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __118__PTTraceSession_displayTraceCompletedAlertWithTraceFileURL_additionalInfo_notificationTimeoutSecs_completionHandler___block_invoke;
  block[3] = &unk_279A19028;
  v45 = v16;
  v41 = v19;
  v42 = v29;
  v44 = &v47;
  v43 = v38;
  v32 = v38;
  v33 = v29;
  v34 = v19;
  dispatch_async(queue, block);

  _Block_object_dispose(&v47, 8);
}

uint64_t __118__PTTraceSession_displayTraceCompletedAlertWithTraceFileURL_additionalInfo_notificationTimeoutSecs_completionHandler___block_invoke(uint64_t a1)
{
  v1 = a1;
  v55 = *MEMORY[0x277D85DE8];
  v44 = 0;
  v2 = *(a1 + 64);
  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"Your trace is complete at '%@'. Would you like to file a radar?", *(a1 + 32)];
  CFUserNotificationDisplayAlert(v2, 0, 0, 0, 0, @"Trace Complete", v3, @"Radar", @"No, thanks", 0, &v44);

  if (!v44)
  {
    v40 = v1;
    v4 = *(v1 + 40);
    v5 = objc_alloc_init(MEMORY[0x277CCACE0]);
    [v5 setScheme:@"tap-to-radar"];
    v39 = v5;
    [v5 setHost:@"new"];
    v6 = [MEMORY[0x277CBEB18] array];
    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    v48 = 0u;
    v7 = v4;
    v42 = [v7 countByEnumeratingWithState:&v45 objects:v53 count:16];
    if (v42)
    {
      v8 = *v46;
      v9 = 0x277CCA000uLL;
      v10 = @"Description";
      v41 = v7;
      do
      {
        for (i = 0; i != v42; ++i)
        {
          if (*v46 != v8)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v45 + 1) + 8 * i);
          v13 = [v7 objectForKey:v12];
          v14 = *(v9 + 3352);
          v15 = urlEncodedString(v12);
          if (([v12 isEqualToString:v10] & 1) != 0 || objc_msgSend(v12, "isEqualToString:", @"Attachments"))
          {
            v16 = [v14 queryItemWithName:v15 value:v13];
          }

          else
          {
            urlEncodedString(v13);
            v17 = v10;
            v18 = v8;
            v19 = v9;
            v21 = v20 = v6;
            v16 = [v14 queryItemWithName:v15 value:v21];

            v6 = v20;
            v9 = v19;
            v8 = v18;
            v10 = v17;
            v7 = v41;
          }

          if (v16)
          {
            [v6 addObject:v16];
          }

          else
          {
            v22 = _traceSessionClientHandle();
            if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
            {
              *buf = 138543618;
              v50 = v12;
              v51 = 2114;
              v52 = v13;
              _os_log_error_impl(&dword_25E3D3000, v22, OS_LOG_TYPE_ERROR, "Failed to create query item for key: %{public}@, value: %{public}@", buf, 0x16u);
            }
          }
        }

        v42 = [v7 countByEnumeratingWithState:&v45 objects:v53 count:16];
      }

      while (v42);
    }

    v23 = [v6 copy];
    [v39 setQueryItems:v23];

    v24 = [v39 URL];

    v1 = v40;
    if (v24)
    {
      v25 = _traceSessionClientHandle();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
      {
        v26 = [v24 absoluteString];
        *v53 = 138412290;
        v54 = v26;
        _os_log_impl(&dword_25E3D3000, v25, OS_LOG_TYPE_INFO, "Opening Tap-to-Radar with URL: %@", v53, 0xCu);
      }

      v27 = [MEMORY[0x277CC1E80] defaultWorkspace];
      v43 = 0;
      v28 = [v27 openURL:v24 configuration:0 error:&v43];
      v29 = v43;

      if (v29)
      {
        v30 = MEMORY[0x277CCACA8];
        v31 = [v29 description];
        v32 = [v30 stringWithFormat:@"Failed to open Tap-to-Radar: %@", v31];

        v33 = _traceSessionClientHandle();
        if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
        {
          [PTTraceSession displayTraceCompletedAlertWithTraceFileURL:additionalInfo:notificationTimeoutSecs:completionHandler:];
        }

        if (!*(*(*(v40 + 56) + 8) + 40))
        {
          v34 = [MEMORY[0x277CCA9B8] error:0 description:v32];
          v35 = *(*(v40 + 56) + 8);
          v36 = *(v35 + 40);
          *(v35 + 40) = v34;
        }
      }
    }
  }

  result = *(v1 + 48);
  if (result)
  {
    result = (*(result + 16))(result, *(*(*(v1 + 56) + 8) + 40));
  }

  v38 = *MEMORY[0x277D85DE8];
  return result;
}

void __39__PTTraceSession__getRemoteObjectProxy__block_invoke_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)displayTraceCompletedAlertWithTraceFileURL:additionalInfo:notificationTimeoutSecs:completionHandler:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

@end