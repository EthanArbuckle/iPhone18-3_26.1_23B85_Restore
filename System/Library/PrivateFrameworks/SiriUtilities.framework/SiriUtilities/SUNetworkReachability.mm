@interface SUNetworkReachability
- (SUNetworkReachability)init;
- (unint64_t)reachabilityState;
@end

@implementation SUNetworkReachability

- (SUNetworkReachability)init
{
  v9.receiver = self;
  v9.super_class = SUNetworkReachability;
  v2 = [(SUNetworkReachability *)&v9 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("NetworkReachability", v3);
    queue = v2->_queue;
    v2->_queue = v4;

    v6 = os_log_create("com.apple.siri.sirikit", "Utilities");
    logger = v2->_logger;
    v2->_logger = v6;
  }

  return v2;
}

- (unint64_t)reachabilityState
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __42__SUNetworkReachability_reachabilityState__block_invoke;
  v5[3] = &unk_1E86502D0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

void __42__SUNetworkReachability_reachabilityState__block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  if (nwi_state_copy())
  {
    if (nwi_state_get_first_ifstate() && (nwi_ifstate_get_flags() & 4) != 0)
    {
      LODWORD(v2) = 1;
    }

    else if (nwi_state_get_first_ifstate())
    {
      v2 = (nwi_ifstate_get_flags() >> 2) & 1;
    }

    else
    {
      LODWORD(v2) = 0;
    }

    v4 = *(*(a1 + 32) + 8);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = @"NO";
      if (v2)
      {
        v5 = @"YES";
      }

      v11 = 138412290;
      v12 = v5;
      _os_log_impl(&dword_1DD1FF000, v4, OS_LOG_TYPE_INFO, "Network is available: %@", &v11, 0xCu);
    }

    if (v2)
    {
      v6 = 2;
    }

    else
    {
      if (nwi_state_get_reachability_flags())
      {
        v7 = 1;
      }

      else
      {
        v7 = nwi_state_get_reachability_flags() != 0;
      }

      v8 = *(*(a1 + 32) + 8);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v9 = @"NO";
        if (v7)
        {
          v9 = @"YES";
        }

        v11 = 138412290;
        v12 = v9;
        _os_log_impl(&dword_1DD1FF000, v8, OS_LOG_TYPE_INFO, "Network has reachability: %@", &v11, 0xCu);
      }

      v6 = 1;
      if (v7)
      {
        v6 = 2;
      }
    }

    *(*(*(a1 + 40) + 8) + 24) = v6;
    nwi_state_release();
  }

  else
  {
    v3 = *(*(a1 + 32) + 8);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      LOWORD(v11) = 0;
      _os_log_impl(&dword_1DD1FF000, v3, OS_LOG_TYPE_INFO, "Network state API returned null; returning unknown", &v11, 2u);
    }
  }

  v10 = *MEMORY[0x1E69E9840];
}

@end