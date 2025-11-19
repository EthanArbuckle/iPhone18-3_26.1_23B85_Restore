@interface VCShortcutsObliterator
- (BOOL)deleteAppGroupWithIdentifier:(id)a3 error:(id *)a4;
- (BOOL)deleteDataVaultWithError:(id *)a3;
- (BOOL)deleteKeychainItemsWithError:(id *)a3;
- (BOOL)terminateProcessWithIdentifier:(id)a3 assertion:(id *)a4 error:(id *)a5;
- (VCShortcutsObliterator)initWithTriggerRegistrar:(id)a3 syncDataHandlers:(id)a4;
- (void)obliterate:(id *)a3;
- (void)resetWatchSync;
@end

@implementation VCShortcutsObliterator

- (void)resetWatchSync
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v2 = [(VCShortcutsObliterator *)self syncDataHandlers];
  v3 = [v2 valueForKeyPath:@"@distinctUnionOfArrays.services"];

  v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v12 + 1) + 8 * i);
        if (v8)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v9 = v8;
          }

          else
          {
            v9 = 0;
          }
        }

        else
        {
          v9 = 0;
        }

        v10 = v9;

        [v10 requestFullResync];
      }

      v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (BOOL)terminateProcessWithIdentifier:(id)a3 assertion:(id *)a4 error:(id *)a5
{
  v9 = a3;
  if (!v9)
  {
    v22 = [MEMORY[0x277CCA890] currentHandler];
    [v22 handleFailureInMethod:a2 object:self file:@"VCShortcutsObliterator.m" lineNumber:182 description:{@"Invalid parameter not satisfying: %@", @"identifier"}];
  }

  v10 = [MEMORY[0x277D46F60] identityForEmbeddedApplicationIdentifier:v9];
  v11 = [MEMORY[0x277D46FA0] predicateMatchingIdentity:v10];
  v12 = [objc_alloc(MEMORY[0x277D47010]) initWithExplanation:@"VCShortcutsObliterator is terminating Shortcuts processes upon a data obliteration request"];
  [v12 setMaximumTerminationResistance:40];
  v13 = [objc_alloc(MEMORY[0x277D47018]) initWithPredicate:v11 context:v12];
  v24 = 0;
  v25 = 0;
  v14 = [v13 execute:&v25 error:&v24];
  v15 = v25;
  v16 = v24;
  if (a4)
  {
    v17 = v15;
    *a4 = v15;
  }

  if ((v14 & 1) == 0)
  {
    v18 = [v16 domain];
    if ([v18 isEqualToString:*MEMORY[0x277D47088]])
    {
      v23 = a5;
      v19 = [v16 code];

      if (v19 != 3)
      {
        a5 = v23;
        if (!v23)
        {
          goto LABEL_11;
        }

        goto LABEL_10;
      }

      v18 = v16;
      v16 = 0;
      a5 = v23;
    }

    if (a5)
    {
LABEL_10:
      v20 = v16;
      *a5 = v16;
    }
  }

LABEL_11:

  return v14;
}

- (BOOL)deleteDataVaultWithError:(id *)a3
{
  v27 = *MEMORY[0x277D85DE8];
  v4 = *MEMORY[0x277D7A338];
  v19 = 0;
  v20 = 0;
  v5 = [(VCShortcutsObliterator *)self terminateProcessWithIdentifier:v4 assertion:&v20 error:&v19];
  v6 = v20;
  v7 = v19;
  v8 = v7;
  if (!v5 && v7)
  {
    v9 = getWFObliteratorLogObject();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315650;
      v22 = "[VCShortcutsObliterator deleteDataVaultWithError:]";
      v23 = 2114;
      v24 = v4;
      v25 = 2114;
      v26 = v8;
      _os_log_impl(&dword_23103C000, v9, OS_LOG_TYPE_FAULT, "%s Terminating %{public}@ failed with error: %{public}@", buf, 0x20u);
    }

    if (a3)
    {
      v10 = v8;
      *a3 = v8;
    }
  }

  v11 = [MEMORY[0x277CBEBC0] wf_shortcutsDirectoryURL];
  v12 = [MEMORY[0x277CCAA00] defaultManager];
  v18 = 0;
  v13 = [v12 removeItemAtURL:v11 error:&v18];
  v14 = v18;

  if (v6)
  {
    [v6 invalidate];
  }

  if ([v14 vc_isFileNotFound])
  {

    v14 = 0;
    v13 = 1;
  }

  else if (a3 && v14)
  {
    v15 = v14;
    *a3 = v14;
  }

  v16 = *MEMORY[0x277D85DE8];
  return v13;
}

- (BOOL)deleteAppGroupWithIdentifier:(id)a3 error:(id *)a4
{
  v21[3] = *MEMORY[0x277D85DE8];
  v7 = a3;
  if (!v7)
  {
    v18 = [MEMORY[0x277CCA890] currentHandler];
    [v18 handleFailureInMethod:a2 object:self file:@"VCShortcutsObliterator.m" lineNumber:120 description:{@"Invalid parameter not satisfying: %@", @"identifier"}];
  }

  [v7 UTF8String];
  container_create_or_lookup_for_current_user();
  v8 = v7;
  v19 = v8;
  v9 = container_delete();
  v10 = v9 == 21 || v9 == 1;
  if (v9 != 1 && v9 != 21)
  {
    v11 = MEMORY[0x277CCA9B8];
    v20 = *MEMORY[0x277CCA450];
    v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"Moving %@'s app group container out of its live location failed with error: %llu", v8, v9];
    v21[0] = v12;
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:&v20 count:1];
    v14 = [v11 errorWithDomain:@"VCShortcutsObliteratorErrorDomain" code:2 userInfo:v13];

    if (a4)
    {
      v15 = v14;
      *a4 = v14;
    }
  }

  v16 = *MEMORY[0x277D85DE8];
  return v10;
}

void __61__VCShortcutsObliterator_deleteAppGroupWithIdentifier_error___block_invoke(uint64_t a1, uint64_t a2)
{
  v13 = *MEMORY[0x277D85DE8];
  if (a2 != 1 && a2 != 21)
  {
    v4 = getWFObliteratorLogObject();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      v5 = *(a1 + 32);
      v7 = 136315650;
      v8 = "[VCShortcutsObliterator deleteAppGroupWithIdentifier:error:]_block_invoke";
      v9 = 2114;
      v10 = v5;
      v11 = 2048;
      v12 = a2;
      _os_log_impl(&dword_23103C000, v4, OS_LOG_TYPE_FAULT, "%s container_delete for app group %{public}@ failed with error: %llu", &v7, 0x20u);
    }
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (BOOL)deleteKeychainItemsWithError:(id *)a3
{
  v16[2] = *MEMORY[0x277D85DE8];
  v4 = *MEMORY[0x277CDBEC8];
  v15[0] = *MEMORY[0x277CDC228];
  v15[1] = v4;
  v5 = *MEMORY[0x277CFC730];
  v16[0] = *MEMORY[0x277CDC238];
  v16[1] = v5;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:2];
  v7 = SecItemDelete(v6);
  v8 = v7;
  if (v7 != -25300 && v7 != 0)
  {
    v10 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:v7 userInfo:0];
    if (a3)
    {
      v10 = v10;
      *a3 = v10;
    }
  }

  if (v8)
  {
    v11 = v8 == -25300;
  }

  else
  {
    v11 = 1;
  }

  v12 = v11;

  v13 = *MEMORY[0x277D85DE8];
  return v12;
}

- (void)obliterate:(id *)a3
{
  v57 = *MEMORY[0x277D85DE8];
  v5 = getWFObliteratorLogObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v50 = "[VCShortcutsObliterator obliterate:]";
    _os_log_impl(&dword_23103C000, v5, OS_LOG_TYPE_INFO, "%s Starting obliterator", buf, 0xCu);
  }

  v41 = a3;

  v6 = getWFObliteratorLogObject();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v50 = "[VCShortcutsObliterator obliterate:]";
    _os_log_impl(&dword_23103C000, v6, OS_LOG_TYPE_INFO, "%s Unregistering triggers...", buf, 0xCu);
  }

  v7 = [(VCShortcutsObliterator *)self triggerRegistrar];
  [v7 unregisterAllTriggers];

  v8 = getWFObliteratorLogObject();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v50 = "[VCShortcutsObliterator obliterate:]";
    _os_log_impl(&dword_23103C000, v8, OS_LOG_TYPE_INFO, "%s Deleting keychain...", buf, 0xCu);
  }

  v48 = 0;
  v9 = [(VCShortcutsObliterator *)self deleteKeychainItemsWithError:&v48];
  v10 = v48;
  if (v9)
  {
    goto LABEL_12;
  }

  v11 = getWFObliteratorLogObject();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
  {
    *buf = 136315394;
    v50 = "[VCShortcutsObliterator obliterate:]";
    v51 = 2114;
    v52 = v10;
    _os_log_impl(&dword_23103C000, v11, OS_LOG_TYPE_FAULT, "%s Deleting keychain failed with error: %{public}@", buf, 0x16u);
  }

  if (!v10)
  {
LABEL_12:
    v12 = 0;
  }

  else
  {
    v12 = v10;
  }

  v13 = getWFObliteratorLogObject();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v50 = "[VCShortcutsObliterator obliterate:]";
    _os_log_impl(&dword_23103C000, v13, OS_LOG_TYPE_INFO, "%s Deleting app groups...", buf, 0xCu);
  }

  v40 = v10;

  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v14 = *MEMORY[0x277CFC720];
  v55[0] = *MEMORY[0x277CFC6E0];
  v55[1] = v14;
  v55[2] = *MEMORY[0x277CFC728];
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v55 count:3];
  v16 = [v15 countByEnumeratingWithState:&v44 objects:v56 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = 0;
    v19 = *v45;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        v21 = v18;
        if (*v45 != v19)
        {
          objc_enumerationMutation(v15);
        }

        v22 = *(*(&v44 + 1) + 8 * i);
        v43 = v18;
        v23 = [(VCShortcutsObliterator *)self deleteAppGroupWithIdentifier:v22 error:&v43, v40];
        v18 = v43;

        if (!v23)
        {
          v24 = getWFObliteratorLogObject();
          if (os_log_type_enabled(v24, OS_LOG_TYPE_FAULT))
          {
            *buf = 136315650;
            v50 = "[VCShortcutsObliterator obliterate:]";
            v51 = 2112;
            v52 = v22;
            v53 = 2114;
            v54 = v18;
            _os_log_impl(&dword_23103C000, v24, OS_LOG_TYPE_FAULT, "%s Deleting the %@ app group failed with error: %{public}@", buf, 0x20u);
          }

          if (v18)
          {
            v25 = v18;

            v12 = v25;
          }
        }
      }

      v17 = [v15 countByEnumeratingWithState:&v44 objects:v56 count:16];
    }

    while (v17);
  }

  else
  {
    v18 = 0;
  }

  v26 = getWFObliteratorLogObject();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v50 = "[VCShortcutsObliterator obliterate:]";
    _os_log_impl(&dword_23103C000, v26, OS_LOG_TYPE_INFO, "%s Clearing user defaults...", buf, 0xCu);
  }

  v27 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  [v27 removePersistentDomainForName:*MEMORY[0x277D7A348]];

  v28 = getWFObliteratorLogObject();
  if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v50 = "[VCShortcutsObliterator obliterate:]";
    _os_log_impl(&dword_23103C000, v28, OS_LOG_TYPE_INFO, "%s Clearing Siri Vocab...", buf, 0xCu);
  }

  v29 = [MEMORY[0x277CD42E8] sharedVocabulary];
  v30 = objc_opt_new();
  [v29 setVocabularyStrings:v30 ofType:50000];

  v31 = getWFObliteratorLogObject();
  if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v50 = "[VCShortcutsObliterator obliterate:]";
    _os_log_impl(&dword_23103C000, v31, OS_LOG_TYPE_INFO, "%s Deleting data vault...", buf, 0xCu);
  }

  v42 = 0;
  v32 = [(VCShortcutsObliterator *)self deleteDataVaultWithError:&v42];
  v33 = v42;
  if (!v32)
  {
    v34 = getWFObliteratorLogObject();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315394;
      v50 = "[VCShortcutsObliterator obliterate:]";
      v51 = 2114;
      v52 = v33;
      _os_log_impl(&dword_23103C000, v34, OS_LOG_TYPE_FAULT, "%s Deleting data vault failed with error: %{public}@", buf, 0x16u);
    }

    if (v33)
    {
      v35 = v33;

      v12 = v35;
    }
  }

  v36 = getWFObliteratorLogObject();
  if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v50 = "[VCShortcutsObliterator obliterate:]";
    _os_log_impl(&dword_23103C000, v36, OS_LOG_TYPE_INFO, "%s Resetting watch sync...", buf, 0xCu);
  }

  [(VCShortcutsObliterator *)self resetWatchSync];
  v37 = getWFObliteratorLogObject();
  if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v50 = "[VCShortcutsObliterator obliterate:]";
    _os_log_impl(&dword_23103C000, v37, OS_LOG_TYPE_INFO, "%s Finished obliterating", buf, 0xCu);
  }

  if (v41)
  {
    v38 = v12;
    *v41 = v12;
  }

  v39 = *MEMORY[0x277D85DE8];
}

- (VCShortcutsObliterator)initWithTriggerRegistrar:(id)a3 syncDataHandlers:(id)a4
{
  v8 = a3;
  v9 = a4;
  if (!v9)
  {
    v14 = [MEMORY[0x277CCA890] currentHandler];
    [v14 handleFailureInMethod:a2 object:self file:@"VCShortcutsObliterator.m" lineNumber:37 description:{@"Invalid parameter not satisfying: %@", @"syncDataHandlers"}];
  }

  v15.receiver = self;
  v15.super_class = VCShortcutsObliterator;
  v10 = [(VCShortcutsObliterator *)&v15 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_triggerRegistrar, a3);
    objc_storeStrong(&v11->_syncDataHandlers, a4);
    v12 = v11;
  }

  return v11;
}

@end