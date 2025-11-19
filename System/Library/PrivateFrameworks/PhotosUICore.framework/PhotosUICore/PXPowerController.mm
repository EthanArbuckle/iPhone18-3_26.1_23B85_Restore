@interface PXPowerController
+ (PXPowerController)sharedController;
- (BOOL)hasBackgroundAssertion;
- (PXPowerController)init;
- (id)description;
- (void)acquireBackgroundAssertion;
- (void)acquireBackgroundAssertionIfNeeded;
- (void)addPowerAssertionForIdentifier:(unsigned int)a3 withReason:(unsigned int)a4 completion:(id)a5;
- (void)dealloc;
- (void)handleEnteringBackground;
- (void)handleEnteringForeground;
- (void)invalidateBackgroundAssertion;
- (void)invalidateBackgroundAssertionIfNeeded;
- (void)releasePowerAssertion;
- (void)releasePowerAssertionIfNeeded;
- (void)removePowerAssertionForIdentifier:(unsigned int)a3 withReason:(unsigned int)a4 completion:(id)a5;
- (void)takePowerAssertion;
- (void)takePowerAssertionIfNeeded;
@end

@implementation PXPowerController

- (BOOL)hasBackgroundAssertion
{
  v2 = [(PXPowerController *)self backgroundProcessAssertion];
  v3 = [v2 valid];

  return v3;
}

- (void)acquireBackgroundAssertion
{
  v33 = *MEMORY[0x1E69E9840];
  v3 = _powerControllerLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1A3C1C000, v3, OS_LOG_TYPE_INFO, "📴✅ Acquiring background assertion", buf, 2u);
  }

  v4 = [(PXPowerController *)self assertionReasonsByIdentifier];
  v5 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(v4, "count")}];
  v30 = 0u;
  v28 = 0u;
  v29 = 0u;
  *location = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:location objects:buf count:16];
  if (v7)
  {
    v8 = *v28;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v28 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(location[1] + i);
        v11 = [v6 objectForKeyedSubscript:v10];
        v12 = NSStringFromPXPowerAssertionReasonBitfield([v11 intValue]);

        [v5 setObject:v12 forKeyedSubscript:v10];
      }

      v7 = [v6 countByEnumeratingWithState:location objects:buf count:16];
    }

    while (v7);
  }

  v13 = [objc_opt_class() description];
  objc_initWeak(location, self);
  v14 = objc_alloc(MEMORY[0x1E698D038]);
  v15 = getpid();
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __47__PXPowerController_acquireBackgroundAssertion__block_invoke;
  v24[3] = &unk_1E774B330;
  objc_copyWeak(&v26, location);
  v16 = v5;
  v25 = v16;
  v17 = [v14 initWithPID:v15 flags:1 reason:10004 name:v13 withHandler:v24];
  [(PXPowerController *)self setBackgroundProcessAssertion:v17];

  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __47__PXPowerController_acquireBackgroundAssertion__block_invoke_41;
  v22[3] = &unk_1E774C648;
  v18 = v16;
  v23 = v18;
  v19 = [(PXPowerController *)self backgroundProcessAssertion];
  [v19 setInvalidationHandler:v22];

  v20 = [(PXPowerController *)self backgroundProcessAssertion];
  LOBYTE(v19) = [v20 acquire];

  if ((v19 & 1) == 0)
  {
    v21 = _powerControllerLog();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v32 = v18;
      _os_log_error_impl(&dword_1A3C1C000, v21, OS_LOG_TYPE_ERROR, "Unable to acquire background assertion for acive power assertions: %{public}@", buf, 0xCu);
    }
  }

  objc_destroyWeak(&v26);
  objc_destroyWeak(location);
}

void __47__PXPowerController_acquireBackgroundAssertion__block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = _powerControllerLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v4 = [WeakRetained backgroundProcessAssertion];
    v5 = *(a1 + 32);
    v6 = 138412546;
    v7 = v4;
    v8 = 2114;
    v9 = v5;
    _os_log_impl(&dword_1A3C1C000, v2, OS_LOG_TYPE_INFO, "Started background assertion: %@ for active assertions: %{public}@", &v6, 0x16u);
  }
}

void __47__PXPowerController_acquireBackgroundAssertion__block_invoke_41(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = _powerControllerLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v3 = *(a1 + 32);
    v4 = 136315394;
    v5 = "[PXPowerController acquireBackgroundAssertion]_block_invoke";
    v6 = 2114;
    v7 = v3;
    _os_log_error_impl(&dword_1A3C1C000, v2, OS_LOG_TYPE_ERROR, "%s: A background assertion was invalidated without finishing! Assertions active: %{public}@", &v4, 0x16u);
  }
}

- (void)invalidateBackgroundAssertion
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = _powerControllerLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = [(PXPowerController *)self backgroundProcessAssertion];
    v6 = 138543362;
    v7 = v4;
    _os_log_impl(&dword_1A3C1C000, v3, OS_LOG_TYPE_INFO, "📴❌ Invalidating background assertion: %{public}@", &v6, 0xCu);
  }

  v5 = [(PXPowerController *)self backgroundProcessAssertion];
  [v5 invalidate];

  [(PXPowerController *)self setBackgroundProcessAssertion:0];
}

- (void)acquireBackgroundAssertionIfNeeded
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = _powerControllerLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v17 = 136315138;
    v18 = "[PXPowerController acquireBackgroundAssertionIfNeeded]";
    _os_log_debug_impl(&dword_1A3C1C000, v3, OS_LOG_TYPE_DEBUG, "%s", &v17, 0xCu);
  }

  v4 = [(PXPowerController *)self hasPowerAssertion];
  v5 = [(PXPowerController *)self isBackgrounded];
  v6 = [(PXPowerController *)self hasBackgroundAssertion];
  v7 = v6;
  if (v5 && v4 && !v6)
  {
    [(PXPowerController *)self acquireBackgroundAssertion];
  }

  else
  {
    v8 = _powerControllerLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      if (v5)
      {
        v9 = @"NO";
      }

      else
      {
        v9 = @"YES";
      }

      v10 = v9;
      if (v4)
      {
        v11 = @"NO";
      }

      else
      {
        v11 = @"YES";
      }

      v12 = v11;
      v13 = v10;
      if (v7)
      {
        v14 = @"YES";
      }

      else
      {
        v14 = @"NO";
      }

      v15 = v14;
      v16 = v12;
      v17 = 138543874;
      v18 = v10;
      v19 = 2114;
      v20 = v12;
      v21 = 2114;
      v22 = v15;
      _os_log_debug_impl(&dword_1A3C1C000, v8, OS_LOG_TYPE_DEBUG, "Not creating background assertion because either we are not backgrounded: %{public}@, or we don't have a power assertion: %{public}@, or background assertion is already active: %{public}@", &v17, 0x20u);
    }
  }
}

- (void)invalidateBackgroundAssertionIfNeeded
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = _powerControllerLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v13 = 136315138;
    v14 = "[PXPowerController invalidateBackgroundAssertionIfNeeded]";
    _os_log_debug_impl(&dword_1A3C1C000, v3, OS_LOG_TYPE_DEBUG, "%s", &v13, 0xCu);
  }

  v4 = [(PXPowerController *)self hasPowerAssertion];
  v5 = [(PXPowerController *)self isBackgrounded];
  v6 = [(PXPowerController *)self hasBackgroundAssertion];
  if (!v6 || v4 && v5)
  {
    v7 = _powerControllerLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      if (v4)
      {
        v8 = @"NO";
      }

      else
      {
        v8 = @"YES";
      }

      v9 = v8;
      if (v6)
      {
        v10 = @"YES";
      }

      else
      {
        v10 = @"NO";
      }

      v11 = v10;
      v12 = v9;
      v13 = 138543618;
      v14 = v9;
      v15 = 2114;
      v16 = v11;
      _os_log_debug_impl(&dword_1A3C1C000, v7, OS_LOG_TYPE_DEBUG, "No background assertion to invalidate because either we don't have a power assertion: %{public}@, or background assertion already exists: %{public}@", &v13, 0x16u);
    }
  }

  else
  {
    [(PXPowerController *)self invalidateBackgroundAssertion];
  }
}

- (void)handleEnteringBackground
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = _powerControllerLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    v6 = "[PXPowerController handleEnteringBackground]";
    _os_log_debug_impl(&dword_1A3C1C000, v3, OS_LOG_TYPE_DEBUG, "%s", buf, 0xCu);
  }

  v4 = [(PXPowerController *)self powerControllerQueue];
  pl_dispatch_sync();
}

uint64_t __45__PXPowerController_handleEnteringBackground__block_invoke(uint64_t a1)
{
  [*(a1 + 32) setBackgrounded:1];
  v2 = *(a1 + 32);

  return [v2 acquireBackgroundAssertionIfNeeded];
}

- (void)handleEnteringForeground
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = _powerControllerLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    v6 = "[PXPowerController handleEnteringForeground]";
    _os_log_debug_impl(&dword_1A3C1C000, v3, OS_LOG_TYPE_DEBUG, "%s", buf, 0xCu);
  }

  v4 = [(PXPowerController *)self powerControllerQueue];
  pl_dispatch_sync();
}

uint64_t __45__PXPowerController_handleEnteringForeground__block_invoke(uint64_t a1)
{
  [*(a1 + 32) setBackgrounded:0];
  v2 = *(a1 + 32);

  return [v2 invalidateBackgroundAssertionIfNeeded];
}

- (void)releasePowerAssertion
{
  v3 = _powerControllerLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1A3C1C000, v3, OS_LOG_TYPE_INFO, "⚡️❌ Releasing power assertion", buf, 2u);
  }

  [(PXPowerController *)self powerAssertionStartTime];
  if (v4 != 0.0)
  {
    v5 = IOPMAssertionRelease(self->_assertionID);
    if (v5)
    {
      v6 = v5;
      _PFAssertContinueHandler();
    }

    [(PXPowerController *)self setPowerAssertionStartTime:0.0, v6];
  }
}

- (void)takePowerAssertion
{
  v3 = _powerControllerLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1A3C1C000, v3, OS_LOG_TYPE_INFO, "⚡️✅ Taking power assertion", buf, 2u);
  }

  if (IOPMAssertionCreateWithDescription(@"PreventUserIdleSystemSleep", @"Photos Import/Export activity", @"com.apple.Photos.importExport", @"Ensure user-initiated import or export activity does not get interrupted.", 0, 3600.0, @"TimeoutActionTurnOff", &self->_assertionID))
  {
    _PFAssertContinueHandler();
  }

  [(PXPowerController *)self setPowerAssertionStartTime:CFAbsoluteTimeGetCurrent()];
}

- (void)releasePowerAssertionIfNeeded
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = _powerControllerLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v11 = 136315138;
    v12 = "[PXPowerController releasePowerAssertionIfNeeded]";
    _os_log_debug_impl(&dword_1A3C1C000, v3, OS_LOG_TYPE_DEBUG, "%s", &v11, 0xCu);
  }

  v4 = [(PXPowerController *)self assertionReasonsByIdentifier];
  v5 = [v4 count];

  v6 = [(PXPowerController *)self hasPowerAssertion];
  v7 = v6;
  if (v5 || !v6)
  {
    v8 = _powerControllerLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = @"YES";
      if (v7)
      {
        v9 = @"NO";
      }

      v10 = v9;
      v11 = 134349314;
      v12 = v5;
      v13 = 2114;
      v14 = v10;
      _os_log_impl(&dword_1A3C1C000, v8, OS_LOG_TYPE_INFO, "Not releasing power assertion because either: numActiveAssertionIdentifiers=%{public}ld, or power assert doesn't exist: %{public}@", &v11, 0x16u);
    }
  }

  else
  {
    [(PXPowerController *)self releasePowerAssertion];
    [(PXPowerController *)self invalidateBackgroundAssertionIfNeeded];
  }
}

- (void)takePowerAssertionIfNeeded
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = _powerControllerLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v11 = 136315138;
    v12 = "[PXPowerController takePowerAssertionIfNeeded]";
    _os_log_debug_impl(&dword_1A3C1C000, v3, OS_LOG_TYPE_DEBUG, "%s", &v11, 0xCu);
  }

  v4 = [(PXPowerController *)self assertionReasonsByIdentifier];
  v5 = [v4 count];

  v6 = [(PXPowerController *)self hasPowerAssertion];
  v7 = v6;
  if (!v5 || v6)
  {
    v8 = _powerControllerLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = @"NO";
      if (v7)
      {
        v9 = @"YES";
      }

      v10 = v9;
      v11 = 134349314;
      v12 = v5;
      v13 = 2114;
      v14 = v10;
      _os_log_impl(&dword_1A3C1C000, v8, OS_LOG_TYPE_INFO, "Not taking power assertion because either: numActiveAssertionIdentifiers=%{public}ld, or already has power assertion: %{public}@", &v11, 0x16u);
    }
  }

  else
  {
    [(PXPowerController *)self takePowerAssertion];
    [(PXPowerController *)self acquireBackgroundAssertionIfNeeded];
  }
}

- (void)removePowerAssertionForIdentifier:(unsigned int)a3 withReason:(unsigned int)a4 completion:(id)a5
{
  v6 = a5;
  v7 = [(PXPowerController *)self powerControllerQueue];
  v8 = v6;
  pl_dispatch_async();
}

void __77__PXPowerController_removePowerAssertionForIdentifier_withReason_completion___block_invoke(uint64_t a1)
{
  v33 = *MEMORY[0x1E69E9840];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __77__PXPowerController_removePowerAssertionForIdentifier_withReason_completion___block_invoke_2;
  aBlock[3] = &unk_1E774C250;
  v26 = *(a1 + 40);
  v2 = _Block_copy(aBlock);
  v3 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:*(a1 + 48)];
  v4 = [*(a1 + 32) assertionReasonsByIdentifier];
  v5 = [v4 objectForKeyedSubscript:v3];

  if (!v5)
  {
    v9 = _powerControllerLog();
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
LABEL_10:

      goto LABEL_15;
    }

    v12 = *(a1 + 48);
    v13 = *(a1 + 52) - 2;
    if (v13 > 6)
    {
      v14 = @"PXPowerAssertionReasonImportAssets";
    }

    else
    {
      v14 = off_1E77318D0[v13];
    }

    v23 = [*(a1 + 32) assertionReasonsByIdentifier];
    *buf = 136315906;
    v28 = "[PXPowerController removePowerAssertionForIdentifier:withReason:completion:]_block_invoke";
    v29 = 1024;
    *v30 = v12;
    *&v30[4] = 2114;
    *&v30[6] = v14;
    v31 = 2114;
    v32 = v23;
    v24 = "%s: Power assertion %d not found, cannot remove reason %{public}@; existing assertion reasons: %{public}@";
LABEL_22:
    _os_log_error_impl(&dword_1A3C1C000, v9, OS_LOG_TYPE_ERROR, v24, buf, 0x26u);

    goto LABEL_10;
  }

  v6 = [v5 intValue];
  v7 = *(a1 + 52) & v6;
  v8 = _powerControllerLog();
  v9 = v8;
  if (!v7)
  {
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_10;
    }

    v20 = *(a1 + 48);
    v21 = *(a1 + 52) - 2;
    if (v21 > 6)
    {
      v22 = @"PXPowerAssertionReasonImportAssets";
    }

    else
    {
      v22 = off_1E77318D0[v21];
    }

    v23 = NSStringFromPXPowerAssertionReasonBitfield(v6);
    *buf = 136315906;
    v28 = "[PXPowerController removePowerAssertionForIdentifier:withReason:completion:]_block_invoke";
    v29 = 1024;
    *v30 = v20;
    *&v30[4] = 2114;
    *&v30[6] = v22;
    v31 = 2114;
    v32 = v23;
    v24 = "%s: Power assertion %d was not asserted with reason %{public}@; existing assertion reasons: %{public}@";
    goto LABEL_22;
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v10 = *(a1 + 52) - 2;
    if (v10 > 6)
    {
      v11 = @"PXPowerAssertionReasonImportAssets";
    }

    else
    {
      v11 = off_1E77318D0[v10];
    }

    v15 = *(a1 + 48);
    *buf = 136315650;
    v28 = "[PXPowerController removePowerAssertionForIdentifier:withReason:completion:]_block_invoke";
    v29 = 2114;
    *v30 = v11;
    *&v30[8] = 1026;
    *&v30[10] = v15;
    _os_log_impl(&dword_1A3C1C000, v9, OS_LOG_TYPE_INFO, "%s: Removing power assertion %{public}@ for identifier: %{public}d", buf, 0x1Cu);
  }

  v16 = v6 & ~*(a1 + 52);
  v17 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v16];
  v18 = [*(a1 + 32) assertionReasonsByIdentifier];
  [v18 setObject:v17 forKeyedSubscript:v3];

  if (!v16)
  {
    v19 = [*(a1 + 32) assertionReasonsByIdentifier];
    [v19 removeObjectForKey:v3];

    [*(a1 + 32) releasePowerAssertionIfNeeded];
  }

LABEL_15:
  v2[2](v2);
}

void __77__PXPowerController_removePowerAssertionForIdentifier_withReason_completion___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __77__PXPowerController_removePowerAssertionForIdentifier_withReason_completion___block_invoke_3;
    block[3] = &unk_1E774C250;
    v3 = v1;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

- (void)addPowerAssertionForIdentifier:(unsigned int)a3 withReason:(unsigned int)a4 completion:(id)a5
{
  v6 = a5;
  v7 = [(PXPowerController *)self powerControllerQueue];
  v8 = v6;
  pl_dispatch_async();
}

void __74__PXPowerController_addPowerAssertionForIdentifier_withReason_completion___block_invoke(uint64_t a1)
{
  v25 = *MEMORY[0x1E69E9840];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __74__PXPowerController_addPowerAssertionForIdentifier_withReason_completion___block_invoke_2;
  aBlock[3] = &unk_1E774C250;
  v18 = *(a1 + 40);
  v2 = _Block_copy(aBlock);
  v3 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:*(a1 + 48)];
  v4 = [*(a1 + 32) assertionReasonsByIdentifier];
  v5 = [v4 objectForKeyedSubscript:v3];
  v6 = [v5 intValue];

  LODWORD(v5) = *(a1 + 52) & v6;
  v7 = _powerControllerLog();
  v8 = v7;
  if (v5)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v14 = *(a1 + 52) - 2;
      if (v14 > 6)
      {
        v15 = @"PXPowerAssertionReasonImportAssets";
      }

      else
      {
        v15 = off_1E77318D0[v14];
      }

      v16 = *(a1 + 48);
      *buf = 136315650;
      v20 = "[PXPowerController addPowerAssertionForIdentifier:withReason:completion:]_block_invoke";
      v21 = 2114;
      v22 = v15;
      v23 = 1024;
      v24 = v16;
      _os_log_error_impl(&dword_1A3C1C000, v8, OS_LOG_TYPE_ERROR, "%s: Power assertion %{public}@ already exists for identifier: %d", buf, 0x1Cu);
    }
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v9 = *(a1 + 52) - 2;
      if (v9 > 6)
      {
        v10 = @"PXPowerAssertionReasonImportAssets";
      }

      else
      {
        v10 = off_1E77318D0[v9];
      }

      v11 = *(a1 + 48);
      *buf = 136315650;
      v20 = "[PXPowerController addPowerAssertionForIdentifier:withReason:completion:]_block_invoke";
      v21 = 2114;
      v22 = v10;
      v23 = 1026;
      v24 = v11;
      _os_log_impl(&dword_1A3C1C000, v8, OS_LOG_TYPE_INFO, "%s: Adding power assertion %{public}@ for identifier: %{public}d", buf, 0x1Cu);
    }

    v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:*(a1 + 52) | v6];
    v13 = [*(a1 + 32) assertionReasonsByIdentifier];
    [v13 setObject:v12 forKeyedSubscript:v3];

    [*(a1 + 32) takePowerAssertionIfNeeded];
  }

  v2[2](v2);
}

void __74__PXPowerController_addPowerAssertionForIdentifier_withReason_completion___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __74__PXPowerController_addPowerAssertionForIdentifier_withReason_completion___block_invoke_3;
    block[3] = &unk_1E774C250;
    v3 = v1;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

- (id)description
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = [(PXPowerController *)self assertionReasonsByIdentifier];
  v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v20;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v20 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v19 + 1) + 8 * i);
        v11 = [v5 objectForKeyedSubscript:v10];
        v12 = [v11 intValue];

        v13 = NSStringFromPXPowerAssertionReasonBitfield(v12);
        [v4 setObject:v13 forKeyedSubscript:v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v7);
  }

  v14 = MEMORY[0x1E696AEC0];
  v15 = objc_opt_class();
  v16 = [(PXPowerController *)self backgroundProcessAssertion];
  v17 = [v14 stringWithFormat:@"<%@ backgroundProcessAssertion:%@ assertions:%@>", v15, v16, v4];

  return v17;
}

- (void)dealloc
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self name:*MEMORY[0x1E69DDBC8] object:0];
  [v3 removeObserver:self name:*MEMORY[0x1E69DDBC0] object:0];

  v4.receiver = self;
  v4.super_class = PXPowerController;
  [(PXPowerController *)&v4 dealloc];
}

- (PXPowerController)init
{
  v11.receiver = self;
  v11.super_class = PXPowerController;
  v2 = [(PXPowerController *)&v11 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
    assertionReasonsByIdentifier = v2->_assertionReasonsByIdentifier;
    v2->_assertionReasonsByIdentifier = v3;

    backgroundProcessAssertion = v2->_backgroundProcessAssertion;
    v2->_backgroundProcessAssertion = 0;

    v6 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_DEFAULT, 0);
    v7 = dispatch_queue_create("com.apple.photos.power-controller.assertions", v6);
    powerControllerQueue = v2->_powerControllerQueue;
    v2->_powerControllerQueue = v7;

    v9 = [MEMORY[0x1E696AD88] defaultCenter];
    [v9 addObserver:v2 selector:sel_applicationWillResignActive_ name:*MEMORY[0x1E69DDBC8] object:0];
    [v9 addObserver:v2 selector:sel_applicationWillEnterForeground_ name:*MEMORY[0x1E69DDBC0] object:0];
  }

  return v2;
}

+ (PXPowerController)sharedController
{
  if (sharedController_onceToken != -1)
  {
    dispatch_once(&sharedController_onceToken, &__block_literal_global_4);
  }

  v3 = sharedController_powerController;

  return v3;
}

void __37__PXPowerController_sharedController__block_invoke()
{
  v0 = objc_alloc_init(PXPowerController);
  v1 = sharedController_powerController;
  sharedController_powerController = v0;
}

@end