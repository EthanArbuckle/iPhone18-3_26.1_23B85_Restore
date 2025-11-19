@interface TVAppInstallerViewController
- (id)presentingViewControllerForLockupView:(id)a3;
- (void)lockupView:(id)a3 preprocessOffer:(id)a4 inState:(id)a5 completionBlock:(id)a6;
@end

@implementation TVAppInstallerViewController

- (id)presentingViewControllerForLockupView:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = sub_1E3B6831C();

  return v6;
}

- (void)lockupView:(id)a3 preprocessOffer:(id)a4 inState:(id)a5 completionBlock:(id)a6
{
  v10 = _Block_copy(a6);
  _Block_copy(v10);
  v11 = a3;
  swift_unknownObjectRetain();
  v12 = a5;
  v13 = self;
  sub_1E3B685EC(v11, a4, v12, v13, v10);
  _Block_release(v10);

  swift_unknownObjectRelease();
}

@end