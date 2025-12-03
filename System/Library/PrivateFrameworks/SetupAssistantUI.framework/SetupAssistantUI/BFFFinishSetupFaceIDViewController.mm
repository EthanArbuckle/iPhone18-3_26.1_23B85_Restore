@interface BFFFinishSetupFaceIDViewController
- (BFFFinishSetupFaceIDViewController)init;
- (void)faceIDViewController:(id)controller didCompleteWithResult:(unint64_t)result pushedViewControllers:(id)controllers;
@end

@implementation BFFFinishSetupFaceIDViewController

- (BFFFinishSetupFaceIDViewController)init
{
  v6.receiver = self;
  v6.super_class = BFFFinishSetupFaceIDViewController;
  v2 = [(BFFFaceIDViewController *)&v6 init];
  v3 = v2;
  if (v2)
  {
    [(BFFFaceIDViewController *)v2 setFaceIDViewControllerDelegate:v2];
    [(BFFFaceIDViewController *)v3 setCompletesOnCancel:1];
    currentDevice = [MEMORY[0x277D4DA28] currentDevice];
    [(BFFFaceIDViewController *)v3 setDeviceProvider:currentDevice];

    [(BFFFaceIDViewController *)v3 setEnrollmentConfiguration:1];
  }

  return v3;
}

- (void)faceIDViewController:(id)controller didCompleteWithResult:(unint64_t)result pushedViewControllers:(id)controllers
{
  controllerCopy = controller;
  controllersCopy = controllers;
  completion = self->_completion;
  if (completion)
  {
    completion[2]();
    v9 = self->_completion;
    self->_completion = 0;
  }
}

@end