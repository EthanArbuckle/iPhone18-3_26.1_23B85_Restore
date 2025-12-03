@interface VUICurrentSiriNavControllerContainer
+ (BOOL)isRunningInSiriPluggin;
+ (id)sharedInstance;
- (VUICurrentSiriNavControllerContainer)init;
- (id)currentSiriNavController;
- (void)setCurrentSiriNavController:(id)controller;
@end

@implementation VUICurrentSiriNavControllerContainer

+ (id)sharedInstance
{
  if (sharedInstance___onceToken_1 != -1)
  {
    +[VUICurrentSiriNavControllerContainer sharedInstance];
  }

  v3 = sharedInstance___sharedInstance_0;

  return v3;
}

void __54__VUICurrentSiriNavControllerContainer_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(VUICurrentSiriNavControllerContainer);
  v1 = sharedInstance___sharedInstance_0;
  sharedInstance___sharedInstance_0 = v0;
}

- (VUICurrentSiriNavControllerContainer)init
{
  v6.receiver = self;
  v6.super_class = VUICurrentSiriNavControllerContainer;
  v2 = [(VUICurrentSiriNavControllerContainer *)&v6 init];
  if (v2)
  {
    weakObjectsPointerArray = [MEMORY[0x1E696AE08] weakObjectsPointerArray];
    activeNavigationControllers = v2->_activeNavigationControllers;
    v2->_activeNavigationControllers = weakObjectsPointerArray;
  }

  return v2;
}

+ (BOOL)isRunningInSiriPluggin
{
  mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
  bundleIdentifier = [mainBundle bundleIdentifier];

  LOBYTE(mainBundle) = [bundleIdentifier isEqualToString:@"com.apple.siri"];
  return mainBundle;
}

- (void)setCurrentSiriNavController:(id)controller
{
  activeNavigationControllers = self->_activeNavigationControllers;
  controllerCopy = controller;
  [(NSPointerArray *)activeNavigationControllers compact];
  [(NSPointerArray *)self->_activeNavigationControllers addPointer:controllerCopy];
}

- (id)currentSiriNavController
{
  [(NSPointerArray *)self->_activeNavigationControllers compact];
  allObjects = [(NSPointerArray *)self->_activeNavigationControllers allObjects];
  lastObject = [allObjects lastObject];

  return lastObject;
}

@end