@interface WADeploymentAnalyzerDefaults
+ (id)_numberDefaultForKey:(id)a3;
- (WADeploymentAnalyzerDefaults)init;
@end

@implementation WADeploymentAnalyzerDefaults

- (WADeploymentAnalyzerDefaults)init
{
  v47 = *MEMORY[0x1E69E9840];
  v36.receiver = self;
  v36.super_class = WADeploymentAnalyzerDefaults;
  v2 = [(WADeploymentAnalyzerDefaults *)&v36 init];
  v3 = v2;
  if (v2)
  {
    v2->_poorCoverageRSSI = -80;
    v4 = [objc_opt_class() _numberDefaultForKey:@"poor-coverage-rssi"];

    if (v4)
    {
      v5 = [objc_opt_class() _numberDefaultForKey:@"poor-coverage-rssi"];
      v3->_poorCoverageRSSI = [v5 integerValue];

      v6 = WALogCategoryDefaultHandle();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        poorCoverageRSSI = v3->_poorCoverageRSSI;
        *buf = 136447234;
        v38 = "[WADeploymentAnalyzerDefaults init]";
        v39 = 1024;
        v40 = 73;
        v41 = 2080;
        v42 = "[WADeploymentAnalyzerDefaults init]";
        v43 = 2048;
        v44 = *&poorCoverageRSSI;
        v45 = 2112;
        v46 = @"poor-coverage-rssi";
        _os_log_impl(&dword_1C8460000, v6, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:%s: using override value (%ld) for %@", buf, 0x30u);
      }
    }

    v3->_poorCoverageThreshold = 0.5;
    v8 = [objc_opt_class() _numberDefaultForKey:@"poor-coverage-threshold"];

    if (v8)
    {
      v9 = [objc_opt_class() _numberDefaultForKey:@"poor-coverage-threshold"];
      [v9 doubleValue];
      v3->_poorCoverageThreshold = v10;

      v11 = WALogCategoryDefaultHandle();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        poorCoverageThreshold = v3->_poorCoverageThreshold;
        *buf = 136447234;
        v38 = "[WADeploymentAnalyzerDefaults init]";
        v39 = 1024;
        v40 = 74;
        v41 = 2080;
        v42 = "[WADeploymentAnalyzerDefaults init]";
        v43 = 2048;
        v44 = poorCoverageThreshold;
        v45 = 2112;
        v46 = @"poor-coverage-threshold";
        _os_log_impl(&dword_1C8460000, v11, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:%s: using override value (%f) for %@", buf, 0x30u);
      }
    }

    v3->_poorCoverageMinimumStay = 72000;
    v13 = [objc_opt_class() _numberDefaultForKey:@"poor-coverage-min-stay"];

    if (v13)
    {
      v14 = [objc_opt_class() _numberDefaultForKey:@"poor-coverage-min-stay"];
      v3->_poorCoverageMinimumStay = [v14 unsignedIntegerValue];

      v15 = WALogCategoryDefaultHandle();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        poorCoverageMinimumStay = v3->_poorCoverageMinimumStay;
        *buf = 136447234;
        v38 = "[WADeploymentAnalyzerDefaults init]";
        v39 = 1024;
        v40 = 75;
        v41 = 2080;
        v42 = "[WADeploymentAnalyzerDefaults init]";
        v43 = 2048;
        v44 = *&poorCoverageMinimumStay;
        v45 = 2112;
        v46 = @"poor-coverage-min-stay";
        _os_log_impl(&dword_1C8460000, v15, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:%s: using override value (%lu) for %@", buf, 0x30u);
      }
    }

    v3->_highCongestionRSSIThreshold = -75;
    v17 = [objc_opt_class() _numberDefaultForKey:@"high-congestion-rssi"];

    if (v17)
    {
      v18 = [objc_opt_class() _numberDefaultForKey:@"high-congestion-rssi"];
      v3->_highCongestionRSSIThreshold = [v18 integerValue];

      v19 = WALogCategoryDefaultHandle();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        highCongestionRSSIThreshold = v3->_highCongestionRSSIThreshold;
        *buf = 136447234;
        v38 = "[WADeploymentAnalyzerDefaults init]";
        v39 = 1024;
        v40 = 78;
        v41 = 2080;
        v42 = "[WADeploymentAnalyzerDefaults init]";
        v43 = 2048;
        v44 = *&highCongestionRSSIThreshold;
        v45 = 2112;
        v46 = @"high-congestion-rssi";
        _os_log_impl(&dword_1C8460000, v19, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:%s: using override value (%ld) for %@", buf, 0x30u);
      }
    }

    v3->_highCongestionCCAThreshold = 50;
    v21 = [objc_opt_class() _numberDefaultForKey:@"high-congestion-cca"];

    if (v21)
    {
      v22 = [objc_opt_class() _numberDefaultForKey:@"high-congestion-cca"];
      v3->_highCongestionCCAThreshold = [v22 unsignedIntegerValue];

      v23 = WALogCategoryDefaultHandle();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        highCongestionCCAThreshold = v3->_highCongestionCCAThreshold;
        *buf = 136447234;
        v38 = "[WADeploymentAnalyzerDefaults init]";
        v39 = 1024;
        v40 = 79;
        v41 = 2080;
        v42 = "[WADeploymentAnalyzerDefaults init]";
        v43 = 2048;
        v44 = *&highCongestionCCAThreshold;
        v45 = 2112;
        v46 = @"high-congestion-cca";
        _os_log_impl(&dword_1C8460000, v23, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:%s: using override value (%lu) for %@", buf, 0x30u);
      }
    }

    v3->_highCongestionThreshold = 0.5;
    v25 = [objc_opt_class() _numberDefaultForKey:@"high-congestion-threshold"];

    if (v25)
    {
      v26 = [objc_opt_class() _numberDefaultForKey:@"high-congestion-threshold"];
      [v26 doubleValue];
      v3->_highCongestionThreshold = v27;

      v28 = WALogCategoryDefaultHandle();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        highCongestionThreshold = v3->_highCongestionThreshold;
        *buf = 136447234;
        v38 = "[WADeploymentAnalyzerDefaults init]";
        v39 = 1024;
        v40 = 80;
        v41 = 2080;
        v42 = "[WADeploymentAnalyzerDefaults init]";
        v43 = 2048;
        v44 = highCongestionThreshold;
        v45 = 2112;
        v46 = @"high-congestion-threshold";
        _os_log_impl(&dword_1C8460000, v28, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:%s: using override value (%f) for %@", buf, 0x30u);
      }
    }

    v3->_highCongestionMinimumStay = 72000;
    v30 = [objc_opt_class() _numberDefaultForKey:@"high-congestion-min-stay"];

    if (v30)
    {
      v31 = [objc_opt_class() _numberDefaultForKey:@"high-congestion-min-stay"];
      v3->_highCongestionMinimumStay = [v31 unsignedIntegerValue];

      v32 = WALogCategoryDefaultHandle();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
      {
        highCongestionMinimumStay = v3->_highCongestionMinimumStay;
        *buf = 136447234;
        v38 = "[WADeploymentAnalyzerDefaults init]";
        v39 = 1024;
        v40 = 81;
        v41 = 2080;
        v42 = "[WADeploymentAnalyzerDefaults init]";
        v43 = 2048;
        v44 = *&highCongestionMinimumStay;
        v45 = 2112;
        v46 = @"high-congestion-min-stay";
        _os_log_impl(&dword_1C8460000, v32, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:%s: using override value (%lu) for %@", buf, 0x30u);
      }
    }
  }

  v34 = *MEMORY[0x1E69E9840];
  return v3;
}

+ (id)_numberDefaultForKey:(id)a3
{
  v3 = MEMORY[0x1E695E000];
  v4 = a3;
  v5 = [v3 _WADefaults];
  v6 = [v5 objectForKey:v4];

  return v6;
}

@end