@interface BFFViewControllerSpinnerManager
+ (void)configureWithNavigationController:(id)controller;
+ (void)startAnimatingSpinnerFor:(id)for identifier:(id)identifier;
+ (void)stopAnimatingSpinnerFor:(id)for;
- (BFFViewControllerSpinnerManager)init;
- (void)navigationController:(id)controller didShowViewController:(id)viewController operation:(int64_t)operation animated:(BOOL)animated;
- (void)setNavigationUserInteractionWithEnabled:(BOOL)enabled;
- (void)startAnimatingSpinnerFor:(id)for identifier:(id)identifier;
- (void)stopAnimatingSpinnerFor:(id)for;
@end

@implementation BFFViewControllerSpinnerManager

+ (void)configureWithNavigationController:(id)controller
{
  v3 = qword_280034190;
  controllerCopy = controller;
  if (v3 != -1)
  {
    swift_once();
  }

  v5 = qword_2800341A8;
  v6 = *(qword_2800341A8 + OBJC_IVAR___BFFViewControllerSpinnerManager_navigationController);
  *(qword_2800341A8 + OBJC_IVAR___BFFViewControllerSpinnerManager_navigationController) = controllerCopy;

  [controllerCopy addDelegateObserver_];
}

+ (void)startAnimatingSpinnerFor:(id)for identifier:(id)identifier
{
  v5 = sub_265AE7DE0();
  v7 = v6;
  swift_getObjCClassMetadata();
  forCopy = for;
  sub_265AE40C8(for, v5, v7);
}

+ (void)stopAnimatingSpinnerFor:(id)for
{
  v3 = sub_265AE7DE0();
  v5 = v4;
  swift_getObjCClassMetadata();
  sub_265AE4C90(v3, v5);
}

- (void)startAnimatingSpinnerFor:(id)for identifier:(id)identifier
{
  v6 = sub_265AE7DE0();
  v8 = v7;
  forCopy = for;
  selfCopy = self;
  sub_265AE5270(forCopy, v6, v8);
}

- (void)stopAnimatingSpinnerFor:(id)for
{
  v4 = sub_265AE7DE0();
  v6 = v5;
  selfCopy = self;
  sub_265AE5D68(v4, v6);
}

- (void)setNavigationUserInteractionWithEnabled:(BOOL)enabled
{
  selfCopy = self;
  sub_265AE681C(enabled);
}

- (void)navigationController:(id)controller didShowViewController:(id)viewController operation:(int64_t)operation animated:(BOOL)animated
{
  controllerCopy = controller;
  viewControllerCopy = viewController;
  selfCopy = self;
  sub_265AE71C8(controllerCopy, operation);
}

- (BFFViewControllerSpinnerManager)init
{
  v3 = OBJC_IVAR___BFFViewControllerSpinnerManager_weakObjectHashTable;
  *(&self->super.isa + v3) = [objc_opt_self() strongToWeakObjectsMapTable];
  *(&self->super.isa + OBJC_IVAR___BFFViewControllerSpinnerManager_navigationController) = 0;
  v4 = OBJC_IVAR___BFFViewControllerSpinnerManager_exceptionClassList;
  v5 = sub_265AE74A8(&unk_287761E30);
  swift_arrayDestroy();
  *(&self->super.isa + v4) = v5;
  v7.receiver = self;
  v7.super_class = BFFViewControllerSpinnerManager;
  return [(BFFViewControllerSpinnerManager *)&v7 init];
}

@end