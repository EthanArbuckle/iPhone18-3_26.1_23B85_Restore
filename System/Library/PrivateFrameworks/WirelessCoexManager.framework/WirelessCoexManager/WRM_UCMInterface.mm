@interface WRM_UCMInterface
- (BOOL)checkConnection:(id)a3;
- (WRM_UCMInterface)init;
- (id)getWirelessFrequencyBandUpdatesForMIC:(void *)a3;
- (id)getWirelessULFrequencyBandUpdates:(id)a3;
- (int64_t)getWirelessRadioManagerReportLoad:(int)a3 loadDuration:(double)a4 callback:(void *)a5;
- (unsigned)getInstantLoad;
- (unsigned)startTimer:(double)a3;
- (unsigned)stopTimer;
- (void)dealloc;
- (void)handleNotification:(id)a3 :(BOOL)a4;
- (void)processBTConnectedLinksNotification:(id)a3;
- (void)reConnect;
- (void)registerClient:(int)a3 queue:(id)a4;
- (void)sendBtLoad:(id)a3;
- (void)sendNRFrequencyUpdateForMic:(id)a3;
- (void)sendULFrequencyUpdate:(id)a3;
- (void)setAWDLEnabled:(BOOL)a3;
- (void)setCriticalAirPlayEnabled:(BOOL)a3 estimatedDuration:(unsigned int)a4 criticalityPercentage:(unsigned __int16)a5;
- (void)setNANEnabled:(BOOL)a3;
- (void)setNANRealTimeEnabled:(BOOL)a3;
- (void)subscribeBtConnectedLinksNotification:(id)a3;
- (void)unregisterClient;
@end

@implementation WRM_UCMInterface

- (void)registerClient:(int)a3 queue:(id)a4
{
  keys[1] = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = v6;
  if (v6)
  {
    v8 = v6;
    p_mQueue = &self->mQueue;
    mQueue = self->mQueue;
    self->mQueue = v8;
  }

  else
  {
    v11 = MEMORY[0x277D85CD0];
    v12 = MEMORY[0x277D85CD0];
    p_mQueue = &self->mQueue;
    mQueue = self->mQueue;
    self->mQueue = v11;
  }

  self->mProcessId = a3;
  objc_initWeak(&location, self);
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __41__WRM_UCMInterface_registerClient_queue___block_invoke;
  v29[3] = &unk_279ED5CE0;
  objc_copyWeak(&v30, &location);
  v13 = MEMORY[0x2743E9050](v29);
  mNotificationBlock = self->mNotificationBlock;
  if (mNotificationBlock)
  {
    self->mNotificationBlock = 0;
  }

  v15 = [v13 copy];
  v16 = self->mNotificationBlock;
  self->mNotificationBlock = v15;

  if (!self->mConnection)
  {
    mach_service = xpc_connection_create_mach_service("com.apple.WirelessCoexManager", *p_mQueue, 0);
    mConnection = self->mConnection;
    self->mConnection = mach_service;

    v19 = self->mConnection;
    if (v19)
    {
      handler[0] = MEMORY[0x277D85DD0];
      handler[1] = 3221225472;
      handler[2] = __41__WRM_UCMInterface_registerClient_queue___block_invoke_2;
      handler[3] = &unk_279ED6110;
      objc_copyWeak(&v28, &location);
      xpc_connection_set_event_handler(v19, handler);
      xpc_connection_resume(self->mConnection);
      keys[0] = "kWCMRegisterProcess_ProcessId";
      v20 = xpc_uint64_create(a3);
      values = v20;
      v21 = xpc_dictionary_create(keys, &values, 1uLL);
      *v33 = xmmword_279ED6208;
      v22 = xpc_uint64_create(1uLL);
      v32[0] = v22;
      v23 = v21;
      v32[1] = v23;
      v24 = xpc_dictionary_create(v33, v32, 2uLL);
      xpc_connection_send_message(self->mConnection, v24);

      for (i = 1; i != -1; --i)
      {
      }

      objc_destroyWeak(&v28);
    }

    v13 = 0;
  }

  objc_destroyWeak(&v30);
  objc_destroyWeak(&location);

  v26 = *MEMORY[0x277D85DE8];
}

- (void)unregisterClient
{
  mConnection = self->mConnection;
  if (mConnection)
  {
    self->mConnection = 0;
  }

  mNotificationBlock = self->mNotificationBlock;
  if (mNotificationBlock)
  {
    self->mNotificationBlock = 0;
  }

  mBtConnectedLinksObserver = self->mBtConnectedLinksObserver;
  if (mBtConnectedLinksObserver)
  {
    self->mBtConnectedLinksObserver = 0;
  }

  if (self->mNRFrequencyUpdateForMicFuncPtr)
  {
    self->mNRFrequencyUpdateForMicFuncPtr = 0;
  }
}

- (void)subscribeBtConnectedLinksNotification:(id)a3
{
  v4 = a3;
  mQueue = self->mQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __58__WRM_UCMInterface_subscribeBtConnectedLinksNotification___block_invoke;
  v7[3] = &unk_279ED5DB8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(mQueue, v7);
}

- (void)setCriticalAirPlayEnabled:(BOOL)a3 estimatedDuration:(unsigned int)a4 criticalityPercentage:(unsigned __int16)a5
{
  v5 = a5;
  v7 = a3;
  v21 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v9 = "disable";
    if (v7)
    {
      v9 = "enable";
    }

    mProcessId = self->mProcessId;
    if (mProcessId < 0x2A && ((0x3EEEFFFFFFFuLL >> mProcessId) & 1) != 0)
    {
      v11 = (&off_279ED6240)[mProcessId];
    }

    else if (mProcessId == 42)
    {
      v11 = "WRMSOS";
    }

    else
    {
      v11 = "INVALID_PROC_ID!!!";
    }

    *buf = 136315394;
    *&buf[4] = v9;
    *&buf[12] = 2080;
    *&buf[14] = v11;
    _os_log_impl(&dword_2742D6000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Received critical AirPlay %s from %s", buf, 0x16u);
  }

  v12 = xpc_uint64_create(0x76CuLL);
  v13 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_BOOL(v13, "kWCMAirplayCritical", v7);
  xpc_dictionary_set_uint64(v13, "kWCMAirplayDuration", a4);
  xpc_dictionary_set_uint64(v13, "kWCMAirplayCriticalityPercentage", v5);
  *buf = xmmword_279ED6208;
  v14 = v12;
  v19[0] = v14;
  v15 = v13;
  v19[1] = v15;
  v16 = xpc_dictionary_create(buf, v19, 2uLL);
  xpc_connection_send_message(self->mConnection, v16);

  for (i = 1; i != -1; --i)
  {
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)setAWDLEnabled:(BOOL)a3
{
  v17 = *MEMORY[0x277D85DE8];
  if (self->mIsAwdlEnabled != a3)
  {
    v3 = a3;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v5 = "disable";
      if (v3)
      {
        v5 = "enable";
      }

      mProcessId = self->mProcessId;
      if (mProcessId < 0x2A && ((0x3EEEFFFFFFFuLL >> mProcessId) & 1) != 0)
      {
        v7 = (&off_279ED6240)[mProcessId];
      }

      else if (mProcessId == 42)
      {
        v7 = "WRMSOS";
      }

      else
      {
        v7 = "INVALID_PROC_ID!!!";
      }

      *buf = 136315394;
      *&buf[4] = v5;
      *&buf[12] = 2080;
      *&buf[14] = v7;
      _os_log_impl(&dword_2742D6000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Sending AWDL %s from %s", buf, 0x16u);
    }

    v8 = xpc_uint64_create(0xA8CuLL);
    v9 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_BOOL(v9, "kWCMP2PAWDLOn", v3);
    *buf = xmmword_279ED6208;
    v10 = v8;
    v15[0] = v10;
    v11 = v9;
    v15[1] = v11;
    v12 = xpc_dictionary_create(buf, v15, 2uLL);
    xpc_connection_send_message(self->mConnection, v12);
    self->mIsAwdlEnabled = v3;

    for (i = 1; i != -1; --i)
    {
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)setNANEnabled:(BOOL)a3
{
  v17 = *MEMORY[0x277D85DE8];
  if (self->mIsNanEnabled != a3)
  {
    v3 = a3;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v5 = "disable";
      if (v3)
      {
        v5 = "enable";
      }

      mProcessId = self->mProcessId;
      if (mProcessId < 0x2A && ((0x3EEEFFFFFFFuLL >> mProcessId) & 1) != 0)
      {
        v7 = (&off_279ED6240)[mProcessId];
      }

      else if (mProcessId == 42)
      {
        v7 = "WRMSOS";
      }

      else
      {
        v7 = "INVALID_PROC_ID!!!";
      }

      *buf = 136315394;
      *&buf[4] = v5;
      *&buf[12] = 2080;
      *&buf[14] = v7;
      _os_log_impl(&dword_2742D6000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Sending NAN %s from %s", buf, 0x16u);
    }

    v8 = xpc_uint64_create(0xA8DuLL);
    v9 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_BOOL(v9, "kWCMP2PNANOn", v3);
    *buf = xmmword_279ED6208;
    v10 = v8;
    v15[0] = v10;
    v11 = v9;
    v15[1] = v11;
    v12 = xpc_dictionary_create(buf, v15, 2uLL);
    xpc_connection_send_message(self->mConnection, v12);
    self->mIsNanEnabled = v3;
    if (!v3)
    {
      self->mIsNanRealTimeEnabled = 0;
    }

    for (i = 1; i != -1; --i)
    {
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)setNANRealTimeEnabled:(BOOL)a3
{
  v18 = *MEMORY[0x277D85DE8];
  if (self->mIsNanRealTimeEnabled != a3)
  {
    v3 = a3;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v5 = "disable";
      if (v3)
      {
        v5 = "enable";
      }

      mProcessId = self->mProcessId;
      if (mProcessId < 0x2A && ((0x3EEEFFFFFFFuLL >> mProcessId) & 1) != 0)
      {
        v7 = (&off_279ED6240)[mProcessId];
      }

      else if (mProcessId == 42)
      {
        v7 = "WRMSOS";
      }

      else
      {
        v7 = "INVALID_PROC_ID!!!";
      }

      *buf = 136315394;
      *&buf[4] = v5;
      *&buf[12] = 2080;
      *&buf[14] = v7;
      _os_log_impl(&dword_2742D6000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Sending NAN RealTime %s from %s", buf, 0x16u);
    }

    v8 = xpc_uint64_create(0xA8FuLL);
    v9 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_BOOL(v9, "kWCMP2PNANRealTimeOn", v3);
    *buf = xmmword_279ED6208;
    v10 = v8;
    v16[0] = v10;
    v11 = v9;
    v16[1] = v11;
    v12 = xpc_dictionary_create(buf, v16, 2uLL);
    mConnection = self->mConnection;
    if (mConnection)
    {
      xpc_connection_send_message(mConnection, v12);
    }

    self->mIsNanRealTimeEnabled = v3;

    for (i = 1; i != -1; --i)
    {
    }
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (WRM_UCMInterface)init
{
  v10.receiver = self;
  v10.super_class = WRM_UCMInterface;
  v2 = [(WRM_UCMInterface *)&v10 init];
  v3 = v2;
  if (v2)
  {
    mBtConnectedLinksObserver = v2->mBtConnectedLinksObserver;
    v2->mBtConnectedLinksObserver = 0;

    mConnection = v3->mConnection;
    v3->mConnection = 0;

    mQueue = v3->mQueue;
    v3->mQueue = 0;

    v3->mProcessId = 0;
    mNotificationBlock = v3->mNotificationBlock;
    v3->mNotificationBlock = 0;

    *&v3->mIsAwdlEnabled = 0;
    v8 = v3;
  }

  return v3;
}

- (void)dealloc
{
  [(WRM_UCMInterface *)self unregisterClient];
  v3.receiver = self;
  v3.super_class = WRM_UCMInterface;
  [(WRM_UCMInterface *)&v3 dealloc];
}

- (void)reConnect
{
  [(WRM_UCMInterface *)self unregisterClient];
  [(WRM_UCMInterface *)self registerClient:self->mProcessId queue:self->mQueue];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_2742D6000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Re-sending state to WRM due to reConnect!", v4, 2u);
  }

  mProcessId = self->mProcessId;
  if (mProcessId == 39)
  {
    [(WRM_UCMInterface *)self setNANEnabled:self->mIsNanEnabled];
  }

  else if (mProcessId == 38)
  {
    [(WRM_UCMInterface *)self setAWDLEnabled:self->mIsAwdlEnabled];
  }
}

- (void)handleNotification:(id)a3 :(BOOL)a4
{
  v4 = a4;
  v13 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = v6;
  if (!v4)
  {
    uint64 = xpc_dictionary_get_uint64(v6, "kMessageId");
    v9 = xpc_dictionary_get_value(v7, "kMessageArgs");
    if (uint64 > 2805)
    {
      if (uint64 == 2806)
      {
        [(WRM_UCMInterface *)self sendNRFrequencyUpdateForMic:v9];
        goto LABEL_16;
      }

      if (uint64 == 2808)
      {
        [(WRM_UCMInterface *)self sendULFrequencyUpdate:v9];
        goto LABEL_16;
      }
    }

    else
    {
      if (uint64 == 1429)
      {
        [(WRM_UCMInterface *)self processBTConnectedLinksNotification:v9];
        goto LABEL_16;
      }

      if (uint64 == 2803)
      {
        [(WRM_UCMInterface *)self sendBtLoad:v9];
LABEL_16:

        goto LABEL_17;
      }
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138412290;
      v12 = v7;
      _os_log_impl(&dword_2742D6000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Invoking reConnect %@", &v11, 0xCu);
    }

    goto LABEL_16;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v11) = 0;
    _os_log_impl(&dword_2742D6000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Invoking reConnect", &v11, 2u);
  }

  [(WRM_UCMInterface *)self reConnect];
LABEL_17:

  v10 = *MEMORY[0x277D85DE8];
}

- (void)processBTConnectedLinksNotification:(id)a3
{
  v4 = a3;
  mQueue = self->mQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __56__WRM_UCMInterface_processBTConnectedLinksNotification___block_invoke;
  v7[3] = &unk_279ED5D40;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(mQueue, v7);
}

- (BOOL)checkConnection:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3 == MEMORY[0x277D863F0])
  {
    v6 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v6)
    {
      [(WRM_UCMInterface *)v6 checkConnection:v7, v8, v9, v10, v11, v12, v13];
    }

    goto LABEL_11;
  }

  if (v3 == MEMORY[0x277D863F8])
  {
    v14 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v14)
    {
      [(WRM_UCMInterface *)v14 checkConnection:v15, v16, v17, v18, v19, v20, v21];
    }

    goto LABEL_11;
  }

  if (v3 == MEMORY[0x277D86420])
  {
    v22 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v22)
    {
      [(WRM_UCMInterface *)v22 checkConnection:v23, v24, v25, v26, v27, v28, v29];
    }

LABEL_11:
    v5 = 0;
    goto LABEL_12;
  }

  v5 = 1;
LABEL_12:

  return v5;
}

- (void)sendBtLoad:(id)a3
{
  v4 = a3;
  mQueue = self->mQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __31__WRM_UCMInterface_sendBtLoad___block_invoke;
  v7[3] = &unk_279ED5D40;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(mQueue, v7);
}

- (unsigned)getInstantLoad
{
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  v3 = dispatch_semaphore_create(0);
  v13[0] = 0;
  v13[1] = v13;
  v13[2] = 0x3032000000;
  v13[3] = __Block_byref_object_copy_;
  v13[4] = __Block_byref_object_dispose_;
  v14 = self->mConnection;
  mQueue = self->mQueue;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __34__WRM_UCMInterface_getInstantLoad__block_invoke;
  v8[3] = &unk_279ED6170;
  v9 = v3;
  v10 = self;
  v11 = v13;
  v12 = &v15;
  v5 = v3;
  dispatch_async(mQueue, v8);
  v6 = dispatch_time(0, 2000000000);
  dispatch_semaphore_wait(v5, v6);
  LODWORD(v3) = *(v16 + 6);

  _Block_object_dispose(v13, 8);
  _Block_object_dispose(&v15, 8);
  return v3;
}

- (unsigned)stopTimer
{
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  v3 = dispatch_semaphore_create(0);
  v13[0] = 0;
  v13[1] = v13;
  v13[2] = 0x3032000000;
  v13[3] = __Block_byref_object_copy_;
  v13[4] = __Block_byref_object_dispose_;
  v14 = self->mConnection;
  mQueue = self->mQueue;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __29__WRM_UCMInterface_stopTimer__block_invoke;
  v8[3] = &unk_279ED6170;
  v9 = v3;
  v10 = self;
  v11 = v13;
  v12 = &v15;
  v5 = v3;
  dispatch_async(mQueue, v8);
  v6 = dispatch_time(0, 2000000000);
  dispatch_semaphore_wait(v5, v6);
  LODWORD(v3) = *(v16 + 6);

  _Block_object_dispose(v13, 8);
  _Block_object_dispose(&v15, 8);
  return v3;
}

- (unsigned)startTimer:(double)a3
{
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  v5 = dispatch_semaphore_create(0);
  v16[0] = 0;
  v16[1] = v16;
  v16[2] = 0x3032000000;
  v16[3] = __Block_byref_object_copy_;
  v16[4] = __Block_byref_object_dispose_;
  v17 = self->mConnection;
  mQueue = self->mQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __31__WRM_UCMInterface_startTimer___block_invoke;
  block[3] = &unk_279ED6198;
  v15 = a3;
  v11 = v5;
  v12 = self;
  v13 = v16;
  v14 = &v18;
  v7 = v5;
  dispatch_async(mQueue, block);
  v8 = dispatch_time(0, 2000000000);
  dispatch_semaphore_wait(v7, v8);
  LODWORD(v5) = *(v19 + 6);

  _Block_object_dispose(v16, 8);
  _Block_object_dispose(&v18, 8);
  return v5;
}

- (int64_t)getWirelessRadioManagerReportLoad:(int)a3 loadDuration:(double)a4 callback:(void *)a5
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2742D6000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Received getWirelessRadioManagerReportLoad", buf, 2u);
  }

  switch(a3)
  {
    case 2:
      LODWORD(result) = [(WRM_UCMInterface *)self stopTimer];
      self->mHomeKitBTLoadFunctionPointer = 0;
      return result;
    case 1:
      self->mHomeKitBTLoadFunctionPointer = a5;
      if (a4 <= 0.0)
      {
        v10 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
        LODWORD(result) = 0;
        if (v10)
        {
          *v11 = 0;
          _os_log_impl(&dword_2742D6000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Duration is not Valid", v11, 2u);
          LODWORD(result) = 0;
        }
      }

      else
      {
        LODWORD(result) = [(WRM_UCMInterface *)self startTimer:a4];
      }

      return result;
    case 0:
      LODWORD(result) = [(WRM_UCMInterface *)self getInstantLoad];
      return result;
  }

  return 0;
}

- (void)sendNRFrequencyUpdateForMic:(id)a3
{
  v4 = a3;
  mQueue = self->mQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __48__WRM_UCMInterface_sendNRFrequencyUpdateForMic___block_invoke;
  v7[3] = &unk_279ED5D40;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(mQueue, v7);
}

- (id)getWirelessFrequencyBandUpdatesForMIC:(void *)a3
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2742D6000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Received getWirelessFrequencyBandUpdatesForMIC", buf, 2u);
  }

  self->mNRFrequencyUpdateForMicFuncPtr = a3;
  *buf = 0;
  v19 = buf;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy_;
  v22 = __Block_byref_object_dispose_;
  v23 = [MEMORY[0x277CBEB38] dictionary];
  v5 = dispatch_semaphore_create(0);
  v16[0] = 0;
  v16[1] = v16;
  v16[2] = 0x3032000000;
  v16[3] = __Block_byref_object_copy_;
  v16[4] = __Block_byref_object_dispose_;
  v17 = self->mConnection;
  mQueue = self->mQueue;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __58__WRM_UCMInterface_getWirelessFrequencyBandUpdatesForMIC___block_invoke;
  v11[3] = &unk_279ED6170;
  v12 = v5;
  v13 = self;
  v14 = v16;
  v15 = buf;
  v7 = v5;
  dispatch_async(mQueue, v11);
  v8 = dispatch_time(0, 2000000000);
  dispatch_semaphore_wait(v7, v8);
  v9 = *(v19 + 5);

  _Block_object_dispose(v16, 8);
  _Block_object_dispose(buf, 8);

  return v9;
}

- (void)sendULFrequencyUpdate:(id)a3
{
  v4 = a3;
  mQueue = self->mQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __42__WRM_UCMInterface_sendULFrequencyUpdate___block_invoke;
  v7[3] = &unk_279ED5D40;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(mQueue, v7);
}

- (id)getWirelessULFrequencyBandUpdates:(id)a3
{
  v4 = a3;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2742D6000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Received getWirelessULFrequencyBandUpdates", buf, 2u);
  }

  v5 = MEMORY[0x2743E9050](v4);
  mULFrequencyUpdatesObserver = self->mULFrequencyUpdatesObserver;
  self->mULFrequencyUpdatesObserver = v5;

  *buf = 0;
  v12 = buf;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy_;
  v15 = __Block_byref_object_dispose_;
  v16 = self->mConnection;
  mQueue = self->mQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __54__WRM_UCMInterface_getWirelessULFrequencyBandUpdates___block_invoke;
  block[3] = &unk_279ED6220;
  block[4] = buf;
  dispatch_async(mQueue, block);
  v8 = [&unk_288351120 copy];
  _Block_object_dispose(buf, 8);

  return v8;
}

@end