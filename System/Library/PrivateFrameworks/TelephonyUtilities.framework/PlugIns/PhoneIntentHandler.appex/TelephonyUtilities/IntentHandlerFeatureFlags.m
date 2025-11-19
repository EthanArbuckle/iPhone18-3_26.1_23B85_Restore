@interface IntentHandlerFeatureFlags
- (BOOL)crrFullRecommendation;
- (BOOL)crrHandleRecommendation;
- (BOOL)emergencyServicesOverrideEnabled;
- (BOOL)faceTimeInvitationEnabled;
- (BOOL)faceTimeNoFanOutEnabled;
- (BOOL)vmdEnabled;
@end

@implementation IntentHandlerFeatureFlags

- (BOOL)faceTimeNoFanOutEnabled
{
  v2 = _os_feature_enabled_impl();
  v3 = IntentHandlerDefaultLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = @"NO";
    if (v2)
    {
      v4 = @"YES";
    }

    v6 = 138543362;
    v7 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "SiriPhone/FaceTimeNoFanOut: %{public}@", &v6, 0xCu);
  }

  return v2;
}

- (BOOL)crrFullRecommendation
{
  v2 = _os_feature_enabled_impl();
  v3 = IntentHandlerDefaultLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = @"NO";
    if (v2)
    {
      v4 = @"YES";
    }

    v6 = 138543362;
    v7 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "SiriPhone/CRRFullRecommendation: %{public}@", &v6, 0xCu);
  }

  return v2;
}

- (BOOL)crrHandleRecommendation
{
  v2 = _os_feature_enabled_impl();
  v3 = IntentHandlerDefaultLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = @"NO";
    if (v2)
    {
      v4 = @"YES";
    }

    v6 = 138543362;
    v7 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "SiriPhone/crrHandleRecommendation: %{public}@", &v6, 0xCu);
  }

  return v2;
}

- (BOOL)faceTimeInvitationEnabled
{
  v2 = _os_feature_enabled_impl();
  v3 = IntentHandlerDefaultLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = @"NO";
    if (v2)
    {
      v4 = @"YES";
    }

    v6 = 138543362;
    v7 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "SiriPhone/FaceTimeInvitation: %{public}@", &v6, 0xCu);
  }

  return v2;
}

- (BOOL)emergencyServicesOverrideEnabled
{
  v2 = _os_feature_enabled_impl();
  v3 = v2 & _TUIsInternalInstall();
  v4 = IntentHandlerDefaultLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = @"NO";
    if (v3)
    {
      v5 = @"YES";
    }

    v7 = 138543362;
    v8 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "SiriPhone/emergencyServicesOverrideEnabled AND isInternalBuild: %{public}@", &v7, 0xCu);
  }

  return v3;
}

- (BOOL)vmdEnabled
{
  v2 = _os_feature_enabled_impl();
  v3 = IntentHandlerDefaultLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = @"NO";
    if (v2)
    {
      v4 = @"YES";
    }

    v6 = 138543362;
    v7 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "SiriPhone/VisualVoicemail: %{public}@", &v6, 0xCu);
  }

  return v2;
}

@end