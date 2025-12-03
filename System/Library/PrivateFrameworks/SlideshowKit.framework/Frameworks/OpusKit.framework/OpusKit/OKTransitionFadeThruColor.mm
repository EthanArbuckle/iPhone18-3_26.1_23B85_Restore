@interface OKTransitionFadeThruColor
+ (id)supportedSettings;
- (OKTransitionFadeThruColor)initWithSettings:(id)settings;
- (void)_transitionInView:(id)view fromSubview:(id)subview toSubview:(id)toSubview wasInteractive:(BOOL)interactive duration:(double)duration doEaseIn:(BOOL)in doEaseOut:(BOOL)out isCompleting:(BOOL)self0 wasCancelled:(BOOL)self1 fromProgress:(double)self2 completionHandler:(id)self3;
- (void)dealloc;
- (void)makeCurrentTransitionInteractiveWithContext:(id)context andProgress:(double)progress;
- (void)startInteractiveTransitionWithContext:(id)context;
- (void)updateInteractiveTransitionWithContext:(id)context andProgress:(double)progress;
@end

@implementation OKTransitionFadeThruColor

- (OKTransitionFadeThruColor)initWithSettings:(id)settings
{
  v7.receiver = self;
  v7.super_class = OKTransitionFadeThruColor;
  v4 = [(OKTransition *)&v7 initWithSettings:?];
  if (v4)
  {
    v5 = [settings objectForKey:@"color"];
    if (v5)
    {
      v4->_color = v5;
    }
  }

  return v4;
}

- (void)dealloc
{
  colorView = self->_colorView;
  if (colorView)
  {

    self->_colorView = 0;
  }

  color = self->_color;
  if (color)
  {

    self->_color = 0;
  }

  v5.receiver = self;
  v5.super_class = OKTransitionFadeThruColor;
  [(OKTransition *)&v5 dealloc];
}

+ (id)supportedSettings
{
  v9[1] = *MEMORY[0x277D85DE8];
  v5.receiver = self;
  v5.super_class = &OBJC_METACLASS___OKTransitionFadeThruColor;
  v2 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:{objc_msgSendSuper2(&v5, sel_supportedSettings)}];
  v8 = @"color";
  v7[0] = &unk_287AF0E30;
  v6[0] = @"type";
  v6[1] = @"default";
  null = [MEMORY[0x277CBEB68] null];
  v6[2] = @"jsExport";
  v7[1] = null;
  v7[2] = @"readwrite";
  v9[0] = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:v6 count:3];
  [v2 addEntriesFromDictionary:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", v9, &v8, 1)}];
  return v2;
}

- (void)_transitionInView:(id)view fromSubview:(id)subview toSubview:(id)toSubview wasInteractive:(BOOL)interactive duration:(double)duration doEaseIn:(BOOL)in doEaseOut:(BOOL)out isCompleting:(BOOL)self0 wasCancelled:(BOOL)self1 fromProgress:(double)self2 completionHandler:(id)self3
{
  interactiveCopy = interactive;
  [view bounds];
  Width = CGRectGetWidth(v48);
  [view bounds];
  Height = CGRectGetHeight(v49);
  v43[0] = MEMORY[0x277D85DD0];
  v43[1] = 3221225472;
  v44 = __169__OKTransitionFadeThruColor__transitionInView_fromSubview_toSubview_wasInteractive_duration_doEaseIn_doEaseOut_isCompleting_wasCancelled_fromProgress_completionHandler___block_invoke;
  v45 = &__block_descriptor_34_e26_v32__0d8___v___16___v___24l;
  inCopy = in;
  outCopy = out;
  v41[0] = MEMORY[0x277D85DD0];
  v41[1] = 3221225472;
  v41[2] = __169__OKTransitionFadeThruColor__transitionInView_fromSubview_toSubview_wasInteractive_duration_doEaseIn_doEaseOut_isCompleting_wasCancelled_fromProgress_completionHandler___block_invoke_4;
  v41[3] = &unk_279C8E5B0;
  cancelledCopy = cancelled;
  v41[4] = self;
  v41[5] = toSubview;
  v41[6] = subview;
  v41[7] = handler;
  if (interactiveCopy)
  {
    if ([toSubview isHidden] == cancelled)
    {
      v38[0] = MEMORY[0x277D85DD0];
      v38[1] = 3221225472;
      v38[2] = __169__OKTransitionFadeThruColor__transitionInView_fromSubview_toSubview_wasInteractive_duration_doEaseIn_doEaseOut_isCompleting_wasCancelled_fromProgress_completionHandler___block_invoke_8;
      v38[3] = &unk_279C8E670;
      v38[4] = self;
      v38[5] = &__block_literal_global_26;
      v24.n128_f64[0] = duration;
      (v44)(v43, v38, v41, v24);
    }

    else
    {
      [(OFUIView *)self->_colorView alpha];
      v26 = (1.0 - v25) * duration;
      [(OFUIView *)self->_colorView alpha];
      v40[0] = MEMORY[0x277D85DD0];
      v40[1] = 3221225472;
      v40[2] = __169__OKTransitionFadeThruColor__transitionInView_fromSubview_toSubview_wasInteractive_duration_doEaseIn_doEaseOut_isCompleting_wasCancelled_fromProgress_completionHandler___block_invoke_5;
      v40[3] = &unk_279C8E670;
      v40[4] = self;
      v40[5] = &__block_literal_global_26;
      v39[0] = MEMORY[0x277D85DD0];
      v39[1] = 3221225472;
      v39[2] = __169__OKTransitionFadeThruColor__transitionInView_fromSubview_toSubview_wasInteractive_duration_doEaseIn_doEaseOut_isCompleting_wasCancelled_fromProgress_completionHandler___block_invoke_6;
      v39[3] = &unk_279C90E60;
      v28.n128_f64[0] = v26 / (2.0 - v27);
      v39[4] = subview;
      v39[5] = toSubview;
      *&v39[10] = duration;
      v39[11] = v28.n128_u64[0];
      v39[6] = self;
      v39[7] = v43;
      v39[8] = &__block_literal_global_26;
      v39[9] = v41;
      (v44)(v43, v40, v39, v28);
    }
  }

  else
  {
    [toSubview setFrame:{0.0, 0.0, Width, Height}];
    [toSubview setHidden:1];
    [view addSubview:toSubview];
    v29 = objc_alloc(MEMORY[0x277D627F8]);
    [view bounds];
    v30 = [v29 initWithFrame:?];
    self->_colorView = v30;
    [(OFUIView *)v30 setAutoresizingMask:18];
    [(OFUIView *)self->_colorView setAlpha:0.0];
    color = self->_color;
    if (!color)
    {
      color = [MEMORY[0x277D75348] blackColor];
    }

    [(OFUIView *)self->_colorView setBackgroundColor:color];
    [view addSubview:self->_colorView];
    v34[0] = MEMORY[0x277D85DD0];
    v34[1] = 3221225472;
    v34[2] = __169__OKTransitionFadeThruColor__transitionInView_fromSubview_toSubview_wasInteractive_duration_doEaseIn_doEaseOut_isCompleting_wasCancelled_fromProgress_completionHandler___block_invoke_9;
    v34[3] = &unk_279C8F520;
    cancelledCopy2 = cancelled;
    v34[5] = view;
    v34[6] = &__block_literal_global_26;
    v32.n128_f64[0] = duration * 0.5;
    *&v34[7] = progress;
    *&v34[8] = duration;
    inCopy2 = in;
    outCopy2 = out;
    v34[4] = self;
    v33[0] = MEMORY[0x277D85DD0];
    v33[1] = 3221225472;
    v33[2] = __169__OKTransitionFadeThruColor__transitionInView_fromSubview_toSubview_wasInteractive_duration_doEaseIn_doEaseOut_isCompleting_wasCancelled_fromProgress_completionHandler___block_invoke_10;
    v33[3] = &unk_279C90E88;
    v33[4] = self;
    v33[5] = subview;
    v33[6] = toSubview;
    v33[7] = v43;
    *&v33[10] = duration;
    v33[8] = &__block_literal_global_26;
    v33[9] = v41;
    (v44)(v43, v34, v33, v32);
  }
}

uint64_t __169__OKTransitionFadeThruColor__transitionInView_fromSubview_toSubview_wasInteractive_duration_doEaseIn_doEaseOut_isCompleting_wasCancelled_fromProgress_completionHandler___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v4 = 131074;
  if (*(a1 + 32))
  {
    v4 = 2;
  }

  v5 = 0x10000;
  if (*(a1 + 33))
  {
    v5 = 0;
  }

  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __169__OKTransitionFadeThruColor__transitionInView_fromSubview_toSubview_wasInteractive_duration_doEaseIn_doEaseOut_isCompleting_wasCancelled_fromProgress_completionHandler___block_invoke_2;
  v7[3] = &unk_279C8E770;
  v7[4] = a3;
  return [MEMORY[0x277D75D18] animateWithDuration:v5 | v4 delay:a2 options:v7 animations:a4 completion:0.0];
}

uint64_t __169__OKTransitionFadeThruColor__transitionInView_fromSubview_toSubview_wasInteractive_duration_doEaseIn_doEaseOut_isCompleting_wasCancelled_fromProgress_completionHandler___block_invoke_4(uint64_t a1)
{
  [*(*(a1 + 32) + 40) removeFromSuperview];
  v2 = *(*(a1 + 32) + 40);
  if (v2)
  {

    *(*(a1 + 32) + 40) = 0;
  }

  v3 = 48;
  if (*(a1 + 64))
  {
    v3 = 40;
  }

  [*(a1 + v3) removeFromSuperview];
  [*(a1 + 48) setHidden:0];
  [*(a1 + 40) setHidden:0];
  result = *(a1 + 56);
  if (result)
  {
    v5 = *(result + 16);

    return v5();
  }

  return result;
}

uint64_t __169__OKTransitionFadeThruColor__transitionInView_fromSubview_toSubview_wasInteractive_duration_doEaseIn_doEaseOut_isCompleting_wasCancelled_fromProgress_completionHandler___block_invoke_6(uint64_t a1)
{
  [*(a1 + 32) setHidden:1];
  [*(a1 + 40) setHidden:0];
  v2 = *(a1 + 80) - *(a1 + 88);
  v6 = MEMORY[0x277D85DD0];
  v7 = 3221225472;
  v8 = __169__OKTransitionFadeThruColor__transitionInView_fromSubview_toSubview_wasInteractive_duration_doEaseIn_doEaseOut_isCompleting_wasCancelled_fromProgress_completionHandler___block_invoke_7;
  v9 = &unk_279C8E670;
  v3 = *(a1 + 56);
  v4 = *(a1 + 64);
  v10 = *(a1 + 48);
  v11 = v4;
  return (*(v3 + 16))(v2);
}

uint64_t __169__OKTransitionFadeThruColor__transitionInView_fromSubview_toSubview_wasInteractive_duration_doEaseIn_doEaseOut_isCompleting_wasCancelled_fromProgress_completionHandler___block_invoke_9(uint64_t a1)
{
  if (*(a1 + 72))
  {
    v2 = 0.0;
  }

  else
  {
    v2 = 1.0;
  }

  (*(*(a1 + 48) + 16))(v2);
  v3 = [MEMORY[0x277CD9E10] animationWithKeyPath:@"progress"];
  [v3 setFromValue:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithDouble:", *(a1 + 56))}];
  [v3 setToValue:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithDouble:", v2)}];
  [v3 setDuration:*(a1 + 64)];
  if (*(a1 + 73))
  {
    v4 = MEMORY[0x277CDA7B8];
  }

  else
  {
    v4 = MEMORY[0x277CDA7C0];
  }

  v5 = MEMORY[0x277CDA7B0];
  if (!*(a1 + 73))
  {
    v5 = MEMORY[0x277CDA7C8];
  }

  if (!*(a1 + 74))
  {
    v4 = v5;
  }

  [v3 setTimingFunction:{objc_msgSend(MEMORY[0x277CD9EF8], "functionWithName:", *v4)}];
  [v3 setRemovedOnCompletion:0];
  v6 = [*(a1 + 40) layer];

  return [v6 addAnimation:v3 forKey:@"progress"];
}

uint64_t __169__OKTransitionFadeThruColor__transitionInView_fromSubview_toSubview_wasInteractive_duration_doEaseIn_doEaseOut_isCompleting_wasCancelled_fromProgress_completionHandler___block_invoke_10(uint64_t a1)
{
  result = [*(a1 + 32) _canComplete];
  if (result)
  {
    [*(a1 + 40) setHidden:1];
    [*(a1 + 48) setHidden:0];
    v3 = *(a1 + 80) * 0.5;
    v6 = MEMORY[0x277D85DD0];
    v7 = 3221225472;
    v8 = __169__OKTransitionFadeThruColor__transitionInView_fromSubview_toSubview_wasInteractive_duration_doEaseIn_doEaseOut_isCompleting_wasCancelled_fromProgress_completionHandler___block_invoke_11;
    v9 = &unk_279C8E670;
    v4 = *(a1 + 56);
    v5 = *(a1 + 64);
    v10 = *(a1 + 32);
    v11 = v5;
    return (*(v4 + 16))(v3);
  }

  return result;
}

- (void)startInteractiveTransitionWithContext:(id)context
{
  v14.receiver = self;
  v14.super_class = OKTransitionFadeThruColor;
  [(OKTransition *)&v14 startInteractiveTransitionWithContext:?];
  fromViewController = [context fromViewController];
  toViewController = [context toViewController];
  [objc_msgSend(context "containerView")];
  [objc_msgSend(toViewController "view")];
  [objc_msgSend(toViewController "view")];
  [objc_msgSend(context "containerView")];
  v11 = objc_alloc(MEMORY[0x277D627F8]);
  [objc_msgSend(context "containerView")];
  v12 = [v11 initWithFrame:?];
  self->_colorView = v12;
  [(OFUIView *)v12 setAutoresizingMask:18];
  [(OFUIView *)self->_colorView setAlpha:0.0];
  color = self->_color;
  if (!color)
  {
    color = [MEMORY[0x277D75348] blackColor];
  }

  [(OFUIView *)self->_colorView setBackgroundColor:color];
  [objc_msgSend(context "containerView")];
}

- (void)updateInteractiveTransitionWithContext:(id)context andProgress:(double)progress
{
  v9.receiver = self;
  v9.super_class = OKTransitionFadeThruColor;
  [OKTransition updateInteractiveTransitionWithContext:sel_updateInteractiveTransitionWithContext_andProgress_ andProgress:?];
  progressCopy = 0.0;
  if (progress >= 0.0)
  {
    progressCopy = progress;
  }

  if (progressCopy <= 1.0)
  {
    v8 = progressCopy;
  }

  else
  {
    v8 = 1.0;
  }

  [objc_msgSend(objc_msgSend(context "fromViewController")];
  [objc_msgSend(objc_msgSend(context "toViewController")];
  [(OFUIView *)self->_colorView setAlpha:fabs(v8 + -0.5) * -2.0 + 1.0];
}

- (void)makeCurrentTransitionInteractiveWithContext:(id)context andProgress:(double)progress
{
  v7.receiver = self;
  v7.super_class = OKTransitionFadeThruColor;
  [(OKTransition *)&v7 makeCurrentTransitionInteractiveWithContext:progress andProgress:?];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __85__OKTransitionFadeThruColor_makeCurrentTransitionInteractiveWithContext_andProgress___block_invoke;
  v6[3] = &unk_279C90078;
  v6[4] = self;
  v6[5] = context;
  [MEMORY[0x277D75D18] animateWithDuration:v6 animations:0 completion:0.0];
}

uint64_t __85__OKTransitionFadeThruColor_makeCurrentTransitionInteractiveWithContext_andProgress___block_invoke(uint64_t a1)
{
  [objc_msgSend(*(*(a1 + 32) + 40) "layer")];
  [objc_msgSend(objc_msgSend(*(a1 + 40) "containerView")];
  [objc_msgSend(objc_msgSend(*(*(a1 + 32) + 40) "layer")];
  v3 = v2;
  v4 = *(*(a1 + 32) + 40);

  return [v4 setAlpha:v3];
}

@end