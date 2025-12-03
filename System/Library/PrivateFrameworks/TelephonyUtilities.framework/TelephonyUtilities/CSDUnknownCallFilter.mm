@interface CSDUnknownCallFilter
- (BOOL)isSilenceUnknownFaceTimeCallersEnabled;
- (BOOL)isSilenceUnknownTelephonyCallersEnabled;
- (BOOL)shouldFilterIncomingCall:(id)call from:(id)from;
- (CSDUnknownCallFilter)initWithFeatureFlags:(id)flags;
- (int64_t)maxJunkLevel;
@end

@implementation CSDUnknownCallFilter

- (CSDUnknownCallFilter)initWithFeatureFlags:(id)flags
{
  flagsCopy = flags;
  v9.receiver = self;
  v9.super_class = CSDUnknownCallFilter;
  v6 = [(CSDUnknownCallFilter *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_featureFlags, flags);
  }

  return v7;
}

- (BOOL)isSilenceUnknownTelephonyCallersEnabled
{
  v3 = +[NSUserDefaults tu_defaults];
  silenceUnknownCallersEnabled = [v3 silenceUnknownCallersEnabled];

  v5 = sub_100004778();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412546;
    selfCopy = self;
    v9 = 1024;
    v10 = silenceUnknownCallersEnabled;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%@ isSilenceUnknownCallersEnabled(Telephony): %d", &v7, 0x12u);
  }

  return silenceUnknownCallersEnabled;
}

- (BOOL)isSilenceUnknownFaceTimeCallersEnabled
{
  v3 = +[NSUserDefaults tu_defaults];
  silenceUnknownFaceTimeCallersEnabled = [v3 silenceUnknownFaceTimeCallersEnabled];

  v5 = sub_100004778();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412546;
    selfCopy = self;
    v9 = 1024;
    v10 = silenceUnknownFaceTimeCallersEnabled;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%@ isSilenceUnknownFaceTimeCallersEnabled: %d", &v7, 0x12u);
  }

  return silenceUnknownFaceTimeCallersEnabled;
}

- (int64_t)maxJunkLevel
{
  v3 = +[NSUserDefaults tu_defaults];
  maxJunkLevel = [v3 maxJunkLevel];

  v5 = sub_100004778();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412546;
    selfCopy = self;
    v9 = 2048;
    v10 = maxJunkLevel;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%@ maxJunkLevel: %ld", &v7, 0x16u);
  }

  return maxJunkLevel;
}

- (BOOL)shouldFilterIncomingCall:(id)call from:(id)from
{
  callCopy = call;
  fromCopy = from;
  if (([fromCopy isSystemProvider] & 1) == 0)
  {
    v11 = sub_100004778();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      uUID = [callCopy UUID];
      v33 = 138412290;
      selfCopy3 = uUID;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Not a system call; call filter will allow update with identifier %@", &v33, 0xCu);
    }

    goto LABEL_9;
  }

  isSilenceUnknownTelephonyCallersEnabled = [(CSDUnknownCallFilter *)self isSilenceUnknownTelephonyCallersEnabled];
  isSilenceUnknownFaceTimeCallersEnabled = [(CSDUnknownCallFilter *)self isSilenceUnknownFaceTimeCallersEnabled];
  v10 = sub_100004778();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v33 = 138413058;
    selfCopy3 = self;
    v35 = 2112;
    v36 = callCopy;
    v37 = 1024;
    *v38 = isSilenceUnknownTelephonyCallersEnabled;
    *&v38[4] = 1024;
    *&v38[6] = isSilenceUnknownFaceTimeCallersEnabled;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%@ shouldFilterIncoming update=%@ isSilenceUnknownTelephonyCallersEnabled=%d isSilenceUnknownFaceTimeCallersEnabled=%d", &v33, 0x22u);
  }

  if ([fromCopy isTelephonyProvider] & isSilenceUnknownTelephonyCallersEnabled)
  {
    isSilenceUnknownTelephonyCallersEnabled = 1;
    goto LABEL_18;
  }

  if (![fromCopy isFaceTimeProvider])
  {
    isSilenceUnknownTelephonyCallersEnabled = 0;
    goto LABEL_18;
  }

  v14 = +[TUCallCenter sharedInstance];
  conversationManager = [v14 conversationManager];
  participantGroupUUID = [callCopy participantGroupUUID];
  v17 = [conversationManager activeConversationWithGroupUUID:participantGroupUUID];

  if (v17)
  {
    provider = [v17 provider];
    isDefaultProvider = [provider isDefaultProvider];

    if (!isDefaultProvider)
    {

LABEL_9:
      v13 = 0;
      goto LABEL_39;
    }
  }

  if (([callCopy hasVideo] & 1) != 0 || (-[TUFeatureFlags uplevelFTAEnabled](self->_featureFlags, "uplevelFTAEnabled") & 1) == 0)
  {
    isSilenceUnknownTelephonyCallersEnabled = isSilenceUnknownFaceTimeCallersEnabled;
  }

LABEL_18:
  remoteHandle = [callCopy remoteHandle];
  value = [remoteHandle value];
  v22 = [value length];

  if (!v22)
  {
    v25 = sub_100004778();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      v33 = 138412546;
      selfCopy3 = self;
      v35 = 2112;
      v36 = callCopy;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "%@ update does not have a valid handle, by definition this is an unknown caller update %@", &v33, 0x16u);
    }

    goto LABEL_24;
  }

  if ([(CSDUnknownCallFilter *)self isUnknownCaller:callCopy])
  {
LABEL_24:
    isKnownCaller = [callCopy isKnownCaller];
    v23 = 1;
    goto LABEL_25;
  }

  v23 = 0;
  isKnownCaller = 1;
LABEL_25:
  [callCopy setIsKnownCaller:isKnownCaller];
  if ([(TUFeatureFlags *)self->_featureFlags communicationTrustAdoption])
  {
    v26 = [callCopy commTrustScore] == 1;
  }

  else
  {
    maxJunkLevel = [(CSDUnknownCallFilter *)self maxJunkLevel];
    v26 = [callCopy junkConfidence] > maxJunkLevel;
  }

  v28 = sub_100004778();
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
  {
    v29 = @"NO";
    v33 = 138413314;
    selfCopy3 = self;
    if (v23)
    {
      v30 = @"YES";
    }

    else
    {
      v30 = @"NO";
    }

    v35 = 2112;
    v36 = callCopy;
    if (isSilenceUnknownTelephonyCallersEnabled)
    {
      v31 = @"YES";
    }

    else
    {
      v31 = @"NO";
    }

    v37 = 2112;
    if (v26)
    {
      v29 = @"YES";
    }

    *v38 = v30;
    *&v38[8] = 2112;
    v39 = v31;
    v40 = 2112;
    v41 = v29;
    _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "%@ shouldFilterIncoming update=%@ unknownCaller=%@ maybeSilenceCall=%@ isJunk=%@", &v33, 0x34u);
  }

  v13 = v23 & (isSilenceUnknownTelephonyCallersEnabled | v26);
LABEL_39:

  return v13;
}

@end