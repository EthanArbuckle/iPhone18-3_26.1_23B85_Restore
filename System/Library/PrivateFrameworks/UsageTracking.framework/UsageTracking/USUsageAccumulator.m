@interface USUsageAccumulator
- (USUsageAccumulator)initWithApplicationCategories:(id)a3 webCategories:(id)a4;
- (void)_accumulateAppMediaUsage:(id)a3 timestamp:(id)a4;
- (void)_accumulateAppUsage:(id)a3 timestamp:(id)a4;
- (void)_accumulateAppWebUsage:(id)a3 timestamp:(id)a4;
- (void)_accumulateDeviceBacklight:(id)a3 timestamp:(id)a4;
- (void)_accumulateDeviceBacklightWithIsBacklit:(BOOL)a3 timestamp:(id)a4;
- (void)_accumulateMediaNowPlaying:(id)a3 timestamp:(id)a4;
- (void)_accumulateMediaNowPlayingWithTimestamp:(id)a3 starting:(BOOL)a4;
- (void)_accumulateNotificationUsage:(id)a3;
- (void)_aggregateAppMediaUsage:(id)a3 timestamp:(id)a4;
- (void)_aggregateApplicationUsageInterval:(id)a3 identifier:(id)a4;
- (void)_aggregateCanonicalApplicationUsageInterval:(id)a3 canonicalIdentifier:(id)a4;
- (void)_aggregateCategoryUsageInterval:(id)a3 identifier:(id)a4;
- (void)_aggregatePrimaryWebUsageInterval:(id)a3 primaryIdentifier:(id)a4;
- (void)_aggregateStartDatesUsingEndDate:(id)a3;
- (void)_aggregateWebUsageInterval:(id)a3 identifier:(id)a4;
- (void)_resetAggregations;
- (void)_stopAllUsageWithEndDate:(id)a3;
- (void)_stopAllWebUsageForWebBrowser:(id)a3 endDate:(id)a4;
- (void)accumulateEvent:(id)a3 timestamp:(id)a4;
- (void)aggregateUsageForInterval:(id)a3 usageReportHandler:(id)a4;
@end

@implementation USUsageAccumulator

- (USUsageAccumulator)initWithApplicationCategories:(id)a3 webCategories:(id)a4
{
  v35.receiver = self;
  v35.super_class = USUsageAccumulator;
  v5 = a4;
  v6 = a3;
  v7 = [(USUsageAccumulator *)&v35 init];
  v8 = [v6 copy];

  applicationCategories = v7->_applicationCategories;
  v7->_applicationCategories = v8;

  v10 = [v5 copy];
  webCategories = v7->_webCategories;
  v7->_webCategories = v10;

  v12 = objc_opt_new();
  applicationUsageStartDates = v7->_applicationUsageStartDates;
  v7->_applicationUsageStartDates = v12;

  v14 = objc_opt_new();
  webUsageStartDatesByWebBrowser = v7->_webUsageStartDatesByWebBrowser;
  v7->_webUsageStartDatesByWebBrowser = v14;

  v16 = objc_opt_new();
  webUsageStateByUniqueID = v7->_webUsageStateByUniqueID;
  v7->_webUsageStateByUniqueID = v16;

  v7->_quickLookVideoNowPlayingState = 0;
  v18 = objc_opt_new();
  mediaUsageByUniqueID = v7->_mediaUsageByUniqueID;
  v7->_mediaUsageByUniqueID = v18;

  v20 = objc_opt_new();
  backlightIntervals = v7->_backlightIntervals;
  v7->_backlightIntervals = v20;

  v22 = objc_opt_new();
  applicationUsageIntervals = v7->_applicationUsageIntervals;
  v7->_applicationUsageIntervals = v22;

  v24 = objc_opt_new();
  webUsageIntervals = v7->_webUsageIntervals;
  v7->_webUsageIntervals = v24;

  v26 = objc_opt_new();
  categoryUsageIntervals = v7->_categoryUsageIntervals;
  v7->_categoryUsageIntervals = v26;

  v28 = objc_opt_new();
  canonicalApplicationUsageIntervals = v7->_canonicalApplicationUsageIntervals;
  v7->_canonicalApplicationUsageIntervals = v28;

  v30 = objc_opt_new();
  primaryWebUsageIntervals = v7->_primaryWebUsageIntervals;
  v7->_primaryWebUsageIntervals = v30;

  v32 = objc_opt_new();
  notifications = v7->_notifications;
  v7->_notifications = v32;

  return v7;
}

- (void)accumulateEvent:(id)a3 timestamp:(id)a4
{
  v6 = a3;
  v7 = a4;
  [(USUsageAccumulator *)self setLastEventDate:v7];
  v8 = [v6 eventBody];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(USUsageAccumulator *)self _accumulateAppUsage:v8 timestamp:v7];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(USUsageAccumulator *)self _accumulateAppMediaUsage:v8 timestamp:v7];
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [(USUsageAccumulator *)self _accumulateAppWebUsage:v8 timestamp:v7];
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [(USUsageAccumulator *)self _accumulateDeviceBacklight:v8 timestamp:v7];
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [(USUsageAccumulator *)self _accumulateMediaNowPlaying:v8 timestamp:v7];
          }

          else
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              [(USUsageAccumulator *)self _accumulateNotificationUsage:v8];
            }

            else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
            {
              [USUsageAccumulator accumulateEvent:timestamp:];
            }
          }
        }
      }
    }
  }
}

- (void)_accumulateAppUsage:(id)a3 timestamp:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 parentBundleID];
  if (v8 || ([v6 bundleID], (v8 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v9 = v8;
    v10 = [v6 starting];
    if ([v9 isEqualToString:@"com.apple.springboard.stand-by"])
    {
      [(USUsageAccumulator *)self setStandByEnabled:v10];
      if ([(USUsageAccumulator *)self isDeviceBacklit])
      {
        [(USUsageAccumulator *)self _accumulateDeviceBacklightWithIsBacklit:v10 ^ 1 timestamp:v7];
      }
    }

    else
    {
      -[USUsageAccumulator _accumulateApplication:timestamp:starting:isUsageTrusted:](self, "_accumulateApplication:timestamp:starting:isUsageTrusted:", v9, v7, v10, [v6 isUsageTrusted]);
    }
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [USUsageAccumulator _accumulateAppUsage:timestamp:];
    }

    v9 = 0;
  }
}

- (void)_accumulateAppMediaUsage:(id)a3 timestamp:(id)a4
{
  v45 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [v6 uniqueID];
  if (v8)
  {
    v9 = [(USUsageAccumulator *)self mediaUsageByUniqueID];
    v10 = [v9 objectForKeyedSubscript:v8];

    v11 = v10;
    v12 = v6;
    v13 = [v11 starting];
    v42 = self;
    if (v13 != [v12 starting])
    {

      goto LABEL_24;
    }

    v14 = [v11 bundleID];
    v15 = [v12 bundleID];
    if (v14 != v15)
    {
      v16 = [v11 bundleID];
      v40 = [v12 bundleID];
      if (![v16 isEqual:?])
      {
        v20 = 0;
LABEL_20:

LABEL_21:
        if (v20)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543362;
            v44 = v12;
            _os_log_impl(&dword_2707F8000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Media usage session has not changed state, not accumulating event: %{public}@", buf, 0xCu);
          }

          goto LABEL_25;
        }

LABEL_24:
        [(USUsageAccumulator *)self _aggregateAppMediaUsage:v11 timestamp:v7];
        v22 = objc_alloc(MEMORY[0x277CF1008]);
        v23 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v12, "starting")}];
        v24 = [v12 bundleID];
        v25 = [v12 URL];
        [v12 mediaURL];
        v39 = v11;
        v41 = v8;
        v27 = v26 = v7;
        v28 = v6;
        v29 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v12, "isUsageTrusted")}];
        v30 = [v12 safariProfileID];
        v31 = [v12 uniqueID];
        v32 = [v22 initWithStarting:v23 bundleID:v24 URL:v25 mediaURL:v27 isUsageTrusted:v29 absoluteTimestamp:v26 safariProfileID:v30 uniqueID:v31];

        v6 = v28;
        v8 = v41;

        v7 = v26;
        v11 = v39;

        v33 = [(USUsageAccumulator *)v42 mediaUsageByUniqueID];
        [v33 setObject:v32 forKeyedSubscript:v41];

LABEL_25:
        goto LABEL_26;
      }

      v38 = v16;
    }

    v17 = [v11 URL];
    v18 = [v12 URL];
    if (v17 == v18)
    {
      v37 = v14;
    }

    else
    {
      v19 = [v11 URL];
      v35 = [v12 URL];
      v36 = v19;
      if (![v19 isEqual:?])
      {
        v20 = 0;
        goto LABEL_17;
      }

      v37 = v14;
    }

    v21 = [v11 isUsageTrusted];
    v20 = v21 ^ [v12 isUsageTrusted] ^ 1;
    if (v17 == v18)
    {

      v14 = v37;
LABEL_19:
      self = v42;
      v16 = v38;
      if (v14 == v15)
      {
        goto LABEL_21;
      }

      goto LABEL_20;
    }

    v14 = v37;
LABEL_17:

    goto LABEL_19;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [USUsageAccumulator _accumulateAppMediaUsage:timestamp:];
  }

LABEL_26:

  v34 = *MEMORY[0x277D85DE8];
}

- (void)_accumulateAppWebUsage:(id)a3 timestamp:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 uniqueID];
  v9 = [v6 webDomain];
  v10 = [v6 applicationID];
  v11 = v10;
  if (v8 && v9 && v10)
  {
    v12 = [v6 isUsageTrusted];
    v13 = [(USUsageAccumulator *)self webUsageStateByUniqueID];
    v14 = [v13 objectForKeyedSubscript:v8];

    v15 = [v6 usageState];
    v16 = v15;
    if (v14)
    {
      if ([v14 intValue] == 3)
      {
        if (v16 != 3)
        {
          v17 = 0;
LABEL_13:
          [(USUsageAccumulator *)self _accumulateWebDomain:v9 bundleIdentifier:v11 timestamp:v7 starting:v17 isUsageTrusted:v12];
        }
      }

      else if (v16 == 3)
      {
        v17 = 1;
        goto LABEL_13;
      }

      v18 = [MEMORY[0x277CCABB0] numberWithInt:v16];
      v19 = [(USUsageAccumulator *)self webUsageStateByUniqueID];
      [v19 setObject:v18 forKeyedSubscript:v8];

      goto LABEL_15;
    }

    v17 = v15 == 3;
    goto LABEL_13;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [USUsageAccumulator _accumulateAppWebUsage:timestamp:];
  }

LABEL_15:
}

- (void)_accumulateDeviceBacklight:(id)a3 timestamp:(id)a4
{
  v7 = a4;
  v6 = [a3 backlightLevel];
  [(USUsageAccumulator *)self setDeviceBacklit:v6 != 0];
  if (![(USUsageAccumulator *)self isStandByEnabled])
  {
    [(USUsageAccumulator *)self _accumulateDeviceBacklightWithIsBacklit:v6 != 0 timestamp:v7];
  }
}

- (void)_accumulateDeviceBacklightWithIsBacklit:(BOOL)a3 timestamp:(id)a4
{
  v4 = a3;
  v39 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = [(USUsageAccumulator *)self backlightStartDate];
  v8 = v7;
  if (v4)
  {
    if (!v7)
    {
      [(USUsageAccumulator *)self setBacklightStartDate:v6];
    }
  }

  else if (v7)
  {
    v9 = [v7 compare:v6];
    if (v9 != 1)
    {
      if (v9)
      {
        if (v9 != -1)
        {
          goto LABEL_29;
        }

        v10 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v8 endDate:v6];
        v11 = [(USUsageAccumulator *)self backlightIntervals];
        v12 = v10;
        v34 = 0u;
        v35 = 0u;
        v36 = 0u;
        v37 = 0u;
        v13 = [v11 countByEnumeratingWithState:&v34 objects:v38 count:16];
        if (v13)
        {
          v30 = self;
          v31 = v8;
          v32 = v6;
          v14 = 0;
          v15 = *v35;
          v29 = v12;
          do
          {
            v16 = 0;
            v33 = v13;
            do
            {
              if (*v35 != v15)
              {
                objc_enumerationMutation(v11);
              }

              v17 = *(*(&v34 + 1) + 8 * v16);
              if ([v17 intersectsDateInterval:v12])
              {
                v18 = v11;
                v19 = [v17 startDate];
                v20 = [v12 startDate];
                v21 = [v19 earlierDate:v20];

                v22 = [v17 endDate];
                [v12 endDate];
                v24 = v23 = v14;
                v25 = [v22 laterDate:v24];

                v14 = v23;
                v26 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v21 endDate:v25];

                if (v23)
                {
                  [v23 addObject:v17];
                }

                else
                {
                  v14 = [objc_alloc(MEMORY[0x277CBEB18]) initWithObjects:{v17, 0}];
                }

                v12 = v26;
                v11 = v18;
                v13 = v33;
              }

              v16 = v16 + 1;
            }

            while (v13 != v16);
            v13 = [v11 countByEnumeratingWithState:&v34 objects:v38 count:16];
          }

          while (v13);
          if (v14)
          {
            [v11 removeObjectsInArray:v14];
            v6 = v32;
            v13 = v14;
          }

          else
          {
            v13 = 0;
            v6 = v32;
          }

          self = v30;
          v8 = v31;
          v27 = v29;
        }

        else
        {
          v27 = v12;
        }

        [v11 addObject:v12];
      }

      [(USUsageAccumulator *)self setBacklightStartDate:0];
      [(USUsageAccumulator *)self _stopAllUsageWithEndDate:v6];
      goto LABEL_29;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
    {
      [USUsageAccumulator _accumulateDeviceBacklightWithIsBacklit:timestamp:];
    }
  }

LABEL_29:

  v28 = *MEMORY[0x277D85DE8];
}

- (void)_accumulateMediaNowPlaying:(id)a3 timestamp:(id)a4
{
  v11 = a3;
  v6 = a4;
  v7 = [v11 bundleID];
  if (([v7 isEqualToString:@"com.apple.quicklook.extension.previewUI"] & 1) != 0 || objc_msgSend(v7, "isEqualToString:", @"com.apple.quicklook.QuickLookUIService"))
  {
    v8 = [v11 itemMediaType];

    if (v8 == 2)
    {
      v9 = [(USUsageAccumulator *)self quickLookVideoNowPlayingState];
      v10 = [v11 playbackState];
      if ((v9 != 1) == (v10 == 1))
      {
        [(USUsageAccumulator *)self _accumulateMediaNowPlayingWithTimestamp:v6 starting:v9 != 1];
      }

      [(USUsageAccumulator *)self setQuickLookVideoNowPlayingState:v10];
    }
  }

  else
  {
  }
}

- (void)_accumulateNotificationUsage:(id)a3
{
  v4 = a3;
  if ([v4 usageType] == 1 || objc_msgSend(v4, "usageType") == 17 || objc_msgSend(v4, "usageType") == 18)
  {
    v5 = [v4 parentBundleID];
    if (v5 || ([v4 bundleID], (v5 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v6 = v5;
      v7 = [[USTrustIdentifier alloc] initWithIdentifier:v5 trusted:1];
      v8 = [(USUsageAccumulator *)self notifications];
      v9 = [v8 objectForKeyedSubscript:v7];
      v10 = [v9 unsignedIntValue] + 1;

      v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v10];
      v12 = [(USUsageAccumulator *)self notifications];
      [v12 setObject:v11 forKeyedSubscript:v7];
    }

    else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [USUsageAccumulator _accumulateNotificationUsage:];
    }
  }
}

- (void)_accumulateMediaNowPlayingWithTimestamp:(id)a3 starting:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(USUsageAccumulator *)self mediaNowPlayingStartDate];
  v8 = v7;
  if (v4)
  {
    if (!v7)
    {
      v9 = self;
      v10 = v6;
LABEL_10:
      [(USUsageAccumulator *)v9 setMediaNowPlayingStartDate:v10];
    }
  }

  else if (v7)
  {
    v11 = [v7 compare:v6];
    if (v11 != 1)
    {
      if (v11)
      {
        if (v11 != -1)
        {
          goto LABEL_11;
        }

        v12 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v8 endDate:v6];
        [(USUsageAccumulator *)self _aggregateCategoryUsageInterval:v12 identifier:*MEMORY[0x277CF95D0]];
      }

      v9 = self;
      v10 = 0;
      goto LABEL_10;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
    {
      [USUsageAccumulator _accumulateMediaNowPlayingWithTimestamp:starting:];
    }
  }

LABEL_11:
}

- (void)aggregateUsageForInterval:(id)a3 usageReportHandler:(id)a4
{
  v49[16] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [v6 endDate];
  v9 = [MEMORY[0x277CBEAA8] now];
  v10 = [v8 earlierDate:v9];

  [(USUsageAccumulator *)self _aggregateStartDatesUsingEndDate:v10];
  v11 = [(USUsageAccumulator *)self lastEventDate];
  v12 = v11;
  if (v11)
  {
    v37 = v11;
    v38 = v10;
    v39 = v7;
    v40 = v6;
    v13 = [(USUsageAccumulator *)self backlightIntervals];
    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    v48 = 0u;
    v14 = [v13 countByEnumeratingWithState:&v45 objects:v49 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = 0;
      v17 = *v46;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v46 != v17)
          {
            objc_enumerationMutation(v13);
          }

          v19 = *(*(&v45 + 1) + 8 * i);
          [v19 duration];
          if (v20 > -1.0)
          {
            v21 = v19;

            v16 = v21;
          }
        }

        v15 = [v13 countByEnumeratingWithState:&v45 objects:v49 count:16];
      }

      while (v15);
    }

    else
    {
      v16 = 0;
    }

    v49[0] = 0;
    v23 = [(USUsageAccumulator *)self applicationUsageIntervals];
    v44 = 0;
    v43 = [USUsageQuerying _generatePickupsByBundleIdentifierWithPickupIntervals:v13 applicationUsageIntervals:v23 pickupsWithoutApplicationUsage:v49 firstPickup:&v44];
    v36 = v44;

    v35 = v49[0];
    v34 = [(USUsageAccumulator *)self applicationUsageIntervals];
    v42 = [(USUsageAccumulator *)self webUsageIntervals];
    v41 = [(USUsageAccumulator *)self categoryUsageIntervals];
    v32 = [(USUsageAccumulator *)self canonicalApplicationUsageIntervals];
    v31 = [(USUsageAccumulator *)self primaryWebUsageIntervals];
    v30 = [(USUsageAccumulator *)self applicationCategories];
    v24 = [(USUsageAccumulator *)self webCategories];
    v25 = self;
    v33 = self;
    v26 = v24;
    v27 = [(USUsageAccumulator *)v25 notifications];
    v28 = [MEMORY[0x277CBEBB0] localTimeZone];
    v12 = v37;
    v6 = v40;
    v22 = [USUsageQuerying _newReportWithNonIntersectingScreenTimeIntervals:v13 pickupsByBundleIdentifier:v43 pickupsWithoutApplicationUsage:v35 firstPickup:v36 longestSession:v16 applicationUsageIntervals:v34 webUsageIntervals:v42 categoryUsageIntervals:v41 aggregatedApplicationUsageIntervals:v32 aggregatedWebUsageIntervals:v31 categoryByBundleIdentifier:v30 categoryByWebDomain:v26 notifications:v27 interval:v40 timeZone:v28 lastEventDate:v37];

    [(USUsageAccumulator *)v33 _resetAggregations];
    v10 = v38;
    v7 = v39;
  }

  else
  {
    v22 = [USUsageReport emptyReportForInterval:v6];
  }

  v7[2](v7, v22);

  v29 = *MEMORY[0x277D85DE8];
}

- (void)_resetAggregations
{
  v3 = [(USUsageAccumulator *)self backlightIntervals];
  [v3 removeAllObjects];

  v4 = [(USUsageAccumulator *)self applicationUsageIntervals];
  [v4 removeAllObjects];

  v5 = [(USUsageAccumulator *)self webUsageIntervals];
  [v5 removeAllObjects];

  v6 = [(USUsageAccumulator *)self categoryUsageIntervals];
  [v6 removeAllObjects];

  v7 = [(USUsageAccumulator *)self canonicalApplicationUsageIntervals];
  [v7 removeAllObjects];

  v8 = [(USUsageAccumulator *)self primaryWebUsageIntervals];
  [v8 removeAllObjects];

  v9 = [(USUsageAccumulator *)self notifications];
  [v9 removeAllObjects];

  [(USUsageAccumulator *)self setLastEventDate:0];
}

- (void)_aggregateApplicationUsageInterval:(id)a3 identifier:(id)a4
{
  v55 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v48 = self;
  v8 = [(USUsageAccumulator *)self applicationUsageIntervals];
  v9 = [v8 objectForKeyedSubscript:v7];
  v10 = v9;
  if (v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = objc_opt_new();
  }

  v12 = v11;

  v13 = v12;
  v14 = v6;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v15 = [v13 countByEnumeratingWithState:&v50 objects:v54 count:16];
  if (v15)
  {
    v16 = v15;
    v46 = v14;
    v47 = v7;
    v17 = 0;
    v18 = *v51;
    do
    {
      v19 = 0;
      v49 = v16;
      do
      {
        if (*v51 != v18)
        {
          objc_enumerationMutation(v13);
        }

        v20 = *(*(&v50 + 1) + 8 * v19);
        if ([v20 intersectsDateInterval:v14])
        {
          v21 = v13;
          v22 = [v20 startDate];
          v23 = [v14 startDate];
          v24 = [v22 earlierDate:v23];

          v25 = [v20 endDate];
          [v14 endDate];
          v27 = v26 = v17;
          v28 = [v25 laterDate:v27];

          v17 = v26;
          v29 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v24 endDate:v28];

          if (v26)
          {
            [v26 addObject:v20];
          }

          else
          {
            v17 = [objc_alloc(MEMORY[0x277CBEB18]) initWithObjects:{v20, 0}];
          }

          v14 = v29;
          v13 = v21;
          v16 = v49;
        }

        ++v19;
      }

      while (v16 != v19);
      v16 = [v13 countByEnumeratingWithState:&v50 objects:v54 count:16];
    }

    while (v16);
    v7 = v47;
    if (v17)
    {
      [v13 removeObjectsInArray:v17];
    }

    v30 = v48;
    v31 = v46;
  }

  else
  {
    v17 = 0;
    v31 = v14;
    v30 = v48;
  }

  [v13 addObject:v14];

  v32 = [(USUsageAccumulator *)v30 applicationUsageIntervals];
  [v32 setObject:v13 forKeyedSubscript:v7];

  v33 = [(USUsageAccumulator *)v30 applicationCategories];
  v34 = [v7 identifier];
  v35 = [v33 objectForKeyedSubscript:v34];

  v36 = [v35 identifier];
  v37 = v36;
  v38 = *MEMORY[0x277CF95E8];
  if (v36)
  {
    v38 = v36;
  }

  v39 = v38;

  [(USUsageAccumulator *)v30 _aggregateCategoryUsageInterval:v31 identifier:v39];
  v40 = [v35 canonicalBundleIdentifier];
  v41 = v40;
  if (v40)
  {
    v42 = v40;
  }

  else
  {
    v42 = [v7 identifier];
  }

  v43 = v42;

  v44 = [[USTrustIdentifier alloc] initWithIdentifier:v43 trusted:1];
  [(USUsageAccumulator *)v30 _aggregateCanonicalApplicationUsageInterval:v31 canonicalIdentifier:v44];

  v45 = *MEMORY[0x277D85DE8];
}

- (void)_aggregateAppMediaUsage:(id)a3 timestamp:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 bundleID];
  if ([v6 starting] && v8)
  {
    v9 = [v6 absoluteTimestamp];
    v10 = [v9 compare:v7];
    if (v10 == 1)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
      {
        [USUsageAccumulator _aggregateAppMediaUsage:timestamp:];
      }
    }

    else if (v10 == -1)
    {
      v11 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v9 endDate:v7];
      v12 = [v6 isUsageTrusted];
      v13 = [[USTrustIdentifier alloc] initWithIdentifier:v8 trusted:v12];
      [(USUsageAccumulator *)self _aggregateApplicationUsageInterval:v11 identifier:v13];
      v14 = [v6 URL];
      if (v14)
      {
        v21 = v13;
        v15 = v11;
        v16 = v12;
        v17 = [objc_alloc(MEMORY[0x277CBEBC0]) initWithString:v14];
        v18 = [v17 host];

        v19 = v16;
        v11 = v15;
        v13 = v21;
        if (v18)
        {
          v20 = [[USTrustIdentifier alloc] initWithIdentifier:v18 trusted:v19];
          [(USUsageAccumulator *)self _aggregateWebUsageInterval:v11 identifier:v20];
        }
      }
    }
  }
}

- (void)_aggregateWebUsageInterval:(id)a3 identifier:(id)a4
{
  v53 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v46 = self;
  v8 = [(USUsageAccumulator *)self webUsageIntervals];
  v9 = [v8 objectForKeyedSubscript:v7];
  v10 = v9;
  if (v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = objc_opt_new();
  }

  v12 = v11;

  v13 = v12;
  v14 = v6;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v15 = [v13 countByEnumeratingWithState:&v48 objects:v52 count:16];
  if (v15)
  {
    v16 = v15;
    v44 = v14;
    v45 = v7;
    v17 = 0;
    v18 = *v49;
    v19 = v14;
    do
    {
      v20 = 0;
      v47 = v16;
      do
      {
        if (*v49 != v18)
        {
          objc_enumerationMutation(v13);
        }

        v21 = *(*(&v48 + 1) + 8 * v20);
        if ([v21 intersectsDateInterval:v19])
        {
          v22 = v13;
          v23 = [v21 startDate];
          v24 = [v19 startDate];
          v25 = [v23 earlierDate:v24];

          v26 = [v21 endDate];
          [v19 endDate];
          v28 = v27 = v17;
          v29 = [v26 laterDate:v28];

          v17 = v27;
          v30 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v25 endDate:v29];

          if (v27)
          {
            [v27 addObject:v21];
          }

          else
          {
            v17 = [objc_alloc(MEMORY[0x277CBEB18]) initWithObjects:{v21, 0}];
          }

          v19 = v30;
          v13 = v22;
          v16 = v47;
        }

        ++v20;
      }

      while (v16 != v20);
      v16 = [v13 countByEnumeratingWithState:&v48 objects:v52 count:16];
    }

    while (v16);
    v7 = v45;
    if (v17)
    {
      [v13 removeObjectsInArray:v17];
    }

    v31 = v46;
    v14 = v44;
  }

  else
  {
    v17 = 0;
    v19 = v14;
    v31 = v46;
  }

  [v13 addObject:v19];

  v32 = [(USUsageAccumulator *)v31 webUsageIntervals];
  [v32 setObject:v13 forKeyedSubscript:v7];

  v33 = [(USUsageAccumulator *)v31 webCategories];
  v34 = [v7 identifier];
  v35 = [v33 objectForKeyedSubscript:v34];

  v36 = [v35 identifier];
  v37 = v36;
  v38 = *MEMORY[0x277CF95E8];
  if (v36)
  {
    v38 = v36;
  }

  v39 = v38;

  [(USUsageAccumulator *)v31 _aggregateCategoryUsageInterval:v14 identifier:v39];
  v40 = [v35 canonicalBundleIdentifier];
  if (v40)
  {
    v41 = -[USTrustIdentifier initWithIdentifier:trusted:]([USTrustIdentifier alloc], "initWithIdentifier:trusted:", v40, [v7 trusted]);
    [(USUsageAccumulator *)v31 _aggregateCanonicalApplicationUsageInterval:v14 canonicalIdentifier:v41];
  }

  else
  {
    v41 = [v35 primaryWebDomain];
    if (v41)
    {
      v42 = -[USTrustIdentifier initWithIdentifier:trusted:]([USTrustIdentifier alloc], "initWithIdentifier:trusted:", v41, [v7 trusted]);
      [(USUsageAccumulator *)v31 _aggregatePrimaryWebUsageInterval:v14 primaryIdentifier:v42];
    }
  }

  v43 = *MEMORY[0x277D85DE8];
}

- (void)_aggregateCategoryUsageInterval:(id)a3 identifier:(id)a4
{
  v40 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v33 = self;
  v8 = [(USUsageAccumulator *)self categoryUsageIntervals];
  v9 = [v8 objectForKeyedSubscript:v7];
  v10 = v9;
  if (v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = objc_opt_new();
  }

  v12 = v11;

  v13 = v12;
  v14 = v6;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v15 = [v13 countByEnumeratingWithState:&v35 objects:v39 count:16];
  if (v15)
  {
    v16 = v15;
    v31 = v14;
    v32 = v7;
    v34 = 0;
    v17 = *v36;
    v18 = v14;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v36 != v17)
        {
          objc_enumerationMutation(v13);
        }

        v20 = *(*(&v35 + 1) + 8 * i);
        if ([v20 intersectsDateInterval:v18])
        {
          v21 = [v20 startDate];
          v22 = [v18 startDate];
          v23 = [v21 earlierDate:v22];

          v24 = [v20 endDate];
          v25 = [v18 endDate];
          v26 = [v24 laterDate:v25];

          v27 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v23 endDate:v26];
          if (v34)
          {
            [v34 addObject:v20];
          }

          else
          {
            v34 = [objc_alloc(MEMORY[0x277CBEB18]) initWithObjects:{v20, 0}];
          }

          v18 = v27;
        }
      }

      v16 = [v13 countByEnumeratingWithState:&v35 objects:v39 count:16];
    }

    while (v16);
    v7 = v32;
    v28 = v34;
    if (v34)
    {
      [v13 removeObjectsInArray:v34];
    }

    v14 = v31;
  }

  else
  {
    v28 = 0;
    v18 = v14;
  }

  [v13 addObject:v18];

  v29 = [(USUsageAccumulator *)v33 categoryUsageIntervals];
  [v29 setObject:v13 forKeyedSubscript:v7];

  v30 = *MEMORY[0x277D85DE8];
}

- (void)_aggregateCanonicalApplicationUsageInterval:(id)a3 canonicalIdentifier:(id)a4
{
  v40 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v33 = self;
  v8 = [(USUsageAccumulator *)self canonicalApplicationUsageIntervals];
  v9 = [v8 objectForKeyedSubscript:v7];
  v10 = v9;
  if (v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = objc_opt_new();
  }

  v12 = v11;

  v13 = v12;
  v14 = v6;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v15 = [v13 countByEnumeratingWithState:&v35 objects:v39 count:16];
  if (v15)
  {
    v16 = v15;
    v31 = v14;
    v32 = v7;
    v34 = 0;
    v17 = *v36;
    v18 = v14;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v36 != v17)
        {
          objc_enumerationMutation(v13);
        }

        v20 = *(*(&v35 + 1) + 8 * i);
        if ([v20 intersectsDateInterval:v18])
        {
          v21 = [v20 startDate];
          v22 = [v18 startDate];
          v23 = [v21 earlierDate:v22];

          v24 = [v20 endDate];
          v25 = [v18 endDate];
          v26 = [v24 laterDate:v25];

          v27 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v23 endDate:v26];
          if (v34)
          {
            [v34 addObject:v20];
          }

          else
          {
            v34 = [objc_alloc(MEMORY[0x277CBEB18]) initWithObjects:{v20, 0}];
          }

          v18 = v27;
        }
      }

      v16 = [v13 countByEnumeratingWithState:&v35 objects:v39 count:16];
    }

    while (v16);
    v7 = v32;
    v28 = v34;
    if (v34)
    {
      [v13 removeObjectsInArray:v34];
    }

    v14 = v31;
  }

  else
  {
    v28 = 0;
    v18 = v14;
  }

  [v13 addObject:v18];

  v29 = [(USUsageAccumulator *)v33 canonicalApplicationUsageIntervals];
  [v29 setObject:v13 forKeyedSubscript:v7];

  v30 = *MEMORY[0x277D85DE8];
}

- (void)_aggregatePrimaryWebUsageInterval:(id)a3 primaryIdentifier:(id)a4
{
  v40 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v33 = self;
  v8 = [(USUsageAccumulator *)self primaryWebUsageIntervals];
  v9 = [v8 objectForKeyedSubscript:v7];
  v10 = v9;
  if (v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = objc_opt_new();
  }

  v12 = v11;

  v13 = v12;
  v14 = v6;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v15 = [v13 countByEnumeratingWithState:&v35 objects:v39 count:16];
  if (v15)
  {
    v16 = v15;
    v31 = v14;
    v32 = v7;
    v34 = 0;
    v17 = *v36;
    v18 = v14;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v36 != v17)
        {
          objc_enumerationMutation(v13);
        }

        v20 = *(*(&v35 + 1) + 8 * i);
        if ([v20 intersectsDateInterval:v18])
        {
          v21 = [v20 startDate];
          v22 = [v18 startDate];
          v23 = [v21 earlierDate:v22];

          v24 = [v20 endDate];
          v25 = [v18 endDate];
          v26 = [v24 laterDate:v25];

          v27 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v23 endDate:v26];
          if (v34)
          {
            [v34 addObject:v20];
          }

          else
          {
            v34 = [objc_alloc(MEMORY[0x277CBEB18]) initWithObjects:{v20, 0}];
          }

          v18 = v27;
        }
      }

      v16 = [v13 countByEnumeratingWithState:&v35 objects:v39 count:16];
    }

    while (v16);
    v7 = v32;
    v28 = v34;
    if (v34)
    {
      [v13 removeObjectsInArray:v34];
    }

    v14 = v31;
  }

  else
  {
    v28 = 0;
    v18 = v14;
  }

  [v13 addObject:v18];

  v29 = [(USUsageAccumulator *)v33 primaryWebUsageIntervals];
  [v29 setObject:v13 forKeyedSubscript:v7];

  v30 = *MEMORY[0x277D85DE8];
}

- (void)_stopAllUsageWithEndDate:(id)a3
{
  v4 = a3;
  v5 = [(USUsageAccumulator *)self applicationUsageStartDates];
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __47__USUsageAccumulator__stopAllUsageWithEndDate___block_invoke;
  v28[3] = &unk_279E0A218;
  v6 = v4;
  v29 = v6;
  v30 = self;
  [v5 enumerateKeysAndObjectsUsingBlock:v28];

  v7 = [(USUsageAccumulator *)self applicationUsageStartDates];
  [v7 removeAllObjects];

  v8 = [(USUsageAccumulator *)self webUsageStartDatesByWebBrowser];
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __47__USUsageAccumulator__stopAllUsageWithEndDate___block_invoke_16;
  v25[3] = &unk_279E09DB8;
  v9 = v6;
  v26 = v9;
  v27 = self;
  [v8 enumerateKeysAndObjectsUsingBlock:v25];

  v10 = [(USUsageAccumulator *)self webUsageStartDatesByWebBrowser];
  [v10 removeAllObjects];

  v11 = [(USUsageAccumulator *)self mediaUsageByUniqueID];
  v19 = MEMORY[0x277D85DD0];
  v20 = 3221225472;
  v21 = __47__USUsageAccumulator__stopAllUsageWithEndDate___block_invoke_19;
  v22 = &unk_279E0A268;
  v23 = self;
  v12 = v9;
  v24 = v12;
  [v11 enumerateKeysAndObjectsUsingBlock:&v19];

  v13 = [(USUsageAccumulator *)self mediaUsageByUniqueID:v19];
  [v13 removeAllObjects];

  v14 = [(USUsageAccumulator *)self mediaNowPlayingStartDate];
  v15 = v14;
  if (v14)
  {
    v16 = [v14 compare:v12];
    if (v16 == 1)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
      {
        [USUsageAccumulator _accumulateMediaNowPlayingWithTimestamp:starting:];
      }
    }

    else if (v16 == -1)
    {
      v17 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v15 endDate:v12];
      [(USUsageAccumulator *)self _aggregateCategoryUsageInterval:v17 identifier:*MEMORY[0x277CF95D0]];
    }
  }

  [(USUsageAccumulator *)self setMediaNowPlayingStartDate:0];
  v18 = [(USUsageAccumulator *)self webUsageStateByUniqueID];
  [v18 removeAllObjects];
}

void __47__USUsageAccumulator__stopAllUsageWithEndDate___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [v6 compare:*(a1 + 32)];
  if (v7 == 1)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
    {
      __47__USUsageAccumulator__stopAllUsageWithEndDate___block_invoke_cold_1(v5, v6, (a1 + 32));
    }
  }

  else if (v7 == -1)
  {
    v8 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v6 endDate:*(a1 + 32)];
    [*(a1 + 40) _aggregateApplicationUsageInterval:v8 identifier:v5];
  }
}

void __47__USUsageAccumulator__stopAllUsageWithEndDate___block_invoke_16(uint64_t a1, uint64_t a2, void *a3)
{
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __47__USUsageAccumulator__stopAllUsageWithEndDate___block_invoke_2;
  v7[3] = &unk_279E0A240;
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v8 = v5;
  v9 = v6;
  [a3 enumerateKeysAndObjectsUsingBlock:v7];
}

void __47__USUsageAccumulator__stopAllUsageWithEndDate___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v31 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v20 objects:v30 count:16];
  if (v7)
  {
    v9 = v7;
    v10 = *v21;
    v11 = MEMORY[0x277D86220];
    *&v8 = 138543874;
    v19 = v8;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v21 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v13 = *(*(&v20 + 1) + 8 * i);
        v14 = [v13 compare:{*(a1 + 32), v19}];
        if (v14 == 1)
        {
          if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
          {
            v16 = [v5 identifier];
            v17 = *(a1 + 32);
            *buf = v19;
            v25 = v16;
            v26 = 2114;
            v27 = v13;
            v28 = 2114;
            v29 = v17;
            _os_log_fault_impl(&dword_2707F8000, v11, OS_LOG_TYPE_FAULT, "Web domain %{public}@ start date: %{public}@ is later than end date: %{public}@", buf, 0x20u);
          }
        }

        else if (v14 == -1)
        {
          v15 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v13 endDate:*(a1 + 32)];
          [*(a1 + 40) _aggregateWebUsageInterval:v15 identifier:v5];
        }
      }

      v9 = [v6 countByEnumeratingWithState:&v20 objects:v30 count:16];
    }

    while (v9);
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)_stopAllWebUsageForWebBrowser:(id)a3 endDate:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(USUsageAccumulator *)self webUsageStartDatesByWebBrowser];
  v9 = [v8 objectForKeyedSubscript:v7];
  v12 = MEMORY[0x277D85DD0];
  v13 = 3221225472;
  v14 = __60__USUsageAccumulator__stopAllWebUsageForWebBrowser_endDate___block_invoke;
  v15 = &unk_279E0A240;
  v16 = v6;
  v17 = self;
  v10 = v6;
  [v9 enumerateKeysAndObjectsUsingBlock:&v12];

  v11 = [(USUsageAccumulator *)self webUsageStartDatesByWebBrowser:v12];
  [v11 setObject:0 forKeyedSubscript:v7];
}

void __60__USUsageAccumulator__stopAllWebUsageForWebBrowser_endDate___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v31 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v20 objects:v30 count:16];
  if (v7)
  {
    v9 = v7;
    v10 = *v21;
    v11 = MEMORY[0x277D86220];
    *&v8 = 138543874;
    v19 = v8;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v21 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v13 = *(*(&v20 + 1) + 8 * i);
        v14 = [v13 compare:{*(a1 + 32), v19}];
        if (v14 == 1)
        {
          if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
          {
            v16 = [v5 identifier];
            v17 = *(a1 + 32);
            *buf = v19;
            v25 = v16;
            v26 = 2114;
            v27 = v13;
            v28 = 2114;
            v29 = v17;
            _os_log_fault_impl(&dword_2707F8000, v11, OS_LOG_TYPE_FAULT, "Web domain %{public}@ start date: %{public}@ is later than end date: %{public}@", buf, 0x20u);
          }
        }

        else if (v14 == -1)
        {
          v15 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v13 endDate:*(a1 + 32)];
          [*(a1 + 40) _aggregateWebUsageInterval:v15 identifier:v5];
        }
      }

      v9 = [v6 countByEnumeratingWithState:&v20 objects:v30 count:16];
    }

    while (v9);
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)_aggregateStartDatesUsingEndDate:(id)a3
{
  v79 = *MEMORY[0x277D85DE8];
  v47 = a3;
  v69 = 0;
  v70 = &v69;
  v71 = 0x2020000000;
  v72 = 0;
  v46 = [(USUsageAccumulator *)self backlightStartDate];
  if (v46)
  {
    v4 = [v46 compare:v47];
    if (v4 == -1)
    {
      v5 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v46 endDate:v47];
      v6 = [(USUsageAccumulator *)self backlightIntervals];
      v45 = v5;
      v73 = 0u;
      v74 = 0u;
      v75 = 0u;
      v76 = 0u;
      obj = v6;
      v7 = [obj countByEnumeratingWithState:&v73 objects:v78 count:16];
      if (v7)
      {
        v8 = 0;
        v49 = *v74;
        v9 = v45;
        do
        {
          for (i = 0; i != v7; ++i)
          {
            if (*v74 != v49)
            {
              objc_enumerationMutation(obj);
            }

            v11 = *(*(&v73 + 1) + 8 * i);
            if ([v11 intersectsDateInterval:v9])
            {
              v12 = [v11 startDate];
              v13 = [v9 startDate];
              v14 = [v12 earlierDate:v13];

              v15 = [v11 endDate];
              v16 = [v9 endDate];
              v17 = [v15 laterDate:v16];

              v18 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v14 endDate:v17];
              if (v8)
              {
                [v8 addObject:v11];
              }

              else
              {
                v8 = [objc_alloc(MEMORY[0x277CBEB18]) initWithObjects:{v11, 0}];
              }

              v9 = v18;
            }
          }

          v7 = [obj countByEnumeratingWithState:&v73 objects:v78 count:16];
        }

        while (v7);

        if (v8)
        {
          [obj removeObjectsInArray:v8];
        }
      }

      else
      {

        v8 = 0;
        v9 = v45;
      }

      [obj addObject:v9];
    }

    else if (v4 == 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
    {
      [USUsageAccumulator _accumulateDeviceBacklightWithIsBacklit:timestamp:];
    }

    [(USUsageAccumulator *)self setBacklightStartDate:v47];
    *(v70 + 24) = 1;
  }

  v19 = objc_opt_new();
  v20 = [(USUsageAccumulator *)self applicationUsageStartDates];
  v65[0] = MEMORY[0x277D85DD0];
  v65[1] = 3221225472;
  v65[2] = __55__USUsageAccumulator__aggregateStartDatesUsingEndDate___block_invoke;
  v65[3] = &unk_279E0A290;
  v21 = v47;
  v66 = v21;
  v67 = self;
  v22 = v19;
  v68 = v22;
  [v20 enumerateKeysAndObjectsUsingBlock:v65];

  v23 = [(USUsageAccumulator *)self applicationUsageStartDates];
  [v23 removeAllObjects];

  v63 = 0u;
  v64 = 0u;
  v61 = 0u;
  v62 = 0u;
  v24 = v22;
  v25 = [v24 countByEnumeratingWithState:&v61 objects:v77 count:16];
  if (v25)
  {
    v26 = *v62;
    do
    {
      for (j = 0; j != v25; ++j)
      {
        if (*v62 != v26)
        {
          objc_enumerationMutation(v24);
        }

        v28 = *(*(&v61 + 1) + 8 * j);
        v29 = [v28 identifier];
        -[USUsageAccumulator _accumulateApplication:timestamp:starting:isUsageTrusted:](self, "_accumulateApplication:timestamp:starting:isUsageTrusted:", v29, v21, 1, [v28 trusted]);

        *(v70 + 24) = 1;
      }

      v25 = [v24 countByEnumeratingWithState:&v61 objects:v77 count:16];
    }

    while (v25);
  }

  v30 = objc_opt_new();
  v31 = [(USUsageAccumulator *)self webUsageStartDatesByWebBrowser];
  v57[0] = MEMORY[0x277D85DD0];
  v57[1] = 3221225472;
  v57[2] = __55__USUsageAccumulator__aggregateStartDatesUsingEndDate___block_invoke_21;
  v57[3] = &unk_279E09D68;
  v32 = v21;
  v58 = v32;
  v59 = self;
  v33 = v30;
  v60 = v33;
  [v31 enumerateKeysAndObjectsUsingBlock:v57];

  v34 = [(USUsageAccumulator *)self webUsageStartDatesByWebBrowser];
  [v34 removeAllObjects];

  v54[0] = MEMORY[0x277D85DD0];
  v54[1] = 3221225472;
  v54[2] = __55__USUsageAccumulator__aggregateStartDatesUsingEndDate___block_invoke_22;
  v54[3] = &unk_279E0A2E0;
  v54[4] = self;
  v35 = v32;
  v55 = v35;
  v56 = &v69;
  [v33 enumerateKeysAndObjectsUsingBlock:v54];
  v36 = objc_opt_new();
  v37 = [(USUsageAccumulator *)self mediaUsageByUniqueID];
  v50[0] = MEMORY[0x277D85DD0];
  v50[1] = 3221225472;
  v50[2] = __55__USUsageAccumulator__aggregateStartDatesUsingEndDate___block_invoke_2_23;
  v50[3] = &unk_279E0A308;
  v50[4] = self;
  v38 = v35;
  v51 = v38;
  v39 = v36;
  v52 = v39;
  v53 = &v69;
  [v37 enumerateKeysAndObjectsUsingBlock:v50];

  [(USUsageAccumulator *)self setMediaUsageByUniqueID:v39];
  v40 = [(USUsageAccumulator *)self mediaNowPlayingStartDate];
  v41 = v40;
  if (v40)
  {
    v42 = [v40 compare:v38];
    if (v42 == -1)
    {
      v43 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v41 endDate:v38];
      [(USUsageAccumulator *)self _aggregateCategoryUsageInterval:v43 identifier:*MEMORY[0x277CF95D0]];
    }

    else if (v42 == 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
    {
      [USUsageAccumulator _accumulateMediaNowPlayingWithTimestamp:starting:];
    }

    [(USUsageAccumulator *)self setMediaNowPlayingStartDate:v38];
    *(v70 + 24) = 1;
  }

  else if ((v70[3] & 1) == 0)
  {
    goto LABEL_40;
  }

  [(USUsageAccumulator *)self setLastEventDate:v38];
LABEL_40:

  _Block_object_dispose(&v69, 8);
  v44 = *MEMORY[0x277D85DE8];
}

void __55__USUsageAccumulator__aggregateStartDatesUsingEndDate___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [v6 compare:*(a1 + 32)];
  if (v7 == 1)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
    {
      __47__USUsageAccumulator__stopAllUsageWithEndDate___block_invoke_cold_1(v5, v6, (a1 + 32));
    }
  }

  else if (v7 == -1)
  {
    v8 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v6 endDate:*(a1 + 32)];
    [*(a1 + 40) _aggregateApplicationUsageInterval:v8 identifier:v5];
  }

  [*(a1 + 48) addObject:v5];
}

void __55__USUsageAccumulator__aggregateStartDatesUsingEndDate___block_invoke_21(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __55__USUsageAccumulator__aggregateStartDatesUsingEndDate___block_invoke_2;
  v10[3] = &unk_279E0A2B8;
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = *(a1 + 48);
  v11 = v6;
  v12 = v7;
  v13 = v8;
  v14 = v5;
  v9 = v5;
  [a3 enumerateKeysAndObjectsUsingBlock:v10];
}

void __55__USUsageAccumulator__aggregateStartDatesUsingEndDate___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v35 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v24 objects:v34 count:16];
  if (v7)
  {
    v9 = v7;
    v10 = *v25;
    v11 = MEMORY[0x277D86220];
    *&v8 = 138543874;
    v23 = v8;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v25 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v13 = *(*(&v24 + 1) + 8 * i);
        v14 = [v13 compare:{*(a1 + 32), v23}];
        if (v14 == 1)
        {
          if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
          {
            v20 = [v5 identifier];
            v21 = *(a1 + 32);
            *buf = v23;
            v29 = v20;
            v30 = 2114;
            v31 = v13;
            v32 = 2114;
            v33 = v21;
            _os_log_fault_impl(&dword_2707F8000, v11, OS_LOG_TYPE_FAULT, "Web domain %{public}@ start date: %{public}@ is later than end date: %{public}@", buf, 0x20u);
          }
        }

        else if (v14 == -1)
        {
          v15 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v13 endDate:*(a1 + 32)];
          [*(a1 + 40) _aggregateWebUsageInterval:v15 identifier:v5];
        }

        v16 = [*(a1 + 48) objectForKeyedSubscript:*(a1 + 56)];
        v17 = v16;
        if (v16)
        {
          v18 = v16;
        }

        else
        {
          v18 = objc_opt_new();
        }

        v19 = v18;

        [v19 addObject:v5];
        [*(a1 + 48) setObject:v19 forKeyedSubscript:*(a1 + 56)];
      }

      v9 = [v6 countByEnumeratingWithState:&v24 objects:v34 count:16];
    }

    while (v9);
  }

  v22 = *MEMORY[0x277D85DE8];
}

void __55__USUsageAccumulator__aggregateStartDatesUsingEndDate___block_invoke_22(void *a1, void *a2, void *a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  obj = a3;
  v6 = [obj countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v17;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        v11 = a1[4];
        v12 = [v10 identifier];
        v13 = [v5 identifier];
        [v11 _accumulateWebDomain:v12 bundleIdentifier:v13 timestamp:a1[5] starting:1 isUsageTrusted:{objc_msgSend(v10, "trusted")}];

        *(*(a1[6] + 8) + 24) = 1;
      }

      v7 = [obj countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v7);
  }

  v14 = *MEMORY[0x277D85DE8];
}

void __55__USUsageAccumulator__aggregateStartDatesUsingEndDate___block_invoke_2_23(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = a3;
  v8 = a2;
  [v5 _aggregateAppMediaUsage:v7 timestamp:v6];
  v17 = objc_alloc(MEMORY[0x277CF1008]);
  v9 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v7, "starting")}];
  v10 = [v7 bundleID];
  v11 = [v7 URL];
  v12 = [v7 mediaURL];
  v13 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v7, "isUsageTrusted")}];
  v14 = *(a1 + 40);
  v15 = [v7 safariProfileID];

  v16 = [v17 initWithStarting:v9 bundleID:v10 URL:v11 mediaURL:v12 isUsageTrusted:v13 absoluteTimestamp:v14 safariProfileID:v15 uniqueID:v8];
  [*(a1 + 48) setObject:v16 forKeyedSubscript:v8];

  *(*(*(a1 + 56) + 8) + 24) = 1;
}

- (void)accumulateEvent:timestamp:.cold.1()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3_0(&dword_2707F8000, MEMORY[0x277D86220], v0, "Received unexpected event type: %{public}@", v1, v2, v3, v4, v6);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_accumulateAppUsage:timestamp:.cold.1()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3_0(&dword_2707F8000, MEMORY[0x277D86220], v0, "Received malformed app usage event: %{public}@", v1, v2, v3, v4, v6);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_accumulateAppMediaUsage:timestamp:.cold.1()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3_0(&dword_2707F8000, MEMORY[0x277D86220], v0, "Received malformed app media usage event: %{public}@", v1, v2, v3, v4, v6);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_accumulateAppWebUsage:timestamp:.cold.1()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3_0(&dword_2707F8000, MEMORY[0x277D86220], v0, "Received malformed app web usage event: %{public}@", v1, v2, v3, v4, v6);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_accumulateDeviceBacklightWithIsBacklit:timestamp:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_2_0();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_accumulateNotificationUsage:.cold.1()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3_0(&dword_2707F8000, MEMORY[0x277D86220], v0, "Received notification usage event without bundle identifier: %{public}@", v1, v2, v3, v4, v6);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_accumulateApplication:timestamp:starting:isUsageTrusted:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_2_0();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0x20u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_accumulateWebDomain:(uint64_t)a1 bundleIdentifier:(void *)a2 timestamp:starting:isUsageTrusted:.cold.1(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v8 = [a2 identifier];
  OUTLINED_FUNCTION_2_0();
  _os_log_fault_impl(v2, v3, v4, v5, v6, 0x20u);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)_accumulateMediaNowPlayingWithTimestamp:starting:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_2_0();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_aggregateAppMediaUsage:timestamp:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_2_0();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0x20u);
  v5 = *MEMORY[0x277D85DE8];
}

void __47__USUsageAccumulator__stopAllUsageWithEndDate___block_invoke_cold_1(void *a1, uint64_t a2, uint64_t *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = [a1 identifier];
  v5 = *a3;
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_2_0();
  _os_log_fault_impl(v6, v7, v8, v9, v10, 0x20u);

  v11 = *MEMORY[0x277D85DE8];
}

@end