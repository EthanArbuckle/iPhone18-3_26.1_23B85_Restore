@interface PFStateCaptureHandler
+ (id)stringFromRelativeTimeInterval:(double)interval;
+ (id)stringFromTimestamp:(double)timestamp;
- (PFStateCaptureHandler)initWithProvider:(id)provider;
- (PFStateCaptureHandler)initWithProvider:(id)provider name:(id)name;
- (os_state_data_s)stateDataWithHints:(os_state_hints_s *)hints;
- (void)dealloc;
@end

@implementation PFStateCaptureHandler

- (void)dealloc
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = PFStateCaptureGetLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    if (self)
    {
      Property = objc_getProperty(self, v4, 56, 1);
    }

    else
    {
      Property = 0;
    }

    stateHandle = self->_stateHandle;
    *buf = 138543618;
    v10 = Property;
    v11 = 2048;
    v12 = stateHandle;
    _os_log_impl(&dword_1D8B9C000, v3, OS_LOG_TYPE_DEBUG, "%{public}@: Deallocating with state handle: %llu", buf, 0x16u);
  }

  if (self->_stateHandle)
  {
    os_state_remove_handler();
  }

  v8.receiver = self;
  v8.super_class = PFStateCaptureHandler;
  [(PFStateCaptureHandler *)&v8 dealloc];
  v7 = *MEMORY[0x1E69E9840];
}

- (os_state_data_s)stateDataWithHints:(os_state_hints_s *)hints
{
  v33 = *MEMORY[0x1E69E9840];
  ++self->_callCount;
  if (hints->var2 != 1)
  {
    WeakRetained = objc_loadWeakRetained(&self->_provider);
    if (!WeakRetained)
    {
      stateCaptureDictionary = PFStateCaptureGetLog();
      if (os_log_type_enabled(stateCaptureDictionary, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        Property = objc_getProperty(self, v18, 56, 1);
        _os_log_impl(&dword_1D8B9C000, stateCaptureDictionary, OS_LOG_TYPE_ERROR, "%{public}@: Unable to capture state because provider is nil", buf, 0xCu);
      }

      v9 = 0;
      goto LABEL_24;
    }

    v11 = objc_autoreleasePoolPush();
    stateCaptureDictionary = [WeakRetained stateCaptureDictionary];
    objc_autoreleasePoolPop(v11);
    if (!stateCaptureDictionary)
    {
      v14 = PFStateCaptureGetLog();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        *buf = 138543362;
        Property = objc_getProperty(self, v19, 56, 1);
        _os_log_impl(&dword_1D8B9C000, v14, OS_LOG_TYPE_INFO, "%{public}@: Returned nil state dictionary", buf, 0xCu);
      }

      v9 = 0;
      goto LABEL_23;
    }

    v28 = 0;
    v13 = [MEMORY[0x1E696AE40] dataWithPropertyList:stateCaptureDictionary format:200 options:0 error:&v28];
    v14 = v28;
    if (v13)
    {
      v15 = [v13 length];
      v16 = malloc_type_calloc(1uLL, v15 + 200, 0x397AB255uLL);
      if (v16)
      {
        v9 = v16;
        v16->var0 = 1;
        v16->var1.var1 = v15;
        v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ (%llu, %llu)", self->_name, self->_callCount, self->_ignoreCount];
        [v17 UTF8String];

        __strlcpy_chk();
        [v13 getBytes:v9->var4 length:v15];
LABEL_22:

LABEL_23:
LABEL_24:

        goto LABEL_25;
      }

      v20 = PFStateCaptureGetLog();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        v25 = objc_getProperty(self, v24, 56, 1);
        *buf = 138543618;
        Property = v25;
        v31 = 2048;
        v32 = v15 + 200;
        v23 = "%{public}@: Unable to allocate state buffer with size %zu";
        goto LABEL_20;
      }
    }

    else
    {
      v20 = PFStateCaptureGetLog();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        v22 = objc_getProperty(self, v21, 56, 1);
        *buf = 138543618;
        Property = v22;
        v31 = 2112;
        v32 = v14;
        v23 = "%{public}@: Unable to serialize state dictionary: %@";
LABEL_20:
        _os_log_impl(&dword_1D8B9C000, v20, OS_LOG_TYPE_ERROR, v23, buf, 0x16u);
      }
    }

    v9 = 0;
    goto LABEL_22;
  }

  v5 = PFStateCaptureGetLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v7 = objc_getProperty(self, v6, 56, 1);
    var2 = hints->var2;
    *buf = 138543618;
    Property = v7;
    v31 = 1024;
    LODWORD(v32) = var2;
    _os_log_impl(&dword_1D8B9C000, v5, OS_LOG_TYPE_INFO, "%{public}@: Ignoring state dump with API: %u", buf, 0x12u);
  }

  v9 = 0;
  ++self->_ignoreCount;
LABEL_25:
  v26 = *MEMORY[0x1E69E9840];
  return v9;
}

- (PFStateCaptureHandler)initWithProvider:(id)provider name:(id)name
{
  v32 = *MEMORY[0x1E69E9840];
  providerCopy = provider;
  nameCopy = name;
  v27.receiver = self;
  v27.super_class = PFStateCaptureHandler;
  v8 = [(PFStateCaptureHandler *)&v27 init];
  if (v8)
  {
    v9 = [nameCopy copy];
    name = v8->_name;
    v8->_name = v9;

    v11 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"STATEDUMP: %@", v8->_name];
    logPrefix = v8->_logPrefix;
    v8->_logPrefix = v11;

    objc_storeWeak(&v8->_provider, providerCopy);
    v13 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v14 = dispatch_queue_create("com.apple.photos.PFStateCaptureHandler.stateHandlerQueue", v13);
    queue = v8->_queue;
    v8->_queue = v14;

    objc_initWeak(&location, v8);
    v16 = v8->_queue;
    objc_copyWeak(&v25, &location);
    v24 = nameCopy;
    v8->_stateHandle = os_state_add_handler();
    v17 = PFStateCaptureGetLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      Property = objc_getProperty(v8, v18, 56, 1);
      stateHandle = v8->_stateHandle;
      *buf = 138543618;
      v29 = Property;
      v30 = 2048;
      v31 = stateHandle;
      _os_log_impl(&dword_1D8B9C000, v17, OS_LOG_TYPE_INFO, "%{public}@: Added state handler: %llu", buf, 0x16u);
    }

    v21 = v8;
    objc_destroyWeak(&v25);
    objc_destroyWeak(&location);
  }

  v22 = *MEMORY[0x1E69E9840];
  return v8;
}

uint64_t __47__PFStateCaptureHandler_initWithProvider_name___block_invoke(uint64_t a1, uint64_t a2)
{
  v13 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = [WeakRetained stateDataWithHints:a2];
  }

  else
  {
    v7 = PFStateCaptureGetLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = *(a1 + 32);
      v11 = 138412290;
      v12 = v8;
      _os_log_impl(&dword_1D8B9C000, v7, OS_LOG_TYPE_ERROR, "STATEDUMP: %@: PFStateCaptureHandler: strongSelf is nil", &v11, 0xCu);
    }

    v6 = 0;
  }

  v9 = *MEMORY[0x1E69E9840];
  return v6;
}

- (PFStateCaptureHandler)initWithProvider:(id)provider
{
  v4 = MEMORY[0x1E696AEC0];
  providerCopy = provider;
  providerCopy = [[v4 alloc] initWithFormat:@"%@-%p", objc_opt_class(), providerCopy];
  v7 = [(PFStateCaptureHandler *)self initWithProvider:providerCopy name:providerCopy];

  return v7;
}

+ (id)stringFromRelativeTimeInterval:(double)interval
{
  if (stringFromRelativeTimeInterval__sOnceToken != -1)
  {
    dispatch_once(&stringFromRelativeTimeInterval__sOnceToken, &__block_literal_global_368);
  }

  v4 = stringFromRelativeTimeInterval__sFormatter;

  return [v4 localizedStringFromTimeInterval:interval];
}

uint64_t __56__PFStateCaptureHandler_stringFromRelativeTimeInterval___block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E696AE78]);
  v1 = stringFromRelativeTimeInterval__sFormatter;
  stringFromRelativeTimeInterval__sFormatter = v0;

  [stringFromRelativeTimeInterval__sFormatter setDateTimeStyle:0];
  v2 = stringFromRelativeTimeInterval__sFormatter;

  return [v2 setUnitsStyle:2];
}

+ (id)stringFromTimestamp:(double)timestamp
{
  v4 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:timestamp];
  v5 = [self stringFromDate:v4];

  return v5;
}

@end