@interface MASAutoAssetSetEntry
+ (id)newServerMessageClasses:(id)a3;
+ (id)newShimmedArrayFromFramework:(id)a3;
+ (id)newShimmedArrayToFramework:(id)a3;
+ (id)newShimmedFromFramework:(id)a3;
+ (id)newShimmedFromFrameworkMessage:(id)a3 forKey:(id)a4;
+ (id)newShimmedToFramework:(id)a3;
@end

@implementation MASAutoAssetSetEntry

+ (id)newServerMessageClasses:(id)a3
{
  v3 = a3;
  if (v3)
  {
    v4 = v3;
    if (__isPlatformVersionAtLeast(2, 17, 0, 0))
    {
      v4 = v3;
      if (objc_opt_class())
      {
        v4 = [v3 setByAddingObject:objc_opt_class()];
      }
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
  if (v3 && __isPlatformVersionAtLeast(2, 17, 0, 0) && objc_opt_class() && (v4 = [MAAutoAssetSetEntry alloc], v5 = objc_opt_respondsToSelector(), v4, (v5 & 1) != 0))
  {
    v6 = [MAAutoAssetSetEntry alloc];
    v7 = [v3 assetSelector];
    v8 = [v7 assetType];
    v9 = [v3 assetSelector];
    v10 = [v9 assetSpecifier];
    v11 = [v3 assetSelector];
    v12 = [v11 downloadDecryptionKey];
    v13 = [v6 initForAssetType:v8 withAssetSpecifier:v10 usingDecryptionKey:v12 assetLockedInhibitsRemoval:{objc_msgSend(v3, "assetLockedInhibitsRemoval")}];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

+ (id)newShimmedFromFramework:(id)a3
{
  v3 = a3;
  if (!v3 || !__isPlatformVersionAtLeast(2, 17, 0, 0) || !objc_opt_class())
  {
    goto LABEL_9;
  }

  v4 = [MAAutoAssetSetEntry alloc];
  v5 = objc_opt_respondsToSelector();

  if ((v5 & 1) == 0)
  {
    v17 = [MAAutoAssetSetEntry alloc];
    v18 = objc_opt_respondsToSelector();

    if (v18)
    {
      v19 = v3;
      v20 = [MANAutoAssetSetEntry alloc];
      v16 = [v19 assetSelector];
      v7 = [v16 assetType];
      v8 = [v19 assetSelector];
      v9 = [v8 assetSpecifier];
      v10 = [v19 assetSelector];
      v11 = [v10 downloadDecryptionKey];
      v21 = [v19 assetLockedInhibitsRemoval];

      v15 = [(MANAutoAssetSetEntry *)v20 initForAssetType:v7 withAssetSpecifier:v9 usingDecryptionKey:v11 assetLockedInhibitsRemoval:v21];
      goto LABEL_8;
    }

LABEL_9:
    v15 = 0;
    goto LABEL_10;
  }

  v6 = v3;
  v23 = [MANAutoAssetSetEntry alloc];
  v24 = [v6 assetSelector];
  v7 = [v24 assetType];
  v8 = [v6 assetSelector];
  v9 = [v8 assetSpecifier];
  v10 = [v6 assetSelector];
  v11 = [v10 assetVersion];
  v12 = [v6 assetSelector];
  v13 = [v12 downloadDecryptionKey];
  v14 = [v6 assetLockedInhibitsRemoval];

  v15 = [(MANAutoAssetSetEntry *)v23 initForAssetType:v7 withAssetSpecifier:v9 withAssetVersion:v11 usingDecryptionKey:v13 assetLockedInhibitsRemoval:v14];
  v16 = v24;
LABEL_8:

LABEL_10:
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
    if (__isPlatformVersionAtLeast(2, 17, 0, 0) && objc_opt_class() && ((v9 = [MAAutoAssetSetEntry alloc], v10 = objc_opt_respondsToSelector(), v9, (v10 & 1) != 0) || (v11 = [MAAutoAssetSetEntry alloc], v12 = objc_opt_respondsToSelector(), v11, (v12 & 1) != 0)))
    {
      v13 = [v5 safeObjectForKey:v7 ofClass:objc_opt_class()];
      v8 = [MASAutoAssetSetEntry newShimmedFromFramework:v13];
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
  if (v3 && __isPlatformVersionAtLeast(2, 17, 0, 0) && (p_weak_ivar_lyt = &MAAIRBMobileAssetOperationMetadata__metaData.weak_ivar_lyt, objc_opt_class()) && (v5 = [MAAutoAssetSetEntry alloc], v6 = objc_opt_respondsToSelector(), v5, (v6 & 1) != 0))
  {
    v7 = objc_alloc_init(NSMutableArray);
    v22 = [v3 count];
    if (v22 >= 1)
    {
      v20 = v7;
      v21 = v3;
      v8 = 0;
      do
      {
        v9 = [v3 objectAtIndex:v8];
        if (v9)
        {
          v10 = p_weak_ivar_lyt;
          v11 = objc_alloc(p_weak_ivar_lyt[248]);
          v12 = [v9 assetSelector];
          v13 = [v12 assetType];
          v14 = [v9 assetSelector];
          v15 = [v14 assetSpecifier];
          v16 = [v9 assetSelector];
          v17 = [v16 downloadDecryptionKey];
          v18 = [v11 initForAssetType:v13 withAssetSpecifier:v15 usingDecryptionKey:v17 assetLockedInhibitsRemoval:{objc_msgSend(v9, "assetLockedInhibitsRemoval")}];

          if (v18)
          {
            [v20 addObject:v18];
          }

          p_weak_ivar_lyt = v10;
          v3 = v21;
        }

        ++v8;
      }

      while (v22 != v8);
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
  if (v3 && __isPlatformVersionAtLeast(2, 17, 0, 0) && objc_opt_class())
  {
    v4 = [MAAutoAssetSetEntry alloc];
    v5 = objc_opt_respondsToSelector();

    if (v5)
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
          v39 = v6;
          v41 = v7;
          v37 = v3;
          v38 = v8;
          for (i = 0; i != v9; ++i)
          {
            v11 = [v6 objectAtIndex:i];
            if (v11)
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v12 = [MANAutoAssetSetEntry alloc];
                v42 = [v11 assetSelector];
                v13 = [v42 assetType];
                v14 = [v11 assetSelector];
                v15 = [v14 assetSpecifier];
                v16 = [v11 assetSelector];
                v17 = [v16 assetVersion];
                v18 = [v11 assetSelector];
                v19 = [v18 downloadDecryptionKey];
                v20 = -[MANAutoAssetSetEntry initForAssetType:withAssetSpecifier:withAssetVersion:usingDecryptionKey:assetLockedInhibitsRemoval:](v12, "initForAssetType:withAssetSpecifier:withAssetVersion:usingDecryptionKey:assetLockedInhibitsRemoval:", v13, v15, v17, v19, [v11 assetLockedInhibitsRemoval]);

                if (v20)
                {
                  [v41 addObject:v20];
                }

                v9 = v38;
                v6 = v39;
              }
            }
          }

LABEL_25:
          v3 = v37;
          v7 = v41;
          goto LABEL_29;
        }

        goto LABEL_29;
      }

      goto LABEL_28;
    }

    v21 = [MAAutoAssetSetEntry alloc];
    v22 = objc_opt_respondsToSelector();

    if (v22)
    {
      v23 = v3;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v7 = objc_alloc_init(NSMutableArray);
        v24 = [v23 count];
        if (v24 >= 1)
        {
          v25 = v24;
          v41 = v7;
          v43 = v23;
          v37 = v3;
          v26 = 0;
          v40 = v24;
          do
          {
            v27 = [v23 objectAtIndex:v26];
            if (v27)
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v28 = [MANAutoAssetSetEntry alloc];
                v29 = [v27 assetSelector];
                v30 = [v29 assetType];
                v31 = [v27 assetSelector];
                v32 = [v31 assetSpecifier];
                v33 = [v27 assetSelector];
                v34 = [v33 downloadDecryptionKey];
                v35 = -[MANAutoAssetSetEntry initForAssetType:withAssetSpecifier:usingDecryptionKey:assetLockedInhibitsRemoval:](v28, "initForAssetType:withAssetSpecifier:usingDecryptionKey:assetLockedInhibitsRemoval:", v30, v32, v34, [v27 assetLockedInhibitsRemoval]);

                if (v35)
                {
                  [v41 addObject:v35];
                }

                v23 = v43;
                v25 = v40;
              }
            }

            ++v26;
          }

          while (v25 != v26);
          goto LABEL_25;
        }

LABEL_29:

        goto LABEL_27;
      }

LABEL_28:
      v7 = 0;
      goto LABEL_29;
    }
  }

  v7 = 0;
LABEL_27:

  return v7;
}

@end