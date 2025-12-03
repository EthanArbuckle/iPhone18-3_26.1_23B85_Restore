@interface PrintActivityObject
- (void)startPrintLiveActivity;
- (void)stopPrintLiveActivity;
@end

@implementation PrintActivityObject

- (void)startPrintLiveActivity
{
  selfCopy = self;
  PrintActivityObject.startPrintLiveActivity()();
}

- (void)stopPrintLiveActivity
{
  selfCopy = self;
  PrintActivityObject.stopPrintLiveActivity()();
}

@end