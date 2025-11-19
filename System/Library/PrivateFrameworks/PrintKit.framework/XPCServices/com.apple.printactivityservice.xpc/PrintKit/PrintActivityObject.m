@interface PrintActivityObject
- (void)startPrintLiveActivity;
- (void)stopPrintLiveActivity;
@end

@implementation PrintActivityObject

- (void)startPrintLiveActivity
{
  v2 = self;
  PrintActivityObject.startPrintLiveActivity()();
}

- (void)stopPrintLiveActivity
{
  v2 = self;
  PrintActivityObject.stopPrintLiveActivity()();
}

@end