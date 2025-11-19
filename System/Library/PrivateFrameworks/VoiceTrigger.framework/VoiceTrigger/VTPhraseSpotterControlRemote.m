@interface VTPhraseSpotterControlRemote
- (VTPhraseSpotterControlRemote)initWithDelegate:(id)a3;
- (void)remoteConnection:(id)a3 handleMessageType:(unint64_t)a4 completion:(id)a5;
@end

@implementation VTPhraseSpotterControlRemote

- (void)remoteConnection:(id)a3 handleMessageType:(unint64_t)a4 completion:(id)a5
{
  v19 = *MEMORY[0x277D85DE8];
  v7 = [VTPreferences sharedPreferences:a3];
  v8 = [v7 voiceTriggerEnabled];

  if (v8)
  {
    v9 = VTLogContextFacilityVoiceTrigger;
    if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_INFO))
    {
      v10 = MEMORY[0x277CCABB0];
      v11 = v9;
      v12 = [v10 numberWithUnsignedInteger:a4];
      v17 = 138543362;
      v18 = v12;
      _os_log_impl(&dword_223A31000, v11, OS_LOG_TYPE_INFO, "Remote received incoming IDS message: %{public}@", &v17, 0xCu);
    }

    if (a4 <= 1)
    {
      if (a4)
      {
        if (a4 != 1)
        {
          return;
        }

        WeakRetained = objc_loadWeakRetained(&self->_delegate);
        v13 = WeakRetained;
        v15 = self;
        v16 = 0;
      }

      else
      {
        WeakRetained = objc_loadWeakRetained(&self->_delegate);
        v13 = WeakRetained;
        v15 = self;
        v16 = 1;
      }

      [WeakRetained phraseSpotterControl:v15 didUpdateEnabled:v16];
    }

    else
    {
      switch(a4)
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

- (VTPhraseSpotterControlRemote)initWithDelegate:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = VTPhraseSpotterControlRemote;
  v5 = [(VTPhraseSpotterControlRemote *)&v11 init];
  if (v5)
  {
    v6 = dispatch_queue_create("VTPhraseSpotterControlRemote", 0);
    queue = v5->_queue;
    v5->_queue = v6;

    objc_storeWeak(&v5->_delegate, v4);
    v8 = [[VTPeerRemoteConnection alloc] initWithServiceIdentifier:@"com.apple.private.alloy.siri.phrasespotter"];
    peerConnection = v5->_peerConnection;
    v5->_peerConnection = v8;

    [(VTPeerRemoteConnection *)v5->_peerConnection setDelegate:v5];
  }

  return v5;
}

@end