@interface UINavigationController(PSControllerAdditions)
- (id)popRecursivelyToRootController;
@end

@implementation UINavigationController(PSControllerAdditions)

- (id)popRecursivelyToRootController
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __79__UINavigationController_PSControllerAdditions__popRecursivelyToRootController__block_invoke;
  v4[3] = &unk_1E71DBE20;
  v4[4] = self;
  [MEMORY[0x1E69DD258] _performWithoutDeferringTransitions:v4];
  v3.receiver = self;
  v3.super_class = UINavigationController_0;
  return objc_msgSendSuper2(&v3, sel_popRecursivelyToRootController);
}

@end