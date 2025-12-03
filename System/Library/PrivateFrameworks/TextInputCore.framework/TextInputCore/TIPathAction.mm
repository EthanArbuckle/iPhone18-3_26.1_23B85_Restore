@interface TIPathAction
- (TIPathAction)initWithCoder:(id)coder;
- (TIPathAction)initWithSyllableCount:(unint64_t)count keyboardState:(id)state;
- (void)encodeWithCoder:(id)coder;
@end

@implementation TIPathAction

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = TIPathAction;
  coderCopy = coder;
  [(TIUserAction *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeInteger:self->_syllableCount forKey:{@"syllableCount", v5.receiver, v5.super_class}];
}

- (TIPathAction)initWithCoder:(id)coder
{
  coderCopy = coder;
  v8.receiver = self;
  v8.super_class = TIPathAction;
  v5 = [(TIUserAction *)&v8 initWithCoder:coderCopy];
  v6 = v5;
  if (v5)
  {
    [(TIUserAction *)v5 setActionType:4];
    v6->_syllableCount = [coderCopy decodeIntegerForKey:@"syllableCount"];
  }

  return v6;
}

- (TIPathAction)initWithSyllableCount:(unint64_t)count keyboardState:(id)state
{
  v8.receiver = self;
  v8.super_class = TIPathAction;
  v5 = [(TIUserAction *)&v8 initWithTIKeyboardState:state];
  v6 = v5;
  if (v5)
  {
    [(TIUserAction *)v5 setActionType:4];
    v6->_syllableCount = count;
  }

  return v6;
}

@end