@interface PXScoreLabGraphView
@end

@implementation PXScoreLabGraphView

void __43___PXScoreLabGraphView_loadCorrelationData__block_invoke(uint64_t a1, void *a2)
{
  v3 = *(*(a1 + 32) + 640);
  v4 = *(v3 + 16);
  v5 = a2;
  v20 = v4(v3, v5);
  v6 = (*(*(*(a1 + 32) + 648) + 16))();

  if (v20)
  {
    v7 = v6 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    ++*(*(a1 + 32) + 624);
  }

  else
  {
    [v20 doubleValue];
    v9 = v8;
    v10 = *(a1 + 32);
    v11 = *(v10 + 456);
    if (v11 >= v9)
    {
      v11 = v9;
    }

    *(v10 + 456) = v11;
    v12 = *(a1 + 32);
    v13 = *(v12 + 464);
    if (v13 < v9)
    {
      v13 = v9;
    }

    *(v12 + 464) = v13;
    [*(a1 + 40) addObject:v20];
    [v6 doubleValue];
    v15 = v14;
    v16 = *(a1 + 32);
    v17 = *(v16 + 472);
    if (v17 >= v15)
    {
      v17 = v15;
    }

    *(v16 + 472) = v17;
    v18 = *(a1 + 32);
    v19 = *(v18 + 480);
    if (v19 < v15)
    {
      v19 = v15;
    }

    *(v18 + 480) = v19;
    [*(a1 + 48) addObject:v6];
    *(*(a1 + 32) + 584) = v9 + *(*(a1 + 32) + 584);
    *(*(a1 + 32) + 592) = *(*(a1 + 32) + 592) + v9 * v9;
    *(*(a1 + 32) + 600) = v15 + *(*(a1 + 32) + 600);
    *(*(a1 + 32) + 608) = *(*(a1 + 32) + 608) + v15 * v15;
    *(*(a1 + 32) + 616) = *(*(a1 + 32) + 616) + v9 * v15;
  }
}

void __44___PXScoreLabGraphView_loadDistributionData__block_invoke(uint64_t a1)
{
  v2 = (*(*(a1 + 48) + 16))();
  if (v2)
  {
    v8 = v2;
    [v2 doubleValue];
    v4 = *(a1 + 32);
    v5 = *(v4 + 456);
    if (v5 >= v3)
    {
      v5 = v3;
    }

    *(v4 + 456) = v5;
    v6 = *(a1 + 32);
    v7 = *(v6 + 464);
    if (v7 < v3)
    {
      v7 = v3;
    }

    *(v6 + 464) = v7;
    *(*(a1 + 32) + 584) = v3 + *(*(a1 + 32) + 584);
    *(*(a1 + 32) + 592) = *(*(a1 + 32) + 592) + v3 * v3;
    [*(a1 + 40) addObject:v8];
    v2 = v8;
  }

  else
  {
    ++*(*(a1 + 32) + 624);
  }
}

void __34___PXScoreLabGraphView_reloadData__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = WeakRetained[82];
    if (v3 >= 2)
    {
      if (v3 == 2)
      {
        [WeakRetained loadCorrelationData];
      }
    }

    else
    {
      [WeakRetained loadDistributionData];
    }

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __34___PXScoreLabGraphView_reloadData__block_invoke_2;
    block[3] = &unk_1E774C648;
    block[4] = v2;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

void __34___PXScoreLabGraphView_reloadData__block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) setNeedsDisplay];
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 672));
  [WeakRetained scoreLabGraphViewDidFinishReloading:*(a1 + 32)];
}

@end