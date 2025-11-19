@interface SBBannerCustomTransitioningDelegate
- (id)animationControllerForDismissedController:(id)a3 userInfo:(id)a4;
- (id)animationControllerForPresentedController:(id)a3 presentingController:(id)a4 sourceController:(id)a5 userInfo:(id)a6;
- (id)animatorForDismissalTransitionWithStyle:(int64_t)a3;
- (id)animatorForPresentationTransitionWithStyle:(int64_t)a3;
@end

@implementation SBBannerCustomTransitioningDelegate

- (id)animationControllerForDismissedController:(id)a3 userInfo:(id)a4
{
  v5 = [a4 objectForKeyedSubscript:*MEMORY[0x277D68070]];
  v6 = objc_opt_class();
  v7 = v5;
  if (v6)
  {
    if (objc_opt_isKindOfClass())
    {
      v8 = v7;
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  if (v9)
  {
    -[SBBannerCustomTransitioningDelegate setStyle:](self, "setStyle:", [v9 integerValue]);
  }

  v10 = [(SBBannerCustomTransitioningDelegate *)self animatorForDismissalTransitionWithStyle:[(SBBannerCustomTransitioningDelegate *)self style]];

  return v10;
}

- (id)animationControllerForPresentedController:(id)a3 presentingController:(id)a4 sourceController:(id)a5 userInfo:(id)a6
{
  v7 = [a6 objectForKeyedSubscript:{*MEMORY[0x277D68070], a4, a5}];
  v8 = objc_opt_class();
  v9 = v7;
  if (v8)
  {
    if (objc_opt_isKindOfClass())
    {
      v10 = v9;
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;

  if (v11)
  {
    -[SBBannerCustomTransitioningDelegate setStyle:](self, "setStyle:", [v11 integerValue]);
  }

  v12 = [(SBBannerCustomTransitioningDelegate *)self animatorForPresentationTransitionWithStyle:[(SBBannerCustomTransitioningDelegate *)self style]];

  return v12;
}

- (id)animatorForPresentationTransitionWithStyle:(int64_t)a3
{
  v3 = 0;
  if (a3 > 1)
  {
    switch(a3)
    {
      case 2:
        v4 = off_27839EF38;
        break;
      case 3:
        v4 = off_27839EF40;
        break;
      case 4:
        if (_UISolariumEnabled())
        {
          v4 = off_2783A01A0;
        }

        else
        {
          v4 = 0x277CF0AA0;
        }

        break;
      default:
        goto LABEL_16;
    }

    goto LABEL_15;
  }

  v4 = off_2783A22D0;
  if (!a3)
  {
    if (!_UISolariumEnabled())
    {
      v4 = 0x277CF0AA0;
    }

    goto LABEL_15;
  }

  if (a3 == 1)
  {
LABEL_15:
    v3 = [objc_alloc(*v4) initForPresenting:1];
  }

LABEL_16:

  return v3;
}

- (id)animatorForDismissalTransitionWithStyle:(int64_t)a3
{
  v3 = 0;
  if (a3 > 1)
  {
    switch(a3)
    {
      case 2:
        v4 = off_27839EF38;
        break;
      case 3:
        v4 = off_27839EF40;
        break;
      case 4:
        if (_UISolariumEnabled())
        {
          v4 = off_2783A01A0;
        }

        else
        {
          v4 = 0x277CF0AA0;
        }

        break;
      default:
        goto LABEL_16;
    }

    goto LABEL_15;
  }

  v4 = off_2783A22D0;
  if (!a3)
  {
    if (!_UISolariumEnabled())
    {
      v4 = 0x277CF0AA0;
    }

    goto LABEL_15;
  }

  if (a3 == 1)
  {
LABEL_15:
    v3 = [objc_alloc(*v4) initForPresenting:0];
  }

LABEL_16:

  return v3;
}

@end