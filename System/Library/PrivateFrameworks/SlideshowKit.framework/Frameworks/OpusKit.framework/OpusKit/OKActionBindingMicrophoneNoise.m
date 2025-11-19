@interface OKActionBindingMicrophoneNoise
+ (id)supportedSettings;
- (BOOL)respondsToAction:(id)a3 isTouchCountAgnostic:(BOOL)a4;
- (OKActionBindingMicrophoneNoise)init;
- (OKActionBindingMicrophoneNoise)initWithSettings:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)_updateAudioLevels:(id)a3;
- (void)dealloc;
- (void)handleLongPress:(id)a3;
- (void)loadForResponder:(id)a3 scope:(unint64_t)a4;
- (void)unload;
@end

@implementation OKActionBindingMicrophoneNoise

- (OKActionBindingMicrophoneNoise)init
{
  v3.receiver = self;
  v3.super_class = OKActionBindingMicrophoneNoise;
  result = [(OKActionBinding *)&v3 init];
  if (result)
  {
    result->_numberOfTouchesRequired = 0;
    result->_interval = 0.1;
    result->_actionContext = 0;
    result->_session = 0;
    result->_timer = 0;
    result->_lastMeanAudioLevel = 0.0;
    result->_lastLocation = *MEMORY[0x277CBF348];
    result->_shouldForwardMotion = 0;
    result->_longPressGestureRecognizer = 0;
  }

  return result;
}

- (OKActionBindingMicrophoneNoise)initWithSettings:(id)a3
{
  v9.receiver = self;
  v9.super_class = OKActionBindingMicrophoneNoise;
  v4 = [(OKActionBinding *)&v9 initWithSettings:?];
  if (v4)
  {
    v5 = [a3 objectForKey:@"numberOfTouchesRequired"];
    if (v5)
    {
      v4->_numberOfTouchesRequired = [v5 unsignedIntegerValue];
    }

    v6 = [a3 objectForKey:@"interval"];
    if (v6)
    {
      [v6 doubleValue];
      v4->_interval = v7;
    }
  }

  return v4;
}

- (void)dealloc
{
  timer = self->_timer;
  if (timer)
  {
    if ([(NSTimer *)timer isValid])
    {
      [(NSTimer *)self->_timer invalidate];
    }

    self->_timer = 0;
  }

  [(AVCaptureSession *)self->_session stopRunning];
  session = self->_session;
  if (session)
  {

    self->_session = 0;
  }

  longPressGestureRecognizer = self->_longPressGestureRecognizer;
  if (longPressGestureRecognizer)
  {
    [-[UILongPressGestureRecognizer view](longPressGestureRecognizer "view")];

    self->_longPressGestureRecognizer = 0;
  }

  actionContext = self->_actionContext;
  if (actionContext)
  {

    self->_actionContext = 0;
  }

  v7.receiver = self;
  v7.super_class = OKActionBindingMicrophoneNoise;
  [(OKActionBinding *)&v7 dealloc];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v7.receiver = self;
  v7.super_class = OKActionBindingMicrophoneNoise;
  v4 = [(OKActionBindingProxy *)&v7 copyWithZone:a3];
  v5 = v4;
  if (v4)
  {
    [v4 setNumberOfTouchesRequired:self->_numberOfTouchesRequired];
    [v5 setInterval:self->_interval];
  }

  return v5;
}

+ (id)supportedSettings
{
  v11[2] = *MEMORY[0x277D85DE8];
  v5.receiver = a1;
  v5.super_class = &OBJC_METACLASS___OKActionBindingMicrophoneNoise;
  v2 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:{objc_msgSendSuper2(&v5, sel_supportedSettings)}];
  v10[0] = @"numberOfTouchesRequired";
  v8[0] = @"type";
  v8[1] = @"default";
  v9[0] = &unk_287AF0B60;
  v9[1] = &unk_287AF0B78;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:v8 count:2];
  v10[1] = @"interval";
  v11[0] = v3;
  v6[0] = @"type";
  v6[1] = @"default";
  v7[0] = &unk_287AF0B90;
  v7[1] = &unk_287AF2318;
  v11[1] = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:v6 count:2];
  [v2 addEntriesFromDictionary:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", v11, v10, 2)}];
  return v2;
}

- (BOOL)respondsToAction:(id)a3 isTouchCountAgnostic:(BOOL)a4
{
  v7 = [(OKActionBindingProxy *)self scope];
  result = 0;
  if (([a3 scope] & v7) != 0)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && (a4 || [a3 touchCount] == self->_numberOfTouchesRequired))
    {
      return 1;
    }
  }

  return result;
}

- (void)_updateAudioLevels:(id)a3
{
  v3 = self;
  v36 = *MEMORY[0x277D85DE8];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v4 = [(AVCaptureSession *)self->_session outputs];
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v29 objects:v35 count:16];
  if (v5)
  {
    v6 = v5;
    v23 = v3;
    v7 = 0;
    v8 = *v30;
    v9 = 0.0;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v30 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v11 = *(*(&v29 + 1) + 8 * i);
        v25 = 0u;
        v26 = 0u;
        v27 = 0u;
        v28 = 0u;
        v12 = [v11 connections];
        v13 = [v12 countByEnumeratingWithState:&v25 objects:v34 count:16];
        if (v13)
        {
          v14 = v13;
          v15 = *v26;
          do
          {
            for (j = 0; j != v14; ++j)
            {
              if (*v26 != v15)
              {
                objc_enumerationMutation(v12);
              }

              v17 = *(*(&v25 + 1) + 8 * j);
              if ([v17 isEnabled])
              {
                if ([objc_msgSend(v17 "audioChannels")])
                {
                  memset(v24, 0, sizeof(v24));
                  if ([objc_msgSend(v17 "audioChannels")])
                  {
                    [**(&v24[0] + 1) averagePowerLevel];
                    v9 = v9 + v18;
                    ++v7;
                  }
                }
              }
            }

            v14 = [v12 countByEnumeratingWithState:&v25 objects:v34 count:16];
          }

          while (v14);
        }
      }

      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v29 objects:v35 count:16];
    }

    while (v6);
    if (v7)
    {
      v19 = __exp10f((v9 / v7) * 0.05) * 20.0;
    }

    else
    {
      v19 = 0.0;
    }

    v3 = v23;
  }

  else
  {
    v19 = 0.0;
  }

  if (v3->_shouldForwardMotion)
  {
    if (v3->_actionContext)
    {
      v3->_actionContext = objc_alloc_init(MEMORY[0x277CBEB38]);
    }

    v20 = [(OKActionBindingMicrophoneNoise *)v3 numberOfTouchesRequired];
    *&v21 = v19;
    v22 = [OKActionMicrophoneNoise microphoneNoiseActionWithState:2 location:v20 touchCount:v3->_actionContext meanAudioLevel:v3->_lastLocation.x context:v3->_lastLocation.y, v21];
    if (![(OKActionBindingMicrophoneNoise *)v3 numberOfTouchesRequired])
    {
      [v22 setIsInstantaneous:1];
    }

    [(OKActionBindingProxy *)v3 performAction:v22];
  }

  v3->_lastMeanAudioLevel = v19;
}

- (void)loadForResponder:(id)a3 scope:(unint64_t)a4
{
  v4 = a4;
  v16.receiver = self;
  v16.super_class = OKActionBindingMicrophoneNoise;
  [OKActionBindingProxy loadForResponder:sel_loadForResponder_scope_ scope:?];
  v7 = +[OKRuntime currentPlatform];
  if ((v4 & 1) != 0 && v7 != 8)
  {
    v8 = [MEMORY[0x277CE5AC8] devicesWithMediaType:*MEMORY[0x277CE5E48]];
    if ([v8 count])
    {
      v9 = objc_alloc_init(MEMORY[0x277CE5B38]);
      self->_session = v9;
      [(AVCaptureSession *)v9 beginConfiguration];
      v10 = [MEMORY[0x277CE5AD8] deviceInputWithDevice:objc_msgSend(v8 error:{"firstObject"), 0}];
      if ([(AVCaptureSession *)self->_session canAddInput:v10])
      {
        [(AVCaptureSession *)self->_session addInput:v10];
      }

      [(AVCaptureSession *)self->_session commitConfiguration];
      v11 = objc_alloc_init(MEMORY[0x277CE5AA0]);
      [(AVCaptureSession *)self->_session addOutput:v11];

      global_queue = dispatch_get_global_queue(0, 0);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __57__OKActionBindingMicrophoneNoise_loadForResponder_scope___block_invoke;
      block[3] = &unk_279C8E818;
      block[4] = self;
      dispatch_async(global_queue, block);
      self->_timer = [MEMORY[0x277CBEBB8] scheduledTimerWithTimeInterval:self target:sel__updateAudioLevels_ selector:0 userInfo:1 repeats:self->_interval];
      if ([(OKActionBindingMicrophoneNoise *)self numberOfTouchesRequired])
      {
        self->_shouldForwardMotion = 0;
        v13 = [objc_alloc(MEMORY[0x277D75708]) initWithTarget:self action:sel_handleLongPress_];
        self->_longPressGestureRecognizer = v13;
        [(UILongPressGestureRecognizer *)v13 setDelegate:self];
        [(UILongPressGestureRecognizer *)self->_longPressGestureRecognizer setNumberOfTouchesRequired:[(OKActionBindingMicrophoneNoise *)self numberOfTouchesRequired]];
        [(UILongPressGestureRecognizer *)self->_longPressGestureRecognizer setNumberOfTapsRequired:0];
        [(UILongPressGestureRecognizer *)self->_longPressGestureRecognizer setMinimumPressDuration:0.25];
        [(UILongPressGestureRecognizer *)self->_longPressGestureRecognizer setAllowableMovement:0.0];
        v14 = [a3 actionView];
        if (v14)
        {
          [v14 addGestureRecognizer:self->_longPressGestureRecognizer];
        }
      }

      else
      {
        self->_shouldForwardMotion = 1;
      }
    }
  }
}

- (void)unload
{
  v7.receiver = self;
  v7.super_class = OKActionBindingMicrophoneNoise;
  [(OKActionBindingProxy *)&v7 unload];
  actionContext = self->_actionContext;
  if (actionContext)
  {

    self->_actionContext = 0;
  }

  if ([(OKActionBindingProxy *)self scope]== 1)
  {
    if ([(OKActionBindingMicrophoneNoise *)self numberOfTouchesRequired])
    {
      longPressGestureRecognizer = self->_longPressGestureRecognizer;
      if (longPressGestureRecognizer)
      {
        [-[UILongPressGestureRecognizer view](longPressGestureRecognizer "view")];

        self->_longPressGestureRecognizer = 0;
      }
    }

    timer = self->_timer;
    if (timer)
    {
      if ([(NSTimer *)timer isValid])
      {
        [(NSTimer *)self->_timer invalidate];
      }

      self->_timer = 0;
    }

    [(AVCaptureSession *)self->_session stopRunning];
    session = self->_session;
    if (session)
    {

      self->_session = 0;
    }

    self->_shouldForwardMotion = 0;
    self->_lastLocation = *MEMORY[0x277CBF348];
  }
}

- (void)handleLongPress:(id)a3
{
  if ([a3 state] == 1)
  {
    v5 = 1;
LABEL_9:
    v6 = 0;
    self->_shouldForwardMotion = v5;
    goto LABEL_10;
  }

  if ([a3 state] == 2)
  {
    v6 = 1;
    goto LABEL_10;
  }

  if ([a3 state] == 3 || objc_msgSend(a3, "state") == 5 || (v6 = 0, objc_msgSend(a3, "state") == 4))
  {
    v5 = 0;
    goto LABEL_9;
  }

LABEL_10:
  [(OKActionBindingProxy *)self locationForActionFromGesture:a3];
  self->_lastLocation.x = v7;
  self->_lastLocation.y = v8;
  if ((v6 & 1) == 0)
  {
    if (self->_actionContext)
    {
      self->_actionContext = objc_alloc_init(MEMORY[0x277CBEB38]);
    }

    v9 = [OKActionMicrophoneNoise microphoneNoiseActionWithState:2 location:[(OKActionBindingMicrophoneNoise *)self numberOfTouchesRequired] touchCount:self->_actionContext meanAudioLevel:self->_lastLocation.x context:self->_lastLocation.y, 0.0];

    [(OKActionBindingProxy *)self performAction:v9];
  }
}

@end