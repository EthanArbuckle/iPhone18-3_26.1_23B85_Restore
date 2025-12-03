@interface SBPowerDownView
- (SBPowerDownViewDelegate)powerDownDelegate;
- (void)_cancelButtonTapped;
- (void)_didTapFindMy;
- (void)_idleTimerFired;
- (void)_powerDownSliderDidBeginSlide;
- (void)_powerDownSliderDidCancelSlide;
- (void)_powerDownSliderDidCompleteSlide;
- (void)_powerDownSliderDidUpdateSlideWithValue:(double)value;
- (void)setPowerDownDelegate:(id)delegate;
@end

@implementation SBPowerDownView

- (void)_powerDownSliderDidBeginSlide
{
  powerDownDelegate = [(SBPowerDownView *)self powerDownDelegate];
  if (objc_opt_respondsToSelector())
  {
    [powerDownDelegate powerDownViewDidBeginSlide:self];
  }

  v4.receiver = self;
  v4.super_class = SBPowerDownView;
  [(SBUIPowerDownView *)&v4 _powerDownSliderDidBeginSlide];
}

- (void)_powerDownSliderDidUpdateSlideWithValue:(double)value
{
  powerDownDelegate = [(SBPowerDownView *)self powerDownDelegate];
  if (objc_opt_respondsToSelector())
  {
    [powerDownDelegate powerDownView:self didUpdateSlideWithValue:value];
  }

  v6.receiver = self;
  v6.super_class = SBPowerDownView;
  [(SBUIPowerDownView *)&v6 _powerDownSliderDidUpdateSlideWithValue:value];
}

- (void)_powerDownSliderDidCompleteSlide
{
  powerDownDelegate = [(SBPowerDownView *)self powerDownDelegate];
  if ([(SBUIPowerDownView *)self deviceSupportsFindMy]&& (v4 = [(SBUIPowerDownView *)self shouldPowerDownViewShowFindMyAlert], powerDownDelegate) && v4)
  {
    v9.receiver = self;
    v9.super_class = SBPowerDownView;
    [(SBUIPowerDownView *)&v9 _prepareViewsForAlert];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __51__SBPowerDownView__powerDownSliderDidCompleteSlide__block_invoke;
    v7[3] = &unk_2783A92D8;
    v7[4] = self;
    v8 = powerDownDelegate;
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __51__SBPowerDownView__powerDownSliderDidCompleteSlide__block_invoke_2;
    v6[3] = &unk_2783A8C18;
    v6[4] = self;
    [v8 showPowerDownFindMyAlertWithProceed:v7 cancelCompletion:v6];
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      [powerDownDelegate powerDownViewDidCompleteSlide:self];
    }

    v5.receiver = self;
    v5.super_class = SBPowerDownView;
    [(SBUIPowerDownView *)&v5 _powerDownSliderDidCompleteSlide];
  }
}

id __51__SBPowerDownView__powerDownSliderDidCompleteSlide__block_invoke(uint64_t a1)
{
  [*(a1 + 32) setShouldPowerDownViewShowFindMyAlert:0];
  if (objc_opt_respondsToSelector())
  {
    [*(a1 + 40) powerDownViewDidCompleteSlide:*(a1 + 32)];
  }

  v3.receiver = *(a1 + 32);
  v3.super_class = SBPowerDownView;
  return objc_msgSendSuper2(&v3, sel__powerDownSliderDidCompleteSlide);
}

- (void)_powerDownSliderDidCancelSlide
{
  powerDownDelegate = [(SBPowerDownView *)self powerDownDelegate];
  if (objc_opt_respondsToSelector())
  {
    [powerDownDelegate powerDownViewDidCancelSlide:self];
  }

  v4.receiver = self;
  v4.super_class = SBPowerDownView;
  [(SBUIPowerDownView *)&v4 _powerDownSliderDidCancelSlide];
}

- (void)_cancelButtonTapped
{
  powerDownDelegate = [(SBPowerDownView *)self powerDownDelegate];
  if (objc_opt_respondsToSelector())
  {
    [powerDownDelegate powerDownViewDidReceiveCancelButtonAction:self];
  }

  v4.receiver = self;
  v4.super_class = SBPowerDownView;
  [(SBUIPowerDownView *)&v4 _cancelButtonTapped];
}

- (void)_didTapFindMy
{
  powerDownDelegate = [(SBPowerDownView *)self powerDownDelegate];
  v4.receiver = self;
  v4.super_class = SBPowerDownView;
  [(SBUIPowerDownView *)&v4 _prepareViewsForAlert];
  [powerDownDelegate showPowerDownFindMyAlert];
}

- (void)_idleTimerFired
{
  powerDownDelegate = [(SBPowerDownView *)self powerDownDelegate];
  if (objc_opt_respondsToSelector())
  {
    [powerDownDelegate powerDownViewDidFireIdleTimer:self];
  }

  v4.receiver = self;
  v4.super_class = SBPowerDownView;
  [(SBUIPowerDownView *)&v4 _idleTimerFired];
}

- (SBPowerDownViewDelegate)powerDownDelegate
{
  v4.receiver = self;
  v4.super_class = SBPowerDownView;
  delegate = [(SBUIPowerDownView *)&v4 delegate];

  return delegate;
}

- (void)setPowerDownDelegate:(id)delegate
{
  v3.receiver = self;
  v3.super_class = SBPowerDownView;
  [(SBUIPowerDownView *)&v3 setDelegate:delegate];
}

@end