@interface KernelEventMonitor
+ (id)configureClass:(id)a3;
+ (id)sharedInstance;
- (int)read:(id)a3 returnedValues:(id)a4;
- (void)_handleNetworkEvent:(kern_event_msg *)a3;
- (void)_handleSocket:(int)a3;
- (void)initListening;
@end

@implementation KernelEventMonitor

- (void)_handleNetworkEvent:(kern_event_msg *)a3
{
  v54 = *MEMORY[0x277D85DE8];
  v4 = evaluationLogHandle;
  if (os_log_type_enabled(evaluationLogHandle, OS_LOG_TYPE_DEBUG))
  {
    kev_subclass = a3->kev_subclass;
    event_code = a3->event_code;
    *buf = 67109376;
    v49 = kev_subclass;
    v50 = 1024;
    v51 = event_code;
    _os_log_impl(&dword_23255B000, v4, OS_LOG_TYPE_DEBUG, "entry with subclass %d  code %d", buf, 0xEu);
  }

  v7 = a3->kev_subclass;
  if (v7 != 7)
  {
    if (v7 != 1)
    {
      v14 = evaluationLogHandle;
      if (os_log_type_enabled(evaluationLogHandle, OS_LOG_TYPE_DEBUG))
      {
        v15 = a3->kev_subclass;
        v16 = a3->event_code;
        *buf = 67109376;
        v49 = v15;
        v50 = 1024;
        v51 = v16;
        v11 = "Received kernel network event subclass %d, code %d";
        v17 = v14;
        v18 = OS_LOG_TYPE_DEBUG;
        v19 = 14;
LABEL_30:
        _os_log_impl(&dword_23255B000, v17, v18, v11, buf, v19);
        goto LABEL_44;
      }

      goto LABEL_44;
    }

    v8 = a3->event_code;
    if (v8 == 10)
    {
      v20 = a3->total_size - 24;
      v10 = evaluationLogHandle;
      if (v20 <= 0x17)
      {
        if (os_log_type_enabled(evaluationLogHandle, OS_LOG_TYPE_ERROR))
        {
          *buf = 67109120;
          v49 = v20;
          v11 = "Received arp event with bad length %d";
          goto LABEL_23;
        }

        goto LABEL_44;
      }

      if (os_log_type_enabled(evaluationLogHandle, OS_LOG_TYPE_DEFAULT))
      {
        v33 = a3->event_data[0];
        total_size = a3[1].total_size;
        *buf = 67109634;
        v49 = v33;
        v50 = 1024;
        v51 = total_size;
        v52 = 2080;
        p_vendor_code = &a3[1].vendor_code;
        _os_log_impl(&dword_23255B000, v10, OS_LOG_TYPE_DEFAULT, "Receive arp alive family %d unit %d name %s", buf, 0x18u);
      }

      v35 = [[EventDescription alloc] initWithType:1 length:a3->total_size data:a3 fromPid:0 named:"kevent" bundleId:0];
      [(EventDescription *)v35 setEventKey:@"com.apple.symptoms.kevent.arp-alive"];
      v44[0] = MEMORY[0x277D85DD0];
      v44[1] = 3221225472;
      v44[2] = __42__KernelEventMonitor__handleNetworkEvent___block_invoke_13;
      v44[3] = &unk_27898A0C8;
      v45 = v35;
      v28 = v35;
      dispatch_async(MEMORY[0x277D85CD0], v44);
      v29 = v45;
      goto LABEL_43;
    }

    if (v8 == 9)
    {
      v9 = a3->total_size - 24;
      v10 = evaluationLogHandle;
      if (v9 <= 0x17)
      {
        if (os_log_type_enabled(evaluationLogHandle, OS_LOG_TYPE_ERROR))
        {
          *buf = 67109120;
          v49 = v9;
          v11 = "Received arp event with bad length %d";
LABEL_23:
          v17 = v10;
          v18 = OS_LOG_TYPE_ERROR;
LABEL_29:
          v19 = 8;
          goto LABEL_30;
        }

        goto LABEL_44;
      }

      if (os_log_type_enabled(evaluationLogHandle, OS_LOG_TYPE_DEFAULT))
      {
        v25 = a3->event_data[0];
        v26 = a3[1].total_size;
        *buf = 67109634;
        v49 = v25;
        v50 = 1024;
        v51 = v26;
        v52 = 2080;
        p_vendor_code = &a3[1].vendor_code;
        _os_log_impl(&dword_23255B000, v10, OS_LOG_TYPE_DEFAULT, "Receive arp failure family %d unit %d name %s", buf, 0x18u);
      }

      v27 = [[EventDescription alloc] initWithType:1 length:a3->total_size data:a3 fromPid:0 named:"kevent" bundleId:0];
      [(EventDescription *)v27 setEventKey:@"com.apple.symptoms.kevent.arp-failure"];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __42__KernelEventMonitor__handleNetworkEvent___block_invoke;
      block[3] = &unk_27898A0C8;
      v47 = v27;
      v28 = v27;
      dispatch_async(MEMORY[0x277D85CD0], block);
      v29 = v47;
LABEL_43:

      goto LABEL_44;
    }

    v22 = evaluationLogHandle;
    if (!os_log_type_enabled(evaluationLogHandle, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_44;
    }

    v23 = a3->event_code;
    *buf = 67109120;
    v49 = v23;
    v11 = "Received INET event %d";
LABEL_28:
    v17 = v22;
    v18 = OS_LOG_TYPE_DEBUG;
    goto LABEL_29;
  }

  v12 = a3->event_code;
  if (v12 == 3)
  {
    v21 = a3->total_size - 24;
    v10 = evaluationLogHandle;
    if (v21 <= 0x17)
    {
      if (os_log_type_enabled(evaluationLogHandle, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        v49 = v21;
        v11 = "Received nd6 alive event with bad length %d";
        goto LABEL_23;
      }

      goto LABEL_44;
    }

    if (os_log_type_enabled(evaluationLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      v36 = a3->event_data[0];
      v37 = a3[1].total_size;
      *buf = 67109634;
      v49 = v36;
      v50 = 1024;
      v51 = v37;
      v52 = 2080;
      p_vendor_code = &a3[1].vendor_code;
      _os_log_impl(&dword_23255B000, v10, OS_LOG_TYPE_DEFAULT, "Receive nd6 alive family %d unit %d name %s", buf, 0x18u);
    }

    v38 = [[EventDescription alloc] initWithType:1 length:a3->total_size data:a3 fromPid:0 named:"kevent" bundleId:0];
    [(EventDescription *)v38 setEventKey:@"com.apple.symptoms.kevent.nd6-alive"];
    v40[0] = MEMORY[0x277D85DD0];
    v40[1] = 3221225472;
    v40[2] = __42__KernelEventMonitor__handleNetworkEvent___block_invoke_15;
    v40[3] = &unk_27898A0C8;
    v41 = v38;
    v28 = v38;
    dispatch_async(MEMORY[0x277D85CD0], v40);
    v29 = v41;
    goto LABEL_43;
  }

  if (v12 != 2)
  {
    v22 = evaluationLogHandle;
    if (!os_log_type_enabled(evaluationLogHandle, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_44;
    }

    v24 = a3->event_code;
    *buf = 67109120;
    v49 = v24;
    v11 = "Received ND6 event %d";
    goto LABEL_28;
  }

  v13 = a3->total_size - 24;
  v10 = evaluationLogHandle;
  if (v13 > 0x17)
  {
    if (os_log_type_enabled(evaluationLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      v30 = a3->event_data[0];
      v31 = a3[1].total_size;
      *buf = 67109634;
      v49 = v30;
      v50 = 1024;
      v51 = v31;
      v52 = 2080;
      p_vendor_code = &a3[1].vendor_code;
      _os_log_impl(&dword_23255B000, v10, OS_LOG_TYPE_DEFAULT, "Receive nd6 failure family %d unit %d name %s", buf, 0x18u);
    }

    v32 = [[EventDescription alloc] initWithType:1 length:a3->total_size data:a3 fromPid:0 named:"kevent" bundleId:0];
    [(EventDescription *)v32 setEventKey:@"com.apple.symptoms.kevent.nd6-failure"];
    v42[0] = MEMORY[0x277D85DD0];
    v42[1] = 3221225472;
    v42[2] = __42__KernelEventMonitor__handleNetworkEvent___block_invoke_14;
    v42[3] = &unk_27898A0C8;
    v43 = v32;
    v28 = v32;
    dispatch_async(MEMORY[0x277D85CD0], v42);
    v29 = v43;
    goto LABEL_43;
  }

  if (os_log_type_enabled(evaluationLogHandle, OS_LOG_TYPE_ERROR))
  {
    *buf = 67109120;
    v49 = v13;
    v11 = "Received nd6 fail event with bad length %d";
    goto LABEL_23;
  }

LABEL_44:
  v39 = *MEMORY[0x277D85DE8];
}

- (void)_handleSocket:(int)a3
{
  v33 = *MEMORY[0x277D85DE8];
  memset(v32, 0, 512);
  v4 = recv(a3, v32, 0x400uLL, 0);
  if (v4 == -1)
  {
    v13 = evaluationLogHandle;
    if (os_log_type_enabled(evaluationLogHandle, OS_LOG_TYPE_ERROR))
    {
      v14 = v13;
      v15 = *__error();
      *buf = 67109120;
      v19 = v15;
      _os_log_impl(&dword_23255B000, v14, OS_LOG_TYPE_ERROR, "recv() failed: %{errno}d", buf, 8u);
    }
  }

  else
  {
    v5 = v4;
    if (v4 >= 1)
    {
      v6 = 0;
      v7 = v32;
      while (1)
      {
        v8 = evaluationLogHandle;
        if (v6 + *(v32 + v6) > v5)
        {
          break;
        }

        if (os_log_type_enabled(evaluationLogHandle, OS_LOG_TYPE_DEBUG))
        {
          v9 = v7[1];
          v10 = v7[2];
          v11 = v7[3];
          v12 = v7[5];
          *buf = 67110656;
          v19 = a3;
          v20 = 2048;
          v21 = v6;
          v22 = 2048;
          v23 = v5;
          v24 = 1024;
          v25 = v9;
          v26 = 1024;
          v27 = v10;
          v28 = 1024;
          v29 = v11;
          v30 = 1024;
          v31 = v12;
          _os_log_impl(&dword_23255B000, v8, OS_LOG_TYPE_DEBUG, "socket message on fd %d with offset %ld status %ld vendor %d  class %d subclass %d code %d", buf, 0x34u);
        }

        if (v7[1] == 1 && v7[2] == 1)
        {
          [(KernelEventMonitor *)self _handleNetworkEvent:v7];
        }

        v6 += *(v32 + v6);
        v7 = (v32 + v6);
        if (v6 >= v5)
        {
          goto LABEL_16;
        }
      }

      if (os_log_type_enabled(evaluationLogHandle, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_23255B000, v8, OS_LOG_TYPE_ERROR, "missed SYSPROTO_EVENT event, buffer not big enough", buf, 2u);
      }
    }
  }

LABEL_16:
  v16 = *MEMORY[0x277D85DE8];
}

- (void)initListening
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __35__KernelEventMonitor_initListening__block_invoke;
  block[3] = &unk_27898A0C8;
  block[4] = self;
  if (initListening_pred != -1)
  {
    dispatch_once(&initListening_pred, block);
  }
}

void __35__KernelEventMonitor_initListening__block_invoke(uint64_t a1)
{
  v30 = *MEMORY[0x277D85DE8];
  *(*(a1 + 32) + 16) = socket(32, 3, 1);
  if (*(*(a1 + 32) + 16) != -1)
  {
    v2 = evaluationLogHandle;
    if (os_log_type_enabled(evaluationLogHandle, OS_LOG_TYPE_DEBUG))
    {
      v3 = *(*(a1 + 32) + 16);
      *buf = 67109120;
      *&buf[4] = v3;
      _os_log_impl(&dword_23255B000, v2, OS_LOG_TYPE_DEBUG, "set native socket to %d", buf, 8u);
    }

    *buf = 0x100000001;
    v29 = 1;
    if (ioctl(*(*(a1 + 32) + 16), 0x800C6502uLL, buf))
    {
      v4 = evaluationLogHandle;
      if (os_log_type_enabled(evaluationLogHandle, OS_LOG_TYPE_ERROR))
      {
        *v27 = 0;
        _os_log_impl(&dword_23255B000, v4, OS_LOG_TYPE_ERROR, "Fail to set up network event socket for filtering", v27, 2u);
      }

      close(*(*(a1 + 32) + 16));
      *(*(a1 + 32) + 16) = -1;
    }

    v5 = *(*(a1 + 32) + 16);
    if (v5 != -1)
    {
      *buf = 1;
      if (ioctl(v5, 0x8004667EuLL, buf))
      {
        v6 = evaluationLogHandle;
        if (os_log_type_enabled(evaluationLogHandle, OS_LOG_TYPE_ERROR))
        {
          *v27 = 0;
          _os_log_impl(&dword_23255B000, v6, OS_LOG_TYPE_ERROR, "Fail to set up network event socket as non-blocking", v27, 2u);
        }

        close(*(*(a1 + 32) + 16));
        *(*(a1 + 32) + 16) = -1;
      }

      v7 = *(*(a1 + 32) + 16);
      if (v7 != -1)
      {
        v8 = dispatch_source_create(MEMORY[0x277D85D28], v7, 0, MEMORY[0x277D85CD0]);
        handler[0] = MEMORY[0x277D85DD0];
        handler[1] = 3221225472;
        handler[2] = __35__KernelEventMonitor_initListening__block_invoke_16;
        handler[3] = &unk_27898A0C8;
        handler[4] = *(a1 + 32);
        dispatch_source_set_event_handler(v8, handler);
        v25[0] = MEMORY[0x277D85DD0];
        v25[1] = 3221225472;
        v25[2] = __35__KernelEventMonitor_initListening__block_invoke_2;
        v25[3] = &unk_27898A0C8;
        v25[4] = *(a1 + 32);
        dispatch_source_set_cancel_handler(v8, v25);
        v9 = *(a1 + 32);
        v10 = *(v9 + 24);
        *(v9 + 24) = v8;
        v11 = v8;

        dispatch_resume(*(*(a1 + 32) + 24));
      }
    }
  }

  *(*(a1 + 32) + 20) = socket(32, 3, 1);
  if (*(*(a1 + 32) + 20) != -1)
  {
    v12 = evaluationLogHandle;
    if (os_log_type_enabled(evaluationLogHandle, OS_LOG_TYPE_DEBUG))
    {
      v13 = *(*(a1 + 32) + 20);
      *buf = 67109120;
      *&buf[4] = v13;
      _os_log_impl(&dword_23255B000, v12, OS_LOG_TYPE_DEBUG, "set native socket6 to %d", buf, 8u);
    }

    *buf = 0x100000001;
    v29 = 7;
    if (ioctl(*(*(a1 + 32) + 20), 0x800C6502uLL, buf))
    {
      v14 = evaluationLogHandle;
      if (os_log_type_enabled(evaluationLogHandle, OS_LOG_TYPE_ERROR))
      {
        *v27 = 0;
        _os_log_impl(&dword_23255B000, v14, OS_LOG_TYPE_ERROR, "Fail to set up network event socket 2 for filtering", v27, 2u);
      }

      close(*(*(a1 + 32) + 20));
      *(*(a1 + 32) + 20) = -1;
    }

    v15 = *(*(a1 + 32) + 20);
    if (v15 != -1)
    {
      *buf = 1;
      if (ioctl(v15, 0x8004667EuLL, buf))
      {
        v16 = evaluationLogHandle;
        if (os_log_type_enabled(evaluationLogHandle, OS_LOG_TYPE_ERROR))
        {
          *v27 = 0;
          _os_log_impl(&dword_23255B000, v16, OS_LOG_TYPE_ERROR, "Fail to set up network event socket 2 as non-blocking", v27, 2u);
        }

        close(*(*(a1 + 32) + 20));
        *(*(a1 + 32) + 20) = -1;
      }

      v17 = *(*(a1 + 32) + 20);
      if (v17 != -1)
      {
        v18 = dispatch_source_create(MEMORY[0x277D85D28], v17, 0, MEMORY[0x277D85CD0]);
        v24[0] = MEMORY[0x277D85DD0];
        v24[1] = 3221225472;
        v24[2] = __35__KernelEventMonitor_initListening__block_invoke_17;
        v24[3] = &unk_27898A0C8;
        v24[4] = *(a1 + 32);
        dispatch_source_set_event_handler(v18, v24);
        v23[0] = MEMORY[0x277D85DD0];
        v23[1] = 3221225472;
        v23[2] = __35__KernelEventMonitor_initListening__block_invoke_2_18;
        v23[3] = &unk_27898A0C8;
        v23[4] = *(a1 + 32);
        dispatch_source_set_cancel_handler(v18, v23);
        v19 = *(a1 + 32);
        v20 = *(v19 + 32);
        *(v19 + 32) = v18;
        v21 = v18;

        dispatch_resume(*(*(a1 + 32) + 32));
      }
    }
  }

  v22 = *MEMORY[0x277D85DE8];
}

uint64_t __35__KernelEventMonitor_initListening__block_invoke_2(uint64_t a1)
{
  result = *(*(a1 + 32) + 16);
  if (result != -1)
  {
    result = close(result);
    *(*(a1 + 32) + 16) = -1;
  }

  return result;
}

uint64_t __35__KernelEventMonitor_initListening__block_invoke_2_18(uint64_t a1)
{
  result = *(*(a1 + 32) + 20);
  if (result != -1)
  {
    result = close(result);
    *(*(a1 + 32) + 20) = -1;
  }

  return result;
}

+ (id)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __36__KernelEventMonitor_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (sharedInstance_pred_46 != -1)
  {
    dispatch_once(&sharedInstance_pred_46, block);
  }

  v2 = sharedInstance_sharedInstance_48;

  return v2;
}

void __36__KernelEventMonitor_sharedInstance__block_invoke(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = sharedInstance_sharedInstance_48;
  sharedInstance_sharedInstance_48 = v1;

  [sharedInstance_sharedInstance_48 initListening];
  v3 = sharedInstance_sharedInstance_48;
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [ConfigurationHandler setConfigurationObject:v3 forName:v5];
}

+ (id)configureClass:(id)a3
{
  v3 = a3;
  v4 = +[KernelEventMonitor sharedInstance];
  [v4 configureInstance:v3];

  return v4;
}

- (int)read:(id)a3 returnedValues:(id)a4
{
  v4 = a4;
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  [v4 setObject:v6 forKey:@"GENERIC_CONFIG_TARGET"];

  return 0;
}

@end