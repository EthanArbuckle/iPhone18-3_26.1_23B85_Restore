@interface MASAutoAssetSetEntry
+ (id)newServerMessageClasses:(id)classes;
+ (id)newShimmedArrayFromFramework:(id)framework;
+ (id)newShimmedArrayToFramework:(id)framework;
+ (id)newShimmedFromFramework:(id)framework;
+ (id)newShimmedFromFrameworkMessage:(id)message forKey:(id)key;
+ (id)newShimmedToFramework:(id)framework;
@end

@implementation MASAutoAssetSetEntry

+ (id)newServerMessageClasses:(id)classes
{
  classesCopy = classes;
  if (classesCopy)
  {
    v4 = classesCopy;
    if (__isPlatformVersionAtLeast(2, 17, 0, 0))
    {
      v4 = classesCopy;
      if (objc_opt_class())
      {
        v4 = [classesCopy setByAddingObject:objc_opt_class()];
      }
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
  if (frameworkCopy && __isPlatformVersionAtLeast(2, 17, 0, 0) && objc_opt_class() && (v4 = [MAAutoAssetSetEntry alloc], v5 = objc_opt_respondsToSelector(), v4, (v5 & 1) != 0))
  {
    v6 = [MAAutoAssetSetEntry alloc];
    assetSelector = [frameworkCopy assetSelector];
    assetType = [assetSelector assetType];
    assetSelector2 = [frameworkCopy assetSelector];
    assetSpecifier = [assetSelector2 assetSpecifier];
    assetSelector3 = [frameworkCopy assetSelector];
    downloadDecryptionKey = [assetSelector3 downloadDecryptionKey];
    v13 = [v6 initForAssetType:assetType withAssetSpecifier:assetSpecifier usingDecryptionKey:downloadDecryptionKey assetLockedInhibitsRemoval:{objc_msgSend(frameworkCopy, "assetLockedInhibitsRemoval")}];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

+ (id)newShimmedFromFramework:(id)framework
{
  frameworkCopy = framework;
  if (!frameworkCopy || !__isPlatformVersionAtLeast(2, 17, 0, 0) || !objc_opt_class())
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
      v19 = frameworkCopy;
      v20 = [MANAutoAssetSetEntry alloc];
      assetSelector = [v19 assetSelector];
      assetType = [assetSelector assetType];
      assetSelector2 = [v19 assetSelector];
      assetSpecifier = [assetSelector2 assetSpecifier];
      assetSelector3 = [v19 assetSelector];
      downloadDecryptionKey = [assetSelector3 downloadDecryptionKey];
      assetLockedInhibitsRemoval = [v19 assetLockedInhibitsRemoval];

      v15 = [(MANAutoAssetSetEntry *)v20 initForAssetType:assetType withAssetSpecifier:assetSpecifier usingDecryptionKey:downloadDecryptionKey assetLockedInhibitsRemoval:assetLockedInhibitsRemoval];
      goto LABEL_8;
    }

LABEL_9:
    v15 = 0;
    goto LABEL_10;
  }

  v6 = frameworkCopy;
  v23 = [MANAutoAssetSetEntry alloc];
  assetSelector4 = [v6 assetSelector];
  assetType = [assetSelector4 assetType];
  assetSelector2 = [v6 assetSelector];
  assetSpecifier = [assetSelector2 assetSpecifier];
  assetSelector3 = [v6 assetSelector];
  downloadDecryptionKey = [assetSelector3 assetVersion];
  assetSelector5 = [v6 assetSelector];
  downloadDecryptionKey2 = [assetSelector5 downloadDecryptionKey];
  assetLockedInhibitsRemoval2 = [v6 assetLockedInhibitsRemoval];

  v15 = [(MANAutoAssetSetEntry *)v23 initForAssetType:assetType withAssetSpecifier:assetSpecifier withAssetVersion:downloadDecryptionKey usingDecryptionKey:downloadDecryptionKey2 assetLockedInhibitsRemoval:assetLockedInhibitsRemoval2];
  assetSelector = assetSelector4;
LABEL_8:

LABEL_10:
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
    if (__isPlatformVersionAtLeast(2, 17, 0, 0) && objc_opt_class() && ((v9 = [MAAutoAssetSetEntry alloc], v10 = objc_opt_respondsToSelector(), v9, (v10 & 1) != 0) || (v11 = [MAAutoAssetSetEntry alloc], v12 = objc_opt_respondsToSelector(), v11, (v12 & 1) != 0)))
    {
      v13 = [messageCopy safeObjectForKey:v7 ofClass:objc_opt_class()];
      v8 = [MASAutoAssetSetEntry newShimmedFromFramework:v13];
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

+ (id)newShimmedArrayToFramework:(id)framework
{
  frameworkCopy = framework;
  if (frameworkCopy && __isPlatformVersionAtLeast(2, 17, 0, 0) && (p_weak_ivar_lyt = &MAAIRBMobileAssetOperationMetadata__metaData.weak_ivar_lyt, objc_opt_class()) && (v5 = [MAAutoAssetSetEntry alloc], v6 = objc_opt_respondsToSelector(), v5, (v6 & 1) != 0))
  {
    v7 = objc_alloc_init(NSMutableArray);
    v22 = [frameworkCopy count];
    if (v22 >= 1)
    {
      v20 = v7;
      v21 = frameworkCopy;
      v8 = 0;
      do
      {
        v9 = [frameworkCopy objectAtIndex:v8];
        if (v9)
        {
          v10 = p_weak_ivar_lyt;
          v11 = objc_alloc(p_weak_ivar_lyt[248]);
          assetSelector = [v9 assetSelector];
          assetType = [assetSelector assetType];
          assetSelector2 = [v9 assetSelector];
          assetSpecifier = [assetSelector2 assetSpecifier];
          assetSelector3 = [v9 assetSelector];
          downloadDecryptionKey = [assetSelector3 downloadDecryptionKey];
          v18 = [v11 initForAssetType:assetType withAssetSpecifier:assetSpecifier usingDecryptionKey:downloadDecryptionKey assetLockedInhibitsRemoval:{objc_msgSend(v9, "assetLockedInhibitsRemoval")}];

          if (v18)
          {
            [v20 addObject:v18];
          }

          p_weak_ivar_lyt = v10;
          frameworkCopy = v21;
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

+ (id)newShimmedArrayFromFramework:(id)framework
{
  frameworkCopy = framework;
  if (frameworkCopy && __isPlatformVersionAtLeast(2, 17, 0, 0) && objc_opt_class())
  {
    v4 = [MAAutoAssetSetEntry alloc];
    v5 = objc_opt_respondsToSelector();

    if (v5)
    {
      v6 = frameworkCopy;
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
          v37 = frameworkCopy;
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
                assetSelector = [v11 assetSelector];
                assetType = [assetSelector assetType];
                assetSelector2 = [v11 assetSelector];
                assetSpecifier = [assetSelector2 assetSpecifier];
                assetSelector3 = [v11 assetSelector];
                assetVersion = [assetSelector3 assetVersion];
                assetSelector4 = [v11 assetSelector];
                downloadDecryptionKey = [assetSelector4 downloadDecryptionKey];
                v20 = -[MANAutoAssetSetEntry initForAssetType:withAssetSpecifier:withAssetVersion:usingDecryptionKey:assetLockedInhibitsRemoval:](v12, "initForAssetType:withAssetSpecifier:withAssetVersion:usingDecryptionKey:assetLockedInhibitsRemoval:", assetType, assetSpecifier, assetVersion, downloadDecryptionKey, [v11 assetLockedInhibitsRemoval]);

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
          frameworkCopy = v37;
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
      v23 = frameworkCopy;
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
          v37 = frameworkCopy;
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
                assetSelector5 = [v27 assetSelector];
                assetType2 = [assetSelector5 assetType];
                assetSelector6 = [v27 assetSelector];
                assetSpecifier2 = [assetSelector6 assetSpecifier];
                assetSelector7 = [v27 assetSelector];
                downloadDecryptionKey2 = [assetSelector7 downloadDecryptionKey];
                v35 = -[MANAutoAssetSetEntry initForAssetType:withAssetSpecifier:usingDecryptionKey:assetLockedInhibitsRemoval:](v28, "initForAssetType:withAssetSpecifier:usingDecryptionKey:assetLockedInhibitsRemoval:", assetType2, assetSpecifier2, downloadDecryptionKey2, [v27 assetLockedInhibitsRemoval]);

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