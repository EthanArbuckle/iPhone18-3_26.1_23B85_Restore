@interface CSDIDSDualSessionProvider
- (BOOL)isAudioEnabled;
- (BOOL)shouldUseSocketForTransport;
- (CSDIDSDualSessionProvider)initWithSession:(id)a3 queue:(id)a4;
- (CSDIDSDualSessionProviderDelegate)delegate;
- (NSString)UUID;
- (NSString)description;
- (NSString)destination;
- (int)socket;
- (int64_t)invitationTimeout;
- (unint64_t)initialLinkType;
- (unsigned)endedReason;
- (void)acceptInvitationWithData:(id)a3;
- (void)cancelInvitationWithData:(id)a3;
- (void)declineInvitationWithData:(id)a3;
- (void)end;
- (void)reconnectSession;
- (void)sendData:(id)a3;
- (void)sendData:(id)a3 toDestinations:(id)a4;
- (void)session:(id)a3 didReceiveReport:(id)a4;
- (void)session:(id)a3 receivedInvitationAcceptFromID:(id)a4 withData:(id)a5;
- (void)session:(id)a3 receivedInvitationCancelFromID:(id)a4 withData:(id)a5;
- (void)session:(id)a3 receivedInvitationDeclineFromID:(id)a4 withData:(id)a5;
- (void)session:(id)a3 receivedSessionMessageFromID:(id)a4 withData:(id)a5;
- (void)sessionStarted:(id)a3;
- (void)setInvitationTimeout:(int64_t)a3;
- (void)setPreferences:(id)a3;
- (void)setStreamPreferences:(id)a3;
@end

@implementation CSDIDSDualSessionProvider

- (CSDIDSDualSessionProvider)initWithSession:(id)a3 queue:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = CSDIDSDualSessionProvider;
  v9 = [(CSDIDSDualSessionProvider *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_session, a3);
    [(IDSSession *)v10->_session setDelegate:v10 queue:v8];
  }

  return v10;
}

- (NSString)description
{
  v2 = [(CSDIDSDualSessionProvider *)self session];
  v3 = [v2 description];

  return v3;
}

- (unsigned)endedReason
{
  v2 = [(CSDIDSDualSessionProvider *)self session];
  v3 = [v2 sessionEndedReason];

  return v3;
}

- (NSString)UUID
{
  v2 = [(CSDIDSDualSessionProvider *)self session];
  v3 = [v2 sessionID];

  return v3;
}

- (BOOL)shouldUseSocketForTransport
{
  v2 = [(CSDIDSDualSessionProvider *)self session];
  v3 = [v2 shouldUseSocketForTransport];

  return v3;
}

- (int)socket
{
  v2 = [(CSDIDSDualSessionProvider *)self session];
  v3 = [v2 socket];

  return v3;
}

- (NSString)destination
{
  v2 = [(CSDIDSDualSessionProvider *)self session];
  v3 = [v2 destination];

  return v3;
}

- (unint64_t)initialLinkType
{
  v2 = [(CSDIDSDualSessionProvider *)self session];
  v3 = [v2 initialLinkType];

  return v3;
}

- (BOOL)isAudioEnabled
{
  v2 = [(CSDIDSDualSessionProvider *)self session];
  v3 = [v2 isAudioEnabled];

  return v3;
}

- (int64_t)invitationTimeout
{
  v2 = [(CSDIDSDualSessionProvider *)self session];
  v3 = [v2 invitationTimeOut];

  return v3;
}

- (void)setInvitationTimeout:(int64_t)a3
{
  v4 = [(CSDIDSDualSessionProvider *)self session];
  [v4 setInvitationTimeOut:a3];
}

- (void)setPreferences:(id)a3
{
  v4 = a3;
  v5 = sub_100004778();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "preferences: %@", &v7, 0xCu);
  }

  v6 = [(CSDIDSDualSessionProvider *)self session];
  [v6 setPreferences:v4];
}

- (void)setStreamPreferences:(id)a3
{
  v4 = a3;
  v5 = sub_100004778();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "streamPreferences: %@", &v7, 0xCu);
  }

  v6 = [(CSDIDSDualSessionProvider *)self session];
  [v6 setStreamPreferences:v4];
}

- (void)sendData:(id)a3
{
  v4 = a3;
  v5 = [(CSDIDSDualSessionProvider *)self session];
  [v5 sendSessionMessage:v4];
}

- (void)sendData:(id)a3 toDestinations:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(CSDIDSDualSessionProvider *)self session];
  [v8 sendSessionMessage:v7 toDestinations:v6];
}

- (void)acceptInvitationWithData:(id)a3
{
  v4 = a3;
  v5 = [(CSDIDSDualSessionProvider *)self session];
  [v5 acceptInvitationWithData:v4];
}

- (void)cancelInvitationWithData:(id)a3
{
  v4 = a3;
  v5 = [(CSDIDSDualSessionProvider *)self session];
  [v5 cancelInvitationWithData:v4];
}

- (void)declineInvitationWithData:(id)a3
{
  v4 = a3;
  v5 = [(CSDIDSDualSessionProvider *)self session];
  [v5 declineInvitationWithData:v4];
}

- (void)reconnectSession
{
  v2 = [(CSDIDSDualSessionProvider *)self session];
  [v2 reconnectSession];
}

- (void)end
{
  v2 = [(CSDIDSDualSessionProvider *)self session];
  [v2 endSession];
}

- (void)sessionStarted:(id)a3
{
  v4 = [(CSDIDSDualSessionProvider *)self delegate];
  [v4 sessionProviderStarted:self];
}

- (void)session:(id)a3 didReceiveReport:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [NSUUID alloc];
  v8 = [v6 sessionID];

  v10 = [v7 initWithUUIDString:v8];
  v9 = +[CSDReportingController sharedInstance];
  [v9 idsReportsReceived:v5 forSessionWithUUID:v10];
}

- (void)session:(id)a3 receivedSessionMessageFromID:(id)a4 withData:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = [(CSDIDSDualSessionProvider *)self delegate];
  [v9 sessionProvider:self receivedSessionMessageFromID:v8 withData:v7];
}

- (void)session:(id)a3 receivedInvitationAcceptFromID:(id)a4 withData:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = [(CSDIDSDualSessionProvider *)self delegate];
  [v9 sessionProvider:self receivedInvitationAcceptFromID:v8 withData:v7];
}

- (void)session:(id)a3 receivedInvitationCancelFromID:(id)a4 withData:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = [(CSDIDSDualSessionProvider *)self delegate];
  [v9 sessionProvider:self receivedInvitationCancelFromID:v8 withData:v7];
}

- (void)session:(id)a3 receivedInvitationDeclineFromID:(id)a4 withData:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = [(CSDIDSDualSessionProvider *)self delegate];
  [v9 sessionProvider:self receivedInvitationDeclineFromID:v8 withData:v7];
}

- (CSDIDSDualSessionProviderDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end