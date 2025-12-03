@interface SSVSubscriptionStatusCoordinator
+ (id)_changeNotificationSuspensionAccessQueue;
+ (id)copyStatusFromUserDefaults;
+ (id)sharedCoordinator;
+ (void)beginSuspendingSubscriptionStatusChangeNotifications;
+ (void)endSuspendingSubscriptionStatusChangeNotifications;
+ (void)removeUserDefaultsForAccountIdentifier:(id)identifier;
+ (void)sendChangeNotification;
+ (void)updateUserDefaultsWithStatus:(id)status;
+ (void)updateWithResponseDictionary:(id)dictionary accountIdentifier:(id)identifier;
- (SSVSubscriptionStatus)lastKnownStatus;
- (SSVSubscriptionStatusCoordinator)init;
- (id)_copyStatusDateFromUserDefaults;
- (id)_copyStatusFromUserDefaults;
- (id)_copyValidStatusForStatus:(id)status;
- (void)_accountStoreChangedNotification;
- (void)_deviceStoreFrontChangedNotification;
- (void)_externalChangeNotification;
- (void)_fireStatusBlocksWithStatus:(id)status isFinal:(BOOL)final error:(id)error;
- (void)_handleRequestResponseWithStatus:(id)status isFinal:(BOOL)final error:(id)error;
- (void)_invalidateLastKnownStatus;
- (void)_updateSubscriptionStatusAccessPolicyAllowingNotification:(BOOL)notification;
- (void)_validateLastKnownStatus;
- (void)dealloc;
- (void)getStatusWithOptions:(id)options statusBlock:(id)block;
- (void)modifyLastKnownStatusUsingBlock:(id)block;
- (void)reset;
@end

@implementation SSVSubscriptionStatusCoordinator

- (SSVSubscriptionStatusCoordinator)init
{
  v17.receiver = self;
  v17.super_class = SSVSubscriptionStatusCoordinator;
  v2 = [(SSVSubscriptionStatusCoordinator *)&v17 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.StoreServices.SSVSubscriptionStatusCoordinator.callback", 0);
    callbackQueue = v2->_callbackQueue;
    v2->_callbackQueue = v3;

    v5 = dispatch_queue_create("com.apple.StoreServices.SSVSubscriptionStatusCoordinator", 0);
    dispatchQueue = v2->_dispatchQueue;
    v2->_dispatchQueue = v5;

    objc_initWeak(&location, v2);
    v7 = v2->_dispatchQueue;
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __40__SSVSubscriptionStatusCoordinator_init__block_invoke;
    handler[3] = &unk_1E84ACFA8;
    objc_copyWeak(&v15, &location);
    notify_register_dispatch("com.apple.itunesstored.ssvsubscriptionstatuscoordinator.changed", &v2->_notificationToken, v7, handler);
    v8 = v2->_dispatchQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __40__SSVSubscriptionStatusCoordinator_init__block_invoke_2;
    block[3] = &unk_1E84AC050;
    v9 = v2;
    v13 = v9;
    dispatch_sync(v8, block);
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v9 selector:sel__accountStoreChangedNotification name:0x1F50437D8 object:0];
    [defaultCenter addObserver:v9 selector:sel__deviceStoreFrontChangedNotification name:@"SSDeviceStoreFrontChangedNotification" object:0];

    objc_destroyWeak(&v15);
    objc_destroyWeak(&location);
  }

  return v2;
}

void __40__SSVSubscriptionStatusCoordinator_init__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _externalChangeNotification];
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self name:0x1F50437D8 object:0];
  [defaultCenter removeObserver:self name:@"SSDeviceStoreFrontChangedNotification" object:0];
  notify_cancel(self->_notificationToken);

  v4.receiver = self;
  v4.super_class = SSVSubscriptionStatusCoordinator;
  [(SSVSubscriptionStatusCoordinator *)&v4 dealloc];
}

+ (id)sharedCoordinator
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __53__SSVSubscriptionStatusCoordinator_sharedCoordinator__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sOnce != -1)
  {
    dispatch_once(&sOnce, block);
  }

  v2 = sCoordinator;

  return v2;
}

void __53__SSVSubscriptionStatusCoordinator_sharedCoordinator__block_invoke(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = sCoordinator;
  sCoordinator = v1;
}

+ (id)copyStatusFromUserDefaults
{
  v2 = CFPreferencesCopyAppValue(@"FuseSubscriptionStatus", @"com.apple.itunesstored");
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = CFGetTypeID(v2);
  if (v4 == CFDictionaryGetTypeID())
  {
    v5 = [[SSVSubscriptionStatus alloc] initWithUserDefaultsRepresentation:v3];
  }

  else
  {
    v5 = 0;
  }

  CFRelease(v3);
  return v5;
}

- (void)getStatusWithOptions:(id)options statusBlock:(id)block
{
  optionsCopy = options;
  blockCopy = block;
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __69__SSVSubscriptionStatusCoordinator_getStatusWithOptions_statusBlock___block_invoke;
  block[3] = &unk_1E84AC000;
  v12 = optionsCopy;
  selfCopy = self;
  v14 = blockCopy;
  v9 = blockCopy;
  v10 = optionsCopy;
  dispatch_async(dispatchQueue, block);
}

void __69__SSVSubscriptionStatusCoordinator_getStatusWithOptions_statusBlock___block_invoke(id *a1)
{
  v2 = [a1[4] objectForKey:@"SSVSubscriptionStatusOptionIgnoreCache"];
  v3 = [v2 BOOLValue];

  if (v3)
  {
    goto LABEL_2;
  }

  if (*(a1[5] + 5))
  {
    v5 = [a1[4] objectForKey:@"SSVSubscriptionStatusOptionAllowsExpiredStatuses"];
    v6 = [v5 BOOLValue];

    if ((v6 & 1) != 0 || *(a1[5] + 6) && ([MEMORY[0x1E695DF00] date], v7 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v7, "timeIntervalSinceDate:", *(a1[5] + 6)), v9 = v8, v7, v9 <= 3600.0))
    {
      v4 = [a1[5] _copyValidStatusForStatus:*(a1[5] + 5)];
      goto LABEL_15;
    }
  }

  v10 = [a1[4] objectForKey:@"SSVSubscriptionStatusOptionAllowsExpiredStatuses"];
  v11 = [v10 BOOLValue];

  if (v11)
  {
    goto LABEL_10;
  }

  v4 = [a1[5] _copyStatusDateFromUserDefaults];
  if (!v4)
  {
    goto LABEL_15;
  }

  v12 = [MEMORY[0x1E695DF00] date];
  [v12 timeIntervalSinceDate:v4];
  v14 = v13;

  if (v14 > 3600.0)
  {
LABEL_2:
    v4 = 0;
  }

  else
  {
LABEL_10:
    v15 = [a1[5] _copyStatusFromUserDefaults];
    if (v15)
    {
      v4 = [a1[5] _copyValidStatusForStatus:v15];
    }

    else
    {
      v4 = 0;
    }
  }

LABEL_15:
  if (![v4 carrierBundlingStatus] || objc_msgSend(v4, "carrierBundlingStatus") == 3)
  {
    goto LABEL_17;
  }

  if ([v4 accountStatus])
  {
    if (!v4)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v33 = [v4 carrierBundlingStatus];
    if (!v4 || v33 != 4)
    {
      goto LABEL_17;
    }
  }

  v34 = [v4 subscriptionExpirationDate];
  if (!v34 || (v35 = v34, [v34 timeIntervalSinceNow], v37 = v36, v35, v37 > 2.22044605e-16))
  {
    v38 = *(a1[5] + 2);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __69__SSVSubscriptionStatusCoordinator_getStatusWithOptions_statusBlock___block_invoke_2;
    block[3] = &unk_1E84AC338;
    v44 = a1[6];
    v43 = v4;
    dispatch_async(v38, block);

    goto LABEL_31;
  }

LABEL_17:
  v16 = a1[6];
  if (v16)
  {
    v17 = [v16 copy];
    v18 = *(a1[5] + 9);
    if (!v18)
    {
      v19 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v20 = a1[5];
      v21 = v20[9];
      v20[9] = v19;

      v18 = *(a1[5] + 9);
    }

    v22 = MEMORY[0x1DA6DFBB0](v17);
    [v18 addObject:v22];
  }

  if (!*(a1[5] + 1))
  {
    v23 = objc_alloc_init(SSVSubscriptionStatusRequest);
    v24 = a1[5];
    v25 = v24[1];
    v24[1] = v23;

    v26 = *(a1[5] + 1);
    v27 = [a1[4] objectForKey:@"SSVSubscriptionStatusOptionAuthenticatesIfNecessary"];
    [v26 setAuthenticatesIfNecessary:{objc_msgSend(v27, "BOOLValue")}];

    [*(a1[5] + 1) setCarrierBundleProvisioningStyle:1];
    v28 = *(a1[5] + 1);
    v29 = [a1[4] objectForKey:@"SSVSubscriptionStatusOptionLocalizedAuthenticationReason"];
    [v28 setLocalizedAuthenticationReason:v29];

    v30 = *(a1[5] + 1);
    v31 = [a1[4] objectForKey:@"reason"];
    [v30 setReason:v31];

    objc_initWeak(&location, a1[5]);
    v32 = *(a1[5] + 1);
    v39[0] = MEMORY[0x1E69E9820];
    v39[1] = 3221225472;
    v39[2] = __69__SSVSubscriptionStatusCoordinator_getStatusWithOptions_statusBlock___block_invoke_3;
    v39[3] = &unk_1E84ACFD0;
    objc_copyWeak(&v40, &location);
    [v32 startWithStatusResponseBlock:v39];
    objc_destroyWeak(&v40);
    objc_destroyWeak(&location);
  }

LABEL_31:
}

uint64_t __69__SSVSubscriptionStatusCoordinator_getStatusWithOptions_statusBlock___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 32), 1, 0);
  }

  return result;
}

void __69__SSVSubscriptionStatusCoordinator_getStatusWithOptions_statusBlock___block_invoke_3(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v7 = a4;
  v8 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleRequestResponseWithStatus:v8 isFinal:a3 error:v7];
}

- (void)_deviceStoreFrontChangedNotification
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __72__SSVSubscriptionStatusCoordinator__deviceStoreFrontChangedNotification__block_invoke;
  block[3] = &unk_1E84AC050;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (SSVSubscriptionStatus)lastKnownStatus
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__1;
  v10 = __Block_byref_object_dispose__1;
  v11 = 0;
  dispatchQueue = self->_dispatchQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __51__SSVSubscriptionStatusCoordinator_lastKnownStatus__block_invoke;
  v5[3] = &unk_1E84ABFD8;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(dispatchQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __51__SSVSubscriptionStatusCoordinator_lastKnownStatus__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 40))
  {
    v3 = [v2 _copyValidStatusForStatus:?];
    v4 = *(*(a1 + 40) + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;
  }

  else
  {
    if (*(v2 + 24))
    {
      return;
    }

    v5 = [v2 _copyStatusFromUserDefaults];
    if (v5)
    {
      v9 = v5;
      v6 = [*(a1 + 32) _copyValidStatusForStatus:v5];
      v7 = *(*(a1 + 40) + 8);
      v8 = *(v7 + 40);
      *(v7 + 40) = v6;

      v5 = v9;
    }
  }
}

- (void)modifyLastKnownStatusUsingBlock:(id)block
{
  blockCopy = block;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __68__SSVSubscriptionStatusCoordinator_modifyLastKnownStatusUsingBlock___block_invoke;
  v7[3] = &unk_1E84AC360;
  v7[4] = self;
  v8 = blockCopy;
  v6 = blockCopy;
  dispatch_async(dispatchQueue, v7);
}

void __68__SSVSubscriptionStatusCoordinator_modifyLastKnownStatusUsingBlock___block_invoke(uint64_t a1)
{
  v6 = *(*(a1 + 32) + 40);
  (*(*(a1 + 40) + 16))();
  v2 = v6;
  if (v6)
  {
    v3 = [v6 copy];
    v4 = *(a1 + 32);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;

    v2 = v6;
  }
}

- (void)reset
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __41__SSVSubscriptionStatusCoordinator_reset__block_invoke;
  block[3] = &unk_1E84AC050;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

void __41__SSVSubscriptionStatusCoordinator_reset__block_invoke(uint64_t a1)
{
  *(*(a1 + 32) + 24) = 1;
  v2 = *(a1 + 32);
  v3 = *(v2 + 40);
  *(v2 + 40) = 0;

  v4 = *(a1 + 32);
  v5 = *(v4 + 48);
  *(v4 + 48) = 0;
}

+ (void)updateUserDefaultsWithStatus:(id)status
{
  copyUserDefaultsRepresentation = [status copyUserDefaultsRepresentation];
  if (copyUserDefaultsRepresentation)
  {
    v6 = copyUserDefaultsRepresentation;
    v4 = copyUserDefaultsRepresentation;
    CFPreferencesSetAppValue(@"FuseSubscriptionStatus", v4, @"com.apple.itunesstored");
    CFRelease(v4);
    v5 = objc_alloc_init(MEMORY[0x1E695DF00]);
    CFPreferencesSetAppValue(@"FuseSubscriptionStatusDate", v5, @"com.apple.itunesstored");
    CFRelease(v5);
    CFPreferencesAppSynchronize(@"com.apple.itunesstored");
    copyUserDefaultsRepresentation = v6;
  }
}

- (void)_invalidateLastKnownStatus
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __62__SSVSubscriptionStatusCoordinator__invalidateLastKnownStatus__block_invoke;
  block[3] = &unk_1E84AC050;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

void __62__SSVSubscriptionStatusCoordinator__invalidateLastKnownStatus__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 40);
  *(v2 + 40) = 0;

  v4 = *(a1 + 32);
  v5 = *(v4 + 48);
  *(v4 + 48) = 0;
}

- (void)_accountStoreChangedNotification
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __68__SSVSubscriptionStatusCoordinator__accountStoreChangedNotification__block_invoke;
  block[3] = &unk_1E84AC050;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

uint64_t __68__SSVSubscriptionStatusCoordinator__accountStoreChangedNotification__block_invoke(uint64_t a1)
{
  [*(a1 + 32) _validateLastKnownStatus];
  v2 = *(a1 + 32);

  return [v2 _updateSubscriptionStatusAccessPolicyAllowingNotification:1];
}

- (id)_copyStatusFromUserDefaults
{
  CFPreferencesAppSynchronize(@"com.apple.itunesstored");
  v2 = CFPreferencesCopyAppValue(@"FuseSubscriptionStatus", @"com.apple.itunesstored");
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = CFGetTypeID(v2);
  if (v4 == CFDictionaryGetTypeID())
  {
    v5 = [[SSVSubscriptionStatus alloc] initWithUserDefaultsRepresentation:v3];
  }

  else
  {
    v5 = 0;
  }

  CFRelease(v3);
  return v5;
}

- (id)_copyStatusDateFromUserDefaults
{
  CFPreferencesAppSynchronize(@"com.apple.itunesstored");
  v2 = CFPreferencesCopyAppValue(@"FuseSubscriptionStatusDate", @"com.apple.itunesstored");
  v3 = v2;
  if (v2)
  {
    v4 = CFGetTypeID(v2);
    if (v4 != CFDateGetTypeID())
    {
      CFRelease(v3);
      return 0;
    }
  }

  return v3;
}

- (id)_copyValidStatusForStatus:(id)status
{
  statusCopy = status;
  if (statusCopy)
  {
    v4 = +[SSAccountStore defaultStore];
    activeAccount = [v4 activeAccount];
    uniqueIdentifier = [activeAccount uniqueIdentifier];

    accountIdentifier = [statusCopy accountIdentifier];
    v8 = accountIdentifier;
    if (uniqueIdentifier == accountIdentifier)
    {
      v9 = 1;
    }

    else if (accountIdentifier)
    {
      v9 = [uniqueIdentifier isEqualToNumber:accountIdentifier];
    }

    else
    {
      v9 = 0;
    }

    v11 = +[SSVTelephonyController sharedController];
    if (([v11 isPhoneNumberAccessRestricted] & 1) == 0)
    {
      phoneNumber = [v11 phoneNumber];
      phoneNumber2 = [statusCopy phoneNumber];
      v14 = phoneNumber2;
      if (phoneNumber != phoneNumber2)
      {
        if (phoneNumber2)
        {
          v15 = [phoneNumber isEqualToString:phoneNumber2];
        }

        else
        {
          v15 = 0;
        }

        if (((v9 | v15) & 1) == 0)
        {
          v10 = 0;
LABEL_21:

          goto LABEL_22;
        }

LABEL_14:
        v16 = [statusCopy copy];
        v10 = v16;
        if ((v9 & 1) == 0)
        {
          [v16 resetAccountBasedProperties];
        }

        if ((v15 & 1) == 0)
        {
          [v10 resetCarrierBundlingProperties];
        }

        goto LABEL_21;
      }
    }

    LOBYTE(v15) = 1;
    goto LABEL_14;
  }

  v10 = 0;
LABEL_22:

  return v10;
}

- (void)_externalChangeNotification
{
  lastKnownStatus = self->_lastKnownStatus;
  if (lastKnownStatus)
  {
    self->_didReset = 0;
    self->_lastKnownStatus = 0;

    lastStatusDate = self->_lastStatusDate;
    self->_lastStatusDate = 0;
  }

  callbackQueue = self->_callbackQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __63__SSVSubscriptionStatusCoordinator__externalChangeNotification__block_invoke;
  block[3] = &unk_1E84AC050;
  block[4] = self;
  dispatch_async(callbackQueue, block);
}

void __63__SSVSubscriptionStatusCoordinator__externalChangeNotification__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E696AD88] defaultCenter];
  [v2 postNotificationName:@"SSVSubscriptionStatusDidChangeNotification" object:*(a1 + 32)];
}

- (void)_fireStatusBlocksWithStatus:(id)status isFinal:(BOOL)final error:(id)error
{
  finalCopy = final;
  statusCopy = status;
  errorCopy = error;
  v10 = [(NSMutableArray *)self->_statusBlocks copy];
  if (finalCopy)
  {
    [(NSMutableArray *)self->_statusBlocks removeAllObjects];
  }

  if ([v10 count])
  {
    callbackQueue = self->_callbackQueue;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __78__SSVSubscriptionStatusCoordinator__fireStatusBlocksWithStatus_isFinal_error___block_invoke;
    v12[3] = &unk_1E84ACFF8;
    v13 = v10;
    v14 = statusCopy;
    v16 = finalCopy;
    v15 = errorCopy;
    dispatch_async(callbackQueue, v12);
  }
}

void __78__SSVSubscriptionStatusCoordinator__fireStatusBlocksWithStatus_isFinal_error___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v6 = 0u;
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v1 = *(a1 + 32);
  v2 = [v1 countByEnumeratingWithState:&v6 objects:v10 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v7;
    do
    {
      v5 = 0;
      do
      {
        if (*v7 != v4)
        {
          objc_enumerationMutation(v1);
        }

        (*(*(*(&v6 + 1) + 8 * v5) + 16))(*(*(&v6 + 1) + 8 * v5));
        ++v5;
      }

      while (v3 != v5);
      v3 = [v1 countByEnumeratingWithState:&v6 objects:v10 count:16];
    }

    while (v3);
  }
}

- (void)_handleRequestResponseWithStatus:(id)status isFinal:(BOOL)final error:(id)error
{
  statusCopy = status;
  errorCopy = error;
  dispatchQueue = self->_dispatchQueue;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __83__SSVSubscriptionStatusCoordinator__handleRequestResponseWithStatus_isFinal_error___block_invoke;
  v13[3] = &unk_1E84ACFF8;
  finalCopy = final;
  v14 = statusCopy;
  selfCopy = self;
  v16 = errorCopy;
  v11 = errorCopy;
  v12 = statusCopy;
  dispatch_async(dispatchQueue, v13);
}

uint64_t __83__SSVSubscriptionStatusCoordinator__handleRequestResponseWithStatus_isFinal_error___block_invoke(uint64_t a1)
{
  if (*(a1 + 56) == 1)
  {
    if (*(a1 + 32))
    {
      *(*(a1 + 40) + 24) = 0;
      objc_storeStrong((*(a1 + 40) + 40), *(a1 + 32));
      v2 = [MEMORY[0x1E695DF00] date];
      v3 = *(a1 + 40);
      v4 = *(v3 + 48);
      *(v3 + 48) = v2;
    }

    v5 = *(a1 + 40);
    v6 = *(v5 + 8);
    *(v5 + 8) = 0;

    v7 = *(a1 + 56);
  }

  else
  {
    v7 = 0;
  }

  v9 = *(a1 + 32);
  v8 = *(a1 + 40);
  v10 = *(a1 + 48);

  return [v8 _fireStatusBlocksWithStatus:v9 isFinal:v7 & 1 error:v10];
}

- (void)_updateSubscriptionStatusAccessPolicyAllowingNotification:(BOOL)notification
{
  notificationCopy = notification;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  v5 = [SSPrivacyController shouldDisplayPrivacyLinkWithIdentifier:@"com.apple.onboarding.applemusic"];
  if (self->_subscriptionStatusAccessPolicy != v5)
  {
    self->_subscriptionStatusAccessPolicy = v5;
    if (notificationCopy)
    {
      callbackQueue = self->_callbackQueue;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __94__SSVSubscriptionStatusCoordinator__updateSubscriptionStatusAccessPolicyAllowingNotification___block_invoke;
      block[3] = &unk_1E84AC050;
      block[4] = self;
      dispatch_async(callbackQueue, block);
    }
  }
}

void __94__SSVSubscriptionStatusCoordinator__updateSubscriptionStatusAccessPolicyAllowingNotification___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E696AD88] defaultCenter];
  [v2 postNotificationName:@"SSVSubscriptionStatusAccessPolicyDidChangeNotification" object:*(a1 + 32)];
}

- (void)_validateLastKnownStatus
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (self->_lastKnownStatus)
  {
    v3 = [(SSVSubscriptionStatusCoordinator *)self _copyValidStatusForStatus:?];
    lastKnownStatus = self->_lastKnownStatus;
    self->_lastKnownStatus = v3;

    if (!self->_lastKnownStatus)
    {
      lastStatusDate = self->_lastStatusDate;
      self->_lastStatusDate = 0;
    }
  }
}

+ (void)beginSuspendingSubscriptionStatusChangeNotifications
{
  _changeNotificationSuspensionAccessQueue = [self _changeNotificationSuspensionAccessQueue];
  dispatch_sync(_changeNotificationSuspensionAccessQueue, &__block_literal_global_36);
}

+ (void)endSuspendingSubscriptionStatusChangeNotifications
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  _changeNotificationSuspensionAccessQueue = [self _changeNotificationSuspensionAccessQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __95__SSVSubscriptionStatusCoordinator_Private__endSuspendingSubscriptionStatusChangeNotifications__block_invoke;
  block[3] = &unk_1E84AC2A8;
  block[4] = &v5;
  dispatch_sync(_changeNotificationSuspensionAccessQueue, block);

  if (*(v6 + 24) == 1)
  {
    [self _sendChangeNotification];
  }

  _Block_object_dispose(&v5, 8);
}

uint64_t __95__SSVSubscriptionStatusCoordinator_Private__endSuspendingSubscriptionStatusChangeNotifications__block_invoke(uint64_t result)
{
  if (!--_SSVSubscriptionStatusChangeNotificationSuspensionCount)
  {
    v1 = _SSVSubscriptionStatusChangeNotificationWasDeferred;
    if (_SSVSubscriptionStatusChangeNotificationWasDeferred == 1)
    {
      _SSVSubscriptionStatusChangeNotificationWasDeferred = 0;
      *(*(*(result + 32) + 8) + 24) = v1;
    }
  }

  return result;
}

+ (void)removeUserDefaultsForAccountIdentifier:(id)identifier
{
  identifierCopy = identifier;
  copyStatusFromUserDefaults = [self copyStatusFromUserDefaults];
  accountIdentifier = [copyStatusFromUserDefaults accountIdentifier];
  if (identifierCopy && accountIdentifier && [identifierCopy isEqual:accountIdentifier])
  {
    [copyStatusFromUserDefaults resetAccountBasedProperties];
    [self updateUserDefaultsWithStatus:copyStatusFromUserDefaults];
  }
}

+ (void)sendChangeNotification
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  _changeNotificationSuspensionAccessQueue = [self _changeNotificationSuspensionAccessQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __67__SSVSubscriptionStatusCoordinator_Private__sendChangeNotification__block_invoke;
  block[3] = &unk_1E84AC2A8;
  block[4] = &v5;
  dispatch_sync(_changeNotificationSuspensionAccessQueue, block);

  if (*(v6 + 24) == 1)
  {
    [self _sendChangeNotification];
  }

  _Block_object_dispose(&v5, 8);
}

uint64_t __67__SSVSubscriptionStatusCoordinator_Private__sendChangeNotification__block_invoke(uint64_t result)
{
  if (_SSVSubscriptionStatusChangeNotificationSuspensionCount)
  {
    _SSVSubscriptionStatusChangeNotificationWasDeferred = 1;
  }

  else
  {
    *(*(*(result + 32) + 8) + 24) = 1;
  }

  return result;
}

+ (void)updateWithResponseDictionary:(id)dictionary accountIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v6 = [dictionary objectForKey:@"subscriptionStatus"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = +[SSAccountStore defaultStore];
    activeAccount = [v7 activeAccount];
    uniqueIdentifier = [activeAccount uniqueIdentifier];

    if (uniqueIdentifier)
    {
      v10 = uniqueIdentifier == identifierCopy;
    }

    else
    {
      v10 = 1;
    }

    if (!v10 && (!identifierCopy || ![identifierCopy isEqualToNumber:uniqueIdentifier]))
    {
      goto LABEL_31;
    }

    v11 = objc_alloc_init(SSVSubscriptionStatus);
    [(SSVSubscriptionStatus *)v11 setAccountIdentifier:identifierCopy];
    [(SSVSubscriptionStatus *)v11 setValuesUsingStatusDictionary:v6];
    copyStatusFromUserDefaults = [self copyStatusFromUserDefaults];
    if (!copyStatusFromUserDefaults)
    {
      selfCopy2 = self;
      v23 = v11;
      goto LABEL_29;
    }

    accountStatus = [(SSVSubscriptionStatus *)v11 accountStatus];
    accountStatus2 = [(SSVSubscriptionStatus *)copyStatusFromUserDefaults accountStatus];
    v15 = accountStatus != accountStatus2;
    if (accountStatus != accountStatus2)
    {
      [(SSVSubscriptionStatus *)copyStatusFromUserDefaults setAccountStatus:accountStatus];
    }

    carrierBundlingStatus = [(SSVSubscriptionStatus *)v11 carrierBundlingStatus];
    if (carrierBundlingStatus != [(SSVSubscriptionStatus *)copyStatusFromUserDefaults carrierBundlingStatus])
    {
      [(SSVSubscriptionStatus *)copyStatusFromUserDefaults setCarrierBundlingStatus:carrierBundlingStatus];
      v15 = 1;
    }

    accountIdentifier = [(SSVSubscriptionStatus *)copyStatusFromUserDefaults accountIdentifier];
    if (accountIdentifier == identifierCopy)
    {
    }

    else
    {
      if (identifierCopy && ([(SSVSubscriptionStatus *)copyStatusFromUserDefaults accountIdentifier], (v18 = objc_claimAutoreleasedReturnValue()) != 0))
      {
        v19 = v18;
        accountIdentifier2 = [(SSVSubscriptionStatus *)copyStatusFromUserDefaults accountIdentifier];
        v21 = [identifierCopy isEqualToNumber:accountIdentifier2];

        if (v21)
        {
          goto LABEL_22;
        }
      }

      else
      {
      }

      [(SSVSubscriptionStatus *)copyStatusFromUserDefaults setAccountIdentifier:identifierCopy];
      v15 = 1;
    }

LABEL_22:
    acceptedStoreTermsVersion = [(SSVSubscriptionStatus *)v11 acceptedStoreTermsVersion];
    if (acceptedStoreTermsVersion != [(SSVSubscriptionStatus *)copyStatusFromUserDefaults acceptedStoreTermsVersion])
    {
      [(SSVSubscriptionStatus *)copyStatusFromUserDefaults setAcceptedStoreTermsVersion:acceptedStoreTermsVersion];
      v15 = 1;
    }

    latestStoreTermsVersion = [(SSVSubscriptionStatus *)v11 latestStoreTermsVersion];
    if (latestStoreTermsVersion == [(SSVSubscriptionStatus *)copyStatusFromUserDefaults latestStoreTermsVersion])
    {
      if (!v15)
      {
        goto LABEL_30;
      }
    }

    else
    {
      [(SSVSubscriptionStatus *)copyStatusFromUserDefaults setLatestStoreTermsVersion:latestStoreTermsVersion];
    }

    selfCopy2 = self;
    v23 = copyStatusFromUserDefaults;
LABEL_29:
    [selfCopy2 updateUserDefaultsWithStatus:v23];
    [self sendChangeNotification];
LABEL_30:

LABEL_31:
  }
}

+ (id)_changeNotificationSuspensionAccessQueue
{
  if (_changeNotificationSuspensionAccessQueue_sOnceToken != -1)
  {
    +[SSVSubscriptionStatusCoordinator(Private) _changeNotificationSuspensionAccessQueue];
  }

  v3 = _changeNotificationSuspensionAccessQueue_sChangeNotificationSuspensionAccessQueue;

  return v3;
}

void __85__SSVSubscriptionStatusCoordinator_Private___changeNotificationSuspensionAccessQueue__block_invoke()
{
  v0 = dispatch_queue_create("com.apple.itunesstored.SSVSubscriptionStatusCoordinator.changeNotificationSuspensionAccessQueue", 0);
  v1 = _changeNotificationSuspensionAccessQueue_sChangeNotificationSuspensionAccessQueue;
  _changeNotificationSuspensionAccessQueue_sChangeNotificationSuspensionAccessQueue = v0;
}

@end