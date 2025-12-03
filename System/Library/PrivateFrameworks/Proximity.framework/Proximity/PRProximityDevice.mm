@interface PRProximityDevice
- (PRProximityDevice)init;
- (PRProximityDevice)initWithPeer:(id)peer andPeerModel:(id)model withError:(id *)error;
- (id).cxx_construct;
- (void)addSample:(BtProxData *)sample;
- (void)estimateProximity;
@end

@implementation PRProximityDevice

- (PRProximityDevice)init
{
  [(PRProximityDevice *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (PRProximityDevice)initWithPeer:(id)peer andPeerModel:(id)model withError:(id *)error
{
  peerCopy = peer;
  modelCopy = model;
  v20.receiver = self;
  v20.super_class = PRProximityDevice;
  v11 = [(PRProximityDevice *)&v20 init];
  if (v11)
  {
    v12 = os_log_create("com.apple.Proximity", "general");
    logger = v11->_logger;
    v11->_logger = v12;

    objc_storeStrong(&v11->_peer, peer);
    objc_storeStrong(&v11->_model, model);
    v11->_proximity = 0;
    v19 = 0;
    v14 = [PRProximityDatabase getProximityDeviceParameters:&v19 forDeviceModel:v11->_model withError:error];
    v15 = v19;
    if (!v14)
    {

      v17 = 0;
      goto LABEL_6;
    }

    proximityParameters = v11->_proximityParameters;
    v11->_proximityParameters = v15;
  }

  v17 = v11;
LABEL_6:

  return v17;
}

- (void)addSample:(BtProxData *)sample
{
  obj = self;
  objc_sync_enter(obj);
  size = obj->_samples.__size_;
  if (size == [(PRProximityDeviceParameters *)obj->_proximityParameters samplesize])
  {
    *&obj->_samples.__start_ = vaddq_s64(*&obj->_samples.__start_, xmmword_230EED790);
    std::deque<BtProxData>::__maybe_remove_front_spare[abi:ne200100](&obj->_samples, 1);
  }

  [(PRProximityDevice *)obj estimateProximity:std::deque<BtProxData>::push_back(&obj->_samples];
  objc_sync_exit(obj);
}

- (void)estimateProximity
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1(&dword_230EB5000, self, a3, "%s - estimatedProximity: PRDeviceProximityFar", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (id).cxx_construct
{
  *(self + 3) = 0u;
  *(self + 4) = 0u;
  *(self + 2) = 0u;
  return self;
}

@end