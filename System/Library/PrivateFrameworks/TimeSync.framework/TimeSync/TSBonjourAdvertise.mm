@interface TSBonjourAdvertise
- (BOOL)startAdvertisingWithError:(id *)error;
- (BOOL)stopAdvertising;
- (TSBonjourAdvertise)init;
- (void)dealloc;
- (void)registeredServiceWithName:(const char *)name regType:(const char *)type domain:(const char *)domain withFlags:(unsigned int)flags;
@end

@implementation TSBonjourAdvertise

- (TSBonjourAdvertise)init
{
  v6.receiver = self;
  v6.super_class = TSBonjourAdvertise;
  v2 = [(TSBonjourAdvertise *)&v6 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.timesync.bonjour.advertise", 0);
    queue = v2->_queue;
    v2->_queue = v3;
  }

  return v2;
}

- (void)registeredServiceWithName:(const char *)name regType:(const char *)type domain:(const char *)domain withFlags:(unsigned int)flags
{
  v28 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v20 = 136315906;
    nameCopy = name;
    v22 = 2080;
    typeCopy = type;
    v24 = 2080;
    domainCopy = domain;
    v26 = 1024;
    flagsCopy = flags;
    _os_log_impl(&dword_26F080000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Registered service with name %s type %s domain %s flags 0x%08x\n", &v20, 0x26u);
  }

  v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:name];
  v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:type];
  v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:domain];
  delegate = [(TSBonjourAdvertise *)self delegate];
  if (delegate)
  {
    v15 = delegate;
    delegate2 = [(TSBonjourAdvertise *)self delegate];
    v17 = objc_opt_respondsToSelector();

    if (v17)
    {
      delegate3 = [(TSBonjourAdvertise *)self delegate];
      [delegate3 didChangeServiceName:v11 type:v12 andDomain:v13 onAdvertiser:self];
    }
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (BOOL)startAdvertisingWithError:(id *)error
{
  sdRef = self->_sdRef;
  p_sdRef = &self->_sdRef;
  if (sdRef)
  {
    return 1;
  }

  v8 = DNSServiceRegister(p_sdRef, 0x100000u, 0, 0, "_ptp-general._udp.", 0, 0, 0x4001u, 0, 0, TSBARegisterServiceReply, self);
  if (error && v8)
  {
    v9 = TSBonjourErrorFromErrorCode(v8);
    v10 = v9;
    result = 0;
    *error = v9;
  }

  else
  {
    if (!v8)
    {
      DNSServiceSetDispatchQueue(self->_sdRef, self->_queue);
      return 1;
    }

    return 0;
  }

  return result;
}

- (BOOL)stopAdvertising
{
  sdRef = self->_sdRef;
  if (sdRef)
  {
    DNSServiceRefDeallocate(self->_sdRef);
    self->_sdRef = 0;
  }

  return sdRef != 0;
}

- (void)dealloc
{
  sdRef = self->_sdRef;
  if (sdRef)
  {
    DNSServiceRefDeallocate(sdRef);
  }

  v4.receiver = self;
  v4.super_class = TSBonjourAdvertise;
  [(TSBonjourAdvertise *)&v4 dealloc];
}

@end