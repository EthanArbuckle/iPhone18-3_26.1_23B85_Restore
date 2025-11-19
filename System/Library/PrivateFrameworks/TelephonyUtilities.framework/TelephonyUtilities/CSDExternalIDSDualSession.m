@interface CSDExternalIDSDualSession
- (unint64_t)initialLinkType;
- (void)acceptInvitationWithData:(id)a3;
- (void)sendInvitationWithData:(id)a3;
- (void)sessionProvider:(id)a3 receivedInvitationAcceptFromID:(id)a4 withData:(id)a5;
@end

@implementation CSDExternalIDSDualSession

- (unint64_t)initialLinkType
{
  v2 = [(CSDIDSDualSession *)self sessionProvider];
  v3 = [v2 initialLinkType];

  return v3;
}

- (void)sendInvitationWithData:(id)a3
{
  v4 = a3;
  v5 = sub_100004778();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = @"non-nil";
    if (!v4)
    {
      v6 = @"nil";
    }

    v7 = 138412546;
    v8 = self;
    v9 = 2112;
    v10 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "self: %@ data: %@", &v7, 0x16u);
  }

  [(CSDIDSDualSession *)self _sendInvitationWithData:v4 declineOnError:0 alwaysSendData:0];
}

- (void)acceptInvitationWithData:(id)a3
{
  v4 = a3;
  v5 = sub_100004778();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = @"non-nil";
    if (!v4)
    {
      v6 = @"nil";
    }

    v7 = 138412546;
    v8 = self;
    v9 = 2112;
    v10 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "self: %@ data: %@", &v7, 0x16u);
  }

  [(CSDIDSDualSession *)self _acceptInvitationWithData:v4 alwaysSendData:0];
}

- (void)sessionProvider:(id)a3 receivedInvitationAcceptFromID:(id)a4 withData:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([(CSDExternalIDSDualSession *)self receivedInvitationAccept])
  {
    v11 = sub_100004778();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "[WARN] Ignoring invitation accept since we have previously processed one.", buf, 2u);
    }
  }

  else
  {
    [(CSDExternalIDSDualSession *)self setReceivedInvitationAccept:1];
    [(CSDExternalIDSDualSession *)self setRemoteFromID:v9];
    v12.receiver = self;
    v12.super_class = CSDExternalIDSDualSession;
    [(CSDIDSDualSession *)&v12 sessionProvider:v8 receivedInvitationAcceptFromID:v9 withData:v10];
  }
}

@end