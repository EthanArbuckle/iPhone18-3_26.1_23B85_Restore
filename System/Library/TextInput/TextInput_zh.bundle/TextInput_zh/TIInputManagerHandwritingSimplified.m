@interface TIInputManagerHandwritingSimplified
- (TIInputManager)initImplementation;
@end

@implementation TIInputManagerHandwritingSimplified

- (TIInputManager)initImplementation
{
  v5.receiver = self;
  v5.super_class = TIInputManagerHandwritingSimplified;
  v3 = [(TIInputManagerHandwriting *)&v5 initImplementation];
  [(TIInputManagerHandwriting *)self updateAddressBook];
  [(TIInputManagerHandwriting *)self updateUserWordEntries];
  return v3;
}

@end