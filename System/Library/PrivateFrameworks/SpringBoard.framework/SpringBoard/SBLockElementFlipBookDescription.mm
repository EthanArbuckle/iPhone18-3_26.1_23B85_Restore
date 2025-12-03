@interface SBLockElementFlipBookDescription
- (BOOL)isSequenceFrom:(id)from to:(id)to supportedConcurrentlyWithContainerSequence:(id)sequence toContainerState:(id)state;
- (BOOL)isSequenceSecure:(id)secure toState:(id)state;
- (CGRect)captureBounds;
- (NSArray)states;
- (SBLockElementFlipBookDescription)initWithViewProvider:(id)provider lockView:(id)view;
- (id)allowedNextStatesForState:(id)state;
- (void)resetToState:(id)state completion:(id)completion;
- (void)transitionToState:(id)state completion:(id)completion;
@end

@implementation SBLockElementFlipBookDescription

- (SBLockElementFlipBookDescription)initWithViewProvider:(id)provider lockView:(id)view
{
  providerCopy = provider;
  viewCopy = view;
  v11.receiver = self;
  v11.super_class = SBLockElementFlipBookDescription;
  v8 = [(SBLockElementFlipBookDescription *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_viewProvider, providerCopy);
    objc_storeStrong(&v9->_lockView, view);
    objc_storeStrong(&v9->_currentState, SBLockElementFlipBookStateSleep);
  }

  return v9;
}

- (BOOL)isSequenceSecure:(id)secure toState:(id)state
{
  stateCopy = state;
  if ([stateCopy isEqual:SBLockElementFlipBookStateError] & 1) != 0 || (objc_msgSend(stateCopy, "isEqual:", SBLockElementFlipBookStateErrorScaled) & 1) != 0 || (objc_msgSend(stateCopy, "isEqual:", SBLockElementFlipBookStateUnlockedSecure))
  {
    v5 = 1;
  }

  else
  {
    v5 = [stateCopy isEqual:SBLockElementFlipBookStateUnlockedScaledSecure];
  }

  return v5;
}

- (CGRect)captureBounds
{
  [(SBUIProudLockIconView *)self->_lockView frame];

  return CGRectInset(*&v2, -5.0, 0.0);
}

- (NSArray)states
{
  v4[9] = *MEMORY[0x277D85DE8];
  v4[0] = SBLockElementFlipBookStateLocked;
  v4[1] = SBLockElementFlipBookStateLockedScaled;
  v4[2] = SBLockElementFlipBookStateUnlockedSecure;
  v4[3] = SBLockElementFlipBookStateUnlocked;
  v4[4] = SBLockElementFlipBookStateUnlockedScaledSecure;
  v4[5] = SBLockElementFlipBookStateUnlockedScaled;
  v4[6] = SBLockElementFlipBookStateError;
  v4[7] = SBLockElementFlipBookStateErrorScaled;
  v4[8] = SBLockElementFlipBookStateSleep;
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:9];

  return v2;
}

- (id)allowedNextStatesForState:(id)state
{
  v42 = *MEMORY[0x277D85DE8];
  stateCopy = state;
  if ([stateCopy isEqual:SBLockElementFlipBookStateSleep])
  {
    v38 = SBLockElementFlipBookStateSleep;
    v39 = SBLockElementFlipBookStateLocked;
    v40 = SBLockElementFlipBookStateLockedScaled;
    v41 = SBLockElementFlipBookStateUnlockedSecure;
    v4 = MEMORY[0x277CBEA60];
    v5 = &v38;
    v6 = 4;
LABEL_8:
    v7 = [v4 arrayWithObjects:v5 count:{v6, v9, v10, v11, v12, v13, v14, v15, v16, v17, v18, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42}];
    goto LABEL_9;
  }

  if ([stateCopy isEqual:SBLockElementFlipBookStateLocked])
  {
    v32 = SBLockElementFlipBookStateSleep;
    v33 = SBLockElementFlipBookStateLocked;
    v34 = SBLockElementFlipBookStateLockedScaled;
    v35 = SBLockElementFlipBookStateUnlockedSecure;
    v36 = SBLockElementFlipBookStateUnlockedScaledSecure;
    v37 = SBLockElementFlipBookStateError;
    v4 = MEMORY[0x277CBEA60];
    v5 = &v32;
LABEL_7:
    v6 = 6;
    goto LABEL_8;
  }

  if ([stateCopy isEqual:SBLockElementFlipBookStateLockedScaled])
  {
    v26 = SBLockElementFlipBookStateSleep;
    v27 = SBLockElementFlipBookStateLocked;
    v28 = SBLockElementFlipBookStateUnlockedSecure;
    v29 = SBLockElementFlipBookStateLockedScaled;
    v30 = SBLockElementFlipBookStateUnlockedScaledSecure;
    v31 = SBLockElementFlipBookStateErrorScaled;
    v4 = MEMORY[0x277CBEA60];
    v5 = &v26;
    goto LABEL_7;
  }

  if ([stateCopy isEqual:SBLockElementFlipBookStateUnlockedSecure])
  {
    v24 = SBLockElementFlipBookStateUnlockedSecure;
    v25 = SBLockElementFlipBookStateUnlocked;
    v4 = MEMORY[0x277CBEA60];
    v5 = &v24;
LABEL_14:
    v6 = 2;
    goto LABEL_8;
  }

  if ([stateCopy isEqual:SBLockElementFlipBookStateUnlocked])
  {
    v21 = SBLockElementFlipBookStateSleep;
    v22 = SBLockElementFlipBookStateLocked;
    v23 = SBLockElementFlipBookStateUnlocked;
    v4 = MEMORY[0x277CBEA60];
    v5 = &v21;
    v6 = 3;
    goto LABEL_8;
  }

  if ([stateCopy isEqual:SBLockElementFlipBookStateUnlockedScaledSecure])
  {
    v19 = SBLockElementFlipBookStateUnlockedScaledSecure;
    v20 = SBLockElementFlipBookStateUnlockedScaled;
    v4 = MEMORY[0x277CBEA60];
    v5 = &v19;
    goto LABEL_14;
  }

  if ([stateCopy isEqual:SBLockElementFlipBookStateUnlockedScaled])
  {
    v13 = SBLockElementFlipBookStateSleep;
    v14 = SBLockElementFlipBookStateLocked;
    v15 = SBLockElementFlipBookStateUnlocked;
    v16 = SBLockElementFlipBookStateLockedScaled;
    v17 = SBLockElementFlipBookStateUnlockedScaledSecure;
    v18 = SBLockElementFlipBookStateUnlockedScaled;
    v4 = MEMORY[0x277CBEA60];
    v5 = &v13;
    goto LABEL_7;
  }

  if ([stateCopy isEqual:SBLockElementFlipBookStateError])
  {
    v11 = SBLockElementFlipBookStateError;
    v12 = SBLockElementFlipBookStateLocked;
    v4 = MEMORY[0x277CBEA60];
    v5 = &v11;
    goto LABEL_14;
  }

  if ([stateCopy isEqual:SBLockElementFlipBookStateErrorScaled])
  {
    v9 = SBLockElementFlipBookStateErrorScaled;
    v10 = SBLockElementFlipBookStateLockedScaled;
    v4 = MEMORY[0x277CBEA60];
    v5 = &v9;
    goto LABEL_14;
  }

  v7 = MEMORY[0x277CBEBF8];
LABEL_9:

  return v7;
}

- (BOOL)isSequenceFrom:(id)from to:(id)to supportedConcurrentlyWithContainerSequence:(id)sequence toContainerState:(id)state
{
  v17[4] = *MEMORY[0x277D85DE8];
  fromCopy = from;
  toCopy = to;
  sequenceCopy = sequence;
  stateCopy = state;
  v13 = [fromCopy isEqual:SBLockElementFlipBookStateSleep];
  if (![sequenceCopy isEqual:@"hidden"] || !objc_msgSend(stateCopy, "isEqual:", @"presented"))
  {
    if (![sequenceCopy isEqual:@"presented"] || !objc_msgSend(stateCopy, "isEqual:", @"hidden"))
    {
      if ([sequenceCopy isEqual:@"presented"] && objc_msgSend(stateCopy, "isEqual:", @"presented"))
      {
        if ((v13 & 1) == 0)
        {
          v13 = [toCopy isEqual:SBLockElementFlipBookStateSleep] ^ 1;
          goto LABEL_17;
        }
      }

      else if ([sequenceCopy isEqual:@"hidden"] && objc_msgSend(stateCopy, "isEqual:", @"hidden"))
      {
        LOBYTE(v13) = [toCopy isEqual:SBLockElementFlipBookStateSleep];
        goto LABEL_17;
      }

      LOBYTE(v13) = 0;
      goto LABEL_17;
    }

    v14 = [MEMORY[0x277CBEB98] setWithObjects:{fromCopy, toCopy, 0}];
    v15 = [MEMORY[0x277CBEB98] setWithObjects:{SBLockElementFlipBookStateError, SBLockElementFlipBookStateErrorScaled, 0}];
    v13 = [v14 intersectsSet:v15] ^ 1;

    goto LABEL_8;
  }

  if (v13)
  {
    v17[0] = SBLockElementFlipBookStateSleep;
    v17[1] = SBLockElementFlipBookStateLocked;
    v17[2] = SBLockElementFlipBookStateLockedScaled;
    v17[3] = SBLockElementFlipBookStateUnlockedSecure;
    v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:4];
    LOBYTE(v13) = [v14 containsObject:toCopy];
LABEL_8:
  }

LABEL_17:

  return v13;
}

- (void)resetToState:(id)state completion:(id)completion
{
  v25 = *MEMORY[0x277D85DE8];
  stateCopy = state;
  completionCopy = completion;
  WeakRetained = objc_loadWeakRetained(&self->_viewProvider);
  v9 = stateCopy;
  if ([v9 isEqual:SBLockElementFlipBookStateSleep])
  {
    v10 = 0;
  }

  else if ([v9 isEqual:SBLockElementFlipBookStateLocked])
  {
    v10 = 1;
  }

  else if ([v9 isEqual:SBLockElementFlipBookStateLockedScaled])
  {
    v10 = 5;
  }

  else if ([v9 isEqual:SBLockElementFlipBookStateUnlockedSecure])
  {
    v10 = 2;
  }

  else if ([v9 isEqual:SBLockElementFlipBookStateUnlocked])
  {
    v10 = 3;
  }

  else if ([v9 isEqual:SBLockElementFlipBookStateUnlockedScaledSecure])
  {
    v10 = 7;
  }

  else if ([v9 isEqual:SBLockElementFlipBookStateUnlockedScaled])
  {
    v10 = 8;
  }

  else if ([v9 isEqual:SBLockElementFlipBookStateError])
  {
    v10 = 4;
  }

  else if ([v9 isEqual:SBLockElementFlipBookStateErrorScaled])
  {
    v10 = 9;
  }

  else
  {
    v10 = 4;
  }

  v11 = SBLogSystemApertureLockElement();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v24 = v9;
    _os_log_impl(&dword_21ED4E000, v11, OS_LOG_TYPE_DEFAULT, "Resetting leading view: %@", buf, 0xCu);
  }

  v12 = MEMORY[0x277D65DA0];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __60__SBLockElementFlipBookDescription_resetToState_completion___block_invoke;
  v19[3] = &unk_2783BD4D8;
  v20 = WeakRetained;
  v22 = v10;
  v21 = v9;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __60__SBLockElementFlipBookDescription_resetToState_completion___block_invoke_2_60;
  v16[3] = &unk_2783B9188;
  v16[4] = self;
  v17 = v21;
  v18 = completionCopy;
  v13 = completionCopy;
  v14 = v21;
  v15 = WeakRetained;
  [v12 perform:v19 finalCompletion:v16];
}

void __60__SBLockElementFlipBookDescription_resetToState_completion___block_invoke(uint64_t a1, void (**a2)(id, __CFString *))
{
  v4 = a2 + 2;
  v3 = a2[2];
  v5 = a2;
  v6 = v3();
  v7 = (*v4)(v5, @"viewProviderAnimations");

  v8 = [*(a1 + 32) platformElementHost];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __60__SBLockElementFlipBookDescription_resetToState_completion___block_invoke_2;
  v16[3] = &unk_2783AB780;
  v9 = *(a1 + 32);
  v11 = *(a1 + 40);
  v10 = *(a1 + 48);
  v17 = v9;
  v20 = v10;
  v18 = v11;
  v19 = v7;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __60__SBLockElementFlipBookDescription_resetToState_completion___block_invoke_58;
  v14[3] = &unk_2783A9348;
  v15 = v6;
  v12 = v6;
  v13 = v7;
  [v8 performAction:v16 withCompletionUponAnimationSettling:v14];
}

void __60__SBLockElementFlipBookDescription_resetToState_completion___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 56);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __60__SBLockElementFlipBookDescription_resetToState_completion___block_invoke_3;
  v4[3] = &unk_2783A98A0;
  v3 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  [v3 _requestSecureState:v2 completion:v4];
}

uint64_t __60__SBLockElementFlipBookDescription_resetToState_completion___block_invoke_3(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = SBLogSystemApertureLockElement();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&dword_21ED4E000, v2, OS_LOG_TYPE_DEFAULT, "Reset leading view: %@", &v5, 0xCu);
  }

  return (*(*(a1 + 40) + 16))();
}

void __60__SBLockElementFlipBookDescription_resetToState_completion___block_invoke_2_60(uint64_t a1)
{
  objc_storeStrong((*(a1 + 32) + 24), *(a1 + 40));
  v2 = dispatch_time(0, 266666666);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __60__SBLockElementFlipBookDescription_resetToState_completion___block_invoke_3_61;
  block[3] = &unk_2783A9348;
  v4 = *(a1 + 48);
  dispatch_after(v2, MEMORY[0x277D85CD0], block);
}

- (void)transitionToState:(id)state completion:(id)completion
{
  v25 = *MEMORY[0x277D85DE8];
  stateCopy = state;
  completionCopy = completion;
  WeakRetained = objc_loadWeakRetained(&self->_viewProvider);
  v9 = stateCopy;
  if ([v9 isEqual:SBLockElementFlipBookStateSleep])
  {
    v10 = 0;
  }

  else if ([v9 isEqual:SBLockElementFlipBookStateLocked])
  {
    v10 = 1;
  }

  else if ([v9 isEqual:SBLockElementFlipBookStateLockedScaled])
  {
    v10 = 5;
  }

  else if ([v9 isEqual:SBLockElementFlipBookStateUnlockedSecure])
  {
    v10 = 2;
  }

  else if ([v9 isEqual:SBLockElementFlipBookStateUnlocked])
  {
    v10 = 3;
  }

  else if ([v9 isEqual:SBLockElementFlipBookStateUnlockedScaledSecure])
  {
    v10 = 7;
  }

  else if ([v9 isEqual:SBLockElementFlipBookStateUnlockedScaled])
  {
    v10 = 8;
  }

  else if ([v9 isEqual:SBLockElementFlipBookStateError])
  {
    v10 = 4;
  }

  else if ([v9 isEqual:SBLockElementFlipBookStateErrorScaled])
  {
    v10 = 9;
  }

  else
  {
    v10 = 4;
  }

  v11 = SBLogSystemApertureLockElement();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v24 = v9;
    _os_log_impl(&dword_21ED4E000, v11, OS_LOG_TYPE_DEFAULT, "Transitioning leading view: %@", buf, 0xCu);
  }

  v12 = MEMORY[0x277D65DA0];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __65__SBLockElementFlipBookDescription_transitionToState_completion___block_invoke;
  v19[3] = &unk_2783BD4D8;
  v20 = WeakRetained;
  v22 = v10;
  v21 = v9;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __65__SBLockElementFlipBookDescription_transitionToState_completion___block_invoke_2_64;
  v16[3] = &unk_2783B9188;
  v16[4] = self;
  v17 = v21;
  v18 = completionCopy;
  v13 = completionCopy;
  v14 = v21;
  v15 = WeakRetained;
  [v12 perform:v19 finalCompletion:v16];
}

void __65__SBLockElementFlipBookDescription_transitionToState_completion___block_invoke(uint64_t a1, void (**a2)(id, __CFString *))
{
  v4 = a2 + 2;
  v3 = a2[2];
  v5 = a2;
  v6 = v3();
  v7 = (*v4)(v5, @"viewProviderAnimations");

  v8 = [*(a1 + 32) platformElementHost];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __65__SBLockElementFlipBookDescription_transitionToState_completion___block_invoke_2;
  v16[3] = &unk_2783AB780;
  v9 = *(a1 + 32);
  v11 = *(a1 + 40);
  v10 = *(a1 + 48);
  v17 = v9;
  v20 = v10;
  v18 = v11;
  v19 = v7;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __65__SBLockElementFlipBookDescription_transitionToState_completion___block_invoke_63;
  v14[3] = &unk_2783A9348;
  v15 = v6;
  v12 = v6;
  v13 = v7;
  [v8 performAction:v16 withCompletionUponAnimationSettling:v14];
}

void __65__SBLockElementFlipBookDescription_transitionToState_completion___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 56);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __65__SBLockElementFlipBookDescription_transitionToState_completion___block_invoke_3;
  v4[3] = &unk_2783A98A0;
  v3 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  [v3 _requestSecureState:v2 completion:v4];
}

uint64_t __65__SBLockElementFlipBookDescription_transitionToState_completion___block_invoke_3(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = SBLogSystemApertureLockElement();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&dword_21ED4E000, v2, OS_LOG_TYPE_DEFAULT, "Transitioned leading view: %@", &v5, 0xCu);
  }

  return (*(*(a1 + 40) + 16))();
}

void __65__SBLockElementFlipBookDescription_transitionToState_completion___block_invoke_2_64(uint64_t a1)
{
  if ([*(*(a1 + 32) + 24) isEqual:*(a1 + 40)])
  {
    v2 = *(*(a1 + 48) + 16);

    v2();
  }

  else
  {
    v3 = dispatch_time(0, 266666666);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __65__SBLockElementFlipBookDescription_transitionToState_completion___block_invoke_3_65;
    block[3] = &unk_2783A9348;
    v5 = *(a1 + 48);
    dispatch_after(v3, MEMORY[0x277D85CD0], block);
  }
}

@end