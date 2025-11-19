@interface PKCloudResolveContext
- (PKCloudResolveContext)initWithPKCloudPrinter:(id)a3 timeout:(double)a4 completionHandler:(id)a5;
- (id)description;
- (void)_checkFound:(id)a3;
- (void)_complete:(id)a3;
- (void)_driveResolution;
- (void)dealloc;
- (void)start;
@end

@implementation PKCloudResolveContext

- (PKCloudResolveContext)initWithPKCloudPrinter:(id)a3 timeout:(double)a4 completionHandler:(id)a5
{
  v27 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a5;
  v24.receiver = self;
  v24.super_class = PKCloudResolveContext;
  v11 = [(PKCloudResolveContext *)&v24 init];
  if (v11)
  {
    v12 = [PKCloudResolveContext initWithPKCloudPrinter:timeout:completionHandler:]::sTag++;
    v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"PKCloudResolveContext<%p:%d>", v11, v12];
    tag = v11->_tag;
    v11->_tag = v13;

    v11->_timeout = a4;
    objc_storeStrong(&v11->_icloudPrinter, a3);
    v15 = MEMORY[0x25F8E4580](v10);
    completionHandler = v11->_completionHandler;
    v11->_completionHandler = v15;

    v17 = [MEMORY[0x277CBEAA8] date];
    startTime = v11->_startTime;
    v11->_startTime = v17;

    v19 = dispatch_queue_create("com.apple.printing.reachable", 0);
    queue = v11->_queue;
    v11->_queue = v19;

    v21 = _PKLogCategory(PKLogCategoryDiscovery[0]);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v22 = v11->_tag;
      *buf = 138412290;
      v26 = v22;
      _os_log_impl(&dword_25F5FC000, v21, OS_LOG_TYPE_DEFAULT, "ALLOC: %@", buf, 0xCu);
    }
  }

  return v11;
}

- (void)_complete:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MEMORY[0x277CBEAA8] date];
  v6 = _PKLogCategory(PKLogCategoryDiscovery[0]);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    tag = self->_tag;
    [v5 timeIntervalSinceDate:self->_startTime];
    v9 = v8;
    v10 = [v4 bonjourDisplayName];
    v11 = 138413058;
    v12 = tag;
    v13 = 2048;
    v14 = v9;
    v15 = 2048;
    v16 = v4;
    v17 = 2112;
    v18 = v10;
    _os_log_impl(&dword_25F5FC000, v6, OS_LOG_TYPE_DEFAULT, "%@: FINISH after %.5fs - printer %p { %@ }", &v11, 0x2Au);
  }

  (*(self->_completionHandler + 2))();
}

- (void)start
{
  v13 = *MEMORY[0x277D85DE8];
  icloudPrinter = self->_icloudPrinter;
  if (icloudPrinter)
  {
    v4 = [(PKiCloudPrinter *)icloudPrinter printerURLs];
    if ([v4 count])
    {
      v5 = [v4 objectEnumerator];
      enumerator = self->_enumerator;
      self->_enumerator = v5;

      [(PKCloudResolveContext *)self _driveResolution];
    }

    else
    {
      v9 = _PKLogCategory(PKLogCategoryDiscovery[0]);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        tag = self->_tag;
        v11 = 138412290;
        v12 = tag;
        _os_log_impl(&dword_25F5FC000, v9, OS_LOG_TYPE_DEFAULT, "%@: printer array is nil", &v11, 0xCu);
      }

      [(PKCloudResolveContext *)self _complete:0];
    }
  }

  else
  {
    v7 = _PKLogCategory(PKLogCategoryDiscovery[0]);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = self->_tag;
      v11 = 138412290;
      v12 = v8;
      _os_log_impl(&dword_25F5FC000, v7, OS_LOG_TYPE_ERROR, "%@: _icloudPrinter is nil", &v11, 0xCu);
    }

    [(PKCloudResolveContext *)self _complete:0];
  }
}

- (void)_driveResolution
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = [(NSEnumerator *)self->_enumerator nextObject];
  if (v3)
  {
    v4 = self->_queue;
    if (([v3 hasPrefix:@"ipp:"] & 1) != 0 || objc_msgSend(v3, "hasPrefix:", @"ipps:"))
    {
      v5 = _PKLogCategory(PKLogCategoryDiscovery[0]);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        tag = self->_tag;
        *buf = 138412547;
        v20 = tag;
        v21 = 2113;
        v22 = v3;
        _os_log_impl(&dword_25F5FC000, v5, OS_LOG_TYPE_DEFAULT, "%@ CALL %{private}@", buf, 0x16u);
      }

      timeout = self->_timeout;
      v17[0] = MEMORY[0x277D85DD0];
      v17[1] = 3221225472;
      v17[2] = __41__PKCloudResolveContext__driveResolution__block_invoke;
      v17[3] = &unk_279A92D90;
      v18[0] = v4;
      v18[1] = self;
      [PKPrinter printerWithName:v3 discoveryTimeout:v17 completionHandler:timeout];
      v8 = v18;
    }

    else
    {
      v11 = _PKLogCategory(PKLogCategoryDiscovery[0]);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = self->_tag;
        *buf = 138412547;
        v20 = v12;
        v21 = 2113;
        v22 = v3;
        _os_log_impl(&dword_25F5FC000, v11, OS_LOG_TYPE_DEFAULT, "%@ CALL %{private}@", buf, 0x16u);
      }

      v13 = [MEMORY[0x277CBEBC0] URLWithString:v3];
      v14 = self->_timeout;
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __41__PKCloudResolveContext__driveResolution__block_invoke_320;
      v15[3] = &unk_279A92D90;
      v16[0] = v4;
      v16[1] = self;
      [PKPrinter printerWithURL:v13 discoveryTimeout:v15 completionHandler:v14];

      v8 = v16;
    }
  }

  else
  {
    v9 = _PKLogCategory(PKLogCategoryDiscovery[0]);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = self->_tag;
      *buf = 138412290;
      v20 = v10;
      _os_log_impl(&dword_25F5FC000, v9, OS_LOG_TYPE_DEFAULT, "%@: completed enumeration", buf, 0xCu);
    }

    [(PKCloudResolveContext *)self _complete:0];
  }
}

void __41__PKCloudResolveContext__driveResolution__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __41__PKCloudResolveContext__driveResolution__block_invoke_2;
  v6[3] = &unk_279A92D68;
  v4 = *(a1 + 32);
  v6[4] = *(a1 + 40);
  v7 = v3;
  v5 = v3;
  dispatch_async(v4, v6);
}

void __41__PKCloudResolveContext__driveResolution__block_invoke_320(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __41__PKCloudResolveContext__driveResolution__block_invoke_2_321;
  v6[3] = &unk_279A92D68;
  v4 = *(a1 + 32);
  v6[4] = *(a1 + 40);
  v7 = v3;
  v5 = v3;
  dispatch_async(v4, v6);
}

- (void)_checkFound:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    queue = self->_queue;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __37__PKCloudResolveContext__checkFound___block_invoke;
    v9[3] = &unk_279A92DB8;
    v9[4] = self;
    v10 = v4;
    [v10 pollForPrinterStatusQueue:queue completionHandler:v9];
  }

  else
  {
    v7 = _PKLogCategory(PKLogCategoryDiscovery[0]);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      tag = self->_tag;
      *buf = 138412290;
      v12 = tag;
      _os_log_impl(&dword_25F5FC000, v7, OS_LOG_TYPE_DEFAULT, "%@ Not found, trying next", buf, 0xCu);
    }

    [(PKCloudResolveContext *)self _driveResolution];
  }
}

void __37__PKCloudResolveContext__checkFound___block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = v3;
  if (v3 && ([v3 objectForKeyedSubscript:@"printer-status-time"], v5 = objc_claimAutoreleasedReturnValue(), v5, v5))
  {
    [*(a1 + 32) _complete:*(a1 + 40)];
  }

  else
  {
    v6 = _PKLogCategory(PKLogCategoryDiscovery[0]);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 40);
      v8 = *(*(a1 + 32) + 40);
      v9 = 138412547;
      v10 = v8;
      v11 = 2113;
      v12 = v7;
      _os_log_impl(&dword_25F5FC000, v6, OS_LOG_TYPE_DEFAULT, "%@ found printer %{private}@ not reachable, trying next", &v9, 0x16u);
    }

    [*(a1 + 32) _driveResolution];
  }
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  tag = self->_tag;
  v5 = [MEMORY[0x277CBEAA8] now];
  [v5 timeIntervalSinceDate:self->_startTime];
  v7 = [v3 stringWithFormat:@"%@ { %.5fs running }", tag, v6];

  return v7;
}

- (void)dealloc
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = _PKLogCategory(PKLogCategoryDiscovery[0]);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    tag = self->_tag;
    *buf = 138412290;
    v7 = tag;
    _os_log_impl(&dword_25F5FC000, v3, OS_LOG_TYPE_DEFAULT, "DEALLOC: %@", buf, 0xCu);
  }

  v5.receiver = self;
  v5.super_class = PKCloudResolveContext;
  [(PKCloudResolveContext *)&v5 dealloc];
}

@end