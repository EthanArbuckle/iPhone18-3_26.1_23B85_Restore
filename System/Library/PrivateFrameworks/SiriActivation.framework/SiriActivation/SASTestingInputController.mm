@interface SASTestingInputController
- (SASTestingInputController)init;
- (id)dequeuePreloadedTestingContext;
- (void)_registerForTestingNotifications;
- (void)_testingAudioInputPathsDidChange:(id)change;
- (void)_testingStringsDidChange:(id)change;
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
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter addObserver:self selector:sel__testingStringsDidChange_ name:@"SBTestingConfigureNextAssistantRecognitionStrings" object:0];
  [defaultCenter addObserver:self selector:sel__testingAudioInputPathsDidChange_ name:@"SBTestingConfigureNextVoiceRecognitionAudioInputPathsNotification" object:0];
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = SASTestingInputController;
  [(SASTestingInputController *)&v4 dealloc];
}

- (void)_testingStringsDidChange:(id)change
{
  preloadedTestingInput = self->_preloadedTestingInput;
  self->_preloadedTestingInput = 0;
  changeCopy = change;

  object = [changeCopy object];

  if ([object count])
  {
    v6 = [[SiriTestingContext alloc] initWithRecognitionStrings:object];
    v7 = self->_preloadedTestingInput;
    self->_preloadedTestingInput = v6;
  }
}

- (void)_testingAudioInputPathsDidChange:(id)change
{
  object = [change object];
  if ([object count])
  {
    v4 = [[SiriTestingContext alloc] initWithAudioInput:object];
    preloadedTestingInput = self->_preloadedTestingInput;
    self->_preloadedTestingInput = v4;
  }
}

@end