@interface PrintActivityService
- (void)startLiveActivity;
- (void)stopLiveActivity;
@end

@implementation PrintActivityService

- (void)startLiveActivity
{
  v3 = [(PrintActivityService *)self printActivityObject];

  if (!v3)
  {
    v4 = objc_opt_new();
    [(PrintActivityService *)self setPrintActivityObject:v4];
  }

  v5 = [(PrintActivityService *)self printActivityObject];
  [v5 startPrintLiveActivity];
}

- (void)stopLiveActivity
{
  v2 = [(PrintActivityService *)self printActivityObject];
  [v2 stopPrintLiveActivity];
}

@end