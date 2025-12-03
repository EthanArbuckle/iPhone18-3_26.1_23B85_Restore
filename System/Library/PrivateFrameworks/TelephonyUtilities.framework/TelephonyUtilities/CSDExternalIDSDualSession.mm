@interface CSDExternalIDSDualSession
- (unint64_t)initialLinkType;
- (void)acceptInvitationWithData:(id)data;
- (void)sendInvitationWithData:(id)data;
- (void)sessionProvider:(id)provider receivedInvitationAcceptFromID:(id)d withData:(id)data;
@end

@implementation CSDExternalIDSDualSession

- (unint64_t)initialLinkType
{
  sessionProvider = [(CSDIDSDualSession *)self sessionProvider];
  initialLinkType = [sessionProvider initialLinkType];

  return initialLinkType;
}

- (void)sendInvitationWithData:(id)data
{
  dataCopy = data;
  v5 = sub_100004778();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = @"non-nil";
    if (!dataCopy)
    {
      v6 = @"nil";
    }

    v7 = 138412546;
    selfCopy = self;
    v9 = 2112;
    v10 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "self: %@ data: %@", &v7, 0x16u);
  }

  [(CSDIDSDualSession *)self _sendInvitationWithData:dataCopy declineOnError:0 alwaysSendData:0];
}

- (void)acceptInvitationWithData:(id)data
{
  dataCopy = data;
  v5 = sub_100004778();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = @"non-nil";
    if (!dataCopy)
    {
      v6 = @"nil";
    }

    v7 = 138412546;
    selfCopy = self;
    v9 = 2112;
    v10 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "self: %@ data: %@", &v7, 0x16u);
  }

  [(CSDIDSDualSession *)self _acceptInvitationWithData:dataCopy alwaysSendData:0];
}

- (void)sessionProvider:(id)provider receivedInvitationAcceptFromID:(id)d withData:(id)data
{
  providerCopy = provider;
  dCopy = d;
  dataCopy = data;
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
    [(CSDExternalIDSDualSession *)self setRemoteFromID:dCopy];
    v12.receiver = self;
    v12.super_class = CSDExternalIDSDualSession;
    [(CSDIDSDualSession *)&v12 sessionProvider:providerCopy receivedInvitationAcceptFromID:dCopy withData:dataCopy];
  }
}

@end