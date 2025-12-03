@interface SBFSecureDisplayCoordinator
- (void)setSecureMode:(BOOL)mode postNotification:(BOOL)notification;
@end

@implementation SBFSecureDisplayCoordinator

- (void)setSecureMode:(BOOL)mode postNotification:(BOOL)notification
{
  if (self->_inSecureMode == mode)
  {
    return;
  }

  v25 = v7;
  v26 = v6;
  v27 = v4;
  v28 = v5;
  notificationCopy = notification;
  modeCopy = mode;
  self->_inSecureMode = mode;
  v11 = SBLogAuthenticationController();
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
  if (modeCopy)
  {
    if (v12)
    {
      v24[0] = 0;
      _os_log_impl(&dword_1BEA11000, v11, OS_LOG_TYPE_DEFAULT, "Enabling secure display mode.", v24, 2u);
    }

    if (notificationCopy)
    {
      defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
      [defaultCenter postNotificationName:@"SBDeviceWillEnableDisplaySecureModeNotification" object:self];
    }

    v14 = MEMORY[0x1E69DEAC8];
  }

  else
  {
    if (v12)
    {
      v24[0] = 0;
      _os_log_impl(&dword_1BEA11000, v11, OS_LOG_TYPE_DEFAULT, "Disabling secure display mode.", v24, 2u);
    }

    if (!notificationCopy)
    {
      goto LABEL_13;
    }

    v14 = SBDeviceWillDisableDisplaySecureModeNotification;
  }

  defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter2 postNotificationName:*v14 object:self];

LABEL_13:
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __62__SBFSecureDisplayCoordinator_setSecureMode_postNotification___block_invoke;
  v21[3] = &unk_1E807F1A0;
  v21[4] = self;
  v22 = modeCopy;
  v23 = notificationCopy;
  v16 = MEMORY[0x1BFB4D9B0](v21);
  v17 = v16;
  if (modeCopy)
  {
    v18 = MEMORY[0x1E6979518];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __62__SBFSecureDisplayCoordinator_setSecureMode_postNotification___block_invoke_2;
    v19[3] = &unk_1E807FCB0;
    v20 = v16;
    [v18 bs_performAfterSynchronizedCommit:v19];
  }

  else
  {
    v16[2](v16);
  }
}

void __62__SBFSecureDisplayCoordinator_setSecureMode_postNotification___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  if (*(*(a1 + 32) + 8) != *(a1 + 40))
  {
    v6 = SBLogAuthenticationController();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 40);
      v9 = *(*(a1 + 32) + 8);
      v11[0] = 67109376;
      v11[1] = v8;
      v12 = 1024;
      v13 = v9;
      _os_log_impl(&dword_1BEA11000, v6, OS_LOG_TYPE_DEFAULT, "Not changing secure mode to %{BOOL}u because the expected state is now %{BOOL}u", v11, 0xEu);
    }

    goto LABEL_15;
  }

  BKSDisplaySetSecureMode();
  v2 = *(a1 + 40);
  v3 = SBLogAuthenticationController();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
  if (v2 != 1)
  {
    if (v4)
    {
      LOWORD(v11[0]) = 0;
      _os_log_impl(&dword_1BEA11000, v3, OS_LOG_TYPE_DEFAULT, "Disabled secure display mode.", v11, 2u);
    }

    if (*(a1 + 41) == 1)
    {
      v10 = [MEMORY[0x1E696AD88] defaultCenter];
      [v10 postNotificationName:@"SBDeviceDidDisableDisplaySecureModeNotification" object:*(a1 + 32)];
    }

    v5 = [MEMORY[0x1E696AD88] defaultCenter];
    v6 = v5;
    v7 = MEMORY[0x1E69DEAC0];
    goto LABEL_14;
  }

  if (v4)
  {
    LOWORD(v11[0]) = 0;
    _os_log_impl(&dword_1BEA11000, v3, OS_LOG_TYPE_DEFAULT, "Enabled secure display mode.", v11, 2u);
  }

  if (*(a1 + 41) == 1)
  {
    v5 = [MEMORY[0x1E696AD88] defaultCenter];
    v6 = v5;
    v7 = SBDeviceDidEnableDisplaySecureModeNotification;
LABEL_14:
    [v5 postNotificationName:*v7 object:*(a1 + 32)];
LABEL_15:
  }
}

@end