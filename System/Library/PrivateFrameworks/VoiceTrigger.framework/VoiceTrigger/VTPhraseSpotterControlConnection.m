@interface VTPhraseSpotterControlConnection
- (VTPhraseSpotterControlConnection)init;
- (void)remoteConnection:(id)a3 handleMessageType:(unint64_t)a4 completion:(id)a5;
- (void)updateRemotePhraseSpotterEnabled:(BOOL)a3;
@end

@implementation VTPhraseSpotterControlConnection

- (void)remoteConnection:(id)a3 handleMessageType:(unint64_t)a4 completion:(id)a5
{
  v12 = *MEMORY[0x277D85DE8];
  v6 = VTLogContextFacilityVoiceTrigger;
  if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_DEFAULT))
  {
    v7 = MEMORY[0x277CCABB0];
    v8 = v6;
    v9 = [v7 numberWithUnsignedInteger:a4];
    v10 = 138543362;
    v11 = v9;
    _os_log_impl(&dword_223A31000, v8, OS_LOG_TYPE_DEFAULT, "Connection received incoming IDS message: {%{public}@} - dropping it on the floor.", &v10, 0xCu);
  }
}

- (void)updateRemotePhraseSpotterEnabled:(BOOL)a3
{
  v3 = a3;
  v11 = *MEMORY[0x277D85DE8];
  v8 = +[VTPreferences sharedPreferences];
  if ([v8 voiceTriggerEnabled])
  {
    remotePhraseSpotterEnabled = self->_remotePhraseSpotterEnabled;

    if (remotePhraseSpotterEnabled != v3)
    {
      v6 = VTLogContextFacilityVoiceTrigger;
      if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_DEFAULT))
      {
        v7 = @"disabled";
        if (v3)
        {
          v7 = @"enabled";
        }

        *buf = 138543362;
        v10 = v7;
        _os_log_impl(&dword_223A31000, v6, OS_LOG_TYPE_DEFAULT, "Notifying connection that remote phrase spotter should be %{public}@", buf, 0xCu);
      }

      self->_remotePhraseSpotterEnabled = v3;
      [(VTPeerRemoteConnection *)self->_peerConnection sendRequestType:v3 ^ 1u nonWaking:1];
    }
  }

  else
  {
  }
}

- (VTPhraseSpotterControlConnection)init
{
  v9.receiver = self;
  v9.super_class = VTPhraseSpotterControlConnection;
  v2 = [(VTPhraseSpotterControlConnection *)&v9 init];
  v3 = v2;
  if (v2)
  {
    v2->_remotePhraseSpotterEnabled = 1;
    v4 = dispatch_queue_create("VTPhraseSpotterControlConnection", 0);
    queue = v3->_queue;
    v3->_queue = v4;

    v6 = [[VTPeerRemoteConnection alloc] initWithServiceIdentifier:@"com.apple.private.alloy.siri.phrasespotter" requireNearbyPeer:1];
    peerConnection = v3->_peerConnection;
    v3->_peerConnection = v6;

    [(VTPeerRemoteConnection *)v3->_peerConnection setDelegate:v3];
  }

  return v3;
}

@end