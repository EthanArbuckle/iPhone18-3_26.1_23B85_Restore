@interface MASAutoAssetInfoControl
+ (id)newServerMessageClasses:(id)classes;
+ (id)newShimmedFromFramework:(id)framework;
+ (id)newShimmedFromFrameworkMessage:(id)message forKey:(id)key;
+ (id)newShimmedToFramework:(id)framework;
+ (int64_t)shimmedSimulateEndFromFramework:(int64_t)framework;
+ (int64_t)shimmedSimulateEndToFramework:(int64_t)framework;
+ (int64_t)shimmedSimulateOperationFromFramework:(int64_t)framework;
+ (int64_t)shimmedSimulateOperationToFramework:(int64_t)framework;
@end

@implementation MASAutoAssetInfoControl

+ (id)newServerMessageClasses:(id)classes
{
  classesCopy = classes;
  if (classesCopy)
  {
    v4 = classesCopy;
    if (objc_opt_class())
    {
      v4 = [classesCopy setByAddingObject:objc_opt_class()];
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
  if (!frameworkCopy || !objc_opt_class())
  {
    goto LABEL_19;
  }

  volumeToReclaim = [frameworkCopy volumeToReclaim];
  if (volumeToReclaim || [frameworkCopy cacheDeleteUrgency])
  {
  }

  else if (![frameworkCopy targetingPurgeAmount])
  {
    if ([frameworkCopy simulateOperation] || objc_msgSend(frameworkCopy, "simulateEnd"))
    {
      v10 = [MAAutoAssetInfoControl alloc];
      v11 = objc_opt_respondsToSelector();

      if ((v11 & 1) == 0)
      {
        goto LABEL_19;
      }

      v12 = [[MAAutoAssetInfoControl alloc] initForSimulateOperation:+[MASAutoAssetInfoControl shimmedSimulateOperationToFramework:](MASAutoAssetInfoControl withSimulateEnd:{"shimmedSimulateOperationToFramework:", objc_msgSend(frameworkCopy, "simulateOperation")), +[MASAutoAssetInfoControl shimmedSimulateEndToFramework:](MASAutoAssetInfoControl, "shimmedSimulateEndToFramework:", objc_msgSend(frameworkCopy, "simulateEnd"))}];
    }

    else
    {
      limitedToAssetTypes = [frameworkCopy limitedToAssetTypes];

      v14 = [MAAutoAssetInfoControl alloc];
      if (limitedToAssetTypes)
      {
        v15 = objc_opt_respondsToSelector();

        if (v15)
        {
          v16 = [MAAutoAssetInfoControl alloc];
          clearingAfter = [frameworkCopy clearingAfter];
          limitedToAssetTypes2 = [frameworkCopy limitedToAssetTypes];
          v9 = [v16 initClearingAfter:clearingAfter limitedToAssetTypes:limitedToAssetTypes2];

          goto LABEL_20;
        }

LABEL_19:
        v9 = 0;
        goto LABEL_20;
      }

      v19 = objc_opt_respondsToSelector();

      if ((v19 & 1) == 0)
      {
        goto LABEL_19;
      }

      v12 = [[MAAutoAssetInfoControl alloc] initClearingAfter:{objc_msgSend(frameworkCopy, "clearingAfter")}];
    }

    v9 = v12;
    goto LABEL_20;
  }

  v5 = [MAAutoAssetInfoControl alloc];
  v6 = objc_opt_respondsToSelector();

  if ((v6 & 1) == 0)
  {
    goto LABEL_19;
  }

  v7 = [MAAutoAssetInfoControl alloc];
  volumeToReclaim2 = [frameworkCopy volumeToReclaim];
  v9 = [v7 initWithVolumeToReclaim:volumeToReclaim2 withUrgency:objc_msgSend(frameworkCopy targetingPurgeAmount:{"cacheDeleteUrgency"), objc_msgSend(frameworkCopy, "targetingPurgeAmount")}];

LABEL_20:
  return v9;
}

+ (id)newShimmedFromFramework:(id)framework
{
  frameworkCopy = framework;
  if (!frameworkCopy || !objc_opt_class())
  {
    goto LABEL_31;
  }

  v4 = [MAAutoAssetInfoControl alloc];
  v5 = objc_opt_respondsToSelector();

  if ((v5 & 1) == 0)
  {
    goto LABEL_14;
  }

  v6 = frameworkCopy;
  if ((objc_opt_respondsToSelector() & 1) == 0 || (objc_opt_respondsToSelector() & 1) == 0 || (objc_opt_respondsToSelector() & 1) == 0)
  {
    goto LABEL_13;
  }

  volumeToReclaim = [v6 volumeToReclaim];
  if (volumeToReclaim || [v6 cacheDeleteUrgency])
  {

    goto LABEL_10;
  }

  if (![v6 targetingPurgeAmount])
  {
LABEL_13:

    goto LABEL_14;
  }

LABEL_10:
  v8 = [MANAutoAssetInfoControl alloc];
  volumeToReclaim2 = [v6 volumeToReclaim];
  v10 = -[MANAutoAssetInfoControl initWithVolumeToReclaim:withUrgency:targetingPurgeAmount:](v8, "initWithVolumeToReclaim:withUrgency:targetingPurgeAmount:", volumeToReclaim2, [v6 cacheDeleteUrgency], objc_msgSend(v6, "targetingPurgeAmount"));

  if (v10)
  {
    goto LABEL_32;
  }

LABEL_14:
  v11 = [MAAutoAssetInfoControl alloc];
  v12 = objc_opt_respondsToSelector();

  if (v12)
  {
    v13 = frameworkCopy;
    if ((objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector() & 1) != 0 && (v14 = [v13 simulateOperation], v15 = objc_msgSend(v13, "simulateEnd"), v14 | v15))
    {
      v10 = [[MANAutoAssetInfoControl alloc] initForSimulateOperation:[MASAutoAssetInfoControl withSimulateEnd:"shimmedSimulateOperationFromFramework:" shimmedSimulateOperationFromFramework:v14], [MASAutoAssetInfoControl shimmedSimulateEndFromFramework:v15]];

      if (v10)
      {
        goto LABEL_32;
      }
    }

    else
    {
    }
  }

  v16 = [MAAutoAssetInfoControl alloc];
  v17 = objc_opt_respondsToSelector();

  if (v17)
  {
    v18 = frameworkCopy;
    if ((objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector() & 1) != 0 && ([v18 limitedToAssetTypes], v19 = objc_claimAutoreleasedReturnValue(), v19, v19))
    {
      v20 = [MANAutoAssetInfoControl alloc];
      clearingAfter = [v18 clearingAfter];
      limitedToAssetTypes = [v18 limitedToAssetTypes];
      v10 = [(MANAutoAssetInfoControl *)v20 initClearingAfter:clearingAfter limitedToAssetTypes:limitedToAssetTypes];

      if (v10)
      {
        goto LABEL_32;
      }
    }

    else
    {
    }
  }

  v23 = [MAAutoAssetInfoControl alloc];
  v24 = objc_opt_respondsToSelector();

  if ((v24 & 1) == 0)
  {
LABEL_31:
    v10 = 0;
    goto LABEL_32;
  }

  v25 = frameworkCopy;
  if (objc_opt_respondsToSelector())
  {
    v10 = -[MANAutoAssetInfoControl initClearingAfter:]([MANAutoAssetInfoControl alloc], "initClearingAfter:", [v25 clearingAfter]);
  }

  else
  {
    v10 = 0;
  }

LABEL_32:
  return v10;
}

+ (id)newShimmedFromFrameworkMessage:(id)message forKey:(id)key
{
  messageCopy = message;
  keyCopy = key;
  v7 = keyCopy;
  v8 = 0;
  if (messageCopy && keyCopy)
  {
    if (objc_opt_class() && (v9 = [MAAutoAssetInfoControl alloc], v10 = objc_opt_respondsToSelector(), v9, (v10 & 1) != 0))
    {
      v11 = [messageCopy safeObjectForKey:v7 ofClass:objc_opt_class()];
      v8 = [MASAutoAssetInfoControl newShimmedFromFramework:v11];
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

+ (int64_t)shimmedSimulateOperationToFramework:(int64_t)framework
{
  result = objc_opt_class();
  if (result)
  {
    v5 = [MAAutoAssetInfoControl alloc];
    v6 = objc_opt_respondsToSelector();

    if (v6)
    {
      if ((framework - 1) >= 0xB)
      {
        return 0;
      }

      else
      {
        return framework;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

+ (int64_t)shimmedSimulateOperationFromFramework:(int64_t)framework
{
  result = objc_opt_class();
  if (result)
  {
    v5 = [MAAutoAssetInfoControl alloc];
    v6 = objc_opt_respondsToSelector();

    if (v6)
    {
      if ((framework - 1) >= 0xB)
      {
        return 0;
      }

      else
      {
        return framework;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

+ (int64_t)shimmedSimulateEndToFramework:(int64_t)framework
{
  result = objc_opt_class();
  if (result)
  {
    v5 = [MAAutoAssetInfoControl alloc];
    v6 = objc_opt_respondsToSelector();

    return (framework == 1) & v6;
  }

  return result;
}

+ (int64_t)shimmedSimulateEndFromFramework:(int64_t)framework
{
  result = objc_opt_class();
  if (result)
  {
    v5 = [MAAutoAssetInfoControl alloc];
    v6 = objc_opt_respondsToSelector();

    return (framework == 1) & v6;
  }

  return result;
}

@end