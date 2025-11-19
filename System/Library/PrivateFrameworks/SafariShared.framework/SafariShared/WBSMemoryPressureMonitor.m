@interface WBSMemoryPressureMonitor
- (WBSMemoryPressureMonitor)init;
- (void)dealloc;
@end

@implementation WBSMemoryPressureMonitor

- (WBSMemoryPressureMonitor)init
{
  v13.receiver = self;
  v13.super_class = WBSMemoryPressureMonitor;
  v2 = [(WBSMemoryPressureMonitor *)&v13 init];
  if (v2)
  {
    objc_initWeak(&location, v2);
    v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"com.apple.SafariShared.%@.%p.queue", objc_opt_class(), v2];
    v4 = dispatch_queue_create([v3 UTF8String], 0);

    v5 = dispatch_source_create(MEMORY[0x1E69E96E8], 0, 0x37uLL, v4);
    v6 = *(v2 + 1);
    *(v2 + 1) = v5;

    v7 = *(v2 + 1);
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __32__WBSMemoryPressureMonitor_init__block_invoke;
    handler[3] = &unk_1E7FB86B8;
    objc_copyWeak(&v11, &location);
    dispatch_source_set_event_handler(v7, handler);
    dispatch_resume(*(v2 + 1));
    v8 = v2;
    objc_destroyWeak(&v11);

    objc_destroyWeak(&location);
  }

  return v2;
}

void __32__WBSMemoryPressureMonitor_init__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    data = dispatch_source_get_data(WeakRetained[1]);
    v4 = WBS_LOG_CHANNEL_PREFIXMemory();
    v5 = v4;
    if (data <= 3)
    {
      if (data == 1)
      {
        if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_1BB6F3000, v5, OS_LOG_TYPE_INFO, "The system memory pressure condition has returned to normal", buf, 2u);
        }

        v27 = v2;
        v28 = 0;
        goto LABEL_17;
      }

      if (data == 2)
      {
        if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
        {
          v29[0] = 0;
          _os_log_impl(&dword_1BB6F3000, v5, OS_LOG_TYPE_DEFAULT, "The system memory pressure condition has changed to warning", v29, 2u);
        }

        goto LABEL_16;
      }
    }

    else
    {
      switch(data)
      {
        case 4:
          if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
          {
            __32__WBSMemoryPressureMonitor_init__block_invoke_cold_3(v5, v13, v14, v15, v16, v17, v18, v19);
          }

          goto LABEL_16;
        case 16:
          if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
          {
            __32__WBSMemoryPressureMonitor_init__block_invoke_cold_2(v5, v20, v21, v22, v23, v24, v25, v26);
          }

          goto LABEL_16;
        case 32:
          if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
          {
            __32__WBSMemoryPressureMonitor_init__block_invoke_cold_1(v5, v6, v7, v8, v9, v10, v11, v12);
          }

LABEL_16:
          v27 = v2;
          v28 = 1;
LABEL_17:
          [(dispatch_source_t *)v27 setPressured:v28];
          goto LABEL_18;
      }
    }

    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __32__WBSMemoryPressureMonitor_init__block_invoke_cold_4(data, v5);
    }
  }

LABEL_18:
}

- (void)dealloc
{
  memoryPressureSource = self->_memoryPressureSource;
  if (memoryPressureSource)
  {
    dispatch_source_cancel(memoryPressureSource);
  }

  v4.receiver = self;
  v4.super_class = WBSMemoryPressureMonitor;
  [(WBSMemoryPressureMonitor *)&v4 dealloc];
}

void __32__WBSMemoryPressureMonitor_init__block_invoke_cold_4(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 134217984;
  v3 = a1;
  _os_log_error_impl(&dword_1BB6F3000, a2, OS_LOG_TYPE_ERROR, "The system memory pressure condition is undefined (%lu)", &v2, 0xCu);
}

@end