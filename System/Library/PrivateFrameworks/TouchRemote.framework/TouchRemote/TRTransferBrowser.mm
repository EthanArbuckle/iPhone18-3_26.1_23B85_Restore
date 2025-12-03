@interface TRTransferBrowser
- (TRTransferBrowser)init;
- (TRTransferBrowserDelegate)delegate;
- (id)_didReceiveEncryptedData:(id)data;
- (id)transferDidReceiveData:(id)data;
- (int)_runSetupStepWithInput:(const void *)input inputLength:(unint64_t)length outputData:(id *)data;
- (int)_runVerifyStepWithInput:(const void *)input inputLength:(unint64_t)length outputData:(id *)data;
- (void)_beginScanningIfPowered;
- (void)_didFinishPairing;
- (void)dealloc;
- (void)start;
- (void)stop;
- (void)transferComplete;
- (void)transferDidFailWithError:(id)error;
- (void)transferDidUpdateScannerState:(id)state;
@end

@implementation TRTransferBrowser

- (TRTransferBrowser)init
{
  v8.receiver = self;
  v8.super_class = TRTransferBrowser;
  v2 = [(TRTransferBrowser *)&v8 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.TouchRemote.TRTransferBrowser", 0);
    queue = v2->_queue;
    v2->_queue = v3;

    v5 = dispatch_semaphore_create(0);
    responseSemaphore = v2->_responseSemaphore;
    v2->_responseSemaphore = v5;
  }

  return v2;
}

- (void)dealloc
{
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
  v4.super_class = TRTransferBrowser;
  [(TRTransferBrowser *)&v4 dealloc];
}

- (void)transferDidUpdateScannerState:(id)state
{
  scannerState = [state scannerState];
  queue = self->_queue;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __51__TRTransferBrowser_transferDidUpdateScannerState___block_invoke;
  v6[3] = &unk_279DCEB80;
  v6[4] = self;
  v6[5] = scannerState;
  dispatch_async(queue, v6);
}

_BYTE *__51__TRTransferBrowser_transferDidUpdateScannerState___block_invoke(uint64_t a1)
{
  *(*(a1 + 32) + 56) = *(a1 + 40);
  result = *(a1 + 32);
  if (result[48] == 1)
  {
    return [result _beginScanningIfPowered];
  }

  return result;
}

- (id)transferDidReceiveData:(id)data
{
  v4 = [data copy];
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy_;
  v17 = __Block_byref_object_dispose_;
  v18 = 0;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __44__TRTransferBrowser_transferDidReceiveData___block_invoke;
  block[3] = &unk_279DCEBD0;
  v10 = v4;
  selfCopy = self;
  v12 = &v13;
  v6 = v4;
  dispatch_sync(queue, block);
  v7 = v14[5];

  _Block_object_dispose(&v13, 8);

  return v7;
}

void __44__TRTransferBrowser_transferDidReceiveData___block_invoke(uint64_t a1)
{
  v73 = *MEMORY[0x277D85DE8];
  if (_TRLogEnabled == 1)
  {
    v2 = TRLogHandle();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = *(a1 + 32);
      v4 = *(*(a1 + 40) + 24);
      *buf = 138412546;
      *&buf[4] = v3;
      *&buf[12] = 2048;
      *&buf[14] = v4;
      _os_log_impl(&dword_26F2A2000, v2, OS_LOG_TYPE_DEFAULT, "[TRTransferBrowser] Received a full packet: %@, state: %li", buf, 0x16u);
    }
  }

  v5 = *(a1 + 40);
  v6 = v5[3];
  if (v6 > 1)
  {
    if (v6 != 2)
    {
      if (v6 == 3)
      {
        v15 = [*(a1 + 40) _didReceiveEncryptedData:*(a1 + 32)];
        v16 = *(*(a1 + 48) + 8);
        v11 = *(v16 + 40);
        *(v16 + 40) = v15;
        goto LABEL_104;
      }

LABEL_18:
      if (_TRLogEnabled == 1)
      {
        v11 = TRLogHandle();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          v17 = *(*(a1 + 40) + 24);
          *buf = 134217984;
          *&buf[4] = v17;
          v18 = "Error: [TRTransferBrowser] Invalid pairing state (%li)";
LABEL_29:
          _os_log_impl(&dword_26F2A2000, v11, OS_LOG_TYPE_DEFAULT, v18, buf, 0xCu);
          goto LABEL_104;
        }

        goto LABEL_104;
      }

      goto LABEL_105;
    }

    v22 = [*(a1 + 32) bytes];
    v23 = [*(a1 + 32) length];
    v63 = 0;
    v24 = [v5 _runVerifyStepWithInput:v22 inputLength:v23 outputData:&v63];
    v25 = v63;
    v11 = v63;
    if (v24)
    {
      if (_TRLogEnabled == 1)
      {
        v26 = TRLogHandle();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134217984;
          *&buf[4] = v24;
          _os_log_impl(&dword_26F2A2000, v26, OS_LOG_TYPE_DEFAULT, "[TRTransferBrowser] Verify failed: %li", buf, 0xCu);
        }
      }

      v13 = *(a1 + 40);
      v27 = *(v13 + 16);
      if (!v27)
      {
        goto LABEL_38;
      }

      CFRelease(v27);
LABEL_37:
      *(*(a1 + 40) + 16) = 0;
      v13 = *(a1 + 40);
LABEL_38:
      *(v13 + 24) = 0;
      goto LABEL_104;
    }

    if (_TRLogEnabled == 1)
    {
      v41 = TRLogHandle();
      if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        *&buf[4] = v11;
        _os_log_impl(&dword_26F2A2000, v41, OS_LOG_TYPE_DEFAULT, "[TRTransferBrowser] Verify output data: %@", buf, 0xCu);
      }
    }

    v42 = *(a1 + 40);
    if (*(v42 + 24) != 3)
    {
      objc_storeStrong((*(*(a1 + 48) + 8) + 40), v25);
      goto LABEL_104;
    }

    if (_TRLogEnabled == 1)
    {
      v43 = TRLogHandle();
      if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
      {
        WeakRetained = objc_loadWeakRetained((*(a1 + 40) + 72));
        *buf = 138412290;
        *&buf[4] = WeakRetained;
        _os_log_impl(&dword_26F2A2000, v43, OS_LOG_TYPE_DEFAULT, "[TRTransferBrowser] Asking delegate %@ for data...", buf, 0xCu);
      }

      v42 = *(a1 + 40);
    }

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v70 = __Block_byref_object_copy_;
    v71 = __Block_byref_object_dispose_;
    v72 = 0;
    v45 = objc_loadWeakRetained((v42 + 72));
    v46 = objc_opt_respondsToSelector();

    if (v46)
    {
      v47 = objc_loadWeakRetained((*(a1 + 40) + 72));
      [v47 browser:MEMORY[0x277D85DD0] didStartTransferWithSendDataHandler:{3221225472, __44__TRTransferBrowser_transferDidReceiveData___block_invoke_124, &unk_279DCEBA8, *(a1 + 40), buf}];

      *(*(a1 + 40) + 49) = 1;
      dispatch_semaphore_wait(*(*(a1 + 40) + 40), 0xFFFFFFFFFFFFFFFFLL);
      *(*(a1 + 40) + 49) = 0;
    }

    if (_TRLogEnabled == 1)
    {
      v48 = TRLogHandle();
      if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
      {
        v49 = *(*&buf[8] + 40);
        *v67 = 138412290;
        v68 = v49;
        _os_log_impl(&dword_26F2A2000, v48, OS_LOG_TYPE_DEFAULT, "[TRTransferBrowser] Got delegate data: %@", v67, 0xCu);
      }
    }

    if ([*(*&buf[8] + 40) length])
    {
      v50 = objc_alloc(MEMORY[0x277CBEB28]);
      v51 = [v50 initWithLength:{objc_msgSend(*(*&buf[8] + 40), "length")}];
      if (*(*(a1 + 40) + 8))
      {
        [*(*&buf[8] + 40) bytes];
        [*(*&buf[8] + 40) length];
        v52 = v51;
        [v51 mutableBytes];
        v53 = AES_CTR_Update();
        if (!v53)
        {
          v60 = *(*(a1 + 48) + 8);
          v61 = v51;
          v54 = *(v60 + 40);
          *(v60 + 40) = v61;
          goto LABEL_101;
        }

        if (_TRLogEnabled == 1)
        {
          v54 = TRLogHandle();
          if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
          {
            *v67 = 134217984;
            v68 = v53;
            v55 = "Error: [TRTransferBrowser] Context for sending failed: %ld";
            v56 = v54;
            v57 = 12;
LABEL_99:
            _os_log_impl(&dword_26F2A2000, v56, OS_LOG_TYPE_DEFAULT, v55, v67, v57);
            goto LABEL_101;
          }

          goto LABEL_101;
        }
      }

      else if (_TRLogEnabled == 1)
      {
        v54 = TRLogHandle();
        if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
        {
          *v67 = 0;
          v55 = "Error: [TRTransferBrowser] No context for sending.";
          v56 = v54;
          v57 = 2;
          goto LABEL_99;
        }

LABEL_101:
      }
    }

    else
    {
      if (_TRLogEnabled != 1)
      {
LABEL_103:
        _Block_object_dispose(buf, 8);

        goto LABEL_104;
      }

      v51 = TRLogHandle();
      if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
      {
        *v67 = 0;
        _os_log_impl(&dword_26F2A2000, v51, OS_LOG_TYPE_DEFAULT, "[TRTransferBrowser] Sending no data back.", v67, 2u);
      }
    }

    goto LABEL_103;
  }

  if (v6)
  {
    if (v6 == 1)
    {
      v7 = [*(a1 + 32) bytes];
      v8 = [*(a1 + 32) length];
      v65 = 0;
      v9 = [v5 _runSetupStepWithInput:v7 inputLength:v8 outputData:&v65];
      v10 = v65;
      v11 = v65;
      if (!v9)
      {
        v35 = *(a1 + 40);
        if (v35[3] == 2)
        {
          if (_TRLogEnabled == 1)
          {
            v36 = TRLogHandle();
            if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&dword_26F2A2000, v36, OS_LOG_TYPE_DEFAULT, "[TRTransferBrowser] Verify started.", buf, 2u);
            }

            v35 = *(a1 + 40);
          }

          v64 = v11;
          v37 = [v35 _runVerifyStepWithInput:0 inputLength:0 outputData:&v64];
          v38 = v64;
          v39 = v64;

          if (!v37)
          {
            if (_TRLogEnabled == 1)
            {
              v40 = TRLogHandle();
              if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412290;
                *&buf[4] = v39;
                _os_log_impl(&dword_26F2A2000, v40, OS_LOG_TYPE_DEFAULT, "[TRTransferBrowser] Initial verify output data: %@", buf, 0xCu);
              }
            }

            objc_storeStrong((*(*(a1 + 48) + 8) + 40), v38);
          }

          v11 = v39;
        }

        else
        {
          if (_TRLogEnabled == 1)
          {
            v58 = TRLogHandle();
            if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              *&buf[4] = v11;
              _os_log_impl(&dword_26F2A2000, v58, OS_LOG_TYPE_DEFAULT, "[TRTransferBrowser] Setup output data: %@", buf, 0xCu);
            }
          }

          objc_storeStrong((*(*(a1 + 48) + 8) + 40), v10);
        }

        goto LABEL_104;
      }

      if (_TRLogEnabled == 1)
      {
        v12 = TRLogHandle();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134217984;
          *&buf[4] = v9;
          _os_log_impl(&dword_26F2A2000, v12, OS_LOG_TYPE_DEFAULT, "[TRTransferBrowser] Setup failed: %li", buf, 0xCu);
        }
      }

      v13 = *(a1 + 40);
      v14 = *(v13 + 16);
      if (!v14)
      {
        goto LABEL_38;
      }

      CFRelease(v14);
      goto LABEL_37;
    }

    goto LABEL_18;
  }

  if (_TRLogEnabled == 1)
  {
    v19 = TRLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_26F2A2000, v19, OS_LOG_TYPE_DEFAULT, "[TRTransferBrowser] Pairing started.", buf, 2u);
    }

    v20 = *(a1 + 40);
  }

  v21 = gQblcfSzZBQsYCCV();
  if (!v21)
  {
    v28 = *(a1 + 40);
    v66 = 0;
    v29 = [v28 _runSetupStepWithInput:0 inputLength:0 outputData:&v66];
    v30 = v66;
    v11 = v66;
    if (v29)
    {
      if (_TRLogEnabled == 1)
      {
        v31 = TRLogHandle();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134217984;
          *&buf[4] = v29;
          _os_log_impl(&dword_26F2A2000, v31, OS_LOG_TYPE_DEFAULT, "[TRTransferBrowser] Setup failed: %li", buf, 0xCu);
        }
      }

      v32 = *(a1 + 40);
      v33 = *(v32 + 16);
      if (!v33)
      {
        v34 = 0;
        goto LABEL_92;
      }

      CFRelease(v33);
      v34 = 0;
      *(*(a1 + 40) + 16) = 0;
    }

    else
    {
      if (_TRLogEnabled == 1)
      {
        v59 = TRLogHandle();
        if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          *&buf[4] = v11;
          *&buf[12] = 2048;
          *&buf[14] = v11;
          _os_log_impl(&dword_26F2A2000, v59, OS_LOG_TYPE_DEFAULT, "[TRTransferBrowser] Setup output data: %@ (%p)", buf, 0x16u);
        }
      }

      objc_storeStrong((*(*(a1 + 48) + 8) + 40), v30);
      v34 = 1;
    }

    v32 = *(a1 + 40);
LABEL_92:
    *(v32 + 24) = v34;
    goto LABEL_104;
  }

  if (_TRLogEnabled == 1)
  {
    v11 = TRLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      *&buf[4] = v21;
      v18 = "Error: [TRTransferBrowser] Unable to start pairing session: %li";
      goto LABEL_29;
    }

LABEL_104:
  }

LABEL_105:
  v62 = *MEMORY[0x277D85DE8];
}

void __44__TRTransferBrowser_transferDidReceiveData___block_invoke_124(uint64_t a1, void *a2)
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

  dispatch_semaphore_signal(*(*(a1 + 32) + 40));
}

- (void)transferDidFailWithError:(id)error
{
  v14 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  if (_TRLogEnabled == 1)
  {
    v5 = TRLogHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v13 = errorCopy;
      _os_log_impl(&dword_26F2A2000, v5, OS_LOG_TYPE_DEFAULT, "[TRTransferBrowser] Transfer failed with error: %@", buf, 0xCu);
    }
  }

  if (self->_waitingOnSemaphore)
  {
    dispatch_semaphore_signal(self->_responseSemaphore);
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v8 = objc_loadWeakRetained(&self->_delegate);
    [v8 browserDidDisconnect:self];
  }

  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __46__TRTransferBrowser_transferDidFailWithError___block_invoke;
  block[3] = &unk_279DCEBF8;
  block[4] = self;
  dispatch_async(queue, block);

  v10 = *MEMORY[0x277D85DE8];
}

void __46__TRTransferBrowser_transferDidFailWithError___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 16);
  if (v3)
  {
    CFRelease(v3);
    *(*(a1 + 32) + 16) = 0;
    v2 = *(a1 + 32);
  }

  *(v2 + 24) = 0;
}

- (void)transferComplete
{
  if (_TRLogEnabled == 1)
  {
    v3 = TRLogHandle();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_26F2A2000, v3, OS_LOG_TYPE_DEFAULT, "[TRTransferBrowser] Transfer completed.", buf, 2u);
    }
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = objc_loadWeakRetained(&self->_delegate);
    [v6 browserDidDisconnect:self];
  }

  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __37__TRTransferBrowser_transferComplete__block_invoke;
  block[3] = &unk_279DCEBF8;
  block[4] = self;
  dispatch_async(queue, block);
}

void __37__TRTransferBrowser_transferComplete__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 16);
  if (v3)
  {
    CFRelease(v3);
    *(*(a1 + 32) + 16) = 0;
    v2 = *(a1 + 32);
  }

  *(v2 + 24) = 0;
}

- (void)start
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __26__TRTransferBrowser_start__block_invoke;
  block[3] = &unk_279DCEBF8;
  block[4] = self;
  dispatch_async(queue, block);
}

void __26__TRTransferBrowser_start__block_invoke(uint64_t a1)
{
  v12[1] = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  if ((*(v1 + 48) & 1) == 0)
  {
    *(v1 + 48) = 1;
    v11 = @"WPTimeAfterUnlock";
    v12[0] = &unk_287F62900;
    v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:&v11 count:1];
    v4 = objc_alloc(MEMORY[0x277D7BC78]);
    v5 = *(a1 + 32);
    v6 = dispatch_get_global_queue(0, 0);
    v7 = [v4 initWithDelegate:v5 queue:v6 machName:@"com.apple.touchsetupd.wirelessproximity" options:v3];
    v8 = *(a1 + 32);
    v9 = *(v8 + 64);
    *(v8 + 64) = v7;

    *(*(a1 + 32) + 56) = [*(*(a1 + 32) + 64) scannerState];
    [*(a1 + 32) _beginScanningIfPowered];
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)stop
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __25__TRTransferBrowser_stop__block_invoke;
  block[3] = &unk_279DCEBF8;
  block[4] = self;
  dispatch_async(queue, block);
}

void __25__TRTransferBrowser_stop__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (*(v1 + 48) == 1)
  {
    *(v1 + 48) = 0;
    [*(*(a1 + 32) + 64) invalidate];
    v3 = *(a1 + 32);
    v4 = *(v3 + 64);
    *(v3 + 64) = 0;

    *(*(a1 + 32) + 56) = 0;
    v5 = *(a1 + 32);
    if (*(v5 + 56) == 3)
    {
      v6 = *(v5 + 64);

      [v6 stopScan];
    }
  }
}

- (void)_beginScanningIfPowered
{
  if (self->_scannerState == 3)
  {
    [(WPTransfer *)self->_transferSession startScan];
  }
}

- (void)_didFinishPairing
{
  v19 = *MEMORY[0x277D85DE8];
  if (_TRLogEnabled == 1)
  {
    v3 = TRLogHandle();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_26F2A2000, v3, OS_LOG_TYPE_DEFAULT, "[TRTransferBrowser] Pairing finished.", buf, 2u);
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
      goto LABEL_15;
    }

    v8 = v7;
    v9 = TRLogHandle();
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_14;
    }

    v16 = 134217984;
    v17 = v8;
    v10 = "Error: [TRTransferBrowser] Unable to derive key: %li";
    goto LABEL_13;
  }

  self->_aesContext = malloc_type_calloc(1uLL, 0x30uLL, 0x1020040423EBB36uLL);
  v11 = AES_CTR_Init();
  if (!v11)
  {
    v14 = 3;
    goto LABEL_19;
  }

  if (_TRLogEnabled == 1)
  {
    v12 = v11;
    v9 = TRLogHandle();
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
LABEL_14:

      goto LABEL_15;
    }

    v16 = 134217984;
    v17 = v12;
    v10 = "Error: [TRTransferBrowser] Unable to intialize context: %li";
LABEL_13:
    _os_log_impl(&dword_26F2A2000, v9, OS_LOG_TYPE_DEFAULT, v10, &v16, 0xCu);
    goto LABEL_14;
  }

LABEL_15:
  v13 = self->_pairingSession;
  if (v13)
  {
    CFRelease(v13);
    v14 = 0;
    self->_pairingSession = 0;
  }

  else
  {
    v14 = 0;
  }

LABEL_19:
  self->_pairingState = v14;

  v15 = *MEMORY[0x277D85DE8];
}

- (id)_didReceiveEncryptedData:(id)data
{
  v27 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  if (![dataCopy length])
  {
    v6 = 0;
    goto LABEL_19;
  }

  v5 = [objc_alloc(MEMORY[0x277CBEB28]) initWithLength:{objc_msgSend(dataCopy, "length")}];
  if (self->_aesContext)
  {
    [dataCopy bytes];
    [dataCopy length];
    [v5 mutableBytes];
    if (!AES_CTR_Update())
    {
      v19 = 0;
      v20 = &v19;
      v21 = 0x3032000000;
      v22 = __Block_byref_object_copy_;
      v23 = __Block_byref_object_dispose_;
      v24 = 0;
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      v8 = objc_opt_respondsToSelector();

      if (v8)
      {
        v9 = objc_loadWeakRetained(&self->_delegate);
        v10 = [v5 copy];
        v18[0] = MEMORY[0x277D85DD0];
        v18[1] = 3221225472;
        v18[2] = __46__TRTransferBrowser__didReceiveEncryptedData___block_invoke;
        v18[3] = &unk_279DCEBA8;
        v18[4] = self;
        v18[5] = &v19;
        [v9 browser:self didReceiveData:v10 replyHandler:v18];

        self->_waitingOnSemaphore = 1;
        dispatch_semaphore_wait(self->_responseSemaphore, 0xFFFFFFFFFFFFFFFFLL);
        self->_waitingOnSemaphore = 0;
      }

      if (v20[5])
      {
        v11 = objc_alloc(MEMORY[0x277CBEB28]);
        v12 = [v11 initWithLength:{objc_msgSend(v20[5], "length")}];
        aesContext = self->_aesContext;
        [v20[5] bytes];
        [v20[5] length];
        v14 = v12;
        [v12 mutableBytes];
        if (AES_CTR_Update())
        {
          v6 = 0;
        }

        else
        {
          if (_TRLogEnabled != 1)
          {
            v6 = v12;
            goto LABEL_17;
          }

          v15 = TRLogHandle();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v26 = v12;
            _os_log_impl(&dword_26F2A2000, v15, OS_LOG_TYPE_DEFAULT, "[TRTransferBrowser] Writing exchange data response: %@", buf, 0xCu);
          }

          v6 = v12;
          v12 = v15;
        }
      }

      else
      {
        v6 = 0;
      }

LABEL_17:
      _Block_object_dispose(&v19, 8);

      goto LABEL_18;
    }
  }

  v6 = 0;
LABEL_18:

LABEL_19:
  v16 = *MEMORY[0x277D85DE8];

  return v6;
}

void __46__TRTransferBrowser__didReceiveEncryptedData___block_invoke(uint64_t a1, void *a2)
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

  dispatch_semaphore_signal(*(*(a1 + 32) + 40));
}

- (int)_runSetupStepWithInput:(const void *)input inputLength:(unint64_t)length outputData:(id *)data
{
  v23 = *MEMORY[0x277D85DE8];
  memset(v22, 0, sizeof(v22));
  if (length == 1)
  {
    lengthCopy = *input != 0;
    *input;
  }

  else
  {
    lengthCopy = length;
  }

  if (_TRLogEnabled == 1)
  {
    v8 = TRLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v19 = lengthCopy;
      _os_log_impl(&dword_26F2A2000, v8, OS_LOG_TYPE_DEFAULT, "[TRTransferBrowser] Setup input data length: %ld", buf, 0xCu);
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
          v19 = v10;
          _os_log_impl(&dword_26F2A2000, v11, OS_LOG_TYPE_DEFAULT, "[TRTransferBrowser] Unable to do session pairing setup exhange (%li)", buf, 0xCu);
        }
      }
    }

    else
    {
      if (data)
      {
        *data = [MEMORY[0x277CBEA90] dataWithBytes:v22 length:0];
        if (_TRLogEnabled == 1)
        {
          v14 = TRLogHandle();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
          {
            v15 = *data;
            *buf = 138412546;
            v19 = v15;
            v20 = 2048;
            v21 = v15;
            _os_log_impl(&dword_26F2A2000, v14, OS_LOG_TYPE_DEFAULT, "[TRTransferBrowser] Writing setup exchange data: %@ (%p)", buf, 0x16u);
          }
        }
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
        v19 = pairingState;
        _os_log_impl(&dword_26F2A2000, v12, OS_LOG_TYPE_DEFAULT, "[TRTransferBrowser] No session for pairing setup exhange (state: %ld)", buf, 0xCu);
      }
    }

    v10 = 0;
  }

  v16 = *MEMORY[0x277D85DE8];
  return v10;
}

- (int)_runVerifyStepWithInput:(const void *)input inputLength:(unint64_t)length outputData:(id *)data
{
  v21 = *MEMORY[0x277D85DE8];
  memset(v20, 0, sizeof(v20));
  if (length == 1)
  {
    lengthCopy = *input != 0;
    *input;
  }

  else
  {
    lengthCopy = length;
  }

  if (_TRLogEnabled == 1)
  {
    v8 = TRLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v19 = lengthCopy;
      _os_log_impl(&dword_26F2A2000, v8, OS_LOG_TYPE_DEFAULT, "[TRTransferBrowser] Verify input data length: %ld", buf, 0xCu);
    }
  }

  if (self->_pairingSession)
  {
    v9 = VBAEFt();
    if (v9)
    {
      v10 = v9;
      if (_TRLogEnabled == 1)
      {
        v11 = TRLogHandle();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134217984;
          v19 = v10;
          _os_log_impl(&dword_26F2A2000, v11, OS_LOG_TYPE_DEFAULT, "[TRTransferBrowser] Unable to do session pairing verify exhange (%li)", buf, 0xCu);
        }
      }
    }

    else
    {
      if (data)
      {
        *data = [MEMORY[0x277CBEA90] dataWithBytes:v20 length:0];
        if (_TRLogEnabled == 1)
        {
          v16 = TRLogHandle();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
          {
            v17 = *data;
            *buf = 138412290;
            v19 = v17;
            _os_log_impl(&dword_26F2A2000, v16, OS_LOG_TYPE_DEFAULT, "[TRTransferBrowser] Writing verify exchange data: %@", buf, 0xCu);
          }
        }
      }

      v10 = 0;
      self->_pairingState = 2;
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
        v19 = pairingState;
        _os_log_impl(&dword_26F2A2000, v12, OS_LOG_TYPE_DEFAULT, "[TRTransferBrowser] No session for pairing verify exhange (state: %ld)", buf, 0xCu);
      }
    }

    v10 = 0;
  }

  v14 = *MEMORY[0x277D85DE8];
  return v10;
}

- (TRTransferBrowserDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end