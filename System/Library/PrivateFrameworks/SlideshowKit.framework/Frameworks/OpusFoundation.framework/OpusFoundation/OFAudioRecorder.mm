@interface OFAudioRecorder
- (BOOL)recordsAudio;
- (OFAudioRecorder)initWithSession:(id)a3 outputFileURL:(id)a4;
- (id)_connectionWithMediaType:(id)a3;
- (void)captureOutput:(id)a3 didFinishRecordingToOutputFileAtURL:(id)a4 fromConnections:(id)a5 error:(id)a6;
- (void)captureOutput:(id)a3 didStartRecordingToOutputFileAtURL:(id)a4 fromConnections:(id)a5;
- (void)dealloc;
@end

@implementation OFAudioRecorder

- (OFAudioRecorder)initWithSession:(id)a3 outputFileURL:(id)a4
{
  v9.receiver = self;
  v9.super_class = OFAudioRecorder;
  v6 = [(OFAudioRecorder *)&v9 init];
  if (v6)
  {
    v7 = objc_alloc_init(MEMORY[0x277CE5B08]);
    if ([a3 canAddOutput:v7])
    {
      [a3 addOutput:v7];
    }

    [(OFAudioRecorder *)v6 setSession:a3];
    [(OFAudioRecorder *)v6 setMovieFileOutput:v7];

    [(OFAudioRecorder *)v6 setOutputFileURL:a4];
    v6->_delegate = 0;
  }

  return v6;
}

- (void)dealloc
{
  [(AVCaptureSession *)self->_session removeOutput:self->_movieFileOutput];
  session = self->_session;
  if (session)
  {

    self->_session = 0;
  }

  outputFileURL = self->_outputFileURL;
  if (outputFileURL)
  {

    self->_outputFileURL = 0;
  }

  movieFileOutput = self->_movieFileOutput;
  if (movieFileOutput)
  {

    self->_movieFileOutput = 0;
  }

  objc_storeWeak(&self->_delegate, 0);
  v6.receiver = self;
  v6.super_class = OFAudioRecorder;
  [(OFAudioRecorder *)&v6 dealloc];
}

- (BOOL)recordsAudio
{
  v2 = [(OFAudioRecorder *)self _connectionWithMediaType:*MEMORY[0x277CE5E48]];

  return [v2 isActive];
}

- (void)captureOutput:(id)a3 didStartRecordingToOutputFileAtURL:(id)a4 fromConnections:(id)a5
{
  if ([(OFAudioRecorder *)self delegate:a3])
  {
    [(OFAudioRecorder *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      v6 = [(OFAudioRecorder *)self delegate];

      [(OFAudioRecorderDelegate *)v6 recorderRecordingDidBegin:self];
    }
  }
}

- (void)captureOutput:(id)a3 didFinishRecordingToOutputFileAtURL:(id)a4 fromConnections:(id)a5 error:(id)a6
{
  if ([(OFAudioRecorder *)self delegate:a3])
  {
    [(OFAudioRecorder *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      v9 = [(OFAudioRecorder *)self delegate];

      [(OFAudioRecorderDelegate *)v9 recorder:self recordingDidFinishToOutputFileURL:a4 error:a6];
    }
  }
}

- (id)_connectionWithMediaType:(id)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = [(AVCaptureMovieFileOutput *)self->_movieFileOutput connections];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v20 objects:v25 count:16];
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  v7 = *v21;
  while (2)
  {
    for (i = 0; i != v6; ++i)
    {
      if (*v21 != v7)
      {
        objc_enumerationMutation(v4);
      }

      v9 = *(*(&v20 + 1) + 8 * i);
      v16 = 0u;
      v17 = 0u;
      v18 = 0u;
      v19 = 0u;
      v10 = [v9 inputPorts];
      v11 = [v10 countByEnumeratingWithState:&v16 objects:v24 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = *v17;
LABEL_8:
        v14 = 0;
        while (1)
        {
          if (*v17 != v13)
          {
            objc_enumerationMutation(v10);
          }

          if ([objc_msgSend(*(*(&v16 + 1) + 8 * v14) "mediaType")])
          {
            return v9;
          }

          if (v12 == ++v14)
          {
            v12 = [v10 countByEnumeratingWithState:&v16 objects:v24 count:16];
            if (v12)
            {
              goto LABEL_8;
            }

            break;
          }
        }
      }
    }

    v6 = [v4 countByEnumeratingWithState:&v20 objects:v25 count:16];
    v9 = 0;
    if (v6)
    {
      continue;
    }

    return v9;
  }
}

@end