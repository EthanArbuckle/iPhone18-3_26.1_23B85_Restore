@interface ICMusicSubscriptionFairPlayController
+ (ICMusicSubscriptionFairPlayController)sharedController;
- (id)_init;
- (id)getKeyStatusForAccountUniqueIdentifier:(unint64_t)a3 error:(id *)a4;
- (void)_handleSubscriptionFairPlayKeyStatusChangedDistributedNotification:(id)a3;
- (void)generateSubscriptionBagRequestWithAccountUniqueIdentifier:(unint64_t)a3 transactionType:(unsigned int)a4 machineIDData:(id)a5 completionHandler:(id)a6;
- (void)generateSubscriptionLeaseRequestWithAccountUniqueID:(unint64_t)a3 transactionType:(unsigned int)a4 certificateData:(id)a5 assetIDData:(id)a6 completionHandler:(id)a7;
- (void)getKeyStatusListWithCompletionHandler:(id)a3;
- (void)importSubscriptionKeyBagData:(id)a3 completionHandler:(id)a4;
- (void)importSubscriptionKeyBagData:(id)a3 leaseInfoData:(id)a4 completionHandler:(id)a5;
- (void)stopSubscriptionLeaseWithCompletion:(id)a3;
@end

@implementation ICMusicSubscriptionFairPlayController

- (void)_handleSubscriptionFairPlayKeyStatusChangedDistributedNotification:(id)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __108__ICMusicSubscriptionFairPlayController__handleSubscriptionFairPlayKeyStatusChangedDistributedNotification___block_invoke;
  v3[3] = &unk_1E7BF9EF0;
  v3[4] = self;
  [(ICMusicSubscriptionFairPlayController *)self getKeyStatusListWithCompletionHandler:v3];
}

void __108__ICMusicSubscriptionFairPlayController__handleSubscriptionFairPlayKeyStatusChangedDistributedNotification___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E696AD88] defaultCenter];
  [v2 postNotificationName:@"ICMusicSubscriptionFairPlayKeyStatusDidChangeNotification" object:*(a1 + 32)];
}

- (void)stopSubscriptionLeaseWithCompletion:(id)a3
{
  v4 = a3;
  fairPlaySerialQueue = self->_fairPlaySerialQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __77__ICMusicSubscriptionFairPlayController_stopSubscriptionLeaseWithCompletion___block_invoke;
  v7[3] = &unk_1E7BF9EC8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(fairPlaySerialQueue, v7);
}

void __77__ICMusicSubscriptionFairPlayController_stopSubscriptionLeaseWithCompletion___block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v14 = 0;
  v13 = 0;
  ContextIdentifierForFolderPath = ICFairPlayGetContextIdentifierForFolderPath(0, &v14, &v13);
  v3 = v13;
  v4 = v3;
  if (ContextIdentifierForFolderPath)
  {
    Hbz0lOyjnO0();
    if (!v5)
    {
      goto LABEL_11;
    }

    v6 = [MEMORY[0x1E696ABC0] errorWithDomain:@"ICFairPlayError" code:v5 userInfo:0];

    v7 = os_log_create("com.apple.amp.iTunesCloud", "Subscription");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v16 = "[ICMusicSubscriptionFairPlayController stopSubscriptionLeaseWithCompletion:]_block_invoke";
      v17 = 2114;
      v18 = v6;
      _os_log_impl(&dword_1B4491000, v7, OS_LOG_TYPE_ERROR, "%s - stopSubscriptionLeaseWithCompletion: stopping lease request failed with error=%{public}@", buf, 0x16u);
    }
  }

  else
  {
    if (!v3)
    {
      v4 = [MEMORY[0x1E696ABC0] errorWithDomain:@"ICError" code:0 userInfo:0];
    }

    v7 = os_log_create("com.apple.amp.iTunesCloud", "Subscription");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v16 = "[ICMusicSubscriptionFairPlayController stopSubscriptionLeaseWithCompletion:]_block_invoke";
      v17 = 2114;
      v18 = v4;
      _os_log_impl(&dword_1B4491000, v7, OS_LOG_TYPE_ERROR, "%s - stopSubscriptionLeaseWithCompletion: could not get context for identifier - error=%{public}@", buf, 0x16u);
    }

    v6 = v4;
  }

  v4 = v6;
LABEL_11:
  v8 = *(a1 + 40);
  if (v8)
  {
    v9 = *(*(a1 + 32) + 8);
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __77__ICMusicSubscriptionFairPlayController_stopSubscriptionLeaseWithCompletion___block_invoke_24;
    v10[3] = &unk_1E7BF9EC8;
    v12 = v8;
    v11 = v4;
    dispatch_async(v9, v10);
  }
}

- (void)generateSubscriptionLeaseRequestWithAccountUniqueID:(unint64_t)a3 transactionType:(unsigned int)a4 certificateData:(id)a5 assetIDData:(id)a6 completionHandler:(id)a7
{
  v12 = a5;
  v13 = a6;
  v14 = a7;
  fairPlaySerialQueue = self->_fairPlaySerialQueue;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __155__ICMusicSubscriptionFairPlayController_generateSubscriptionLeaseRequestWithAccountUniqueID_transactionType_certificateData_assetIDData_completionHandler___block_invoke;
  v19[3] = &unk_1E7BF9EA0;
  v23 = v14;
  v24 = a3;
  v25 = a4;
  v20 = v12;
  v21 = v13;
  v22 = self;
  v16 = v14;
  v17 = v13;
  v18 = v12;
  dispatch_async(fairPlaySerialQueue, v19);
}

void __155__ICMusicSubscriptionFairPlayController_generateSubscriptionLeaseRequestWithAccountUniqueID_transactionType_certificateData_assetIDData_completionHandler___block_invoke(uint64_t a1)
{
  v28 = *MEMORY[0x1E69E9840];
  v23 = 0;
  v22 = 0;
  ContextIdentifierForFolderPath = ICFairPlayGetContextIdentifierForFolderPath(0, &v23, &v22);
  v3 = v22;
  v4 = v3;
  if (ContextIdentifierForFolderPath)
  {
    v21 = 0;
    v20 = 0;
    v19 = 0;
    v18 = 0;
    PhUojZmspd(v23, *(a1 + 64), *(a1 + 72), [*(a1 + 32) bytes], objc_msgSend(*(a1 + 32), "length"), objc_msgSend(*(a1 + 40), "bytes"), objc_msgSend(*(a1 + 40), "length"), &v21, &v20, &v19, &v18);
    if (v5)
    {
      v6 = [MEMORY[0x1E696ABC0] errorWithDomain:@"ICFairPlayError" code:v5 userInfo:0];

      v7 = os_log_create("com.apple.amp.iTunesCloud", "Subscription");
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v25 = "[ICMusicSubscriptionFairPlayController generateSubscriptionLeaseRequestWithAccountUniqueID:transactionType:certificateData:assetIDData:completionHandler:]_block_invoke";
        v26 = 2114;
        v27 = v6;
        _os_log_impl(&dword_1B4491000, v7, OS_LOG_TYPE_ERROR, "%s - generateSubscriptionLeaseRequestWithAccountUniqueID:transactionType:certificateData:assetIDData generating lease request failed with error=%{public}@", buf, 0x16u);
      }

      v8 = 0;
      v9 = 0;
    }

    else
    {
      if (v18)
      {
        v9 = [MEMORY[0x1E695DEF0] ic_dataWithFairPlayBytes:v19 length:?];
      }

      else
      {
        v9 = 0;
      }

      if (v20)
      {
        v8 = [MEMORY[0x1E695DEF0] ic_dataWithFairPlayBytes:v21 length:?];
      }

      else
      {
        v8 = 0;
      }

      v6 = v4;
    }

    v4 = v6;
  }

  else
  {
    if (!v3)
    {
      v4 = [MEMORY[0x1E696ABC0] errorWithDomain:@"ICError" code:0 userInfo:0];
    }

    v10 = os_log_create("com.apple.amp.iTunesCloud", "Subscription");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v25 = "[ICMusicSubscriptionFairPlayController generateSubscriptionLeaseRequestWithAccountUniqueID:transactionType:certificateData:assetIDData:completionHandler:]_block_invoke";
      v26 = 2114;
      v27 = v4;
      _os_log_impl(&dword_1B4491000, v10, OS_LOG_TYPE_ERROR, "%s - generateSubscriptionLeaseRequestWithAccountUniqueID:transactionType:certificateData:assetIDData could not get context for identifier - error=%{public}@", buf, 0x16u);
    }

    v8 = 0;
    v9 = 0;
  }

  v11 = *(a1 + 56);
  if (v11)
  {
    v12 = *(*(a1 + 48) + 8);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __155__ICMusicSubscriptionFairPlayController_generateSubscriptionLeaseRequestWithAccountUniqueID_transactionType_certificateData_assetIDData_completionHandler___block_invoke_23;
    block[3] = &unk_1E7BF9E78;
    v17 = v11;
    v14 = v8;
    v15 = v9;
    v16 = v4;
    dispatch_async(v12, block);
  }
}

- (void)generateSubscriptionBagRequestWithAccountUniqueIdentifier:(unint64_t)a3 transactionType:(unsigned int)a4 machineIDData:(id)a5 completionHandler:(id)a6
{
  v10 = a5;
  v11 = a6;
  fairPlaySerialQueue = self->_fairPlaySerialQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __147__ICMusicSubscriptionFairPlayController_generateSubscriptionBagRequestWithAccountUniqueIdentifier_transactionType_machineIDData_completionHandler___block_invoke;
  block[3] = &unk_1E7BF9E50;
  v20 = a4;
  v18 = v11;
  v19 = a3;
  v16 = v10;
  v17 = self;
  v13 = v11;
  v14 = v10;
  dispatch_async(fairPlaySerialQueue, block);
}

void __147__ICMusicSubscriptionFairPlayController_generateSubscriptionBagRequestWithAccountUniqueIdentifier_transactionType_machineIDData_completionHandler___block_invoke(uint64_t a1)
{
  v24 = *MEMORY[0x1E69E9840];
  v19 = 0;
  v18 = 0;
  ContextIdentifierForFolderPath = ICFairPlayGetContextIdentifierForFolderPath(0, &v19, &v18);
  v3 = v18;
  v4 = v3;
  if (ContextIdentifierForFolderPath)
  {
    v17 = 0;
    v16 = 0;
    V3lNO(v19, *(a1 + 56), *(a1 + 64), [*(a1 + 32) bytes], objc_msgSend(*(a1 + 32), "length"), &v17, &v16);
    if (v5)
    {
      v6 = [MEMORY[0x1E696ABC0] errorWithDomain:@"ICFairPlayError" code:v5 userInfo:0];

      v7 = os_log_create("com.apple.amp.iTunesCloud", "Subscription");
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v21 = "[ICMusicSubscriptionFairPlayController generateSubscriptionBagRequestWithAccountUniqueIdentifier:transactionType:machineIDData:completionHandler:]_block_invoke";
        v22 = 2114;
        v23 = v6;
        _os_log_impl(&dword_1B4491000, v7, OS_LOG_TYPE_ERROR, "%s - generateSubscriptionBagRequestWithAccountUniqueIdentifier:transactionType:machineIDData: generating subscription request failed with error=%{public}@", buf, 0x16u);
      }

      v8 = 0;
    }

    else
    {
      if (v16)
      {
        v8 = [MEMORY[0x1E695DEF0] ic_dataWithFairPlayBytes:v17 length:?];
      }

      else
      {
        v8 = 0;
      }

      v6 = v4;
    }

    v4 = v6;
  }

  else
  {
    if (!v3)
    {
      v4 = [MEMORY[0x1E696ABC0] errorWithDomain:@"ICError" code:0 userInfo:0];
    }

    v9 = os_log_create("com.apple.amp.iTunesCloud", "Subscription");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v21 = "[ICMusicSubscriptionFairPlayController generateSubscriptionBagRequestWithAccountUniqueIdentifier:transactionType:machineIDData:completionHandler:]_block_invoke";
      v22 = 2114;
      v23 = v4;
      _os_log_impl(&dword_1B4491000, v9, OS_LOG_TYPE_ERROR, "%s - generateSubscriptionBagRequestWithAccountUniqueIdentifier:transactionType:machineIDData: could not get context for identifier - error=%{public}@", buf, 0x16u);
    }

    v8 = 0;
  }

  v10 = *(a1 + 48);
  if (v10)
  {
    v11 = *(*(a1 + 40) + 8);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __147__ICMusicSubscriptionFairPlayController_generateSubscriptionBagRequestWithAccountUniqueIdentifier_transactionType_machineIDData_completionHandler___block_invoke_22;
    block[3] = &unk_1E7BF9E28;
    v15 = v10;
    v13 = v8;
    v14 = v4;
    dispatch_async(v11, block);
  }
}

- (void)importSubscriptionKeyBagData:(id)a3 leaseInfoData:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  fairPlaySerialQueue = self->_fairPlaySerialQueue;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __102__ICMusicSubscriptionFairPlayController_importSubscriptionKeyBagData_leaseInfoData_completionHandler___block_invoke;
  v15[3] = &unk_1E7BF9E78;
  v15[4] = self;
  v16 = v9;
  v17 = v8;
  v18 = v10;
  v12 = v10;
  v13 = v8;
  v14 = v9;
  dispatch_async(fairPlaySerialQueue, v15);
}

void __102__ICMusicSubscriptionFairPlayController_importSubscriptionKeyBagData_leaseInfoData_completionHandler___block_invoke(uint64_t a1)
{
  v32 = *MEMORY[0x1E69E9840];
  v25 = 0;
  v24 = 0;
  ContextIdentifierForFolderPath = ICFairPlayGetContextIdentifierForFolderPath(0, &v25, &v24);
  v3 = v24;
  v4 = v3;
  if (ContextIdentifierForFolderPath)
  {
    v23 = 0;
    v22 = 0;
    v5 = os_log_create("com.apple.amp.iTunesCloud", "Subscription");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 32);
      *buf = 138543618;
      v27 = v6;
      v28 = 1024;
      *v29 = v25;
      _os_log_impl(&dword_1B4491000, v5, OS_LOG_TYPE_DEFAULT, "[Lease] - %{public}@ - importSubscriptionKeyBagData:leaseInfoData:completionHandler: - Calling FairPlayImportSubscriptionResponse() - contextID: %u", buf, 0x12u);
    }

    [*(a1 + 40) bytes];
    [*(a1 + 40) length];
    [*(a1 + 48) bytes];
    [*(a1 + 48) length];
    NY6eB6();
    if (v7)
    {
      v8 = [MEMORY[0x1E696ABC0] errorWithDomain:@"ICFairPlayError" code:v7 userInfo:0];

      v9 = os_log_create("com.apple.amp.iTunesCloud", "Subscription");
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v27 = "[ICMusicSubscriptionFairPlayController importSubscriptionKeyBagData:leaseInfoData:completionHandler:]_block_invoke";
        v28 = 2114;
        *v29 = v8;
        _os_log_impl(&dword_1B4491000, v9, OS_LOG_TYPE_ERROR, "[Lease] %s - importSubscriptionKeyBagData:leaseInfoData:completionHandler: could not import subscription bag - error=%{public}@", buf, 0x16u);
      }

      v4 = v8;
    }

    else
    {
      v11 = os_log_create("com.apple.amp.iTunesCloud", "Subscription");
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v27 = "[ICMusicSubscriptionFairPlayController importSubscriptionKeyBagData:leaseInfoData:completionHandler:]_block_invoke";
        v28 = 1024;
        *v29 = v25;
        _os_log_impl(&dword_1B4491000, v11, OS_LOG_TYPE_DEFAULT, "[Lease] - %s - FairPlayImportSubscriptionResponse() - Success - contextID: %u", buf, 0x12u);
      }

      v12 = os_log_create("com.apple.amp.iTunesCloud", "Subscription");
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = *(a1 + 32);
        *buf = 138543362;
        v27 = v13;
        _os_log_impl(&dword_1B4491000, v12, OS_LOG_TYPE_DEFAULT, "[Lease] - %{public}@ - importSubscriptionKeyBagData", buf, 0xCu);
      }

      v9 = os_log_create("com.apple.amp.iTunesCloud", "Subscription_Oversize");
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v14 = *(a1 + 32);
        v15 = *(v14 + 24);
        *buf = 138544130;
        v27 = v14;
        v28 = 1024;
        *v29 = v25;
        *&v29[4] = 1024;
        *&v29[6] = 0;
        v30 = 2112;
        v31 = v15;
        _os_log_impl(&dword_1B4491000, v9, OS_LOG_TYPE_DEFAULT, "[Lease] - %{public}@ - importSubscriptionKeyBagData:leaseInfoData:completionHandler: - Retrieved FairPlayImportSubscriptionResponse() - contextID: %u - keyBagStatusChanged: %{BOOL}u, _subscriptionKeyBagStatusCache: %@", buf, 0x22u);
      }
    }
  }

  else
  {
    if (!v3)
    {
      v4 = [MEMORY[0x1E696ABC0] errorWithDomain:@"ICError" code:0 userInfo:0];
    }

    v10 = os_log_create("com.apple.amp.iTunesCloud", "Subscription");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v27 = "[ICMusicSubscriptionFairPlayController importSubscriptionKeyBagData:leaseInfoData:completionHandler:]_block_invoke";
      v28 = 2114;
      *v29 = v4;
      _os_log_impl(&dword_1B4491000, v10, OS_LOG_TYPE_ERROR, "[Lease] %s - importSubscriptionKeyBagData:leaseInfoData:completionHandler: could not get fairplay context for identifier - error=%{public}@", buf, 0x16u);
    }
  }

  v16 = *(a1 + 56);
  if (v16)
  {
    v17 = *(*(a1 + 32) + 8);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __102__ICMusicSubscriptionFairPlayController_importSubscriptionKeyBagData_leaseInfoData_completionHandler___block_invoke_20;
    block[3] = &unk_1E7BF9E28;
    v21 = v16;
    v19 = 0;
    v20 = v4;
    dispatch_async(v17, block);
  }
}

- (void)importSubscriptionKeyBagData:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  fairPlaySerialQueue = self->_fairPlaySerialQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __88__ICMusicSubscriptionFairPlayController_importSubscriptionKeyBagData_completionHandler___block_invoke;
  block[3] = &unk_1E7BF9E28;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(fairPlaySerialQueue, block);
}

void __88__ICMusicSubscriptionFairPlayController_importSubscriptionKeyBagData_completionHandler___block_invoke(uint64_t a1)
{
  v29 = *MEMORY[0x1E69E9840];
  v22 = 0;
  v21 = 0;
  ContextIdentifierForFolderPath = ICFairPlayGetContextIdentifierForFolderPath(0, &v22, &v21);
  v3 = v21;
  v4 = v3;
  if (ContextIdentifierForFolderPath)
  {
    v20 = 0;
    v19 = 0;
    v5 = os_log_create("com.apple.amp.iTunesCloud", "Subscription");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 32);
      *buf = 138543618;
      v24 = v6;
      v25 = 1024;
      *v26 = v22;
      _os_log_impl(&dword_1B4491000, v5, OS_LOG_TYPE_DEFAULT, "[Lease] - %{public}@ - importSubscriptionKeyBagData:completionHandler: - Calling FairPlayImportSubscriptionBag() - contextID: %u", buf, 0x12u);
    }

    [*(a1 + 40) bytes];
    [*(a1 + 40) length];
    jr3lMuU8uaAR();
    if (v7)
    {
      v8 = [MEMORY[0x1E696ABC0] errorWithDomain:@"ICFairPlayError" code:v7 userInfo:0];

      v9 = os_log_create("com.apple.amp.iTunesCloud", "Subscription");
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v24 = "[ICMusicSubscriptionFairPlayController importSubscriptionKeyBagData:completionHandler:]_block_invoke";
        v25 = 2114;
        *v26 = v8;
        _os_log_impl(&dword_1B4491000, v9, OS_LOG_TYPE_ERROR, "[Lease] %s - importSubscriptionKeyBagData:completionHandler: could not import subscription bag - error=%{public}@", buf, 0x16u);
      }

      v4 = v8;
    }

    else
    {
      v9 = os_log_create("com.apple.amp.iTunesCloud", "Subscription_Oversize");
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v11 = *(a1 + 32);
        v12 = *(v11 + 24);
        *buf = 138544130;
        v24 = v11;
        v25 = 1024;
        *v26 = v22;
        *&v26[4] = 1024;
        *&v26[6] = 0;
        v27 = 2112;
        v28 = v12;
        _os_log_impl(&dword_1B4491000, v9, OS_LOG_TYPE_DEFAULT, "[Lease] - %{public}@ - importSubscriptionKeyBagData:completionHandler: - Retrieved FairPlayImportSubscriptionBag() - contextID: %u - keyBagStatusChanged: %{BOOL}u, _subscriptionKeyBagStatusCache: %@", buf, 0x22u);
      }
    }
  }

  else
  {
    if (!v3)
    {
      v4 = [MEMORY[0x1E696ABC0] errorWithDomain:@"ICError" code:0 userInfo:0];
    }

    v10 = os_log_create("com.apple.amp.iTunesCloud", "Subscription");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v24 = "[ICMusicSubscriptionFairPlayController importSubscriptionKeyBagData:completionHandler:]_block_invoke";
      v25 = 2114;
      *v26 = v4;
      _os_log_impl(&dword_1B4491000, v10, OS_LOG_TYPE_ERROR, "[Lease] %s - importSubscriptionKeyBagData:completionHandler: could not get fairplay context for identifier - error=%{public}@", buf, 0x16u);
    }
  }

  v13 = *(a1 + 48);
  if (v13)
  {
    v14 = *(*(a1 + 32) + 8);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __88__ICMusicSubscriptionFairPlayController_importSubscriptionKeyBagData_completionHandler___block_invoke_19;
    block[3] = &unk_1E7BF9E28;
    v18 = v13;
    v16 = 0;
    v17 = v4;
    dispatch_async(v14, block);
  }
}

- (void)getKeyStatusListWithCompletionHandler:(id)a3
{
  v4 = a3;
  fairPlaySerialQueue = self->_fairPlaySerialQueue;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __79__ICMusicSubscriptionFairPlayController_getKeyStatusListWithCompletionHandler___block_invoke;
  v8[3] = &unk_1E7BF9EC8;
  v8[4] = self;
  v9 = v4;
  v6 = v4;
  v7 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, QOS_CLASS_USER_INTERACTIVE, 0, v8);
  dispatch_async(fairPlaySerialQueue, v7);
}

void __79__ICMusicSubscriptionFairPlayController_getKeyStatusListWithCompletionHandler___block_invoke(uint64_t a1)
{
  v26 = *MEMORY[0x1E69E9840];
  v21 = 0;
  v20 = 0;
  ContextIdentifierForFolderPath = ICFairPlayGetContextIdentifierForFolderPath(0, &v21, &v20);
  v3 = v20;
  v4 = v3;
  if (ContextIdentifierForFolderPath)
  {
    v19 = 0;
    v18 = 0;
    v5 = os_log_create("com.apple.amp.iTunesCloud", "Subscription");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v23 = "[ICMusicSubscriptionFairPlayController getKeyStatusListWithCompletionHandler:]_block_invoke";
      _os_log_impl(&dword_1B4491000, v5, OS_LOG_TYPE_DEFAULT, "%s - FairPlayGetSubscriptionStatus() - Calling", buf, 0xCu);
    }

    NjiEJ7prRY3();
    if (v6)
    {
      v7 = [MEMORY[0x1E696ABC0] errorWithDomain:@"ICFairPlayError" code:v6 userInfo:0];

      v8 = os_log_create("com.apple.amp.iTunesCloud", "Subscription");
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v23 = "[ICMusicSubscriptionFairPlayController getKeyStatusListWithCompletionHandler:]_block_invoke";
        v24 = 2114;
        v25 = v7;
        _os_log_impl(&dword_1B4491000, v8, OS_LOG_TYPE_ERROR, "%s - FairPlayGetSubscriptionStatus() - error=%{public}@", buf, 0x16u);
      }
    }

    else
    {
      v10 = os_log_create("com.apple.amp.iTunesCloud", "Subscription");
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v23 = "[ICMusicSubscriptionFairPlayController getKeyStatusListWithCompletionHandler:]_block_invoke";
        _os_log_impl(&dword_1B4491000, v10, OS_LOG_TYPE_DEFAULT, "%s - FairPlayGetSubscriptionStatus() - Success", buf, 0xCu);
      }

      [*(*(a1 + 32) + 24) removeAllObjects];
      v7 = v4;
    }

    v4 = v7;
  }

  else
  {
    if (!v3)
    {
      v4 = [MEMORY[0x1E696ABC0] errorWithDomain:@"ICError" code:0 userInfo:0];
    }

    v9 = os_log_create("com.apple.amp.iTunesCloud", "Subscription");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v23 = "[ICMusicSubscriptionFairPlayController getKeyStatusListWithCompletionHandler:]_block_invoke";
      v24 = 2114;
      v25 = v4;
      _os_log_impl(&dword_1B4491000, v9, OS_LOG_TYPE_ERROR, "%s - FairPlayGetSubscriptionStatus() could not get fairplay context for identifier - error=%{public}@", buf, 0x16u);
    }
  }

  v11 = *(a1 + 40);
  if (v11)
  {
    v12 = *(*(a1 + 32) + 8);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __79__ICMusicSubscriptionFairPlayController_getKeyStatusListWithCompletionHandler___block_invoke_18;
    block[3] = &unk_1E7BF9E28;
    v17 = v11;
    v15 = 0;
    v16 = v4;
    v13 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, QOS_CLASS_USER_INTERACTIVE, 0, block);
    dispatch_async(v12, v13);
  }
}

- (id)getKeyStatusForAccountUniqueIdentifier:(unint64_t)a3 error:(id *)a4
{
  v14[0] = 0;
  v14[1] = v14;
  v14[2] = 0x3032000000;
  v14[3] = __Block_byref_object_copy__39215;
  v14[4] = __Block_byref_object_dispose__39216;
  v15 = 0;
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__39215;
  v12 = __Block_byref_object_dispose__39216;
  v13 = 0;
  fairPlaySerialQueue = self->_fairPlaySerialQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __86__ICMusicSubscriptionFairPlayController_getKeyStatusForAccountUniqueIdentifier_error___block_invoke;
  block[3] = &unk_1E7BF9E00;
  block[5] = &v8;
  block[6] = a3;
  block[4] = v14;
  dispatch_sync(fairPlaySerialQueue, block);
  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  _Block_object_dispose(v14, 8);

  return v5;
}

void __86__ICMusicSubscriptionFairPlayController_getKeyStatusForAccountUniqueIdentifier_error___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v9 = 0;
  v2 = *(*(a1 + 32) + 8);
  obj = *(v2 + 40);
  ContextIdentifierForFolderPath = ICFairPlayGetContextIdentifierForFolderPath(0, &v9, &obj);
  objc_storeStrong((v2 + 40), obj);
  if (ContextIdentifierForFolderPath)
  {
    v4 = os_log_create("com.apple.amp.iTunesCloud", "Subscription");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v11 = "[ICMusicSubscriptionFairPlayController getKeyStatusForAccountUniqueIdentifier:error:]_block_invoke";
      _os_log_impl(&dword_1B4491000, v4, OS_LOG_TYPE_DEFAULT, "%s - FairPlayGetSubscriptionStatus()", buf, 0xCu);
    }

    NjiEJ7prRY3();
  }

  else if (!*(*(*(a1 + 32) + 8) + 40))
  {
    v5 = [MEMORY[0x1E696ABC0] errorWithDomain:@"ICError" code:0 userInfo:0];
    v6 = *(*(a1 + 32) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;
  }
}

- (id)_init
{
  v11.receiver = self;
  v11.super_class = ICMusicSubscriptionFairPlayController;
  v2 = [(ICMusicSubscriptionFairPlayController *)&v11 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.iTunesCloud.ICMusicSubscriptionFairPlayController.calloutQueue", 0);
    calloutQueue = v2->_calloutQueue;
    v2->_calloutQueue = v3;

    v5 = dispatch_queue_create("com.apple.iTunesCloud.ICMusicSubscriptionFairPlayController.fairPlaySerialQueue", 0);
    fairPlaySerialQueue = v2->_fairPlaySerialQueue;
    v2->_fairPlaySerialQueue = v5;

    v7 = [MEMORY[0x1E695DF90] dictionary];
    subscriptionKeyBagStatusCache = v2->_subscriptionKeyBagStatusCache;
    v2->_subscriptionKeyBagStatusCache = v7;

    v9 = [MEMORY[0x1E696ABB0] defaultCenter];
    [v9 addObserver:v2 selector:sel__handleSubscriptionFairPlayKeyStatusChangedDistributedNotification_ name:@"com.apple.itunescloud.ICMusicSubscriptionFairPlayKeyStatusDidChangeNotification" object:0];

    [(ICMusicSubscriptionFairPlayController *)v2 getKeyStatusListWithCompletionHandler:&__block_literal_global_13_39224];
  }

  return v2;
}

+ (ICMusicSubscriptionFairPlayController)sharedController
{
  if (sharedController_sOnceToken_39233 != -1)
  {
    dispatch_once(&sharedController_sOnceToken_39233, &__block_literal_global_39234);
  }

  v3 = sharedController_sSharedController_39235;

  return v3;
}

uint64_t __57__ICMusicSubscriptionFairPlayController_sharedController__block_invoke()
{
  v0 = [[ICMusicSubscriptionFairPlayController alloc] _init];
  v1 = sharedController_sSharedController_39235;
  sharedController_sSharedController_39235 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

@end