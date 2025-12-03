@interface TIInputManagerHandwritingTraditional
- (TIInputManager)initImplementation;
@end

@implementation TIInputManagerHandwritingTraditional

- (TIInputManager)initImplementation
{
  v5.receiver = self;
  v5.super_class = TIInputManagerHandwritingTraditional;
  initImplementation = [(TIInputManagerHandwriting *)&v5 initImplementation];
  [(TIInputManagerHandwriting *)self updateAddressBook];
  [(TIInputManagerHandwriting *)self updateUserWordEntries];
  return initImplementation;
}

@end