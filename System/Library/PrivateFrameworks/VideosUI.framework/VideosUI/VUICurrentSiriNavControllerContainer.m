@interface VUICurrentSiriNavControllerContainer
+ (BOOL)isRunningInSiriPluggin;
+ (id)sharedInstance;
- (VUICurrentSiriNavControllerContainer)init;
- (id)currentSiriNavController;
- (void)setCurrentSiriNavController:(id)a3;
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
    v3 = [MEMORY[0x1E696AE08] weakObjectsPointerArray];
    activeNavigationControllers = v2->_activeNavigationControllers;
    v2->_activeNavigationControllers = v3;
  }

  return v2;
}

+ (BOOL)isRunningInSiriPluggin
{
  v2 = [MEMORY[0x1E696AAE8] mainBundle];
  v3 = [v2 bundleIdentifier];

  LOBYTE(v2) = [v3 isEqualToString:@"com.apple.siri"];
  return v2;
}

- (void)setCurrentSiriNavController:(id)a3
{
  activeNavigationControllers = self->_activeNavigationControllers;
  v5 = a3;
  [(NSPointerArray *)activeNavigationControllers compact];
  [(NSPointerArray *)self->_activeNavigationControllers addPointer:v5];
}

- (id)currentSiriNavController
{
  [(NSPointerArray *)self->_activeNavigationControllers compact];
  v3 = [(NSPointerArray *)self->_activeNavigationControllers allObjects];
  v4 = [v3 lastObject];

  return v4;
}

@end