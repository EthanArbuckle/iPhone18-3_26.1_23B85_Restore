@interface TIPathAction
- (TIPathAction)initWithCoder:(id)a3;
- (TIPathAction)initWithSyllableCount:(unint64_t)a3 keyboardState:(id)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation TIPathAction

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = TIPathAction;
  v4 = a3;
  [(TIUserAction *)&v5 encodeWithCoder:v4];
  [v4 encodeInteger:self->_syllableCount forKey:{@"syllableCount", v5.receiver, v5.super_class}];
}

- (TIPathAction)initWithCoder:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = TIPathAction;
  v5 = [(TIUserAction *)&v8 initWithCoder:v4];
  v6 = v5;
  if (v5)
  {
    [(TIUserAction *)v5 setActionType:4];
    v6->_syllableCount = [v4 decodeIntegerForKey:@"syllableCount"];
  }

  return v6;
}

- (TIPathAction)initWithSyllableCount:(unint64_t)a3 keyboardState:(id)a4
{
  v8.receiver = self;
  v8.super_class = TIPathAction;
  v5 = [(TIUserAction *)&v8 initWithTIKeyboardState:a4];
  v6 = v5;
  if (v5)
  {
    [(TIUserAction *)v5 setActionType:4];
    v6->_syllableCount = a3;
  }

  return v6;
}

@end