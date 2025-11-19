@interface UIOPrototypeMenuBarSummonButtonViewController
@end

@implementation UIOPrototypeMenuBarSummonButtonViewController

void __61___UIOPrototypeMenuBarSummonButtonViewController_viewDidLoad__block_invoke(uint64_t a1, void *a2)
{
  v8 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = [v8 sender];
    v5 = [v4 imageView];
    v6 = [MEMORY[0x1E69822A0] wiggleDownEffect];
    [v5 addSymbolEffect:v6];

    v7 = +[_UIOPrototypeMenuBarService sharedService];
    [v7 togglePrototypeMenuBar];
  }
}

void __64___UIOPrototypeMenuBarSummonButtonViewController_viewDidAppear___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) button];
  [v2 setAlpha:1.0];

  v3 = [*(a1 + 32) button];
  [v3 setUserInteractionEnabled:1];
}

void __60___UIOPrototypeMenuBarSummonButtonViewController_handlePan___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) state];
  if ((v2 - 3) >= 3)
  {
    if (v2 == 2)
    {
      v12 = *(a1 + 40);
      CGAffineTransformMakeTranslation(&v15, *(a1 + 48) - *(v12 + 992), *(a1 + 56) - *(v12 + 1000));
      v13 = *(v12 + 1016);
      v14 = v15;
      [v13 setTransform:&v14];
    }

    else if (v2 == 1)
    {
      *(*(a1 + 40) + 992) = *(a1 + 48);
    }
  }

  else
  {
    v3 = [*(a1 + 40) button];
    v4 = *(MEMORY[0x1E695EFD0] + 16);
    *&v14.a = *MEMORY[0x1E695EFD0];
    *&v14.c = v4;
    *&v14.tx = *(MEMORY[0x1E695EFD0] + 32);
    [v3 setTransform:&v14];

    v5 = *(a1 + 32);
    v6 = [*(a1 + 40) view];
    [v5 velocityInView:v6];
    v8 = v7;
    v10 = v9;

    [*(a1 + 40) setCorner:{objc_msgSend(*(a1 + 40), "closestCornerForPoint:", *(a1 + 48) + v8 * 0.25, v10 * 0.25 + *(a1 + 56))}];
    v11 = [*(a1 + 40) view];
    [v11 layoutIfNeeded];
  }
}

@end