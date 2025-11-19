@interface WCAFetchBeaconDBParameters
- (void)fetchWithCompletion:(id)a3;
@end

@implementation WCAFetchBeaconDBParameters

- (void)fetchWithCompletion:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(WCAFetchSQLiteRequest);
  [(WCAFetchSQLiteRequest *)v5 setTableName:@"prof_clean"];
  [(WCAFetchSQLiteRequest *)v5 setColumnNames:&unk_2848BAF70];
  [(WCAFetchSQLiteRequest *)v5 setLimit:1];
  v6 = objc_opt_new();
  [(WCAFetchBeaconDBParameters *)self wlanTimDtimPeriod];
  if (v7 != 0.0)
  {
    v8 = MEMORY[0x277CCABB0];
    [(WCAFetchBeaconDBParameters *)self wlanTimDtimPeriod];
    v9 = [v8 numberWithFloat:?];
    [v6 setValue:v9 forKey:@"wlan-tim-dtim_period"];
  }

  v10 = [(WCAFetchBeaconDBParameters *)self wlanHTCapabilities];

  if (v10)
  {
    v11 = [(WCAFetchBeaconDBParameters *)self wlanHTCapabilities];
    [v6 setValue:v11 forKey:@"wlan-ht-capabilities"];
  }

  v12 = [(WCAFetchBeaconDBParameters *)self wlanWfaIeWmeQosInfo];

  if (v12)
  {
    v13 = [(WCAFetchBeaconDBParameters *)self wlanWfaIeWmeQosInfo];
    [v6 setValue:v13 forKey:@"wlan-wfa-ie-wme-qos_info"];
  }

  v14 = [(WCAFetchBeaconDBParameters *)self wlanHtexCapabilities];

  if (v14)
  {
    v15 = [(WCAFetchBeaconDBParameters *)self wlanHtexCapabilities];
    [v6 setValue:v15 forKey:@"wlan-htex-capabilities"];
  }

  v16 = [(WCAFetchBeaconDBParameters *)self wlanHTAmpduparam];

  if (v16)
  {
    v17 = [(WCAFetchBeaconDBParameters *)self wlanHTAmpduparam];
    [v6 setValue:v17 forKey:@"wlan-ht-ampduparam"];
  }

  v18 = [(WCAFetchBeaconDBParameters *)self wlanVhtCapabilities];

  if (v18)
  {
    v19 = [(WCAFetchBeaconDBParameters *)self wlanVhtCapabilities];
    [v6 setValue:v19 forKey:@"wlan-vht-capabilities"];
  }

  v20 = [(WCAFetchBeaconDBParameters *)self wlanTxbf];

  if (v20)
  {
    v21 = [(WCAFetchBeaconDBParameters *)self wlanTxbf];
    [v6 setValue:v21 forKey:@"wlan-txbf"];
  }

  v22 = [(WCAFetchBeaconDBParameters *)self wlanAsel];

  if (v22)
  {
    v23 = [(WCAFetchBeaconDBParameters *)self wlanAsel];
    [v6 setValue:v23 forKey:@"wlan-asel"];
  }

  v24 = [(WCAFetchBeaconDBParameters *)self wlanFixedCapabilities];

  if (v24)
  {
    v25 = [(WCAFetchBeaconDBParameters *)self wlanFixedCapabilities];
    [v6 setValue:v25 forKey:@"wlan-fixed-capabilities"];
  }

  if ([(WCAFetchBeaconDBParameters *)self beaconInterval])
  {
    v26 = [MEMORY[0x277CCABB0] numberWithLong:{-[WCAFetchBeaconDBParameters beaconInterval](self, "beaconInterval")}];
    [v6 setValue:v26 forKey:@"beacon_interval"];
  }

  if ([(WCAFetchBeaconDBParameters *)self QBSS_Load])
  {
    v27 = [MEMORY[0x277CCABB0] numberWithBool:{-[WCAFetchBeaconDBParameters QBSS_Load](self, "QBSS_Load")}];
    [v6 setValue:v27 forKey:@"QBSS_Load"];
  }

  if ([(WCAFetchBeaconDBParameters *)self has_11krm])
  {
    v28 = [MEMORY[0x277CCABB0] numberWithBool:{-[WCAFetchBeaconDBParameters has_11krm](self, "has_11krm")}];
    [v6 setValue:v28 forKey:@"has_11krm"];
  }

  if ([(WCAFetchBeaconDBParameters *)self UAPSD])
  {
    v29 = [MEMORY[0x277CCABB0] numberWithBool:{-[WCAFetchBeaconDBParameters UAPSD](self, "UAPSD")}];
    [v6 setValue:v29 forKey:@"U-APSD"];
  }

  [(WCAFetchBeaconDBParameters *)self antennas11c];
  if (v30 != 0.0)
  {
    v31 = MEMORY[0x277CCABB0];
    [(WCAFetchBeaconDBParameters *)self antennas11c];
    v32 = [v31 numberWithFloat:?];
    [v6 setValue:v32 forKey:@"11c_antennas"];
  }

  v33 = [(WCAFetchBeaconDBParameters *)self antennas11n];

  if (v33)
  {
    v34 = [(WCAFetchBeaconDBParameters *)self antennas11n];
    [v6 setValue:v34 forKey:@"11n_antennas"];
  }

  [(WCAFetchBeaconDBParameters *)self max_rates];
  if (v35 != 0.0)
  {
    v36 = MEMORY[0x277CCABB0];
    [(WCAFetchBeaconDBParameters *)self max_rates];
    v37 = [v36 numberWithFloat:?];
    [v6 setValue:v37 forKey:@"max_rates"];
  }

  [(WCAFetchSQLiteRequest *)v5 setParameters:v6];
  v38 = +[WCAAsset beaconsDataAsset];
  [(WCAFetchRequest *)v5 setAsset:v38];

  v41[0] = MEMORY[0x277D85DD0];
  v41[1] = 3221225472;
  v41[2] = __50__WCAFetchBeaconDBParameters_fetchWithCompletion___block_invoke;
  v41[3] = &unk_2789C81A8;
  v42 = v4;
  v39 = v4;
  [(WCAFetchRequest *)v5 setCompletionHandler:v41];
  v40 = +[WCAClient sharedClient];
  [v40 executeFetchRequest:v5];
}

void __50__WCAFetchBeaconDBParameters_fetchWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v12 = a2;
  v3 = [v12 records];
  v4 = [v3 count];

  if (v4)
  {
    v5 = [v12 records];
    v6 = [v5 firstObject];

    v7 = [v6 valueForKey:@"index"];
    v8 = [v7 intValue];
  }

  else
  {
    v8 = -1;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    NSLog(&cfstr_ErrorResponseI.isa, v10);
  }

  v11 = *(a1 + 32);
  if (v11)
  {
    (*(v11 + 16))(v11, v8);
  }
}

@end