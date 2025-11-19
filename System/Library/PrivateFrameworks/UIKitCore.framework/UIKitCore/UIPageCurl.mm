@interface UIPageCurl
@end

@implementation UIPageCurl

void __51___UIPageCurl__pageCurlAnimationDidStop_withState___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v8 = a2;
  v9 = *(*(a1 + 48) + 8);
  v10 = *(v9 + 40);
  v11 = v8;
  v12 = v11;
  if (a3 || v10)
  {
    v14 = [*(*(*(a1 + 48) + 8) + 40) curlType];
    v15 = [v12 curlType];
    v13 = v12;
    if (v14 == v15)
    {
      v16 = [*(*(*(a1 + 48) + 8) + 40) effectiveTransitionDirection];
      v17 = [v12 effectiveTransitionDirection];
      v13 = v12;
      if (v16 == v17)
      {
        objc_storeStrong((*(*(a1 + 48) + 8) + 40), a2);
        v13 = v12;
      }
    }
  }

  else
  {
    v13 = *(v9 + 40);
    *(v9 + 40) = v11;
  }

  if (*(*(*(a1 + 48) + 8) + 40))
  {
    v18 = [*(*(a1 + 32) + 64) _ui_dequeue];
    [*(*(a1 + 32) + 72) _ui_enqueue:*(*(*(a1 + 48) + 8) + 40)];
    if (a3)
    {
      v19 = [*(a1 + 40) objectAtIndex:a3 - 1];
      v20 = *(*(a1 + 32) + 88);
      v21 = [v19 beginDate];
      [v21 timeIntervalSinceNow];
      v23 = v20 + v22;

      v24 = dispatch_time(0, (fmax(v23, 0.0) * 1000000000.0));
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __51___UIPageCurl__pageCurlAnimationDidStop_withState___block_invoke_2;
      block[3] = &unk_1E70FFB90;
      v25 = *(a1 + 32);
      v26 = *(a1 + 48);
      v31 = v19;
      v32 = v26;
      block[4] = v25;
      v27 = v19;
      dispatch_after(v24, MEMORY[0x1E69E96A0], block);
    }

    else
    {
      [*(a1 + 32) _beginCurlWithState:*(*(*(a1 + 48) + 8) + 40) previousState:0];
    }

    v28 = *(*(a1 + 48) + 8);
    v29 = *(v28 + 40);
    *(v28 + 40) = 0;
  }

  else
  {
    *a4 = 1;
  }
}

@end