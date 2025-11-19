@interface PPSOnDeviceIngesterUtilities
+ (id)allDataSourcesForSubsystem:(id)a3 category:(id)a4;
+ (id)dataSourceForSubsystem:(id)a3 category:(id)a4;
+ (id)filepathForMetricDefinition:(id)a3;
+ (id)filepathForSubsystem:(id)a3 category:(id)a4;
+ (id)metricDefinitionHistoryForSubsystem:(id)a3 category:(id)a4 metricName:(id)a5;
@end

@implementation PPSOnDeviceIngesterUtilities

+ (id)dataSourceForSubsystem:(id)a3 category:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = objc_autoreleasePoolPush();
  v8 = [MEMORY[0x277D3A120] getMetadataForSubsystem:v5 category:v6];
  if ([v8 count])
  {
    v9 = [v8 firstObject];
    v10 = [PPSDataIngesterCommonUtilities dataSourceForMetricDefinition:v9];
  }

  else
  {
    v10 = 0;
  }

  objc_autoreleasePoolPop(v7);

  return v10;
}

+ (id)allDataSourcesForSubsystem:(id)a3 category:(id)a4
{
  v36 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = objc_autoreleasePoolPush();
  v8 = [MEMORY[0x277D3A120] getMetadataForSubsystem:v5 category:v6];
  if ([v8 count])
  {
    v27 = v7;
    v28 = v6;
    v29 = v5;
    v9 = objc_opt_new();
    v10 = [v8 firstObject];
    v11 = [PPSDataIngesterCommonUtilities dataSourceForMetricDefinition:v10];

    [v9 addObject:v11];
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v26 = v8;
    v12 = v8;
    v13 = [v12 countByEnumeratingWithState:&v31 objects:v35 count:16];
    if (!v13)
    {
      goto LABEL_16;
    }

    v14 = v13;
    v15 = *v32;
    v16 = 0x277CCA000uLL;
    v30 = v9;
    while (1)
    {
      v17 = 0;
      do
      {
        if (*v32 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v18 = *(*(&v31 + 1) + 8 * v17);
        if ([v18 auxiliaryType] == 2)
        {
          v19 = [*(v16 + 3240) stringWithFormat:@"%@_Dynamic", v11];
LABEL_9:
          [v9 addObject:v19];

          goto LABEL_12;
        }

        if ([v18 auxiliaryType] == 3 && !objc_msgSend(v18, "fixedArraySize"))
        {
          v20 = *(v16 + 3240);
          [v18 name];
          v22 = v21 = v16;
          v19 = [v20 stringWithFormat:@"%@_Array_%@", v11, v22];

          v16 = v21;
          v9 = v30;
          goto LABEL_9;
        }

LABEL_12:
        ++v17;
      }

      while (v14 != v17);
      v23 = [v12 countByEnumeratingWithState:&v31 objects:v35 count:16];
      v14 = v23;
      if (!v23)
      {
LABEL_16:

        v6 = v28;
        v5 = v29;
        v8 = v26;
        v7 = v27;
        goto LABEL_18;
      }
    }
  }

  v9 = 0;
LABEL_18:

  objc_autoreleasePoolPop(v7);
  v24 = *MEMORY[0x277D85DE8];

  return v9;
}

+ (id)filepathForMetricDefinition:(id)a3
{
  v3 = [a3 storage];
  v4 = 0;
  if (v3 > 2)
  {
    switch(v3)
    {
      case 3:
        v5 = MEMORY[0x277CBEBC0];
        v6 = [MEMORY[0x277D3A128] containerPath];
        v7 = [v6 stringByAppendingString:@"/Library/PerfPowerTelemetry/"];
        v8 = [v7 stringByAppendingString:@"CleanEnergy/"];
        v9 = v8;
        v10 = @"CurrentCleanEnergyDB.CESQL";
        break;
      case 4:
        v5 = MEMORY[0x277CBEBC0];
        v6 = [MEMORY[0x277D3A128] containerPath];
        v7 = [v6 stringByAppendingString:@"/Library/PerfPowerTelemetry/"];
        v8 = [v7 stringByAppendingString:@"XcodeOrganizer/"];
        v9 = v8;
        v10 = @"CurrentXcodeOrganizerDB.XCSQL";
        break;
      case 5:
        v5 = MEMORY[0x277CBEBC0];
        v6 = [MEMORY[0x277D3A128] containerPath];
        v7 = [v6 stringByAppendingString:@"/Library/PerfPowerTelemetry/"];
        v8 = [v7 stringByAppendingString:@"BackgroundProcessing/"];
        v9 = v8;
        v10 = @"CurrentBackgroundProcessingDB.BGSQL";
        break;
      default:
        goto LABEL_14;
    }

    goto LABEL_12;
  }

  if (v3 == 1)
  {
    v5 = MEMORY[0x277CBEBC0];
    v6 = [MEMORY[0x277D3A128] containerPath];
    v7 = [v6 stringByAppendingString:@"/Library/PerfPowerTelemetry/"];
    v8 = [v7 stringByAppendingString:@"ExtendedPersistence/"];
    v9 = v8;
    v10 = @"CurrentLog.EPSQL";
LABEL_12:
    v12 = [v8 stringByAppendingString:v10];
    v4 = [v5 fileURLWithPath:v12 isDirectory:0];

    goto LABEL_13;
  }

  if (v3 != 2)
  {
    goto LABEL_14;
  }

  v11 = MEMORY[0x277CBEBC0];
  v6 = [MEMORY[0x277D3A128] containerPath];
  v7 = [v6 stringByAppendingString:@"/Library/BatteryLife/"];
  v9 = [v7 stringByAppendingString:@"CurrentPowerlog.PLSQL"];
  v4 = [v11 fileURLWithPath:v9 isDirectory:0];
LABEL_13:

LABEL_14:

  return v4;
}

+ (id)filepathForSubsystem:(id)a3 category:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = objc_autoreleasePoolPush();
  v8 = [MEMORY[0x277D3A120] getMetadataForSubsystem:v5 category:v6];
  if ([v8 count])
  {
    v9 = objc_opt_class();
    v10 = [v8 firstObject];
    v11 = [v9 filepathForMetricDefinition:v10];
  }

  else
  {
    v11 = 0;
  }

  objc_autoreleasePoolPop(v7);

  return v11;
}

+ (id)metricDefinitionHistoryForSubsystem:(id)a3 category:(id)a4 metricName:(id)a5
{
  v7 = MEMORY[0x277D3A120];
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [objc_opt_class() filepathForSubsystem:v10 category:v9];
  v12 = [v7 getMetadataHistoryForFilepath:v11 subsystem:v10 category:v9 name:v8];

  return v12;
}

@end