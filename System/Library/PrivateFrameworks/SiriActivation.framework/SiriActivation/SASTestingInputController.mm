@interface SASTestingInputController
- (SASTestingInputController)init;
- (id)dequeuePreloadedTestingContext;
- (void)_registerForTestingNotifications;
- (void)_testingAudioInputPathsDidChange:(id)a3;
- (void)_testingStringsDidChange:(id)a3;
- (void)dealloc;
@end

@implementation SASTestingInputController

- (id)dequeuePreloadedTestingContext
{
  preloadedTestingInput = self->_preloadedTestingInput;
  v4 = preloadedTestingInput;
  v5 = self->_preloadedTestingInput;
  self->_preloadedTestingInput = 0;

  return preloadedTestingInput;
}

- (SASTestingInputController)init
{
  v6.receiver = self;
  v6.super_class = SASTestingInputController;
  v2 = [(SASTestingInputController *)&v6 init];
  v3 = v2;
  if (v2)
  {
    [(SASTestingInputController *)v2 _registerForTestingNotifications];
    preloadedTestingInput = v3->_preloadedTestingInput;
    v3->_preloadedTestingInput = 0;
  }

  return v3;
}

- (void)_registerForTestingNotifications
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 addObserver:self selector:sel__testingStringsDidChange_ name:@"SBTestingConfigureNextAssistantRecognitionStrings" object:0];
  [v3 addObserver:self selector:sel__testingAudioInputPathsDidChange_ name:@"SBTestingConfigureNextVoiceRecognitionAudioInputPathsNotification" object:0];
}

- (void)dealloc
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = SASTestingInputController;
  [(SASTestingInputController *)&v4 dealloc];
}

- (void)_testingStringsDidChange:(id)a3
{
  preloadedTestingInput = self->_preloadedTestingInput;
  self->_preloadedTestingInput = 0;
  v5 = a3;

  v8 = [v5 object];

  if ([v8 count])
  {
    v6 = [[SiriTestingContext alloc] initWithRecognitionStrings:v8];
    v7 = self->_preloadedTestingInput;
    self->_preloadedTestingInput = v6;
  }
}

- (void)_testingAudioInputPathsDidChange:(id)a3
{
  v6 = [a3 object];
  if ([v6 count])
  {
    v4 = [[SiriTestingContext alloc] initWithAudioInput:v6];
    preloadedTestingInput = self->_preloadedTestingInput;
    self->_preloadedTestingInput = v4;
  }
}

@end