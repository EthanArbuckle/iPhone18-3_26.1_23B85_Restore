@interface TUAudioFrequencyController
+ (float)normalizedPowerLevelForPowerSpectrum:(id)a3;
+ (float)rawPowerLevelForPowerSpectrum:(id)a3;
+ (id)normalizedSpectrumForPowerSpectrum:(id)a3;
- (TUAudioFrequencyController)initWithDelegate:(id)a3 queue:(id)a4 binCount:(int64_t)a5;
- (TUAudioFrequencyControllerDelegate)delegate;
- (void)audioPowerSpectrumMeter:(id)a3 didUpdateAudioPowerSpectrums:(id)a4;
- (void)meterServerDidDisconnect:(id)a3;
- (void)registerCellularPowerSpectrum:(int64_t)a3;
- (void)registerParticipantPowerSpectrum:(int64_t)a3;
- (void)unregisterCellularPowerSpectrum:(int64_t)a3;
- (void)unregisterParticipantPowerSpectrum:(int64_t)a3;
@end

@implementation TUAudioFrequencyController

- (TUAudioFrequencyController)initWithDelegate:(id)a3 queue:(id)a4 binCount:(int64_t)a5
{
  v5 = a5;
  v8 = a3;
  v9 = a4;
  v22.receiver = self;
  v22.super_class = TUAudioFrequencyController;
  v10 = [(TUAudioFrequencyController *)&v22 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_queue, a4);
    objc_storeWeak(&v11->_delegate, v8);
    v12 = objc_alloc(CUTWeakLinkClass());
    v13 = [(TUAudioFrequencyController *)v11 queue];
    v18 = 0;
    v17 = 0;
    v19 = v5;
    v20 = 0;
    v21 = 0x3FB1111111111111;
    v14 = [v12 initWithConfig:&v17 delegate:v11 queue:v13];
    powerSpectrumMeter = v11->_powerSpectrumMeter;
    v11->_powerSpectrumMeter = v14;
  }

  return v11;
}

- (void)registerParticipantPowerSpectrum:(int64_t)a3
{
  v4 = [(TUAudioFrequencyController *)self powerSpectrumMeter];
  [v4 registerPowerSpectrumForStreamToken:a3];
}

- (void)unregisterParticipantPowerSpectrum:(int64_t)a3
{
  v4 = [(TUAudioFrequencyController *)self powerSpectrumMeter];
  [v4 unregisterPowerSpectrumForStreamToken:a3];
}

- (void)registerCellularPowerSpectrum:(int64_t)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = [(TUAudioFrequencyController *)self _avcTapTypeForTUTapType:?];
  v6 = [(TUAudioFrequencyController *)self powerSpectrumMeter];
  v11 = 0;
  v7 = [v6 registerPowerSpectrumForCellularTapType:v5 error:&v11];
  v8 = v11;

  v9 = TUDefaultLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218498;
    v13 = a3;
    v14 = 1024;
    v15 = v7;
    v16 = 2112;
    v17 = v8;
    _os_log_impl(&dword_1956FD000, v9, OS_LOG_TYPE_DEFAULT, "Register for cellular power spectrum - type: %lu, success: %d, error: %@", buf, 0x1Cu);
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (void)unregisterCellularPowerSpectrum:(int64_t)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = [(TUAudioFrequencyController *)self _avcTapTypeForTUTapType:?];
  v6 = [(TUAudioFrequencyController *)self powerSpectrumMeter];
  v11 = 0;
  v7 = [v6 unregisterPowerSpectrumForCellularTapType:v5 error:&v11];
  v8 = v11;

  v9 = TUDefaultLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218498;
    v13 = a3;
    v14 = 1024;
    v15 = v7;
    v16 = 2112;
    v17 = v8;
    _os_log_impl(&dword_1956FD000, v9, OS_LOG_TYPE_DEFAULT, "Unregister for cellular power spectrum - type: %lu, success: %d, error: %@", buf, 0x1Cu);
  }

  v10 = *MEMORY[0x1E69E9840];
}

+ (float)normalizedPowerLevelForPowerSpectrum:(id)a3
{
  [a1 rawPowerLevelForPowerSpectrum:a3];
  v4 = -40.0;
  if (v3 <= -40.0)
  {
    v4 = v3;
    if (v3 < -90.0)
    {
      v4 = -90.0;
    }
  }

  return (v4 + 90.0) / 50.0;
}

+ (float)rawPowerLevelForPowerSpectrum:(id)a3
{
  v3 = [a3 channels];
  v4 = [v3 firstObject];
  v5 = [v4 bins];
  v6 = [v5 firstObject];
  [v6 powerLevel];
  v8 = v7;

  return v8;
}

+ (id)normalizedSpectrumForPowerSpectrum:(id)a3
{
  v3 = [a3 channels];
  v4 = [v3 firstObject];
  v5 = [v4 bins];

  v6 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v5, "count")}];
  if ([v5 count])
  {
    v7 = 0;
    do
    {
      v8 = [v5 objectAtIndexedSubscript:v7];
      [v8 powerLevel];
      v10 = v9;

      LODWORD(v11) = -1038090240;
      if (v10 <= -40.0)
      {
        *&v11 = v10;
        if (v10 < -90.0)
        {
          LODWORD(v11) = -1028390912;
        }
      }

      *&v11 = (*&v11 + 90.0) / 50.0;
      v12 = [MEMORY[0x1E696AD98] numberWithFloat:v11];
      [v6 setObject:v12 atIndexedSubscript:v7];

      ++v7;
    }

    while (v7 < [v5 count]);
  }

  return v6;
}

- (void)audioPowerSpectrumMeter:(id)a3 didUpdateAudioPowerSpectrums:(id)a4
{
  v36 = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = [(TUAudioFrequencyController *)self queue];
  dispatch_assert_queue_V2(v6);

  v7 = [(TUAudioFrequencyController *)self delegate];
  if (v5 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v29 = v5;
    v8 = v5;
    v9 = [v8 countByEnumeratingWithState:&v31 objects:v35 count:16];
    if (v9)
    {
      v10 = v9;
      v30 = *v32;
      do
      {
        v11 = 0;
        do
        {
          if (*v32 != v30)
          {
            objc_enumerationMutation(v8);
          }

          v12 = *(*(&v31 + 1) + 8 * v11);
          v13 = objc_opt_class();
          v14 = [v8 objectForKeyedSubscript:v12];
          [v13 normalizedPowerLevelForPowerSpectrum:v14];
          v16 = v15;

          v17 = [v12 integerValue];
          LODWORD(v18) = v16;
          [v7 frequencyController:self audioPowerChanged:v17 forParticipantWithStreamToken:v18];
          if (objc_opt_respondsToSelector())
          {
            v19 = objc_opt_class();
            v20 = [v8 objectForKeyedSubscript:v12];
            [v19 rawPowerLevelForPowerSpectrum:v20];
            v22 = v21;

            v23 = [v12 integerValue];
            LODWORD(v24) = v22;
            [v7 frequencyController:self rawValueForAudioPowerChanged:v23 forParticipantWithStreamToken:v24];
          }

          if (objc_opt_respondsToSelector())
          {
            v25 = objc_opt_class();
            v26 = [v8 objectForKeyedSubscript:v12];
            v27 = [v25 normalizedSpectrumForPowerSpectrum:v26];

            [v7 frequencyController:self spectrumChanged:v27 forParticipantWithStreamToken:{objc_msgSend(v12, "integerValue")}];
          }

          ++v11;
        }

        while (v10 != v11);
        v10 = [v8 countByEnumeratingWithState:&v31 objects:v35 count:16];
      }

      while (v10);
    }

    v5 = v29;
  }

  v28 = *MEMORY[0x1E69E9840];
}

- (void)meterServerDidDisconnect:(id)a3
{
  v4 = a3;
  v5 = [(TUAudioFrequencyController *)self queue];
  dispatch_assert_queue_V2(v5);

  v6 = TUDefaultLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    [(TUAudioFrequencyController *)v4 meterServerDidDisconnect:v6];
  }
}

- (TUAudioFrequencyControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)meterServerDidDisconnect:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_1956FD000, a2, OS_LOG_TYPE_ERROR, "Audio power spectrum meter died: %@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end