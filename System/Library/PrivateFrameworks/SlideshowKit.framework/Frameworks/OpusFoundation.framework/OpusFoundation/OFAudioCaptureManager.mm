@interface OFAudioCaptureManager
- (BOOL)openSession;
- (OFAudioCaptureManager)initWithOutputFileURL:(id)a3;
- (float)meanAudioLevel;
- (id)_audioDevice;
- (id)_tempFileURL;
- (unint64_t)micCount;
- (void)_removeFile:(id)a3;
- (void)dealloc;
- (void)recorder:(id)a3 recordingDidFinishToOutputFileURL:(id)a4 error:(id)a5;
- (void)recorderRecordingDidBegin:(id)a3;
- (void)startRecording;
@end

@implementation OFAudioCaptureManager

- (OFAudioCaptureManager)initWithOutputFileURL:(id)a3
{
  v11.receiver = self;
  v11.super_class = OFAudioCaptureManager;
  v4 = [(OFAudioCaptureManager *)&v11 init];
  v5 = v4;
  if (v4)
  {
    v4->_session = 0;
    v4->_audioInput = 0;
    v4->_recorder = 0;
    [(OFAudioCaptureManager *)v4 setOutputFileURL:a3];
    v5->_isCancelled = 0;
    v5->_delegate = 0;
    v6 = [OFWeakReferenceHolder weakReferenceHolderWithObject:v5];
    v7 = [MEMORY[0x277CCAB98] defaultCenter];
    v5->_deviceConnectedObserver = [v7 addObserverForName:*MEMORY[0x277CE5898] object:0 queue:0 usingBlock:&v10];
    v5->_deviceDisconnectedObserver = [v7 addObserverForName:*MEMORY[0x277CE58A0] object:0 queue:0 usingBlock:&v9];
  }

  return v5;
}

uint64_t __47__OFAudioCaptureManager_initWithOutputFileURL___block_invoke(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  result = [*(a1 + 32) object];
  if (result)
  {
    v4 = result;
    v5 = [a2 object];
    v6 = *MEMORY[0x277CE5E48];
    v7 = [v5 hasMediaType:*MEMORY[0x277CE5E48]];
    if (v6)
    {
      v8 = v7 == 0;
    }

    else
    {
      v8 = 1;
    }

    if (!v8)
    {
      v18 = 0u;
      v19 = 0u;
      v16 = 0u;
      v17 = 0u;
      v9 = [objc_msgSend(v4 "session")];
      v10 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v17;
LABEL_13:
        v13 = 0;
        while (1)
        {
          if (*v17 != v12)
          {
            objc_enumerationMutation(v9);
          }

          if ([objc_msgSend(*(*(&v16 + 1) + 8 * v13) "device")])
          {
            break;
          }

          if (v11 == ++v13)
          {
            v11 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
            if (v11)
            {
              goto LABEL_13;
            }

            goto LABEL_19;
          }
        }
      }

      else
      {
LABEL_19:
        v15 = 0;
        v14 = [MEMORY[0x277CE5AD8] deviceInputWithDevice:v5 error:&v15];
        if ([objc_msgSend(v4 "session")])
        {
          [objc_msgSend(v4 "session")];
        }
      }
    }

    result = [v4 delegate];
    if (result)
    {
      [v4 delegate];
      result = objc_opt_respondsToSelector();
      if (result)
      {
        return [objc_msgSend(v4 "delegate")];
      }
    }
  }

  return result;
}

uint64_t __47__OFAudioCaptureManager_initWithOutputFileURL___block_invoke_2(uint64_t a1, void *a2)
{
  result = [*(a1 + 32) object];
  if (result)
  {
    v4 = result;
    v5 = [a2 object];
    if ([v5 hasMediaType:*MEMORY[0x277CE5E48]])
    {
      [objc_msgSend(v4 "session")];
      [v4 setAudioInput:0];
    }

    result = [v4 delegate];
    if (result)
    {
      [v4 delegate];
      result = objc_opt_respondsToSelector();
      if (result)
      {
        v6 = [v4 delegate];

        return [v6 captureManagerDeviceConfigurationChanged:v4];
      }
    }
  }

  return result;
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self->_deviceConnectedObserver];
  if (self->_deviceConnectedObserver)
  {
    self->_deviceConnectedObserver = 0;
  }

  [v3 removeObserver:self->_deviceDisconnectedObserver];
  if (self->_deviceDisconnectedObserver)
  {
    self->_deviceDisconnectedObserver = 0;
  }

  [(AVCaptureSession *)self->_session stopRunning];
  session = self->_session;
  if (session)
  {

    self->_session = 0;
  }

  audioInput = self->_audioInput;
  if (audioInput)
  {

    self->_audioInput = 0;
  }

  recorder = self->_recorder;
  if (recorder)
  {

    self->_recorder = 0;
  }

  outputFileURL = self->_outputFileURL;
  if (outputFileURL)
  {

    self->_outputFileURL = 0;
  }

  objc_storeWeak(&self->_delegate, 0);
  v8.receiver = self;
  v8.super_class = OFAudioCaptureManager;
  [(OFAudioCaptureManager *)&v8 dealloc];
}

- (BOOL)openSession
{
  v3 = [objc_alloc(MEMORY[0x277CE5AD8]) initWithDevice:-[OFAudioCaptureManager _audioDevice](self error:{"_audioDevice"), 0}];
  v4 = objc_alloc_init(MEMORY[0x277CE5B38]);
  if ([v4 canAddInput:v3])
  {
    [v4 addInput:v3];
  }

  [(OFAudioCaptureManager *)self setAudioInput:v3];
  [(OFAudioCaptureManager *)self setSession:v4];

  if (!self->_outputFileURL)
  {
    [(OFAudioCaptureManager *)self setOutputFileURL:[(OFAudioCaptureManager *)self _tempFileURL]];
  }

  v5 = [[OFAudioRecorder alloc] initWithSession:self->_session outputFileURL:self->_outputFileURL];
  [(OFAudioRecorder *)v5 setDelegate:self];
  if (![(OFAudioRecorder *)v5 recordsAudio])
  {
    if ([(OFAudioCaptureManager *)self delegate])
    {
      [(OFAudioCaptureManager *)self delegate];
      if (objc_opt_respondsToSelector())
      {
        v6 = [(OFAudioCaptureManager *)self delegate];
        -[OFAudioCaptureManagerDelegate captureManager:didFailWithError:](v6, "captureManager:didFailWithError:", self, [MEMORY[0x277CCA9B8] errorWithDescription:@"Audio recording unavailable"]);
      }
    }
  }

  [(OFAudioCaptureManager *)self setRecorder:v5];

  global_queue = dispatch_get_global_queue(0, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __36__OFAudioCaptureManager_openSession__block_invoke;
  block[3] = &unk_279C89F90;
  block[4] = self;
  dispatch_async(global_queue, block);
  return 1;
}

- (void)startRecording
{
  self->_isCancelled = 0;
  if ([objc_msgSend(MEMORY[0x277D75418] "currentDevice")])
  {
    -[OFAudioCaptureManager setBackgroundRecordingID:](self, "setBackgroundRecordingID:", [objc_msgSend(MEMORY[0x277D75128] "sharedApplication")]);
  }

  [(OFAudioCaptureManager *)self _removeFile:self->_outputFileURL];
  recorder = self->_recorder;

  [(OFAudioRecorder *)recorder startRecording];
}

- (unint64_t)micCount
{
  v2 = [MEMORY[0x277CE5AC8] devicesWithMediaType:*MEMORY[0x277CE5E48]];

  return [v2 count];
}

- (float)meanAudioLevel
{
  v37 = *MEMORY[0x277D85DE8];
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  obj = [(AVCaptureSession *)self->_session outputs];
  v21 = [(NSArray *)obj countByEnumeratingWithState:&v30 objects:v36 count:16];
  if (!v21)
  {
    return 0.0;
  }

  v2 = 0;
  v20 = *v31;
  v3 = 0.0;
  do
  {
    for (i = 0; i != v21; ++i)
    {
      if (*v31 != v20)
      {
        objc_enumerationMutation(obj);
      }

      v5 = *(*(&v30 + 1) + 8 * i);
      v26 = 0u;
      v27 = 0u;
      v28 = 0u;
      v29 = 0u;
      v6 = [v5 connections];
      v7 = [v6 countByEnumeratingWithState:&v26 objects:v35 count:16];
      if (v7)
      {
        v8 = v7;
        v9 = *v27;
        do
        {
          for (j = 0; j != v8; ++j)
          {
            if (*v27 != v9)
            {
              objc_enumerationMutation(v6);
            }

            v11 = *(*(&v26 + 1) + 8 * j);
            if ([v11 isEnabled])
            {
              if ([objc_msgSend(v11 "audioChannels")])
              {
                v24 = 0u;
                v25 = 0u;
                v22 = 0u;
                v23 = 0u;
                v12 = [v11 audioChannels];
                v13 = [v12 countByEnumeratingWithState:&v22 objects:v34 count:16];
                if (v13)
                {
                  v14 = v13;
                  v15 = *v23;
                  do
                  {
                    for (k = 0; k != v14; ++k)
                    {
                      if (*v23 != v15)
                      {
                        objc_enumerationMutation(v12);
                      }

                      [*(*(&v22 + 1) + 8 * k) averagePowerLevel];
                      v3 = v3 + v17;
                    }

                    v2 += v14;
                    v14 = [v12 countByEnumeratingWithState:&v22 objects:v34 count:16];
                  }

                  while (v14);
                }
              }
            }
          }

          v8 = [v6 countByEnumeratingWithState:&v26 objects:v35 count:16];
        }

        while (v8);
      }
    }

    v21 = [(NSArray *)obj countByEnumeratingWithState:&v30 objects:v36 count:16];
  }

  while (v21);
  if (v2)
  {
    return __exp10(((v3 / v2) * 0.05)) * 20.0;
  }

  else
  {
    return 0.0;
  }
}

- (id)_audioDevice
{
  v2 = [MEMORY[0x277CE5AC8] devicesWithMediaType:*MEMORY[0x277CE5E48]];
  result = [v2 count];
  if (result)
  {

    return [v2 objectAtIndex:0];
  }

  return result;
}

- (id)_tempFileURL
{
  v2 = MEMORY[0x277CBEBC0];
  v3 = -[NSString stringByAppendingFormat:](NSTemporaryDirectory(), "stringByAppendingFormat:", @"%@.mov", [MEMORY[0x277CCACA8] generateUUID]);

  return [v2 fileURLWithPath:v3];
}

- (void)_removeFile:(id)a3
{
  v4 = [a3 path];
  v5 = [MEMORY[0x277CCAA00] defaultManager];
  if ([v5 fileExistsAtPath:v4])
  {
    v7 = 0;
    if (([v5 removeItemAtPath:v4 error:&v7] & 1) == 0)
    {
      if ([(OFAudioCaptureManager *)self delegate])
      {
        [(OFAudioCaptureManager *)self delegate];
        if (objc_opt_respondsToSelector())
        {
          v6 = [(OFAudioCaptureManager *)self delegate];
          [(OFAudioCaptureManagerDelegate *)v6 captureManager:self didFailWithError:v7];
        }
      }
    }
  }
}

- (void)recorderRecordingDidBegin:(id)a3
{
  if ([(OFAudioCaptureManager *)self delegate])
  {
    [(OFAudioCaptureManager *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      v4 = [(OFAudioCaptureManager *)self delegate];

      [(OFAudioCaptureManagerDelegate *)v4 captureManagerRecordingBegan:self];
    }
  }
}

- (void)recorder:(id)a3 recordingDidFinishToOutputFileURL:(id)a4 error:(id)a5
{
  if (a5)
  {
    [(OFAudioCaptureManager *)self _removeFile:self->_outputFileURL, a4];
    if ([(OFAudioCaptureManager *)self delegate])
    {
      [(OFAudioCaptureManager *)self delegate];
      if (objc_opt_respondsToSelector())
      {
        [(OFAudioCaptureManagerDelegate *)[(OFAudioCaptureManager *)self delegate] captureManager:self didFailWithError:a5];
      }
    }
  }

  if (self->_isCancelled)
  {
    [(OFAudioCaptureManager *)self _removeFile:self->_outputFileURL, a4];
  }

  if ([objc_msgSend(MEMORY[0x277D75418] "currentDevice")])
  {
    [objc_msgSend(MEMORY[0x277D75128] "sharedApplication")];
  }

  if (!a5)
  {
    if ([(OFAudioCaptureManager *)self delegate])
    {
      [(OFAudioCaptureManager *)self delegate];
      if (objc_opt_respondsToSelector())
      {
        v7 = [(OFAudioCaptureManager *)self delegate];

        [(OFAudioCaptureManagerDelegate *)v7 captureManagerRecordingFinished:self];
      }
    }
  }
}

@end