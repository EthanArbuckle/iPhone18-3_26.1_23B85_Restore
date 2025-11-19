@interface MASAutoAssetSetAtomicEntry
+ (id)newServerMessageClasses:(id)a3;
+ (id)newShimmedArrayFromFramework:(id)a3;
+ (id)newShimmedArrayToFramework:(id)a3;
+ (id)newShimmedDictionaryFromFramework:(id)a3;
+ (id)newShimmedDictionaryToFramework:(id)a3;
+ (id)newShimmedFromFramework:(id)a3;
+ (id)newShimmedFromFrameworkMessage:(id)a3 forKey:(id)a4;
+ (id)newShimmedToFramework:(id)a3;
@end

@implementation MASAutoAssetSetAtomicEntry

+ (id)newServerMessageClasses:(id)a3
{
  v3 = a3;
  if (v3)
  {
    v4 = [v3 setByAddingObject:objc_opt_class()];

    if (__isPlatformVersionAtLeast(2, 17, 0, 0) && objc_opt_class())
    {
      v5 = [v4 setByAddingObject:objc_opt_class()];

      v4 = v5;
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
  if (v3 && __isPlatformVersionAtLeast(2, 17, 0, 0) && objc_opt_class() && (v4 = [MASAutoAssetSetAtomicEntry alloc], v5 = objc_opt_respondsToSelector(), v4, (v5 & 1) != 0))
  {
    v6 = [MAAutoAssetSetAtomicEntry alloc];
    v7 = [v3 fullAssetSelector];
    v8 = [v3 assetID];
    v9 = [v3 localContentURL];
    v10 = [v3 assetAttributes];
    v11 = [v6 initWithFullAssetSelector:v7 withAssetID:v8 withLocalContentURL:v9 withAssetAttributes:v10 inhibitedFromEmergencyRemoval:{objc_msgSend(v3, "inhibitedFromEmergencyRemoval")}];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

+ (id)newShimmedFromFramework:(id)a3
{
  v3 = a3;
  if (v3 && __isPlatformVersionAtLeast(2, 17, 0, 0) && objc_opt_class() && (v4 = [MAAutoAssetSetAtomicEntry alloc], v5 = objc_opt_respondsToSelector(), v4, (v5 & 1) != 0))
  {
    v6 = v3;
    v7 = [MANAutoAssetSetAtomicEntry alloc];
    v8 = [v6 fullAssetSelector];
    v9 = [v6 assetID];
    v10 = [v6 localContentURL];
    v11 = [v6 assetAttributes];
    v12 = [v6 inhibitedFromEmergencyRemoval];

    v13 = [(MANAutoAssetSetAtomicEntry *)v7 initWithFullAssetSelector:v8 withAssetID:v9 withLocalContentURL:v10 withAssetAttributes:v11 inhibitedFromEmergencyRemoval:v12];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

+ (id)newShimmedFromFrameworkMessage:(id)a3 forKey:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = v6;
  v8 = 0;
  if (v5 && v6)
  {
    if (__isPlatformVersionAtLeast(2, 17, 0, 0) && objc_opt_class() && (v9 = [MAAutoAssetSetAtomicEntry alloc], v10 = objc_opt_respondsToSelector(), v9, (v10 & 1) != 0))
    {
      v11 = [v5 safeObjectForKey:v7 ofClass:objc_opt_class()];
      v8 = [MASAutoAssetSetAtomicEntry newShimmedFromFramework:v11];
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

+ (id)newShimmedArrayToFramework:(id)a3
{
  v3 = a3;
  if (v3 && __isPlatformVersionAtLeast(2, 17, 0, 0) && (p_weak_ivar_lyt = &MAAIRBMobileAssetOperationMetadata__metaData.weak_ivar_lyt, objc_opt_class()) && (v5 = [MAAutoAssetSetAtomicEntry alloc], v6 = objc_opt_respondsToSelector(), v5, (v6 & 1) != 0))
  {
    v7 = objc_alloc_init(NSMutableArray);
    v8 = [v3 count];
    if (v8 >= 1)
    {
      v9 = v8;
      v20 = v7;
      for (i = 0; i != v9; ++i)
      {
        v11 = [v3 objectAtIndex:i];
        if (v11)
        {
          v12 = p_weak_ivar_lyt;
          v13 = objc_alloc(p_weak_ivar_lyt[281]);
          v14 = [v11 fullAssetSelector];
          v15 = [v11 assetID];
          v16 = [v11 localContentURL];
          v17 = [v11 assetAttributes];
          v18 = [v13 initWithFullAssetSelector:v14 withAssetID:v15 withLocalContentURL:v16 withAssetAttributes:v17 inhibitedFromEmergencyRemoval:{objc_msgSend(v11, "inhibitedFromEmergencyRemoval")}];

          if (v18)
          {
            [v20 addObject:v18];
          }

          p_weak_ivar_lyt = v12;
        }
      }

      v7 = v20;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)newShimmedArrayFromFramework:(id)a3
{
  v3 = a3;
  if (v3 && __isPlatformVersionAtLeast(2, 17, 0, 0) && objc_opt_class() && (v4 = [MAAutoAssetSetAtomicEntry alloc], v5 = objc_opt_respondsToSelector(), v4, (v5 & 1) != 0))
  {
    v6 = v3;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = objc_alloc_init(NSMutableArray);
      v8 = [v6 count];
      if (v8 >= 1)
      {
        v9 = v8;
        v10 = 0;
        v19 = v6;
        do
        {
          v11 = [v6 objectAtIndex:v10];
          if (v11)
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v12 = [MANAutoAssetSetAtomicEntry alloc];
              v13 = [v11 fullAssetSelector];
              v14 = [v11 assetID];
              v15 = [v11 localContentURL];
              v16 = [v11 assetAttributes];
              v17 = -[MANAutoAssetSetAtomicEntry initWithFullAssetSelector:withAssetID:withLocalContentURL:withAssetAttributes:inhibitedFromEmergencyRemoval:](v12, "initWithFullAssetSelector:withAssetID:withLocalContentURL:withAssetAttributes:inhibitedFromEmergencyRemoval:", v13, v14, v15, v16, [v11 inhibitedFromEmergencyRemoval]);

              if (v17)
              {
                [v7 addObject:v17];
              }

              v6 = v19;
            }
          }

          ++v10;
        }

        while (v9 != v10);
      }
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)newShimmedDictionaryToFramework:(id)a3
{
  v3 = a3;
  if (v3 && __isPlatformVersionAtLeast(2, 17, 0, 0) && objc_opt_class() && (v4 = [MAAutoAssetSetAtomicEntry alloc], v5 = objc_opt_respondsToSelector(), v4, (v5 & 1) != 0))
  {
    v17 = v3;
    v18 = objc_alloc_init(NSMutableDictionary);
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v6 = v3;
    v20 = [v6 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v20)
    {
      v19 = *v22;
      do
      {
        v7 = 0;
        do
        {
          if (*v22 != v19)
          {
            objc_enumerationMutation(v6);
          }

          v8 = *(*(&v21 + 1) + 8 * v7);
          v9 = [v6 safeObjectForKey:v8 ofClass:objc_opt_class()];
          if (v9)
          {
            v10 = [MAAutoAssetSetAtomicEntry alloc];
            v11 = [v9 fullAssetSelector];
            v12 = [v9 assetID];
            v13 = [v9 localContentURL];
            v14 = [v9 assetAttributes];
            v15 = [v10 initWithFullAssetSelector:v11 withAssetID:v12 withLocalContentURL:v13 withAssetAttributes:v14 inhibitedFromEmergencyRemoval:{objc_msgSend(v9, "inhibitedFromEmergencyRemoval")}];

            [v18 setSafeObject:v15 forKey:v8];
          }

          v7 = v7 + 1;
        }

        while (v20 != v7);
        v20 = [v6 countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v20);
    }

    v3 = v17;
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

+ (id)newShimmedDictionaryFromFramework:(id)a3
{
  v3 = a3;
  if (v3 && __isPlatformVersionAtLeast(2, 17, 0, 0) && objc_opt_class() && (v4 = [MAAutoAssetSetAtomicEntry alloc], v5 = objc_opt_respondsToSelector(), v4, (v5 & 1) != 0))
  {
    v6 = v3;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v24 = v3;
      v26 = objc_alloc_init(NSMutableDictionary);
      v27 = 0u;
      v28 = 0u;
      v29 = 0u;
      v30 = 0u;
      v23 = v6;
      v7 = v6;
      v8 = [v7 countByEnumeratingWithState:&v27 objects:v31 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v28;
        v25 = v7;
        do
        {
          v11 = 0;
          do
          {
            if (*v28 != v10)
            {
              objc_enumerationMutation(v7);
            }

            v12 = *(*(&v27 + 1) + 8 * v11);
            v13 = [v7 safeObjectForKey:v12 ofClass:objc_opt_class()];
            if (v13)
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v14 = [MANAutoAssetSetAtomicEntry alloc];
                v15 = [v13 fullAssetSelector];
                v16 = [v13 assetID];
                [v13 localContentURL];
                v18 = v17 = v9;
                [v13 assetAttributes];
                v20 = v19 = v10;
                v21 = -[MANAutoAssetSetAtomicEntry initWithFullAssetSelector:withAssetID:withLocalContentURL:withAssetAttributes:inhibitedFromEmergencyRemoval:](v14, "initWithFullAssetSelector:withAssetID:withLocalContentURL:withAssetAttributes:inhibitedFromEmergencyRemoval:", v15, v16, v18, v20, [v13 inhibitedFromEmergencyRemoval]);

                v10 = v19;
                v9 = v17;
                v7 = v25;

                [v26 setSafeObject:v21 forKey:v12];
              }
            }

            v11 = v11 + 1;
          }

          while (v9 != v11);
          v9 = [v7 countByEnumeratingWithState:&v27 objects:v31 count:16];
        }

        while (v9);
      }

      v6 = v23;
      v3 = v24;
    }

    else
    {
      v26 = 0;
    }
  }

  else
  {
    v26 = 0;
  }

  return v26;
}

@end