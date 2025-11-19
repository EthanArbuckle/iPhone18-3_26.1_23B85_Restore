@interface SUSFollowUpController
+ (id)sharedController;
+ (id)stringForSUSFollowUpType:(unint64_t)a3;
- (BOOL)_isCurrentlyPresentingFollowUpType:(unint64_t)a3 currentFollowUps:(id)a4;
- (BOOL)isCurrentlyPresentingFollowUpType:(unint64_t)a3;
- (BOOL)isCurrentlyPresentingFollowUpTypes:(id)a3 presentationOption:(unint64_t)a4;
- (BOOL)isfollowUpSUSRelated:(id)a3;
- (SUSFollowUpController)init;
- (id)getCurrentSUSFollowUpItems;
- (id)identifierForSUFollowUpType:(unint64_t)a3;
- (id)identifiersForSUFollowUpTypes:(id)a3;
- (void)SUSFollowUpControllerBadgeSettings:(id)a3;
- (void)SUSFollowUpControllerUnbadgeSettings;
- (void)dismissAllSUFollowUps;
- (void)dismissFollowUpType:(unint64_t)a3;
- (void)dismissFollowUpTypes:(id)a3;
- (void)dismissFollowUpWithIdentifiers:(id)a3;
- (void)dismissLegacyFollowUps;
- (void)postFollowUpItem:(id)a3;
- (void)postFollowUpOfType:(unint64_t)a3 withUpdate:(id)a4 userInfo:(id)a5;
@end

@implementation SUSFollowUpController

- (SUSFollowUpController)init
{
  v6.receiver = self;
  v6.super_class = SUSFollowUpController;
  v2 = [(SUSFollowUpController *)&v6 init];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x277CFE500]) initWithClientIdentifier:@"com.apple.SoftwareUpdateServices.followup"];
    followUpController = v2->_followUpController;
    v2->_followUpController = v3;
  }

  return v2;
}

+ (id)sharedController
{
  if (sharedController_onceToken != -1)
  {
    +[SUSFollowUpController sharedController];
  }

  v3 = sharedController_sharedInstance;

  return v3;
}

uint64_t __41__SUSFollowUpController_sharedController__block_invoke()
{
  sharedController_sharedInstance = objc_alloc_init(SUSFollowUpController);

  return MEMORY[0x2821F96F8]();
}

- (BOOL)isCurrentlyPresentingFollowUpTypes:(id)a3 presentationOption:(unint64_t)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = [(SUSFollowUpController *)self getCurrentSUSFollowUpItems];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v9 = v7;
  v10 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v17;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v17 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v4 = -[SUSFollowUpController _isCurrentlyPresentingFollowUpType:currentFollowUps:](self, "_isCurrentlyPresentingFollowUpType:currentFollowUps:", [*(*(&v16 + 1) + 8 * i) integerValue], v8);
        if (v4)
        {
          if (a4 == 1)
          {
            LOBYTE(a4) = 0;
            goto LABEL_13;
          }
        }

        else if (!a4)
        {
          goto LABEL_13;
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v11);
  }

  LOBYTE(a4) = 1;
LABEL_13:

  v14 = *MEMORY[0x277D85DE8];
  return (v4 | a4) & 1;
}

- (BOOL)isCurrentlyPresentingFollowUpType:(unint64_t)a3
{
  v5 = [(SUSFollowUpController *)self getCurrentSUSFollowUpItems];
  LOBYTE(a3) = [(SUSFollowUpController *)self _isCurrentlyPresentingFollowUpType:a3 currentFollowUps:v5];

  return a3;
}

- (BOOL)_isCurrentlyPresentingFollowUpType:(unint64_t)a3 currentFollowUps:(id)a4
{
  v36 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = v6;
  if (v6 && [v6 count])
  {
    v8 = [(SUSFollowUpController *)self identifierForSUFollowUpType:a3];
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v9 = v7;
    v10 = [v9 countByEnumeratingWithState:&v31 objects:v35 count:16];
    if (v10)
    {
      v11 = *v32;
      while (2)
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v32 != v11)
          {
            objc_enumerationMutation(v9);
          }

          v13 = [*(*(&v31 + 1) + 8 * i) uniqueIdentifier];
          v14 = [v13 isEqualToString:v8];

          if (v14)
          {
            v10 = SULogFollowUp();
            SULogInfoForSubsystem(v10, @"FollowUp with identifier %@ is currently presented", v22, v23, v24, v25, v26, v27, v8);

            LOBYTE(v10) = 1;
            goto LABEL_14;
          }
        }

        v10 = [v9 countByEnumeratingWithState:&v31 objects:v35 count:16];
        if (v10)
        {
          continue;
        }

        break;
      }
    }

LABEL_14:
  }

  else
  {
    v15 = SULogFollowUp();
    SULogInfoForSubsystem(v15, @"No SUS followup is currently presented", v16, v17, v18, v19, v20, v21, v30);

    LOBYTE(v10) = 0;
  }

  v28 = *MEMORY[0x277D85DE8];
  return v10;
}

- (id)getCurrentSUSFollowUpItems
{
  v21 = *MEMORY[0x277D85DE8];
  followUpController = self->_followUpController;
  v19 = 0;
  v4 = [(FLFollowUpController *)followUpController pendingFollowUpItems:&v19];
  v5 = v19;
  if (v4)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v7 = v4;
    v8 = [v7 countByEnumeratingWithState:&v15 objects:v20 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v16;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v16 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v15 + 1) + 8 * i);
          if ([(SUSFollowUpController *)self isfollowUpSUSRelated:v12, v15])
          {
            [v6 addObject:v12];
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v15 objects:v20 count:16];
      }

      while (v9);
    }
  }

  else
  {
    v6 = 0;
  }

  v13 = *MEMORY[0x277D85DE8];

  return v6;
}

- (BOOL)isfollowUpSUSRelated:(id)a3
{
  v12[4] = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = +[SUSFollowUpBadgeOnly identifier];
  v12[0] = v4;
  v5 = +[SUSFollowUpUpdateAvailable identifier];
  v12[1] = v5;
  v6 = +[SUSFollowUpAutoUpdate identifier];
  v12[2] = v6;
  v7 = +[SUSFollowUpInsufficientDiskSpace identifier];
  v12[3] = v7;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:4];
  v9 = [v3 uniqueIdentifier];

  LOBYTE(v3) = [v8 containsObject:v9];
  v10 = *MEMORY[0x277D85DE8];
  return v3;
}

- (void)dismissAllSUFollowUps
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [(SUSFollowUpController *)self getCurrentSUSFollowUpItems];
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      v8 = 0;
      do
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v11 + 1) + 8 * v8) uniqueIdentifier];
        [v3 addObject:v9];

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  [(SUSFollowUpController *)self dismissFollowUpWithIdentifiers:v3];
  v10 = *MEMORY[0x277D85DE8];
}

- (void)dismissFollowUpType:(unint64_t)a3
{
  v7[1] = *MEMORY[0x277D85DE8];
  v4 = [(SUSFollowUpController *)self identifierForSUFollowUpType:a3];
  v7[0] = v4;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:1];
  [(SUSFollowUpController *)self dismissFollowUpWithIdentifiers:v5];

  v6 = *MEMORY[0x277D85DE8];
}

- (void)dismissFollowUpTypes:(id)a3
{
  v4 = [(SUSFollowUpController *)self identifiersForSUFollowUpTypes:a3];
  [(SUSFollowUpController *)self dismissFollowUpWithIdentifiers:v4];
}

- (void)dismissFollowUpWithIdentifiers:(id)a3
{
  v4 = a3;
  v5 = SULogFollowUp();
  SULogInfoForSubsystem(v5, @"Dismissing FollowUps with identifiers: %@", v6, v7, v8, v9, v10, v11, v4);

  v12 = [(SUSFollowUpController *)self followUpController];
  v21 = 0;
  [v12 clearPendingFollowUpItemsWithUniqueIdentifiers:v4 error:&v21];

  v13 = v21;
  if (v13)
  {
    v14 = SULogFollowUp();
    SULogErrorForSubsystem(v14, @"error clearing pending followUp item: %@", v15, v16, v17, v18, v19, v20, v13);
  }
}

- (id)identifiersForSUFollowUpTypes:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = -[SUSFollowUpController identifierForSUFollowUpType:](self, "identifierForSUFollowUpType:", [*(*(&v14 + 1) + 8 * i) integerValue]);
        if (v11)
        {
          [v5 addObject:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  v12 = *MEMORY[0x277D85DE8];

  return v5;
}

- (id)identifierForSUFollowUpType:(unint64_t)a3
{
  if (a3 > 1)
  {
    if (a3 == 2)
    {
      v4 = SUSFollowUpAutoUpdate;
      goto LABEL_11;
    }

    if (a3 == 3)
    {
      v4 = SUSFollowUpInsufficientDiskSpace;
      goto LABEL_11;
    }

LABEL_8:
    v5 = SULogFollowUp();
    SULogInfoForSubsystem(v5, @"Unknown SUSFollowUpType: %ld", v6, v7, v8, v9, v10, v11, a3);

    v12 = 0;
    goto LABEL_12;
  }

  if (!a3)
  {
    v4 = SUSFollowUpBadgeOnly;
    goto LABEL_11;
  }

  if (a3 != 1)
  {
    goto LABEL_8;
  }

  v4 = SUSFollowUpUpdateAvailable;
LABEL_11:
  v12 = [(__objc2_class *)v4 identifier];
LABEL_12:

  return v12;
}

- (void)postFollowUpOfType:(unint64_t)a3 withUpdate:(id)a4 userInfo:(id)a5
{
  v37 = a4;
  v8 = a5;
  v9 = +[SUPreferences sharedInstance];
  v10 = [v9 disableFollowUps];

  v11 = SULogFollowUp();
  v18 = v11;
  if (v10)
  {
    v19 = [SUSFollowUpController stringForSUSFollowUpType:a3];
    SULogInfoForSubsystem(v18, @"Skipping post of %@ followup item because preference is set", v20, v21, v22, v23, v24, v25, v19);

    goto LABEL_18;
  }

  if (a3 > 1)
  {
    if (a3 == 2)
    {
      v26 = off_279CA9BB8;
      v27 = @"Attempting to post SUSFollowUpAutoUpdate item";
      goto LABEL_15;
    }

    if (a3 == 3)
    {
      v26 = off_279CA9BD0;
      v27 = @"Attempting to post SUSFollowUpTypeInsufficientDiskSpace item";
      goto LABEL_15;
    }

LABEL_10:
    SULogInfoForSubsystem(v11, @"Unknown SUSFollowUpType (%ld). Unable to create FollowUp", v12, v13, v14, v15, v16, v17, a3);
    goto LABEL_18;
  }

  if (!a3)
  {
    SULogInfoForSubsystem(v11, @"Attempting to post SUSFollowUpBadgeOnly item", v12, v13, v14, v15, v16, v17, v35);

    if ([v37 isSplatOnly])
    {
      v18 = SULogFollowUp();
      SULogInfoForSubsystem(v18, @"Not posting badge only followups for splat only updates", v28, v29, v30, v31, v32, v33, v36);
      goto LABEL_18;
    }

    v26 = off_279CA9BC0;
    goto LABEL_16;
  }

  if (a3 != 1)
  {
    goto LABEL_10;
  }

  v26 = off_279CA9BD8;
  v27 = @"Attempting to post SUSFollowUpUpdateAvailable item";
LABEL_15:
  SULogInfoForSubsystem(v11, v27, v12, v13, v14, v15, v16, v17, v35);

LABEL_16:
  v34 = [(__objc2_class *)*v26 generateFollowUpWithDescriptor:v37 userInfo:v8];
  if (!v34)
  {
    goto LABEL_19;
  }

  v18 = v34;
  [(SUSFollowUpController *)self postFollowUpItem:v34];
LABEL_18:

LABEL_19:
}

- (void)postFollowUpItem:(id)a3
{
  v4 = a3;
  if (v4)
  {
    [(SUSFollowUpController *)self dismissAllSUFollowUps];
    followUpController = self->_followUpController;
    v23 = 0;
    v6 = [(FLFollowUpController *)followUpController postFollowUpItem:v4 error:&v23];
    v7 = v23;
    v8 = SULogFollowUp();
    v15 = v8;
    if (v6)
    {
      SULogInfoForSubsystem(v8, @"Successfully posted FollowUp item: %@", v9, v10, v11, v12, v13, v14, v4);
    }

    else
    {
      SULogInfoForSubsystem(v8, @"Failed to post FollowUp item: %@ Error: %@", v9, v10, v11, v12, v13, v14, v4);
    }
  }

  else
  {
    v7 = SULogFollowUp();
    SULogInfoForSubsystem(v7, @"Unable to post null FollowUp item", v16, v17, v18, v19, v20, v21, v22);
  }
}

+ (id)stringForSUSFollowUpType:(unint64_t)a3
{
  if (a3 > 3)
  {
    return @"Unknonw Type";
  }

  else
  {
    return off_279CAA808[a3];
  }
}

- (void)SUSFollowUpControllerBadgeSettings:(id)a3
{
  v12 = a3;
  v4 = SULogFollowUp();
  SULogInfoForSubsystem(v4, @"Got request to badge settings via followUp", v5, v6, v7, v8, v9, v10, v11);

  [(SUSFollowUpController *)self dismissAllSUFollowUps];
  [(SUSFollowUpController *)self postFollowUpOfType:0 withUpdate:v12 userInfo:0];
}

- (void)SUSFollowUpControllerUnbadgeSettings
{
  v3 = SULogFollowUp();
  SULogInfoForSubsystem(v3, @"Got request to unbadge settings via followUp", v4, v5, v6, v7, v8, v9, v10);

  [(SUSFollowUpController *)self dismissFollowUpType:0];
}

- (void)dismissLegacyFollowUps
{
  v5[1] = *MEMORY[0x277D85DE8];
  v5[0] = SUSFollowUpUniqueIdentifierLegacy;
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:1];
  [(SUSFollowUpController *)self dismissFollowUpWithIdentifiers:v3];

  v4 = *MEMORY[0x277D85DE8];
}

@end