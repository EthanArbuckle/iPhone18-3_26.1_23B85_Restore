@interface MASAutoAssetSummary
+ (id)newAssetRepresentationName:(int64_t)name;
+ (id)newServerMessageClasses:(id)classes;
+ (id)newShimmedArrayToFramework:(id)framework;
+ (id)newShimmedFromFramework:(id)framework;
+ (id)newShimmedFromFrameworkMessage:(id)message forKey:(id)key;
+ (id)newShimmedToFramework:(id)framework;
@end

@implementation MASAutoAssetSummary

+ (id)newServerMessageClasses:(id)classes
{
  classesCopy = classes;
  if (classesCopy)
  {
    v4 = [classesCopy setByAddingObject:objc_opt_class()];

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

+ (id)newShimmedToFramework:(id)framework
{
  frameworkCopy = framework;
  if (frameworkCopy && objc_opt_class() && objc_opt_class() && objc_opt_class() && (v4 = [MAAutoAssetSummary alloc], v5 = objc_opt_respondsToSelector(), v4, (v5 & 1) != 0))
  {
    v13 = [MAAutoAssetSummary alloc];
    assetSelector = [frameworkCopy assetSelector];
    assetRepresentation = [frameworkCopy assetRepresentation];
    assetWasPatched = [frameworkCopy assetWasPatched];
    assetIsStaged = [frameworkCopy assetIsStaged];
    jobStatus = [frameworkCopy jobStatus];
    v9 = [v13 initWithAssetSelector:assetSelector withAssetRepresentation:assetRepresentation withAssetWasPatched:assetWasPatched withAssetIsStaged:assetIsStaged withJobStatus:jobStatus withScheduledIntervalSecs:objc_msgSend(frameworkCopy withScheduledRemainingSecs:"scheduledIntervalSecs") withPushDelaySecs:objc_msgSend(frameworkCopy withActiveClientCount:"scheduledRemainingSecs") withActiveMonitorCount:objc_msgSend(frameworkCopy withMaximumClientCount:"pushDelaySecs") withTotalClientCount:{objc_msgSend(frameworkCopy, "activeClientCount"), objc_msgSend(frameworkCopy, "activeMonitorCount"), objc_msgSend(frameworkCopy, "maximumClientCount"), objc_msgSend(frameworkCopy, "totalClientCount")}];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (id)newShimmedArrayToFramework:(id)framework
{
  frameworkCopy = framework;
  if (frameworkCopy && objc_opt_class() && objc_opt_class() && (p_weak_ivar_lyt = &MAAIRBMobileAssetOperationMetadata__metaData.weak_ivar_lyt, objc_opt_class()) && (v5 = [MAAutoAssetSummary alloc], v6 = objc_opt_respondsToSelector(), v5, (v6 & 1) != 0))
  {
    v7 = objc_alloc_init(NSMutableArray);
    v15 = [frameworkCopy count];
    if (v15 >= 1)
    {
      v14 = frameworkCopy;
      for (i = 0; i != v15; ++i)
      {
        v9 = [frameworkCopy objectAtIndex:i];
        if (v9)
        {
          v19 = objc_alloc(p_weak_ivar_lyt[306]);
          assetSelector = [v9 assetSelector];
          assetRepresentation = [v9 assetRepresentation];
          assetWasPatched = [v9 assetWasPatched];
          assetIsStaged = [v9 assetIsStaged];
          jobStatus = [v9 jobStatus];
          v12 = [v19 initWithAssetSelector:assetSelector withAssetRepresentation:assetRepresentation withAssetWasPatched:assetWasPatched withAssetIsStaged:assetIsStaged withJobStatus:jobStatus withScheduledIntervalSecs:objc_msgSend(v9 withScheduledRemainingSecs:"scheduledIntervalSecs") withPushDelaySecs:objc_msgSend(v9 withActiveClientCount:"scheduledRemainingSecs") withActiveMonitorCount:objc_msgSend(v9 withMaximumClientCount:"pushDelaySecs") withTotalClientCount:{objc_msgSend(v9, "activeClientCount"), objc_msgSend(v9, "activeMonitorCount"), objc_msgSend(v9, "maximumClientCount"), objc_msgSend(v9, "totalClientCount")}];

          if (v12)
          {
            [v7 addObject:v12];
          }

          frameworkCopy = v14;
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

+ (id)newShimmedFromFramework:(id)framework
{
  frameworkCopy = framework;
  if (frameworkCopy && objc_opt_class() && objc_opt_class() && objc_opt_class() && (v4 = [MAAutoAssetSummary alloc], v5 = objc_opt_respondsToSelector(), v4, (v5 & 1) != 0))
  {
    v6 = frameworkCopy;
    v21 = [MANAutoAssetSummary alloc];
    assetSelector = [v6 assetSelector];
    assetRepresentation = [v6 assetRepresentation];
    assetWasPatched = [v6 assetWasPatched];
    assetIsStaged = [v6 assetIsStaged];
    jobStatus = [v6 jobStatus];
    scheduledIntervalSecs = [v6 scheduledIntervalSecs];
    scheduledRemainingSecs = [v6 scheduledRemainingSecs];
    pushDelaySecs = [v6 pushDelaySecs];
    activeClientCount = [v6 activeClientCount];
    activeMonitorCount = [v6 activeMonitorCount];
    maximumClientCount = [v6 maximumClientCount];
    totalClientCount = [v6 totalClientCount];

    v15 = [(MANAutoAssetSummary *)v21 initWithAssetSelector:assetSelector withAssetRepresentation:assetRepresentation withAssetWasPatched:assetWasPatched withAssetIsStaged:assetIsStaged withJobStatus:jobStatus withScheduledIntervalSecs:scheduledIntervalSecs withScheduledRemainingSecs:scheduledRemainingSecs withPushDelaySecs:pushDelaySecs withActiveClientCount:activeClientCount withActiveMonitorCount:activeMonitorCount withMaximumClientCount:maximumClientCount withTotalClientCount:totalClientCount];
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

+ (id)newShimmedFromFrameworkMessage:(id)message forKey:(id)key
{
  messageCopy = message;
  keyCopy = key;
  v7 = keyCopy;
  v8 = 0;
  if (messageCopy && keyCopy)
  {
    if (objc_opt_class() && (v9 = [MAAutoAssetSummary alloc], v10 = objc_opt_respondsToSelector(), v9, (v10 & 1) != 0))
    {
      v11 = [messageCopy safeObjectForKey:v7 ofClass:objc_opt_class()];
      v8 = [MASAutoAssetSummary newShimmedFromFramework:v11];
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

+ (id)newAssetRepresentationName:(int64_t)name
{
  if (!objc_opt_class())
  {
    return &stru_4BD3F0;
  }

  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return [[NSString alloc] initWithFormat:@"representation:%ld", name];
  }

  [MAAutoAssetSummary assetRepresentationName:name];
  return objc_claimAutoreleasedReturnValue();
}

@end