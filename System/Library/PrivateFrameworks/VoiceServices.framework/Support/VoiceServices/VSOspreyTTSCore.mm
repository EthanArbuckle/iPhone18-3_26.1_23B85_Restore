@interface VSOspreyTTSCore
- (VSInstrumentMetrics)instrumentMetrics;
- (VSOspreyTTSCore)initWithRequest:(id)a3;
- (VSOspreyTTSCoreDelegate)delegate;
- (double)timeout;
- (void)cancel;
- (void)main;
- (void)performRoundTripOspreyTTS;
- (void)performStreamingOspreyTTS;
- (void)setDidReceiveAudio:(BOOL)a3;
- (void)waitUntilFinishedIfAudioReceivedWithin:(double)a3;
@end

@implementation VSOspreyTTSCore

- (VSInstrumentMetrics)instrumentMetrics
{
  WeakRetained = objc_loadWeakRetained(&self->_instrumentMetrics);

  return WeakRetained;
}

- (VSOspreyTTSCoreDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)waitUntilFinishedIfAudioReceivedWithin:(double)a3
{
  v19[1] = *MEMORY[0x277D85DE8];
  v5 = [(VSOspreyTTSCore *)self didReceiveAudioCondition];
  [v5 lock];

  v6 = [(VSOspreyTTSCore *)self didReceiveAudio];
  v7 = [(VSOspreyTTSCore *)self didReceiveAudioCondition];
  v8 = v7;
  if (v6)
  {
    [v7 unlock];

    v9 = *MEMORY[0x277D85DE8];

    [(VSOspreyTTSCore *)self waitUntilFinished];
  }

  else
  {
    v10 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:a3];
    v11 = [v8 waitUntilDate:v10];

    v12 = [(VSOspreyTTSCore *)self didReceiveAudioCondition];
    [v12 unlock];

    if ((v11 & 1) == 0)
    {
      v13 = MEMORY[0x277CCA9B8];
      v18 = *MEMORY[0x277CCA450];
      v19[0] = @"Osprey core is not able to provide audio in time";
      v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:&v18 count:1];
      v15 = [v13 errorWithDomain:@"ServerTTSErrorDomain" code:602 userInfo:v14];
      [(VSOspreyTTSCore *)self setError:v15];

      v16 = [(VSOspreyTTSCore *)self timeoutCondition];
      [v16 stop];
    }

    [(VSOspreyTTSCore *)self waitUntilFinished];
    v17 = *MEMORY[0x277D85DE8];
  }
}

- (void)cancel
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = VSGetLogDefault();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 134217984;
    v8 = self;
    _os_log_impl(&dword_2727E4000, v3, OS_LOG_TYPE_INFO, "Osprey core %p is cancelled", buf, 0xCu);
  }

  v6.receiver = self;
  v6.super_class = VSOspreyTTSCore;
  [(VSOspreyTTSCore *)&v6 cancel];
  v4 = [(VSOspreyTTSCore *)self timeoutCondition];
  [v4 stop];

  v5 = *MEMORY[0x277D85DE8];
}

- (void)main
{
  v3 = mach_absolute_time();
  v4 = [(VSOspreyTTSCore *)self instrumentMetrics];
  [v4 setSynthesisBeginTimestamp:v3];

  kdebug_trace();
  v5 = [(VSOspreyTTSCore *)self internalSettings];
  LOBYTE(v4) = [v5 disableOspreyStreaming];

  if (v4)
  {
    [(VSOspreyTTSCore *)self performRoundTripOspreyTTS];
  }

  else
  {
    [(VSOspreyTTSCore *)self performStreamingOspreyTTS];
  }

  v6 = mach_absolute_time();
  v7 = [(VSOspreyTTSCore *)self instrumentMetrics];
  [v7 setSynthesisEndTimestamp:v6];

  kdebug_trace();
  v8 = [(VSOspreyTTSCore *)self delegateCallbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __23__VSOspreyTTSCore_main__block_invoke;
  block[3] = &unk_279E4BAC8;
  block[4] = self;
  dispatch_async_and_wait(v8, block);
}

void __23__VSOspreyTTSCore_main__block_invoke(uint64_t a1)
{
  v4 = [*(a1 + 32) delegate];
  v2 = *(a1 + 32);
  v3 = [v2 error];
  [v4 ospreyCore:v2 didFinishWithError:v3];
}

- (void)performStreamingOspreyTTS
{
  v38[1] = *MEMORY[0x277D85DE8];
  v3 = [(VSOspreyTTSCore *)self instrumentMetrics];
  [v3 setSourceOfTTS:5];

  v4 = [VSTimeoutCondition alloc];
  [(VSOspreyTTSCore *)self timeout];
  v5 = [(VSTimeoutCondition *)v4 initWithTimeoutValue:?];
  [(VSOspreyTTSCore *)self setTimeoutCondition:v5];

  objc_initWeak(&location, self);
  v33[0] = 0;
  v33[1] = v33;
  v33[2] = 0x2020000000;
  v33[3] = 0;
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = __Block_byref_object_copy__869;
  v31 = __Block_byref_object_dispose__870;
  v32 = [MEMORY[0x277CBEB18] array];
  v25[0] = 0;
  v25[1] = v25;
  v25[2] = 0x3032000000;
  v25[3] = __Block_byref_object_copy__869;
  v25[4] = __Block_byref_object_dispose__870;
  v26 = [MEMORY[0x277CBEB18] array];
  v23[0] = 0;
  v23[1] = v23;
  v23[2] = 0x3032000000;
  v23[3] = __Block_byref_object_copy__869;
  v23[4] = __Block_byref_object_dispose__870;
  v24 = 0;
  v6 = [(VSOspreyTTSCore *)self serverTTSClient];
  v7 = [(VSOspreyTTSCore *)self request];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __44__VSOspreyTTSCore_performStreamingOspreyTTS__block_invoke;
  v21[3] = &unk_279E4B638;
  objc_copyWeak(&v22, &location);
  v21[4] = self;
  v21[5] = v33;
  v21[6] = &v27;
  v21[7] = v25;
  v21[8] = v23;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __44__VSOspreyTTSCore_performStreamingOspreyTTS__block_invoke_26;
  v19[3] = &unk_279E4B660;
  objc_copyWeak(&v20, &location);
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __44__VSOspreyTTSCore_performStreamingOspreyTTS__block_invoke_2_28;
  v17[3] = &unk_279E4B6B0;
  objc_copyWeak(&v18, &location);
  v17[4] = v33;
  v17[5] = &v27;
  v17[6] = v25;
  [v6 ospreyStartStreamingRequest:v7 dataHandler:v21 metaInfoHandler:v19 completion:v17];

  v8 = [(VSOspreyTTSCore *)self timeoutCondition];
  LOBYTE(v7) = [v8 wait];

  if ((v7 & 1) == 0)
  {
    if (v28[5])
    {
      v9 = VSGetLogDefault();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        *v16 = 0;
        _os_log_error_impl(&dword_2727E4000, v9, OS_LOG_TYPE_ERROR, "Timeout in osprey streaming", v16, 2u);
      }

      v10 = MEMORY[0x277CCA9B8];
      v35 = *MEMORY[0x277CCA450];
      v36 = @"Osprey streaming TTS timed out";
      v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v36 forKeys:&v35 count:1];
      v12 = [v10 errorWithDomain:@"ServerTTSErrorDomain" code:602 userInfo:v11];
      [(VSOspreyTTSCore *)self setError:v12];
    }

    else
    {
      v13 = VSGetLogDefault();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        *v16 = 0;
        _os_log_error_impl(&dword_2727E4000, v13, OS_LOG_TYPE_ERROR, "Network stall in osprey streaming", v16, 2u);
      }

      v14 = MEMORY[0x277CCA9B8];
      v37 = *MEMORY[0x277CCA450];
      v38[0] = @"Osprey streaming network stall";
      v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v38 forKeys:&v37 count:1];
      v12 = [v14 errorWithDomain:@"ServerTTSErrorDomain" code:603 userInfo:v11];
      [(VSOspreyTTSCore *)self setError:v12];
    }

    [(VSOspreyTTSCore *)self cancel];
  }

  objc_destroyWeak(&v18);
  objc_destroyWeak(&v20);
  objc_destroyWeak(&v22);
  _Block_object_dispose(v23, 8);

  _Block_object_dispose(v25, 8);
  _Block_object_dispose(&v27, 8);

  _Block_object_dispose(v33, 8);
  objc_destroyWeak(&location);
  v15 = *MEMORY[0x277D85DE8];
}

void __44__VSOspreyTTSCore_performStreamingOspreyTTS__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v53 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 72));
  v8 = WeakRetained;
  if (WeakRetained && ([WeakRetained isCancelled] & 1) == 0 && (objc_msgSend(v8, "isFinished") & 1) == 0)
  {
    [v5 duration];
    *(*(*(a1 + 40) + 8) + 24) = v9 + *(*(*(a1 + 40) + 8) + 24);
    v10 = *(*(*(a1 + 40) + 8) + 24);
    [v8 bufferDurationLimit];
    if (v10 > fmax(v11 + 0.1, 0.8))
    {
      v12 = [v8 internalSettings];
      v13 = [v12 simulateNetworkStall];

      if (v13)
      {
        v14 = VSGetLogDefault();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_2727E4000, v14, OS_LOG_TYPE_INFO, "Simulate network stall is on, ignore audio object", buf, 2u);
        }

LABEL_21:

        goto LABEL_22;
      }
    }

    v15 = [*(a1 + 32) instrumentMetrics];
    v16 = [v15 serverFirstPacketTimestamp];

    if (!v16)
    {
      v17 = mach_absolute_time();
      v18 = [*(a1 + 32) instrumentMetrics];
      [v18 setServerFirstPacketTimestamp:v17];
    }

    v19 = mach_absolute_time();
    v20 = [*(a1 + 32) instrumentMetrics];
    [v20 setServerLastPacketTimestamp:v19];

    v21 = *(*(*(a1 + 40) + 8) + 24);
    v22 = [*(a1 + 32) instrumentMetrics];
    [v22 setServerStreamedAudioDuration:v21];

    if ([v8 didReceiveAudio])
    {
      v23 = [v8 delegateCallbackQueue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __44__VSOspreyTTSCore_performStreamingOspreyTTS__block_invoke_24;
      block[3] = &unk_279E4B970;
      block[4] = v8;
      v49 = v5;
      v50 = v6;
      dispatch_async(v23, block);

      v24 = v49;
    }

    else
    {
      v25 = *(*(*(a1 + 40) + 8) + 24);
      [v8 bufferDurationLimit];
      if (v25 < v26)
      {
        [*(*(*(a1 + 48) + 8) + 40) addObject:v5];
        [*(*(*(a1 + 56) + 8) + 40) addObject:v6];
LABEL_16:
        v31 = *(*(*(a1 + 64) + 8) + 40);
        if (v31)
        {
          v32 = [v31 dateByAddingTimeInterval:*(*(*(a1 + 40) + 8) + 24)];
          [v32 timeIntervalSinceNow];
          v34 = v33 + 0.05;
          v35 = [v8 timeoutCondition];
          [v35 setTimeoutValue:v34];

          v36 = VSGetLogDefault();
          if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
          {
            v37 = [v8 timeoutCondition];
            [v37 timeoutValue];
            *buf = 134217984;
            v52 = v38;
            _os_log_impl(&dword_2727E4000, v36, OS_LOG_TYPE_INFO, "Refresh timeout value as %.2f", buf, 0xCu);
          }
        }

        v14 = [v8 timeoutCondition];
        [v14 refresh];
        goto LABEL_21;
      }

      [v8 setDidReceiveAudio:1];
      v27 = [v8 delegateCallbackQueue];
      v40 = MEMORY[0x277D85DD0];
      v41 = 3221225472;
      v42 = __44__VSOspreyTTSCore_performStreamingOspreyTTS__block_invoke_2;
      v43 = &unk_279E4B610;
      v44 = v8;
      v47 = *(a1 + 48);
      v45 = v5;
      v46 = v6;
      dispatch_async(v27, &v40);

      v28 = [MEMORY[0x277CBEAA8] date];
      v29 = *(*(a1 + 64) + 8);
      v30 = *(v29 + 40);
      *(v29 + 40) = v28;

      v24 = v45;
    }

    goto LABEL_16;
  }

LABEL_22:

  v39 = *MEMORY[0x277D85DE8];
}

void __44__VSOspreyTTSCore_performStreamingOspreyTTS__block_invoke_26(uint64_t a1, void *a2, void *a3, float a4)
{
  v12 = a2;
  v7 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v9 = WeakRetained;
  if (WeakRetained && ([WeakRetained isCancelled] & 1) == 0 && (objc_msgSend(v9, "isFinished") & 1) == 0)
  {
    [v9 setVoice:v12];
    [v9 setVoiceResource:v7];
    v10 = [v9 internalSettings];
    [v10 streamBufferDuration];
    if (v11 == 0.0)
    {
      v11 = a4;
    }

    [v9 setBufferDurationLimit:v11];
  }
}

void __44__VSOspreyTTSCore_performStreamingOspreyTTS__block_invoke_2_28(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v5 = WeakRetained;
  if (WeakRetained && ([WeakRetained isCancelled] & 1) == 0 && (objc_msgSend(v5, "isFinished") & 1) == 0)
  {
    if (*(*(*(a1 + 32) + 8) + 24) > 0.8 && ([v5 internalSettings], v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "simulateNetworkStall"), v6, v7))
    {
      v8 = VSGetLogDefault();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_2727E4000, v8, OS_LOG_TYPE_INFO, "Simulate network stall is on, ignore completion callback", buf, 2u);
      }
    }

    else
    {
      v9 = [v5 error];

      if (!v9)
      {
        [v5 setError:v3];
      }

      v10 = [v5 delegateCallbackQueue];
      v12 = MEMORY[0x277D85DD0];
      v13 = 3221225472;
      v14 = __44__VSOspreyTTSCore_performStreamingOspreyTTS__block_invoke_29;
      v15 = &unk_279E4B688;
      v18 = *(a1 + 40);
      v16 = v3;
      v17 = v5;
      v19 = *(a1 + 48);
      dispatch_async(v10, &v12);

      v11 = [v5 timeoutCondition];
      [v11 stop];

      v8 = v16;
    }
  }
}

void __44__VSOspreyTTSCore_performStreamingOspreyTTS__block_invoke_29(uint64_t a1)
{
  if (*(*(*(a1 + 48) + 8) + 40))
  {
    if (!*(a1 + 32))
    {
      [*(a1 + 40) setDidReceiveAudio:1];
      if ([*(*(*(a1 + 48) + 8) + 40) count])
      {
        v2 = 0;
        do
        {
          v3 = [*(a1 + 40) delegate];
          v4 = *(a1 + 40);
          v5 = [*(*(*(a1 + 48) + 8) + 40) objectAtIndexedSubscript:v2];
          v6 = [*(*(*(a1 + 56) + 8) + 40) objectAtIndexedSubscript:v2];
          [v3 ospreyCore:v4 didReceiveAudio:v5 wordTimingInfo:v6];

          ++v2;
        }

        while (v2 < [*(*(*(a1 + 48) + 8) + 40) count]);
      }
    }
  }

  v7 = *(*(a1 + 48) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = 0;

  v9 = *(*(a1 + 56) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = 0;
}

void __44__VSOspreyTTSCore_performStreamingOspreyTTS__block_invoke_24(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 ospreyCore:*(a1 + 32) didReceiveAudio:*(a1 + 40) wordTimingInfo:*(a1 + 48)];
}

void __44__VSOspreyTTSCore_performStreamingOspreyTTS__block_invoke_2(uint64_t a1)
{
  if ([*(*(*(a1 + 56) + 8) + 40) count])
  {
    v2 = 0;
    do
    {
      v3 = [*(a1 + 32) delegate];
      v4 = *(a1 + 32);
      v5 = [*(*(*(a1 + 56) + 8) + 40) objectAtIndexedSubscript:v2];
      v6 = [*(*(*(a1 + 64) + 8) + 40) objectAtIndexedSubscript:v2];
      [v3 ospreyCore:v4 didReceiveAudio:v5 wordTimingInfo:v6];

      ++v2;
    }

    while (v2 < [*(*(*(a1 + 56) + 8) + 40) count]);
  }

  v7 = [*(a1 + 32) delegate];
  [v7 ospreyCore:*(a1 + 32) didReceiveAudio:*(a1 + 40) wordTimingInfo:*(a1 + 48)];

  v8 = *(*(a1 + 56) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = 0;

  v10 = *(*(a1 + 64) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = 0;
}

- (void)performRoundTripOspreyTTS
{
  v22[1] = *MEMORY[0x277D85DE8];
  v3 = [(VSOspreyTTSCore *)self instrumentMetrics];
  [v3 setSourceOfTTS:4];

  v4 = [VSTimeoutCondition alloc];
  [(VSOspreyTTSCore *)self timeout];
  v5 = [(VSTimeoutCondition *)v4 initWithTimeoutValue:?];
  [(VSOspreyTTSCore *)self setTimeoutCondition:v5];

  objc_initWeak(&location, self);
  v6 = [(VSOspreyTTSCore *)self serverTTSClient];
  v7 = [(VSOspreyTTSCore *)self request];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __44__VSOspreyTTSCore_performRoundTripOspreyTTS__block_invoke;
  v18[3] = &unk_279E4B5C0;
  objc_copyWeak(&v19, &location);
  v13 = MEMORY[0x277D85DD0];
  v14 = 3221225472;
  v15 = __44__VSOspreyTTSCore_performRoundTripOspreyTTS__block_invoke_3;
  v16 = &unk_279E4B5E8;
  objc_copyWeak(&v17, &location);
  [v6 ospreyStartSynthesisRequest:v7 responseHandler:v18 completion:&v13];

  v8 = [(VSOspreyTTSCore *)self timeoutCondition:v13];
  LOBYTE(v7) = [v8 wait];

  if ((v7 & 1) == 0)
  {
    v9 = MEMORY[0x277CCA9B8];
    v21 = *MEMORY[0x277CCA450];
    v22[0] = @"Osprey round-trip TTS timed out";
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:&v21 count:1];
    v11 = [v9 errorWithDomain:@"ServerTTSErrorDomain" code:602 userInfo:v10];
    [(VSOspreyTTSCore *)self setError:v11];
  }

  objc_destroyWeak(&v17);
  objc_destroyWeak(&v19);
  objc_destroyWeak(&location);
  v12 = *MEMORY[0x277D85DE8];
}

void __44__VSOspreyTTSCore_performRoundTripOspreyTTS__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = WeakRetained;
  if (WeakRetained && ([WeakRetained isCancelled] & 1) == 0 && (objc_msgSend(v8, "isFinished") & 1) == 0)
  {
    [v8 setDidReceiveAudio:1];
    v9 = [v8 delegateCallbackQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __44__VSOspreyTTSCore_performRoundTripOspreyTTS__block_invoke_2;
    block[3] = &unk_279E4B970;
    block[4] = v8;
    v11 = v5;
    v12 = v6;
    dispatch_async(v9, block);
  }
}

void __44__VSOspreyTTSCore_performRoundTripOspreyTTS__block_invoke_3(uint64_t a1, void *a2)
{
  v7 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained && ([WeakRetained isCancelled] & 1) == 0 && (objc_msgSend(v4, "isFinished") & 1) == 0)
  {
    v5 = [v4 error];

    if (!v5)
    {
      [v4 setError:v7];
    }

    v6 = [v4 timeoutCondition];
    [v6 stop];
  }
}

void __44__VSOspreyTTSCore_performRoundTripOspreyTTS__block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 ospreyCore:*(a1 + 32) didReceiveAudio:*(a1 + 40) wordTimingInfo:*(a1 + 48)];
}

- (void)setDidReceiveAudio:(BOOL)a3
{
  v3 = a3;
  v5 = [(VSOspreyTTSCore *)self didReceiveAudioCondition];
  [v5 lock];

  self->_didReceiveAudio = v3;
  if (v3)
  {
    v6 = [(VSOspreyTTSCore *)self didReceiveAudioCondition];
    [v6 broadcast];
  }

  v7 = [(VSOspreyTTSCore *)self didReceiveAudioCondition];
  [v7 unlock];
}

- (double)timeout
{
  v3 = [(VSOspreyTTSCore *)self internalSettings];
  [v3 serverTTSTimeout];
  if (v4 == 0.0)
  {
    v5 = [(VSOspreyTTSCore *)self serverConfig];
    v6 = [(VSOspreyTTSCore *)self request];
    v7 = [v6 clientBundleIdentifier];
    [v5 timeoutForAppId:v7];
    v9 = v8;
  }

  else
  {
    v9 = v4;
  }

  return v9;
}

- (VSOspreyTTSCore)initWithRequest:(id)a3
{
  v5 = a3;
  v20.receiver = self;
  v20.super_class = VSOspreyTTSCore;
  v6 = [(VSOspreyTTSCore *)&v20 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_request, a3);
    v8 = +[VSSiriServerConfiguration defaultConfig];
    serverConfig = v7->_serverConfig;
    v7->_serverConfig = v8;

    v10 = objc_alloc_init(VSServerTTSClient);
    serverTTSClient = v7->_serverTTSClient;
    v7->_serverTTSClient = v10;

    v12 = [MEMORY[0x277D79998] standardInstance];
    internalSettings = v7->_internalSettings;
    v7->_internalSettings = v12;

    v14 = objc_alloc_init(MEMORY[0x277CCA928]);
    didReceiveAudioCondition = v7->_didReceiveAudioCondition;
    v7->_didReceiveAudioCondition = v14;

    v16 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INTERACTIVE, 0);
    v17 = dispatch_queue_create("VSOspreyTTSCoreCallbackQueue", v16);
    delegateCallbackQueue = v7->_delegateCallbackQueue;
    v7->_delegateCallbackQueue = v17;
  }

  return v7;
}

@end