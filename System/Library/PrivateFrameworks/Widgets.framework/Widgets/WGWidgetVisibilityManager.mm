@interface WGWidgetVisibilityManager
- (BOOL)_updateWidgetVisibilityPreference:(id)a3;
- (BOOL)_updateWidgetVisibilityPreferences;
- (BOOL)isWidgetWithIdentifierVisible:(id)a3;
- (WGWidgetVisibilityDelegate)delegate;
- (WGWidgetVisibilityManager)init;
- (id)_allWidgetTags;
- (id)_widgetTagsForWidgetExtensionInfoDictionary:(id)a3;
- (void)_registerForVisiblityPreferenceChanges;
- (void)_unregisterForVisiblityPreferenceChanges;
- (void)_updateMobileGestaltQuestions;
- (void)_updateWidgetTagsAndIconVisibilityForExtension:(id)a3;
- (void)_updateWidgetTagsAndVisibilityForExtensions:(id)a3;
- (void)_widgetVisibilityChanged;
- (void)_widgetVisibilityPreferencesChanged;
- (void)dealloc;
- (void)setDelegate:(id)a3;
- (void)updateVisibilityForExtensions:(id)a3;
@end

@implementation WGWidgetVisibilityManager

- (WGWidgetVisibilityManager)init
{
  v18.receiver = self;
  v18.super_class = WGWidgetVisibilityManager;
  v2 = [(WGWidgetVisibilityManager *)&v18 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
    widgetTagsByIdentifier = v2->_widgetTagsByIdentifier;
    v2->_widgetTagsByIdentifier = v3;

    v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
    extensionHashByIdentifier = v2->_extensionHashByIdentifier;
    v2->_extensionHashByIdentifier = v5;

    v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
    mobileGestaltAnswerByWidgetTag = v2->_mobileGestaltAnswerByWidgetTag;
    v2->_mobileGestaltAnswerByWidgetTag = v7;

    v2->_mobileGestaltNotificationToken = -1;
    v9 = objc_alloc_init(MEMORY[0x277CBEB58]);
    mobileGestaltQuestions = v2->_mobileGestaltQuestions;
    v2->_mobileGestaltQuestions = v9;

    v11 = objc_alloc_init(MEMORY[0x277CBEB38]);
    visibilityDefaultValueByIdentifier = v2->_visibilityDefaultValueByIdentifier;
    v2->_visibilityDefaultValueByIdentifier = v11;

    v13 = objc_alloc_init(MEMORY[0x277CBEB58]);
    visibilityOverridenIdentifiers = v2->_visibilityOverridenIdentifiers;
    v2->_visibilityOverridenIdentifiers = v13;

    v15 = objc_alloc_init(MEMORY[0x277CBEB38]);
    visibilityPreferenceByIdentifier = v2->_visibilityPreferenceByIdentifier;
    v2->_visibilityPreferenceByIdentifier = v15;

    [(WGWidgetVisibilityManager *)v2 _registerForVisiblityPreferenceChanges];
  }

  return v2;
}

- (void)dealloc
{
  if (self->_mobileGestaltNotificationToken != -1)
  {
    MGCancelNotifications();
  }

  [(WGWidgetVisibilityManager *)self _unregisterForVisiblityPreferenceChanges];
  v3.receiver = self;
  v3.super_class = WGWidgetVisibilityManager;
  [(WGWidgetVisibilityManager *)&v3 dealloc];
}

- (BOOL)isWidgetWithIdentifierVisible:(id)a3
{
  v4 = a3;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 1;
  v5 = [(NSMutableDictionary *)self->_widgetTagsByIdentifier objectForKey:v4];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __59__WGWidgetVisibilityManager_isWidgetWithIdentifierVisible___block_invoke;
  v13[3] = &unk_279ED08B0;
  v13[4] = self;
  v13[5] = &v14;
  [v5 enumerateObjectsUsingBlock:v13];
  if (*(v15 + 24) == 1 && [(NSMutableSet *)self->_visibilityOverridenIdentifiers containsObject:v4])
  {
    v6 = [(NSMutableDictionary *)self->_visibilityPreferenceByIdentifier objectForKey:v4];
    v7 = v6;
    if (v6)
    {
      v8 = [v6 BOOLValue];
      *(v15 + 24) = v8;
    }

    else
    {
      v9 = [(NSMutableDictionary *)self->_visibilityDefaultValueByIdentifier objectForKey:v4];
      v10 = [v9 BOOLValue];
      *(v15 + 24) = v10;
    }
  }

  v11 = *(v15 + 24);

  _Block_object_dispose(&v14, 8);
  return v11;
}

void __59__WGWidgetVisibilityManager_isWidgetWithIdentifierVisible___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v6 = [*(*(a1 + 32) + 24) objectForKey:a2];
  v7 = [v6 BOOLValue];

  if ((v7 & 1) == 0)
  {
    *(*(*(a1 + 40) + 8) + 24) = 0;
    if (a4)
    {
      *a4 = 1;
    }
  }
}

- (void)updateVisibilityForExtensions:(id)a3
{
  [(WGWidgetVisibilityManager *)self _updateWidgetTagsAndVisibilityForExtensions:a3];

  [(WGWidgetVisibilityManager *)self _updateMobileGestaltQuestions];
}

- (void)setDelegate:(id)a3
{
  v4 = a3;
  objc_storeWeak(&self->_delegate, v4);
  v5 = objc_opt_respondsToSelector();

  self->_delegateRespondsToWidgetVisibilityDidChange = v5 & 1;
}

- (id)_widgetTagsForWidgetExtensionInfoDictionary:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [v3 bs_safeObjectForKey:@"SBAppTags" ofType:objc_opt_class()];
  if ([v4 count])
  {
    v5 = [MEMORY[0x277CBEB18] array];
  }

  else
  {
    v5 = 0;
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v13 + 1) + 8 * i);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) != 0 && MGIsQuestionValid())
        {
          [v5 addObject:{v11, v13}];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  return v5;
}

- (id)_allWidgetTags
{
  v15 = *MEMORY[0x277D85DE8];
  if ([(NSMutableDictionary *)self->_widgetTagsByIdentifier count])
  {
    v3 = [MEMORY[0x277CBEB58] set];
    v10 = 0u;
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v4 = [(NSMutableDictionary *)self->_widgetTagsByIdentifier allValues];
    v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v11;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v11 != v7)
          {
            objc_enumerationMutation(v4);
          }

          [v3 addObjectsFromArray:*(*(&v10 + 1) + 8 * i)];
        }

        v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v6);
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)_updateWidgetTagsAndVisibilityForExtensions:(id)a3
{
  v31 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(NSMutableDictionary *)self->_extensionHashByIdentifier allKeys];
  v6 = [v5 mutableCopy];

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  obj = v4;
  v7 = [obj countByEnumeratingWithState:&v25 objects:v30 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v26;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v26 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v25 + 1) + 8 * i);
        v12 = [v11 identifier];
        v13 = [(NSMutableDictionary *)self->_extensionHashByIdentifier objectForKey:v12];
        v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v11, "hash")}];
        if (([v13 isEqual:v14] & 1) == 0)
        {
          [(WGWidgetVisibilityManager *)self _updateWidgetTagsAndIconVisibilityForExtension:v11];
        }

        [(NSMutableDictionary *)self->_extensionHashByIdentifier setObject:v14 forKey:v12];
        [v6 removeObject:v12];
      }

      v8 = [obj countByEnumeratingWithState:&v25 objects:v30 count:16];
    }

    while (v8);
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v15 = v6;
  v16 = [v15 countByEnumeratingWithState:&v21 objects:v29 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v22;
    do
    {
      for (j = 0; j != v17; ++j)
      {
        if (*v22 != v18)
        {
          objc_enumerationMutation(v15);
        }

        [(NSMutableSet *)self->_visibilityOverridenIdentifiers removeObject:*(*(&v21 + 1) + 8 * j)];
      }

      v17 = [v15 countByEnumeratingWithState:&v21 objects:v29 count:16];
    }

    while (v17);
  }

  [(NSMutableDictionary *)self->_widgetTagsByIdentifier removeObjectsForKeys:v15];
  [(NSMutableDictionary *)self->_extensionHashByIdentifier removeObjectsForKeys:v15];
  [(NSMutableDictionary *)self->_visibilityDefaultValueByIdentifier removeObjectsForKeys:v15];
  [(NSMutableDictionary *)self->_visibilityPreferenceByIdentifier removeObjectsForKeys:v15];
}

- (void)_updateWidgetTagsAndIconVisibilityForExtension:(id)a3
{
  v17 = a3;
  v4 = [v17 identifier];
  if ([v4 hasPrefix:@"com.apple."])
  {
    v5 = [v17 infoDictionary];
  }

  else
  {
    v5 = 0;
  }

  v6 = [(WGWidgetVisibilityManager *)self _widgetTagsForWidgetExtensionInfoDictionary:v5];
  if (v6)
  {
    [(NSMutableDictionary *)self->_widgetTagsByIdentifier setObject:v6 forKey:v4];
  }

  v7 = [v5 objectForKey:@"SBIconVisibilitySetByAppPreference"];
  v8 = [v7 BOOLValue];

  if (v8)
  {
    [(NSMutableSet *)self->_visibilityOverridenIdentifiers addObject:v4];
    v9 = [v5 objectForKey:@"SBIconVisibilityDefaultVisible"];
    if (v9)
    {
      [(NSMutableDictionary *)self->_visibilityDefaultValueByIdentifier setObject:v9 forKey:v4];
    }

    else
    {
      v10 = [v5 objectForKey:@"SBIconVisibilityDefaultVisibleInstallTypes"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        if (MGGetBoolAnswer())
        {
          v11 = @"internal";
        }

        else if (MGGetBoolAnswer())
        {
          v11 = @"carrier";
        }

        else
        {
          v11 = @"user";
        }

        v12 = [v10 containsObject:v11];
        visibilityDefaultValueByIdentifier = self->_visibilityDefaultValueByIdentifier;
        v14 = [MEMORY[0x277CCABB0] numberWithBool:v12];
        [(NSMutableDictionary *)visibilityDefaultValueByIdentifier setObject:v14 forKey:v4];
      }
    }

    [(WGWidgetVisibilityManager *)self _updateWidgetVisibilityPreference:v4];
  }

  if (_os_feature_enabled_impl())
  {
    v15 = WGWidgetVisibilityManagerFirstPartyAvocadoBlackList();
    v16 = [v15 containsObject:v4];

    if (v16)
    {
      [(NSMutableSet *)self->_visibilityOverridenIdentifiers addObject:v4];
      [(WGWidgetVisibilityManager *)self _updateWidgetVisibilityPreference:v4];
    }
  }
}

- (BOOL)_updateWidgetVisibilityPreference:(id)a3
{
  v4 = a3;
  v5 = [(NSMutableDictionary *)self->_visibilityPreferenceByIdentifier objectForKey:v4];
  v6 = [v5 BOOLValue];
  keyExistsAndHasValidFormat = 0;
  if (_os_feature_enabled_impl())
  {
    v7 = WGWidgetVisibilityManagerFirstPartyAvocadoBlackList();
    v8 = [v7 containsObject:v4];

    if (v8)
    {
      v9 = 0;
      keyExistsAndHasValidFormat = 1;
LABEL_5:
      visibilityPreferenceByIdentifier = self->_visibilityPreferenceByIdentifier;
      v12 = [MEMORY[0x277CCABB0] numberWithBool:v9];
      [(NSMutableDictionary *)visibilityPreferenceByIdentifier setObject:v12 forKey:v4];

      v10 = keyExistsAndHasValidFormat;
      goto LABEL_6;
    }
  }

  v9 = CFPreferencesGetAppBooleanValue(@"SBIconVisibility", v4, &keyExistsAndHasValidFormat) != 0;
  v10 = keyExistsAndHasValidFormat;
  if (keyExistsAndHasValidFormat)
  {
    goto LABEL_5;
  }

LABEL_6:
  v13 = v10 != (v5 != 0) || v6 != v9;

  return v13;
}

- (BOOL)_updateWidgetVisibilityPreferences
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = self->_visibilityOverridenIdentifiers;
  v4 = [(NSMutableSet *)v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v11;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v6 |= [(WGWidgetVisibilityManager *)self _updateWidgetVisibilityPreference:*(*(&v10 + 1) + 8 * i), v10];
      }

      v5 = [(NSMutableSet *)v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  else
  {
    LOBYTE(v6) = 0;
  }

  return v6 & 1;
}

- (void)_updateMobileGestaltQuestions
{
  v27 = *MEMORY[0x277D85DE8];
  v3 = [(WGWidgetVisibilityManager *)self _allWidgetTags];
  if (([(NSMutableSet *)self->_mobileGestaltQuestions isEqualToSet:v3]& 1) == 0)
  {
    [(NSMutableDictionary *)self->_mobileGestaltAnswerByWidgetTag removeAllObjects];
    [(NSMutableSet *)self->_mobileGestaltQuestions removeAllObjects];
    if (self->_mobileGestaltNotificationToken != -1)
    {
      MGCancelNotifications();
    }

    if ([v3 count])
    {
      [(NSMutableSet *)self->_mobileGestaltQuestions unionSet:v3];
      objc_initWeak(&location, self);
      [(NSMutableSet *)self->_mobileGestaltQuestions allObjects];
      v4 = MEMORY[0x277D85CD0];
      v20 = MEMORY[0x277D85DD0];
      v21 = 3221225472;
      v22 = __58__WGWidgetVisibilityManager__updateMobileGestaltQuestions__block_invoke;
      v23 = &unk_279ED08D8;
      objc_copyWeak(&v24, &location);
      self->_mobileGestaltNotificationToken = MGRegisterForUpdates();

      [v3 allObjects];
      v18 = 0u;
      v19 = 0u;
      v16 = 0u;
      v17 = 0u;
      v5 = MGCopyMultipleAnswers();
      v6 = [v5 countByEnumeratingWithState:&v16 objects:v26 count:16];
      if (v6)
      {
        v7 = *v17;
        do
        {
          for (i = 0; i != v6; ++i)
          {
            if (*v17 != v7)
            {
              objc_enumerationMutation(v5);
            }

            v9 = *(*(&v16 + 1) + 8 * i);
            v10 = [v5 objectForKey:{v9, v16}];
            v11 = v10;
            if (v10)
            {
              v12 = CFGetTypeID(v10);
              v13 = v12 == CFBooleanGetTypeID() && CFBooleanGetValue(v11) != 0;
              mobileGestaltAnswerByWidgetTag = self->_mobileGestaltAnswerByWidgetTag;
              v15 = [MEMORY[0x277CCABB0] numberWithBool:v13];
              [(NSMutableDictionary *)mobileGestaltAnswerByWidgetTag setObject:v15 forKey:v9];
            }
          }

          v6 = [v5 countByEnumeratingWithState:&v16 objects:v26 count:16];
        }

        while (v6);
      }

      objc_destroyWeak(&v24);
      objc_destroyWeak(&location);
    }

    else
    {
      self->_mobileGestaltNotificationToken = -1;
    }
  }
}

void __58__WGWidgetVisibilityManager__updateMobileGestaltQuestions__block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = MGCopyAnswer();
  if (!v4)
  {
    return;
  }

  v5 = v4;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v6 = [WeakRetained _mobileGestaltAnswerByWidgetTag];
  v7 = [v6 objectForKey:a2];
  v8 = [v7 BOOLValue];

  v9 = CFGetTypeID(v5);
  if (v9 == CFBooleanGetTypeID())
  {
    v10 = CFBooleanGetValue(v5) != 0;
    if (v8 == v10)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  if (v8)
  {
    v10 = 0;
LABEL_8:
    v11 = [WeakRetained _mobileGestaltAnswerByWidgetTag];
    v12 = [MEMORY[0x277CCABB0] numberWithBool:v10];
    [v11 setObject:v12 forKey:a2];

    [WeakRetained _widgetVisibilityChanged];
  }

LABEL_9:
  CFRelease(v5);
}

- (void)_registerForVisiblityPreferenceChanges
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();

  CFNotificationCenterAddObserver(DarwinNotifyCenter, self, NCWidgetVisibilityPreferencesChanged, @"com.apple.springboard.appIconVisibilityPreferencesChanged", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
}

- (void)_unregisterForVisiblityPreferenceChanges
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();

  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, @"com.apple.springboard.appIconVisibilityPreferencesChanged", 0);
}

- (void)_widgetVisibilityPreferencesChanged
{
  if ([(WGWidgetVisibilityManager *)self _updateWidgetVisibilityPreferences])
  {

    [(WGWidgetVisibilityManager *)self _widgetVisibilityChanged];
  }
}

- (void)_widgetVisibilityChanged
{
  if (self->_delegateRespondsToWidgetVisibilityDidChange)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained widgetVisibilityDidChange];
  }
}

- (WGWidgetVisibilityDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end