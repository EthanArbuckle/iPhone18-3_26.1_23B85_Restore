@interface SBPrototypeFlipBookElementDescription
- (BOOL)isSequenceFrom:(id)from to:(id)to supportedConcurrentlyWithContainerSequence:(id)sequence toContainerState:(id)state;
- (CGRect)captureBounds;
- (SBPrototypeFlipBookElementDescription)initWithAssetView:(id)view;
- (id)allowedNextStatesForState:(id)state;
- (void)resetToState:(id)state completion:(id)completion;
- (void)transitionToState:(id)state completion:(id)completion;
@end

@implementation SBPrototypeFlipBookElementDescription

- (SBPrototypeFlipBookElementDescription)initWithAssetView:(id)view
{
  viewCopy = view;
  v10.receiver = self;
  v10.super_class = SBPrototypeFlipBookElementDescription;
  v6 = [(SBPrototypeFlipBookElementDescription *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_assetView, view);
    assetViewCurrentState = v7->_assetViewCurrentState;
    v7->_assetViewCurrentState = 0;
  }

  return v7;
}

- (id)allowedNextStatesForState:(id)state
{
  stateCopy = state;
  if ([stateCopy isEqual:@"Sleep"])
  {
    v4 = &unk_28336E4C0;
  }

  else if ([stateCopy isEqual:@"Locked"])
  {
    v4 = &unk_28336E4D8;
  }

  else if ([stateCopy isEqual:@"Unlocked"])
  {
    v4 = &unk_28336E4F0;
  }

  else
  {
    v4 = MEMORY[0x277CBEBF8];
  }

  return v4;
}

- (BOOL)isSequenceFrom:(id)from to:(id)to supportedConcurrentlyWithContainerSequence:(id)sequence toContainerState:(id)state
{
  fromCopy = from;
  toCopy = to;
  sequenceCopy = sequence;
  stateCopy = state;
  if (![sequenceCopy isEqual:@"hidden"] || !objc_msgSend(stateCopy, "isEqual:", @"presented"))
  {
    if ([sequenceCopy isEqual:@"presented"] && objc_msgSend(stateCopy, "isEqual:", @"hidden"))
    {
      if ([fromCopy isEqual:@"Sleep"])
      {
        goto LABEL_17;
      }
    }

    else
    {
      if ([sequenceCopy isEqual:@"presented"] && objc_msgSend(stateCopy, "isEqual:", @"presented"))
      {
        if ([fromCopy isEqual:@"Sleep"])
        {
LABEL_17:
          LOBYTE(v13) = 0;
          goto LABEL_18;
        }

        goto LABEL_12;
      }

      if (![sequenceCopy isEqual:@"hidden"] || !objc_msgSend(stateCopy, "isEqual:", @"hidden") || !objc_msgSend(fromCopy, "isEqual:", @"Sleep"))
      {
        goto LABEL_17;
      }
    }

    LOBYTE(v13) = [toCopy isEqual:@"Sleep"];
    goto LABEL_18;
  }

  if (![fromCopy isEqual:@"Sleep"])
  {
    goto LABEL_17;
  }

LABEL_12:
  v13 = [toCopy isEqual:@"Sleep"] ^ 1;
LABEL_18:

  return v13;
}

- (CGRect)captureBounds
{
  [(BSUICAPackageView *)self->_assetView frame];
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (void)resetToState:(id)state completion:(id)completion
{
  stateCopy = state;
  completionCopy = completion;
  resetGeneration = self->_resetGeneration;
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __65__SBPrototypeFlipBookElementDescription_resetToState_completion___block_invoke;
  v22[3] = &unk_2783AB780;
  v22[4] = self;
  v25 = resetGeneration;
  v9 = stateCopy;
  v23 = v9;
  v10 = completionCopy;
  v24 = v10;
  v11 = MEMORY[0x223D6F7F0](v22);
  v12 = dispatch_time(0, 2000000000);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __65__SBPrototypeFlipBookElementDescription_resetToState_completion___block_invoke_2;
  block[3] = &unk_2783AB780;
  block[4] = self;
  v21 = resetGeneration;
  v13 = v9;
  v19 = v13;
  v14 = v11;
  v20 = v14;
  dispatch_after(v12, MEMORY[0x277D85CD0], block);
  if ([v13 isEqual:self->_assetViewCurrentState])
  {
    v14[2](v14);
  }

  else
  {
    assetView = self->_assetView;
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __65__SBPrototypeFlipBookElementDescription_resetToState_completion___block_invoke_26;
    v16[3] = &unk_2783A9C70;
    v17 = v14;
    [(BSUICAPackageView *)assetView setState:v13 animated:0 transitionSpeed:v16 completion:1.0];
  }
}

uint64_t __65__SBPrototypeFlipBookElementDescription_resetToState_completion___block_invoke(uint64_t result)
{
  v1 = *(result + 32);
  v2 = *(v1 + 24);
  if (v2 == *(result + 56))
  {
    v3 = result;
    *(v1 + 24) = v2 + 1;
    objc_storeStrong((*(result + 32) + 16), *(result + 40));
    result = *(v3 + 48);
    if (result)
    {
      v4 = *(result + 16);

      return v4();
    }
  }

  return result;
}

uint64_t __65__SBPrototypeFlipBookElementDescription_resetToState_completion___block_invoke_2(void *a1)
{
  if (*(a1[4] + 24) == a1[7])
  {
    v2 = SBLogSystemApertureSecureFlipBookElements();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      __65__SBPrototypeFlipBookElementDescription_resetToState_completion___block_invoke_2_cold_1(a1, v2);
    }
  }

  return (*(a1[6] + 16))();
}

- (void)transitionToState:(id)state completion:(id)completion
{
  stateCopy = state;
  completionCopy = completion;
  transitionGeneration = self->_transitionGeneration;
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __70__SBPrototypeFlipBookElementDescription_transitionToState_completion___block_invoke;
  v22[3] = &unk_2783AB780;
  v22[4] = self;
  v25 = transitionGeneration;
  v9 = stateCopy;
  v23 = v9;
  v10 = completionCopy;
  v24 = v10;
  v11 = MEMORY[0x223D6F7F0](v22);
  v12 = dispatch_time(0, 2000000000);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __70__SBPrototypeFlipBookElementDescription_transitionToState_completion___block_invoke_2;
  block[3] = &unk_2783AB780;
  block[4] = self;
  v21 = transitionGeneration;
  v13 = v9;
  v19 = v13;
  v14 = v11;
  v20 = v14;
  dispatch_after(v12, MEMORY[0x277D85CD0], block);
  if ([v13 isEqual:self->_assetViewCurrentState])
  {
    v14[2](v14);
  }

  else
  {
    assetView = self->_assetView;
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __70__SBPrototypeFlipBookElementDescription_transitionToState_completion___block_invoke_28;
    v16[3] = &unk_2783A9C70;
    v17 = v14;
    [(BSUICAPackageView *)assetView setState:v13 animated:1 transitionSpeed:v16 completion:1.0];
  }
}

uint64_t __70__SBPrototypeFlipBookElementDescription_transitionToState_completion___block_invoke(uint64_t result)
{
  v1 = *(result + 32);
  v2 = *(v1 + 32);
  if (v2 == *(result + 56))
  {
    v3 = result;
    *(v1 + 32) = v2 + 1;
    objc_storeStrong((*(result + 32) + 16), *(result + 40));
    result = *(v3 + 48);
    if (result)
    {
      v4 = *(result + 16);

      return v4();
    }
  }

  return result;
}

uint64_t __70__SBPrototypeFlipBookElementDescription_transitionToState_completion___block_invoke_2(void *a1)
{
  if (*(a1[4] + 32) == a1[7])
  {
    v2 = SBLogSystemApertureSecureFlipBookElements();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      __70__SBPrototypeFlipBookElementDescription_transitionToState_completion___block_invoke_2_cold_1(a1, v2);
    }
  }

  return (*(a1[6] + 16))();
}

void __65__SBPrototypeFlipBookElementDescription_resetToState_completion___block_invoke_2_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 40);
  v3 = 138412290;
  v4 = v2;
  _os_log_error_impl(&dword_21ED4E000, a2, OS_LOG_TYPE_ERROR, "Prototype Flipbook Element failed to reset to state in reasonable time; TIMEOUT: %@", &v3, 0xCu);
}

void __70__SBPrototypeFlipBookElementDescription_transitionToState_completion___block_invoke_2_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 40);
  v3 = 138412290;
  v4 = v2;
  _os_log_error_impl(&dword_21ED4E000, a2, OS_LOG_TYPE_ERROR, "Prototype Flipbook Element failed to transition to state in reasonable time; TIMEOUT: %@", &v3, 0xCu);
}

@end