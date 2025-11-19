@interface WFScanRequest
+ (id)scanRequestForChannels:(id)a3;
+ (id)scanRequestForSSID:(id)a3 channels:(id)a4;
- (BOOL)_channelListIncludesTwoFour:(id)a3;
- (WFScanRequest)init;
- (WFScanRequest)initWithSSID:(id)a3 channels:(id)a4;
- (id)_channelListFromArrayOfChannels:(id)a3;
- (id)_defaultScanDictionary;
- (id)cScanParameters;
- (id)description;
- (id)scanParameters;
@end

@implementation WFScanRequest

+ (id)scanRequestForSSID:(id)a3 channels:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (v5)
  {
    v7 = [[WFScanRequest alloc] initWithSSID:v5 channels:v6];
  }

  else
  {
    +[WFScanRequest scanRequestForSSID:channels:];
    v7 = 0;
  }

  return v7;
}

+ (id)scanRequestForChannels:(id)a3
{
  v3 = a3;
  v4 = [[WFScanRequest alloc] initWithSSID:0 channels:v3];

  return v4;
}

- (WFScanRequest)initWithSSID:(id)a3 channels:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = WFScanRequest;
  v9 = [(WFScanRequest *)&v14 init];
  v10 = v9;
  if (!v9)
  {
    goto LABEL_6;
  }

  if (!v8)
  {
    [WFScanRequest initWithSSID:channels:];
LABEL_6:

    v10 = 0;
    goto LABEL_4;
  }

  objc_storeStrong(&v9->_ssid, a3);
  objc_storeStrong(&v10->_channels, a4);
  v10->_channelListIncludesTwoFour = [(WFScanRequest *)v10 _channelListIncludesTwoFour:v8];
  v10->_rssiThreshold = -80;
  v10->_dwellTime = 0;
  v11 = [MEMORY[0x277CCAD78] UUID];
  UUID = v10->_UUID;
  v10->_UUID = v11;

  *&v10->_applyRssiThresholdFilter = 1;
  v10->_lowPriorityScan = 0;
LABEL_4:

  return v10;
}

- (WFScanRequest)init
{
  v2 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE658] reason:@"-[WFScanRequest init] unavailable" userInfo:0];
  objc_exception_throw(v2);
}

- (id)scanParameters
{
  v27 = *MEMORY[0x277D85DE8];
  v17 = [(WFScanRequest *)self _defaultScanDictionary];
  v19 = [MEMORY[0x277CBEB18] array];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  obj = [(WFScanRequest *)self channels];
  v3 = [obj countByEnumeratingWithState:&v20 objects:v26 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v21;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v21 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v20 + 1) + 8 * i);
        v24[0] = @"CHANNEL";
        v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v7, "channel")}];
        v24[1] = @"CHANNEL_FLAGS";
        v25[0] = v8;
        v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v7, "flags")}];
        v25[1] = v9;
        v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:v24 count:2];
        [v19 addObject:v10];
      }

      v4 = [obj countByEnumeratingWithState:&v20 objects:v26 count:16];
    }

    while (v4);
  }

  [v17 setObject:v19 forKey:@"SCAN_CHANNELS"];
  v11 = [(WFScanRequest *)self ssid];

  if (v11)
  {
    v12 = [(WFScanRequest *)self ssid];
    [v17 setObject:v12 forKey:@"SSID_STR"];
  }

  if (![(WFScanRequest *)self applyRssiThresholdFilter])
  {
    [v17 removeObjectForKey:@"SCAN_RSSI_THRESHOLD"];
    v13 = [MEMORY[0x277CCABB0] numberWithInteger:0];
    [v17 setObject:v13 forKey:@"SCAN_RSSI_THRESHOLD"];
  }

  if ([(WFScanRequest *)self dwellTime])
  {
    v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[WFScanRequest dwellTime](self, "dwellTime")}];
    [v17 setObject:v14 forKey:@"SCAN_DWELL_TIME"];
  }

  if ([(WFScanRequest *)self includeBSSList])
  {
    [v17 setObject:MEMORY[0x277CBEC38] forKey:@"SCAN_INC_BSS_LIST"];
  }

  if ([(WFScanRequest *)self lowPriorityScan])
  {
    [v17 setObject:MEMORY[0x277CBEC38] forKey:@"SCAN_LOW_PRIORITY"];
  }

  v15 = *MEMORY[0x277D85DE8];

  return v17;
}

- (id)_defaultScanDictionary
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v4 = [MEMORY[0x277CCABB0] numberWithInt:1];
  [v3 setObject:v4 forKey:@"SCAN_MERGE"];

  v5 = [MEMORY[0x277CCABB0] numberWithInt:1];
  [v3 setObject:v5 forKey:@"MONITOR_QBSS_LOAD"];

  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:1];
  [v3 setObject:v6 forKey:@"SCAN_TYPE"];

  v7 = [MEMORY[0x277CCABB0] numberWithInt:1];
  [v3 setObject:v7 forKey:@"SCAN_NUM_SCANS"];

  v8 = [MEMORY[0x277CCABB0] numberWithInteger:{-[WFScanRequest rssiThreshold](self, "rssiThreshold")}];
  [v3 setObject:v8 forKey:@"SCAN_RSSI_THRESHOLD"];

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x277CCAB68];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(WFScanRequest *)self ssid];
  if (v6)
  {
    v7 = @"directed";
  }

  else
  {
    v7 = @"broadcast";
  }

  v8 = [(WFScanRequest *)self UUID];
  v9 = [v8 UUIDString];
  v10 = [v9 substringToIndex:5];
  v11 = [(WFScanRequest *)self channels];
  v12 = [(WFScanRequest *)self _channelListFromArrayOfChannels:v11];
  v13 = [v3 stringWithFormat:@"<%@ : %p type='%@' uuid='%@' channels=[%@]", v5, self, v7, v10, v12];

  if (![(WFScanRequest *)self applyRssiThresholdFilter])
  {
    [v13 appendString:@" rssiFilter=0"];
  }

  if ([(WFScanRequest *)self dwellTime])
  {
    [v13 appendFormat:@" dwellTime=%lu", -[WFScanRequest dwellTime](self, "dwellTime")];
  }

  if ([(WFScanRequest *)self lowPriorityScan])
  {
    [v13 appendString:@" lowPriority=1"];
  }

  [v13 appendString:@">"];

  return v13;
}

- (id)_channelListFromArrayOfChannels:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [MEMORY[0x277CCAB68] string];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v15;
    do
    {
      v10 = 0;
      v11 = v8 + 1;
      do
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v5);
        }

        [v4 appendFormat:@"%d", objc_msgSend(*(*(&v14 + 1) + 8 * v10), "channel")];
        if (v11 < [v5 count])
        {
          [v4 appendString:{@", "}];
        }

        ++v10;
        ++v11;
      }

      while (v7 != v10);
      v8 += v7;
      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  v12 = *MEMORY[0x277D85DE8];

  return v4;
}

- (id)cScanParameters
{
  v3 = objc_alloc_init(MEMORY[0x277D02B48]);
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__11;
  v13 = __Block_byref_object_dispose__11;
  v14 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v4 = [(WFScanRequest *)self channels];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __32__WFScanRequest_cScanParameters__block_invoke;
  v8[3] = &unk_279EBE6A0;
  v8[4] = &v9;
  [v4 enumerateObjectsUsingBlock:v8];

  [v3 setChannels:v10[5]];
  [v3 setMergeScanResults:1];
  [v3 setScanType:1];
  [v3 setNumberOfScans:1];
  [v3 setMinimumRSSI:{-[WFScanRequest rssiThreshold](self, "rssiThreshold")}];
  v5 = [(WFScanRequest *)self ssid];

  if (v5)
  {
    v6 = [(WFScanRequest *)self ssid];
    [v3 setSSID:v6];
  }

  if (![(WFScanRequest *)self applyRssiThresholdFilter])
  {
    [v3 setMinimumRSSI:0];
  }

  if ([(WFScanRequest *)self dwellTime])
  {
    [v3 setDwellTime:{-[WFScanRequest dwellTime](self, "dwellTime")}];
  }

  [v3 setANQPElementIDListForPasspointScanResults:&unk_288305038];
  [v3 setIncludeMatchingKnownNetworkProfiles:1];
  _Block_object_dispose(&v9, 8);

  return v3;
}

void __32__WFScanRequest_cScanParameters__block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277D02B00];
  v4 = a2;
  v6 = objc_alloc_init(v3);
  [v6 setChannel:{objc_msgSend(v4, "channel")}];
  v5 = [v4 flags];

  [v6 setFlags:v5];
  [*(*(*(a1 + 32) + 8) + 40) addObject:v6];
}

- (BOOL)_channelListIncludesTwoFour:(id)a3
{
  v3 = a3;
  v4 = v3;
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  if (v3)
  {
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __45__WFScanRequest__channelListIncludesTwoFour___block_invoke;
    v7[3] = &unk_279EBE6A0;
    v7[4] = &v8;
    [v3 enumerateObjectsUsingBlock:v7];
    v5 = *(v9 + 24);
  }

  else
  {
    v5 = 0;
  }

  _Block_object_dispose(&v8, 8);

  return v5 & 1;
}

unint64_t __45__WFScanRequest__channelListIncludesTwoFour___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  result = [a2 channel];
  if (result <= 0xC)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
    *a4 = 1;
  }

  return result;
}

+ (void)scanRequestForSSID:channels:.cold.1()
{
  v0 = WFLogForCategory(0);
  v1 = OSLogForWFLogLevel(1uLL);
  if (WFCurrentLogLevel() && v0 && os_log_type_enabled(v0, v1))
  {
    OUTLINED_FUNCTION_4_0(&dword_273ECD000, v2, v3, "Missing SSID for directed scan", v4, v5, v6, v7, 0);
  }
}

- (void)initWithSSID:channels:.cold.1()
{
  v0 = WFLogForCategory(0);
  v1 = OSLogForWFLogLevel(1uLL);
  if (WFCurrentLogLevel() && v0 && os_log_type_enabled(v0, v1))
  {
    OUTLINED_FUNCTION_4_0(&dword_273ECD000, v2, v3, "Missing channel array for scan request", v4, v5, v6, v7, 0);
  }
}

@end