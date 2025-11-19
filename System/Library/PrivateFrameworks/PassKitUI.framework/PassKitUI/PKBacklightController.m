@interface PKBacklightController
+ (id)sharedInstance;
- (PKBacklightController)init;
- (void)_changeBacklightMinimumEnabledIfNecessary;
- (void)_updateBacklightNits:(float)a3 period:(double)a4;
- (void)beginAllowingBacklightRamping:(id)a3;
- (void)beginRequestingBacklightRamping:(id)a3;
- (void)endAllowingBacklightRamping:(id)a3;
- (void)endRequestingBacklightRamping:(id)a3;
@end

@implementation PKBacklightController

+ (id)sharedInstance
{
  if (_MergedGlobals_599 != -1)
  {
    dispatch_once(&_MergedGlobals_599, &__block_literal_global_129);
  }

  v3 = qword_1EBD6ACB0;

  return v3;
}

- (PKBacklightController)init
{
  v10.receiver = self;
  v10.super_class = PKBacklightController;
  v2 = [(PKBacklightController *)&v10 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E69977D0]);
    brightnessClient = v2->_brightnessClient;
    v2->_brightnessClient = v3;

    v5 = [MEMORY[0x1E696AC70] pk_weakObjectsHashTableUsingPointerPersonality];
    requesters = v2->_requesters;
    v2->_requesters = v5;

    v7 = [MEMORY[0x1E696AC70] pk_weakObjectsHashTableUsingPointerPersonality];
    allowers = v2->_allowers;
    v2->_allowers = v7;
  }

  return v2;
}

- (void)_changeBacklightMinimumEnabledIfNecessary
{
  v3 = [(NSHashTable *)self->_allowers count];
  v4 = [(NSHashTable *)self->_requesters count];
  if (v3)
  {
    v6 = v4 == 0;
  }

  else
  {
    v6 = 1;
  }

  v7 = !v6;
  if (self->_isBacklightRamped == !v7)
  {
    LODWORD(v5) = 1127299088;
    if (!v7)
    {
      *&v5 = 0.0;
    }

    [(PKBacklightController *)self _updateBacklightNits:v5 period:0.4];
    self->_isBacklightRamped = v7;
  }
}

void __39__PKBacklightController_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(PKBacklightController);
  v1 = qword_1EBD6ACB0;
  qword_1EBD6ACB0 = v0;
}

- (void)beginAllowingBacklightRamping:(id)a3
{
  v11 = *MEMORY[0x1E69E9840];
  [(NSHashTable *)self->_allowers addObject:a3];
  v4 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    requesters = self->_requesters;
    allowers = self->_allowers;
    v7 = 138412546;
    v8 = allowers;
    v9 = 2112;
    v10 = requesters;
    _os_log_impl(&dword_1BD026000, v4, OS_LOG_TYPE_DEFAULT, "Backlight ramping allowed: allowers = %@\nrequesters = %@", &v7, 0x16u);
  }

  [(PKBacklightController *)self _changeBacklightMinimumEnabledIfNecessary];
}

- (void)endAllowingBacklightRamping:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  [(NSHashTable *)self->_allowers removeObject:a3];
  v4 = [(NSHashTable *)self->_allowers count];
  v5 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = @"allowed";
    requesters = self->_requesters;
    allowers = self->_allowers;
    if (!v4)
    {
      v6 = @"disallowed";
    }

    v9 = 138412802;
    v10 = v6;
    v11 = 2112;
    v12 = allowers;
    v13 = 2112;
    v14 = requesters;
    _os_log_impl(&dword_1BD026000, v5, OS_LOG_TYPE_DEFAULT, "Backlight ramping %@: allowers = %@\nrequesters = %@", &v9, 0x20u);
  }

  [(PKBacklightController *)self _changeBacklightMinimumEnabledIfNecessary];
}

- (void)beginRequestingBacklightRamping:(id)a3
{
  v11 = *MEMORY[0x1E69E9840];
  [(NSHashTable *)self->_requesters addObject:a3];
  [(PKBacklightController *)self _changeBacklightMinimumEnabledIfNecessary];
  v4 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    requesters = self->_requesters;
    allowers = self->_allowers;
    v7 = 138412546;
    v8 = allowers;
    v9 = 2112;
    v10 = requesters;
    _os_log_impl(&dword_1BD026000, v4, OS_LOG_TYPE_DEFAULT, "Backlight ramping requested: allowers = %@\nrequesters = %@", &v7, 0x16u);
  }
}

- (void)endRequestingBacklightRamping:(id)a3
{
  v11 = *MEMORY[0x1E69E9840];
  [(NSHashTable *)self->_requesters removeObject:a3];
  [(PKBacklightController *)self _changeBacklightMinimumEnabledIfNecessary];
  v4 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    requesters = self->_requesters;
    allowers = self->_allowers;
    v7 = 138412546;
    v8 = allowers;
    v9 = 2112;
    v10 = requesters;
    _os_log_impl(&dword_1BD026000, v4, OS_LOG_TYPE_DEFAULT, "Backlight ramping unrequested: allowers = %@\nrequesters = %@", &v7, 0x16u);
  }
}

- (void)_updateBacklightNits:(float)a3 period:(double)a4
{
  v13[2] = *MEMORY[0x1E69E9840];
  v12[0] = @"nits";
  v6 = [MEMORY[0x1E696AD98] numberWithFloat:?];
  v12[1] = @"period";
  v13[0] = v6;
  v7 = [MEMORY[0x1E696AD98] numberWithDouble:a4];
  v13[1] = v7;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:2];

  [(BrightnessSystemClient *)self->_brightnessClient setProperty:v8 forKey:@"MinNits"];
  v9 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412290;
    v11 = v8;
    _os_log_impl(&dword_1BD026000, v9, OS_LOG_TYPE_DEFAULT, "Updating backlight settings: %@", &v10, 0xCu);
  }
}

@end