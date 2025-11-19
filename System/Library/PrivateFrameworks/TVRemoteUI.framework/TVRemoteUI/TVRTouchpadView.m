@interface TVRTouchpadView
- (TVRTouchProcessor)touchProcessor;
- (UIEdgeInsets)contentInsets;
- (id)_init;
- (void)_notifyConfigurationHandler:(BOOL)a3;
- (void)setContentInsets:(UIEdgeInsets)a3;
- (void)touchesBegan:(id)a3 withEvent:(id)a4;
- (void)touchesCancelled:(id)a3 withEvent:(id)a4;
- (void)touchesEnded:(id)a3 withEvent:(id)a4;
- (void)touchesMoved:(id)a3 withEvent:(id)a4;
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

- (void)touchesBegan:(id)a3 withEvent:(id)a4
{
  v6 = a4;
  v7 = a3;
  [(TVRTouchpadView *)self _notifyConfigurationHandler:1];
  WeakRetained = objc_loadWeakRetained(&self->_touchProcessor);
  [WeakRetained touchesBegan:v7 withEvent:v6];
}

- (void)touchesMoved:(id)a3 withEvent:(id)a4
{
  v6 = a4;
  v7 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_touchProcessor);
  [WeakRetained touchesMoved:v7 withEvent:v6];
}

- (void)touchesEnded:(id)a3 withEvent:(id)a4
{
  v6 = a4;
  v7 = a3;
  [(TVRTouchpadView *)self _notifyConfigurationHandler:0];
  WeakRetained = objc_loadWeakRetained(&self->_touchProcessor);
  [WeakRetained touchesEnded:v7 withEvent:v6];
}

- (void)touchesCancelled:(id)a3 withEvent:(id)a4
{
  v6 = a4;
  v7 = a3;
  [(TVRTouchpadView *)self _notifyConfigurationHandler:0];
  WeakRetained = objc_loadWeakRetained(&self->_touchProcessor);
  [WeakRetained touchesCancelled:v7 withEvent:v6];
}

- (void)setContentInsets:(UIEdgeInsets)a3
{
  v3.f64[0] = a3.top;
  v3.f64[1] = a3.left;
  v4.f64[0] = a3.bottom;
  v4.f64[1] = a3.right;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*&self->_contentInsets.top, v3), vceqq_f64(*&self->_contentInsets.bottom, v4)))) & 1) == 0)
  {
    self->_contentInsets = a3;
    [(TVRTouchpadView *)self setNeedsLayout];
  }
}

- (void)_notifyConfigurationHandler:(BOOL)a3
{
  self->_highlighted = a3;
  configurationHandler = self->_configurationHandler;
  if (configurationHandler)
  {
    configurationHandler[2](configurationHandler, a3);
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