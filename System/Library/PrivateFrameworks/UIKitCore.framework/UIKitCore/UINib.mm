@interface UINib
+ (UINib)nibWithData:(NSData *)data bundle:(NSBundle *)bundleOrNil;
+ (UINib)nibWithNibName:(NSString *)name bundle:(NSBundle *)bundleOrNil;
- (NSArray)instantiateWithOwner:(id)ownerOrNil options:(NSDictionary *)optionsOrNil;
- (UINib)initWithBundle:(id)bundle;
- (UINib)initWithCoder:(id)coder;
- (UINib)initWithContentsOfFile:(id)file;
- (UINib)initWithData:(id)data bundle:(id)bundle;
- (UINib)initWithNibName:(id)name directory:(id)directory bundle:(id)bundle;
- (id)bundleResourcePath;
- (id)effectiveBundle;
- (id)lazyArchiveData;
- (id)nibDataForPath:(id)path;
- (id)unarchiverForInstantiatingReturningError:(id *)error;
- (void)_registerForMemoryWarningIfNeeded;
- (void)dealloc;
- (void)didReceiveMemoryWarning:(id)warning;
- (void)encodeWithCoder:(id)coder;
@end

@implementation UINib

- (void)_registerForMemoryWarningIfNeeded
{
  bundleResourceName = [self->storage bundleResourceName];

  if (bundleResourceName)
  {
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:self selector:sel_didReceiveMemoryWarning_ name:@"UIApplicationDidReceiveMemoryWarningNotification" object:UIApp];
  }
}

- (id)lazyArchiveData
{
  archiveData = [self->storage archiveData];

  if (!archiveData)
  {
    bundleResourceName = [self->storage bundleResourceName];

    if (!bundleResourceName)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"UINib.m" lineNumber:270 description:@"UINib must be instantiated with either data or a nib name."];
    }

    bundleResourcePath = [(UINib *)self bundleResourcePath];
    if (bundleResourcePath)
    {
      v7 = [(UINib *)self nibDataForPath:bundleResourcePath];
      [self->storage setArchiveData:v7];
    }
  }

  storage = self->storage;

  return [storage archiveData];
}

- (id)bundleResourcePath
{
  bundleResourceName = [self->storage bundleResourceName];
  if (bundleResourceName)
  {
    v4 = bundleResourceName;
    bundleDirectoryName = [self->storage bundleDirectoryName];

    if (bundleDirectoryName)
    {
      effectiveBundle = [(UINib *)self effectiveBundle];
      bundleResourceName2 = [self->storage bundleResourceName];
      bundleDirectoryName2 = [self->storage bundleDirectoryName];
      v9 = [effectiveBundle pathForResource:bundleResourceName2 ofType:@"nib" inDirectory:bundleDirectoryName2];

LABEL_6:
      goto LABEL_8;
    }
  }

  bundleResourceName3 = [self->storage bundleResourceName];

  if (bundleResourceName3)
  {
    effectiveBundle = [(UINib *)self effectiveBundle];
    bundleResourceName2 = [self->storage bundleResourceName];
    v9 = [effectiveBundle pathForResource:bundleResourceName2 ofType:@"nib"];
    goto LABEL_6;
  }

  v9 = 0;
LABEL_8:

  return v9;
}

- (id)effectiveBundle
{
  bundle = [self->storage bundle];
  v3 = bundle;
  if (bundle)
  {
    mainBundle = bundle;
  }

  else
  {
    mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
  }

  v5 = mainBundle;

  return v5;
}

- (void)dealloc
{
  bundleResourceName = [self->storage bundleResourceName];

  if (bundleResourceName)
  {
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter removeObserver:self name:@"UIApplicationDidReceiveMemoryWarningNotification" object:UIApp];
  }

  v5.receiver = self;
  v5.super_class = UINib;
  [(UINib *)&v5 dealloc];
}

- (UINib)initWithBundle:(id)bundle
{
  bundleCopy = bundle;
  v9.receiver = self;
  v9.super_class = UINib;
  v5 = [(UINib *)&v9 init];
  if (v5)
  {
    v6 = objc_alloc_init(UINibStorage);
    storage = v5->storage;
    v5->storage = v6;

    [v5->storage setBundle:bundleCopy];
  }

  return v5;
}

- (UINib)initWithData:(id)data bundle:(id)bundle
{
  dataCopy = data;
  bundleCopy = bundle;
  if (!dataCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UINib.m" lineNumber:89 description:{@"Invalid parameter not satisfying: %@", @"data != nil"}];
  }

  v9 = [(UINib *)self initWithBundle:bundleCopy];
  v10 = v9;
  if (v9)
  {
    [v9->storage setArchiveData:dataCopy];
  }

  return v10;
}

- (UINib)initWithNibName:(id)name directory:(id)directory bundle:(id)bundle
{
  nameCopy = name;
  directoryCopy = directory;
  bundleCopy = bundle;
  if (!nameCopy || ![nameCopy length])
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UINib.m" lineNumber:97 description:{@"Invalid parameter not satisfying: %@", @"(name != nil) && ([name length] > 0)"}];
  }

  v12 = [(UINib *)self initWithBundle:bundleCopy];
  v13 = v12;
  if (v12)
  {
    [v12->storage setBundleResourceName:nameCopy];
    [v13->storage setBundleDirectoryName:directoryCopy];
    [(UINib *)v13 _registerForMemoryWarningIfNeeded];
  }

  return v13;
}

- (UINib)initWithContentsOfFile:(id)file
{
  v4 = [(UINib *)self nibDataForPath:file];
  v5 = [(UINib *)self initWithData:v4 bundle:0];

  return v5;
}

+ (UINib)nibWithNibName:(NSString *)name bundle:(NSBundle *)bundleOrNil
{
  v5 = bundleOrNil;
  v6 = name;
  v7 = [[UINib alloc] initWithNibName:v6 directory:0 bundle:v5];

  return v7;
}

+ (UINib)nibWithData:(NSData *)data bundle:(NSBundle *)bundleOrNil
{
  v5 = bundleOrNil;
  v6 = data;
  v7 = [[UINib alloc] initWithData:v6 bundle:v5];

  return v7;
}

- (UINib)initWithCoder:(id)coder
{
  coderCopy = coder;
  v18.receiver = self;
  v18.super_class = UINib;
  v5 = [(UINib *)&v18 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectForKey:@"bundleID"];
    if (v6)
    {
      v7 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:v6];
      if (v7)
      {
        v8 = v7;
        v9 = [coderCopy decodeObjectForKey:@"identifierForStringsFile"];
        goto LABEL_11;
      }

      NSLog(&cfstr_AnInstanceOfUi.isa, v6);
      v9 = [coderCopy decodeObjectForKey:@"identifierForStringsFile"];
    }

    else
    {
      if (![coderCopy decodeBoolForKey:@"captureEnclosingNIBBundleOnDecode"])
      {
        v9 = 0;
        v8 = 0;
        goto LABEL_11;
      }

      v8 = UIResourceBundleForNIBBeingDecodedWithCoder(coderCopy);
      v9 = UIResourceIdentifierForStringsFileForNIBBeingDecodedWithCoder(coderCopy);
      if (v8)
      {
LABEL_11:
        v10 = objc_alloc_init(UINibStorage);
        storage = v5->storage;
        v5->storage = v10;

        [v5->storage setBundle:v8];
        v12 = v5->storage;
        v13 = [coderCopy decodeObjectForKey:@"bundleResourceName"];
        [v12 setBundleResourceName:v13];

        [v5->storage setIdentifierForStringsFile:v9];
        bundleResourceName = [v5->storage bundleResourceName];

        v15 = v5->storage;
        if (bundleResourceName)
        {
          v16 = [coderCopy decodeObjectForKey:@"bundleDirectoryName"];
          [v15 setBundleDirectoryName:v16];
        }

        else
        {
          v16 = [coderCopy decodeObjectForKey:@"archiveData"];
          [v15 setArchiveData:v16];
        }

        [(UINib *)v5 _registerForMemoryWarningIfNeeded];
        goto LABEL_15;
      }

      NSLog(&cfstr_AnInstanceOfUi_0.isa);
    }

    v8 = 0;
    v5 = 0;
LABEL_15:
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  bundle = [self->storage bundle];

  if (bundle)
  {
    bundle2 = [self->storage bundle];
    bundleIdentifier = [bundle2 bundleIdentifier];
    [coderCopy encodeObject:bundleIdentifier forKey:@"bundleID"];
  }

  identifierForStringsFile = [self->storage identifierForStringsFile];

  if (identifierForStringsFile)
  {
    identifierForStringsFile2 = [self->storage identifierForStringsFile];
    [coderCopy encodeObject:identifierForStringsFile2 forKey:@"identifierForStringsFile"];
  }

  if ([(UINib *)self captureImplicitLoadingContextOnDecode])
  {
    [coderCopy encodeBool:-[UINib captureImplicitLoadingContextOnDecode](self forKey:{"captureImplicitLoadingContextOnDecode"), @"captureEnclosingNIBBundleOnDecode"}];
  }

  bundleResourceName = [self->storage bundleResourceName];

  storage = self->storage;
  if (bundleResourceName)
  {
    bundleResourceName2 = [storage bundleResourceName];
    [coderCopy encodeObject:bundleResourceName2 forKey:@"bundleResourceName"];

    bundleDirectoryName = [self->storage bundleDirectoryName];

    v13 = coderCopy;
    if (!bundleDirectoryName)
    {
      goto LABEL_13;
    }

    bundleDirectoryName2 = [self->storage bundleDirectoryName];
    v15 = @"bundleDirectoryName";
  }

  else
  {
    archiveData = [storage archiveData];

    v13 = coderCopy;
    if (!archiveData)
    {
      goto LABEL_13;
    }

    bundleDirectoryName2 = [self->storage archiveData];
    v15 = @"archiveData";
  }

  [coderCopy encodeObject:bundleDirectoryName2 forKey:v15];

  v13 = coderCopy;
LABEL_13:
}

- (id)nibDataForPath:(id)path
{
  pathCopy = path;
  v4 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithContentsOfFile:pathCopy];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v7 = objc_alloc(MEMORY[0x1E695DEF0]);
    v8 = [pathCopy stringByAppendingPathComponent:@"objects-17.0+.nib"];
    v9 = [v7 initWithContentsOfFile:v8];
    v10 = v9;
    if (v9)
    {
      v6 = v9;
    }

    else
    {
      v11 = objc_alloc(MEMORY[0x1E695DEF0]);
      v12 = [pathCopy stringByAppendingPathComponent:@"objects-16.0+.nib"];
      v13 = [v11 initWithContentsOfFile:v12];
      v14 = v13;
      if (v13)
      {
        v6 = v13;
      }

      else
      {
        v15 = objc_alloc(MEMORY[0x1E695DEF0]);
        v16 = [pathCopy stringByAppendingPathComponent:@"objects-15.0+.nib"];
        v17 = [v15 initWithContentsOfFile:v16];
        v18 = v17;
        if (v17)
        {
          v6 = v17;
        }

        else
        {
          v19 = objc_alloc(MEMORY[0x1E695DEF0]);
          v48 = [pathCopy stringByAppendingPathComponent:@"objects-14.0+.nib"];
          v20 = [v19 initWithContentsOfFile:?];
          if (v20)
          {
            v21 = v20;
            v6 = v20;
          }

          else
          {
            v22 = objc_alloc(MEMORY[0x1E695DEF0]);
            v47 = [pathCopy stringByAppendingPathComponent:@"objects-13.0+.nib"];
            v23 = [v22 initWithContentsOfFile:?];
            if (v23)
            {
              v24 = v23;
              v6 = v23;
            }

            else
            {
              v25 = objc_alloc(MEMORY[0x1E695DEF0]);
              v46 = [pathCopy stringByAppendingPathComponent:@"objects-12.3+.nib"];
              v26 = [v25 initWithContentsOfFile:?];
              if (v26)
              {
                v27 = v26;
                v6 = v26;
              }

              else
              {
                v28 = objc_alloc(MEMORY[0x1E695DEF0]);
                v45 = [pathCopy stringByAppendingPathComponent:@"objects-11.0+.nib"];
                v29 = [v28 initWithContentsOfFile:?];
                if (v29)
                {
                  v30 = v29;
                  v6 = v29;
                }

                else
                {
                  v31 = objc_alloc(MEMORY[0x1E695DEF0]);
                  v44 = [pathCopy stringByAppendingPathComponent:@"objects-9.1+.nib"];
                  v32 = [v31 initWithContentsOfFile:?];
                  if (v32)
                  {
                    v33 = v32;
                    v6 = v32;
                  }

                  else
                  {
                    v34 = objc_alloc(MEMORY[0x1E695DEF0]);
                    v43 = [pathCopy stringByAppendingPathComponent:@"objects-8.0+.nib"];
                    v35 = [v34 initWithContentsOfFile:?];
                    if (v35)
                    {
                      v36 = v35;
                      v6 = v35;
                    }

                    else
                    {
                      v37 = objc_alloc(MEMORY[0x1E695DEF0]);
                      v41 = [pathCopy stringByAppendingPathComponent:@"objects.nib"];
                      v42 = [v37 initWithContentsOfFile:?];
                      if (v42)
                      {
                        v6 = v42;
                      }

                      else
                      {
                        v38 = objc_alloc(MEMORY[0x1E695DEF0]);
                        v39 = [pathCopy stringByAppendingPathComponent:@"runtime.nib"];
                        v6 = [v38 initWithContentsOfFile:v39];
                      }

                      v36 = 0;
                    }

                    v33 = 0;
                  }

                  v30 = 0;
                }

                v27 = 0;
              }

              v24 = 0;
            }

            v21 = 0;
          }
        }
      }
    }
  }

  return v6;
}

- (id)unarchiverForInstantiatingReturningError:(id *)error
{
  nibDecoder = [self->storage nibDecoder];
  if (nibDecoder)
  {
    v6 = nibDecoder;
    v7 = 0;
  }

  else
  {
    [(UINib *)self lazyArchiveData];
    if (objc_claimAutoreleasedReturnValue())
    {
      UIDataLooksLikeNibArchive();
    }

    effectiveBundle = [(UINib *)self effectiveBundle];
    bundleResourceName = [self->storage bundleResourceName];
    bundleDirectoryName = [self->storage bundleDirectoryName];
    if (bundleResourceName && bundleDirectoryName)
    {
      [MEMORY[0x1E696AEC0] stringWithFormat:@"Could not load NIB in bundle: '%@' with name '%@' and directory '%@'", effectiveBundle, bundleResourceName, bundleDirectoryName];
    }

    else
    {
      [MEMORY[0x1E696AEC0] stringWithFormat:@"Could not load NIB in bundle: '%@' with name '%@'", effectiveBundle, bundleResourceName, v17];
    }
    v12 = ;

    v13 = MEMORY[0x1E696ABC0];
    v14 = *MEMORY[0x1E696A250];
    v15 = [MEMORY[0x1E695DF20] dictionaryWithObject:v12 forKey:*MEMORY[0x1E696A578]];
    v7 = [v13 errorWithDomain:v14 code:0 userInfo:v15];

    v6 = 0;
    if (error && v7)
    {
      v16 = v7;
      *error = v7;
    }
  }

  return v6;
}

- (NSArray)instantiateWithOwner:(id)ownerOrNil options:(NSDictionary *)optionsOrNil
{
  v113 = *MEMORY[0x1E69E9840];
  v6 = ownerOrNil;
  v7 = optionsOrNil;
  identifierForStringsFile = [self->storage identifierForStringsFile];
  v9 = identifierForStringsFile;
  if (identifierForStringsFile)
  {
    bundleResourcePath = identifierForStringsFile;
  }

  else
  {
    bundleResourcePath = [(UINib *)self bundleResourcePath];
  }

  v11 = bundleResourcePath;

  effectiveBundle = [(UINib *)self effectiveBundle];
  [MEMORY[0x1E696AAE8] pushNibLoadingBundle:effectiveBundle];
  [MEMORY[0x1E696AAE8] pushNibPath:v11];
  v86 = __isObjectTaggingEnabled;
  __isObjectTaggingEnabled = 1;
  v13 = objc_autoreleasePoolPush();
  v107 = 0;
  v14 = [(UINib *)self unarchiverForInstantiatingReturningError:&v107];
  v15 = v107;
  v85 = v7;
  if (v14)
  {
    v76 = v15;
    v16 = [(NSDictionary *)v7 objectForKey:@"UINibExternalObjects"];
    v17 = v16;
    v78 = v13;
    if (v16)
    {
      v18 = v16;
    }

    else
    {
      v18 = [(NSDictionary *)v7 objectForKey:@"UINibProxiedObjects"];
    }

    v25 = v18;

    v26 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:{objc_msgSend(v25, "count") + 2}];
    if (!IBFirstResponderStandin)
    {
      v27 = objc_alloc_init(MEMORY[0x1E69E58C0]);
      v28 = IBFirstResponderStandin;
      IBFirstResponderStandin = v27;
    }

    if (v6 || (v6 = objc_alloc_init(MEMORY[0x1E69E58C0])) != 0)
    {
      [v26 addObject:v6];
      [UIProxyObject addMappingFromIdentifier:0x1EFB63530 toObject:v6 forCoder:v14];
    }

    v79 = effectiveBundle;
    v81 = v6;
    [UIProxyObject addMappingFromIdentifier:0x1EFB63550 toObject:IBFirstResponderStandin forCoder:v14];
    [v26 addObject:IBFirstResponderStandin];
    if ([v25 count])
    {
      allValues = [v25 allValues];
      [v26 addObjectsFromArray:allValues];

      [UIProxyObject addMappings:v25 forCoder:v14];
    }

    selfCopy = self;
    v75 = v25;
    effectiveBundle2 = [(UINib *)self effectiveBundle];
    v80 = v11;
    UIResourceBeginDecodingNIBWithCoderFromBundleAndIdentifierForStringsFile(v14, effectiveBundle2, v11);

    v31 = [(NSDictionary *)v7 valueForKey:0x1EFB9DE50];
    v32 = [(NSDictionary *)v7 valueForKey:0x1EFB9DE90];
    v33 = [(NSDictionary *)v7 valueForKey:0x1EFB9DE70];
    v34 = [v14 _decodeObjectsWithSourceSegueTemplate:v31 creator:v32 sender:v33 forKey:@"UINibConnectionsKey"];

    v71 = [v14 decodeObjectForKey:@"UINibTopLevelObjectsKey"];
    v73 = [v14 decodeObjectForKey:@"UINibVisibleWindowsKey"];
    v72 = [v14 decodeObjectForKey:@"UINibObjectsKey"];
    v84 = [v14 decodeObjectForKey:@"UINibAccessibilityConfigurationsKey"];
    v83 = [v14 decodeObjectForKey:@"UINibKeyValuePairsKey"];
    v35 = [v14 decodeObjectForKey:@"UINibTraitStorageListsKey"];
    v103 = 0u;
    v104 = 0u;
    v105 = 0u;
    v106 = 0u;
    v36 = [v35 countByEnumeratingWithState:&v103 objects:v112 count:16];
    if (v36)
    {
      v37 = v36;
      v38 = *v104;
      do
      {
        for (i = 0; i != v37; ++i)
        {
          if (*v104 != v38)
          {
            objc_enumerationMutation(v35);
          }

          v40 = *(*(&v103 + 1) + 8 * i);
          topLevelObject = [v40 topLevelObject];
          [topLevelObject _setTraitStorageList:v40];
        }

        v37 = [v35 countByEnumeratingWithState:&v103 objects:v112 count:16];
      }

      while (v37);
    }

    v77 = v14;
    v82 = v34;
    if (dyld_program_sdk_at_least())
    {
      v101 = 0u;
      v102 = 0u;
      v99 = 0u;
      v100 = 0u;
      v42 = v35;
      v43 = [v42 countByEnumeratingWithState:&v99 objects:v111 count:16];
      if (v43)
      {
        v44 = v43;
        v45 = *v100;
        do
        {
          for (j = 0; j != v44; ++j)
          {
            if (*v100 != v45)
            {
              objc_enumerationMutation(v42);
            }

            topLevelObject2 = [*(*(&v99 + 1) + 8 * j) topLevelObject];
            if (objc_opt_respondsToSelector())
            {
              [topLevelObject2 traitCollection];
            }

            else
            {
              +[UITraitCollection _fallbackTraitCollection];
            }
            v48 = ;
            [topLevelObject2 _applyTraitStorageRecordsForTraitCollection:v48];
          }

          v44 = [v42 countByEnumeratingWithState:&v99 objects:v111 count:16];
        }

        while (v44);
      }

      v34 = v82;
    }

    [v84 makeObjectsPerformSelector:sel_applyConfiguration];
    instantiatingForSimulator = [selfCopy->storage instantiatingForSimulator];
    v50 = &selRef_applyForSimulator;
    if (instantiatingForSimulator)
    {
      v51 = &selRef_connectForSimulator;
    }

    else
    {
      v50 = &selRef_apply;
      v51 = &selRef_connect;
    }

    [v83 makeObjectsPerformSelector:*v50];
    [v34 makeObjectsPerformSelector:*v51];
    v14 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v95 = 0u;
    v96 = 0u;
    v97 = 0u;
    v98 = 0u;
    v52 = v71;
    v53 = [v52 countByEnumeratingWithState:&v95 objects:v110 count:16];
    if (v53)
    {
      v54 = v53;
      v55 = *v96;
      do
      {
        for (k = 0; k != v54; ++k)
        {
          if (*v96 != v55)
          {
            objc_enumerationMutation(v52);
          }

          v57 = *(*(&v95 + 1) + 8 * k);
          if (([v26 containsObject:v57] & 1) == 0)
          {
            [v14 addObject:v57];
          }
        }

        v54 = [v52 countByEnumeratingWithState:&v95 objects:v110 count:16];
      }

      while (v54);
    }

    if ((v86 & 1) == 0 && dyld_program_sdk_at_least())
    {
      __isObjectTaggingEnabled = 0;
    }

    v93 = 0u;
    v94 = 0u;
    v91 = 0u;
    v92 = 0u;
    v58 = v72;
    v59 = [v58 countByEnumeratingWithState:&v91 objects:v109 count:16];
    if (v59)
    {
      v60 = v59;
      v61 = *v92;
      do
      {
        for (m = 0; m != v60; ++m)
        {
          if (*v92 != v61)
          {
            objc_enumerationMutation(v58);
          }

          v63 = *(*(&v91 + 1) + 8 * m);
          if (([v26 containsObject:v63] & 1) == 0)
          {
            [v63 awakeFromNib];
          }
        }

        v60 = [v58 countByEnumeratingWithState:&v91 objects:v109 count:16];
      }

      while (v60);
    }

    __isObjectTaggingEnabled = 1;
    v87 = 0u;
    v88 = 0u;
    v89 = 0u;
    v90 = 0u;
    v64 = v73;
    v65 = [v64 countByEnumeratingWithState:&v87 objects:v108 count:16];
    if (v65)
    {
      v66 = v65;
      v67 = *v88;
      do
      {
        for (n = 0; n != v66; ++n)
        {
          if (*v88 != v67)
          {
            objc_enumerationMutation(v64);
          }

          [*(*(&v87 + 1) + 8 * n) makeKeyAndVisible];
        }

        v66 = [v64 countByEnumeratingWithState:&v87 objects:v108 count:16];
      }

      while (v66);
    }

    v23 = v77;
    UIResourceFinishDecodingNIBWithCoder(v77);
    [UIProxyObject removeMappingsForCoder:v77];
    [v77 finishDecoding];

    v11 = v80;
    v6 = v81;
    v13 = v78;
    effectiveBundle = v79;
    v24 = v86;
    localizedDescription = v75;
    v21 = v76;
  }

  else
  {
    v19 = MEMORY[0x1E695DF30];
    v20 = *MEMORY[0x1E695D930];
    v21 = v15;
    localizedDescription = [v15 localizedDescription];
    [v19 raise:v20 format:{@"%@", localizedDescription}];
    v23 = 0;
    v24 = v86;
  }

  objc_autoreleasePoolPop(v13);
  if ((v24 & 1) == 0)
  {
    __isObjectTaggingEnabled = 0;
  }

  [MEMORY[0x1E696AAE8] popNibPath];
  [MEMORY[0x1E696AAE8] popNibLoadingBundle];
  v69 = v14;

  return v14;
}

- (void)didReceiveMemoryWarning:(id)warning
{
  [self->storage setNibDecoder:0];
  storage = self->storage;

  [storage setArchiveData:0];
}

@end