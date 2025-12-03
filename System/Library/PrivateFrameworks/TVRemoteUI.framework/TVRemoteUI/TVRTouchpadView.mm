@interface TVRTouchpadView
- (TVRTouchProcessor)touchProcessor;
- (UIEdgeInsets)contentInsets;
- (id)_init;
- (void)_notifyConfigurationHandler:(BOOL)handler;
- (void)setContentInsets:(UIEdgeInsets)insets;
- (void)touchesBegan:(id)began withEvent:(id)event;
- (void)touchesCancelled:(id)cancelled withEvent:(id)event;
- (void)touchesEnded:(id)ended withEvent:(id)event;
- (void)touchesMoved:(id)moved withEvent:(id)event;
@end

@implementation TVRTouchpadView

- (id)_init
{
  v3.receiver = self;
  v3.super_class = TVRTouchpadView;
  result = [(TVRTouchpadView *)&v3 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  if (result)
  {
    *(result + 408) = 0;
  }

  return result;
}

- (void)touchesBegan:(id)began withEvent:(id)event
{
  eventCopy = event;
  beganCopy = began;
  [(TVRTouchpadView *)self _notifyConfigurationHandler:1];
  WeakRetained = objc_loadWeakRetained(&self->_touchProcessor);
  [WeakRetained touchesBegan:beganCopy withEvent:eventCopy];
}

- (void)touchesMoved:(id)moved withEvent:(id)event
{
  eventCopy = event;
  movedCopy = moved;
  WeakRetained = objc_loadWeakRetained(&self->_touchProcessor);
  [WeakRetained touchesMoved:movedCopy withEvent:eventCopy];
}

- (void)touchesEnded:(id)ended withEvent:(id)event
{
  eventCopy = event;
  endedCopy = ended;
  [(TVRTouchpadView *)self _notifyConfigurationHandler:0];
  WeakRetained = objc_loadWeakRetained(&self->_touchProcessor);
  [WeakRetained touchesEnded:endedCopy withEvent:eventCopy];
}

- (void)touchesCancelled:(id)cancelled withEvent:(id)event
{
  eventCopy = event;
  cancelledCopy = cancelled;
  [(TVRTouchpadView *)self _notifyConfigurationHandler:0];
  WeakRetained = objc_loadWeakRetained(&self->_touchProcessor);
  [WeakRetained touchesCancelled:cancelledCopy withEvent:eventCopy];
}

- (void)setContentInsets:(UIEdgeInsets)insets
{
  v3.f64[0] = insets.top;
  v3.f64[1] = insets.left;
  v4.f64[0] = insets.bottom;
  v4.f64[1] = insets.right;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*&self->_contentInsets.top, v3), vceqq_f64(*&self->_contentInsets.bottom, v4)))) & 1) == 0)
  {
    self->_contentInsets = insets;
    [(TVRTouchpadView *)self setNeedsLayout];
  }
}

- (void)_notifyConfigurationHandler:(BOOL)handler
{
  self->_highlighted = handler;
  configurationHandler = self->_configurationHandler;
  if (configurationHandler)
  {
    configurationHandler[2](configurationHandler, handler);
  }
}

- (UIEdgeInsets)contentInsets
{
  top = self->_contentInsets.top;
  left = self->_contentInsets.left;
  bottom = self->_contentInsets.bottom;
  right = self->_contentInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (TVRTouchProcessor)touchProcessor
{
  WeakRetained = objc_loadWeakRetained(&self->_touchProcessor);

  return WeakRetained;
}

@end