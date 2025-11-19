@interface BFFFinishSetupFaceIDViewController
- (BFFFinishSetupFaceIDViewController)init;
- (void)faceIDViewController:(id)a3 didCompleteWithResult:(unint64_t)a4 pushedViewControllers:(id)a5;
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
    v4 = [MEMORY[0x277D4DA28] currentDevice];
    [(BFFFaceIDViewController *)v3 setDeviceProvider:v4];

    [(BFFFaceIDViewController *)v3 setEnrollmentConfiguration:1];
  }

  return v3;
}

- (void)faceIDViewController:(id)a3 didCompleteWithResult:(unint64_t)a4 pushedViewControllers:(id)a5
{
  v10 = a3;
  v7 = a5;
  completion = self->_completion;
  if (completion)
  {
    completion[2]();
    v9 = self->_completion;
    self->_completion = 0;
  }
}

@end