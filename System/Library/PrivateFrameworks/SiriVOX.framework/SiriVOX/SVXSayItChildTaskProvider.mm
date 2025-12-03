@interface SVXSayItChildTaskProvider
- (id)createWithCommand:(id)command taskTracker:(id)tracker listenAfterSpeakingDisabled:(BOOL)disabled;
@end

@implementation SVXSayItChildTaskProvider

- (id)createWithCommand:(id)command taskTracker:(id)tracker listenAfterSpeakingDisabled:(BOOL)disabled
{
  commandCopy = command;
  trackerCopy = tracker;
  v9 = mach_absolute_time();
  context = [trackerCopy context];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __87__SVXSayItChildTaskProvider_createWithCommand_taskTracker_listenAfterSpeakingDisabled___block_invoke;
  v15[3] = &unk_279C66DF0;
  v16 = commandCopy;
  v17 = v9;
  disabledCopy = disabled;
  v11 = commandCopy;
  v12 = [context mutatedCopyWithMutator:v15];

  v13 = [trackerCopy beginChildWithContext:v12];

  return v13;
}

void __87__SVXSayItChildTaskProvider_createWithCommand_taskTracker_listenAfterSpeakingDisabled___block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  [v3 setTimestamp:*(a1 + 40)];
  v4 = [*(a1 + 32) dialogIdentifier];
  [v3 setDialogIdentifier:v4];

  v5 = [*(a1 + 32) listenAfterSpeaking];
  v6 = [v5 BOOLValue];

  if (v6)
  {
    if (*(a1 + 48) != 1)
    {
      v8 = 1;
      goto LABEL_7;
    }

    v7 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
    {
      v11 = 136315138;
      v12 = "[SVXSayItChildTaskProvider createWithCommand:taskTracker:listenAfterSpeakingDisabled:]_block_invoke";
      _os_log_impl(&dword_2695B9000, v7, OS_LOG_TYPE_DEFAULT, "%s Overriding listenAfterSpeaking due to defaults", &v11, 0xCu);
    }
  }

  v8 = 0;
LABEL_7:
  [v3 setListensAfterSpeaking:v8];
  v9 = [*(a1 + 32) listenAfterSpeakingBehavior];
  [v3 setListenAfterSpeakingBehavior:v9];

  v10 = *MEMORY[0x277D85DE8];
}

@end