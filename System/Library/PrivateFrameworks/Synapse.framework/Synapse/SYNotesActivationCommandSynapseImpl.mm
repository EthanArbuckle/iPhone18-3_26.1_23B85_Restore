@interface SYNotesActivationCommandSynapseImpl
+ (void)_activateWithActivity:(id)a3 completion:(id)a4;
+ (void)activateWithDomainIdentifier:(id)a3 noteIdentifier:(id)a4 completion:(id)a5;
@end

@implementation SYNotesActivationCommandSynapseImpl

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
  if (SYIsPhone() && (SYIsQuickNoteOnPhoneEnabled() & 1) != 0)
  {
    v7 = objc_alloc_init(SYNotesActivationClient);
    [(SYNotesActivationClient *)v7 activateNotesWithUserActivity:v5 completion:v6];
LABEL_8:

    goto LABEL_9;
  }

  v8 = os_log_create("com.apple.synapse", "");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    [SYNotesActivationCommandSynapseImpl _activateWithActivity:v8 completion:?];
  }

  if (v6)
  {
    v7 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.synapse" code:-127 userInfo:0];
    v6[2](v6, v7);
    goto LABEL_8;
  }

LABEL_9:
}

@end