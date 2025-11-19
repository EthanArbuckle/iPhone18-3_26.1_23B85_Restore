@interface TUKeyboardInputMonitor
- (void)handle:(id)a3;
@end

@implementation TUKeyboardInputMonitor

- (void)handle:(id)a3
{
  v4 = a3;
  v5 = self;
  KeyboardInputMonitor.handle(_:)(v4);
}

@end