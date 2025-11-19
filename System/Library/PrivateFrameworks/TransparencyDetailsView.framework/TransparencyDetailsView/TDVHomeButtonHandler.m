@interface TDVHomeButtonHandler
+ (id)handlerWithCompletion:(id)a3;
- (TDVHomeButtonHandler)initWithCompletion:(id)a3;
- (void)consumeSinglePressUpForButtonKind:(int64_t)a3;
- (void)startConsumingHardwarePresses:(id)a3;
- (void)stopConsumingHardwarePresses;
@end

@implementation TDVHomeButtonHandler

- (TDVHomeButtonHandler)initWithCompletion:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = TDVHomeButtonHandler;
  v5 = [(TDVHomeButtonHandler *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(TDVHomeButtonHandler *)v5 startConsumingHardwarePresses:v4];
  }

  return v6;
}

+ (id)handlerWithCompletion:(id)a3
{
  v3 = a3;
  v4 = [[TDVHomeButtonHandler alloc] initWithCompletion:v3];

  return v4;
}

- (void)startConsumingHardwarePresses:(id)a3
{
  [(TDVHomeButtonHandler *)self setHomeButtonHandlerCallback:a3];
  v4 = [(TDVHomeButtonHandler *)self homeButtonAssertion];

  if (!v4)
  {
    v5 = [MEMORY[0x277D66AA0] sharedInstance];
    v6 = [v5 beginConsumingPressesForButtonKind:1 eventConsumer:self priority:0];

    [(TDVHomeButtonHandler *)self setHomeButtonAssertion:v6];
  }
}

- (void)stopConsumingHardwarePresses
{
  v3 = [(TDVHomeButtonHandler *)self homeButtonAssertion];
  [v3 invalidate];

  [(TDVHomeButtonHandler *)self setHomeButtonAssertion:0];
}

- (void)consumeSinglePressUpForButtonKind:(int64_t)a3
{
  homeButtonHandlerCallback = self->_homeButtonHandlerCallback;
  if (homeButtonHandlerCallback)
  {
    homeButtonHandlerCallback[2]();
  }
}

@end