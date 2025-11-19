@interface SBStreamBuddySession
- (SBStreamBuddySession)init;
- (SBStreamBuddySessionDelegate)delegate;
- (void)advertiser:(id)a3 didNotStartAdvertisingPeer:(id)a4;
- (void)advertiser:(id)a3 didReceiveInvitationFromPeer:(id)a4 withContext:(id)a5 invitationHandler:(id)a6;
- (void)sendSystemApertureStateDump:(id)a3;
- (void)session:(id)a3 didFinishReceivingResourceWithName:(id)a4 fromPeer:(id)a5 atURL:(id)a6 withError:(id)a7;
- (void)session:(id)a3 didReceiveData:(id)a4 fromPeer:(id)a5;
- (void)session:(id)a3 didReceiveStream:(id)a4 withName:(id)a5 fromPeer:(id)a6;
- (void)session:(id)a3 didStartReceivingResourceWithName:(id)a4 fromPeer:(id)a5 withProgress:(id)a6;
- (void)session:(id)a3 peer:(id)a4 didChangeState:(int64_t)a5;
- (void)start;
- (void)stop;
@end

@implementation SBStreamBuddySession

- (SBStreamBuddySession)init
{
  v11.receiver = self;
  v11.super_class = SBStreamBuddySession;
  v2 = [(SBStreamBuddySession *)&v11 init];
  if (v2)
  {
    v3 = objc_alloc(MEMORY[0x277CD7BA8]);
    v4 = [MEMORY[0x277D75418] currentDevice];
    v5 = [v4 name];
    v6 = [v3 initWithDisplayName:v5];
    myPeerID = v2->_myPeerID;
    v2->_myPeerID = v6;

    v8 = [objc_alloc(MEMORY[0x277CD7BB0]) initWithPeer:v2->_myPeerID securityIdentity:0 encryptionPreference:1];
    session = v2->_session;
    v2->_session = v8;

    [(MCSession *)v2->_session setDelegate:v2];
  }

  return v2;
}

- (void)start
{
  v3 = [objc_alloc(MEMORY[0x277CD7B98]) initWithPeer:self->_myPeerID discoveryInfo:0 serviceType:@"StreamBuddy"];
  advertiser = self->_advertiser;
  self->_advertiser = v3;

  [(MCNearbyServiceAdvertiser *)self->_advertiser setDelegate:self];
  [(MCNearbyServiceAdvertiser *)self->_advertiser startAdvertisingPeer];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained streamBuddySession:self connectionState:0 withError:0];

  v6 = SBLogStreamBuddy();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_21ED4E000, v6, OS_LOG_TYPE_DEFAULT, "[SBStreamBuddySession start]", v7, 2u);
  }
}

- (void)stop
{
  [(MCNearbyServiceAdvertiser *)self->_advertiser stopAdvertisingPeer];
  [(MCSession *)self->_session disconnect];
  advertiser = self->_advertiser;
  self->_advertiser = 0;

  connectedPeer = self->_connectedPeer;
  self->_connectedPeer = 0;

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained streamBuddySession:self connectionState:1 withError:0];

  v6 = SBLogStreamBuddy();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_21ED4E000, v6, OS_LOG_TYPE_DEFAULT, "[SBStreamBuddySession stop]", v7, 2u);
  }
}

- (void)sendSystemApertureStateDump:(id)a3
{
  v18[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = v4;
  if (self->_connectedPeer)
  {
    v6 = MEMORY[0x277CCAAA0];
    v18[0] = v4;
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:1];
    v17 = 0;
    v8 = [v6 dataWithJSONObject:v7 options:0 error:&v17];
    v9 = v17;

    if (v8)
    {
      session = self->_session;
      p_session = &self->_session;
      v12 = [(MCSession *)session connectedPeers];
      v16 = v9;
      v13 = [(MCSession *)session sendData:v8 toPeers:v12 withMode:0 error:&v16];
      v14 = v16;

      if (v13)
      {
LABEL_12:

        goto LABEL_13;
      }

      v15 = SBLogStreamBuddy();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        [(SBStreamBuddySession *)p_session sendSystemApertureStateDump:v14, v15];
      }

      v9 = v14;
    }

    else
    {
      v15 = SBLogStreamBuddy();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        [SBStreamBuddySession sendSystemApertureStateDump:v15];
      }
    }

    v14 = v9;
    goto LABEL_12;
  }

  v14 = SBLogStreamBuddy();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    [SBStreamBuddySession sendSystemApertureStateDump:v14];
  }

LABEL_13:
}

- (void)advertiser:(id)a3 didReceiveInvitationFromPeer:(id)a4 withContext:(id)a5 invitationHandler:(id)a6
{
  v18 = *MEMORY[0x277D85DE8];
  v9 = a4;
  v10 = a6;
  v11 = SBLogStreamBuddy();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = NSStringFromSelector(a2);
    v13 = [v9 displayName];
    v14 = 138412546;
    v15 = v12;
    v16 = 2112;
    v17 = v13;
    _os_log_impl(&dword_21ED4E000, v11, OS_LOG_TYPE_DEFAULT, "%@ peerID.displayName:%@", &v14, 0x16u);
  }

  v10[2](v10, 1, self->_session);
}

- (void)advertiser:(id)a3 didNotStartAdvertisingPeer:(id)a4
{
  v14 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = SBLogStreamBuddy();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = NSStringFromSelector(a2);
    v10 = 138412546;
    v11 = v8;
    v12 = 2112;
    v13 = v6;
    _os_log_impl(&dword_21ED4E000, v7, OS_LOG_TYPE_DEFAULT, "%@ Error:%@", &v10, 0x16u);
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained streamBuddySession:self connectionState:5 withError:v6];
}

- (void)session:(id)a3 peer:(id)a4 didChangeState:(int64_t)a5
{
  v8 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v10 = WeakRetained;
  if (WeakRetained)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __52__SBStreamBuddySession_session_peer_didChangeState___block_invoke;
    block[3] = &unk_2783AB9B8;
    v15 = a5;
    v12 = WeakRetained;
    v13 = self;
    v14 = v8;
    v16 = a2;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }
}

void __52__SBStreamBuddySession_session_peer_didChangeState___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 56);
  switch(v2)
  {
    case 0:
      [*(a1 + 32) streamBuddySession:*(a1 + 40) connectionState:4 withError:0];
      v7 = *(a1 + 40);
      v8 = *(v7 + 16);
      *(v7 + 16) = 0;

      v3 = SBLogStreamBuddy();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        v9 = NSStringFromSelector(*(a1 + 64));
        v10 = 138412290;
        v11 = v9;
        _os_log_impl(&dword_21ED4E000, v3, OS_LOG_TYPE_DEFAULT, "%@ state:MCSessionStateNotConnected", &v10, 0xCu);
      }

      break;
    case 1:
      [*(a1 + 32) streamBuddySession:*(a1 + 40) connectionState:3 withError:0];
      v3 = SBLogStreamBuddy();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        v4 = NSStringFromSelector(*(a1 + 64));
        v5 = [*(*(a1 + 40) + 16) displayName];
        v10 = 138412546;
        v11 = v4;
        v12 = 2112;
        v13 = v5;
        v6 = "%@ state:MCSessionStateConnecting to %@";
        goto LABEL_8;
      }

      break;
    case 2:
      [*(a1 + 32) streamBuddySession:*(a1 + 40) connectionState:2 withError:0];
      objc_storeStrong((*(a1 + 40) + 16), *(a1 + 48));
      v3 = SBLogStreamBuddy();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        v4 = NSStringFromSelector(*(a1 + 64));
        v5 = [*(*(a1 + 40) + 16) displayName];
        v10 = 138412546;
        v11 = v4;
        v12 = 2112;
        v13 = v5;
        v6 = "%@ state:MCSessionStateConnected to %@";
LABEL_8:
        _os_log_impl(&dword_21ED4E000, v3, OS_LOG_TYPE_DEFAULT, v6, &v10, 0x16u);
      }

      break;
    default:
      return;
  }
}

- (void)session:(id)a3 didReceiveData:(id)a4 fromPeer:(id)a5
{
  v13 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = SBLogStreamBuddy();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = NSStringFromSelector(a2);
    v9 = 138412546;
    v10 = v8;
    v11 = 2112;
    v12 = v6;
    _os_log_impl(&dword_21ED4E000, v7, OS_LOG_TYPE_DEFAULT, "%@ %@", &v9, 0x16u);
  }
}

- (void)session:(id)a3 didReceiveStream:(id)a4 withName:(id)a5 fromPeer:(id)a6
{
  v14 = *MEMORY[0x277D85DE8];
  v7 = a5;
  v8 = SBLogStreamBuddy();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = NSStringFromSelector(a2);
    v10 = 138412546;
    v11 = v9;
    v12 = 2112;
    v13 = v7;
    _os_log_impl(&dword_21ED4E000, v8, OS_LOG_TYPE_DEFAULT, "%@ %@", &v10, 0x16u);
  }
}

- (void)session:(id)a3 didStartReceivingResourceWithName:(id)a4 fromPeer:(id)a5 withProgress:(id)a6
{
  v14 = *MEMORY[0x277D85DE8];
  v7 = a4;
  v8 = SBLogStreamBuddy();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = NSStringFromSelector(a2);
    v10 = 138412546;
    v11 = v9;
    v12 = 2112;
    v13 = v7;
    _os_log_impl(&dword_21ED4E000, v8, OS_LOG_TYPE_DEFAULT, "%@ %@", &v10, 0x16u);
  }
}

- (void)session:(id)a3 didFinishReceivingResourceWithName:(id)a4 fromPeer:(id)a5 atURL:(id)a6 withError:(id)a7
{
  v15 = *MEMORY[0x277D85DE8];
  v8 = a4;
  v9 = SBLogStreamBuddy();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = NSStringFromSelector(a2);
    v11 = 138412546;
    v12 = v10;
    v13 = 2112;
    v14 = v8;
    _os_log_impl(&dword_21ED4E000, v9, OS_LOG_TYPE_DEFAULT, "%@ %@", &v11, 0x16u);
  }
}

- (SBStreamBuddySessionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)sendSystemApertureStateDump:(NSObject *)a3 .cold.1(id *a1, uint64_t a2, NSObject *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = [*a1 connectedPeers];
  v6 = [v5 firstObject];
  v7 = [v6 displayName];
  v8 = 138412546;
  v9 = v7;
  v10 = 2112;
  v11 = a2;
  _os_log_error_impl(&dword_21ED4E000, a3, OS_LOG_TYPE_ERROR, "ERROR: Failed to send data to %@ with error: %@", &v8, 0x16u);
}

@end