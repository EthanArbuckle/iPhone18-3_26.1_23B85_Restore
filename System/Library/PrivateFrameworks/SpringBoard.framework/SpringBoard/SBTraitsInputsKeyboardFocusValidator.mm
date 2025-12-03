@interface SBTraitsInputsKeyboardFocusValidator
- (UIKBArbiterClientFocusContext)focusContext;
- (id)description;
- (id)validateInputs:(id)inputs withContext:(id)context;
@end

@implementation SBTraitsInputsKeyboardFocusValidator

- (id)description
{
  v3 = MEMORY[0x277CCAB68];
  v9.receiver = self;
  v9.super_class = SBTraitsInputsKeyboardFocusValidator;
  v4 = [(SBTraitsInputsValidator *)&v9 description];
  v5 = [v3 stringWithString:v4];

  WeakRetained = objc_loadWeakRetained(&self->_focusContext);
  sceneIdentity = [WeakRetained sceneIdentity];
  [v5 appendFormat:@", focused scene identity: %@, contextID: %ul", sceneIdentity, objc_msgSend(WeakRetained, "contextID")];

  return v5;
}

- (id)validateInputs:(id)inputs withContext:(id)context
{
  contextCopy = context;
  v28.receiver = self;
  v28.super_class = SBTraitsInputsKeyboardFocusValidator;
  v7 = [(SBTraitsInputsValidator *)&v28 validateInputs:inputs withContext:contextCopy];
  WeakRetained = objc_loadWeakRetained(&self->_focusContext);
  if (WeakRetained)
  {
    acquiredParticipants = [contextCopy acquiredParticipants];
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __67__SBTraitsInputsKeyboardFocusValidator_validateInputs_withContext___block_invoke;
    v26[3] = &unk_2783B7FA8;
    v10 = WeakRetained;
    v27 = v10;
    v11 = [acquiredParticipants bs_firstObjectPassingTest:v26];

    if (v11)
    {
    }

    else
    {
      acquiredParticipants2 = [contextCopy acquiredParticipants];
      v24[0] = MEMORY[0x277D85DD0];
      v24[1] = 3221225472;
      v24[2] = __67__SBTraitsInputsKeyboardFocusValidator_validateInputs_withContext___block_invoke_2;
      v24[3] = &unk_2783B7FA8;
      v25 = v10;
      v11 = [acquiredParticipants2 bs_firstObjectPassingTest:v24];

      if (!v11)
      {
        goto LABEL_6;
      }
    }

    v13 = objc_alloc(MEMORY[0x277D734B0]);
    interfaceIdiomInputs = [v7 interfaceIdiomInputs];
    userInterfaceStyleInputs = [v7 userInterfaceStyleInputs];
    [v7 deviceOrientationInputs];
    v16 = v23 = contextCopy;
    v17 = objc_alloc(MEMORY[0x277D734C0]);
    uniqueIdentifier = [v11 uniqueIdentifier];
    v19 = [v17 initWithKeyboardFocusedParticipantUniqueIdentifier:uniqueIdentifier];
    ambientPresentationInputs = [v7 ambientPresentationInputs];
    v21 = [v13 initWithInterfaceIdiomInputs:interfaceIdiomInputs userInterfaceStyleInputs:userInterfaceStyleInputs deviceOrientationInputs:v16 keyboardInputs:v19 ambientPresentationInputs:ambientPresentationInputs];

    contextCopy = v23;
    v7 = v21;
  }

LABEL_6:

  return v7;
}

uint64_t __67__SBTraitsInputsKeyboardFocusValidator_validateInputs_withContext___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 delegate];
  if (objc_opt_respondsToSelector())
  {
    v5 = [v4 participantAssociatedSceneIdentityTokens:v3];
    v6 = [*(a1 + 32) sceneIdentity];
    v7 = [v5 containsObject:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

uint64_t __67__SBTraitsInputsKeyboardFocusValidator_validateInputs_withContext___block_invoke_2(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 delegate];
  if (objc_opt_respondsToSelector())
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v5 = [v4 participantAssociatedWindows:{v3, 0}];
    v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v14;
      while (2)
      {
        v9 = 0;
        do
        {
          if (*v14 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = [*(*(&v13 + 1) + 8 * v9) _contextId];
          if (v10 == [*(a1 + 32) contextID])
          {
            v11 = 1;
            goto LABEL_13;
          }

          ++v9;
        }

        while (v7 != v9);
        v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }

    v11 = 0;
LABEL_13:
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (UIKBArbiterClientFocusContext)focusContext
{
  WeakRetained = objc_loadWeakRetained(&self->_focusContext);

  return WeakRetained;
}

@end