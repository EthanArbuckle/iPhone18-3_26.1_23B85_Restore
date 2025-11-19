@interface _UIDictationInternalButton
- (BOOL)gestureRecognizerShouldBegin:(id)a3;
- (_UIDictationInternalButton)initWithHandler:(id)a3;
- (void)handleTap:(id)a3;
@end

@implementation _UIDictationInternalButton

- (_UIDictationInternalButton)initWithHandler:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = _UIDictationInternalButton;
  v5 = [(UIButton *)&v10 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  if (v5)
  {
    v6 = [v4 copy];
    tapHandler = v5->_tapHandler;
    v5->_tapHandler = v6;

    v8 = [[UITapGestureRecognizer alloc] initWithTarget:v5 action:sel_handleTap_];
    [(UIGestureRecognizer *)v8 setCancelsTouchesInView:1];
    [(UIView *)v5 addGestureRecognizer:v8];
  }

  return v5;
}

- (void)handleTap:(id)a3
{
  if ([a3 state] == 3)
  {
    v4 = [(_UIDictationInternalButton *)self tapHandler];

    if (v4)
    {
      v5 = [(_UIDictationInternalButton *)self tapHandler];
      v5[2]();
    }
  }
}

- (BOOL)gestureRecognizerShouldBegin:(id)a3
{
  v4 = [a3 view];
  LOBYTE(self) = v4 == self;

  return self;
}

@end