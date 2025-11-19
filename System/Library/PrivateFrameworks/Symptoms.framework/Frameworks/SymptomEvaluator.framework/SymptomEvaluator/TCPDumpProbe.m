@interface TCPDumpProbe
- (BOOL)startNetDiagnosticsTask:(id)a3;
- (BOOL)stopNetDiagnosticsTask:(id)a3;
- (TCPDumpProbe)initWithQueue:(id)a3;
- (id)probeOutputFilePaths;
- (void)startTCPDumpWithDuration:(double)a3 destinationPath:(id)a4 tcpDumpStarted:(id)a5 tcpDumpCompleted:(id)a6;
@end

@implementation TCPDumpProbe

- (TCPDumpProbe)initWithQueue:(id)a3
{
  v6.receiver = self;
  v6.super_class = TCPDumpProbe;
  v3 = [(TestProbe *)&v6 initWithQueue:a3];
  if (v3)
  {
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:kNetDiagTaskSymptomsPcap[0]];
    [(NetDiagnosticProbe *)v3 setTaskName:v4];

    [(TCPDumpProbe *)v3 setDuration:30.0];
  }

  return v3;
}

- (void)startTCPDumpWithDuration:(double)a3 destinationPath:(id)a4 tcpDumpStarted:(id)a5 tcpDumpCompleted:(id)a6
{
  v28 = *MEMORY[0x277D85DE8];
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = debuggabilityLogHandle;
  if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v27 = a3;
    _os_log_impl(&dword_23255B000, v13, OS_LOG_TYPE_DEFAULT, "TCPDumpProbe startTCPDumpWithDuration - duration (%f)", buf, 0xCu);
  }

  [(TCPDumpProbe *)self setDuration:a3];
  [(TCPDumpProbe *)self setDestinationPath:v10];
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __89__TCPDumpProbe_startTCPDumpWithDuration_destinationPath_tcpDumpStarted_tcpDumpCompleted___block_invoke;
  aBlock[3] = &unk_27898CE18;
  aBlock[4] = self;
  v24 = v12;
  v14 = v11;
  v25 = v14;
  v15 = v12;
  v16 = _Block_copy(aBlock);
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __89__TCPDumpProbe_startTCPDumpWithDuration_destinationPath_tcpDumpStarted_tcpDumpCompleted___block_invoke_3;
  v20[3] = &unk_27898CE40;
  v20[4] = self;
  v21 = v14;
  v17 = v16;
  v22 = v17;
  v18 = v14;
  if (![(NetDiagnosticProbe *)self netDiagnosticsTaskInProgress:v20])
  {
    v17[2](v17);
  }

  v19 = *MEMORY[0x277D85DE8];
}

void __89__TCPDumpProbe_startTCPDumpWithDuration_destinationPath_tcpDumpStarted_tcpDumpCompleted___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __89__TCPDumpProbe_startTCPDumpWithDuration_destinationPath_tcpDumpStarted_tcpDumpCompleted___block_invoke_2;
  v6[3] = &unk_27898CDF0;
  v6[4] = v2;
  v7 = *(a1 + 40);
  v8 = *(a1 + 48);
  if (([v2 startNetDiagnosticsTask:v6] & 1) == 0)
  {
    v3 = debuggabilityLogHandle;
    if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&dword_23255B000, v3, OS_LOG_TYPE_DEFAULT, "Could not even start the TCP Dump", v5, 2u);
    }

    v4 = *(a1 + 48);
    if (v4)
    {
      (*(v4 + 16))(v4, 3);
    }
  }
}

uint64_t __89__TCPDumpProbe_startTCPDumpWithDuration_destinationPath_tcpDumpStarted_tcpDumpCompleted___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = debuggabilityLogHandle;
  if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_INFO))
  {
    v5 = v4;
    v6 = [TestProbe testProbeStatusString:a2];
    v10 = 138412290;
    v11 = v6;
    _os_log_impl(&dword_23255B000, v5, OS_LOG_TYPE_INFO, "startTCPDumpWithDuration Status Update %@", &v10, 0xCu);
  }

  if ((a2 - 3) > 2)
  {
    v7 = *(a1 + 40);
    if (v7)
    {
      *(*(a1 + 32) + 104) = _Block_copy(v7);
    }
  }

  else
  {
    [*(a1 + 32) removeProbeOutputFiles];
  }

  result = *(a1 + 48);
  if (result)
  {
    result = (*(result + 16))(result, a2);
  }

  v9 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __89__TCPDumpProbe_startTCPDumpWithDuration_destinationPath_tcpDumpStarted_tcpDumpCompleted___block_invoke_3(uint64_t result, int a2)
{
  if ((a2 + 1) <= 6)
  {
    v2 = result;
    if (((1 << (a2 + 1)) & 0x1B) != 0)
    {
      v3 = *(result + 48);
      v4 = *(*(v2 + 48) + 16);

      return v4();
    }

    else if (a2 == 1)
    {
      v6 = debuggabilityLogHandle;
      if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_DEFAULT))
      {
        *v8 = 0;
        _os_log_impl(&dword_23255B000, v6, OS_LOG_TYPE_DEFAULT, "A TCP Dump is already in progress. We cannot stop it.", v8, 2u);
      }

      v7 = *(v2 + 40);
      if (v7)
      {
        (*(v7 + 16))(v7, 3);
      }

      return [*(v2 + 32) disconnectFromNetDiagnostics];
    }

    else if (a2 == 5)
    {
      v5 = *(result + 32);

      return [v5 disconnectFromNetDiagnostics];
    }
  }

  return result;
}

- (BOOL)startNetDiagnosticsTask:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(NetDiagnosticProbe *)self setUpDefaultTaskDictionary];
  v15.receiver = self;
  v15.super_class = TCPDumpProbe;
  [(NetDiagnosticProbe *)&v15 startNetDiagnosticsTask:v4];

  duration = self->_duration;
  if (duration < 5.0 || duration > 900.0)
  {
    v7 = debuggabilityLogHandle;
    if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_ERROR))
    {
      v8 = self->_duration;
      *buf = 134218240;
      v17 = v8;
      v18 = 2048;
      v19 = 0x403E000000000000;
      _os_log_impl(&dword_23255B000, v7, OS_LOG_TYPE_ERROR, "Unsupported TCP dump duration (%f) request. Resetting to %f", buf, 0x16u);
    }

    self->_duration = 30.0;
  }

  v9 = [(TestProbe *)self queue];
  v10 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, v9);

  v11 = dispatch_time(0, (self->_duration * 1000000000.0));
  dispatch_source_set_timer(v10, v11, 0xFFFFFFFFFFFFFFFFLL, 0);
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __40__TCPDumpProbe_startNetDiagnosticsTask___block_invoke;
  handler[3] = &unk_27898A0C8;
  handler[4] = self;
  dispatch_source_set_event_handler(v10, handler);
  [(TCPDumpProbe *)self setTcpDumpTimer:v10];
  dispatch_resume(v10);

  v12 = *MEMORY[0x277D85DE8];
  return 1;
}

uint64_t __40__TCPDumpProbe_startNetDiagnosticsTask___block_invoke(uint64_t a1)
{
  v2 = debuggabilityLogHandle;
  if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_23255B000, v2, OS_LOG_TYPE_DEFAULT, "TCP Dump Duration completed", v4, 2u);
  }

  return [*(a1 + 32) stopNetDiagnosticsTask:0];
}

- (BOOL)stopNetDiagnosticsTask:(id)a3
{
  v4 = a3;
  v5 = debuggabilityLogHandle;
  if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23255B000, v5, OS_LOG_TYPE_DEFAULT, "TCPDumpProbe stopNetDiagnosticsTask", buf, 2u);
  }

  v6 = [(TCPDumpProbe *)self tcpDumpTimer];

  if (v6)
  {
    v7 = [(TCPDumpProbe *)self tcpDumpTimer];
    dispatch_source_cancel(v7);

    [(TCPDumpProbe *)self setTcpDumpTimer:0];
  }

  if ([(TestProbe *)self isRunning])
  {
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __39__TCPDumpProbe_stopNetDiagnosticsTask___block_invoke;
    v10[3] = &unk_27898CE68;
    v10[4] = self;
    v11 = v4;
    v9.receiver = self;
    v9.super_class = TCPDumpProbe;
    [(NetDiagnosticProbe *)&v9 stopNetDiagnosticsTask:v10];
  }

  return 1;
}

void __39__TCPDumpProbe_stopNetDiagnosticsTask___block_invoke(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) disconnectFromNetDiagnostics];
  v4 = *(a1 + 40);
  if (!v4)
  {
    v4 = *(*(a1 + 32) + 104);
    if (!v4)
    {
      goto LABEL_6;
    }

    if (a2 == 4)
    {
      [*(a1 + 32) removeProbeOutputFiles];
      v4 = *(*(a1 + 32) + 104);
    }
  }

  (*(v4 + 16))(v4, a2);
LABEL_6:
  v5 = *(*(a1 + 32) + 104);
  if (v5)
  {
    _Block_release(v5);
    *(*(a1 + 32) + 104) = 0;
  }
}

- (id)probeOutputFilePaths
{
  v3 = [MEMORY[0x277CBEB18] array];
  v4 = [(NetDiagnosticProbe *)self ndFilePath];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 lastPathComponent];
    v7 = [v6 stringByDeletingPathExtension];

    v8 = [v7 rangeOfString:@"-" options:4];
    if (v9 == 1)
    {
      v10 = [v7 substringToIndex:v8];
    }

    else
    {

      v11 = debuggabilityLogHandle;
      if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_23255B000, v11, OS_LOG_TYPE_INFO, "Could not parse pcapng file name", buf, 2u);
      }

      v10 = 0;
    }

    v12 = objc_alloc(MEMORY[0x277CBEBC0]);
    v13 = [v5 stringByDeletingLastPathComponent];
    v14 = [v12 initWithString:v13];

    if (v14)
    {
      v15 = [MEMORY[0x277CCAA00] defaultManager];
      v16 = [v15 enumeratorAtURL:v14 includingPropertiesForKeys:0 options:1 errorHandler:0];

      if (v16)
      {
        v17 = [v16 nextObject];
        if (v17)
        {
          v18 = v17;
          v27 = v14;
          v19 = v3;
          v20 = 0;
          do
          {
            v21 = v20;
            v22 = objc_autoreleasePoolPush();
            v20 = [v18 lastPathComponent];

            v23 = [v20 pathExtension];
            LODWORD(v21) = [v23 isEqualToString:@"pcapng"];

            if (v21 && (!v10 || [v20 containsString:v10]))
            {
              v24 = [v18 path];
              [v19 addObject:v24];
            }

            objc_autoreleasePoolPop(v22);
            v25 = [v16 nextObject];

            v18 = v25;
          }

          while (v25);

          v3 = v19;
          v14 = v27;
        }
      }
    }
  }

  return v3;
}

@end