@interface SBHardwareButtonCoordinator
- (BOOL)buttonShouldStart:(id)a3;
- (id)assertButtonIsActive:(id)a3 dropletHintIdentifier:(int64_t)a4;
- (id)cancelHardwareButtons:(id)a3 fromButton:(id)a4;
- (id)setWindowScene:(id *)result;
- (id)windowScene;
- (int)initWithHardwareButtons:(void *)a3 windowScene:;
- (unint64_t)_shouldSuppressButtonIdentifier:(unint64_t)a1;
- (void)dealloc;
@end

@implementation SBHardwareButtonCoordinator

void __67__SBHardwareButtonCoordinator_initWithHardwareButtons_windowScene___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = SBLogButtonsLock();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_21ED4E000, v2, OS_LOG_TYPE_DEFAULT, "sysdiagnose began - canceling buttons", buf, 2u);
  }

  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v3 = [*(*(a1 + 32) + 24) allValues];
  v4 = [v3 countByEnumeratingWithState:&v8 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v8 + 1) + 8 * v7++) cancelHardwareButtonPress];
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v8 objects:v13 count:16];
    }

    while (v5);
  }
}

- (void)dealloc
{
  sysdiagnoseDidBeginNotificationToken = self->_sysdiagnoseDidBeginNotificationToken;
  if (sysdiagnoseDidBeginNotificationToken != -1)
  {
    notify_cancel(sysdiagnoseDidBeginNotificationToken);
    self->_sysdiagnoseDidBeginNotificationToken = -1;
  }

  v4.receiver = self;
  v4.super_class = SBHardwareButtonCoordinator;
  [(SBHardwareButtonCoordinator *)&v4 dealloc];
}

- (id)assertButtonIsActive:(id)a3 dropletHintIdentifier:(int64_t)a4
{
  v45 = *MEMORY[0x277D85DE8];
  v6 = a3;
  if (!self->_activeButtonIdentifiers)
  {
    v7 = objc_alloc_init(MEMORY[0x277CCA940]);
    activeButtonIdentifiers = self->_activeButtonIdentifiers;
    self->_activeButtonIdentifiers = v7;
  }

  v9 = SBLogButtonsInteraction();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v44 = v6;
    _os_log_impl(&dword_21ED4E000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@ active", buf, 0xCu);
  }

  [(NSCountedSet *)self->_activeButtonIdentifiers addObject:v6];
  if (a4)
  {
    WeakRetained = objc_loadWeakRetained(&self->_windowScene);
    v11 = [WeakRetained hardwareButtonBezelEffectsCoordinator];
    a4 = [v11 activateHintDropletForButton:a4];
  }

  if ([(NSCountedSet *)self->_activeButtonIdentifiers countForObject:v6]== 1)
  {
    v12 = [(NSDictionary *)self->_buttonIdentifierToSuppressedButtonIdentifiers objectForKey:v6];
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v13 = [v12 countByEnumeratingWithState:&v37 objects:v42 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v38;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v38 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = [(NSDictionary *)self->_buttonIdentifierToButtonInstance objectForKey:*(*(&v37 + 1) + 8 * i)];
          [v17 cancelHardwareButtonPress];
        }

        v14 = [v12 countByEnumeratingWithState:&v37 objects:v42 count:16];
      }

      while (v14);
    }
  }

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v18 = self->_otherButtonsAlwaysSuppressButtonIdentifiers;
  v19 = [(NSSet *)v18 countByEnumeratingWithState:&v33 objects:v41 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v34;
    do
    {
      for (j = 0; j != v20; ++j)
      {
        if (*v34 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v23 = *(*(&v33 + 1) + 8 * j);
        if (([v6 isEqual:v23] & 1) == 0)
        {
          v24 = [(NSDictionary *)self->_buttonIdentifierToButtonInstance objectForKey:v23];
          [v24 cancelHardwareButtonPress];
        }
      }

      v20 = [(NSSet *)v18 countByEnumeratingWithState:&v33 objects:v41 count:16];
    }

    while (v20);
  }

  v25 = objc_alloc(MEMORY[0x277CF0CE8]);
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __92__SBHardwareButtonCoordinator_ButtonsColluding__assertButtonIsActive_dropletHintIdentifier___block_invoke;
  v30[3] = &unk_2783BB1A8;
  v30[4] = self;
  v31 = v6;
  v32 = a4;
  v26 = a4;
  v27 = v6;
  v28 = [v25 initWithIdentifier:v27 forReason:@"button active" invalidationBlock:v30];

  return v28;
}

void __92__SBHardwareButtonCoordinator_ButtonsColluding__assertButtonIsActive_dropletHintIdentifier___block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  [*(*(a1 + 32) + 40) removeObject:*(a1 + 40)];
  [*(a1 + 48) invalidate];
  v2 = SBLogButtonsInteraction();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 40);
    v4 = 138543362;
    v5 = v3;
    _os_log_impl(&dword_21ED4E000, v2, OS_LOG_TYPE_DEFAULT, "%{public}@ inactive", &v4, 0xCu);
  }
}

- (id)cancelHardwareButtons:(id)a3 fromButton:(id)a4
{
  v38 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  if (!self->_canceledButtonIdentifiers)
  {
    v9 = objc_alloc_init(MEMORY[0x277CCA940]);
    canceledButtonIdentifiers = self->_canceledButtonIdentifiers;
    self->_canceledButtonIdentifiers = v9;
  }

  v11 = SBLogButtonsInteraction();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = [MEMORY[0x277CF0C08] descriptionForRootObject:v7];
    *buf = 138543618;
    v35 = v8;
    v36 = 2114;
    v37 = v12;
    _os_log_impl(&dword_21ED4E000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@ started canceling %{public}@", buf, 0x16u);
  }

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v13 = v7;
  v14 = [v13 countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v30;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v30 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v29 + 1) + 8 * i);
        if ([v18 isEqual:v8])
        {
          [(SBHardwareButtonCoordinator(ButtonsColluding) *)v8 cancelHardwareButtons:a2 fromButton:self];
        }

        [(NSCountedSet *)self->_canceledButtonIdentifiers addObject:v18];
        v19 = [(NSDictionary *)self->_buttonIdentifierToButtonInstance objectForKey:v18];
        [v19 cancelHardwareButtonPress];
      }

      v15 = [v13 countByEnumeratingWithState:&v29 objects:v33 count:16];
    }

    while (v15);
  }

  v20 = objc_alloc(MEMORY[0x277CF0CE8]);
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __82__SBHardwareButtonCoordinator_ButtonsColluding__cancelHardwareButtons_fromButton___block_invoke;
  v25[3] = &unk_2783BB1A8;
  v26 = v13;
  v27 = self;
  v28 = v8;
  v21 = v8;
  v22 = v13;
  v23 = [v20 initWithIdentifier:@"cancel some buttons" forReason:v21 invalidationBlock:v25];

  return v23;
}

void __82__SBHardwareButtonCoordinator_ButtonsColluding__cancelHardwareButtons_fromButton___block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v18 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v11;
    do
    {
      v6 = 0;
      do
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(a1 + 40) + 32) removeObject:{*(*(&v10 + 1) + 8 * v6++), v10}];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v10 objects:v18 count:16];
    }

    while (v4);
  }

  v7 = SBLogButtonsInteraction();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 48);
    v9 = [MEMORY[0x277CF0C08] descriptionForRootObject:*(a1 + 32)];
    *buf = 138543618;
    v15 = v8;
    v16 = 2114;
    v17 = v9;
    _os_log_impl(&dword_21ED4E000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ stopped canceling %{public}@", buf, 0x16u);
  }
}

- (int)initWithHardwareButtons:(void *)a3 windowScene:
{
  v56 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    v46.receiver = a1;
    v46.super_class = SBHardwareButtonCoordinator;
    v7 = objc_msgSendSuper2(&v46, sel_init);
    a1 = v7;
    if (v7)
    {
      v38 = v6;
      objc_storeWeak(v7 + 2, v6);
      v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
      v42 = 0u;
      v43 = 0u;
      v44 = 0u;
      v45 = 0u;
      v39 = v5;
      v9 = v5;
      v10 = [v9 countByEnumeratingWithState:&v42 objects:v55 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v43;
        do
        {
          for (i = 0; i != v11; ++i)
          {
            if (*v43 != v12)
            {
              objc_enumerationMutation(v9);
            }

            v14 = *(*(&v42 + 1) + 8 * i);
            v15 = [v14 hardwareButtonIdentifier];
            [v8 setObject:v14 forKey:v15];

            [v14 setHardwareButtonCoordinator:a1];
          }

          v11 = [v9 countByEnumeratingWithState:&v42 objects:v55 count:16];
        }

        while (v11);
      }

      v16 = *(a1 + 3);
      *(a1 + 3) = v8;
      v37 = v8;

      v17 = MEMORY[0x277CBEB98];
      v52 = @"Lock";
      v53[0] = @"Action";
      v18 = [MEMORY[0x277CBEA60] arrayWithObjects:&v52 count:1];
      v19 = [v17 setWithArray:v18];
      v53[1] = @"Lock";
      v54[0] = v19;
      v20 = MEMORY[0x277CBEB98];
      v51 = @"Action";
      v21 = [MEMORY[0x277CBEA60] arrayWithObjects:&v51 count:1];
      v22 = [v20 setWithArray:v21];
      v54[1] = v22;
      v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v54 forKeys:v53 count:2];
      v24 = *(a1 + 6);
      *(a1 + 6) = v23;

      v48 = @"Lock";
      v49[0] = @"Action";
      v25 = MEMORY[0x277CBEB98];
      v26 = [MEMORY[0x277CBEA60] arrayWithObjects:&v48 count:1];
      v27 = [v25 setWithArray:v26];
      v49[1] = @"Lock";
      v50[0] = v27;
      v28 = MEMORY[0x277CBEB98];
      v47 = @"Action";
      v29 = [MEMORY[0x277CBEA60] arrayWithObjects:&v47 count:1];
      v30 = [v28 setWithArray:v29];
      v50[1] = v30;
      v31 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v50 forKeys:v49 count:2];
      v32 = *(a1 + 8);
      *(a1 + 8) = v31;

      v33 = [MEMORY[0x277CBEB98] setWithObjects:{@"Capture", 0}];
      v34 = *(a1 + 7);
      *(a1 + 7) = v33;

      a1[2] = -1;
      v35 = a1 + 2;
      handler[0] = MEMORY[0x277D85DD0];
      handler[1] = 3221225472;
      handler[2] = __67__SBHardwareButtonCoordinator_initWithHardwareButtons_windowScene___block_invoke;
      handler[3] = &unk_2783A95E8;
      a1 = a1;
      v41 = a1;
      notify_register_dispatch("com.apple.sysdiagnose.sysdiagnoseStarted", v35, MEMORY[0x277D85CD0], handler);

      v6 = v38;
      v5 = v39;
    }
  }

  return a1;
}

- (id)windowScene
{
  if (WeakRetained)
  {
    WeakRetained = objc_loadWeakRetained(WeakRetained + 2);
    v1 = vars8;
  }

  return WeakRetained;
}

- (id)setWindowScene:(id *)result
{
  if (result)
  {
    return objc_storeWeak(result + 2, a2);
  }

  return result;
}

- (unint64_t)_shouldSuppressButtonIdentifier:(unint64_t)a1
{
  v3 = a2;
  if (a1)
  {
    if ([*(a1 + 56) containsObject:v3])
    {
      v4 = [*(a1 + 40) mutableCopy];
      [v4 removeObject:v3];
      a1 = [v4 count] != 0;
    }

    else
    {
      v4 = [*(a1 + 64) objectForKey:v3];
      a1 = [*(a1 + 40) intersectsSet:v4];
    }
  }

  return a1;
}

- (BOOL)buttonShouldStart:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(SBHardwareButtonCoordinator *)self _shouldSuppressButtonIdentifier:v4];
  v6 = [(NSCountedSet *)self->_canceledButtonIdentifiers containsObject:v4];
  v7 = (v5 | v6) ^ 1;
  v8 = SBLogButtonsInteraction();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v10 = v6 & 1;
    v11 = [MEMORY[0x277CF0C08] descriptionForRootObject:self->_activeButtonIdentifiers];
    v12 = [MEMORY[0x277CF0C08] descriptionForRootObject:self->_canceledButtonIdentifiers];
    v13 = 138544642;
    v14 = v4;
    v15 = 1024;
    v16 = v5;
    v17 = 1024;
    v18 = v10;
    v19 = 1024;
    v20 = v7 & 1;
    v21 = 2114;
    v22 = v11;
    v23 = 2114;
    v24 = v12;
    _os_log_debug_impl(&dword_21ED4E000, v8, OS_LOG_TYPE_DEBUG, "%{public}@ shouldSuppress:(%{BOOL}u) isCanceled:(%{BOOL}u) shouldStart:(%{BOOL}u) active:%{public}@ canceled:%{public}@", &v13, 0x32u);
  }

  return v7 & 1;
}

@end