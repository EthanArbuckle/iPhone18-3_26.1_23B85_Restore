@interface SSVFairPlaySubscriptionController
- (BOOL)generateSubscriptionBagRequestWithAccountUniqueIdentifier:(unint64_t)identifier transactionType:(unsigned int)type machineIDData:(id)data returningSubscriptionBagData:(id *)bagData error:(id *)error;
- (BOOL)generateSubscriptionLeaseRequestWithAccountUniqueID:(unint64_t)d transactionType:(unsigned int)type certificateData:(id)data assetIDData:(id)dData returningLeaseData:(id *)leaseData subscriptionBagData:(id *)bagData error:(id *)error;
- (BOOL)importSubscriptionKeyBagData:(id)data leaseInfoData:(id)infoData returningError:(id *)error;
- (BOOL)importSubscriptionKeyBagData:(id)data returningError:(id *)error;
- (BOOL)stopSubscriptionLease:(id *)lease;
- (SSVFairPlaySubscriptionController)init;
- (id)_accountUniqueIdentifierToSubscriptionStatusWithFPSubscriptionInfoList:(FPSubscriptionInfo_ *)list subscriptionInfoListLength:(unsigned int)length;
- (id)_subscriptionStatusForFPSubscriptionInfo:(FPSubscriptionInfo_)info;
- (id)subscriptionStatusForAccountUniqueIdentifier:(unint64_t)identifier;
- (void)_enumerateSubscriptionInfoUsingBlock:(id)block;
- (void)_notifySubscriptionStatusDidChange;
- (void)dealloc;
- (void)enumerateAccountSubscriptionStatusUsingBlock:(id)block;
@end

@implementation SSVFairPlaySubscriptionController

- (SSVFairPlaySubscriptionController)init
{
  v11.receiver = self;
  v11.super_class = SSVFairPlaySubscriptionController;
  v2 = [(SSVFairPlaySubscriptionController *)&v11 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.StoreServices.SSVFairPlaySubscriptionController.accessQueue", MEMORY[0x1E69E96A8]);
    accessQueue = v2->_accessQueue;
    v2->_accessQueue = v3;

    objc_initWeak(&location, v2);
    v5 = dispatch_get_global_queue(0, 0);
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __41__SSVFairPlaySubscriptionController_init__block_invoke;
    v8[3] = &unk_1E84ACFA8;
    objc_copyWeak(&v9, &location);
    v6 = notify_register_dispatch("com.apple.StoreServices.SSVFairPlaySubscriptionControllerSubscriptionStatusDidChangeNotification", &v2->_subscriptionStatusDidChangeNotifyToken, v5, v8);

    if (!v6)
    {
      v2->_hasValidSubscriptionStatusDidChangeNotifyToken = 1;
    }

    objc_destroyWeak(&v9);
    objc_destroyWeak(&location);
  }

  return v2;
}

void __41__SSVFairPlaySubscriptionController_init__block_invoke(uint64_t a1, int a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    state64 = 0;
    if (!notify_get_state(a2, &state64))
    {
      v4 = state64;
      if (v4 != getpid())
      {
        v5 = [MEMORY[0x1E696AD88] defaultCenter];
        [v5 postNotificationName:@"SSVFairPlaySubscriptionControllerSubscriptionStatusDidChangeNotification" object:WeakRetained];
      }
    }
  }
}

- (void)dealloc
{
  if (self->_hasValidSubscriptionStatusDidChangeNotifyToken)
  {
    notify_cancel(self->_subscriptionStatusDidChangeNotifyToken);
  }

  v3.receiver = self;
  v3.super_class = SSVFairPlaySubscriptionController;
  [(SSVFairPlaySubscriptionController *)&v3 dealloc];
}

- (void)enumerateAccountSubscriptionStatusUsingBlock:(id)block
{
  blockCopy = block;
  v5 = blockCopy;
  if (blockCopy)
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __82__SSVFairPlaySubscriptionController_enumerateAccountSubscriptionStatusUsingBlock___block_invoke;
    v6[3] = &unk_1E84B2DB8;
    v6[4] = self;
    v7 = blockCopy;
    [(SSVFairPlaySubscriptionController *)self _enumerateSubscriptionInfoUsingBlock:v6];
  }
}

uint64_t __82__SSVFairPlaySubscriptionController_enumerateAccountSubscriptionStatusUsingBlock___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  [*(a1 + 32) _subscriptionStatusForFPSubscriptionInfo:{a2, a3}];
  if (objc_claimAutoreleasedReturnValue())
  {
    (*(*(a1 + 40) + 16))();
  }

  return MEMORY[0x1EEE66BE0]();
}

- (id)subscriptionStatusForAccountUniqueIdentifier:(unint64_t)identifier
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__67;
  v10 = __Block_byref_object_dispose__67;
  v11 = 0;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __82__SSVFairPlaySubscriptionController_subscriptionStatusForAccountUniqueIdentifier___block_invoke;
  v5[3] = &unk_1E84B2DE0;
  v5[5] = &v6;
  v5[6] = identifier;
  v5[4] = self;
  [(SSVFairPlaySubscriptionController *)self _enumerateSubscriptionInfoUsingBlock:v5];
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __82__SSVFairPlaySubscriptionController_subscriptionStatusForAccountUniqueIdentifier___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  if (a2 == *(a1 + 48))
  {
    v6 = [*(a1 + 32) _subscriptionStatusForFPSubscriptionInfo:{a2, a3}];
    v7 = *(*(a1 + 40) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;

    *a4 = 1;
  }
}

- (BOOL)generateSubscriptionBagRequestWithAccountUniqueIdentifier:(unint64_t)identifier transactionType:(unsigned int)type machineIDData:(id)data returningSubscriptionBagData:(id *)bagData error:(id *)error
{
  v9 = *&type;
  v23 = 0;
  v22 = 0;
  dataCopy = data;
  v12 = SSVFairPlayContextIdentifier();
  bytes = [dataCopy bytes];
  v14 = [dataCopy length];

  V3lNO(v12, identifier, v9, bytes, v14, &v23, &v22);
  if (v15)
  {
    v16 = SSError(@"SSVFairPlayErrorDomain", v15, 0, 0);
    goto LABEL_3;
  }

  if (!v22)
  {
    v16 = 0;
LABEL_3:
    v17 = 0;
    if (!bagData)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  v21 = objc_alloc(MEMORY[0x1E695DEF0]);
  v17 = [v21 initWithBytesNoCopy:v23 length:v22 deallocator:&__block_literal_global_33];
  v16 = 0;
  if (bagData)
  {
LABEL_4:
    v18 = v17;
    *bagData = v17;
  }

LABEL_5:
  if (error)
  {
    v19 = v16;
    *error = v16;
  }

  return v16 == 0;
}

- (BOOL)generateSubscriptionLeaseRequestWithAccountUniqueID:(unint64_t)d transactionType:(unsigned int)type certificateData:(id)data assetIDData:(id)dData returningLeaseData:(id *)leaseData subscriptionBagData:(id *)bagData error:(id *)error
{
  v12 = *&type;
  v34 = 0;
  v33 = 0;
  v32 = 0;
  v31 = 0;
  dDataCopy = dData;
  dataCopy = data;
  v16 = SSVFairPlayContextIdentifier();
  bytes = [dataCopy bytes];
  v18 = [dataCopy length];

  bytes2 = [dDataCopy bytes];
  v20 = [dDataCopy length];

  PhUojZmspd(v16, d, v12, bytes, v18, bytes2, v20, &v34, &v33, &v32, &v31);
  if (v21)
  {
    v22 = SSError(@"SSVFairPlayErrorDomain", v21, 0, 0);
    v23 = 0;
    v24 = 0;
  }

  else
  {
    if (v31)
    {
      v25 = objc_alloc(MEMORY[0x1E695DEF0]);
      v24 = [v25 initWithBytesNoCopy:v32 length:v31 deallocator:&__block_literal_global_9_1];
    }

    else
    {
      v24 = 0;
    }

    if (v33)
    {
      v26 = objc_alloc(MEMORY[0x1E695DEF0]);
      v23 = [v26 initWithBytesNoCopy:v34 length:v33 deallocator:&__block_literal_global_11];
    }

    else
    {
      v23 = 0;
    }

    v22 = 0;
  }

  if (bagData)
  {
    v27 = v24;
    *bagData = v24;
  }

  if (leaseData)
  {
    v28 = v23;
    *leaseData = v23;
  }

  if (error)
  {
    v29 = v22;
    *error = v22;
  }

  return v22 == 0;
}

- (BOOL)importSubscriptionKeyBagData:(id)data returningError:(id *)error
{
  dataCopy = data;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__67;
  v18 = __Block_byref_object_dispose__67;
  v19 = 0;
  accessQueue = self->_accessQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __81__SSVFairPlaySubscriptionController_importSubscriptionKeyBagData_returningError___block_invoke;
  block[3] = &unk_1E84ADE08;
  block[4] = self;
  v8 = dataCopy;
  v12 = v8;
  v13 = &v14;
  dispatch_barrier_sync(accessQueue, block);
  if (error)
  {
    *error = v15[5];
  }

  v9 = v15[5] == 0;

  _Block_object_dispose(&v14, 8);
  return v9;
}

void __81__SSVFairPlaySubscriptionController_importSubscriptionKeyBagData_returningError___block_invoke(uint64_t a1)
{
  SSVFairPlayContextIdentifier();
  NjiEJ7prRY3();
  v2 = [*(a1 + 32) _accountUniqueIdentifierToSubscriptionStatusWithFPSubscriptionInfoList:0 subscriptionInfoListLength:0];
  SSVFairPlayContextIdentifier();
  [*(a1 + 40) bytes];
  [*(a1 + 40) length];
  jr3lMuU8uaAR();
  if (v3)
  {
    v4 = SSError(@"SSVFairPlayErrorDomain", v3, 0, 0);
    v5 = *(*(a1 + 48) + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = v4;
  }

  else
  {
    SSVFairPlayContextIdentifier();
    NjiEJ7prRY3();
    v7 = [*(a1 + 32) _accountUniqueIdentifierToSubscriptionStatusWithFPSubscriptionInfoList:0 subscriptionInfoListLength:0];
    if (v2 != v7 && ([v2 isEqualToDictionary:v7] & 1) == 0)
    {
      [*(a1 + 32) _notifySubscriptionStatusDidChange];
    }
  }
}

- (BOOL)importSubscriptionKeyBagData:(id)data leaseInfoData:(id)infoData returningError:(id *)error
{
  dataCopy = data;
  infoDataCopy = infoData;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__67;
  v23 = __Block_byref_object_dispose__67;
  v24 = 0;
  accessQueue = self->_accessQueue;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __95__SSVFairPlaySubscriptionController_importSubscriptionKeyBagData_leaseInfoData_returningError___block_invoke;
  v15[3] = &unk_1E84B2E08;
  v15[4] = self;
  v11 = infoDataCopy;
  v16 = v11;
  v12 = dataCopy;
  v17 = v12;
  v18 = &v19;
  dispatch_barrier_sync(accessQueue, v15);
  if (error)
  {
    *error = v20[5];
  }

  v13 = v20[5] == 0;

  _Block_object_dispose(&v19, 8);
  return v13;
}

void __95__SSVFairPlaySubscriptionController_importSubscriptionKeyBagData_leaseInfoData_returningError___block_invoke(uint64_t a1)
{
  SSVFairPlayContextIdentifier();
  NjiEJ7prRY3();
  v2 = [*(a1 + 32) _accountUniqueIdentifierToSubscriptionStatusWithFPSubscriptionInfoList:0 subscriptionInfoListLength:0];
  SSVFairPlayContextIdentifier();
  [*(a1 + 40) bytes];
  [*(a1 + 40) length];
  [*(a1 + 48) bytes];
  [*(a1 + 48) length];
  NY6eB6();
  if (v3)
  {
    v4 = SSError(@"SSVFairPlayErrorDomain", v3, 0, 0);
    v5 = *(*(a1 + 56) + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = v4;
  }

  else
  {
    SSVFairPlayContextIdentifier();
    NjiEJ7prRY3();
    v7 = [*(a1 + 32) _accountUniqueIdentifierToSubscriptionStatusWithFPSubscriptionInfoList:0 subscriptionInfoListLength:0];
    if (v2 != v7 && ([v2 isEqualToDictionary:v7] & 1) == 0)
    {
      [*(a1 + 32) _notifySubscriptionStatusDidChange];
    }
  }
}

- (BOOL)stopSubscriptionLease:(id *)lease
{
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__67;
  v12 = __Block_byref_object_dispose__67;
  v13 = 0;
  accessQueue = self->_accessQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __59__SSVFairPlaySubscriptionController_stopSubscriptionLease___block_invoke;
  v7[3] = &unk_1E84B2E30;
  v7[4] = &v14;
  v7[5] = &v8;
  dispatch_barrier_sync(accessQueue, v7);
  v5 = *(v15 + 24);
  if (lease && (v15[3] & 1) == 0)
  {
    *lease = v9[5];
    v5 = *(v15 + 24);
  }

  _Block_object_dispose(&v8, 8);

  _Block_object_dispose(&v14, 8);
  return v5 & 1;
}

void __59__SSVFairPlaySubscriptionController_stopSubscriptionLease___block_invoke(uint64_t a1)
{
  SSVFairPlayContextIdentifier();
  YMQGEcsGvUj();
  if (v2)
  {
    v3 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:v2 userInfo:0];
    v4 = *(*(a1 + 40) + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;
  }

  else
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
  }
}

- (id)_accountUniqueIdentifierToSubscriptionStatusWithFPSubscriptionInfoList:(FPSubscriptionInfo_ *)list subscriptionInfoListLength:(unsigned int)length
{
  if (length)
  {
    v5 = 0;
    p_var1 = &list->var1;
    lengthCopy = length;
    do
    {
      v8 = *(p_var1 - 1);
      v9 = [(SSVFairPlaySubscriptionController *)self _subscriptionStatusForFPSubscriptionInfo:v8, *p_var1];
      if (v9)
      {
        if (!v5)
        {
          v5 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:1];
        }

        v10 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v8];
        [v5 setObject:v9 forKey:v10];
      }

      p_var1 += 4;

      --lengthCopy;
    }

    while (lengthCopy);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)_enumerateSubscriptionInfoUsingBlock:(id)block
{
  blockCopy = block;
  if (blockCopy)
  {
    v18 = 0;
    v19 = &v18;
    v20 = 0x2020000000;
    v21 = 0;
    v14 = 0;
    v15 = &v14;
    v16 = 0x2020000000;
    v17 = 0;
    accessQueue = self->_accessQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __74__SSVFairPlaySubscriptionController__enumerateSubscriptionInfoUsingBlock___block_invoke;
    block[3] = &unk_1E84B2E30;
    block[4] = &v18;
    block[5] = &v14;
    dispatch_sync(accessQueue, block);
    if (*(v15 + 6))
    {
      v6 = 0;
      v7 = 0;
      do
      {
        v8 = (v19[3] + v6);
        v9 = *v8;
        v10 = v8[1];
        v12 = 0;
        blockCopy[2](blockCopy, v9, v10, &v12);
        if (v12)
        {
          break;
        }

        ++v7;
        v6 += 16;
      }

      while (v7 < *(v15 + 6));
    }

    v11 = v19[3];
    if (v11)
    {
      jEHf8Xzsv8K(v11);
    }

    _Block_object_dispose(&v14, 8);
    _Block_object_dispose(&v18, 8);
  }
}

void __74__SSVFairPlaySubscriptionController__enumerateSubscriptionInfoUsingBlock___block_invoke()
{
  SSVFairPlayContextIdentifier();

  NjiEJ7prRY3();
}

- (void)_notifySubscriptionStatusDidChange
{
  v3 = dispatch_get_global_queue(0, 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __71__SSVFairPlaySubscriptionController__notifySubscriptionStatusDidChange__block_invoke;
  block[3] = &unk_1E84AC050;
  block[4] = self;
  dispatch_async(v3, block);

  if (self->_hasValidSubscriptionStatusDidChangeNotifyToken)
  {
    subscriptionStatusDidChangeNotifyToken = self->_subscriptionStatusDidChangeNotifyToken;
    v5 = getpid();
    notify_set_state(subscriptionStatusDidChangeNotifyToken, v5);
  }

  notify_post("com.apple.StoreServices.SSVFairPlaySubscriptionControllerSubscriptionStatusDidChangeNotification");
}

void __71__SSVFairPlaySubscriptionController__notifySubscriptionStatusDidChange__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E696AD88] defaultCenter];
  [v2 postNotificationName:@"SSVFairPlaySubscriptionControllerSubscriptionStatusDidChangeNotification" object:*(a1 + 32)];
}

- (id)_subscriptionStatusForFPSubscriptionInfo:(FPSubscriptionInfo_)info
{
  var1 = info.var1;
  if ((info.var1 - 1) > 2)
  {
    v4 = 0;
  }

  else
  {
    v4 = objc_alloc_init(SSVFairPlaySubscriptionStatus);
    [(SSVFairPlaySubscriptionStatus *)v4 setHasSubscriptionLease:var1 & 1];
    [(SSVFairPlaySubscriptionStatus *)v4 setHasSubscriptionSlot:var1 > 1];
  }

  return v4;
}

@end