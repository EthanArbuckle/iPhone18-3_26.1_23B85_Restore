@interface SBLockElementPearlFlipBookDescription
- (BOOL)isSequenceFrom:(id)a3 to:(id)a4 supportedConcurrentlyWithContainerSequence:(id)a5 toContainerState:(id)a6;
- (CGRect)captureBounds;
- (NSArray)states;
- (SBLockElementPearlFlipBookDescription)initWithViewProvider:(id)a3 contentView:(id)a4;
- (double)maximumLatencyToExitLoopingState:(id)a3;
- (id)allowedNextStatesForState:(id)a3;
- (void)resetToState:(id)a3 completion:(id)a4;
- (void)transitionToState:(id)a3 completion:(id)a4;
@end

@implementation SBLockElementPearlFlipBookDescription

- (SBLockElementPearlFlipBookDescription)initWithViewProvider:(id)a3 contentView:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11.receiver = self;
  v11.super_class = SBLockElementPearlFlipBookDescription;
  v8 = [(SBLockElementPearlFlipBookDescription *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_contentView, a4);
    objc_storeStrong(&v9->_currentState, SBPearlElementFlipBookStateResting);
    objc_storeWeak(&v9->_viewProvider, v6);
  }

  return v9;
}

- (double)maximumLatencyToExitLoopingState:(id)a3
{
  v3 = [a3 isEqualToString:SBPearlElementFlipBookStateSearching];
  result = 1.79769313e308;
  if (v3)
  {
    return 0.2;
  }

  return result;
}

- (NSArray)states
{
  v4[5] = *MEMORY[0x277D85DE8];
  v4[0] = SBPearlElementFlipBookStateResting;
  v4[1] = SBPearlElementFlipBookStateRestingScaled;
  v4[2] = SBPearlElementFlipBookStateSearching;
  v4[3] = SBPearlElementFlipBookStateFailed;
  v4[4] = SBPearlElementFlipBookStateError;
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:5];

  return v2;
}

- (id)allowedNextStatesForState:(id)a3
{
  v13[4] = *MEMORY[0x277D85DE8];
  v3 = a3;
  if ([v3 isEqual:SBPearlElementFlipBookStateResting])
  {
    v13[0] = SBPearlElementFlipBookStateResting;
    v13[1] = SBPearlElementFlipBookStateRestingScaled;
    v13[2] = SBPearlElementFlipBookStateSearching;
    v13[3] = SBPearlElementFlipBookStateFailed;
    v4 = MEMORY[0x277CBEA60];
    v5 = v13;
LABEL_3:
    v6 = 4;
LABEL_9:
    v7 = [v4 arrayWithObjects:v5 count:v6];
    goto LABEL_10;
  }

  if ([v3 isEqual:SBPearlElementFlipBookStateRestingScaled])
  {
    v12[0] = SBPearlElementFlipBookStateResting;
    v12[1] = SBPearlElementFlipBookStateRestingScaled;
    v12[2] = SBPearlElementFlipBookStateSearching;
    v12[3] = SBPearlElementFlipBookStateFailed;
    v12[4] = SBPearlElementFlipBookStateError;
    v4 = MEMORY[0x277CBEA60];
    v5 = v12;
LABEL_8:
    v6 = 5;
    goto LABEL_9;
  }

  if ([v3 isEqual:SBPearlElementFlipBookStateSearching])
  {
    v11[0] = SBPearlElementFlipBookStateResting;
    v11[1] = SBPearlElementFlipBookStateRestingScaled;
    v11[2] = SBPearlElementFlipBookStateSearching;
    v11[3] = SBPearlElementFlipBookStateFailed;
    v11[4] = SBPearlElementFlipBookStateError;
    v4 = MEMORY[0x277CBEA60];
    v5 = v11;
    goto LABEL_8;
  }

  if ([v3 isEqual:SBPearlElementFlipBookStateFailed])
  {
    v10[0] = SBPearlElementFlipBookStateResting;
    v10[1] = SBPearlElementFlipBookStateRestingScaled;
    v10[2] = SBPearlElementFlipBookStateSearching;
    v10[3] = SBPearlElementFlipBookStateFailed;
    v4 = MEMORY[0x277CBEA60];
    v5 = v10;
    goto LABEL_3;
  }

  if ([v3 isEqual:SBPearlElementFlipBookStateError])
  {
    v9[0] = SBPearlElementFlipBookStateRestingScaled;
    v9[1] = SBPearlElementFlipBookStateSearching;
    v9[2] = SBPearlElementFlipBookStateFailed;
    v9[3] = SBPearlElementFlipBookStateError;
    v4 = MEMORY[0x277CBEA60];
    v5 = v9;
    goto LABEL_3;
  }

  v7 = MEMORY[0x277CBEBF8];
LABEL_10:

  return v7;
}

- (CGRect)captureBounds
{
  [(SBLockElementTrailingContentView *)self->_contentView frame];
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (BOOL)isSequenceFrom:(id)a3 to:(id)a4 supportedConcurrentlyWithContainerSequence:(id)a5 toContainerState:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  if ([v11 isEqual:@"hidden"] && objc_msgSend(v12, "isEqual:", @"presented"))
  {
    if (([v9 isEqual:SBPearlElementFlipBookStateResting] & 1) == 0)
    {
      v13 = &SBPearlElementFlipBookStateRestingScaled;
      v14 = v9;
LABEL_18:
      v15 = [v14 isEqual:*v13];
      goto LABEL_19;
    }

    goto LABEL_11;
  }

  if ([v11 isEqual:@"presented"] && objc_msgSend(v12, "isEqual:", @"hidden"))
  {
    if (([v10 isEqual:SBPearlElementFlipBookStateResting] & 1) == 0)
    {
      v13 = &SBPearlElementFlipBookStateRestingScaled;
      v14 = v10;
      goto LABEL_18;
    }

    goto LABEL_11;
  }

  if (![v11 isEqual:@"presented"] || (objc_msgSend(v12, "isEqual:", @"presented") & 1) == 0)
  {
    if ([v11 isEqual:@"hidden"] && objc_msgSend(v12, "isEqual:", @"hidden"))
    {
      if ([v9 isEqual:SBPearlElementFlipBookStateResting] && (objc_msgSend(v10, "isEqual:", SBPearlElementFlipBookStateResting) & 1) != 0)
      {
        goto LABEL_11;
      }

      v13 = &SBPearlElementFlipBookStateResting;
      v16 = [v9 isEqual:SBPearlElementFlipBookStateResting];
      v14 = v10;
      if ((v16 & 1) == 0)
      {
        goto LABEL_18;
      }
    }

    v15 = 0;
    goto LABEL_19;
  }

LABEL_11:
  v15 = 1;
LABEL_19:

  return v15;
}

- (void)resetToState:(id)a3 completion:(id)a4
{
  v25 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_viewProvider);
  v9 = v6;
  if ([v9 isEqualToString:SBPearlElementFlipBookStateResting])
  {
    v10 = 1;
  }

  else if ([v9 isEqualToString:SBPearlElementFlipBookStateRestingScaled])
  {
    v10 = 7;
  }

  else if ([v9 isEqualToString:SBPearlElementFlipBookStateSearching])
  {
    v10 = 5;
  }

  else if ([v9 isEqualToString:SBPearlElementFlipBookStateFailed])
  {
    v10 = 6;
  }

  else if ([v9 isEqualToString:SBPearlElementFlipBookStateError])
  {
    v10 = 9;
  }

  else
  {
    v10 = 6;
  }

  v11 = SBLogSystemApertureLockElement();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v24 = v9;
    _os_log_impl(&dword_21ED4E000, v11, OS_LOG_TYPE_DEFAULT, "Resetting trailing view: %@", buf, 0xCu);
  }

  v12 = MEMORY[0x277D65DA0];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __65__SBLockElementPearlFlipBookDescription_resetToState_completion___block_invoke;
  v19[3] = &unk_2783BD4D8;
  v20 = WeakRetained;
  v22 = v10;
  v21 = v9;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __65__SBLockElementPearlFlipBookDescription_resetToState_completion___block_invoke_2_163;
  v16[3] = &unk_2783B9188;
  v16[4] = self;
  v17 = v21;
  v18 = v7;
  v13 = v7;
  v14 = v21;
  v15 = WeakRetained;
  [v12 perform:v19 finalCompletion:v16];
}

void __65__SBLockElementPearlFlipBookDescription_resetToState_completion___block_invoke(uint64_t a1, void (**a2)(id, __CFString *))
{
  v4 = a2 + 2;
  v3 = a2[2];
  v5 = a2;
  v6 = v3();
  v7 = (*v4)(v5, @"viewProviderAnimations");

  v8 = [*(a1 + 32) platformElementHost];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __65__SBLockElementPearlFlipBookDescription_resetToState_completion___block_invoke_2;
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
  v14[2] = __65__SBLockElementPearlFlipBookDescription_resetToState_completion___block_invoke_162;
  v14[3] = &unk_2783A9348;
  v15 = v6;
  v12 = v6;
  v13 = v7;
  [v8 performAction:v16 withCompletionUponAnimationSettling:v14];
}

void __65__SBLockElementPearlFlipBookDescription_resetToState_completion___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 56);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __65__SBLockElementPearlFlipBookDescription_resetToState_completion___block_invoke_3;
  v4[3] = &unk_2783A98A0;
  v3 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  [v3 _requestSecureState:v2 completion:v4];
}

uint64_t __65__SBLockElementPearlFlipBookDescription_resetToState_completion___block_invoke_3(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = SBLogSystemApertureLockElement();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&dword_21ED4E000, v2, OS_LOG_TYPE_DEFAULT, "Reset trailing view: %@", &v5, 0xCu);
  }

  return (*(*(a1 + 40) + 16))();
}

void __65__SBLockElementPearlFlipBookDescription_resetToState_completion___block_invoke_2_163(uint64_t a1)
{
  objc_storeStrong((*(a1 + 32) + 24), *(a1 + 40));
  v2 = dispatch_time(0, 266666666);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __65__SBLockElementPearlFlipBookDescription_resetToState_completion___block_invoke_3_164;
  block[3] = &unk_2783A9348;
  v4 = *(a1 + 48);
  dispatch_after(v2, MEMORY[0x277D85CD0], block);
}

- (void)transitionToState:(id)a3 completion:(id)a4
{
  v34 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_viewProvider);
  v9 = v6;
  if ([v9 isEqualToString:SBPearlElementFlipBookStateResting])
  {
    v10 = 1;
  }

  else if ([v9 isEqualToString:SBPearlElementFlipBookStateRestingScaled])
  {
    v10 = 7;
  }

  else if ([v9 isEqualToString:SBPearlElementFlipBookStateSearching])
  {
    v10 = 5;
  }

  else if ([v9 isEqualToString:SBPearlElementFlipBookStateFailed])
  {
    v10 = 6;
  }

  else if ([v9 isEqualToString:SBPearlElementFlipBookStateError])
  {
    v10 = 9;
  }

  else
  {
    v10 = 6;
  }

  if (-[NSString isEqualToString:](self->_currentState, "isEqualToString:", SBPearlElementFlipBookStateSearching) && [v9 isEqualToString:SBPearlElementFlipBookStateSearching])
  {
    v11 = SBLogSystemApertureLockElement();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_21ED4E000, v11, OS_LOG_TYPE_DEFAULT, "Resetting Searching time offset", buf, 2u);
    }

    v12 = [(SBLockElementPearlFlipBookDescription *)self referenceView];
    v13 = [v12 layer];
    [v13 setTimeOffset:0.0];

    v14 = [(SBLockElementPearlFlipBookDescription *)self referenceView];
    v15 = [v14 layer];
    [v15 setBeginTime:0.0];

    v16 = dispatch_time(0, 1600000000);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __70__SBLockElementPearlFlipBookDescription_transitionToState_completion___block_invoke;
    block[3] = &unk_2783AA1E8;
    block[4] = self;
    v30 = v9;
    v31 = v7;
    v17 = v7;
    dispatch_after(v16, MEMORY[0x277D85CD0], block);

    v18 = v30;
  }

  else
  {
    v19 = SBLogSystemApertureLockElement();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v33 = v9;
      _os_log_impl(&dword_21ED4E000, v19, OS_LOG_TYPE_DEFAULT, "Transitioning trailing view: %@", buf, 0xCu);
    }

    v20 = MEMORY[0x277D65DA0];
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __70__SBLockElementPearlFlipBookDescription_transitionToState_completion___block_invoke_165;
    v25[3] = &unk_2783BD4D8;
    v26 = WeakRetained;
    v28 = v10;
    v27 = v9;
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __70__SBLockElementPearlFlipBookDescription_transitionToState_completion___block_invoke_2_167;
    v22[3] = &unk_2783B9188;
    v22[4] = self;
    v23 = v27;
    v24 = v7;
    v21 = v7;
    [v20 perform:v25 finalCompletion:v22];

    v18 = v26;
  }
}

uint64_t __70__SBLockElementPearlFlipBookDescription_transitionToState_completion___block_invoke(uint64_t a1)
{
  objc_storeStrong((*(a1 + 32) + 24), *(a1 + 40));
  v2 = *(*(a1 + 48) + 16);

  return v2();
}

void __70__SBLockElementPearlFlipBookDescription_transitionToState_completion___block_invoke_165(uint64_t a1, void (**a2)(id, __CFString *))
{
  v4 = a2 + 2;
  v3 = a2[2];
  v5 = a2;
  v6 = v3();
  v7 = (*v4)(v5, @"viewProviderAnimations");

  v8 = [*(a1 + 32) platformElementHost];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __70__SBLockElementPearlFlipBookDescription_transitionToState_completion___block_invoke_2;
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
  v14[2] = __70__SBLockElementPearlFlipBookDescription_transitionToState_completion___block_invoke_166;
  v14[3] = &unk_2783A9348;
  v15 = v6;
  v12 = v6;
  v13 = v7;
  [v8 performAction:v16 withCompletionUponAnimationSettling:v14];
}

void __70__SBLockElementPearlFlipBookDescription_transitionToState_completion___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 56);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __70__SBLockElementPearlFlipBookDescription_transitionToState_completion___block_invoke_3;
  v4[3] = &unk_2783A98A0;
  v3 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  [v3 _requestSecureState:v2 completion:v4];
}

uint64_t __70__SBLockElementPearlFlipBookDescription_transitionToState_completion___block_invoke_3(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = SBLogSystemApertureLockElement();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&dword_21ED4E000, v2, OS_LOG_TYPE_DEFAULT, "Transitioned trailing view: %@", &v5, 0xCu);
  }

  return (*(*(a1 + 40) + 16))();
}

void __70__SBLockElementPearlFlipBookDescription_transitionToState_completion___block_invoke_2_167(uint64_t a1)
{
  objc_storeStrong((*(a1 + 32) + 24), *(a1 + 40));
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
    block[2] = __70__SBLockElementPearlFlipBookDescription_transitionToState_completion___block_invoke_3_168;
    block[3] = &unk_2783A9348;
    v5 = *(a1 + 48);
    dispatch_after(v3, MEMORY[0x277D85CD0], block);
  }
}

@end