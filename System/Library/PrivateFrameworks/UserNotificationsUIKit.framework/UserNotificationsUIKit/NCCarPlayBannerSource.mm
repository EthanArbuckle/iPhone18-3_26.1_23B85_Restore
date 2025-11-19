@interface NCCarPlayBannerSource
+ (void)initialize;
- (BOOL)_isPresentableSticky:(id)a3;
- (BOOL)_setSuspended:(BOOL)a3 forReason:(id)a4 revokingCurrent:(BOOL)a5;
- (BOOL)_shouldPresentableBorrowCarPlayScreen:(id)a3;
- (BOOL)isValid;
- (BOOL)postPresentable:(id)a3 options:(unint64_t)a4 userInfo:(id)a5 error:(id *)a6;
- (BOOL)setSuspended:(BOOL)a3 forReason:(id)a4 revokingCurrent:(BOOL)a5 error:(id *)a6;
- (id)_bannerSource;
- (id)_peekPostedPresentable;
- (id)_postedPresentablesWithIdentification:(id)a3;
- (id)_pullPostedPresentableAtIndex:(unint64_t)a3;
- (id)delegate;
- (id)keyWindowForScreen:(id)a3;
- (id)layoutDescriptionWithError:(id *)a3;
- (id)requesterIdentifier;
- (id)revokeAllPresentablesWithReason:(id)a3 userInfo:(id)a4 error:(id *)a5;
- (id)revokePresentableWithIdentification:(id)a3 reason:(id)a4 animated:(BOOL)a5 userInfo:(id)a6 error:(id *)a7;
- (id)revokePresentableWithRequestIdentifier:(id)a3 reason:(id)a4 animated:(BOOL)a5 userInfo:(id)a6 error:(id *)a7;
- (int64_t)destination;
- (unint64_t)_indexOfPostedPresentable:(id)a3;
- (unint64_t)_postedPresentableCount;
- (void)_allPresentablesDidDisappear;
- (void)_cancelDismissTimer;
- (void)_cancelReplaceTimer;
- (void)_enqueuePostedPresentable:(id)a3;
- (void)_presentableDidDisappear:(id)a3;
- (void)_presentableWithIdentificationDidDisappear:(id)a3;
- (void)_revokePreviouslyPostedPresentableIfPossible;
- (void)_startDismissTimerWithTimeInterval:(double)a3;
- (void)_startReplaceTimer;
- (void)didBeginAnnounceForNotificationRequest:(id)a3;
- (void)didFinishAnnounceForNotificationRequest:(id)a3;
- (void)invalidate;
- (void)presentableDidAppearAsBanner:(id)a3;
@end

@implementation NCCarPlayBannerSource

void __43__NCCarPlayBannerSource__startReplaceTimer__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [WeakRetained _replaceTimer];

  if (v4 == v3)
  {
    [WeakRetained _setReplaceTimer:0];
    [WeakRetained _revokePreviouslyPostedPresentableIfPossible];
  }
}

- (void)_revokePreviouslyPostedPresentableIfPossible
{
  v10[1] = *MEMORY[0x277D85DE8];
  if (!self->_replaceTimer && [(NCCarPlayBannerSource *)self _postedPresentableCount]>= 2)
  {
    v3 = [(NCCarPlayBannerSource *)self _peekPostedPresentable];
    if ([(NCCarPlayBannerSource *)self _isPresentableSticky:v3])
    {
      v4 = 0;
    }

    else
    {
      v5 = [MEMORY[0x277CF0AC0] uniqueIdentificationForPresentable:v3];
      v9 = @"CPUIBannerTransitionAnimationStyle";
      v10[0] = &unk_2830156F8;
      v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:&v9 count:1];
      v8 = 0;
      v7 = [(NCCarPlayBannerSource *)self revokePresentableWithIdentification:v5 reason:@"NCCarPlayBannerRevocationReasonReplacementDismissal" animated:1 userInfo:v6 error:&v8];
      v4 = v8;

      if (!v7 && os_log_type_enabled(*MEMORY[0x277D77DB0], OS_LOG_TYPE_ERROR))
      {
        [NCCarPlayBannerSource _revokePreviouslyPostedPresentableIfPossible];
      }
    }
  }
}

- (unint64_t)_postedPresentableCount
{
  v2 = self;
  objc_sync_enter(v2);
  [(NSPointerArray *)v2->_postedPresentables unui_compact];
  v3 = [(NSPointerArray *)v2->_postedPresentables count];
  objc_sync_exit(v2);

  return v3;
}

- (id)_bannerSource
{
  bannerSource = self->_bannerSource;
  if (!bannerSource)
  {
    v4 = MEMORY[0x277CF0A80];
    v5 = [MEMORY[0x277D77E48] requesterIdentifier];
    v6 = [v4 bannerSourceForDestination:1 forRequesterIdentifier:v5];
    v7 = self->_bannerSource;
    self->_bannerSource = v6;

    [(BNBannerSource *)self->_bannerSource setDelegate:self];
    bannerSource = self->_bannerSource;
  }

  return bannerSource;
}

- (id)_peekPostedPresentable
{
  v2 = self;
  objc_sync_enter(v2);
  [(NSPointerArray *)v2->_postedPresentables unui_compact];
  if ([(NSPointerArray *)v2->_postedPresentables count])
  {
    v3 = [(NSPointerArray *)v2->_postedPresentables pointerAtIndex:0];
  }

  else
  {
    v3 = 0;
  }

  objc_sync_exit(v2);

  return v3;
}

+ (void)initialize
{
  v3 = objc_opt_self();

  if (v3 == a1)
  {

    NCRegisterUserNotificationsUILogging();
  }
}

- (int64_t)destination
{
  v2 = [(NCCarPlayBannerSource *)self _bannerSource];
  v3 = [v2 destination];

  return v3;
}

- (id)requesterIdentifier
{
  v2 = [(NCCarPlayBannerSource *)self _bannerSource];
  v3 = [v2 requesterIdentifier];

  return v3;
}

- (BOOL)isValid
{
  v2 = [(NCCarPlayBannerSource *)self _bannerSource];
  v3 = [v2 isValid];

  return v3;
}

- (id)layoutDescriptionWithError:(id *)a3
{
  v4 = [(NCCarPlayBannerSource *)self _bannerSource];
  v5 = [v4 layoutDescriptionWithError:a3];

  return v5;
}

- (BOOL)postPresentable:(id)a3 options:(unint64_t)a4 userInfo:(id)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a5;
  if (![(NCCarPlayBannerSource *)self _postedPresentableCount])
  {
    [(NCCarPlayBannerSource *)self _setSuspended:0 forReason:@"NCCarPlayBannerSourceSuspensionReasonBannerPresented" revokingCurrent:0];
  }

  v12 = *MEMORY[0x277CF0A60];
  v13 = [v11 mutableCopy];
  v14 = v13;
  if (v13)
  {
    v15 = v13;
  }

  else
  {
    v15 = objc_alloc_init(MEMORY[0x277CBEB38]);
  }

  v16 = v15;

  [v16 setObject:@"NCCarPlayBannerSourceSuspensionReasonBannerPresented" forKey:*MEMORY[0x277CF0AD8]];
  v17 = [MEMORY[0x277CCABB0] numberWithBool:{-[NCCarPlayBannerSource _shouldPresentableBorrowCarPlayScreen:](self, "_shouldPresentableBorrowCarPlayScreen:", v10)}];
  [v16 setObject:v17 forKey:*MEMORY[0x277CF91D8]];

  v18 = v16;
  v19 = [(NCCarPlayBannerSource *)self _bannerSource];
  v24 = 0;
  v20 = [v19 postPresentable:v10 options:v12 | a4 userInfo:v18 error:&v24];
  v21 = v24;

  if (!v20)
  {
    if (os_log_type_enabled(*MEMORY[0x277D77DB0], OS_LOG_TYPE_ERROR))
    {
      [NCCarPlayBannerSource postPresentable:options:userInfo:error:];
      if (!a6)
      {
        goto LABEL_13;
      }
    }

    else if (!a6)
    {
      goto LABEL_13;
    }

    v22 = v21;
    *a6 = v21;
    goto LABEL_13;
  }

  if (objc_opt_respondsToSelector())
  {
    [v10 addPresentableObserver:self];
  }

  [(NCCarPlayBannerSource *)self _enqueuePostedPresentable:v10];
  [(NCCarPlayBannerSource *)self _revokePreviouslyPostedPresentableIfPossible];
LABEL_13:

  return v20;
}

- (id)revokePresentableWithRequestIdentifier:(id)a3 reason:(id)a4 animated:(BOOL)a5 userInfo:(id)a6 error:(id *)a7
{
  v9 = a5;
  v28 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a4;
  v14 = a6;
  v15 = [(NCCarPlayBannerSource *)self _bannerSource];
  v16 = [v15 revokePresentableWithRequestIdentifier:v12 reason:v13 animated:v9 userInfo:v14 error:a7];

  if (v16)
  {
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v17 = v16;
    v18 = [v17 countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v24;
      do
      {
        for (i = 0; i != v19; ++i)
        {
          if (*v24 != v20)
          {
            objc_enumerationMutation(v17);
          }

          [(NCCarPlayBannerSource *)self _presentableWithIdentificationDidDisappear:*(*(&v23 + 1) + 8 * i), v23];
        }

        v19 = [v17 countByEnumeratingWithState:&v23 objects:v27 count:16];
      }

      while (v19);
    }
  }

  return v16;
}

- (id)revokeAllPresentablesWithReason:(id)a3 userInfo:(id)a4 error:(id *)a5
{
  v8 = a4;
  v9 = a3;
  v10 = [(NCCarPlayBannerSource *)self _bannerSource];
  v11 = [v10 revokeAllPresentablesWithReason:v9 userInfo:v8 error:a5];

  if (v11)
  {
    [(NCCarPlayBannerSource *)self _allPresentablesDidDisappear];
  }

  return v11;
}

- (void)invalidate
{
  [(NCCarPlayBannerSource *)self _cancelDismissTimer];
  [(NCCarPlayBannerSource *)self _cancelReplaceTimer];
  bannerSource = self->_bannerSource;
  self->_bannerSource = 0;
}

- (id)revokePresentableWithIdentification:(id)a3 reason:(id)a4 animated:(BOOL)a5 userInfo:(id)a6 error:(id *)a7
{
  v9 = a5;
  v35 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a4;
  v14 = a6;
  v15 = [(NCCarPlayBannerSource *)self _bannerSource];
  v16 = [v15 revokePresentableWithIdentification:v12 reason:v13 animated:v9 userInfo:v14 error:a7];

  if (v16)
  {
    v25 = v14;
    v26 = v16;
    v27 = v13;
    v28 = v12;
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v17 = v16;
    v18 = [v17 countByEnumeratingWithState:&v30 objects:v34 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v31;
      do
      {
        for (i = 0; i != v19; ++i)
        {
          if (*v31 != v20)
          {
            objc_enumerationMutation(v17);
          }

          v22 = *(*(&v30 + 1) + 8 * i);
          v23 = [(NCCarPlayBannerSource *)self _postedPresentablesWithIdentification:v22, v25, v26, v27, v28];
          v29[0] = MEMORY[0x277D85DD0];
          v29[1] = 3221225472;
          v29[2] = __92__NCCarPlayBannerSource_revokePresentableWithIdentification_reason_animated_userInfo_error___block_invoke;
          v29[3] = &unk_278372F78;
          v29[4] = v22;
          v29[5] = self;
          [v23 enumerateObjectsWithOptions:2 usingBlock:v29];
        }

        v19 = [v17 countByEnumeratingWithState:&v30 objects:v34 count:16];
      }

      while (v19);
    }

    v13 = v27;
    v12 = v28;
    v14 = v25;
    v16 = v26;
  }

  return v16;
}

void __92__NCCarPlayBannerSource_revokePresentableWithIdentification_reason_animated_userInfo_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (BNIsPresentableIdentifiedByIdentification())
  {
    [*(a1 + 40) _presentableDidDisappear:v3];
  }
}

- (id)keyWindowForScreen:(id)a3
{
  v4 = a3;
  if (objc_opt_respondsToSelector())
  {
    v5 = [(BNBannerSource *)self->_bannerSource keyWindowForScreen:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)setSuspended:(BOOL)a3 forReason:(id)a4 revokingCurrent:(BOOL)a5 error:(id *)a6
{
  v7 = a5;
  v8 = a3;
  v10 = a4;
  if ([v10 isEqualToString:@"PresentingAlertController"])
  {
    if (v8)
    {
      [(NCCarPlayBannerSource *)self _cancelDismissTimer];
    }

    else
    {
      [(NCCarPlayBannerSource *)self _startDismissTimer];
    }
  }

  v11 = [(NCCarPlayBannerSource *)self _bannerSource];
  v12 = [v11 setSuspended:v8 forReason:v10 revokingCurrent:v7 error:a6];

  return v12;
}

- (void)presentableDidAppearAsBanner:(id)a3
{
  v4 = a3;
  [(NCCarPlayBannerSource *)self _cancelDismissTimer];
  v5 = [(NCCarPlayBannerSource *)self _isPresentableSticky:v4];

  if (v5)
  {

    [(NCCarPlayBannerSource *)self _setSuspended:1 forReason:@"NCCarPlayBannerSourceSuspensionReasonSticky" revokingCurrent:0];
  }

  else
  {
    [(NCCarPlayBannerSource *)self _startDismissTimer];

    [(NCCarPlayBannerSource *)self _startReplaceTimer];
  }
}

- (BOOL)_isPresentableSticky:(id)a3
{
  v3 = a3;
  objc_opt_class();
  v4 = UNSafeCast();

  if (v4)
  {
    v5 = [v4 notificationRequest];
    v6 = [v5 options];
    v7 = [v6 dismissAutomaticallyForCarPlay] ^ 1;
  }

  else
  {
    LOBYTE(v7) = 0;
  }

  return v7;
}

- (BOOL)_shouldPresentableBorrowCarPlayScreen:(id)a3
{
  v3 = a3;
  objc_opt_class();
  v4 = UNSafeCast();

  if (v4)
  {
    v5 = [v4 notificationRequest];
    v6 = [v5 isCriticalAlert];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)_setSuspended:(BOOL)a3 forReason:(id)a4 revokingCurrent:(BOOL)a5
{
  v9 = 0;
  v5 = [(NCCarPlayBannerSource *)self setSuspended:a3 forReason:a4 revokingCurrent:a5 error:&v9];
  v6 = v9;
  if (!v5)
  {
    v7 = *MEMORY[0x277D77DB0];
    if (os_log_type_enabled(*MEMORY[0x277D77DB0], OS_LOG_TYPE_ERROR))
    {
      [NCCarPlayBannerSource _setSuspended:v6 forReason:v7 revokingCurrent:?];
    }
  }

  return v5;
}

- (void)_enqueuePostedPresentable:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v9 = v4;
    v5 = self;
    objc_sync_enter(v5);
    postedPresentables = v5->_postedPresentables;
    if (!postedPresentables)
    {
      v7 = [MEMORY[0x277CCAC18] weakObjectsPointerArray];
      v8 = v5->_postedPresentables;
      v5->_postedPresentables = v7;

      postedPresentables = v5->_postedPresentables;
    }

    [(NSPointerArray *)postedPresentables addPointer:v9];
    objc_sync_exit(v5);

    v4 = v9;
  }
}

- (id)_postedPresentablesWithIdentification:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v6 = self;
  objc_sync_enter(v6);
  [(NSPointerArray *)v6->_postedPresentables unui_compact];
  for (i = 0; i < [(NSPointerArray *)v6->_postedPresentables count]; ++i)
  {
    v8 = [(NSPointerArray *)v6->_postedPresentables pointerAtIndex:i];
    if (BNIsPresentableIdentifiedByIdentification())
    {
      [v5 addObject:v8];
    }
  }

  objc_sync_exit(v6);

  return v5;
}

- (unint64_t)_indexOfPostedPresentable:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  [(NSPointerArray *)v5->_postedPresentables unui_compact];
  for (i = 0; i < [(NSPointerArray *)v5->_postedPresentables count]; ++i)
  {
    v7 = [(NSPointerArray *)v5->_postedPresentables pointerAtIndex:i];

    if (v7 == v4)
    {
      goto LABEL_6;
    }
  }

  i = 0x7FFFFFFFFFFFFFFFLL;
LABEL_6:
  objc_sync_exit(v5);

  return i;
}

- (id)_pullPostedPresentableAtIndex:(unint64_t)a3
{
  if (a3 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v3 = 0;
  }

  else
  {
    v5 = self;
    objc_sync_enter(v5);
    [(NSPointerArray *)v5->_postedPresentables unui_compact];
    v3 = [(NSPointerArray *)v5->_postedPresentables pointerAtIndex:a3];
    [(NSPointerArray *)v5->_postedPresentables removePointerAtIndex:a3];
    if (![(NSPointerArray *)v5->_postedPresentables count])
    {
      postedPresentables = v5->_postedPresentables;
      v5->_postedPresentables = 0;
    }

    objc_sync_exit(v5);
  }

  return v3;
}

- (void)_presentableDidDisappear:(id)a3
{
  v8 = a3;
  v4 = [(NCCarPlayBannerSource *)self _indexOfPostedPresentable:v8];
  if (v4 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = v4;
    if (objc_opt_respondsToSelector())
    {
      [v8 removePresentableObserver:self];
    }

    v6 = [(NCCarPlayBannerSource *)self _peekPostedPresentable];

    v7 = [(NCCarPlayBannerSource *)self _pullPostedPresentableAtIndex:v5];
    if (v6 == v8)
    {
      [(NCCarPlayBannerSource *)self _setSuspended:0 forReason:@"NCCarPlayBannerSourceSuspensionReasonBannerPresented" revokingCurrent:0];
      if ([(NCCarPlayBannerSource *)self _isPresentableSticky:v8])
      {
        [(NCCarPlayBannerSource *)self _setSuspended:0 forReason:@"NCCarPlayBannerSourceSuspensionReasonSticky" revokingCurrent:0];
      }
    }
  }

  MEMORY[0x2821F9730]();
}

- (void)_presentableWithIdentificationDidDisappear:(id)a3
{
  v4 = [(NCCarPlayBannerSource *)self _postedPresentablesWithIdentification:a3];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __68__NCCarPlayBannerSource__presentableWithIdentificationDidDisappear___block_invoke;
  v5[3] = &unk_278372FA0;
  v5[4] = self;
  [v4 enumerateObjectsWithOptions:2 usingBlock:v5];
}

- (void)_allPresentablesDidDisappear
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(NSPointerArray *)v2->_postedPresentables allObjects];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __53__NCCarPlayBannerSource__allPresentablesDidDisappear__block_invoke;
  v4[3] = &unk_278372FA0;
  v4[4] = v2;
  [v3 enumerateObjectsWithOptions:2 usingBlock:v4];

  objc_sync_exit(v2);
}

- (void)_startDismissTimerWithTimeInterval:(double)a3
{
  if (!self->_dismissTimer)
  {
    objc_initWeak(&location, self);
    v5 = MEMORY[0x277CBEBB8];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __60__NCCarPlayBannerSource__startDismissTimerWithTimeInterval___block_invoke;
    v8[3] = &unk_2783713F8;
    objc_copyWeak(&v9, &location);
    v6 = [v5 scheduledTimerWithTimeInterval:0 repeats:v8 block:a3];
    dismissTimer = self->_dismissTimer;
    self->_dismissTimer = v6;

    objc_destroyWeak(&v9);
    objc_destroyWeak(&location);
  }
}

void __60__NCCarPlayBannerSource__startDismissTimerWithTimeInterval___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained _dismissTimer];

  if (v5 == v3)
  {
    [WeakRetained _setDismissTimer:0];
  }

  v6 = [WeakRetained _peekPostedPresentable];
  if (v6)
  {
    v7 = [MEMORY[0x277CF0AC0] uniqueIdentificationForPresentable:v6];
    v10 = 0;
    v8 = [WeakRetained revokePresentableWithIdentification:v7 reason:@"NCCarPlayBannerRevocationReasonAutomaticDismissal" animated:1 userInfo:0 error:&v10];
    v9 = v10;

    if (!v8 && os_log_type_enabled(*MEMORY[0x277D77DB0], OS_LOG_TYPE_ERROR))
    {
      __60__NCCarPlayBannerSource__startDismissTimerWithTimeInterval___block_invoke_cold_1();
    }
  }
}

- (void)_cancelDismissTimer
{
  [(NSTimer *)self->_dismissTimer invalidate];
  dismissTimer = self->_dismissTimer;
  self->_dismissTimer = 0;
}

- (void)_startReplaceTimer
{
  if (!self->_replaceTimer)
  {
    objc_initWeak(&location, self);
    v3 = MEMORY[0x277CBEBB8];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __43__NCCarPlayBannerSource__startReplaceTimer__block_invoke;
    v6[3] = &unk_2783713F8;
    objc_copyWeak(&v7, &location);
    v4 = [v3 scheduledTimerWithTimeInterval:0 repeats:v6 block:4.0];
    replaceTimer = self->_replaceTimer;
    self->_replaceTimer = v4;

    objc_destroyWeak(&v7);
    objc_destroyWeak(&location);
  }
}

- (void)_cancelReplaceTimer
{
  [(NSTimer *)self->_replaceTimer invalidate];
  replaceTimer = self->_replaceTimer;
  self->_replaceTimer = 0;
}

- (id)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->delegate);

  return WeakRetained;
}

- (void)didBeginAnnounceForNotificationRequest:(id)a3
{
  [(NCCarPlayBannerSource *)self _cancelReplaceTimer];

  [(NCCarPlayBannerSource *)self _cancelDismissTimer];
}

- (void)didFinishAnnounceForNotificationRequest:(id)a3
{
  v4 = [(NCCarPlayBannerSource *)self _peekPostedPresentable];
  if (v4)
  {
    v4 = [(NCCarPlayBannerSource *)self _isPresentableSticky:v4];
    if ((v4 & 1) == 0)
    {
      [(NCCarPlayBannerSource *)self _startReplaceTimer];
      [(NCCarPlayBannerSource *)self _cancelDismissTimer];
      v4 = [(NCCarPlayBannerSource *)self _startAnnounceDismissalTimer];
    }
  }

  MEMORY[0x2821F96F8](v4);
}

- (void)_setSuspended:(uint64_t)a1 forReason:(NSObject *)a2 revokingCurrent:.cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&dword_21E77E000, a2, OS_LOG_TYPE_ERROR, "Error attempting to suspend: %{public}@", &v2, 0xCu);
}

@end