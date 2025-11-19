@interface SIPolarisGraphTesterProbeData
- (SIPolarisGraphTesterProbeData)init;
@end

@implementation SIPolarisGraphTesterProbeData

- (SIPolarisGraphTesterProbeData)init
{
  v9.receiver = self;
  v9.super_class = SIPolarisGraphTesterProbeData;
  v2 = [(SIPolarisGraphTesterProbeData *)&v9 init];
  if (v2)
  {
    v3 = dispatch_semaphore_create(0);
    probeGraphSem = v2->_probeGraphSem;
    v2->_probeGraphSem = v3;

    v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
    resourceData = v2->_resourceData;
    v2->_resourceData = v5;

    v7 = v2;
  }

  return v2;
}

@end