@interface OKTransitionDissolve
- (void)_transitionInView:(id)a3 fromSubview:(id)a4 toSubview:(id)a5 wasInteractive:(BOOL)a6 duration:(double)a7 doEaseIn:(BOOL)a8 doEaseOut:(BOOL)a9 isCompleting:(BOOL)a10 wasCancelled:(BOOL)a11 fromProgress:(double)a12 completionHandler:(id)a13;
- (void)makeCurrentTransitionInteractiveWithContext:(id)a3 andProgress:(double)a4;
- (void)startInteractiveTransitionWithContext:(id)a3;
- (void)updateInteractiveTransitionWithContext:(id)a3 andProgress:(double)a4;
@end

@implementation OKTransitionDissolve

- (void)_transitionInView:(id)a3 fromSubview:(id)a4 toSubview:(id)a5 wasInteractive:(BOOL)a6 duration:(double)a7 doEaseIn:(BOOL)a8 doEaseOut:(BOOL)a9 isCompleting:(BOOL)a10 wasCancelled:(BOOL)a11 fromProgress:(double)a12 completionHandler:(id)a13
{
  v14 = a9;
  v15 = a8;
  [a3 bounds];
  Width = CGRectGetWidth(v32);
  [a3 bounds];
  Height = CGRectGetHeight(v33);
  if (!a6)
  {
    [a5 setFrame:{0.0, 0.0, Width, Height}];
    [a5 setAlpha:0.0];
    [a3 insertSubview:a5 aboveSubview:a4];
  }

  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __164__OKTransitionDissolve__transitionInView_fromSubview_toSubview_wasInteractive_duration_doEaseIn_doEaseOut_isCompleting_wasCancelled_fromProgress_completionHandler___block_invoke_2;
  v28[3] = &unk_279C8F520;
  v24 = 131074;
  v29 = a11;
  v28[5] = a3;
  v28[6] = &__block_literal_global_6;
  if (v15)
  {
    v24 = 2;
  }

  v25 = 0x10000;
  if (v14)
  {
    v25 = 0;
  }

  *&v28[7] = a12;
  *&v28[8] = a7;
  v30 = v15;
  v31 = v14;
  v28[4] = a5;
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __164__OKTransitionDissolve__transitionInView_fromSubview_toSubview_wasInteractive_duration_doEaseIn_doEaseOut_isCompleting_wasCancelled_fromProgress_completionHandler___block_invoke_3;
  v26[3] = &unk_279C8E5D8;
  v27 = a11;
  v26[4] = self;
  v26[5] = a5;
  v26[6] = a4;
  v26[7] = a13;
  [MEMORY[0x277D75D18] animateWithDuration:v25 | v24 delay:v28 options:v26 animations:a7 completion:0.0];
}

uint64_t __164__OKTransitionDissolve__transitionInView_fromSubview_toSubview_wasInteractive_duration_doEaseIn_doEaseOut_isCompleting_wasCancelled_fromProgress_completionHandler___block_invoke_2(uint64_t a1)
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
  v6 = [*(a1 + 40) layer];

  return [v6 addAnimation:v3 forKey:@"progress"];
}

uint64_t __164__OKTransitionDissolve__transitionInView_fromSubview_toSubview_wasInteractive_duration_doEaseIn_doEaseOut_isCompleting_wasCancelled_fromProgress_completionHandler___block_invoke_3(uint64_t a1)
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __164__OKTransitionDissolve__transitionInView_fromSubview_toSubview_wasInteractive_duration_doEaseIn_doEaseOut_isCompleting_wasCancelled_fromProgress_completionHandler___block_invoke_4;
  v3[3] = &unk_279C8E5B0;
  v6 = *(a1 + 64);
  v1 = *(a1 + 48);
  v4 = *(a1 + 32);
  v5 = v1;
  return __164__OKTransitionDissolve__transitionInView_fromSubview_toSubview_wasInteractive_duration_doEaseIn_doEaseOut_isCompleting_wasCancelled_fromProgress_completionHandler___block_invoke_4(v3);
}

uint64_t __164__OKTransitionDissolve__transitionInView_fromSubview_toSubview_wasInteractive_duration_doEaseIn_doEaseOut_isCompleting_wasCancelled_fromProgress_completionHandler___block_invoke_4(uint64_t a1)
{
  if ([*(a1 + 32) _canComplete])
  {
    v2 = 48;
    if (*(a1 + 64))
    {
      v2 = 40;
    }

    [*(a1 + v2) removeFromSuperview];
  }

  result = *(a1 + 56);
  if (result)
  {
    v4 = *(result + 16);

    return v4();
  }

  return result;
}

- (void)startInteractiveTransitionWithContext:(id)a3
{
  v10.receiver = self;
  v10.super_class = OKTransitionDissolve;
  [(OKTransition *)&v10 startInteractiveTransitionWithContext:?];
  v4 = [a3 fromViewController];
  v5 = [a3 toViewController];
  [objc_msgSend(a3 "containerView")];
  [objc_msgSend(v5 "view")];
  [objc_msgSend(objc_msgSend(a3 "toViewController")];
  if (v5)
  {
    [objc_msgSend(a3 "containerView")];
  }
}

- (void)updateInteractiveTransitionWithContext:(id)a3 andProgress:(double)a4
{
  v8.receiver = self;
  v8.super_class = OKTransitionDissolve;
  [OKTransition updateInteractiveTransitionWithContext:sel_updateInteractiveTransitionWithContext_andProgress_ andProgress:?];
  v6 = 0.0;
  if (a4 >= 0.0)
  {
    v6 = a4;
  }

  if (v6 <= 1.0)
  {
    v7 = v6;
  }

  else
  {
    v7 = 1.0;
  }

  [objc_msgSend(objc_msgSend(a3 "toViewController")];
}

- (void)makeCurrentTransitionInteractiveWithContext:(id)a3 andProgress:(double)a4
{
  v8.receiver = self;
  v8.super_class = OKTransitionDissolve;
  [(OKTransition *)&v8 makeCurrentTransitionInteractiveWithContext:a4 andProgress:?];
  v5 = [objc_msgSend(a3 "fromViewController")];
  v6 = [objc_msgSend(a3 "toViewController")];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __80__OKTransitionDissolve_makeCurrentTransitionInteractiveWithContext_andProgress___block_invoke;
  v7[3] = &unk_279C8E600;
  v7[4] = v5;
  v7[5] = v6;
  v7[6] = a3;
  [MEMORY[0x277D75D18] animateWithDuration:v7 animations:0 completion:0.0];
}

uint64_t __80__OKTransitionDissolve_makeCurrentTransitionInteractiveWithContext_andProgress___block_invoke(id *a1)
{
  [objc_msgSend(a1[4] "layer")];
  [objc_msgSend(a1[5] "layer")];
  [objc_msgSend(objc_msgSend(a1[6] "containerView")];
  [objc_msgSend(objc_msgSend(a1[4] "layer")];
  [a1[4] setAlpha:v2];
  [objc_msgSend(objc_msgSend(a1[5] "layer")];
  v4 = v3;
  v5 = a1[5];

  return [v5 setAlpha:v4];
}

@end