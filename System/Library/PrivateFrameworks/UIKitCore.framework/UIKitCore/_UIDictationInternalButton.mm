@interface _UIDictationInternalButton
- (BOOL)gestureRecognizerShouldBegin:(id)begin;
- (_UIDictationInternalButton)initWithHandler:(id)handler;
- (void)handleTap:(id)tap;
@end

@implementation _UIDictationInternalButton

- (_UIDictationInternalButton)initWithHandler:(id)handler
{
  handlerCopy = handler;
  v10.receiver = self;
  v10.super_class = _UIDictationInternalButton;
  v5 = [(UIButton *)&v10 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  if (v5)
  {
    v6 = [handlerCopy copy];
    tapHandler = v5->_tapHandler;
    v5->_tapHandler = v6;

    v8 = [[UITapGestureRecognizer alloc] initWithTarget:v5 action:sel_handleTap_];
    [(UIGestureRecognizer *)v8 setCancelsTouchesInView:1];
    [(UIView *)v5 addGestureRecognizer:v8];
  }

  return v5;
}

- (void)handleTap:(id)tap
{
  if ([tap state] == 3)
  {
    tapHandler = [(_UIDictationInternalButton *)self tapHandler];

    if (tapHandler)
    {
      tapHandler2 = [(_UIDictationInternalButton *)self tapHandler];
      tapHandler2[2]();
    }
  }
}

- (BOOL)gestureRecognizerShouldBegin:(id)begin
{
  view = [begin view];
  LOBYTE(self) = view == self;

  return self;
}

@end