@interface CACSpokenCommandCustom
- (CACSpokenCommandCustom)initWithCommandIdentifier:(id)identifier;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)handleSpokenCommand:(id)command;
@end

@implementation CACSpokenCommandCustom

- (CACSpokenCommandCustom)initWithCommandIdentifier:(id)identifier
{
  v33 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  v5 = [(CACSpokenCommand *)self initWithProperties:0];
  if (v5)
  {
    p_isa = &v5->super.super.isa;
    v7 = +[CACPreferences sharedPreferences];
    v8 = [v7 propertiesForCommandIdentifier:identifierCopy];
    v9 = p_isa[12];
    p_isa[12] = v8;

    v10 = [p_isa[12] objectForKey:@"CustomCommands"];
    bestLocaleIdentifier = [v7 bestLocaleIdentifier];
    v12 = [v10 objectForKey:bestLocaleIdentifier];

    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v13 = v12;
    v14 = [v13 countByEnumeratingWithState:&v28 objects:v32 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v29;
LABEL_4:
      v17 = 0;
      while (1)
      {
        if (*v29 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v28 + 1) + 8 * v17);
        if ([v18 length])
        {
          break;
        }

        if (v15 == ++v17)
        {
          v15 = [v13 countByEnumeratingWithState:&v28 objects:v32 count:16];
          if (v15)
          {
            goto LABEL_4;
          }

          goto LABEL_10;
        }
      }

      v20 = v18;

      if (!v20)
      {
        v26 = 0;
        goto LABEL_23;
      }

      [p_isa setIdentifier:identifierCopy];
      [p_isa setStrings:v13];
      [p_isa setPrimaryCommand:v20];
      [p_isa setAction:sel_handleSpokenCommand_];
      v19 = [p_isa[12] objectForKey:@"CustomType"];
      if (([v19 isEqualToString:@"PasteText"] & 1) != 0 || objc_msgSend(v19, "isEqualToString:", @"PasteBoard"))
      {
        contextEvaluation = [p_isa contextEvaluation];
        v22 = [MEMORY[0x277CCABB0] numberWithBool:1];
        [contextEvaluation setObject:v22 forKey:kCACCommandContextRequiresFocusedEditableText];
      }

      v23 = [p_isa[12] objectForKey:@"CustomScope"];
      if (v23 && (objc_opt_respondsToSelector() & 1) != 0 && ([v23 isEqualToString:@"com.apple.speech.SystemWideScope"] & 1) == 0)
      {
        contextEvaluation2 = [p_isa contextEvaluation];
        v25 = [MEMORY[0x277CBEA60] arrayWithObject:v23];
        [contextEvaluation2 setObject:v25 forKey:kCACCommandContextRequiresOneOfAppIdentifiers];
      }
    }

    else
    {
LABEL_10:
      v19 = v13;
      v20 = p_isa;
      p_isa = 0;
    }

    v26 = p_isa;

    p_isa = v20;
LABEL_23:
  }

  else
  {
    v26 = 0;
  }

  return v26;
}

- (void)handleSpokenCommand:(id)command
{
  v48 = *MEMORY[0x277D85DE8];
  customProperties = [(CACSpokenCommandCustom *)self customProperties];
  v5 = [customProperties objectForKey:@"CustomType"];
  if ([v5 isEqualToString:@"PasteText"])
  {
    [(CACSpokenCommand *)self setCompletionDeterminedManually:1];
    isRestrictedForAAC = [(CACSpokenCommand *)self isRestrictedForAAC];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __46__CACSpokenCommandCustom_handleSpokenCommand___block_invoke;
    block[3] = &unk_279CECAE8;
    v45 = isRestrictedForAAC;
    v43 = customProperties;
    selfCopy = self;
    dispatch_async(MEMORY[0x277D85CD0], block);
    focusedElement = v43;
  }

  else if ([v5 isEqualToString:@"RunShortcutsWorkflow"])
  {
    [(CACSpokenCommand *)self setCompletionDeterminedManually:1];
    focusedElement = [customProperties objectForKey:@"CustomShortcutsWorkflow"];
    mEMORY[0x277CE7E38] = [MEMORY[0x277CE7E38] sharedManager];
    v9 = [mEMORY[0x277CE7E38] shortcutForIdentifier:focusedElement];

    if (v9)
    {
      mEMORY[0x277CE7E38]2 = [MEMORY[0x277CE7E38] sharedManager];
      [mEMORY[0x277CE7E38]2 performShortcut:v9];
    }

    else
    {
      v23 = CACLogShortcuts();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        [(CACSpokenCommandCustom *)focusedElement handleSpokenCommand:v23];
      }
    }

    v24 = dispatch_time(0, 3000000000);
    v41[0] = MEMORY[0x277D85DD0];
    v41[1] = 3221225472;
    v41[2] = __46__CACSpokenCommandCustom_handleSpokenCommand___block_invoke_37;
    v41[3] = &unk_279CEB2D0;
    v41[4] = self;
    dispatch_after(v24, MEMORY[0x277D85CD0], v41);
  }

  else if ([v5 isEqualToString:@"PasteBoard"])
  {
    v11 = +[CACSpokenCommandManager sharedCACSpokenCommandManager];
    focusedElement = [v11 focusedElement];

    if (focusedElement)
    {
      v26 = v5;
      [(CACSpokenCommand *)self setCompletionDeterminedManually:1];
      generalPasteboard = [MEMORY[0x277D75810] generalPasteboard];
      v12 = objc_opt_new();
      v37 = 0u;
      v38 = 0u;
      v39 = 0u;
      v40 = 0u;
      v27 = customProperties;
      v13 = [customProperties objectForKey:@"CustomPasteBoard"];
      v14 = [v13 countByEnumeratingWithState:&v37 objects:v47 count:16];
      if (v14)
      {
        v15 = v14;
        v16 = *v38;
        do
        {
          for (i = 0; i != v15; ++i)
          {
            if (*v38 != v16)
            {
              objc_enumerationMutation(v13);
            }

            v18 = *(*(&v37 + 1) + 8 * i);
            v19 = [v18 objectForKey:{@"CustomPasteBoardType", generalPasteboard}];
            v20 = [v18 objectForKey:@"CustomPasteBoardData"];
            if (v20)
            {
              v21 = v19 == 0;
            }

            else
            {
              v21 = 1;
            }

            if (!v21)
            {
              [v12 setObject:v20 forKey:v19];
            }
          }

          v15 = [v13 countByEnumeratingWithState:&v37 objects:v47 count:16];
        }

        while (v15);
      }

      v46 = v12;
      v22 = [MEMORY[0x277CBEA60] arrayWithObjects:&v46 count:1];
      [generalPasteboard setItems:v22];

      v34[0] = MEMORY[0x277D85DD0];
      v34[1] = 3221225472;
      v34[2] = __46__CACSpokenCommandCustom_handleSpokenCommand___block_invoke_2;
      v34[3] = &unk_279CEB4C0;
      focusedElement = focusedElement;
      v35 = focusedElement;
      selfCopy2 = self;
      dispatch_async(MEMORY[0x277D85CD0], v34);

      v5 = v26;
      customProperties = v27;
    }
  }

  else if ([v5 isEqualToString:@"RunGesture"])
  {
    [(CACSpokenCommand *)self setCompletionDeterminedManually:1];
    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = __46__CACSpokenCommandCustom_handleSpokenCommand___block_invoke_3;
    v31[3] = &unk_279CEB4C0;
    v32 = customProperties;
    selfCopy3 = self;
    dispatch_async(MEMORY[0x277D85CD0], v31);
    focusedElement = v32;
  }

  else if ([v5 isEqualToString:@"RunUserActionFlow"])
  {
    [(CACSpokenCommand *)self setCompletionDeterminedManually:1];
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __46__CACSpokenCommandCustom_handleSpokenCommand___block_invoke_61;
    v28[3] = &unk_279CEB4C0;
    v29 = customProperties;
    selfCopy4 = self;
    dispatch_async(MEMORY[0x277D85CD0], v28);
    focusedElement = v29;
  }

  else
  {
    focusedElement = CACLogGeneral();
    if (os_log_type_enabled(focusedElement, OS_LOG_TYPE_ERROR))
    {
      [(CACSpokenCommandCustom *)v5 handleSpokenCommand:focusedElement];
    }
  }
}

uint64_t __46__CACSpokenCommandCustom_handleSpokenCommand___block_invoke(uint64_t a1)
{
  if (*(a1 + 48) == 1)
  {
    v2 = +[CACDisplayManager sharedManager];
    v3 = [CACLocaleUtilities localizedUIStringForKey:@"ErrorMessage.PasteNotAllowedForAAC"];
    [v2 displayMessageString:v3 type:1];
  }

  else
  {
    v2 = +[CACSpokenCommandManager sharedCACSpokenCommandManager];
    v3 = [*(a1 + 32) objectForKey:@"CustomTextToInsert"];
    [v2 insertDictatedString:v3];
  }

  v4 = *(a1 + 40);

  return [v4 setExecuting:0];
}

uint64_t __46__CACSpokenCommandCustom_handleSpokenCommand___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) cacPerformTextPaste];
  v2 = *(a1 + 40);

  return [v2 setExecuting:0];
}

void __46__CACSpokenCommandCustom_handleSpokenCommand___block_invoke_3(uint64_t a1)
{
  v2 = MEMORY[0x277CCAAC8];
  v3 = objc_opt_class();
  v4 = [*(a1 + 32) objectForKeyedSubscript:@"CustomGesture"];
  v8 = 0;
  v5 = [v2 unarchivedObjectOfClass:v3 fromData:v4 error:&v8];
  v6 = v8;

  if (v5)
  {
    v7 = +[CACSpokenCommandGestureManager mainScreenGestureManager];
    [v7 performGesture:v5];
  }

  else
  {
    v7 = CACLogAccessibility();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __46__CACSpokenCommandCustom_handleSpokenCommand___block_invoke_3_cold_1(v6, (a1 + 32));
    }
  }

  [*(a1 + 40) setExecuting:0];
}

void __46__CACSpokenCommandCustom_handleSpokenCommand___block_invoke_61(uint64_t a1)
{
  v2 = MEMORY[0x277CCAAC8];
  v3 = objc_opt_class();
  v4 = (a1 + 32);
  v5 = [*(a1 + 32) objectForKeyedSubscript:@"CustomUserActionFlow"];
  v11 = 0;
  v6 = [v2 unarchivedObjectOfClass:v3 fromData:v5 error:&v11];
  v7 = v11;

  if (v6)
  {
    v8 = +[CACRecordedUserActionManager sharedManager];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __46__CACSpokenCommandCustom_handleSpokenCommand___block_invoke_2_67;
    v10[3] = &unk_279CEB980;
    v10[4] = *(a1 + 40);
    [v8 beginExecutingRecordedUserActionFlow:v6 completionBlock:v10];
  }

  else
  {
    [*(a1 + 40) setExecuting:0];
    v9 = CACLogAccessibility();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      __46__CACSpokenCommandCustom_handleSpokenCommand___block_invoke_61_cold_1(v7, v4);
    }
  }
}

void __46__CACSpokenCommandCustom_handleSpokenCommand___block_invoke_2_67(uint64_t a1, void *a2)
{
  v7 = a2;
  [*(a1 + 32) setExecuting:0];
  if ([v7 code])
  {
    v3 = [v7 localizedDescription];
    v4 = [v3 length];

    if (v4)
    {
      v5 = +[CACDisplayManager sharedManager];
      v6 = [v7 localizedDescription];
      [v5 displayMessageString:v6 type:1];
    }
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "initWithSpokenCommand:", self}];
  customProperties = [(CACSpokenCommandCustom *)self customProperties];
  [v4 _setCustomProperties:customProperties];

  primaryCommand = [(CACSpokenCommandCustom *)self primaryCommand];
  [v4 setPrimaryCommand:primaryCommand];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  strings = [(CACSpokenCommand *)self strings];
  v5 = [v3 stringWithFormat:@"%@, %@", strings, self->_customProperties];

  return v5;
}

- (void)handleSpokenCommand:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_26B354000, a2, OS_LOG_TYPE_ERROR, "Unhandled custom spoken command type: %@", &v2, 0xCu);
}

- (void)handleSpokenCommand:(uint64_t)a1 .cold.2(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_26B354000, a2, OS_LOG_TYPE_ERROR, "Unable to perform shortcut with identifier: %@. No longer exists?", &v2, 0xCu);
}

void __46__CACSpokenCommandCustom_handleSpokenCommand___block_invoke_3_cold_1(uint64_t a1, id *a2)
{
  v2 = [*a2 objectForKeyedSubscript:@"CustomGesture"];
  OUTLINED_FUNCTION_0_7();
  OUTLINED_FUNCTION_1_3(&dword_26B354000, v3, v4, "Unable to unarchive gesture. Error: %@, data: %@", v5, v6, v7, v8, v9);
}

void __46__CACSpokenCommandCustom_handleSpokenCommand___block_invoke_61_cold_1(uint64_t a1, id *a2)
{
  v2 = [*a2 objectForKeyedSubscript:@"CustomUserActionFlow"];
  OUTLINED_FUNCTION_0_7();
  OUTLINED_FUNCTION_1_3(&dword_26B354000, v3, v4, "Unable to unarchive user action flow. Error: %@, data: %@", v5, v6, v7, v8, v9);
}

@end