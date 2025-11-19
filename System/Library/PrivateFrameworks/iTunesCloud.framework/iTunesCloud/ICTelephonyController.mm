@interface ICTelephonyController
+ (ICTelephonyController)sharedController;
- (BOOL)_ensureTelephonyHandlesAreReady;
- (BOOL)sendSMSWithText:(id)a3 toPhoneNumber:(id)a4 error:(id *)a5;
- (NSString)IMEI;
- (NSString)mobileSubscriberCountryCode;
- (NSString)mobileSubscriberNetworkCode;
- (NSString)phoneNumber;
- (NSString)providerName;
- (id)_init;
- (id)_telephonyClient;
- (id)_telephonySubscriptionContext;
- (void)_handleActiveSubscriptionsDidChange;
- (void)_updatePhoneNumberAllowingDidChangeNotification:(BOOL)a3;
- (void)activeSubscriptionsDidChange;
- (void)dealloc;
- (void)phoneNumberAvailable:(id)a3;
- (void)phoneNumberChanged:(id)a3;
@end

@implementation ICTelephonyController

- (id)_init
{
  v11.receiver = self;
  v11.super_class = ICTelephonyController;
  v2 = [(ICTelephonyController *)&v11 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.iTunesCloud.ICTelephonyController.accessQueue", 0);
    accessQueue = v2->_accessQueue;
    v2->_accessQueue = v3;

    v5 = dispatch_queue_create("com.apple.iTunesCloud.ICTelephonyController.telephonyCallbackQueue", 0);
    telephonyCallbackQueue = v2->_telephonyCallbackQueue;
    v2->_telephonyCallbackQueue = v5;

    v7 = v2->_accessQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __30__ICTelephonyController__init__block_invoke;
    block[3] = &unk_1E7BFA300;
    v10 = v2;
    dispatch_sync(v7, block);
  }

  return v2;
}

- (BOOL)_ensureTelephonyHandlesAreReady
{
  dispatch_assert_queue_V2(self->_accessQueue);
  v3 = [(ICTelephonyController *)self _telephonyClient];
  if (v3)
  {
    v4 = [(ICTelephonyController *)self _telephonySubscriptionContext];
    v5 = v4 != 0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)_telephonyClient
{
  dispatch_assert_queue_V2(self->_accessQueue);
  telephonyClient = self->_telephonyClient;
  if (!telephonyClient)
  {
    v4 = +[ICDeviceInfo currentDeviceInfo];
    v5 = [v4 hasTelephonyCapability];

    if (v5)
    {
      v6 = [objc_alloc(MEMORY[0x1E69650A0]) initWithQueue:self->_telephonyCallbackQueue];
      v7 = self->_telephonyClient;
      self->_telephonyClient = v6;

      [(CoreTelephonyClient *)self->_telephonyClient setDelegate:self];
      telephonyClient = self->_telephonyClient;
      if (telephonyClient)
      {
        goto LABEL_10;
      }

      v8 = os_log_create("com.apple.amp.iTunesCloud", "Default");
      if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_9;
      }

      v15 = 0;
      v9 = "Failed to instantiate CoreTelephonyClient.";
      v10 = &v15;
      v11 = v8;
      v12 = OS_LOG_TYPE_ERROR;
    }

    else
    {
      v8 = os_log_create("com.apple.amp.iTunesCloud", "Default");
      if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
LABEL_9:

        telephonyClient = self->_telephonyClient;
        goto LABEL_10;
      }

      v14 = 0;
      v9 = "Current device does not have telephony capability. Skipping telephony client initialization.";
      v10 = &v14;
      v11 = v8;
      v12 = OS_LOG_TYPE_DEFAULT;
    }

    _os_log_impl(&dword_1B4491000, v11, v12, v9, v10, 2u);
    goto LABEL_9;
  }

LABEL_10:

  return telephonyClient;
}

uint64_t __41__ICTelephonyController_sharedController__block_invoke()
{
  sharedController_sSharedController = [[ICTelephonyController alloc] _init];

  return MEMORY[0x1EEE66BB8]();
}

- (id)_telephonySubscriptionContext
{
  v26 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_accessQueue);
  p_telephonySubscriptionContext = &self->_telephonySubscriptionContext;
  telephonySubscriptionContext = self->_telephonySubscriptionContext;
  if (!telephonySubscriptionContext)
  {
    v5 = [(ICTelephonyController *)self _telephonyClient];
    v6 = v5;
    if (!v5)
    {
LABEL_15:

      telephonySubscriptionContext = *p_telephonySubscriptionContext;
      goto LABEL_16;
    }

    v21 = 0;
    v7 = [v5 getUserDefaultVoiceSubscriptionContext:&v21];
    v8 = v21;
    v9 = v8;
    if (v7 || !v8)
    {
      if (!v7)
      {
        v20 = v8;
        v10 = [v6 getActiveContexts:&v20];
        v16 = v20;

        v17 = os_log_create("com.apple.amp.iTunesCloud", "Default");
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          v18 = [v10 subscriptions];
          *buf = 138543362;
          v23 = v18;
          _os_log_impl(&dword_1B4491000, v17, OS_LOG_TYPE_ERROR, "Could not find a valid telephony subscription context. Available telephony subscription contexts: %{public}@.", buf, 0xCu);
        }

        v9 = v16;
        goto LABEL_14;
      }

      objc_storeStrong(p_telephonySubscriptionContext, v7);
      v10 = os_log_create("com.apple.amp.iTunesCloud", "Default");
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v15 = [v7 slotID];
        *buf = 138543618;
        v23 = v7;
        v24 = 2048;
        v25 = v15;
        v11 = "Found telephony subscription context %{public}@ at slot %ld as the user default voice one.";
        v12 = v10;
        v13 = OS_LOG_TYPE_DEFAULT;
        v14 = 22;
        goto LABEL_10;
      }
    }

    else
    {
      v10 = os_log_create("com.apple.amp.iTunesCloud", "Default");
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v23 = v9;
        v11 = "Failed to get telephony user default voice subscription context with error: %{public}@.";
        v12 = v10;
        v13 = OS_LOG_TYPE_ERROR;
        v14 = 12;
LABEL_10:
        _os_log_impl(&dword_1B4491000, v12, v13, v11, buf, v14);
      }
    }

LABEL_14:

    goto LABEL_15;
  }

LABEL_16:

  return telephonySubscriptionContext;
}

+ (ICTelephonyController)sharedController
{
  if (sharedController_sOnceToken != -1)
  {
    dispatch_once(&sharedController_sOnceToken, &__block_literal_global_33576);
  }

  v3 = sharedController_sSharedController;

  return v3;
}

- (NSString)phoneNumber
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__33539;
  v10 = __Block_byref_object_dispose__33540;
  v11 = 0;
  accessQueue = self->_accessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __36__ICTelephonyController_phoneNumber__block_invoke;
  v5[3] = &unk_1E7BFA430;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(accessQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (void)_updatePhoneNumberAllowingDidChangeNotification:(BOOL)a3
{
  v3 = a3;
  v30 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_accessQueue);
  if ([(ICTelephonyController *)self _ensureTelephonyHandlesAreReady])
  {
    telephonyClient = self->_telephonyClient;
    telephonySubscriptionContext = self->_telephonySubscriptionContext;
    v23 = 0;
    v7 = [(CoreTelephonyClient *)telephonyClient getPhoneNumber:telephonySubscriptionContext error:&v23];
    v8 = v23;
    v9 = v8;
    if (v7)
    {
      v10 = 1;
    }

    else
    {
      v10 = v8 == 0;
    }

    if (v10)
    {
      v11 = [v7 number];
    }

    else
    {
      v12 = os_log_create("com.apple.amp.iTunesCloud", "Default");
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v25 = v9;
        _os_log_impl(&dword_1B4491000, v12, OS_LOG_TYPE_ERROR, "Failed to retrieve telephony phone number with error: %{public}@.", buf, 0xCu);
      }

      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  v14 = self->_phoneNumber;
  v15 = v14;
  if (v14 == v11)
  {
  }

  else
  {
    v16 = [(NSString *)v14 isEqual:v11];

    if ((v16 & 1) == 0)
    {
      v17 = os_log_create("com.apple.amp.iTunesCloud", "Default");
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        phoneNumber = self->_phoneNumber;
        *buf = 138412802;
        v25 = self;
        v26 = 2112;
        v27 = phoneNumber;
        v28 = 2112;
        v29 = v11;
        _os_log_impl(&dword_1B4491000, v17, OS_LOG_TYPE_DEFAULT, "%@ phone number changed from %@ to %@.", buf, 0x20u);
      }

      v19 = [(NSString *)v11 copy];
      v20 = self->_phoneNumber;
      self->_phoneNumber = v19;

      if (v3)
      {
        v21 = dispatch_get_global_queue(0, 0);
        v22[0] = MEMORY[0x1E69E9820];
        v22[1] = 3221225472;
        v22[2] = __73__ICTelephonyController__updatePhoneNumberAllowingDidChangeNotification___block_invoke;
        v22[3] = &unk_1E7BFA300;
        v22[4] = self;
        dispatch_async(v21, v22);
      }
    }
  }
}

void __73__ICTelephonyController__updatePhoneNumberAllowingDidChangeNotification___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E696AD88] defaultCenter];
  [v2 postNotificationName:@"ICTelephonyPhoneNumberDidChangeNotification" object:*(a1 + 32)];
}

- (void)_handleActiveSubscriptionsDidChange
{
  dispatch_assert_queue_V2(self->_accessQueue);
  telephonySubscriptionContext = self->_telephonySubscriptionContext;
  self->_telephonySubscriptionContext = 0;

  [(ICTelephonyController *)self _ensureTelephonyHandlesAreReady];

  [(ICTelephonyController *)self _updatePhoneNumberAllowingDidChangeNotification:1];
}

- (void)phoneNumberChanged:(id)a3
{
  v4 = os_log_create("com.apple.amp.iTunesCloud", "Default");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1B4491000, v4, OS_LOG_TYPE_DEFAULT, "Telephony phone number changed.", buf, 2u);
  }

  accessQueue = self->_accessQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __44__ICTelephonyController_phoneNumberChanged___block_invoke;
  block[3] = &unk_1E7BFA300;
  block[4] = self;
  dispatch_async(accessQueue, block);
}

- (void)phoneNumberAvailable:(id)a3
{
  v4 = os_log_create("com.apple.amp.iTunesCloud", "Default");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1B4491000, v4, OS_LOG_TYPE_DEFAULT, "Telephony phone number available.", buf, 2u);
  }

  accessQueue = self->_accessQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __46__ICTelephonyController_phoneNumberAvailable___block_invoke;
  block[3] = &unk_1E7BFA300;
  block[4] = self;
  dispatch_async(accessQueue, block);
}

- (void)activeSubscriptionsDidChange
{
  v3 = os_log_create("com.apple.amp.iTunesCloud", "Default");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1B4491000, v3, OS_LOG_TYPE_DEFAULT, "Telephony active subscriptions did change.", buf, 2u);
  }

  accessQueue = self->_accessQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __53__ICTelephonyController_activeSubscriptionsDidChange__block_invoke;
  block[3] = &unk_1E7BFA300;
  block[4] = self;
  dispatch_async(accessQueue, block);
}

- (BOOL)sendSMSWithText:(id)a3 toPhoneNumber:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v26 = 0;
  v27 = &v26;
  v28 = 0x2020000000;
  v29 = 0;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__33539;
  v24 = __Block_byref_object_dispose__33540;
  v25 = 0;
  accessQueue = self->_accessQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __61__ICTelephonyController_sendSMSWithText_toPhoneNumber_error___block_invoke;
  block[3] = &unk_1E7BF8538;
  block[4] = self;
  v11 = v9;
  v16 = v11;
  v18 = &v26;
  v12 = v8;
  v17 = v12;
  v19 = &v20;
  dispatch_sync(accessQueue, block);
  if (a5)
  {
    *a5 = v21[5];
  }

  v13 = *(v27 + 24);

  _Block_object_dispose(&v20, 8);
  _Block_object_dispose(&v26, 8);

  return v13;
}

void __61__ICTelephonyController_sendSMSWithText_toPhoneNumber_error___block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  if ([*(a1 + 32) _ensureTelephonyHandlesAreReady])
  {
    v2 = [MEMORY[0x1E6965068] phoneNumberWithDigits:objc_msgSend(*(*(a1 + 32) + 40) digits:"slotID") countryCode:{*(a1 + 40), 0}];
    v3 = [MEMORY[0x1E6965050] sharedMessageCenter];
    v4 = *(*(a1 + 32) + 40);
    v5 = *(a1 + 48);
    v6 = [v2 canonicalFormat];
    *(*(*(a1 + 56) + 8) + 24) = [v3 sendSMSWithText:v4 text:v5 serviceCenter:0 toAddress:v6];
  }

  if ((*(*(*(a1 + 56) + 8) + 24) & 1) == 0)
  {
    v7 = os_log_create("com.apple.amp.iTunesCloud", "Default");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = *(a1 + 40);
      v9 = *(*(a1 + 32) + 40);
      *buf = 138412546;
      v16 = v8;
      v17 = 2114;
      v18 = v9;
      _os_log_impl(&dword_1B4491000, v7, OS_LOG_TYPE_ERROR, "Telephony request to send SMS to %@ failed. Telephony context: %{public}@.", buf, 0x16u);
    }

    v10 = [*(*(a1 + 32) + 40) slotID];
    if (v10 > 2)
    {
      v11 = 0;
    }

    else
    {
      v11 = off_1E7BF8558[v10];
    }

    v12 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"ICError" code:-8000 debugDescription:{@"Failed to send SMS using telephony slot: %@.", v11}];
    v13 = *(*(a1 + 64) + 8);
    v14 = *(v13 + 40);
    *(v13 + 40) = v12;
  }
}

- (NSString)IMEI
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__33539;
  v10 = __Block_byref_object_dispose__33540;
  v11 = 0;
  accessQueue = self->_accessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __29__ICTelephonyController_IMEI__block_invoke;
  v5[3] = &unk_1E7BFA430;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(accessQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __29__ICTelephonyController_IMEI__block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  if ([*(a1 + 32) _ensureTelephonyHandlesAreReady])
  {
    v2 = *(a1 + 32);
    v3 = *(v2 + 32);
    v4 = *(v2 + 40);
    v12 = 0;
    v5 = [v3 getMobileEquipmentInfoFor:v4 error:&v12];
    v6 = v12;
    v7 = [v5 IMEI];
    v8 = *(*(a1 + 40) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;

    if (v5)
    {
      v10 = 1;
    }

    else
    {
      v10 = v6 == 0;
    }

    if (!v10)
    {
      v11 = os_log_create("com.apple.amp.iTunesCloud", "Default");
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v14 = v6;
        _os_log_impl(&dword_1B4491000, v11, OS_LOG_TYPE_ERROR, "Failed to retrieve telephony mobile equipment info with error: %{public}@.", buf, 0xCu);
      }
    }
  }
}

- (NSString)mobileSubscriberNetworkCode
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__33539;
  v10 = __Block_byref_object_dispose__33540;
  v11 = 0;
  accessQueue = self->_accessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __52__ICTelephonyController_mobileSubscriberNetworkCode__block_invoke;
  v5[3] = &unk_1E7BFA430;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(accessQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __52__ICTelephonyController_mobileSubscriberNetworkCode__block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  if ([*(a1 + 32) _ensureTelephonyHandlesAreReady])
  {
    v2 = *(a1 + 32);
    v3 = *(v2 + 32);
    v4 = *(v2 + 40);
    v11 = 0;
    v5 = [v3 copyMobileSubscriberNetworkCode:v4 error:&v11];
    v6 = v11;
    v7 = *(*(a1 + 40) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v5;

    if (*(*(*(a1 + 40) + 8) + 40))
    {
      v9 = 1;
    }

    else
    {
      v9 = v6 == 0;
    }

    if (!v9)
    {
      v10 = os_log_create("com.apple.amp.iTunesCloud", "Default");
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v13 = v6;
        _os_log_impl(&dword_1B4491000, v10, OS_LOG_TYPE_ERROR, "Failed to retrieve telephony mobile subscriber network code with error: %{public}@.", buf, 0xCu);
      }
    }
  }
}

- (NSString)mobileSubscriberCountryCode
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__33539;
  v10 = __Block_byref_object_dispose__33540;
  v11 = 0;
  accessQueue = self->_accessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __52__ICTelephonyController_mobileSubscriberCountryCode__block_invoke;
  v5[3] = &unk_1E7BFA430;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(accessQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __52__ICTelephonyController_mobileSubscriberCountryCode__block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  if ([*(a1 + 32) _ensureTelephonyHandlesAreReady])
  {
    v2 = *(a1 + 32);
    v3 = *(v2 + 32);
    v4 = *(v2 + 40);
    v11 = 0;
    v5 = [v3 copyMobileSubscriberCountryCode:v4 error:&v11];
    v6 = v11;
    v7 = *(*(a1 + 40) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v5;

    if (*(*(*(a1 + 40) + 8) + 40))
    {
      v9 = 1;
    }

    else
    {
      v9 = v6 == 0;
    }

    if (!v9)
    {
      v10 = os_log_create("com.apple.amp.iTunesCloud", "Default");
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v13 = v6;
        _os_log_impl(&dword_1B4491000, v10, OS_LOG_TYPE_ERROR, "Failed to retrieve telephony mobile subscriber country code with error: %{public}@.", buf, 0xCu);
      }
    }
  }
}

- (NSString)providerName
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__33539;
  v10 = __Block_byref_object_dispose__33540;
  v11 = 0;
  accessQueue = self->_accessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __37__ICTelephonyController_providerName__block_invoke;
  v5[3] = &unk_1E7BFA430;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(accessQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __37__ICTelephonyController_providerName__block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) _ensureTelephonyHandlesAreReady])
  {
    v2 = [objc_alloc(MEMORY[0x1E6964F68]) initWithBundleType:1];
    v3 = *(a1 + 32);
    v4 = *(v3 + 32);
    v5 = *(v3 + 40);
    v8 = 0;
    v6 = [v4 copyCarrierBundleValue:v5 key:@"CarrierName" bundleType:v2 error:&v8];
    v7 = v8;
    if (_NSIsNSString())
    {
      objc_storeStrong((*(*(a1 + 40) + 8) + 40), v6);
    }
  }
}

- (void)dealloc
{
  accessQueue = self->_accessQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __32__ICTelephonyController_dealloc__block_invoke;
  block[3] = &unk_1E7BFA300;
  block[4] = self;
  dispatch_sync(accessQueue, block);
  v4.receiver = self;
  v4.super_class = ICTelephonyController;
  [(ICTelephonyController *)&v4 dealloc];
}

@end