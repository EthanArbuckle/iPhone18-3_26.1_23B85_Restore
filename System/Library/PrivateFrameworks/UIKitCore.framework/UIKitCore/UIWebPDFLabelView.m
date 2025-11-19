@interface UIWebPDFLabelView
- (UIWebPDFLabelView)initWithFrame:(CGRect)a3;
- (void)_fadeOutAnimationDidStop;
- (void)_makeRoundedCorners;
- (void)clearTimer;
- (void)dealloc;
- (void)fadeOut;
- (void)setText:(id)a3;
- (void)showNowInSuperView:(id)a3 atOrigin:(CGPoint)a4 withText:(id)a5 animated:(BOOL)a6;
- (void)sizeToFit;
@end

@implementation UIWebPDFLabelView

- (UIWebPDFLabelView)initWithFrame:(CGRect)a3
{
  v9.receiver = self;
  v9.super_class = UIWebPDFLabelView;
  v3 = [(UIView *)&v9 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(CALayer *)[(UIView *)v3 layer] setAllowsGroupOpacity:0];
    [(CALayer *)[(UIView *)v4 layer] setAllowsGroupBlending:0];
    v5 = [[_UIBackdropView alloc] initWithPrivateStyle:2020];
    v4->_backdropView = v5;
    [(UIView *)v4 addSubview:v5];
    [(UIWebPDFLabelView *)v4 _makeRoundedCorners];
    v6 = [[UILabel alloc] initWithFrame:0.0, 0.0, 50.0, 50.0];
    v4->_label = v6;
    [(UIView *)v6 setOpaque:0];
    [(UIView *)v4->_label setBackgroundColor:0];
    [(UILabel *)v4->_label setTextAlignment:1];
    -[UILabel setFont:](v4->_label, "setFont:", [off_1E70ECC18 boldSystemFontOfSize:16.0]);
    [(UILabel *)v4->_label setTextColor:+[UIColor blackColor]];
    [(UIView *)v4->_label setAlpha:0.4];
    v7 = [(UIView *)v4->_label layer];
    -[CALayer setCompositingFilter:](v7, "setCompositingFilter:", [MEMORY[0x1E6979378] filterWithType:*MEMORY[0x1E6979CE8]]);
    [(UIView *)v4 addSubview:v4->_label];
  }

  return v4;
}

- (void)clearTimer
{
  [(NSTimer *)self->_timer invalidate];

  self->_timer = 0;
}

- (void)dealloc
{
  [(UIWebPDFLabelView *)self clearTimer];

  v3.receiver = self;
  v3.super_class = UIWebPDFLabelView;
  [(UIView *)&v3 dealloc];
}

- (void)sizeToFit
{
  [(UIView *)self->_label sizeToFit];
  [(UIView *)self->_label frame];
  v4 = v3 + 20.0;
  v6 = v5 + 12.0;
  [(UIView *)self->_backdropView setSize:v3 + 20.0, v5 + 12.0];
  [(UIView *)self->_label setSize:v4, v6];

  [(UIView *)self setSize:v4, v6];
}

- (void)setText:(id)a3
{
  [(UILabel *)self->_label setText:a3];

  [(UIWebPDFLabelView *)self sizeToFit];
}

- (void)showNowInSuperView:(id)a3 atOrigin:(CGPoint)a4 withText:(id)a5 animated:(BOOL)a6
{
  v6 = a6;
  y = a4.y;
  x = a4.x;
  [(UIView *)self setAlpha:1.0];
  if (a5)
  {
    [(UIWebPDFLabelView *)self setText:a5];
  }

  if ([(UIView *)self superview]== a3)
  {
    [a3 bringSubviewToFront:self];
  }

  else
  {
    [a3 addSubview:self];
  }

  v13[1] = 3221225472;
  v13[0] = MEMORY[0x1E69E9820];
  v13[2] = __67__UIWebPDFLabelView_showNowInSuperView_atOrigin_withText_animated___block_invoke_2;
  v13[3] = &unk_1E712C3D8;
  v13[4] = self;
  *&v13[5] = x + 20.0;
  *&v13[6] = y + 20.0;
  [UIView conditionallyAnimate:v6 withAnimation:&__block_literal_global_739 layout:v13 completion:0];
  [(UIWebPDFLabelView *)self _fadeOutDelay];
  timer = self->_timer;
  if (timer)
  {
    -[NSTimer setFireDate:](timer, "setFireDate:", [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceNow:?]);
  }

  else
  {
    self->_timer = [MEMORY[0x1E695DFF0] scheduledTimerWithTimeInterval:self target:sel_fadeOut selector:0 userInfo:1 repeats:?];
  }
}

uint64_t __67__UIWebPDFLabelView_showNowInSuperView_atOrigin_withText_animated___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  [*(a1 + 32) frame];
  v4 = *(a1 + 32);

  return [v4 setFrame:{v2, v3}];
}

- (void)_fadeOutAnimationDidStop
{
  [(UIView *)self removeFromSuperview];
}

- (void)fadeOut
{
  if ([(UIWebPDFLabelView *)self isTimerInstalled])
  {
    v3 = self;
    [(UIWebPDFLabelView *)self clearTimer];
    [(UIWebPDFLabelView *)self _fadeOutDuration];
    v4[4] = self;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __28__UIWebPDFLabelView_fadeOut__block_invoke;
    v5[3] = &unk_1E70F5CA0;
    v5[4] = self;
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __28__UIWebPDFLabelView_fadeOut__block_invoke_2;
    v4[3] = &unk_1E712C388;
    [UIView animateWithDuration:v5 animations:v4 completion:?];
  }
}

- (void)_makeRoundedCorners
{
  [objc_msgSend(objc_opt_self() "mainScreen")];
  _UIGraphicsBeginImageContextWithOptions(0, 0, 16.0, 16.0, v3);
  ContextStack = GetContextStack(0);
  if (*ContextStack < 1)
  {
    v5 = 0;
  }

  else
  {
    v5 = ContextStack[3 * (*ContextStack - 1) + 1];
  }

  CGContextSaveGState(v5);
  v10.origin.x = 0.0;
  v10.origin.y = 0.0;
  v10.size.width = 16.0;
  v10.size.height = 16.0;
  CGContextAddRect(v5, v10);
  CGContextAddPath(v5, [[UIBezierPath bezierPathWithRoundedRect:? byRoundingCorners:? cornerRadii:?];
  CGContextEOClip(v5);
  UIRectFillUsingOperation(1, 0.0, 0.0, 16.0, 16.0);
  CGContextRestoreGState(v5);
  ImageFromCurrentImageContext = _UIGraphicsGetImageFromCurrentImageContext(0);
  UIGraphicsEndImageContext();
  v7 = [(_UIBackdropView *)self->_backdropView contentView];
  v8 = -[UIImageView initWithImage:]([UIImageView alloc], "initWithImage:", [ImageFromCurrentImageContext resizableImageWithCapInsets:{7.0, 7.0, 7.0, 7.0}]);
  [(UIView *)v8 setAlpha:0.0];
  [(UIView *)v8 _setBackdropMaskViewFlags:7];
  [(UIView *)v8 setAutoresizingMask:18];
  [(UIView *)v7 bounds];
  [(UIImageView *)v8 setFrame:?];
  [(UIView *)v7 addSubview:v8];
}

@end