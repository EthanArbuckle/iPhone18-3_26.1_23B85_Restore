@interface TIInputManagerHandwriting_ja
- (id)handleKeyboardInput:(id)a3;
- (void)initImplementation;
@end

@implementation TIInputManagerHandwriting_ja

- (void)initImplementation
{
  v5.receiver = self;
  v5.super_class = TIInputManagerHandwriting_ja;
  v3 = [(TIInputManagerHandwriting *)&v5 initImplementation];
  [(TIInputManagerHandwriting *)self updateAddressBook];
  [(TIInputManagerHandwriting *)self updateUserWordEntries];
  return v3;
}

- (id)handleKeyboardInput:(id)a3
{
  v4 = a3;
  v5 = [(TIInputManagerHandwriting_ja *)self keyboardState];
  if ([v5 shouldOutputFullwidthSpace])
  {
    v6 = [v4 string];
    v7 = [v6 isEqualToString:@" "];

    if (v7)
    {
      [v4 setString:@"　"];
    }
  }

  else
  {
  }

  v10.receiver = self;
  v10.super_class = TIInputManagerHandwriting_ja;
  v8 = [(TIKeyboardInputManagerBase *)&v10 handleKeyboardInput:v4];

  return v8;
}

@end