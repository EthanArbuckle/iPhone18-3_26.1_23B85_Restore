@interface BYPaneFeatureAnalyticsManager
+ (id)_featuresForPane:(int64_t)a3;
+ (id)_nameForFeature:(int64_t)a3;
- (BOOL)_isFeatureForPaneIncludedInExpress:(int64_t)a3;
- (BYPaneFeatureAnalyticsManager)initWithAnalyticsManager:(id)a3 runState:(id)a4 host:(id)a5 flowItemDispositionProvider:(id)a6;
- (id)_isValueDifferentFromExpressForFeature:(int64_t)a3 value:(id)a4;
- (void)clearActionForFeature:(int64_t)a3;
- (void)recordActionWithValue:(id)a3 previousValue:(id)a4 forFeature:(int64_t)a5;
- (void)setExpressDataSource:(id)a3 features:(id)a4;
@end

@implementation BYPaneFeatureAnalyticsManager

- (BYPaneFeatureAnalyticsManager)initWithAnalyticsManager:(id)a3 runState:(id)a4 host:(id)a5 flowItemDispositionProvider:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v18.receiver = self;
  v18.super_class = BYPaneFeatureAnalyticsManager;
  v15 = [(BYPaneFeatureAnalyticsManager *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_analyticsManager, a3);
    objc_storeStrong(&v16->_runState, a4);
    objc_storeStrong(&v16->_host, a5);
    objc_storeStrong(&v16->_flowItemDispositionProvider, a6);
  }

  return v16;
}

- (void)recordActionWithValue:(id)a3 previousValue:(id)a4 forFeature:(int64_t)a5
{
  v27[6] = *MEMORY[0x1E69E9840];
  v8 = a4;
  v9 = MEMORY[0x1E695DF90];
  v25 = v8;
  v26[0] = @"feature";
  v10 = a3;
  v24 = [objc_opt_class() _nameForFeature:a5];
  v27[0] = v24;
  v27[1] = v10;
  v26[1] = @"value";
  v26[2] = @"differsFromExpress";
  v11 = [(BYPaneFeatureAnalyticsManager *)self _isValueDifferentFromExpressForFeature:a5 value:v10];
  v27[2] = v11;
  v26[3] = @"hasCompletedInitialSetup";
  v12 = MEMORY[0x1E696AD98];
  v13 = [(BYPaneFeatureAnalyticsManager *)self runState];
  v14 = [v12 numberWithBool:{objc_msgSend(v13, "hasCompletedInitialRun")}];
  v27[3] = v14;
  v26[4] = @"host";
  v15 = [(BYPaneFeatureAnalyticsManager *)self host];
  v27[4] = v15;
  v26[5] = @"disposition";
  v16 = [(BYPaneFeatureAnalyticsManager *)self flowItemDispositionProvider];
  v17 = BYStringForFlowItemDispositions([v16 dispositions]);
  v27[5] = v17;
  v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v27 forKeys:v26 count:6];
  v19 = [v9 dictionaryWithDictionary:v18];

  if (v25)
  {
    v20 = [(BYPaneFeatureAnalyticsManager *)self runState];
    v21 = [v20 hasCompletedInitialRun];

    if (v21)
    {
      [v19 setObject:v25 forKeyedSubscript:@"previousValue"];
    }
  }

  v22 = [(BYPaneFeatureAnalyticsManager *)self analyticsManager];
  [v22 addEvent:@"com.apple.setupassistant.ios.paneFeatureAction" withPayload:v19 persist:0];

  v23 = *MEMORY[0x1E69E9840];
}

- (void)clearActionForFeature:(int64_t)a3
{
  v5 = [(BYPaneFeatureAnalyticsManager *)self analyticsManager];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __55__BYPaneFeatureAnalyticsManager_clearActionForFeature___block_invoke;
  v6[3] = &unk_1E7D02A68;
  v6[4] = self;
  v6[5] = a3;
  [v5 removeEventsUsingBlock:v6];
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

- (void)setExpressDataSource:(id)a3 features:(id)a4
{
  v7 = a4;
  [(BYPaneFeatureAnalyticsManager *)self setExpressDataSource:a3];
  if (v7)
  {
    v6 = [MEMORY[0x1E695DFD8] setWithArray:v7];
    [(BYPaneFeatureAnalyticsManager *)self setExpressSetupFeatures:v6];
  }

  else
  {
    [(BYPaneFeatureAnalyticsManager *)self setExpressSetupFeatures:0];
  }
}

+ (id)_nameForFeature:(int64_t)a3
{
  if ((a3 - 1) > 0x10)
  {
    return @"Screen Time";
  }

  else
  {
    return *(&off_1E7D02A88 + a3 - 1);
  }
}

- (id)_isValueDifferentFromExpressForFeature:(int64_t)a3 value:(id)a4
{
  v6 = a4;
  v7 = [(BYPaneFeatureAnalyticsManager *)self expressDataSource];

  if (!v7)
  {
    v11 = @"Not Applicable";
    goto LABEL_37;
  }

  if (![(BYPaneFeatureAnalyticsManager *)self _isFeatureForPaneIncludedInExpress:a3])
  {
    v11 = @"Not Present in Express";
    goto LABEL_37;
  }

  v8 = 0;
  if (a3 <= 5)
  {
    if (a3 <= 1)
    {
      if (a3)
      {
        if (a3 != 1)
        {
          goto LABEL_33;
        }

        v9 = [(BYPaneFeatureAnalyticsManager *)self expressDataSource];
        v10 = [v9 softwareUpdateAutoUpdateEnabled];
      }

      else
      {
        v9 = [(BYPaneFeatureAnalyticsManager *)self expressDataSource];
        v10 = [v9 screenTimeEnabled];
      }
    }

    else
    {
      switch(a3)
      {
        case 2:
          v9 = [(BYPaneFeatureAnalyticsManager *)self expressDataSource];
          v10 = [v9 softwareUpdateAutoDownloadEnabled];
          break;
        case 4:
          v9 = [(BYPaneFeatureAnalyticsManager *)self expressDataSource];
          v10 = [v9 appAnalyticsOptIn];
          break;
        case 5:
          v9 = [(BYPaneFeatureAnalyticsManager *)self expressDataSource];
          v10 = [v9 deviceAnalyticsOptIn];
          break;
        default:
          goto LABEL_33;
      }
    }

LABEL_31:
    v8 = v10;
    goto LABEL_32;
  }

  if (a3 <= 8)
  {
    if (a3 == 6)
    {
      v9 = [(BYPaneFeatureAnalyticsManager *)self expressDataSource];
      v10 = [v9 locationServicesOptIn];
    }

    else
    {
      v9 = [(BYPaneFeatureAnalyticsManager *)self expressDataSource];
      if (a3 == 7)
      {
        [v9 siriOptIn];
      }

      else
      {
        [v9 siriDataSharingOptIn];
      }
      v10 = ;
    }

    goto LABEL_31;
  }

  switch(a3)
  {
    case 9:
      v15 = MEMORY[0x1E696AD98];
      v9 = [(BYPaneFeatureAnalyticsManager *)self expressDataSource];
      v10 = [v15 numberWithInteger:{objc_msgSend(v9, "userInterfaceStyleModeValue")}];
      goto LABEL_31;
    case 10:
      v12 = MEMORY[0x1E696AD98];
      v9 = [(BYPaneFeatureAnalyticsManager *)self expressDataSource];
      v13 = [v9 watchMigrationData];
      goto LABEL_27;
    case 15:
      v12 = MEMORY[0x1E696AD98];
      v9 = [(BYPaneFeatureAnalyticsManager *)self expressDataSource];
      v13 = [v9 walletMetadata];
LABEL_27:
      v14 = v13;
      v8 = [v12 numberWithInt:v13 != 0];

LABEL_32:
      break;
  }

LABEL_33:
  if ([v8 isEqualToNumber:v6])
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

- (BOOL)_isFeatureForPaneIncludedInExpress:(int64_t)a3
{
  v4 = [objc_opt_class() _featuresForPane:a3];
  v5 = [(BYPaneFeatureAnalyticsManager *)self expressSetupFeatures];
  v6 = [v5 intersectsSet:v4];

  return v6;
}

+ (id)_featuresForPane:(int64_t)a3
{
  v3 = 0;
  if (a3 > 6)
  {
    if (a3 <= 8)
    {
      v4 = MEMORY[0x1E695DFD8];
      if (a3 == 7)
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
      switch(a3)
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

  if (a3 <= 3)
  {
    if ((a3 - 1) >= 2)
    {
      if (a3)
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

  if (a3 == 4)
  {
    [MEMORY[0x1E695DFD8] setWithObjects:{&unk_1F30A7658, &unk_1F30A7670, 0}];
  }

  else
  {
    if (a3 != 5)
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