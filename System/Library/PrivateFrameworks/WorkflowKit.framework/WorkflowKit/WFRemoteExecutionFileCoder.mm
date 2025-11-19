@interface WFRemoteExecutionFileCoder
- (WFRemoteExecutionCoordinator)coordinator;
- (WFRemoteExecutionFileCoder)initWithCoder:(id)a3;
- (WFRemoteExecutionFileCoder)initWithCoordinator:(id)a3 requestIdentifier:(id)a4;
- (id)decodeFileWithCoder:(id)a3 fileShouldBeDeletedOnDeallocation:(BOOL *)a4 fileIsSecurityScoped:(BOOL *)a5;
- (int64_t)targetPlatform;
- (void)archiveFileAtURL:(id)a3 fileShouldBeDeletedOnDeallocation:(BOOL)a4 withCoder:(id)a5;
- (void)cancelOutstandingTransfers;
- (void)encodeWithCoder:(id)a3;
- (void)fileAvailabilityChanged;
- (void)waitForFileAvailabilityWithCompletionHandler:(id)a3;
@end

@implementation WFRemoteExecutionFileCoder

- (WFRemoteExecutionCoordinator)coordinator
{
  WeakRetained = objc_loadWeakRetained(&self->_coordinator);

  return WeakRetained;
}

- (WFRemoteExecutionFileCoder)initWithCoder:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = WFRemoteExecutionFileCoder;
  v5 = [(WFFileCoder *)&v14 initWithCoder:v4];
  if (!v5)
  {
    goto LABEL_4;
  }

  v6 = MEMORY[0x1E695DFD8];
  v7 = objc_opt_class();
  v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
  v9 = NSStringFromSelector(sel_transferIdentifiers);
  v10 = [v4 decodeObjectOfClasses:v8 forKey:v9];
  transferIdentifiers = v5->_transferIdentifiers;
  v5->_transferIdentifiers = v10;

  if (v5->_transferIdentifiers)
  {
    v12 = v5;
  }

  else
  {
LABEL_4:
    v12 = 0;
  }

  return v12;
}

- (void)encodeWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = WFRemoteExecutionFileCoder;
  v4 = a3;
  [(WFFileCoder *)&v7 encodeWithCoder:v4];
  transferIdentifiers = self->_transferIdentifiers;
  v6 = NSStringFromSelector(sel_transferIdentifiers);
  [v4 encodeObject:transferIdentifiers forKey:{v6, v7.receiver, v7.super_class}];
}

- (void)waitForFileAvailabilityWithCompletionHandler:(id)a3
{
  v4 = a3;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __75__WFRemoteExecutionFileCoder_waitForFileAvailabilityWithCompletionHandler___block_invoke;
  v7[3] = &unk_1E837E1F8;
  v7[4] = self;
  v8 = v4;
  v6.receiver = self;
  v6.super_class = WFRemoteExecutionFileCoder;
  v5 = v4;
  [(WFFileCoder *)&v6 waitForFileAvailabilityWithCompletionHandler:v7];
}

uint64_t __75__WFRemoteExecutionFileCoder_waitForFileAvailabilityWithCompletionHandler___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) transferIdentifiers];
  v3 = [v2 count];

  if (v3)
  {
    v4 = [*(a1 + 32) fileURL];

    v5 = getWFRemoteExecutionLogObject();
    v6 = os_log_type_enabled(v5, OS_LOG_TYPE_INFO);
    if (v4)
    {
      if (v6)
      {
        v7 = [*(a1 + 32) transferIdentifiers];
        v13 = 136315394;
        v14 = "[WFRemoteExecutionFileCoder waitForFileAvailabilityWithCompletionHandler:]_block_invoke";
        v15 = 2114;
        v16 = v7;
        _os_log_impl(&dword_1CA256000, v5, OS_LOG_TYPE_INFO, "%s Files are already available with identifiers: %{public}@", &v13, 0x16u);
      }

      result = (*(*(a1 + 40) + 16))();
    }

    else
    {
      if (v6)
      {
        v11 = [*(a1 + 32) transferIdentifiers];
        v13 = 136315394;
        v14 = "[WFRemoteExecutionFileCoder waitForFileAvailabilityWithCompletionHandler:]_block_invoke";
        v15 = 2114;
        v16 = v11;
        _os_log_impl(&dword_1CA256000, v5, OS_LOG_TYPE_INFO, "%s Waiting for files to be available with identifiers: %{public}@", &v13, 0x16u);
      }

      result = [*(a1 + 32) setFileAvailabilityHandler:*(a1 + 40)];
    }

    v12 = *MEMORY[0x1E69E9840];
  }

  else
  {
    v9 = *(*(a1 + 40) + 16);
    v10 = *MEMORY[0x1E69E9840];

    return v9();
  }

  return result;
}

- (void)fileAvailabilityChanged
{
  v3 = [(WFRemoteExecutionFileCoder *)self fileURL];

  if (v3)
  {
    v4 = [(WFRemoteExecutionFileCoder *)self fileAvailabilityHandler];

    if (v4)
    {
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __53__WFRemoteExecutionFileCoder_fileAvailabilityChanged__block_invoke;
      block[3] = &unk_1E837FA70;
      block[4] = self;
      dispatch_async(MEMORY[0x1E69E96A0], block);
    }
  }
}

uint64_t __53__WFRemoteExecutionFileCoder_fileAvailabilityChanged__block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = getWFRemoteExecutionLogObject();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = [*(a1 + 32) transferIdentifiers];
    v7 = 136315394;
    v8 = "[WFRemoteExecutionFileCoder fileAvailabilityChanged]_block_invoke";
    v9 = 2114;
    v10 = v3;
    _os_log_impl(&dword_1CA256000, v2, OS_LOG_TYPE_INFO, "%s Files became available with identifiers: %{public}@", &v7, 0x16u);
  }

  v4 = [*(a1 + 32) fileAvailabilityHandler];
  v4[2]();

  result = [*(a1 + 32) setFileAvailabilityHandler:0];
  v6 = *MEMORY[0x1E69E9840];
  return result;
}

- (id)decodeFileWithCoder:(id)a3 fileShouldBeDeletedOnDeallocation:(BOOL *)a4 fileIsSecurityScoped:(BOOL *)a5
{
  v8 = a3;
  v9 = [v8 decodeObjectOfClass:objc_opt_class() forKey:@"transferIdentifier"];
  if (v9 && ([(NSMutableArray *)self->_transferIdentifiers containsObject:v9]& 1) != 0)
  {
    v10 = [(WFRemoteExecutionFileCoder *)self fileURL];
  }

  else
  {
    v13.receiver = self;
    v13.super_class = WFRemoteExecutionFileCoder;
    v10 = [(WFFileCoder *)&v13 decodeFileWithCoder:v8 fileShouldBeDeletedOnDeallocation:a4 fileIsSecurityScoped:a5];
  }

  v11 = v10;

  return v11;
}

- (void)cancelOutstandingTransfers
{
  v2 = [(WFRemoteExecutionFileCoder *)self coordinator];
  [v2 cancelPendingFileTransfers];
}

- (void)archiveFileAtURL:(id)a3 fileShouldBeDeletedOnDeallocation:(BOOL)a4 withCoder:(id)a5
{
  v7 = MEMORY[0x1E696AFB0];
  v8 = a5;
  v9 = a3;
  v10 = [v7 UUID];
  v14 = [v10 UUIDString];

  v11 = [(WFRemoteExecutionFileCoder *)self coordinator];
  v12 = [(WFRemoteExecutionFileCoder *)self requestIdentifier];
  [v11 sendFileAtURL:v9 transferIdentifier:v14 requestIdentifier:v12 error:0];

  v13 = [(WFRemoteExecutionFileCoder *)self transferIdentifiers];
  [v13 addObject:v14];

  [v8 encodeObject:v14 forKey:@"transferIdentifier"];
}

- (int64_t)targetPlatform
{
  v2 = [MEMORY[0x1E69E0A90] currentDevice];
  v3 = 2 * ([v2 platform] == 0);

  return v3;
}

- (WFRemoteExecutionFileCoder)initWithCoordinator:(id)a3 requestIdentifier:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (!v7)
  {
    v14 = [MEMORY[0x1E696AAA8] currentHandler];
    [v14 handleFailureInMethod:a2 object:self file:@"WFRemoteExecutionFileCoder.m" lineNumber:25 description:{@"Invalid parameter not satisfying: %@", @"coordinator"}];
  }

  v15.receiver = self;
  v15.super_class = WFRemoteExecutionFileCoder;
  v9 = [(WFRemoteExecutionFileCoder *)&v15 init];
  if (v9)
  {
    v10 = objc_opt_new();
    transferIdentifiers = v9->_transferIdentifiers;
    v9->_transferIdentifiers = v10;

    objc_storeWeak(&v9->_coordinator, v7);
    objc_storeStrong(&v9->_requestIdentifier, a4);
    v12 = v9;
  }

  return v9;
}

@end