@interface _UITextCursorBlinkAnimation
- (UIView)cursorShapeView;
- (_UITextCursorBlinkAnimation)initWithCursorShapeView:(id)a3;
- (void)reset;
- (void)setEnabled:(BOOL)a3;
@end

@implementation _UITextCursorBlinkAnimation

- (void)reset
{
  if (self->_enabled && self->_caretBlinkAnimation)
  {
    WeakRetained = objc_loadWeakRetained(&self->_cursorShapeView);
    v3 = [WeakRetained _outermostLayer];
    [v3 addAnimation:self->_caretBlinkAnimation forKey:@"_uitcvba"];
  }
}

- (_UITextCursorBlinkAnimation)initWithCursorShapeView:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = _UITextCursorBlinkAnimation;
  v5 = [(_UITextCursorBlinkAnimation *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_cursorShapeView, v4);
    [(UIView *)v4 _registerMultiLayerDelegate:v6];
  }

  return v6;
}

- (void)setEnabled:(BOOL)a3
{
  if (self->_enabled != a3)
  {
    self->_enabled = a3;
    caretBlinkAnimation = self->_caretBlinkAnimation;
    if (a3)
    {
      if (!caretBlinkAnimation)
      {
        v5 = [MEMORY[0x1E6979390] animationWithKeyPath:@"opacity"];
        v6 = self->_caretBlinkAnimation;
        self->_caretBlinkAnimation = v5;

        [(CAKeyframeAnimation *)self->_caretBlinkAnimation setCalculationMode:*MEMORY[0x1E69795A0]];
        [(CAKeyframeAnimation *)self->_caretBlinkAnimation setValues:&unk_1EFE2CFD0];
        [(CAKeyframeAnimation *)self->_caretBlinkAnimation setKeyTimes:&unk_1EFE2CFE8];
        [(CAKeyframeAnimation *)self->_caretBlinkAnimation setDuration:1.0];
        LODWORD(v7) = 2139095039;
        [(CAKeyframeAnimation *)self->_caretBlinkAnimation setRepeatCount:v7];
      }

      WeakRetained = objc_loadWeakRetained(&self->_cursorShapeView);
      v8 = [(CAKeyframeAnimation *)WeakRetained _outermostLayer];
      [v8 addAnimation:self->_caretBlinkAnimation forKey:@"_uitcvba"];

      v9 = WeakRetained;
    }

    else
    {
      if (!caretBlinkAnimation)
      {
        return;
      }

      v10 = objc_loadWeakRetained(&self->_cursorShapeView);
      v11 = [v10 _outermostLayer];
      [v11 removeAnimationForKey:@"_uitcvba"];

      v9 = self->_caretBlinkAnimation;
      self->_caretBlinkAnimation = 0;
    }
  }
}

- (UIView)cursorShapeView
{
  WeakRetained = objc_loadWeakRetained(&self->_cursorShapeView);

  return WeakRetained;
}

@end