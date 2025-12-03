@interface MADAutoAssetSetHealthReport
+ (id)bucketedTimeSinceDate:(id)date;
+ (id)errorSummaryForSplunk:(id)splunk;
+ (id)formattedDate:(id)date;
+ (id)shortUUID:(id)d;
+ (id)trimmedSetIdentifier:(id)identifier;
- (id)description;
- (id)eventPayloadForCoreAnalytics;
- (id)eventPayloadForSplunk;
@end

@implementation MADAutoAssetSetHealthReport

+ (id)trimmedSetIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [&off_4F6F68 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(&off_4F6F68);
        }

        v8 = *(*(&v11 + 1) + 8 * i);
        if ([identifierCopy hasPrefix:v8])
        {
          v9 = [identifierCopy substringFromIndex:{objc_msgSend(v8, "length")}];

          identifierCopy = v9;
        }
      }

      v5 = [&off_4F6F68 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  return identifierCopy;
}

+ (id)shortUUID:(id)d
{
  dCopy = d;
  v4 = dCopy;
  if (dCopy)
  {
    if ([dCopy length] < 0xD)
    {
      v5 = v4;
    }

    else
    {
      v5 = [v4 substringFromIndex:{objc_msgSend(v4, "length") - 12}];
    }

    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)formattedDate:(id)date
{
  v3 = formattedDate__onceToken;
  dateCopy = date;
  if (v3 != -1)
  {
    +[MADAutoAssetSetHealthReport formattedDate:];
  }

  v5 = [formattedDate__formatter stringFromDate:dateCopy];

  return v5;
}

void __45__MADAutoAssetSetHealthReport_formattedDate___block_invoke(id a1)
{
  v1 = objc_alloc_init(NSDateFormatter);
  v2 = formattedDate__formatter;
  formattedDate__formatter = v1;

  [formattedDate__formatter setDateFormat:@"yyyy-MM-dd HH:mm:ss"];
  v3 = [NSTimeZone timeZoneForSecondsFromGMT:0];
  [formattedDate__formatter setTimeZone:v3];
}

+ (id)bucketedTimeSinceDate:(id)date
{
  dateCopy = date;
  if (!dateCopy)
  {
    v9 = 0;
    goto LABEL_11;
  }

  v4 = +[NSDate now];
  [v4 timeIntervalSinceDate:dateCopy];
  v6 = v5;

  v7 = v6 / 60.0 / 60.0;
  if (v7 / 24.0 >= 1.0)
  {
    if (v7 / 24.0 >= 14.0)
    {
      v9 = @"14 days or more";
      goto LABEL_11;
    }

    v8 = @"%llu days";
    v7 = v7 / 24.0;
  }

  else
  {
    v8 = @"0 days, %llu hours";
  }

  v10 = [NSString stringWithFormat:v8, v7];
  v11 = v10;
  v12 = @"error";
  if (v10)
  {
    v12 = v10;
  }

  v9 = v12;

LABEL_11:

  return v9;
}

+ (id)errorSummaryForSplunk:(id)splunk
{
  checkedSummary = [splunk checkedSummary];
  v4 = [checkedSummary stringByReplacingOccurrencesOfString:@"com.apple.MobileAssetError.AutoAsset" withString:@"MA"];

  return v4;
}

- (id)eventPayloadForSplunk
{
  v3 = +[NSMutableDictionary dictionary];
  v4 = objc_opt_class();
  setIdentifier = [(MADAutoAssetSetHealthReport *)self setIdentifier];
  v6 = [v4 trimmedSetIdentifier:setIdentifier];
  [v3 setSafeObject:v6 forKey:@"SetID"];

  availableForUseError = [(MADAutoAssetSetHealthReport *)self availableForUseError];

  if (availableForUseError)
  {
    v8 = objc_opt_class();
    availableForUseError2 = [(MADAutoAssetSetHealthReport *)self availableForUseError];
    v10 = [v8 errorSummaryForSplunk:availableForUseError2];
    [v3 setSafeObject:v10 forKey:@"AvailErr"];
  }

  newerVersionError = [(MADAutoAssetSetHealthReport *)self newerVersionError];

  if (newerVersionError)
  {
    v12 = objc_opt_class();
    newerVersionError2 = [(MADAutoAssetSetHealthReport *)self newerVersionError];
    v14 = [v12 errorSummaryForSplunk:newerVersionError2];
    [v3 setSafeObject:v14 forKey:@"NewerErr"];
  }

  v15 = objc_opt_class();
  latestToVendAssetSetUUID = [(MADAutoAssetSetHealthReport *)self latestToVendAssetSetUUID];
  v17 = [v15 shortUUID:latestToVendAssetSetUUID];
  v18 = v17;
  if (v17)
  {
    v19 = v17;
  }

  else
  {
    v19 = @"none";
  }

  [v3 setSafeObject:v19 forKey:@"Vend"];

  latestDiscoveredAssetSetUUID = [(MADAutoAssetSetHealthReport *)self latestDiscoveredAssetSetUUID];
  latestToVendAssetSetUUID2 = [(MADAutoAssetSetHealthReport *)self latestToVendAssetSetUUID];
  v22 = [SUCore stringIsEqual:latestDiscoveredAssetSetUUID to:latestToVendAssetSetUUID2];

  if ((v22 & 1) == 0)
  {
    v23 = objc_opt_class();
    latestDiscoveredAssetSetUUID2 = [(MADAutoAssetSetHealthReport *)self latestDiscoveredAssetSetUUID];
    v25 = [v23 shortUUID:latestDiscoveredAssetSetUUID2];
    v26 = v25;
    if (v25)
    {
      v27 = v25;
    }

    else
    {
      v27 = @"none";
    }

    [v3 setSafeObject:v27 forKey:@"Discovered"];
  }

  v28 = [NSNumber numberWithBool:[(MADAutoAssetSetHealthReport *)self lastestToVendIsLocked]];
  [v3 setSafeObject:v28 forKey:@"Locked"];

  v29 = [NSNumber numberWithBool:[(MADAutoAssetSetHealthReport *)self lastestToVendMatchesSetConfig]];
  [v3 setSafeObject:v29 forKey:@"VendingConfig"];

  v30 = objc_opt_class();
  lastCheckedDate = [(MADAutoAssetSetHealthReport *)self LastCheckedDate];
  v32 = [v30 formattedDate:lastCheckedDate];
  v33 = v32;
  if (v32)
  {
    v34 = v32;
  }

  else
  {
    v34 = @"none";
  }

  [v3 setSafeObject:v34 forKey:@"Checked"];

  v35 = [NSNumber numberWithBool:[(MADAutoAssetSetHealthReport *)self latestInstanceFromPreSUStaging]];
  [v3 setSafeObject:v35 forKey:@"PSUS"];

  v36 = objc_opt_class();
  configurationChangedDate = [(MADAutoAssetSetHealthReport *)self configurationChangedDate];
  v38 = [v36 formattedDate:configurationChangedDate];
  v39 = v38;
  if (v38)
  {
    v40 = v38;
  }

  else
  {
    v40 = @"none";
  }

  [v3 setSafeObject:v40 forKey:@"ConfigChange"];

  v41 = objc_opt_class();
  configurationChangedDate2 = [(MADAutoAssetSetHealthReport *)self configurationChangedDate];
  v43 = [v41 bucketedTimeSinceDate:configurationChangedDate2];
  v44 = v43;
  if (v43)
  {
    v45 = v43;
  }

  else
  {
    v45 = @"none";
  }

  [v3 setSafeObject:v45 forKey:@"ConfigChangeBucket"];

  return v3;
}

- (id)eventPayloadForCoreAnalytics
{
  v3 = +[NSMutableDictionary dictionary];
  setIdentifier = [(MADAutoAssetSetHealthReport *)self setIdentifier];
  [v3 setSafeObject:setIdentifier forKey:@"SetID"];

  availableForUseError = [(MADAutoAssetSetHealthReport *)self availableForUseError];

  if (availableForUseError)
  {
    availableForUseError2 = [(MADAutoAssetSetHealthReport *)self availableForUseError];
    checkedDescription = [availableForUseError2 checkedDescription];
    [v3 setSafeObject:checkedDescription forKey:@"AvailErr"];
  }

  newerVersionError = [(MADAutoAssetSetHealthReport *)self newerVersionError];

  if (newerVersionError)
  {
    newerVersionError2 = [(MADAutoAssetSetHealthReport *)self newerVersionError];
    checkedDescription2 = [newerVersionError2 checkedDescription];
    [v3 setSafeObject:checkedDescription2 forKey:@"NewerErr"];
  }

  latestToVendAssetSetUUID = [(MADAutoAssetSetHealthReport *)self latestToVendAssetSetUUID];
  v12 = latestToVendAssetSetUUID;
  if (latestToVendAssetSetUUID)
  {
    v13 = latestToVendAssetSetUUID;
  }

  else
  {
    v13 = @"none";
  }

  [v3 setSafeObject:v13 forKey:@"Vend"];

  latestDiscoveredAssetSetUUID = [(MADAutoAssetSetHealthReport *)self latestDiscoveredAssetSetUUID];
  v15 = latestDiscoveredAssetSetUUID;
  if (latestDiscoveredAssetSetUUID)
  {
    v16 = latestDiscoveredAssetSetUUID;
  }

  else
  {
    v16 = @"none";
  }

  [v3 setSafeObject:v16 forKey:@"Discovered"];

  v17 = [NSNumber numberWithBool:[(MADAutoAssetSetHealthReport *)self lastestToVendIsLocked]];
  [v3 setSafeObject:v17 forKey:@"Locked"];

  v18 = [NSNumber numberWithBool:[(MADAutoAssetSetHealthReport *)self lastestToVendMatchesSetConfig]];
  [v3 setSafeObject:v18 forKey:@"VendingConfig"];

  v19 = objc_opt_class();
  lastCheckedDate = [(MADAutoAssetSetHealthReport *)self LastCheckedDate];
  v21 = [v19 formattedDate:lastCheckedDate];
  v22 = v21;
  if (v21)
  {
    v23 = v21;
  }

  else
  {
    v23 = @"none";
  }

  [v3 setSafeObject:v23 forKey:@"Checked"];

  v24 = [NSNumber numberWithBool:[(MADAutoAssetSetHealthReport *)self latestInstanceFromPreSUStaging]];
  [v3 setSafeObject:v24 forKey:@"PSUS"];

  v25 = objc_opt_class();
  configurationChangedDate = [(MADAutoAssetSetHealthReport *)self configurationChangedDate];
  v27 = [v25 formattedDate:configurationChangedDate];
  v28 = v27;
  if (v27)
  {
    v29 = v27;
  }

  else
  {
    v29 = @"none";
  }

  [v3 setSafeObject:v29 forKey:@"ConfigChange"];

  v30 = objc_opt_class();
  configurationChangedDate2 = [(MADAutoAssetSetHealthReport *)self configurationChangedDate];
  v32 = [v30 bucketedTimeSinceDate:configurationChangedDate2];
  v33 = v32;
  if (v32)
  {
    v34 = v32;
  }

  else
  {
    v34 = @"none";
  }

  [v3 setSafeObject:v34 forKey:@"ConfigChangeBucket"];

  return v3;
}

- (id)description
{
  setIdentifier = [(MADAutoAssetSetHealthReport *)self setIdentifier];
  if (setIdentifier)
  {
    setIdentifier2 = [(MADAutoAssetSetHealthReport *)self setIdentifier];
  }

  else
  {
    setIdentifier2 = @"N";
  }

  latestDiscoveredAssetSetUUID = [(MADAutoAssetSetHealthReport *)self latestDiscoveredAssetSetUUID];
  if (latestDiscoveredAssetSetUUID)
  {
    latestDiscoveredAssetSetUUID2 = [(MADAutoAssetSetHealthReport *)self latestDiscoveredAssetSetUUID];
  }

  else
  {
    latestDiscoveredAssetSetUUID2 = @"N";
  }

  latestToVendAssetSetUUID = [(MADAutoAssetSetHealthReport *)self latestToVendAssetSetUUID];
  if (latestToVendAssetSetUUID)
  {
    latestToVendAssetSetUUID2 = [(MADAutoAssetSetHealthReport *)self latestToVendAssetSetUUID];
  }

  else
  {
    latestToVendAssetSetUUID2 = @"N";
  }

  lastCheckedDate = [(MADAutoAssetSetHealthReport *)self LastCheckedDate];
  checkedDescription = @"N";
  v23 = setIdentifier2;
  if (lastCheckedDate)
  {
    lastCheckedDate2 = [(MADAutoAssetSetHealthReport *)self LastCheckedDate];
  }

  else
  {
    lastCheckedDate2 = @"N";
  }

  if ([(MADAutoAssetSetHealthReport *)self lastestToVendIsLocked])
  {
    v10 = @"Y";
  }

  else
  {
    v10 = @"N";
  }

  v20 = v10;
  if ([(MADAutoAssetSetHealthReport *)self lastestToVendMatchesSetConfig])
  {
    v11 = @"Y";
  }

  else
  {
    v11 = @"N";
  }

  availableForUseError = [(MADAutoAssetSetHealthReport *)self availableForUseError];
  if (availableForUseError)
  {
    availableForUseError2 = [(MADAutoAssetSetHealthReport *)self availableForUseError];
    checkedDescription = [availableForUseError2 checkedDescription];
  }

  v21 = latestToVendAssetSetUUID;
  v24 = setIdentifier;
  newerVersionError = [(MADAutoAssetSetHealthReport *)self newerVersionError];
  if (newerVersionError)
  {
    setIdentifier = [(MADAutoAssetSetHealthReport *)self newerVersionError];
    checkedDescription2 = [setIdentifier checkedDescription];
  }

  else
  {
    checkedDescription2 = @"N";
  }

  latestInstanceFromPreSUStaging = [(MADAutoAssetSetHealthReport *)self latestInstanceFromPreSUStaging];
  v16 = @"Y";
  if (!latestInstanceFromPreSUStaging)
  {
    v16 = @"N";
  }

  v17 = [NSString stringWithFormat:@"setIdentifier:%@ | latestDiscoveredAssetSetUUID:%@ | latestToVendAssetSetUUID:%@ | LastCheckedDate:%@ | lastestToVendIsLocked:%@ | lastestToVendMatchesSetConfig:%@ | availableForUseError:%@ | newerVersionError:%@ | latestInstanceFromPreSUStaging:%@", v23, latestDiscoveredAssetSetUUID2, latestToVendAssetSetUUID2, lastCheckedDate2, v20, v11, checkedDescription, checkedDescription2, v16];
  if (newerVersionError)
  {
  }

  if (availableForUseError)
  {
  }

  if (lastCheckedDate)
  {
  }

  if (v21)
  {
  }

  if (latestDiscoveredAssetSetUUID)
  {
  }

  if (v24)
  {
  }

  return v17;
}

@end