@interface WLWiFiDeviceClient
- (BOOL)_completionMapsAreEmpty;
- (WLWiFiDeviceClient)initWithWiFiDeviceClientRef:(__WiFiDeviceClient *)a3;
- (id)_hostedNetworks;
- (id)_initWithoutWiFiDeviceClientRef;
- (id)hostedNetworkMatchingSSID:(id)a3;
- (int)_startNetworkWithRole:(int)a3 request:(id)a4 session:(id)a5;
- (int)_stopNetwork:(id)a3 session:(id)a4;
- (void)dealloc;
- (void)disassociate;
- (void)stopNetwork:(id)a3 completion:(id)a4;
@end

@implementation WLWiFiDeviceClient

- (WLWiFiDeviceClient)initWithWiFiDeviceClientRef:(__WiFiDeviceClient *)a3
{
  v7.receiver = self;
  v7.super_class = WLWiFiDeviceClient;
  v4 = [(WLWiFiDeviceClient *)&v7 init];
  v5 = v4;
  if (v4)
  {
    [(WLWiFiDeviceClient *)v4 setRef:a3];
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

- (id)hostedNetworkMatchingSSID:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
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
        v10 = [v9 ssid];
        v11 = [v10 isEqualToString:v4];

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

- (int)_startNetworkWithRole:(int)a3 request:(id)a4 session:(id)a5
{
  v7 = a5;
  v8 = a4;
  [(WLWiFiDeviceClient *)self ref];
  started = WiFiDeviceClientStartNetwork();

  return started;
}

- (void)stopNetwork:(id)a3 completion:(id)a4
{
  v14 = a3;
  v6 = a4;
  v7 = _stopSessionToCompletionMap();
  v8 = [MEMORY[0x277CCACA8] wl_uniqueIdentifier];
  v9 = v7;
  objc_sync_enter(v9);
  v10 = MEMORY[0x2743DF630](v6);
  [v9 setObject:v10 forKeyedSubscript:v8];

  objc_sync_exit(v9);
  v11 = [(WLWiFiDeviceClient *)self _stopNetwork:v14 session:v8];
  if (v11)
  {
    v13 = v11;
    _WLLog();
    v12 = v9;
    objc_sync_enter(v12);
    [v12 setObject:0 forKeyedSubscript:{v8, v13}];
    objc_sync_exit(v12);

    v6[2](v6, 0);
  }
}

- (int)_stopNetwork:(id)a3 session:(id)a4
{
  v6 = a4;
  v7 = a3;
  [(WLWiFiDeviceClient *)self ref];
  [v7 ref];

  LODWORD(v7) = WiFiDeviceClientStopNetwork();
  return v7;
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