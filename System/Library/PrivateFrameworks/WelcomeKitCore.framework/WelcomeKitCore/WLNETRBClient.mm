@interface WLNETRBClient
- (BOOL)_startDHCPWithInterface:(id)interface;
- (BOOL)_stopDHCP;
- (BOOL)isIPAddressInRange:(id)range;
- (NETRBClient)_netrbClient;
- (WLNETRBClient)init;
- (void)_didStopDHCPWithSuccess:(BOOL)success;
- (void)startDHCPWithCompletion:(id)completion;
- (void)stopDHCPWithCompletion:(id)completion;
@end

@implementation WLNETRBClient

- (WLNETRBClient)init
{
  v3.receiver = self;
  v3.super_class = WLNETRBClient;
  return [(WLNETRBClient *)&v3 init];
}

- (void)startDHCPWithCompletion:(id)completion
{
  completionCopy = completion;
  v4 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v4, *MEMORY[0x277D2C978], "255.255.255.0");
  xpc_dictionary_set_string(v4, *MEMORY[0x277D2C980], "10.17.1.199");
  xpc_dictionary_set_string(v4, *MEMORY[0x277D2C968], "10.17.1.254");
  xpc_dictionary_set_uint64(v4, *MEMORY[0x277D2C960], 3uLL);
  xpc_dictionary_set_string(v4, *MEMORY[0x277D2C970], "ap1");
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (selfCopy->_dhcpStartCompletionBlock)
  {
    v10 = "_dhcpStartCompletionBlock == nil";
    v11 = 52;
    goto LABEL_10;
  }

  if (selfCopy->_dhcpStopCompletionBlock)
  {
    v10 = "_dhcpStopCompletionBlock == nil";
    v11 = 53;
LABEL_10:
    __assert_rtn("[WLNETRBClient startDHCPWithCompletion:]", "WLNETRBClient.m", v11, v10);
  }

  v6 = MEMORY[0x2743DF630](completionCopy);
  dhcpStartCompletionBlock = selfCopy->_dhcpStartCompletionBlock;
  selfCopy->_dhcpStartCompletionBlock = v6;

  objc_sync_exit(selfCopy);
  if (![(WLNETRBClient *)selfCopy _startDHCPWithInterface:v4])
  {
    _WLLog();
    v8 = selfCopy;
    objc_sync_enter(v8);
    v9 = selfCopy->_dhcpStartCompletionBlock;
    selfCopy->_dhcpStartCompletionBlock = 0;

    objc_sync_exit(v8);
    completionCopy[2](completionCopy, 0);
  }
}

- (BOOL)_startDHCPWithInterface:(id)interface
{
  interfaceCopy = interface;
  [(WLNETRBClient *)self _netrbClient];
  LOBYTE(self) = _NETRBClientStartService();

  return self;
}

- (void)stopDHCPWithCompletion:(id)completion
{
  completionCopy = completion;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (selfCopy->_dhcpStartCompletionBlock)
  {
    v9 = "_dhcpStartCompletionBlock == nil";
    v10 = 135;
    goto LABEL_10;
  }

  if (selfCopy->_dhcpStopCompletionBlock)
  {
    v9 = "_dhcpStopCompletionBlock == nil";
    v10 = 136;
LABEL_10:
    __assert_rtn("[WLNETRBClient stopDHCPWithCompletion:]", "WLNETRBClient.m", v10, v9);
  }

  v5 = MEMORY[0x2743DF630](completionCopy);
  dhcpStopCompletionBlock = selfCopy->_dhcpStopCompletionBlock;
  selfCopy->_dhcpStopCompletionBlock = v5;

  objc_sync_exit(selfCopy);
  if (![(WLNETRBClient *)selfCopy _stopDHCP])
  {
    _WLLog();
    v7 = selfCopy;
    objc_sync_enter(v7);
    v8 = selfCopy->_dhcpStopCompletionBlock;
    selfCopy->_dhcpStopCompletionBlock = 0;

    objc_sync_exit(v7);
    completionCopy[2](completionCopy, 0);
  }
}

- (BOOL)_stopDHCP
{
  _netrbClient = [(WLNETRBClient *)self _netrbClient];

  return MEMORY[0x28218B508](_netrbClient);
}

- (void)_didStopDHCPWithSuccess:(BOOL)success
{
  _WLLog();
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v6 = MEMORY[0x2743DF630](selfCopy->_dhcpStopCompletionBlock);
  dhcpStopCompletionBlock = selfCopy->_dhcpStopCompletionBlock;
  selfCopy->_dhcpStopCompletionBlock = 0;

  objc_sync_exit(selfCopy);
  if (v6)
  {
    v6[2](v6);
  }

  else
  {
    _WLLog();
  }
}

- (NETRBClient)_netrbClient
{
  result = self->_netrbClientRef;
  if (!result)
  {
    v4 = dispatch_queue_create("WelcomeKitCore netrbClientQueue", 0);
    objc_initWeak(&location, self);
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __29__WLNETRBClient__netrbClient__block_invoke;
    v6[3] = &unk_279EB6238;
    objc_copyWeak(&v7, &location);
    v5 = MEMORY[0x2743DF630](v6);
    self->_netrbClientRef = _NETRBClientCreate();

    objc_destroyWeak(&v7);
    objc_destroyWeak(&location);

    return self->_netrbClientRef;
  }

  return result;
}

uint64_t __29__WLNETRBClient__netrbClient__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  _WLLog();
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    if (a2 == 1002)
    {
      [WeakRetained _didStopDHCPWithSuccess:{xpc_dictionary_get_uint64(v5, *MEMORY[0x277D2C988]) == 5002, a2, v5}];
    }

    else if (a2 == 1001)
    {
      [WeakRetained _didStartDHCPWithSuccess:{xpc_dictionary_get_uint64(v5, *MEMORY[0x277D2C988]) == 5002, a2, v5}];
    }
  }

  return 0;
}

- (BOOL)isIPAddressInRange:(id)range
{
  rangeCopy = range;
  v4 = [objc_alloc(MEMORY[0x277CCACA8]) initWithCString:"10.17.1.199" encoding:4];
  v5 = [objc_alloc(MEMORY[0x277CCACA8]) initWithCString:"10.17.1.254" encoding:4];
  v7 = [v4 length] && objc_msgSend(v5, "length") && objc_msgSend(rangeCopy, "length") && (v10 = 0, v9 = 0, inet_pton(2, objc_msgSend(v4, "UTF8String"), &v10 + 4) == 1) && inet_pton(2, objc_msgSend(v5, "UTF8String"), &v10) == 1 && inet_pton(2, objc_msgSend(rangeCopy, "UTF8String"), &v9) == 1 && (v6 = bswap32(v9), v6 >= bswap32(HIDWORD(v10))) && v6 <= bswap32(v10);

  return v7;
}

@end