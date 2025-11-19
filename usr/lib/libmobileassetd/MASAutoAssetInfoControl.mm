@interface MASAutoAssetInfoControl
+ (id)newServerMessageClasses:(id)a3;
+ (id)newShimmedFromFramework:(id)a3;
+ (id)newShimmedFromFrameworkMessage:(id)a3 forKey:(id)a4;
+ (id)newShimmedToFramework:(id)a3;
+ (int64_t)shimmedSimulateEndFromFramework:(int64_t)a3;
+ (int64_t)shimmedSimulateEndToFramework:(int64_t)a3;
+ (int64_t)shimmedSimulateOperationFromFramework:(int64_t)a3;
+ (int64_t)shimmedSimulateOperationToFramework:(int64_t)a3;
@end

@implementation MASAutoAssetInfoControl

+ (id)newServerMessageClasses:(id)a3
{
  v3 = a3;
  if (v3)
  {
    v4 = v3;
    if (objc_opt_class())
    {
      v4 = [v3 setByAddingObject:objc_opt_class()];
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
  if (!v3 || !objc_opt_class())
  {
    goto LABEL_19;
  }

  v4 = [v3 volumeToReclaim];
  if (v4 || [v3 cacheDeleteUrgency])
  {
  }

  else if (![v3 targetingPurgeAmount])
  {
    if ([v3 simulateOperation] || objc_msgSend(v3, "simulateEnd"))
    {
      v10 = [MAAutoAssetInfoControl alloc];
      v11 = objc_opt_respondsToSelector();

      if ((v11 & 1) == 0)
      {
        goto LABEL_19;
      }

      v12 = [[MAAutoAssetInfoControl alloc] initForSimulateOperation:+[MASAutoAssetInfoControl shimmedSimulateOperationToFramework:](MASAutoAssetInfoControl withSimulateEnd:{"shimmedSimulateOperationToFramework:", objc_msgSend(v3, "simulateOperation")), +[MASAutoAssetInfoControl shimmedSimulateEndToFramework:](MASAutoAssetInfoControl, "shimmedSimulateEndToFramework:", objc_msgSend(v3, "simulateEnd"))}];
    }

    else
    {
      v13 = [v3 limitedToAssetTypes];

      v14 = [MAAutoAssetInfoControl alloc];
      if (v13)
      {
        v15 = objc_opt_respondsToSelector();

        if (v15)
        {
          v16 = [MAAutoAssetInfoControl alloc];
          v17 = [v3 clearingAfter];
          v18 = [v3 limitedToAssetTypes];
          v9 = [v16 initClearingAfter:v17 limitedToAssetTypes:v18];

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

      v12 = [[MAAutoAssetInfoControl alloc] initClearingAfter:{objc_msgSend(v3, "clearingAfter")}];
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
  v8 = [v3 volumeToReclaim];
  v9 = [v7 initWithVolumeToReclaim:v8 withUrgency:objc_msgSend(v3 targetingPurgeAmount:{"cacheDeleteUrgency"), objc_msgSend(v3, "targetingPurgeAmount")}];

LABEL_20:
  return v9;
}

+ (id)newShimmedFromFramework:(id)a3
{
  v3 = a3;
  if (!v3 || !objc_opt_class())
  {
    goto LABEL_31;
  }

  v4 = [MAAutoAssetInfoControl alloc];
  v5 = objc_opt_respondsToSelector();

  if ((v5 & 1) == 0)
  {
    goto LABEL_14;
  }

  v6 = v3;
  if ((objc_opt_respondsToSelector() & 1) == 0 || (objc_opt_respondsToSelector() & 1) == 0 || (objc_opt_respondsToSelector() & 1) == 0)
  {
    goto LABEL_13;
  }

  v7 = [v6 volumeToReclaim];
  if (v7 || [v6 cacheDeleteUrgency])
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
  v9 = [v6 volumeToReclaim];
  v10 = -[MANAutoAssetInfoControl initWithVolumeToReclaim:withUrgency:targetingPurgeAmount:](v8, "initWithVolumeToReclaim:withUrgency:targetingPurgeAmount:", v9, [v6 cacheDeleteUrgency], objc_msgSend(v6, "targetingPurgeAmount"));

  if (v10)
  {
    goto LABEL_32;
  }

LABEL_14:
  v11 = [MAAutoAssetInfoControl alloc];
  v12 = objc_opt_respondsToSelector();

  if (v12)
  {
    v13 = v3;
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
    v18 = v3;
    if ((objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector() & 1) != 0 && ([v18 limitedToAssetTypes], v19 = objc_claimAutoreleasedReturnValue(), v19, v19))
    {
      v20 = [MANAutoAssetInfoControl alloc];
      v21 = [v18 clearingAfter];
      v22 = [v18 limitedToAssetTypes];
      v10 = [(MANAutoAssetInfoControl *)v20 initClearingAfter:v21 limitedToAssetTypes:v22];

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

  v25 = v3;
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

+ (id)newShimmedFromFrameworkMessage:(id)a3 forKey:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = v6;
  v8 = 0;
  if (v5 && v6)
  {
    if (objc_opt_class() && (v9 = [MAAutoAssetInfoControl alloc], v10 = objc_opt_respondsToSelector(), v9, (v10 & 1) != 0))
    {
      v11 = [v5 safeObjectForKey:v7 ofClass:objc_opt_class()];
      v8 = [MASAutoAssetInfoControl newShimmedFromFramework:v11];
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

+ (int64_t)shimmedSimulateOperationToFramework:(int64_t)a3
{
  result = objc_opt_class();
  if (result)
  {
    v5 = [MAAutoAssetInfoControl alloc];
    v6 = objc_opt_respondsToSelector();

    if (v6)
    {
      if ((a3 - 1) >= 0xB)
      {
        return 0;
      }

      else
      {
        return a3;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

+ (int64_t)shimmedSimulateOperationFromFramework:(int64_t)a3
{
  result = objc_opt_class();
  if (result)
  {
    v5 = [MAAutoAssetInfoControl alloc];
    v6 = objc_opt_respondsToSelector();

    if (v6)
    {
      if ((a3 - 1) >= 0xB)
      {
        return 0;
      }

      else
      {
        return a3;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

+ (int64_t)shimmedSimulateEndToFramework:(int64_t)a3
{
  result = objc_opt_class();
  if (result)
  {
    v5 = [MAAutoAssetInfoControl alloc];
    v6 = objc_opt_respondsToSelector();

    return (a3 == 1) & v6;
  }

  return result;
}

+ (int64_t)shimmedSimulateEndFromFramework:(int64_t)a3
{
  result = objc_opt_class();
  if (result)
  {
    v5 = [MAAutoAssetInfoControl alloc];
    v6 = objc_opt_respondsToSelector();

    return (a3 == 1) & v6;
  }

  return result;
}

@end