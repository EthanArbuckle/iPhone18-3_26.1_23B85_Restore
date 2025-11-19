@interface WLKSharedFileStorage
- (BOOL)_writeData:(id)a3 toURL:(id)a4 error:(id *)a5;
- (WLKSharedFileStorage)initWithFileName:(id)a3 class:(Class)a4;
- (id)_readDataFromURL:(id)a3 error:(id *)a4;
- (void)delete:(id)a3;
- (void)merge:(id)a3 completion:(id)a4;
- (void)read:(id)a3;
- (void)write:(id)a3 completion:(id)a4;
@end

@implementation WLKSharedFileStorage

- (WLKSharedFileStorage)initWithFileName:(id)a3 class:(Class)a4
{
  v6 = a3;
  v18.receiver = self;
  v18.super_class = WLKSharedFileStorage;
  v7 = [(WLKSharedFileStorage *)&v18 init];
  if (v7)
  {
    v8 = WLKDefaultSupportPath();
    if ([v8 length])
    {
      v9 = [v8 stringByAppendingPathComponent:v6];
      v10 = [MEMORY[0x277CBEBC0] fileURLWithPath:v9];
      fileURL = v7->_fileURL;
      v7->_fileURL = v10;
    }

    else
    {
      NSLog(&cfstr_Wlksettingssto.isa);
      v9 = v7->_fileURL;
      v7->_fileURL = 0;
    }

    v12 = [objc_alloc(MEMORY[0x277CCA9E8]) initWithFilePresenter:0];
    coordinator = v7->_coordinator;
    v7->_coordinator = v12;

    v7->_class = a4;
    v14 = [(NSURL *)v7->_fileURL lastPathComponent];
    debugString = v7->_debugString;
    v7->_debugString = v14;

    if (([(objc_class *)v7->_class conformsToProtocol:&unk_2882249B0]& 1) == 0)
    {
      [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"class must conform to <WLKCoding>"];

      v16 = 0;
      goto LABEL_9;
    }
  }

  v16 = v7;
LABEL_9:

  return v16;
}

- (void)read:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (!v4)
  {
    [WLKSharedFileStorage read:];
  }

  v5 = v4;
  v6 = WLKSystemLogObject();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    debugString = self->_debugString;
    *buf = 138412290;
    v19 = debugString;
    _os_log_impl(&dword_272A0F000, v6, OS_LOG_TYPE_DEFAULT, "WLKSharedFileStorage - (%@) read request", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  fileURL = self->_fileURL;
  coordinator = self->_coordinator;
  v17 = 0;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __29__WLKSharedFileStorage_read___block_invoke;
  v13[3] = &unk_279E5E800;
  objc_copyWeak(&v16, buf);
  v13[4] = self;
  v14 = 0;
  v10 = v5;
  v15 = v10;
  [(NSFileCoordinator *)coordinator coordinateReadingItemAtURL:fileURL options:0 error:&v17 byAccessor:v13];
  v11 = v17;

  objc_destroyWeak(&v16);
  objc_destroyWeak(buf);

  v12 = *MEMORY[0x277D85DE8];
}

void __29__WLKSharedFileStorage_read___block_invoke(uint64_t a1, void *a2)
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v5 = WeakRetained;
  if (v3)
  {
    v18 = 0;
    v6 = [WeakRetained _readDataFromURL:v3 error:&v18];
    v7 = v18;
    v8 = v7;
    if (!v6 && v7)
    {
      v9 = WLKSystemLogObject();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = *(*(a1 + 32) + 32);
        *buf = 138412546;
        v20 = v10;
        v21 = 2112;
        v22 = v8;
        _os_log_impl(&dword_272A0F000, v9, OS_LOG_TYPE_DEFAULT, "WLKSharedFileStorage - (%@) read failed with error: %@", buf, 0x16u);
      }
    }

    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v11 = WLKSystemLogObject();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = *(a1 + 32);
      v13 = *(a1 + 40);
      v14 = *(v12 + 32);
      v15 = *(v12 + 8);
      *buf = 138412802;
      v20 = v14;
      v21 = 2112;
      v22 = v15;
      v23 = 2112;
      v24 = v13;
      _os_log_impl(&dword_272A0F000, v11, OS_LOG_TYPE_DEFAULT, "WLKSharedFileStorage - (%@) failed to coordinate read of %@: %@", buf, 0x20u);
    }

    v16 = *(a1 + 40);
    (*(*(a1 + 48) + 16))();
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)write:(id)a3 completion:(id)a4
{
  v25 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (!v6)
  {
    [WLKSharedFileStorage write:completion:];
  }

  v8 = v7;
  if (!v7)
  {
    [WLKSharedFileStorage write:completion:];
  }

  v9 = WLKSystemLogObject();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    debugString = self->_debugString;
    *buf = 138412290;
    v24 = debugString;
    _os_log_impl(&dword_272A0F000, v9, OS_LOG_TYPE_DEFAULT, "WLKSharedFileStorage - (%@) write request", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  fileURL = self->_fileURL;
  coordinator = self->_coordinator;
  v22 = 0;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __41__WLKSharedFileStorage_write_completion___block_invoke;
  v17[3] = &unk_279E5E828;
  objc_copyWeak(&v21, buf);
  v17[4] = self;
  v18 = 0;
  v13 = v8;
  v20 = v13;
  v14 = v6;
  v19 = v14;
  [(NSFileCoordinator *)coordinator coordinateWritingItemAtURL:fileURL options:0 error:&v22 byAccessor:v17];
  v15 = v22;

  objc_destroyWeak(&v21);
  objc_destroyWeak(buf);

  v16 = *MEMORY[0x277D85DE8];
}

void __41__WLKSharedFileStorage_write_completion___block_invoke(uint64_t a1, void *a2)
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v5 = WeakRetained;
  if (v3)
  {
    v6 = *(a1 + 48);
    v18 = 0;
    v7 = [WeakRetained _writeData:v6 toURL:v3 error:&v18];
    v8 = v18;
    if ((v7 & 1) == 0)
    {
      v9 = WLKSystemLogObject();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = *(*(a1 + 32) + 32);
        *buf = 138412546;
        v20 = v10;
        v21 = 2112;
        v22 = v8;
        _os_log_impl(&dword_272A0F000, v9, OS_LOG_TYPE_DEFAULT, "WLKSharedFileStorage - (%@) write failed with error: %@", buf, 0x16u);
      }
    }

    (*(*(a1 + 56) + 16))();
  }

  else
  {
    v11 = WLKSystemLogObject();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = *(a1 + 32);
      v13 = *(a1 + 40);
      v14 = *(v12 + 32);
      v15 = *(v12 + 8);
      *buf = 138412802;
      v20 = v14;
      v21 = 2112;
      v22 = v15;
      v23 = 2112;
      v24 = v13;
      _os_log_impl(&dword_272A0F000, v11, OS_LOG_TYPE_DEFAULT, "WLKSharedFileStorage - (%@) failed to coordinate write of %@: %@", buf, 0x20u);
    }

    v16 = *(a1 + 40);
    (*(*(a1 + 56) + 16))();
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)merge:(id)a3 completion:(id)a4
{
  v25 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (!v6)
  {
    [WLKSharedFileStorage merge:completion:];
  }

  v8 = v7;
  if (!v7)
  {
    [WLKSharedFileStorage merge:completion:];
  }

  v9 = WLKSystemLogObject();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    debugString = self->_debugString;
    *buf = 138412290;
    v24 = debugString;
    _os_log_impl(&dword_272A0F000, v9, OS_LOG_TYPE_DEFAULT, "WLKSharedFileStorage - %@ merge request", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  fileURL = self->_fileURL;
  coordinator = self->_coordinator;
  v22 = 0;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __41__WLKSharedFileStorage_merge_completion___block_invoke;
  v17[3] = &unk_279E5E828;
  objc_copyWeak(&v21, buf);
  v17[4] = self;
  v18 = 0;
  v13 = v8;
  v20 = v13;
  v14 = v6;
  v19 = v14;
  [(NSFileCoordinator *)coordinator coordinateWritingItemAtURL:fileURL options:8 error:&v22 byAccessor:v17];
  v15 = v22;

  objc_destroyWeak(&v21);
  objc_destroyWeak(buf);

  v16 = *MEMORY[0x277D85DE8];
}

void __41__WLKSharedFileStorage_merge_completion___block_invoke(uint64_t a1, void *a2)
{
  v30 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  if (v3)
  {
    v5 = *(a1 + 48);
    v23 = 0;
    v6 = [WeakRetained _readDataFromURL:v3 error:&v23];
    v7 = v23;
    if (v6)
    {
      if (([v6 conformsToProtocol:&unk_28822FD70] & 1) == 0)
      {
        [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"class must conform to <WLKMergeableCoding>"];
      }

      v8 = WLKSystemLogObject();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = *(*(a1 + 32) + 32);
        *buf = 138412290;
        v25 = v9;
        _os_log_impl(&dword_272A0F000, v8, OS_LOG_TYPE_DEFAULT, "WLKSharedFileStorage - (%@) Read existing data. Merging", buf, 0xCu);
      }

      v10 = [v6 dataByMergingWith:*(a1 + 48)];

      v5 = v10;
    }

    v22 = v7;
    v11 = [WeakRetained _writeData:v5 toURL:v3 error:&v22];
    v12 = v22;

    if ((v11 & 1) == 0)
    {
      v13 = WLKSystemLogObject();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = *(*(a1 + 32) + 32);
        *buf = 138412546;
        v25 = v14;
        v26 = 2112;
        v27 = v12;
        _os_log_impl(&dword_272A0F000, v13, OS_LOG_TYPE_DEFAULT, "WLKSharedFileStorage - (%@) merge failed with error: %@", buf, 0x16u);
      }
    }

    (*(*(a1 + 56) + 16))();
  }

  else
  {
    v15 = WLKSystemLogObject();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = *(a1 + 32);
      v17 = *(a1 + 40);
      v18 = *(v16 + 32);
      v19 = *(v16 + 8);
      *buf = 138412802;
      v25 = v18;
      v26 = 2112;
      v27 = v19;
      v28 = 2112;
      v29 = v17;
      _os_log_impl(&dword_272A0F000, v15, OS_LOG_TYPE_DEFAULT, "WLKSharedFileStorage - (%@) failed to coordinate write of %@: %@", buf, 0x20u);
    }

    v20 = *(a1 + 40);
    (*(*(a1 + 56) + 16))();
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (void)delete:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (!v4)
  {
    [WLKSharedFileStorage delete:];
  }

  v5 = v4;
  v6 = WLKSystemLogObject();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    debugString = self->_debugString;
    *buf = 138412290;
    v18 = debugString;
    _os_log_impl(&dword_272A0F000, v6, OS_LOG_TYPE_DEFAULT, "WLKSharedFileStorage - (%@) delete request", buf, 0xCu);
  }

  fileURL = self->_fileURL;
  coordinator = self->_coordinator;
  v15 = v5;
  v16 = 0;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __31__WLKSharedFileStorage_delete___block_invoke;
  v13[3] = &unk_279E5E850;
  v13[4] = self;
  v14 = 0;
  v10 = v5;
  [(NSFileCoordinator *)coordinator coordinateWritingItemAtURL:fileURL options:1 error:&v16 byAccessor:v13];
  v11 = v16;

  v12 = *MEMORY[0x277D85DE8];
}

void __31__WLKSharedFileStorage_delete___block_invoke(void *a1, void *a2)
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = [MEMORY[0x277CCAA00] defaultManager];
    v17 = 0;
    [v4 removeItemAtURL:v3 error:&v17];
    v5 = v17;

    if (v5 && [v5 code] == 4)
    {
      v6 = WLKSystemLogObject();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v7 = a1[4];
        v8 = *(v7 + 32);
        v9 = *(v7 + 8);
        *buf = 138412546;
        v19 = v8;
        v20 = 2112;
        v21 = v9;
        _os_log_impl(&dword_272A0F000, v6, OS_LOG_TYPE_DEFAULT, "WLKSharedFileStorage - (%@) No file found to delete. Returning success. %@", buf, 0x16u);
      }

      v5 = 0;
    }

    (*(a1[6] + 16))();
  }

  else
  {
    v10 = WLKSystemLogObject();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = a1[4];
      v12 = a1[5];
      v13 = *(v11 + 32);
      v14 = *(v11 + 8);
      *buf = 138412802;
      v19 = v13;
      v20 = 2112;
      v21 = v14;
      v22 = 2112;
      v23 = v12;
      _os_log_impl(&dword_272A0F000, v10, OS_LOG_TYPE_DEFAULT, "WLKSharedFileStorage - (%@) failed to coordinate deletion of %@: %@", buf, 0x20u);
    }

    v15 = a1[5];
    (*(a1[6] + 16))();
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (id)_readDataFromURL:(id)a3 error:(id *)a4
{
  v6 = [MEMORY[0x277CBEA90] dataWithContentsOfURL:a3];
  if (v6)
  {
    v7 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:self->_class fromData:v6 error:a4];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)_writeData:(id)a3 toURL:(id)a4 error:(id *)a5
{
  v7 = a3;
  v8 = a4;
  v9 = WLKDefaultSupportPath();
  if (![v9 length])
  {
    NSLog(&cfstr_Wlksettingssto.isa);
    goto LABEL_7;
  }

  v10 = [MEMORY[0x277CCAA00] defaultManager];
  v11 = [MEMORY[0x277CBEBC0] fileURLWithPath:v9];
  v12 = [v10 createDirectoryAtURL:v11 withIntermediateDirectories:1 attributes:0 error:a5];

  if (!v12)
  {
LABEL_7:
    v13 = 0;
    goto LABEL_8;
  }

  v13 = 1;
  v14 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v7 requiringSecureCoding:1 error:a5];
  v15 = v14;
  if (v14)
  {
    v13 = [v14 writeToURL:v8 options:1 error:a5];
  }

LABEL_8:
  return v13;
}

@end