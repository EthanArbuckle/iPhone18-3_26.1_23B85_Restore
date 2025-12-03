@interface NCCarPlayBannerSource
+ (void)initialize;
- (BOOL)_isPresentableSticky:(id)sticky;
- (BOOL)_setSuspended:(BOOL)suspended forReason:(id)reason revokingCurrent:(BOOL)current;
- (BOOL)_shouldPresentableBorrowCarPlayScreen:(id)screen;
- (BOOL)isValid;
- (BOOL)postPresentable:(id)presentable options:(unint64_t)options userInfo:(id)info error:(id *)error;
- (BOOL)setSuspended:(BOOL)suspended forReason:(id)reason revokingCurrent:(BOOL)current error:(id *)error;
- (id)_bannerSource;
- (id)_peekPostedPresentable;
- (id)_postedPresentablesWithIdentification:(id)identification;
- (id)_pullPostedPresentableAtIndex:(unint64_t)index;
- (id)delegate;
- (id)keyWindowForScreen:(id)screen;
- (id)layoutDescriptionWithError:(id *)error;
- (id)requesterIdentifier;
- (id)revokeAllPresentablesWithReason:(id)reason userInfo:(id)info error:(id *)error;
- (id)revokePresentableWithIdentification:(id)identification reason:(id)reason animated:(BOOL)animated userInfo:(id)info error:(id *)error;
- (id)revokePresentableWithRequestIdentifier:(id)identifier reason:(id)reason animated:(BOOL)animated userInfo:(id)info error:(id *)error;
- (int64_t)destination;
- (unint64_t)_indexOfPostedPresentable:(id)presentable;
- (unint64_t)_postedPresentableCount;
- (void)_allPresentablesDidDisappear;
- (void)_cancelDismissTimer;
- (void)_cancelReplaceTimer;
- (void)_enqueuePostedPresentable:(id)presentable;
- (void)_presentableDidDisappear:(id)disappear;
- (void)_presentableWithIdentificationDidDisappear:(id)disappear;
- (void)_revokePreviouslyPostedPresentableIfPossible;
- (void)_startDismissTimerWithTimeInterval:(double)interval;
- (void)_startReplaceTimer;
- (void)didBeginAnnounceForNotificationRequest:(id)request;
- (void)didFinishAnnounceForNotificationRequest:(id)request;
- (void)invalidate;
- (void)presentableDidAppearAsBanner:(id)banner;
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
    _peekPostedPresentable = [(NCCarPlayBannerSource *)self _peekPostedPresentable];
    if ([(NCCarPlayBannerSource *)self _isPresentableSticky:_peekPostedPresentable])
    {
      v4 = 0;
    }

    else
    {
      v5 = [MEMORY[0x277CF0AC0] uniqueIdentificationForPresentable:_peekPostedPresentable];
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
  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(NSPointerArray *)selfCopy->_postedPresentables unui_compact];
  v3 = [(NSPointerArray *)selfCopy->_postedPresentables count];
  objc_sync_exit(selfCopy);

  return v3;
}

- (id)_bannerSource
{
  bannerSource = self->_bannerSource;
  if (!bannerSource)
  {
    v4 = MEMORY[0x277CF0A80];
    requesterIdentifier = [MEMORY[0x277D77E48] requesterIdentifier];
    v6 = [v4 bannerSourceForDestination:1 forRequesterIdentifier:requesterIdentifier];
    v7 = self->_bannerSource;
    self->_bannerSource = v6;

    [(BNBannerSource *)self->_bannerSource setDelegate:self];
    bannerSource = self->_bannerSource;
  }

  return bannerSource;
}

- (id)_peekPostedPresentable
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(NSPointerArray *)selfCopy->_postedPresentables unui_compact];
  if ([(NSPointerArray *)selfCopy->_postedPresentables count])
  {
    v3 = [(NSPointerArray *)selfCopy->_postedPresentables pointerAtIndex:0];
  }

  else
  {
    v3 = 0;
  }

  objc_sync_exit(selfCopy);

  return v3;
}

+ (void)initialize
{
  v3 = objc_opt_self();

  if (v3 == self)
  {

    NCRegisterUserNotificationsUILogging();
  }
}

- (int64_t)destination
{
  _bannerSource = [(NCCarPlayBannerSource *)self _bannerSource];
  destination = [_bannerSource destination];

  return destination;
}

- (id)requesterIdentifier
{
  _bannerSource = [(NCCarPlayBannerSource *)self _bannerSource];
  requesterIdentifier = [_bannerSource requesterIdentifier];

  return requesterIdentifier;
}

- (BOOL)isValid
{
  _bannerSource = [(NCCarPlayBannerSource *)self _bannerSource];
  isValid = [_bannerSource isValid];

  return isValid;
}

- (id)layoutDescriptionWithError:(id *)error
{
  _bannerSource = [(NCCarPlayBannerSource *)self _bannerSource];
  v5 = [_bannerSource layoutDescriptionWithError:error];

  return v5;
}

- (BOOL)postPresentable:(id)presentable options:(unint64_t)options userInfo:(id)info error:(id *)error
{
  presentableCopy = presentable;
  infoCopy = info;
  if (![(NCCarPlayBannerSource *)self _postedPresentableCount])
  {
    [(NCCarPlayBannerSource *)self _setSuspended:0 forReason:@"NCCarPlayBannerSourceSuspensionReasonBannerPresented" revokingCurrent:0];
  }

  v12 = *MEMORY[0x277CF0A60];
  v13 = [infoCopy mutableCopy];
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
  v17 = [MEMORY[0x277CCABB0] numberWithBool:{-[NCCarPlayBannerSource _shouldPresentableBorrowCarPlayScreen:](self, "_shouldPresentableBorrowCarPlayScreen:", presentableCopy)}];
  [v16 setObject:v17 forKey:*MEMORY[0x277CF91D8]];

  v18 = v16;
  _bannerSource = [(NCCarPlayBannerSource *)self _bannerSource];
  v24 = 0;
  v20 = [_bannerSource postPresentable:presentableCopy options:v12 | options userInfo:v18 error:&v24];
  v21 = v24;

  if (!v20)
  {
    if (os_log_type_enabled(*MEMORY[0x277D77DB0], OS_LOG_TYPE_ERROR))
    {
      [NCCarPlayBannerSource postPresentable:options:userInfo:error:];
      if (!error)
      {
        goto LABEL_13;
      }
    }

    else if (!error)
    {
      goto LABEL_13;
    }

    v22 = v21;
    *error = v21;
    goto LABEL_13;
  }

  if (objc_opt_respondsToSelector())
  {
    [presentableCopy addPresentableObserver:self];
  }

  [(NCCarPlayBannerSource *)self _enqueuePostedPresentable:presentableCopy];
  [(NCCarPlayBannerSource *)self _revokePreviouslyPostedPresentableIfPossible];
LABEL_13:

  return v20;
}

- (id)revokePresentableWithRequestIdentifier:(id)identifier reason:(id)reason animated:(BOOL)animated userInfo:(id)info error:(id *)error
{
  animatedCopy = animated;
  v28 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  reasonCopy = reason;
  infoCopy = info;
  _bannerSource = [(NCCarPlayBannerSource *)self _bannerSource];
  v16 = [_bannerSource revokePresentableWithRequestIdentifier:identifierCopy reason:reasonCopy animated:animatedCopy userInfo:infoCopy error:error];

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

- (id)revokeAllPresentablesWithReason:(id)reason userInfo:(id)info error:(id *)error
{
  infoCopy = info;
  reasonCopy = reason;
  _bannerSource = [(NCCarPlayBannerSource *)self _bannerSource];
  v11 = [_bannerSource revokeAllPresentablesWithReason:reasonCopy userInfo:infoCopy error:error];

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

- (id)revokePresentableWithIdentification:(id)identification reason:(id)reason animated:(BOOL)animated userInfo:(id)info error:(id *)error
{
  animatedCopy = animated;
  v35 = *MEMORY[0x277D85DE8];
  identificationCopy = identification;
  reasonCopy = reason;
  infoCopy = info;
  _bannerSource = [(NCCarPlayBannerSource *)self _bannerSource];
  v16 = [_bannerSource revokePresentableWithIdentification:identificationCopy reason:reasonCopy animated:animatedCopy userInfo:infoCopy error:error];

  if (v16)
  {
    v25 = infoCopy;
    v26 = v16;
    v27 = reasonCopy;
    v28 = identificationCopy;
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

    reasonCopy = v27;
    identificationCopy = v28;
    infoCopy = v25;
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

- (id)keyWindowForScreen:(id)screen
{
  screenCopy = screen;
  if (objc_opt_respondsToSelector())
  {
    v5 = [(BNBannerSource *)self->_bannerSource keyWindowForScreen:screenCopy];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)setSuspended:(BOOL)suspended forReason:(id)reason revokingCurrent:(BOOL)current error:(id *)error
{
  currentCopy = current;
  suspendedCopy = suspended;
  reasonCopy = reason;
  if ([reasonCopy isEqualToString:@"PresentingAlertController"])
  {
    if (suspendedCopy)
    {
      [(NCCarPlayBannerSource *)self _cancelDismissTimer];
    }

    else
    {
      [(NCCarPlayBannerSource *)self _startDismissTimer];
    }
  }

  _bannerSource = [(NCCarPlayBannerSource *)self _bannerSource];
  v12 = [_bannerSource setSuspended:suspendedCopy forReason:reasonCopy revokingCurrent:currentCopy error:error];

  return v12;
}

- (void)presentableDidAppearAsBanner:(id)banner
{
  bannerCopy = banner;
  [(NCCarPlayBannerSource *)self _cancelDismissTimer];
  v5 = [(NCCarPlayBannerSource *)self _isPresentableSticky:bannerCopy];

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

- (BOOL)_isPresentableSticky:(id)sticky
{
  stickyCopy = sticky;
  objc_opt_class();
  v4 = UNSafeCast();

  if (v4)
  {
    notificationRequest = [v4 notificationRequest];
    options = [notificationRequest options];
    v7 = [options dismissAutomaticallyForCarPlay] ^ 1;
  }

  else
  {
    LOBYTE(v7) = 0;
  }

  return v7;
}

- (BOOL)_shouldPresentableBorrowCarPlayScreen:(id)screen
{
  screenCopy = screen;
  objc_opt_class();
  v4 = UNSafeCast();

  if (v4)
  {
    notificationRequest = [v4 notificationRequest];
    isCriticalAlert = [notificationRequest isCriticalAlert];
  }

  else
  {
    isCriticalAlert = 0;
  }

  return isCriticalAlert;
}

- (BOOL)_setSuspended:(BOOL)suspended forReason:(id)reason revokingCurrent:(BOOL)current
{
  v9 = 0;
  v5 = [(NCCarPlayBannerSource *)self setSuspended:suspended forReason:reason revokingCurrent:current error:&v9];
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

- (void)_enqueuePostedPresentable:(id)presentable
{
  presentableCopy = presentable;
  if (presentableCopy)
  {
    v9 = presentableCopy;
    selfCopy = self;
    objc_sync_enter(selfCopy);
    postedPresentables = selfCopy->_postedPresentables;
    if (!postedPresentables)
    {
      weakObjectsPointerArray = [MEMORY[0x277CCAC18] weakObjectsPointerArray];
      v8 = selfCopy->_postedPresentables;
      selfCopy->_postedPresentables = weakObjectsPointerArray;

      postedPresentables = selfCopy->_postedPresentables;
    }

    [(NSPointerArray *)postedPresentables addPointer:v9];
    objc_sync_exit(selfCopy);

    presentableCopy = v9;
  }
}

- (id)_postedPresentablesWithIdentification:(id)identification
{
  identificationCopy = identification;
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(NSPointerArray *)selfCopy->_postedPresentables unui_compact];
  for (i = 0; i < [(NSPointerArray *)selfCopy->_postedPresentables count]; ++i)
  {
    v8 = [(NSPointerArray *)selfCopy->_postedPresentables pointerAtIndex:i];
    if (BNIsPresentableIdentifiedByIdentification())
    {
      [v5 addObject:v8];
    }
  }

  objc_sync_exit(selfCopy);

  return v5;
}

- (unint64_t)_indexOfPostedPresentable:(id)presentable
{
  presentableCopy = presentable;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(NSPointerArray *)selfCopy->_postedPresentables unui_compact];
  for (i = 0; i < [(NSPointerArray *)selfCopy->_postedPresentables count]; ++i)
  {
    v7 = [(NSPointerArray *)selfCopy->_postedPresentables pointerAtIndex:i];

    if (v7 == presentableCopy)
    {
      goto LABEL_6;
    }
  }

  i = 0x7FFFFFFFFFFFFFFFLL;
LABEL_6:
  objc_sync_exit(selfCopy);

  return i;
}

- (id)_pullPostedPresentableAtIndex:(unint64_t)index
{
  if (index == 0x7FFFFFFFFFFFFFFFLL)
  {
    v3 = 0;
  }

  else
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    [(NSPointerArray *)selfCopy->_postedPresentables unui_compact];
    v3 = [(NSPointerArray *)selfCopy->_postedPresentables pointerAtIndex:index];
    [(NSPointerArray *)selfCopy->_postedPresentables removePointerAtIndex:index];
    if (![(NSPointerArray *)selfCopy->_postedPresentables count])
    {
      postedPresentables = selfCopy->_postedPresentables;
      selfCopy->_postedPresentables = 0;
    }

    objc_sync_exit(selfCopy);
  }

  return v3;
}

- (void)_presentableDidDisappear:(id)disappear
{
  disappearCopy = disappear;
  v4 = [(NCCarPlayBannerSource *)self _indexOfPostedPresentable:disappearCopy];
  if (v4 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = v4;
    if (objc_opt_respondsToSelector())
    {
      [disappearCopy removePresentableObserver:self];
    }

    _peekPostedPresentable = [(NCCarPlayBannerSource *)self _peekPostedPresentable];

    v7 = [(NCCarPlayBannerSource *)self _pullPostedPresentableAtIndex:v5];
    if (_peekPostedPresentable == disappearCopy)
    {
      [(NCCarPlayBannerSource *)self _setSuspended:0 forReason:@"NCCarPlayBannerSourceSuspensionReasonBannerPresented" revokingCurrent:0];
      if ([(NCCarPlayBannerSource *)self _isPresentableSticky:disappearCopy])
      {
        [(NCCarPlayBannerSource *)self _setSuspended:0 forReason:@"NCCarPlayBannerSourceSuspensionReasonSticky" revokingCurrent:0];
      }
    }
  }

  MEMORY[0x2821F9730]();
}

- (void)_presentableWithIdentificationDidDisappear:(id)disappear
{
  v4 = [(NCCarPlayBannerSource *)self _postedPresentablesWithIdentification:disappear];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __68__NCCarPlayBannerSource__presentableWithIdentificationDidDisappear___block_invoke;
  v5[3] = &unk_278372FA0;
  v5[4] = self;
  [v4 enumerateObjectsWithOptions:2 usingBlock:v5];
}

- (void)_allPresentablesDidDisappear
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  allObjects = [(NSPointerArray *)selfCopy->_postedPresentables allObjects];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __53__NCCarPlayBannerSource__allPresentablesDidDisappear__block_invoke;
  v4[3] = &unk_278372FA0;
  v4[4] = selfCopy;
  [allObjects enumerateObjectsWithOptions:2 usingBlock:v4];

  objc_sync_exit(selfCopy);
}

- (void)_startDismissTimerWithTimeInterval:(double)interval
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
    v6 = [v5 scheduledTimerWithTimeInterval:0 repeats:v8 block:interval];
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

- (void)didBeginAnnounceForNotificationRequest:(id)request
{
  [(NCCarPlayBannerSource *)self _cancelReplaceTimer];

  [(NCCarPlayBannerSource *)self _cancelDismissTimer];
}

- (void)didFinishAnnounceForNotificationRequest:(id)request
{
  _peekPostedPresentable = [(NCCarPlayBannerSource *)self _peekPostedPresentable];
  if (_peekPostedPresentable)
  {
    _peekPostedPresentable = [(NCCarPlayBannerSource *)self _isPresentableSticky:_peekPostedPresentable];
    if ((_peekPostedPresentable & 1) == 0)
    {
      [(NCCarPlayBannerSource *)self _startReplaceTimer];
      [(NCCarPlayBannerSource *)self _cancelDismissTimer];
      _peekPostedPresentable = [(NCCarPlayBannerSource *)self _startAnnounceDismissalTimer];
    }
  }

  MEMORY[0x2821F96F8](_peekPostedPresentable);
}

- (void)_setSuspended:(uint64_t)a1 forReason:(NSObject *)a2 revokingCurrent:.cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&dword_21E77E000, a2, OS_LOG_TYPE_ERROR, "Error attempting to suspend: %{public}@", &v2, 0xCu);
}

@end