@interface PRProximitySingleThresholdDevice
- (BOOL)proxReady;
- (PRProximitySingleThresholdDevice)init;
- (PRProximitySingleThresholdDevice)initWithPeer:(id)peer andPeerModel:(id)model withError:(id *)error;
- (id).cxx_construct;
- (void)addSample:(BtProxData *)sample;
@end

@implementation PRProximitySingleThresholdDevice

- (PRProximitySingleThresholdDevice)init
{
  [(PRProximitySingleThresholdDevice *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (PRProximitySingleThresholdDevice)initWithPeer:(id)peer andPeerModel:(id)model withError:(id *)error
{
  v29[1] = *MEMORY[0x277D85DE8];
  peerCopy = peer;
  modelCopy = model;
  v25.receiver = self;
  v25.super_class = PRProximitySingleThresholdDevice;
  v11 = [(PRProximitySingleThresholdDevice *)&v25 init];
  if (v11)
  {
    v12 = os_log_create("com.apple.Proximity", "SingleThreshold");
    v13 = *(v11 + 1);
    *(v11 + 1) = v12;

    objc_storeStrong(v11 + 13, peer);
    objc_storeStrong(v11 + 2, model);
    *(v11 + 9) = 0;
    *(v11 + 11) = 0;
    *(v11 + 12) = 0xBFF0000000000000;
    v14 = +[PRProximityDatabase getScannerDeviceModel];
    v15 = [PRProximityDatabase getPRDeviceModelFromModelId:modelCopy];
    if (v14 != 21)
    {
      v16 = v15;
      if (v15 != 21)
      {
        v17 = [PRProximityDatabase getDeviceBtTxPowerFromModel:v15];
        v18 = [PRProximityDatabase getDeviceBtRxOffsetFromModel:v14];
        if (!v14)
        {
          v19 = *(v11 + 1);
          if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 67109120;
            v27 = v18;
            _os_log_impl(&dword_230EB5000, v19, OS_LOG_TYPE_DEFAULT, "Unknown scanning model; using default rx offset of %d.", buf, 8u);
          }
        }

        if (!v16)
        {
          v20 = *(v11 + 1);
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 67109120;
            v27 = v17;
            _os_log_impl(&dword_230EB5000, v20, OS_LOG_TYPE_DEFAULT, "Unknown advertising model; using default tx power of %d.", buf, 8u);
          }
        }

        operator new();
      }
    }

    if (error)
    {
      v21 = MEMORY[0x277CCA9B8];
      v28 = *MEMORY[0x277CCA450];
      v29[0] = @"Unknown error getting device model; prox unavailable";
      v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v29 forKeys:&v28 count:1];
      *error = [v21 errorWithDomain:@"com.apple.Proximity.ErrorDomain" code:999 userInfo:v22];

      error = 0;
    }
  }

  else
  {
    error = 0;
  }

  v23 = *MEMORY[0x277D85DE8];
  return error;
}

- (void)addSample:(BtProxData *)sample
{
  obj = self;
  objc_sync_enter(obj);
  SingleThresholdProx::Estimator::addRSSISample(obj->_estimator.__ptr_, sample->var1, sample->var2, sample->var0);
  if (sample->var0 > obj->_mostRecentSampleTime)
  {
    obj->_mostRecentSampleTime = sample->var0;
  }

  ++obj->_sampleCount;
  objc_sync_exit(obj);
}

- (BOOL)proxReady
{
  sampleCount = self->_sampleCount;
  if (sampleCount >= 2)
  {
    v5 = 0;
    v6 = 0xBFF0000000000000;
    v7 = 0;
    SingleThresholdProx::Estimator::getRangeMeasurement(self->_estimator.__ptr_, &v5, self->_mostRecentSampleTime);
    if (v5 <= 3)
    {
      self->_proximity = qword_230EED7A0[v5];
    }
  }

  return sampleCount > 1;
}

- (id).cxx_construct
{
  *(self + 56) = 0u;
  *(self + 40) = 0u;
  *(self + 24) = 0u;
  *(self + 10) = 0;
  return self;
}

@end