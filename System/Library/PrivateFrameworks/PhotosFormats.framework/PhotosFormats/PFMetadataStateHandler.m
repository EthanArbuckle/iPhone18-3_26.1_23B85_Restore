@interface PFMetadataStateHandler
- (PFMetadataStateHandler)initWithMetadata:(id)a3;
- (id)_stateInformation;
- (id)className;
- (os_state_data_s)stateDataWithHints:(os_state_hints_s *)a3;
- (void)_addBreadcrumbWithTimeInterval:(double)a3 message:(id)a4;
- (void)addBreadcrumb:(id)a3;
- (void)dealloc;
@end

@implementation PFMetadataStateHandler

- (void)_addBreadcrumbWithTimeInterval:(double)a3 message:(id)a4
{
  v6 = a4;
  v7 = [[PFMetadataStateBreadcrumb alloc] initWithTimeInterval:v6 message:a3];

  queue = self->_queue;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __65__PFMetadataStateHandler__addBreadcrumbWithTimeInterval_message___block_invoke;
  v10[3] = &unk_1E7B66D98;
  v10[4] = self;
  v11 = v7;
  v9 = v7;
  dispatch_sync(queue, v10);
}

- (void)addBreadcrumb:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E696AEC0];
  v5 = a3;
  v6 = [[v4 alloc] initWithFormat:v5 arguments:&v15];

  [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
  [(PFMetadataStateHandler *)self _addBreadcrumbWithTimeInterval:v6 message:?];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
  {
    v7 = [(PFMetadataStateHandler *)self className];
    *buf = 138412802;
    v9 = v7;
    v10 = 2048;
    v11 = self;
    v12 = 2112;
    v13 = v6;
    _os_log_debug_impl(&dword_1B35C1000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "%@ %p: Add breadcrumb: %@", buf, 0x20u);
  }
}

- (os_state_data_s)stateDataWithHints:(os_state_hints_s *)a3
{
  v28 = *MEMORY[0x1E69E9840];
  if (a3->var2 != 3)
  {
    return 0;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
  {
    v16 = [(PFMetadataStateHandler *)self className];
    v17 = [(PFMetadataStateHandler *)self className];
    metadata = self->_metadata;
    *buf = 138413058;
    v21 = v16;
    v22 = 2048;
    v23 = self;
    v24 = 2112;
    v25 = v17;
    v26 = 2048;
    v27 = metadata;
    _os_log_debug_impl(&dword_1B35C1000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "%@ %p: Generating state data for %@: %p", buf, 0x2Au);
  }

  v4 = MEMORY[0x1E696AE40];
  v5 = [(PFMetadataStateHandler *)self _stateInformation];
  v19 = 0;
  v6 = [v4 dataWithPropertyList:v5 format:200 options:0 error:&v19];
  v7 = v19;

  if (v6)
  {
    v8 = [v6 length];
    v9 = v8;
    v10 = malloc_type_malloc(v8 + 200, 0x7261FA83uLL);
    v11 = v10;
    if (v10)
    {
      bzero(v10, v8 + 200);
      v11->var0 = 1;
      v11->var1.var1 = v8;
      v12 = MEMORY[0x1E696AEC0];
      v13 = [(PFMetadataStateHandler *)self className];
      v14 = [v12 stringWithFormat:@"State for <%@: %p>", v13, self->_metadata];

      [v14 UTF8String];
      __strlcpy_chk();
      [v6 getBytes:v11->var4 length:v9];
    }
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v21 = v7;
      _os_log_error_impl(&dword_1B35C1000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Unable to gather process state information: %@", buf, 0xCu);
    }

    v11 = 0;
  }

  return v11;
}

- (id)_stateInformation
{
  v19 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_queue);
  v3 = [MEMORY[0x1E695DF70] array];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = self->_breadcrumbs;
  v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v12 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v12 + 1) + 8 * i) breadcrumbDescription];
        [v3 addObject:v9];
      }

      v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v12 objects:v18 count:16];
    }

    while (v6);
  }

  v16 = @"breadcrumbs";
  v17 = v3;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v17 forKeys:&v16 count:1];

  return v10;
}

- (void)dealloc
{
  v12 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
  {
    v3 = [(PFMetadataStateHandler *)self className];
    stateHandle = self->_stateHandle;
    *buf = 138412802;
    v7 = v3;
    v8 = 2048;
    v9 = self;
    v10 = 2048;
    v11 = stateHandle;
    _os_log_debug_impl(&dword_1B35C1000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "%@ %p: Removing state handler: %llu", buf, 0x20u);
  }

  if (self->_stateHandle)
  {
    os_state_remove_handler();
  }

  v5.receiver = self;
  v5.super_class = PFMetadataStateHandler;
  [(PFMetadataStateHandler *)&v5 dealloc];
}

- (PFMetadataStateHandler)initWithMetadata:(id)a3
{
  v35 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v24.receiver = self;
  v24.super_class = PFMetadataStateHandler;
  v5 = [(PFMetadataStateHandler *)&v24 init];
  v6 = v5;
  if (v5)
  {
    v5->_metadata = v4;
    v7 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v8 = dispatch_queue_create("com.apple.photos.PFMetadata.stateHandleQueue", v7);
    queue = v6->_queue;
    v6->_queue = v8;

    objc_initWeak(&location, v6);
    v21 = MEMORY[0x1E69E9820];
    objc_copyWeak(&v22, &location);
    v6->_stateHandle = os_state_add_handler();
    v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
    breadcrumbs = v6->_breadcrumbs;
    v6->_breadcrumbs = v10;

    v12 = MEMORY[0x1E69E9C10];
    v13 = MEMORY[0x1E69E9C10];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      v17 = [(PFMetadataStateHandler *)v6 className];
      stateHandle = v6->_stateHandle;
      v19 = [(PFMetadataStateHandler *)v6 className];
      metadata = v6->_metadata;
      *buf = 138413314;
      v26 = v17;
      v27 = 2048;
      v28 = v6;
      v29 = 2048;
      v30 = stateHandle;
      v31 = 2112;
      v32 = v19;
      v33 = 2048;
      v34 = metadata;
      _os_log_debug_impl(&dword_1B35C1000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "%@ %p: Added state handler: %llu for %@: %p", buf, 0x34u);
    }

    v14 = [(PFMetadataStateHandler *)v6 className];
    [(PFMetadataStateHandler *)v6 addBreadcrumb:@"Created %@ %p", v14, v6, v21, 3221225472, __43__PFMetadataStateHandler_initWithMetadata___block_invoke, &unk_1E7B658E8];

    v15 = v6;
    objc_destroyWeak(&v22);
    objc_destroyWeak(&location);
  }

  return v6;
}

uint64_t __43__PFMetadataStateHandler_initWithMetadata___block_invoke(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = [WeakRetained stateDataWithHints:a2];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)className
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __35__PFMetadataStateHandler_className__block_invoke;
  block[3] = &unk_1E7B66D20;
  block[4] = self;
  if (className_onceToken != -1)
  {
    dispatch_once(&className_onceToken, block);
  }

  return className_name;
}

uint64_t __35__PFMetadataStateHandler_className__block_invoke()
{
  v0 = objc_opt_class();
  className_name = NSStringFromClass(v0);

  return MEMORY[0x1EEE66BB8]();
}

@end