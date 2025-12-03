@interface MTMPButton
+ (UIEdgeInsets)easyTouchDefaultHitRectInsets;
+ (id)easyTouchButtonWithType:(int64_t)type;
- (BOOL)beginTrackingWithTouch:(id)touch withEvent:(id)event;
- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event;
- (CGRect)hitRect;
- (MTMPButton)initWithFrame:(CGRect)frame;
- (UIEdgeInsets)alignmentRectInsets;
- (UIEdgeInsets)hitRectInsets;
- (void)_delayedTriggerHold;
- (void)_handleTouchCancel;
- (void)_handleTouchDown;
- (void)_handleTouchUp;
- (void)cancelTrackingWithEvent:(id)event;
- (void)dealloc;
- (void)endTrackingWithTouch:(id)touch withEvent:(id)event;
- (void)layoutSubviews;
- (void)setAlignmentRectInsets:(UIEdgeInsets)insets;
- (void)setHitTestDebugEnabled:(BOOL)enabled;
- (void)touchesCancelled:(id)cancelled withEvent:(id)event;
- (void)touchesEnded:(id)ended withEvent:(id)event;
@end

@implementation MTMPButton

- (MTMPButton)initWithFrame:(CGRect)frame
{
  v4.receiver = self;
  v4.super_class = MTMPButton;
  result = [(MTMPButton *)&v4 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (result)
  {
    result->_holdDelayInterval = 0.75;
  }

  return result;
}

+ (UIEdgeInsets)easyTouchDefaultHitRectInsets
{
  v2 = -20.0;
  v3 = -20.0;
  v4 = -20.0;
  v5 = -20.0;
  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = v2;
  return result;
}

+ (id)easyTouchButtonWithType:(int64_t)type
{
  v3 = [objc_opt_class() buttonWithType:type];
  [objc_opt_class() easyTouchDefaultHitRectInsets];
  [v3 setHitRectInsets:?];
  [objc_opt_class() easyTouchDefaultCharge];
  *&v4 = v4;
  [v3 setCharge:v4];

  return v3;
}

- (UIEdgeInsets)alignmentRectInsets
{
  top = self->_alignmentRectInsets.top;
  left = self->_alignmentRectInsets.left;
  bottom = self->_alignmentRectInsets.bottom;
  right = self->_alignmentRectInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (BOOL)beginTrackingWithTouch:(id)touch withEvent:(id)event
{
  eventCopy = event;
  touchCopy = touch;
  [(MTMPButton *)self _handleTouchDown];
  v9.receiver = self;
  v9.super_class = MTMPButton;
  LOBYTE(self) = [(MTMPButton *)&v9 beginTrackingWithTouch:touchCopy withEvent:eventCopy];

  return self;
}

- (void)cancelTrackingWithEvent:(id)event
{
  v4.receiver = self;
  v4.super_class = MTMPButton;
  [(MTMPButton *)&v4 cancelTrackingWithEvent:event];
  [(MTMPButton *)self _handleTouchCancel];
}

- (void)endTrackingWithTouch:(id)touch withEvent:(id)event
{
  v5.receiver = self;
  v5.super_class = MTMPButton;
  [(MTMPButton *)&v5 endTrackingWithTouch:touch withEvent:event];
  [(MTMPButton *)self _handleTouchUp];
}

- (CGRect)hitRect
{
  v13.receiver = self;
  v13.super_class = MTMPButton;
  [(MTMPButton *)&v13 hitRect];
  top = self->_hitRectInsets.top;
  left = self->_hitRectInsets.left;
  v6 = v5 + left;
  v8 = v7 - (left + self->_hitRectInsets.right);
  v10 = v9 + top;
  v12 = v11 - (top + self->_hitRectInsets.bottom);
  result.size.height = v12;
  result.size.width = v8;
  result.origin.y = v10;
  result.origin.x = v6;
  return result;
}

- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event
{
  y = inside.y;
  x = inside.x;
  [(MTMPButton *)self hitRect];
  v10 = x;
  v11 = y;

  return CGRectContainsPoint(*&v6, *&v10);
}

- (void)dealloc
{
  [(MTMPButton *)self setCharge:0.0];
  v3.receiver = self;
  v3.super_class = MTMPButton;
  [(MTMPButton *)&v3 dealloc];
}

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = MTMPButton;
  [(MTMPButton *)&v4 layoutSubviews];
  hitTestDebugView = self->_hitTestDebugView;
  [(MTMPButton *)self hitRect];
  [(UIView *)hitTestDebugView setFrame:?];
}

- (void)setAlignmentRectInsets:(UIEdgeInsets)insets
{
  v3.f64[0] = insets.top;
  v3.f64[1] = insets.left;
  v4.f64[0] = insets.bottom;
  v4.f64[1] = insets.right;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*&self->_alignmentRectInsets.top, v3), vceqq_f64(*&self->_alignmentRectInsets.bottom, v4)))) & 1) == 0)
  {
    self->_alignmentRectInsets = insets;
    superview = [(MTMPButton *)self superview];
    [superview setNeedsLayout];
  }
}

- (void)setHitTestDebugEnabled:(BOOL)enabled
{
  if (self->_hitTestDebugEnabled != enabled)
  {
    self->_hitTestDebugEnabled = enabled;
    hitTestDebugView = self->_hitTestDebugView;
    if (enabled)
    {
      if (!hitTestDebugView)
      {
        v5 = objc_alloc_init(MEMORY[0x277D75D18]);
        v6 = self->_hitTestDebugView;
        self->_hitTestDebugView = v5;

        [(UIView *)self->_hitTestDebugView setUserInteractionEnabled:0];
        redColor = [MEMORY[0x277D75348] redColor];
        cGColor = [redColor CGColor];
        layer = [(UIView *)self->_hitTestDebugView layer];
        [layer setBorderColor:cGColor];

        layer2 = [(UIView *)self->_hitTestDebugView layer];
        [layer2 setBorderWidth:1.0];

        redColor2 = [MEMORY[0x277D75348] redColor];
        v12 = [redColor2 colorWithAlphaComponent:0.1];
        [(UIView *)self->_hitTestDebugView setBackgroundColor:v12];

        hitTestDebugView = self->_hitTestDebugView;
      }

      [(MTMPButton *)self addSubview:hitTestDebugView];

      [(MTMPButton *)self setNeedsLayout];
    }

    else
    {
      [(UIView *)self->_hitTestDebugView removeFromSuperview];
      v13 = self->_hitTestDebugView;
      self->_hitTestDebugView = 0;
    }
  }
}

- (void)touchesCancelled:(id)cancelled withEvent:(id)event
{
  v5.receiver = self;
  v5.super_class = MTMPButton;
  [(MTMPButton *)&v5 touchesCancelled:cancelled withEvent:event];
  *(self + 744) &= ~1u;
}

- (void)touchesEnded:(id)ended withEvent:(id)event
{
  v5.receiver = self;
  v5.super_class = MTMPButton;
  [(MTMPButton *)&v5 touchesEnded:ended withEvent:event];
  *(self + 744) &= ~1u;
}

- (void)_delayedTriggerHold
{
  *(self + 744) |= 1u;
  [MEMORY[0x277D82BB8] cancelPreviousPerformRequestsWithTarget:self selector:a2 object:0];

  [(MTMPButton *)self sendActionsForControlEvents:0x1000000];
}

- (void)_handleTouchCancel
{
  [MEMORY[0x277D82BB8] cancelPreviousPerformRequestsWithTarget:self selector:sel__delayedTriggerHold object:0];

  [(MTMPButton *)self sendActionsForControlEvents:0x2000000];
}

- (void)_handleTouchDown
{
  [(MTMPButton *)self holdDelayInterval];

  [(MTMPButton *)self performSelector:sel__delayedTriggerHold withObject:0 afterDelay:?];
}

- (void)_handleTouchUp
{
  [MEMORY[0x277D82BB8] cancelPreviousPerformRequestsWithTarget:self selector:sel__delayedTriggerHold object:0];

  [(MTMPButton *)self sendActionsForControlEvents:0x2000000];
}

- (UIEdgeInsets)hitRectInsets
{
  top = self->_hitRectInsets.top;
  left = self->_hitRectInsets.left;
  bottom = self->_hitRectInsets.bottom;
  right = self->_hitRectInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

@end