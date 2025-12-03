@interface _TVRMAlertButton
- (void)layoutSubviews;
- (void)setShowingBackgroundEffect:(BOOL)effect;
- (void)touchesBegan:(id)began withEvent:(id)event;
- (void)touchesCancelled:(id)cancelled withEvent:(id)event;
- (void)touchesEnded:(id)ended withEvent:(id)event;
- (void)touchesMoved:(id)moved withEvent:(id)event;
@end

@implementation _TVRMAlertButton

- (void)layoutSubviews
{
  v5.receiver = self;
  v5.super_class = _TVRMAlertButton;
  [(_TVRMAlertButton *)&v5 layoutSubviews];
  [(_TVRMAlertButton *)self insertSubview:self->_burnView atIndex:0];
  [(_TVRMAlertButton *)self insertSubview:self->_plusDView atIndex:1];
  burnView = self->_burnView;
  [(_TVRMAlertButton *)self bounds];
  [(UIView *)burnView setFrame:?];
  plusDView = self->_plusDView;
  [(_TVRMAlertButton *)self bounds];
  [(UIView *)plusDView setFrame:?];
  [(UIView *)self->_burnView setHidden:!self->_showingBackgroundEffect];
  [(UIView *)self->_plusDView setHidden:!self->_showingBackgroundEffect];
}

- (void)touchesBegan:(id)began withEvent:(id)event
{
  v5.receiver = self;
  v5.super_class = _TVRMAlertButton;
  [(_TVRMAlertButton *)&v5 touchesBegan:began withEvent:event];
  [(_TVRMAlertButton *)self setShowingBackgroundEffect:1];
}

- (void)touchesMoved:(id)moved withEvent:(id)event
{
  v10.receiver = self;
  v10.super_class = _TVRMAlertButton;
  eventCopy = event;
  movedCopy = moved;
  [(_TVRMAlertButton *)&v10 touchesMoved:movedCopy withEvent:eventCopy];
  anyObject = [movedCopy anyObject];

  [anyObject locationInView:self];
  v9 = [(_TVRMAlertButton *)self pointInside:eventCopy withEvent:?];

  [(_TVRMAlertButton *)self setShowingBackgroundEffect:v9];
}

- (void)touchesEnded:(id)ended withEvent:(id)event
{
  v5.receiver = self;
  v5.super_class = _TVRMAlertButton;
  [(_TVRMAlertButton *)&v5 touchesEnded:ended withEvent:event];
  [(_TVRMAlertButton *)self setShowingBackgroundEffect:0];
}

- (void)touchesCancelled:(id)cancelled withEvent:(id)event
{
  v5.receiver = self;
  v5.super_class = _TVRMAlertButton;
  [(_TVRMAlertButton *)&v5 touchesCancelled:cancelled withEvent:event];
  [(_TVRMAlertButton *)self setShowingBackgroundEffect:0];
}

- (void)setShowingBackgroundEffect:(BOOL)effect
{
  if (self->_showingBackgroundEffect != effect)
  {
    self->_showingBackgroundEffect = effect;
    [(_TVRMAlertButton *)self setNeedsLayout];
  }
}

@end