@interface TIInputManagerHandwritingSimplified
- (TIInputManager)initImplementation;
@end

@implementation TIInputManagerHandwritingSimplified

- (TIInputManager)initImplementation
{
  v5.receiver = self;
  v5.super_class = TIInputManagerHandwritingSimplified;
  initImplementation = [(TIInputManagerHandwriting *)&v5 initImplementation];
  [(TIInputManagerHandwriting *)self updateAddressBook];
  [(TIInputManagerHandwriting *)self updateUserWordEntries];
  return initImplementation;
}

@end