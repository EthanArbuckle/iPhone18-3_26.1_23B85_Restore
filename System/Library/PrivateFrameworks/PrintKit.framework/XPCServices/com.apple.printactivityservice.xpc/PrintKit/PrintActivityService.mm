@interface PrintActivityService
- (void)startLiveActivity;
- (void)stopLiveActivity;
@end

@implementation PrintActivityService

- (void)startLiveActivity
{
  printActivityObject = [(PrintActivityService *)self printActivityObject];

  if (!printActivityObject)
  {
    v4 = objc_opt_new();
    [(PrintActivityService *)self setPrintActivityObject:v4];
  }

  printActivityObject2 = [(PrintActivityService *)self printActivityObject];
  [printActivityObject2 startPrintLiveActivity];
}

- (void)stopLiveActivity
{
  printActivityObject = [(PrintActivityService *)self printActivityObject];
  [printActivityObject stopPrintLiveActivity];
}

@end