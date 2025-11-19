@interface PRContactAllowlist
- (PRContactAllowlist)init;
- (void)addTrustedContact:(id)a3 withCompletionHandler:(id)a4;
- (void)beaconListener:(id)a3 didChangeState:(unint64_t)a4;
- (void)beaconListener:(id)a3 didFailWithError:(id)a4;
- (void)clear:(id)a3;
- (void)removeTrustedContact:(id)a3 withCompletionHandler:(id)a4;
@end

@implementation PRContactAllowlist

- (PRContactAllowlist)init
{
  v10.receiver = self;
  v10.super_class = PRContactAllowlist;
  v2 = [(PRContactAllowlist *)&v10 init];
  if (v2)
  {
    v3 = os_log_create("com.apple.proximity", "PRContactAllowlist");
    logger = v2->_logger;
    v2->_logger = v3;

    v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
    allowlist = v2->_allowlist;
    v2->_allowlist = v5;

    if (+[PRRangingDevice isSupported])
    {
      v7 = [[PRBeaconListener alloc] initWithDelegate:v2 queue:0];
      nearbyDaemonSession = v2->_nearbyDaemonSession;
      v2->_nearbyDaemonSession = v7;
    }

    v2->_needToRestart = 0;
  }

  return v2;
}

- (void)addTrustedContact:(id)a3 withCompletionHandler:(id)a4
{
  v23 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [PRRemoteDevice alloc];
  v9 = [v6 contactKey];
  v10 = [(PRRemoteDevice *)v8 initWithBTAdvAddress:v9];

  if ([(NSMutableArray *)self->_allowlist containsObject:v10])
  {
    logger = self->_logger;
    if (os_log_type_enabled(logger, OS_LOG_TYPE_DEFAULT))
    {
      v12 = logger;
      v13 = [v6 contactKey];
      *buf = 138412290;
      v22 = v13;
      _os_log_impl(&dword_230EB5000, v12, OS_LOG_TYPE_DEFAULT, "Attempted to add existing contact: %@", buf, 0xCu);
    }

    v7[2](v7, 1, 0);
  }

  else
  {
    v14 = [(NSMutableArray *)self->_allowlist count];
    v15 = self->_logger;
    if (v14 < 5)
    {
      if (os_log_type_enabled(self->_logger, OS_LOG_TYPE_DEBUG))
      {
        [PRContactAllowlist addTrustedContact:v15 withCompletionHandler:?];
      }

      [(NSMutableArray *)self->_allowlist addObject:v10];
      [(PRBeaconListener *)self->_nearbyDaemonSession pushBeaconAllowlist:self->_allowlist completionHandler:v7];
    }

    else
    {
      if (os_log_type_enabled(self->_logger, OS_LOG_TYPE_ERROR))
      {
        [PRContactAllowlist addTrustedContact:v15 withCompletionHandler:?];
      }

      v19 = *MEMORY[0x277CCA450];
      v20 = @"Contact allowlist full";
      v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v20 forKeys:&v19 count:1];
      v17 = PRErrorWithCodeAndUserInfo(400, v16);
      (v7)[2](v7, 0, v17);
    }
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)removeTrustedContact:(id)a3 withCompletionHandler:(id)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [PRRemoteDevice alloc];
  v9 = [v6 contactKey];
  v10 = [(PRRemoteDevice *)v8 initWithBTAdvAddress:v9];

  if ([(NSMutableArray *)self->_allowlist containsObject:v10])
  {
    [(NSMutableArray *)self->_allowlist removeObject:v10];
    if ([(NSMutableArray *)self->_allowlist count])
    {
      [(PRBeaconListener *)self->_nearbyDaemonSession pushBeaconAllowlist:self->_allowlist completionHandler:v7];
    }

    else
    {
      [(PRContactAllowlist *)self clear:v7];
    }
  }

  else
  {
    logger = self->_logger;
    if (os_log_type_enabled(logger, OS_LOG_TYPE_DEFAULT))
    {
      v12 = logger;
      v13 = [v6 contactKey];
      *buf = 138412290;
      v20 = v13;
      _os_log_impl(&dword_230EB5000, v12, OS_LOG_TYPE_DEFAULT, "Attempted to remove unknown contact: %@", buf, 0xCu);
    }

    v17 = *MEMORY[0x277CCA450];
    v18 = @"Attempted to remove unknown contact";
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v18 forKeys:&v17 count:1];
    v15 = PRErrorWithCodeAndUserInfo(401, v14);
    v7[2](v7, 0, v15);
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)clear:(id)a3
{
  allowlist = self->_allowlist;
  v5 = a3;
  [(NSMutableArray *)allowlist removeAllObjects];
  [(PRBeaconListener *)self->_nearbyDaemonSession clearBeaconAllowlistWithCompletionHandler:v5];
}

- (void)beaconListener:(id)a3 didChangeState:(unint64_t)a4
{
  v6 = a3;
  if (a4 <= 1)
  {
    if (a4)
    {
      if (a4 == 1)
      {
        logger = self->_logger;
        if (os_log_type_enabled(logger, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(buf[0]) = 0;
          _os_log_impl(&dword_230EB5000, logger, OS_LOG_TYPE_DEFAULT, "PRBeaconListenerStateIdle", buf, 2u);
        }

        if (self->_needToRestart)
        {
          if ([(NSMutableArray *)self->_allowlist count])
          {
            v8 = self->_logger;
            if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
            {
              LOWORD(buf[0]) = 0;
              _os_log_impl(&dword_230EB5000, v8, OS_LOG_TYPE_DEFAULT, "Attempting to re-establish allowlist", buf, 2u);
            }

            objc_initWeak(buf, self);
            p_allowlist = &self->_allowlist;
            allowlist = self->_allowlist;
            v10 = p_allowlist[1];
            v17[0] = MEMORY[0x277D85DD0];
            v17[1] = 3221225472;
            v17[2] = __52__PRContactAllowlist_beaconListener_didChangeState___block_invoke;
            v17[3] = &unk_2788F3AE8;
            objc_copyWeak(&v18, buf);
            [(NSMutableArray *)v10 pushBeaconAllowlist:allowlist completionHandler:v17];
            objc_destroyWeak(&v18);
            objc_destroyWeak(buf);
            goto LABEL_29;
          }

          if (!self->_needToRestart)
          {
            goto LABEL_29;
          }

          v15 = self->_logger;
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(buf[0]) = 0;
            v16 = "needToRestart set but allowlist size is 0; clearing needToRestart";
            goto LABEL_27;
          }

          goto LABEL_28;
        }
      }

      goto LABEL_29;
    }

    v14 = self->_logger;
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&dword_230EB5000, v14, OS_LOG_TYPE_DEFAULT, "PRBeaconListenerStateUnknown", buf, 2u);
    }

    if (![(NSMutableArray *)self->_allowlist count])
    {
      goto LABEL_29;
    }

    v13 = self->_logger;
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf[0]) = 0;
      goto LABEL_23;
    }

    goto LABEL_24;
  }

  if (a4 == 2)
  {
    v15 = self->_logger;
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf[0]) = 0;
      v16 = "PRBeaconListenerStateListening";
LABEL_27:
      _os_log_impl(&dword_230EB5000, v15, OS_LOG_TYPE_DEFAULT, v16, buf, 2u);
    }

LABEL_28:
    self->_needToRestart = 0;
    goto LABEL_29;
  }

  if (a4 == 3)
  {
    v12 = self->_logger;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&dword_230EB5000, v12, OS_LOG_TYPE_DEFAULT, "PRBeaconListenerStateUnavailable", buf, 2u);
    }

    if ([(NSMutableArray *)self->_allowlist count])
    {
      v13 = self->_logger;
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf[0]) = 0;
LABEL_23:
        _os_log_impl(&dword_230EB5000, v13, OS_LOG_TYPE_DEFAULT, "Need to restart!", buf, 2u);
      }

LABEL_24:
      self->_needToRestart = 1;
    }
  }

LABEL_29:
}

void __52__PRContactAllowlist_beaconListener_didChangeState___block_invoke(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = WeakRetained;
  if (a2)
  {
    v8 = WeakRetained[1];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v11[0] = 0;
      _os_log_impl(&dword_230EB5000, v8, OS_LOG_TYPE_DEFAULT, "successfully re-allowlisted.", v11, 2u);
    }
  }

  else
  {
    v9 = WeakRetained[1];
    v10 = os_log_type_enabled(v9, OS_LOG_TYPE_ERROR);
    if (v5)
    {
      if (v10)
      {
        __52__PRContactAllowlist_beaconListener_didChangeState___block_invoke_cold_1(v9);
      }
    }

    else if (v10)
    {
      __52__PRContactAllowlist_beaconListener_didChangeState___block_invoke_cold_2(v9);
    }
  }
}

- (void)beaconListener:(id)a3 didFailWithError:(id)a4
{
  logger = self->_logger;
  if (os_log_type_enabled(logger, OS_LOG_TYPE_ERROR))
  {
    [PRContactAllowlist beaconListener:? didFailWithError:?];
  }
}

- (void)addTrustedContact:(void *)a1 withCompletionHandler:.cold.1(void *a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_1_0() contactKey];
  v5 = 138412290;
  v6 = v3;
  _os_log_debug_impl(&dword_230EB5000, v1, OS_LOG_TYPE_DEBUG, "Allowlisting contact: %@", &v5, 0xCu);

  v4 = *MEMORY[0x277D85DE8];
}

- (void)addTrustedContact:(void *)a1 withCompletionHandler:.cold.2(void *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = a1;
  v9 = [OUTLINED_FUNCTION_1_0() contactKey];
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x12u);

  v8 = *MEMORY[0x277D85DE8];
}

void __52__PRContactAllowlist_beaconListener_didChangeState___block_invoke_cold_1(void *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = a1;
  v9 = [OUTLINED_FUNCTION_1_0() localizedDescription];
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0xCu);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)beaconListener:(void *)a1 didFailWithError:.cold.1(void *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = a1;
  v9 = [OUTLINED_FUNCTION_1_0() localizedDescription];
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0xCu);

  v8 = *MEMORY[0x277D85DE8];
}

@end