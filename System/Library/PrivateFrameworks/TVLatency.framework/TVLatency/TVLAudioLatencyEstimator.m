@interface TVLAudioLatencyEstimator
- (TVLAudioLatencyEstimator)initWithMessageSession:(id)a3;
- (id)networkInterfaceOfType:(unint64_t)a3 fromInterfaces:(id)a4;
- (void)_estimateAudioLatencyWithOptions:(id)a3 withResponseHandler:(id)a4;
- (void)_initWithMessageSession:(id)a3;
- (void)_invalidateWithError:(id)a3;
- (void)_postInternalProgressEvent:(unint64_t)a3 withInfo:(id)a4;
- (void)_postProgressEvent:(unint64_t)a3 withInfo:(id)a4;
- (void)_respondAndInvalidateWithError:(id)a3 responseHandler:(id)a4;
- (void)_sendMessage:(id)a3 withResponse:(id)a4;
- (void)_synchronizeClocksWithOptions:(id)a3 withResponseHandler:(id)a4;
- (void)_tearDown;
- (void)activate;
- (void)estimateAudioLatencyWithToneIdentifier:(id)a3;
- (void)networkMonitorInterfacesDidUpdate:(id)a3;
- (void)startNetworkMonitoring;
@end

@implementation TVLAudioLatencyEstimator

- (TVLAudioLatencyEstimator)initWithMessageSession:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = TVLAudioLatencyEstimator;
  v5 = [(TVLAudioLatencyEstimator *)&v8 init];
  v6 = v5;
  if (v5)
  {
    v5->_version = 1.2;
    v5->_role = 1;
    [(TVLAudioLatencyEstimator *)v5 _initWithMessageSession:v4];
  }

  return v6;
}

- (void)startNetworkMonitoring
{
  v3 = objc_alloc_init(TVLNetworkMonitor);
  networkMonitor = self->_networkMonitor;
  self->_networkMonitor = v3;

  objc_initWeak(&location, self);
  v5 = self->_networkMonitor;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __50__TVLAudioLatencyEstimator_startNetworkMonitoring__block_invoke;
  v6[3] = &unk_279D6BED8;
  objc_copyWeak(&v7, &location);
  [(TVLNetworkMonitor *)v5 startMonitoringForInterfaceTypes:2 updateHandler:v6];
  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

void __50__TVLAudioLatencyEstimator_startNetworkMonitoring__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained networkMonitorInterfacesDidUpdate:v3];
}

- (void)networkMonitorInterfacesDidUpdate:(id)a3
{
  v4 = a3;
  v5 = [(TVLAudioLatencyEstimator *)self networkInterfaceOfType:3 fromInterfaces:v4];
  awdlInterface = self->_awdlInterface;
  self->_awdlInterface = v5;

  v7 = [(TVLAudioLatencyEstimator *)self networkInterfaceOfType:2 fromInterfaces:v4];

  wifiInterface = self->_wifiInterface;
  self->_wifiInterface = v7;
}

- (id)networkInterfaceOfType:(unint64_t)a3 fromInterfaces:(id)a4
{
  v5 = a4;
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy_;
  v13 = __Block_byref_object_dispose_;
  v14 = 0;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __66__TVLAudioLatencyEstimator_networkInterfaceOfType_fromInterfaces___block_invoke;
  v8[3] = &unk_279D6BF00;
  v8[4] = &v9;
  v8[5] = a3;
  [v5 enumerateObjectsUsingBlock:v8];
  v6 = v10[5];
  _Block_object_dispose(&v9, 8);

  return v6;
}

void __66__TVLAudioLatencyEstimator_networkInterfaceOfType_fromInterfaces___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v9 = a2;
  if ([v9 interfaceType] == *(a1 + 40))
  {
    v7 = [v9 ipv4];
    if (v7)
    {
    }

    else
    {
      v8 = [v9 ipv6];

      if (!v8)
      {
        goto LABEL_6;
      }
    }

    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
    *a4 = 1;
  }

LABEL_6:
}

- (void)_initWithMessageSession:(id)a3
{
  v4 = a3;
  v5 = [objc_alloc(MEMORY[0x277D02880]) initWithTemplate:v4];
  [(TVLAudioLatencyEstimator *)self setSession:v5];

  objc_initWeak(&location, self);
  v6 = [(TVLAudioLatencyEstimator *)self session];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __52__TVLAudioLatencyEstimator__initWithMessageSession___block_invoke;
  v7[3] = &unk_279D6BBD8;
  objc_copyWeak(&v8, &location);
  [v6 registerRequestID:@"com.apple.tvlatency" options:0 handler:v7];

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

void __52__TVLAudioLatencyEstimator__initWithMessageSession___block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v23 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    if (_TVLLogDefault_onceToken_3 != -1)
    {
      __52__TVLAudioLatencyEstimator__initWithMessageSession___block_invoke_cold_1();
    }

    v9 = _TVLLogDefault_log_3;
    if (os_log_type_enabled(_TVLLogDefault_log_3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v22 = v6;
      _os_log_impl(&dword_26CD78000, v9, OS_LOG_TYPE_DEFAULT, "Incoming Message: %{public}@", buf, 0xCu);
    }

    v15 = MEMORY[0x277D85DD0];
    v16 = 3221225472;
    v17 = __52__TVLAudioLatencyEstimator__initWithMessageSession___block_invoke_16;
    v18 = &unk_279D6BBB0;
    v10 = v6;
    v19 = v10;
    v20 = v7;
    v11 = MEMORY[0x26D6AEC20](&v15);
    v12 = [v10 objectForKey:{@"MESSAGE", v15, v16, v17, v18}];
    if ([v12 isEqualToString:@"SYNC_CLOCK"])
    {
      v13 = [v10 objectForKey:@"OPTIONS"];
      [WeakRetained _synchronizeClocksWithOptions:v13 withResponseHandler:v11];
    }

    else if ([v12 isEqualToString:@"ESTIMATE_AUDIO_LATENCY"])
    {
      v13 = [v10 objectForKey:@"OPTIONS"];
      [WeakRetained _estimateAudioLatencyWithOptions:v13 withResponseHandler:v11];
    }

    else
    {
      if ([v12 isEqualToString:@"BEGIN_LIPSYNC_TEST"])
      {
LABEL_13:

        goto LABEL_14;
      }

      v13 = [MEMORY[0x277CCA9B8] errorWithDomain:@"TVLatencyErrorDomain" code:1207 userInfo:0];
      [WeakRetained _respondAndInvalidateWithError:v13 responseHandler:v11];
    }

    goto LABEL_13;
  }

LABEL_14:

  v14 = *MEMORY[0x277D85DE8];
}

void __52__TVLAudioLatencyEstimator__initWithMessageSession___block_invoke_16(uint64_t a1, int a2, void *a3, void *a4)
{
  v19 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  if (_TVLLogDefault_onceToken_3 != -1)
  {
    __52__TVLAudioLatencyEstimator__initWithMessageSession___block_invoke_cold_1();
  }

  v9 = _TVLLogDefault_log_3;
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = *(a1 + 32);
    if (a2)
    {
      v11 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:a2 userInfo:0];
    }

    else
    {
      v11 = 0;
    }

    v13 = 138543874;
    v14 = v10;
    v15 = 2114;
    v16 = v8;
    v17 = 2114;
    v18 = v11;
    _os_log_impl(&dword_26CD78000, v9, OS_LOG_TYPE_DEFAULT, "Responding To Message: %{public}@ | Response: %{public}@ | Error: %{public}@", &v13, 0x20u);
    if (a2)
    {
    }
  }

  (*(*(a1 + 40) + 16))();
  v12 = *MEMORY[0x277D85DE8];
}

- (void)activate
{
  v2 = [(TVLAudioLatencyEstimator *)self session];
  [v2 activate];
}

- (void)estimateAudioLatencyWithToneIdentifier:(id)a3
{
  v20[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  [(TVLAudioLatencyEstimator *)self _postProgressEvent:0 withInfo:0];
  v5 = objc_alloc(MEMORY[0x277CBEB38]);
  v20[0] = v4;
  v19[0] = @"TONE";
  v19[1] = @"VERSION";
  *&v6 = self->_version;
  v7 = [MEMORY[0x277CCABB0] numberWithFloat:v6];
  v20[1] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:v19 count:2];
  v9 = [v5 initWithDictionary:v8];

  if (DeviceProductType_onceToken != -1)
  {
    [TVLAudioLatencyEstimator estimateAudioLatencyWithToneIdentifier:];
  }

  v10 = DeviceProductType_type;
  if (v10)
  {
    [v9 setObject:v10 forKey:@"DEVICE_TYPE"];
  }

  if (OSBuildVersion_onceToken != -1)
  {
    [TVLAudioLatencyEstimator estimateAudioLatencyWithToneIdentifier:];
  }

  v11 = OSBuildVersion_build;
  if (v11)
  {
    [v9 setObject:v11 forKey:@"DEVICE_BUILD"];
  }

  objc_initWeak(&location, self);
  v17[0] = @"MESSAGE";
  v17[1] = @"OPTIONS";
  v18[0] = @"START";
  v18[1] = v9;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:2];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __67__TVLAudioLatencyEstimator_estimateAudioLatencyWithToneIdentifier___block_invoke;
  v14[3] = &unk_279D6BF28;
  objc_copyWeak(&v15, &location);
  [(TVLAudioLatencyEstimator *)self _sendMessage:v12 withResponse:v14];

  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);

  v13 = *MEMORY[0x277D85DE8];
}

void __67__TVLAudioLatencyEstimator_estimateAudioLatencyWithToneIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (v3 && WeakRetained)
  {
    v6 = [v3 objectForKey:@"VERSION"];

    if (v6)
    {
      v8 = [v3 objectForKey:@"VERSION"];
      [v8 floatValue];
      [v5 setVersion:?];
    }

    else
    {
      LODWORD(v7) = 1.0;
      [v5 setVersion:v7];
    }

    if (_TVLLogDefault_onceToken_3 != -1)
    {
      __52__TVLAudioLatencyEstimator__initWithMessageSession___block_invoke_cold_1();
    }

    v9 = _TVLLogDefault_log_3;
    if (os_log_type_enabled(_TVLLogDefault_log_3, OS_LOG_TYPE_DEFAULT))
    {
      v10 = v9;
      [v5 version];
      v13 = 134217984;
      v14 = v11;
      _os_log_impl(&dword_26CD78000, v10, OS_LOG_TYPE_DEFAULT, "TVLatency will use protocol v%.1f", &v13, 0xCu);
    }

    [v5 startNetworkMonitoring];
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)_invalidateWithError:(id)a3
{
  v8[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  [(TVLAudioLatencyEstimator *)self _tearDown];
  if (v4)
  {
    v7 = @"TVLAudioLatencyEstimationProgressEventErrorObjectKey";
    v8[0] = v4;
    v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:&v7 count:1];
    [(TVLAudioLatencyEstimator *)self _postProgressEvent:2 withInfo:v5];
  }

  else
  {
    [(TVLAudioLatencyEstimator *)self _postProgressEvent:3 withInfo:0];
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)_tearDown
{
  +[TVLTimeSync invalidate];
  [(TVLAudioLatencyEstimator *)self setTimeSync:0];
  +[TVLListenEngine invalidate];
  [(TVLAudioLatencyEstimator *)self setListenEngine:0];
  [(TVLNetworkMonitor *)self->_networkMonitor stopMonitoring];
  networkMonitor = self->_networkMonitor;
  self->_networkMonitor = 0;
}

- (void)_sendMessage:(id)a3 withResponse:(id)a4
{
  v19 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (_TVLLogDefault_onceToken_3 != -1)
  {
    __52__TVLAudioLatencyEstimator__initWithMessageSession___block_invoke_cold_1();
  }

  v8 = _TVLLogDefault_log_3;
  if (os_log_type_enabled(_TVLLogDefault_log_3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v18 = v6;
    _os_log_impl(&dword_26CD78000, v8, OS_LOG_TYPE_DEFAULT, "Outgoing Message: %{public}@", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  v9 = [(TVLAudioLatencyEstimator *)self session];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __54__TVLAudioLatencyEstimator__sendMessage_withResponse___block_invoke;
  v13[3] = &unk_279D6BF50;
  objc_copyWeak(&v16, buf);
  v10 = v6;
  v14 = v10;
  v11 = v7;
  v15 = v11;
  [v9 sendRequestID:@"com.apple.tvlatency" options:0 request:v10 responseHandler:v13];

  objc_destroyWeak(&v16);
  objc_destroyWeak(buf);

  v12 = *MEMORY[0x277D85DE8];
}

void __54__TVLAudioLatencyEstimator__sendMessage_withResponse___block_invoke(uint64_t a1, int a2, uint64_t a3, void *a4)
{
  v32 = *MEMORY[0x277D85DE8];
  v6 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    if (_TVLLogDefault_onceToken_3 != -1)
    {
      __52__TVLAudioLatencyEstimator__initWithMessageSession___block_invoke_cold_1();
    }

    v8 = _TVLLogDefault_log_3;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(a1 + 32);
      if (a2)
      {
        v10 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:a2 userInfo:0];
      }

      else
      {
        v10 = 0;
      }

      *buf = 138543874;
      v27 = v9;
      v28 = 2114;
      v29 = v6;
      v30 = 2114;
      v31 = v10;
      _os_log_impl(&dword_26CD78000, v8, OS_LOG_TYPE_DEFAULT, "Received Response To Message: %{public}@ | Response: %{public}@ | Error: %{public}@", buf, 0x20u);
      if (a2)
      {
      }
    }

    if (a2)
    {
      v11 = *(a1 + 40);
      if (v11)
      {
        (*(v11 + 16))(v11, 0);
      }

      v12 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:a2 userInfo:0];
      [WeakRetained _invalidateWithError:v12];
LABEL_14:

      goto LABEL_15;
    }

    v14 = [MEMORY[0x277CBEB68] null];
    v25 = v14;
    v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v25 forKeys:&v24 count:1];
    if ([v6 isEqualToDictionary:v15])
    {
    }

    else
    {
      v16 = [v6 objectForKey:@"MESSAGE"];
      v17 = [v16 isEqualToString:@"FAILURE"];

      if (v17)
      {
        v18 = *(a1 + 40);
        if (v18)
        {
          (*(v18 + 16))(v18, 0);
        }

        v12 = [v6 objectForKey:@"OPTIONS"];
        v19 = [v12 objectForKey:@"ERROR_DOMAIN"];
        v20 = [v12 objectForKey:@"ERROR_CODE"];
        v21 = [v20 integerValue];

        v22 = [MEMORY[0x277CCA9B8] errorWithDomain:v19 code:v21 userInfo:0];
        [WeakRetained _invalidateWithError:v22];

        goto LABEL_14;
      }
    }

    v23 = *(a1 + 40);
    if (v23)
    {
      (*(v23 + 16))(v23, v6);
    }
  }

LABEL_15:

  v13 = *MEMORY[0x277D85DE8];
}

- (void)_synchronizeClocksWithOptions:(id)a3 withResponseHandler:(id)a4
{
  v35 = *MEMORY[0x277D85DE8];
  v24 = a3;
  v21 = a4;
  v6 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v7 = [(TVLNetworkInterface *)self->_wifiInterface ipv6];
  v8 = [(TVLNetworkInterface *)self->_wifiInterface ipv4];
  if (v8)
  {
    [v6 setObject:v8 forKey:@"IPV4"];
  }

  if (v7)
  {
    [v6 setObject:v7 forKey:@"IPV6"];
  }

  v9 = [v24 objectForKey:{@"IPV6", v21}];
  v10 = [v24 objectForKey:@"IPV4"];
  v23 = [(TVLNetworkInterface *)self->_wifiInterface interfaceName];
  if (_TVLLogDefault_onceToken_3 != -1)
  {
    __52__TVLAudioLatencyEstimator__initWithMessageSession___block_invoke_cold_1();
  }

  v11 = _TVLLogDefault_log_3;
  if (os_log_type_enabled(_TVLLogDefault_log_3, OS_LOG_TYPE_INFO))
  {
    wifiInterface = self->_wifiInterface;
    v13 = v11;
    v14 = [(TVLNetworkInterface *)wifiInterface interfaceName];
    v15 = [(TVLNetworkInterface *)self->_wifiInterface ipv4];
    v16 = [(TVLNetworkInterface *)self->_wifiInterface ipv6];
    *buf = 138543874;
    v30 = v14;
    v31 = 2114;
    v32 = v15;
    v33 = 2114;
    v34 = v16;
    _os_log_impl(&dword_26CD78000, v13, OS_LOG_TYPE_INFO, "synchronizeClocksWithOptions WIFI %{public}@,%{public}@,%{public}@", buf, 0x20u);
  }

  objc_initWeak(buf, self);
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __78__TVLAudioLatencyEstimator__synchronizeClocksWithOptions_withResponseHandler___block_invoke;
  v25[3] = &unk_279D6BF78;
  objc_copyWeak(&v26, buf);
  v17 = MEMORY[0x26D6AEC20](v25);
  if (v10 | v9 && v23 && (-[TVLAudioLatencyEstimator session](self, "session"), v18 = objc_claimAutoreleasedReturnValue(), +[TVLTimeSync timeSyncWithRemoteIPv4:IPv6:interface:session:master:completion:](TVLTimeSync, "timeSyncWithRemoteIPv4:IPv6:interface:session:master:completion:", v10, v9, v23, v18, 0, v17), v18, [v6 count]))
  {
    v27[0] = @"MESSAGE";
    v27[1] = @"OPTIONS";
    v28[0] = @"SYNC_CLOCK";
    v28[1] = v6;
    v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v28 forKeys:v27 count:2];
    (v22)[2](v22, 0, 0, v19);
  }

  else
  {
    v19 = [MEMORY[0x277CCA9B8] errorWithDomain:@"TVLatencyErrorDomain" code:1202 userInfo:0];
    [(TVLAudioLatencyEstimator *)self _respondAndInvalidateWithError:v19 responseHandler:v22];
  }

  objc_destroyWeak(&v26);
  objc_destroyWeak(buf);

  v20 = *MEMORY[0x277D85DE8];
}

void __78__TVLAudioLatencyEstimator__synchronizeClocksWithOptions_withResponseHandler___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    if (v6)
    {
      [WeakRetained setTimeSync:v6];
    }

    else
    {
      v5 = [MEMORY[0x277CCA9B8] errorWithDomain:@"TVLatencyErrorDomain" code:1203 userInfo:0];
      [v4 _invalidateWithError:v5];
    }
  }
}

- (void)_estimateAudioLatencyWithOptions:(id)a3 withResponseHandler:(id)a4
{
  v36 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [v6 objectForKey:@"TONE"];
  if (v8 && ([v6 objectForKey:@"TIME"], v9 = objc_claimAutoreleasedReturnValue(), v9, v8, v9))
  {
    v10 = [v6 objectForKey:@"TONE"];
    v29 = 0;
    v11 = [TVLToneProvider provideToneWithIdentifier:v10 error:&v29];
    v12 = v29;

    if (v12)
    {
      if (_TVLLogDefault_onceToken_3 != -1)
      {
        [TVLAudioLatencyEstimator _estimateAudioLatencyWithOptions:withResponseHandler:];
      }

      v13 = _TVLLogDefault_log_3;
      if (os_log_type_enabled(_TVLLogDefault_log_3, OS_LOG_TYPE_ERROR))
      {
        [TVLAudioLatencyEstimator _estimateAudioLatencyWithOptions:v12 withResponseHandler:v13];
      }

      [(TVLAudioLatencyEstimator *)self _respondAndInvalidateWithError:v12 responseHandler:v7];
    }

    else
    {
      v15 = [v6 objectForKey:@"TIME"];
      v16 = [v15 unsignedLongLongValue];

      v28 = 0;
      v17 = [(TVLAudioLatencyEstimator *)self timeSync];
      v18 = [v17 convertToHostTimeFromDomainTime:v16 grandmasterIdentity:&v28];

      if (_TVLLogDefault_onceToken_3 != -1)
      {
        [TVLAudioLatencyEstimator _estimateAudioLatencyWithOptions:withResponseHandler:];
      }

      v19 = _TVLLogDefault_log_3;
      if (os_log_type_enabled(_TVLLogDefault_log_3, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134218496;
        v31 = v18;
        v32 = 2048;
        v33 = v16;
        v34 = 2048;
        v35 = v28;
        _os_log_impl(&dword_26CD78000, v19, OS_LOG_TYPE_DEFAULT, "Estimate audio latency with startTime=%llu PTPtime=%llu GM=%llu", buf, 0x20u);
      }

      if (isInternalBuild_onceToken_0 != -1)
      {
        [TVLAudioLatencyEstimator _estimateAudioLatencyWithOptions:withResponseHandler:];
      }

      if (isInternalBuild_internalBuild_0 == 1)
      {
        v20 = +[TVLPersistenceManager URLForRecording];
      }

      else
      {
        v20 = 0;
      }

      objc_initWeak(buf, self);
      v23[0] = MEMORY[0x277D85DD0];
      v23[1] = 3221225472;
      v23[2] = __81__TVLAudioLatencyEstimator__estimateAudioLatencyWithOptions_withResponseHandler___block_invoke;
      v23[3] = &unk_279D6C018;
      objc_copyWeak(v27, buf);
      v26 = v7;
      v27[1] = v18;
      v24 = v11;
      v21 = v20;
      v25 = v21;
      [TVLListenEngine engineWithCompletion:v23];

      objc_destroyWeak(v27);
      objc_destroyWeak(buf);
    }
  }

  else
  {
    v14 = [MEMORY[0x277CCA9B8] errorWithDomain:@"TVLatencyErrorDomain" code:1207 userInfo:0];
    [(TVLAudioLatencyEstimator *)self _respondAndInvalidateWithError:v14 responseHandler:v7];
  }

  v22 = *MEMORY[0x277D85DE8];
}

void __81__TVLAudioLatencyEstimator__estimateAudioLatencyWithOptions_withResponseHandler___block_invoke(uint64_t a1, void *a2)
{
  v20[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    if (v3)
    {
      v5 = *(a1 + 48);
      v19 = @"MESSAGE";
      v6 = [MEMORY[0x277CBEB68] null];
      v20[0] = v6;
      v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:&v19 count:1];
      (*(v5 + 16))(v5, 0, 0, v7);

      v8 = *(a1 + 64);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __81__TVLAudioLatencyEstimator__estimateAudioLatencyWithOptions_withResponseHandler___block_invoke_2;
      block[3] = &unk_279D6BD40;
      block[4] = WeakRetained;
      dispatch_after(v8, MEMORY[0x277D85CD0], block);
      [WeakRetained setListenEngine:v3];
      v9 = [WeakRetained listenEngine];
      v10 = *(a1 + 64);
      v12 = *(a1 + 32);
      v11 = *(a1 + 40);
      v17[0] = MEMORY[0x277D85DD0];
      v17[1] = 3221225472;
      v17[2] = __81__TVLAudioLatencyEstimator__estimateAudioLatencyWithOptions_withResponseHandler___block_invoke_3;
      v17[3] = &unk_279D6BFA0;
      v17[4] = WeakRetained;
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __81__TVLAudioLatencyEstimator__estimateAudioLatencyWithOptions_withResponseHandler___block_invoke_4;
      v15[3] = &unk_279D6BFF0;
      objc_copyWeak(&v16, (a1 + 56));
      [v9 startListeningWithReferenceTone:v12 at:v10 saveToFile:v11 withCallback:v17 completion:v15];

      objc_destroyWeak(&v16);
    }

    else
    {
      v13 = [MEMORY[0x277CCA9B8] errorWithDomain:@"TVLatencyErrorDomain" code:1206 userInfo:0];
      [WeakRetained _respondAndInvalidateWithError:v13 responseHandler:*(a1 + 48)];
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

void __81__TVLAudioLatencyEstimator__estimateAudioLatencyWithOptions_withResponseHandler___block_invoke_3(uint64_t a1, double a2, float a3)
{
  v11[2] = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 32);
  v10[0] = @"TVLAudioLatencyEstimationInternalProgressEventEstimationLatencyKey";
  v5 = [MEMORY[0x277CCABB0] numberWithDouble:?];
  v6 = v5;
  v10[1] = @"TVLAudioLatencyEstimationInternalProgressEventEstimationConfidenceKey";
  v7 = MEMORY[0x277CBEC28];
  if (a3 > 0.0)
  {
    v7 = MEMORY[0x277CBEC38];
  }

  v11[0] = v5;
  v11[1] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:2];
  [v4 _postInternalProgressEvent:0 withInfo:v8];

  v9 = *MEMORY[0x277D85DE8];
}

void __81__TVLAudioLatencyEstimator__estimateAudioLatencyWithOptions_withResponseHandler___block_invoke_4(uint64_t a1, uint64_t a2, void *a3, double a4)
{
  v27[2] = *MEMORY[0x277D85DE8];
  v7 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v26[0] = @"TVLAudioLatencyEstimationInternalProgressEventEstimationLatencyKey";
    v9 = [MEMORY[0x277CCABB0] numberWithDouble:a4];
    v27[0] = v9;
    v26[1] = @"TVLAudioLatencyEstimationInternalProgressEventEstimationConfidenceKey";
    v10 = [MEMORY[0x277CCABB0] numberWithBool:a2];
    v27[1] = v10;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v27 forKeys:v26 count:2];
    [WeakRetained _postInternalProgressEvent:1 withInfo:v11];

    v12 = objc_alloc(MEMORY[0x277CBEB38]);
    v25[0] = MEMORY[0x277CBEC38];
    v24[0] = @"COMPLETE";
    v24[1] = @"LATENCY";
    v13 = [MEMORY[0x277CCABB0] numberWithDouble:a4];
    v25[1] = v13;
    v24[2] = @"CONFIDENT";
    v14 = [MEMORY[0x277CCABB0] numberWithBool:a2];
    v25[2] = v14;
    v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:v24 count:3];
    v16 = [v12 initWithDictionary:v15];

    if (v7)
    {
      [v16 setObject:v7 forKey:@"STATISTICS"];
    }

    v22[0] = @"MESSAGE";
    v22[1] = @"OPTIONS";
    v23[0] = @"AUDIO_LATENCY_ESTIMATION";
    v23[1] = v16;
    v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:v22 count:2];
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __81__TVLAudioLatencyEstimator__estimateAudioLatencyWithOptions_withResponseHandler___block_invoke_5;
    v20[3] = &unk_279D6BFC8;
    v20[4] = WeakRetained;
    v21 = v16;
    v18 = v16;
    [WeakRetained _sendMessage:v17 withResponse:v20];
  }

  v19 = *MEMORY[0x277D85DE8];
}

void __81__TVLAudioLatencyEstimator__estimateAudioLatencyWithOptions_withResponseHandler___block_invoke_5(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v5 = [v3 objectForKey:@"MESSAGE"];
    v6 = [v5 isEqualToString:@"ASK_RETRY"];

    if (v6)
    {
      v7 = *(a1 + 32);
      v8 = 4;
      v9 = 0;
LABEL_4:
      [v7 _postProgressEvent:v8 withInfo:v9];
      goto LABEL_19;
    }

    v10 = [v4 objectForKey:@"MESSAGE"];
    v11 = [v10 isEqualToString:@"CONTINUE"];

    if (v11)
    {
      if (_TVLLogDefault_onceToken_3 != -1)
      {
        __52__TVLAudioLatencyEstimator__initWithMessageSession___block_invoke_cold_1();
      }

      v12 = _TVLLogDefault_log_3;
      if (os_log_type_enabled(_TVLLogDefault_log_3, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_26CD78000, v12, OS_LOG_TYPE_DEFAULT, "Continuing to next estimation...", buf, 2u);
      }

      [*(a1 + 32) estimate];
    }

    else
    {
      v13 = [v4 objectForKey:@"MESSAGE"];
      v14 = [v13 isEqualToString:@"CONTINUE_ATMOS"];

      if (!v14)
      {
        v16 = [v4 objectForKey:@"MESSAGE"];
        v17 = [v16 isEqualToString:@"FINAL"];

        if (!v17)
        {
          goto LABEL_19;
        }

        v7 = *(a1 + 32);
        v9 = *(a1 + 40);
        v8 = 3;
        goto LABEL_4;
      }

      if (_TVLLogDefault_onceToken_3 != -1)
      {
        __52__TVLAudioLatencyEstimator__initWithMessageSession___block_invoke_cold_1();
      }

      v15 = _TVLLogDefault_log_3;
      if (os_log_type_enabled(_TVLLogDefault_log_3, OS_LOG_TYPE_DEFAULT))
      {
        *v18 = 0;
        _os_log_impl(&dword_26CD78000, v15, OS_LOG_TYPE_DEFAULT, "Continuing to Atmos estimation...", v18, 2u);
      }

      [*(a1 + 32) estimateAudioLatencyWithToneIdentifier:@"241016_gain_reduced_calibrationTone_AtmosSpiral.ec3"];
    }
  }

LABEL_19:
}

- (void)_respondAndInvalidateWithError:(id)a3 responseHandler:(id)a4
{
  v18[2] = *MEMORY[0x277D85DE8];
  v17[0] = @"MESSAGE";
  v17[1] = @"OPTIONS";
  v18[0] = @"FAILURE";
  v15[0] = @"ERROR_CODE";
  v7 = MEMORY[0x277CCABB0];
  v8 = a4;
  v9 = a3;
  v10 = [v7 numberWithInteger:{objc_msgSend(v9, "code")}];
  v15[1] = @"ERROR_DOMAIN";
  v16[0] = v10;
  v11 = [v9 domain];
  v16[1] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:2];
  v18[1] = v12;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:2];
  (*(a4 + 2))(v8, 0, 0, v13);

  [(TVLAudioLatencyEstimator *)self _invalidateWithError:v9];
  v14 = *MEMORY[0x277D85DE8];
}

- (void)_postProgressEvent:(unint64_t)a3 withInfo:(id)a4
{
  v6 = a4;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __56__TVLAudioLatencyEstimator__postProgressEvent_withInfo___block_invoke;
  block[3] = &unk_279D6C040;
  v9 = v6;
  v10 = a3;
  block[4] = self;
  v7 = v6;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __56__TVLAudioLatencyEstimator__postProgressEvent_withInfo___block_invoke(uint64_t a1)
{
  v23 = *MEMORY[0x277D85DE8];
  if (_TVLLogDefault_onceToken_3 != -1)
  {
    __52__TVLAudioLatencyEstimator__initWithMessageSession___block_invoke_cold_1();
  }

  v2 = _TVLLogDefault_log_3;
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) progressEventHandler];
    v4 = MEMORY[0x26D6AEC20]();
    v5 = v4;
    v6 = *(a1 + 48) - 1;
    if (v6 > 3)
    {
      v7 = "Start";
    }

    else
    {
      v7 = off_279D6C060[v6];
    }

    v8 = *(a1 + 40);
    v17 = 138412802;
    v18 = v4;
    v19 = 2082;
    v20 = v7;
    v21 = 2114;
    v22 = v8;
    _os_log_impl(&dword_26CD78000, v2, OS_LOG_TYPE_DEFAULT, "Calling Progress Event Handler: %@ with Event: %{public}s | Info %{public}@", &v17, 0x20u);
  }

  v9 = [*(a1 + 32) progressEventHandler];

  if (v9)
  {
    v10 = [*(a1 + 32) progressEventHandler];
    v10[2](v10, *(a1 + 48), *(a1 + 40));

    if (*(a1 + 48) == 3)
    {
      if (_TVLLogDefault_onceToken_3 != -1)
      {
        [TVLAudioLatencyEstimator _estimateAudioLatencyWithOptions:withResponseHandler:];
      }

      v11 = _TVLLogDefault_log_3;
      if (os_log_type_enabled(_TVLLogDefault_log_3, OS_LOG_TYPE_DEFAULT))
      {
        v12 = *(a1 + 32);
        v13 = v11;
        v14 = [v12 progressEventHandler];
        v15 = MEMORY[0x26D6AEC20]();
        v17 = 138412290;
        v18 = v15;
        _os_log_impl(&dword_26CD78000, v13, OS_LOG_TYPE_DEFAULT, "Deleting Progress Event Handler: %@ | This should not be invoked again!", &v17, 0xCu);
      }

      [*(a1 + 32) setProgressEventHandler:0];
    }
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)_postInternalProgressEvent:(unint64_t)a3 withInfo:(id)a4
{
  v23 = *MEMORY[0x277D85DE8];
  v6 = a4;
  if (_TVLLogDefault_onceToken_3 != -1)
  {
    __52__TVLAudioLatencyEstimator__initWithMessageSession___block_invoke_cold_1();
  }

  v7 = _TVLLogDefault_log_3;
  if (os_log_type_enabled(_TVLLogDefault_log_3, OS_LOG_TYPE_DEFAULT))
  {
    v8 = v7;
    v9 = [(TVLAudioLatencyEstimator *)self internalProgressEventHandler];
    v10 = MEMORY[0x26D6AEC20]();
    v11 = "Final Estimation";
    *buf = 138412802;
    v18 = v10;
    if (!a3)
    {
      v11 = "New Estimation";
    }

    v19 = 2082;
    v20 = v11;
    v21 = 2112;
    v22 = v6;
    _os_log_impl(&dword_26CD78000, v8, OS_LOG_TYPE_DEFAULT, "Calling Internal Progress Event Handler: %@ with Event: %{public}s | Info: %@", buf, 0x20u);
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __64__TVLAudioLatencyEstimator__postInternalProgressEvent_withInfo___block_invoke;
  block[3] = &unk_279D6C040;
  v15 = v6;
  v16 = a3;
  block[4] = self;
  v12 = v6;
  dispatch_async(MEMORY[0x277D85CD0], block);

  v13 = *MEMORY[0x277D85DE8];
}

void __64__TVLAudioLatencyEstimator__postInternalProgressEvent_withInfo___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) internalProgressEventHandler];

  if (v2)
  {
    v3 = [*(a1 + 32) internalProgressEventHandler];
    (*(v3 + 2))(v3, *(a1 + 48), *(a1 + 40));
  }
}

- (void)_estimateAudioLatencyWithOptions:(uint64_t)a1 withResponseHandler:(NSObject *)a2 .cold.2(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138543362;
  v4 = a1;
  _os_log_error_impl(&dword_26CD78000, a2, OS_LOG_TYPE_ERROR, "Failed to provide tone. Error=%{public}@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end