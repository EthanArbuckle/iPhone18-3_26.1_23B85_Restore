@interface CACSpokenCommandItem
+ (id)newCommandItemWithLocale:(id)a3 scope:(id)a4;
- (AXReplayableGesture)customGesture;
- (BOOL)conflictsWithItem:(id)a3;
- (BOOL)evaluateCommandPredicate:(id)a3;
- (BOOL)isCollapsed;
- (BOOL)isVisible;
- (CACRecordedUserActionFlow)customUserActionFlow;
- (CACSpokenCommandItem)initWithIdentifier:(id)a3 properties:(id)a4 locale:(id)a5;
- (id)_customCommandStringsWithLocale:(id)a3;
- (id)cloneWithoutCommands;
- (id)commandsArray;
- (id)copy;
- (id)description;
- (id)dictionaryForSavingToPreferences;
- (id)displayString;
- (id)primaryBuiltinCommandForLocale:(id)a3;
- (id)sortString;
- (id)untranslatedDisplayStringAndLocale:(id *)a3;
- (id)valueForKey:(id)a3 locale:(id)a4;
- (void)_reloadFromProperties:(id)a3;
- (void)_saveKey:(id)a3 toDictionary:(id)a4;
- (void)_setCustomCommandStrings:(id)a3 withLocale:(id)a4;
- (void)_updateBuiltInCommandsWithLocale:(id)a3;
- (void)removeFromPreferences;
- (void)saveToPreferences;
- (void)setCustomGesture:(id)a3;
- (void)setCustomUserActionFlow:(id)a3;
- (void)setDisplayString:(id)a3;
- (void)setIsCollapsed:(BOOL)a3;
- (void)setIsConfirmationRequired:(BOOL)a3;
- (void)setIsEnabled:(BOOL)a3;
- (void)setLocale:(id)a3;
- (void)setValue:(id)a3 forKey:(id)a4 locale:(id)a5;
@end

@implementation CACSpokenCommandItem

+ (id)newCommandItemWithLocale:(id)a3 scope:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = +[CACPreferences sharedPreferences];
  if (v5)
  {
    v8 = v5;
  }

  else
  {
    v8 = @"com.apple.speech.SystemWideScope";
  }

  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjectsAndKeys:{v8, @"CustomScope", *MEMORY[0x277CBED28], @"Enabled", 0}];

  v10 = [v7 uniqueCustomCommandIdentifier];
  v11 = [objc_alloc(objc_opt_class()) initWithIdentifier:v10 properties:v9 locale:v6];

  [v11 setIsEdited:1];
  return v11;
}

- (CACSpokenCommandItem)initWithIdentifier:(id)a3 properties:(id)a4 locale:(id)a5
{
  v8 = a4;
  v9 = a5;
  v15.receiver = self;
  v15.super_class = CACSpokenCommandItem;
  v10 = [(CACSpokenCommandGroup *)&v15 initWithIdentifier:a3];
  v11 = v10;
  if (v10)
  {
    [(CACSpokenCommandItem *)v10 setLocale:v9];
    v12 = objc_alloc_init(MEMORY[0x277CBEB38]);
    customDictionary = v11->_customDictionary;
    v11->_customDictionary = v12;

    [(CACSpokenCommandItem *)v11 _reloadFromProperties:v8];
    v11->_isEdited = 0;
  }

  return v11;
}

- (id)cloneWithoutCommands
{
  v5.receiver = self;
  v5.super_class = CACSpokenCommandItem;
  v3 = [(CACSpokenCommandGroup *)&v5 cloneWithoutCommands];
  [v3 setLocale:self->_locale];

  return v3;
}

- (BOOL)isVisible
{
  v35 = *MEMORY[0x277D85DE8];
  v3 = [CACSpokenCommandManager commandPropertiesForIdentifier:self->super._identifier];
  v4 = [v3 objectForKey:@"VisibilityEvaluation"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [MEMORY[0x277CBEB38] dictionaryWithDictionary:v4];
  }

  else
  {
    [MEMORY[0x277CBEB38] dictionary];
  }
  v5 = ;
  v6 = [v3 objectForKey:@"ContextEvaluation"];
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __33__CACSpokenCommandItem_isVisible__block_invoke;
  v28[3] = &unk_279CEC668;
  v7 = v5;
  v29 = v7;
  [v6 enumerateKeysAndObjectsUsingBlock:v28];
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v8 = [v7 allKeys];
  v9 = [v8 countByEnumeratingWithState:&v24 objects:v34 count:16];
  if (v9)
  {
    v10 = v9;
    v21 = self;
    v22 = v6;
    v20 = 8;
    v23 = v4;
    v11 = *v25;
    while (2)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v25 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v24 + 1) + 8 * i);
        v14 = [v7 objectForKey:{v13, v20, v21}];
        v15 = [CACSpokenCommandManager doesEvaluatorKey:v13 matchValue:v14];

        if (!v15)
        {
          v17 = CACLogAccessibility();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
          {
            v18 = *(&v21->super.super.isa + v20);
            *buf = 138412546;
            v31 = v18;
            v32 = 2112;
            v33 = v13;
            _os_log_impl(&dword_26B354000, v17, OS_LOG_TYPE_INFO, "Hiding command %@ for failing evaluator %@", buf, 0x16u);
          }

          v16 = 0;
          goto LABEL_16;
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v24 objects:v34 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }

    v16 = 1;
LABEL_16:
    v6 = v22;
    v4 = v23;
  }

  else
  {
    v16 = 1;
  }

  return v16;
}

void __33__CACSpokenCommandItem_isVisible__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  v6 = +[CACSpokenCommandManager hardwareEvaluatorKeys];
  if ([v6 containsObject:v8])
  {
    v7 = [*(a1 + 32) objectForKey:v8];

    if (!v7)
    {
      [*(a1 + 32) setObject:v5 forKey:v8];
    }
  }

  else
  {
  }
}

- (BOOL)conflictsWithItem:(id)a3
{
  v4 = a3;
  if (-[CACSpokenCommandGroup isEnabled](self, "isEnabled") && [v4 isEnabled])
  {
    v5 = [(CACSpokenCommandItem *)self commandsArray];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __42__CACSpokenCommandItem_conflictsWithItem___block_invoke;
    v9[3] = &unk_279CEC690;
    v10 = v4;
    v11 = self;
    v6 = [v5 indexOfObjectPassingTest:v9];

    v7 = v6 != 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

uint64_t __42__CACSpokenCommandItem_conflictsWithItem___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v30 = *MEMORY[0x277D85DE8];
  v6 = [a2 lowercaseString];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v7 = [*(a1 + 32) commandsArray];
  v8 = [v7 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v26;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v26 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v25 + 1) + 8 * i);
        if ([v12 length])
        {
          v13 = [v12 lowercaseString];
          v14 = [v13 isEqualToString:v6];

          if (v14)
          {
            v15 = 1;
            *a4 = 1;
            v16 = [*(a1 + 40) identifier];
            if ([v16 hasPrefix:@"Custom."])
            {
              v17 = [*(a1 + 32) identifier];
              if ([v17 hasPrefix:@"Custom."])
              {
                v18 = [*(a1 + 40) customScope];
                if (([v18 isEqualToString:@"com.apple.speech.SystemWideScope"] & 1) == 0)
                {
                  v19 = [*(a1 + 40) customScope];
                  if (v19)
                  {
                    v20 = [*(a1 + 32) customScope];
                    if (([v20 isEqualToString:@"com.apple.speech.SystemWideScope"] & 1) == 0)
                    {
                      v21 = [*(a1 + 32) customScope];
                      if (v21)
                      {
                        v24 = [*(a1 + 40) customScope];
                        v22 = [*(a1 + 32) customScope];
                        v15 = [v24 isEqualToString:v22];
                      }
                    }
                  }
                }
              }
            }

            goto LABEL_24;
          }
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v25 objects:v29 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  v15 = 0;
LABEL_24:

  return v15 & 1;
}

- (BOOL)evaluateCommandPredicate:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v5 = [(CACSpokenCommandItem *)self commandsArray];
  v6 = [v5 countByEnumeratingWithState:&v18 objects:v23 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v19;
LABEL_3:
    v9 = 0;
    while (1)
    {
      if (*v19 != v8)
      {
        objc_enumerationMutation(v5);
      }

      if ([v4 evaluateWithObject:*(*(&v18 + 1) + 8 * v9)])
      {
        goto LABEL_18;
      }

      if (v7 == ++v9)
      {
        v7 = [v5 countByEnumeratingWithState:&v18 objects:v23 count:16];
        if (v7)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [(CACSpokenCommandItem *)self searchAlternates];
  v10 = [v5 countByEnumeratingWithState:&v14 objects:v22 count:16];
  if (v10)
  {
    v11 = *v15;
LABEL_11:
    v12 = 0;
    while (1)
    {
      if (*v15 != v11)
      {
        objc_enumerationMutation(v5);
      }

      if ([v4 evaluateWithObject:*(*(&v14 + 1) + 8 * v12)])
      {
        break;
      }

      if (v10 == ++v12)
      {
        v10 = [v5 countByEnumeratingWithState:&v14 objects:v22 count:16];
        if (v10)
        {
          goto LABEL_11;
        }

        goto LABEL_19;
      }
    }

LABEL_18:
    LOBYTE(v10) = 1;
  }

LABEL_19:

  return v10;
}

- (void)setIsEnabled:(BOOL)a3
{
  self->_isEdited = 1;
  v3.receiver = self;
  v3.super_class = CACSpokenCommandItem;
  [(CACSpokenCommandGroup *)&v3 setIsEnabled:a3];
}

- (void)setIsConfirmationRequired:(BOOL)a3
{
  self->_isEdited = 1;
  v3.receiver = self;
  v3.super_class = CACSpokenCommandItem;
  [(CACSpokenCommandGroup *)&v3 setIsConfirmationRequired:a3];
}

- (void)setCustomGesture:(id)a3
{
  v4 = a3;
  self->_isEdited = 1;
  if (v4)
  {
    v8 = 0;
    v5 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v4 requiringSecureCoding:1 error:&v8];
    v6 = v8;
    if (!v5)
    {
      v7 = CACLogPreferences();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        [CACSpokenCommandItem setCustomGesture:];
      }
    }
  }

  else
  {
    v5 = 0;
  }

  [(NSMutableDictionary *)self->_customDictionary setValue:v5 forKey:@"CustomGesture"];
}

- (AXReplayableGesture)customGesture
{
  v2 = [(NSMutableDictionary *)self->_customDictionary valueForKey:@"CustomGesture"];
  if (v2)
  {
    v7 = 0;
    v3 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:objc_opt_class() fromData:v2 error:&v7];
    v4 = v7;
    if (!v3)
    {
      v5 = CACLogPreferences();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        [CACSpokenCommandItem customGesture];
      }
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setCustomUserActionFlow:(id)a3
{
  v4 = a3;
  self->_isEdited = 1;
  if (v4)
  {
    v8 = 0;
    v5 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v4 requiringSecureCoding:1 error:&v8];
    v6 = v8;
    if (!v5)
    {
      v7 = CACLogPreferences();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        [CACSpokenCommandItem setCustomUserActionFlow:];
      }
    }
  }

  else
  {
    v5 = 0;
  }

  [(NSMutableDictionary *)self->_customDictionary setValue:v5 forKey:@"CustomUserActionFlow"];
}

- (CACRecordedUserActionFlow)customUserActionFlow
{
  v2 = [(NSMutableDictionary *)self->_customDictionary valueForKey:@"CustomUserActionFlow"];
  if (v2)
  {
    v7 = 0;
    v3 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:objc_opt_class() fromData:v2 error:&v7];
    v4 = v7;
    if (!v3)
    {
      v5 = CACLogPreferences();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        [CACSpokenCommandItem customUserActionFlow];
      }
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)_setCustomCommandStrings:(id)a3 withLocale:(id)a4
{
  v10 = a4;
  self->_isEdited = 1;
  customDictionary = self->_customDictionary;
  v7 = a3;
  v8 = [(NSMutableDictionary *)customDictionary objectForKey:@"CustomCommands"];
  if (!v8)
  {
    v8 = [MEMORY[0x277CBEB38] dictionary];
    [(NSMutableDictionary *)self->_customDictionary setObject:v8 forKey:@"CustomCommands"];
  }

  v9 = [CACLocaleUtilities normalizedLocaleIdentifier:v10];
  [v8 setValue:v7 forKey:v9];

  [(CACSpokenCommandGroup *)self setCommandsArray:0];
  [(CACSpokenCommandItem *)self setDisplayString:0];
  [(CACSpokenCommandItem *)self setUntranslatedDisplayString:0];
}

- (id)_customCommandStringsWithLocale:(id)a3
{
  customDictionary = self->_customDictionary;
  v4 = a3;
  v5 = [(NSMutableDictionary *)customDictionary objectForKey:@"CustomCommands"];
  v6 = [CACLocaleUtilities normalizedLocaleIdentifier:v4];

  v7 = [v5 objectForKey:v6];

  return v7;
}

- (id)primaryBuiltinCommandForLocale:(id)a3
{
  v4 = a3;
  v5 = +[CACPreferences sharedPreferences];
  v6 = [v5 propertiesForCommandIdentifier:self->super._identifier localeIdentifier:v4];

  v7 = [v6 objectForKey:@"BuiltInStrings"];
  if ([v7 count])
  {
    v8 = [v7 objectAtIndex:0];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)_updateBuiltInCommandsWithLocale:(id)a3
{
  v24 = a3;
  v23 = +[CACPreferences sharedPreferences];
  v4 = [v23 propertiesForCommandIdentifier:self->super._identifier localeIdentifier:v24];
  v5 = [v4 objectForKey:@"BuiltInStrings"];
  v6 = [MEMORY[0x277CBEB18] arrayWithArray:v5];
  [(CACSpokenCommandGroup *)self setCommandsArray:v6];

  v7 = objc_alloc_init(MEMORY[0x277CCAB68]);
  if ([v5 count])
  {
    v22 = v4;
    v21 = v5;
    v8 = [v5 objectAtIndex:0];
    v26.length = [(__CFString *)v8 length];
    v26.location = 0;
    v9 = CFStringTokenizerCreate(0, v8, v26, 0, 0);
    while (CFStringTokenizerAdvanceToNextToken(v9))
    {
      CurrentTokenRange = CFStringTokenizerGetCurrentTokenRange(v9);
      v10 = CFStringCreateWithSubstring(0, v8, CurrentTokenRange);
      v11 = [v23 builtInCommandsStringsTableForLocaleIdentifier:v24];
      v12 = MEMORY[0x277CCACA8];
      v13 = [(__CFString *)v10 lowercaseString];
      v14 = [v12 stringWithFormat:@"CommandSynonym.%@", v13];
      v15 = [v11 objectForKey:v14];

      if (v15)
      {
        [(__CFString *)v7 appendFormat:@"%@ ", v15];
      }

      CFRelease(v10);
    }

    CFRelease(v9);

    v4 = v22;
    v5 = v21;
  }

  [(CACSpokenCommandItem *)self setSearchAlternates:0];
  v16 = [v4 objectForKey:@"SearchAlternates"];
  if (v16)
  {
    [(__CFString *)v7 appendString:v16];
  }

  if ([(__CFString *)v7 length])
  {
    v17 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v28.length = [(__CFString *)v7 length];
    v28.location = 0;
    v18 = CFStringTokenizerCreate(0, v7, v28, 0, 0);
    v19 = v18;
    while (CFStringTokenizerAdvanceToNextToken(v18))
    {
      v29 = CFStringTokenizerGetCurrentTokenRange(v19);
      v20 = CFStringCreateWithSubstring(0, v7, v29);
      [v17 addObject:v20];
      CFRelease(v20);
      v18 = v19;
    }

    CFRelease(v19);
    if ([v17 count])
    {
      [(CACSpokenCommandItem *)self setSearchAlternates:v17];
    }
  }
}

- (void)_reloadFromProperties:(id)a3
{
  v4 = a3;
  if (self->super._identifier)
  {
    v5 = +[CACPreferences sharedPreferences];
    v6 = v5;
    locale = self->_locale;
    if (locale)
    {
      v8 = locale;
    }

    else
    {
      v8 = [v5 bestLocaleIdentifier];
    }

    v9 = v8;
    v10 = [(NSString *)self->super._identifier length];
    if (v4 || !v10 || ([v6 propertiesForCommandIdentifier:self->super._identifier localeIdentifier:v9], (v4 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v11 = [v4 objectForKey:@"Enabled"];
      -[CACSpokenCommandItem setIsEnabled:](self, "setIsEnabled:", [v11 BOOLValue]);

      v12 = [v4 objectForKey:@"ConfirmationRequired"];
      -[CACSpokenCommandItem setIsConfirmationRequired:](self, "setIsConfirmationRequired:", [v12 BOOLValue]);

      if (self->super._isCustom)
      {
        v13 = [v4 objectForKey:@"CustomCommands"];
        if (v13)
        {
          v14 = [(NSMutableDictionary *)self->_customDictionary objectForKey:@"CustomCommands"];
          v15 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:v14];
          [v15 addEntriesFromDictionary:v13];
          [(NSMutableDictionary *)self->_customDictionary setObject:v15 forKey:@"CustomCommands"];
        }

        v31 = v13;
        [(CACSpokenCommandGroup *)self setCommandsArray:0];
        [(CACSpokenCommandItem *)self setDisplayString:0];
        [(CACSpokenCommandItem *)self setUntranslatedDisplayString:0];
        v16 = [v4 objectForKey:@"CustomScope"];
        [(CACSpokenCommandItem *)self setCustomScope:v16];

        v17 = [v4 objectForKey:@"CustomType"];
        [(CACSpokenCommandItem *)self setCustomType:v17];

        v18 = [v4 objectForKey:@"CustomGesture"];
        if (v18)
        {
          v33 = 0;
          v19 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:objc_opt_class() fromData:v18 error:&v33];
          v20 = v33;
          if (!v19)
          {
            v21 = CACLogPreferences();
            if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
            {
              [CACSpokenCommandItem customGesture];
            }
          }
        }

        else
        {
          v19 = 0;
        }

        [(CACSpokenCommandItem *)self setCustomGesture:v19];
        v23 = [v4 objectForKey:@"CustomTextToInsert"];
        [(CACSpokenCommandItem *)self setCustomTextToInsert:v23];

        v24 = [v4 valueForKey:@"CustomUserActionFlow"];
        if (v24)
        {
          v32 = 0;
          v25 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:objc_opt_class() fromData:v24 error:&v32];
          v26 = v32;
          if (!v25)
          {
            v27 = CACLogPreferences();
            if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
            {
              [CACSpokenCommandItem customUserActionFlow];
            }
          }
        }

        else
        {
          v25 = 0;
        }

        [(CACSpokenCommandItem *)self setCustomUserActionFlow:v25];
        v28 = [v4 objectForKey:@"CustomAppName"];
        [(CACSpokenCommandItem *)self setCustomAppName:v28];

        v29 = [v4 objectForKey:@"CustomPasteBoard"];
        [(CACSpokenCommandItem *)self setCustomPasteBoard:v29];

        v30 = [v4 objectForKey:@"CustomShortcutsWorkflow"];
        [(CACSpokenCommandItem *)self setCustomShortcutsWorkflowIdentifier:v30];
      }

      else
      {
        [(CACSpokenCommandItem *)self _updateBuiltInCommandsWithLocale:v9];
      }

      self->_isEdited = 0;
    }

    else
    {
      v22 = CACLogGeneral();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        [(CACSpokenCommandItem *)&self->super._identifier _reloadFromProperties:v22];
      }

      v4 = 0;
    }
  }

  else
  {
    v6 = CACLogGeneral();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [CACSpokenCommandItem _reloadFromProperties:v6];
    }
  }
}

- (void)_saveKey:(id)a3 toDictionary:(id)a4
{
  v9 = a3;
  v6 = a4;
  v7 = [(NSMutableDictionary *)self->_customDictionary objectForKey:v9];
  if (v7)
  {
    [v6 setObject:v7 forKey:v9];
  }

  else
  {
    v8 = [MEMORY[0x277CBEB68] null];
    [v6 setObject:v8 forKey:v9];
  }
}

- (void)removeFromPreferences
{
  if (self->super._isCustom)
  {
    v4 = +[CACPreferences sharedPreferences];
    [v4 removePropertiesForCommandIdentifier:self->super._identifier];
  }
}

- (id)dictionaryForSavingToPreferences
{
  if (self->_isEdited)
  {
    v3 = [MEMORY[0x277CBEB38] dictionary];
    v4 = [MEMORY[0x277CCABB0] numberWithBool:{-[CACSpokenCommandGroup isEnabled](self, "isEnabled")}];
    [v3 setObject:v4 forKey:@"Enabled"];

    v5 = [MEMORY[0x277CCABB0] numberWithBool:{-[CACSpokenCommandGroup isConfirmationRequired](self, "isConfirmationRequired")}];
    [v3 setObject:v5 forKey:@"ConfirmationRequired"];

    if ([(CACSpokenCommandGroup *)self isCustom])
    {
      [v3 addEntriesFromDictionary:self->_customDictionary];
      v10[0] = MEMORY[0x277D85DD0];
      v10[1] = 3221225472;
      v10[2] = __56__CACSpokenCommandItem_dictionaryForSavingToPreferences__block_invoke;
      v10[3] = &unk_279CEB8F0;
      v3 = v3;
      v11 = v3;
      [&unk_287BF0100 enumerateKeysAndObjectsUsingBlock:v10];
      v6 = [(CACSpokenCommandItem *)self customType];

      if (v6)
      {
        v7 = [(CACSpokenCommandItem *)self customType];
        v8 = [&unk_287BF0100 objectForKeyedSubscript:v7];

        if (v8)
        {
          [(CACSpokenCommandItem *)self _saveKey:v8 toDictionary:v3];
        }
      }
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void __56__CACSpokenCommandItem_dictionaryForSavingToPreferences__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *(a1 + 32);
  v4 = MEMORY[0x277CBEB68];
  v5 = a3;
  v6 = [v4 null];
  [v3 setObject:v6 forKey:v5];
}

- (void)saveToPreferences
{
  v3 = [(CACSpokenCommandItem *)self dictionaryForSavingToPreferences];
  if (v3)
  {
    v5 = v3;
    v4 = +[CACPreferences sharedPreferences];
    [v4 setProperties:v5 forCommandIdentifier:self->super._identifier];

    v3 = v5;
    self->_isEdited = 0;
  }
}

- (void)setValue:(id)a3 forKey:(id)a4 locale:(id)a5
{
  v10 = a4;
  v8 = a5;
  v9 = a3;
  if ([v10 isEqualToString:@"CustomCommands"])
  {
    [(CACSpokenCommandItem *)self _setCustomCommandStrings:v9 withLocale:v8];
  }

  else
  {
    [(CACSpokenCommandItem *)self setValue:v9 forKey:v10];
  }
}

- (id)valueForKey:(id)a3 locale:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v6 isEqualToString:@"CustomCommands"])
  {
    [(CACSpokenCommandItem *)self _customCommandStringsWithLocale:v7];
  }

  else
  {
    [(CACSpokenCommandItem *)self valueForKey:v6];
  }
  v8 = ;

  return v8;
}

- (void)setLocale:(id)a3
{
  objc_storeStrong(&self->_locale, a3);
  [(CACSpokenCommandGroup *)self setCommandsArray:0];
  [(CACSpokenCommandItem *)self setDisplayString:0];

  [(CACSpokenCommandItem *)self setUntranslatedDisplayString:0];
}

- (id)commandsArray
{
  if (!self->super._commandsArray)
  {
    locale = self->_locale;
    if (self->super._isCustom)
    {
      v4 = [(CACSpokenCommandItem *)self _customCommandStringsWithLocale:locale];
      v5 = [v4 mutableCopy];

      if (v5)
      {
        [(CACSpokenCommandGroup *)self setCommandsArray:v5];
      }

      else
      {
        v6 = [MEMORY[0x277CBEB18] array];
        [(CACSpokenCommandGroup *)self setCommandsArray:v6];
      }
    }

    else
    {
      if (locale)
      {
        v5 = locale;
      }

      else
      {
        v7 = +[CACPreferences sharedPreferences];
        v5 = [v7 bestLocaleIdentifier];
      }

      [(CACSpokenCommandItem *)self _updateBuiltInCommandsWithLocale:v5];
    }
  }

  commandsArray = self->super._commandsArray;

  return commandsArray;
}

- (void)setDisplayString:(id)a3
{
  self->_isEdited = 1;
  v3.receiver = self;
  v3.super_class = CACSpokenCommandItem;
  [(CACSpokenCommandGroup *)&v3 setDisplayString:a3];
}

- (id)displayString
{
  displayString = self->super._displayString;
  if (!displayString)
  {
    v4 = [(CACSpokenCommandItem *)self commandsArray];
    if ([v4 count])
    {
      v5 = [v4 objectAtIndex:0];
      v6 = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
      v7 = [v5 stringByTrimmingCharactersInSet:v6];

      if ([v7 length])
      {
        [(CACSpokenCommandItem *)self setDisplayString:v7];
      }
    }

    displayString = self->super._displayString;
    if (!displayString)
    {
      [(CACSpokenCommandItem *)self setDisplayString:&stru_287BD8610];
      displayString = self->super._displayString;
    }
  }

  return displayString;
}

- (id)untranslatedDisplayStringAndLocale:(id *)a3
{
  v4 = self;
  v57 = *MEMORY[0x277D85DE8];
  if (!self->_untranslatedDisplayString)
  {
    v5 = +[CACPreferences sharedPreferences];
    v6 = [v5 userSelectableLocaleIdentifiers];
    if (v6 && ([(CACSpokenCommandItem *)v4 locale], v7 = objc_claimAutoreleasedReturnValue(), v7, v7))
    {
      v46 = a3;
      v8 = MEMORY[0x277CBEB18];
      v9 = [(NSMutableDictionary *)v4->_customDictionary objectForKey:@"CustomCommands"];
      v10 = [v9 allKeys];
      v11 = [v8 arrayWithArray:v10];

      v12 = [(CACSpokenCommandItem *)v4 locale];
      v13 = [v11 indexOfObject:v12];

      if (v13 != 0x7FFFFFFFFFFFFFFFLL)
      {
        [v11 removeObjectAtIndex:v13];
      }

      v44 = v6;
      v45 = v5;
      v51 = v4;
      v54 = 0u;
      v55 = 0u;
      v52 = 0u;
      v53 = 0u;
      v14 = v6;
      v15 = [v14 countByEnumeratingWithState:&v52 objects:v56 count:16];
      if (v15)
      {
        v16 = v15;
        v17 = 0;
        v18 = 0;
        v19 = *v53;
        v49 = v14;
        v50 = v11;
        v47 = *v53;
        do
        {
          for (i = 0; i != v16; ++i)
          {
            if (*v53 != v19)
            {
              objc_enumerationMutation(v14);
            }

            v21 = *(*(&v52 + 1) + 8 * i);
            if (v21 && [v11 containsObject:*(*(&v52 + 1) + 8 * i)])
            {
              v22 = v17;
              v23 = [(CACSpokenCommandItem *)v51 _customCommandStringsWithLocale:v21];
              if ([v23 count])
              {
                v24 = [v23 objectAtIndex:0];
              }

              else
              {
                v24 = 0;
              }

              v25 = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
              v26 = [v24 stringByTrimmingCharactersInSet:v25];
              v27 = [v26 length];

              if (v27)
              {
                v28 = v24;

                v29 = v21;
                v30 = [(CACSpokenCommandItem *)v51 locale];
                v31 = [CACLocaleUtilities isSameLangaugeFromLocaleIdentifier:v29 secondLocaleIdentifier:v30];

                if (v31)
                {
                  v32 = v28;
                  v4 = v51;
                  a3 = v46;
                  v6 = v44;
                  v5 = v45;
                  goto LABEL_35;
                }
              }

              else
              {
                v29 = v22;
                v28 = v18;
              }

              v17 = v29;
              v18 = v28;
              v14 = v49;
              v11 = v50;
              v19 = v47;
            }
          }

          v16 = [v14 countByEnumeratingWithState:&v52 objects:v56 count:16];
        }

        while (v16);
      }

      else
      {
        v18 = 0;
        v17 = 0;
      }

      v48 = v18;

      v28 = v17;
      v4 = v51;
      a3 = v46;
      v6 = v44;
      v5 = v45;
    }

    else
    {
      v48 = 0;
      v28 = 0;
    }

    v33 = [v5 bestLocaleIdentifier];
    v34 = [(CACSpokenCommandItem *)v4 locale];
    if (v34 && (v35 = v34, -[CACSpokenCommandItem locale](v4, "locale"), v36 = objc_claimAutoreleasedReturnValue(), v37 = [v33 isEqualToString:v36], v36, v35, (v37 & 1) != 0))
    {
      v32 = v48;
    }

    else
    {
      v50 = v33;
      v38 = [(CACSpokenCommandItem *)v4 _customCommandStringsWithLocale:v33];
      v49 = v38;
      if ([v38 count])
      {
        v23 = [v38 objectAtIndex:0];
      }

      else
      {
        v23 = 0;
      }

      v39 = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
      v40 = [v23 stringByTrimmingCharactersInSet:v39];
      v41 = [v40 length];

      if (v41)
      {
        v32 = v23;

        v29 = v50;
LABEL_35:

        v28 = v29;
      }

      else
      {
        v32 = v48;
      }

      v33 = v50;
    }

    if (v32 && v28)
    {
      [(CACSpokenCommandItem *)v4 setUntranslatedDisplayString:v32];
      [(CACSpokenCommandItem *)v4 setUntranslatedLocale:v28];
    }
  }

  if (a3)
  {
    *a3 = v4->_untranslatedLocale;
  }

  untranslatedDisplayString = v4->_untranslatedDisplayString;

  return untranslatedDisplayString;
}

- (id)sortString
{
  v3 = [(CACSpokenCommandItem *)self displayString];
  if (![v3 length])
  {
    v4 = [(CACSpokenCommandItem *)self untranslatedDisplayStringAndLocale:0];

    v3 = v4;
  }

  return v3;
}

- (void)setIsCollapsed:(BOOL)a3
{
  v4 = MEMORY[0x277CBEC28];
  if (a3)
  {
    v4 = MEMORY[0x277CBEC38];
  }

  v13 = v4;
  v5 = +[CACPreferences sharedPreferences];
  v6 = v5;
  locale = self->_locale;
  if (locale)
  {
    v8 = locale;
  }

  else
  {
    v8 = [v5 bestLocaleIdentifier];
  }

  v9 = v8;
  v10 = [v6 propertiesForCommandIdentifier:self->super._identifier localeIdentifier:v8];
  v11 = [v10 mutableCopy];

  if (v11)
  {
    [v11 setValue:v13 forKey:@"Collapsed"];
    v12 = +[CACPreferences sharedPreferences];
    [v12 setProperties:v11 forCommandIdentifier:self->super._identifier];
  }
}

- (BOOL)isCollapsed
{
  v3 = +[CACPreferences sharedPreferences];
  v4 = v3;
  locale = self->_locale;
  if (locale)
  {
    v6 = locale;
  }

  else
  {
    v6 = [v3 bestLocaleIdentifier];
  }

  v7 = v6;
  v8 = +[CACPreferences sharedPreferences];
  v9 = [v8 propertiesForCommandIdentifier:self->super._identifier localeIdentifier:v7];

  v10 = [v9 objectForKey:@"Collapsed"];
  v11 = [v10 BOOLValue];

  return v11;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(NSMutableDictionary *)self->_customDictionary allKeys];
  v5 = [v3 stringWithFormat:@"Keys: %@, Dictionary: %@", v4, self->_customDictionary];

  return v5;
}

- (id)copy
{
  v3 = [CACSpokenCommandItem alloc];
  v4 = [(CACSpokenCommandGroup *)self identifier];
  v5 = [(CACSpokenCommandItem *)v3 initWithIdentifier:v4];

  objc_storeStrong((v5 + 48), self->_customDictionary);
  objc_storeStrong((v5 + 56), self->_searchAlternates);
  objc_storeStrong((v5 + 64), self->_locale);
  objc_storeStrong((v5 + 72), self->_untranslatedDisplayString);
  objc_storeStrong((v5 + 80), self->_untranslatedLocale);
  objc_storeStrong((v5 + 88), self->_commandInfo);
  *(v5 + 96) = self->_isEdited;
  v6 = [(CACSpokenCommandItem *)self searchAlternates];
  v7 = [v6 copy];
  [v5 setSearchAlternates:v7];

  v8 = [(CACSpokenCommandItem *)self customScope];
  v9 = [v8 copy];
  [v5 setCustomScope:v9];

  v10 = [(CACSpokenCommandItem *)self customAppName];
  v11 = [v10 copy];
  [v5 setCustomAppName:v11];

  v12 = [(CACSpokenCommandItem *)self customTextToInsert];
  v13 = [v12 copy];
  [v5 setCustomTextToInsert:v13];

  v14 = [(CACSpokenCommandItem *)self customType];
  v15 = [v14 copy];
  [v5 setCustomType:v15];

  v16 = [(CACSpokenCommandItem *)self customPasteBoard];
  v17 = [v16 copy];
  [v5 setCustomPasteBoard:v17];

  v18 = [(CACSpokenCommandItem *)self customShortcutsWorkflowIdentifier];
  v19 = [v18 copy];
  [v5 setCustomShortcutsWorkflowIdentifier:v19];

  v20 = [(CACSpokenCommandItem *)self locale];
  v21 = [v20 copy];
  [v5 setLocale:v21];

  v22 = [(CACSpokenCommandItem *)self untranslatedDisplayString];
  v23 = [v22 copy];
  [v5 setUntranslatedDisplayString:v23];

  v24 = [(CACSpokenCommandItem *)self untranslatedLocale];
  v25 = [v24 copy];
  [v5 setUntranslatedLocale:v25];

  v26 = [(CACSpokenCommandItem *)self customUserActionFlow];
  [v5 setCustomUserActionFlow:v26];

  v27 = [(CACSpokenCommandItem *)self customGesture];
  [v5 setCustomGesture:v27];

  v28 = [(CACSpokenCommandItem *)self commandInfo];
  [v5 setCommandInfo:v28];

  [v5 setIsEdited:{-[CACSpokenCommandItem isEdited](self, "isEdited")}];
  return v5;
}

- (void)_reloadFromProperties:(uint64_t *)a1 .cold.3(uint64_t *a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v3 = 138412290;
  v4 = v2;
  _os_log_error_impl(&dword_26B354000, a2, OS_LOG_TYPE_ERROR, "No Properties for %@", &v3, 0xCu);
}

@end