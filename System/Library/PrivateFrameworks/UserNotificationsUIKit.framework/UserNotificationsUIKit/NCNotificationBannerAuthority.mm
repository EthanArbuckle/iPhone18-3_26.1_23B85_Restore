@interface NCNotificationBannerAuthority
- (id)delegate;
- (int64_t)shouldOverlapPresentable:(id)presentable withPresentable:(id)withPresentable;
- (int64_t)shouldPresentPresentable:(id)presentable withPresentedPresentables:(id)presentables responsiblePresentable:(id *)responsiblePresentable;
@end

@implementation NCNotificationBannerAuthority

- (int64_t)shouldPresentPresentable:(id)presentable withPresentedPresentables:(id)presentables responsiblePresentable:(id *)responsiblePresentable
{
  presentableCopy = presentable;
  presentablesCopy = presentables;
  v10 = objc_opt_class();
  v11 = presentableCopy;
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
    if (responsiblePresentable)
    {
      v15 = v11;
      *responsiblePresentable = v11;
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

- (int64_t)shouldOverlapPresentable:(id)presentable withPresentable:(id)withPresentable
{
  presentableCopy = presentable;
  withPresentableCopy = withPresentable;
  requesterIdentifier = [MEMORY[0x277D77E48] requesterIdentifier];
  requesterIdentifier2 = [presentableCopy requesterIdentifier];
  v9 = [requesterIdentifier2 isEqualToString:requesterIdentifier];

  if (v9)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
    {
      v10 = 1;
    }

    else
    {
      viewController = [presentableCopy viewController];
      v13 = objc_opt_class();
      v14 = viewController;
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

      notificationViewController = [v16 notificationViewController];

      LODWORD(v16) = [notificationViewController hasCommittedToPresentingCustomContentProvidingViewController];
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