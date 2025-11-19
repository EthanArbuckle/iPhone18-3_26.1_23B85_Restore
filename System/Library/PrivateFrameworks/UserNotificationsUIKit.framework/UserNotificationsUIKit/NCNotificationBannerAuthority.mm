@interface NCNotificationBannerAuthority
- (id)delegate;
- (int64_t)shouldOverlapPresentable:(id)a3 withPresentable:(id)a4;
- (int64_t)shouldPresentPresentable:(id)a3 withPresentedPresentables:(id)a4 responsiblePresentable:(id *)a5;
@end

@implementation NCNotificationBannerAuthority

- (int64_t)shouldPresentPresentable:(id)a3 withPresentedPresentables:(id)a4 responsiblePresentable:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = objc_opt_class();
  v11 = v8;
  if (v10)
  {
    if (objc_opt_isKindOfClass())
    {
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  v13 = v12;

  if (v13 && ([v13 isStaticContentLoadingComplete] & 1) == 0)
  {
    if (a5)
    {
      v15 = v11;
      *a5 = v11;
    }

    objc_initWeak(&location, self);
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __107__NCNotificationBannerAuthority_shouldPresentPresentable_withPresentedPresentables_responsiblePresentable___block_invoke;
    v17[3] = &unk_278371AC8;
    objc_copyWeak(&v19, &location);
    v17[4] = self;
    v18 = v11;
    [v18 loadStaticContentWithCompletion:v17];

    objc_destroyWeak(&v19);
    objc_destroyWeak(&location);
    v14 = -1;
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

void __107__NCNotificationBannerAuthority_shouldPresentPresentable_withPresentedPresentables_responsiblePresentable___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v2 = [WeakRetained delegate];
  if (objc_opt_respondsToSelector())
  {
    [v2 bannerAuthority:*(a1 + 32) mayChangeDecisionForResponsiblePresentable:*(a1 + 40)];
  }
}

- (int64_t)shouldOverlapPresentable:(id)a3 withPresentable:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [MEMORY[0x277D77E48] requesterIdentifier];
  v8 = [v5 requesterIdentifier];
  v9 = [v8 isEqualToString:v7];

  if (v9)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
    {
      v10 = 1;
    }

    else
    {
      v12 = [v5 viewController];
      v13 = objc_opt_class();
      v14 = v12;
      if (v13)
      {
        if (objc_opt_isKindOfClass())
        {
          v15 = v14;
        }

        else
        {
          v15 = 0;
        }
      }

      else
      {
        v15 = 0;
      }

      v16 = v15;

      v17 = [v16 notificationViewController];

      LODWORD(v16) = [v17 hasCommittedToPresentingCustomContentProvidingViewController];
      v10 = v16;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end