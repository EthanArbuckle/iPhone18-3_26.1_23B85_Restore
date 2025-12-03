@interface BYPaneFeatureAnalyticsManager
+ (id)_featuresForPane:(int64_t)pane;
+ (id)_nameForFeature:(int64_t)feature;
- (BOOL)_isFeatureForPaneIncludedInExpress:(int64_t)express;
- (BYPaneFeatureAnalyticsManager)initWithAnalyticsManager:(id)manager runState:(id)state host:(id)host flowItemDispositionProvider:(id)provider;
- (id)_isValueDifferentFromExpressForFeature:(int64_t)feature value:(id)value;
- (void)clearActionForFeature:(int64_t)feature;
- (void)recordActionWithValue:(id)value previousValue:(id)previousValue forFeature:(int64_t)feature;
- (void)setExpressDataSource:(id)source features:(id)features;
@end

@implementation BYPaneFeatureAnalyticsManager

- (BYPaneFeatureAnalyticsManager)initWithAnalyticsManager:(id)manager runState:(id)state host:(id)host flowItemDispositionProvider:(id)provider
{
  managerCopy = manager;
  stateCopy = state;
  hostCopy = host;
  providerCopy = provider;
  v18.receiver = self;
  v18.super_class = BYPaneFeatureAnalyticsManager;
  v15 = [(BYPaneFeatureAnalyticsManager *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_analyticsManager, manager);
    objc_storeStrong(&v16->_runState, state);
    objc_storeStrong(&v16->_host, host);
    objc_storeStrong(&v16->_flowItemDispositionProvider, provider);
  }

  return v16;
}

- (void)recordActionWithValue:(id)value previousValue:(id)previousValue forFeature:(int64_t)feature
{
  v27[6] = *MEMORY[0x1E69E9840];
  previousValueCopy = previousValue;
  v9 = MEMORY[0x1E695DF90];
  v25 = previousValueCopy;
  v26[0] = @"feature";
  valueCopy = value;
  v24 = [objc_opt_class() _nameForFeature:feature];
  v27[0] = v24;
  v27[1] = valueCopy;
  v26[1] = @"value";
  v26[2] = @"differsFromExpress";
  v11 = [(BYPaneFeatureAnalyticsManager *)self _isValueDifferentFromExpressForFeature:feature value:valueCopy];
  v27[2] = v11;
  v26[3] = @"hasCompletedInitialSetup";
  v12 = MEMORY[0x1E696AD98];
  runState = [(BYPaneFeatureAnalyticsManager *)self runState];
  v14 = [v12 numberWithBool:{objc_msgSend(runState, "hasCompletedInitialRun")}];
  v27[3] = v14;
  v26[4] = @"host";
  host = [(BYPaneFeatureAnalyticsManager *)self host];
  v27[4] = host;
  v26[5] = @"disposition";
  flowItemDispositionProvider = [(BYPaneFeatureAnalyticsManager *)self flowItemDispositionProvider];
  v17 = BYStringForFlowItemDispositions([flowItemDispositionProvider dispositions]);
  v27[5] = v17;
  v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v27 forKeys:v26 count:6];
  v19 = [v9 dictionaryWithDictionary:v18];

  if (v25)
  {
    runState2 = [(BYPaneFeatureAnalyticsManager *)self runState];
    hasCompletedInitialRun = [runState2 hasCompletedInitialRun];

    if (hasCompletedInitialRun)
    {
      [v19 setObject:v25 forKeyedSubscript:@"previousValue"];
    }
  }

  analyticsManager = [(BYPaneFeatureAnalyticsManager *)self analyticsManager];
  [analyticsManager addEvent:@"com.apple.setupassistant.ios.paneFeatureAction" withPayload:v19 persist:0];

  v23 = *MEMORY[0x1E69E9840];
}

- (void)clearActionForFeature:(int64_t)feature
{
  analyticsManager = [(BYPaneFeatureAnalyticsManager *)self analyticsManager];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __55__BYPaneFeatureAnalyticsManager_clearActionForFeature___block_invoke;
  v6[3] = &unk_1E7D02A68;
  v6[4] = self;
  v6[5] = feature;
  [analyticsManager removeEventsUsingBlock:v6];
}

uint64_t __55__BYPaneFeatureAnalyticsManager_clearActionForFeature___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  if ([a2 isEqualToString:@"com.apple.setupassistant.ios.paneFeatureAction"])
  {
    v6 = [v5 objectForKeyedSubscript:@"feature"];
    v7 = *(a1 + 32);
    v8 = [objc_opt_class() _nameForFeature:*(a1 + 40)];
    v9 = [v6 isEqualToString:v8];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)setExpressDataSource:(id)source features:(id)features
{
  featuresCopy = features;
  [(BYPaneFeatureAnalyticsManager *)self setExpressDataSource:source];
  if (featuresCopy)
  {
    v6 = [MEMORY[0x1E695DFD8] setWithArray:featuresCopy];
    [(BYPaneFeatureAnalyticsManager *)self setExpressSetupFeatures:v6];
  }

  else
  {
    [(BYPaneFeatureAnalyticsManager *)self setExpressSetupFeatures:0];
  }
}

+ (id)_nameForFeature:(int64_t)feature
{
  if ((feature - 1) > 0x10)
  {
    return @"Screen Time";
  }

  else
  {
    return *(&off_1E7D02A88 + feature - 1);
  }
}

- (id)_isValueDifferentFromExpressForFeature:(int64_t)feature value:(id)value
{
  valueCopy = value;
  expressDataSource = [(BYPaneFeatureAnalyticsManager *)self expressDataSource];

  if (!expressDataSource)
  {
    v11 = @"Not Applicable";
    goto LABEL_37;
  }

  if (![(BYPaneFeatureAnalyticsManager *)self _isFeatureForPaneIncludedInExpress:feature])
  {
    v11 = @"Not Present in Express";
    goto LABEL_37;
  }

  v8 = 0;
  if (feature <= 5)
  {
    if (feature <= 1)
    {
      if (feature)
      {
        if (feature != 1)
        {
          goto LABEL_33;
        }

        expressDataSource2 = [(BYPaneFeatureAnalyticsManager *)self expressDataSource];
        softwareUpdateAutoUpdateEnabled = [expressDataSource2 softwareUpdateAutoUpdateEnabled];
      }

      else
      {
        expressDataSource2 = [(BYPaneFeatureAnalyticsManager *)self expressDataSource];
        softwareUpdateAutoUpdateEnabled = [expressDataSource2 screenTimeEnabled];
      }
    }

    else
    {
      switch(feature)
      {
        case 2:
          expressDataSource2 = [(BYPaneFeatureAnalyticsManager *)self expressDataSource];
          softwareUpdateAutoUpdateEnabled = [expressDataSource2 softwareUpdateAutoDownloadEnabled];
          break;
        case 4:
          expressDataSource2 = [(BYPaneFeatureAnalyticsManager *)self expressDataSource];
          softwareUpdateAutoUpdateEnabled = [expressDataSource2 appAnalyticsOptIn];
          break;
        case 5:
          expressDataSource2 = [(BYPaneFeatureAnalyticsManager *)self expressDataSource];
          softwareUpdateAutoUpdateEnabled = [expressDataSource2 deviceAnalyticsOptIn];
          break;
        default:
          goto LABEL_33;
      }
    }

LABEL_31:
    v8 = softwareUpdateAutoUpdateEnabled;
    goto LABEL_32;
  }

  if (feature <= 8)
  {
    if (feature == 6)
    {
      expressDataSource2 = [(BYPaneFeatureAnalyticsManager *)self expressDataSource];
      softwareUpdateAutoUpdateEnabled = [expressDataSource2 locationServicesOptIn];
    }

    else
    {
      expressDataSource2 = [(BYPaneFeatureAnalyticsManager *)self expressDataSource];
      if (feature == 7)
      {
        [expressDataSource2 siriOptIn];
      }

      else
      {
        [expressDataSource2 siriDataSharingOptIn];
      }
      softwareUpdateAutoUpdateEnabled = ;
    }

    goto LABEL_31;
  }

  switch(feature)
  {
    case 9:
      v15 = MEMORY[0x1E696AD98];
      expressDataSource2 = [(BYPaneFeatureAnalyticsManager *)self expressDataSource];
      softwareUpdateAutoUpdateEnabled = [v15 numberWithInteger:{objc_msgSend(expressDataSource2, "userInterfaceStyleModeValue")}];
      goto LABEL_31;
    case 10:
      v12 = MEMORY[0x1E696AD98];
      expressDataSource2 = [(BYPaneFeatureAnalyticsManager *)self expressDataSource];
      watchMigrationData = [expressDataSource2 watchMigrationData];
      goto LABEL_27;
    case 15:
      v12 = MEMORY[0x1E696AD98];
      expressDataSource2 = [(BYPaneFeatureAnalyticsManager *)self expressDataSource];
      watchMigrationData = [expressDataSource2 walletMetadata];
LABEL_27:
      v14 = watchMigrationData;
      v8 = [v12 numberWithInt:watchMigrationData != 0];

LABEL_32:
      break;
  }

LABEL_33:
  if ([v8 isEqualToNumber:valueCopy])
  {
    v11 = @"Not Different";
  }

  else
  {
    v11 = @"Different";
  }

LABEL_37:
  return v11;
}

- (BOOL)_isFeatureForPaneIncludedInExpress:(int64_t)express
{
  v4 = [objc_opt_class() _featuresForPane:express];
  expressSetupFeatures = [(BYPaneFeatureAnalyticsManager *)self expressSetupFeatures];
  v6 = [expressSetupFeatures intersectsSet:v4];

  return v6;
}

+ (id)_featuresForPane:(int64_t)pane
{
  v3 = 0;
  if (pane > 6)
  {
    if (pane <= 8)
    {
      v4 = MEMORY[0x1E695DFD8];
      if (pane == 7)
      {
        v5 = &unk_1F30A76B8;
      }

      else
      {
        v5 = &unk_1F30A76D0;
      }
    }

    else
    {
      switch(pane)
      {
        case 9:
          v4 = MEMORY[0x1E695DFD8];
          v5 = &unk_1F30A76E8;
          break;
        case 10:
          v4 = MEMORY[0x1E695DFD8];
          v5 = &unk_1F30A7700;
          break;
        case 15:
          v4 = MEMORY[0x1E695DFD8];
          v5 = &unk_1F30A7718;
          break;
        default:
          goto LABEL_22;
      }
    }

    goto LABEL_21;
  }

  if (pane <= 3)
  {
    if ((pane - 1) >= 2)
    {
      if (pane)
      {
        goto LABEL_22;
      }

      v4 = MEMORY[0x1E695DFD8];
      v5 = &unk_1F30A7628;
    }

    else
    {
      v4 = MEMORY[0x1E695DFD8];
      v5 = &unk_1F30A7640;
    }

    goto LABEL_21;
  }

  if (pane == 4)
  {
    [MEMORY[0x1E695DFD8] setWithObjects:{&unk_1F30A7658, &unk_1F30A7670, 0}];
  }

  else
  {
    if (pane != 5)
    {
      v4 = MEMORY[0x1E695DFD8];
      v5 = &unk_1F30A76A0;
LABEL_21:
      v3 = [v4 setWithObject:v5];
      goto LABEL_22;
    }

    [MEMORY[0x1E695DFD8] setWithObjects:{&unk_1F30A7688, &unk_1F30A7670, 0}];
  }
  v3 = ;
LABEL_22:

  return v3;
}

@end