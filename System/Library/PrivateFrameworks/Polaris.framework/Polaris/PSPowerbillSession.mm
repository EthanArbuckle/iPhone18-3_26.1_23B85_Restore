@interface PSPowerbillSession
- (PSPowerbillDelegate)delegate;
- (PSPowerbillSession)initWithDelegate:(id)delegate queue:(id)queue;
- (void)begin;
- (void)end;
- (void)updateWithMetadata:(const ps_telemetry_metadata_s *)metadata event:(id *)event;
@end

@implementation PSPowerbillSession

- (PSPowerbillSession)initWithDelegate:(id)delegate queue:(id)queue
{
  delegateCopy = delegate;
  queueCopy = queue;
  v18.receiver = self;
  v18.super_class = PSPowerbillSession;
  v8 = [(PSPowerbillSession *)&v18 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_delegate, delegateCopy);
    v9->_isComplete = 0;
    v10 = objc_alloc_init(PSPowerbillData);
    data = v9->_data;
    v9->_data = v10;

    dictionary = [MEMORY[0x277CBEB38] dictionary];
    [(PSPowerbillData *)v9->_data setDataByGraph:dictionary];

    [(PSPowerbillData *)v9->_data setNumberOfPerfLevels:2];
    if (queueCopy)
    {
      v13 = queueCopy;
    }

    else
    {
      v13 = dispatch_queue_create("pspowerbill-delegate", 0);
    }

    delegateQueue = v9->_delegateQueue;
    v9->_delegateQueue = v13;

    *&v9->_targetStartTimestampInNanoseconds = xmmword_25EB777F0;
    v15 = dispatch_semaphore_create(0);
    completionSemaphore = v9->_completionSemaphore;
    v9->_completionSemaphore = v15;
  }

  return v9;
}

- (void)updateWithMetadata:(const ps_telemetry_metadata_s *)metadata event:(id *)event
{
  if (![(PSPowerbillSession *)self isComplete])
  {
    var0 = metadata->var0;
    if (var0 >= [(PSPowerbillSession *)self targetStartTimestampInNanoseconds])
    {
      data = [(PSPowerbillSession *)self data];
      beginTimestampInNanoseconds = [data beginTimestampInNanoseconds];

      if (!beginTimestampInNanoseconds)
      {
        v10 = metadata->var0;
        data2 = [(PSPowerbillSession *)self data];
        [data2 setBeginTimestampInNanoseconds:v10];
      }

      v12 = metadata->var0;
      data3 = [(PSPowerbillSession *)self data];
      [data3 setEndTimestampInNanoseconds:v12];

      v14 = metadata->var0;
      if (v14 > [(PSPowerbillSession *)self targetEndTimestampInNanoseconds])
      {
        [(PSPowerbillSession *)self setIsComplete:1];
        completionSemaphore = [(PSPowerbillSession *)self completionSemaphore];
        dispatch_semaphore_signal(completionSemaphore);
      }

      var3 = metadata->var3;
      var5 = event->var5;
      v18 = var5 | (var3 << 16);
      data4 = [(PSPowerbillSession *)self data];
      dataByGraph = [data4 dataByGraph];
      v21 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v18];
      v41 = [dataByGraph objectForKey:v21];

      v22 = v41;
      if (!v41)
      {
        v42 = objc_alloc_init(PSPowerbillGraphData);
        v23 = [MEMORY[0x277CCACA8] stringWithUTF8String:{ps_telemetry_get_string(var5, var3)}];
        [(PSPowerbillGraphData *)v42 setGraphName:v23];

        v24 = [MEMORY[0x277CCACA8] stringWithUTF8String:ps_telemetry_get_client_name(var3)];
        [(PSPowerbillGraphData *)v42 setProcessName:v24];

        [(PSPowerbillGraphData *)v42 setPid:metadata->var2];
        v25 = [MEMORY[0x277CBEB58] set];
        [(PSPowerbillGraphData *)v42 setThreadIDSet:v25];

        dictionary = [MEMORY[0x277CBEB38] dictionary];
        [(PSPowerbillGraphData *)v42 setDataByTask:dictionary];

        data5 = [(PSPowerbillSession *)self data];
        dataByGraph2 = [data5 dataByGraph];
        v29 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v18];
        [dataByGraph2 setObject:v42 forKey:v29];

        v22 = v42;
      }

      v43 = v22;
      threadIDSet = [(PSPowerbillGraphData *)v22 threadIDSet];
      v31 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:metadata->var1];
      v32 = [threadIDSet containsObject:v31];

      if ((v32 & 1) == 0)
      {
        threadIDSet2 = [(PSPowerbillGraphData *)v43 threadIDSet];
        v34 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:metadata->var1];
        [threadIDSet2 addObject:v34];
      }

      dataByTask = [(PSPowerbillGraphData *)v43 dataByTask];
      v36 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:event->var4];
      v37 = [dataByTask objectForKey:v36];

      if (!v37)
      {
        v37 = objc_alloc_init(PSPowerbillTaskData);
        v38 = [MEMORY[0x277CCACA8] stringWithUTF8String:{ps_telemetry_get_string(event->var4, metadata->var3)}];
        [(PSPowerbillTaskData *)v37 setTaskName:v38];

        dataByTask2 = [(PSPowerbillGraphData *)v43 dataByTask];
        v40 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:event->var4];
        [dataByTask2 setObject:v37 forKey:v40];
      }

      if (v32)
      {
        [(PSPowerbillGraphData *)v43 addToInterTaskCounts:event->var1];
      }

      [(PSPowerbillTaskData *)v37 addToCounts:event];
    }
  }
}

- (void)begin
{
  [(PSPowerbillSession *)self setTargetStartTimestampInNanoseconds:clock_gettime_nsec_np(_CLOCK_UPTIME_RAW)];
  ps_telemetry_init_reader();
  ps_telemetry_enable();
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __27__PSPowerbillSession_begin__block_invoke;
  v3[3] = &unk_279A48CC8;
  v3[4] = self;
  ps_telemetry_start_reader(0, v3);
}

void __27__PSPowerbillSession_begin__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v23[1] = *MEMORY[0x277D85DE8];
  v4 = *(a2 + 24);
  if (v4 != 5)
  {
    if (v4 == 8)
    {
      v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"Dropped %llu global buffers", *(a3 + 8) - *a3 + 1];
      v20 = *MEMORY[0x277CCA450];
      v21 = v5;
      v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v21 forKeys:&v20 count:1];
      v11 = [MEMORY[0x277CCA9B8] errorWithDomain:@"PSPowerbill" code:-2 userInfo:v6];
      v12 = [*(a1 + 32) delegateQueue];
      v16[0] = MEMORY[0x277D85DD0];
      v16[1] = 3221225472;
      v16[2] = __27__PSPowerbillSession_begin__block_invoke_3;
      v16[3] = &unk_279A483F0;
      v16[4] = *(a1 + 32);
      v17 = v11;
      v9 = v11;
      dispatch_async(v12, v16);

      v10 = v17;
    }

    else
    {
      if (v4 != 7)
      {
LABEL_7:
        v13 = *MEMORY[0x277D85DE8];
        return;
      }

      v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"Dropped %llu events from thread named %s over an interval of %.0f ms", *(a3 + 8), ps_telemetry_get_string(*(a3 + 24), *(a2 + 20)), (*a2 - *a3) / 1000000.0];
      v22 = *MEMORY[0x277CCA450];
      v23[0] = v5;
      v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:&v22 count:1];
      v7 = [MEMORY[0x277CCA9B8] errorWithDomain:@"PSPowerbill" code:-1 userInfo:v6];
      v8 = [*(a1 + 32) delegateQueue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __27__PSPowerbillSession_begin__block_invoke_2;
      block[3] = &unk_279A483F0;
      block[4] = *(a1 + 32);
      v19 = v7;
      v9 = v7;
      dispatch_async(v8, block);

      v10 = v19;
    }

    goto LABEL_7;
  }

  v14 = *(a1 + 32);
  v15 = *MEMORY[0x277D85DE8];

  [v14 updateWithMetadata:a2 event:a3];
}

void __27__PSPowerbillSession_begin__block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 session:*(a1 + 32) didDropEventsWithError:*(a1 + 40)];
}

void __27__PSPowerbillSession_begin__block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 session:*(a1 + 32) didDropEventsWithError:*(a1 + 40)];
}

- (void)end
{
  [(PSPowerbillSession *)self setTargetEndTimestampInNanoseconds:clock_gettime_nsec_np(_CLOCK_UPTIME_RAW)];
  v3 = dispatch_time(0, 150000000);
  completionSemaphore = [(PSPowerbillSession *)self completionSemaphore];
  dispatch_semaphore_wait(completionSemaphore, v3);

  ps_telemetry_stop_reader();
  ps_telemetry_disable();

  ps_telemetry_deinit_reader();
}

- (PSPowerbillDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end