@interface AppSelectionSignal
- (void)encodeWithCoder:(id)coder;
@end

@implementation AppSelectionSignal

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  sub_222D70620(coderCopy);
}

@end