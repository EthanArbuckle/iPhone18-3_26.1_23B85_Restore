@interface SRCSCommandRecognizer
- (SRCSCommandRecognizer)initWithCommandRecognitionSystem:(id)a3 commandIdentifiers:(id)a4;
- (SRCSCommandRecognizer)initWithCommandRecognitionSystem:(id)a3 spokenCommands:(id)a4;
- (id)commandRecognitionSystem;
@end

@implementation SRCSCommandRecognizer

- (SRCSCommandRecognizer)initWithCommandRecognitionSystem:(id)a3 commandIdentifiers:(id)a4
{
  v30 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = objc_opt_new();
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v9 = v7;
  v10 = [v9 countByEnumeratingWithState:&v23 objects:v29 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v24;
    while (2)
    {
      v13 = 0;
      do
      {
        if (*v24 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v23 + 1) + 8 * v13);
        v15 = [SRCSSpokenCommand alloc];
        v16 = [(SRCSSpokenCommand *)v15 initWithIdentifier:v14, v23];
        if (!v16)
        {
          v19 = SRCSLogGeneral();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v28 = v14;
            _os_log_impl(&dword_26B44D000, v19, OS_LOG_TYPE_DEFAULT, "Error, could not create command %@!", buf, 0xCu);
          }

          v18 = 0;
          goto LABEL_13;
        }

        v17 = v16;
        [v8 addObject:v16];

        ++v13;
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v23 objects:v29 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }
  }

  self = [(SRCSCommandRecognizer *)self initWithCommandRecognitionSystem:v6 spokenCommands:v8];
  v18 = self;
LABEL_13:
  v20 = v18;

  v21 = *MEMORY[0x277D85DE8];
  return v20;
}

- (SRCSCommandRecognizer)initWithCommandRecognitionSystem:(id)a3 spokenCommands:(id)a4
{
  v26 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v24.receiver = self;
  v24.super_class = SRCSCommandRecognizer;
  v8 = [(SRCSCommandRecognizer *)&v24 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_commandRecognitionSystem, v6);
    objc_storeStrong(&v9->_spokenCommands, a4);
    if (initWithCommandRecognitionSystem_spokenCommands__staticInitialization != -1)
    {
      [SRCSCommandRecognizer initWithCommandRecognitionSystem:spokenCommands:];
    }

    [v6 addRecognizer:v9];
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v10 = v9->_spokenCommands;
    v11 = [(NSArray *)v10 countByEnumeratingWithState:&v20 objects:v25 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v21;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v21 != v13)
          {
            objc_enumerationMutation(v10);
          }

          [*(*(&v20 + 1) + 8 * i) setCommandRecognizer:v9];
        }

        v12 = [(NSArray *)v10 countByEnumeratingWithState:&v20 objects:v25 count:16];
      }

      while (v12);
    }

    v15 = dispatch_get_global_queue(9, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __73__SRCSCommandRecognizer_initWithCommandRecognitionSystem_spokenCommands___block_invoke_2;
    block[3] = &unk_279CF53B0;
    v19 = v9;
    dispatch_async(v15, block);
  }

  v16 = *MEMORY[0x277D85DE8];
  return v9;
}

void __73__SRCSCommandRecognizer_initWithCommandRecognitionSystem_spokenCommands___block_invoke_2(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 16));
  if (WeakRetained)
  {
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v3 = [*(a1 + 32) spokenCommands];
    v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v11;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v11 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = [*(*(&v10 + 1) + 8 * i) fstGrammar];
        }

        v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v5);
    }
  }

  else
  {
    v3 = SRCSLogGeneral();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      __73__SRCSCommandRecognizer_initWithCommandRecognitionSystem_spokenCommands___block_invoke_2_cold_1(v3);
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (id)commandRecognitionSystem
{
  WeakRetained = objc_loadWeakRetained(&self->_commandRecognitionSystem);

  return WeakRetained;
}

@end