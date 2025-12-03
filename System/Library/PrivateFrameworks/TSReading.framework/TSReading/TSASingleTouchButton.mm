@interface TSASingleTouchButton
- (CGPoint)_pressFeedbackPosition;
- (id)_pressFeedbackImage;
- (void)dealloc;
- (void)layoutSubviews;
- (void)setHighlighted:(BOOL)highlighted;
- (void)setShowsTouchOnTopWhenHighlighted:(BOOL)highlighted;
- (void)setTouchImage:(id)image;
- (void)touchesBegan:(id)began withEvent:(id)event;
- (void)touchesEnded:(id)ended withEvent:(id)event;
@end

@implementation TSASingleTouchButton

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = TSASingleTouchButton;
  [(TSASingleTouchButton *)&v3 dealloc];
}

- (void)touchesBegan:(id)began withEvent:(id)event
{
  if ([objc_msgSend(event "allTouches")] == 1)
  {
    v7.receiver = self;
    v7.super_class = TSASingleTouchButton;
    [(TSASingleTouchButton *)&v7 touchesBegan:began withEvent:event];
  }
}

- (void)touchesEnded:(id)ended withEvent:(id)event
{
  if ([objc_msgSend(event "allTouches")] == 1)
  {
    v7.receiver = self;
    v7.super_class = TSASingleTouchButton;
    [(TSASingleTouchButton *)&v7 touchesEnded:ended withEvent:event];
  }

  else if ([(TSASingleTouchButton *)self isHighlighted])
  {

    [(TSASingleTouchButton *)self setHighlighted:0];
  }
}

- (CGPoint)_pressFeedbackPosition
{
  [(TSASingleTouchButton *)self bounds];
  MidX = CGRectGetMidX(v7);
  [(TSASingleTouchButton *)self bounds];
  MidY = CGRectGetMidY(v8);
  v5 = MidX;
  result.y = MidY;
  result.x = v5;
  return result;
}

- (id)_pressFeedbackImage
{
  result = [(TSASingleTouchButton *)self touchImage];
  if (!result)
  {
    v3 = MEMORY[0x277D755B8];

    return [v3 imageNamed:@"TSA_ButtonBarPressedIndicator"];
  }

  return result;
}

- (void)layoutSubviews
{
  v5.receiver = self;
  v5.super_class = TSASingleTouchButton;
  [(TSASingleTouchButton *)&v5 layoutSubviews];
  if (self->_showsTouchOnTopWhenHighlighted)
  {
    v3 = [(TSASingleTouchButton *)self viewWithTag:1];
    if (v3)
    {
      v4 = v3;
      [(TSASingleTouchButton *)self _pressFeedbackPosition];
      [v4 setCenter:?];
    }
  }
}

- (void)setShowsTouchOnTopWhenHighlighted:(BOOL)highlighted
{
  if (self->_showsTouchOnTopWhenHighlighted != highlighted)
  {
    highlightedCopy = highlighted;
    self->_showsTouchOnTopWhenHighlighted = highlighted;
    v5 = [(TSASingleTouchButton *)self viewWithTag:1];
    if (v5 || !highlightedCopy)
    {
      if (v5)
      {

        [v5 removeFromSuperview];
      }
    }

    else
    {
      _pressFeedbackImage = [(TSASingleTouchButton *)self _pressFeedbackImage];
      v7 = [objc_alloc(MEMORY[0x277D755E8]) initWithImage:_pressFeedbackImage];
      [v7 setUserInteractionEnabled:0];
      [v7 setOpaque:0];
      isHighlighted = [(TSASingleTouchButton *)self isHighlighted];
      v9 = 0.0;
      if (isHighlighted)
      {
        v9 = 1.0;
      }

      [v7 setAlpha:v9];
      [v7 setTag:1];
      [(TSASingleTouchButton *)self _pressFeedbackPosition];
      [v7 setCenter:?];
      [(TSASingleTouchButton *)self addSubview:v7];

      [(TSASingleTouchButton *)self setNeedsLayout];
    }
  }
}

- (void)setTouchImage:(id)image
{
  if (self->_touchImage != image)
  {
    imageCopy = image;

    self->_touchImage = image;
    v6 = [(TSASingleTouchButton *)self viewWithTag:1];
    if (v6)
    {
      v7 = v6;
      _pressFeedbackImage = [(TSASingleTouchButton *)self _pressFeedbackImage];
      [_pressFeedbackImage size];
      [v7 setBounds:TSDRectWithSize()];
      [v7 setImage:_pressFeedbackImage];

      [(TSASingleTouchButton *)self setNeedsLayout];
    }
  }
}

- (void)setHighlighted:(BOOL)highlighted
{
  highlightedCopy = highlighted;
  v8.receiver = self;
  v8.super_class = TSASingleTouchButton;
  [(TSASingleTouchButton *)&v8 setHighlighted:?];
  if (self->_showsTouchOnTopWhenHighlighted)
  {
    v5 = [(TSASingleTouchButton *)self viewWithTag:1];
    if (highlightedCopy)
    {
      if ([-[TSASingleTouchButton subviews](self "subviews")] != v5)
      {
        v6 = v5;
        [v5 removeFromSuperview];
        [(TSASingleTouchButton *)self addSubview:v5];
      }

      [v5 setAlpha:1.0];
    }

    else
    {
      v7[0] = MEMORY[0x277D85DD0];
      v7[1] = 3221225472;
      v7[2] = __39__TSASingleTouchButton_setHighlighted___block_invoke;
      v7[3] = &unk_279D46770;
      v7[4] = v5;
      [MEMORY[0x277D75D18] animateWithDuration:v7 animations:0.25];
    }
  }
}

@end