@interface WLWiFiManager
- (WLWiFiManager)init;
- (id)createDeviceClient;
- (void)_preferredChannel:(__WiFiDeviceClient *)channel network:(__WiFiNetwork *)network channels:(id)channels completion:(id)completion;
- (void)currentNetwork:(__WiFiDeviceClient *)network channels:(id)channels completion:(id)completion;
- (void)dealloc;
- (void)disable;
- (void)enable;
- (void)scanNetwork:(id)network;
@end

@implementation WLWiFiManager

- (WLWiFiManager)init
{
  v7.receiver = self;
  v7.super_class = WLWiFiManager;
  v2 = [(WLWiFiManager *)&v7 init];
  if (v2)
  {
    v3 = *MEMORY[0x277CBECE8];
    [(WLWiFiManager *)v2 setRef:WiFiManagerClientCreate()];
    v6 = [(WLWiFiManager *)v2 ref];
    _WLLog();
    [(WLWiFiManager *)v2 ref];
    CFRunLoopGetMain();
    v4 = *MEMORY[0x277CBF058];
    WiFiManagerClientScheduleWithRunLoop();
  }

  return v2;
}

- (void)dealloc
{
  if ([(WLWiFiManager *)self ref])
  {
    CFRelease([(WLWiFiManager *)self ref]);
  }

  v3.receiver = self;
  v3.super_class = WLWiFiManager;
  [(WLWiFiManager *)&v3 dealloc];
}

- (void)disable
{
  v2 = [(WLWiFiManager *)self ref];

  MEMORY[0x282187748](v2);
}

- (void)enable
{
  v2 = [(WLWiFiManager *)self ref];

  MEMORY[0x282187760](v2);
}

- (id)createDeviceClient
{
  [(WLWiFiManager *)self ref];
  v2 = WiFiManagerClientCopyDevices();
  _WLLog();
  if (v2)
  {
    Count = CFArrayGetCount(v2);
    if (Count)
    {
      v4 = 0;
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v2, v4);
        InterfaceRoleIndex = WiFiDeviceClientGetInterfaceRoleIndex();
        _WLLog();
        if (!InterfaceRoleIndex)
        {
          break;
        }

        if (Count == ++v4)
        {
          Count = 0;
          goto LABEL_9;
        }
      }

      Count = [[WLWiFiDeviceClient alloc] initWithWiFiDeviceClientRef:ValueAtIndex, ValueAtIndex, 0];
    }

LABEL_9:
    CFRelease(v2);
  }

  else
  {
    Count = 0;
  }

  _WLLog();

  return Count;
}

- (void)scanNetwork:(id)network
{
  v17[4] = *MEMORY[0x277D85DE8];
  networkCopy = network;
  [(WLWiFiManager *)self ref];
  Device = WiFiManagerClientGetDevice();
  if (Device)
  {
    v6 = Device;
    v16[0] = @"SCAN_BSS_TYPE";
    v16[1] = @"SCAN_DWELL_TIME";
    v17[0] = &unk_2882D6D48;
    v17[1] = &unk_2882D6D60;
    v16[2] = @"SCAN_NUM_SCANS";
    v16[3] = @"SCAN_PHY_MODE";
    v17[2] = &unk_2882D6D78;
    v17[3] = &unk_2882D6D78;
    v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:4];
    objc_initWeak(&location, self);
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __29__WLWiFiManager_scanNetwork___block_invoke;
    v12[3] = &unk_279EB6418;
    objc_copyWeak(v14, &location);
    v14[1] = v6;
    v8 = networkCopy;
    v13 = v8;
    v9 = MEMORY[0x2743DF630](v12);
    v10 = MEMORY[0x2743DF630]();
    LODWORD(v6) = WiFiDeviceClientScanAsync();

    if (v6)
    {
      _WLLog();
      if (v8)
      {
        (*(v8 + 2))(v8, 1);
      }
    }

    objc_destroyWeak(v14);
    objc_destroyWeak(&location);
  }

  else
  {
    _WLLog();
    if (networkCopy)
    {
      (*(networkCopy + 2))(networkCopy, 1);
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

void __29__WLWiFiManager_scanNetwork___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained currentNetwork:*(a1 + 48) channels:v3 completion:*(a1 + 32)];
}

- (void)currentNetwork:(__WiFiDeviceClient *)network channels:(id)channels completion:(id)completion
{
  channelsCopy = channels;
  completionCopy = completion;
  objc_initWeak(&location, self);
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __52__WLWiFiManager_currentNetwork_channels_completion___block_invoke;
  v15[3] = &unk_279EB6440;
  objc_copyWeak(v18, &location);
  v18[1] = network;
  v10 = channelsCopy;
  v16 = v10;
  v11 = completionCopy;
  v17 = v11;
  v12 = MEMORY[0x2743DF630](v15);
  v13 = MEMORY[0x277D85CD0];
  v14 = MEMORY[0x2743DF630](v12);
  LODWORD(network) = WiFiDeviceClientCopyCurrentNetworkAsync();

  if (network)
  {
    _WLLog();
    if (v11)
    {
      (*(v11 + 2))(v11, 1);
    }
  }

  objc_destroyWeak(v18);
  objc_destroyWeak(&location);
}

void __52__WLWiFiManager_currentNetwork_channels_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained _preferredChannel:*(a1 + 56) network:a2 channels:*(a1 + 32) completion:*(a1 + 40)];
}

- (void)_preferredChannel:(__WiFiDeviceClient *)channel network:(__WiFiNetwork *)network channels:(id)channels completion:(id)completion
{
  v101 = *MEMORY[0x277D85DE8];
  channelsCopy = channels;
  completionCopy = completion;
  v9 = WiFiNetworkGetChannel();
  v73 = v9;
  if (network)
  {
    integerValue = [v9 integerValue];
  }

  else
  {
    integerValue = -1;
  }

  v77 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v75 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v89 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v88 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v79 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v76 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v10 = WiFiDeviceClientCopyProperty();
  v11 = WiFiDeviceClientCopyProperty();
  v78 = channelsCopy;
  if (v11)
  {
    v84 = v10;
    v96 = 0u;
    v97 = 0u;
    v94 = 0u;
    v95 = 0u;
    obj = v11;
    v12 = [obj countByEnumeratingWithState:&v94 objects:v100 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v95;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v95 != v14)
          {
            objc_enumerationMutation(obj);
          }

          v16 = *(*(&v94 + 1) + 8 * i);
          v17 = [v16 objectForKeyedSubscript:@"CHANNELINFO_CH_NUM"];
          v18 = [v16 objectForKeyedSubscript:@"CHANNELINFO_INDOOR_RESTRICTED"];
          v19 = [v16 objectForKeyedSubscript:@"CHANNELINFO_PASSIVE"];
          _WLLog();
          if ([v18 BOOLValue])
          {
            [v89 addObject:v17];
          }

          if ([v19 BOOLValue])
          {
            [v88 addObject:v17];
          }
        }

        v13 = [obj countByEnumeratingWithState:&v94 objects:v100 count:16];
      }

      while (v13);
    }

    CFRelease(obj);
    channelsCopy = v78;
    v10 = v84;
  }

  if (!v10)
  {
    v47 = -1;
    v48 = -1;
    goto LABEL_54;
  }

  v92 = 0u;
  v93 = 0u;
  v90 = 0u;
  v91 = 0u;
  v85 = v10;
  obja = [v85 countByEnumeratingWithState:&v90 objects:v99 count:16];
  if (!obja)
  {
    v80 = -1;
    v82 = -1;
    goto LABEL_53;
  }

  v20 = *v91;
  v21 = @"SUP_CHANNEL";
  v22 = 0x277CCA000uLL;
  v82 = -1;
  v80 = -1;
  v81 = *v91;
  do
  {
    for (j = 0; j != obja; j = j + 1)
    {
      v24 = v22;
      if (*v91 != v20)
      {
        objc_enumerationMutation(v85);
      }

      v25 = *(*(&v90 + 1) + 8 * j);
      v26 = [v25 objectForKeyedSubscript:{v21, v70, v71, v72}];
      v27 = [v25 objectForKeyedSubscript:@"SUP_CHANNEL_FLAGS"];
      unsignedIntegerValue = [v27 unsignedIntegerValue];
      v29 = unsignedIntegerValue;
      v30 = (unsignedIntegerValue & 0x100 | (unsignedIntegerValue >> 7) & 1) ^ 1;
      v31 = [v89 containsObject:v26];
      v32 = v30 | [v88 containsObject:v26] | v31;
      v70 = v26;
      v71 = v27;
      v72 = v32 != 0;
      _WLLog();
      if (!v32)
      {
        v33 = v21;
        integerValue2 = [v26 integerValue];
        v35 = integerValue2;
        if ((v29 & 8) == 0 || ((integerValue2 - 15) >= 0xFFFFFFFFFFFFFFF2 ? (v36 = integerValue2 == integerValue) : (v36 = 1), v36))
        {
          v22 = v24;
          if ((v29 & 0x10) == 0 || ((integerValue2 - 178) >= 0xFFFFFFFFFFFFFF6ELL ? (v42 = integerValue2 == integerValue) : (v42 = 1), v42))
          {
            v21 = v33;
            goto LABEL_48;
          }

          v43 = v80;
          if (v80 <= integerValue2)
          {
            v43 = integerValue2;
          }

          v80 = v43;
          v39 = [channelsCopy objectForKey:v26];
          v44 = [channelsCopy objectForKey:v26];

          v45 = *(v24 + 2992);
          if (v44)
          {
            v40 = [v45 numberWithInteger:{objc_msgSend(v39, "integerValue")}];
            v46 = [*(v24 + 2992) numberWithInteger:v35];
            [v76 setObject:v40 forKey:v46];
          }

          else
          {
            v40 = [v45 numberWithInteger:v35];
            [v75 addObject:v40];
          }

          channelsCopy = v78;
        }

        else
        {
          v37 = v82;
          if (v82 <= integerValue2)
          {
            v37 = integerValue2;
          }

          v82 = v37;
          v38 = [channelsCopy objectForKey:v26];
          v39 = v38;
          if (v38)
          {
            v40 = [*(v24 + 2992) numberWithInteger:{objc_msgSend(v38, "integerValue")}];
            v41 = [*(v24 + 2992) numberWithInteger:v35];
            [v79 setObject:v40 forKey:v41];
          }

          else
          {
            v40 = [*(v24 + 2992) numberWithInteger:v35];
            [v77 addObject:v40];
          }
        }

        v20 = v81;

        v21 = v33;
      }

      v22 = v24;
LABEL_48:
    }

    obja = [v85 countByEnumeratingWithState:&v90 objects:v99 count:16];
  }

  while (obja);
LABEL_53:

  CFRelease(v85);
  v47 = v80;
  v48 = v82;
LABEL_54:
  v49 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:0 ascending:{0, v70, v71}];
  v98 = v49;
  v50 = [MEMORY[0x277CBEA60] arrayWithObjects:&v98 count:1];

  v51 = [v77 sortedArrayUsingDescriptors:v50];
  firstObject = [v51 firstObject];
  integerValue3 = [firstObject integerValue];

  v54 = [v75 sortedArrayUsingDescriptors:v50];
  firstObject2 = [v54 firstObject];
  integerValue4 = [firstObject2 integerValue];

  v57 = [v79 keysSortedByValueUsingComparator:&__block_literal_global_11];
  firstObject3 = [v57 firstObject];
  integerValue5 = [firstObject3 integerValue];

  v60 = [v79 keysSortedByValueUsingComparator:&__block_literal_global_76];
  firstObject4 = [v60 firstObject];
  integerValue6 = [firstObject4 integerValue];

  if (integerValue5 <= 0)
  {
    v63 = v48;
  }

  else
  {
    v63 = integerValue5;
  }

  if (integerValue3 > 0)
  {
    v63 = integerValue3;
  }

  if (integerValue6 <= 0)
  {
    v64 = v47;
  }

  else
  {
    v64 = integerValue6;
  }

  if (integerValue4 > 0)
  {
    v64 = integerValue4;
  }

  if (integerValue <= 0)
  {
    if (v63 <= 1)
    {
      v63 = 1;
    }

    if (v64 <= 31)
    {
      v67 = v63;
    }

    else
    {
      v67 = v64;
    }

    v65 = v78;
    v66 = completionCopy;
  }

  else
  {
    v65 = v78;
    v66 = completionCopy;
    if (integerValue > 0xE)
    {
      if (v63 <= 0 || (integerValue - 32) >= 0x92)
      {
        v67 = 1;
      }

      else
      {
        v67 = v63;
      }
    }

    else if (v64 <= 1)
    {
      v67 = 1;
    }

    else
    {
      v67 = v64;
    }
  }

  _WLLog();
  if (v66)
  {
    v66[2](v66, v67);
  }

  v69 = *MEMORY[0x277D85DE8];
}

@end