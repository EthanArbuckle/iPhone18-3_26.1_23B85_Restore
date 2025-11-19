@interface MADAutoAssetSetHealthReport
+ (id)bucketedTimeSinceDate:(id)a3;
+ (id)errorSummaryForSplunk:(id)a3;
+ (id)formattedDate:(id)a3;
+ (id)shortUUID:(id)a3;
+ (id)trimmedSetIdentifier:(id)a3;
- (id)description;
- (id)eventPayloadForCoreAnalytics;
- (id)eventPayloadForSplunk;
@end

@implementation MADAutoAssetSetHealthReport

+ (id)trimmedSetIdentifier:(id)a3
{
  v3 = a3;
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
        if ([v3 hasPrefix:v8])
        {
          v9 = [v3 substringFromIndex:{objc_msgSend(v8, "length")}];

          v3 = v9;
        }
      }

      v5 = [&off_4F6F68 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  return v3;
}

+ (id)shortUUID:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    if ([v3 length] < 0xD)
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

+ (id)formattedDate:(id)a3
{
  v3 = formattedDate__onceToken;
  v4 = a3;
  if (v3 != -1)
  {
    +[MADAutoAssetSetHealthReport formattedDate:];
  }

  v5 = [formattedDate__formatter stringFromDate:v4];

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

+ (id)bucketedTimeSinceDate:(id)a3
{
  v3 = a3;
  if (!v3)
  {
    v9 = 0;
    goto LABEL_11;
  }

  v4 = +[NSDate now];
  [v4 timeIntervalSinceDate:v3];
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

+ (id)errorSummaryForSplunk:(id)a3
{
  v3 = [a3 checkedSummary];
  v4 = [v3 stringByReplacingOccurrencesOfString:@"com.apple.MobileAssetError.AutoAsset" withString:@"MA"];

  return v4;
}

- (id)eventPayloadForSplunk
{
  v3 = +[NSMutableDictionary dictionary];
  v4 = objc_opt_class();
  v5 = [(MADAutoAssetSetHealthReport *)self setIdentifier];
  v6 = [v4 trimmedSetIdentifier:v5];
  [v3 setSafeObject:v6 forKey:@"SetID"];

  v7 = [(MADAutoAssetSetHealthReport *)self availableForUseError];

  if (v7)
  {
    v8 = objc_opt_class();
    v9 = [(MADAutoAssetSetHealthReport *)self availableForUseError];
    v10 = [v8 errorSummaryForSplunk:v9];
    [v3 setSafeObject:v10 forKey:@"AvailErr"];
  }

  v11 = [(MADAutoAssetSetHealthReport *)self newerVersionError];

  if (v11)
  {
    v12 = objc_opt_class();
    v13 = [(MADAutoAssetSetHealthReport *)self newerVersionError];
    v14 = [v12 errorSummaryForSplunk:v13];
    [v3 setSafeObject:v14 forKey:@"NewerErr"];
  }

  v15 = objc_opt_class();
  v16 = [(MADAutoAssetSetHealthReport *)self latestToVendAssetSetUUID];
  v17 = [v15 shortUUID:v16];
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

  v20 = [(MADAutoAssetSetHealthReport *)self latestDiscoveredAssetSetUUID];
  v21 = [(MADAutoAssetSetHealthReport *)self latestToVendAssetSetUUID];
  v22 = [SUCore stringIsEqual:v20 to:v21];

  if ((v22 & 1) == 0)
  {
    v23 = objc_opt_class();
    v24 = [(MADAutoAssetSetHealthReport *)self latestDiscoveredAssetSetUUID];
    v25 = [v23 shortUUID:v24];
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
  v31 = [(MADAutoAssetSetHealthReport *)self LastCheckedDate];
  v32 = [v30 formattedDate:v31];
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
  v37 = [(MADAutoAssetSetHealthReport *)self configurationChangedDate];
  v38 = [v36 formattedDate:v37];
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
  v42 = [(MADAutoAssetSetHealthReport *)self configurationChangedDate];
  v43 = [v41 bucketedTimeSinceDate:v42];
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
  v4 = [(MADAutoAssetSetHealthReport *)self setIdentifier];
  [v3 setSafeObject:v4 forKey:@"SetID"];

  v5 = [(MADAutoAssetSetHealthReport *)self availableForUseError];

  if (v5)
  {
    v6 = [(MADAutoAssetSetHealthReport *)self availableForUseError];
    v7 = [v6 checkedDescription];
    [v3 setSafeObject:v7 forKey:@"AvailErr"];
  }

  v8 = [(MADAutoAssetSetHealthReport *)self newerVersionError];

  if (v8)
  {
    v9 = [(MADAutoAssetSetHealthReport *)self newerVersionError];
    v10 = [v9 checkedDescription];
    [v3 setSafeObject:v10 forKey:@"NewerErr"];
  }

  v11 = [(MADAutoAssetSetHealthReport *)self latestToVendAssetSetUUID];
  v12 = v11;
  if (v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = @"none";
  }

  [v3 setSafeObject:v13 forKey:@"Vend"];

  v14 = [(MADAutoAssetSetHealthReport *)self latestDiscoveredAssetSetUUID];
  v15 = v14;
  if (v14)
  {
    v16 = v14;
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
  v20 = [(MADAutoAssetSetHealthReport *)self LastCheckedDate];
  v21 = [v19 formattedDate:v20];
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
  v26 = [(MADAutoAssetSetHealthReport *)self configurationChangedDate];
  v27 = [v25 formattedDate:v26];
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
  v31 = [(MADAutoAssetSetHealthReport *)self configurationChangedDate];
  v32 = [v30 bucketedTimeSinceDate:v31];
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
  v3 = [(MADAutoAssetSetHealthReport *)self setIdentifier];
  if (v3)
  {
    v4 = [(MADAutoAssetSetHealthReport *)self setIdentifier];
  }

  else
  {
    v4 = @"N";
  }

  v22 = [(MADAutoAssetSetHealthReport *)self latestDiscoveredAssetSetUUID];
  if (v22)
  {
    v5 = [(MADAutoAssetSetHealthReport *)self latestDiscoveredAssetSetUUID];
  }

  else
  {
    v5 = @"N";
  }

  v6 = [(MADAutoAssetSetHealthReport *)self latestToVendAssetSetUUID];
  if (v6)
  {
    v7 = [(MADAutoAssetSetHealthReport *)self latestToVendAssetSetUUID];
  }

  else
  {
    v7 = @"N";
  }

  v8 = [(MADAutoAssetSetHealthReport *)self LastCheckedDate];
  v9 = @"N";
  v23 = v4;
  if (v8)
  {
    v25 = [(MADAutoAssetSetHealthReport *)self LastCheckedDate];
  }

  else
  {
    v25 = @"N";
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

  v12 = [(MADAutoAssetSetHealthReport *)self availableForUseError];
  if (v12)
  {
    v19 = [(MADAutoAssetSetHealthReport *)self availableForUseError];
    v9 = [v19 checkedDescription];
  }

  v21 = v6;
  v24 = v3;
  v13 = [(MADAutoAssetSetHealthReport *)self newerVersionError];
  if (v13)
  {
    v3 = [(MADAutoAssetSetHealthReport *)self newerVersionError];
    v14 = [v3 checkedDescription];
  }

  else
  {
    v14 = @"N";
  }

  v15 = [(MADAutoAssetSetHealthReport *)self latestInstanceFromPreSUStaging];
  v16 = @"Y";
  if (!v15)
  {
    v16 = @"N";
  }

  v17 = [NSString stringWithFormat:@"setIdentifier:%@ | latestDiscoveredAssetSetUUID:%@ | latestToVendAssetSetUUID:%@ | LastCheckedDate:%@ | lastestToVendIsLocked:%@ | lastestToVendMatchesSetConfig:%@ | availableForUseError:%@ | newerVersionError:%@ | latestInstanceFromPreSUStaging:%@", v23, v5, v7, v25, v20, v11, v9, v14, v16];
  if (v13)
  {
  }

  if (v12)
  {
  }

  if (v8)
  {
  }

  if (v21)
  {
  }

  if (v22)
  {
  }

  if (v24)
  {
  }

  return v17;
}

@end