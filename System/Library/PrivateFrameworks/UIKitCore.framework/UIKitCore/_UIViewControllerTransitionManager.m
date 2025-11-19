@interface _UIViewControllerTransitionManager
- (_UIViewControllerTransitionManager)init;
- (void)applyViewControllers:(id)a3;
- (void)configureWithInitialViewControllers:(id)a3;
- (void)performAnimatedTransitionWithRequest:(id)a3;
@end

@implementation _UIViewControllerTransitionManager

- (_UIViewControllerTransitionManager)init
{
  _s17TransitionManagerCMa();
  v3 = swift_allocObject();
  *(v3 + 2) = MEMORY[0x1E69E7CC0];
  *(&self->super.isa + OBJC_IVAR____UIViewControllerTransitionManager_transitionManager) = v3;
  v5.receiver = self;
  v5.super_class = _UIViewControllerTransitionManager;
  return [(_UIViewControllerTransitionManager *)&v5 init];
}

- (void)configureWithInitialViewControllers:(id)a3
{
  sub_188A34624(0, &qword_1ED48D5A0);
  v4 = sub_18A4A7548();
  v5 = self;
  sub_188FED5C4(v4);
}

- (void)applyViewControllers:(id)a3
{
  sub_188A34624(0, &qword_1ED48D5A0);
  v4 = sub_18A4A7548();
  v5 = self;
  sub_188FED7A8(v4);
}

- (void)performAnimatedTransitionWithRequest:(id)a3
{
  v5 = a3;
  v4 = self;
  sub_188FEFB18(v5);
}

@end