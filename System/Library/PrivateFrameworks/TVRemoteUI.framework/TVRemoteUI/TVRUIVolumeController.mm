@interface TVRUIVolumeController
- (id)initForWindow:(id)a3 eventHandler:(id)a4;
- (void)consumeSinglePressDownForButtonKind:(int64_t)a3;
- (void)disableVolumeControl;
- (void)enableVolumeControl;
@end

@implementation TVRUIVolumeController

- (id)initForWindow:(id)a3 eventHandler:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = TVRUIVolumeController;
  v9 = [(TVRUIVolumeController *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_window, a3);
    v11 = _Block_copy(v8);
    eventHandler = v10->_eventHandler;
    v10->_eventHandler = v11;
  }

  return v10;
}

- (void)enableVolumeControl
{
  v3 = [(TVRUIVolumeController *)self supportsVolumeControl];
  v4 = _TVRUIVolumeControllerLog();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v5)
    {
      *buf = 0;
      _os_log_impl(&dword_26CFEB000, v4, OS_LOG_TYPE_DEFAULT, "Registering for volume button events", buf, 2u);
    }

    v6 = [(TVRUIVolumeController *)self window];

    if (v6)
    {
      v7 = [(TVRUIVolumeController *)self window];
      v8 = [v7 windowScene];
      [v8 _setSystemVolumeHUDEnabled:0];
    }

    v9 = [(TVRUIVolumeController *)self volumeIncreaseSBSInvalidator];
    if (v9)
    {
    }

    else
    {
      v12 = [(TVRUIVolumeController *)self volumeDecreaseSBSInvalidator];

      if (!v12)
      {
        v13 = _TVRUIVolumeControllerLog();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          *v17 = 0;
          _os_log_impl(&dword_26CFEB000, v13, OS_LOG_TYPE_DEFAULT, "Begin consuming volume button presses", v17, 2u);
        }

        v14 = [MEMORY[0x277D66AA0] sharedInstance];
        v15 = [v14 beginConsumingPressesForButtonKind:4 eventConsumer:self priority:0];
        [(TVRUIVolumeController *)self setVolumeDecreaseSBSInvalidator:v15];

        v4 = [MEMORY[0x277D66AA0] sharedInstance];
        v16 = [v4 beginConsumingPressesForButtonKind:3 eventConsumer:self priority:0];
        [(TVRUIVolumeController *)self setVolumeIncreaseSBSInvalidator:v16];

        goto LABEL_14;
      }
    }

    v4 = _TVRUIVolumeControllerLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v18 = 0;
      v10 = "Already listening for volume button presses";
      v11 = v18;
      goto LABEL_13;
    }
  }

  else if (v5)
  {
    v20 = 0;
    v10 = "Volume control is NOT supported. Skipping listening for volume button events";
    v11 = &v20;
LABEL_13:
    _os_log_impl(&dword_26CFEB000, v4, OS_LOG_TYPE_DEFAULT, v10, v11, 2u);
  }

LABEL_14:
}

- (void)disableVolumeControl
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = _TVRUIVolumeControllerLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v9[0] = 67109120;
    v9[1] = [(TVRUIVolumeController *)self supportsVolumeControl];
    _os_log_impl(&dword_26CFEB000, v3, OS_LOG_TYPE_DEFAULT, "Unregistering from volume button events. supportsVolumeControl:%{BOOL}d", v9, 8u);
  }

  v4 = [(TVRUIVolumeController *)self window];

  if (v4)
  {
    v5 = [(TVRUIVolumeController *)self window];
    v6 = [v5 windowScene];
    [v6 _setSystemVolumeHUDEnabled:1];
  }

  v7 = [(TVRUIVolumeController *)self volumeDecreaseSBSInvalidator];
  [v7 invalidate];

  v8 = [(TVRUIVolumeController *)self volumeIncreaseSBSInvalidator];
  [v8 invalidate];

  [(TVRUIVolumeController *)self setVolumeDecreaseSBSInvalidator:0];
  [(TVRUIVolumeController *)self setVolumeIncreaseSBSInvalidator:0];
}

- (void)consumeSinglePressDownForButtonKind:(int64_t)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = _TVRUIVolumeControllerLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = NSStringFromSBSHardwareButtonKind();
    v8 = 136315394;
    v9 = "[TVRUIVolumeController consumeSinglePressDownForButtonKind:]";
    v10 = 2112;
    v11 = v6;
    _os_log_impl(&dword_26CFEB000, v5, OS_LOG_TYPE_DEFAULT, "%s, buttonKind: %@", &v8, 0x16u);
  }

  if (a3 == 4 || a3 == 3)
  {
    v7 = [(TVRUIVolumeController *)self eventHandler];
    (*(v7 + 16))();
  }

  else
  {
    v7 = _TVRUIVolumeControllerLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [(TVRUIVolumeController *)a3 consumeSinglePressDownForButtonKind:v7];
    }
  }
}

- (void)consumeSinglePressDownForButtonKind:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = NSStringFromSBSHardwareButtonKind();
  v4 = 138412290;
  v5 = v3;
  _os_log_error_impl(&dword_26CFEB000, a2, OS_LOG_TYPE_ERROR, "Unsupported button kind: %@", &v4, 0xCu);
}

@end