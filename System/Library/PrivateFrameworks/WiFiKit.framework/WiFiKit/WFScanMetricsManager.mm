@interface WFScanMetricsManager
- (WFScanMetricsManager)init;
- (id)sectionNameForRecord:(id)record;
- (void)ingestScanResults:(id)results;
- (void)reset;
- (void)submit;
@end

@implementation WFScanMetricsManager

- (WFScanMetricsManager)init
{
  v6.receiver = self;
  v6.super_class = WFScanMetricsManager;
  v2 = [(WFScanMetricsManager *)&v6 init];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  sectionCounts = v2->_sectionCounts;
  v2->_sectionCounts = dictionary;

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
  sectionCounts = [(WFScanMetricsManager *)self sectionCounts];
  [sectionCounts removeAllObjects];

  sectionCounts2 = [(WFScanMetricsManager *)self sectionCounts];
  [sectionCounts2 setObject:&unk_288304D38 forKey:@"known"];

  sectionCounts3 = [(WFScanMetricsManager *)self sectionCounts];
  [sectionCounts3 setObject:&unk_288304D38 forKey:@"hotspot"];

  sectionCounts4 = [(WFScanMetricsManager *)self sectionCounts];
  [sectionCounts4 setObject:&unk_288304D38 forKey:@"public"];

  sectionCounts5 = [(WFScanMetricsManager *)self sectionCounts];
  [sectionCounts5 setObject:&unk_288304D38 forKey:@"infra"];

  sectionCounts6 = [(WFScanMetricsManager *)self sectionCounts];
  [sectionCounts6 setObject:&unk_288304D38 forKey:@"adhoc"];

  sectionCounts7 = [(WFScanMetricsManager *)self sectionCounts];
  [sectionCounts7 setObject:&unk_288304D38 forKey:@"accessory"];

  date = [MEMORY[0x277CBEAA8] date];
  timestamp = self->_timestamp;
  self->_timestamp = date;

  v14 = *MEMORY[0x277D85DE8];
}

- (void)submit
{
  v22 = *MEMORY[0x277D85DE8];
  if (![(WFScanMetricsManager *)self submited])
  {
    timestamp = [(WFScanMetricsManager *)self timestamp];
    [timestamp timeIntervalSinceNow];
    v5 = v4;

    v6 = WFLogForCategory(0);
    v7 = OSLogForWFLogLevel(3uLL);
    if (WFCurrentLogLevel() >= 3 && v6)
    {
      v8 = v6;
      if (os_log_type_enabled(v8, v7))
      {
        timestamp2 = [(WFScanMetricsManager *)self timestamp];
        [timestamp2 timeIntervalSinceNow];
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
    sectionCounts = [(WFScanMetricsManager *)self sectionCounts];
    v18 = [WFScanSessionEvent scanSessionEventWithSectionCounts:sectionCounts duration:v11];
    [v16 processEvent:v18];

    [(WFScanMetricsManager *)self setSubmited:1];
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (void)ingestScanResults:(id)results
{
  resultsCopy = results;
  knownNetworks = [resultsCopy knownNetworks];
  v5 = [knownNetworks count];

  sectionCounts = [(WFScanMetricsManager *)self sectionCounts];
  v7 = [sectionCounts objectForKeyedSubscript:@"known"];
  unsignedIntegerValue = [v7 unsignedIntegerValue];

  if (v5 > unsignedIntegerValue)
  {
    v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v5];
    sectionCounts2 = [(WFScanMetricsManager *)self sectionCounts];
    [sectionCounts2 setObject:v9 forKeyedSubscript:@"known"];
  }

  infrastructureNetworks = [resultsCopy infrastructureNetworks];
  v12 = [infrastructureNetworks count];

  sectionCounts3 = [(WFScanMetricsManager *)self sectionCounts];
  v14 = [sectionCounts3 objectForKeyedSubscript:@"infra"];
  unsignedIntegerValue2 = [v14 unsignedIntegerValue];

  if (v12 > unsignedIntegerValue2)
  {
    v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v12];
    sectionCounts4 = [(WFScanMetricsManager *)self sectionCounts];
    [sectionCounts4 setObject:v16 forKeyedSubscript:@"infra"];
  }

  instantHotspotNetworks = [resultsCopy instantHotspotNetworks];
  v19 = [instantHotspotNetworks count];

  sectionCounts5 = [(WFScanMetricsManager *)self sectionCounts];
  v21 = [sectionCounts5 objectForKeyedSubscript:@"hotspot"];
  unsignedIntegerValue3 = [v21 unsignedIntegerValue];

  if (v19 > unsignedIntegerValue3)
  {
    v23 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v19];
    sectionCounts6 = [(WFScanMetricsManager *)self sectionCounts];
    [sectionCounts6 setObject:v23 forKeyedSubscript:@"hotspot"];
  }

  popularNetworks = [resultsCopy popularNetworks];
  v26 = [popularNetworks count];

  sectionCounts7 = [(WFScanMetricsManager *)self sectionCounts];
  v28 = [sectionCounts7 objectForKeyedSubscript:@"public"];
  unsignedIntegerValue4 = [v28 unsignedIntegerValue];

  if (v26 > unsignedIntegerValue4)
  {
    v30 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v26];
    sectionCounts8 = [(WFScanMetricsManager *)self sectionCounts];
    [sectionCounts8 setObject:v30 forKeyedSubscript:@"public"];
  }

  adhocNetworks = [resultsCopy adhocNetworks];
  v33 = [adhocNetworks count];

  sectionCounts9 = [(WFScanMetricsManager *)self sectionCounts];
  v35 = [sectionCounts9 objectForKeyedSubscript:@"adhoc"];
  unsignedIntegerValue5 = [v35 unsignedIntegerValue];

  if (v33 > unsignedIntegerValue5)
  {
    v37 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v33];
    sectionCounts10 = [(WFScanMetricsManager *)self sectionCounts];
    [sectionCounts10 setObject:v37 forKeyedSubscript:@"adhoc"];
  }

  unconfiguredNetworks = [resultsCopy unconfiguredNetworks];
  v40 = [unconfiguredNetworks count];

  sectionCounts11 = [(WFScanMetricsManager *)self sectionCounts];
  v42 = [sectionCounts11 objectForKeyedSubscript:@"accessory"];
  unsignedIntegerValue6 = [v42 unsignedIntegerValue];

  if (v40 > unsignedIntegerValue6)
  {
    v44 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v40];
    sectionCounts12 = [(WFScanMetricsManager *)self sectionCounts];
    [sectionCounts12 setObject:v44 forKeyedSubscript:@"accessory"];
  }
}

- (id)sectionNameForRecord:(id)record
{
  recordCopy = record;
  if ([recordCopy isKnown])
  {
    v4 = @"known";
  }

  else if ([recordCopy isInstantHotspot])
  {
    v4 = @"hotspot";
  }

  else if ([recordCopy isPopular])
  {
    v4 = @"public";
  }

  else if ([recordCopy isAdhoc])
  {
    v4 = @"adhoc";
  }

  else if ([recordCopy isUnconfiguredAccessory])
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