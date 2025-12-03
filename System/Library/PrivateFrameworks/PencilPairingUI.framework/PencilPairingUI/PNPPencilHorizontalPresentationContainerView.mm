@interface PNPPencilHorizontalPresentationContainerView
- (CGSize)intrinsicContentSize;
- (void)layoutSubviews;
- (void)setChargingStatusView:(id)view;
- (void)setDeviceState:(id)state;
- (void)setPencilView:(id)view;
@end

@implementation PNPPencilHorizontalPresentationContainerView

- (void)layoutSubviews
{
  pencilView = [(PNPPencilHorizontalPresentationContainerView *)self pencilView];
  v4 = objc_opt_new();
  [pencilView intrinsicSizeForDeviceState:v4];

  [(PNPPencilHorizontalPresentationContainerView *)self bounds];
  traitCollection = [(PNPPencilHorizontalPresentationContainerView *)self traitCollection];
  [traitCollection displayScale];
  v37 = v6;
  UIRectCenteredIntegralRectScale();
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;

  [MEMORY[0x277CD9FF0] begin];
  [MEMORY[0x277CD9FF0] setDisableActions:1];
  pencilView2 = [(PNPPencilHorizontalPresentationContainerView *)self pencilView];
  v16 = *(MEMORY[0x277CBF2C0] + 16);
  v38 = *MEMORY[0x277CBF2C0];
  v39 = v16;
  v40 = *(MEMORY[0x277CBF2C0] + 32);
  [pencilView2 setTransform:&v38];

  pencilView3 = [(PNPPencilHorizontalPresentationContainerView *)self pencilView];
  [pencilView3 setFrame:{v8, v10, v12, v14}];

  pencilView4 = [(PNPPencilHorizontalPresentationContainerView *)self pencilView];
  pencilView5 = [(PNPPencilHorizontalPresentationContainerView *)self pencilView];
  pencilView6 = [(PNPPencilHorizontalPresentationContainerView *)self pencilView];
  deviceState = [pencilView6 deviceState];
  if (pencilView5)
  {
    [pencilView5 transformForDeviceState:deviceState];
  }

  else
  {
    v39 = 0u;
    v40 = 0u;
    v38 = 0u;
  }

  [pencilView4 setTransform:&v38];

  [MEMORY[0x277CD9FF0] commit];
  pencilView7 = [(PNPPencilHorizontalPresentationContainerView *)self pencilView];
  [pencilView7 setSpinning:1];

  pencilView8 = [(PNPPencilHorizontalPresentationContainerView *)self pencilView];
  if ([(PNPPencilHorizontalPresentationContainerView *)self showsChargingStatusView])
  {
    v24 = 0.0;
  }

  else
  {
    v24 = 1.0;
  }

  [pencilView8 setAlpha:v24];

  chargingStatusView = [(PNPPencilHorizontalPresentationContainerView *)self chargingStatusView];
  if ([(PNPPencilHorizontalPresentationContainerView *)self showsChargingStatusView])
  {
    v26 = 1.0;
  }

  else
  {
    v26 = 0.0;
  }

  [chargingStatusView setAlpha:v26];

  chargingStatusView2 = [(PNPPencilHorizontalPresentationContainerView *)self chargingStatusView];
  [chargingStatusView2 intrinsicContentSize];

  [(PNPPencilHorizontalPresentationContainerView *)self bounds];
  UIRectCenteredIntegralRect();
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v35 = v34;
  chargingStatusView3 = [(PNPPencilHorizontalPresentationContainerView *)self chargingStatusView];
  [chargingStatusView3 setFrame:{v29, v31, v33, v35}];
}

- (void)setPencilView:(id)view
{
  viewCopy = view;
  pencilView = [(PNPPencilHorizontalPresentationContainerView *)self pencilView];

  if (pencilView != viewCopy)
  {
    [(PNPPencilView *)self->_pencilView removeFromSuperview];
    objc_storeStrong(&self->_pencilView, view);
    if (self->_pencilView)
    {
      [(PNPPencilHorizontalPresentationContainerView *)self addSubview:?];
      [(PNPPencilHorizontalPresentationContainerView *)self setNeedsLayout];
    }
  }
}

- (void)setChargingStatusView:(id)view
{
  viewCopy = view;
  chargingStatusView = [(PNPPencilHorizontalPresentationContainerView *)self chargingStatusView];

  if (chargingStatusView != viewCopy)
  {
    [(PNPChargingStatusView *)self->_chargingStatusView removeFromSuperview];
    objc_storeStrong(&self->_chargingStatusView, view);
    if (self->_chargingStatusView)
    {
      [(PNPPencilHorizontalPresentationContainerView *)self addSubview:?];
      [(PNPPencilHorizontalPresentationContainerView *)self setNeedsLayout];
    }
  }
}

- (void)setDeviceState:(id)state
{
  objc_storeStrong(&self->_deviceState, state);
  stateCopy = state;
  [(PNPPencilView *)self->_pencilView setDeviceState:stateCopy];
  [(PNPChargingStatusView *)self->_chargingStatusView setDeviceState:stateCopy];

  [(PNPPencilHorizontalPresentationContainerView *)self setNeedsLayout];
}

- (CGSize)intrinsicContentSize
{
  if ([(PNPPencilHorizontalPresentationContainerView *)self showsChargingStatusView])
  {
    chargingStatusView = self->_chargingStatusView;

    [(PNPChargingStatusView *)chargingStatusView intrinsicContentSize];
  }

  else
  {
    pencilView = [(PNPPencilHorizontalPresentationContainerView *)self pencilView];
    pencilView2 = [(PNPPencilHorizontalPresentationContainerView *)self pencilView];
    deviceState = [pencilView2 deviceState];
    [pencilView comfortableContainingSizeForDeviceState:deviceState];
    v10 = v9;
    v12 = v11;

    v4 = v10;
    v5 = v12;
  }

  result.height = v5;
  result.width = v4;
  return result;
}

@end