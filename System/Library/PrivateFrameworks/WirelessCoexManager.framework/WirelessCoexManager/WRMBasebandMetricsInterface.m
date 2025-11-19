@interface WRMBasebandMetricsInterface
- (WRMBasebandMetricsInterface)init;
- (void)getCellularDataMetrics:(id)a3;
- (void)getNRPhyMetrics:(id)a3;
- (void)getQSHMetrics:(id)a3;
- (void)getWiFiBWEstimationMetrics:(id)a3;
- (void)handleNotification:(id)a3 :(BOOL)a4;
- (void)processWRMCellDataMetrics:(id)a3;
- (void)processWRMNrPhyMetrics:(id)a3;
- (void)processWRMWiFiBWEstMetrics:(id)a3;
- (void)reConnect;
- (void)unregisterClient;
@end

@implementation WRMBasebandMetricsInterface

void __52__WRMBasebandMetricsInterface_registerClient_queue___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained handleNotification:v8 :a4];
  }
}

- (void)unregisterClient
{
  v2.receiver = self;
  v2.super_class = WRMBasebandMetricsInterface;
  [(WRMClientInterface *)&v2 unregisterClient];
}

- (void)getWiFiBWEstimationMetrics:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  wifiMetricsHandler = self->wifiMetricsHandler;
  if (wifiMetricsHandler)
  {
    self->wifiMetricsHandler = 0;
  }

  v6 = MEMORY[0x2743E9050](v4);
  v7 = self->wifiMetricsHandler;
  self->wifiMetricsHandler = v6;

  v8 = xpc_dictionary_create(0, 0, 0);
  *keys = xmmword_279ED5D00;
  v9 = xpc_uint64_create(0x834uLL);
  v14[0] = v9;
  v10 = v8;
  v14[1] = v10;
  v11 = xpc_dictionary_create(keys, v14, 2uLL);
  xpc_connection_send_message(self->super.mConnection, v11);

  for (i = 1; i != -1; --i)
  {
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)getNRPhyMetrics:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  metricsHandler = self->metricsHandler;
  if (metricsHandler)
  {
    self->metricsHandler = 0;
  }

  v6 = MEMORY[0x2743E9050](v4);
  v7 = self->metricsHandler;
  self->metricsHandler = v6;

  v8 = xpc_dictionary_create(0, 0, 0);
  *keys = xmmword_279ED5D00;
  v9 = xpc_uint64_create(0x7D0uLL);
  v14[0] = v9;
  v10 = v8;
  v14[1] = v10;
  v11 = xpc_dictionary_create(keys, v14, 2uLL);
  xpc_connection_send_message(self->super.mConnection, v11);

  for (i = 1; i != -1; --i)
  {
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)getCellularDataMetrics:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  dataMetricsHandler = self->dataMetricsHandler;
  if (dataMetricsHandler)
  {
    self->dataMetricsHandler = 0;
  }

  v6 = MEMORY[0x2743E9050](v4);
  v7 = self->dataMetricsHandler;
  self->dataMetricsHandler = v6;

  v8 = xpc_dictionary_create(0, 0, 0);
  *keys = xmmword_279ED5D00;
  v9 = xpc_uint64_create(0x7D1uLL);
  v14[0] = v9;
  v10 = v8;
  v14[1] = v10;
  v11 = xpc_dictionary_create(keys, v14, 2uLL);
  xpc_connection_send_message(self->super.mConnection, v11);

  for (i = 1; i != -1; --i)
  {
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)getQSHMetrics:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = MEMORY[0x2743E9050](v4);
    if (v6)
    {
      v7 = v6;
      v8 = xpc_dictionary_create(0, 0, 0);
      if (v8)
      {
        v9 = v8;
        v10 = xpc_dictionary_create(0, 0, 0);
        *keys = xmmword_279ED5D00;
        v11 = xpc_uint64_create(0x7D2uLL);
        values[0] = v11;
        v12 = v10;
        values[1] = v12;
        v13 = xpc_dictionary_create(keys, values, 2uLL);
        mConnection = self->super.mConnection;
        handler[0] = MEMORY[0x277D85DD0];
        handler[1] = 3221225472;
        handler[2] = __45__WRMBasebandMetricsInterface_getQSHMetrics___block_invoke;
        handler[3] = &unk_279ED5D18;
        v18 = v7;
        xpc_connection_send_message_with_reply(mConnection, v13, 0, handler);

        for (i = 1; i != -1; --i)
        {
        }
      }
    }
  }

  v16 = *MEMORY[0x277D85DE8];
}

void __45__WRMBasebandMetricsInterface_getQSHMetrics___block_invoke(uint64_t a1, void *a2)
{
  v21[7] = *MEMORY[0x277D85DE8];
  v3 = a2;
  uint64 = xpc_dictionary_get_uint64(v3, "totalCellularBW");
  v5 = xpc_dictionary_get_uint64(v3, "nrConfiguredBW");
  v6 = xpc_dictionary_get_uint64(v3, "totalLayers");
  v7 = xpc_dictionary_get_uint64(v3, "nrLayers");
  v8 = xpc_dictionary_get_uint64(v3, "lteMaxScheduledLayers");
  v9 = xpc_dictionary_get_uint64(v3, "nrModulation");
  v10 = xpc_dictionary_get_uint64(v3, "totalCCs");

  v20[0] = @"totalCellularBW";
  v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:uint64];
  v21[0] = v11;
  v20[1] = @"nrConfiguredBW";
  v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v5];
  v21[1] = v12;
  v20[2] = @"totalLayers";
  v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v6];
  v21[2] = v13;
  v20[3] = @"nrLayers";
  v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v7];
  v21[3] = v14;
  v20[4] = @"lteMaxScheduledLayers";
  v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v8];
  v21[4] = v15;
  v20[5] = @"nrModulation";
  v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v9];
  v21[5] = v16;
  v20[6] = @"totalCCs";
  v17 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v10];
  v21[6] = v17;
  v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:v20 count:7];

  (*(*(a1 + 32) + 16))();
  v19 = *MEMORY[0x277D85DE8];
}

- (WRMBasebandMetricsInterface)init
{
  v9.receiver = self;
  v9.super_class = WRMBasebandMetricsInterface;
  v2 = [(WRMClientInterface *)&v9 init];
  v3 = v2;
  if (v2)
  {
    metricsHandler = v2->metricsHandler;
    v2->metricsHandler = 0;

    dataMetricsHandler = v3->dataMetricsHandler;
    v3->dataMetricsHandler = 0;

    wifiMetricsHandler = v3->wifiMetricsHandler;
    v3->wifiMetricsHandler = 0;

    v7 = v3;
  }

  return v3;
}

- (void)handleNotification:(id)a3 :(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  xdict = v6;
  if (v4)
  {
    NSLog(&cfstr_InvokingReconn.isa);
    [(WRMBasebandMetricsInterface *)self reConnect];
  }

  else
  {
    uint64 = xpc_dictionary_get_uint64(v6, "kMessageId");
    v8 = xpc_dictionary_get_value(xdict, "kMessageArgs");
    switch(uint64)
    {
      case 0x834uLL:
        [(WRMBasebandMetricsInterface *)self processWRMWiFiBWEstMetrics:v8];
        break;
      case 0x7D1uLL:
        [(WRMBasebandMetricsInterface *)self processWRMCellDataMetrics:v8];
        break;
      case 0x7D0uLL:
        [(WRMBasebandMetricsInterface *)self processWRMNrPhyMetrics:v8];
        break;
    }
  }
}

- (void)processWRMNrPhyMetrics:(id)a3
{
  v4 = a3;
  mQueue = self->super.mQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __54__WRMBasebandMetricsInterface_processWRMNrPhyMetrics___block_invoke;
  v7[3] = &unk_279ED5D40;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(mQueue, v7);
}

void __54__WRMBasebandMetricsInterface_processWRMNrPhyMetrics___block_invoke(uint64_t a1)
{
  v15[3] = *MEMORY[0x277D85DE8];
  v2 = xpc_dictionary_get_value(*(a1 + 32), "nrRSRP");

  v3 = 0.0;
  v4 = 0.0;
  if (v2)
  {
    v4 = xpc_dictionary_get_double(*(a1 + 32), "nrRSRP");
  }

  v5 = xpc_dictionary_get_value(*(a1 + 32), "nrRSRQ");

  if (v5)
  {
    v3 = xpc_dictionary_get_double(*(a1 + 32), "nrRSRQ");
  }

  v6 = xpc_dictionary_get_value(*(a1 + 32), "nrSNR");

  if (v6)
  {
    v7 = xpc_dictionary_get_double(*(a1 + 32), "nrSNR");
  }

  else
  {
    v7 = 0.0;
  }

  v14[0] = @"nrRSRP";
  v8 = [MEMORY[0x277CCABB0] numberWithDouble:v4];
  v15[0] = v8;
  v14[1] = @"nrRSRQ";
  v9 = [MEMORY[0x277CCABB0] numberWithDouble:v3];
  v15[1] = v9;
  v14[2] = @"nrSNR";
  v10 = [MEMORY[0x277CCABB0] numberWithDouble:v7];
  v15[2] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:3];

  v12 = *(*(a1 + 40) + 40);
  if (v12)
  {
    (*(v12 + 16))(v12, v11);
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)processWRMCellDataMetrics:(id)a3
{
  v4 = a3;
  mQueue = self->super.mQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __57__WRMBasebandMetricsInterface_processWRMCellDataMetrics___block_invoke;
  v7[3] = &unk_279ED5D40;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(mQueue, v7);
}

void __57__WRMBasebandMetricsInterface_processWRMCellDataMetrics___block_invoke(uint64_t a1)
{
  v9[1] = *MEMORY[0x277D85DE8];
  v2 = xpc_dictionary_get_value(*(a1 + 32), "cellularDataLQM");

  if (v2)
  {
    uint64 = xpc_dictionary_get_uint64(*(a1 + 32), "cellularDataLQM");
  }

  else
  {
    uint64 = 0;
  }

  v8 = @"cellularDataLQM";
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:uint64];
  v9[0] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:&v8 count:1];

  v6 = *(*(a1 + 40) + 48);
  if (v6)
  {
    (*(v6 + 16))(v6, v5);
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)processWRMWiFiBWEstMetrics:(id)a3
{
  v4 = a3;
  mQueue = self->super.mQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __58__WRMBasebandMetricsInterface_processWRMWiFiBWEstMetrics___block_invoke;
  v7[3] = &unk_279ED5D40;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(mQueue, v7);
}

void __58__WRMBasebandMetricsInterface_processWRMWiFiBWEstMetrics___block_invoke(uint64_t a1)
{
  v26[7] = *MEMORY[0x277D85DE8];
  v2 = xpc_dictionary_get_value(*(a1 + 32), "wghtRSSI");

  v3 = 0.0;
  v4 = 0.0;
  if (v2)
  {
    v4 = xpc_dictionary_get_double(*(a1 + 32), "wghtRSSI");
  }

  v5 = xpc_dictionary_get_value(*(a1 + 32), "wghtSNR");

  if (v5)
  {
    v3 = xpc_dictionary_get_double(*(a1 + 32), "wghtSNR");
  }

  v6 = xpc_dictionary_get_value(*(a1 + 32), "wghtPhyRate");

  v7 = 0.0;
  v8 = 0.0;
  if (v6)
  {
    v8 = xpc_dictionary_get_double(*(a1 + 32), "wghtPhyRate");
  }

  v9 = xpc_dictionary_get_value(*(a1 + 32), "tcpRTT");

  if (v9)
  {
    v7 = xpc_dictionary_get_double(*(a1 + 32), "tcpRTT");
  }

  uint64 = xpc_dictionary_get_value(*(a1 + 32), "chType");

  if (uint64)
  {
    uint64 = xpc_dictionary_get_uint64(*(a1 + 32), "chType");
  }

  v11 = xpc_dictionary_get_value(*(a1 + 32), "isCaptive");

  if (v11)
  {
    v12 = xpc_dictionary_get_BOOL(*(a1 + 32), "isCaptive");
  }

  else
  {
    v12 = 0;
  }

  v13 = xpc_dictionary_get_value(*(a1 + 32), "CCA");

  if (v13)
  {
    v14 = xpc_dictionary_get_uint64(*(a1 + 32), "CCA");
  }

  else
  {
    v14 = 0.0;
  }

  v25[0] = @"wghtRSSI";
  v15 = [MEMORY[0x277CCABB0] numberWithDouble:v4];
  v26[0] = v15;
  v25[1] = @"wghtSNR";
  v16 = [MEMORY[0x277CCABB0] numberWithDouble:v3];
  v26[1] = v16;
  v25[2] = @"wghtPhyRate";
  v17 = [MEMORY[0x277CCABB0] numberWithDouble:v8];
  v26[2] = v17;
  v25[3] = @"tcpRTT";
  v18 = [MEMORY[0x277CCABB0] numberWithDouble:v7];
  v26[3] = v18;
  v25[4] = @"chType";
  v19 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:uint64];
  v26[4] = v19;
  v25[5] = @"isCaptive";
  v20 = [MEMORY[0x277CCABB0] numberWithBool:v12];
  v26[5] = v20;
  v25[6] = @"CCA";
  v21 = [MEMORY[0x277CCABB0] numberWithDouble:v14];
  v26[6] = v21;
  v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:v25 count:7];

  v23 = *(*(a1 + 40) + 56);
  if (v23)
  {
    (*(v23 + 16))(v23, v22);
  }

  v24 = *MEMORY[0x277D85DE8];
}

- (void)reConnect
{
  [(WRMBasebandMetricsInterface *)self unregisterClient];
  mProcessId = self->super.mProcessId;
  mQueue = self->super.mQueue;

  [(WRMBasebandMetricsInterface *)self registerClient:mProcessId queue:mQueue];
}

@end