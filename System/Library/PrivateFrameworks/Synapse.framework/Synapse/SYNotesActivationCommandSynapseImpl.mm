@interface SYNotesActivationCommandSynapseImpl
+ (void)_activateWithActivity:(id)activity completion:(id)completion;
+ (void)activateWithDomainIdentifier:(id)identifier noteIdentifier:(id)noteIdentifier completion:(id)completion;
@end

@implementation SYNotesActivationCommandSynapseImpl

+ (void)activateWithDomainIdentifier:(id)identifier noteIdentifier:(id)noteIdentifier completion:(id)completion
{
  v17[1] = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v9 = 0;
  if (identifier && noteIdentifier)
  {
    v17[0] = identifier;
    v10 = MEMORY[0x277CBEA60];
    noteIdentifierCopy = noteIdentifier;
    identifierCopy = identifier;
    v13 = [v10 arrayWithObjects:v17 count:1];
    v16 = noteIdentifierCopy;
    v14 = [MEMORY[0x277CBEA60] arrayWithObjects:&v16 count:1];

    v9 = SYMakeEditNoteUserActivity(v13, v14);
  }

  [self _activateWithActivity:v9 completion:completionCopy];

  v15 = *MEMORY[0x277D85DE8];
}

+ (void)_activateWithActivity:(id)activity completion:(id)completion
{
  activityCopy = activity;
  completionCopy = completion;
  if (SYIsPhone() && (SYIsQuickNoteOnPhoneEnabled() & 1) != 0)
  {
    v7 = objc_alloc_init(SYNotesActivationClient);
    [(SYNotesActivationClient *)v7 activateNotesWithUserActivity:activityCopy completion:completionCopy];
LABEL_8:

    goto LABEL_9;
  }

  v8 = os_log_create("com.apple.synapse", "");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    [SYNotesActivationCommandSynapseImpl _activateWithActivity:v8 completion:?];
  }

  if (completionCopy)
  {
    v7 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.synapse" code:-127 userInfo:0];
    completionCopy[2](completionCopy, v7);
    goto LABEL_8;
  }

LABEL_9:
}

@end