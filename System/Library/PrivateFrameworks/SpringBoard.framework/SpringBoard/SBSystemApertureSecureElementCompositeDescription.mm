@interface SBSystemApertureSecureElementCompositeDescription
- (BOOL)isSequenceDelayed:(id)a3 toState:(id)a4;
- (BOOL)isSequenceSecure:(id)a3 toState:(id)a4;
- (BOOL)validateContainerAndContentDescriptionStateNames:(id *)a3;
- (CGRect)captureBounds;
- (NSString)initialState;
- (SBSystemApertureSecureElementCompositeDescription)initWithContainerDescription:(id)a3 contentDescription:(id)a4 name:(id)a5 captureContainer:(id)a6 captureBoundsDefiningView:(id)a7;
- (double)maximumLatencyToExitLoopingState:(id)a3;
- (id)_composeSequencesWithContainerDescription:(id)a3 contentDescription:(id)a4;
- (id)_composedSequences;
- (id)_composedStates;
- (id)allowedNextStatesForState:(id)a3;
- (void)_completeTransitionToContainerState:(id)a3 contentState:(id)a4 completionBlock:(id)a5;
- (void)_decomposeState:(id)a3 toContainerState:(id *)a4 contentState:(id *)a5;
- (void)_keepContentInLoopingTransitionToState:(id)a3 completionBlock:(id)a4;
- (void)resetToState:(id)a3 completion:(id)a4;
- (void)transitionToState:(id)a3 completion:(id)a4;
@end

@implementation SBSystemApertureSecureElementCompositeDescription

- (SBSystemApertureSecureElementCompositeDescription)initWithContainerDescription:(id)a3 contentDescription:(id)a4 name:(id)a5 captureContainer:(id)a6 captureBoundsDefiningView:(id)a7
{
  v20 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v21.receiver = self;
  v21.super_class = SBSystemApertureSecureElementCompositeDescription;
  v17 = [(SBSystemApertureSecureElementCompositeDescription *)&v21 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_containerDescription, a3);
    objc_storeStrong(&v18->_contentDescription, a4);
    objc_storeStrong(&v18->_name, a5);
    objc_storeStrong(&v18->_captureContainer, a6);
    objc_storeStrong(&v18->_captureBoundsDefiningViewWrapper, a7);
    *&v18->_containerInTransition = 0;
    v18->_shouldKeepContentInLoopingTransition = 0;
  }

  return v18;
}

- (BOOL)validateContainerAndContentDescriptionStateNames:(id *)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = [MEMORY[0x277CCA900] characterSetWithCharactersInString:@"."];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = [(SFUSecureFlipBookCaptureDescription *)self->_containerDescription states];
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v20 count:16];
  if (v7)
  {
    v8 = *v15;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        if ([v10 rangeOfCharacterFromSet:v5] != 0x7FFFFFFFFFFFFFFFLL)
        {
          v18 = *MEMORY[0x277CCA450];
          v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"Capture description (container) includes state with disallowed characters: %@", v10];
          v19 = v12;
          v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v19 forKeys:&v18 count:1];

          if (a3)
          {
            [MEMORY[0x277CCA9B8] errorWithDomain:@"SBSecureFlipBookElementErrorDomain" code:4 userInfo:v7];
            *a3 = v11 = 0;
          }

          else
          {
            v11 = 0;
          }

          goto LABEL_13;
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v14 objects:v20 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v11 = 1;
LABEL_13:

  return v11;
}

- (NSString)initialState
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(SFUSecureFlipBookCaptureDescription *)self->_containerDescription initialState];
  v5 = [(SFUNestableSecureFlipBookCaptureDescription *)self->_contentDescription initialState];
  v6 = [v3 stringWithFormat:@"%@.%@", v4, v5];

  v7 = [(SBSystemApertureSecureElementCompositeDescription *)self _composedStates];
  LOBYTE(v4) = [v7 containsObject:v6];

  if ((v4 & 1) == 0)
  {
    v8 = SBLogSystemApertureSecureFlipBookElements();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [(SBSystemApertureSecureElementCompositeDescription *)v8 initialState];
    }

    v6 = 0;
  }

  return v6;
}

- (id)allowedNextStatesForState:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MEMORY[0x277CBEB18] array];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = [(SBSystemApertureSecureElementCompositeDescription *)self _composedSequences];
  v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        v12 = [v11 objectAtIndexedSubscript:0];
        v13 = [v4 isEqualToString:v12];

        if (v13)
        {
          v14 = [v11 objectAtIndexedSubscript:1];
          [v5 addObject:v14];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }

  return v5;
}

- (BOOL)isSequenceDelayed:(id)a3 toState:(id)a4
{
  v15 = 0;
  v16 = 0;
  v6 = a4;
  [(SBSystemApertureSecureElementCompositeDescription *)self _decomposeState:a3 toContainerState:&v16 contentState:&v15];
  v7 = v16;
  v8 = v15;
  v13 = 0;
  v14 = 0;
  [(SBSystemApertureSecureElementCompositeDescription *)self _decomposeState:v6 toContainerState:&v14 contentState:&v13];

  v9 = v14;
  v10 = v13;
  if (([(SFUSecureFlipBookCaptureDescription *)self->_containerDescription isSequenceDelayed:v7 toState:v9]& 1) != 0)
  {
    v11 = 1;
  }

  else
  {
    v11 = [(SFUNestableSecureFlipBookCaptureDescription *)self->_contentDescription isSequenceDelayed:v8 toState:v10];
  }

  return v11;
}

- (BOOL)isSequenceSecure:(id)a3 toState:(id)a4
{
  v15 = 0;
  v16 = 0;
  v6 = a4;
  [(SBSystemApertureSecureElementCompositeDescription *)self _decomposeState:a3 toContainerState:&v16 contentState:&v15];
  v7 = v16;
  v8 = v15;
  v13 = 0;
  v14 = 0;
  [(SBSystemApertureSecureElementCompositeDescription *)self _decomposeState:v6 toContainerState:&v14 contentState:&v13];

  v9 = v14;
  v10 = v13;
  if (([(SFUSecureFlipBookCaptureDescription *)self->_containerDescription isSequenceSecure:v7 toState:v9]& 1) != 0)
  {
    v11 = 1;
  }

  else
  {
    v11 = [(SFUNestableSecureFlipBookCaptureDescription *)self->_contentDescription isSequenceSecure:v8 toState:v10];
  }

  return v11;
}

- (CGRect)captureBounds
{
  [(SBSystemApertureSecureElementCaptureBoundsView *)self->_captureBoundsDefiningViewWrapper frame];
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (double)maximumLatencyToExitLoopingState:(id)a3
{
  v11 = 0;
  v12 = 0;
  [(SBSystemApertureSecureElementCompositeDescription *)self _decomposeState:a3 toContainerState:&v12 contentState:&v11];
  v4 = v12;
  v5 = v11;
  [(SFUSecureFlipBookCaptureDescription *)self->_containerDescription maximumLatencyToExitLoopingState:v4];
  v7 = v6;
  [(SFUNestableSecureFlipBookCaptureDescription *)self->_contentDescription maximumLatencyToExitLoopingState:v5];
  v9 = v8;

  if (v7 >= v9)
  {
    v7 = v9;
  }

  if (BSFloatEqualToFloat())
  {
    v7 = 0.25;
  }

  return v7;
}

- (void)resetToState:(id)a3 completion:(id)a4
{
  v27 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = SBLogSystemApertureSecureFlipBookElements();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v26 = v6;
    _os_log_impl(&dword_21ED4E000, v8, OS_LOG_TYPE_DEFAULT, "composite (begin) resetToState: %@", buf, 0xCu);
  }

  captureBoundsDefiningViewWrapper = self->_captureBoundsDefiningViewWrapper;
  v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"resetToState: %@", v6];
  [(SBSystemApertureSecureElementCaptureBoundsView *)captureBoundsDefiningViewWrapper setDebugString:v10];

  v23 = 0;
  v24 = 0;
  [(SBSystemApertureSecureElementCompositeDescription *)self _decomposeState:v6 toContainerState:&v24 contentState:&v23];
  v11 = v24;
  v12 = v23;
  v13 = MEMORY[0x277D65DA0];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __77__SBSystemApertureSecureElementCompositeDescription_resetToState_completion___block_invoke;
  v19[3] = &unk_2783AE908;
  v20 = v11;
  v21 = self;
  v22 = v12;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __77__SBSystemApertureSecureElementCompositeDescription_resetToState_completion___block_invoke_31;
  v17[3] = &unk_2783AE778;
  v18 = v7;
  v14 = v7;
  v15 = v12;
  v16 = v11;
  [v13 perform:v19 finalCompletion:v17];
}

void __77__SBSystemApertureSecureElementCompositeDescription_resetToState_completion___block_invoke(void *a1, void *a2)
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = SBLogSystemApertureSecureFlipBookElements();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = a1[4];
    *buf = 138412290;
    v23 = v5;
    _os_log_impl(&dword_21ED4E000, v4, OS_LOG_TYPE_DEFAULT, "container (begin) resetToState: %@", buf, 0xCu);
  }

  v6 = v3[2](v3, @"containerReset");
  v7 = a1[4];
  v8 = *(a1[5] + 8);
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __77__SBSystemApertureSecureElementCompositeDescription_resetToState_completion___block_invoke_24;
  v19[3] = &unk_2783A98A0;
  v20 = v7;
  v9 = v6;
  v21 = v9;
  [v8 resetToState:v20 completion:v19];
  v10 = SBLogSystemApertureSecureFlipBookElements();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = a1[6];
    *buf = 138412290;
    v23 = v11;
    _os_log_impl(&dword_21ED4E000, v10, OS_LOG_TYPE_DEFAULT, "content (begin) resetToState: %@", buf, 0xCu);
  }

  v12 = v3[2](v3, @"contentReset");
  v13 = a1[6];
  v14 = *(a1[5] + 16);
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __77__SBSystemApertureSecureElementCompositeDescription_resetToState_completion___block_invoke_29;
  v16[3] = &unk_2783A98A0;
  v17 = v13;
  v18 = v12;
  v15 = v12;
  [v14 resetToState:v17 completion:v16];
}

uint64_t __77__SBSystemApertureSecureElementCompositeDescription_resetToState_completion___block_invoke_24(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = SBLogSystemApertureSecureFlipBookElements();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&dword_21ED4E000, v2, OS_LOG_TYPE_DEFAULT, "container (end) resetToState: %@", &v5, 0xCu);
  }

  return (*(*(a1 + 40) + 16))();
}

uint64_t __77__SBSystemApertureSecureElementCompositeDescription_resetToState_completion___block_invoke_29(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = SBLogSystemApertureSecureFlipBookElements();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&dword_21ED4E000, v2, OS_LOG_TYPE_DEFAULT, "content (end) resetToState: %@", &v5, 0xCu);
  }

  return (*(*(a1 + 40) + 16))();
}

- (void)transitionToState:(id)a3 completion:(id)a4
{
  v38 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  if (self->_containerInTransition)
  {
    [(SBSystemApertureSecureElementCompositeDescription *)a2 transitionToState:v7 completion:?];
  }

  if (self->_contentInTransition)
  {
    [(SBSystemApertureSecureElementCompositeDescription *)a2 transitionToState:v7 completion:?];
  }

  v9 = SBLogSystemApertureSecureFlipBookElements();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v37 = v7;
    _os_log_impl(&dword_21ED4E000, v9, OS_LOG_TYPE_DEFAULT, "composite (begin) transitionToState: %@", buf, 0xCu);
  }

  captureBoundsDefiningViewWrapper = self->_captureBoundsDefiningViewWrapper;
  v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"transitionToState: %@", v7];
  [(SBSystemApertureSecureElementCaptureBoundsView *)captureBoundsDefiningViewWrapper setDebugString:v11];

  v35 = 0;
  v34 = 0;
  [(SBSystemApertureSecureElementCompositeDescription *)self _decomposeState:v7 toContainerState:&v35 contentState:&v34];
  v12 = v35;
  v13 = v34;
  v14 = SBLogSystemApertureSecureFlipBookElements();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v37 = v12;
    _os_log_impl(&dword_21ED4E000, v14, OS_LOG_TYPE_DEFAULT, "container (begin) transitionToState: %@", buf, 0xCu);
  }

  *&self->_containerInTransition = 257;
  containerDescription = self->_containerDescription;
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __82__SBSystemApertureSecureElementCompositeDescription_transitionToState_completion___block_invoke;
  v29[3] = &unk_2783A8EB0;
  v16 = v12;
  v30 = v16;
  v31 = self;
  v17 = v13;
  v32 = v17;
  v18 = v8;
  v33 = v18;
  [(SFUSecureFlipBookCaptureDescription *)containerDescription transitionToState:v16 completion:v29];
  v19 = SBLogSystemApertureSecureFlipBookElements();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v37 = v17;
    _os_log_impl(&dword_21ED4E000, v19, OS_LOG_TYPE_DEFAULT, "content (begin) transitionToState: %@", buf, 0xCu);
  }

  contentDescription = self->_contentDescription;
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __82__SBSystemApertureSecureElementCompositeDescription_transitionToState_completion___block_invoke_46;
  v24[3] = &unk_2783A8EB0;
  v25 = v17;
  v26 = self;
  v27 = v16;
  v28 = v18;
  v21 = v18;
  v22 = v16;
  v23 = v17;
  [(SFUNestableSecureFlipBookCaptureDescription *)contentDescription transitionToState:v23 completion:v24];
}

uint64_t __82__SBSystemApertureSecureElementCompositeDescription_transitionToState_completion___block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = SBLogSystemApertureSecureFlipBookElements();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&dword_21ED4E000, v2, OS_LOG_TYPE_DEFAULT, "container (end) transitionToState: %@", &v5, 0xCu);
  }

  *(*(a1 + 40) + 64) = 0;
  return [*(a1 + 40) _completeTransitionToContainerState:*(a1 + 32) contentState:*(a1 + 48) completionBlock:*(a1 + 56)];
}

uint64_t __82__SBSystemApertureSecureElementCompositeDescription_transitionToState_completion___block_invoke_46(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = SBLogSystemApertureSecureFlipBookElements();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&dword_21ED4E000, v2, OS_LOG_TYPE_DEFAULT, "content (end) transitionToState: %@", &v5, 0xCu);
  }

  *(*(a1 + 40) + 65) = 0;
  return [*(a1 + 40) _completeTransitionToContainerState:*(a1 + 48) contentState:*(a1 + 32) completionBlock:*(a1 + 56)];
}

- (id)_composedSequences
{
  cachedComposedSequences = self->_cachedComposedSequences;
  if (!cachedComposedSequences)
  {
    v4 = [(SBSystemApertureSecureElementCompositeDescription *)self _composeSequencesWithContainerDescription:self->_containerDescription contentDescription:self->_contentDescription];
    v5 = self->_cachedComposedSequences;
    self->_cachedComposedSequences = v4;

    cachedComposedSequences = self->_cachedComposedSequences;
  }

  return cachedComposedSequences;
}

- (id)_composedStates
{
  v21 = *MEMORY[0x277D85DE8];
  cachedComposedStates = self->_cachedComposedStates;
  if (!cachedComposedStates)
  {
    v4 = [MEMORY[0x277CBEB58] set];
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v5 = [(SBSystemApertureSecureElementCompositeDescription *)self _composedSequences];
    v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v17;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v17 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v16 + 1) + 8 * i);
          v11 = [v10 objectAtIndexedSubscript:0];
          [v4 addObject:v11];

          v12 = [v10 objectAtIndexedSubscript:1];
          [v4 addObject:v12];
        }

        v7 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v7);
    }

    v13 = [v4 allObjects];
    v14 = self->_cachedComposedStates;
    self->_cachedComposedStates = v13;

    cachedComposedStates = self->_cachedComposedStates;
  }

  return cachedComposedStates;
}

- (id)_composeSequencesWithContainerDescription:(id)a3 contentDescription:(id)a4
{
  v100 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v59 = v5;
  v7 = [v5 states];
  v66 = v6;
  v63 = [v6 states];
  v8 = [MEMORY[0x277CBEB18] array];
  v65 = [MEMORY[0x277CBEB18] array];
  v62 = [MEMORY[0x277CBEB18] array];
  v87 = 0u;
  v88 = 0u;
  v89 = 0u;
  v90 = 0u;
  obj = v7;
  v9 = [obj countByEnumeratingWithState:&v87 objects:v99 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v88;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v88 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v87 + 1) + 8 * i);
        v83 = 0u;
        v84 = 0u;
        v85 = 0u;
        v86 = 0u;
        v14 = [v59 allowedNextStatesForState:v13];
        v15 = [v14 countByEnumeratingWithState:&v83 objects:v98 count:16];
        if (v15)
        {
          v16 = v15;
          v17 = *v84;
          do
          {
            for (j = 0; j != v16; ++j)
            {
              if (*v84 != v17)
              {
                objc_enumerationMutation(v14);
              }

              v19 = *(*(&v83 + 1) + 8 * j);
              v97[0] = v13;
              v97[1] = v19;
              v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v97 count:2];
              [v8 addObject:v20];
            }

            v16 = [v14 countByEnumeratingWithState:&v83 objects:v98 count:16];
          }

          while (v16);
        }
      }

      v10 = [obj countByEnumeratingWithState:&v87 objects:v99 count:16];
    }

    while (v10);
  }

  v81 = 0u;
  v82 = 0u;
  v79 = 0u;
  v80 = 0u;
  v56 = v63;
  v21 = [v56 countByEnumeratingWithState:&v79 objects:v96 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v80;
    do
    {
      for (k = 0; k != v22; ++k)
      {
        if (*v80 != v23)
        {
          objc_enumerationMutation(v56);
        }

        v25 = *(*(&v79 + 1) + 8 * k);
        v75 = 0u;
        v76 = 0u;
        v77 = 0u;
        v78 = 0u;
        v26 = [v66 allowedNextStatesForState:v25];
        v27 = [v26 countByEnumeratingWithState:&v75 objects:v95 count:16];
        if (v27)
        {
          v28 = v27;
          v29 = *v76;
          do
          {
            for (m = 0; m != v28; ++m)
            {
              if (*v76 != v29)
              {
                objc_enumerationMutation(v26);
              }

              v31 = *(*(&v75 + 1) + 8 * m);
              v94[0] = v25;
              v94[1] = v31;
              v32 = [MEMORY[0x277CBEA60] arrayWithObjects:v94 count:2];
              [v65 addObject:v32];
            }

            v28 = [v26 countByEnumeratingWithState:&v75 objects:v95 count:16];
          }

          while (v28);
        }
      }

      v22 = [v56 countByEnumeratingWithState:&v79 objects:v96 count:16];
    }

    while (v22);
  }

  v73 = 0u;
  v74 = 0u;
  v71 = 0u;
  v72 = 0u;
  v55 = v8;
  v60 = [v55 countByEnumeratingWithState:&v71 objects:v93 count:16];
  if (v60)
  {
    v58 = *v72;
    do
    {
      v33 = 0;
      do
      {
        if (*v72 != v58)
        {
          objc_enumerationMutation(v55);
        }

        v61 = v33;
        v34 = *(*(&v71 + 1) + 8 * v33);
        v67 = 0u;
        v68 = 0u;
        v69 = 0u;
        v70 = 0u;
        v64 = v65;
        v35 = [v64 countByEnumeratingWithState:&v67 objects:v92 count:16];
        if (v35)
        {
          v36 = v35;
          v37 = *v68;
          do
          {
            for (n = 0; n != v36; ++n)
            {
              if (*v68 != v37)
              {
                objc_enumerationMutation(v64);
              }

              v39 = *(*(&v67 + 1) + 8 * n);
              v40 = [v39 objectAtIndexedSubscript:0];
              v41 = [v39 objectAtIndexedSubscript:1];
              v42 = [v34 objectAtIndexedSubscript:0];
              v43 = [v34 objectAtIndexedSubscript:1];
              v44 = [v66 isSequenceFrom:v40 to:v41 supportedConcurrentlyWithContainerSequence:v42 toContainerState:v43];

              if (v44)
              {
                v45 = MEMORY[0x277CCACA8];
                v46 = [v34 objectAtIndexedSubscript:0];
                v47 = [v39 objectAtIndexedSubscript:0];
                v48 = [v45 stringWithFormat:@"%@.%@", v46, v47];

                v49 = MEMORY[0x277CCACA8];
                v50 = [v34 objectAtIndexedSubscript:1];
                v51 = [v39 objectAtIndexedSubscript:1];
                v52 = [v49 stringWithFormat:@"%@.%@", v50, v51];

                v91[0] = v48;
                v91[1] = v52;
                v53 = [MEMORY[0x277CBEA60] arrayWithObjects:v91 count:2];
                [v62 addObject:v53];
              }
            }

            v36 = [v64 countByEnumeratingWithState:&v67 objects:v92 count:16];
          }

          while (v36);
        }

        v33 = v61 + 1;
      }

      while (v61 + 1 != v60);
      v60 = [v55 countByEnumeratingWithState:&v71 objects:v93 count:16];
    }

    while (v60);
  }

  return v62;
}

- (void)_decomposeState:(id)a3 toContainerState:(id *)a4 contentState:(id *)a5
{
  v7 = [a3 componentsSeparatedByString:@"."];
  v8 = [v7 mutableCopy];

  if (a4)
  {
    *a4 = [v8 objectAtIndexedSubscript:0];
  }

  [v8 removeObjectAtIndex:0];
  if (a5)
  {
    *a5 = [v8 componentsJoinedByString:@"."];
  }
}

- (void)_completeTransitionToContainerState:(id)a3 contentState:(id)a4 completionBlock:(id)a5
{
  v25 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (self->_contentInTransition)
  {
    if (!self->_containerInTransition)
    {
      goto LABEL_8;
    }

    goto LABEL_5;
  }

  if (self->_containerInTransition)
  {
LABEL_5:
    v12 = [(SFUNestableSecureFlipBookCaptureDescription *)self->_contentDescription allowedNextStatesForState:v10];
    v13 = [v12 containsObject:v10];

    if ((v13 & 1) == 0)
    {
      [(SBSystemApertureSecureElementCompositeDescription *)a2 _completeTransitionToContainerState:v10 contentState:v9 completionBlock:?];
    }

    v14 = CACurrentMediaTime();
    self->_contentInTransition = 1;
    contentDescription = self->_contentDescription;
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __118__SBSystemApertureSecureElementCompositeDescription__completeTransitionToContainerState_contentState_completionBlock___block_invoke;
    v18[3] = &unk_2783BC598;
    v18[4] = self;
    v22 = v14;
    v19 = v10;
    v21 = v11;
    v20 = v9;
    [(SFUNestableSecureFlipBookCaptureDescription *)contentDescription transitionToState:v19 completion:v18];

    goto LABEL_8;
  }

  if (self->_shouldKeepContentInLoopingTransition)
  {
    self->_shouldKeepContentInLoopingTransition = 0;
  }

  else
  {
    v16 = SBLogSystemApertureSecureFlipBookElements();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.%@", v9, v10];
      *buf = 138412290;
      v24 = v17;
      _os_log_impl(&dword_21ED4E000, v16, OS_LOG_TYPE_DEFAULT, "composite (a) (end) transitionToState: %@", buf, 0xCu);
    }

    v11[2](v11);
  }

LABEL_8:
}

void __118__SBSystemApertureSecureElementCompositeDescription__completeTransitionToContainerState_contentState_completionBlock___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  *(*(a1 + 32) + 65) = 0;
  if (*(*(a1 + 32) + 64) == 1)
  {
    v2 = CACurrentMediaTime();
    v3 = [*(a1 + 32) referenceView];
    v4 = [v3 _screen];
    v5 = [v4 maximumFramesPerSecond];

    if (v2 - *(a1 + 64) > 1.0 / v5)
    {
      *(*(a1 + 32) + 66) = 1;
      v6 = *(a1 + 32);
      v7 = *(a1 + 40);
      v8 = *(a1 + 56);

      [v6 _keepContentInLoopingTransitionToState:v7 completionBlock:v8];
    }
  }

  else
  {
    v9 = SBLogSystemApertureSecureFlipBookElements();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.%@", *(a1 + 48), *(a1 + 40)];
      *buf = 138412290;
      v12 = v10;
      _os_log_impl(&dword_21ED4E000, v9, OS_LOG_TYPE_DEFAULT, "composite (b) (end) transitionToState: %@", buf, 0xCu);
    }

    (*(*(a1 + 56) + 16))();
  }
}

- (void)_keepContentInLoopingTransitionToState:(id)a3 completionBlock:(id)a4
{
  v6 = a3;
  v7 = a4;
  contentDescription = self->_contentDescription;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __108__SBSystemApertureSecureElementCompositeDescription__keepContentInLoopingTransitionToState_completionBlock___block_invoke;
  v11[3] = &unk_2783AA1E8;
  v11[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  [(SFUNestableSecureFlipBookCaptureDescription *)contentDescription transitionToState:v10 completion:v11];
}

uint64_t __108__SBSystemApertureSecureElementCompositeDescription__keepContentInLoopingTransitionToState_completionBlock___block_invoke(void *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = a1[4];
  if (v2[66] == 1)
  {
    v3 = a1[5];
    v4 = a1[6];

    return [v2 _keepContentInLoopingTransitionToState:v3 completionBlock:v4];
  }

  else
  {
    v6 = SBLogSystemApertureSecureFlipBookElements();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = a1[5];
      v8 = 138412290;
      v9 = v7;
      _os_log_impl(&dword_21ED4E000, v6, OS_LOG_TYPE_DEFAULT, "composite (c) (end) transitionToState: %@", &v8, 0xCu);
    }

    return (*(a1[6] + 16))();
  }
}

- (void)transitionToState:(uint64_t)a3 completion:.cold.1(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = [MEMORY[0x277CCA890] currentHandler];
  [v6 handleFailureInMethod:a1 object:a2 file:@"SBSystemApertureSecureElementCompositeDescription.m" lineNumber:194 description:{@"composite cannot begin transitionToState: %@ during transition (container already transitioning)", a3}];
}

- (void)transitionToState:(uint64_t)a3 completion:.cold.2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = [MEMORY[0x277CCA890] currentHandler];
  [v6 handleFailureInMethod:a1 object:a2 file:@"SBSystemApertureSecureElementCompositeDescription.m" lineNumber:195 description:{@"composite cannot begin transitionToState: %@ during transition (content already transitioning)", a3}];
}

- (void)_completeTransitionToContainerState:(uint64_t)a3 contentState:(uint64_t)a4 completionBlock:.cold.1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = [MEMORY[0x277CCA890] currentHandler];
  [v8 handleFailureInMethod:a1 object:a2 file:@"SBSystemApertureSecureElementCompositeDescription.m" lineNumber:296 description:{@"Content can't transition to a non looping state (%@) when concurrent container transition to (%@) takes longer", a3, a4}];
}

@end