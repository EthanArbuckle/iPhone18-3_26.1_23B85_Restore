@interface PNPPairingView
- (CGAffineTransform)_pencilTransformForState:(SEL)a3 deviceState:(unint64_t)a4;
- (CGSize)_intrinsicContentSizeForState:(unint64_t)a3 deviceState:(id)a4;
- (CGSize)_pencilSizeForState:(unint64_t)a3;
- (CGSize)intrinsicContentSize;
- (PNPPairingView)initWithFrame:(CGRect)a3;
- (PNPPairingViewDelegate)delegate;
- (id)backgroundColorForWizardController:(id)a3;
- (void)layoutSubviews;
- (void)setChargingStatusView:(id)a3;
- (void)setDeviceState:(id)a3;
- (void)setShowWizardContents:(BOOL)a3;
- (void)setState:(unint64_t)a3;
- (void)transitionToWizard;
- (void)unhideWizardIfNecessary;
- (void)wizardTransitionFinished;
- (void)wizardViewRequestsDismiss:(id)a3;
@end

@implementation PNPPairingView

- (void)layoutSubviews
{
  pencilView = self->_pencilView;
  v4 = [(PNPPairingView *)self deviceState];
  [(PNPPencilView *)pencilView setDeviceState:v4];

  [(PNPPairingView *)self bounds];
  v5 = MEMORY[0x277CBF3A0];
  v6 = *MEMORY[0x277CBF3A0];
  v7 = *(MEMORY[0x277CBF3A0] + 8);
  v8 = [(PNPPairingView *)self deviceState];
  [(PNPPairingView *)self _intrinsicContentSizeForState:1 deviceState:v8];
  v10 = v9;
  v12 = v11;

  v13 = [(PNPWizardViewController *)self->_wizardViewController view];
  [v13 setFrame:{v6, v7, v10, v12}];

  v14 = [(PNPPairingView *)self state];
  v15 = [(PNPPairingView *)self deviceState];
  if (v14 == 1 || (v16 = 1.0, [(PNPPairingView *)self showsChargingStatusView]))
  {
    v16 = 0.0;
  }

  if (v14)
  {
    if (self->_finishedWizardTransition)
    {
      v17 = *(v5 + 16);
      v18 = *(v5 + 24);
      v19 = v7;
      v20 = v6;
    }

    else
    {
      [(PNPPairingView *)self _pencilSizeForState:v14];
      v26 = v25;
      v28 = v27;
      x = self->_pencilSpinningRect.origin.x;
      y = self->_pencilSpinningRect.origin.y;
      v31 = [(PNPWizardViewController *)self->_wizardViewController view];
      [(PNPPairingView *)self convertRect:v31 fromView:x, y, v26, v28];
      v20 = v32;
      v19 = v33;
      v17 = v34;
      v18 = v35;
    }
  }

  else
  {
    [(PNPPairingView *)self _pencilSizeForState:0];
    UIRectCenteredIntegralRect();
    v20 = v21;
    v19 = v22;
    v17 = v23;
    v18 = v24;
    self->_pencilSpinningRect.origin.x = v21;
    self->_pencilSpinningRect.origin.y = v22;
    self->_pencilSpinningRect.size.width = v23;
    self->_pencilSpinningRect.size.height = v24;
  }

  [(PNPPencilView *)self->_pencilView setSpinning:v14 == 0];
  [(PNPPencilView *)self->_pencilView setAlpha:v16];
  v36 = [(PNPWizardViewController *)self->_wizardViewController view];
  if ([(PNPPairingView *)self showsChargingStatusView])
  {
    v37 = 0.0;
  }

  else
  {
    v37 = 1.0;
  }

  [v36 setAlpha:v37];

  [MEMORY[0x277CD9FF0] begin];
  [MEMORY[0x277CD9FF0] setDisableActions:1];
  v38 = self->_pencilView;
  v39 = *(MEMORY[0x277CBF2C0] + 16);
  v53[0] = *MEMORY[0x277CBF2C0];
  v53[1] = v39;
  v53[2] = *(MEMORY[0x277CBF2C0] + 32);
  [(PNPPencilView *)v38 setTransform:v53];
  [(PNPPencilView *)self->_pencilView setFrame:v20, v19, v17, v18];
  v40 = self->_pencilView;
  [(PNPPairingView *)self _pencilTransformForState:v14 deviceState:v15];
  [(PNPPencilView *)v40 setTransform:v53];
  [MEMORY[0x277CD9FF0] commit];
  v41 = [(PNPPairingView *)self chargingStatusView];
  if ([(PNPPairingView *)self showsChargingStatusView])
  {
    v42 = 1.0;
  }

  else
  {
    v42 = 0.0;
  }

  [v41 setAlpha:v42];

  v43 = [(PNPPairingView *)self chargingStatusView];
  [v43 intrinsicContentSize];

  [(PNPPairingView *)self bounds];
  UIRectCenteredIntegralRect();
  v45 = v44;
  v47 = v46;
  v49 = v48;
  v51 = v50;
  v52 = [(PNPPairingView *)self chargingStatusView];
  [v52 setFrame:{v45, v47, v49, v51}];
}

- (CGSize)_intrinsicContentSizeForState:(unint64_t)a3 deviceState:(id)a4
{
  if (a3)
  {
    v5 = objc_opt_class();

    [v5 preferredContentSize];
  }

  else
  {
    pencilView = self->_pencilView;

    [(PNPPencilView *)pencilView comfortableContainingSizeForDeviceState:a4];
  }

  result.height = v7;
  result.width = v6;
  return result;
}

- (CGSize)intrinsicContentSize
{
  if ([(PNPPairingView *)self showsChargingStatusView])
  {
    chargingStatusView = self->_chargingStatusView;

    [(PNPChargingStatusView *)chargingStatusView intrinsicContentSize];
  }

  else
  {
    v6 = [(PNPPairingView *)self state];
    v7 = [(PNPPairingView *)self deviceState];
    [(PNPPairingView *)self _intrinsicContentSizeForState:v6 deviceState:v7];
    v9 = v8;
    v11 = v10;

    v4 = v9;
    v5 = v11;
  }

  result.height = v5;
  result.width = v4;
  return result;
}

- (CGSize)_pencilSizeForState:(unint64_t)a3
{
  if (a3)
  {
    v4 = [(PNPWizardViewController *)self->_wizardViewController view];
    [v4 frame];
    v6 = v5 + self->_pencilSpinningRect.origin.x * -2.0;
    [(PNPPencilView *)self->_pencilView intrinsicContentSize];
    v8 = v7 + -20.0;
  }

  else
  {
    pencilView = self->_pencilView;
    v4 = objc_opt_new();
    [(PNPPencilView *)pencilView intrinsicSizeForDeviceState:v4];
    v6 = v10;
    v8 = v11;
  }

  v12 = v6;
  v13 = v8;
  result.height = v13;
  result.width = v12;
  return result;
}

- (CGAffineTransform)_pencilTransformForState:(SEL)a3 deviceState:(unint64_t)a4
{
  pencilView = a5;
  v9 = pencilView;
  if (a4 == 1 && self->_finishedWizardTransition)
  {
    v10 = MEMORY[0x277CBF2C0];
    v11 = *(MEMORY[0x277CBF2C0] + 16);
    *&retstr->a = *MEMORY[0x277CBF2C0];
    *&retstr->c = v11;
    *&retstr->tx = *(v10 + 32);
  }

  else
  {
    pencilView = self->_pencilView;
    if (pencilView)
    {
      v13 = v9;
      pencilView = [(PNPPencilView *)pencilView transformForDeviceState:v9];
      v9 = v13;
    }

    else
    {
      *&retstr->c = 0u;
      *&retstr->tx = 0u;
      *&retstr->a = 0u;
    }
  }

  return MEMORY[0x2821F96F8](pencilView, v9);
}

- (void)setDeviceState:(id)a3
{
  objc_storeStrong(&self->_deviceState, a3);
  v5 = a3;
  pencilView = self->_pencilView;
  v7 = [(PNPPairingView *)self deviceState];
  [(PNPPencilView *)pencilView setDeviceState:v7];

  [(PNPWizardViewController *)self->_wizardViewController deviceStateDidChange];
  v8 = [(PNPPairingView *)self delegate];
  [v8 intrinsicContentSizeDidChangeForView:self];

  [(PNPPairingView *)self setNeedsLayout];
}

- (void)setState:(unint64_t)a3
{
  if (self->_state != a3)
  {
    self->_state = a3;
    v5 = [(PNPPairingView *)self delegate];
    [v5 intrinsicContentSizeDidChangeForView:self];

    [(PNPPairingView *)self setNeedsLayout];
  }
}

- (void)setShowWizardContents:(BOOL)a3
{
  if (self->_showWizardContents != a3)
  {
    self->_showWizardContents = a3;
    [(PNPPairingView *)self setNeedsLayout];
  }
}

- (void)transitionToWizard
{
  v3 = [(PNPPairingView *)self pencilView];
  [v3 setAlpha:0.0];

  [(PNPPairingView *)self unhideWizardIfNecessary];
}

- (void)unhideWizardIfNecessary
{
  v3 = [(PNPWizardViewController *)self->_wizardViewController view];
  [v3 setHidden:0];

  v4 = [(PNPWizardViewController *)self->_wizardViewController view];
  [v4 setAlpha:1.0];
}

- (void)wizardTransitionFinished
{
  self->_finishedWizardTransition = 1;
  v3 = [(PNPPairingView *)self pencilView];
  [v3 cleanupSpinningResources];

  [(PNPPairingView *)self setNeedsLayout];
}

- (void)wizardViewRequestsDismiss:(id)a3
{
  v4 = [(PNPPairingView *)self delegate];
  [v4 viewRequestsDismiss:self];
}

- (id)backgroundColorForWizardController:(id)a3
{
  v3 = [(PNPPairingView *)self superview];
  v4 = [v3 backgroundColor];

  return v4;
}

- (void)setChargingStatusView:(id)a3
{
  v6 = a3;
  v5 = [(PNPPairingView *)self chargingStatusView];

  if (v5 != v6)
  {
    [(PNPChargingStatusView *)self->_chargingStatusView removeFromSuperview];
    objc_storeStrong(&self->_chargingStatusView, a3);
    if (self->_chargingStatusView)
    {
      [(PNPPairingView *)self addSubview:?];
      [(PNPPairingView *)self setNeedsLayout];
    }
  }
}

- (PNPPairingView)initWithFrame:(CGRect)a3
{
  v13.receiver = self;
  v13.super_class = PNPPairingView;
  v3 = [(PNPPairingView *)&v13 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = [[PNPPencilView alloc] initWithVariant:0];
  pencilView = v3->_pencilView;
  v3->_pencilView = v4;

  [(PNPPairingView *)v3 addSubview:v3->_pencilView];
  v6 = [[PNPWizardViewController alloc] initWithNibName:0 bundle:0];
  wizardViewController = v3->_wizardViewController;
  v3->_wizardViewController = v6;

  [(PNPWizardViewController *)v3->_wizardViewController setWizardDelegate:v3];
  v8 = [(PNPWizardViewController *)v3->_wizardViewController view];
  [v8 setAlpha:0.0];

  v9 = [(PNPWizardViewController *)v3->_wizardViewController view];
  [v9 setHidden:1];

  v10 = [(PNPWizardViewController *)v3->_wizardViewController view];
  [v10 setFrame:{0.0, 0.0, 176.0, 176.0}];

  v11 = [(PNPWizardViewController *)v3->_wizardViewController view];
  [(PNPPairingView *)v3 addSubview:v11];

  return v3;
}

- (PNPPairingViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end