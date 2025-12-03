@interface PNPPairingView
- (CGAffineTransform)_pencilTransformForState:(SEL)state deviceState:(unint64_t)deviceState;
- (CGSize)_intrinsicContentSizeForState:(unint64_t)state deviceState:(id)deviceState;
- (CGSize)_pencilSizeForState:(unint64_t)state;
- (CGSize)intrinsicContentSize;
- (PNPPairingView)initWithFrame:(CGRect)frame;
- (PNPPairingViewDelegate)delegate;
- (id)backgroundColorForWizardController:(id)controller;
- (void)layoutSubviews;
- (void)setChargingStatusView:(id)view;
- (void)setDeviceState:(id)state;
- (void)setShowWizardContents:(BOOL)contents;
- (void)setState:(unint64_t)state;
- (void)transitionToWizard;
- (void)unhideWizardIfNecessary;
- (void)wizardTransitionFinished;
- (void)wizardViewRequestsDismiss:(id)dismiss;
@end

@implementation PNPPairingView

- (void)layoutSubviews
{
  pencilView = self->_pencilView;
  deviceState = [(PNPPairingView *)self deviceState];
  [(PNPPencilView *)pencilView setDeviceState:deviceState];

  [(PNPPairingView *)self bounds];
  v5 = MEMORY[0x277CBF3A0];
  v6 = *MEMORY[0x277CBF3A0];
  v7 = *(MEMORY[0x277CBF3A0] + 8);
  deviceState2 = [(PNPPairingView *)self deviceState];
  [(PNPPairingView *)self _intrinsicContentSizeForState:1 deviceState:deviceState2];
  v10 = v9;
  v12 = v11;

  view = [(PNPWizardViewController *)self->_wizardViewController view];
  [view setFrame:{v6, v7, v10, v12}];

  state = [(PNPPairingView *)self state];
  deviceState3 = [(PNPPairingView *)self deviceState];
  if (state == 1 || (v16 = 1.0, [(PNPPairingView *)self showsChargingStatusView]))
  {
    v16 = 0.0;
  }

  if (state)
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
      [(PNPPairingView *)self _pencilSizeForState:state];
      v26 = v25;
      v28 = v27;
      x = self->_pencilSpinningRect.origin.x;
      y = self->_pencilSpinningRect.origin.y;
      view2 = [(PNPWizardViewController *)self->_wizardViewController view];
      [(PNPPairingView *)self convertRect:view2 fromView:x, y, v26, v28];
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

  [(PNPPencilView *)self->_pencilView setSpinning:state == 0];
  [(PNPPencilView *)self->_pencilView setAlpha:v16];
  view3 = [(PNPWizardViewController *)self->_wizardViewController view];
  if ([(PNPPairingView *)self showsChargingStatusView])
  {
    v37 = 0.0;
  }

  else
  {
    v37 = 1.0;
  }

  [view3 setAlpha:v37];

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
  [(PNPPairingView *)self _pencilTransformForState:state deviceState:deviceState3];
  [(PNPPencilView *)v40 setTransform:v53];
  [MEMORY[0x277CD9FF0] commit];
  chargingStatusView = [(PNPPairingView *)self chargingStatusView];
  if ([(PNPPairingView *)self showsChargingStatusView])
  {
    v42 = 1.0;
  }

  else
  {
    v42 = 0.0;
  }

  [chargingStatusView setAlpha:v42];

  chargingStatusView2 = [(PNPPairingView *)self chargingStatusView];
  [chargingStatusView2 intrinsicContentSize];

  [(PNPPairingView *)self bounds];
  UIRectCenteredIntegralRect();
  v45 = v44;
  v47 = v46;
  v49 = v48;
  v51 = v50;
  chargingStatusView3 = [(PNPPairingView *)self chargingStatusView];
  [chargingStatusView3 setFrame:{v45, v47, v49, v51}];
}

- (CGSize)_intrinsicContentSizeForState:(unint64_t)state deviceState:(id)deviceState
{
  if (state)
  {
    v5 = objc_opt_class();

    [v5 preferredContentSize];
  }

  else
  {
    pencilView = self->_pencilView;

    [(PNPPencilView *)pencilView comfortableContainingSizeForDeviceState:deviceState];
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
    state = [(PNPPairingView *)self state];
    deviceState = [(PNPPairingView *)self deviceState];
    [(PNPPairingView *)self _intrinsicContentSizeForState:state deviceState:deviceState];
    v9 = v8;
    v11 = v10;

    v4 = v9;
    v5 = v11;
  }

  result.height = v5;
  result.width = v4;
  return result;
}

- (CGSize)_pencilSizeForState:(unint64_t)state
{
  if (state)
  {
    view = [(PNPWizardViewController *)self->_wizardViewController view];
    [view frame];
    v6 = v5 + self->_pencilSpinningRect.origin.x * -2.0;
    [(PNPPencilView *)self->_pencilView intrinsicContentSize];
    v8 = v7 + -20.0;
  }

  else
  {
    pencilView = self->_pencilView;
    view = objc_opt_new();
    [(PNPPencilView *)pencilView intrinsicSizeForDeviceState:view];
    v6 = v10;
    v8 = v11;
  }

  v12 = v6;
  v13 = v8;
  result.height = v13;
  result.width = v12;
  return result;
}

- (CGAffineTransform)_pencilTransformForState:(SEL)state deviceState:(unint64_t)deviceState
{
  pencilView = a5;
  v9 = pencilView;
  if (deviceState == 1 && self->_finishedWizardTransition)
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

- (void)setDeviceState:(id)state
{
  objc_storeStrong(&self->_deviceState, state);
  stateCopy = state;
  pencilView = self->_pencilView;
  deviceState = [(PNPPairingView *)self deviceState];
  [(PNPPencilView *)pencilView setDeviceState:deviceState];

  [(PNPWizardViewController *)self->_wizardViewController deviceStateDidChange];
  delegate = [(PNPPairingView *)self delegate];
  [delegate intrinsicContentSizeDidChangeForView:self];

  [(PNPPairingView *)self setNeedsLayout];
}

- (void)setState:(unint64_t)state
{
  if (self->_state != state)
  {
    self->_state = state;
    delegate = [(PNPPairingView *)self delegate];
    [delegate intrinsicContentSizeDidChangeForView:self];

    [(PNPPairingView *)self setNeedsLayout];
  }
}

- (void)setShowWizardContents:(BOOL)contents
{
  if (self->_showWizardContents != contents)
  {
    self->_showWizardContents = contents;
    [(PNPPairingView *)self setNeedsLayout];
  }
}

- (void)transitionToWizard
{
  pencilView = [(PNPPairingView *)self pencilView];
  [pencilView setAlpha:0.0];

  [(PNPPairingView *)self unhideWizardIfNecessary];
}

- (void)unhideWizardIfNecessary
{
  view = [(PNPWizardViewController *)self->_wizardViewController view];
  [view setHidden:0];

  view2 = [(PNPWizardViewController *)self->_wizardViewController view];
  [view2 setAlpha:1.0];
}

- (void)wizardTransitionFinished
{
  self->_finishedWizardTransition = 1;
  pencilView = [(PNPPairingView *)self pencilView];
  [pencilView cleanupSpinningResources];

  [(PNPPairingView *)self setNeedsLayout];
}

- (void)wizardViewRequestsDismiss:(id)dismiss
{
  delegate = [(PNPPairingView *)self delegate];
  [delegate viewRequestsDismiss:self];
}

- (id)backgroundColorForWizardController:(id)controller
{
  superview = [(PNPPairingView *)self superview];
  backgroundColor = [superview backgroundColor];

  return backgroundColor;
}

- (void)setChargingStatusView:(id)view
{
  viewCopy = view;
  chargingStatusView = [(PNPPairingView *)self chargingStatusView];

  if (chargingStatusView != viewCopy)
  {
    [(PNPChargingStatusView *)self->_chargingStatusView removeFromSuperview];
    objc_storeStrong(&self->_chargingStatusView, view);
    if (self->_chargingStatusView)
    {
      [(PNPPairingView *)self addSubview:?];
      [(PNPPairingView *)self setNeedsLayout];
    }
  }
}

- (PNPPairingView)initWithFrame:(CGRect)frame
{
  v13.receiver = self;
  v13.super_class = PNPPairingView;
  v3 = [(PNPPairingView *)&v13 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = [[PNPPencilView alloc] initWithVariant:0];
  pencilView = v3->_pencilView;
  v3->_pencilView = v4;

  [(PNPPairingView *)v3 addSubview:v3->_pencilView];
  v6 = [[PNPWizardViewController alloc] initWithNibName:0 bundle:0];
  wizardViewController = v3->_wizardViewController;
  v3->_wizardViewController = v6;

  [(PNPWizardViewController *)v3->_wizardViewController setWizardDelegate:v3];
  view = [(PNPWizardViewController *)v3->_wizardViewController view];
  [view setAlpha:0.0];

  view2 = [(PNPWizardViewController *)v3->_wizardViewController view];
  [view2 setHidden:1];

  view3 = [(PNPWizardViewController *)v3->_wizardViewController view];
  [view3 setFrame:{0.0, 0.0, 176.0, 176.0}];

  view4 = [(PNPWizardViewController *)v3->_wizardViewController view];
  [(PNPPairingView *)v3 addSubview:view4];

  return v3;
}

- (PNPPairingViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end