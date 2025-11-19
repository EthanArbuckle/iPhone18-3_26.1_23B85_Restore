@interface TVAnimatedLabel
@end

@implementation TVAnimatedLabel

void __41___TVAnimatedLabel_setAttributedStrings___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
    v5 = [*(a1 + 32) effectiveUserInterfaceLayoutDirection] == 1;
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __41___TVAnimatedLabel_setAttributedStrings___block_invoke_2;
    v6[3] = &unk_279D6E890;
    objc_copyWeak(&v7, (a1 + 40));
    [v4 tv_resolveWithTextLayoutDirection:v5 layoutObserver:v6];
    objc_destroyWeak(&v7);
  }
}

void __41___TVAnimatedLabel_setAttributedStrings___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setNeedsDisplay];
}

void __33___TVAnimatedLabel_setAnimating___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained && *(WeakRetained + 947) == 1)
  {
    v4 = TVMLKitLogObject;
    if (os_log_type_enabled(TVMLKitLogObject, OS_LOG_TYPE_DEBUG))
    {
      __33___TVAnimatedLabel_setAnimating___block_invoke_cold_1(a1, v4);
    }

    [v3 setNeedsDisplay];
  }
}

void __58___TVAnimatedLabel_stopAnimatingWithoutResetWithDuration___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained && WeakRetained[948] == 1)
  {
    v4 = TVMLKitLogObject;
    if (os_log_type_enabled(TVMLKitLogObject, OS_LOG_TYPE_DEBUG))
    {
      __58___TVAnimatedLabel_stopAnimatingWithoutResetWithDuration___block_invoke_cold_1(a1, v4);
    }

    v3[948] = 0;
    [v3 stopAnimating];
  }
}

void __51___TVAnimatedLabel_stopAndResetScrollWithDuration___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) currentMarqueeView];
  v3 = [v2 layer];
  [v3 contentsRect];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = *(a1 + 40);
  v13 = 0.0;
  if (v5 > v12 / *(a1 + 56) - v5)
  {
    [*(a1 + 32) replicationPadding];
    v13 = (v12 + v14) / *(a1 + 56);
  }

  v16 = [*(a1 + 32) currentMarqueeView];
  v15 = [v16 layer];
  [v15 setContentsRect:{v13, v7, v9, v11}];
}

uint64_t __51___TVAnimatedLabel_stopAndResetScrollWithDuration___block_invoke_34(uint64_t a1)
{
  v2 = TVMLKitLogObject;
  if (os_log_type_enabled(TVMLKitLogObject, OS_LOG_TYPE_DEBUG))
  {
    __51___TVAnimatedLabel_stopAndResetScrollWithDuration___block_invoke_34_cold_1(a1, v2);
  }

  [MEMORY[0x277CD9FF0] begin];
  [MEMORY[0x277CD9FF0] setAnimationDuration:0.2];
  v3 = *(*(a1 + 32) + 952);
  v4 = *(a1 + 56) + 20.0;
  [v3 bounds];
  [v3 setBounds:{0.0, 0.0, v4}];
  v5 = *(*(a1 + 32) + 952);
  v6 = (*(a1 + 56) + -20.0) * 0.5;
  [v5 position];
  [v5 setPosition:v6];
  return [MEMORY[0x277CD9FF0] commit];
}

void __35___TVAnimatedLabel_drawTextInRect___block_invoke()
{
  v0 = MEMORY[0x277D755B8];
  v3 = +[TVMLUtilities TVMLKitBundle];
  v1 = [v0 imageNamed:@"UILabelMarqueeRightFade.png" inBundle:v3];
  v2 = drawTextInRect____maskImage;
  drawTextInRect____maskImage = v1;
}

uint64_t __49___TVAnimatedLabel__prepareNextMarqueeWithDelay___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setAlpha:0.0];
  v2 = *(a1 + 40);

  return [v2 setAlpha:1.0];
}

void __49___TVAnimatedLabel__prepareNextMarqueeWithDelay___block_invoke_2(id *a1, int a2)
{
  WeakRetained = objc_loadWeakRetained(a1 + 7);
  if (WeakRetained)
  {
    WeakRetained[944] = 0;
    v9 = WeakRetained;
    v5 = WeakRetained;
    objc_sync_enter(v5);
    objc_storeWeak(v5 + 128, a1[4]);
    objc_storeWeak(v5 + 129, a1[5]);
    objc_sync_exit(v5);

    v6 = [v5 nextMarqueeView];
    [v6 setAlpha:0.0];

    v7 = [v5 nextMarqueeView];
    [v7 setHidden:1];

    v8 = [a1[6] currentMarqueeView];
    [v5 bringSubviewToFront:v8];

    WeakRetained = v9;
    if (a2)
    {
      [a1[6] _startMarqueeIfNeeded];
      WeakRetained = v9;
    }
  }
}

uint64_t __41___TVAnimatedLabel__startMarqueeIfNeeded__block_invoke(uint64_t a1)
{
  *(*(a1 + 32) + 946) = 0;
  result = [*(a1 + 32) isAnimating];
  if (result)
  {
    v3 = [*(a1 + 32) _shouldCycle];
    v4 = *(a1 + 32);
    if (v3)
    {
      v5 = 48;
      if (v4[945])
      {
        v5 = 40;
      }

      v6 = *(a1 + v5);

      return [v4 _prepareNextMarqueeWithDelay:v6];
    }

    else
    {
      result = [v4 isPaused];
      if ((result & 1) == 0)
      {
        v7 = *(a1 + 32);

        return [v7 _startMarqueeIfNeeded];
      }
    }
  }

  return result;
}

void __41___TVAnimatedLabel__startMarqueeIfNeeded__block_invoke_2()
{
  v0 = MEMORY[0x277D755B8];
  v3 = +[TVMLUtilities TVMLKitBundle];
  v1 = [v0 imageNamed:@"UILabelMarqueeMask.png" inBundle:v3];
  v2 = _startMarqueeIfNeeded___maskImage;
  _startMarqueeIfNeeded___maskImage = v1;
}

void __33___TVAnimatedLabel_setAnimating___block_invoke_cold_1(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [OUTLINED_FUNCTION_1() text];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_0(&dword_26CD9A000, v5, v6, "AL(%@): starting timeout end", v7, v8, v9, v10, v11);
}

void __58___TVAnimatedLabel_stopAnimatingWithoutResetWithDuration___block_invoke_cold_1(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [OUTLINED_FUNCTION_1() text];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_0(&dword_26CD9A000, v5, v6, "AL(%@): stopping timeout end", v7, v8, v9, v10, v11);
}

void __51___TVAnimatedLabel_stopAndResetScrollWithDuration___block_invoke_34_cold_1(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [OUTLINED_FUNCTION_1() text];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_0(&dword_26CD9A000, v5, v6, "AL(%@): stop-and-reset timeout end", v7, v8, v9, v10, v11);
}

@end