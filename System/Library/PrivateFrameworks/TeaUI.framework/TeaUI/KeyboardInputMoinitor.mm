@interface KeyboardInputMoinitor
- (void)handle:(id)handle;
@end

@implementation KeyboardInputMoinitor

- (void)handle:(id)handle
{
  handleCopy = handle;
  selfCopy = self;
  KeyboardInputMoinitor.handle(_:)(handleCopy);
}

@end