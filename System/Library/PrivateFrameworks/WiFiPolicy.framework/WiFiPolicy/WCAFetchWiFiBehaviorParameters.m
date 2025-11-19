@interface WCAFetchWiFiBehaviorParameters
+ (void)fetchWiFiBehaviorWithCompletion:(id)a3;
@end

@implementation WCAFetchWiFiBehaviorParameters

+ (void)fetchWiFiBehaviorWithCompletion:(id)a3
{
  v15[8] = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = objc_alloc_init(WCAFetchKeyValuesRequest);
  v15[0] = @"WiFiInternalSSIDs";
  v15[1] = @"MacRandomization";
  v15[2] = @"SoftErrors";
  v15[3] = @"JTRN";
  v15[4] = @"DataPathTelemetry";
  v15[5] = @"WiFiAmbiguousSSIDs";
  v15[6] = @"AccessPointProfile";
  v15[7] = @"BeaconParsing";
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:8];
  [(WCAFetchKeyValuesRequest *)v4 setKeys:v5];

  v6 = +[WCAAsset wifiBehaviorPlistAsset];
  [(WCAFetchRequest *)v4 setAsset:v6];

  v10 = MEMORY[0x277D85DD0];
  v11 = 3221225472;
  v12 = __66__WCAFetchWiFiBehaviorParameters_fetchWiFiBehaviorWithCompletion___block_invoke;
  v13 = &unk_2789C81A8;
  v14 = v3;
  v7 = v3;
  [(WCAFetchRequest *)v4 setCompletionHandler:&v10];
  v8 = [WCAClient sharedClient:v10];
  [v8 executeFetchRequest:v4];

  v9 = *MEMORY[0x277D85DE8];
}

void __66__WCAFetchWiFiBehaviorParameters_fetchWiFiBehaviorWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v36 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v36;
    v4 = objc_opt_new();
    v5 = [v3 keyValues];
    v6 = [v5 objectForKeyedSubscript:@"WiFiInternalSSIDs"];
    v7 = [v6 arrayValue];
    [v4 setInternalSSIDs:v7];

    v8 = [v3 keyValues];
    v9 = [v8 objectForKeyedSubscript:@"MacRandomization"];
    v10 = [v9 dictionaryValue];
    [v4 setDisabledMacRandomizationVersions:v10];

    v11 = [v3 keyValues];
    v12 = [v11 objectForKeyedSubscript:@"SoftErrors"];
    v13 = [v12 dictionaryValue];
    [v4 setSoftErrors:v13];

    v14 = [v3 keyValues];
    v15 = [v14 objectForKeyedSubscript:@"DataPathTelemetry"];
    v16 = [v15 dictionaryValue];
    [v4 setDatapathTelemetry:v16];

    v17 = [v3 keyValues];
    v18 = [v17 objectForKeyedSubscript:@"JTRN"];
    v19 = [v18 dictionaryValue];
    [v4 setJtrnDefaults:v19];

    v20 = [v3 keyValues];
    v21 = [v20 objectForKeyedSubscript:@"WiFiAmbiguousSSIDs"];
    v22 = [v21 arrayValue];
    [v4 setAmbiguousSSIDs:v22];

    v23 = [v3 keyValues];
    v24 = [v23 objectForKeyedSubscript:@"AccessPointProfile"];
    v25 = [v24 dictionaryValue];
    [v4 setApProfile:v25];

    v26 = [v3 keyValues];
    v27 = [v26 objectForKeyedSubscript:@"BeaconParsing"];
    v28 = [v27 dictionaryValue];
    [v4 setBeaconParsing:v28];

    v29 = [v3 keyValues];
    v30 = [v29 objectForKeyedSubscript:@"LQMDistribution"];
    v31 = [v30 dictionaryValue];
    [v4 setLqmDistribution:v31];

    v32 = *(a1 + 32);
    if (v32)
    {
      (*(v32 + 16))(v32, v4);
    }
  }

  else
  {
    v33 = objc_opt_class();
    v34 = NSStringFromClass(v33);
    NSLog(&cfstr_ErrorResponseI.isa, v34);

    v35 = *(a1 + 32);
    if (v35)
    {
      (*(v35 + 16))(v35, 0);
    }
  }
}

@end