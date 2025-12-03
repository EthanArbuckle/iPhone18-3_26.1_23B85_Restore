@interface SUCoreErrorInformation
+ (id)codeNameForDomain:(id)domain withCode:(int64_t)code;
+ (id)codeNameForError:(id)error;
+ (id)nameForSUCoreCode:(int64_t)code;
+ (id)nameForSUCoreLayer:(int64_t)layer;
+ (id)safeUserInfoValueClasses;
+ (id)setupCoreErrorInformation;
+ (id)sharedErrorInformation;
+ (id)summaryOfIndications:(int64_t)indications;
+ (int64_t)indicationsForError:(id)error matchingMask:(int64_t)mask;
+ (int64_t)layerForError:(id)error;
+ (void)associateLayer:(int64_t)layer withDomain:(id)domain minCode:(int64_t)code maxCode:(int64_t)maxCode indicating:(int64_t)indicating ifKeyTrue:(id)true keyMatchTrueMap:(id)map;
+ (void)attributesOfErrorForDomain:(id)domain withCode:(int64_t)code codeName:(id)name indicating:(int64_t)indicating ifKeyTrue:(id)true keyMatchTrueMap:(id)map;
+ (void)attributesOfSUCoreErrorCode:(int64_t)code indicating:(int64_t)indicating;
- (SUCoreErrorInformation)init;
- (void)_associateLayer:(int64_t)layer withDomain:(id)domain minCode:(int64_t)code maxCode:(int64_t)maxCode indicating:(int64_t)indicating ifKeyTrue:(id)true keyMatchTrueMap:(id)map;
- (void)_attributesOfErrorForDomain:(id)domain withCode:(int64_t)code codeName:(id)name indicating:(int64_t)indicating ifKeyTrue:(id)true keyMatchTrueMap:(id)map;
- (void)_defineErrorLayers;
@end

@implementation SUCoreErrorInformation

+ (id)safeUserInfoValueClasses
{
  v2 = +[SUCoreErrorInformation setupCoreErrorInformation];
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__0;
  v15 = __Block_byref_object_dispose__0;
  v16 = 0;
  informationQueue = [v2 informationQueue];
  dispatch_assert_queue_not_V2(informationQueue);

  informationQueue2 = [v2 informationQueue];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __50__SUCoreErrorInformation_safeUserInfoValueClasses__block_invoke;
  v8[3] = &unk_1E86FC1A0;
  v9 = v2;
  v10 = &v11;
  v5 = v2;
  dispatch_sync(informationQueue2, v8);

  v6 = v12[5];
  _Block_object_dispose(&v11, 8);

  return v6;
}

+ (id)setupCoreErrorInformation
{
  v2 = +[SUCoreErrorInformation sharedErrorInformation];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __51__SUCoreErrorInformation_setupCoreErrorInformation__block_invoke;
  block[3] = &unk_1E86FC178;
  v3 = v2;
  v6 = v3;
  if (setupCoreErrorInformation_coreErrorInfoOnce != -1)
  {
    dispatch_once(&setupCoreErrorInformation_coreErrorInfoOnce, block);
  }

  return v3;
}

+ (id)sharedErrorInformation
{
  if (sharedErrorInformation_errorInfoOnce != -1)
  {
    +[SUCoreErrorInformation sharedErrorInformation];
  }

  v3 = sharedErrorInformation_errorInfo;

  return v3;
}

uint64_t __50__SUCoreErrorInformation_safeUserInfoValueClasses__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) safeUserInfoValues];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __48__SUCoreErrorInformation_sharedErrorInformation__block_invoke()
{
  sharedErrorInformation_errorInfo = objc_alloc_init(SUCoreErrorInformation);

  return MEMORY[0x1EEE66BB8]();
}

- (SUCoreErrorInformation)init
{
  v16[5] = *MEMORY[0x1E69E9840];
  v15.receiver = self;
  v15.super_class = SUCoreErrorInformation;
  v2 = [(SUCoreErrorInformation *)&v15 init];
  if (v2)
  {
    uTF8String = [@"com.apple.su.core.error.info" UTF8String];
    v4 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v5 = dispatch_queue_create(uTF8String, v4);
    informationQueue = v2->_informationQueue;
    v2->_informationQueue = v5;

    v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
    layerInformation = v2->_layerInformation;
    v2->_layerInformation = v7;

    v9 = objc_alloc_init(MEMORY[0x1E695DF90]);
    errorInformation = v2->_errorInformation;
    v2->_errorInformation = v9;

    v16[0] = objc_opt_class();
    v16[1] = objc_opt_class();
    v16[2] = objc_opt_class();
    v16[3] = objc_opt_class();
    v16[4] = objc_opt_class();
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:5];
    safeUserInfoValues = v2->_safeUserInfoValues;
    v2->_safeUserInfoValues = v11;
  }

  v13 = *MEMORY[0x1E69E9840];
  return v2;
}

- (void)_defineErrorLayers
{
  informationQueue = [(SUCoreErrorInformation *)self informationQueue];
  dispatch_assert_queue_V2(informationQueue);

  [(SUCoreErrorInformation *)self _associateLayer:100 withDomain:@"SUCoreError" minCode:8100 maxCode:8126];
  [(SUCoreErrorInformation *)self _associateLayer:110 withDomain:@"SUCoreError" minCode:8200 maxCode:8206];
  [(SUCoreErrorInformation *)self _associateLayer:130 withDomain:@"SUCoreError" minCode:8250 maxCode:8255];
  [(SUCoreErrorInformation *)self _associateLayer:101 withDomain:@"SUCoreError" minCode:8300 maxCode:8300];
  [(SUCoreErrorInformation *)self _associateLayer:620 withDomain:@"SUCoreError" minCode:8400 maxCode:8411];
  [(SUCoreErrorInformation *)self _associateLayer:102 withDomain:@"SUCoreError" minCode:8500 maxCode:8503];
  [(SUCoreErrorInformation *)self _associateLayer:150 withDomain:@"SUCoreError" minCode:8600 maxCode:8612];
  [(SUCoreErrorInformation *)self _associateLayer:410 withDomain:@"SUCoreError" minCode:8700 maxCode:8707];
  [(SUCoreErrorInformation *)self _associateLayer:500 withDomain:@"SUCoreError" minCode:8800 maxCode:8804];
  [(SUCoreErrorInformation *)self _associateLayer:140 withDomain:@"SUCoreError" minCode:8900 maxCode:8909];
  [(SUCoreErrorInformation *)self _associateLayer:910 withDomain:@"SUCoreError" minCode:9900 maxCode:9900];

  [(SUCoreErrorInformation *)self _associateLayer:920 withDomain:@"SUCoreError" minCode:9000 maxCode:9012];
}

- (void)_associateLayer:(int64_t)layer withDomain:(id)domain minCode:(int64_t)code maxCode:(int64_t)maxCode indicating:(int64_t)indicating ifKeyTrue:(id)true keyMatchTrueMap:(id)map
{
  domainCopy = domain;
  trueCopy = true;
  mapCopy = map;
  informationQueue = [(SUCoreErrorInformation *)self informationQueue];
  dispatch_assert_queue_V2(informationQueue);

  v17 = [objc_alloc(MEMORY[0x1E696AD98]) initWithInt:layer];
  layerInformation = [(SUCoreErrorInformation *)self layerInformation];
  v19 = [layerInformation safeObjectForKey:v17 ofClass:objc_opt_class()];

  if (v19)
  {
    v20 = +[SUCoreLog sharedLogger];
    oslog = [v20 oslog];

    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      [SUCoreErrorInformation _associateLayer:layer withDomain:oslog minCode:? maxCode:? indicating:? ifKeyTrue:? keyMatchTrueMap:?];
    }
  }

  else
  {
    v19 = [[SUCoreErrorLayerGroup alloc] initForLayer:layer withDomain:domainCopy minCode:code maxCode:maxCode indicating:indicating ifKeyTrue:trueCopy keyMatchTrueMap:mapCopy];
    layerInformation2 = [(SUCoreErrorInformation *)self layerInformation];
    [layerInformation2 setSafeObject:v19 forKey:v17];
  }
}

- (void)_attributesOfErrorForDomain:(id)domain withCode:(int64_t)code codeName:(id)name indicating:(int64_t)indicating ifKeyTrue:(id)true keyMatchTrueMap:(id)map
{
  v47 = *MEMORY[0x1E69E9840];
  domainCopy = domain;
  nameCopy = name;
  trueCopy = true;
  mapCopy = map;
  informationQueue = [(SUCoreErrorInformation *)self informationQueue];
  dispatch_assert_queue_V2(informationQueue);

  errorInformation = [(SUCoreErrorInformation *)self errorInformation];
  v20 = [errorInformation safeDictionaryForKey:domainCopy fromBase:@"SUCoreErrorInformation{_attributesOfErrorForDomain} errorInformation" withKeyDescription:@"error domain"];

  v21 = [objc_alloc(MEMORY[0x1E696AD98]) initWithInteger:code];
  if (!v20)
  {
    v20 = objc_alloc_init(MEMORY[0x1E695DF90]);
    errorInformation2 = [(SUCoreErrorInformation *)self errorInformation];
    [errorInformation2 setSafeObject:v20 forKey:domainCopy];
  }

  v23 = [v20 safeObjectForKey:v21 ofClass:objc_opt_class()];
  if (!v23)
  {
    v24 = [[SUCoreErrorAttributes alloc] initForDomain:domainCopy withCode:code ofCodeName:nameCopy indicating:indicating ifKeyTrue:trueCopy keyMatchTrueMap:mapCopy];
    [v20 setSafeObject:v24 forKey:v21];
    goto LABEL_13;
  }

  v24 = v23;
  v34 = trueCopy;
  indicatingCopy = indicating;
  domain = [v23 domain];
  if (+[SUCore stringIsEqual:to:](SUCore, "stringIsEqual:to:", domainCopy, domain) && [v24 code] == code)
  {
    codeName = [v24 codeName];

    if (codeName == nameCopy)
    {
      [v24 setIndications:indicatingCopy];
      trueCopy = v34;
      [v24 setKeyMatchTrue:v34];
      [v24 setKeyMatchTrueMap:mapCopy];
      goto LABEL_13;
    }
  }

  else
  {
  }

  v28 = +[SUCoreLog sharedLogger];
  oslog = [v28 oslog];

  if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
  {
    domain2 = [v24 domain];
    code = [v24 code];
    codeName2 = [v24 codeName];
    *buf = 138544642;
    v36 = domainCopy;
    v37 = 1024;
    codeCopy = code;
    v39 = 2114;
    v40 = nameCopy;
    v41 = 2114;
    v42 = domain2;
    v43 = 1024;
    v44 = code;
    v45 = 2114;
    v46 = codeName2;
    _os_log_error_impl(&dword_1E0F71000, oslog, OS_LOG_TYPE_ERROR, "[ERROR_INFORMATION] changing attributes of error [%{public}@:%d(%{public}@)] when already have attributes for error [%{public}@:%d(%{public}@)] | new attributes ignored", buf, 0x36u);
  }

  trueCopy = v34;
LABEL_13:

  v30 = *MEMORY[0x1E69E9840];
}

+ (void)associateLayer:(int64_t)layer withDomain:(id)domain minCode:(int64_t)code maxCode:(int64_t)maxCode indicating:(int64_t)indicating ifKeyTrue:(id)true keyMatchTrueMap:(id)map
{
  domainCopy = domain;
  trueCopy = true;
  mapCopy = map;
  v17 = +[SUCoreErrorInformation setupCoreErrorInformation];
  informationQueue = [v17 informationQueue];
  dispatch_assert_queue_not_V2(informationQueue);

  informationQueue2 = [v17 informationQueue];
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __105__SUCoreErrorInformation_associateLayer_withDomain_minCode_maxCode_indicating_ifKeyTrue_keyMatchTrueMap___block_invoke;
  v24[3] = &unk_1E86FC218;
  v25 = v17;
  v26 = domainCopy;
  layerCopy = layer;
  codeCopy = code;
  maxCodeCopy = maxCode;
  indicatingCopy = indicating;
  v27 = trueCopy;
  v28 = mapCopy;
  v20 = mapCopy;
  v21 = trueCopy;
  v22 = domainCopy;
  v23 = v17;
  dispatch_sync(informationQueue2, v24);
}

+ (void)attributesOfSUCoreErrorCode:(int64_t)code indicating:(int64_t)indicating
{
  v6 = [SUCoreErrorInformation nameForSUCoreCode:?];
  [SUCoreErrorInformation attributesOfErrorForDomain:@"SUCoreError" withCode:code codeName:v6 indicating:indicating ifKeyTrue:0 keyMatchTrueMap:0];
}

+ (void)attributesOfErrorForDomain:(id)domain withCode:(int64_t)code codeName:(id)name indicating:(int64_t)indicating ifKeyTrue:(id)true keyMatchTrueMap:(id)map
{
  domainCopy = domain;
  nameCopy = name;
  trueCopy = true;
  mapCopy = map;
  v17 = +[SUCoreErrorInformation setupCoreErrorInformation];
  informationQueue = [v17 informationQueue];
  dispatch_assert_queue_not_V2(informationQueue);

  informationQueue2 = [v17 informationQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __108__SUCoreErrorInformation_attributesOfErrorForDomain_withCode_codeName_indicating_ifKeyTrue_keyMatchTrueMap___block_invoke;
  block[3] = &unk_1E86FC240;
  v26 = v17;
  v27 = domainCopy;
  codeCopy = code;
  indicatingCopy = indicating;
  v28 = nameCopy;
  v29 = trueCopy;
  v30 = mapCopy;
  v20 = mapCopy;
  v21 = trueCopy;
  v22 = nameCopy;
  v23 = domainCopy;
  v24 = v17;
  dispatch_sync(informationQueue2, block);
}

+ (int64_t)layerForError:(id)error
{
  errorCopy = error;
  v4 = +[SUCoreErrorInformation setupCoreErrorInformation];
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 10;
  informationQueue = [v4 informationQueue];
  dispatch_assert_queue_not_V2(informationQueue);

  informationQueue2 = [v4 informationQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __40__SUCoreErrorInformation_layerForError___block_invoke;
  block[3] = &unk_1E86FC290;
  v12 = v4;
  v13 = errorCopy;
  v14 = &v15;
  v7 = errorCopy;
  v8 = v4;
  dispatch_sync(informationQueue2, block);

  v9 = v16[3];
  _Block_object_dispose(&v15, 8);
  return v9;
}

void __40__SUCoreErrorInformation_layerForError___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) layerInformation];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __40__SUCoreErrorInformation_layerForError___block_invoke_2;
  v5[3] = &unk_1E86FC268;
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v6 = v3;
  v7 = v4;
  [v2 enumerateKeysAndObjectsUsingBlock:v5];
}

void __40__SUCoreErrorInformation_layerForError___block_invoke_2(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v11 = a3;
  v6 = [*(a1 + 32) domain];
  v7 = [v11 domain];
  if (![SUCore stringIsEqual:v6 to:v7])
  {
    goto LABEL_4;
  }

  if ([v11 minCode] == -1)
  {

LABEL_7:
    *(*(*(a1 + 40) + 8) + 24) = [v11 errorLayer];
    *a4 = 1;
    goto LABEL_8;
  }

  v8 = [*(a1 + 32) code];
  if (v8 < [v11 minCode])
  {
LABEL_4:

    goto LABEL_8;
  }

  v9 = [*(a1 + 32) code];
  v10 = [v11 maxCode];

  if (v9 <= v10)
  {
    goto LABEL_7;
  }

LABEL_8:
}

+ (id)codeNameForError:(id)error
{
  errorCopy = error;
  v4 = +[SUCoreErrorInformation setupCoreErrorInformation];
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__0;
  v19 = __Block_byref_object_dispose__0;
  v20 = 0;
  informationQueue = [v4 informationQueue];
  dispatch_assert_queue_not_V2(informationQueue);

  informationQueue2 = [v4 informationQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __43__SUCoreErrorInformation_codeNameForError___block_invoke;
  block[3] = &unk_1E86FC290;
  v12 = v4;
  v13 = errorCopy;
  v14 = &v15;
  v7 = errorCopy;
  v8 = v4;
  dispatch_sync(informationQueue2, block);

  v9 = v16[5];
  _Block_object_dispose(&v15, 8);

  return v9;
}

void __43__SUCoreErrorInformation_codeNameForError___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) errorInformation];
  v3 = [*(a1 + 40) domain];
  v25 = [v2 safeDictionaryForKey:v3 fromBase:@"SUCoreErrorInformation{codeNameForError} errorInformation" withKeyDescription:@"errorInStack domain"];

  if (v25)
  {
    v4 = [objc_alloc(MEMORY[0x1E696AD98]) initWithInteger:{objc_msgSend(*(a1 + 40), "code")}];
    v5 = [v25 safeObjectForKey:v4 ofClass:objc_opt_class()];
    v6 = v5;
    if (v5)
    {
      v7 = MEMORY[0x1E696AEC0];
      v8 = [v5 codeName];
    }

    else
    {
      v15 = [*(a1 + 40) domain];
      v16 = [SUCore stringIsEqual:v15 to:@"SUCoreError"];

      v7 = MEMORY[0x1E696AEC0];
      if (!v16)
      {
        v23 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%d", objc_msgSend(*(a1 + 40), "code")];
        v24 = *(*(a1 + 48) + 8);
        v17 = *(v24 + 40);
        *(v24 + 40) = v23;
        goto LABEL_9;
      }

      v8 = +[SUCoreErrorInformation nameForSUCoreCode:](SUCoreErrorInformation, "nameForSUCoreCode:", [*(a1 + 40) code]);
    }

    v17 = v8;
    v18 = [v7 stringWithFormat:@"%@(%d)", v8, objc_msgSend(*(a1 + 40), "code")];
    v19 = *(*(a1 + 48) + 8);
    v20 = *(v19 + 40);
    *(v19 + 40) = v18;

LABEL_9:
    goto LABEL_11;
  }

  v9 = [*(a1 + 40) domain];
  v10 = [SUCore stringIsEqual:v9 to:@"SUCoreError"];

  v11 = MEMORY[0x1E696AEC0];
  if (v10)
  {
    v4 = +[SUCoreErrorInformation nameForSUCoreCode:](SUCoreErrorInformation, "nameForSUCoreCode:", [*(a1 + 40) code]);
    v12 = [v11 stringWithFormat:@"%@(%d)", v4, objc_msgSend(*(a1 + 40), "code")];
    v13 = *(*(a1 + 48) + 8);
    v14 = *(v13 + 40);
    *(v13 + 40) = v12;
  }

  else
  {
    v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%d", objc_msgSend(*(a1 + 40), "code")];
    v22 = *(*(a1 + 48) + 8);
    v4 = *(v22 + 40);
    *(v22 + 40) = v21;
  }

LABEL_11:
}

+ (id)nameForSUCoreLayer:(int64_t)layer
{
  if (layer <= 409)
  {
    if (layer > 149)
    {
      if (layer <= 199)
      {
        if (layer > 159)
        {
          if (layer == 160)
          {
            return @"Power";
          }

          if (layer == 161)
          {
            return @"PowerManagement";
          }
        }

        else
        {
          if (layer == 150)
          {
            return @"Space";
          }

          if (layer == 151)
          {
            return @"CacheDelete";
          }
        }
      }

      else if (layer <= 299)
      {
        if (layer == 200)
        {
          return @"OperatingSystem";
        }

        if (layer == 210)
        {
          return @"OSFilesystem";
        }
      }

      else
      {
        switch(layer)
        {
          case 300:
            return @"Network";
          case 310:
            return @"NetworkServer";
          case 400:
            return @"Asset";
        }
      }

      return @"!";
    }

    if (layer > 101)
    {
      if (layer <= 119)
      {
        if (layer == 102)
        {
          return @"FSM";
        }

        if (layer == 110)
        {
          return @"EventReporter";
        }
      }

      else
      {
        switch(layer)
        {
          case 120:
            return @"Scheduler";
          case 130:
            return @"PersistedState";
          case 140:
            return @"Connect";
        }
      }

      return @"!";
    }

    if (layer <= 99)
    {
      if (!layer)
      {
        return &stru_1F5BDE410;
      }

      if (layer == 10)
      {
        return @"?";
      }

      return @"!";
    }

    if (layer == 100)
    {
      return @"SUCore";
    }

    else
    {
      return @"Diag";
    }
  }

  else
  {
    if (layer > 599)
    {
      if (layer > 709)
      {
        if (layer <= 899)
        {
          if (layer == 710)
          {
            return @"BridgeOS";
          }

          if (layer == 711)
          {
            return @"BridgeOSAMAuthInstall";
          }
        }

        else
        {
          switch(layer)
          {
            case 900:
              return @"Test";
            case 910:
              return @"Simulate";
            case 920:
              return @"DocManager";
          }
        }
      }

      else if (layer <= 619)
      {
        if (layer == 600)
        {
          return @"Facility";
        }

        if (layer == 610)
        {
          return @"Policy";
        }
      }

      else
      {
        switch(layer)
        {
          case 620:
            return @"Scan";
          case 630:
            return @"Update";
          case 700:
            return @"Extended";
        }
      }

      return @"!";
    }

    if (layer > 413)
    {
      if (layer <= 509)
      {
        if (layer == 414)
        {
          return @"MobileAssetXPC";
        }

        if (layer == 500)
        {
          return @"SoftwareUpdate";
        }
      }

      else
      {
        switch(layer)
        {
          case 510:
            return @"MSU";
          case 511:
            return @"Personalization";
          case 512:
            return @"Preflight";
        }
      }

      return @"!";
    }

    if (layer > 411)
    {
      if (layer == 412)
      {
        return @"MobileAssetQuery";
      }

      else
      {
        return @"MobileAssetPurge";
      }
    }

    else if (layer == 410)
    {
      return @"MobileAsset";
    }

    else
    {
      return @"MobileAssetDownload";
    }
  }
}

+ (id)codeNameForDomain:(id)domain withCode:(int64_t)code
{
  domainCopy = domain;
  v6 = +[SUCoreErrorInformation setupCoreErrorInformation];
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__0;
  v25 = __Block_byref_object_dispose__0;
  v26 = 0;
  informationQueue = [v6 informationQueue];
  dispatch_assert_queue_not_V2(informationQueue);

  informationQueue2 = [v6 informationQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __53__SUCoreErrorInformation_codeNameForDomain_withCode___block_invoke;
  block[3] = &unk_1E86FC2B8;
  v9 = domainCopy;
  v17 = v9;
  v19 = &v21;
  codeCopy = code;
  v10 = v6;
  v18 = v10;
  dispatch_sync(informationQueue2, block);

  v11 = v22[5];
  if (!v11)
  {
    code = [MEMORY[0x1E696AEC0] stringWithFormat:@"%d", code];
    v13 = v22[5];
    v22[5] = code;

    v11 = v22[5];
  }

  v14 = v11;

  _Block_object_dispose(&v21, 8);

  return v14;
}

uint64_t __53__SUCoreErrorInformation_codeNameForDomain_withCode___block_invoke(uint64_t a1)
{
  if ([SUCore stringIsEqual:*(a1 + 32) to:@"SUCoreError"])
  {
    v2 = [SUCoreErrorInformation nameForSUCoreCode:*(a1 + 56)];
    v3 = *(*(a1 + 48) + 8);
    v4 = *(v3 + 40);
    *(v3 + 40) = v2;
  }

  else
  {
    v5 = [*(a1 + 40) errorInformation];
    v13 = [v5 safeDictionaryForKey:*(a1 + 32) fromBase:@"SUCoreErrorInformation{codeNameForDomain} errorInformation" withKeyDescription:@"error domain"];

    if (v13)
    {
      v6 = [objc_alloc(MEMORY[0x1E696AD98]) initWithInteger:*(a1 + 56)];
      v7 = [v13 safeObjectForKey:v6 ofClass:objc_opt_class()];
      v8 = v7;
      if (v7)
      {
        v9 = [v7 codeName];
        v10 = *(*(a1 + 48) + 8);
        v11 = *(v10 + 40);
        *(v10 + 40) = v9;
      }
    }
  }

  return MEMORY[0x1EEE66BB8]();
}

+ (id)nameForSUCoreCode:(int64_t)code
{
  if (code > 8499)
  {
    if (code > 8802)
    {
      if (code <= 9001)
      {
        if (code <= 8904)
        {
          if (code > 8901)
          {
            if (code == 8902)
            {
              return @"kSUCoreErrorConnectClientDecodeFailure";
            }

            if (code == 8903)
            {
              return @"kSUCoreErrorConnectClientDecodeException";
            }

            return @"kSUCoreErrorConnectServerDecodeFailure";
          }

          switch(code)
          {
            case 8803:
              return @"kSUCoreErrorMSUMissingDescriptor";
            case 8804:
              return @"kSUCoreErrorMSUPrepareFailed";
            case 8900:
              return @"kSUCoreErrorConnectClientDoesNotRespond";
          }
        }

        else
        {
          if (code <= 8907)
          {
            if (code == 8905)
            {
              return @"kSUCoreErrorConnectServerDecodeException";
            }

            if (code == 8906)
            {
              return @"kSUCoreErrorConnectClientIsObserverOnly";
            }

            return @"kSUCoreErrorConnectClientIDMismatch";
          }

          if (code > 8999)
          {
            if (code == 9000)
            {
              return @"kSUCoreErrorDocManagerAllocationFailure";
            }

            else
            {
              return @"kSUCoreErrorDocManagerDirectoryDeleteFailure";
            }
          }

          if (code == 8908)
          {
            return @"kSUCoreErrorConnectMessagedIDMismatch";
          }

          if (code == 8909)
          {
            return @"kSUCoreErrorConnectNoServerConnection";
          }
        }
      }

      else if (code > 9009)
      {
        if (code <= 9099)
        {
          switch(code)
          {
            case 9010:
              return @"kSUCoreErrorDocDataCreateFailed";
            case 9011:
              return @"kSUCoreErrorDocDataAssetRefreshFailed";
            case 9012:
              return @"kSUCoreErrorDocDataAssetNotLocal";
          }
        }

        else if (code > 9899)
        {
          if (code == 9900)
          {
            return @"kSUCoreErrorSimulatedFailure";
          }

          if (code == 90007)
          {
            return @"kSUCoreErrorDocManagerFileEvictionFailure";
          }
        }

        else
        {
          if (code == 9100)
          {
            return @"kSUCoreErrorDDMInvalidDeclarationFailure";
          }

          if (code == 9101)
          {
            return @"kSUCoreErrorDDMNoControllerFailure";
          }
        }
      }

      else
      {
        if (code <= 9004)
        {
          if (code == 9002)
          {
            return @"kSUCoreErrorDocManagerDirectoryCopyFailure";
          }

          if (code == 9003)
          {
            return @"kSUCoreErrorDocManagerDirectoryReadFailure";
          }

          return @"kSUCoreErrorDocManagerPathCreateFailure";
        }

        if (code > 9007)
        {
          if (code == 9008)
          {
            return @"kSUCoreErrorDocManagerCreateInstalledStashedDataDictFailed";
          }

          else
          {
            return @"kSUCoreErrorDocManagerStashedBuildVersionNotFound";
          }
        }

        if (code == 9005)
        {
          return @"kSUCoreErrorDocManagerInstalledBuildCreateFailure";
        }

        if (code == 9006)
        {
          return @"kSUCoreErrorDocManagerDetermineOSBuildFailure";
        }
      }
    }

    else if (code <= 8608)
    {
      if (code > 8601)
      {
        if (code <= 8604)
        {
          if (code == 8602)
          {
            return @"kSUCoreErrorSpaceCheckFailed";
          }

          else if (code == 8603)
          {
            return @"kSUCoreErrorSpaceNoCacheDeletePurgeableResults";
          }

          else
          {
            return @"kSUCoreErrorSpaceCacheDeletePurgeableFailed";
          }
        }

        else if (code > 8606)
        {
          if (code == 8607)
          {
            return @"kSUCoreErrorSpaceNoAppOffloadPurgeResults";
          }

          else
          {
            return @"kSUCoreErrorSpaceAppOffloadFailed";
          }
        }

        else if (code == 8605)
        {
          return @"kSUCoreErrorSpaceNoAppOffloadPurgeableResults";
        }

        else
        {
          return @"kSUCoreErrorSpaceAppOffloadPurgeableFailed";
        }
      }

      if (code <= 8502)
      {
        if (code == 8500)
        {
          return @"kSUCoreErrorFSMStateInvalidForTable";
        }

        if (code == 8501)
        {
          return @"kSUCoreErrorFSMEventInvalidForState";
        }

        return @"kSUCoreErrorFSMAlreadyActive";
      }

      switch(code)
      {
        case 8503:
          return @"kSUCoreErrorFSMInvalidTable";
        case 8600:
          return @"kSUCoreErrorSpaceInsufficient";
        case 8601:
          return @"kSUCoreErrorSpaceNoPurgeResults";
      }
    }

    else if (code > 8703)
    {
      if (code <= 8706)
      {
        if (code == 8704)
        {
          return @"kSUCoreErrorAssetReloadFailed";
        }

        if (code == 8705)
        {
          return @"kSUCoreErrorAssetReloadNotFound";
        }

        return @"kSUCoreErrorAssetRefreshFailed";
      }

      if (code > 8800)
      {
        if (code == 8801)
        {
          return @"kSUCoreErrorMSUPurgeFailed";
        }

        else
        {
          return @"kSUCoreErrorMSUPreviousUpdateStateFailed";
        }
      }

      if (code == 8707)
      {
        return @"kSUCoreErrorAssetNotLocal";
      }

      if (code == 8800)
      {
        return @"kSUCoreErrorMSUPreflightSUDownloadFailed";
      }
    }

    else
    {
      if (code > 8699)
      {
        if (code > 8701)
        {
          if (code == 8702)
          {
            return @"kSUCoreErrorCancelingDownload";
          }

          else
          {
            return @"kSUCoreErrorConfiguringDownload";
          }
        }

        else if (code == 8700)
        {
          return @"kSUCoreErrorAssetDownloadFailed";
        }

        else
        {
          return @"kSUCoreErrorAssetPurgeFailed";
        }
      }

      switch(code)
      {
        case 8609:
          return @"kSUCoreErrorSpaceMobileAssetEstimateEvictableFailed";
        case 8610:
          return @"kSUCoreErrorSpaceMobileAssetSuspendFailed";
        case 8611:
          return @"kSUCoreErrorSpaceMobileAssetResumeFailed";
      }
    }

    return @"Unknown Error Code";
  }

  if (code > 8199)
  {
    if (code > 8299)
    {
      if (code <= 8404)
      {
        if (code > 8401)
        {
          if (code == 8402)
          {
            return @"kSUCoreErrorScanFailed";
          }

          if (code == 8403)
          {
            return @"kSUCoreErrorScanCanceled";
          }

          return @"kSUCoreErrorScanFailCanceling";
        }

        switch(code)
        {
          case 8300:
            return @"kSUCoreErrorDiagDecoded";
          case 8400:
            return @"kSUCoreErrorScanCatalogDownloadFailed";
          case 8401:
            return @"kSUCoreErrorScanQueryMetadataFailed";
        }
      }

      else
      {
        if (code <= 8407)
        {
          if (code == 8405)
          {
            return @"kSUCoreErrorScanNotCanceling";
          }

          if (code == 8406)
          {
            return @"kSUCoreErrorScanNoUpdateFound";
          }

          return @"kSUCoreErrorScanNoDocFound";
        }

        if (code <= 8409)
        {
          if (code == 8408)
          {
            return @"kSUCoreErrorScanFoundDifferent";
          }

          else
          {
            return @"kSUCoreErrorScanFoundMultiple";
          }
        }

        if (code == 8410)
        {
          return @"kSUCoreErrorScanAbortedStale";
        }

        if (code == 8411)
        {
          return @"kSUCoreErrorScanFailedToDeterminePSUSAssets";
        }
      }
    }

    else
    {
      if (code <= 8205)
      {
        if (code > 8202)
        {
          if (code == 8203)
          {
            return @"kSUCoreErrorEventReporterInvalidResponse";
          }

          else if (code == 8204)
          {
            return @"kSUCoreErrorEventReporterInvalidFileUUID";
          }

          else
          {
            return @"kSUCoreErrorEventReporterNoResponse";
          }
        }

        else if (code == 8200)
        {
          return @"kSUCoreErrorEventReporterInvalidTask";
        }

        else if (code == 8201)
        {
          return @"kSUCoreErrorEventReporterInvalidTaskDescriptor";
        }

        else
        {
          return @"kSUCoreErrorEventReporterSendFailed";
        }
      }

      if (code <= 8251)
      {
        switch(code)
        {
          case 8206:
            return @"kSUCoreErrorEventReporterResponseNotHTTP";
          case 8250:
            return @"kSUCoreErrorPersistedStateNotLoaded";
          case 8251:
            return @"kSUCoreErrorPersistedStateLoadFailed";
        }
      }

      else
      {
        if (code <= 8253)
        {
          if (code == 8252)
          {
            return @"kSUCoreErrorPersistedStateMissingContents";
          }

          else
          {
            return @"kSUCoreErrorPersistedStateInvalidType";
          }
        }

        if (code == 8254)
        {
          return @"kSUCoreErrorPersistedStateArchiverError";
        }

        if (code == 8255)
        {
          return @"kSUCoreErrorPersistedStateClassMismatch";
        }
      }
    }

    return @"Unknown Error Code";
  }

  switch(code)
  {
    case 8100:
      result = @"kSUCoreErrorCreateFailed";
      break;
    case 8101:
      result = @"kSUCoreErrorMissingRequired";
      break;
    case 8102:
      result = @"kSUCoreErrorInvalidParam";
      break;
    case 8103:
      result = @"kSUCoreErrorUnknownFormat";
      break;
    case 8104:
      result = @"kSUCoreErrorReadFailure";
      break;
    case 8105:
      result = @"kSUCoreErrorCopyFailed";
      break;
    case 8106:
      result = @"kSUCoreErrorSerializedFailed";
      break;
    case 8107:
      result = @"kSUCoreErrorInvalidPayload";
      break;
    case 8108:
      result = @"kSUCoreErrorTooManyQueued";
      break;
    case 8109:
      result = @"kSUCoreErrorWriteFailure";
      break;
    case 8110:
      result = @"kSUCoreErrorRemoveFailed";
      break;
    case 8111:
      result = @"kSUCoreErrorAlreadyAssigned";
      break;
    case 8112:
      result = @"kSUCoreErrorTypeMismatch";
      break;
    case 8113:
      result = @"kSUCoreErrorNotSupported";
      break;
    case 8114:
      result = @"kSUCoreErrorIgnoredParam";
      break;
    case 8115:
      result = @"kSUCoreErrorInvalidState";
      break;
    case 8116:
      result = @"kSUCoreErrorUnexpectedValue";
      break;
    case 8117:
      result = @"kSUCoreErrorInconsistencyDetected";
      break;
    case 8118:
      result = @"kSUCoreErrorInvalidPolicyAssetType";
      break;
    case 8119:
      result = @"kSUCoreErrorOperationTimedOut";
      break;
    case 8120:
      result = @"kSUCoreErrorExistingTransaction";
      break;
    case 8121:
      result = @"kSUCoreErrorLoadfailed";
      break;
    case 8122:
      result = @"kSUCoreErrorMethodNotAvailable";
      break;
    case 8123:
      result = @"kSUCoreErrorDeprecated";
      break;
    case 8124:
      result = @"kSUCoreErrorOperationCanceled";
      break;
    case 8125:
      result = @"kSUCoreErrorFileNotFound";
      break;
    case 8126:
      result = @"kSUCoreErrorMissingAuthentication";
      break;
    default:
      if (code)
      {
        return @"Unknown Error Code";
      }

      result = @"kSUCoreErrorNone";
      break;
  }

  return result;
}

+ (id)summaryOfIndications:(int64_t)indications
{
  indicationsCopy = indications;
  v4 = 0;
  v5 = &stru_1F5BDE410;
  do
  {
    if (((1 << v4) & indicationsCopy) != 0)
    {
      v6 = MEMORY[0x1E696AEC0];
      v7 = [SUCoreErrorAttributes nameForIndication:?];
      v8 = [v6 stringWithFormat:@"|%@", v7];
      v9 = [(__CFString *)v5 stringByAppendingString:v8];

      v5 = v9;
    }

    ++v4;
  }

  while (v4 != 5);
  if (([(__CFString *)v5 isEqualToString:&stru_1F5BDE410]& 1) != 0)
  {
    v10 = 0;
  }

  else
  {
    v11 = [(__CFString *)v5 stringByAppendingString:@"|"];

    v5 = v11;
    v10 = v5;
  }

  return v10;
}

+ (int64_t)indicationsForError:(id)error matchingMask:(int64_t)mask
{
  errorCopy = error;
  v6 = +[SUCoreErrorInformation setupCoreErrorInformation];
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  informationQueue = [v6 informationQueue];
  dispatch_assert_queue_not_V2(informationQueue);

  informationQueue2 = [v6 informationQueue];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __59__SUCoreErrorInformation_indicationsForError_matchingMask___block_invoke;
  v13[3] = &unk_1E86FC330;
  v14 = v6;
  v15 = errorCopy;
  v16 = &v18;
  maskCopy = mask;
  v9 = errorCopy;
  v10 = v6;
  dispatch_sync(informationQueue2, v13);

  v11 = v19[3];
  _Block_object_dispose(&v18, 8);
  return v11;
}

void __59__SUCoreErrorInformation_indicationsForError_matchingMask___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) errorInformation];
  v3 = [*(a1 + 40) domain];
  v4 = [v2 safeDictionaryForKey:v3 fromBase:@"SUCoreErrorInformation{isIndication} errorInformation" withKeyDescription:@"errorInStack domain"];

  if (v4)
  {
    v43 = 0;
    v44 = &v43;
    v45 = 0x2020000000;
    v46 = 0;
    v37 = 0;
    v38 = &v37;
    v39 = 0x3032000000;
    v40 = __Block_byref_object_copy__0;
    v41 = __Block_byref_object_dispose__0;
    v42 = 0;
    v31 = 0;
    v32 = &v31;
    v33 = 0x3032000000;
    v34 = __Block_byref_object_copy__0;
    v35 = __Block_byref_object_dispose__0;
    v36 = 0;
    v5 = [objc_alloc(MEMORY[0x1E696AD98]) initWithInteger:{objc_msgSend(*(a1 + 40), "code")}];
    v6 = [v4 safeObjectForKey:v5 ofClass:objc_opt_class()];
    v7 = v6;
    if (v6 && ([v6 indications] || (objc_msgSend(v7, "keyMatchTrueMap"), v8 = objc_claimAutoreleasedReturnValue(), v8, v8)))
    {
      v9 = [v7 indications];
      v44[3] = v9;
      v10 = [v7 keyMatchTrue];
      v11 = v38[5];
      v38[5] = v10;

      v12 = [v7 keyMatchTrueMap];
      v13 = v32[5];
      v32[5] = v12;
    }

    else
    {
      v14 = [*(a1 + 32) layerInformation];
      v26[0] = MEMORY[0x1E69E9820];
      v26[1] = 3221225472;
      v26[2] = __59__SUCoreErrorInformation_indicationsForError_matchingMask___block_invoke_2;
      v26[3] = &unk_1E86FC2E0;
      v27 = *(a1 + 40);
      v28 = &v43;
      v29 = &v37;
      v30 = &v31;
      [v14 enumerateKeysAndObjectsUsingBlock:v26];

      v13 = v27;
    }

    v15 = v44[3];
    if (!v15 && !v32[5])
    {
      goto LABEL_15;
    }

    if (v38[5])
    {
      v16 = [*(a1 + 40) userInfo];
      v17 = [v16 safeBooleanForKey:v38[5]];

      if (v17)
      {
        v15 = v44[3];
LABEL_14:
        *(*(*(a1 + 48) + 8) + 24) |= *(a1 + 56) & v15;
      }
    }

    else
    {
      v18 = v32[5];
      if (!v18)
      {
        goto LABEL_14;
      }

      v22[0] = MEMORY[0x1E69E9820];
      v22[1] = 3221225472;
      v22[2] = __59__SUCoreErrorInformation_indicationsForError_matchingMask___block_invoke_3;
      v22[3] = &unk_1E86FC308;
      v19 = *(a1 + 40);
      v20 = *(a1 + 48);
      v21 = *(a1 + 56);
      v23 = v19;
      v24 = v20;
      v25 = v21;
      [v18 enumerateKeysAndObjectsUsingBlock:v22];
    }

LABEL_15:

    _Block_object_dispose(&v31, 8);
    _Block_object_dispose(&v37, 8);

    _Block_object_dispose(&v43, 8);
  }
}

void __59__SUCoreErrorInformation_indicationsForError_matchingMask___block_invoke_2(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v17 = a3;
  v6 = [*(a1 + 32) domain];
  v7 = [v17 domain];
  if (![SUCore stringIsEqual:v6 to:v7])
  {
    goto LABEL_4;
  }

  if ([v17 minCode] == -1)
  {

LABEL_7:
    *(*(*(a1 + 40) + 8) + 24) = [v17 indications];
    v11 = [v17 keyMatchTrue];
    v12 = *(*(a1 + 48) + 8);
    v13 = *(v12 + 40);
    *(v12 + 40) = v11;

    v14 = [v17 keyMatchTrueMap];
    v15 = *(*(a1 + 56) + 8);
    v16 = *(v15 + 40);
    *(v15 + 40) = v14;

    *a4 = 1;
    goto LABEL_8;
  }

  v8 = [*(a1 + 32) code];
  if (v8 < [v17 minCode])
  {
LABEL_4:

    goto LABEL_8;
  }

  v9 = [*(a1 + 32) code];
  v10 = [v17 maxCode];

  if (v9 <= v10)
  {
    goto LABEL_7;
  }

LABEL_8:
}

void __59__SUCoreErrorInformation_indicationsForError_matchingMask___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = [v5 unsignedLongLongValue];
      v7 = [*(a1 + 32) userInfo];
      v8 = [v7 safeBooleanForKey:v9];

      if (v8)
      {
        *(*(*(a1 + 40) + 8) + 24) |= *(a1 + 48) & v6;
      }
    }
  }
}

void __51__SUCoreErrorInformation_setupCoreErrorInformation__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) informationQueue];
  dispatch_assert_queue_not_V2(v2);

  v3 = [*(a1 + 32) informationQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __51__SUCoreErrorInformation_setupCoreErrorInformation__block_invoke_2;
  block[3] = &unk_1E86FC178;
  v5 = *(a1 + 32);
  dispatch_sync(v3, block);
}

- (void)_associateLayer:(uint64_t)a1 withDomain:(NSObject *)a2 minCode:maxCode:indicating:ifKeyTrue:keyMatchTrueMap:.cold.1(uint64_t a1, NSObject *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = [SUCoreErrorInformation nameForSUCoreLayer:a1];
  v5 = 138543362;
  v6 = v3;
  _os_log_error_impl(&dword_1E0F71000, a2, OS_LOG_TYPE_ERROR, "[ERROR_INFORMATION] layer group(%{public}@) already defined", &v5, 0xCu);

  v4 = *MEMORY[0x1E69E9840];
}

@end