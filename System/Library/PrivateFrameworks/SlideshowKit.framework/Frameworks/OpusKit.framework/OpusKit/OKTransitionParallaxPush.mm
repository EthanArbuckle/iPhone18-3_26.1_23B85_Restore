@interface OKTransitionParallaxPush
+ (id)supportedSettings;
- (OKTransitionParallaxPush)init;
- (OKTransitionParallaxPush)initWithSettings:(id)a3;
- (void)_transitionInView:(id)a3 fromSubview:(id)a4 toSubview:(id)a5 wasInteractive:(BOOL)a6 duration:(double)a7 doEaseIn:(BOOL)a8 doEaseOut:(BOOL)a9 isCompleting:(BOOL)a10 wasCancelled:(BOOL)a11 fromProgress:(double)a12 completionHandler:(id)a13;
- (void)makeCurrentTransitionInteractiveWithContext:(id)a3 andProgress:(double)a4;
- (void)startInteractiveTransitionWithContext:(id)a3;
- (void)updateInteractiveTransitionWithContext:(id)a3 andProgress:(double)a4;
@end

@implementation OKTransitionParallaxPush

- (OKTransitionParallaxPush)init
{
  v3.receiver = self;
  v3.super_class = OKTransitionParallaxPush;
  result = [(OKTransition *)&v3 init];
  if (result)
  {
    result->_direction = 1;
    result->_parallaxAmount = 0.8;
    result->_fadeFromAlpha = 1.0;
    result->_fadeToAlpha = 0.0;
  }

  return result;
}

- (OKTransitionParallaxPush)initWithSettings:(id)a3
{
  v13.receiver = self;
  v13.super_class = OKTransitionParallaxPush;
  v4 = [(OKTransition *)&v13 initWithSettings:?];
  if (v4)
  {
    v5 = [a3 objectForKey:@"direction"];
    if (v5)
    {
      v4->_direction = [v5 intValue];
    }

    v6 = [a3 objectForKey:@"parallaxAmount"];
    if (v6)
    {
      [v6 floatValue];
      v4->_parallaxAmount = v7;
    }

    v8 = [a3 objectForKey:@"fadeFromAlpha"];
    if (v8)
    {
      [v8 floatValue];
      v4->_fadeFromAlpha = v9;
    }

    v10 = [a3 objectForKey:@"fadeToAlpha"];
    if (v10)
    {
      [v10 floatValue];
      v4->_fadeToAlpha = v11;
    }
  }

  return v4;
}

+ (id)supportedSettings
{
  v14[4] = *MEMORY[0x277D85DE8];
  v4.receiver = a1;
  v4.super_class = &OBJC_METACLASS___OKTransitionParallaxPush;
  v2 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:{objc_msgSendSuper2(&v4, sel_supportedSettings)}];
  v13[0] = @"direction";
  v11[0] = @"type";
  v11[1] = @"mapping";
  v12[0] = &unk_287AEFE40;
  v12[1] = &unk_287AF1DE8;
  v11[2] = @"default";
  v11[3] = @"jsExport";
  v12[2] = &unk_287AEFE70;
  v12[3] = @"readwrite";
  v14[0] = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:4];
  v13[1] = @"parallaxAmount";
  v9[0] = @"type";
  v9[1] = @"default";
  v10[0] = &unk_287AEFED0;
  v10[1] = &unk_287AF21F8;
  v9[2] = @"jsExport";
  v10[2] = @"readwrite";
  v14[1] = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:v9 count:3];
  v13[2] = @"fadeFromAlpha";
  v7[0] = @"type";
  v7[1] = @"default";
  v8[0] = &unk_287AEFED0;
  v8[1] = &unk_287AF2208;
  v7[2] = @"jsExport";
  v8[2] = @"readwrite";
  v14[2] = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:v7 count:3];
  v13[3] = @"fadeToAlpha";
  v5[0] = @"type";
  v5[1] = @"default";
  v6[0] = &unk_287AEFED0;
  v6[1] = &unk_287AF2208;
  v5[2] = @"jsExport";
  v6[2] = @"readwrite";
  v14[3] = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:v5 count:3];
  [v2 addEntriesFromDictionary:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", v14, v13, 4)}];
  return v2;
}

- (void)_transitionInView:(id)a3 fromSubview:(id)a4 toSubview:(id)a5 wasInteractive:(BOOL)a6 duration:(double)a7 doEaseIn:(BOOL)a8 doEaseOut:(BOOL)a9 isCompleting:(BOOL)a10 wasCancelled:(BOOL)a11 fromProgress:(double)a12 completionHandler:(id)a13
{
  v14 = a9;
  v15 = a8;
  v47[10] = *MEMORY[0x277D85DE8];
  [a3 bounds];
  Width = CGRectGetWidth(v48);
  [a3 bounds];
  Height = CGRectGetHeight(v49);
  v24 = [(OKTransition *)self isForward];
  direction = self->_direction;
  if ([(OKTransition *)self reversed])
  {
    v24 ^= 1u;
    if (direction > 2)
    {
      if (direction == 3)
      {
        v26 = 4;
        goto LABEL_12;
      }

      if (direction == 4)
      {
        v26 = 3;
        goto LABEL_12;
      }
    }

    else
    {
      if (direction == 1)
      {
        v26 = 2;
        goto LABEL_12;
      }

      if (direction == 2)
      {
        v26 = 1;
        goto LABEL_12;
      }
    }
  }

  if (direction <= 4)
  {
    v26 = direction;
  }

  else
  {
    v26 = 0;
  }

LABEL_12:
  v47[0] = 0;
  v47[1] = 0;
  *&v47[2] = Width;
  v47[3] = 0;
  *&v47[4] = -Width;
  v47[5] = 0;
  v47[6] = 0;
  *&v47[7] = Height;
  v47[8] = 0;
  *&v47[9] = -Height;
  v27 = *&v47[2 * v26];
  v34 = v27;
  if (a6)
  {
    if (!v24)
    {
      if (a11)
      {
LABEL_15:
        fadeToAlpha = self->_fadeToAlpha;
        v29 = vmulq_n_f64(v34, -self->_parallaxAmount);
        v30 = *MEMORY[0x277CBF348];
        fadeFromAlpha = 1.0;
        goto LABEL_23;
      }

      goto LABEL_21;
    }
  }

  else
  {
    if (!v24)
    {
      [a5 setFrame:{-self->_parallaxAmount * v27.f64[0], vmuld_lane_f64(-self->_parallaxAmount, v27, 1), Width, Height}];
      [a5 setAlpha:self->_fadeToAlpha];
      [a3 insertSubview:a5 belowSubview:a4];
      if (a11)
      {
        goto LABEL_15;
      }

LABEL_21:
      fadeFromAlpha = self->_fadeFromAlpha;
      v30 = v34;
      v29 = *MEMORY[0x277CBF348];
      fadeToAlpha = 1.0;
      goto LABEL_23;
    }

    [a5 setFrame:{*&v27, Width, Height}];
    [a5 setAlpha:self->_fadeFromAlpha];
    [a3 insertSubview:a5 aboveSubview:a4];
  }

  if (a11)
  {
    fadeToAlpha = self->_fadeFromAlpha;
    fadeFromAlpha = 1.0;
    v30 = *MEMORY[0x277CBF348];
    v29 = v34;
  }

  else
  {
    fadeFromAlpha = self->_fadeToAlpha;
    v30 = vmulq_n_f64(v34, -self->_parallaxAmount);
    fadeToAlpha = 1.0;
    v29 = *MEMORY[0x277CBF348];
  }

LABEL_23:
  v37[0] = MEMORY[0x277D85DD0];
  v37[1] = 3221225472;
  v37[2] = __168__OKTransitionParallaxPush__transitionInView_fromSubview_toSubview_wasInteractive_duration_doEaseIn_doEaseOut_isCompleting_wasCancelled_fromProgress_completionHandler___block_invoke_2;
  v37[3] = &unk_279C8E588;
  v32 = 131074;
  v38 = v29;
  if (v15)
  {
    v32 = 2;
  }

  v33 = 0x10000;
  if (v14)
  {
    v33 = 0;
  }

  v37[4] = a5;
  v37[5] = a4;
  v40 = v30;
  v39 = fadeToAlpha;
  v41 = fadeFromAlpha;
  v42 = a12;
  v44 = a11;
  v43 = a7;
  v45 = v15;
  v46 = v14;
  v37[6] = a3;
  v37[7] = &__block_literal_global_0;
  v35[0] = MEMORY[0x277D85DD0];
  v35[1] = 3221225472;
  v35[2] = __168__OKTransitionParallaxPush__transitionInView_fromSubview_toSubview_wasInteractive_duration_doEaseIn_doEaseOut_isCompleting_wasCancelled_fromProgress_completionHandler___block_invoke_46;
  v35[3] = &unk_279C8E5D8;
  v36 = a11;
  v35[4] = self;
  v35[5] = a5;
  v35[6] = a4;
  v35[7] = a13;
  [MEMORY[0x277D75D18] animateWithDuration:v33 | v32 delay:v37 options:v35 animations:a7 completion:{0.0, *&v34}];
}

uint64_t __168__OKTransitionParallaxPush__transitionInView_fromSubview_toSubview_wasInteractive_duration_doEaseIn_doEaseOut_isCompleting_wasCancelled_fromProgress_completionHandler___block_invoke(double a1, double a2, double a3, uint64_t a4, void *a5)
{
  [a5 frame];
  [a5 setFrame:{a1, a2}];

  return [a5 setAlpha:a3];
}

uint64_t __168__OKTransitionParallaxPush__transitionInView_fromSubview_toSubview_wasInteractive_duration_doEaseIn_doEaseOut_isCompleting_wasCancelled_fromProgress_completionHandler___block_invoke_2(uint64_t a1)
{
  (*(*(a1 + 56) + 16))(*(a1 + 64), *(a1 + 72), *(a1 + 80));
  (*(*(a1 + 56) + 16))(*(a1 + 88), *(a1 + 96), *(a1 + 104));
  v2 = [MEMORY[0x277CD9E10] animationWithKeyPath:@"progress"];
  [v2 setFromValue:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithDouble:", *(a1 + 112))}];
  if (*(a1 + 128))
  {
    v3 = &unk_287AF2218;
  }

  else
  {
    v3 = &unk_287AF2208;
  }

  [v2 setToValue:v3];
  [v2 setDuration:*(a1 + 120)];
  if (*(a1 + 129))
  {
    v4 = MEMORY[0x277CDA7B8];
  }

  else
  {
    v4 = MEMORY[0x277CDA7C0];
  }

  v5 = MEMORY[0x277CDA7B0];
  if (!*(a1 + 129))
  {
    v5 = MEMORY[0x277CDA7C8];
  }

  if (!*(a1 + 130))
  {
    v4 = v5;
  }

  [v2 setTimingFunction:{objc_msgSend(MEMORY[0x277CD9EF8], "functionWithName:", *v4)}];
  v6 = [*(a1 + 48) layer];

  return [v6 addAnimation:v2 forKey:@"progress"];
}

uint64_t __168__OKTransitionParallaxPush__transitionInView_fromSubview_toSubview_wasInteractive_duration_doEaseIn_doEaseOut_isCompleting_wasCancelled_fromProgress_completionHandler___block_invoke_46(uint64_t a1)
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __168__OKTransitionParallaxPush__transitionInView_fromSubview_toSubview_wasInteractive_duration_doEaseIn_doEaseOut_isCompleting_wasCancelled_fromProgress_completionHandler___block_invoke_2_47;
  v3[3] = &unk_279C8E5B0;
  v6 = *(a1 + 64);
  v1 = *(a1 + 48);
  v4 = *(a1 + 32);
  v5 = v1;
  return __168__OKTransitionParallaxPush__transitionInView_fromSubview_toSubview_wasInteractive_duration_doEaseIn_doEaseOut_isCompleting_wasCancelled_fromProgress_completionHandler___block_invoke_2_47(v3);
}

uint64_t __168__OKTransitionParallaxPush__transitionInView_fromSubview_toSubview_wasInteractive_duration_doEaseIn_doEaseOut_isCompleting_wasCancelled_fromProgress_completionHandler___block_invoke_2_47(uint64_t a1)
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
  v16[10] = *MEMORY[0x277D85DE8];
  v15.receiver = self;
  v15.super_class = OKTransitionParallaxPush;
  [(OKTransition *)&v15 startInteractiveTransitionWithContext:?];
  v5 = [a3 fromViewController];
  v6 = [a3 toViewController];
  v7 = [(OKTransition *)self isForward];
  direction = self->_direction;
  if ([(OKTransition *)self reversed])
  {
    v7 ^= 1u;
    if (direction > 2)
    {
      if (direction == 3)
      {
        direction = 4;
        goto LABEL_11;
      }

      if (direction == 4)
      {
        direction = 3;
        goto LABEL_11;
      }
    }

    else
    {
      if (direction == 1)
      {
        direction = 2;
        goto LABEL_11;
      }

      if (direction == 2)
      {
        direction = 1;
        goto LABEL_11;
      }
    }
  }

  if (direction > 4)
  {
    direction = 0;
  }

LABEL_11:
  [objc_msgSend(a3 "containerView")];
  Width = CGRectGetWidth(v17);
  [objc_msgSend(a3 "containerView")];
  Height = CGRectGetHeight(v18);
  v16[0] = 0;
  v16[1] = 0;
  *&v16[2] = Width;
  v16[3] = 0;
  *&v16[4] = -Width;
  v16[5] = 0;
  v16[6] = 0;
  *&v16[7] = Height;
  v16[8] = 0;
  *&v16[9] = -Height;
  v11 = &v16[2 * direction];
  v13 = *v11;
  v12 = v11[1];
  if (v7)
  {
    [objc_msgSend(v6 "view")];
    [objc_msgSend(v6 "view")];
    if (v6)
    {
      [objc_msgSend(a3 "containerView")];
    }
  }

  else
  {
    parallaxAmount = self->_parallaxAmount;
    [objc_msgSend(v6 "view")];
    [objc_msgSend(v6 "view")];
    if (v6)
    {
      [objc_msgSend(a3 "containerView")];
    }
  }
}

- (void)updateInteractiveTransitionWithContext:(id)a3 andProgress:(double)a4
{
  v22[10] = *MEMORY[0x277D85DE8];
  v21.receiver = self;
  v21.super_class = OKTransitionParallaxPush;
  [OKTransition updateInteractiveTransitionWithContext:sel_updateInteractiveTransitionWithContext_andProgress_ andProgress:?];
  v7 = 0.0;
  if (a4 >= 0.0)
  {
    v7 = a4;
  }

  if (v7 <= 1.0)
  {
    v8 = v7;
  }

  else
  {
    v8 = 1.0;
  }

  v9 = [a3 fromViewController];
  v10 = [a3 toViewController];
  v11 = [(OKTransition *)self isForward];
  direction = self->_direction;
  if ([(OKTransition *)self reversed])
  {
    v11 ^= 1u;
    if (direction > 2)
    {
      if (direction == 3)
      {
        direction = 4;
        goto LABEL_16;
      }

      if (direction == 4)
      {
        direction = 3;
        goto LABEL_16;
      }
    }

    else
    {
      if (direction == 1)
      {
        direction = 2;
        goto LABEL_16;
      }

      if (direction == 2)
      {
        direction = 1;
        goto LABEL_16;
      }
    }
  }

  if (direction > 4)
  {
    direction = 0;
  }

LABEL_16:
  [objc_msgSend(a3 "containerView")];
  Width = CGRectGetWidth(v23);
  [objc_msgSend(a3 "containerView")];
  Height = CGRectGetHeight(v24);
  v22[0] = 0;
  v22[1] = 0;
  *&v22[2] = Width;
  v22[3] = 0;
  *&v22[4] = -Width;
  v22[5] = 0;
  v22[6] = 0;
  *&v22[7] = Height;
  v22[8] = 0;
  *&v22[9] = -Height;
  v15 = &v22[2 * direction];
  v17 = *v15;
  v16 = v15[1];
  if (v11)
  {
    [objc_msgSend(v10 "view")];
    [objc_msgSend(v9 "view")];
    [objc_msgSend(v10 "view")];
    parallaxAmount = self->_parallaxAmount;
    v19 = -(parallaxAmount * v17) * v8 + 0.0;
    v16 = -(parallaxAmount * v16);
  }

  else
  {
    [objc_msgSend(v10 "view")];
    [objc_msgSend(v9 "view")];
    v20 = self->_parallaxAmount;
    [objc_msgSend(v10 "view")];
    v19 = v17 * v8 + 0.0;
  }

  [objc_msgSend(v9 "view")];
}

- (void)makeCurrentTransitionInteractiveWithContext:(id)a3 andProgress:(double)a4
{
  v8.receiver = self;
  v8.super_class = OKTransitionParallaxPush;
  [(OKTransition *)&v8 makeCurrentTransitionInteractiveWithContext:a4 andProgress:?];
  v5 = [objc_msgSend(a3 "fromViewController")];
  v6 = [objc_msgSend(a3 "toViewController")];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __84__OKTransitionParallaxPush_makeCurrentTransitionInteractiveWithContext_andProgress___block_invoke;
  v7[3] = &unk_279C8E600;
  v7[4] = v5;
  v7[5] = v6;
  v7[6] = a3;
  [MEMORY[0x277D75D18] animateWithDuration:v7 animations:0 completion:0.0];
}

uint64_t __84__OKTransitionParallaxPush_makeCurrentTransitionInteractiveWithContext_andProgress___block_invoke(id *a1)
{
  [objc_msgSend(a1[4] "layer")];
  [objc_msgSend(a1[4] "layer")];
  [objc_msgSend(a1[5] "layer")];
  [objc_msgSend(a1[5] "layer")];
  [objc_msgSend(objc_msgSend(a1[6] "containerView")];
  [objc_msgSend(objc_msgSend(a1[4] "layer")];
  [a1[4] setFrame:?];
  [objc_msgSend(objc_msgSend(a1[5] "layer")];
  [a1[5] setFrame:?];
  [objc_msgSend(objc_msgSend(a1[4] "layer")];
  [a1[4] setAlpha:v2];
  [objc_msgSend(objc_msgSend(a1[5] "layer")];
  v4 = v3;
  v5 = a1[5];

  return [v5 setAlpha:v4];
}

@end