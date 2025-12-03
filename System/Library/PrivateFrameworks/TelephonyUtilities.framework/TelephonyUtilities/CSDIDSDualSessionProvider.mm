@interface CSDIDSDualSessionProvider
- (BOOL)isAudioEnabled;
- (BOOL)shouldUseSocketForTransport;
- (CSDIDSDualSessionProvider)initWithSession:(id)session queue:(id)queue;
- (CSDIDSDualSessionProviderDelegate)delegate;
- (NSString)UUID;
- (NSString)description;
- (NSString)destination;
- (int)socket;
- (int64_t)invitationTimeout;
- (unint64_t)initialLinkType;
- (unsigned)endedReason;
- (void)acceptInvitationWithData:(id)data;
- (void)cancelInvitationWithData:(id)data;
- (void)declineInvitationWithData:(id)data;
- (void)end;
- (void)reconnectSession;
- (void)sendData:(id)data;
- (void)sendData:(id)data toDestinations:(id)destinations;
- (void)session:(id)session didReceiveReport:(id)report;
- (void)session:(id)session receivedInvitationAcceptFromID:(id)d withData:(id)data;
- (void)session:(id)session receivedInvitationCancelFromID:(id)d withData:(id)data;
- (void)session:(id)session receivedInvitationDeclineFromID:(id)d withData:(id)data;
- (void)session:(id)session receivedSessionMessageFromID:(id)d withData:(id)data;
- (void)sessionStarted:(id)started;
- (void)setInvitationTimeout:(int64_t)timeout;
- (void)setPreferences:(id)preferences;
- (void)setStreamPreferences:(id)preferences;
@end

@implementation CSDIDSDualSessionProvider

- (CSDIDSDualSessionProvider)initWithSession:(id)session queue:(id)queue
{
  sessionCopy = session;
  queueCopy = queue;
  v12.receiver = self;
  v12.super_class = CSDIDSDualSessionProvider;
  v9 = [(CSDIDSDualSessionProvider *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_session, session);
    [(IDSSession *)v10->_session setDelegate:v10 queue:queueCopy];
  }

  return v10;
}

- (NSString)description
{
  session = [(CSDIDSDualSessionProvider *)self session];
  v3 = [session description];

  return v3;
}

- (unsigned)endedReason
{
  session = [(CSDIDSDualSessionProvider *)self session];
  sessionEndedReason = [session sessionEndedReason];

  return sessionEndedReason;
}

- (NSString)UUID
{
  session = [(CSDIDSDualSessionProvider *)self session];
  sessionID = [session sessionID];

  return sessionID;
}

- (BOOL)shouldUseSocketForTransport
{
  session = [(CSDIDSDualSessionProvider *)self session];
  shouldUseSocketForTransport = [session shouldUseSocketForTransport];

  return shouldUseSocketForTransport;
}

- (int)socket
{
  session = [(CSDIDSDualSessionProvider *)self session];
  socket = [session socket];

  return socket;
}

- (NSString)destination
{
  session = [(CSDIDSDualSessionProvider *)self session];
  destination = [session destination];

  return destination;
}

- (unint64_t)initialLinkType
{
  session = [(CSDIDSDualSessionProvider *)self session];
  initialLinkType = [session initialLinkType];

  return initialLinkType;
}

- (BOOL)isAudioEnabled
{
  session = [(CSDIDSDualSessionProvider *)self session];
  isAudioEnabled = [session isAudioEnabled];

  return isAudioEnabled;
}

- (int64_t)invitationTimeout
{
  session = [(CSDIDSDualSessionProvider *)self session];
  invitationTimeOut = [session invitationTimeOut];

  return invitationTimeOut;
}

- (void)setInvitationTimeout:(int64_t)timeout
{
  session = [(CSDIDSDualSessionProvider *)self session];
  [session setInvitationTimeOut:timeout];
}

- (void)setPreferences:(id)preferences
{
  preferencesCopy = preferences;
  v5 = sub_100004778();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = preferencesCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "preferences: %@", &v7, 0xCu);
  }

  session = [(CSDIDSDualSessionProvider *)self session];
  [session setPreferences:preferencesCopy];
}

- (void)setStreamPreferences:(id)preferences
{
  preferencesCopy = preferences;
  v5 = sub_100004778();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = preferencesCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "streamPreferences: %@", &v7, 0xCu);
  }

  session = [(CSDIDSDualSessionProvider *)self session];
  [session setStreamPreferences:preferencesCopy];
}

- (void)sendData:(id)data
{
  dataCopy = data;
  session = [(CSDIDSDualSessionProvider *)self session];
  [session sendSessionMessage:dataCopy];
}

- (void)sendData:(id)data toDestinations:(id)destinations
{
  destinationsCopy = destinations;
  dataCopy = data;
  session = [(CSDIDSDualSessionProvider *)self session];
  [session sendSessionMessage:dataCopy toDestinations:destinationsCopy];
}

- (void)acceptInvitationWithData:(id)data
{
  dataCopy = data;
  session = [(CSDIDSDualSessionProvider *)self session];
  [session acceptInvitationWithData:dataCopy];
}

- (void)cancelInvitationWithData:(id)data
{
  dataCopy = data;
  session = [(CSDIDSDualSessionProvider *)self session];
  [session cancelInvitationWithData:dataCopy];
}

- (void)declineInvitationWithData:(id)data
{
  dataCopy = data;
  session = [(CSDIDSDualSessionProvider *)self session];
  [session declineInvitationWithData:dataCopy];
}

- (void)reconnectSession
{
  session = [(CSDIDSDualSessionProvider *)self session];
  [session reconnectSession];
}

- (void)end
{
  session = [(CSDIDSDualSessionProvider *)self session];
  [session endSession];
}

- (void)sessionStarted:(id)started
{
  delegate = [(CSDIDSDualSessionProvider *)self delegate];
  [delegate sessionProviderStarted:self];
}

- (void)session:(id)session didReceiveReport:(id)report
{
  reportCopy = report;
  sessionCopy = session;
  v7 = [NSUUID alloc];
  sessionID = [sessionCopy sessionID];

  v10 = [v7 initWithUUIDString:sessionID];
  v9 = +[CSDReportingController sharedInstance];
  [v9 idsReportsReceived:reportCopy forSessionWithUUID:v10];
}

- (void)session:(id)session receivedSessionMessageFromID:(id)d withData:(id)data
{
  dataCopy = data;
  dCopy = d;
  delegate = [(CSDIDSDualSessionProvider *)self delegate];
  [delegate sessionProvider:self receivedSessionMessageFromID:dCopy withData:dataCopy];
}

- (void)session:(id)session receivedInvitationAcceptFromID:(id)d withData:(id)data
{
  dataCopy = data;
  dCopy = d;
  delegate = [(CSDIDSDualSessionProvider *)self delegate];
  [delegate sessionProvider:self receivedInvitationAcceptFromID:dCopy withData:dataCopy];
}

- (void)session:(id)session receivedInvitationCancelFromID:(id)d withData:(id)data
{
  dataCopy = data;
  dCopy = d;
  delegate = [(CSDIDSDualSessionProvider *)self delegate];
  [delegate sessionProvider:self receivedInvitationCancelFromID:dCopy withData:dataCopy];
}

- (void)session:(id)session receivedInvitationDeclineFromID:(id)d withData:(id)data
{
  dataCopy = data;
  dCopy = d;
  delegate = [(CSDIDSDualSessionProvider *)self delegate];
  [delegate sessionProvider:self receivedInvitationDeclineFromID:dCopy withData:dataCopy];
}

- (CSDIDSDualSessionProviderDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end