@interface SUICDefaultVoicePreviewer
- (SUICVoicePreviewingDelegate)delegate;
- (void)audioPowerUpdaterDidFire:(id)a3;
- (void)audioPowerUpdaterDidUpdate:(id)a3;
- (void)dealloc;
- (void)previewVoice:(id)a3 completion:(id)a4;
- (void)stopVoicePreview;
@end

@implementation SUICDefaultVoicePreviewer

- (void)previewVoice:(id)a3 completion:(id)a4
{
  v38 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  objc_initWeak(&location, self);
  v8 = *MEMORY[0x1E698D0A0];
  if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v35 = "[SUICDefaultVoicePreviewer previewVoice:completion:]";
    v36 = 2112;
    v37 = v6;
    _os_log_impl(&dword_1C432B000, v8, OS_LOG_TYPE_DEFAULT, "%s Requesting to play voice preview for : %@", buf, 0x16u);
  }

  [(NSTimer *)self->_outputAudioPowerUpdater invalidate];
  if (!self->previewSessions)
  {
    v9 = objc_alloc_init(MEMORY[0x1E69D3300]);
    session = self->_session;
    self->_session = v9;

    v11 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    previewSessions = self->previewSessions;
    self->previewSessions = v11;
  }

  v13 = objc_alloc_init(MEMORY[0x1E696AFB0]);
  v14 = [v13 UUIDString];

  [(NSMutableSet *)self->previewSessions addObject:v14];
  v15 = objc_alloc(MEMORY[0x1E69D3318]);
  v16 = [v6 languageCode];
  v17 = [v6 name];
  v18 = [v15 initWithLanguage:v16 name:v17];

  v19 = [objc_alloc(MEMORY[0x1E69D32F8]) initWithVoice:v18 previewType:1];
  objc_storeStrong(&self->_lastRequest, v19);
  v20 = self->_session;
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __53__SUICDefaultVoicePreviewer_previewVoice_completion___block_invoke;
  v29[3] = &unk_1E81E7F98;
  objc_copyWeak(&v32, &location);
  v21 = v14;
  v30 = v21;
  v22 = v7;
  v31 = v22;
  [(SiriTTSServiceSession *)v20 speakWithPreviewRequest:v19 didFinish:v29];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  if (WeakRetained)
  {
    v24 = MEMORY[0x1E695DFF0];
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __53__SUICDefaultVoicePreviewer_previewVoice_completion___block_invoke_3;
    v27[3] = &unk_1E81E7FC0;
    objc_copyWeak(&v28, &location);
    v25 = [v24 scheduledTimerWithTimeInterval:1 repeats:v27 block:0.0166666667];
    outputAudioPowerUpdater = self->_outputAudioPowerUpdater;
    self->_outputAudioPowerUpdater = v25;

    objc_destroyWeak(&v28);
  }

  objc_destroyWeak(&v32);
  objc_destroyWeak(&location);
}

void __53__SUICDefaultVoicePreviewer_previewVoice_completion___block_invoke(id *a1, void *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *MEMORY[0x1E698D0A0];
  if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v15 = "[SUICDefaultVoicePreviewer previewVoice:completion:]_block_invoke";
    v16 = 1024;
    v17 = v3 == 0;
    _os_log_impl(&dword_1C432B000, v4, OS_LOG_TYPE_DEFAULT, "%s Successfully: %d", buf, 0x12u);
  }

  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __53__SUICDefaultVoicePreviewer_previewVoice_completion___block_invoke_5;
  v9[3] = &unk_1E81E7F70;
  objc_copyWeak(&v13, a1 + 6);
  v10 = a1[4];
  v12 = a1[5];
  v5 = v3;
  v11 = v5;
  v6 = MEMORY[0x1C6937B00](v9);
  if ([MEMORY[0x1E696AF00] isMainThread])
  {
    v6[2](v6);
  }

  else
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __53__SUICDefaultVoicePreviewer_previewVoice_completion___block_invoke_2;
    block[3] = &unk_1E81E7B10;
    v8 = v6;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }

  objc_destroyWeak(&v13);
}

uint64_t __53__SUICDefaultVoicePreviewer_previewVoice_completion___block_invoke_5(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    [WeakRetained[3] removeObject:*(a1 + 32)];
    v3 = *(a1 + 48);
    if (v3)
    {
      (*(v3 + 16))(v3, *(a1 + 40) == 0, 0);
    }
  }

  return MEMORY[0x1EEE66BB8]();
}

void __53__SUICDefaultVoicePreviewer_previewVoice_completion___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained audioPowerUpdaterDidFire:v3];
  }

  else
  {
    [v3 invalidate];
  }
}

- (void)audioPowerUpdaterDidFire:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  session = self->_session;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __54__SUICDefaultVoicePreviewer_audioPowerUpdaterDidFire___block_invoke;
  v7[3] = &unk_1E81E8010;
  objc_copyWeak(&v9, &location);
  v6 = v4;
  v8 = v6;
  [(SiriTTSServiceSession *)session getAudioPower:v7];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __54__SUICDefaultVoicePreviewer_audioPowerUpdaterDidFire___block_invoke(uint64_t a1, float a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __54__SUICDefaultVoicePreviewer_audioPowerUpdaterDidFire___block_invoke_2;
    v9[3] = &unk_1E81E7FE8;
    v9[4] = WeakRetained;
    v10 = a2;
    v6 = MEMORY[0x1C6937B00](v9);
    if ([MEMORY[0x1E696AF00] isMainThread])
    {
      v6[2](v6);
    }

    else
    {
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __54__SUICDefaultVoicePreviewer_audioPowerUpdaterDidFire___block_invoke_3;
      block[3] = &unk_1E81E7B10;
      v8 = v6;
      dispatch_async(MEMORY[0x1E69E96A0], block);
    }

    [v5 audioPowerUpdaterDidUpdate:*(a1 + 32)];
  }

  else
  {
    [*(a1 + 32) invalidate];
  }
}

void __54__SUICDefaultVoicePreviewer_audioPowerUpdaterDidFire___block_invoke_2(uint64_t a1)
{
  v3 = [*(a1 + 32) delegate];
  LODWORD(v2) = *(a1 + 40);
  [v3 voicePreviewerAudioOutputDidChangePowerLevel:v2];
}

- (void)audioPowerUpdaterDidUpdate:(id)a3
{
  v4 = a3;
  if (![(NSMutableSet *)self->previewSessions count])
  {
    [v4 invalidate];
  }
}

- (void)stopVoicePreview
{
  if (self->_lastRequest)
  {
    [(SiriTTSServiceSession *)self->_session cancelWithRequest:?];
  }
}

- (void)dealloc
{
  [(SUICDefaultVoicePreviewer *)self stopVoicePreview];
  v3.receiver = self;
  v3.super_class = SUICDefaultVoicePreviewer;
  [(SUICDefaultVoicePreviewer *)&v3 dealloc];
}

- (SUICVoicePreviewingDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end