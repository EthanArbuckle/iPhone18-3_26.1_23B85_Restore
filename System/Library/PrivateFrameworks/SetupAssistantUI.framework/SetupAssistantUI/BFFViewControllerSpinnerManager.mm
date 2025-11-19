@interface BFFViewControllerSpinnerManager
+ (void)configureWithNavigationController:(id)a3;
+ (void)startAnimatingSpinnerFor:(id)a3 identifier:(id)a4;
+ (void)stopAnimatingSpinnerFor:(id)a3;
- (BFFViewControllerSpinnerManager)init;
- (void)navigationController:(id)a3 didShowViewController:(id)a4 operation:(int64_t)a5 animated:(BOOL)a6;
- (void)setNavigationUserInteractionWithEnabled:(BOOL)a3;
- (void)startAnimatingSpinnerFor:(id)a3 identifier:(id)a4;
- (void)stopAnimatingSpinnerFor:(id)a3;
@end

@implementation BFFViewControllerSpinnerManager

+ (void)configureWithNavigationController:(id)a3
{
  v3 = qword_280034190;
  v4 = a3;
  if (v3 != -1)
  {
    swift_once();
  }

  v5 = qword_2800341A8;
  v6 = *(qword_2800341A8 + OBJC_IVAR___BFFViewControllerSpinnerManager_navigationController);
  *(qword_2800341A8 + OBJC_IVAR___BFFViewControllerSpinnerManager_navigationController) = v4;

  [v4 addDelegateObserver_];
}

+ (void)startAnimatingSpinnerFor:(id)a3 identifier:(id)a4
{
  v5 = sub_265AE7DE0();
  v7 = v6;
  swift_getObjCClassMetadata();
  v8 = a3;
  sub_265AE40C8(a3, v5, v7);
}

+ (void)stopAnimatingSpinnerFor:(id)a3
{
  v3 = sub_265AE7DE0();
  v5 = v4;
  swift_getObjCClassMetadata();
  sub_265AE4C90(v3, v5);
}

- (void)startAnimatingSpinnerFor:(id)a3 identifier:(id)a4
{
  v6 = sub_265AE7DE0();
  v8 = v7;
  v9 = a3;
  v10 = self;
  sub_265AE5270(v9, v6, v8);
}

- (void)stopAnimatingSpinnerFor:(id)a3
{
  v4 = sub_265AE7DE0();
  v6 = v5;
  v7 = self;
  sub_265AE5D68(v4, v6);
}

- (void)setNavigationUserInteractionWithEnabled:(BOOL)a3
{
  v4 = self;
  sub_265AE681C(a3);
}

- (void)navigationController:(id)a3 didShowViewController:(id)a4 operation:(int64_t)a5 animated:(BOOL)a6
{
  v9 = a3;
  v10 = a4;
  v11 = self;
  sub_265AE71C8(v9, a5);
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