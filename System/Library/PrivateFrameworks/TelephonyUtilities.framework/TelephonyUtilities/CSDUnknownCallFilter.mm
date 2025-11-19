@interface CSDUnknownCallFilter
- (BOOL)isSilenceUnknownFaceTimeCallersEnabled;
- (BOOL)isSilenceUnknownTelephonyCallersEnabled;
- (BOOL)shouldFilterIncomingCall:(id)a3 from:(id)a4;
- (CSDUnknownCallFilter)initWithFeatureFlags:(id)a3;
- (int64_t)maxJunkLevel;
@end

@implementation CSDUnknownCallFilter

- (CSDUnknownCallFilter)initWithFeatureFlags:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = CSDUnknownCallFilter;
  v6 = [(CSDUnknownCallFilter *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_featureFlags, a3);
  }

  return v7;
}

- (BOOL)isSilenceUnknownTelephonyCallersEnabled
{
  v3 = +[NSUserDefaults tu_defaults];
  v4 = [v3 silenceUnknownCallersEnabled];

  v5 = sub_100004778();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412546;
    v8 = self;
    v9 = 1024;
    v10 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%@ isSilenceUnknownCallersEnabled(Telephony): %d", &v7, 0x12u);
  }

  return v4;
}

- (BOOL)isSilenceUnknownFaceTimeCallersEnabled
{
  v3 = +[NSUserDefaults tu_defaults];
  v4 = [v3 silenceUnknownFaceTimeCallersEnabled];

  v5 = sub_100004778();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412546;
    v8 = self;
    v9 = 1024;
    v10 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%@ isSilenceUnknownFaceTimeCallersEnabled: %d", &v7, 0x12u);
  }

  return v4;
}

- (int64_t)maxJunkLevel
{
  v3 = +[NSUserDefaults tu_defaults];
  v4 = [v3 maxJunkLevel];

  v5 = sub_100004778();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412546;
    v8 = self;
    v9 = 2048;
    v10 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%@ maxJunkLevel: %ld", &v7, 0x16u);
  }

  return v4;
}

- (BOOL)shouldFilterIncomingCall:(id)a3 from:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (([v7 isSystemProvider] & 1) == 0)
  {
    v11 = sub_100004778();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = [v6 UUID];
      v33 = 138412290;
      v34 = v12;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Not a system call; call filter will allow update with identifier %@", &v33, 0xCu);
    }

    goto LABEL_9;
  }

  v8 = [(CSDUnknownCallFilter *)self isSilenceUnknownTelephonyCallersEnabled];
  v9 = [(CSDUnknownCallFilter *)self isSilenceUnknownFaceTimeCallersEnabled];
  v10 = sub_100004778();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v33 = 138413058;
    v34 = self;
    v35 = 2112;
    v36 = v6;
    v37 = 1024;
    *v38 = v8;
    *&v38[4] = 1024;
    *&v38[6] = v9;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%@ shouldFilterIncoming update=%@ isSilenceUnknownTelephonyCallersEnabled=%d isSilenceUnknownFaceTimeCallersEnabled=%d", &v33, 0x22u);
  }

  if ([v7 isTelephonyProvider] & v8)
  {
    v8 = 1;
    goto LABEL_18;
  }

  if (![v7 isFaceTimeProvider])
  {
    v8 = 0;
    goto LABEL_18;
  }

  v14 = +[TUCallCenter sharedInstance];
  v15 = [v14 conversationManager];
  v16 = [v6 participantGroupUUID];
  v17 = [v15 activeConversationWithGroupUUID:v16];

  if (v17)
  {
    v18 = [v17 provider];
    v19 = [v18 isDefaultProvider];

    if (!v19)
    {

LABEL_9:
      v13 = 0;
      goto LABEL_39;
    }
  }

  if (([v6 hasVideo] & 1) != 0 || (-[TUFeatureFlags uplevelFTAEnabled](self->_featureFlags, "uplevelFTAEnabled") & 1) == 0)
  {
    v8 = v9;
  }

LABEL_18:
  v20 = [v6 remoteHandle];
  v21 = [v20 value];
  v22 = [v21 length];

  if (!v22)
  {
    v25 = sub_100004778();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      v33 = 138412546;
      v34 = self;
      v35 = 2112;
      v36 = v6;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "%@ update does not have a valid handle, by definition this is an unknown caller update %@", &v33, 0x16u);
    }

    goto LABEL_24;
  }

  if ([(CSDUnknownCallFilter *)self isUnknownCaller:v6])
  {
LABEL_24:
    v24 = [v6 isKnownCaller];
    v23 = 1;
    goto LABEL_25;
  }

  v23 = 0;
  v24 = 1;
LABEL_25:
  [v6 setIsKnownCaller:v24];
  if ([(TUFeatureFlags *)self->_featureFlags communicationTrustAdoption])
  {
    v26 = [v6 commTrustScore] == 1;
  }

  else
  {
    v27 = [(CSDUnknownCallFilter *)self maxJunkLevel];
    v26 = [v6 junkConfidence] > v27;
  }

  v28 = sub_100004778();
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
  {
    v29 = @"NO";
    v33 = 138413314;
    v34 = self;
    if (v23)
    {
      v30 = @"YES";
    }

    else
    {
      v30 = @"NO";
    }

    v35 = 2112;
    v36 = v6;
    if (v8)
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

  v13 = v23 & (v8 | v26);
LABEL_39:

  return v13;
}

@end