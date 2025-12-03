@interface TIInputManagerHandwritingTraditional_yue
- (TIInputManager)initImplementation;
@end

@implementation TIInputManagerHandwritingTraditional_yue

- (TIInputManager)initImplementation
{
  v5.receiver = self;
  v5.super_class = TIInputManagerHandwritingTraditional_yue;
  initImplementation = [(TIInputManagerHandwriting *)&v5 initImplementation];
  [(TIInputManagerHandwriting *)self updateAddressBook];
  [(TIInputManagerHandwriting *)self updateUserWordEntries];
  [(TIInputManagerHandwriting *)self updateDictionaryPaths];
  return initImplementation;
}

@end