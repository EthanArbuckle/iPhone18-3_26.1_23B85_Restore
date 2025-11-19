@interface SFDeviceAssetTask
- (BOOL)completeIfPossible;
- (BOOL)updateTaskWithBundle:(id)a3 error:(id)a4 isFallback:(BOOL)a5 isImperfectMatch:(BOOL)a6 isCached:(BOOL)a7;
- (SFDeviceAssetTask)initWithDeviceQuery:(id)a3 requestConfiguration:(id)a4 dispatchQueue:(id)a5 useProcessLocalCache:(BOOL)a6;
- (id)bundleAtURL:(id)a3 error:(id *)a4;
- (id)bundleURLFromAssetURL:(id)a3;
- (void)cancelTimeout;
- (void)completeWithBundle:(id)a3 isFallback:(BOOL)a4 isCached:(BOOL)a5;
- (void)createQueryParameters;
@end

@implementation SFDeviceAssetTask

- (SFDeviceAssetTask)initWithDeviceQuery:(id)a3 requestConfiguration:(id)a4 dispatchQueue:(id)a5 useProcessLocalCache:(BOOL)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v27.receiver = self;
  v27.super_class = SFDeviceAssetTask;
  v14 = [(SFDeviceAssetTask *)&v27 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_deviceAssetQuery, a3);
    objc_storeStrong(&v15->_dispatchQueue, a5);
    v15->_useProcessLocalCache = a6;
    objc_storeStrong(&v15->_configuration, a4);
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
  v7 = [(SFDeviceQueryParameters *)v5 maQuery];
  SFDeviceAssetAddKeyValuePairsForStrictMatch(deviceAssetQuery, v7);

  v8 = [[SFDeviceQueryParameters alloc] initWithDeviceAssetQuery:self->_deviceAssetQuery installedOnly:1 imperfectMatch:0 fallback:1];
  v9 = [(SFDeviceAssetTask *)self timer];

  v10 = self->_deviceQueryParameters;
  if (v9)
  {
    [(NSMutableArray *)v10 insertObject:v8 atIndex:0];
  }

  else
  {
    [(NSMutableArray *)v10 addObject:v8];
  }

  v13 = [[SFDeviceQueryParameters alloc] initWithDeviceAssetQuery:self->_deviceAssetQuery installedOnly:0 imperfectMatch:0 fallback:0];

  v11 = self->_deviceAssetQuery;
  v12 = [(SFDeviceQueryParameters *)v13 maQuery];
  SFDeviceAssetAddKeyValuePairsForStrictMatch(v11, v12);

  [(NSMutableArray *)self->_deviceQueryParameters addObject:v13];
}

- (BOOL)updateTaskWithBundle:(id)a3 error:(id)a4 isFallback:(BOOL)a5 isImperfectMatch:(BOOL)a6 isCached:(BOOL)a7
{
  v7 = a7;
  v8 = a6;
  v9 = a5;
  v12 = a3;
  v13 = a4;
  if (v12)
  {
    if (v7)
    {
      p_cachedBundle = &self->_cachedBundle;
    }

    else
    {
      if (!v9)
      {
        v16 = v12;
        if (v8)
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

    v15 = v12;
LABEL_10:
    v17 = *p_cachedBundle;
    *p_cachedBundle = v12;
  }

  if (v13)
  {
    v18 = [(SFDeviceAssetTask *)self deviceAssetQuery];
    if (*[v18 ucat] > 90)
    {
LABEL_17:

      goto LABEL_18;
    }

    v19 = [(SFDeviceAssetTask *)self deviceAssetQuery];
    if (*[v19 ucat] != -1)
    {

LABEL_16:
      v18 = [(SFDeviceAssetTask *)self deviceAssetQuery];
      [v18 ucat];
      LogPrintF();
      goto LABEL_17;
    }

    v20 = [(SFDeviceAssetTask *)self deviceAssetQuery];
    [v20 ucat];
    v21 = _LogCategory_Initialize();

    if (v21)
    {
      goto LABEL_16;
    }
  }

LABEL_18:
  error = self->_error;
  self->_error = v13;

  return v12 != 0;
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
  v3 = [(SFDeviceAssetTask *)self matchBundle];

  if (!v3)
  {
    v6 = [(SFDeviceAssetTask *)self fallbackBundle];

    if (!v6)
    {
      v11 = [(SFDeviceAssetTask *)self imperfectMatchBundle];

      if (!v11)
      {
        v22 = [(SFDeviceAssetTask *)self cachedBundle];

        if (!v22)
        {
          return v3 == 0;
        }

        v8 = [(SFDeviceAssetTask *)self cachedBundle];
        v16 = self;
        v17 = v8;
        v18 = 0;
        v19 = 1;
        goto LABEL_18;
      }

      v12 = [(SFDeviceAssetTask *)self imperfectMatchBundle];
      goto LABEL_16;
    }

    v7 = [(SFDeviceAssetTask *)self timer];

    v8 = [(SFDeviceAssetTask *)self deviceAssetQuery];
    v9 = *[v8 ucat];
    if (v7)
    {
      if (v9 <= 50)
      {
        v10 = [(SFDeviceAssetTask *)self deviceAssetQuery];
        if (*[v10 ucat] == -1)
        {
          v23 = [(SFDeviceAssetTask *)self deviceAssetQuery];
          [v23 ucat];
          v24 = _LogCategory_Initialize();

          if (!v24)
          {
            return v3 == 0;
          }
        }

        else
        {
        }

        v8 = [(SFDeviceAssetTask *)self deviceAssetQuery];
        [v8 ucat];
        LogPrintF();
      }

      goto LABEL_19;
    }

    if (v9 <= 50)
    {
      v21 = [(SFDeviceAssetTask *)self deviceAssetQuery];
      if (*[v21 ucat] == -1)
      {
        v25 = [(SFDeviceAssetTask *)self deviceAssetQuery];
        [v25 ucat];
        v26 = _LogCategory_Initialize();

        if (!v26)
        {
LABEL_31:
          v8 = [(SFDeviceAssetTask *)self fallbackBundle];
          v16 = self;
          v17 = v8;
          v18 = 1;
          goto LABEL_17;
        }
      }

      else
      {
      }

      v8 = [(SFDeviceAssetTask *)self deviceAssetQuery];
      [v8 ucat];
      LogPrintF();
    }

    goto LABEL_31;
  }

  v4 = [(SFDeviceAssetTask *)self deviceAssetQuery];
  if (*[v4 ucat] > 50)
  {
LABEL_14:

    goto LABEL_15;
  }

  v5 = [(SFDeviceAssetTask *)self deviceAssetQuery];
  if (*[v5 ucat] != -1)
  {

LABEL_13:
    v4 = [(SFDeviceAssetTask *)self deviceAssetQuery];
    [v4 ucat];
    v15 = [(SFDeviceAssetTask *)self matchBundle];
    v27 = [v15 bundlePath];
    LogPrintF();

    goto LABEL_14;
  }

  v13 = [(SFDeviceAssetTask *)self deviceAssetQuery];
  [v13 ucat];
  v14 = _LogCategory_Initialize();

  if (v14)
  {
    goto LABEL_13;
  }

LABEL_15:
  v12 = [(SFDeviceAssetTask *)self matchBundle];
LABEL_16:
  v8 = v12;
  v16 = self;
  v17 = v8;
  v18 = 0;
LABEL_17:
  v19 = 0;
LABEL_18:
  [(SFDeviceAssetTask *)v16 completeWithBundle:v17 isFallback:v18 isCached:v19];
LABEL_19:

  return v3 == 0;
}

- (void)completeWithBundle:(id)a3 isFallback:(BOOL)a4 isCached:(BOOL)a5
{
  v8 = a3;
  [(SFDeviceAssetTask *)self cancelTimeout];
  v9 = [(SFDeviceAssetTask *)self deviceAssetQuery];
  v10 = [v9 effectiveProductType];

  v11 = [(SFDeviceAssetTask *)self dispatchQueue];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __60__SFDeviceAssetTask_completeWithBundle_isFallback_isCached___block_invoke;
  v14[3] = &unk_1E788D608;
  v17 = a5;
  v18 = a4;
  v14[4] = self;
  v15 = v8;
  v16 = v10;
  v12 = v10;
  v13 = v8;
  dispatch_async(v11, v14);
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

- (id)bundleURLFromAssetURL:(id)a3
{
  v20[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (!v4)
  {
    v9 = 0;
    v10 = 0;
    goto LABEL_13;
  }

  v5 = [MEMORY[0x1E696AC08] defaultManager];
  v6 = *MEMORY[0x1E695DBB0];
  v20[0] = *MEMORY[0x1E695DB78];
  v20[1] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:2];
  v19 = 0;
  v8 = [v5 contentsOfDirectoryAtURL:v4 includingPropertiesForKeys:v7 options:7 error:&v19];
  v9 = v19;

  if (![v8 count])
  {
    v11 = [(SFDeviceAssetTask *)self deviceAssetQuery];
    if (*[v11 ucat] >= 91)
    {
    }

    else
    {
      v12 = [(SFDeviceAssetTask *)self deviceAssetQuery];
      if (*[v12 ucat] != -1)
      {

LABEL_10:
        v15 = [(SFDeviceAssetTask *)self deviceAssetQuery];
        [v15 ucat];
        v18 = [v4 path];
        LogPrintF();

        goto LABEL_11;
      }

      v13 = [(SFDeviceAssetTask *)self deviceAssetQuery];
      [v13 ucat];
      v14 = _LogCategory_Initialize();

      if (v14)
      {
        goto LABEL_10;
      }
    }

LABEL_11:
    v10 = 0;
    goto LABEL_12;
  }

  v10 = [v8 firstObject];
LABEL_12:

LABEL_13:
  v16 = *MEMORY[0x1E69E9840];

  return v10;
}

- (id)bundleAtURL:(id)a3 error:(id *)a4
{
  v6 = a3;
  if (!v6)
  {
    v13 = 0;
    goto LABEL_18;
  }

  v7 = [MEMORY[0x1E696AC08] defaultManager];
  v8 = [v7 contentsOfDirectoryAtURL:v6 includingPropertiesForKeys:0 options:0 error:0];
  v9 = [v8 firstObject];

  if (v9)
  {
    v21 = 0;
    CanAccessURL = SFDeviceAssetProcessCanAccessURL(v9, &v21);
    v11 = v21;
    if (CanAccessURL)
    {
      v12 = [MEMORY[0x1E696AAE8] bundleWithURL:v6];
      if (v12)
      {
        v13 = v12;
        if (a4)
        {
          *a4 = 0;
        }

        goto LABEL_17;
      }

      v14 = *a4;

      v11 = v14;
    }
  }

  else
  {
    v11 = 0;
  }

  v15 = [(SFDeviceAssetTask *)self deviceAssetQuery];
  if (*[v15 ucat] > 90)
  {
    goto LABEL_15;
  }

  v16 = [(SFDeviceAssetTask *)self deviceAssetQuery];
  if (*[v16 ucat] != -1)
  {

LABEL_14:
    v15 = [(SFDeviceAssetTask *)self deviceAssetQuery];
    [v15 ucat];
    v20 = [v6 path];
    LogPrintF();

LABEL_15:
    goto LABEL_16;
  }

  v17 = [(SFDeviceAssetTask *)self deviceAssetQuery];
  [v17 ucat];
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