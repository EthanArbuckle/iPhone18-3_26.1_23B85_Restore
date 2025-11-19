@interface SYNotesActivationCommandSBImpl
+ (void)_activateWithActivity:(id)a3 completion:(id)a4;
+ (void)activateWithDomainIdentifier:(id)a3 noteIdentifier:(id)a4 completion:(id)a5;
@end

@implementation SYNotesActivationCommandSBImpl

+ (void)activateWithDomainIdentifier:(id)a3 noteIdentifier:(id)a4 completion:(id)a5
{
  v17[1] = *MEMORY[0x277D85DE8];
  v8 = a5;
  v9 = 0;
  if (a3 && a4)
  {
    v17[0] = a3;
    v10 = MEMORY[0x277CBEA60];
    v11 = a4;
    v12 = a3;
    v13 = [v10 arrayWithObjects:v17 count:1];
    v16 = v11;
    v14 = [MEMORY[0x277CBEA60] arrayWithObjects:&v16 count:1];

    v9 = SYMakeEditNoteUserActivity(v13, v14);
  }

  [a1 _activateWithActivity:v9 completion:v8];

  v15 = *MEMORY[0x277D85DE8];
}

+ (void)_activateWithActivity:(id)a3 completion:(id)a4
{
  v5 = a3;
  v6 = a4;
  v20 = 0;
  v21 = &v20;
  v22 = 0x2050000000;
  v7 = getSBSSystemNotesPresentationConfigurationClass_softClass_0;
  v23 = getSBSSystemNotesPresentationConfigurationClass_softClass_0;
  if (!getSBSSystemNotesPresentationConfigurationClass_softClass_0)
  {
    v15 = MEMORY[0x277D85DD0];
    v16 = 3221225472;
    v17 = __getSBSSystemNotesPresentationConfigurationClass_block_invoke_0;
    v18 = &unk_27856B3C8;
    v19 = &v20;
    __getSBSSystemNotesPresentationConfigurationClass_block_invoke_0(&v15);
    v7 = v21[3];
  }

  v8 = v7;
  _Block_object_dispose(&v20, 8);
  v9 = [[v7 alloc] initWithSceneBundleIdentifier:@"com.apple.mobilenotes" userActivity:v5 preferredPresentationMode:0];
  v20 = 0;
  v21 = &v20;
  v22 = 0x2050000000;
  v10 = getSBSSystemNotesPresentationRequestClass_softClass;
  v23 = getSBSSystemNotesPresentationRequestClass_softClass;
  if (!getSBSSystemNotesPresentationRequestClass_softClass)
  {
    v15 = MEMORY[0x277D85DD0];
    v16 = 3221225472;
    v17 = __getSBSSystemNotesPresentationRequestClass_block_invoke;
    v18 = &unk_27856B3C8;
    v19 = &v20;
    __getSBSSystemNotesPresentationRequestClass_block_invoke(&v15);
    v10 = v21[3];
  }

  v11 = v10;
  _Block_object_dispose(&v20, 8);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __67__SYNotesActivationCommandSBImpl__activateWithActivity_completion___block_invoke;
  v13[3] = &unk_27856B4C0;
  v14 = v6;
  v12 = v6;
  [v10 performPresentationWithConfiguration:v9 completion:v13];
}

void __67__SYNotesActivationCommandSBImpl__activateWithActivity_completion___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = os_log_create("com.apple.synapse", "");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 138412290;
      v8 = v3;
      _os_log_impl(&dword_225901000, v4, OS_LOG_TYPE_DEFAULT, "Error received requesting backlink indicator: %@", &v7, 0xCu);
    }
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, v3);
  }

  v6 = *MEMORY[0x277D85DE8];
}

@end