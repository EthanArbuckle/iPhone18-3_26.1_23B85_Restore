@interface TUAudioFrequencyController
+ (float)normalizedPowerLevelForPowerSpectrum:(id)spectrum;
+ (float)rawPowerLevelForPowerSpectrum:(id)spectrum;
+ (id)normalizedSpectrumForPowerSpectrum:(id)spectrum;
- (TUAudioFrequencyController)initWithDelegate:(id)delegate queue:(id)queue binCount:(int64_t)count;
- (TUAudioFrequencyControllerDelegate)delegate;
- (void)audioPowerSpectrumMeter:(id)meter didUpdateAudioPowerSpectrums:(id)spectrums;
- (void)meterServerDidDisconnect:(id)disconnect;
- (void)registerCellularPowerSpectrum:(int64_t)spectrum;
- (void)registerParticipantPowerSpectrum:(int64_t)spectrum;
- (void)unregisterCellularPowerSpectrum:(int64_t)spectrum;
- (void)unregisterParticipantPowerSpectrum:(int64_t)spectrum;
@end

@implementation TUAudioFrequencyController

- (TUAudioFrequencyController)initWithDelegate:(id)delegate queue:(id)queue binCount:(int64_t)count
{
  countCopy = count;
  delegateCopy = delegate;
  queueCopy = queue;
  v22.receiver = self;
  v22.super_class = TUAudioFrequencyController;
  v10 = [(TUAudioFrequencyController *)&v22 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_queue, queue);
    objc_storeWeak(&v11->_delegate, delegateCopy);
    v12 = objc_alloc(CUTWeakLinkClass());
    queue = [(TUAudioFrequencyController *)v11 queue];
    v18 = 0;
    v17 = 0;
    v19 = countCopy;
    v20 = 0;
    v21 = 0x3FB1111111111111;
    v14 = [v12 initWithConfig:&v17 delegate:v11 queue:queue];
    powerSpectrumMeter = v11->_powerSpectrumMeter;
    v11->_powerSpectrumMeter = v14;
  }

  return v11;
}

- (void)registerParticipantPowerSpectrum:(int64_t)spectrum
{
  powerSpectrumMeter = [(TUAudioFrequencyController *)self powerSpectrumMeter];
  [powerSpectrumMeter registerPowerSpectrumForStreamToken:spectrum];
}

- (void)unregisterParticipantPowerSpectrum:(int64_t)spectrum
{
  powerSpectrumMeter = [(TUAudioFrequencyController *)self powerSpectrumMeter];
  [powerSpectrumMeter unregisterPowerSpectrumForStreamToken:spectrum];
}

- (void)registerCellularPowerSpectrum:(int64_t)spectrum
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = [(TUAudioFrequencyController *)self _avcTapTypeForTUTapType:?];
  powerSpectrumMeter = [(TUAudioFrequencyController *)self powerSpectrumMeter];
  v11 = 0;
  v7 = [powerSpectrumMeter registerPowerSpectrumForCellularTapType:v5 error:&v11];
  v8 = v11;

  v9 = TUDefaultLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218498;
    spectrumCopy = spectrum;
    v14 = 1024;
    v15 = v7;
    v16 = 2112;
    v17 = v8;
    _os_log_impl(&dword_1956FD000, v9, OS_LOG_TYPE_DEFAULT, "Register for cellular power spectrum - type: %lu, success: %d, error: %@", buf, 0x1Cu);
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (void)unregisterCellularPowerSpectrum:(int64_t)spectrum
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = [(TUAudioFrequencyController *)self _avcTapTypeForTUTapType:?];
  powerSpectrumMeter = [(TUAudioFrequencyController *)self powerSpectrumMeter];
  v11 = 0;
  v7 = [powerSpectrumMeter unregisterPowerSpectrumForCellularTapType:v5 error:&v11];
  v8 = v11;

  v9 = TUDefaultLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218498;
    spectrumCopy = spectrum;
    v14 = 1024;
    v15 = v7;
    v16 = 2112;
    v17 = v8;
    _os_log_impl(&dword_1956FD000, v9, OS_LOG_TYPE_DEFAULT, "Unregister for cellular power spectrum - type: %lu, success: %d, error: %@", buf, 0x1Cu);
  }

  v10 = *MEMORY[0x1E69E9840];
}

+ (float)normalizedPowerLevelForPowerSpectrum:(id)spectrum
{
  [self rawPowerLevelForPowerSpectrum:spectrum];
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

+ (float)rawPowerLevelForPowerSpectrum:(id)spectrum
{
  channels = [spectrum channels];
  firstObject = [channels firstObject];
  bins = [firstObject bins];
  firstObject2 = [bins firstObject];
  [firstObject2 powerLevel];
  v8 = v7;

  return v8;
}

+ (id)normalizedSpectrumForPowerSpectrum:(id)spectrum
{
  channels = [spectrum channels];
  firstObject = [channels firstObject];
  bins = [firstObject bins];

  v6 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(bins, "count")}];
  if ([bins count])
  {
    v7 = 0;
    do
    {
      v8 = [bins objectAtIndexedSubscript:v7];
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

    while (v7 < [bins count]);
  }

  return v6;
}

- (void)audioPowerSpectrumMeter:(id)meter didUpdateAudioPowerSpectrums:(id)spectrums
{
  v36 = *MEMORY[0x1E69E9840];
  spectrumsCopy = spectrums;
  queue = [(TUAudioFrequencyController *)self queue];
  dispatch_assert_queue_V2(queue);

  delegate = [(TUAudioFrequencyController *)self delegate];
  if (spectrumsCopy && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v29 = spectrumsCopy;
    v8 = spectrumsCopy;
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

          integerValue = [v12 integerValue];
          LODWORD(v18) = v16;
          [delegate frequencyController:self audioPowerChanged:integerValue forParticipantWithStreamToken:v18];
          if (objc_opt_respondsToSelector())
          {
            v19 = objc_opt_class();
            v20 = [v8 objectForKeyedSubscript:v12];
            [v19 rawPowerLevelForPowerSpectrum:v20];
            v22 = v21;

            integerValue2 = [v12 integerValue];
            LODWORD(v24) = v22;
            [delegate frequencyController:self rawValueForAudioPowerChanged:integerValue2 forParticipantWithStreamToken:v24];
          }

          if (objc_opt_respondsToSelector())
          {
            v25 = objc_opt_class();
            v26 = [v8 objectForKeyedSubscript:v12];
            v27 = [v25 normalizedSpectrumForPowerSpectrum:v26];

            [delegate frequencyController:self spectrumChanged:v27 forParticipantWithStreamToken:{objc_msgSend(v12, "integerValue")}];
          }

          ++v11;
        }

        while (v10 != v11);
        v10 = [v8 countByEnumeratingWithState:&v31 objects:v35 count:16];
      }

      while (v10);
    }

    spectrumsCopy = v29;
  }

  v28 = *MEMORY[0x1E69E9840];
}

- (void)meterServerDidDisconnect:(id)disconnect
{
  disconnectCopy = disconnect;
  queue = [(TUAudioFrequencyController *)self queue];
  dispatch_assert_queue_V2(queue);

  v6 = TUDefaultLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    [(TUAudioFrequencyController *)disconnectCopy meterServerDidDisconnect:v6];
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