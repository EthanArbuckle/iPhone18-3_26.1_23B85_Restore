@interface CACSpokenCommandItem
+ (id)newCommandItemWithLocale:(id)locale scope:(id)scope;
- (AXReplayableGesture)customGesture;
- (BOOL)conflictsWithItem:(id)item;
- (BOOL)evaluateCommandPredicate:(id)predicate;
- (BOOL)isCollapsed;
- (BOOL)isVisible;
- (CACRecordedUserActionFlow)customUserActionFlow;
- (CACSpokenCommandItem)initWithIdentifier:(id)identifier properties:(id)properties locale:(id)locale;
- (id)_customCommandStringsWithLocale:(id)locale;
- (id)cloneWithoutCommands;
- (id)commandsArray;
- (id)copy;
- (id)description;
- (id)dictionaryForSavingToPreferences;
- (id)displayString;
- (id)primaryBuiltinCommandForLocale:(id)locale;
- (id)sortString;
- (id)untranslatedDisplayStringAndLocale:(id *)locale;
- (id)valueForKey:(id)key locale:(id)locale;
- (void)_reloadFromProperties:(id)properties;
- (void)_saveKey:(id)key toDictionary:(id)dictionary;
- (void)_setCustomCommandStrings:(id)strings withLocale:(id)locale;
- (void)_updateBuiltInCommandsWithLocale:(id)locale;
- (void)removeFromPreferences;
- (void)saveToPreferences;
- (void)setCustomGesture:(id)gesture;
- (void)setCustomUserActionFlow:(id)flow;
- (void)setDisplayString:(id)string;
- (void)setIsCollapsed:(BOOL)collapsed;
- (void)setIsConfirmationRequired:(BOOL)required;
- (void)setIsEnabled:(BOOL)enabled;
- (void)setLocale:(id)locale;
- (void)setValue:(id)value forKey:(id)key locale:(id)locale;
@end

@implementation CACSpokenCommandItem

+ (id)newCommandItemWithLocale:(id)locale scope:(id)scope
{
  scopeCopy = scope;
  localeCopy = locale;
  v7 = +[CACPreferences sharedPreferences];
  if (scopeCopy)
  {
    v8 = scopeCopy;
  }

  else
  {
    v8 = @"com.apple.speech.SystemWideScope";
  }

  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjectsAndKeys:{v8, @"CustomScope", *MEMORY[0x277CBED28], @"Enabled", 0}];

  uniqueCustomCommandIdentifier = [v7 uniqueCustomCommandIdentifier];
  v11 = [objc_alloc(objc_opt_class()) initWithIdentifier:uniqueCustomCommandIdentifier properties:v9 locale:localeCopy];

  [v11 setIsEdited:1];
  return v11;
}

- (CACSpokenCommandItem)initWithIdentifier:(id)identifier properties:(id)properties locale:(id)locale
{
  propertiesCopy = properties;
  localeCopy = locale;
  v15.receiver = self;
  v15.super_class = CACSpokenCommandItem;
  v10 = [(CACSpokenCommandGroup *)&v15 initWithIdentifier:identifier];
  v11 = v10;
  if (v10)
  {
    [(CACSpokenCommandItem *)v10 setLocale:localeCopy];
    v12 = objc_alloc_init(MEMORY[0x277CBEB38]);
    customDictionary = v11->_customDictionary;
    v11->_customDictionary = v12;

    [(CACSpokenCommandItem *)v11 _reloadFromProperties:propertiesCopy];
    v11->_isEdited = 0;
  }

  return v11;
}

- (id)cloneWithoutCommands
{
  v5.receiver = self;
  v5.super_class = CACSpokenCommandItem;
  cloneWithoutCommands = [(CACSpokenCommandGroup *)&v5 cloneWithoutCommands];
  [cloneWithoutCommands setLocale:self->_locale];

  return cloneWithoutCommands;
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
  allKeys = [v7 allKeys];
  v9 = [allKeys countByEnumeratingWithState:&v24 objects:v34 count:16];
  if (v9)
  {
    v10 = v9;
    selfCopy = self;
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
          objc_enumerationMutation(allKeys);
        }

        v13 = *(*(&v24 + 1) + 8 * i);
        v14 = [v7 objectForKey:{v13, v20, selfCopy}];
        v15 = [CACSpokenCommandManager doesEvaluatorKey:v13 matchValue:v14];

        if (!v15)
        {
          v17 = CACLogAccessibility();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
          {
            v18 = *(&selfCopy->super.super.isa + v20);
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

      v10 = [allKeys countByEnumeratingWithState:&v24 objects:v34 count:16];
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

- (BOOL)conflictsWithItem:(id)item
{
  itemCopy = item;
  if (-[CACSpokenCommandGroup isEnabled](self, "isEnabled") && [itemCopy isEnabled])
  {
    commandsArray = [(CACSpokenCommandItem *)self commandsArray];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __42__CACSpokenCommandItem_conflictsWithItem___block_invoke;
    v9[3] = &unk_279CEC690;
    v10 = itemCopy;
    selfCopy = self;
    v6 = [commandsArray indexOfObjectPassingTest:v9];

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

- (BOOL)evaluateCommandPredicate:(id)predicate
{
  v24 = *MEMORY[0x277D85DE8];
  predicateCopy = predicate;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  commandsArray = [(CACSpokenCommandItem *)self commandsArray];
  v6 = [commandsArray countByEnumeratingWithState:&v18 objects:v23 count:16];
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
        objc_enumerationMutation(commandsArray);
      }

      if ([predicateCopy evaluateWithObject:*(*(&v18 + 1) + 8 * v9)])
      {
        goto LABEL_18;
      }

      if (v7 == ++v9)
      {
        v7 = [commandsArray countByEnumeratingWithState:&v18 objects:v23 count:16];
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
  commandsArray = [(CACSpokenCommandItem *)self searchAlternates];
  v10 = [commandsArray countByEnumeratingWithState:&v14 objects:v22 count:16];
  if (v10)
  {
    v11 = *v15;
LABEL_11:
    v12 = 0;
    while (1)
    {
      if (*v15 != v11)
      {
        objc_enumerationMutation(commandsArray);
      }

      if ([predicateCopy evaluateWithObject:*(*(&v14 + 1) + 8 * v12)])
      {
        break;
      }

      if (v10 == ++v12)
      {
        v10 = [commandsArray countByEnumeratingWithState:&v14 objects:v22 count:16];
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

- (void)setIsEnabled:(BOOL)enabled
{
  self->_isEdited = 1;
  v3.receiver = self;
  v3.super_class = CACSpokenCommandItem;
  [(CACSpokenCommandGroup *)&v3 setIsEnabled:enabled];
}

- (void)setIsConfirmationRequired:(BOOL)required
{
  self->_isEdited = 1;
  v3.receiver = self;
  v3.super_class = CACSpokenCommandItem;
  [(CACSpokenCommandGroup *)&v3 setIsConfirmationRequired:required];
}

- (void)setCustomGesture:(id)gesture
{
  gestureCopy = gesture;
  self->_isEdited = 1;
  if (gestureCopy)
  {
    v8 = 0;
    v5 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:gestureCopy requiringSecureCoding:1 error:&v8];
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

- (void)setCustomUserActionFlow:(id)flow
{
  flowCopy = flow;
  self->_isEdited = 1;
  if (flowCopy)
  {
    v8 = 0;
    v5 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:flowCopy requiringSecureCoding:1 error:&v8];
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

- (void)_setCustomCommandStrings:(id)strings withLocale:(id)locale
{
  localeCopy = locale;
  self->_isEdited = 1;
  customDictionary = self->_customDictionary;
  stringsCopy = strings;
  dictionary = [(NSMutableDictionary *)customDictionary objectForKey:@"CustomCommands"];
  if (!dictionary)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    [(NSMutableDictionary *)self->_customDictionary setObject:dictionary forKey:@"CustomCommands"];
  }

  v9 = [CACLocaleUtilities normalizedLocaleIdentifier:localeCopy];
  [dictionary setValue:stringsCopy forKey:v9];

  [(CACSpokenCommandGroup *)self setCommandsArray:0];
  [(CACSpokenCommandItem *)self setDisplayString:0];
  [(CACSpokenCommandItem *)self setUntranslatedDisplayString:0];
}

- (id)_customCommandStringsWithLocale:(id)locale
{
  customDictionary = self->_customDictionary;
  localeCopy = locale;
  v5 = [(NSMutableDictionary *)customDictionary objectForKey:@"CustomCommands"];
  v6 = [CACLocaleUtilities normalizedLocaleIdentifier:localeCopy];

  v7 = [v5 objectForKey:v6];

  return v7;
}

- (id)primaryBuiltinCommandForLocale:(id)locale
{
  localeCopy = locale;
  v5 = +[CACPreferences sharedPreferences];
  v6 = [v5 propertiesForCommandIdentifier:self->super._identifier localeIdentifier:localeCopy];

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

- (void)_updateBuiltInCommandsWithLocale:(id)locale
{
  localeCopy = locale;
  v23 = +[CACPreferences sharedPreferences];
  v4 = [v23 propertiesForCommandIdentifier:self->super._identifier localeIdentifier:localeCopy];
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
      v11 = [v23 builtInCommandsStringsTableForLocaleIdentifier:localeCopy];
      v12 = MEMORY[0x277CCACA8];
      lowercaseString = [(__CFString *)v10 lowercaseString];
      v14 = [v12 stringWithFormat:@"CommandSynonym.%@", lowercaseString];
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

- (void)_reloadFromProperties:(id)properties
{
  propertiesCopy = properties;
  if (self->super._identifier)
  {
    v5 = +[CACPreferences sharedPreferences];
    v6 = v5;
    locale = self->_locale;
    if (locale)
    {
      bestLocaleIdentifier = locale;
    }

    else
    {
      bestLocaleIdentifier = [v5 bestLocaleIdentifier];
    }

    v9 = bestLocaleIdentifier;
    v10 = [(NSString *)self->super._identifier length];
    if (propertiesCopy || !v10 || ([v6 propertiesForCommandIdentifier:self->super._identifier localeIdentifier:v9], (propertiesCopy = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v11 = [propertiesCopy objectForKey:@"Enabled"];
      -[CACSpokenCommandItem setIsEnabled:](self, "setIsEnabled:", [v11 BOOLValue]);

      v12 = [propertiesCopy objectForKey:@"ConfirmationRequired"];
      -[CACSpokenCommandItem setIsConfirmationRequired:](self, "setIsConfirmationRequired:", [v12 BOOLValue]);

      if (self->super._isCustom)
      {
        v13 = [propertiesCopy objectForKey:@"CustomCommands"];
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
        v16 = [propertiesCopy objectForKey:@"CustomScope"];
        [(CACSpokenCommandItem *)self setCustomScope:v16];

        v17 = [propertiesCopy objectForKey:@"CustomType"];
        [(CACSpokenCommandItem *)self setCustomType:v17];

        v18 = [propertiesCopy objectForKey:@"CustomGesture"];
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
        v23 = [propertiesCopy objectForKey:@"CustomTextToInsert"];
        [(CACSpokenCommandItem *)self setCustomTextToInsert:v23];

        v24 = [propertiesCopy valueForKey:@"CustomUserActionFlow"];
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
        v28 = [propertiesCopy objectForKey:@"CustomAppName"];
        [(CACSpokenCommandItem *)self setCustomAppName:v28];

        v29 = [propertiesCopy objectForKey:@"CustomPasteBoard"];
        [(CACSpokenCommandItem *)self setCustomPasteBoard:v29];

        v30 = [propertiesCopy objectForKey:@"CustomShortcutsWorkflow"];
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

      propertiesCopy = 0;
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

- (void)_saveKey:(id)key toDictionary:(id)dictionary
{
  keyCopy = key;
  dictionaryCopy = dictionary;
  v7 = [(NSMutableDictionary *)self->_customDictionary objectForKey:keyCopy];
  if (v7)
  {
    [dictionaryCopy setObject:v7 forKey:keyCopy];
  }

  else
  {
    null = [MEMORY[0x277CBEB68] null];
    [dictionaryCopy setObject:null forKey:keyCopy];
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
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    v4 = [MEMORY[0x277CCABB0] numberWithBool:{-[CACSpokenCommandGroup isEnabled](self, "isEnabled")}];
    [dictionary setObject:v4 forKey:@"Enabled"];

    v5 = [MEMORY[0x277CCABB0] numberWithBool:{-[CACSpokenCommandGroup isConfirmationRequired](self, "isConfirmationRequired")}];
    [dictionary setObject:v5 forKey:@"ConfirmationRequired"];

    if ([(CACSpokenCommandGroup *)self isCustom])
    {
      [dictionary addEntriesFromDictionary:self->_customDictionary];
      v10[0] = MEMORY[0x277D85DD0];
      v10[1] = 3221225472;
      v10[2] = __56__CACSpokenCommandItem_dictionaryForSavingToPreferences__block_invoke;
      v10[3] = &unk_279CEB8F0;
      dictionary = dictionary;
      v11 = dictionary;
      [&unk_287BF0100 enumerateKeysAndObjectsUsingBlock:v10];
      customType = [(CACSpokenCommandItem *)self customType];

      if (customType)
      {
        customType2 = [(CACSpokenCommandItem *)self customType];
        v8 = [&unk_287BF0100 objectForKeyedSubscript:customType2];

        if (v8)
        {
          [(CACSpokenCommandItem *)self _saveKey:v8 toDictionary:dictionary];
        }
      }
    }
  }

  else
  {
    dictionary = 0;
  }

  return dictionary;
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
  dictionaryForSavingToPreferences = [(CACSpokenCommandItem *)self dictionaryForSavingToPreferences];
  if (dictionaryForSavingToPreferences)
  {
    v5 = dictionaryForSavingToPreferences;
    v4 = +[CACPreferences sharedPreferences];
    [v4 setProperties:v5 forCommandIdentifier:self->super._identifier];

    dictionaryForSavingToPreferences = v5;
    self->_isEdited = 0;
  }
}

- (void)setValue:(id)value forKey:(id)key locale:(id)locale
{
  keyCopy = key;
  localeCopy = locale;
  valueCopy = value;
  if ([keyCopy isEqualToString:@"CustomCommands"])
  {
    [(CACSpokenCommandItem *)self _setCustomCommandStrings:valueCopy withLocale:localeCopy];
  }

  else
  {
    [(CACSpokenCommandItem *)self setValue:valueCopy forKey:keyCopy];
  }
}

- (id)valueForKey:(id)key locale:(id)locale
{
  keyCopy = key;
  localeCopy = locale;
  if ([keyCopy isEqualToString:@"CustomCommands"])
  {
    [(CACSpokenCommandItem *)self _customCommandStringsWithLocale:localeCopy];
  }

  else
  {
    [(CACSpokenCommandItem *)self valueForKey:keyCopy];
  }
  v8 = ;

  return v8;
}

- (void)setLocale:(id)locale
{
  objc_storeStrong(&self->_locale, locale);
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
      bestLocaleIdentifier = [v4 mutableCopy];

      if (bestLocaleIdentifier)
      {
        [(CACSpokenCommandGroup *)self setCommandsArray:bestLocaleIdentifier];
      }

      else
      {
        array = [MEMORY[0x277CBEB18] array];
        [(CACSpokenCommandGroup *)self setCommandsArray:array];
      }
    }

    else
    {
      if (locale)
      {
        bestLocaleIdentifier = locale;
      }

      else
      {
        v7 = +[CACPreferences sharedPreferences];
        bestLocaleIdentifier = [v7 bestLocaleIdentifier];
      }

      [(CACSpokenCommandItem *)self _updateBuiltInCommandsWithLocale:bestLocaleIdentifier];
    }
  }

  commandsArray = self->super._commandsArray;

  return commandsArray;
}

- (void)setDisplayString:(id)string
{
  self->_isEdited = 1;
  v3.receiver = self;
  v3.super_class = CACSpokenCommandItem;
  [(CACSpokenCommandGroup *)&v3 setDisplayString:string];
}

- (id)displayString
{
  displayString = self->super._displayString;
  if (!displayString)
  {
    commandsArray = [(CACSpokenCommandItem *)self commandsArray];
    if ([commandsArray count])
    {
      v5 = [commandsArray objectAtIndex:0];
      whitespaceAndNewlineCharacterSet = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
      v7 = [v5 stringByTrimmingCharactersInSet:whitespaceAndNewlineCharacterSet];

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

- (id)untranslatedDisplayStringAndLocale:(id *)locale
{
  selfCopy = self;
  v57 = *MEMORY[0x277D85DE8];
  if (!self->_untranslatedDisplayString)
  {
    v5 = +[CACPreferences sharedPreferences];
    userSelectableLocaleIdentifiers = [v5 userSelectableLocaleIdentifiers];
    if (userSelectableLocaleIdentifiers && ([(CACSpokenCommandItem *)selfCopy locale], v7 = objc_claimAutoreleasedReturnValue(), v7, v7))
    {
      localeCopy = locale;
      v8 = MEMORY[0x277CBEB18];
      v9 = [(NSMutableDictionary *)selfCopy->_customDictionary objectForKey:@"CustomCommands"];
      allKeys = [v9 allKeys];
      v11 = [v8 arrayWithArray:allKeys];

      locale = [(CACSpokenCommandItem *)selfCopy locale];
      v13 = [v11 indexOfObject:locale];

      if (v13 != 0x7FFFFFFFFFFFFFFFLL)
      {
        [v11 removeObjectAtIndex:v13];
      }

      v44 = userSelectableLocaleIdentifiers;
      v45 = v5;
      v51 = selfCopy;
      v54 = 0u;
      v55 = 0u;
      v52 = 0u;
      v53 = 0u;
      v14 = userSelectableLocaleIdentifiers;
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

              whitespaceAndNewlineCharacterSet = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
              v26 = [v24 stringByTrimmingCharactersInSet:whitespaceAndNewlineCharacterSet];
              v27 = [v26 length];

              if (v27)
              {
                v28 = v24;

                v29 = v21;
                locale2 = [(CACSpokenCommandItem *)v51 locale];
                v31 = [CACLocaleUtilities isSameLangaugeFromLocaleIdentifier:v29 secondLocaleIdentifier:locale2];

                if (v31)
                {
                  v32 = v28;
                  selfCopy = v51;
                  locale = localeCopy;
                  userSelectableLocaleIdentifiers = v44;
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
      selfCopy = v51;
      locale = localeCopy;
      userSelectableLocaleIdentifiers = v44;
      v5 = v45;
    }

    else
    {
      v48 = 0;
      v28 = 0;
    }

    bestLocaleIdentifier = [v5 bestLocaleIdentifier];
    locale3 = [(CACSpokenCommandItem *)selfCopy locale];
    if (locale3 && (v35 = locale3, -[CACSpokenCommandItem locale](selfCopy, "locale"), v36 = objc_claimAutoreleasedReturnValue(), v37 = [bestLocaleIdentifier isEqualToString:v36], v36, v35, (v37 & 1) != 0))
    {
      v32 = v48;
    }

    else
    {
      v50 = bestLocaleIdentifier;
      v38 = [(CACSpokenCommandItem *)selfCopy _customCommandStringsWithLocale:bestLocaleIdentifier];
      v49 = v38;
      if ([v38 count])
      {
        v23 = [v38 objectAtIndex:0];
      }

      else
      {
        v23 = 0;
      }

      whitespaceAndNewlineCharacterSet2 = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
      v40 = [v23 stringByTrimmingCharactersInSet:whitespaceAndNewlineCharacterSet2];
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

      bestLocaleIdentifier = v50;
    }

    if (v32 && v28)
    {
      [(CACSpokenCommandItem *)selfCopy setUntranslatedDisplayString:v32];
      [(CACSpokenCommandItem *)selfCopy setUntranslatedLocale:v28];
    }
  }

  if (locale)
  {
    *locale = selfCopy->_untranslatedLocale;
  }

  untranslatedDisplayString = selfCopy->_untranslatedDisplayString;

  return untranslatedDisplayString;
}

- (id)sortString
{
  displayString = [(CACSpokenCommandItem *)self displayString];
  if (![displayString length])
  {
    v4 = [(CACSpokenCommandItem *)self untranslatedDisplayStringAndLocale:0];

    displayString = v4;
  }

  return displayString;
}

- (void)setIsCollapsed:(BOOL)collapsed
{
  v4 = MEMORY[0x277CBEC28];
  if (collapsed)
  {
    v4 = MEMORY[0x277CBEC38];
  }

  v13 = v4;
  v5 = +[CACPreferences sharedPreferences];
  v6 = v5;
  locale = self->_locale;
  if (locale)
  {
    bestLocaleIdentifier = locale;
  }

  else
  {
    bestLocaleIdentifier = [v5 bestLocaleIdentifier];
  }

  v9 = bestLocaleIdentifier;
  v10 = [v6 propertiesForCommandIdentifier:self->super._identifier localeIdentifier:bestLocaleIdentifier];
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
    bestLocaleIdentifier = locale;
  }

  else
  {
    bestLocaleIdentifier = [v3 bestLocaleIdentifier];
  }

  v7 = bestLocaleIdentifier;
  v8 = +[CACPreferences sharedPreferences];
  v9 = [v8 propertiesForCommandIdentifier:self->super._identifier localeIdentifier:v7];

  v10 = [v9 objectForKey:@"Collapsed"];
  bOOLValue = [v10 BOOLValue];

  return bOOLValue;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  allKeys = [(NSMutableDictionary *)self->_customDictionary allKeys];
  v5 = [v3 stringWithFormat:@"Keys: %@, Dictionary: %@", allKeys, self->_customDictionary];

  return v5;
}

- (id)copy
{
  v3 = [CACSpokenCommandItem alloc];
  identifier = [(CACSpokenCommandGroup *)self identifier];
  v5 = [(CACSpokenCommandItem *)v3 initWithIdentifier:identifier];

  objc_storeStrong((v5 + 48), self->_customDictionary);
  objc_storeStrong((v5 + 56), self->_searchAlternates);
  objc_storeStrong((v5 + 64), self->_locale);
  objc_storeStrong((v5 + 72), self->_untranslatedDisplayString);
  objc_storeStrong((v5 + 80), self->_untranslatedLocale);
  objc_storeStrong((v5 + 88), self->_commandInfo);
  *(v5 + 96) = self->_isEdited;
  searchAlternates = [(CACSpokenCommandItem *)self searchAlternates];
  v7 = [searchAlternates copy];
  [v5 setSearchAlternates:v7];

  customScope = [(CACSpokenCommandItem *)self customScope];
  v9 = [customScope copy];
  [v5 setCustomScope:v9];

  customAppName = [(CACSpokenCommandItem *)self customAppName];
  v11 = [customAppName copy];
  [v5 setCustomAppName:v11];

  customTextToInsert = [(CACSpokenCommandItem *)self customTextToInsert];
  v13 = [customTextToInsert copy];
  [v5 setCustomTextToInsert:v13];

  customType = [(CACSpokenCommandItem *)self customType];
  v15 = [customType copy];
  [v5 setCustomType:v15];

  customPasteBoard = [(CACSpokenCommandItem *)self customPasteBoard];
  v17 = [customPasteBoard copy];
  [v5 setCustomPasteBoard:v17];

  customShortcutsWorkflowIdentifier = [(CACSpokenCommandItem *)self customShortcutsWorkflowIdentifier];
  v19 = [customShortcutsWorkflowIdentifier copy];
  [v5 setCustomShortcutsWorkflowIdentifier:v19];

  locale = [(CACSpokenCommandItem *)self locale];
  v21 = [locale copy];
  [v5 setLocale:v21];

  untranslatedDisplayString = [(CACSpokenCommandItem *)self untranslatedDisplayString];
  v23 = [untranslatedDisplayString copy];
  [v5 setUntranslatedDisplayString:v23];

  untranslatedLocale = [(CACSpokenCommandItem *)self untranslatedLocale];
  v25 = [untranslatedLocale copy];
  [v5 setUntranslatedLocale:v25];

  customUserActionFlow = [(CACSpokenCommandItem *)self customUserActionFlow];
  [v5 setCustomUserActionFlow:customUserActionFlow];

  customGesture = [(CACSpokenCommandItem *)self customGesture];
  [v5 setCustomGesture:customGesture];

  commandInfo = [(CACSpokenCommandItem *)self commandInfo];
  [v5 setCommandInfo:commandInfo];

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