@interface _UITextCursorBlinkAnimation
- (UIView)cursorShapeView;
- (_UITextCursorBlinkAnimation)initWithCursorShapeView:(id)view;
- (void)reset;
- (void)setEnabled:(BOOL)enabled;
@end

@implementation _UITextCursorBlinkAnimation

- (void)reset
{
  if (self->_enabled && self->_caretBlinkAnimation)
  {
    WeakRetained = objc_loadWeakRetained(&self->_cursorShapeView);
    _outermostLayer = [WeakRetained _outermostLayer];
    [_outermostLayer addAnimation:self->_caretBlinkAnimation forKey:@"_uitcvba"];
  }
}

- (_UITextCursorBlinkAnimation)initWithCursorShapeView:(id)view
{
  viewCopy = view;
  v8.receiver = self;
  v8.super_class = _UITextCursorBlinkAnimation;
  v5 = [(_UITextCursorBlinkAnimation *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_cursorShapeView, viewCopy);
    [(UIView *)viewCopy _registerMultiLayerDelegate:v6];
  }

  return v6;
}

- (void)setEnabled:(BOOL)enabled
{
  if (self->_enabled != enabled)
  {
    self->_enabled = enabled;
    caretBlinkAnimation = self->_caretBlinkAnimation;
    if (enabled)
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
      _outermostLayer = [(CAKeyframeAnimation *)WeakRetained _outermostLayer];
      [_outermostLayer addAnimation:self->_caretBlinkAnimation forKey:@"_uitcvba"];

      v9 = WeakRetained;
    }

    else
    {
      if (!caretBlinkAnimation)
      {
        return;
      }

      v10 = objc_loadWeakRetained(&self->_cursorShapeView);
      _outermostLayer2 = [v10 _outermostLayer];
      [_outermostLayer2 removeAnimationForKey:@"_uitcvba"];

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