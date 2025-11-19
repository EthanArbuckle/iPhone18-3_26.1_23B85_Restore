@interface PLSCDynamicStoreAgent
+ (id)entryEventForwardDefinitions;
+ (void)load;
- (PLSCDynamicStoreAgent)init;
- (void)initOperatorDependancies;
- (void)networkLinkQualityChanged:(__SCDynamicStore *)a3 withChangedKeys:(id)a4;
@end

@implementation PLSCDynamicStoreAgent

+ (void)load
{
  v2.receiver = a1;
  v2.super_class = &OBJC_METACLASS___PLSCDynamicStoreAgent;
  objc_msgSendSuper2(&v2, sel_load);
}

+ (id)entryEventForwardDefinitions
{
  v64[4] = *MEMORY[0x277D85DE8];
  v63[0] = @"CellularActive";
  v60 = *MEMORY[0x277D3F4E8];
  v2 = v60;
  v4 = *MEMORY[0x277D3F550];
  v58[0] = *MEMORY[0x277D3F568];
  v3 = v58[0];
  v58[1] = v4;
  v5 = MEMORY[0x277CBEC28];
  v59[0] = &unk_282C1C818;
  v59[1] = MEMORY[0x277CBEC28];
  v37 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v59 forKeys:v58 count:2];
  v62[0] = v37;
  v61 = *MEMORY[0x277D3F540];
  v6 = v61;
  v56[0] = @"Active";
  v36 = [MEMORY[0x277D3F198] sharedInstance];
  v35 = [v36 commonTypeDict_BoolFormat];
  v56[1] = @"LinkQuality";
  v57[0] = v35;
  v34 = [MEMORY[0x277D3F198] sharedInstance];
  v33 = [v34 commonTypeDict_IntegerFormat];
  v57[1] = v33;
  v32 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v57 forKeys:v56 count:2];
  v62[1] = v32;
  v31 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v62 forKeys:&v60 count:2];
  v64[0] = v31;
  v63[1] = @"WifiActive";
  v53[1] = v5;
  v54[0] = v2;
  v52[0] = v3;
  v52[1] = v4;
  v53[0] = &unk_282C1C818;
  v30 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v53 forKeys:v52 count:2];
  v54[1] = v6;
  v55[0] = v30;
  v50[0] = @"Active";
  v29 = [MEMORY[0x277D3F198] sharedInstance];
  v28 = [v29 commonTypeDict_BoolFormat];
  v50[1] = @"LinkQuality";
  v51[0] = v28;
  v27 = [MEMORY[0x277D3F198] sharedInstance];
  v26 = [v27 commonTypeDict_IntegerFormat];
  v51[1] = v26;
  v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v51 forKeys:v50 count:2];
  v55[1] = v25;
  v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v55 forKeys:v54 count:2];
  v64[1] = v24;
  v63[2] = @"HotspotActive";
  v47[1] = v5;
  v48[0] = v2;
  v46[0] = v3;
  v46[1] = v4;
  v47[0] = &unk_282C1C818;
  v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v47 forKeys:v46 count:2];
  v48[1] = v6;
  v49[0] = v23;
  v44[0] = @"Active";
  v22 = [MEMORY[0x277D3F198] sharedInstance];
  v21 = [v22 commonTypeDict_BoolFormat];
  v44[1] = @"LinkQuality";
  v45[0] = v21;
  v20 = [MEMORY[0x277D3F198] sharedInstance];
  v19 = [v20 commonTypeDict_IntegerFormat];
  v45[1] = v19;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v45 forKeys:v44 count:2];
  v49[1] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v49 forKeys:v48 count:2];
  v64[2] = v8;
  v63[3] = @"BTHotspotActive";
  v41[1] = v5;
  v42[0] = v2;
  v40[0] = v3;
  v40[1] = v4;
  v41[0] = &unk_282C1C818;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v41 forKeys:v40 count:2];
  v42[1] = v6;
  v43[0] = v9;
  v38[0] = @"Active";
  v10 = [MEMORY[0x277D3F198] sharedInstance];
  v11 = [v10 commonTypeDict_BoolFormat];
  v38[1] = @"LinkQuality";
  v39[0] = v11;
  v12 = [MEMORY[0x277D3F198] sharedInstance];
  v13 = [v12 commonTypeDict_IntegerFormat];
  v39[1] = v13;
  v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v39 forKeys:v38 count:2];
  v43[1] = v14;
  v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v43 forKeys:v42 count:2];
  v64[3] = v15;
  v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v64 forKeys:v63 count:4];

  v17 = *MEMORY[0x277D85DE8];

  return v16;
}

- (PLSCDynamicStoreAgent)init
{
  v17.receiver = self;
  v17.super_class = PLSCDynamicStoreAgent;
  v2 = [(PLAgent *)&v17 init];
  v3 = v2;
  if (v2)
  {
    v16.version = 0;
    memset(&v16.retain, 0, 24);
    v16.info = v2;
    v4 = *MEMORY[0x277CBECE8];
    v5 = SCDynamicStoreCreate(*MEMORY[0x277CBECE8], @"PLSCDynamicStoreAgent", networkLinkQualityChangeCallback, &v16);
    _dynamicStore = v5;
    v6 = [(PLOperator *)v3 workQueue];
    SCDynamicStoreSetDispatchQueue(v5, v6);

    v7 = objc_opt_new();
    v8 = objc_opt_new();
    v9 = *MEMORY[0x277CE1648];
    NetworkGlobalEntity = SCDynamicStoreKeyCreateNetworkGlobalEntity(v4, *MEMORY[0x277CE1648], *MEMORY[0x277CE1688]);
    [v7 addObject:NetworkGlobalEntity];
    v11 = SCDynamicStoreKeyCreateNetworkGlobalEntity(v4, v9, *MEMORY[0x277CE1690]);

    [v7 addObject:v11];
    v12 = *MEMORY[0x277CE1628];
    NetworkInterfaceEntity = SCDynamicStoreKeyCreateNetworkInterfaceEntity(v4, v9, *MEMORY[0x277CE1628], *MEMORY[0x277CE16A0]);

    [v8 addObject:NetworkInterfaceEntity];
    v14 = SCDynamicStoreKeyCreateNetworkInterfaceEntity(v4, v9, v12, *MEMORY[0x277CE16B0]);

    [v8 addObject:v14];
    SCDynamicStoreSetNotificationKeys(_dynamicStore, v7, v8);
  }

  return v3;
}

- (void)initOperatorDependancies
{
  v3 = [MEMORY[0x277D3F0C0] sharedInstance];
  v2 = [MEMORY[0x277CBEAA8] monotonicDate];
  [v3 createDistributionEventForwardWithDistributionID:8 withRemovingChildNodeName:@"Hotspot" withStartDate:v2];
}

- (void)networkLinkQualityChanged:(__SCDynamicStore *)a3 withChangedKeys:(id)a4
{
  v92 = *MEMORY[0x277D85DE8];
  v5 = a4;
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v6 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __67__PLSCDynamicStoreAgent_networkLinkQualityChanged_withChangedKeys___block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v6;
    if (qword_2811F7E48 != -1)
    {
      dispatch_once(&qword_2811F7E48, block);
    }

    if (_MergedGlobals_108 == 1)
    {
      v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"SCDS Changed Keys: %@", v5];
      v8 = MEMORY[0x277D3F178];
      v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Software/PLSCDynamicStoreAgent.m"];
      v10 = [v9 lastPathComponent];
      v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLSCDynamicStoreAgent networkLinkQualityChanged:withChangedKeys:]"];
      [v8 logMessage:v7 fromFile:v10 fromFunction:v11 fromLineNumber:163];

      v12 = PLLogCommon();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v91 = v7;
        _os_log_debug_impl(&dword_21A4C6000, v12, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  v13 = objc_opt_new();
  v14 = objc_opt_new();
  v15 = *MEMORY[0x277CBECE8];
  v16 = *MEMORY[0x277CE1648];
  v17 = *MEMORY[0x277CE1628];
  NetworkInterfaceEntity = SCDynamicStoreKeyCreateNetworkInterfaceEntity(*MEMORY[0x277CBECE8], *MEMORY[0x277CE1648], *MEMORY[0x277CE1628], *MEMORY[0x277CE16A0]);
  [v14 addObject:NetworkInterfaceEntity];

  v19 = SCDynamicStoreKeyCreateNetworkInterfaceEntity(v15, v16, v17, *MEMORY[0x277CE16B0]);
  [v14 addObject:v19];

  v20 = SCDynamicStoreCopyMultiple(_dynamicStore, v13, v14);
  if (!v20)
  {
    goto LABEL_48;
  }

  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v21 = objc_opt_class();
    v88[0] = MEMORY[0x277D85DD0];
    v88[1] = 3221225472;
    v88[2] = __67__PLSCDynamicStoreAgent_networkLinkQualityChanged_withChangedKeys___block_invoke_48;
    v88[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v88[4] = v21;
    if (qword_2811F7E50 != -1)
    {
      dispatch_once(&qword_2811F7E50, v88);
    }

    if (byte_2811F7E41 == 1)
    {
      v83 = v14;
      v22 = self;
      v23 = [MEMORY[0x277CCACA8] stringWithFormat:@"SCDS Dynamic store dictionary: %@", v20];
      v24 = MEMORY[0x277D3F178];
      v25 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Software/PLSCDynamicStoreAgent.m"];
      v26 = [v25 lastPathComponent];
      v27 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLSCDynamicStoreAgent networkLinkQualityChanged:withChangedKeys:]"];
      [v24 logMessage:v23 fromFile:v26 fromFunction:v27 fromLineNumber:174];

      v28 = PLLogCommon();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v91 = v23;
        _os_log_debug_impl(&dword_21A4C6000, v28, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }

      self = v22;
      v14 = v83;
    }
  }

  if ([v5 containsObject:@"State:/Network/Interface/en0/Link"])
  {
    v29 = [(__CFDictionary *)v20 allKeys];
    if (![v29 containsObject:@"State:/Network/Interface/en0/Link"])
    {
LABEL_25:

      goto LABEL_26;
    }

    v30 = [(__CFDictionary *)v20 allKeys];
    v31 = [v30 containsObject:@"State:/Network/Interface/en0/LinkQuality"];

    if (v31)
    {
      v84 = v14;
      v32 = self;
      v29 = [(PLOperator *)PLSCDynamicStoreAgent entryKeyForType:*MEMORY[0x277D3F5D0] andName:@"WifiActive"];
      v33 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v29];
      v34 = [(__CFDictionary *)v20 objectForKeyedSubscript:@"State:/Network/Interface/en0/Link"];
      v35 = [v34 objectForKeyedSubscript:@"Active"];
      v36 = [v35 isEqual:&unk_282C12528];

      if (v36)
      {
        v37 = MEMORY[0x277CBEC38];
      }

      else
      {
        v37 = MEMORY[0x277CBEC28];
      }

      [v33 setObject:v37 forKeyedSubscript:@"Active"];
      v38 = [(__CFDictionary *)v20 objectForKeyedSubscript:@"State:/Network/Interface/en0/LinkQuality"];

      if (v38)
      {
        v39 = [(__CFDictionary *)v20 objectForKeyedSubscript:@"State:/Network/Interface/en0/LinkQuality"];
        v40 = [v39 objectForKeyedSubscript:@"LinkQuality"];
        [v33 setObject:v40 forKeyedSubscript:@"LinkQuality"];
      }

      self = v32;
      [(PLOperator *)v32 logEntry:v33];

      v14 = v84;
      goto LABEL_25;
    }
  }

LABEL_26:
  if ([v5 containsObject:@"State:/Network/Interface/ap1/Link"])
  {
    v41 = [(__CFDictionary *)v20 allKeys];
    v42 = [v41 containsObject:@"State:/Network/Interface/ap1/Link"];

    if (v42)
    {
      v43 = v14;
      v44 = [(PLOperator *)PLSCDynamicStoreAgent entryKeyForType:*MEMORY[0x277D3F5D0] andName:@"HotspotActive"];
      v45 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v44];
      v46 = [(__CFDictionary *)v20 objectForKeyedSubscript:@"State:/Network/Interface/ap1/Link"];
      v47 = [v46 objectForKeyedSubscript:@"Active"];
      v48 = [v47 isEqual:&unk_282C12528];

      if (v48)
      {
        [v45 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"Active"];
        v49 = [MEMORY[0x277D3F0C0] sharedInstance];
        v50 = [v45 entryDate];
        [v49 createDistributionEventForwardWithDistributionID:41 withAddingChildNodeName:@"Hotspot" withStartDate:v50];
      }

      else
      {
        [v45 setObject:MEMORY[0x277CBEC28] forKeyedSubscript:@"Active"];
        v49 = [MEMORY[0x277D3F0C0] sharedInstance];
        v50 = [v45 entryDate];
        [v49 createDistributionEventForwardWithDistributionID:41 withRemovingChildNodeName:@"Hotspot" withStartDate:v50];
      }

      [(PLOperator *)self logEntry:v45];
      v14 = v43;
    }
  }

  if (([v5 containsObject:@"State:/Network/Interface/pdp_ip0/Link"] & 1) != 0 || objc_msgSend(v5, "containsObject:", @"State:/Network/Interface/pdp_ip0/LinkQuality"))
  {
    v51 = [(__CFDictionary *)v20 allKeys];
    v52 = [v51 containsObject:@"State:/Network/Interface/pdp_ip0/LinkQuality"];

    if (v52)
    {
      v85 = [(PLOperator *)PLSCDynamicStoreAgent entryKeyForType:*MEMORY[0x277D3F5D0] andName:@"CellularActive"];
      v53 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v85];
      v54 = [(__CFDictionary *)v20 objectForKeyedSubscript:@"State:/Network/Interface/pdp_ip0/LinkQuality"];
      [v54 objectForKeyedSubscript:@"LinkQuality"];
      v55 = v13;
      v56 = v5;
      v58 = v57 = self;
      v59 = [v58 isEqual:&unk_282C12540];

      self = v57;
      v5 = v56;
      v13 = v55;

      if (v59)
      {
        v60 = MEMORY[0x277CBEC28];
      }

      else
      {
        v60 = MEMORY[0x277CBEC38];
      }

      [v53 setObject:v60 forKeyedSubscript:@"Active"];
      v61 = [(__CFDictionary *)v20 objectForKeyedSubscript:@"State:/Network/Interface/pdp_ip0/LinkQuality"];
      v62 = [v61 objectForKeyedSubscript:@"LinkQuality"];
      [v53 setObject:v62 forKeyedSubscript:@"LinkQuality"];

      [(PLOperator *)self logEntry:v53];
    }
  }

  if ([v5 containsObject:@"State:/Network/Interface/en2/Link"])
  {
    v63 = [(PLOperator *)PLSCDynamicStoreAgent entryKeyForType:*MEMORY[0x277D3F5D0] andName:@"BTHotspotActive"];
    v64 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v63];
    v65 = [(__CFDictionary *)v20 allKeys];
    v66 = [v65 containsObject:@"State:/Network/Interface/en2/Link"];

    if (v66)
    {
      v67 = [(__CFDictionary *)v20 objectForKeyedSubscript:@"State:/Network/Interface/en2/Link"];
      v68 = [v67 objectForKeyedSubscript:@"Active"];
      v69 = [v68 isEqual:&unk_282C12528];

      if (!v69)
      {
        [v64 setObject:MEMORY[0x277CBEC28] forKeyedSubscript:@"Active"];
        if ([MEMORY[0x277D3F180] debugEnabled])
        {
          v75 = objc_opt_class();
          v87[0] = MEMORY[0x277D85DD0];
          v87[1] = 3221225472;
          v87[2] = __67__PLSCDynamicStoreAgent_networkLinkQualityChanged_withChangedKeys___block_invoke_77;
          v87[3] = &__block_descriptor_40_e5_v8__0lu32l8;
          v87[4] = v75;
          if (qword_2811F7E58 != -1)
          {
            dispatch_once(&qword_2811F7E58, v87);
          }

          if (byte_2811F7E42 == 1)
          {
            v82 = self;
            v86 = v14;
            v76 = [MEMORY[0x277CCACA8] stringWithFormat:@"WARNING: Interface en2 keys exist, but active=no. Expected en2.active=yes whenever en2 interface exists"];
            v77 = MEMORY[0x277D3F178];
            v78 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Software/PLSCDynamicStoreAgent.m"];
            v79 = [v78 lastPathComponent];
            v80 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLSCDynamicStoreAgent networkLinkQualityChanged:withChangedKeys:]"];
            [v77 logMessage:v76 fromFile:v79 fromFunction:v80 fromLineNumber:239];

            v81 = PLLogCommon();
            if (os_log_type_enabled(v81, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412290;
              v91 = v76;
              _os_log_debug_impl(&dword_21A4C6000, v81, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
            }

            self = v82;
            v14 = v86;
          }
        }

        goto LABEL_45;
      }

      v70 = MEMORY[0x277CBEC38];
    }

    else
    {
      v70 = MEMORY[0x277CBEC28];
    }

    [v64 setObject:v70 forKeyedSubscript:@"Active"];
LABEL_45:
    v71 = [(__CFDictionary *)v20 objectForKeyedSubscript:@"State:/Network/Interface/en2/LinkQuality"];

    if (v71)
    {
      v72 = [(__CFDictionary *)v20 objectForKeyedSubscript:@"State:/Network/Interface/en2/LinkQuality"];
      v73 = [v72 objectForKeyedSubscript:@"LinkQuality"];
      [v64 setObject:v73 forKeyedSubscript:@"LinkQuality"];
    }

    [(PLOperator *)self logEntry:v64];
  }

LABEL_48:

  v74 = *MEMORY[0x277D85DE8];
}

uint64_t __67__PLSCDynamicStoreAgent_networkLinkQualityChanged_withChangedKeys___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  _MergedGlobals_108 = result;
  return result;
}

uint64_t __67__PLSCDynamicStoreAgent_networkLinkQualityChanged_withChangedKeys___block_invoke_48(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F7E41 = result;
  return result;
}

uint64_t __67__PLSCDynamicStoreAgent_networkLinkQualityChanged_withChangedKeys___block_invoke_77(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F7E42 = result;
  return result;
}

@end