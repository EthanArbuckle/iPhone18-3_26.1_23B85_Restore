@interface PNPPencilHorizontalPresentationContainerView
- (CGSize)intrinsicContentSize;
- (void)layoutSubviews;
- (void)setChargingStatusView:(id)a3;
- (void)setDeviceState:(id)a3;
- (void)setPencilView:(id)a3;
@end

@implementation PNPPencilHorizontalPresentationContainerView

- (void)layoutSubviews
{
  v3 = [(PNPPencilHorizontalPresentationContainerView *)self pencilView];
  v4 = objc_opt_new();
  [v3 intrinsicSizeForDeviceState:v4];

  [(PNPPencilHorizontalPresentationContainerView *)self bounds];
  v5 = [(PNPPencilHorizontalPresentationContainerView *)self traitCollection];
  [v5 displayScale];
  v37 = v6;
  UIRectCenteredIntegralRectScale();
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;

  [MEMORY[0x277CD9FF0] begin];
  [MEMORY[0x277CD9FF0] setDisableActions:1];
  v15 = [(PNPPencilHorizontalPresentationContainerView *)self pencilView];
  v16 = *(MEMORY[0x277CBF2C0] + 16);
  v38 = *MEMORY[0x277CBF2C0];
  v39 = v16;
  v40 = *(MEMORY[0x277CBF2C0] + 32);
  [v15 setTransform:&v38];

  v17 = [(PNPPencilHorizontalPresentationContainerView *)self pencilView];
  [v17 setFrame:{v8, v10, v12, v14}];

  v18 = [(PNPPencilHorizontalPresentationContainerView *)self pencilView];
  v19 = [(PNPPencilHorizontalPresentationContainerView *)self pencilView];
  v20 = [(PNPPencilHorizontalPresentationContainerView *)self pencilView];
  v21 = [v20 deviceState];
  if (v19)
  {
    [v19 transformForDeviceState:v21];
  }

  else
  {
    v39 = 0u;
    v40 = 0u;
    v38 = 0u;
  }

  [v18 setTransform:&v38];

  [MEMORY[0x277CD9FF0] commit];
  v22 = [(PNPPencilHorizontalPresentationContainerView *)self pencilView];
  [v22 setSpinning:1];

  v23 = [(PNPPencilHorizontalPresentationContainerView *)self pencilView];
  if ([(PNPPencilHorizontalPresentationContainerView *)self showsChargingStatusView])
  {
    v24 = 0.0;
  }

  else
  {
    v24 = 1.0;
  }

  [v23 setAlpha:v24];

  v25 = [(PNPPencilHorizontalPresentationContainerView *)self chargingStatusView];
  if ([(PNPPencilHorizontalPresentationContainerView *)self showsChargingStatusView])
  {
    v26 = 1.0;
  }

  else
  {
    v26 = 0.0;
  }

  [v25 setAlpha:v26];

  v27 = [(PNPPencilHorizontalPresentationContainerView *)self chargingStatusView];
  [v27 intrinsicContentSize];

  [(PNPPencilHorizontalPresentationContainerView *)self bounds];
  UIRectCenteredIntegralRect();
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v36 = [(PNPPencilHorizontalPresentationContainerView *)self chargingStatusView];
  [v36 setFrame:{v29, v31, v33, v35}];
}

- (void)setPencilView:(id)a3
{
  v6 = a3;
  v5 = [(PNPPencilHorizontalPresentationContainerView *)self pencilView];

  if (v5 != v6)
  {
    [(PNPPencilView *)self->_pencilView removeFromSuperview];
    objc_storeStrong(&self->_pencilView, a3);
    if (self->_pencilView)
    {
      [(PNPPencilHorizontalPresentationContainerView *)self addSubview:?];
      [(PNPPencilHorizontalPresentationContainerView *)self setNeedsLayout];
    }
  }
}

- (void)setChargingStatusView:(id)a3
{
  v6 = a3;
  v5 = [(PNPPencilHorizontalPresentationContainerView *)self chargingStatusView];

  if (v5 != v6)
  {
    [(PNPChargingStatusView *)self->_chargingStatusView removeFromSuperview];
    objc_storeStrong(&self->_chargingStatusView, a3);
    if (self->_chargingStatusView)
    {
      [(PNPPencilHorizontalPresentationContainerView *)self addSubview:?];
      [(PNPPencilHorizontalPresentationContainerView *)self setNeedsLayout];
    }
  }
}

- (void)setDeviceState:(id)a3
{
  objc_storeStrong(&self->_deviceState, a3);
  v5 = a3;
  [(PNPPencilView *)self->_pencilView setDeviceState:v5];
  [(PNPChargingStatusView *)self->_chargingStatusView setDeviceState:v5];

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
    v6 = [(PNPPencilHorizontalPresentationContainerView *)self pencilView];
    v7 = [(PNPPencilHorizontalPresentationContainerView *)self pencilView];
    v8 = [v7 deviceState];
    [v6 comfortableContainingSizeForDeviceState:v8];
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