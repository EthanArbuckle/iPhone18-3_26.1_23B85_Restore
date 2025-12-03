@interface TIInputManagerHandwriting_ja
- (id)handleKeyboardInput:(id)input;
- (void)initImplementation;
@end

@implementation TIInputManagerHandwriting_ja

- (void)initImplementation
{
  v5.receiver = self;
  v5.super_class = TIInputManagerHandwriting_ja;
  initImplementation = [(TIInputManagerHandwriting *)&v5 initImplementation];
  [(TIInputManagerHandwriting *)self updateAddressBook];
  [(TIInputManagerHandwriting *)self updateUserWordEntries];
  return initImplementation;
}

- (id)handleKeyboardInput:(id)input
{
  inputCopy = input;
  keyboardState = [(TIInputManagerHandwriting_ja *)self keyboardState];
  if ([keyboardState shouldOutputFullwidthSpace])
  {
    string = [inputCopy string];
    v7 = [string isEqualToString:@" "];

    if (v7)
    {
      [inputCopy setString:@"　"];
    }
  }

  else
  {
  }

  v10.receiver = self;
  v10.super_class = TIInputManagerHandwriting_ja;
  v8 = [(TIKeyboardInputManagerBase *)&v10 handleKeyboardInput:inputCopy];

  return v8;
}

@end