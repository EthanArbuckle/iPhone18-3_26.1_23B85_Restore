@interface CSDIDSDualSession
- (CSDIDSDualSession)init;
- (CSDIDSDualSession)initWithSessionProvider:(id)a3 isInitiator:(BOOL)a4 remoteProtocolVersion:(id)a5;
- (CSDIDSDualSessionDelegate)delegate;
- (CSDIDSTransport)transport;
- (double)invitationTimeout;
- (id)propertiesDescription;
- (int)remoteProtocolVersion;
- (int64_t)underlyingErrorCode;
- (void)_acceptInvitationWithData:(id)a3 alwaysSendData:(BOOL)a4;
- (void)_cancelInvitationWithData:(id)a3 reason:(int)a4 alwaysSendData:(BOOL)a5;
- (void)_declineInvitationWithData:(id)a3 alwaysSendData:(BOOL)a4;
- (void)acceptInvitation;
- (void)cancelInvitation;
- (void)declineInvitation;
- (void)end;
- (void)reconnectSession;
- (void)sendData:(id)a3;
- (void)sendInvitation;
- (void)sessionProvider:(id)a3 endedWithReason:(unsigned int)a4 error:(id)a5;
- (void)sessionProvider:(id)a3 receivedInvitationAcceptFromID:(id)a4 withData:(id)a5;
- (void)sessionProvider:(id)a3 receivedInvitationCancelFromID:(id)a4 withData:(id)a5;
- (void)sessionProvider:(id)a3 receivedInvitationDeclineFromID:(id)a4 withData:(id)a5;
- (void)sessionProvider:(id)a3 receivedSessionMessageFromID:(id)a4 withData:(id)a5;
- (void)sessionProviderStarted:(id)a3;
- (void)setInvitationTimeout:(double)a3;
- (void)setState:(int)a3;
@end

@implementation CSDIDSDualSession

- (CSDIDSDualSession)init
{
  v4 = +[NSAssertionHandler currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"CSDIDSDualSession.m" lineNumber:31 description:{@"%s is not available. Use a designated initializer instead.", "-[CSDIDSDualSession init]"}];

  return 0;
}

- (CSDIDSDualSession)initWithSessionProvider:(id)a3 isInitiator:(BOOL)a4 remoteProtocolVersion:(id)a5
{
  v9 = a3;
  v10 = a5;
  v14.receiver = self;
  v14.super_class = CSDIDSDualSession;
  v11 = [(CSDIDSSession *)&v14 initWithSessionProvider:v9];
  v12 = v11;
  if (v11)
  {
    v11->_state = 1;
    objc_storeStrong(&v11->_sessionProvider, a3);
    [(CSDIDSDualSessionProvider *)v12->_sessionProvider setDelegate:v12];
    [(CSDIDSDualSessionProvider *)v12->_sessionProvider setAudioEnabled:0];
    v12->_initiator = a4;
    objc_storeStrong(&v12->_remoteProtocolVersionNumber, a5);
  }

  return v12;
}

- (id)propertiesDescription
{
  v9.receiver = self;
  v9.super_class = CSDIDSDualSession;
  v3 = [(CSDIDSSession *)&v9 propertiesDescription];
  v4 = [(CSDIDSDualSession *)self isInitiator];
  v5 = [(CSDIDSDualSession *)self state];
  v6 = [(CSDIDSDualSession *)self remoteProtocolVersionNumber];
  v7 = [NSString stringWithFormat:@"%@ isInitiator=%d state=%d remoteProtocolVersion=%@>", v3, v4, v5, v6];

  return v7;
}

- (int64_t)underlyingErrorCode
{
  v2 = [(CSDIDSDualSession *)self sessionProvider];
  v3 = [v2 endedReason];

  return v3;
}

- (int)remoteProtocolVersion
{
  v2 = [(CSDIDSDualSession *)self remoteProtocolVersionNumber];
  v3 = [v2 intValue];

  return v3;
}

- (void)setState:(int)a3
{
  if (self->_state < a3)
  {
    self->_state = a3;
    if (a3 == 3)
    {
      [(CSDIDSDualSession *)self setHasStartedConnecting:1];
      [(CSDIDSDualSession *)self setHasConnected:1];
    }

    else if (a3 == 2)
    {
      [(CSDIDSDualSession *)self setHasStartedConnecting:1];
    }

    v5 = +[NSNotificationCenter defaultCenter];
    [v5 postNotificationName:@"CSDIDSDualSessionStateChangedNotification" object:self];
  }
}

- (CSDIDSTransport)transport
{
  v3 = [(CSDIDSDualSession *)self sessionProvider];
  v4 = [v3 shouldUseSocketForTransport];

  v5 = [CSDIDSTransport alloc];
  v6 = [(CSDIDSDualSession *)self sessionProvider];
  v7 = v6;
  if (v4)
  {
    v8 = -[CSDIDSTransport initWithSocket:](v5, "initWithSocket:", [v6 socket]);
  }

  else
  {
    v9 = [v6 destination];
    v8 = [(CSDIDSTransport *)v5 initWithDestination:v9];
  }

  v10 = [(CSDIDSDualSession *)self sessionProvider];
  -[CSDIDSTransport setInitialLinkType:](v8, "setInitialLinkType:", [v10 initialLinkType]);

  return v8;
}

- (double)invitationTimeout
{
  v2 = [(CSDIDSDualSession *)self sessionProvider];
  v3 = [v2 invitationTimeout];

  return v3;
}

- (void)setInvitationTimeout:(double)a3
{
  v3 = a3;
  v4 = [(CSDIDSDualSession *)self sessionProvider];
  [v4 setInvitationTimeout:v3];
}

- (void)sendData:(id)a3
{
  v4 = a3;
  v5 = sub_100004778();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = self;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "sendData self: %@", &v9, 0xCu);
  }

  v6 = [(CSDIDSDualSession *)self state];
  if (v6 - 1 < 3)
  {
    v7 = sub_100004778();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138412290;
      v10 = self;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Session %@ is connected. Sending data", &v9, 0xCu);
    }

    v8 = [(CSDIDSDualSession *)self sessionProvider];
    [v8 sendData:v4];
LABEL_10:

    goto LABEL_11;
  }

  if (v6 - 4 < 2)
  {
    v8 = sub_100004778();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138412290;
      v10 = self;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Session %@ is ending/ended. Dropping data on the floor", &v9, 0xCu);
    }

    goto LABEL_10;
  }

LABEL_11:
}

- (void)sendInvitation
{
  v3 = sub_100004778();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 138412290;
    v5 = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "sendInvitation self: %@", &v4, 0xCu);
  }

  [(CSDIDSDualSession *)self _sendInvitationWithData:0 declineOnError:0 alwaysSendData:0];
}

- (void)acceptInvitation
{
  v3 = sub_100004778();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 138412290;
    v5 = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "acceptInvitation self: %@", &v4, 0xCu);
  }

  [(CSDIDSDualSession *)self _acceptInvitationWithData:0 alwaysSendData:0];
}

- (void)_acceptInvitationWithData:(id)a3 alwaysSendData:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(CSDIDSDualSession *)self state];
  if (v7 - 2 >= 4)
  {
    if (v7 == 1)
    {
      v8 = sub_100004778();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v11 = 138412290;
        v12 = self;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Session %@ is waiting. Accepting invitation", &v11, 0xCu);
      }

      [(CSDIDSDualSession *)self setState:2];
      v9 = [(CSDIDSDualSession *)self sessionProvider];
      [v9 acceptInvitationWithData:v6];
    }
  }

  else if (v6 && v4)
  {
    [(CSDIDSDualSession *)self sendData:v6];
  }

  else
  {
    v10 = sub_100004778();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138412290;
      v12 = self;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Session %@ is not waiting. Not accepting invitation", &v11, 0xCu);
    }
  }
}

- (void)cancelInvitation
{
  v3 = sub_100004778();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 138412290;
    v5 = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "cancelInvitation self: %@", &v4, 0xCu);
  }

  [(CSDIDSDualSession *)self _cancelInvitationWithData:0 reason:0 alwaysSendData:0];
}

- (void)_cancelInvitationWithData:(id)a3 reason:(int)a4 alwaysSendData:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = [(CSDIDSDualSession *)self state];
  if (v9 - 2 >= 4)
  {
    if (v9 != 1)
    {
      goto LABEL_26;
    }

    v10 = sub_100004778();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v18 = 138412290;
      v19 = self;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Session %@ is waiting. Canceling invitation", &v18, 0xCu);
    }

    [(CSDIDSDualSession *)self setState:4];
    if (v8)
    {
      if (a4)
      {
        v11 = sub_100004778();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v18) = 0;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "[WARN] Asked to cancel invitation with non-nil data and a concrete cancel reason, but that combination is unsupported", &v18, 2u);
        }
      }

      v12 = [(CSDIDSDualSession *)self sessionProvider];
      v13 = v12;
      v14 = v8;
LABEL_14:
      [v12 cancelInvitationWithData:v14];
LABEL_25:

      goto LABEL_26;
    }

    if (a4 == 2)
    {
      v16 = [(CSDIDSDualSession *)self sessionProvider];
      v13 = v16;
      v17 = 30;
    }

    else
    {
      if (a4 != 1)
      {
        if (a4)
        {
          goto LABEL_26;
        }

        v12 = [(CSDIDSDualSession *)self sessionProvider];
        v13 = v12;
        v14 = 0;
        goto LABEL_14;
      }

      v16 = [(CSDIDSDualSession *)self sessionProvider];
      v13 = v16;
      v17 = 29;
    }

    [v16 cancelInvitationWithRemoteEndedReasonOverride:v17];
    goto LABEL_25;
  }

  if (v8 && v5)
  {
    [(CSDIDSDualSession *)self sendData:v8];
  }

  else
  {
    v15 = sub_100004778();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v18 = 138412290;
      v19 = self;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Session %@ is not waiting. Not canceling invitation", &v18, 0xCu);
    }
  }

LABEL_26:
}

- (void)declineInvitation
{
  v3 = sub_100004778();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 138412290;
    v5 = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "declineInvitation self: %@", &v4, 0xCu);
  }

  [(CSDIDSDualSession *)self _declineInvitationWithData:0 alwaysSendData:0];
}

- (void)_declineInvitationWithData:(id)a3 alwaysSendData:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(CSDIDSDualSession *)self state];
  if (v7 - 2 >= 4)
  {
    if (v7 == 1)
    {
      v8 = sub_100004778();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v11 = 138412290;
        v12 = self;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Session %@ is waiting. Declining invitation", &v11, 0xCu);
      }

      [(CSDIDSDualSession *)self setState:4];
      v9 = [(CSDIDSDualSession *)self sessionProvider];
      [v9 declineInvitationWithData:v6];
    }
  }

  else if (v6 && v4)
  {
    [(CSDIDSDualSession *)self sendData:v6];
  }

  else
  {
    v10 = sub_100004778();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138412290;
      v12 = self;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Session %@ is not waiting. Not declining invitation", &v11, 0xCu);
    }
  }
}

- (void)reconnectSession
{
  v3 = sub_100004778();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412290;
    v6 = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "reconnectSession self: %@", &v5, 0xCu);
  }

  v4 = [(CSDIDSDualSession *)self sessionProvider];
  [v4 reconnectSession];
}

- (void)end
{
  v3 = sub_100004778();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412290;
    v6 = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "end self: %@", &v5, 0xCu);
  }

  [(CSDIDSDualSession *)self setState:4];
  v4 = [(CSDIDSDualSession *)self sessionProvider];
  [v4 end];
}

- (void)sessionProviderStarted:(id)a3
{
  v4 = a3;
  v5 = sub_100004778();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v4 shouldUseSocketForTransport];
    v7 = [v4 socket];
    v8 = [v4 destination];
    v10 = 138413058;
    v11 = self;
    v12 = 1024;
    v13 = v6;
    v14 = 1024;
    v15 = v7;
    v16 = 2112;
    v17 = v8;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Session %@ started (shouldUseSocketForTransport: %d socket: %d, destination: %@)", &v10, 0x22u);
  }

  [(CSDIDSDualSession *)self setState:3];
  v9 = [(CSDIDSDualSession *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v9 sessionStarted:self];
  }
}

- (void)sessionProvider:(id)a3 endedWithReason:(unsigned int)a4 error:(id)a5
{
  v7 = a5;
  v8 = sub_100004778();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *v14 = 138412802;
    *&v14[4] = self;
    *&v14[12] = 1024;
    *&v14[14] = a4;
    *&v14[18] = 2112;
    *&v14[20] = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Session %@ ended with reason %d: %@", v14, 0x1Cu);
  }

  [(CSDIDSDualSession *)self setState:5];
  switch(a4)
  {
    case 0u:
    case 0xBu:
      v9 = sub_100004778();
      if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_19;
      }

      *v14 = 138412546;
      *&v14[4] = self;
      *&v14[12] = 1024;
      *&v14[14] = a4;
      goto LABEL_18;
    case 1u:
    case 6u:
    case 8u:
    case 9u:
    case 0xAu:
    case 0xEu:
    case 0x10u:
    case 0x11u:
    case 0x12u:
    case 0x13u:
    case 0x14u:
    case 0x15u:
    case 0x16u:
    case 0x17u:
    case 0x18u:
    case 0x19u:
    case 0x1Au:
    case 0x1Bu:
    case 0x1Cu:
    case 0x1Fu:
    case 0x20u:
    case 0x21u:
    case 0x22u:
    case 0x23u:
    case 0x24u:
    case 0x25u:
    case 0x26u:
    case 0x27u:
    case 0x28u:
    case 0x29u:
    case 0x2Au:
    case 0x2Bu:
    case 0x2Cu:
    case 0x2Du:
      v9 = sub_100004778();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_100474B84();
      }

      v10 = 6;
      goto LABEL_7;
    case 2u:
    case 7u:
    case 0xCu:
      v9 = sub_100004778();
      if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_12;
      }

      *v14 = 138412546;
      *&v14[4] = self;
      *&v14[12] = 1024;
      *&v14[14] = a4;
      goto LABEL_11;
    case 3u:
    case 4u:
      v9 = sub_100004778();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *v14 = 138412546;
        *&v14[4] = self;
        *&v14[12] = 1024;
        *&v14[14] = a4;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Session %@ appears to have ended with an unanswered reason: %d", v14, 0x12u);
      }

      v10 = 4;
      goto LABEL_7;
    case 5u:
      v12 = [(CSDIDSDualSession *)self isInitiator];
      v9 = sub_100004778();
      v13 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
      if (v12)
      {
        if (v13)
        {
          *v14 = 138412546;
          *&v14[4] = self;
          *&v14[12] = 1024;
          *&v14[14] = 5;
LABEL_18:
          _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Session %@ appears to have ended with a local hangup reason: %d", v14, 0x12u);
        }

LABEL_19:
        v10 = 0;
      }

      else
      {
        if (v13)
        {
          *v14 = 138412546;
          *&v14[4] = self;
          *&v14[12] = 1024;
          *&v14[14] = 5;
LABEL_11:
          _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Session %@ appears to have ended with a remote hangup reason: %d", v14, 0x12u);
        }

LABEL_12:
        v10 = 1;
      }

LABEL_7:

LABEL_8:
      [(CSDIDSDualSession *)self setEndedReason:v10, *v14, *&v14[16]];
      v11 = [(CSDIDSDualSession *)self delegate];
      [v11 session:self endedWithReason:{-[CSDIDSDualSession endedReason](self, "endedReason")}];

      return;
    case 0xDu:
    case 0xFu:
      v9 = sub_100004778();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_100474B1C();
      }

      v10 = 5;
      goto LABEL_7;
    case 0x1Du:
      v9 = sub_100004778();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *v14 = 138412546;
        *&v14[4] = self;
        *&v14[12] = 1024;
        *&v14[14] = 29;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Session %@ appears to have ended with an accepted elsewhere reason: %d", v14, 0x12u);
      }

      v10 = 2;
      goto LABEL_7;
    case 0x1Eu:
      v9 = sub_100004778();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *v14 = 138412546;
        *&v14[4] = self;
        *&v14[12] = 1024;
        *&v14[14] = 30;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Session %@ appears to have ended with a declined elsewhere reason: %d", v14, 0x12u);
      }

      v10 = 3;
      goto LABEL_7;
    default:
      v10 = 1;
      goto LABEL_8;
  }
}

- (void)sessionProvider:(id)a3 receivedInvitationAcceptFromID:(id)a4 withData:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = sub_100004778();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412546;
    v12 = self;
    v13 = 2112;
    v14 = v7;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Received invitation ACCEPT with data for session %@ from %@", &v11, 0x16u);
  }

  v10 = [(CSDIDSDualSession *)self delegate];
  [v10 session:self receivedInvitationAcceptWithData:v8];
}

- (void)sessionProvider:(id)a3 receivedInvitationCancelFromID:(id)a4 withData:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = sub_100004778();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412546;
    v12 = self;
    v13 = 2112;
    v14 = v7;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Received invitation CANCEL with data for session %@ from %@", &v11, 0x16u);
  }

  v10 = [(CSDIDSDualSession *)self delegate];
  [v10 session:self receivedInvitationCancelWithData:v8];
}

- (void)sessionProvider:(id)a3 receivedInvitationDeclineFromID:(id)a4 withData:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = sub_100004778();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412546;
    v12 = self;
    v13 = 2112;
    v14 = v7;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Received invitation DECLINE with data for session %@ from %@", &v11, 0x16u);
  }

  v10 = [(CSDIDSDualSession *)self delegate];
  [v10 session:self receivedInvitationDeclineWithData:v8];
}

- (void)sessionProvider:(id)a3 receivedSessionMessageFromID:(id)a4 withData:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = sub_100004778();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412546;
    v12 = self;
    v13 = 2112;
    v14 = v7;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Received session MESSAGE for session %@ from %@", &v11, 0x16u);
  }

  v10 = [(CSDIDSDualSession *)self delegate];
  [v10 session:self receivedData:v8];
}

- (CSDIDSDualSessionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end