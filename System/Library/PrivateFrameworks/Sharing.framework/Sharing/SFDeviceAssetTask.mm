@interface SFDeviceAssetTask
- (BOOL)completeIfPossible;
- (BOOL)updateTaskWithBundle:(id)bundle error:(id)error isFallback:(BOOL)fallback isImperfectMatch:(BOOL)match isCached:(BOOL)cached;
- (SFDeviceAssetTask)initWithDeviceQuery:(id)query requestConfiguration:(id)configuration dispatchQueue:(id)queue useProcessLocalCache:(BOOL)cache;
- (id)bundleAtURL:(id)l error:(id *)error;
- (id)bundleURLFromAssetURL:(id)l;
- (void)cancelTimeout;
- (void)completeWithBundle:(id)bundle isFallback:(BOOL)fallback isCached:(BOOL)cached;
- (void)createQueryParameters;
@end

@implementation SFDeviceAssetTask

- (SFDeviceAssetTask)initWithDeviceQuery:(id)query requestConfiguration:(id)configuration dispatchQueue:(id)queue useProcessLocalCache:(BOOL)cache
{
  queryCopy = query;
  configurationCopy = configuration;
  queueCopy = queue;
  v27.receiver = self;
  v27.super_class = SFDeviceAssetTask;
  v14 = [(SFDeviceAssetTask *)&v27 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_deviceAssetQuery, query);
    objc_storeStrong(&v15->_dispatchQueue, queue);
    v15->_useProcessLocalCache = cache;
    objc_storeStrong(&v15->_configuration, configuration);
    [(SFDeviceAssetRequestConfiguration *)v15->_configuration timeout];
    if (fabs(v16) >= 0.00000011920929)
    {
      v17 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, v15->_dispatchQueue);
      timer = v15->_timer;
      v15->_timer = v17;

      [(SFDeviceAssetRequestConfiguration *)v15->_configuration timeout];
      v20 = (v19 * 1000000000.0);
      v21 = v15->_timer;
      v22 = dispatch_time(0, v20);
      dispatch_source_set_timer(v21, v22, v20, v20 >> 2);
      v23 = v15->_timer;
      handler[0] = MEMORY[0x1E69E9820];
      handler[1] = 3221225472;
      handler[2] = __97__SFDeviceAssetTask_initWithDeviceQuery_requestConfiguration_dispatchQueue_useProcessLocalCache___block_invoke;
      handler[3] = &unk_1E788B198;
      v26 = v15;
      dispatch_source_set_event_handler(v23, handler);
      dispatch_resume(v15->_timer);
    }

    [(SFDeviceAssetTask *)v15 createQueryParameters];
  }

  return v15;
}

uint64_t __97__SFDeviceAssetTask_initWithDeviceQuery_requestConfiguration_dispatchQueue_useProcessLocalCache___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) deviceAssetQuery];
  if (*[v2 ucat] <= 50)
  {
    v3 = [*(a1 + 32) deviceAssetQuery];
    if (*[v3 ucat] == -1)
    {
      v4 = [*(a1 + 32) deviceAssetQuery];
      [v4 ucat];
      v5 = _LogCategory_Initialize();

      if (!v5)
      {
        goto LABEL_7;
      }
    }

    else
    {
    }

    v2 = [*(a1 + 32) deviceAssetQuery];
    [v2 ucat];
    LogPrintF();
  }

LABEL_7:
  [*(a1 + 32) cancelTimeout];
  [*(a1 + 32) completeIfPossible];
  v6 = *(a1 + 32);

  return [v6 completeWithBundle:0 isFallback:0 isCached:0];
}

- (void)createQueryParameters
{
  v3 = objc_opt_new();
  deviceQueryParameters = self->_deviceQueryParameters;
  self->_deviceQueryParameters = v3;

  v5 = [[SFDeviceQueryParameters alloc] initWithDeviceAssetQuery:self->_deviceAssetQuery installedOnly:1 imperfectMatch:0 fallback:0];
  [(NSMutableArray *)self->_deviceQueryParameters addObject:v5];
  deviceAssetQuery = self->_deviceAssetQuery;
  maQuery = [(SFDeviceQueryParameters *)v5 maQuery];
  SFDeviceAssetAddKeyValuePairsForStrictMatch(deviceAssetQuery, maQuery);

  v8 = [[SFDeviceQueryParameters alloc] initWithDeviceAssetQuery:self->_deviceAssetQuery installedOnly:1 imperfectMatch:0 fallback:1];
  timer = [(SFDeviceAssetTask *)self timer];

  v10 = self->_deviceQueryParameters;
  if (timer)
  {
    [(NSMutableArray *)v10 insertObject:v8 atIndex:0];
  }

  else
  {
    [(NSMutableArray *)v10 addObject:v8];
  }

  v13 = [[SFDeviceQueryParameters alloc] initWithDeviceAssetQuery:self->_deviceAssetQuery installedOnly:0 imperfectMatch:0 fallback:0];

  v11 = self->_deviceAssetQuery;
  maQuery2 = [(SFDeviceQueryParameters *)v13 maQuery];
  SFDeviceAssetAddKeyValuePairsForStrictMatch(v11, maQuery2);

  [(NSMutableArray *)self->_deviceQueryParameters addObject:v13];
}

- (BOOL)updateTaskWithBundle:(id)bundle error:(id)error isFallback:(BOOL)fallback isImperfectMatch:(BOOL)match isCached:(BOOL)cached
{
  cachedCopy = cached;
  matchCopy = match;
  fallbackCopy = fallback;
  bundleCopy = bundle;
  errorCopy = error;
  if (bundleCopy)
  {
    if (cachedCopy)
    {
      p_cachedBundle = &self->_cachedBundle;
    }

    else
    {
      if (!fallbackCopy)
      {
        v16 = bundleCopy;
        if (matchCopy)
        {
          p_cachedBundle = &self->_imperfectMatchBundle;
        }

        else
        {
          p_cachedBundle = &self->_matchBundle;
        }

        goto LABEL_10;
      }

      p_cachedBundle = &self->_fallbackBundle;
    }

    v15 = bundleCopy;
LABEL_10:
    v17 = *p_cachedBundle;
    *p_cachedBundle = bundleCopy;
  }

  if (errorCopy)
  {
    deviceAssetQuery = [(SFDeviceAssetTask *)self deviceAssetQuery];
    if (*[deviceAssetQuery ucat] > 90)
    {
LABEL_17:

      goto LABEL_18;
    }

    deviceAssetQuery2 = [(SFDeviceAssetTask *)self deviceAssetQuery];
    if (*[deviceAssetQuery2 ucat] != -1)
    {

LABEL_16:
      deviceAssetQuery = [(SFDeviceAssetTask *)self deviceAssetQuery];
      [deviceAssetQuery ucat];
      LogPrintF();
      goto LABEL_17;
    }

    deviceAssetQuery3 = [(SFDeviceAssetTask *)self deviceAssetQuery];
    [deviceAssetQuery3 ucat];
    v21 = _LogCategory_Initialize();

    if (v21)
    {
      goto LABEL_16;
    }
  }

LABEL_18:
  error = self->_error;
  self->_error = errorCopy;

  return bundleCopy != 0;
}

- (void)cancelTimeout
{
  timer = self->_timer;
  if (timer)
  {
    v5 = timer;
    dispatch_source_cancel(v5);
    v4 = self->_timer;
    self->_timer = 0;
  }
}

- (BOOL)completeIfPossible
{
  matchBundle = [(SFDeviceAssetTask *)self matchBundle];

  if (!matchBundle)
  {
    fallbackBundle = [(SFDeviceAssetTask *)self fallbackBundle];

    if (!fallbackBundle)
    {
      imperfectMatchBundle = [(SFDeviceAssetTask *)self imperfectMatchBundle];

      if (!imperfectMatchBundle)
      {
        cachedBundle = [(SFDeviceAssetTask *)self cachedBundle];

        if (!cachedBundle)
        {
          return matchBundle == 0;
        }

        cachedBundle2 = [(SFDeviceAssetTask *)self cachedBundle];
        selfCopy3 = self;
        v17 = cachedBundle2;
        v18 = 0;
        v19 = 1;
        goto LABEL_18;
      }

      imperfectMatchBundle2 = [(SFDeviceAssetTask *)self imperfectMatchBundle];
      goto LABEL_16;
    }

    timer = [(SFDeviceAssetTask *)self timer];

    cachedBundle2 = [(SFDeviceAssetTask *)self deviceAssetQuery];
    v9 = *[cachedBundle2 ucat];
    if (timer)
    {
      if (v9 <= 50)
      {
        deviceAssetQuery = [(SFDeviceAssetTask *)self deviceAssetQuery];
        if (*[deviceAssetQuery ucat] == -1)
        {
          deviceAssetQuery2 = [(SFDeviceAssetTask *)self deviceAssetQuery];
          [deviceAssetQuery2 ucat];
          v24 = _LogCategory_Initialize();

          if (!v24)
          {
            return matchBundle == 0;
          }
        }

        else
        {
        }

        cachedBundle2 = [(SFDeviceAssetTask *)self deviceAssetQuery];
        [cachedBundle2 ucat];
        LogPrintF();
      }

      goto LABEL_19;
    }

    if (v9 <= 50)
    {
      deviceAssetQuery3 = [(SFDeviceAssetTask *)self deviceAssetQuery];
      if (*[deviceAssetQuery3 ucat] == -1)
      {
        deviceAssetQuery4 = [(SFDeviceAssetTask *)self deviceAssetQuery];
        [deviceAssetQuery4 ucat];
        v26 = _LogCategory_Initialize();

        if (!v26)
        {
LABEL_31:
          cachedBundle2 = [(SFDeviceAssetTask *)self fallbackBundle];
          selfCopy3 = self;
          v17 = cachedBundle2;
          v18 = 1;
          goto LABEL_17;
        }
      }

      else
      {
      }

      cachedBundle2 = [(SFDeviceAssetTask *)self deviceAssetQuery];
      [cachedBundle2 ucat];
      LogPrintF();
    }

    goto LABEL_31;
  }

  deviceAssetQuery5 = [(SFDeviceAssetTask *)self deviceAssetQuery];
  if (*[deviceAssetQuery5 ucat] > 50)
  {
LABEL_14:

    goto LABEL_15;
  }

  deviceAssetQuery6 = [(SFDeviceAssetTask *)self deviceAssetQuery];
  if (*[deviceAssetQuery6 ucat] != -1)
  {

LABEL_13:
    deviceAssetQuery5 = [(SFDeviceAssetTask *)self deviceAssetQuery];
    [deviceAssetQuery5 ucat];
    matchBundle2 = [(SFDeviceAssetTask *)self matchBundle];
    bundlePath = [matchBundle2 bundlePath];
    LogPrintF();

    goto LABEL_14;
  }

  deviceAssetQuery7 = [(SFDeviceAssetTask *)self deviceAssetQuery];
  [deviceAssetQuery7 ucat];
  v14 = _LogCategory_Initialize();

  if (v14)
  {
    goto LABEL_13;
  }

LABEL_15:
  imperfectMatchBundle2 = [(SFDeviceAssetTask *)self matchBundle];
LABEL_16:
  cachedBundle2 = imperfectMatchBundle2;
  selfCopy3 = self;
  v17 = cachedBundle2;
  v18 = 0;
LABEL_17:
  v19 = 0;
LABEL_18:
  [(SFDeviceAssetTask *)selfCopy3 completeWithBundle:v17 isFallback:v18 isCached:v19];
LABEL_19:

  return matchBundle == 0;
}

- (void)completeWithBundle:(id)bundle isFallback:(BOOL)fallback isCached:(BOOL)cached
{
  bundleCopy = bundle;
  [(SFDeviceAssetTask *)self cancelTimeout];
  deviceAssetQuery = [(SFDeviceAssetTask *)self deviceAssetQuery];
  effectiveProductType = [deviceAssetQuery effectiveProductType];

  dispatchQueue = [(SFDeviceAssetTask *)self dispatchQueue];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __60__SFDeviceAssetTask_completeWithBundle_isFallback_isCached___block_invoke;
  v14[3] = &unk_1E788D608;
  cachedCopy = cached;
  fallbackCopy = fallback;
  v14[4] = self;
  v15 = bundleCopy;
  v16 = effectiveProductType;
  v12 = effectiveProductType;
  v13 = bundleCopy;
  dispatch_async(dispatchQueue, v14);
}

void __60__SFDeviceAssetTask_completeWithBundle_isFallback_isCached___block_invoke(uint64_t a1)
{
  if (*(a1 + 56))
  {
    v2 = @"cached";
  }

  else if (*(a1 + 57))
  {
    v2 = @"fallback";
  }

  else
  {
    v2 = @"matching";
  }

  v30 = v2;
  if (([*(a1 + 32) queryResultCalled] & 1) == 0)
  {
    v3 = [*(a1 + 32) configuration];
    v4 = [v3 queryResultHandler];

    if (v4)
    {
      [*(a1 + 32) setQueryResultCalled:1];
      v5 = [*(a1 + 32) deviceAssetQuery];
      if (*[v5 ucat] <= 50)
      {
        v6 = [*(a1 + 32) deviceAssetQuery];
        if (*[v6 ucat] == -1)
        {
          v16 = [*(a1 + 32) deviceAssetQuery];
          [v16 ucat];
          v17 = _LogCategory_Initialize();

          if (!v17)
          {
LABEL_29:
            v9 = [*(a1 + 32) configuration];
            v18 = [v9 queryResultHandler];
            v19 = v18;
            v20 = *(a1 + 40);
            v21 = *(a1 + 48);
            v22 = *(a1 + 57);
            if (v20)
            {
              (*(v18 + 16))(v18, v20, *(a1 + 48), *(a1 + 57), 0);
LABEL_33:

              goto LABEL_34;
            }

            v23 = [*(a1 + 32) error];
            (v19)[2](v19, 0, v21, v22, v23);
LABEL_32:

            goto LABEL_33;
          }
        }

        else
        {
        }

        v5 = [*(a1 + 32) deviceAssetQuery];
        [v5 ucat];
        if (*(a1 + 40))
        {
          v28 = v30;
          v29 = *(a1 + 40);
          LogPrintF();
        }

        else
        {
          v29 = [*(a1 + 32) error];
          v28 = v30;
          LogPrintF();
        }
      }

      goto LABEL_29;
    }
  }

  if (([*(a1 + 32) downloadCompletionCalled] & 1) == 0)
  {
    v7 = [*(a1 + 32) configuration];
    v8 = [v7 downloadCompletionHandler];
    if (!v8 || *(a1 + 57) == 1)
    {

      goto LABEL_15;
    }

    v13 = *(a1 + 56);

    if ((v13 & 1) == 0)
    {
      v14 = [*(a1 + 32) deviceAssetQuery];
      if (*[v14 ucat] <= 50)
      {
        v15 = [*(a1 + 32) deviceAssetQuery];
        if (*[v15 ucat] == -1)
        {
          v24 = [*(a1 + 32) deviceAssetQuery];
          [v24 ucat];
          v25 = _LogCategory_Initialize();

          if (!v25)
          {
LABEL_43:
            v9 = [*(a1 + 32) configuration];
            v26 = [v9 downloadCompletionHandler];
            v19 = v26;
            v27 = *(a1 + 40);
            if (v27)
            {
              (*(v26 + 16))(v26, v27, 0);
              goto LABEL_33;
            }

            v23 = [*(a1 + 32) error];
            (v19[2])(v19, 0, v23);
            goto LABEL_32;
          }
        }

        else
        {
        }

        v14 = [*(a1 + 32) deviceAssetQuery];
        [v14 ucat];
        if (*(a1 + 40))
        {
          v28 = *(a1 + 40);
          LogPrintF();
        }

        else
        {
          v28 = [*(a1 + 32) error];
          LogPrintF();
        }
      }

      goto LABEL_43;
    }
  }

LABEL_15:
  v9 = [*(a1 + 32) deviceAssetQuery];
  if (*[v9 ucat] <= 50)
  {
    v10 = [*(a1 + 32) deviceAssetQuery];
    if (*[v10 ucat] == -1)
    {
      v11 = [*(a1 + 32) deviceAssetQuery];
      [v11 ucat];
      v12 = _LogCategory_Initialize();

      if (!v12)
      {
        goto LABEL_35;
      }
    }

    else
    {
    }

    v9 = [*(a1 + 32) deviceAssetQuery];
    [v9 ucat];
    LogPrintF();
  }

LABEL_34:

LABEL_35:
}

- (id)bundleURLFromAssetURL:(id)l
{
  v20[2] = *MEMORY[0x1E69E9840];
  lCopy = l;
  if (!lCopy)
  {
    v9 = 0;
    firstObject = 0;
    goto LABEL_13;
  }

  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v6 = *MEMORY[0x1E695DBB0];
  v20[0] = *MEMORY[0x1E695DB78];
  v20[1] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:2];
  v19 = 0;
  v8 = [defaultManager contentsOfDirectoryAtURL:lCopy includingPropertiesForKeys:v7 options:7 error:&v19];
  v9 = v19;

  if (![v8 count])
  {
    deviceAssetQuery = [(SFDeviceAssetTask *)self deviceAssetQuery];
    if (*[deviceAssetQuery ucat] >= 91)
    {
    }

    else
    {
      deviceAssetQuery2 = [(SFDeviceAssetTask *)self deviceAssetQuery];
      if (*[deviceAssetQuery2 ucat] != -1)
      {

LABEL_10:
        deviceAssetQuery3 = [(SFDeviceAssetTask *)self deviceAssetQuery];
        [deviceAssetQuery3 ucat];
        path = [lCopy path];
        LogPrintF();

        goto LABEL_11;
      }

      deviceAssetQuery4 = [(SFDeviceAssetTask *)self deviceAssetQuery];
      [deviceAssetQuery4 ucat];
      v14 = _LogCategory_Initialize();

      if (v14)
      {
        goto LABEL_10;
      }
    }

LABEL_11:
    firstObject = 0;
    goto LABEL_12;
  }

  firstObject = [v8 firstObject];
LABEL_12:

LABEL_13:
  v16 = *MEMORY[0x1E69E9840];

  return firstObject;
}

- (id)bundleAtURL:(id)l error:(id *)error
{
  lCopy = l;
  if (!lCopy)
  {
    v13 = 0;
    goto LABEL_18;
  }

  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v8 = [defaultManager contentsOfDirectoryAtURL:lCopy includingPropertiesForKeys:0 options:0 error:0];
  firstObject = [v8 firstObject];

  if (firstObject)
  {
    v21 = 0;
    CanAccessURL = SFDeviceAssetProcessCanAccessURL(firstObject, &v21);
    v11 = v21;
    if (CanAccessURL)
    {
      v12 = [MEMORY[0x1E696AAE8] bundleWithURL:lCopy];
      if (v12)
      {
        v13 = v12;
        if (error)
        {
          *error = 0;
        }

        goto LABEL_17;
      }

      v14 = *error;

      v11 = v14;
    }
  }

  else
  {
    v11 = 0;
  }

  deviceAssetQuery = [(SFDeviceAssetTask *)self deviceAssetQuery];
  if (*[deviceAssetQuery ucat] > 90)
  {
    goto LABEL_15;
  }

  deviceAssetQuery2 = [(SFDeviceAssetTask *)self deviceAssetQuery];
  if (*[deviceAssetQuery2 ucat] != -1)
  {

LABEL_14:
    deviceAssetQuery = [(SFDeviceAssetTask *)self deviceAssetQuery];
    [deviceAssetQuery ucat];
    path = [lCopy path];
    LogPrintF();

LABEL_15:
    goto LABEL_16;
  }

  deviceAssetQuery3 = [(SFDeviceAssetTask *)self deviceAssetQuery];
  [deviceAssetQuery3 ucat];
  v18 = _LogCategory_Initialize();

  if (v18)
  {
    goto LABEL_14;
  }

LABEL_16:
  v13 = 0;
LABEL_17:

LABEL_18:

  return v13;
}

@end