@interface SBINAppIntentsCoordinator
+ (SBINAppIntentsCoordinator)sharedSystemCoordinator;
- (SBINAppIntentsCoordinator)init;
- (SBINAppIntentsCoordinatorDelegate)delegate;
- (void)performAppIntent:(id)intent withCompletion:(id)completion;
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

- (void)performAppIntent:(id)intent withCompletion:(id)completion
{
  intentCopy = intent;
  completionCopy = completion;
  BSDispatchQueueAssertMain();
  delegate = [(SBINAppIntentsCoordinator *)self delegate];
  v8 = delegate;
  if (delegate)
  {
    [delegate appIntentsCoordinator:self performAppIntent:intentCopy withCompletion:completionCopy];
  }

  else if (completionCopy)
  {
    completionCopy[2](completionCopy, 0);
  }
}

- (SBINAppIntentsCoordinatorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end