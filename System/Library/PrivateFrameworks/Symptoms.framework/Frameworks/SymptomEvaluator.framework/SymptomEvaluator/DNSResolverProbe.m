@interface DNSResolverProbe
- (DNSResolverProbe)initWithQueue:(id)a3;
- (void)dealloc;
- (void)startDNSResolveFor:(id)a3 includeAWDL:(BOOL)a4;
- (void)stopTest;
@end

@implementation DNSResolverProbe

- (DNSResolverProbe)initWithQueue:(id)a3
{
  v4.receiver = self;
  v4.super_class = DNSResolverProbe;
  return [(TestProbe *)&v4 initWithQueue:a3];
}

- (void)dealloc
{
  [(DNSResolverProbe *)self stopTest];
  v3.receiver = self;
  v3.super_class = DNSResolverProbe;
  [(DNSResolverProbe *)&v3 dealloc];
}

- (void)startDNSResolveFor:(id)a3 includeAWDL:(BOOL)a4
{
  v4 = a4;
  v28 = *MEMORY[0x277D85DE8];
  v7 = a3;
  objc_storeStrong(&self->_serviceDict, a3);
  self->_includeAWDL = v4;
  [(TestProbe *)self setRunning:1];
  if (self->_sharedDNSRef)
  {
    if (v4)
    {
      v8 = 1064960;
    }

    else
    {
      v8 = 0x4000;
    }

    sdRef = self->_sharedDNSRef;
    v9 = [v7 objectForKeyedSubscript:@"name"];
    v10 = [v9 UTF8String];
    v11 = [v7 objectForKeyedSubscript:@"serviceType"];
    v12 = DNSServiceResolve(&sdRef, v8, 0, v10, [v11 UTF8String], "local", resolveCallBack, self);

    if (!v12)
    {
      self->_resolveDNSRef = sdRef;
      goto LABEL_16;
    }

    v13 = debuggabilityLogHandle;
    if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_INFO))
    {
      v14 = v13;
      v15 = [v7 objectForKeyedSubscript:@"name"];
      *buf = 138412546;
      v25 = v15;
      v26 = 1024;
      v27 = v12;
      _os_log_impl(&dword_23255B000, v14, OS_LOG_TYPE_INFO, "Starting Resolve for %@ failed %d", buf, 0x12u);
    }

    errorDelegate = self->_errorDelegate;
    if (objc_opt_respondsToSelector())
    {
      v17 = self->_errorDelegate;
      v18 = self;
      v19 = v12;
LABEL_14:
      [(DNSResolverProbeErrorDelegate *)v17 dnsResolver:v18 encounteredDNSError:v19];
    }
  }

  else
  {
    v20 = debuggabilityLogHandle;
    if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_23255B000, v20, OS_LOG_TYPE_ERROR, "The shared DNS Ref for DNSServiceResolve() is NULL. We're probably in the middle of tearing everything down.", buf, 2u);
    }

    v21 = self->_errorDelegate;
    if (objc_opt_respondsToSelector())
    {
      v17 = self->_errorDelegate;
      v18 = self;
      v19 = 4294901756;
      goto LABEL_14;
    }
  }

LABEL_16:

  v22 = *MEMORY[0x277D85DE8];
}

- (void)stopTest
{
  if ([(TestProbe *)self isRunning])
  {
    [(TestProbe *)self setRunning:0];
    getAddrInfoDNSRef = self->_getAddrInfoDNSRef;
    if (getAddrInfoDNSRef)
    {
      DNSServiceRefDeallocate(getAddrInfoDNSRef);
      self->_getAddrInfoDNSRef = 0;
    }

    resolveDNSRef = self->_resolveDNSRef;
    if (resolveDNSRef)
    {
      DNSServiceRefDeallocate(resolveDNSRef);
      self->_resolveDNSRef = 0;
    }
  }
}

@end