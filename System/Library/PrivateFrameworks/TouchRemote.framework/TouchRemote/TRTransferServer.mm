@interface TRTransferServer
- (TRTransferServer)init;
- (TRTransferServerDelegate)delegate;
- (id)_onQueue_didReceiveEncryptedData:(id)a3;
- (id)transferDidReceiveData:(id)a3;
- (int)_runSetupStepWithInput:(const void *)a3 inputLength:(unint64_t)a4 outputData:(id *)a5;
- (int)_runVerifyStepWithInput:(const void *)a3 inputLength:(unint64_t)a4 outputData:(id *)a5;
- (void)_beginAdvertisingIfPowered;
- (void)_onQueue_didFinishPairing;
- (void)dealloc;
- (void)start;
- (void)stop;
- (void)transferComplete;
- (void)transferDidFailToStartAdvertising:(id)a3;
- (void)transferDidFailWithError:(id)a3;
- (void)transferDidUpdateAdvertiserState:(id)a3;
@end

@implementation TRTransferServer

- (TRTransferServer)init
{
  v12.receiver = self;
  v12.super_class = TRTransferServer;
  v2 = [(TRTransferServer *)&v12 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.TouchRemote.TRTransferServer", 0);
    queue = v2->_queue;
    v2->_queue = v3;

    v5 = dispatch_semaphore_create(0);
    responseSemaphore = v2->_responseSemaphore;
    v2->_responseSemaphore = v5;

    v7 = objc_alloc(MEMORY[0x277D7BC78]);
    v8 = dispatch_get_global_queue(0, 0);
    v9 = [v7 initWithDelegate:v2 queue:v8];
    transferSession = v2->_transferSession;
    v2->_transferSession = v9;

    v2->_advertiserState = [(WPTransfer *)v2->_transferSession advertiserState];
  }

  return v2;
}

- (void)dealloc
{
  [(WPTransfer *)self->_transferSession invalidate];
  if (self->_waitingOnSemaphore)
  {
    dispatch_semaphore_signal(self->_responseSemaphore);
  }

  pairingSession = self->_pairingSession;
  if (pairingSession)
  {
    CFRelease(pairingSession);
  }

  if (self->_aesContext)
  {
    AES_CTR_Final();
    free(self->_aesContext);
  }

  v4.receiver = self;
  v4.super_class = TRTransferServer;
  [(TRTransferServer *)&v4 dealloc];
}

- (void)transferDidUpdateAdvertiserState:(id)a3
{
  v4 = [a3 advertiserState];
  queue = self->_queue;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __53__TRTransferServer_transferDidUpdateAdvertiserState___block_invoke;
  v6[3] = &unk_279DCEB80;
  v6[4] = self;
  v6[5] = v4;
  dispatch_async(queue, v6);
}

_BYTE *__53__TRTransferServer_transferDidUpdateAdvertiserState___block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  *(*(a1 + 32) + 64) = *(a1 + 40);
  if (_TRLogEnabled == 1)
  {
    v2 = TRLogHandle();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = *(a1 + 40);
      v6 = 134217984;
      v7 = v3;
      _os_log_impl(&dword_26F2A2000, v2, OS_LOG_TYPE_DEFAULT, "[TRTransferServer] Advertiser state: %ld", &v6, 0xCu);
    }
  }

  result = *(a1 + 32);
  if (result[56] == 1)
  {
    result = [result _beginAdvertisingIfPowered];
  }

  v5 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)transferDidFailToStartAdvertising:(id)a3
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = a3;
  if (_TRLogEnabled == 1)
  {
    v4 = TRLogHandle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 138412290;
      v7 = v3;
      _os_log_impl(&dword_26F2A2000, v4, OS_LOG_TYPE_DEFAULT, "[TRTransferServer] Did fail to start advertising: %@", &v6, 0xCu);
    }
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (id)transferDidReceiveData:(id)a3
{
  v4 = [a3 copy];
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__0;
  v17 = __Block_byref_object_dispose__0;
  v18 = 0;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __43__TRTransferServer_transferDidReceiveData___block_invoke;
  block[3] = &unk_279DCEBD0;
  v10 = v4;
  v11 = self;
  v12 = &v13;
  v6 = v4;
  dispatch_sync(queue, block);
  v7 = v14[5];

  _Block_object_dispose(&v13, 8);

  return v7;
}

void __43__TRTransferServer_transferDidReceiveData___block_invoke(uint64_t a1)
{
  v36 = *MEMORY[0x277D85DE8];
  if (_TRLogEnabled == 1)
  {
    v2 = TRLogHandle();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = *(a1 + 32);
      v4 = *(*(a1 + 40) + 32);
      *buf = 138412546;
      v33 = v3;
      v34 = 2048;
      v35 = v4;
      _os_log_impl(&dword_26F2A2000, v2, OS_LOG_TYPE_DEFAULT, "[TRTransferServer] Received a full packet: %@, state: %li", buf, 0x16u);
    }
  }

  v5 = *(a1 + 40);
  v6 = v5[4];
  if (v6 > 1)
  {
    if (v6 != 2)
    {
      if (v6 == 3)
      {
        v7 = [*(a1 + 40) _onQueue_didReceiveEncryptedData:*(a1 + 32)];
        v8 = *(*(a1 + 48) + 8);
        v9 = *(v8 + 40);
        *(v8 + 40) = v7;
        goto LABEL_47;
      }

LABEL_12:
      if (_TRLogEnabled == 1)
      {
        v9 = TRLogHandle();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          v10 = *(*(a1 + 40) + 32);
          *buf = 134217984;
          v33 = v10;
          v11 = "[TRTransferServer] Error: Invalid pairing state (%li)";
LABEL_23:
          _os_log_impl(&dword_26F2A2000, v9, OS_LOG_TYPE_DEFAULT, v11, buf, 0xCu);
          goto LABEL_47;
        }

        goto LABEL_47;
      }

      goto LABEL_48;
    }

    v16 = [*(a1 + 32) bytes];
    v17 = [*(a1 + 32) length];
    v30 = 0;
    v18 = [v5 _runVerifyStepWithInput:v16 inputLength:v17 outputData:&v30];
    v19 = v30;
    v9 = v30;
    if (v18)
    {
      if (_TRLogEnabled == 1)
      {
        v20 = TRLogHandle();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134217984;
          v33 = v18;
          v21 = "[TRTransferServer] Verify failed: %li";
LABEL_33:
          _os_log_impl(&dword_26F2A2000, v20, OS_LOG_TYPE_DEFAULT, v21, buf, 0xCu);
        }

LABEL_34:
      }

LABEL_35:
      v25 = *(a1 + 40);
      v26 = *(v25 + 24);
      if (v26)
      {
        CFRelease(v26);
        *(*(a1 + 40) + 24) = 0;
        v25 = *(a1 + 40);
      }

      *(v25 + 32) = 0;
      goto LABEL_47;
    }

    if (_TRLogEnabled == 1)
    {
      v27 = TRLogHandle();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v33 = v9;
        v28 = "[TRTransferServer] Verify output data: %@";
        goto LABEL_44;
      }

LABEL_45:
    }

LABEL_46:
    objc_storeStrong((*(*(a1 + 48) + 8) + 40), v19);
    goto LABEL_47;
  }

  if (v6)
  {
    if (v6 != 1)
    {
      goto LABEL_12;
    }

LABEL_29:
    v22 = [*(a1 + 32) bytes];
    v23 = [*(a1 + 32) length];
    v31 = 0;
    v24 = [v5 _runSetupStepWithInput:v22 inputLength:v23 outputData:&v31];
    v19 = v31;
    v9 = v31;
    if (v24)
    {
      if (_TRLogEnabled == 1)
      {
        v20 = TRLogHandle();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134217984;
          v33 = v24;
          v21 = "[TRTransferServer] Setup failed: %li";
          goto LABEL_33;
        }

        goto LABEL_34;
      }

      goto LABEL_35;
    }

    if (_TRLogEnabled == 1)
    {
      v27 = TRLogHandle();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v33 = v9;
        v28 = "[TRTransferServer] Setup output data: %@";
LABEL_44:
        _os_log_impl(&dword_26F2A2000, v27, OS_LOG_TYPE_DEFAULT, v28, buf, 0xCu);
        goto LABEL_45;
      }

      goto LABEL_45;
    }

    goto LABEL_46;
  }

  if (_TRLogEnabled == 1)
  {
    v12 = TRLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_26F2A2000, v12, OS_LOG_TYPE_DEFAULT, "[TRTransferServer] Pairing started.", buf, 2u);
    }

    v13 = *(a1 + 40);
  }

  v14 = gQblcfSzZBQsYCCV();
  if (!v14)
  {
    *(*(a1 + 40) + 32) = 1;
    v5 = *(a1 + 40);
    goto LABEL_29;
  }

  if (_TRLogEnabled == 1)
  {
    v15 = v14;
    v9 = TRLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v33 = v15;
      v11 = "[TRTransferServer] Error: Unable to start pairing session: %li";
      goto LABEL_23;
    }

LABEL_47:
  }

LABEL_48:
  v29 = *MEMORY[0x277D85DE8];
}

- (void)transferDidFailWithError:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __45__TRTransferServer_transferDidFailWithError___block_invoke;
  v7[3] = &unk_279DCEC20;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(queue, v7);
}

void __45__TRTransferServer_transferDidFailWithError___block_invoke(int8x16_t *a1)
{
  v16 = *MEMORY[0x277D85DE8];
  if (_TRLogEnabled == 1)
  {
    v2 = TRLogHandle();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = a1[2].i64[0];
      *buf = 138412290;
      v15 = v3;
      _os_log_impl(&dword_26F2A2000, v2, OS_LOG_TYPE_DEFAULT, "[TRTransferServer] Transfer failed with error: %@", buf, 0xCu);
    }
  }

  v4 = a1[2].i64[1];
  v5 = *(v4 + 24);
  if (v5)
  {
    CFRelease(v5);
    *(a1[2].i64[1] + 24) = 0;
    v4 = a1[2].i64[1];
  }

  *(v4 + 32) = 0;
  WeakRetained = objc_loadWeakRetained((a1[2].i64[1] + 80));
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __45__TRTransferServer_transferDidFailWithError___block_invoke_122;
  block[3] = &unk_279DCED88;
  v12 = WeakRetained;
  v10 = a1[2];
  v7 = v10.i64[0];
  v13 = vextq_s8(v10, v10, 8uLL);
  v8 = WeakRetained;
  dispatch_sync(MEMORY[0x277D85CD0], block);

  v9 = *MEMORY[0x277D85DE8];
}

uint64_t __45__TRTransferServer_transferDidFailWithError___block_invoke_122(void *a1)
{
  v2 = a1[4];
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v4 = a1[4];
    v5 = a1[5];
    v6 = a1[6];

    return [v4 server:v5 didFailToReceiveData:v6];
  }

  return result;
}

- (void)transferComplete
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __36__TRTransferServer_transferComplete__block_invoke;
  block[3] = &unk_279DCEBF8;
  block[4] = self;
  dispatch_async(queue, block);
}

void __36__TRTransferServer_transferComplete__block_invoke(uint64_t a1)
{
  if (_TRLogEnabled == 1)
  {
    v2 = TRLogHandle();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_26F2A2000, v2, OS_LOG_TYPE_DEFAULT, "[TRTransferServer] Transfer completed.", buf, 2u);
    }
  }

  v3 = *(a1 + 32);
  v4 = *(v3 + 24);
  if (v4)
  {
    CFRelease(v4);
    *(*(a1 + 32) + 24) = 0;
    v3 = *(a1 + 32);
  }

  *(v3 + 32) = 0;
  v5 = *(a1 + 32);
  if ((*(v5 + 16) & 1) == 0)
  {
    WeakRetained = objc_loadWeakRetained((v5 + 80));
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __36__TRTransferServer_transferComplete__block_invoke_125;
    v9[3] = &unk_279DCEC20;
    v7 = *(a1 + 32);
    v10 = WeakRetained;
    v11 = v7;
    v8 = WeakRetained;
    dispatch_sync(MEMORY[0x277D85CD0], v9);
  }
}

uint64_t __36__TRTransferServer_transferComplete__block_invoke_125(uint64_t a1)
{
  v2 = *(a1 + 32);
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);

    return [v4 server:v5 didFailToReceiveData:0];
  }

  return result;
}

- (void)start
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __25__TRTransferServer_start__block_invoke;
  block[3] = &unk_279DCEBF8;
  block[4] = self;
  dispatch_async(queue, block);
}

uint64_t __25__TRTransferServer_start__block_invoke(uint64_t result)
{
  v1 = *(result + 32);
  if ((*(v1 + 56) & 1) == 0)
  {
    *(v1 + 56) = 1;
    return [*(result + 32) _beginAdvertisingIfPowered];
  }

  return result;
}

- (void)stop
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __24__TRTransferServer_stop__block_invoke;
  block[3] = &unk_279DCEBF8;
  block[4] = self;
  dispatch_async(queue, block);
}

uint64_t __24__TRTransferServer_stop__block_invoke(uint64_t result)
{
  v1 = *(result + 32);
  if (*(v1 + 56) == 1)
  {
    v2 = result;
    *(v1 + 56) = 0;
    v3 = *(result + 32);
    if (*(v3 + 64) == 3)
    {
      if (_TRLogEnabled == 1)
      {
        v4 = TRLogHandle();
        if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
        {
          *v5 = 0;
          _os_log_impl(&dword_26F2A2000, v4, OS_LOG_TYPE_DEFAULT, "[TRTransferServer] Stopping advertising...", v5, 2u);
        }

        v3 = *(v2 + 32);
      }

      return [*(v3 + 72) stopAdvertising];
    }
  }

  return result;
}

- (void)_beginAdvertisingIfPowered
{
  if (self->_advertiserState == 3)
  {
    v7 = v2;
    v8 = v3;
    if (_TRLogEnabled == 1)
    {
      v5 = TRLogHandle();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *v6 = 0;
        _os_log_impl(&dword_26F2A2000, v5, OS_LOG_TYPE_DEFAULT, "[TRTransferServer] Starting advertising...", v6, 2u);
      }
    }

    [(WPTransfer *)self->_transferSession startAdvertising];
  }
}

- (void)_onQueue_didFinishPairing
{
  v22 = *MEMORY[0x277D85DE8];
  if (_TRLogEnabled == 1)
  {
    v3 = TRLogHandle();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_26F2A2000, v3, OS_LOG_TYPE_DEFAULT, "[TRTransferServer] Pairing finished.", buf, 2u);
    }
  }

  v4 = [@"TRBT-Key" dataUsingEncoding:4];
  v5 = [@"TRBT-IV" dataUsingEncoding:4];
  pairingSession = self->_pairingSession;
  [v4 bytes];
  [v4 length];
  [v5 bytes];
  [v5 length];
  v7 = PCFdAVst();
  if (v7)
  {
    if (_TRLogEnabled != 1)
    {
LABEL_15:
      v11 = 1;
      goto LABEL_16;
    }

    v8 = v7;
    v9 = TRLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *v19 = 134217984;
      v20 = v8;
      v10 = "[TRTransferServer] Error: Unable to derive key: %li";
LABEL_13:
      _os_log_impl(&dword_26F2A2000, v9, OS_LOG_TYPE_DEFAULT, v10, v19, 0xCu);
      goto LABEL_14;
    }

    goto LABEL_14;
  }

  self->_aesContext = malloc_type_calloc(1uLL, 0x30uLL, 0x1020040423EBB36uLL);
  v11 = AES_CTR_Init();
  if (v11 && _TRLogEnabled == 1)
  {
    v9 = TRLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *v19 = 134217984;
      v20 = v11;
      v10 = "[TRTransferServer] Error: Unable to initialize context: %li";
      goto LABEL_13;
    }

LABEL_14:

    goto LABEL_15;
  }

LABEL_16:
  v12 = self->_pairingSession;
  if (v12)
  {
    CFRelease(v12);
    self->_pairingSession = 0;
  }

  if (v11)
  {
    self->_pairingState = 0;
  }

  else
  {
    self->_pairingState = 3;
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __45__TRTransferServer__onQueue_didFinishPairing__block_invoke;
    v16[3] = &unk_279DCEC20;
    v17 = WeakRetained;
    v18 = self;
    v14 = WeakRetained;
    dispatch_sync(MEMORY[0x277D85CD0], v16);
  }

  v15 = *MEMORY[0x277D85DE8];
}

uint64_t __45__TRTransferServer__onQueue_didFinishPairing__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);

    return [v4 serverWillReceiveData:v5];
  }

  return result;
}

- (id)_onQueue_didReceiveEncryptedData:(id)a3
{
  v32 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (![v4 length])
  {
    v6 = 0;
    goto LABEL_16;
  }

  v5 = [objc_alloc(MEMORY[0x277CBEB28]) initWithLength:{objc_msgSend(v4, "length")}];
  if (self->_aesContext)
  {
    [v4 bytes];
    [v4 length];
    [v5 mutableBytes];
    if (!AES_CTR_Update())
    {
      v24 = 0;
      v25 = &v24;
      v26 = 0x3032000000;
      v27 = __Block_byref_object_copy__0;
      v28 = __Block_byref_object_dispose__0;
      v29 = 0;
      v20 = 0;
      v21 = &v20;
      v22 = 0x2020000000;
      v23 = 0;
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      self->_didSendData = 1;
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __53__TRTransferServer__onQueue_didReceiveEncryptedData___block_invoke;
      block[3] = &unk_279DCEDB0;
      v8 = WeakRetained;
      v18 = &v20;
      v15 = v8;
      v16 = self;
      v17 = v5;
      v19 = &v24;
      dispatch_sync(MEMORY[0x277D85CD0], block);
      if (*(v21 + 24) == 1)
      {
        self->_waitingOnSemaphore = 1;
        dispatch_semaphore_wait(self->_responseSemaphore, 0xFFFFFFFFFFFFFFFFLL);
        self->_waitingOnSemaphore = 0;
      }

      if (v25[5])
      {
        v9 = objc_alloc(MEMORY[0x277CBEB28]);
        v6 = [v9 initWithLength:{objc_msgSend(v25[5], "length")}];
        if (self->_aesContext && ([v25[5] bytes], objc_msgSend(v25[5], "length"), v10 = v6, -[NSObject mutableBytes](v6, "mutableBytes"), !AES_CTR_Update()))
        {
          if (_TRLogEnabled != 1)
          {
            goto LABEL_14;
          }

          v11 = TRLogHandle();
          if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v31 = v6;
            _os_log_impl(&dword_26F2A2000, v11, OS_LOG_TYPE_DEFAULT, "[TRTransferServer] Writing exchange data response: %@", buf, 0xCu);
          }
        }

        else
        {
          v11 = v6;
          v6 = 0;
        }
      }

      else
      {
        v6 = 0;
      }

LABEL_14:

      _Block_object_dispose(&v20, 8);
      _Block_object_dispose(&v24, 8);

      goto LABEL_15;
    }
  }

  v6 = 0;
LABEL_15:

LABEL_16:
  v12 = *MEMORY[0x277D85DE8];

  return v6;
}

void __53__TRTransferServer__onQueue_didReceiveEncryptedData___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (objc_opt_respondsToSelector())
  {
    *(*(*(a1 + 56) + 8) + 24) = 1;
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v5 = [*(a1 + 48) copy];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __53__TRTransferServer__onQueue_didReceiveEncryptedData___block_invoke_2;
    v7[3] = &unk_279DCEBA8;
    v6 = *(a1 + 64);
    v7[4] = *(a1 + 40);
    v7[5] = v6;
    [v3 server:v4 didReceiveData:v5 replyHandler:v7];
  }
}

void __53__TRTransferServer__onQueue_didReceiveEncryptedData___block_invoke_2(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [v5 length];
  if (v3)
  {
    v4 = [v5 copy];
  }

  else
  {
    v4 = 0;
  }

  objc_storeStrong((*(*(a1 + 40) + 8) + 40), v4);
  if (v3)
  {
  }

  dispatch_semaphore_signal(*(*(a1 + 32) + 48));
}

- (int)_runSetupStepWithInput:(const void *)a3 inputLength:(unint64_t)a4 outputData:(id *)a5
{
  v19 = *MEMORY[0x277D85DE8];
  memset(v18, 0, sizeof(v18));
  if (_TRLogEnabled == 1)
  {
    v8 = TRLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v17 = a4;
      _os_log_impl(&dword_26F2A2000, v8, OS_LOG_TYPE_DEFAULT, "[TRTransferServer] Setup input data length: %ld", buf, 0xCu);
    }
  }

  if (self->_pairingSession)
  {
    v9 = h4BvW7X();
    if (v9)
    {
      v10 = v9;
      if (_TRLogEnabled == 1)
      {
        v11 = TRLogHandle();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134217984;
          v17 = v10;
          _os_log_impl(&dword_26F2A2000, v11, OS_LOG_TYPE_DEFAULT, "[TRTransferServer] Unable to do session pairing setup exhange (%li)", buf, 0xCu);
        }
      }
    }

    else
    {
      if (a5)
      {
        *a5 = [MEMORY[0x277CBEA90] dataWithBytes:v18 length:0];
      }

      v10 = 0;
      self->_pairingState = 1;
    }
  }

  else
  {
    if (_TRLogEnabled == 1)
    {
      v12 = TRLogHandle();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        pairingState = self->_pairingState;
        *buf = 134217984;
        v17 = pairingState;
        _os_log_impl(&dword_26F2A2000, v12, OS_LOG_TYPE_DEFAULT, "[TRTransferServer] No session for pairing setup exhange (state: %ld)", buf, 0xCu);
      }
    }

    v10 = 0;
  }

  v14 = *MEMORY[0x277D85DE8];
  return v10;
}

- (int)_runVerifyStepWithInput:(const void *)a3 inputLength:(unint64_t)a4 outputData:(id *)a5
{
  v17 = *MEMORY[0x277D85DE8];
  memset(v16, 0, sizeof(v16));
  if (self->_pairingSession)
  {
    v7 = VBAEFt();
    if (v7)
    {
      v8 = v7;
      if (_TRLogEnabled == 1)
      {
        v9 = TRLogHandle();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134217984;
          v15 = v8;
          _os_log_impl(&dword_26F2A2000, v9, OS_LOG_TYPE_DEFAULT, "[TRTransferServer] Unable to do session pairing verify exhange (%li)", buf, 0xCu);
        }
      }
    }

    else
    {
      if (a5)
      {
        *a5 = [MEMORY[0x277CBEA90] dataWithBytes:v16 length:0];
      }

      v8 = 0;
      self->_pairingState = 2;
    }
  }

  else
  {
    if (_TRLogEnabled == 1)
    {
      v10 = TRLogHandle();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        pairingState = self->_pairingState;
        *buf = 134217984;
        v15 = pairingState;
        _os_log_impl(&dword_26F2A2000, v10, OS_LOG_TYPE_DEFAULT, "[TRTransferServer] No session for pairing verify exhange (state: %ld)", buf, 0xCu);
      }
    }

    v8 = 0;
  }

  v12 = *MEMORY[0x277D85DE8];
  return v8;
}

- (TRTransferServerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end