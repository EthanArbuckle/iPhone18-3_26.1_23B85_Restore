@interface WFScanMetricsManager
- (WFScanMetricsManager)init;
- (id)sectionNameForRecord:(id)a3;
- (void)ingestScanResults:(id)a3;
- (void)reset;
- (void)submit;
@end

@implementation WFScanMetricsManager

- (WFScanMetricsManager)init
{
  v6.receiver = self;
  v6.super_class = WFScanMetricsManager;
  v2 = [(WFScanMetricsManager *)&v6 init];
  v3 = [MEMORY[0x277CBEB38] dictionary];
  sectionCounts = v2->_sectionCounts;
  v2->_sectionCounts = v3;

  [(WFScanMetricsManager *)v2 reset];
  return v2;
}

- (void)reset
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = WFLogForCategory(0);
  v4 = OSLogForWFLogLevel(4uLL);
  if (WFCurrentLogLevel() >= 4 && v3 && os_log_type_enabled(v3, v4))
  {
    v15 = 136315138;
    v16 = "[WFScanMetricsManager reset]";
    _os_log_impl(&dword_273ECD000, v3, v4, "%s", &v15, 0xCu);
  }

  [(WFScanMetricsManager *)self setSubmited:0];
  v5 = [(WFScanMetricsManager *)self sectionCounts];
  [v5 removeAllObjects];

  v6 = [(WFScanMetricsManager *)self sectionCounts];
  [v6 setObject:&unk_288304D38 forKey:@"known"];

  v7 = [(WFScanMetricsManager *)self sectionCounts];
  [v7 setObject:&unk_288304D38 forKey:@"hotspot"];

  v8 = [(WFScanMetricsManager *)self sectionCounts];
  [v8 setObject:&unk_288304D38 forKey:@"public"];

  v9 = [(WFScanMetricsManager *)self sectionCounts];
  [v9 setObject:&unk_288304D38 forKey:@"infra"];

  v10 = [(WFScanMetricsManager *)self sectionCounts];
  [v10 setObject:&unk_288304D38 forKey:@"adhoc"];

  v11 = [(WFScanMetricsManager *)self sectionCounts];
  [v11 setObject:&unk_288304D38 forKey:@"accessory"];

  v12 = [MEMORY[0x277CBEAA8] date];
  timestamp = self->_timestamp;
  self->_timestamp = v12;

  v14 = *MEMORY[0x277D85DE8];
}

- (void)submit
{
  v22 = *MEMORY[0x277D85DE8];
  if (![(WFScanMetricsManager *)self submited])
  {
    v3 = [(WFScanMetricsManager *)self timestamp];
    [v3 timeIntervalSinceNow];
    v5 = v4;

    v6 = WFLogForCategory(0);
    v7 = OSLogForWFLogLevel(3uLL);
    if (WFCurrentLogLevel() >= 3 && v6)
    {
      v8 = v6;
      if (os_log_type_enabled(v8, v7))
      {
        v9 = [(WFScanMetricsManager *)self timestamp];
        [v9 timeIntervalSinceNow];
        v20 = 134217984;
        v21 = -v10;
        _os_log_impl(&dword_273ECD000, v8, v7, "scan metrics session duration %f", &v20, 0xCu);
      }
    }

    v11 = -v5;

    v12 = WFLogForCategory(0);
    v13 = OSLogForWFLogLevel(3uLL);
    if (WFCurrentLogLevel() >= 3 && v12)
    {
      v14 = v12;
      if (os_log_type_enabled(v14, v13))
      {
        [(WFScanMetricsManager *)self sectionCounts];
        v15 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
        v20 = 138412290;
        v21 = v15;
        _os_log_impl(&dword_273ECD000, v14, v13, "scan metrics section counts %@", &v20, 0xCu);
      }
    }

    v16 = +[WFMetricsManager sharedManager];
    v17 = [(WFScanMetricsManager *)self sectionCounts];
    v18 = [WFScanSessionEvent scanSessionEventWithSectionCounts:v17 duration:v11];
    [v16 processEvent:v18];

    [(WFScanMetricsManager *)self setSubmited:1];
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (void)ingestScanResults:(id)a3
{
  v46 = a3;
  v4 = [v46 knownNetworks];
  v5 = [v4 count];

  v6 = [(WFScanMetricsManager *)self sectionCounts];
  v7 = [v6 objectForKeyedSubscript:@"known"];
  v8 = [v7 unsignedIntegerValue];

  if (v5 > v8)
  {
    v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v5];
    v10 = [(WFScanMetricsManager *)self sectionCounts];
    [v10 setObject:v9 forKeyedSubscript:@"known"];
  }

  v11 = [v46 infrastructureNetworks];
  v12 = [v11 count];

  v13 = [(WFScanMetricsManager *)self sectionCounts];
  v14 = [v13 objectForKeyedSubscript:@"infra"];
  v15 = [v14 unsignedIntegerValue];

  if (v12 > v15)
  {
    v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v12];
    v17 = [(WFScanMetricsManager *)self sectionCounts];
    [v17 setObject:v16 forKeyedSubscript:@"infra"];
  }

  v18 = [v46 instantHotspotNetworks];
  v19 = [v18 count];

  v20 = [(WFScanMetricsManager *)self sectionCounts];
  v21 = [v20 objectForKeyedSubscript:@"hotspot"];
  v22 = [v21 unsignedIntegerValue];

  if (v19 > v22)
  {
    v23 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v19];
    v24 = [(WFScanMetricsManager *)self sectionCounts];
    [v24 setObject:v23 forKeyedSubscript:@"hotspot"];
  }

  v25 = [v46 popularNetworks];
  v26 = [v25 count];

  v27 = [(WFScanMetricsManager *)self sectionCounts];
  v28 = [v27 objectForKeyedSubscript:@"public"];
  v29 = [v28 unsignedIntegerValue];

  if (v26 > v29)
  {
    v30 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v26];
    v31 = [(WFScanMetricsManager *)self sectionCounts];
    [v31 setObject:v30 forKeyedSubscript:@"public"];
  }

  v32 = [v46 adhocNetworks];
  v33 = [v32 count];

  v34 = [(WFScanMetricsManager *)self sectionCounts];
  v35 = [v34 objectForKeyedSubscript:@"adhoc"];
  v36 = [v35 unsignedIntegerValue];

  if (v33 > v36)
  {
    v37 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v33];
    v38 = [(WFScanMetricsManager *)self sectionCounts];
    [v38 setObject:v37 forKeyedSubscript:@"adhoc"];
  }

  v39 = [v46 unconfiguredNetworks];
  v40 = [v39 count];

  v41 = [(WFScanMetricsManager *)self sectionCounts];
  v42 = [v41 objectForKeyedSubscript:@"accessory"];
  v43 = [v42 unsignedIntegerValue];

  if (v40 > v43)
  {
    v44 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v40];
    v45 = [(WFScanMetricsManager *)self sectionCounts];
    [v45 setObject:v44 forKeyedSubscript:@"accessory"];
  }
}

- (id)sectionNameForRecord:(id)a3
{
  v3 = a3;
  if ([v3 isKnown])
  {
    v4 = @"known";
  }

  else if ([v3 isInstantHotspot])
  {
    v4 = @"hotspot";
  }

  else if ([v3 isPopular])
  {
    v4 = @"public";
  }

  else if ([v3 isAdhoc])
  {
    v4 = @"adhoc";
  }

  else if ([v3 isUnconfiguredAccessory])
  {
    v4 = @"accessory";
  }

  else
  {
    v4 = @"infra";
  }

  return v4;
}

@end