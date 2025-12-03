@interface VTPhraseSpotterControlRemote
- (VTPhraseSpotterControlRemote)initWithDelegate:(id)delegate;
- (void)remoteConnection:(id)connection handleMessageType:(unint64_t)type completion:(id)completion;
@end

@implementation VTPhraseSpotterControlRemote

- (void)remoteConnection:(id)connection handleMessageType:(unint64_t)type completion:(id)completion
{
  v19 = *MEMORY[0x277D85DE8];
  v7 = [VTPreferences sharedPreferences:connection];
  voiceTriggerEnabled = [v7 voiceTriggerEnabled];

  if (voiceTriggerEnabled)
  {
    v9 = VTLogContextFacilityVoiceTrigger;
    if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_INFO))
    {
      v10 = MEMORY[0x277CCABB0];
      v11 = v9;
      v12 = [v10 numberWithUnsignedInteger:type];
      v17 = 138543362;
      v18 = v12;
      _os_log_impl(&dword_223A31000, v11, OS_LOG_TYPE_INFO, "Remote received incoming IDS message: %{public}@", &v17, 0xCu);
    }

    if (type <= 1)
    {
      if (type)
      {
        if (type != 1)
        {
          return;
        }

        WeakRetained = objc_loadWeakRetained(&self->_delegate);
        v13 = WeakRetained;
        selfCopy2 = self;
        v16 = 0;
      }

      else
      {
        WeakRetained = objc_loadWeakRetained(&self->_delegate);
        v13 = WeakRetained;
        selfCopy2 = self;
        v16 = 1;
      }

      [WeakRetained phraseSpotterControl:selfCopy2 didUpdateEnabled:v16];
    }

    else
    {
      switch(type)
      {
        case 2uLL:
          v13 = objc_loadWeakRetained(&self->_delegate);
          [v13 phraseSpotterControlDidReceiveEarlyDetect:self];
          break;
        case 3uLL:
          v13 = objc_loadWeakRetained(&self->_delegate);
          [v13 phraseSpotterControlDidReceiveTrigger:self];
          break;
        case 4uLL:
          v13 = objc_loadWeakRetained(&self->_delegate);
          [v13 phraseSpotterControlDidReceiveDismissal:self];
          break;
        default:
          return;
      }
    }
  }
}

- (VTPhraseSpotterControlRemote)initWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v11.receiver = self;
  v11.super_class = VTPhraseSpotterControlRemote;
  v5 = [(VTPhraseSpotterControlRemote *)&v11 init];
  if (v5)
  {
    v6 = dispatch_queue_create("VTPhraseSpotterControlRemote", 0);
    queue = v5->_queue;
    v5->_queue = v6;

    objc_storeWeak(&v5->_delegate, delegateCopy);
    v8 = [[VTPeerRemoteConnection alloc] initWithServiceIdentifier:@"com.apple.private.alloy.siri.phrasespotter"];
    peerConnection = v5->_peerConnection;
    v5->_peerConnection = v8;

    [(VTPeerRemoteConnection *)v5->_peerConnection setDelegate:v5];
  }

  return v5;
}

@end