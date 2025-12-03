@interface TUKeyboardInputMonitor
- (void)handle:(id)handle;
@end

@implementation TUKeyboardInputMonitor

- (void)handle:(id)handle
{
  handleCopy = handle;
  selfCopy = self;
  KeyboardInputMonitor.handle(_:)(handleCopy);
}

@end