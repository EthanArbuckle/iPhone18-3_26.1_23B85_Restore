@interface ICDelegationServicePairingSession
- (BOOL)_deriveEncryptionKeysReturningError:(id *)error;
- (ICDelegationServicePairingSession)initWithRole:(int64_t)role securitySettings:(id)settings;
- (ICDelegationServicePairingSessionDelegate)delegate;
- (id)_encryptedDataForData:(id)data;
- (void)_handlePairingSessionCompletionWithError:(id)error;
- (void)_receivedData:(id)data;
- (void)_sendData:(id)data withCompletionHandler:(id)handler;
- (void)dealloc;
- (void)getDecryptedDataForEncryptedData:(id)data withCompletionHandler:(id)handler;
- (void)getEncryptedDataForData:(id)data withCompletionHandler:(id)handler;
- (void)prepareEncryptedSessionWithCompletionHandler:(id)handler;
- (void)receievedData:(id)data;
@end

@implementation ICDelegationServicePairingSession

- (ICDelegationServicePairingSessionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_sendData:(id)data withCompletionHandler:(id)handler
{
  dataCopy = data;
  handlerCopy = handler;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v9 = WeakRetained;
  if (WeakRetained)
  {
    calloutQueue = self->_calloutQueue;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __69__ICDelegationServicePairingSession__sendData_withCompletionHandler___block_invoke;
    v12[3] = &unk_1E7BF9E78;
    v13 = WeakRetained;
    selfCopy = self;
    v15 = dataCopy;
    v16 = handlerCopy;
    dispatch_async(calloutQueue, v12);
  }

  else if (handlerCopy)
  {
    v11 = [MEMORY[0x1E696ABC0] errorWithDomain:@"ICError" code:0 userInfo:0];
    (*(handlerCopy + 2))(handlerCopy, 0, v11);
  }
}

- (void)_receivedData:(id)data
{
  v14 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  if (self->_state == 1)
  {
    v5 = os_log_create("com.apple.amp.iTunesCloud", "Delegation");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      selfCopy2 = self;
      v12 = 2048;
      v13 = [dataCopy length];
      _os_log_impl(&dword_1B4491000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@: Passing data of length %li to pairing session", buf, 0x16u);
    }

    [dataCopy bytes];
    [dataCopy length];
    v6 = PairingSessionExchange();
    if (v6)
    {
      v7 = v6;
      v8 = os_log_create("com.apple.amp.iTunesCloud", "Delegation");
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543618;
        selfCopy2 = self;
        v12 = 1024;
        LODWORD(v13) = v7;
        _os_log_impl(&dword_1B4491000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@: Error returned from PairingSessionExchange: %i", buf, 0x12u);
      }

      v9 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:v7 userInfo:0];
      [(ICDelegationServicePairingSession *)self _handlePairingSessionCompletionWithError:v9];
    }
  }
}

- (BOOL)_deriveEncryptionKeysReturningError:(id *)error
{
  v33 = *MEMORY[0x1E69E9840];
  if (!self->_pairingSession)
  {
    v12 = [MEMORY[0x1E696ABC0] errorWithDomain:@"ICError" code:0 userInfo:0];
    v13 = 0;
    if (!error)
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }

  v5 = [objc_alloc(MEMORY[0x1E695DF88]) initWithLength:32];
  obj = [objc_alloc(MEMORY[0x1E695DF88]) initWithLength:8];
  v27 = [objc_alloc(MEMORY[0x1E695DF88]) initWithLength:32];
  v6 = [objc_alloc(MEMORY[0x1E695DF88]) initWithLength:8];
  role = self->_role;
  v26 = v6;
  if (role == 2)
  {
    v8 = [MEMORY[0x1E695DEF0] dataWithBytes:"DelegationService-Write-Encryption-Key" length:38];
    v9 = MEMORY[0x1E695DEF0];
    v10 = "DelegationService-Read-Encryption-Key";
    v11 = 37;
    goto LABEL_8;
  }

  if (role == 1)
  {
    v8 = [MEMORY[0x1E695DEF0] dataWithBytes:"DelegationService-Read-Encryption-Key" length:37];
    v9 = MEMORY[0x1E695DEF0];
    v10 = "DelegationService-Write-Encryption-Key";
    v11 = 38;
LABEL_8:
    v14 = [v9 dataWithBytes:v10 length:v11];
    goto LABEL_10;
  }

  v14 = 0;
  v8 = 0;
LABEL_10:
  [v8 bytes];
  [v8 length];
  [v5 length];
  [v5 mutableBytes];
  v15 = PairingSessionDeriveKey();
  if (v15)
  {
    LODWORD(v17) = v15;
    v16 = os_log_create("com.apple.amp.iTunesCloud", "Delegation");
    v17 = v17;
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      selfCopy2 = self;
      v31 = 2048;
      v32 = v17;
      _os_log_impl(&dword_1B4491000, v16, OS_LOG_TYPE_DEFAULT, "%{public}@: Failed to derive input key (OSStatus = %li)", buf, 0x16u);
    }

    v21 = v26;
LABEL_19:

    v12 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:v17 userInfo:0];
    v13 = 0;
    goto LABEL_20;
  }

  mutableBytes = [obj mutableBytes];
  v19 = [obj length];
  if (mutableBytes)
  {
    memset_s(mutableBytes, v19, 0, v19);
  }

  [v14 bytes];
  [v14 length];
  [v27 length];
  [v27 mutableBytes];
  v20 = PairingSessionDeriveKey();
  if (v20)
  {
    LODWORD(v17) = v20;
    v16 = os_log_create("com.apple.amp.iTunesCloud", "Delegation");
    v21 = v26;
    v17 = v17;
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      selfCopy2 = self;
      v31 = 2048;
      v32 = v17;
      _os_log_impl(&dword_1B4491000, v16, OS_LOG_TYPE_DEFAULT, "%{public}@: Failed to derive output key (OSStatus = %li)", buf, 0x16u);
    }

    goto LABEL_19;
  }

  v21 = v26;
  mutableBytes2 = [v26 mutableBytes];
  v25 = [v26 length];
  if (mutableBytes2)
  {
    memset_s(mutableBytes2, v25, 0, v25);
  }

  objc_storeStrong(&self->_inputKey, v5);
  objc_storeStrong(&self->_inputNonce, obj);
  objc_storeStrong(&self->_outputKey, v27);
  objc_storeStrong(&self->_outputNonce, v26);
  v12 = 0;
  v13 = 1;
LABEL_20:

  if (error)
  {
LABEL_21:
    v22 = v12;
    *error = v12;
  }

LABEL_22:

  return v13;
}

- (void)_handlePairingSessionCompletionWithError:(id)error
{
  v24 = *MEMORY[0x1E69E9840];
  errorCopy = error;
  v5 = os_log_create("com.apple.amp.iTunesCloud", "Delegation");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    selfCopy = self;
    v22 = 2114;
    v23 = errorCopy;
    _os_log_impl(&dword_1B4491000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@: Finishing pairing session with error: %{public}@", buf, 0x16u);
  }

  if (errorCopy)
  {
    v6 = errorCopy;
    v7 = 0;
  }

  else
  {
    v19 = 0;
    v8 = [(ICDelegationServicePairingSession *)self _deriveEncryptionKeysReturningError:&v19];
    v9 = v19;
    v10 = v9;
    if (v8)
    {
      v6 = 0;
      v7 = 2;
    }

    else
    {
      if (v9)
      {
        v11 = v9;
      }

      else
      {
        v11 = [MEMORY[0x1E696ABC0] errorWithDomain:@"ICError" code:0 userInfo:0];
      }

      v6 = v11;
      v7 = 0;
    }
  }

  self->_state = v7;
  v12 = [(NSMutableArray *)self->_existingPairingCompletionHandlers copy];
  existingPairingCompletionHandlers = self->_existingPairingCompletionHandlers;
  self->_existingPairingCompletionHandlers = 0;

  if ([v12 count])
  {
    calloutQueue = self->_calloutQueue;
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __78__ICDelegationServicePairingSession__handlePairingSessionCompletionWithError___block_invoke;
    v15[3] = &unk_1E7BFA178;
    v16 = v12;
    v17 = errorCopy;
    v18 = v6;
    dispatch_async(calloutQueue, v15);
  }
}

void __78__ICDelegationServicePairingSession__handlePairingSessionCompletionWithError___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v2);
        }

        (*(*(*(&v7 + 1) + 8 * v6) + 16))(*(*(&v7 + 1) + 8 * v6), *(a1 + 40) == 0, *(a1 + 48));
        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

- (id)_encryptedDataForData:(id)data
{
  v13 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  v5 = [objc_alloc(MEMORY[0x1E695DF88]) initWithLength:{objc_msgSend(dataCopy, "length")}];
  [(NSData *)self->_outputKey bytes];
  [(NSMutableData *)self->_outputNonce bytes];
  [dataCopy bytes];
  [dataCopy length];
  [v5 mutableBytes];
  chacha20_poly1305_encrypt_all_64x64();
  [v5 appendBytes:v12 length:16];
  mutableBytes = [(NSMutableData *)self->_outputNonce mutableBytes];
  v7 = [(NSMutableData *)self->_outputNonce length];
  if (v7)
  {
    v8 = v7 - 1;
    do
    {
      if (++*mutableBytes++)
      {
        v10 = 1;
      }

      else
      {
        v10 = v8 == 0;
      }

      --v8;
    }

    while (!v10);
  }

  return v5;
}

- (void)getEncryptedDataForData:(id)data withCompletionHandler:(id)handler
{
  dataCopy = data;
  handlerCopy = handler;
  accessSerialQueue = self->_accessSerialQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __83__ICDelegationServicePairingSession_getEncryptedDataForData_withCompletionHandler___block_invoke;
  block[3] = &unk_1E7BF9E28;
  block[4] = self;
  v12 = dataCopy;
  v13 = handlerCopy;
  v9 = handlerCopy;
  v10 = dataCopy;
  dispatch_async(accessSerialQueue, block);
}

void __83__ICDelegationServicePairingSession_getEncryptedDataForData_withCompletionHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2[9] == 2)
  {
    v3 = [v2 _encryptedDataForData:*(a1 + 40)];
    v4 = *(*(a1 + 32) + 16);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __83__ICDelegationServicePairingSession_getEncryptedDataForData_withCompletionHandler___block_invoke_2;
    block[3] = &unk_1E7BF9EC8;
    v5 = *(a1 + 48);
    v10 = v3;
    v11 = v5;
    v6 = v3;
    dispatch_async(v4, block);
  }

  else
  {
    v7 = *(a1 + 48);
    v8 = [MEMORY[0x1E696ABC0] errorWithDomain:@"ICError" code:-7101 userInfo:0];
    (*(v7 + 16))(v7, 0, v8);
  }
}

void __83__ICDelegationServicePairingSession_getEncryptedDataForData_withCompletionHandler___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (*(a1 + 32))
  {
    v2 = *(v1 + 16);
    v3 = *(a1 + 40);

    v2(v3);
  }

  else
  {
    v4 = [MEMORY[0x1E696ABC0] errorWithDomain:@"ICError" code:-7806 userInfo:0];
    (*(v1 + 16))(v1, 0, v4);
  }
}

- (void)getDecryptedDataForEncryptedData:(id)data withCompletionHandler:(id)handler
{
  dataCopy = data;
  handlerCopy = handler;
  accessSerialQueue = self->_accessSerialQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __92__ICDelegationServicePairingSession_getDecryptedDataForEncryptedData_withCompletionHandler___block_invoke;
  block[3] = &unk_1E7BF9E28;
  block[4] = self;
  v12 = dataCopy;
  v13 = handlerCopy;
  v9 = handlerCopy;
  v10 = dataCopy;
  dispatch_async(accessSerialQueue, block);
}

void __92__ICDelegationServicePairingSession_getDecryptedDataForEncryptedData_withCompletionHandler___block_invoke(uint64_t a1)
{
  if (*(*(a1 + 32) + 72) != 2)
  {
    v2 = MEMORY[0x1E696ABC0];
    v3 = -7101;
    goto LABEL_5;
  }

  if ([*(a1 + 40) length] <= 0xF)
  {
    v2 = MEMORY[0x1E696ABC0];
    v3 = -7805;
LABEL_5:
    v4 = [v2 errorWithDomain:@"ICError" code:v3 userInfo:0];
    v5 = 0;
    goto LABEL_17;
  }

  v6 = [*(a1 + 40) subdataWithRange:{objc_msgSend(*(a1 + 40), "length") - 16, 16}];
  v7 = [*(a1 + 40) subdataWithRange:{0, objc_msgSend(*(a1 + 40), "length") - 16}];
  v5 = [objc_alloc(MEMORY[0x1E695DF88]) initWithLength:{objc_msgSend(v7, "length")}];
  [*(*(a1 + 32) + 32) bytes];
  [*(*(a1 + 32) + 40) bytes];
  [v7 bytes];
  [v7 length];
  [v5 mutableBytes];
  [v6 bytes];
  v8 = chacha20_poly1305_decrypt_all_64x64();
  v9 = [*(*(a1 + 32) + 40) mutableBytes];
  v10 = [*(*(a1 + 32) + 40) length];
  if (v10)
  {
    v11 = v10 - 1;
    do
    {
      if (++*v9++)
      {
        v13 = 1;
      }

      else
      {
        v13 = v11 == 0;
      }

      --v11;
    }

    while (!v13);
  }

  if (v8)
  {

    v4 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:v8 userInfo:0];
    v5 = 0;
  }

  else
  {
    v4 = 0;
  }

LABEL_17:
  v14 = *(*(a1 + 32) + 16);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __92__ICDelegationServicePairingSession_getDecryptedDataForEncryptedData_withCompletionHandler___block_invoke_2;
  block[3] = &unk_1E7BF9E28;
  v15 = *(a1 + 48);
  v20 = v4;
  v21 = v15;
  v19 = v5;
  v16 = v4;
  v17 = v5;
  dispatch_async(v14, block);
}

- (void)receievedData:(id)data
{
  dataCopy = data;
  accessSerialQueue = self->_accessSerialQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __51__ICDelegationServicePairingSession_receievedData___block_invoke;
  v7[3] = &unk_1E7BFA078;
  v7[4] = self;
  v8 = dataCopy;
  v6 = dataCopy;
  dispatch_async(accessSerialQueue, v7);
}

- (void)prepareEncryptedSessionWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  accessSerialQueue = self->_accessSerialQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __82__ICDelegationServicePairingSession_prepareEncryptedSessionWithCompletionHandler___block_invoke;
  v7[3] = &unk_1E7BF9EC8;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  dispatch_async(accessSerialQueue, v7);
}

void __82__ICDelegationServicePairingSession_prepareEncryptedSessionWithCompletionHandler___block_invoke(uint64_t a1)
{
  v27 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = v3[9];
  if (v4 == 2)
  {
    if (!v2)
    {
      return;
    }

    v5 = v3[2];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __82__ICDelegationServicePairingSession_prepareEncryptedSessionWithCompletionHandler___block_invoke_2;
    block[3] = &unk_1E7BF9D20;
    v23 = v2;
    dispatch_async(v5, block);
    v6 = v23;
    goto LABEL_34;
  }

  if (v2)
  {
    v7 = v3[3];
    if (!v7)
    {
      v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v9 = *(a1 + 32);
      v10 = *(v9 + 24);
      *(v9 + 24) = v8;

      v2 = *(a1 + 40);
      v7 = *(*(a1 + 32) + 24);
    }

    v11 = MEMORY[0x1B8C781E0](v2);
    [v7 addObject:v11];

    v3 = *(a1 + 32);
    v4 = v3[9];
  }

  if (!v4)
  {
    v3[9] = 1;
    v12 = os_log_create("com.apple.amp.iTunesCloud", "Delegation");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = *(a1 + 32);
      v14 = *(v13 + 96);
      *buf = 138543618;
      *&buf[4] = v13;
      v25 = 2112;
      v26 = v14;
      _os_log_impl(&dword_1B4491000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@: Opening with security settings: %@", buf, 0x16u);
    }

    v15 = [*(*(a1 + 32) + 96) securityMode];
    v16 = *(a1 + 32);
    v17 = *(v16 + 88);
    if (v17 != 2)
    {
      if (v17 == 1)
      {
        switch(v15)
        {
          case 1:
            v6 = @"<default>";
            goto LABEL_25;
          case 2:
            v6 = 0;
            v18 = 3;
            goto LABEL_28;
          case 4:
            v6 = [*(v16 + 96) password];
LABEL_25:
            v18 = 1;
            goto LABEL_28;
        }
      }

LABEL_21:
      v18 = 0;
      v6 = 0;
      goto LABEL_28;
    }

    switch(v15)
    {
      case 1:
        v6 = @"<default>";
        break;
      case 2:
        v6 = 0;
        v18 = 4;
        goto LABEL_28;
      case 4:
        v6 = [*(v16 + 96) password];
        break;
      default:
        goto LABEL_21;
    }

    v18 = 2;
LABEL_28:
    *buf = 0;
    v19 = PairingSessionCreate();
    if (v19)
    {
      v20 = *(a1 + 32);
      v21 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:v19 userInfo:0];
      [v20 _handlePairingSessionCompletionWithError:v21];
    }

    else
    {
      *(*(a1 + 32) + 64) = *buf;
      PairingSessionSetFlags();
      if ([(__CFString *)v6 length])
      {
        [(__CFString *)v6 UTF8String];
        PairingSessionSetSetupCode();
      }

      if ((v18 | 2) == 3)
      {
        [*(a1 + 32) _receivedData:0];
      }
    }

LABEL_34:
  }
}

- (void)dealloc
{
  pairingSession = self->_pairingSession;
  if (pairingSession)
  {
    CFRelease(pairingSession);
  }

  v4.receiver = self;
  v4.super_class = ICDelegationServicePairingSession;
  [(ICDelegationServicePairingSession *)&v4 dealloc];
}

- (ICDelegationServicePairingSession)initWithRole:(int64_t)role securitySettings:(id)settings
{
  settingsCopy = settings;
  v14.receiver = self;
  v14.super_class = ICDelegationServicePairingSession;
  v8 = [(ICDelegationServicePairingSession *)&v14 init];
  if (v8)
  {
    v9 = dispatch_queue_create("com.apple.iTunesCloud.ICDelegationServicePairingSession.accessSerialQueue", 0);
    accessSerialQueue = v8->_accessSerialQueue;
    v8->_accessSerialQueue = v9;

    v11 = dispatch_queue_create("com.apple.iTunesCloud.ICDelegationServicePairingSession.calloutQueue", 0);
    calloutQueue = v8->_calloutQueue;
    v8->_calloutQueue = v11;

    v8->_role = role;
    objc_storeStrong(&v8->_securitySettings, settings);
  }

  return v8;
}

@end