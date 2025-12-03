@interface TDVHomeButtonHandler
+ (id)handlerWithCompletion:(id)completion;
- (TDVHomeButtonHandler)initWithCompletion:(id)completion;
- (void)consumeSinglePressUpForButtonKind:(int64_t)kind;
- (void)startConsumingHardwarePresses:(id)presses;
- (void)stopConsumingHardwarePresses;
@end

@implementation TDVHomeButtonHandler

- (TDVHomeButtonHandler)initWithCompletion:(id)completion
{
  completionCopy = completion;
  v8.receiver = self;
  v8.super_class = TDVHomeButtonHandler;
  v5 = [(TDVHomeButtonHandler *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(TDVHomeButtonHandler *)v5 startConsumingHardwarePresses:completionCopy];
  }

  return v6;
}

+ (id)handlerWithCompletion:(id)completion
{
  completionCopy = completion;
  v4 = [[TDVHomeButtonHandler alloc] initWithCompletion:completionCopy];

  return v4;
}

- (void)startConsumingHardwarePresses:(id)presses
{
  [(TDVHomeButtonHandler *)self setHomeButtonHandlerCallback:presses];
  homeButtonAssertion = [(TDVHomeButtonHandler *)self homeButtonAssertion];

  if (!homeButtonAssertion)
  {
    mEMORY[0x277D66AA0] = [MEMORY[0x277D66AA0] sharedInstance];
    v6 = [mEMORY[0x277D66AA0] beginConsumingPressesForButtonKind:1 eventConsumer:self priority:0];

    [(TDVHomeButtonHandler *)self setHomeButtonAssertion:v6];
  }
}

- (void)stopConsumingHardwarePresses
{
  homeButtonAssertion = [(TDVHomeButtonHandler *)self homeButtonAssertion];
  [homeButtonAssertion invalidate];

  [(TDVHomeButtonHandler *)self setHomeButtonAssertion:0];
}

- (void)consumeSinglePressUpForButtonKind:(int64_t)kind
{
  homeButtonHandlerCallback = self->_homeButtonHandlerCallback;
  if (homeButtonHandlerCallback)
  {
    homeButtonHandlerCallback[2]();
  }
}

@end