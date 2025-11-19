@interface SSVTelephonyController
+ (BOOL)_hasRequiredTelephonyEntitlement;
+ (SSVTelephonyController)sharedController;
- (BOOL)_ensureTelephonyHandlesAreReady;
- (BOOL)sendSMSWithText:(id)a3 toPhoneNumber:(id)a4 countryCode:(id)a5 error:(id *)a6;
- (NSString)IMEI;
- (NSString)mobileSubscriberCountryCode;
- (NSString)mobileSubscriberNetworkCode;
- (NSString)operatorName;
- (NSString)phoneNumber;
- (NSString)providerName;
- (NSString)registrationStatus;
- (id)_init;
- (id)_operatorName;
- (id)_phoneNumber;
- (id)_registrationStatus;
- (id)_telephonyClient;
- (id)_telephonySubscriptionContext;
- (void)_updateOperatorName;
- (void)_updatePhoneNumber;
- (void)_updateRegistrationStatus;
- (void)activeSubscriptionsDidChange;
- (void)dealloc;
- (void)displayStatusChanged:(id)a3 status:(id)a4;
- (void)operatorNameChanged:(id)a3 name:(id)a4;
- (void)phoneNumberAvailable:(id)a3;
- (void)phoneNumberChanged:(id)a3;
@end

@implementation SSVTelephonyController

+ (SSVTelephonyController)sharedController
{
  if (sharedController_sOnceToken != -1)
  {
    +[SSVTelephonyController sharedController];
  }

  v3 = sharedController_sSharedController;

  return v3;
}

void __42__SSVTelephonyController_sharedController__block_invoke()
{
  v0 = [[SSVTelephonyController alloc] _init];
  v1 = sharedController_sSharedController;
  sharedController_sSharedController = v0;
}

- (id)_init
{
  v13.receiver = self;
  v13.super_class = SSVTelephonyController;
  v2 = [(SSVTelephonyController *)&v13 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.StoreServices.SSVTelephonyController.accessQueue", 0);
    accessQueue = v2->_accessQueue;
    v2->_accessQueue = v3;

    v5 = dispatch_queue_create("com.apple.StoreServices.SSVTelephonyController.notificationQueue", 0);
    notificationQueue = v2->_notificationQueue;
    v2->_notificationQueue = v5;

    v7 = dispatch_queue_create("com.apple.StoreServices.SSVTelephonyController.telephonyCallbackQueue", 0);
    telephonyCallbackQueue = v2->_telephonyCallbackQueue;
    v2->_telephonyCallbackQueue = v7;

    v2->_hasTelephonyCapability = MGGetBoolAnswer();
    v2->_isPhoneNumberAccessRestricted = MGGetBoolAnswer();
    v9 = v2->_accessQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __31__SSVTelephonyController__init__block_invoke;
    block[3] = &unk_1E84AC050;
    v12 = v2;
    dispatch_sync(v9, block);
  }

  return v2;
}

- (void)dealloc
{
  accessQueue = self->_accessQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __33__SSVTelephonyController_dealloc__block_invoke;
  block[3] = &unk_1E84AC050;
  block[4] = self;
  dispatch_sync(accessQueue, block);
  v4.receiver = self;
  v4.super_class = SSVTelephonyController;
  [(SSVTelephonyController *)&v4 dealloc];
}

- (NSString)phoneNumber
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__31;
  v10 = __Block_byref_object_dispose__31;
  v11 = 0;
  accessQueue = self->_accessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __37__SSVTelephonyController_phoneNumber__block_invoke;
  v5[3] = &unk_1E84ABF40;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(accessQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __37__SSVTelephonyController_phoneNumber__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _phoneNumber];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (NSString)operatorName
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__31;
  v10 = __Block_byref_object_dispose__31;
  v11 = 0;
  accessQueue = self->_accessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __38__SSVTelephonyController_operatorName__block_invoke;
  v5[3] = &unk_1E84ABF40;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(accessQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __38__SSVTelephonyController_operatorName__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _operatorName];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (NSString)providerName
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__31;
  v16 = __Block_byref_object_dispose__31;
  v17 = 0;
  if (MGGetBoolAnswer())
  {
    v3 = CFPreferencesCopyAppValue(@"ISCellularOperatorName", @"com.apple.itunesstored");
    v4 = v3;
    if (v3)
    {
      v5 = CFGetTypeID(v3);
      if (v5 == CFStringGetTypeID())
      {
        v6 = v13[5];
        v13[5] = v4;
      }

      else
      {
        CFRelease(v4);
      }
    }
  }

  v7 = v13[5];
  if (!v7)
  {
    accessQueue = self->_accessQueue;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __38__SSVTelephonyController_providerName__block_invoke;
    v11[3] = &unk_1E84ABFD8;
    v11[4] = self;
    v11[5] = &v12;
    dispatch_sync(accessQueue, v11);
    v7 = v13[5];
  }

  v9 = v7;
  _Block_object_dispose(&v12, 8);

  return v9;
}

void __38__SSVTelephonyController_providerName__block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) _ensureTelephonyHandlesAreReady])
  {
    v2 = [objc_alloc(MEMORY[0x1E6964F68]) initWithBundleType:1];
    v3 = *(a1 + 32);
    v4 = *(v3 + 64);
    v5 = *(v3 + 72);
    v8 = 0;
    v6 = [v4 copyCarrierBundleValue:v5 key:@"CarrierName" bundleType:v2 error:&v8];
    v7 = v8;
    if ([v6 isNSString])
    {
      objc_storeStrong((*(*(a1 + 40) + 8) + 40), v6);
    }
  }
}

- (NSString)mobileSubscriberCountryCode
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__31;
  v10 = __Block_byref_object_dispose__31;
  v11 = 0;
  accessQueue = self->_accessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __53__SSVTelephonyController_mobileSubscriberCountryCode__block_invoke;
  v5[3] = &unk_1E84ABFD8;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(accessQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __53__SSVTelephonyController_mobileSubscriberCountryCode__block_invoke(uint64_t a1)
{
  v29 = *MEMORY[0x1E69E9840];
  if ([*(a1 + 32) _ensureTelephonyHandlesAreReady])
  {
    v2 = *(a1 + 32);
    v3 = *(v2 + 64);
    v4 = *(v2 + 72);
    v24 = 0;
    v5 = [v3 copyMobileSubscriberCountryCode:v4 error:&v24];
    v6 = v24;
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

    if (v9)
    {
      goto LABEL_18;
    }

    v10 = +[SSLogConfig sharedStoreServicesConfig];
    if (!v10)
    {
      v10 = +[SSLogConfig sharedConfig];
    }

    v11 = [v10 shouldLog];
    if ([v10 shouldLogToDisk])
    {
      v12 = v11 | 2;
    }

    else
    {
      v12 = v11;
    }

    v13 = [v10 OSLogObject];
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v12 &= 2u;
    }

    if (v12)
    {
      v14 = objc_opt_class();
      v25 = 138543618;
      v26 = v14;
      v27 = 2114;
      v28 = v6;
      v15 = v14;
      LODWORD(v23) = 22;
      v16 = _os_log_send_and_compose_impl();

      if (!v16)
      {
LABEL_17:

LABEL_18:
        return;
      }

      v13 = [MEMORY[0x1E696AEC0] stringWithCString:v16 encoding:{4, &v25, v23}];
      free(v16);
      SSFileLog(v10, @"%@", v17, v18, v19, v20, v21, v22, v13);
    }

    goto LABEL_17;
  }
}

- (NSString)mobileSubscriberNetworkCode
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__31;
  v10 = __Block_byref_object_dispose__31;
  v11 = 0;
  accessQueue = self->_accessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __53__SSVTelephonyController_mobileSubscriberNetworkCode__block_invoke;
  v5[3] = &unk_1E84ABFD8;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(accessQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __53__SSVTelephonyController_mobileSubscriberNetworkCode__block_invoke(uint64_t a1)
{
  v29 = *MEMORY[0x1E69E9840];
  if ([*(a1 + 32) _ensureTelephonyHandlesAreReady])
  {
    v2 = *(a1 + 32);
    v3 = *(v2 + 64);
    v4 = *(v2 + 72);
    v24 = 0;
    v5 = [v3 copyMobileSubscriberNetworkCode:v4 error:&v24];
    v6 = v24;
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

    if (v9)
    {
      goto LABEL_18;
    }

    v10 = +[SSLogConfig sharedStoreServicesConfig];
    if (!v10)
    {
      v10 = +[SSLogConfig sharedConfig];
    }

    v11 = [v10 shouldLog];
    if ([v10 shouldLogToDisk])
    {
      v12 = v11 | 2;
    }

    else
    {
      v12 = v11;
    }

    v13 = [v10 OSLogObject];
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v12 &= 2u;
    }

    if (v12)
    {
      v14 = objc_opt_class();
      v25 = 138543618;
      v26 = v14;
      v27 = 2114;
      v28 = v6;
      v15 = v14;
      LODWORD(v23) = 22;
      v16 = _os_log_send_and_compose_impl();

      if (!v16)
      {
LABEL_17:

LABEL_18:
        return;
      }

      v13 = [MEMORY[0x1E696AEC0] stringWithCString:v16 encoding:{4, &v25, v23}];
      free(v16);
      SSFileLog(v10, @"%@", v17, v18, v19, v20, v21, v22, v13);
    }

    goto LABEL_17;
  }
}

- (NSString)registrationStatus
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__31;
  v10 = __Block_byref_object_dispose__31;
  v11 = 0;
  accessQueue = self->_accessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __44__SSVTelephonyController_registrationStatus__block_invoke;
  v5[3] = &unk_1E84ABF40;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(accessQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __44__SSVTelephonyController_registrationStatus__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _registrationStatus];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (NSString)IMEI
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__31;
  v10 = __Block_byref_object_dispose__31;
  v11 = 0;
  accessQueue = self->_accessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __30__SSVTelephonyController_IMEI__block_invoke;
  v5[3] = &unk_1E84ABFD8;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(accessQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __30__SSVTelephonyController_IMEI__block_invoke(uint64_t a1)
{
  v30 = *MEMORY[0x1E69E9840];
  if ([*(a1 + 32) _ensureTelephonyHandlesAreReady])
  {
    v2 = *(a1 + 32);
    v3 = *(v2 + 64);
    v4 = *(v2 + 72);
    v25 = 0;
    v5 = [v3 getMobileEquipmentInfoFor:v4 error:&v25];
    v6 = v25;
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

    if (v10)
    {
      goto LABEL_18;
    }

    v11 = +[SSLogConfig sharedStoreServicesConfig];
    if (!v11)
    {
      v11 = +[SSLogConfig sharedConfig];
    }

    v12 = [v11 shouldLog];
    if ([v11 shouldLogToDisk])
    {
      v13 = v12 | 2;
    }

    else
    {
      v13 = v12;
    }

    v14 = [v11 OSLogObject];
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v13 &= 2u;
    }

    if (v13)
    {
      v15 = objc_opt_class();
      v26 = 138543618;
      v27 = v15;
      v28 = 2114;
      v29 = v6;
      v16 = v15;
      LODWORD(v24) = 22;
      v17 = _os_log_send_and_compose_impl();

      if (!v17)
      {
LABEL_17:

LABEL_18:
        return;
      }

      v14 = [MEMORY[0x1E696AEC0] stringWithCString:v17 encoding:{4, &v26, v24}];
      free(v17);
      SSFileLog(v11, @"%@", v18, v19, v20, v21, v22, v23, v14);
    }

    goto LABEL_17;
  }
}

- (BOOL)sendSMSWithText:(id)a3 toPhoneNumber:(id)a4 countryCode:(id)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v31 = 0;
  v32 = &v31;
  v33 = 0x2020000000;
  v34 = 0;
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = __Block_byref_object_copy__31;
  v29 = __Block_byref_object_dispose__31;
  v30 = 0;
  accessQueue = self->_accessQueue;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __74__SSVTelephonyController_sendSMSWithText_toPhoneNumber_countryCode_error___block_invoke;
  v19[3] = &unk_1E84B0700;
  v19[4] = self;
  v14 = v11;
  v20 = v14;
  v15 = v12;
  v21 = v15;
  v23 = &v31;
  v16 = v10;
  v22 = v16;
  v24 = &v25;
  dispatch_sync(accessQueue, v19);
  if (a6)
  {
    *a6 = v26[5];
  }

  v17 = *(v32 + 24);

  _Block_object_dispose(&v25, 8);
  _Block_object_dispose(&v31, 8);

  return v17;
}

void __74__SSVTelephonyController_sendSMSWithText_toPhoneNumber_countryCode_error___block_invoke(uint64_t a1)
{
  v39 = *MEMORY[0x1E69E9840];
  if ([*(a1 + 32) _ensureTelephonyHandlesAreReady])
  {
    v2 = [MEMORY[0x1E6965068] phoneNumberWithDigits:objc_msgSend(*(*(a1 + 32) + 72) digits:"slotID") countryCode:{*(a1 + 40), *(a1 + 48)}];
    v3 = [MEMORY[0x1E6965050] sharedMessageCenter];
    v4 = *(*(a1 + 32) + 72);
    v5 = *(a1 + 56);
    v6 = [v2 canonicalFormat];
    *(*(*(a1 + 64) + 8) + 24) = [v3 sendSMSWithText:v4 text:v5 serviceCenter:0 toAddress:v6];
  }

  if ((*(*(*(a1 + 64) + 8) + 24) & 1) == 0)
  {
    v7 = +[SSLogConfig sharedStoreServicesConfig];
    if (!v7)
    {
      v7 = +[SSLogConfig sharedConfig];
    }

    v8 = [v7 shouldLog];
    if ([v7 shouldLogToDisk])
    {
      v9 = v8 | 2;
    }

    else
    {
      v9 = v8;
    }

    v10 = [v7 OSLogObject];
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v9 &= 2u;
    }

    if (v9)
    {
      v11 = objc_opt_class();
      v12 = *(a1 + 40);
      v13 = *(*(a1 + 32) + 72);
      v33 = 138543874;
      v34 = v11;
      v35 = 2112;
      v36 = v12;
      v37 = 2114;
      v38 = v13;
      v14 = v11;
      LODWORD(v30) = 32;
      v15 = _os_log_send_and_compose_impl();

      if (!v15)
      {
LABEL_15:

        v22 = [*(*(a1 + 32) + 72) slotID];
        if (v22 > 2)
        {
          v23 = 0;
        }

        else
        {
          v23 = off_1E84B0720[v22];
        }

        v24 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to send SMS using telephony slot: %@.", v23];
        v25 = MEMORY[0x1E696ABC0];
        v31 = *MEMORY[0x1E696A578];
        v32 = v24;
        v26 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v32 forKeys:&v31 count:1];
        v27 = [v25 errorWithDomain:@"SSErrorDomain" code:720 userInfo:v26];
        v28 = *(*(a1 + 72) + 8);
        v29 = *(v28 + 40);
        *(v28 + 40) = v27;

        return;
      }

      v10 = [MEMORY[0x1E696AEC0] stringWithCString:v15 encoding:{4, &v33, v30}];
      free(v15);
      SSFileLog(v7, @"%@", v16, v17, v18, v19, v20, v21, v10);
    }

    goto LABEL_15;
  }
}

- (void)activeSubscriptionsDidChange
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = +[SSLogConfig sharedStoreServicesConfig];
  if (!v3)
  {
    v3 = +[SSLogConfig sharedConfig];
  }

  v4 = [v3 shouldLog];
  if ([v3 shouldLogToDisk])
  {
    v5 = v4 | 2;
  }

  else
  {
    v5 = v4;
  }

  v6 = [v3 OSLogObject];
  if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v5 &= 2u;
  }

  if (!v5)
  {
    goto LABEL_11;
  }

  v18 = 138543362;
  v19 = objc_opt_class();
  v7 = v19;
  LODWORD(v16) = 12;
  v8 = _os_log_send_and_compose_impl();

  if (v8)
  {
    v6 = [MEMORY[0x1E696AEC0] stringWithCString:v8 encoding:{4, &v18, v16}];
    free(v8);
    SSFileLog(v3, @"%@", v9, v10, v11, v12, v13, v14, v6);
LABEL_11:
  }

  accessQueue = self->_accessQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __54__SSVTelephonyController_activeSubscriptionsDidChange__block_invoke;
  block[3] = &unk_1E84AC050;
  block[4] = self;
  dispatch_async(accessQueue, block);
}

uint64_t __54__SSVTelephonyController_activeSubscriptionsDidChange__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 72);
  *(v2 + 72) = 0;

  v4 = *(a1 + 32);

  return [v4 _ensureTelephonyHandlesAreReady];
}

- (void)displayStatusChanged:(id)a3 status:(id)a4
{
  accessQueue = self->_accessQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __54__SSVTelephonyController_displayStatusChanged_status___block_invoke;
  block[3] = &unk_1E84AC050;
  block[4] = self;
  dispatch_async(accessQueue, block);
}

- (void)operatorNameChanged:(id)a3 name:(id)a4
{
  accessQueue = self->_accessQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __51__SSVTelephonyController_operatorNameChanged_name___block_invoke;
  block[3] = &unk_1E84AC050;
  block[4] = self;
  dispatch_async(accessQueue, block);
}

- (void)phoneNumberAvailable:(id)a3
{
  accessQueue = self->_accessQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __47__SSVTelephonyController_phoneNumberAvailable___block_invoke;
  block[3] = &unk_1E84AC050;
  block[4] = self;
  dispatch_async(accessQueue, block);
}

- (void)phoneNumberChanged:(id)a3
{
  accessQueue = self->_accessQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __45__SSVTelephonyController_phoneNumberChanged___block_invoke;
  block[3] = &unk_1E84AC050;
  block[4] = self;
  dispatch_async(accessQueue, block);
}

+ (BOOL)_hasRequiredTelephonyEntitlement
{
  if (_hasRequiredTelephonyEntitlement_sOnceToken != -1)
  {
    +[SSVTelephonyController _hasRequiredTelephonyEntitlement];
  }

  return _hasRequiredTelephonyEntitlement_sHasRequiredTelephonyEntitlement;
}

void __58__SSVTelephonyController__hasRequiredTelephonyEntitlement__block_invoke()
{
  v0 = SecTaskCreateFromSelf(0);
  if (v0)
  {
    v1 = v0;
    error = 0;
    v2 = SecTaskCopyValueForEntitlement(v0, @"com.apple.CommCenter.fine-grained", &error);
    if (v2)
    {
      v3 = v2;
      v4 = CFGetTypeID(v2);
      if (v4 == CFArrayGetTypeID())
      {
        _hasRequiredTelephonyEntitlement_sHasRequiredTelephonyEntitlement = [v3 containsObject:@"spi"];
      }

      CFRelease(v3);
    }

    if (error)
    {
      CFRelease(error);
    }

    CFRelease(v1);
  }
}

- (BOOL)_ensureTelephonyHandlesAreReady
{
  dispatch_assert_queue_V2(self->_accessQueue);
  v3 = [(SSVTelephonyController *)self _telephonyClient];
  if (v3)
  {
    v4 = [(SSVTelephonyController *)self _telephonySubscriptionContext];
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
  v32 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_accessQueue);
  if (!self->_telephonyClient)
  {
    if (self->_hasTelephonyCapability)
    {
      if (![objc_opt_class() _hasRequiredTelephonyEntitlement])
      {
        v5 = +[SSLogConfig sharedStoreServicesConfig];
        if (!v5)
        {
          v5 = +[SSLogConfig sharedConfig];
        }

        v13 = [v5 shouldLog];
        if ([v5 shouldLogToDisk])
        {
          v14 = v13 | 2;
        }

        else
        {
          v14 = v13;
        }

        v8 = [v5 OSLogObject];
        if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          v14 &= 2u;
        }

        if (!v14)
        {
          goto LABEL_34;
        }

        v15 = objc_opt_class();
        v16 = MEMORY[0x1E696AE30];
        v17 = v15;
        v18 = [v16 processInfo];
        [v18 processName];
        v28 = 138543618;
        v29 = v15;
        v31 = v30 = 2114;
        LODWORD(v27) = 22;
        v12 = _os_log_send_and_compose_impl();

LABEL_32:
        if (!v12)
        {
LABEL_35:

          goto LABEL_36;
        }

        v8 = [MEMORY[0x1E696AEC0] stringWithCString:v12 encoding:{4, &v28, v27}];
        free(v12);
        SSFileLog(v5, @"%@", v19, v20, v21, v22, v23, v24, v8);
LABEL_34:

        goto LABEL_35;
      }

      v3 = [objc_alloc(MEMORY[0x1E69650A0]) initWithQueue:self->_telephonyCallbackQueue];
      telephonyClient = self->_telephonyClient;
      self->_telephonyClient = v3;

      [(CoreTelephonyClient *)self->_telephonyClient setDelegate:self];
      if (self->_telephonyClient)
      {
        goto LABEL_36;
      }

      v5 = +[SSLogConfig sharedStoreServicesConfig];
      if (!v5)
      {
        v5 = +[SSLogConfig sharedConfig];
      }

      v6 = [v5 shouldLog];
      if ([v5 shouldLogToDisk])
      {
        v7 = v6 | 2;
      }

      else
      {
        v7 = v6;
      }

      v8 = [v5 OSLogObject];
      if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v7 &= 2u;
      }

      if (!v7)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v5 = +[SSLogConfig sharedStoreServicesConfig];
      if (!v5)
      {
        v5 = +[SSLogConfig sharedConfig];
      }

      v9 = [v5 shouldLog];
      if ([v5 shouldLogToDisk])
      {
        v10 = v9 | 2;
      }

      else
      {
        v10 = v9;
      }

      v8 = [v5 OSLogObject];
      if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v10 &= 2u;
      }

      if (!v10)
      {
        goto LABEL_34;
      }
    }

    v28 = 138543362;
    v29 = objc_opt_class();
    v11 = v29;
    LODWORD(v27) = 12;
    v12 = _os_log_send_and_compose_impl();

    goto LABEL_32;
  }

LABEL_36:
  v25 = self->_telephonyClient;

  return v25;
}

- (id)_telephonySubscriptionContext
{
  v51 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_accessQueue);
  p_telephonySubscriptionContext = &self->_telephonySubscriptionContext;
  telephonySubscriptionContext = self->_telephonySubscriptionContext;
  if (!telephonySubscriptionContext)
  {
    v5 = [(SSVTelephonyController *)self _telephonyClient];
    v6 = v5;
    if (!v5)
    {
LABEL_29:

      telephonySubscriptionContext = *p_telephonySubscriptionContext;
      goto LABEL_30;
    }

    v44 = 0;
    v7 = [v5 getUserDefaultVoiceSubscriptionContext:&v44];
    v8 = v44;
    v9 = v8;
    if (v7 || !v8)
    {
      if (!v7)
      {
        v43 = v8;
        v10 = [v6 getActiveContexts:&v43];
        v27 = v43;

        v13 = +[SSLogConfig sharedStoreServicesConfig];
        if (!v13)
        {
          v13 = +[SSLogConfig sharedConfig];
        }

        v29 = [v13 shouldLog];
        if ([v13 shouldLogToDisk])
        {
          v30 = v29 | 2;
        }

        else
        {
          v30 = v29;
        }

        v31 = [v13 OSLogObject];
        if (!os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
        {
          v30 &= 2u;
        }

        if (v30)
        {
          v32 = objc_opt_class();
          v42 = v32;
          v33 = [v10 subscriptions];
          v45 = 138543618;
          v46 = v32;
          v47 = 2114;
          v48 = v33;
          LODWORD(v41) = 22;
          v34 = _os_log_send_and_compose_impl();

          if (!v34)
          {
            goto LABEL_27;
          }

          v31 = [MEMORY[0x1E696AEC0] stringWithCString:v34 encoding:{4, &v45, v41}];
          free(v34);
          SSFileLog(v13, @"%@", v35, v36, v37, v38, v39, v40, v31);
        }

        goto LABEL_27;
      }

      objc_storeStrong(&self->_telephonySubscriptionContext, v7);
      v10 = +[SSLogConfig sharedStoreServicesConfig];
      if (!v10)
      {
        v10 = +[SSLogConfig sharedConfig];
      }

      v16 = [v10 shouldLog];
      if ([v10 shouldLogToDisk])
      {
        v17 = v16 | 2;
      }

      else
      {
        v17 = v16;
      }

      v13 = [v10 OSLogObject];
      if (!os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v17 &= 2u;
      }

      if (v17)
      {
        v18 = objc_opt_class();
        v15 = v18;
        v19 = [v7 slotID];
        v45 = 138543874;
        v46 = v18;
        v47 = 2114;
        v48 = v7;
        v49 = 2048;
        v50 = v19;
        LODWORD(v41) = 32;
        goto LABEL_24;
      }
    }

    else
    {
      v10 = +[SSLogConfig sharedStoreServicesConfig];
      if (!v10)
      {
        v10 = +[SSLogConfig sharedConfig];
      }

      v11 = [v10 shouldLog];
      if ([v10 shouldLogToDisk])
      {
        v12 = v11 | 2;
      }

      else
      {
        v12 = v11;
      }

      v13 = [v10 OSLogObject];
      if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v12 &= 2u;
      }

      if (v12)
      {
        v14 = objc_opt_class();
        v45 = 138543618;
        v46 = v14;
        v47 = 2114;
        v48 = v9;
        v15 = v14;
        LODWORD(v41) = 22;
LABEL_24:
        v20 = _os_log_send_and_compose_impl();

        if (!v20)
        {
LABEL_28:

          goto LABEL_29;
        }

        v13 = [MEMORY[0x1E696AEC0] stringWithCString:v20 encoding:{4, &v45, v41}];
        free(v20);
        SSFileLog(v10, @"%@", v21, v22, v23, v24, v25, v26, v13);
      }
    }

    v27 = v9;
LABEL_27:

    v9 = v27;
    goto LABEL_28;
  }

LABEL_30:

  return telephonySubscriptionContext;
}

- (id)_phoneNumber
{
  v34 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_accessQueue);
  if (self->_hasTelephonyCapability && !self->_phoneNumber)
  {
    if (MGGetBoolAnswer())
    {
      v3 = CFPreferencesCopyAppValue(@"ISPhoneNumber", @"com.apple.itunesstored");
      if (v3)
      {
        v4 = v3;
        v5 = CFGetTypeID(v3);
        if (v5 == CFStringGetTypeID())
        {
          phoneNumber = self->_phoneNumber;
          self->_phoneNumber = v4;
        }

        else
        {
          CFRelease(v4);
        }
      }
    }

    if (!self->_phoneNumber && [(SSVTelephonyController *)self _ensureTelephonyHandlesAreReady])
    {
      telephonyClient = self->_telephonyClient;
      telephonySubscriptionContext = self->_telephonySubscriptionContext;
      v29 = 0;
      v9 = [(CoreTelephonyClient *)telephonyClient getPhoneNumber:telephonySubscriptionContext error:&v29];
      v10 = v29;
      v11 = v10;
      if (v9 || !v10)
      {
        v25 = [v9 number];
        v12 = self->_phoneNumber;
        self->_phoneNumber = v25;
        goto LABEL_24;
      }

      v12 = +[SSLogConfig sharedStoreServicesConfig];
      if (!v12)
      {
        v12 = +[SSLogConfig sharedConfig];
      }

      v13 = [v12 shouldLog];
      if ([v12 shouldLogToDisk])
      {
        v14 = v13 | 2;
      }

      else
      {
        v14 = v13;
      }

      v15 = [v12 OSLogObject];
      if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v14 &= 2u;
      }

      if (v14)
      {
        v16 = objc_opt_class();
        v30 = 138543618;
        v31 = v16;
        v32 = 2114;
        v33 = v11;
        v17 = v16;
        LODWORD(v28) = 22;
        v18 = _os_log_send_and_compose_impl();

        if (!v18)
        {
LABEL_24:

          goto LABEL_25;
        }

        v15 = [MEMORY[0x1E696AEC0] stringWithCString:v18 encoding:{4, &v30, v28}];
        free(v18);
        SSFileLog(v12, @"%@", v19, v20, v21, v22, v23, v24, v15);
      }

      goto LABEL_24;
    }
  }

LABEL_25:
  v26 = self->_phoneNumber;

  return v26;
}

- (void)_updatePhoneNumber
{
  dispatch_assert_queue_V2(self->_accessQueue);
  if (self->_isPhoneNumberAccessRestricted)
  {
LABEL_4:
    notificationQueue = self->_notificationQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __44__SSVTelephonyController__updatePhoneNumber__block_invoke;
    block[3] = &unk_1E84AC050;
    block[4] = self;
    dispatch_async(notificationQueue, block);
    return;
  }

  v7 = self->_phoneNumber;
  phoneNumber = self->_phoneNumber;
  self->_phoneNumber = 0;

  v4 = [(SSVTelephonyController *)self _phoneNumber];
  if (v7 != v4)
  {
    v5 = [(NSString *)v7 isEqualToString:v4];

    if (v5)
    {
      return;
    }

    goto LABEL_4;
  }
}

void __44__SSVTelephonyController__updatePhoneNumber__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E696AD88] defaultCenter];
  [v2 postNotificationName:@"SSVTelephonyPhoneNumberDidChangeNotification" object:*(a1 + 32)];
}

- (id)_operatorName
{
  v34 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_accessQueue);
  if (!self->_operatorName)
  {
    if (MGGetBoolAnswer())
    {
      v3 = CFPreferencesCopyAppValue(@"ISCellularOperatorName", @"com.apple.itunesstored");
      if (v3)
      {
        v4 = v3;
        v5 = CFGetTypeID(v3);
        if (v5 == CFStringGetTypeID())
        {
          operatorName = self->_operatorName;
          self->_operatorName = v4;
        }

        else
        {
          CFRelease(v4);
        }
      }
    }

    if (!self->_operatorName && [(SSVTelephonyController *)self _ensureTelephonyHandlesAreReady])
    {
      telephonyClient = self->_telephonyClient;
      telephonySubscriptionContext = self->_telephonySubscriptionContext;
      v29 = 0;
      v9 = [(CoreTelephonyClient *)telephonyClient getLocalizedOperatorName:telephonySubscriptionContext error:&v29];
      v10 = v29;
      v11 = [v9 copy];
      v12 = self->_operatorName;
      self->_operatorName = v11;

      if (self->_operatorName || !v10)
      {
        goto LABEL_23;
      }

      v13 = +[SSLogConfig sharedStoreServicesConfig];
      if (!v13)
      {
        v13 = +[SSLogConfig sharedConfig];
      }

      v14 = [v13 shouldLog];
      if ([v13 shouldLogToDisk])
      {
        v15 = v14 | 2;
      }

      else
      {
        v15 = v14;
      }

      v16 = [v13 OSLogObject];
      if (!os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v15 &= 2u;
      }

      if (v15)
      {
        v17 = objc_opt_class();
        v30 = 138543618;
        v31 = v17;
        v32 = 2114;
        v33 = v10;
        v18 = v17;
        LODWORD(v28) = 22;
        v19 = _os_log_send_and_compose_impl();

        if (!v19)
        {
LABEL_22:

LABEL_23:
          goto LABEL_24;
        }

        v16 = [MEMORY[0x1E696AEC0] stringWithCString:v19 encoding:{4, &v30, v28}];
        free(v19);
        SSFileLog(v13, @"%@", v20, v21, v22, v23, v24, v25, v16);
      }

      goto LABEL_22;
    }
  }

LABEL_24:
  v26 = self->_operatorName;

  return v26;
}

- (void)_updateOperatorName
{
  dispatch_assert_queue_V2(self->_accessQueue);
  v3 = self->_operatorName;
  operatorName = self->_operatorName;
  self->_operatorName = 0;

  v5 = [(SSVTelephonyController *)self _operatorName];
  if (v3 != v5 && ![(NSString *)v3 isEqualToString:v5])
  {
    notificationQueue = self->_notificationQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __45__SSVTelephonyController__updateOperatorName__block_invoke;
    block[3] = &unk_1E84AC050;
    block[4] = self;
    dispatch_async(notificationQueue, block);
  }
}

void __45__SSVTelephonyController__updateOperatorName__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E696AD88] defaultCenter];
  [v2 postNotificationName:@"SSVTelephonyOperatorNameDidChangeNotification" object:*(a1 + 32)];
}

- (id)_registrationStatus
{
  v29 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_accessQueue);
  if (!self->_registrationStatus && [(SSVTelephonyController *)self _ensureTelephonyHandlesAreReady])
  {
    telephonyClient = self->_telephonyClient;
    telephonySubscriptionContext = self->_telephonySubscriptionContext;
    v24 = 0;
    v5 = [(CoreTelephonyClient *)telephonyClient copyRegistrationStatus:telephonySubscriptionContext error:&v24];
    v6 = v24;
    registrationStatus = self->_registrationStatus;
    self->_registrationStatus = v5;

    if (self->_registrationStatus || !v6)
    {
      goto LABEL_17;
    }

    v8 = +[SSLogConfig sharedStoreServicesConfig];
    if (!v8)
    {
      v8 = +[SSLogConfig sharedConfig];
    }

    v9 = [v8 shouldLog];
    if ([v8 shouldLogToDisk])
    {
      v10 = v9 | 2;
    }

    else
    {
      v10 = v9;
    }

    v11 = [v8 OSLogObject];
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v10 &= 2u;
    }

    if (v10)
    {
      v12 = objc_opt_class();
      v25 = 138543618;
      v26 = v12;
      v27 = 2114;
      v28 = v6;
      v13 = v12;
      LODWORD(v23) = 22;
      v14 = _os_log_send_and_compose_impl();

      if (!v14)
      {
LABEL_16:

LABEL_17:
        goto LABEL_18;
      }

      v11 = [MEMORY[0x1E696AEC0] stringWithCString:v14 encoding:{4, &v25, v23}];
      free(v14);
      SSFileLog(v8, @"%@", v15, v16, v17, v18, v19, v20, v11);
    }

    goto LABEL_16;
  }

LABEL_18:
  v21 = self->_registrationStatus;

  return v21;
}

- (void)_updateRegistrationStatus
{
  dispatch_assert_queue_V2(self->_accessQueue);
  v3 = self->_registrationStatus;
  registrationStatus = self->_registrationStatus;
  self->_registrationStatus = 0;

  v5 = [(SSVTelephonyController *)self _registrationStatus];
  if (v3 != v5 && ![(NSString *)v3 isEqualToString:v5])
  {
    notificationQueue = self->_notificationQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __51__SSVTelephonyController__updateRegistrationStatus__block_invoke;
    block[3] = &unk_1E84AC050;
    block[4] = self;
    dispatch_async(notificationQueue, block);
  }
}

void __51__SSVTelephonyController__updateRegistrationStatus__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E696AD88] defaultCenter];
  [v2 postNotificationName:@"SSVTelephonyRegistrationDidChangeNotification" object:*(a1 + 32)];
}

@end