@interface MASAutoAssetSummary
+ (id)newAssetRepresentationName:(int64_t)a3;
+ (id)newServerMessageClasses:(id)a3;
+ (id)newShimmedArrayToFramework:(id)a3;
+ (id)newShimmedFromFramework:(id)a3;
+ (id)newShimmedFromFrameworkMessage:(id)a3 forKey:(id)a4;
+ (id)newShimmedToFramework:(id)a3;
@end

@implementation MASAutoAssetSummary

+ (id)newServerMessageClasses:(id)a3
{
  v3 = a3;
  if (v3)
  {
    v4 = [v3 setByAddingObject:objc_opt_class()];

    if (objc_opt_class())
    {
      v5 = [v4 setByAddingObject:objc_opt_class()];

      v4 = v5;
    }

    if (objc_opt_class())
    {
      v6 = [v4 setByAddingObject:objc_opt_class()];

      v4 = v6;
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)newShimmedToFramework:(id)a3
{
  v3 = a3;
  if (v3 && objc_opt_class() && objc_opt_class() && objc_opt_class() && (v4 = [MAAutoAssetSummary alloc], v5 = objc_opt_respondsToSelector(), v4, (v5 & 1) != 0))
  {
    v13 = [MAAutoAssetSummary alloc];
    v6 = [v3 assetSelector];
    v12 = [v3 assetRepresentation];
    v11 = [v3 assetWasPatched];
    v7 = [v3 assetIsStaged];
    v8 = [v3 jobStatus];
    v9 = [v13 initWithAssetSelector:v6 withAssetRepresentation:v12 withAssetWasPatched:v11 withAssetIsStaged:v7 withJobStatus:v8 withScheduledIntervalSecs:objc_msgSend(v3 withScheduledRemainingSecs:"scheduledIntervalSecs") withPushDelaySecs:objc_msgSend(v3 withActiveClientCount:"scheduledRemainingSecs") withActiveMonitorCount:objc_msgSend(v3 withMaximumClientCount:"pushDelaySecs") withTotalClientCount:{objc_msgSend(v3, "activeClientCount"), objc_msgSend(v3, "activeMonitorCount"), objc_msgSend(v3, "maximumClientCount"), objc_msgSend(v3, "totalClientCount")}];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (id)newShimmedArrayToFramework:(id)a3
{
  v3 = a3;
  if (v3 && objc_opt_class() && objc_opt_class() && (p_weak_ivar_lyt = &MAAIRBMobileAssetOperationMetadata__metaData.weak_ivar_lyt, objc_opt_class()) && (v5 = [MAAutoAssetSummary alloc], v6 = objc_opt_respondsToSelector(), v5, (v6 & 1) != 0))
  {
    v7 = objc_alloc_init(NSMutableArray);
    v15 = [v3 count];
    if (v15 >= 1)
    {
      v14 = v3;
      for (i = 0; i != v15; ++i)
      {
        v9 = [v3 objectAtIndex:i];
        if (v9)
        {
          v19 = objc_alloc(p_weak_ivar_lyt[306]);
          v10 = [v9 assetSelector];
          v18 = [v9 assetRepresentation];
          v17 = [v9 assetWasPatched];
          v16 = [v9 assetIsStaged];
          v11 = [v9 jobStatus];
          v12 = [v19 initWithAssetSelector:v10 withAssetRepresentation:v18 withAssetWasPatched:v17 withAssetIsStaged:v16 withJobStatus:v11 withScheduledIntervalSecs:objc_msgSend(v9 withScheduledRemainingSecs:"scheduledIntervalSecs") withPushDelaySecs:objc_msgSend(v9 withActiveClientCount:"scheduledRemainingSecs") withActiveMonitorCount:objc_msgSend(v9 withMaximumClientCount:"pushDelaySecs") withTotalClientCount:{objc_msgSend(v9, "activeClientCount"), objc_msgSend(v9, "activeMonitorCount"), objc_msgSend(v9, "maximumClientCount"), objc_msgSend(v9, "totalClientCount")}];

          if (v12)
          {
            [v7 addObject:v12];
          }

          v3 = v14;
          p_weak_ivar_lyt = (&MAAIRBMobileAssetOperationMetadata__metaData + 56);
        }
      }
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)newShimmedFromFramework:(id)a3
{
  v3 = a3;
  if (v3 && objc_opt_class() && objc_opt_class() && objc_opt_class() && (v4 = [MAAutoAssetSummary alloc], v5 = objc_opt_respondsToSelector(), v4, (v5 & 1) != 0))
  {
    v6 = v3;
    v21 = [MANAutoAssetSummary alloc];
    v7 = [v6 assetSelector];
    v20 = [v6 assetRepresentation];
    v19 = [v6 assetWasPatched];
    v18 = [v6 assetIsStaged];
    v8 = [v6 jobStatus];
    v17 = [v6 scheduledIntervalSecs];
    v9 = [v6 scheduledRemainingSecs];
    v10 = [v6 pushDelaySecs];
    v11 = [v6 activeClientCount];
    v12 = [v6 activeMonitorCount];
    v13 = [v6 maximumClientCount];
    v14 = [v6 totalClientCount];

    v15 = [(MANAutoAssetSummary *)v21 initWithAssetSelector:v7 withAssetRepresentation:v20 withAssetWasPatched:v19 withAssetIsStaged:v18 withJobStatus:v8 withScheduledIntervalSecs:v17 withScheduledRemainingSecs:v9 withPushDelaySecs:v10 withActiveClientCount:v11 withActiveMonitorCount:v12 withMaximumClientCount:v13 withTotalClientCount:v14];
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

+ (id)newShimmedFromFrameworkMessage:(id)a3 forKey:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = v6;
  v8 = 0;
  if (v5 && v6)
  {
    if (objc_opt_class() && (v9 = [MAAutoAssetSummary alloc], v10 = objc_opt_respondsToSelector(), v9, (v10 & 1) != 0))
    {
      v11 = [v5 safeObjectForKey:v7 ofClass:objc_opt_class()];
      v8 = [MASAutoAssetSummary newShimmedFromFramework:v11];
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

+ (id)newAssetRepresentationName:(int64_t)a3
{
  if (!objc_opt_class())
  {
    return &stru_4BD3F0;
  }

  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return [[NSString alloc] initWithFormat:@"representation:%ld", a3];
  }

  [MAAutoAssetSummary assetRepresentationName:a3];
  return objc_claimAutoreleasedReturnValue();
}

@end