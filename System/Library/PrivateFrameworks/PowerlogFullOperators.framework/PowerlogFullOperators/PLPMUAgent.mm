@interface PLPMUAgent
+ (id)entryEventPointDefinitions;
+ (void)load;
- (PLPMUAgent)init;
- (void)init;
- (void)initOperatorDependancies;
- (void)logEventPointSensors;
@end

@implementation PLPMUAgent

+ (void)load
{
  v2.receiver = self;
  v2.super_class = &OBJC_METACLASS___PLPMUAgent;
  objc_msgSendSuper2(&v2, sel_load);
}

+ (id)entryEventPointDefinitions
{
  v37[1] = *MEMORY[0x277D85DE8];
  v36 = kPLPMUAgentSensors;
  v34[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F4D8];
  v32[0] = *MEMORY[0x277D3F568];
  v32[1] = v2;
  v33[0] = &unk_2870FEE30;
  v33[1] = MEMORY[0x277CBEC38];
  v32[2] = *MEMORY[0x277D3F4F8];
  v33[2] = MEMORY[0x277CBEC38];
  v27 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v33 forKeys:v32 count:3];
  v35[0] = v27;
  v34[1] = *MEMORY[0x277D3F540];
  v30[0] = @"C-ich";
  mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_RealFormat = [mEMORY[0x277D3F198] commonTypeDict_RealFormat];
  v31[0] = commonTypeDict_RealFormat;
  v30[1] = @"C-vbus";
  mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_RealFormat2 = [mEMORY[0x277D3F198]2 commonTypeDict_RealFormat];
  v31[1] = commonTypeDict_RealFormat2;
  v30[2] = @"C-ich_avg";
  mEMORY[0x277D3F198]3 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_RealFormat3 = [mEMORY[0x277D3F198]3 commonTypeDict_RealFormat];
  v31[2] = commonTypeDict_RealFormat3;
  v30[3] = @"V-vbus";
  mEMORY[0x277D3F198]4 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_RealFormat4 = [mEMORY[0x277D3F198]4 commonTypeDict_RealFormat];
  v31[3] = commonTypeDict_RealFormat4;
  v30[4] = @"V-adc_in7";
  mEMORY[0x277D3F198]5 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_RealFormat5 = [mEMORY[0x277D3F198]5 commonTypeDict_RealFormat];
  v31[4] = commonTypeDict_RealFormat5;
  v30[5] = @"V-vbat";
  mEMORY[0x277D3F198]6 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_RealFormat6 = [mEMORY[0x277D3F198]6 commonTypeDict_RealFormat];
  v31[5] = commonTypeDict_RealFormat6;
  v30[6] = @"V-vcc_main";
  mEMORY[0x277D3F198]7 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_RealFormat7 = [mEMORY[0x277D3F198]7 commonTypeDict_RealFormat];
  v31[6] = commonTypeDict_RealFormat7;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v31 forKeys:v30 count:7];
  v35[1] = v5;
  v34[2] = *MEMORY[0x277D3F500];
  v28[0] = @"value";
  mEMORY[0x277D3F198]8 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_RealFormat8 = [mEMORY[0x277D3F198]8 commonTypeDict_RealFormat];
  v28[1] = @"unit";
  v29[0] = commonTypeDict_RealFormat8;
  mEMORY[0x277D3F198]9 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat = [mEMORY[0x277D3F198]9 commonTypeDict_StringFormat];
  v29[1] = commonTypeDict_StringFormat;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v29 forKeys:v28 count:2];
  v35[2] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v35 forKeys:v34 count:3];
  v37[0] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v37 forKeys:&v36 count:1];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

- (PLPMUAgent)init
{
  v104[2] = *MEMORY[0x277D85DE8];
  if ([MEMORY[0x277D3F208] isArchARM])
  {
    v98.receiver = self;
    v98.super_class = PLPMUAgent;
    v3 = [(PLAgent *)&v98 init];
    if (!v3)
    {
LABEL_51:
      self = v3;
      selfCopy = self;
      goto LABEL_52;
    }

    v4 = *MEMORY[0x277CBECE8];
    v5 = IOHIDEventSystemClientCreate();
    v3->hidEventSystem = v5;
    if (!v5)
    {
      if (![MEMORY[0x277D3F180] debugEnabled])
      {
        goto LABEL_51;
      }

      v25 = objc_opt_class();
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __18__PLPMUAgent_init__block_invoke;
      block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      block[4] = v25;
      if (init_defaultOnce != -1)
      {
        dispatch_once(&init_defaultOnce, block);
      }

      if (init_classDebugEnabled != 1)
      {
        goto LABEL_51;
      }

      v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"PMU: could not create HIDEventSystem"];
      v26 = MEMORY[0x277D3F178];
      v27 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Hardware/PLPMUAgent.m"];
      lastPathComponent = [v27 lastPathComponent];
      v29 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLPMUAgent init]"];
      [v26 logMessage:v10 fromFile:lastPathComponent fromFunction:v29 fromLineNumber:119];

      v13 = PLLogCommon();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        [(PLPMUAgent *)v10 init:v13];
      }

      goto LABEL_50;
    }

    v6 = objc_opt_new();
    matchingSensors = v3->matchingSensors;
    v3->matchingSensors = v6;

    v103[0] = @"PrimaryUsagePage";
    v8 = [MEMORY[0x277CCABB0] numberWithInt:65288];
    v103[1] = @"PrimaryUsage";
    v104[0] = v8;
    v9 = [MEMORY[0x277CCABB0] numberWithInt:3];
    v104[1] = v9;
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v104 forKeys:v103 count:2];

    hidEventSystem = v3->hidEventSystem;
    IOHIDEventSystemClientSetMatching();
    v12 = IOHIDEventSystemClientCopyServices(v3->hidEventSystem);
    v13 = v12;
    v84 = v12;
    if (v12)
    {
      v94 = 0u;
      v95 = 0u;
      v92 = 0u;
      v93 = 0u;
      obj = v12;
      v14 = [(__CFArray *)obj countByEnumeratingWithState:&v92 objects:v102 count:16];
      if (v14)
      {
        v15 = v14;
        v82 = v10;
        v16 = *v93;
        do
        {
          for (i = 0; i != v15; ++i)
          {
            if (*v93 != v16)
            {
              objc_enumerationMutation(obj);
            }

            v18 = *(*(&v92 + 1) + 8 * i);
            v19 = IOHIDServiceClientCopyProperty(v18, @"Product");
            v20 = v19;
            if (v19)
            {
              v21 = v3->matchingSensors;
              [v19 stringByReplacingOccurrencesOfString:@"PMU " withString:@"V-"];
              v23 = v22 = v3;
              [(NSMutableDictionary *)v21 setObject:v18 forKey:v23];

              v3 = v22;
            }
          }

          v15 = [(__CFArray *)obj countByEnumeratingWithState:&v92 objects:v102 count:16];
        }

        while (v15);
        v10 = v82;
        v13 = v84;
      }
    }

    else
    {
      if (![MEMORY[0x277D3F180] debugEnabled])
      {
        goto LABEL_30;
      }

      v36 = objc_opt_class();
      v96[0] = MEMORY[0x277D85DD0];
      v96[1] = 3221225472;
      v96[2] = __18__PLPMUAgent_init__block_invoke_60;
      v96[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v96[4] = v36;
      if (init_defaultOnce_58 != -1)
      {
        dispatch_once(&init_defaultOnce_58, v96);
      }

      if (init_classDebugEnabled_59 != 1)
      {
LABEL_30:
        v100[0] = @"PrimaryUsagePage";
        v49 = [MEMORY[0x277CCABB0] numberWithInt:65288];
        v100[1] = @"PrimaryUsage";
        v101[0] = v49;
        v50 = [MEMORY[0x277CCABB0] numberWithInt:2];
        v101[1] = v50;
        v51 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v101 forKeys:v100 count:2];

        v52 = v3->hidEventSystem;
        IOHIDEventSystemClientSetMatching();
        v53 = IOHIDEventSystemClientCopyServices(v3->hidEventSystem);
        v54 = v53;
        if (v53)
        {
          v55 = v10;
          v89 = 0u;
          v90 = 0u;
          v87 = 0u;
          v88 = 0u;
          v56 = v53;
          v57 = [(__CFArray *)v56 countByEnumeratingWithState:&v87 objects:v99 count:16];
          if (v57)
          {
            v58 = v57;
            v81 = v54;
            v83 = v55;
            obja = v51;
            v59 = *v88;
            do
            {
              for (j = 0; j != v58; ++j)
              {
                if (*v88 != v59)
                {
                  objc_enumerationMutation(v56);
                }

                v61 = *(*(&v87 + 1) + 8 * j);
                v62 = IOHIDServiceClientCopyProperty(v61, @"Product");
                v63 = v62;
                if (v62)
                {
                  v64 = v3->matchingSensors;
                  v65 = [v62 stringByReplacingOccurrencesOfString:@"PMU " withString:@"C-"];
                  [(NSMutableDictionary *)v64 setObject:v61 forKey:v65];
                }
              }

              v58 = [(__CFArray *)v56 countByEnumeratingWithState:&v87 objects:v99 count:16];
            }

            while (v58);
            v55 = v83;
            v13 = v84;
            v51 = obja;
            v54 = v81;
          }
        }

        else
        {
          if (![MEMORY[0x277D3F180] debugEnabled])
          {
            goto LABEL_49;
          }

          v66 = objc_opt_class();
          v91[0] = MEMORY[0x277D85DD0];
          v91[1] = 3221225472;
          v91[2] = __18__PLPMUAgent_init__block_invoke_75;
          v91[3] = &__block_descriptor_40_e5_v8__0lu32l8;
          v91[4] = v66;
          if (init_defaultOnce_73 != -1)
          {
            dispatch_once(&init_defaultOnce_73, v91);
          }

          if (init_classDebugEnabled_74 != 1)
          {
            goto LABEL_49;
          }

          v55 = v10;
          v67 = [MEMORY[0x277CCACA8] stringWithFormat:@"ERROR: PMU: Could not find any current sensors"];
          v68 = MEMORY[0x277D3F178];
          v69 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Hardware/PLPMUAgent.m"];
          lastPathComponent2 = [v69 lastPathComponent];
          v71 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLPMUAgent init]"];
          v56 = v67;
          [v68 logMessage:v67 fromFile:lastPathComponent2 fromFunction:v71 fromLineNumber:149];

          v72 = PLLogCommon();
          if (os_log_type_enabled(v72, OS_LOG_TYPE_DEBUG))
          {
            [(PLPMUAgent *)v67 init:v72];
          }

          v13 = v84;
        }

        v10 = v55;
LABEL_49:

LABEL_50:
        goto LABEL_51;
      }

      v37 = [MEMORY[0x277CCACA8] stringWithFormat:@"ERROR: PMU: Could not find any voltage sensors"];
      v38 = MEMORY[0x277D3F178];
      v39 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Hardware/PLPMUAgent.m"];
      lastPathComponent3 = [v39 lastPathComponent];
      v41 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLPMUAgent init]"];
      obj = v37;
      [v38 logMessage:v37 fromFile:lastPathComponent3 fromFunction:v41 fromLineNumber:131];

      v42 = PLLogCommon();
      if (os_log_type_enabled(v42, OS_LOG_TYPE_DEBUG))
      {
        [(PLPMUAgent *)v37 init:v42];
      }

      v13 = 0;
    }

    goto LABEL_30;
  }

  selfCopy = 0;
LABEL_52:

  v79 = *MEMORY[0x277D85DE8];
  return selfCopy;
}

uint64_t __18__PLPMUAgent_init__block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  init_classDebugEnabled = result;
  return result;
}

uint64_t __18__PLPMUAgent_init__block_invoke_60(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  init_classDebugEnabled_59 = result;
  return result;
}

uint64_t __18__PLPMUAgent_init__block_invoke_75(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  init_classDebugEnabled_74 = result;
  return result;
}

- (void)initOperatorDependancies
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __38__PLPMUAgent_initOperatorDependancies__block_invoke;
  v4[3] = &unk_279A58F10;
  v4[4] = self;
  v3 = [MEMORY[0x277D3F1A8] significantBatteryChangeNotificationWithOperator:self withBlock:v4];
  [(PLPMUAgent *)self setBatteryLevelChanged:v3];
}

- (void)logEventPointSensors
{
  v20 = *MEMORY[0x277D85DE8];
  if (self->matchingSensors)
  {
    v14 = [(PLOperator *)PLPMUAgent entryKeyForType:*MEMORY[0x277D3F5E8] andName:kPLPMUAgentSensors];
    v3 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v14];
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    allKeys = [(NSMutableDictionary *)self->matchingSensors allKeys];
    v5 = [allKeys countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v16;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v16 != v7)
          {
            objc_enumerationMutation(allKeys);
          }

          v9 = *(*(&v15 + 1) + 8 * i);
          [(NSMutableDictionary *)self->matchingSensors objectForKeyedSubscript:v9];

          v10 = IOHIDServiceClientCopyEvent();
          if (v10)
          {
            v11 = v10;
            IOHIDEventGetFloatValue();
            v12 = [MEMORY[0x277CCABB0] numberWithDouble:?];
            [v3 setObject:v12 forKeyedSubscript:v9];

            CFRelease(v11);
          }
        }

        v6 = [allKeys countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v6);
    }

    [(PLOperator *)self logEntry:v3];
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)init
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0(&dword_25EE16000, a2, a3, "%@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

@end