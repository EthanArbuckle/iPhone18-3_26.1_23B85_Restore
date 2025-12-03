@interface SBAssistantSessionPresentationContext
- (BOOL)isAnyAssistantPresentablePresented;
- (BOOL)isEqual:(id)equal;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (unint64_t)modalities;
- (void)setSiriPresentationOptions:(id)options;
@end

@implementation SBAssistantSessionPresentationContext

- (BOOL)isAnyAssistantPresentablePresented
{
  if ([(SBAssistantSessionPresentationContext *)self isAssistantPresented])
  {
    return 1;
  }

  return [(SBAssistantSessionPresentationContext *)self isAssistantAccessoryPresented];
}

- (unint64_t)modalities
{
  if ([(SBAssistantSessionPresentationContext *)self isEffectivelyVisionModality])
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  siriPresentationOptions = [(SBAssistantSessionPresentationContext *)self siriPresentationOptions];
  v5 = siriPresentationOptions;
  if (siriPresentationOptions)
  {
    inputType = [siriPresentationOptions inputType];
    v7 = v3 | 1;
    v8 = v3 | 2;
    if (inputType != 1)
    {
      v8 = v3;
    }

    if (inputType != 2)
    {
      v7 = v8;
    }

    if (inputType == 3)
    {
      v3 = 4;
    }

    else
    {
      v3 = v7;
    }
  }

  return v3;
}

- (void)setSiriPresentationOptions:(id)options
{
  optionsCopy = options;
  if ((BSEqualObjects() & 1) == 0)
  {
    objc_storeStrong(&self->_siriPresentationOptions, options);
    self->_effectivelyVisionModality |= [optionsCopy inputType] == 3;
  }
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [[SBMutableAssistantSessionPresentationContext allocWithZone:?]];
  [(SBAssistantSessionPresentationContext *)v4 setAssistantPresented:[(SBAssistantSessionPresentationContext *)self isAssistantPresented]];
  siriPresentationOptions = [(SBAssistantSessionPresentationContext *)self siriPresentationOptions];
  [(SBAssistantSessionPresentationContext *)v4 setSiriPresentationOptions:siriPresentationOptions];

  [(SBAssistantSessionPresentationContext *)v4 setKeyboardVisible:[(SBAssistantSessionPresentationContext *)self isKeyboardVisible]];
  [(SBAssistantSessionPresentationContext *)v4 setAllowsHDRContentBelow:[(SBAssistantSessionPresentationContext *)self allowsHDRContentBelow]];
  [(SBAssistantSessionPresentationContext *)v4 setWantsDeemphasizedBackdrop:[(SBAssistantSessionPresentationContext *)self wantsDeemphasizedBackdrop]];
  [(SBAssistantSessionPresentationContext *)v4 setAssistantAccessoryPresented:[(SBAssistantSessionPresentationContext *)self isAssistantAccessoryPresented]];
  [(SBAssistantSessionPresentationContext *)v4 setEffectivelyVisionModality:[(SBAssistantSessionPresentationContext *)self isEffectivelyVisionModality]];
  return v4;
}

- (unint64_t)hash
{
  builder = [MEMORY[0x277CF0C40] builder];
  v4 = [builder appendBool:self->_assistantPresented];
  v5 = [builder appendObject:self->_siriPresentationOptions];
  v6 = [builder appendBool:self->_keyboardVisible];
  v7 = [builder appendBool:self->_allowsHDRContentBelow];
  v8 = [builder appendBool:self->_wantsDeemphasizedBackdrop];
  v9 = [builder appendBool:self->_assistantAccessoryPresented];
  v10 = [builder appendBool:self->_effectivelyVisionModality];
  v11 = [builder hash];

  return v11;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v26 = 1;
  }

  else
  {
    v5 = [MEMORY[0x277CF0C20] builderWithObject:equalCopy ofExpectedClass:objc_opt_class()];
    assistantPresented = self->_assistantPresented;
    v40[0] = MEMORY[0x277D85DD0];
    v40[1] = 3221225472;
    v40[2] = __49__SBAssistantSessionPresentationContext_isEqual___block_invoke;
    v40[3] = &unk_2783ACE58;
    v7 = equalCopy;
    v41 = v7;
    v8 = [v5 appendBool:assistantPresented counterpart:v40];
    siriPresentationOptions = self->_siriPresentationOptions;
    v38[0] = MEMORY[0x277D85DD0];
    v38[1] = 3221225472;
    v38[2] = __49__SBAssistantSessionPresentationContext_isEqual___block_invoke_2;
    v38[3] = &unk_2783ACDB8;
    v10 = v7;
    v39 = v10;
    v11 = [v5 appendObject:siriPresentationOptions counterpart:v38];
    keyboardVisible = self->_keyboardVisible;
    v36[0] = MEMORY[0x277D85DD0];
    v36[1] = 3221225472;
    v36[2] = __49__SBAssistantSessionPresentationContext_isEqual___block_invoke_3;
    v36[3] = &unk_2783ACE58;
    v13 = v10;
    v37 = v13;
    v14 = [v5 appendBool:keyboardVisible counterpart:v36];
    allowsHDRContentBelow = self->_allowsHDRContentBelow;
    v34[0] = MEMORY[0x277D85DD0];
    v34[1] = 3221225472;
    v34[2] = __49__SBAssistantSessionPresentationContext_isEqual___block_invoke_4;
    v34[3] = &unk_2783ACE58;
    v16 = v13;
    v35 = v16;
    v17 = [v5 appendBool:allowsHDRContentBelow counterpart:v34];
    wantsDeemphasizedBackdrop = self->_wantsDeemphasizedBackdrop;
    v32[0] = MEMORY[0x277D85DD0];
    v32[1] = 3221225472;
    v32[2] = __49__SBAssistantSessionPresentationContext_isEqual___block_invoke_5;
    v32[3] = &unk_2783ACE58;
    v19 = v16;
    v33 = v19;
    v20 = [v5 appendBool:wantsDeemphasizedBackdrop counterpart:v32];
    assistantAccessoryPresented = self->_assistantAccessoryPresented;
    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = __49__SBAssistantSessionPresentationContext_isEqual___block_invoke_6;
    v30[3] = &unk_2783ACE58;
    v22 = v19;
    v31 = v22;
    v23 = [v5 appendBool:assistantAccessoryPresented counterpart:v30];
    effectivelyVisionModality = self->_effectivelyVisionModality;
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __49__SBAssistantSessionPresentationContext_isEqual___block_invoke_7;
    v28[3] = &unk_2783ACE58;
    v29 = v22;
    v25 = [v5 appendBool:effectivelyVisionModality counterpart:v28];
    v26 = [v5 isEqual];
  }

  return v26;
}

@end