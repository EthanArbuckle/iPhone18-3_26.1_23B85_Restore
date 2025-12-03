@interface PLWatchKitAgent
+ (id)entryEventPointDefinitions;
+ (void)load;
- (id)appNameForWatchAppExtension:(id)extension;
- (void)initOperatorDependancies;
@end

@implementation PLWatchKitAgent

+ (void)load
{
  v2 = MEMORY[0x277D3F170];
  v3 = objc_opt_class();

  [v2 registerOperator:v3];
}

+ (id)entryEventPointDefinitions
{
  v24[1] = *MEMORY[0x277D85DE8];
  v23 = @"WatchKitTransport";
  v21[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F4A0];
  v19[0] = *MEMORY[0x277D3F568];
  v19[1] = v2;
  v20[0] = &unk_282C1C7F8;
  v20[1] = MEMORY[0x277CBEC38];
  v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:v19 count:2];
  v22[0] = v16;
  v21[1] = *MEMORY[0x277D3F540];
  v17[0] = @"action";
  mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat = [mEMORY[0x277D3F198] commonTypeDict_StringFormat];
  v18[0] = commonTypeDict_StringFormat;
  v17[1] = @"bundleID";
  mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat_withBundleID = [mEMORY[0x277D3F198]2 commonTypeDict_StringFormat_withBundleID];
  v18[1] = commonTypeDict_StringFormat_withBundleID;
  v17[2] = @"length";
  mEMORY[0x277D3F198]3 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198]3 commonTypeDict_IntegerFormat];
  v18[2] = commonTypeDict_IntegerFormat;
  v17[3] = @"count";
  mEMORY[0x277D3F198]4 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat2 = [mEMORY[0x277D3F198]4 commonTypeDict_IntegerFormat];
  v18[3] = commonTypeDict_IntegerFormat2;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:4];
  v22[1] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:v21 count:2];
  v24[0] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:&v23 count:1];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

- (void)initOperatorDependancies
{
  if (([MEMORY[0x277D3F208] isHomePod] & 1) == 0)
  {
    v3 = objc_alloc(MEMORY[0x277D3F270]);
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __43__PLWatchKitAgent_initOperatorDependancies__block_invoke;
    v6[3] = &unk_27825A1D8;
    v6[4] = self;
    v4 = [v3 initWithOperator:self withRegistration:&unk_282C18F30 withBlock:v6];
    xpcHandler = self->_xpcHandler;
    self->_xpcHandler = v4;
  }
}

void __43__PLWatchKitAgent_initOperatorDependancies__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v58 = *MEMORY[0x277D85DE8];
  v7 = a4;
  v8 = a5;
  if ([v7 isEqualToString:@"SP-transport"])
  {
    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    obj = v8;
    v33 = [obj countByEnumeratingWithState:&v46 objects:v57 count:16];
    if (v33)
    {
      v30 = v8;
      v31 = v7;
      v9 = 0x278257000uLL;
      v32 = *v47;
      v38 = *MEMORY[0x277D3F5E8];
      v10 = @"action";
      v11 = @"application";
      v36 = a1;
      do
      {
        v12 = 0;
        do
        {
          if (*v47 != v32)
          {
            objc_enumerationMutation(obj);
          }

          v35 = v12;
          v13 = [obj objectForKeyedSubscript:*(*(&v46 + 1) + 8 * v12), v30, v31];
          v42 = 0u;
          v43 = 0u;
          v44 = 0u;
          v45 = 0u;
          v37 = v13;
          v40 = [v13 countByEnumeratingWithState:&v42 objects:v56 count:16];
          if (v40)
          {
            v39 = *v43;
            do
            {
              for (i = 0; i != v40; ++i)
              {
                if (*v43 != v39)
                {
                  objc_enumerationMutation(v37);
                }

                v15 = *(*(&v42 + 1) + 8 * i);
                v41 = [*(v9 + 3888) entryKeyForType:v38 andName:@"WatchKitTransport"];
                v16 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v41];
                v17 = [v15 objectForKeyedSubscript:v10];
                [v16 setObject:v17 forKeyedSubscript:v10];

                v18 = [v15 objectForKeyedSubscript:v11];
                [v16 setObject:v18 forKeyedSubscript:@"bundleID"];

                v19 = [v15 objectForKeyedSubscript:@"length"];
                [v16 setObject:v19 forKeyedSubscript:@"length"];

                v20 = [v15 objectForKeyedSubscript:@"count"];
                [v16 setObject:v20 forKeyedSubscript:@"count"];

                [*(a1 + 32) logEntry:v16];
                v21 = PLLogWatchKit();
                if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
                {
                  *buf = 138412290;
                  v51 = v16;
                  _os_log_debug_impl(&dword_21A4C6000, v21, OS_LOG_TYPE_DEBUG, "SP-transport Entry %@", buf, 0xCu);
                }

                if (([MEMORY[0x277D3F208] isHomePod] & 1) == 0)
                {
                  v22 = [v16 objectForKeyedSubscript:@"bundleID"];
                  if (v22)
                  {
                    v23 = [MEMORY[0x277D3F0C0] sharedInstance];
                    v24 = [*(a1 + 32) appNameForWatchAppExtension:v22];
                    v54 = v24;
                    v55 = &unk_282C1C808;
                    [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v55 forKeys:&v54 count:1];
                    v25 = v11;
                    v27 = v26 = v10;
                    v28 = [v16 entryDate];
                    [v23 createDistributionEventPointWithDistributionID:32 withChildNodeNameToWeight:v27 withStartDate:v28];

                    v10 = v26;
                    v11 = v25;

                    a1 = v36;
                    v9 = 0x278257000;
                  }
                }
              }

              v40 = [v37 countByEnumeratingWithState:&v42 objects:v56 count:16];
            }

            while (v40);
          }

          v12 = v35 + 1;
        }

        while (v35 + 1 != v33);
        v33 = [obj countByEnumeratingWithState:&v46 objects:v57 count:16];
      }

      while (v33);
      v8 = v30;
      v7 = v31;
    }
  }

  else
  {
    obj = PLLogWatchKit();
    if (os_log_type_enabled(obj, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412546;
      v51 = v7;
      v52 = 2112;
      v53 = v8;
      _os_log_debug_impl(&dword_21A4C6000, obj, OS_LOG_TYPE_DEBUG, "New event: %@ = %@", buf, 0x16u);
    }
  }

  v29 = *MEMORY[0x277D85DE8];
}

- (id)appNameForWatchAppExtension:(id)extension
{
  extensionCopy = extension;
  if ([extensionCopy hasSuffix:@".watchapp"])
  {
    v4 = [extensionCopy stringByReplacingOccurrencesOfString:@".watchapp" withString:&stru_282B650A0];
  }

  else
  {
    v4 = extensionCopy;
  }

  v5 = v4;

  return v5;
}

@end