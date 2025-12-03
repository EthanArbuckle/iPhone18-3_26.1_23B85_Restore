@interface WLWiFiDeviceClient
- (BOOL)_completionMapsAreEmpty;
- (WLWiFiDeviceClient)initWithWiFiDeviceClientRef:(__WiFiDeviceClient *)ref;
- (id)_hostedNetworks;
- (id)_initWithoutWiFiDeviceClientRef;
- (id)hostedNetworkMatchingSSID:(id)d;
- (int)_startNetworkWithRole:(int)role request:(id)request session:(id)session;
- (int)_stopNetwork:(id)network session:(id)session;
- (void)dealloc;
- (void)disassociate;
- (void)stopNetwork:(id)network completion:(id)completion;
@end

@implementation WLWiFiDeviceClient

- (WLWiFiDeviceClient)initWithWiFiDeviceClientRef:(__WiFiDeviceClient *)ref
{
  v7.receiver = self;
  v7.super_class = WLWiFiDeviceClient;
  v4 = [(WLWiFiDeviceClient *)&v7 init];
  v5 = v4;
  if (v4)
  {
    [(WLWiFiDeviceClient *)v4 setRef:ref];
    CFRetain([(WLWiFiDeviceClient *)v5 ref]);
  }

  return v5;
}

- (id)_initWithoutWiFiDeviceClientRef
{
  v3.receiver = self;
  v3.super_class = WLWiFiDeviceClient;
  return [(WLWiFiDeviceClient *)&v3 init];
}

- (void)dealloc
{
  if ([(WLWiFiDeviceClient *)self ref])
  {
    CFRelease([(WLWiFiDeviceClient *)self ref]);
  }

  v3.receiver = self;
  v3.super_class = WLWiFiDeviceClient;
  [(WLWiFiDeviceClient *)&v3 dealloc];
}

- (id)hostedNetworkMatchingSSID:(id)d
{
  v19 = *MEMORY[0x277D85DE8];
  dCopy = d;
  [(WLWiFiDeviceClient *)self _hostedNetworks];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = v17 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = *v15;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        ssid = [v9 ssid];
        v11 = [ssid isEqualToString:dCopy];

        if (v11)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v12 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)_hostedNetworks
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  [(WLWiFiDeviceClient *)self ref];
  WiFiDeviceClientCopyHostedNetworks();
  _WLLog();

  return v3;
}

- (void)disassociate
{
  v2 = [(WLWiFiDeviceClient *)self ref];

  MEMORY[0x282187638](v2, 0);
}

- (int)_startNetworkWithRole:(int)role request:(id)request session:(id)session
{
  sessionCopy = session;
  requestCopy = request;
  [(WLWiFiDeviceClient *)self ref];
  started = WiFiDeviceClientStartNetwork();

  return started;
}

- (void)stopNetwork:(id)network completion:(id)completion
{
  networkCopy = network;
  completionCopy = completion;
  v7 = _stopSessionToCompletionMap();
  wl_uniqueIdentifier = [MEMORY[0x277CCACA8] wl_uniqueIdentifier];
  v9 = v7;
  objc_sync_enter(v9);
  v10 = MEMORY[0x2743DF630](completionCopy);
  [v9 setObject:v10 forKeyedSubscript:wl_uniqueIdentifier];

  objc_sync_exit(v9);
  v11 = [(WLWiFiDeviceClient *)self _stopNetwork:networkCopy session:wl_uniqueIdentifier];
  if (v11)
  {
    v13 = v11;
    _WLLog();
    v12 = v9;
    objc_sync_enter(v12);
    [v12 setObject:0 forKeyedSubscript:{wl_uniqueIdentifier, v13}];
    objc_sync_exit(v12);

    completionCopy[2](completionCopy, 0);
  }
}

- (int)_stopNetwork:(id)network session:(id)session
{
  sessionCopy = session;
  networkCopy = network;
  [(WLWiFiDeviceClient *)self ref];
  [networkCopy ref];

  LODWORD(networkCopy) = WiFiDeviceClientStopNetwork();
  return networkCopy;
}

- (BOOL)_completionMapsAreEmpty
{
  v2 = _startSessionToCompletionMap();
  objc_sync_enter(v2);
  v3 = _startSessionToCompletionMap();
  v4 = [v3 count];

  objc_sync_exit(v2);
  v5 = _stopSessionToCompletionMap();
  objc_sync_enter(v5);
  v6 = _stopSessionToCompletionMap();
  v7 = v4 | [v6 count];

  objc_sync_exit(v5);
  return v7 == 0;
}

@end