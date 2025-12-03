@interface _SKUIApplicationShutdownHelper
- (_SKUIApplicationShutdownHelper)initWithApplicationController:(id)controller;
- (void)dealloc;
- (void)start;
- (void)stop;
@end

@implementation _SKUIApplicationShutdownHelper

- (_SKUIApplicationShutdownHelper)initWithApplicationController:(id)controller
{
  controllerCopy = controller;
  v9.receiver = self;
  v9.super_class = _SKUIApplicationShutdownHelper;
  v6 = [(_SKUIApplicationShutdownHelper *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_applicationController, controller);
  }

  return v7;
}

- (void)dealloc
{
  if (self->_taskID != *MEMORY[0x277D767B0])
  {
    mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
    [mEMORY[0x277D75128] endBackgroundTask:self->_taskID];
  }

  v4.receiver = self;
  v4.super_class = _SKUIApplicationShutdownHelper;
  [(_SKUIApplicationShutdownHelper *)&v4 dealloc];
}

- (void)start
{
  mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __39___SKUIApplicationShutdownHelper_start__block_invoke;
  v4[3] = &unk_2781F80F0;
  v4[4] = self;
  self->_taskID = [mEMORY[0x277D75128] beginBackgroundTaskWithExpirationHandler:v4];
}

- (void)stop
{
  applicationController = self->_applicationController;
  self->_applicationController = 0;

  v4 = *MEMORY[0x277D767B0];
  if (self->_taskID != *MEMORY[0x277D767B0])
  {
    mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
    [mEMORY[0x277D75128] endBackgroundTask:self->_taskID];

    self->_taskID = v4;
  }
}

@end