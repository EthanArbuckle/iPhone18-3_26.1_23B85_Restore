@interface SASBluetoothEndpointUtility
- (BOOL)isConnectedToBluetoothVehicle;
- (SASBluetoothEndpointUtility)init;
- (void)_registerListenersAndSetEndpointTypeWithNotification:(id)notification;
- (void)_setEndpointTypeWithNotification:(id)notification;
- (void)dealloc;
- (void)isConnectedToBluetoothVehicle;
@end

@implementation SASBluetoothEndpointUtility

- (BOOL)isConnectedToBluetoothVehicle
{
  endpointType = self->_endpointType;
  if (endpointType)
  {
    v4 = *MEMORY[0x1E69AEBD0];

    return [(NSString *)endpointType isEqualToString:v4];
  }

  else
  {
    v6 = *MEMORY[0x1E698D0A0];
    if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_ERROR))
    {
      [(SASBluetoothEndpointUtility *)v6 isConnectedToBluetoothVehicle];
    }

    return 0;
  }
}

- (SASBluetoothEndpointUtility)init
{
  v6.receiver = self;
  v6.super_class = SASBluetoothEndpointUtility;
  v2 = [(SASBluetoothEndpointUtility *)&v6 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.siri.SerialBluetoothEndpointQueue", 0);
    serialBluetoothEndpointQueue = v2->_serialBluetoothEndpointQueue;
    v2->_serialBluetoothEndpointQueue = v3;

    [(SASBluetoothEndpointUtility *)v2 _registerListenersAndSetEndpointTypeWithNotification:0];
  }

  return v2;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self];

  endpointType = self->_endpointType;
  self->_endpointType = 0;

  v5.receiver = self;
  v5.super_class = SASBluetoothEndpointUtility;
  [(SASBluetoothEndpointUtility *)&v5 dealloc];
}

- (void)_registerListenersAndSetEndpointTypeWithNotification:(id)notification
{
  v22[2] = *MEMORY[0x1E69E9840];
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self];

  mEMORY[0x1E69AED08] = [MEMORY[0x1E69AED08] sharedAVSystemController];
  v6 = MEMORY[0x1E69AE9B8];
  v7 = MEMORY[0x1E69AEAE8];
  v8 = *MEMORY[0x1E69AEAE8];
  v22[0] = *MEMORY[0x1E69AE9B8];
  v22[1] = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:2];
  v10 = *MEMORY[0x1E69AECE0];
  v19 = 0;
  v11 = [mEMORY[0x1E69AED08] setAttribute:v9 forKey:v10 error:&v19];
  v12 = v19;
  v13 = MEMORY[0x1E698D0A0];
  if ((v11 & 1) == 0 && os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_ERROR))
  {
    [SASBluetoothEndpointUtility _registerListenersAndSetEndpointTypeWithNotification:];
  }

  defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter2 addObserver:self selector:sel__registerListenersAndSetEndpointTypeWithNotification_ name:*MEMORY[0x1E69AECB0] object:mEMORY[0x1E69AED08]];

  defaultCenter3 = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter3 addObserver:self selector:sel__setEndpointTypeWithNotification_ name:*v6 object:mEMORY[0x1E69AED08]];

  defaultCenter4 = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter4 addObserver:self selector:sel__setEndpointTypeWithNotification_ name:*v7 object:mEMORY[0x1E69AED08]];

  [(SASBluetoothEndpointUtility *)self _setEndpointTypeWithNotification:0];
  v17 = *v13;
  if (os_log_type_enabled(*v13, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v21 = "[SASBluetoothEndpointUtility _registerListenersAndSetEndpointTypeWithNotification:]";
    _os_log_impl(&dword_1C8137000, v17, OS_LOG_TYPE_INFO, "%s Registered AVSystemController listeners", buf, 0xCu);
  }

  v18 = *MEMORY[0x1E69E9840];
}

- (void)_setEndpointTypeWithNotification:(id)notification
{
  objc_initWeak(&location, self);
  serialBluetoothEndpointQueue = self->_serialBluetoothEndpointQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __64__SASBluetoothEndpointUtility__setEndpointTypeWithNotification___block_invoke;
  v5[3] = &unk_1E82F36D0;
  objc_copyWeak(&v6, &location);
  dispatch_async(serialBluetoothEndpointQueue, v5);
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

void __64__SASBluetoothEndpointUtility__setEndpointTypeWithNotification___block_invoke(uint64_t a1)
{
  v32 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = [MEMORY[0x1E69AED08] sharedAVSystemController];
    v3 = [v2 pickableRoutesForCategory:*MEMORY[0x1E698D298] andMode:@"SpeechRecognition"];

    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v4 = v3;
    v5 = [v4 countByEnumeratingWithState:&v21 objects:v31 count:16];
    v6 = MEMORY[0x1E698D0A0];
    if (v5)
    {
      v7 = v5;
      v8 = *v22;
      v9 = MEMORY[0x1E69AEC80];
LABEL_4:
      v10 = 0;
      while (1)
      {
        if (*v22 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v11 = *(*(&v21 + 1) + 8 * v10);
        v12 = [v11 objectForKeyedSubscript:{*v9, v21}];
        v13 = [v12 BOOLValue];

        if (v13)
        {
          break;
        }

        if (v7 == ++v10)
        {
          v7 = [v4 countByEnumeratingWithState:&v21 objects:v31 count:16];
          if (v7)
          {
            goto LABEL_4;
          }

          goto LABEL_10;
        }
      }

      v14 = [v11 objectForKeyedSubscript:*MEMORY[0x1E69AEBA0]];

      if (v14)
      {
        goto LABEL_14;
      }
    }

    else
    {
LABEL_10:
    }

    v14 = *MEMORY[0x1E69AEBC8];
    if (os_log_type_enabled(*v6, OS_LOG_TYPE_ERROR))
    {
      __64__SASBluetoothEndpointUtility__setEndpointTypeWithNotification___block_invoke_cold_1();
    }

LABEL_14:
    v15 = [WeakRetained _endpointType];
    v16 = [v15 isEqualToString:v14];

    if ((v16 & 1) == 0)
    {
      v17 = *v6;
      if (os_log_type_enabled(*v6, OS_LOG_TYPE_DEFAULT))
      {
        v18 = v17;
        v19 = [WeakRetained _endpointType];
        *buf = 136315650;
        v26 = "[SASBluetoothEndpointUtility _setEndpointTypeWithNotification:]_block_invoke";
        v27 = 2112;
        v28 = v19;
        v29 = 2112;
        v30 = v14;
        _os_log_impl(&dword_1C8137000, v18, OS_LOG_TYPE_DEFAULT, "%s Endpoint type changed, from %@ to %@.", buf, 0x20u);
      }

      [WeakRetained _setEndpointType:v14];
    }
  }

  v20 = *MEMORY[0x1E69E9840];
}

- (void)isConnectedToBluetoothVehicle
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 136315138;
  v3 = "[SASBluetoothEndpointUtility isConnectedToBluetoothVehicle]";
  _os_log_error_impl(&dword_1C8137000, log, OS_LOG_TYPE_ERROR, "%s This should hopefully not happen, endpointType not initialized before called, returning as not Bluetooth.", &v2, 0xCu);
  v1 = *MEMORY[0x1E69E9840];
}

- (void)_registerListenersAndSetEndpointTypeWithNotification:.cold.1()
{
  v3 = *MEMORY[0x1E69E9840];
  v2[0] = 136315394;
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(&dword_1C8137000, v0, OS_LOG_TYPE_ERROR, "%s Failed to subscribe to AVSystemController notifications due to error: %@", v2, 0x16u);
  v1 = *MEMORY[0x1E69E9840];
}

void __64__SASBluetoothEndpointUtility__setEndpointTypeWithNotification___block_invoke_cold_1()
{
  v3 = *MEMORY[0x1E69E9840];
  v2[0] = 136315394;
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(&dword_1C8137000, v0, OS_LOG_TYPE_ERROR, "%s Endpoint type is not found from AVSystemController, setting it to %@.", v2, 0x16u);
  v1 = *MEMORY[0x1E69E9840];
}

@end