@interface VOSCommandManager
- (BOOL)_validateUserProfileDiscrepancies:(id)a3;
- (BOOL)commandHasAnyBindings:(id)a3 withResolver:(id)a4;
- (BOOL)commandHasModifiedBindingsWhenZoomEnabled:(id)a3 withResolver:(id)a4;
- (NSString)debugDescription;
- (VOSCommandManager)initWithSystemProfile;
- (id)addGesture:(id)a3 toCommand:(id)a4 withResolver:(id)a5;
- (id)addKeyChord:(id)a3 toCommand:(id)a4 withResolver:(id)a5;
- (id)allCommandsWithResolver:(id)a3;
- (id)allShortcutBindingsWithResolver:(id)a3;
- (id)allSiriShortcutCommandsWithResolver:(id)a3;
- (id)availableSiriShortcuts:(id)a3;
- (id)commandForKeyChord:(id)a3 withResolver:(id)a4;
- (id)commandForTouchGesture:(id)a3 withResolver:(id)a4;
- (id)gestureBindingsForCommand:(id)a3 withResolver:(id)a4;
- (id)initPreferringUserProfile;
- (id)initPreferringUserProfileWithoutShortcuts;
- (id)removeGesture:(id)a3 fromCommand:(id)a4 withResolver:(id)a5;
- (id)removeKeyChord:(id)a3 fromCommand:(id)a4 withResolver:(id)a5;
- (id)shortcutBindingsForCommand:(id)a3 withResolver:(id)a4;
- (id)systemProfile;
- (id)userPresentableAllShortcutBindingsWithResolver:(id)a3;
- (id)validateCanAddGesture:(id)a3 toCommand:(id)a4 withResolver:(id)a5;
- (id)validateCanAddKeyChord:(id)a3 toCommand:(id)a4 withResolver:(id)a5;
- (id)validateCanRemoveGesture:(id)a3 fromCommand:(id)a4 withResolver:(id)a5;
- (id)validateCanRemoveKeyChord:(id)a3 fromCommand:(id)a4 withResolver:(id)a5;
- (unint64_t)availabilityForCommand:(id)a3 withResolver:(id)a4;
- (unint64_t)availabilityForGesture:(id)a3 withResolver:(id)a4;
- (unint64_t)availabilityForShortcut:(id)a3 withResolver:(id)a4;
- (void)_commonInit;
- (void)_commonUserProfileInit;
- (void)_loadSystemProfile;
- (void)batchUpdateActiveProfile:(id)a3 saveIfSuccessful:(BOOL)a4 completion:(id)a5;
- (void)dealloc;
- (void)reloadPreferringUserProfile;
- (void)reloadWithSystemProfile;
- (void)restoreDefaultProfile;
- (void)saveAsUserProfile;
@end

@implementation VOSCommandManager

- (VOSCommandManager)initWithSystemProfile
{
  v14.receiver = self;
  v14.super_class = VOSCommandManager;
  v2 = [(VOSCommandManager *)&v14 init];
  v3 = v2;
  if (v2)
  {
    [(VOSCommandManager *)v2 setLoadShortcuts:1];
    [(VOSCommandManager *)v3 _commonInit];
    objc_initWeak(&location, v3);
    v4 = [MEMORY[0x277CE7E38] sharedManager];
    v8 = MEMORY[0x277D85DD0];
    v9 = 3221225472;
    v10 = __42__VOSCommandManager_initWithSystemProfile__block_invoke;
    v11 = &unk_2784F3428;
    objc_copyWeak(&v12, &location);
    v5 = [v4 registerShortcutsDidChangeBlock:&v8];
    siriShortCutToken = v3->_siriShortCutToken;
    v3->_siriShortCutToken = v5;

    [(VOSCommandManager *)v3 reloadWithSystemProfile:v8];
    objc_destroyWeak(&v12);
    objc_destroyWeak(&location);
  }

  return v3;
}

void __42__VOSCommandManager_initWithSystemProfile__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained reloadWithSystemProfile];
}

- (id)initPreferringUserProfileWithoutShortcuts
{
  v5.receiver = self;
  v5.super_class = VOSCommandManager;
  v2 = [(VOSCommandManager *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(VOSCommandManager *)v2 setLoadShortcuts:0];
    [(VOSCommandManager *)v3 _commonInit];
    [(VOSCommandManager *)v3 _commonUserProfileInit];
  }

  return v3;
}

- (id)initPreferringUserProfile
{
  v5.receiver = self;
  v5.super_class = VOSCommandManager;
  v2 = [(VOSCommandManager *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(VOSCommandManager *)v2 setLoadShortcuts:1];
    [(VOSCommandManager *)v3 _commonInit];
    [(VOSCommandManager *)v3 _commonUserProfileInit];
  }

  return v3;
}

- (void)_commonUserProfileInit
{
  [(VOSCommandManager *)self reloadPreferringUserProfile];
  if ([(VOSCommandManager *)self activeProfileIsUserProfile])
  {
    if ([(VOSCommandManager *)self _validateUserProfileDiscrepancies:self->_activeProfile])
    {
      AXPerformBlockOnMainThreadAfterDelay();
    }
  }
}

- (void)_commonInit
{
  v3 = dispatch_queue_create("VOSCommandManager", 0);
  queue = self->_queue;
  self->_queue = v3;

  if ([(VOSCommandManager *)self loadShortcuts])
  {
    objc_initWeak(&location, self);
    v5 = [MEMORY[0x277CE7E38] sharedManager];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __32__VOSCommandManager__commonInit__block_invoke;
    v8[3] = &unk_2784F3428;
    objc_copyWeak(&v9, &location);
    v6 = [v5 registerShortcutsDidChangeBlock:v8];
    siriShortCutToken = self->_siriShortCutToken;
    self->_siriShortCutToken = v6;

    objc_destroyWeak(&v9);
    objc_destroyWeak(&location);
  }
}

void __32__VOSCommandManager__commonInit__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained reloadPreferringUserProfile];
}

- (NSString)debugDescription
{
  if ([(VOSCommandManager *)self loadShortcuts])
  {
    v3 = [MEMORY[0x277CE7E38] sharedManager];
    v4 = [v3 shortcuts];
  }

  else
  {
    v4 = 0;
  }

  v5 = MEMORY[0x277CCACA8];
  v6 = [(VOSCommandProfile *)self->_activeProfile debugDescription];
  v7 = [v5 stringWithFormat:@"VOSCommadManager:<%p>.\nProfile: %@\nDiscovered Shortcuts: %@", self, v6, v4];

  return v7;
}

- (void)reloadWithSystemProfile
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __44__VOSCommandManager_reloadWithSystemProfile__block_invoke;
  block[3] = &unk_2784F3450;
  block[4] = self;
  dispatch_sync(queue, block);
}

- (void)reloadPreferringUserProfile
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_223C70000, a2, OS_LOG_TYPE_ERROR, "Could not load user command profile: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

uint64_t __48__VOSCommandManager_reloadPreferringUserProfile__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 16);
  *(v2 + 16) = 0;

  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  if (v5)
  {
    objc_storeStrong(v4 + 2, *(a1 + 40));
    [*(*(a1 + 32) + 16) setDelegate:?];
  }

  else
  {
    [v4 _loadSystemProfile];
  }

  v6 = *(a1 + 32);

  return [v6 setActiveProfileIsUserProfile:v5 != 0];
}

- (void)dealloc
{
  if ([(VOSCommandManager *)self loadShortcuts])
  {
    v3 = [MEMORY[0x277CE7E38] sharedManager];
    [v3 unregisterShortcutsDidChangeBlock:self->_siriShortCutToken];
  }

  v4.receiver = self;
  v4.super_class = VOSCommandManager;
  [(VOSCommandManager *)&v4 dealloc];
}

- (BOOL)_validateUserProfileDiscrepancies:(id)a3
{
  v37 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = +[VOSCommandResolver resolverForCurrentHost];
  v6 = [(VOSCommandManager *)self systemProfile];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  obj = +[VOSGesture allGestures];
  v7 = [obj countByEnumeratingWithState:&v28 objects:v36 count:16];
  if (!v7)
  {
    v10 = 0;
    goto LABEL_27;
  }

  v9 = v7;
  v10 = 0;
  v11 = *v29;
  *&v8 = 138412546;
  v26 = v8;
  do
  {
    v12 = 0;
    do
    {
      if (*v29 != v11)
      {
        objc_enumerationMutation(obj);
      }

      v13 = *(*(&v28 + 1) + 8 * v12);
      if ([v6 availabilityForGesture:v13 withResolver:{v5, v26}] != 1)
      {
        if ([v6 availabilityForGesture:v13 withResolver:v5])
        {
          goto LABEL_20;
        }

        v14 = [v4 commandForTouchGesture:v13 withResolver:v5];
        v20 = [v6 commandForTouchGesture:v13 withResolver:v5];
        v15 = v20;
        if (v14)
        {
          v21 = 1;
        }

        else
        {
          v21 = v20 == 0;
        }

        if (!v21)
        {
          v22 = [v4 addGesture:v13 toCommand:v20 withResolver:v5];
          v17 = VOTLogCommon();
          if (!os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_17;
          }

          *buf = v26;
          v33 = v13;
          v34 = 2112;
          v35 = v15;
          v18 = v17;
          v19 = "Found new VO default command that didn't make it into the default set: %@ > %@";
LABEL_23:
          _os_log_error_impl(&dword_223C70000, v18, OS_LOG_TYPE_ERROR, v19, buf, 0x16u);
LABEL_17:

          v10 = 1;
        }

LABEL_18:

        goto LABEL_19;
      }

      v14 = [v4 commandForTouchGesture:v13 withResolver:v5];
      if (!v14)
      {
        v15 = [v6 commandForTouchGesture:v13 withResolver:v5];
        if (v15)
        {
          v16 = [v4 addGesture:v13 toCommand:v15 withResolver:v5];
          v17 = VOTLogCommon();
          if (!os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_17;
          }

          *buf = v26;
          v33 = v13;
          v34 = 2112;
          v35 = v15;
          v18 = v17;
          v19 = "Found VO hardwired gesture that was missing command: %@ > %@";
          goto LABEL_23;
        }

        goto LABEL_18;
      }

LABEL_19:

LABEL_20:
      ++v12;
    }

    while (v9 != v12);
    v23 = [obj countByEnumeratingWithState:&v28 objects:v36 count:16];
    v9 = v23;
  }

  while (v23);
LABEL_27:

  v24 = *MEMORY[0x277D85DE8];
  return v10 & 1;
}

- (void)restoreDefaultProfile
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __42__VOSCommandManager_restoreDefaultProfile__block_invoke;
  block[3] = &unk_2784F3450;
  block[4] = self;
  dispatch_sync(queue, block);
  v3 = [MEMORY[0x277CE7E20] sharedInstance];
  [v3 setVoiceOverCustomCommandProfile:0];
}

- (void)saveAsUserProfile
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = *(*a1 + 40);
  v4 = 138412290;
  v5 = v2;
  _os_log_error_impl(&dword_223C70000, a2, OS_LOG_TYPE_ERROR, "Failed to archive VOSCommandProfile. error: %@", &v4, 0xCu);
  v3 = *MEMORY[0x277D85DE8];
}

void __38__VOSCommandManager_saveAsUserProfile__block_invoke(void *a1)
{
  v2 = *(a1[4] + 16);
  v3 = *(a1[6] + 8);
  obj = *(v3 + 40);
  v4 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v2 requiringSecureCoding:1 error:&obj];
  objc_storeStrong((v3 + 40), obj);
  v5 = *(a1[5] + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

- (void)batchUpdateActiveProfile:(id)a3 saveIfSuccessful:(BOOL)a4 completion:(id)a5
{
  v5 = a4;
  v10 = a5;
  v8 = (*(a3 + 2))(a3, self);
  if (v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = !v5;
  }

  if (!v9)
  {
    [(VOSCommandManager *)self saveAsUserProfile];
  }

  if (v10)
  {
    v10[2](v10, v8);
  }
}

- (id)availableSiriShortcuts:(id)a3
{
  v3 = [MEMORY[0x277CE7E38] sharedManager];
  v4 = [v3 shortcuts];

  return v4;
}

- (id)addGesture:(id)a3 toCommand:(id)a4 withResolver:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy_;
  v26 = __Block_byref_object_dispose_;
  v27 = 0;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __55__VOSCommandManager_addGesture_toCommand_withResolver___block_invoke;
  block[3] = &unk_2784F34C8;
  v20 = v10;
  v21 = &v22;
  block[4] = self;
  v18 = v8;
  v19 = v9;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  dispatch_sync(queue, block);
  v15 = v23[5];

  _Block_object_dispose(&v22, 8);

  return v15;
}

uint64_t __55__VOSCommandManager_addGesture_toCommand_withResolver___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 16) addGesture:a1[5] toCommand:a1[6] withResolver:a1[7]];
  v3 = *(a1[8] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

- (id)removeGesture:(id)a3 fromCommand:(id)a4 withResolver:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy_;
  v26 = __Block_byref_object_dispose_;
  v27 = 0;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __60__VOSCommandManager_removeGesture_fromCommand_withResolver___block_invoke;
  block[3] = &unk_2784F34C8;
  v20 = v10;
  v21 = &v22;
  block[4] = self;
  v18 = v8;
  v19 = v9;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  dispatch_sync(queue, block);
  v15 = v23[5];

  _Block_object_dispose(&v22, 8);

  return v15;
}

uint64_t __60__VOSCommandManager_removeGesture_fromCommand_withResolver___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 16) removeGesture:a1[5] fromCommand:a1[6] withResolver:a1[7]];
  v3 = *(a1[8] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

- (id)addKeyChord:(id)a3 toCommand:(id)a4 withResolver:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy_;
  v26 = __Block_byref_object_dispose_;
  v27 = 0;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __56__VOSCommandManager_addKeyChord_toCommand_withResolver___block_invoke;
  block[3] = &unk_2784F34C8;
  v20 = v10;
  v21 = &v22;
  block[4] = self;
  v18 = v8;
  v19 = v9;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  dispatch_sync(queue, block);
  v15 = v23[5];

  _Block_object_dispose(&v22, 8);

  return v15;
}

uint64_t __56__VOSCommandManager_addKeyChord_toCommand_withResolver___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 16) addKeyChord:a1[5] toCommand:a1[6] withResolver:a1[7]];
  v3 = *(a1[8] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

- (id)removeKeyChord:(id)a3 fromCommand:(id)a4 withResolver:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy_;
  v26 = __Block_byref_object_dispose_;
  v27 = 0;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __61__VOSCommandManager_removeKeyChord_fromCommand_withResolver___block_invoke;
  block[3] = &unk_2784F34C8;
  v20 = v10;
  v21 = &v22;
  block[4] = self;
  v18 = v8;
  v19 = v9;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  dispatch_sync(queue, block);
  v15 = v23[5];

  _Block_object_dispose(&v22, 8);

  return v15;
}

uint64_t __61__VOSCommandManager_removeKeyChord_fromCommand_withResolver___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 16) removeKeyChord:a1[5] fromCommand:a1[6] withResolver:a1[7]];
  v3 = *(a1[8] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

- (id)validateCanAddGesture:(id)a3 toCommand:(id)a4 withResolver:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy_;
  v26 = __Block_byref_object_dispose_;
  v27 = 0;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __66__VOSCommandManager_validateCanAddGesture_toCommand_withResolver___block_invoke;
  block[3] = &unk_2784F34C8;
  v20 = v10;
  v21 = &v22;
  block[4] = self;
  v18 = v8;
  v19 = v9;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  dispatch_sync(queue, block);
  v15 = v23[5];

  _Block_object_dispose(&v22, 8);

  return v15;
}

uint64_t __66__VOSCommandManager_validateCanAddGesture_toCommand_withResolver___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 16) validateCanAddGesture:a1[5] toCommand:a1[6] withResolver:a1[7]];
  v3 = *(a1[8] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

- (id)validateCanRemoveGesture:(id)a3 fromCommand:(id)a4 withResolver:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy_;
  v26 = __Block_byref_object_dispose_;
  v27 = 0;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __71__VOSCommandManager_validateCanRemoveGesture_fromCommand_withResolver___block_invoke;
  block[3] = &unk_2784F34C8;
  v20 = v10;
  v21 = &v22;
  block[4] = self;
  v18 = v8;
  v19 = v9;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  dispatch_sync(queue, block);
  v15 = v23[5];

  _Block_object_dispose(&v22, 8);

  return v15;
}

uint64_t __71__VOSCommandManager_validateCanRemoveGesture_fromCommand_withResolver___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 16) validateCanRemoveGesture:a1[5] fromCommand:a1[6] withResolver:a1[7]];
  v3 = *(a1[8] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

- (id)validateCanAddKeyChord:(id)a3 toCommand:(id)a4 withResolver:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy_;
  v26 = __Block_byref_object_dispose_;
  v27 = 0;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __67__VOSCommandManager_validateCanAddKeyChord_toCommand_withResolver___block_invoke;
  block[3] = &unk_2784F34C8;
  v20 = v10;
  v21 = &v22;
  block[4] = self;
  v18 = v8;
  v19 = v9;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  dispatch_sync(queue, block);
  v15 = v23[5];

  _Block_object_dispose(&v22, 8);

  return v15;
}

uint64_t __67__VOSCommandManager_validateCanAddKeyChord_toCommand_withResolver___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 16) validateCanAddKeyChord:a1[5] toCommand:a1[6] withResolver:a1[7]];
  v3 = *(a1[8] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

- (id)validateCanRemoveKeyChord:(id)a3 fromCommand:(id)a4 withResolver:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy_;
  v26 = __Block_byref_object_dispose_;
  v27 = 0;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __72__VOSCommandManager_validateCanRemoveKeyChord_fromCommand_withResolver___block_invoke;
  block[3] = &unk_2784F34C8;
  v20 = v10;
  v21 = &v22;
  block[4] = self;
  v18 = v8;
  v19 = v9;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  dispatch_sync(queue, block);
  v15 = v23[5];

  _Block_object_dispose(&v22, 8);

  return v15;
}

uint64_t __72__VOSCommandManager_validateCanRemoveKeyChord_fromCommand_withResolver___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 16) validateCanRemoveKeyChord:a1[5] fromCommand:a1[6] withResolver:a1[7]];
  v3 = *(a1[8] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

- (id)commandForTouchGesture:(id)a3 withResolver:(id)a4
{
  v39 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = __Block_byref_object_copy_;
  v31 = __Block_byref_object_dispose_;
  v32 = 0;
  queue = self->_queue;
  v19 = MEMORY[0x277D85DD0];
  v20 = 3221225472;
  v21 = __57__VOSCommandManager_commandForTouchGesture_withResolver___block_invoke;
  v22 = &unk_2784F34F0;
  v26 = &v27;
  v23 = self;
  v9 = v6;
  v24 = v9;
  v10 = v7;
  v25 = v10;
  dispatch_sync(queue, &v19);
  v11 = v28[5];
  v12 = [VOSCommand ToggleQuickNote:v19];
  if ([v11 isEqual:v12])
  {
    IsPad = AXDeviceIsPad();

    if (IsPad)
    {
      goto LABEL_5;
    }

    v12 = v28[5];
    v28[5] = 0;
  }

LABEL_5:
  v14 = VOTLogCommon();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    v18 = v28[5];
    *buf = 138412802;
    v34 = v18;
    v35 = 2112;
    v36 = v9;
    v37 = 2112;
    v38 = v10;
    _os_log_debug_impl(&dword_223C70000, v14, OS_LOG_TYPE_DEBUG, "Resolved command: '%@' for gesture: '%@' resolver: %@", buf, 0x20u);
  }

  v15 = v28[5];
  _Block_object_dispose(&v27, 8);

  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

uint64_t __57__VOSCommandManager_commandForTouchGesture_withResolver___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 16) commandForTouchGesture:a1[5] withResolver:a1[6]];
  v3 = *(a1[7] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

- (id)commandForKeyChord:(id)a3 withResolver:(id)a4
{
  v32 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy_;
  v24 = __Block_byref_object_dispose_;
  v25 = 0;
  queue = self->_queue;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __53__VOSCommandManager_commandForKeyChord_withResolver___block_invoke;
  v16[3] = &unk_2784F34F0;
  v19 = &v20;
  v16[4] = self;
  v9 = v6;
  v17 = v9;
  v10 = v7;
  v18 = v10;
  dispatch_sync(queue, v16);
  v11 = VOTLogCommon();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    v15 = v21[5];
    *buf = 138412802;
    v27 = v15;
    v28 = 2112;
    v29 = v9;
    v30 = 2112;
    v31 = v10;
    _os_log_debug_impl(&dword_223C70000, v11, OS_LOG_TYPE_DEBUG, "Resolved command: '%@' for keyChord: '%@' resolver: %@", buf, 0x20u);
  }

  v12 = v21[5];
  _Block_object_dispose(&v20, 8);

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

uint64_t __53__VOSCommandManager_commandForKeyChord_withResolver___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 16) commandForKeyChord:a1[5] withResolver:a1[6]];
  v3 = *(a1[7] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

- (id)allCommandsWithResolver:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy_;
  v16 = __Block_byref_object_dispose_;
  v17 = 0;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __45__VOSCommandManager_allCommandsWithResolver___block_invoke;
  block[3] = &unk_2784F3518;
  v10 = v4;
  v11 = &v12;
  block[4] = self;
  v6 = v4;
  dispatch_sync(queue, block);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

uint64_t __45__VOSCommandManager_allCommandsWithResolver___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 16) allCommandsWithResolver:a1[5]];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

- (id)allSiriShortcutCommandsWithResolver:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy_;
  v16 = __Block_byref_object_dispose_;
  v17 = 0;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __57__VOSCommandManager_allSiriShortcutCommandsWithResolver___block_invoke;
  block[3] = &unk_2784F3518;
  v10 = v4;
  v11 = &v12;
  block[4] = self;
  v6 = v4;
  dispatch_sync(queue, block);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

uint64_t __57__VOSCommandManager_allSiriShortcutCommandsWithResolver___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 16) allSiriShortcutCommandsWithResolver:a1[5]];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

- (id)allShortcutBindingsWithResolver:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy_;
  v16 = __Block_byref_object_dispose_;
  v17 = 0;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __53__VOSCommandManager_allShortcutBindingsWithResolver___block_invoke;
  block[3] = &unk_2784F3518;
  v10 = v4;
  v11 = &v12;
  block[4] = self;
  v6 = v4;
  dispatch_sync(queue, block);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

uint64_t __53__VOSCommandManager_allShortcutBindingsWithResolver___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 16) allShortcutBindingsWithResolver:a1[5]];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

- (id)userPresentableAllShortcutBindingsWithResolver:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy_;
  v16 = __Block_byref_object_dispose_;
  v17 = 0;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __68__VOSCommandManager_userPresentableAllShortcutBindingsWithResolver___block_invoke;
  block[3] = &unk_2784F3518;
  v10 = v4;
  v11 = &v12;
  block[4] = self;
  v6 = v4;
  dispatch_sync(queue, block);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

uint64_t __68__VOSCommandManager_userPresentableAllShortcutBindingsWithResolver___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 16) userPresentableAllShortcutBindingsWithResolver:a1[5]];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

- (id)gestureBindingsForCommand:(id)a3 withResolver:(id)a4
{
  v6 = a3;
  v7 = a4;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy_;
  v21 = __Block_byref_object_dispose_;
  v22 = 0;
  queue = self->_queue;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __60__VOSCommandManager_gestureBindingsForCommand_withResolver___block_invoke;
  v13[3] = &unk_2784F34F0;
  v13[4] = self;
  v14 = v6;
  v15 = v7;
  v16 = &v17;
  v9 = v7;
  v10 = v6;
  dispatch_sync(queue, v13);
  v11 = v18[5];

  _Block_object_dispose(&v17, 8);

  return v11;
}

uint64_t __60__VOSCommandManager_gestureBindingsForCommand_withResolver___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 16) gestureBindingsForCommand:a1[5] withResolver:a1[6]];
  v3 = *(a1[7] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

- (id)shortcutBindingsForCommand:(id)a3 withResolver:(id)a4
{
  v6 = a3;
  v7 = a4;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy_;
  v21 = __Block_byref_object_dispose_;
  v22 = 0;
  queue = self->_queue;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __61__VOSCommandManager_shortcutBindingsForCommand_withResolver___block_invoke;
  v13[3] = &unk_2784F34F0;
  v13[4] = self;
  v14 = v6;
  v15 = v7;
  v16 = &v17;
  v9 = v7;
  v10 = v6;
  dispatch_sync(queue, v13);
  v11 = v18[5];

  _Block_object_dispose(&v17, 8);

  return v11;
}

uint64_t __61__VOSCommandManager_shortcutBindingsForCommand_withResolver___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 16) shortcutBindingsForCommand:a1[5] withResolver:a1[6]];
  v3 = *(a1[7] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

- (BOOL)commandHasAnyBindings:(id)a3 withResolver:(id)a4
{
  v6 = a3;
  v7 = a4;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  queue = self->_queue;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __56__VOSCommandManager_commandHasAnyBindings_withResolver___block_invoke;
  v12[3] = &unk_2784F34F0;
  v12[4] = self;
  v13 = v6;
  v14 = v7;
  v15 = &v16;
  v9 = v7;
  v10 = v6;
  dispatch_sync(queue, v12);
  LOBYTE(queue) = *(v17 + 24);

  _Block_object_dispose(&v16, 8);
  return queue;
}

uint64_t __56__VOSCommandManager_commandHasAnyBindings_withResolver___block_invoke(void *a1)
{
  result = [*(a1[4] + 16) commandHasAnyBindings:a1[5] withResolver:a1[6]];
  *(*(a1[7] + 8) + 24) = result;
  return result;
}

- (unint64_t)availabilityForGesture:(id)a3 withResolver:(id)a4
{
  v6 = a3;
  v7 = a4;
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  queue = self->_queue;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __57__VOSCommandManager_availabilityForGesture_withResolver___block_invoke;
  v13[3] = &unk_2784F34F0;
  v13[4] = self;
  v14 = v6;
  v15 = v7;
  v16 = &v17;
  v9 = v7;
  v10 = v6;
  dispatch_sync(queue, v13);
  v11 = v18[3];

  _Block_object_dispose(&v17, 8);
  return v11;
}

uint64_t __57__VOSCommandManager_availabilityForGesture_withResolver___block_invoke(void *a1)
{
  result = [*(a1[4] + 16) availabilityForGesture:a1[5] withResolver:a1[6]];
  *(*(a1[7] + 8) + 24) = result;
  return result;
}

- (unint64_t)availabilityForShortcut:(id)a3 withResolver:(id)a4
{
  v6 = a3;
  v7 = a4;
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  queue = self->_queue;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __58__VOSCommandManager_availabilityForShortcut_withResolver___block_invoke;
  v13[3] = &unk_2784F34F0;
  v13[4] = self;
  v14 = v6;
  v15 = v7;
  v16 = &v17;
  v9 = v7;
  v10 = v6;
  dispatch_sync(queue, v13);
  v11 = v18[3];

  _Block_object_dispose(&v17, 8);
  return v11;
}

uint64_t __58__VOSCommandManager_availabilityForShortcut_withResolver___block_invoke(void *a1)
{
  result = [*(a1[4] + 16) availabilityForShortcut:a1[5] withResolver:a1[6]];
  *(*(a1[7] + 8) + 24) = result;
  return result;
}

- (unint64_t)availabilityForCommand:(id)a3 withResolver:(id)a4
{
  v6 = a3;
  v7 = a4;
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  queue = self->_queue;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __57__VOSCommandManager_availabilityForCommand_withResolver___block_invoke;
  v13[3] = &unk_2784F34F0;
  v13[4] = self;
  v14 = v6;
  v15 = v7;
  v16 = &v17;
  v9 = v7;
  v10 = v6;
  dispatch_sync(queue, v13);
  v11 = v18[3];

  _Block_object_dispose(&v17, 8);
  return v11;
}

uint64_t __57__VOSCommandManager_availabilityForCommand_withResolver___block_invoke(void *a1)
{
  result = [*(a1[4] + 16) availabilityForCommand:a1[5] withResolver:a1[6]];
  *(*(a1[7] + 8) + 24) = result;
  return result;
}

- (BOOL)commandHasModifiedBindingsWhenZoomEnabled:(id)a3 withResolver:(id)a4
{
  v6 = a3;
  v7 = a4;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  queue = self->_queue;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __76__VOSCommandManager_commandHasModifiedBindingsWhenZoomEnabled_withResolver___block_invoke;
  v12[3] = &unk_2784F34F0;
  v12[4] = self;
  v13 = v6;
  v14 = v7;
  v15 = &v16;
  v9 = v7;
  v10 = v6;
  dispatch_sync(queue, v12);
  LOBYTE(queue) = *(v17 + 24);

  _Block_object_dispose(&v16, 8);
  return queue;
}

uint64_t __76__VOSCommandManager_commandHasModifiedBindingsWhenZoomEnabled_withResolver___block_invoke(void *a1)
{
  result = [*(a1[4] + 16) commandHasModifiedBindingsWhenZoomEnabled:a1[5] withResolver:a1[6]];
  *(*(a1[7] + 8) + 24) = result;
  return result;
}

- (id)systemProfile
{
  v2 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v3 = [v2 pathForResource:@"DefaultCommandProfile" ofType:@"plist"];
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithContentsOfFile:v3];
  v5 = +[VOSCommandResolver currentHost];
  if (v5 > 5)
  {
    v6 = 0;
    v7 = 0;
  }

  else
  {
    v6 = [v2 pathForResource:off_2784F3538[v5] ofType:@"plist"];
    v7 = [MEMORY[0x277CBEAC0] dictionaryWithContentsOfFile:v6];
  }

  v8 = [[VOSCommandProfile alloc] initWithProfileProperties:v4 overlayProperties:v7];

  return v8;
}

- (void)_loadSystemProfile
{
  v3 = [(VOSCommandManager *)self systemProfile];
  activeProfile = self->_activeProfile;
  self->_activeProfile = v3;

  v5 = self->_activeProfile;

  [(VOSCommandProfile *)v5 setDelegate:self];
}

@end