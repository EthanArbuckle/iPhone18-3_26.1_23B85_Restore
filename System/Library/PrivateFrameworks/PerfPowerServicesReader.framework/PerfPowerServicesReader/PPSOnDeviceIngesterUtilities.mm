@interface PPSOnDeviceIngesterUtilities
+ (id)allDataSourcesForSubsystem:(id)subsystem category:(id)category;
+ (id)dataSourceForSubsystem:(id)subsystem category:(id)category;
+ (id)filepathForMetricDefinition:(id)definition;
+ (id)filepathForSubsystem:(id)subsystem category:(id)category;
+ (id)metricDefinitionHistoryForSubsystem:(id)subsystem category:(id)category metricName:(id)name;
@end

@implementation PPSOnDeviceIngesterUtilities

+ (id)dataSourceForSubsystem:(id)subsystem category:(id)category
{
  subsystemCopy = subsystem;
  categoryCopy = category;
  v7 = objc_autoreleasePoolPush();
  v8 = [MEMORY[0x277D3A120] getMetadataForSubsystem:subsystemCopy category:categoryCopy];
  if ([v8 count])
  {
    firstObject = [v8 firstObject];
    v10 = [PPSDataIngesterCommonUtilities dataSourceForMetricDefinition:firstObject];
  }

  else
  {
    v10 = 0;
  }

  objc_autoreleasePoolPop(v7);

  return v10;
}

+ (id)allDataSourcesForSubsystem:(id)subsystem category:(id)category
{
  v36 = *MEMORY[0x277D85DE8];
  subsystemCopy = subsystem;
  categoryCopy = category;
  v7 = objc_autoreleasePoolPush();
  v8 = [MEMORY[0x277D3A120] getMetadataForSubsystem:subsystemCopy category:categoryCopy];
  if ([v8 count])
  {
    v27 = v7;
    v28 = categoryCopy;
    v29 = subsystemCopy;
    v9 = objc_opt_new();
    firstObject = [v8 firstObject];
    v11 = [PPSDataIngesterCommonUtilities dataSourceForMetricDefinition:firstObject];

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

        categoryCopy = v28;
        subsystemCopy = v29;
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

+ (id)filepathForMetricDefinition:(id)definition
{
  storage = [definition storage];
  v4 = 0;
  if (storage > 2)
  {
    switch(storage)
    {
      case 3:
        v5 = MEMORY[0x277CBEBC0];
        containerPath = [MEMORY[0x277D3A128] containerPath];
        v7 = [containerPath stringByAppendingString:@"/Library/PerfPowerTelemetry/"];
        v8 = [v7 stringByAppendingString:@"CleanEnergy/"];
        v9 = v8;
        v10 = @"CurrentCleanEnergyDB.CESQL";
        break;
      case 4:
        v5 = MEMORY[0x277CBEBC0];
        containerPath = [MEMORY[0x277D3A128] containerPath];
        v7 = [containerPath stringByAppendingString:@"/Library/PerfPowerTelemetry/"];
        v8 = [v7 stringByAppendingString:@"XcodeOrganizer/"];
        v9 = v8;
        v10 = @"CurrentXcodeOrganizerDB.XCSQL";
        break;
      case 5:
        v5 = MEMORY[0x277CBEBC0];
        containerPath = [MEMORY[0x277D3A128] containerPath];
        v7 = [containerPath stringByAppendingString:@"/Library/PerfPowerTelemetry/"];
        v8 = [v7 stringByAppendingString:@"BackgroundProcessing/"];
        v9 = v8;
        v10 = @"CurrentBackgroundProcessingDB.BGSQL";
        break;
      default:
        goto LABEL_14;
    }

    goto LABEL_12;
  }

  if (storage == 1)
  {
    v5 = MEMORY[0x277CBEBC0];
    containerPath = [MEMORY[0x277D3A128] containerPath];
    v7 = [containerPath stringByAppendingString:@"/Library/PerfPowerTelemetry/"];
    v8 = [v7 stringByAppendingString:@"ExtendedPersistence/"];
    v9 = v8;
    v10 = @"CurrentLog.EPSQL";
LABEL_12:
    v12 = [v8 stringByAppendingString:v10];
    v4 = [v5 fileURLWithPath:v12 isDirectory:0];

    goto LABEL_13;
  }

  if (storage != 2)
  {
    goto LABEL_14;
  }

  v11 = MEMORY[0x277CBEBC0];
  containerPath = [MEMORY[0x277D3A128] containerPath];
  v7 = [containerPath stringByAppendingString:@"/Library/BatteryLife/"];
  v9 = [v7 stringByAppendingString:@"CurrentPowerlog.PLSQL"];
  v4 = [v11 fileURLWithPath:v9 isDirectory:0];
LABEL_13:

LABEL_14:

  return v4;
}

+ (id)filepathForSubsystem:(id)subsystem category:(id)category
{
  subsystemCopy = subsystem;
  categoryCopy = category;
  v7 = objc_autoreleasePoolPush();
  v8 = [MEMORY[0x277D3A120] getMetadataForSubsystem:subsystemCopy category:categoryCopy];
  if ([v8 count])
  {
    v9 = objc_opt_class();
    firstObject = [v8 firstObject];
    v11 = [v9 filepathForMetricDefinition:firstObject];
  }

  else
  {
    v11 = 0;
  }

  objc_autoreleasePoolPop(v7);

  return v11;
}

+ (id)metricDefinitionHistoryForSubsystem:(id)subsystem category:(id)category metricName:(id)name
{
  v7 = MEMORY[0x277D3A120];
  nameCopy = name;
  categoryCopy = category;
  subsystemCopy = subsystem;
  v11 = [objc_opt_class() filepathForSubsystem:subsystemCopy category:categoryCopy];
  v12 = [v7 getMetadataHistoryForFilepath:v11 subsystem:subsystemCopy category:categoryCopy name:nameCopy];

  return v12;
}

@end