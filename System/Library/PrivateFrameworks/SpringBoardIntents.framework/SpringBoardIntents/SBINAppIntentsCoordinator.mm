@interface SBINAppIntentsCoordinator
+ (SBINAppIntentsCoordinator)sharedSystemCoordinator;
- (SBINAppIntentsCoordinator)init;
- (SBINAppIntentsCoordinatorDelegate)delegate;
- (void)performAppIntent:(id)a3 withCompletion:(id)a4;
@end

@implementation SBINAppIntentsCoordinator

+ (SBINAppIntentsCoordinator)sharedSystemCoordinator
{
  if (sharedSystemCoordinator_onceToken != -1)
  {
    +[SBINAppIntentsCoordinator sharedSystemCoordinator];
  }

  v3 = sharedSystemCoordinator_instance;

  return v3;
}

uint64_t __52__SBINAppIntentsCoordinator_sharedSystemCoordinator__block_invoke()
{
  sharedSystemCoordinator_instance = objc_alloc_init(SBINAppIntentsCoordinator);

  return MEMORY[0x2821F96F8]();
}

- (SBINAppIntentsCoordinator)init
{
  v3.receiver = self;
  v3.super_class = SBINAppIntentsCoordinator;
  return [(SBINAppIntentsCoordinator *)&v3 init];
}

- (void)performAppIntent:(id)a3 withCompletion:(id)a4
{
  v9 = a3;
  v6 = a4;
  BSDispatchQueueAssertMain();
  v7 = [(SBINAppIntentsCoordinator *)self delegate];
  v8 = v7;
  if (v7)
  {
    [v7 appIntentsCoordinator:self performAppIntent:v9 withCompletion:v6];
  }

  else if (v6)
  {
    v6[2](v6, 0);
  }
}

- (SBINAppIntentsCoordinatorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end