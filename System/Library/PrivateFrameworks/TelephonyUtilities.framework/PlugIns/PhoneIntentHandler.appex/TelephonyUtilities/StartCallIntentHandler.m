@interface StartCallIntentHandler
- (AppResolving)appResolver;
- (BOOL)anyContactsHaveSameName:(id)a3;
- (BOOL)haveAlreadyConfirmedRecipient:(id)a3;
- (BOOL)intentHasUnresolvedLocalEmergencyContact:(id)a3;
- (BOOL)isChinaSKUDevice;
- (BOOL)isEmergencyCall:(id)a3;
- (BOOL)isEmergencyHandle:(id)a3;
- (BOOL)isFaceTimeInvitationEnabled;
- (BOOL)isFaceTimeNoFanOutEnabled;
- (BOOL)isGFTDisabledForChinaSKU:(id)a3;
- (BOOL)isUnresolvedLocalEmergencyContact:(id)a3;
- (BOOL)shouldForceAudioOnlyWithIdiom:(int64_t)a3 withDisplayDisabled:(BOOL)a4;
- (BOOL)shouldRequireInvalidNumberConfirmationForRecipient:(id)a3;
- (BOOL)shouldRequireUnknownRecipientConfirmationForRequestedRecipient:(id)a3 resolvedToRecipient:(id)a4 contact:(id)a5;
- (IntentHandlerCoreAnalyticsLogging)coreAnalyticsLogger;
- (NSCache)identifierToContactCache;
- (StartCallIntentHandler)init;
- (StartCallIntentHandler)initWithFeatureFlags:(id)a3;
- (StartCallIntentHandler)initWithFeatureFlags:(id)a3 faceTimeUtilities:(id)a4;
- (StartCallIntentHandlerDataSource)dataSource;
- (id)_applyImpliedFilterToPhoneNumberOnlyMatchesIfApplicableForPersonsByContact:(id)a3 requestedHandleType:(int64_t)a4 preferredCallProvider:(int64_t)a5;
- (id)_inPersonsFromContact:(id)a3 withRequestedType:(int64_t)a4 requestedLabel:(id)a5 isoCountryCodes:(id)a6;
- (id)allCountryCodesRelevantToCall:(id)a3;
- (id)callRecordForRecentCall:(id)a3;
- (id)emergencyTypeToString:(int64_t)a3;
- (id)generateAdditionalMatchingHandles:(id)a3 resolvedContacts:(id)a4 requestedHandleType:(int64_t)a5 requestedHandleLabel:(id)a6;
- (id)getAlternativesForContact:(id)a3 forRequestedHandleType:(int64_t)a4 forCallProvider:(int64_t)a5;
- (id)globalEmergencyNumbers;
- (id)localizedEmergencyString:(id)a3;
- (id)personResolutionResultsForIntent:(id)a3;
- (id)recentCallRecordToRedialForIntent:(id)a3;
- (id)recentCallToRedialForQuery:(id)a3;
- (id)recentCallsWithHandles:(id)a3 telephonyOnly:(BOOL)a4;
- (id)relayCRRRecommendationForPerson:(id)a3 intent:(id)a4;
- (id)resolutionResultForEmergency;
- (id)resolutionResultForPersonWithResolvedContactName:(id)a3 resolvedPerson:(id)a4 resolvedContact:(id)a5 contactIdentifiersRequiringConfirmation:(id)a6;
- (id)resolutionResultForPersonWithResolvedHandleValue:(id)a3;
- (id)resolveContactsFromCallGroups:(id)a3;
- (id)resolvePreferredContactFromContacts:(id)a3;
- (id)responseForDialRequest:(id)a3 intent:(id)a4;
- (id)responseForJoinRequest:(id)a3 intent:(id)a4 callProvider:(id)a5;
- (int64_t)callCapabilityFromRecentCall:(id)a3;
- (void)confirmStartCall:(id)a3 completion:(id)a4;
- (void)extractHandlesFromIntent:(id)a3 faceTimeMemberHandles:(id)a4 nonFaceTimeMemberHandles:(id)a5;
- (void)handleStartCall:(id)a3 completion:(id)a4;
- (void)parseEmergencyContacts:(id)a3 usingExistingResult:(id)a4;
- (void)resolveCallCapabilityForStartCall:(id)a3 withCompletion:(id)a4;
- (void)resolveCallRecordToCallBackForStartCall:(id)a3 withCompletion:(id)a4;
- (void)resolveContactsForStartCall:(id)a3 withCompletion:(id)a4;
- (void)resolveDestinationTypeForStartCall:(id)a3 withCompletion:(id)a4;
- (void)resolveFaceTimeLinkForStartCall:(id)a3 withCompletion:(id)a4;
- (void)resolvePreferredCallProviderForStartCall:(id)a3 withCompletion:(id)a4;
- (void)sortFaceTimeHandles:(id)a3 faceTimeHandles:(id)a4 nonFaceTimeHandles:(id)a5;
- (void)updateHandlerStateForContactResolutionResults:(id)a3;
- (void)updateScoreBasedContactResolver:(id)a3 forFavoritesAmongContacts:(id)a4;
- (void)updateScoreBasedContactResolver:(id)a3 forRecentCallsMatchingContacts:(id)a4;
- (void)updateScoreBasedHandleResolver:(id)a3 forFavoritesAmongHandles:(id)a4;
@end

@implementation StartCallIntentHandler

- (StartCallIntentHandler)init
{
  v3 = objc_alloc_init(IntentHandlerFeatureFlags);
  v4 = +[FaceTimeUtilities sharedInstance];
  v5 = [(StartCallIntentHandler *)self initWithFeatureFlags:v3 faceTimeUtilities:v4];

  return v5;
}

- (StartCallIntentHandler)initWithFeatureFlags:(id)a3
{
  v4 = a3;
  v5 = +[FaceTimeUtilities sharedInstance];
  v6 = [(StartCallIntentHandler *)self initWithFeatureFlags:v4 faceTimeUtilities:v5];

  return v6;
}

- (StartCallIntentHandler)initWithFeatureFlags:(id)a3 faceTimeUtilities:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = StartCallIntentHandler;
  v9 = [(StartCallIntentHandler *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_featureFlags, a3);
    objc_storeStrong(&v10->_faceTimeUtilities, a4);
  }

  return v10;
}

- (StartCallIntentHandlerDataSource)dataSource
{
  dataSource = self->_dataSource;
  if (!dataSource)
  {
    v4 = [NSString stringWithFormat:@"com.apple.TelephonyUtilities.PhoneIntentHandler.%@", objc_opt_class()];
    v5 = dispatch_queue_create([v4 UTF8String], 0);

    v6 = [[StartCallIntentHandlerDataSource alloc] initWithDispatchQueue:v5 featureFlags:self->_featureFlags];
    v7 = self->_dataSource;
    self->_dataSource = v6;

    dataSource = self->_dataSource;
  }

  return dataSource;
}

- (NSCache)identifierToContactCache
{
  identifierToContactCache = self->_identifierToContactCache;
  if (!identifierToContactCache)
  {
    v4 = objc_alloc_init(NSCache);
    v5 = self->_identifierToContactCache;
    self->_identifierToContactCache = v4;

    identifierToContactCache = self->_identifierToContactCache;
  }

  return identifierToContactCache;
}

- (IntentHandlerCoreAnalyticsLogging)coreAnalyticsLogger
{
  coreAnalyticsLogger = self->_coreAnalyticsLogger;
  if (!coreAnalyticsLogger)
  {
    v4 = objc_alloc_init(IntentHandlerCoreAnalyticsLogger);
    v5 = self->_coreAnalyticsLogger;
    self->_coreAnalyticsLogger = v4;

    coreAnalyticsLogger = self->_coreAnalyticsLogger;
  }

  return coreAnalyticsLogger;
}

- (AppResolving)appResolver
{
  appResolver = self->_appResolver;
  if (!appResolver)
  {
    v4 = objc_alloc_init(AppResolver);
    v5 = self->_appResolver;
    self->_appResolver = v4;

    appResolver = self->_appResolver;
  }

  return appResolver;
}

- (BOOL)isChinaSKUDevice
{
  v2 = +[FTDeviceSupport sharedInstance];
  v3 = [v2 isGreenTea];

  return v3;
}

- (BOOL)isFaceTimeNoFanOutEnabled
{
  v3 = [(StartCallIntentHandler *)self featureFlags];
  v4 = [v3 faceTimeNoFanOutEnabled];

  if (v4)
  {
    v5 = IntentHandlerDefaultLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Facetime No Fan Out is true", v9, 2u);
    }
  }

  v6 = [(StartCallIntentHandler *)self featureFlags];
  v7 = [v6 faceTimeNoFanOutEnabled];

  return v7;
}

- (BOOL)isFaceTimeInvitationEnabled
{
  v2 = [(StartCallIntentHandler *)self featureFlags];
  v3 = [v2 faceTimeInvitationEnabled];

  return v3;
}

- (void)handleStartCall:(id)a3 completion:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = IntentHandlerDefaultLog();
  v8 = os_signpost_id_generate(v7);

  v9 = IntentHandlerDefaultLog();
  v10 = v9;
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v10, OS_SIGNPOST_INTERVAL_BEGIN, v8, "handleStartCall", " enableTelemetry=YES ", buf, 2u);
  }

  v80 = v8 - 1;
  v81 = v6;
  spid = v8;

  v11 = IntentHandlerDefaultLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v93 = v5;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Handling start call intent: %@", buf, 0xCu);
  }

  v12 = [TUDialRequest alloc];
  v13 = [(StartCallIntentHandler *)self dataSource];
  v14 = [v13 providerManager];
  v15 = [(StartCallIntentHandler *)self dataSource];
  [v15 contactsDataSource];
  v16 = v82 = v5;
  v17 = [(StartCallIntentHandler *)self dataSource];
  v18 = [v17 senderIdentityClient];
  v19 = [(StartCallIntentHandler *)self featureFlags];
  v79 = [v12 initWithDialIntent:v82 providerManager:v14 contactsDataSource:v16 senderIdentityClient:v18 isEmergencyServicesOverrideEnabled:{objc_msgSend(v19, "emergencyServicesOverrideEnabled")}];

  v20 = v82;
  if ([(StartCallIntentHandler *)self isFaceTimeInvitationEnabled])
  {
    v21 = [v82 faceTimeLink];
    v22 = [v21 length];

    if (v22)
    {
      v23 = IntentHandlerDefaultLog();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        v24 = [v82 faceTimeLink];
        *buf = 138412290;
        v93 = v24;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "FaceTimeInvitation Enabled for faceTime link: %@", buf, 0xCu);
      }

      v25 = +[NSMutableSet set];
      v26 = +[NSMutableSet set];
      [(StartCallIntentHandler *)self extractHandlesFromIntent:v82 faceTimeMemberHandles:v25 nonFaceTimeMemberHandles:v26];
      v27 = [v82 faceTimeLink];
      v28 = [NSString stringWithFormat:@"%@", v27];
      v29 = [NSURL URLWithString:v28];

      v30 = [TUConversationLink conversationLinkForURL:v29];
      if (v30)
      {
        v31 = [[TUJoinConversationRequest alloc] initWithConversationLink:v30 otherInvitedHandles:v26 sendLetMeInRequest:0];
        [v31 setWantsStagingArea:0];
        if ([v82 callCapability] == 2)
        {
          [v31 setVideoEnabled:1];
        }

        v32 = v25;
        v33 = IntentHandlerDefaultLog();
        if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "Configuring invitation preferences on FaceTime join request.", buf, 2u);
        }

        v34 = [[TUConversationInvitationPreference alloc] initWithHandleType:2 notificationStyles:1];
        v97[0] = v34;
        v35 = [[TUConversationInvitationPreference alloc] initWithHandleType:3 notificationStyles:1];
        v97[1] = v35;
        v36 = [[TUConversationInvitationPreference alloc] initWithHandleType:1 notificationStyles:2];
        v97[2] = v36;
        v37 = [NSArray arrayWithObjects:v97 count:3];
        v38 = [NSSet setWithArray:v37];
        [v31 setInvitationPreferences:v38];

        v25 = v32;
      }

      else
      {
        v31 = 0;
      }

      v20 = v82;
      if (v31)
      {
        goto LABEL_29;
      }
    }
  }

  v39 = [NSMutableArray alloc];
  v40 = [v20 contacts];
  v41 = [v39 initWithCapacity:{objc_msgSend(v40, "count")}];

  v90 = 0u;
  v91 = 0u;
  v88 = 0u;
  v89 = 0u;
  obj = [v20 contacts];
  v42 = [obj countByEnumeratingWithState:&v88 objects:v96 count:16];
  if (v42)
  {
    v43 = v42;
    v44 = *v89;
    v83 = *v89;
    v84 = v41;
    do
    {
      for (i = 0; i != v43; i = i + 1)
      {
        if (*v89 != v44)
        {
          objc_enumerationMutation(obj);
        }

        v46 = *(*(&v88 + 1) + 8 * i);
        v47 = [v46 personHandle];
        v48 = [v47 type];

        if (v48 == 2)
        {
          v49 = [(StartCallIntentHandler *)self dataSource];
          v50 = [v49 coreTelephonyDataSource];
          v51 = [v50 allRelevantISOCountryCodes];
          v87 = [v51 firstObject];

          v52 = [CNPhoneNumber alloc];
          v53 = [v46 personHandle];
          v54 = [v53 value];
          v55 = [v52 initWithStringValue:v54 countryCode:v87];

          v56 = [INPersonHandle alloc];
          v57 = [v55 formattedInternationalStringValue];
          v58 = [v46 personHandle];
          v59 = [v58 type];
          v60 = [v46 personHandle];
          v61 = [v60 label];
          v62 = [v56 initWithValue:v57 type:v59 label:v61];

          v41 = v84;
          [v46 setPersonHandle:v62];
          [v84 addObject:v46];

          v44 = v83;
        }

        else
        {
          [v41 addObject:v46];
        }
      }

      v43 = [obj countByEnumeratingWithState:&v88 objects:v96 count:16];
    }

    while (v43);
  }

  v20 = v82;
  [v82 setContacts:v41];
  v63 = [[NSUserActivity alloc] _initWithIntent:v82];
  v31 = [[TUJoinConversationRequest alloc] initWithUserActivity:v63];

  if (v31)
  {
LABEL_29:
    v64 = [v31 remoteMembers];
    if ([v64 count] >= 2)
    {

      v66 = v80;
      v65 = v81;
      v67 = v79;
LABEL_32:
      v69 = [v67 provider];
      v70 = [(StartCallIntentHandler *)self responseForJoinRequest:v31 intent:v20 callProvider:v69];
LABEL_33:

      goto LABEL_38;
    }

    v68 = [v31 conversationLink];

    v66 = v80;
    v65 = v81;
    v67 = v79;
    if (v68)
    {
      goto LABEL_32;
    }
  }

  else
  {
    v66 = v80;
    v65 = v81;
    v67 = v79;
  }

  v70 = [(StartCallIntentHandler *)self responseForDialRequest:v67 intent:v20];
  if ([v70 code] == 2)
  {
    v71 = [v67 provider];
    v72 = [v71 isTelephonyProvider];

    if (v72)
    {
      v69 = [(StartCallIntentHandler *)self dataSource];
      v73 = [v67 handle];
      [v69 logOutgoingCallToHandle:v73];

      goto LABEL_33;
    }
  }

LABEL_38:
  v74 = IntentHandlerDefaultLog();
  if (os_log_type_enabled(v74, OS_LOG_TYPE_DEFAULT))
  {
    v75 = [v70 userActivity];
    *buf = 138412546;
    v93 = v70;
    v94 = 2112;
    v95 = v75;
    _os_log_impl(&_mh_execute_header, v74, OS_LOG_TYPE_DEFAULT, "Calling completion block with response: %@ user activity: %@", buf, 0x16u);
  }

  v76 = IntentHandlerDefaultLog();
  v77 = v76;
  if (v66 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v76))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v77, OS_SIGNPOST_INTERVAL_END, spid, "handleStartCall", "", buf, 2u);
  }

  (v65)[2](v65, v70);
}

- (void)sortFaceTimeHandles:(id)a3 faceTimeHandles:(id)a4 nonFaceTimeHandles:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  obj = v8;
  v11 = [v8 countByEnumeratingWithState:&v26 objects:v33 count:16];
  if (v11)
  {
    v13 = v11;
    v14 = *v27;
    *&v12 = 138412290;
    v24 = v12;
    do
    {
      v15 = 0;
      do
      {
        if (*v27 != v14)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v26 + 1) + 8 * v15);
        v17 = [(StartCallIntentHandler *)self faceTimeUtilities];
        v32 = v16;
        v18 = [NSArray arrayWithObjects:&v32 count:1];
        v19 = [v17 isFaceTimeable:v18];

        v20 = IntentHandlerDefaultLog();
        v21 = os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT);
        if (v19)
        {
          v22 = v9;
          if (v21)
          {
            *buf = v24;
            v31 = v16;
            _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "found a FaceTimeable personHandle: %@", buf, 0xCu);
            v22 = v9;
          }
        }

        else
        {
          v22 = v10;
          if (v21)
          {
            *buf = v24;
            v31 = v16;
            _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "found a non-FaceTimeable personHandle: %@", buf, 0xCu);
            v22 = v10;
          }
        }

        v23 = [TUHandle normalizedHandleWithDestinationID:v16];
        [v22 addObject:v23];

        v15 = v15 + 1;
      }

      while (v13 != v15);
      v13 = [obj countByEnumeratingWithState:&v26 objects:v33 count:16];
    }

    while (v13);
  }
}

- (void)extractHandlesFromIntent:(id)a3 faceTimeMemberHandles:(id)a4 nonFaceTimeMemberHandles:(id)a5
{
  v7 = a3;
  v36 = a4;
  v35 = a5;
  v8 = IntentHandlerDefaultLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [v7 contacts];
    *buf = 138412290;
    v42 = v9;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Extracting Handles From Intent: %@", buf, 0xCu);
  }

  v33 = v7;
  v34 = objc_alloc_init(NSMutableArray);
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v10 = [v7 contacts];
  v11 = [v10 countByEnumeratingWithState:&v37 objects:v45 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v38;
    do
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v38 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v37 + 1) + 8 * i);
        v16 = [v15 personHandle];
        v17 = [v16 value];
        v18 = [v17 length];

        if (v18)
        {
          v19 = IntentHandlerDefaultLog();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
          {
            v20 = [v15 personHandle];
            v21 = [v20 faceTimeType];
            *buf = 134218242;
            v42 = v21;
            v43 = 2112;
            v44 = v15;
            _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "faceTimeType is %ld for %@", buf, 0x16u);
          }

          v22 = [v15 personHandle];
          v23 = [v22 faceTimeType];

          if (v23 == 2)
          {
            v24 = [v15 personHandle];
            v25 = [v24 value];
            v26 = [TUHandle normalizedHandleWithDestinationID:v25];
            v27 = v35;
          }

          else
          {
            if (v23 != 1)
            {
              if (v23)
              {
                continue;
              }

              v24 = [v15 personHandle];
              v25 = [v24 value];
              [v34 addObject:v25];
              goto LABEL_18;
            }

            v24 = [v15 personHandle];
            v25 = [v24 value];
            v26 = [TUHandle normalizedHandleWithDestinationID:v25];
            v27 = v36;
          }

          [v27 addObject:v26];

LABEL_18:
          continue;
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v37 objects:v45 count:16];
    }

    while (v12);
  }

  if ([v34 count])
  {
    v28 = [(StartCallIntentHandler *)self faceTimeUtilities];
    [v28 runIDSQueryForStartCallIntent:v34];

    v30 = v35;
    v29 = v36;
    [(StartCallIntentHandler *)self sortFaceTimeHandles:v34 faceTimeHandles:v36 nonFaceTimeHandles:v35];
  }

  else
  {
    v31 = IntentHandlerDefaultLog();
    v30 = v35;
    v29 = v36;
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "Skipping IDS query lookup as all handles have been resolved.", buf, 2u);
    }
  }
}

- (id)responseForDialRequest:(id)a3 intent:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = IntentHandlerDefaultLog();
  v9 = os_signpost_id_generate(v8);

  v10 = IntentHandlerDefaultLog();
  v11 = v10;
  v12 = v9 - 1;
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v11, OS_SIGNPOST_INTERVAL_BEGIN, v9, "responseForDialRequest", "", buf, 2u);
  }

  v13 = IntentHandlerDefaultLog();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v62 = v6;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Determining response for dial request: %@", buf, 0xCu);
  }

  if ([v7 preferredCallProvider] == 3 && (objc_msgSend(v7, "destinationType") == 4 || objc_msgSend(v7, "destinationType") == 5))
  {
    v14 = IntentHandlerDefaultLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Redial/callback to 3P call history entry.", buf, 2u);
    }

    v15 = [(StartCallIntentHandler *)self appResolver];
    v16 = [(__CFString *)v6 bundleIdentifier];
    v17 = [v15 appSupportsDeprecatedCallingIntents:v16];

    v18 = IntentHandlerDefaultLog();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = @"NO";
      if (v17)
      {
        v19 = @"YES";
      }

      *buf = 138412290;
      v62 = v19;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "useDeprecatedCallingIntents: %@", buf, 0xCu);
    }

    v20 = [(__CFString *)v6 userActivityUsingDeprecatedCallingIntents:v17];
  }

  else
  {
    v20 = [NSUserActivity makeActivityWithIntent:v7 dialRequestAttachment:v6];
  }

  v21 = v20;
  v22 = [[INStartCallIntentResponse alloc] initWithCode:2 userActivity:v20];
  v23 = [(StartCallIntentHandler *)self dataSource];
  v24 = [v23 callFilterStatusForDialRequest:v6];

  if (v24 != 3)
  {
    if ((v24 - 1) <= 1)
    {
      v28 = IntentHandlerDefaultLog();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        sub_1000301FC();
      }

      v26 = [INStartCallIntentResponse alloc];
      v27 = &_INStartCallIntentResponseCodeFailureDownTimeRestrictionEnabled;
      goto LABEL_25;
    }

    if ([v7 _idiom] == 4)
    {
      v34 = [(StartCallIntentHandler *)self dataSource];
      v35 = [v34 callRinging];

      if (v35)
      {
        v36 = IntentHandlerDefaultLog();
        if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
        {
          sub_1000301C8();
        }

        v26 = [INStartCallIntentResponse alloc];
        v29 = 12;
        goto LABEL_26;
      }
    }

    if ([v7 _idiom] == 4)
    {
      v37 = [(StartCallIntentHandler *)self dataSource];
      v38 = [v37 callsInProgress];

      if (v38)
      {
        v39 = IntentHandlerDefaultLog();
        if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
        {
          sub_100030194();
        }

        v26 = [INStartCallIntentResponse alloc];
        v29 = 11;
        goto LABEL_26;
      }
    }

    v60 = v9;
    v40 = [(__CFString *)v6 provider];
    if ([v40 isFaceTimeProvider] && (-[__CFString isVideo](v6, "isVideo") & 1) != 0)
    {
      v41 = [(StartCallIntentHandler *)self dataSource];
      v42 = [v41 supportsFaceTimeVideoCalls];

      if ((v42 & 1) == 0)
      {
        v43 = IntentHandlerDefaultLog();
        if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
        {
          sub_10002FFB4();
        }

        goto LABEL_69;
      }
    }

    else
    {
    }

    v44 = [(__CFString *)v6 provider];
    if ([v44 isFaceTimeProvider] && !-[__CFString isVideo](v6, "isVideo"))
    {
      v48 = [(StartCallIntentHandler *)self dataSource];
      v49 = [v48 supportsFaceTimeAudioCalls];

      if ((v49 & 1) == 0)
      {
        v43 = IntentHandlerDefaultLog();
        if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
        {
          sub_10002FFE8();
        }

        goto LABEL_69;
      }
    }

    else
    {
    }

    if (v21)
    {
      v9 = v60;
      if ([(__CFString *)v6 isValid]& 1) != 0 || _TUIsInternalInstall() && (TUShouldUseSuperboxTelephonyProvider())
      {
        v45 = [(__CFString *)v6 provider];
        v46 = [v45 isTelephonyProvider];

        if (!v46)
        {
          goto LABEL_28;
        }

        if ([(__CFString *)v6 dialType]== 1)
        {
          v30 = IntentHandlerDefaultLog();
          if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "Emergency call requested, will always try to place the call, skipping provider and cellular service availability checks.", buf, 2u);
          }

          goto LABEL_27;
        }

        if ([v7 _idiom] == 3)
        {
          v30 = IntentHandlerDefaultLog();
          if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
          {
            sub_10003012C();
          }

          goto LABEL_27;
        }

        v50 = [(StartCallIntentHandler *)self dataSource];
        v51 = [v50 supportsTelephonyCalls];

        if (v51)
        {
          v52 = [(StartCallIntentHandler *)self dataSource];
          v53 = [v52 canAttemptTelephonyCallsWithoutCellularConnection];

          if (v53)
          {
            goto LABEL_28;
          }

          v54 = [(StartCallIntentHandler *)self dataSource];
          v55 = [v54 isAirplaneModeEnabled];

          if (v55)
          {
            v56 = IntentHandlerDefaultLog();
            if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
            {
              sub_1000300F8();
            }

            v26 = [INStartCallIntentResponse alloc];
            v29 = 8;
            goto LABEL_26;
          }

          v30 = [(StartCallIntentHandler *)self dataSource];
          if (![v30 supportsPrimaryCalling])
          {
            goto LABEL_27;
          }

          v57 = [(StartCallIntentHandler *)self dataSource];
          v58 = [v57 coreTelephonyDataSource];
          v59 = [v58 isCellularServiceAvailable];

          if (v59)
          {
            v9 = v60;
            goto LABEL_28;
          }

          v43 = IntentHandlerDefaultLog();
          if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
          {
            sub_1000300C4();
          }

LABEL_69:

          v30 = v22;
          v22 = [[INStartCallIntentResponse alloc] initWithCode:6 userActivity:0];
          v9 = v60;
          goto LABEL_27;
        }

        v47 = IntentHandlerDefaultLog();
        if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
        {
          sub_100030090();
        }
      }

      else
      {
        v47 = IntentHandlerDefaultLog();
        if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
        {
          sub_10003001C();
        }
      }
    }

    else
    {
      v47 = IntentHandlerDefaultLog();
      v9 = v60;
      if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
      {
        sub_100030160();
      }
    }

    v26 = [INStartCallIntentResponse alloc];
    v29 = 4;
    goto LABEL_26;
  }

  v25 = IntentHandlerDefaultLog();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
  {
    sub_100030230();
  }

  v26 = [INStartCallIntentResponse alloc];
  v27 = &_INStartCallIntentResponseCodeFailureScreenTimeRestrictionEnabled;
LABEL_25:
  v29 = *v27;
LABEL_26:
  v30 = v22;
  v22 = [v26 initWithCode:v29 userActivity:0];
LABEL_27:

LABEL_28:
  v31 = IntentHandlerDefaultLog();
  v32 = v31;
  if (v12 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v31))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v32, OS_SIGNPOST_INTERVAL_END, v9, "responseForDialRequest", "", buf, 2u);
  }

  return v22;
}

- (id)responseForJoinRequest:(id)a3 intent:(id)a4 callProvider:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = IntentHandlerDefaultLog();
  v12 = os_signpost_id_generate(v11);

  v13 = IntentHandlerDefaultLog();
  v14 = v13;
  v15 = v12 - 1;
  if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v14, OS_SIGNPOST_INTERVAL_BEGIN, v12, "responseForJoinRequest", "", buf, 2u);
  }

  spid = v12;

  v16 = IntentHandlerDefaultLog();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v40 = v8;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Determining response for join request: %@", buf, 0xCu);
  }

  v17 = [NSUserActivity makeActivityWithIntent:v9 joinRequestAttachment:v8];
  v18 = [[INStartCallIntentResponse alloc] initWithCode:2 userActivity:v17];
  v19 = [(StartCallIntentHandler *)self dataSource];
  v20 = [v9 contacts];
  v21 = [v19 restrictedContacts:v20 callProvider:v10];

  if (v21)
  {
    v22 = [v21 count];
    v23 = [v9 contacts];
    v24 = [v23 count];

    if (v22 == v24)
    {
      v25 = IntentHandlerDefaultLog();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        sub_100030264();
      }

      v26 = [INStartCallIntentResponse alloc];
      v27 = _INStartCallIntentResponseCodeFailureDownTimeRestrictionEnabled;
      goto LABEL_24;
    }
  }

  if ([v8 isVideoEnabled])
  {
    v28 = [(StartCallIntentHandler *)self dataSource];
    v29 = [v28 supportsFaceTimeVideoCalls];

    if ((v29 & 1) == 0)
    {
      v33 = IntentHandlerDefaultLog();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        sub_100030298();
      }

      goto LABEL_23;
    }
  }

  if (([v8 isVideoEnabled] & 1) == 0)
  {
    v30 = [(StartCallIntentHandler *)self dataSource];
    v31 = [v30 supportsFaceTimeAudioCalls];

    if ((v31 & 1) == 0)
    {
      v33 = IntentHandlerDefaultLog();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        sub_1000302CC();
      }

LABEL_23:

      v26 = [INStartCallIntentResponse alloc];
      v27 = 6;
LABEL_24:
      v34 = [v26 initWithCode:v27 userActivity:0];

      v18 = v34;
      goto LABEL_25;
    }
  }

  if (!v17)
  {
    v32 = IntentHandlerDefaultLog();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      sub_100030160();
    }

    v26 = [INStartCallIntentResponse alloc];
    v27 = 4;
    goto LABEL_24;
  }

LABEL_25:
  v35 = IntentHandlerDefaultLog();
  v36 = v35;
  if (v15 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v35))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v36, OS_SIGNPOST_INTERVAL_END, spid, "responseForJoinRequest", "", buf, 2u);
  }

  return v18;
}

- (BOOL)isEmergencyCall:(id)a3
{
  v4 = a3;
  if ([v4 destinationType] == 2)
  {
    v5 = 1;
  }

  else
  {
    v5 = [(StartCallIntentHandler *)self intentHasUnresolvedLocalEmergencyContact:v4];
  }

  return v5;
}

- (void)confirmStartCall:(id)a3 completion:(id)a4
{
  v6 = a3;
  v71 = a4;
  v7 = IntentHandlerDefaultLog();
  v8 = os_signpost_id_generate(v7);

  v9 = IntentHandlerDefaultLog();
  v10 = v9;
  v11 = v8 - 1;
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v10, OS_SIGNPOST_INTERVAL_BEGIN, v8, "confirmStartCall", "", buf, 2u);
  }

  v12 = IntentHandlerDefaultLog();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v74 = v6;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Confirm start audio call: %@", buf, 0xCu);
  }

  spid = v8;

  v13 = [[NSUserActivity alloc] _initWithIntent:v6];
  v14 = [[TUJoinConversationRequest alloc] initWithUserActivity:v13];
  v72 = v14;
  if (v14 && ([v14 remoteMembers], v15 = objc_claimAutoreleasedReturnValue(), v16 = objc_msgSend(v15, "count"), v15, v16 >= 2))
  {
    v17 = [TUDialRequest alloc];
    v18 = [(StartCallIntentHandler *)self dataSource];
    [v18 providerManager];
    v19 = v68 = v13;
    [(StartCallIntentHandler *)self dataSource];
    v20 = v67 = v8 - 1;
    v21 = [v20 contactsDataSource];
    v22 = [(StartCallIntentHandler *)self dataSource];
    v23 = [v22 senderIdentityClient];
    v24 = [v17 initWithDialIntent:v6 providerManager:v19 contactsDataSource:v21 senderIdentityClient:v23];

    v11 = v67;
    v13 = v68;

    v25 = [(StartCallIntentHandler *)self dataSource];
    v26 = [v6 contacts];
    v27 = [v24 provider];
    v28 = [v25 restrictedContacts:v26 callProvider:v27];
  }

  else
  {
    v28 = 0;
  }

  if ([v6 preferredCallProvider] == 2)
  {
LABEL_17:
    if (!v28)
    {
      goto LABEL_25;
    }

    goto LABEL_20;
  }

  v29 = [(StartCallIntentHandler *)self dataSource];
  if ([v29 isAirplaneModeEnabled])
  {
    v30 = v13;
    v31 = v11;
    v32 = [(StartCallIntentHandler *)self isEmergencyCall:v6];
    if (v32 && (-[StartCallIntentHandler dataSource](self, "dataSource"), v13 = objc_claimAutoreleasedReturnValue(), ([v13 canAttemptEmergencyCallsWithoutCellularConnection] & 1) == 0))
    {

      v11 = v31;
      v13 = v30;
    }

    else
    {
      v33 = [(StartCallIntentHandler *)self dataSource];
      v34 = [v33 canAttemptTelephonyCallsWithoutCellularConnection];

      if (v32)
      {
      }

      v11 = v31;
      v13 = v30;
      if (v34)
      {
        goto LABEL_17;
      }
    }

    v62 = IntentHandlerDefaultLog();
    if (os_log_type_enabled(v62, OS_LOG_TYPE_DEBUG))
    {
      sub_100030300();
    }

    v60 = [INStartCallIntentResponse alloc];
    v61 = 8;
    goto LABEL_50;
  }

  if (!v28)
  {
LABEL_25:
    if ([(StartCallIntentHandler *)self intentHasUnresolvedLocalEmergencyContact:v6])
    {
      v40 = IntentHandlerDefaultLog();
      if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v41 = "Even though destinationType is normal, user specifically asked for a emergency number";
LABEL_43:
        _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, v41, buf, 2u);
        goto LABEL_44;
      }

      goto LABEL_44;
    }

    if ([v6 destinationType] == 4 || objc_msgSend(v6, "destinationType") == 5)
    {
      v42 = [v6 contacts];
      v43 = [v42 count];

      if (v43 == 1)
      {
        v69 = v13;
        v44 = [v6 contacts];
        v45 = [v44 firstObject];

        v46 = [v45 personHandle];
        if (v46)
        {
          v47 = v46;
          v48 = self;
          v49 = v11;
          v50 = [v45 personHandle];
          v51 = [v50 value];
          if (v51)
          {
            v52 = v51;
            v53 = [v45 personHandle];
            v54 = [v53 value];
            v55 = [(StartCallIntentHandler *)v48 isEmergencyHandle:v54];

            v11 = v49;
            if (v55)
            {
              v56 = IntentHandlerDefaultLog();
              v13 = v69;
              if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                _os_log_impl(&_mh_execute_header, v56, OS_LOG_TYPE_DEFAULT, "Contact to redial/call back is an emergency number. Requiring intent confirmation.", buf, 2u);
              }

              if ([v6 destinationType] == 4)
              {
                v57 = 2;
              }

              else
              {
                v57 = 3;
              }

              v39 = [[INStartCallIntentResponse alloc] initWithCode:3 userActivity:0];
              [v39 setShouldDoEmergencyCountdown:&__kCFBooleanFalse];
              [v39 setConfirmationReason:v57];
LABEL_62:

              goto LABEL_52;
            }
          }

          else
          {

            v11 = v49;
          }
        }

        v66 = IntentHandlerDefaultLog();
        v13 = v69;
        if (os_log_type_enabled(v66, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v66, OS_LOG_TYPE_DEFAULT, "Contact to redial/call back is NOT an emergency number.", buf, 2u);
        }

        v39 = [[INStartCallIntentResponse alloc] initWithCode:1 userActivity:0];
        [v39 setShouldDoEmergencyCountdown:&__kCFBooleanFalse];
        goto LABEL_62;
      }
    }

    if ([v6 destinationType] == 2)
    {
      v40 = IntentHandlerDefaultLog();
      if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v41 = "Making an emergency call, sending UserConfirmationRequired with emergency flag = YES";
        goto LABEL_43;
      }

LABEL_44:

      v58 = [[INStartCallIntentResponse alloc] initWithCode:3 userActivity:0];
      v39 = v58;
      v59 = &__kCFBooleanTrue;
LABEL_51:
      [v58 setShouldDoEmergencyCountdown:v59];
      goto LABEL_52;
    }

    v60 = [INStartCallIntentResponse alloc];
    v61 = 1;
LABEL_50:
    v58 = [v60 initWithCode:v61 userActivity:0];
    v39 = v58;
    v59 = &__kCFBooleanFalse;
    goto LABEL_51;
  }

LABEL_20:
  if (![v28 count])
  {
    goto LABEL_25;
  }

  v35 = [v28 count];
  v36 = [v6 contacts];
  v37 = [v36 count];

  if (v35 >= v37)
  {
    goto LABEL_25;
  }

  v38 = IntentHandlerDefaultLog();
  if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "Join request was restricted due to some restrictions with some members (but not all).", buf, 2u);
  }

  v39 = [[INStartCallIntentResponse alloc] initWithCode:3 userActivity:0];
  [v39 setConfirmationReason:_INStartCallIntentConfirmationReasonHasRestrictedContacts];
  [v39 setRestrictedContacts:v28];
LABEL_52:
  v63 = IntentHandlerDefaultLog();
  if (os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v74 = v39;
    _os_log_impl(&_mh_execute_header, v63, OS_LOG_TYPE_DEFAULT, "Calling completion block with response: %@", buf, 0xCu);
  }

  v64 = IntentHandlerDefaultLog();
  v65 = v64;
  if (v11 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v64))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v65, OS_SIGNPOST_INTERVAL_END, spid, "confirmStartCall", "", buf, 2u);
  }

  v71[2](v71, v39);
}

- (void)resolveCallRecordToCallBackForStartCall:(id)a3 withCompletion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = IntentHandlerDefaultLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v19 = 138412290;
    v20 = v6;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Resolving callRecordToCallBack for start call: %@", &v19, 0xCu);
  }

  v9 = IntentHandlerDefaultLog();
  v10 = os_signpost_id_generate(v9);

  v11 = IntentHandlerDefaultLog();
  v12 = v11;
  if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
  {
    LOWORD(v19) = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v12, OS_SIGNPOST_INTERVAL_BEGIN, v10, "resolveCallRecordToCallBack", "", &v19, 2u);
  }

  v13 = [v6 callRecordFilter];

  if (v13)
  {
    v14 = [(StartCallIntentHandler *)self recentCallRecordToRedialForIntent:v6];
    if (v14)
    {
      [INStartCallCallRecordToCallBackResolutionResult successWithResolvedCallRecord:v14];
    }

    else
    {
      [INStartCallCallRecordToCallBackResolutionResult unsupportedForReason:1];
    }
    v15 = ;
  }

  else
  {
    v15 = +[INStartCallCallRecordToCallBackResolutionResult notRequired];
  }

  v16 = IntentHandlerDefaultLog();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v19 = 138412290;
    v20 = v15;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Calling completion block with result: %@", &v19, 0xCu);
  }

  v17 = IntentHandlerDefaultLog();
  v18 = v17;
  if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v17))
  {
    LOWORD(v19) = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v18, OS_SIGNPOST_INTERVAL_END, v10, "resolveCallRecordToCallBack", "", &v19, 2u);
  }

  v7[2](v7, v15);
}

- (void)resolveDestinationTypeForStartCall:(id)a3 withCompletion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = IntentHandlerDefaultLog();
  v9 = os_signpost_id_generate(v8);

  v10 = IntentHandlerDefaultLog();
  v11 = v10;
  v12 = v9 - 1;
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    LOWORD(v31) = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v11, OS_SIGNPOST_INTERVAL_BEGIN, v9, "resolveDestinationType", "", &v31, 2u);
  }

  v13 = IntentHandlerDefaultLog();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v31 = 138412290;
    v32 = v6;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Resolve destination type for start call: %@", &v31, 0xCu);
  }

  v14 = &AnalyticsSendEventLazy_ptr;
  if ([v6 destinationType])
  {
    [INCallDestinationTypeResolutionResult successWithResolvedCallDestinationType:[v6 destinationType]];
  }

  else
  {
    +[INCallDestinationTypeResolutionResult notRequired];
  }
  v15 = ;
  v16 = [v6 contacts];
  if ([v16 count] != 1 || -[NSObject destinationType](v6, "destinationType") == 4)
  {
    v17 = 0;
LABEL_12:

    goto LABEL_13;
  }

  v27 = [v6 destinationType];

  if (v27 != 5)
  {
    v16 = [v6 contacts];
    [v16 firstObject];
    v29 = v28 = v9;
    v30 = [v29 personHandle];
    v17 = [v30 value];

    v9 = v28;
    v14 = &AnalyticsSendEventLazy_ptr;
    goto LABEL_12;
  }

  v17 = 0;
LABEL_13:
  if (![v17 length])
  {
    v19 = IntentHandlerDefaultLog();
    if (!os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_23;
    }

    LOWORD(v31) = 0;
    v21 = "Could not determine if handle to dial is an emergency handle because handle has not yet been resolved";
    v22 = v19;
    v23 = 2;
LABEL_22:
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, v21, &v31, v23);
    goto LABEL_23;
  }

  v18 = [(StartCallIntentHandler *)self isEmergencyHandle:v17];
  v19 = IntentHandlerDefaultLog();
  v20 = os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT);
  if (!v18)
  {
    if (!v20)
    {
      goto LABEL_23;
    }

    v31 = 138412290;
    v32 = v17;
    v21 = "%@ is not an emergency handle. Do not need special resolving.";
    v22 = v19;
    v23 = 12;
    goto LABEL_22;
  }

  if (v20)
  {
    v31 = 138412290;
    v32 = v17;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "%@ is an emergency handle. Resolving to an emergency call", &v31, 0xCu);
  }

  [v14[259] successWithResolvedCallDestinationType:2];
  v15 = v19 = v15;
LABEL_23:

  v24 = IntentHandlerDefaultLog();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    v31 = 138412290;
    v32 = v15;
    _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Calling completion block with result: %@", &v31, 0xCu);
  }

  v25 = IntentHandlerDefaultLog();
  v26 = v25;
  if (v12 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v25))
  {
    LOWORD(v31) = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v26, OS_SIGNPOST_INTERVAL_END, v9, "resolveDestinationType", "", &v31, 2u);
  }

  v7[2](v7, v15);
}

- (id)resolutionResultForEmergency
{
  v2 = [(StartCallIntentHandler *)self dataSource];
  v3 = [v2 siriEmergencyServices];

  v4 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v3 count]);
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  obj = v3;
  v5 = [obj countByEnumeratingWithState:&v29 objects:v35 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v30;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        v9 = v4;
        if (*v30 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v29 + 1) + 8 * i);
        v11 = [INPerson alloc];
        v12 = [INPersonHandle alloc];
        v13 = [v10 handle];
        v14 = [v13 value];
        v15 = [v10 label];
        v16 = [(StartCallIntentHandler *)self localizedEmergencyString:v15];
        v17 = [v12 initWithValue:v14 type:2 label:v16 emergencyType:1];
        v18 = [v11 initWithPersonHandle:v17 nameComponents:0 displayName:0 image:0 contactIdentifier:0 customIdentifier:0];

        v4 = v9;
        [v9 addObject:v18];
      }

      v6 = [obj countByEnumeratingWithState:&v29 objects:v35 count:16];
    }

    while (v6);
  }

  if ([v4 count] >= 2)
  {
    v19 = IntentHandlerDefaultLog();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v34 = v4;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "There are more than one number that could be dialed. Prompting to disambiguate between them using these people: %@", buf, 0xCu);
    }

    v20 = [INStartCallContactResolutionResult resolutionResultDisambiguationWithItemsToDisambiguate:v4];
LABEL_19:
    v25 = v20;
    goto LABEL_20;
  }

  v21 = [v4 count];
  v22 = IntentHandlerDefaultLog();
  v23 = os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT);
  if (v21 != 1)
  {
    if (v23)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "[WARN] User asked to call emergency services. Emergency provider does not have multiple handles, and call can be completed without specifying one. Returning not required.", buf, 2u);
    }

    v20 = +[INStartCallContactResolutionResult notRequired];
    goto LABEL_19;
  }

  if (v23)
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Only a single emergency number to call. Resolving to that number.", buf, 2u);
  }

  v24 = [v4 firstObject];
  v25 = [INStartCallContactResolutionResult successWithResolvedPerson:v24];

LABEL_20:

  return v25;
}

- (void)resolveContactsForStartCall:(id)a3 withCompletion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = IntentHandlerDefaultLog();
  v9 = os_signpost_id_generate(v8);

  v10 = IntentHandlerDefaultLog();
  v11 = v10;
  v12 = v9 - 1;
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v11, OS_SIGNPOST_INTERVAL_BEGIN, v9, "resolveContacts", " enableTelemetry=YES ", buf, 2u);
  }

  v13 = IntentHandlerDefaultLog();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v100 = v6;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Resolving contacts for start call intent: %@", buf, 0xCu);
  }

  if ([(StartCallIntentHandler *)self intentHasUnresolvedLocalEmergencyContact:v6])
  {
    v14 = [(StartCallIntentHandler *)self dataSource];
    v15 = [v14 providerManager];
    v16 = [v15 emergencyProvider];
    v17 = [v16 emergencyLabeledHandles];
    v18 = [v17 count];

    v12 = v9 - 1;
    if (v18 >= 2)
    {
      v75 = v7;
      v19 = objc_alloc_init(NSMutableArray);
      v87 = 0u;
      v88 = 0u;
      v89 = 0u;
      v90 = 0u;
      v20 = [v6 contacts];
      v21 = [v20 countByEnumeratingWithState:&v87 objects:v98 count:16];
      if (v21)
      {
        v22 = v21;
        v23 = *v88;
        do
        {
          for (i = 0; i != v22; i = i + 1)
          {
            if (*v88 != v23)
            {
              objc_enumerationMutation(v20);
            }

            v25 = *(*(&v87 + 1) + 8 * i);
            if ([(StartCallIntentHandler *)self isUnresolvedLocalEmergencyContact:v25])
            {
              v26 = [(StartCallIntentHandler *)self resolutionResultForEmergency];
            }

            else
            {
              v27 = IntentHandlerDefaultLog();
              if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412290;
                v100 = v25;
                _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "[WARN] Intent includes an emergency person and a non-emergency person. Returning success for non-emergency person so emergency person can be properly resolved. Person: %@", buf, 0xCu);
              }

              v26 = [INStartCallContactResolutionResult successWithResolvedPerson:v25];
            }

            v28 = v26;
            [v19 addObject:v26];
          }

          v22 = [v20 countByEnumeratingWithState:&v87 objects:v98 count:16];
        }

        while (v22);
      }

      v29 = [v19 copy];
      [(StartCallIntentHandler *)self updateHandlerStateForContactResolutionResults:v29];
      v30 = IntentHandlerDefaultLog();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v100 = v29;
        _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "Detected foreign emergency label, calling completion block early: %@", buf, 0xCu);
      }

      v31 = IntentHandlerDefaultLog();
      v32 = v31;
      v7 = v75;
      if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v31))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v32, OS_SIGNPOST_INTERVAL_END, v9, "resolveContacts", "", buf, 2u);
      }

      v75[2](v75, v29);
      goto LABEL_80;
    }
  }

  v33 = [v6 destinationType];
  v29 = 0;
  if (v33 > 2)
  {
    if ((v33 - 4) >= 2)
    {
      if (v33 != 3)
      {
        goto LABEL_74;
      }

      v63 = IntentHandlerDefaultLog();
      if (os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v63, OS_LOG_TYPE_DEFAULT, "Resolution not required for voicemail destination", buf, 2u);
      }

      v64 = +[INStartCallContactResolutionResult notRequired];
      v97 = v64;
      v65 = &v97;
      goto LABEL_68;
    }

    v34 = IntentHandlerDefaultLog();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "Resolution for redial", buf, 2u);
    }

    v35 = [(StartCallIntentHandler *)self recentCallRecordToRedialForIntent:v6];
    v36 = v35;
    if (v35)
    {
      v37 = [v35 participants];
      v38 = [v37 count];

      if (v38 >= 2)
      {
        v76 = v7;
        v78 = v12;
        v39 = v6;
        v40 = IntentHandlerDefaultLog();
        if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v100 = v36;
          _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "recentCall for group facetime: %@", buf, 0xCu);
        }

        v41 = objc_alloc_init(NSMutableArray);
        v79 = 0u;
        v80 = 0u;
        v81 = 0u;
        v82 = 0u;
        v42 = [v36 participants];
        v43 = [v42 countByEnumeratingWithState:&v79 objects:v94 count:16];
        if (v43)
        {
          v44 = v43;
          v45 = *v80;
          do
          {
            for (j = 0; j != v44; j = j + 1)
            {
              if (*v80 != v45)
              {
                objc_enumerationMutation(v42);
              }

              v47 = [INPersonResolutionResult successWithResolvedPerson:*(*(&v79 + 1) + 8 * j)];
              [v41 addObject:v47];
            }

            v44 = [v42 countByEnumeratingWithState:&v79 objects:v94 count:16];
          }

          while (v44);
        }

        v29 = [v41 copy];
        v6 = v39;
        v7 = v76;
        v12 = v78;
        goto LABEL_73;
      }

      v67 = [v36 participants];
      v68 = [v67 count];

      if (v68 == 1)
      {
        v41 = [v36 participants];
        v69 = [v41 firstObject];
        v70 = [INStartCallContactResolutionResult successWithResolvedPerson:v69];
        v93 = v70;
        v29 = [NSArray arrayWithObjects:&v93 count:1];

LABEL_73:
        goto LABEL_74;
      }

      v71 = IntentHandlerDefaultLog();
      if (os_log_type_enabled(v71, OS_LOG_TYPE_ERROR))
      {
        sub_100030334();
      }

      v41 = [INStartCallContactResolutionResult unsupportedForReason:7];
      v91 = v41;
      v66 = &v91;
    }

    else
    {
      v41 = [INStartCallContactResolutionResult unsupportedForReason:6];
      v92 = v41;
      v66 = &v92;
    }

    v29 = [NSArray arrayWithObjects:v66 count:1];
    goto LABEL_73;
  }

  if (v33 >= 2)
  {
    if (v33 != 2)
    {
      goto LABEL_74;
    }

    v48 = IntentHandlerDefaultLog();
    if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_DEFAULT, "Resolution for emergency destination", buf, 2u);
    }

    v49 = [v6 contacts];
    v50 = [v49 firstObject];
    v51 = [v50 personHandle];
    v52 = [v51 value];
    v53 = [v52 length];

    v54 = IntentHandlerDefaultLog();
    v55 = os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT);
    if (v53)
    {
      v77 = v7;
      if (v55)
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v54, OS_LOG_TYPE_DEFAULT, "Intent's contact has a personHandle.value set on an emergency call. Resolving to that value.", buf, 2u);
      }

      v56 = objc_alloc_init(NSMutableArray);
      v83 = 0u;
      v84 = 0u;
      v85 = 0u;
      v86 = 0u;
      v57 = [v6 contacts];
      v58 = [v57 countByEnumeratingWithState:&v83 objects:v95 count:16];
      if (v58)
      {
        v59 = v58;
        v60 = *v84;
        do
        {
          for (k = 0; k != v59; k = k + 1)
          {
            if (*v84 != v60)
            {
              objc_enumerationMutation(v57);
            }

            v62 = [INPersonResolutionResult successWithResolvedPerson:*(*(&v83 + 1) + 8 * k)];
            [v56 addObject:v62];
          }

          v59 = [v57 countByEnumeratingWithState:&v83 objects:v95 count:16];
        }

        while (v59);
      }

      v29 = [v56 copy];
      v7 = v77;
      goto LABEL_74;
    }

    if (v55)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v54, OS_LOG_TYPE_DEFAULT, "Intent's contact has no display name. Looking up the list of emergency handles available on this device", buf, 2u);
    }

    v64 = [(StartCallIntentHandler *)self resolutionResultForEmergency];
    v96 = v64;
    v65 = &v96;
LABEL_68:
    v29 = [NSArray arrayWithObjects:v65 count:1];

    goto LABEL_74;
  }

  v29 = [(StartCallIntentHandler *)self personResolutionResultsForIntent:v6];
LABEL_74:
  [(StartCallIntentHandler *)self updateHandlerStateForContactResolutionResults:v29];
  v72 = IntentHandlerDefaultLog();
  if (os_log_type_enabled(v72, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v100 = v29;
    _os_log_impl(&_mh_execute_header, v72, OS_LOG_TYPE_DEFAULT, "Calling completion block with resolution results: %@", buf, 0xCu);
  }

  v73 = IntentHandlerDefaultLog();
  v74 = v73;
  if (v12 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v73))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v74, OS_SIGNPOST_INTERVAL_END, v9, "resolveContacts", "", buf, 2u);
  }

  v7[2](v7, v29);
LABEL_80:
}

- (void)resolveCallCapabilityForStartCall:(id)a3 withCompletion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = IntentHandlerDefaultLog();
  v9 = os_signpost_id_generate(v8);

  v10 = IntentHandlerDefaultLog();
  v11 = v10;
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    LOWORD(v18) = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v11, OS_SIGNPOST_INTERVAL_BEGIN, v9, "resolveCallCapability", "", &v18, 2u);
  }

  v12 = IntentHandlerDefaultLog();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v18 = 138412290;
    v19 = v6;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Resolving call capability for start call intent: %@", &v18, 0xCu);
  }

  v13 = [(StartCallIntentHandler *)self recentCallRecordToRedialForIntent:v6];
  v14 = -[StartCallIntentHandler resolutionResultForCallCapability:idiom:withDisplayDisabled:](self, "resolutionResultForCallCapability:idiom:withDisplayDisabled:", -[StartCallIntentHandler inferCallCapabilityForPreferredCallProvider:recentCall:initialCallCapability:idiom:isDisplayDisabled:executionContext:](self, "inferCallCapabilityForPreferredCallProvider:recentCall:initialCallCapability:idiom:isDisplayDisabled:executionContext:", [v6 preferredCallProvider], v13, objc_msgSend(v6, "callCapability"), objc_msgSend(v6, "_idiom"), objc_msgSend(v6, "_isPrimaryDisplayDisabled"), objc_msgSend(v6, "_executionContext")), objc_msgSend(v6, "_idiom"), objc_msgSend(v6, "_isPrimaryDisplayDisabled"));
  v15 = IntentHandlerDefaultLog();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v18 = 138412290;
    v19 = v14;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Returning call capability resolution result: %@", &v18, 0xCu);
  }

  v16 = IntentHandlerDefaultLog();
  v17 = v16;
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v16))
  {
    LOWORD(v18) = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v17, OS_SIGNPOST_INTERVAL_END, v9, "resolveCallCapability", "", &v18, 2u);
  }

  v7[2](v7, v14);
}

- (int64_t)callCapabilityFromRecentCall:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (!v3)
  {
    v6 = IntentHandlerDefaultLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 0;
      v8 = "[WARN] Unable to infer callCapability from call to redial because the recent call was nil";
      v9 = &v14;
LABEL_14:
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, v8, v9, 2u);
    }

LABEL_15:
    v7 = 0;
    goto LABEL_16;
  }

  v5 = [v3 mediaType];
  if (!v5)
  {
    v6 = IntentHandlerDefaultLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 0;
      v8 = "[WARN] Unable to infer callCapability from call to redial because media type of that call was unknown.";
      v9 = &v11;
      goto LABEL_14;
    }

    goto LABEL_15;
  }

  if (v5 == 2)
  {
    v6 = IntentHandlerDefaultLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v12 = 0;
      v7 = 2;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Inferring video call capability from call to redial", v12, 2u);
    }

    else
    {
      v7 = 2;
    }
  }

  else
  {
    if (v5 != 1)
    {
      v7 = 0;
      goto LABEL_17;
    }

    v6 = IntentHandlerDefaultLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Inferring audio call capability from call to redial", buf, 2u);
    }

    v7 = 1;
  }

LABEL_16:

LABEL_17:
  return v7;
}

- (BOOL)shouldForceAudioOnlyWithIdiom:(int64_t)a3 withDisplayDisabled:(BOOL)a4
{
  v4 = __stack_chk_guard;
  if (a3 <= 7)
  {
    v5 = a4;
    if (((1 << a3) & 0x47) == 0)
    {
      if (((1 << a3) & 0x38) != 0)
      {
        v11 = IntentHandlerDefaultLog();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          v18 = 134217984;
          v19 = a3;
          v12 = "deviceIdiom %ld is an audio only device idiom.";
          v13 = v11;
          v14 = 12;
LABEL_15:
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, v12, &v18, v14);
          goto LABEL_16;
        }

        goto LABEL_16;
      }

      v16 = [(StartCallIntentHandler *)self dataSource];
      v17 = [v16 hasCamera];

      if ((v17 & 1) == 0)
      {
        v11 = IntentHandlerDefaultLog();
        if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_16;
        }

        LOWORD(v18) = 0;
        v12 = "This Mac has no attached camera.";
        goto LABEL_14;
      }
    }

    v8 = IntentHandlerDefaultLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v18 = 134217984;
      v19 = a3;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "deviceIdiom %ld supports video calling.", &v18, 0xCu);
    }

    v9 = [(StartCallIntentHandler *)self dataSource];
    v10 = [v9 supportsFaceTimeVideoCalls];

    if (v10)
    {
      if (!v5)
      {
        v4 = 0;
        return v4 & 1;
      }

      v11 = IntentHandlerDefaultLog();
      if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_16;
      }

      LOWORD(v18) = 0;
      v12 = "Devices primary display is disabled, e.g. user is on carDND mode. ";
      goto LABEL_14;
    }

    v11 = IntentHandlerDefaultLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v18) = 0;
      v12 = "Call capabilities do not support FaceTime video calls";
LABEL_14:
      v13 = v11;
      v14 = 2;
      goto LABEL_15;
    }

LABEL_16:

    v4 = 1;
  }

  return v4 & 1;
}

- (BOOL)isGFTDisabledForChinaSKU:(id)a3
{
  v4 = a3;
  if (-[StartCallIntentHandler isChinaSKUDevice](self, "isChinaSKUDevice") && ([v4 isGroupCall], v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "BOOLValue"), v5, v6))
  {
    v7 = IntentHandlerDefaultLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "GroupFaceTime is disabled for China SKU devices", v10, 2u);
    }

    v8 = 1;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)resolveFaceTimeLinkForStartCall:(id)a3 withCompletion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = IntentHandlerDefaultLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v42 = v6;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Resolving faceTimeLink for start call intent: %@", buf, 0xCu);
  }

  v9 = IntentHandlerDefaultLog();
  v10 = os_signpost_id_generate(v9);

  v11 = IntentHandlerDefaultLog();
  v12 = v11;
  if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v12, OS_SIGNPOST_INTERVAL_BEGIN, v10, "resolveFaceTimeLink", " enableTelemetry=YES ", buf, 2u);
  }

  v35 = _NSConcreteStackBlock;
  v36 = 3221225472;
  v37 = sub_10001506C;
  v38 = &unk_10004CF78;
  v40 = v10;
  v13 = v7;
  v39 = v13;
  v14 = objc_retainBlock(&v35);
  if ([v6 preferredCallProvider] == 2)
  {
    if ([(StartCallIntentHandler *)self isFaceTimeInvitationEnabled])
    {
      v15 = [v6 contacts];
      v16 = [v15 count];

      if (v16)
      {
        v17 = +[NSMutableSet set];
        v18 = +[NSMutableSet set];
        [(StartCallIntentHandler *)self extractHandlesFromIntent:v6 faceTimeMemberHandles:v17 nonFaceTimeMemberHandles:v18];
        if ([v18 count])
        {
          v19 = [v6 _idiom];
          if ([v6 _idiom] != 4)
          {
            v25 = [v6 _idiom];
            if (v19 != 3 && v25 != 6)
            {
              v26 = [(StartCallIntentHandler *)self faceTimeUtilities];
              v27 = [v26 generateFaceTimeLink:v17];

              if (v27 && ([v27 URL], v28 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v28, "absoluteString"), v29 = objc_claimAutoreleasedReturnValue(), v30 = objc_msgSend(v29, "length"), v29, v28, v30))
              {
                v31 = [v27 URL];
                v32 = [v31 absoluteString];
                v23 = [INStringResolutionResult successWithResolvedString:v32];
              }

              else
              {
                v33 = IntentHandlerDefaultLog();
                if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 0;
                  _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "Link generation failed and nil was returned. Setting empty string.", buf, 2u);
                }

                v23 = [INStringResolutionResult successWithResolvedString:&stru_10004D950];
              }

              v34 = IntentHandlerDefaultLog();
              if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412290;
                v42 = v23;
                _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "Returning FaceTimeLink resolution result: %@", buf, 0xCu);
              }

              (v14[2])(v14, v23);
              goto LABEL_22;
            }
          }

          v20 = IntentHandlerDefaultLog();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "This is watchOS or tvOS. Sending a placeholder string for returning unsupported dialog", buf, 2u);
          }

          v21 = [INStringResolutionResult successWithResolvedString:@"NoLinkGenerated"];
        }

        else
        {
          v24 = IntentHandlerDefaultLog();
          if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "No non-FaceTime handles found. Returning nil.", buf, 2u);
          }

          v21 = +[INStringResolutionResult notRequired];
        }

        v23 = v21;
        (v14[2])(v14, v21);
LABEL_22:

        goto LABEL_17;
      }
    }
  }

  v22 = IntentHandlerDefaultLog();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Returning empty string as this is a telephony call or featureflag is disabled or destinations was empty", buf, 2u);
  }

  v23 = [INStringResolutionResult successWithResolvedString:&stru_10004D950];
  (v14[2])(v14, v23);
LABEL_17:
}

- (void)resolvePreferredCallProviderForStartCall:(id)a3 withCompletion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = IntentHandlerDefaultLog();
  v9 = os_signpost_id_generate(v8);

  v10 = IntentHandlerDefaultLog();
  v11 = v10;
  v12 = v9 - 1;
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v11, OS_SIGNPOST_INTERVAL_BEGIN, v9, "resolvePreferredCallProvider", "", buf, 2u);
  }

  v13 = IntentHandlerDefaultLog();
  v14 = &off_100038000;
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v64 = v6;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Resolving call provider for start call intent: %@", buf, 0xCu);
  }

  v15 = [v6 preferredCallProvider];
  if (v15)
  {
    v16 = 0;
LABEL_8:
    if (v15 == 3)
    {
      v36 = 3;
      goto LABEL_52;
    }

    if (v15 != 2)
    {
      if (v15 == 1)
      {
        v61 = v16;
        v62 = v9 - 1;
        v17 = v9;
        v18 = [(StartCallIntentHandler *)self globalEmergencyNumbers];
        v19 = [v6 contacts];
        v20 = [v19 firstObject];
        v21 = [v20 personHandle];
        v22 = [v21 value];
        v23 = ([v18 containsObject:v22] & 1) != 0 || objc_msgSend(v6, "destinationType") == 2;

        v39 = [v6 _idiom];
        v40 = [(StartCallIntentHandler *)self dataSource];
        v41 = [v40 supportsTelephonyCalls];

        if ((v23 & 1) != 0 || v39 == 3)
        {
          v9 = v17;
          v16 = v61;
          v12 = v62;
          v14 = &off_100038000;
          if ((v41 & 1) == 0)
          {
            v43 = IntentHandlerDefaultLog();
            if (os_log_type_enabled(v43, OS_LOG_TYPE_DEBUG))
            {
              sub_100030570(v39 == 3, v23, v43);
            }
          }
        }

        else
        {
          v9 = v17;
          v16 = v61;
          v12 = v62;
          v14 = &off_100038000;
          if ((v41 & 1) == 0)
          {
            v42 = IntentHandlerDefaultLog();
            if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
            {
              sub_10003053C();
            }

            v38 = 1;
            goto LABEL_47;
          }
        }

        v36 = 1;
LABEL_52:
        v27 = [INStartCallPreferredCallProviderResolutionResult successWithResolvedPreferredCallProvider:v36];
        goto LABEL_53;
      }

LABEL_18:
      v27 = +[INStartCallPreferredCallProviderResolutionResult notRequired];
LABEL_53:
      v26 = v27;
      goto LABEL_54;
    }

    v28 = -[StartCallIntentHandler inferCallCapabilityForPreferredCallProvider:recentCall:initialCallCapability:idiom:isDisplayDisabled:executionContext:](self, "inferCallCapabilityForPreferredCallProvider:recentCall:initialCallCapability:idiom:isDisplayDisabled:executionContext:", 2, v16, [v6 callCapability], objc_msgSend(v6, "_idiom"), objc_msgSend(v6, "_isPrimaryDisplayDisabled"), objc_msgSend(v6, "_executionContext"));
    v29 = [(StartCallIntentHandler *)self faceTimeUtilities];
    v30 = [v29 isFaceTimeEnabledInSettings];

    if ((v30 & 1) == 0)
    {
      v37 = IntentHandlerDefaultLog();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
      {
        sub_10003039C();
      }

      v38 = 6;
      goto LABEL_47;
    }

    if (v28 == 2)
    {
      if (-[StartCallIntentHandler shouldForceAudioOnlyWithIdiom:withDisplayDisabled:](self, "shouldForceAudioOnlyWithIdiom:withDisplayDisabled:", [v6 _idiom], objc_msgSend(v6, "_isPrimaryDisplayDisabled")))
      {
        v44 = [(StartCallIntentHandler *)self dataSource];
        v45 = [v44 isFaceTimeVideoBlocked];

        if (v45)
        {
          v35 = IntentHandlerDefaultLog();
          if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
          {
LABEL_45:
            sub_1000304A0();
          }

LABEL_46:

          v38 = 4;
LABEL_47:
          v27 = [INStartCallPreferredCallProviderResolutionResult unsupportedForReason:v38];
          goto LABEL_53;
        }

        v56 = [(StartCallIntentHandler *)self dataSource];
        v57 = [v56 supportsDisplayingFaceTimeVideoCalls];

        if (v57)
        {
          v58 = [(StartCallIntentHandler *)self dataSource];
          v59 = [v58 isDirectFaceTimeVideoCallingCurrentlyAvailable];

          v54 = IntentHandlerDefaultLog();
          v60 = os_log_type_enabled(v54, OS_LOG_TYPE_ERROR);
          if (v59)
          {
            if (v60)
            {
              sub_10003046C();
            }

            goto LABEL_68;
          }

          if (v60)
          {
            sub_100030438();
          }

LABEL_79:

          v38 = 5;
          goto LABEL_47;
        }

        v46 = IntentHandlerDefaultLog();
        if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_72;
        }

        goto LABEL_73;
      }

      if ([(StartCallIntentHandler *)self isGFTDisabledForChinaSKU:v6])
      {
        v46 = IntentHandlerDefaultLog();
        if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
        {
          sub_1000303D0();
        }

        goto LABEL_73;
      }
    }

    else if (v28 == 1)
    {
      v31 = [(StartCallIntentHandler *)self dataSource];
      v32 = [v31 supportsFaceTimeAudioCalls];

      if ((v32 & 1) == 0)
      {
        v33 = [(StartCallIntentHandler *)self dataSource];
        v34 = [v33 isFaceTimeAudioBlocked];

        if (v34)
        {
          v35 = IntentHandlerDefaultLog();
          if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_45;
          }

          goto LABEL_46;
        }

        v50 = [(StartCallIntentHandler *)self dataSource];
        v51 = [v50 supportsDisplayingFaceTimeAudioCalls];

        if (v51)
        {
          v52 = [(StartCallIntentHandler *)self dataSource];
          v53 = [v52 isDirectFaceTimeAudioCallingCurrentlyAvailable];

          v54 = IntentHandlerDefaultLog();
          v55 = os_log_type_enabled(v54, OS_LOG_TYPE_ERROR);
          if (v53)
          {
            if (v55)
            {
              sub_100030508();
            }

LABEL_68:

LABEL_74:
            v27 = +[INStartCallPreferredCallProviderResolutionResult unsupported];
            goto LABEL_53;
          }

          if (v55)
          {
            sub_1000304D4();
          }

          goto LABEL_79;
        }

        v46 = IntentHandlerDefaultLog();
        if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
        {
LABEL_72:
          sub_100030404();
        }

LABEL_73:

        goto LABEL_74;
      }
    }

    v36 = 2;
    goto LABEL_52;
  }

  v24 = [(StartCallIntentHandler *)self recentCallRecordToRedialForIntent:v6];
  v16 = v24;
  if (!v24)
  {
    goto LABEL_18;
  }

  v15 = [v24 preferredCallProvider];
  if (v15)
  {
    goto LABEL_8;
  }

  v25 = IntentHandlerDefaultLog();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
  {
    sub_100030600(v16, v25);
  }

  v26 = +[INStartCallPreferredCallProviderResolutionResult unsupported];
  if (!v26)
  {
    goto LABEL_18;
  }

LABEL_54:
  v47 = IntentHandlerDefaultLog();
  if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
  {
    *buf = *(v14 + 442);
    v64 = v26;
    _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_DEFAULT, "Returning call provider resolution result: %@", buf, 0xCu);
  }

  v48 = IntentHandlerDefaultLog();
  v49 = v48;
  if (v12 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v48))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v49, OS_SIGNPOST_INTERVAL_END, v9, "resolvePreferredCallProvider", "", buf, 2u);
  }

  v7[2](v7, v26);
}

- (id)recentCallRecordToRedialForIntent:(id)a3
{
  v4 = a3;
  if ([v4 destinationType] == 4 || objc_msgSend(v4, "destinationType") == 5)
  {
    v5 = IntentHandlerDefaultLog();
    v6 = os_signpost_id_generate(v5);

    v7 = IntentHandlerDefaultLog();
    v8 = v7;
    v9 = v6 - 1;
    if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v8, OS_SIGNPOST_INTERVAL_BEGIN, v6, "recentCallToRedial", "", buf, 2u);
    }

    v10 = IntentHandlerDefaultLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      sub_100030694();
    }

    v11 = [v4 callRecordToCallBack];

    if (v11)
    {
      v12 = IntentHandlerDefaultLog();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        sub_1000306C8();
      }

      v13 = [v4 callRecordToCallBack];
    }

    else
    {
      v14 = [v4 callRecordFilter];

      v15 = IntentHandlerDefaultLog();
      v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG);
      if (v14)
      {
        v35 = self;
        v36 = v6 - 1;
        v37 = v6;
        if (v16)
        {
          sub_1000306FC();
        }

        v17 = [RecentCallQuery alloc];
        v18 = [v4 callRecordFilter];
        v19 = [v18 participants];
        v20 = [v4 destinationType];
        v21 = [v4 callRecordFilter];
        v22 = [v21 callTypes];
        v23 = [v4 callRecordFilter];
        v24 = [v23 callCapability];
        v25 = [v4 callRecordFilter];
        v26 = -[RecentCallQuery initWithParticipants:destinationType:callTypes:callCapability:preferredCallProvider:includeThirdPartyCalls:](v17, "initWithParticipants:destinationType:callTypes:callCapability:preferredCallProvider:includeThirdPartyCalls:", v19, v20, v22, v24, [v25 preferredCallProvider], 1);

        v27 = [(StartCallIntentHandler *)v35 recentCallToRedialForQuery:v26];
        if (v27)
        {
          v13 = [(StartCallIntentHandler *)v35 callRecordForRecentCall:v27];
        }

        else
        {
          v13 = 0;
        }

        v9 = v36;
        v6 = v37;
      }

      else
      {
        if (v16)
        {
          sub_100030730();
        }

        v39 = 0;
        [v4 recordTypeForRedialing];
        INCallRecordTypeGetBackingType();
        INCallRecordTypeOptionsAddBackingType();
        v28 = [RecentCallQuery alloc];
        v29 = [v4 contacts];
        v30 = -[RecentCallQuery initWithParticipants:destinationType:callTypes:callCapability:preferredCallProvider:](v28, "initWithParticipants:destinationType:callTypes:callCapability:preferredCallProvider:", v29, [v4 destinationType], 0, objc_msgSend(v4, "callCapability"), objc_msgSend(v4, "preferredCallProvider"));

        v31 = [(StartCallIntentHandler *)self recentCallToRedialForQuery:v30];
        if (v31)
        {
          v13 = [(StartCallIntentHandler *)self callRecordForRecentCall:v31];
        }

        else
        {
          v13 = 0;
        }
      }
    }

    v32 = IntentHandlerDefaultLog();
    v33 = v32;
    if (v9 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v32))
    {
      *v38 = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v33, OS_SIGNPOST_INTERVAL_END, v6, "recentCallToRedial", "", v38, 2u);
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (id)callRecordForRecentCall:(id)a3
{
  v4 = a3;
  v5 = +[CallRecordConverter sharedInstance];
  v18 = v4;
  v6 = [NSArray arrayWithObjects:&v18 count:1];

  v7 = [(StartCallIntentHandler *)self dataSource];
  v8 = [v7 contactsDataSource];
  v9 = [(StartCallIntentHandler *)self dataSource];
  v10 = [v9 providerManager];
  v11 = [(StartCallIntentHandler *)self dataSource];
  v12 = [v11 coreTelephonyDataSource];
  v13 = [v12 allRelevantISOCountryCodes];
  v14 = [v5 callRecordsForRecentCalls:v6 withContactsDataSource:v8 withCallProviderManager:v10 withCurrentISOCountryCodes:v13];

  if ([v14 count] == 1)
  {
    v15 = [v14 objectAtIndexedSubscript:0];
  }

  else
  {
    v16 = IntentHandlerDefaultLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      sub_100030764();
    }

    v15 = 0;
  }

  return v15;
}

- (id)recentCallToRedialForQuery:(id)a3
{
  v4 = a3;
  v5 = [(StartCallIntentHandler *)self dataSource];
  v6 = [v5 contactsDataSource];
  v7 = [(StartCallIntentHandler *)self identifierToContactCache];
  v8 = [(StartCallIntentHandler *)self dataSource];
  v9 = [v8 coreTelephonyDataSource];
  v10 = [v4 predicateForRecentCallWithContactsDataSource:v6 contactIdentifierCache:v7 coreTelephonyDataSource:v9];

  v11 = IntentHandlerDefaultLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    sub_100030798();
  }

  v12 = IntentHandlerDefaultLog();
  v13 = os_signpost_id_generate(v12);

  v14 = IntentHandlerDefaultLog();
  v15 = v14;
  if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v14))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v15, OS_SIGNPOST_INTERVAL_BEGIN, v13, "callHistoryDBCallToRedial", "", buf, 2u);
  }

  v16 = [(StartCallIntentHandler *)self dataSource];
  v17 = [v16 callHistoryDataSource];
  v18 = [v17 callsWithPredicate:v10 limit:1 offset:0 batchSize:1];
  v19 = [v18 firstObject];

  v20 = IntentHandlerDefaultLog();
  v21 = v20;
  if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v20))
  {
    *v24 = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v21, OS_SIGNPOST_INTERVAL_END, v13, "callHistoryDBCallToRedial", "", v24, 2u);
  }

  v22 = IntentHandlerDefaultLog();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
  {
    sub_100030800();
  }

  return v19;
}

- (id)emergencyTypeToString:(int64_t)a3
{
  if (a3 > 2)
  {
    return @"Unset";
  }

  else
  {
    return off_10004D110[a3];
  }
}

- (BOOL)intentHasUnresolvedLocalEmergencyContact:(id)a3
{
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [a3 contacts];
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        if ([(StartCallIntentHandler *)self isUnresolvedLocalEmergencyContact:*(*(&v11 + 1) + 8 * i)])
        {
          v9 = 1;
          goto LABEL_11;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v9 = 0;
LABEL_11:

  return v9;
}

- (BOOL)isUnresolvedLocalEmergencyContact:(id)a3
{
  v3 = a3;
  v4 = [v3 personHandle];
  if ([v4 emergencyType] == 1)
  {
    v5 = [v3 personHandle];
    v6 = [v5 value];
    v7 = [v6 length] == 0;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)globalEmergencyNumbers
{
  if (qword_100057A50 != -1)
  {
    sub_100030868();
  }

  v3 = qword_100057A48;

  return v3;
}

- (id)personResolutionResultsForIntent:(id)a3
{
  v4 = a3;
  v5 = [v4 contacts];
  v6 = [v4 callGroups];
  v7 = [v6 count];

  if (v7)
  {
    v8 = [(StartCallIntentHandler *)self resolveContactsFromCallGroups:v4];

    v5 = v8;
  }

  v220 = v5;
  if ([v5 count])
  {
    v9 = objc_alloc_init(NSMutableArray);
    v265 = 0u;
    v266 = 0u;
    v267 = 0u;
    v268 = 0u;
    v10 = v5;
    v11 = [v10 countByEnumeratingWithState:&v265 objects:v287 count:16];
    v237 = v4;
    v231 = v10;
    if (!v11)
    {
      goto LABEL_210;
    }

    v12 = v11;
    v236 = *v266;
    v222 = _INStartCallContactUnsupportedReasonForeignEmergencyDisambiguation;
    v225 = v9;
    v239 = self;
    while (1)
    {
      v13 = 0;
      v234 = v12;
      do
      {
        if (*v266 != v236)
        {
          objc_enumerationMutation(v10);
        }

        v14 = *(*(&v265 + 1) + 8 * v13);
        v15 = [v14 personHandle];
        v16 = [v15 value];

        if ([v10 count] < 2 || objc_msgSend(v4, "preferredCallProvider") == 2)
        {
          v17 = [v14 personHandle];
          v18 = [v17 emergencyType];

          if (v18 == 1)
          {
            v19 = IntentHandlerDefaultLog();
            if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
            {
              v20 = [v14 personHandle];
              [v14 personHandle];
              v229 = v14;
              v21 = v4;
              v23 = v22 = v13;
              -[StartCallIntentHandler emergencyTypeToString:](self, "emergencyTypeToString:", [v23 emergencyType]);
              v24 = v10;
              v25 = self;
              v26 = v9;
              v28 = v27 = v16;
              *buf = 138412546;
              v273 = v20;
              v274 = 2112;
              v275 = v28;
              _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Handle has the LocalEmergency flag. Resolving success. %@ with type: %@", buf, 0x16u);

              v13 = v22;
              v4 = v21;
              v14 = v229;

              v16 = v27;
              v9 = v26;
              self = v25;
              v10 = v24;
            }

            v29 = [INStartCallContactResolutionResult successWithResolvedPerson:v14];
            [v9 addObject:v29];
            v12 = v234;
          }

          else
          {
            v235 = v13;
            if (![v16 length])
            {
              v44 = [(StartCallIntentHandler *)self featureFlags];
              if ([v44 crrFullRecommendation])
              {
                v45 = [v14 scoredAlternatives];

                if (v45)
                {
                  v29 = [(StartCallIntentHandler *)self relayCRRRecommendationForPerson:v14 intent:v4];
                  [v9 addObject:v29];
                  v12 = v234;
                  goto LABEL_208;
                }
              }

              else
              {
              }

              v233 = v16;
              v46 = [ContactResolver alloc];
              v47 = [(StartCallIntentHandler *)self dataSource];
              v48 = [v47 contactsDataSource];
              v49 = [(StartCallIntentHandler *)self coreAnalyticsLogger];
              v29 = [(ContactResolver *)v46 initWithDataSource:v48 logger:v49];

              v50 = [(ContactResolver *)v29 matchingContactsForPerson:v14];
              if (![v50 count])
              {
                v119 = IntentHandlerDefaultLog();
                v12 = v234;
                if (os_log_type_enabled(v119, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138412290;
                  v273 = v14;
                  _os_log_impl(&_mh_execute_header, v119, OS_LOG_TYPE_DEFAULT, "Found no matching contact from siriMatches or name search, returning unsupported. Person: %@", buf, 0xCu);
                }

                v120 = [INStartCallContactResolutionResult unsupportedForReason:1];
                [v9 addObject:v120];
                v13 = v235;
                goto LABEL_207;
              }

              v51 = [v14 personHandle];
              v52 = [v51 label];

              v230 = v14;
              v53 = [v14 personHandle];
              v54 = [v53 type];

              v240 = v54;
              if (!v54 && [v4 preferredCallProvider] == 1)
              {
                v55 = IntentHandlerDefaultLog();
                if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 0;
                  _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_DEFAULT, "Requested handle type is unknown, but preferredCallProvider is phone. Inferring handle type of phone number.", buf, 2u);
                }

                v240 = 2;
                goto LABEL_44;
              }

              if ([v4 preferredCallProvider] == 2)
              {
                v55 = IntentHandlerDefaultLog();
                if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 0;
                  _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_DEFAULT, "PreferredCallProvider is faceTime. Inferring handle type of unknown to present both phone number and email address.", buf, 2u);
                }

                v240 = 0;
LABEL_44:
              }

              v238 = v52;
              v227 = v29;
              v56 = objc_alloc_init(NSMutableDictionary);
              v261 = 0u;
              v262 = 0u;
              v263 = 0u;
              v264 = 0u;
              v228 = v50;
              v57 = [v50 allContacts];
              v58 = [v57 countByEnumeratingWithState:&v261 objects:v285 count:16];
              if (v58)
              {
                v59 = v58;
                v60 = *v262;
                do
                {
                  for (i = 0; i != v59; i = i + 1)
                  {
                    if (*v262 != v60)
                    {
                      objc_enumerationMutation(v57);
                    }

                    v62 = *(*(&v261 + 1) + 8 * i);
                    v63 = [(StartCallIntentHandler *)v239 dataSource];
                    v64 = [v63 coreTelephonyDataSource];
                    v65 = [v64 allRelevantISOCountryCodes];
                    v66 = [(StartCallIntentHandler *)v239 _inPersonsFromContact:v62 withRequestedType:v240 requestedLabel:v238 isoCountryCodes:v65];

                    if ([v66 count])
                    {
                      [v56 setObject:v66 forKeyedSubscript:v62];
                    }
                  }

                  v59 = [v57 countByEnumeratingWithState:&v261 objects:v285 count:16];
                }

                while (v59);
              }

              v67 = [v56 copy];
              v4 = v237;
              v68 = -[StartCallIntentHandler _applyImpliedFilterToPhoneNumberOnlyMatchesIfApplicableForPersonsByContact:requestedHandleType:preferredCallProvider:](v239, "_applyImpliedFilterToPhoneNumberOnlyMatchesIfApplicableForPersonsByContact:requestedHandleType:preferredCallProvider:", v67, v240, [v237 preferredCallProvider]);

              v50 = v228;
              v223 = [[ContactSlotResolutionHelper alloc] initWithUnresolvedPerson:v230 availableContacts:v228];
              v69 = objc_alloc_init(NSSet);
              v70 = [v230 extractRecommendation];
              v224 = v70;
              if ([v70 contactsAvailableInPool:v228])
              {
                v71 = [(StartCallIntentHandler *)v239 dataSource];
                v72 = [v71 expectUpstreamContactRecommendation];

                if (v72)
                {
                  v73 = IntentHandlerDefaultLog();
                  v13 = v235;
                  if (os_log_type_enabled(v73, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 0;
                    _os_log_impl(&_mh_execute_header, v73, OS_LOG_TYPE_DEFAULT, "Native flow contact resolver enabled.", buf, 2u);
                  }

                  v74 = [v70 type];
                  v75 = 0;
                  if (v74 <= 1)
                  {
                    v29 = v227;
                    if (v74)
                    {
                      if (v74 == 1)
                      {
                        v76 = [v70 contactIdentifiers];
                        v77 = [v76 firstObject];
                        v78 = [v228 contactWithId:v77];
                        v284 = v78;
                        v75 = [NSArray arrayWithObjects:&v284 count:1];

                        v79 = IntentHandlerDefaultLog();
                        if (os_log_type_enabled(v79, OS_LOG_TYPE_DEFAULT))
                        {
                          v80 = [v70 contactIdentifiers];
                          v81 = [v80 firstObject];
                          *buf = 138412290;
                          v273 = v81;
                          _os_log_impl(&_mh_execute_header, v79, OS_LOG_TYPE_DEFAULT, "Confident match found by NCR, uuid %@", buf, 0xCu);
                        }

                        goto LABEL_68;
                      }

LABEL_206:

                      v9 = v225;
                      v10 = v231;
                      v120 = v238;
                      self = v239;
                      v12 = v234;
LABEL_207:

                      v16 = v233;
                      goto LABEL_208;
                    }

                    v168 = IntentHandlerDefaultLog();
                    if (os_log_type_enabled(v168, OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 138412290;
                      v273 = v230;
                      _os_log_impl(&_mh_execute_header, v168, OS_LOG_TYPE_DEFAULT, "NCR found no matches for person: %@", buf, 0xCu);
                    }

                    v83 = [INStartCallContactResolutionResult unsupportedForReason:1];
                    [v225 addObject:v83];
                    v75 = 0;
LABEL_204:

LABEL_205:
                    v13 = v235;
                    goto LABEL_206;
                  }

                  v29 = v227;
                  if (v74 == 2)
                  {
                    v169 = [v70 contactIdentifiers];
                    v79 = [v169 firstObject];

                    v170 = [v228 contactWithId:v79];
                    v283 = v170;
                    v75 = [NSArray arrayWithObjects:&v283 count:1];

                    v171 = [NSSet setWithObject:v79];

                    v172 = IntentHandlerDefaultLog();
                    if (os_log_type_enabled(v172, OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 138412290;
                      v273 = v79;
                      _os_log_impl(&_mh_execute_header, v172, OS_LOG_TYPE_DEFAULT, "Low-confidence (needsConfirmation) match found by NCR, uuid %@", buf, 0xCu);
                    }

                    v69 = v171;
                    v4 = v237;
                  }

                  else
                  {
                    if (v74 != 3)
                    {
                      goto LABEL_206;
                    }

                    v134 = [v70 contactIdentifiers];
                    v79 = [v228 contactsWithIds:v134];

                    if ([(StartCallIntentHandler *)v239 anyContactsHaveSameName:v79])
                    {
                      v135 = IntentHandlerDefaultLog();
                      if (os_log_type_enabled(v135, OS_LOG_TYPE_DEFAULT))
                      {
                        *buf = 0;
                        _os_log_impl(&_mh_execute_header, v135, OS_LOG_TYPE_DEFAULT, "NCR recommended needsDisambiguation for contacts, but some have the same name. Proceeding to handle disambiguation.", buf, 2u);
                      }

                      v79 = v79;
                      v75 = v79;
                    }

                    else
                    {
                      v176 = [v70 contactIdentifiers];
                      v177 = [(ContactSlotResolutionHelper *)v223 buildDisambiguationResultForContacts:v176];

                      [(StartCallIntentHandler *)v239 parseEmergencyContacts:v231 usingExistingResult:v177];
                      v178 = [(StartCallIntentHandler *)v239 featureFlags];
                      v179 = [v178 crrHandleRecommendation];

                      if (v179)
                      {
                        v180 = [v230 siriMatches];
                        v181 = [INStartCallContactResolutionResult disambiguationWithPeopleToDisambiguate:v180];

                        v177 = v181;
                      }

                      [v225 addObject:v177];
                      v182 = IntentHandlerDefaultLog();
                      if (os_log_type_enabled(v182, OS_LOG_TYPE_DEFAULT))
                      {
                        *buf = 138412290;
                        v273 = v79;
                        _os_log_impl(&_mh_execute_header, v182, OS_LOG_TYPE_DEFAULT, "needsDisambiguation recommended by NCR, uuids %@", buf, 0xCu);
                      }

                      v75 = 0;
                    }
                  }

LABEL_68:

                  if (!v75 || ![v75 count])
                  {
                    goto LABEL_205;
                  }

                  v83 = objc_alloc_init(NSMutableArray);
                  v253 = 0u;
                  v254 = 0u;
                  v255 = 0u;
                  v256 = 0u;
                  v75 = v75;
                  v84 = [v75 countByEnumeratingWithState:&v253 objects:v280 count:16];
                  if (v84)
                  {
                    v85 = v84;
                    v86 = *v254;
                    do
                    {
                      for (j = 0; j != v85; j = j + 1)
                      {
                        if (*v254 != v86)
                        {
                          objc_enumerationMutation(v75);
                        }

                        v88 = [v68 objectForKeyedSubscript:*(*(&v253 + 1) + 8 * j)];
                        [v83 addObjectsFromArray:v88];
                      }

                      v85 = [v75 countByEnumeratingWithState:&v253 objects:v280 count:16];
                    }

                    while (v85);
                  }

                  v89 = [v83 copy];
                  v90 = [INPersonDeduplicator dedupeINPersons:v89];

                  if ([v90 count]|| ([v230 personHandle], v136 = objc_claimAutoreleasedReturnValue(), v136, !v136))
                  {
                    v91 = IntentHandlerDefaultLog();
                    if (os_log_type_enabled(v91, OS_LOG_TYPE_DEFAULT))
                    {
                      v92 = [v75 count];
                      v93 = [v90 count];
                      *buf = 134218754;
                      v273 = v92;
                      v274 = 2048;
                      v275 = v93;
                      v276 = 2112;
                      v277 = v75;
                      v278 = 2112;
                      v279 = v90;
                      _os_log_impl(&_mh_execute_header, v91, OS_LOG_TYPE_DEFAULT, "Resolved to %ld matching contacts with %ld matching handles. Contact: %@ Handles: %@", buf, 0x2Au);
                    }

                    v29 = v227;
                    v50 = v228;
                  }

                  else
                  {
                    v137 = v90;
                    v138 = IntentHandlerDefaultLog();
                    if (os_log_type_enabled(v138, OS_LOG_TYPE_DEFAULT))
                    {
                      v139 = [v230 personHandle];
                      *buf = 138412290;
                      v273 = v139;
                      _os_log_impl(&_mh_execute_header, v138, OS_LOG_TYPE_DEFAULT, "No valid matching handle is found for the resolved contacts and this handle has been requested: %@. will attempt additional matching handles from siri matches.", buf, 0xCu);
                    }

                    v90 = [(StartCallIntentHandler *)v239 generateAdditionalMatchingHandles:v230 resolvedContacts:v75 requestedHandleType:v240 requestedHandleLabel:v238];

                    v140 = IntentHandlerDefaultLog();
                    if (os_log_type_enabled(v140, OS_LOG_TYPE_DEFAULT))
                    {
                      v141 = [v75 count];
                      v142 = [v90 count];
                      *buf = 134218754;
                      v273 = v141;
                      v274 = 2048;
                      v275 = v142;
                      v276 = 2112;
                      v277 = v75;
                      v278 = 2112;
                      v279 = v90;
                      _os_log_impl(&_mh_execute_header, v140, OS_LOG_TYPE_DEFAULT, "Resolved to %ld matching contacts with %ld additional matching handles. Contact: %@ Handles: %@", buf, 0x2Au);
                    }

                    v29 = v227;
                    v50 = v228;
                    if ([v90 count]== 1)
                    {
                      v143 = IntentHandlerDefaultLog();
                      if (os_log_type_enabled(v143, OS_LOG_TYPE_DEFAULT))
                      {
                        v144 = [v90 firstObject];
                        *buf = 138412546;
                        v273 = v238;
                        v274 = 2112;
                        v275 = v144;
                        _os_log_impl(&_mh_execute_header, v143, OS_LOG_TYPE_DEFAULT, "%@ was requested but the contact doesn't an exact match. Using the only alternative instead: %@", buf, 0x16u);
                      }

                      v105 = [v90 firstObject];
                      v145 = [(StartCallIntentHandler *)v239 resolutionResultForPersonWithResolvedHandleValue:v105];
                      [v225 addObject:v145];

                      goto LABEL_203;
                    }
                  }

                  v221 = v69;
                  if (![v90 count])
                  {
                    v146 = v90;
                    v147 = IntentHandlerDefaultLog();
                    if (os_log_type_enabled(v147, OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 0;
                      _os_log_impl(&_mh_execute_header, v147, OS_LOG_TYPE_DEFAULT, "None of the resolved contacts have a valid matching handle. Offering all handles as alternatives", buf, 2u);
                    }

                    v105 = objc_alloc_init(NSMutableArray);
                    v249 = 0u;
                    v250 = 0u;
                    v251 = 0u;
                    v252 = 0u;
                    v148 = v75;
                    v149 = [v148 countByEnumeratingWithState:&v249 objects:v271 count:16];
                    if (v149)
                    {
                      v150 = v149;
                      v151 = *v250;
                      do
                      {
                        for (k = 0; k != v150; k = k + 1)
                        {
                          if (*v250 != v151)
                          {
                            objc_enumerationMutation(v148);
                          }

                          v153 = -[StartCallIntentHandler getAlternativesForContact:forRequestedHandleType:forCallProvider:](v239, "getAlternativesForContact:forRequestedHandleType:forCallProvider:", *(*(&v249 + 1) + 8 * k), v240, [v237 preferredCallProvider]);
                          [v105 addObjectsFromArray:v153];
                        }

                        v150 = [v148 countByEnumeratingWithState:&v249 objects:v271 count:16];
                      }

                      while (v150);
                    }

                    v154 = [v105 copy];
                    v155 = [INPersonDeduplicator dedupeINPersons:v154];

                    v156 = IntentHandlerDefaultLog();
                    if (os_log_type_enabled(v156, OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 0;
                      _os_log_impl(&_mh_execute_header, v156, OS_LOG_TYPE_DEFAULT, "Offering all handles as alternatives", buf, 2u);
                    }

                    v157 = [INStartCallContactResolutionResult resolutionResultUnsupportedWithReason:3 alternativeItems:v155];
                    [v225 addObject:v157];

                    v90 = v146;
                    v4 = v237;
                    v29 = v227;
                    v50 = v228;
                    v69 = v221;
                    goto LABEL_203;
                  }

                  v94 = [(StartCallIntentHandler *)v239 featureFlags];
                  if ([v94 crrHandleRecommendation])
                  {
                    v95 = [v230 siriMatches];
                    v96 = [v95 count];

                    if (v96)
                    {
                      v97 = IntentHandlerDefaultLog();
                      if (os_log_type_enabled(v97, OS_LOG_TYPE_DEFAULT))
                      {
                        v98 = [v230 siriMatches];
                        *buf = 138412290;
                        v273 = v98;
                        _os_log_impl(&_mh_execute_header, v97, OS_LOG_TYPE_DEFAULT, "Using CRR based recommendation results: %@", buf, 0xCu);
                      }

                      v99 = [v230 siriMatches];
                      v100 = [v99 count];

                      v69 = v221;
                      if (v100 == 1)
                      {
                        v101 = [v230 siriMatches];
                        v102 = [v101 firstObject];

                        v103 = IntentHandlerDefaultLog();
                        if (os_log_type_enabled(v103, OS_LOG_TYPE_DEFAULT))
                        {
                          *buf = 138412290;
                          v273 = v102;
                          _os_log_impl(&_mh_execute_header, v103, OS_LOG_TYPE_DEFAULT, "Resolved to one CRR recommended handle: %@", buf, 0xCu);
                        }

                        v104 = [v75 firstObject];
                        v105 = [(StartCallIntentHandler *)v239 resolutionResultForPersonWithResolvedContactName:v230 resolvedPerson:v102 resolvedContact:v104 contactIdentifiersRequiringConfirmation:v221];
                      }

                      else
                      {
                        v174 = IntentHandlerDefaultLog();
                        if (os_log_type_enabled(v174, OS_LOG_TYPE_DEFAULT))
                        {
                          v175 = [v230 siriMatches];
                          *buf = 138412290;
                          v273 = v175;
                          _os_log_impl(&_mh_execute_header, v174, OS_LOG_TYPE_DEFAULT, "Resolved to more than one CRR recommended handle: %@", buf, 0xCu);
                        }

                        v102 = [v230 siriMatches];
                        v105 = [INStartCallContactResolutionResult disambiguationWithPeopleToDisambiguate:v102];
                      }

                      [v225 addObject:v105];
                      goto LABEL_202;
                    }
                  }

                  else
                  {
                  }

                  if ([v90 count]== 1)
                  {
                    v105 = [v90 firstObject];
                    v164 = IntentHandlerDefaultLog();
                    v69 = v221;
                    if (os_log_type_enabled(v164, OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 138412290;
                      v273 = v105;
                      _os_log_impl(&_mh_execute_header, v164, OS_LOG_TYPE_DEFAULT, "Resolved to one handle: %@", buf, 0xCu);
                    }

                    v165 = [v75 firstObject];
                    v166 = [(StartCallIntentHandler *)v239 resolutionResultForPersonWithResolvedContactName:v230 resolvedPerson:v105 resolvedContact:v165 contactIdentifiersRequiringConfirmation:v221];

                    [v225 addObject:v166];
                    goto LABEL_202;
                  }

                  v69 = v221;
                  if ([v4 preferredCallProvider] == 2 || objc_msgSend(v4, "callCapability") == 2)
                  {
                    if ([v75 count]== 1)
                    {
                      v167 = [v75 firstObject];
                      goto LABEL_179;
                    }

                    if ([StartCallIntentHandlerUtilities contactsShareHandleValue:v75])
                    {
                      v183 = IntentHandlerDefaultLog();
                      if (os_log_type_enabled(v183, OS_LOG_TYPE_DEFAULT))
                      {
                        *buf = 138412290;
                        v273 = v75;
                        _os_log_impl(&_mh_execute_header, v183, OS_LOG_TYPE_DEFAULT, "Resolved contacts all share a handle: treating them as the same person. Contacts: %@", buf, 0xCu);
                      }

                      v167 = [StartCallIntentHandlerUtilities contactWithMostHandles:v75];
LABEL_179:
                      v105 = v167;
                      if (v167)
                      {
                        if (-[StartCallIntentHandler requireScoreBasedResolutionForGFT:numberOfContactsCount:](v239, "requireScoreBasedResolutionForGFT:numberOfContactsCount:", -[NSObject count](v90, "count"), [v231 count]) || (-[StartCallIntentHandler featureFlags](v239, "featureFlags"), v184 = objc_claimAutoreleasedReturnValue(), v185 = objc_msgSend(v184, "faceTimeNoFanOutEnabled"), v184, v185))
                        {
                          v186 = IntentHandlerDefaultLog();
                          if (os_log_type_enabled(v186, OS_LOG_TYPE_DEFAULT))
                          {
                            *buf = 138412290;
                            v273 = v90;
                            _os_log_impl(&_mh_execute_header, v186, OS_LOG_TYPE_DEFAULT, "Facetime call contact resolved to multiple handles. Using score based resolution model to resolve handles: %@", buf, 0xCu);
                          }

                          v69 = v221;
                          v187 = [(StartCallIntentHandler *)v239 resolvePreferredHandleFromHandles:v90 contactIdentifiersRequiringConfirmation:v221 telephonyOnly:0];
                          [v225 addObject:v187];
                        }

                        else
                        {
                          v193 = [StartCallIntentHandlerUtilities inPersonFromContact:v105 handleValue:0 handleType:v240 handleLabel:v238];
                          v194 = IntentHandlerDefaultLog();
                          if (os_log_type_enabled(v194, OS_LOG_TYPE_DEFAULT))
                          {
                            *buf = 138412290;
                            v273 = v193;
                            _os_log_impl(&_mh_execute_header, v194, OS_LOG_TYPE_DEFAULT, "Facetime call resolved to multiple handles for a distinct person, preserving ambiguity. Will ring all handles. Person: %@", buf, 0xCu);
                          }

                          v69 = v221;
                          v195 = [(StartCallIntentHandler *)v239 resolutionResultForPersonWithResolvedContactName:v230 resolvedPerson:v193 resolvedContact:v105 contactIdentifiersRequiringConfirmation:v221];
                          [v225 addObject:v195];

                          v4 = v237;
                        }

LABEL_202:
                        v50 = v228;
LABEL_203:

                        goto LABEL_204;
                      }
                    }

                    v188 = IntentHandlerDefaultLog();
                    if (os_log_type_enabled(v188, OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 0;
                      _os_log_impl(&_mh_execute_header, v188, OS_LOG_TYPE_DEFAULT, "Facetime call resolved to multiple contacts with the same name, none of which share a handle. Disambiguating between handles.", buf, 2u);
                    }

                    v189 = [INStartCallContactResolutionResult disambiguationWithPeopleToDisambiguate:v90];
                  }

                  else
                  {
                    v191 = IntentHandlerDefaultLog();
                    if (os_log_type_enabled(v191, OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 138412290;
                      v273 = v90;
                      _os_log_impl(&_mh_execute_header, v191, OS_LOG_TYPE_DEFAULT, "Resolved to multiple handles, using score based resolution model to resolve handles: %@", buf, 0xCu);
                    }

                    v189 = [(StartCallIntentHandler *)v239 resolvePreferredHandleFromHandles:v90 contactIdentifiersRequiringConfirmation:v221 telephonyOnly:1];
                  }

                  v105 = v189;
                  [v225 addObject:v189];
                  goto LABEL_203;
                }
              }

              if ([v68 count] == 1)
              {
                v75 = [v68 allKeys];
                v79 = IntentHandlerDefaultLog();
                if (os_log_type_enabled(v79, OS_LOG_TYPE_DEFAULT))
                {
                  v82 = [v75 firstObject];
                  *buf = 138412290;
                  v273 = v82;
                  _os_log_impl(&_mh_execute_header, v79, OS_LOG_TYPE_DEFAULT, "Only one matching contact for requested handle -- proceeding to handle disambiguation: %@", buf, 0xCu);
                }

                v29 = v227;
                goto LABEL_68;
              }

              if ([v228 count] == 1)
              {
                v75 = [v228 allContacts];
                v79 = IntentHandlerDefaultLog();
                v29 = v227;
                if (os_log_type_enabled(v79, OS_LOG_TYPE_DEFAULT))
                {
                  v121 = [v75 firstObject];
                  *buf = 138412290;
                  v273 = v121;
                  _os_log_impl(&_mh_execute_header, v79, OS_LOG_TYPE_DEFAULT, "Only one matching contact (regardless of requested handle): %@", buf, 0xCu);
                }

                goto LABEL_68;
              }

              v122 = [(StartCallIntentHandler *)v239 dataSource];
              v123 = [v122 useLegacyContactResolution];

              if (v123)
              {
                v124 = IntentHandlerDefaultLog();
                if (os_log_type_enabled(v124, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 0;
                  _os_log_impl(&_mh_execute_header, v124, OS_LOG_TYPE_DEFAULT, "Using legacy contact resolution", buf, 2u);
                }

                v83 = objc_alloc_init(NSMutableArray);
                v257 = 0u;
                v258 = 0u;
                v259 = 0u;
                v260 = 0u;
                v125 = [v228 allContacts];
                v126 = [v125 countByEnumeratingWithState:&v257 objects:v282 count:16];
                if (v126)
                {
                  v127 = v126;
                  v128 = *v258;
                  do
                  {
                    for (m = 0; m != v127; m = m + 1)
                    {
                      if (*v258 != v128)
                      {
                        objc_enumerationMutation(v125);
                      }

                      v130 = [StartCallIntentHandlerUtilities inPersonFromContact:*(*(&v257 + 1) + 8 * m) handleValue:0 handleType:v240 handleLabel:v238];
                      [v83 addObject:v130];
                    }

                    v127 = [v125 countByEnumeratingWithState:&v257 objects:v282 count:16];
                  }

                  while (v127);
                }

                v131 = IntentHandlerDefaultLog();
                v50 = v228;
                if (os_log_type_enabled(v131, OS_LOG_TYPE_DEFAULT))
                {
                  v132 = [v228 count];
                  *buf = 134218242;
                  v273 = v132;
                  v274 = 2112;
                  v275 = v83;
                  _os_log_impl(&_mh_execute_header, v131, OS_LOG_TYPE_DEFAULT, "Resolved to %ld contacts, asking the user to disambiguate among persons: %@", buf, 0x16u);
                }

                v133 = [INStartCallContactResolutionResult disambiguationWithPeopleToDisambiguate:v83];
                [v225 addObject:v133];

                v75 = 0;
                v29 = v227;
                goto LABEL_204;
              }

              v158 = [v228 allContacts];
              v79 = [(StartCallIntentHandler *)v239 resolvePreferredContactFromContacts:v158];

              v159 = [v79 resolutionResultType];
              v160 = [v79 resolvedEntities];
              v161 = v160;
              v75 = 0;
              v29 = v227;
              if (v159 <= 1)
              {
                if (v159)
                {
                  if (v159 == 1)
                  {
                    v162 = [v160 firstObject];
                    v163 = [v228 contactWithId:v162];
                    v281 = v163;
                    v75 = [NSArray arrayWithObjects:&v281 count:1];

                    goto LABEL_197;
                  }

LABEL_198:

                  goto LABEL_68;
                }

                v162 = [NSException exceptionWithName:NSInternalInconsistencyException reason:@"Unexpected score based contact resolution result type." userInfo:0];
                [v162 raise];
LABEL_196:
                v75 = 0;
LABEL_197:

                goto LABEL_198;
              }

              if (v159 == 2)
              {
                v162 = [v160 firstObject];
                v190 = [(ContactSlotResolutionHelper *)v223 buildConfirmationResultForContact:v162 withReason:3];
              }

              else
              {
                if (v159 != 3)
                {
                  goto LABEL_198;
                }

                v162 = [v228 contactsWithIds:v160];
                if ([(StartCallIntentHandler *)v239 anyContactsHaveSameName:v162])
                {
                  v173 = IntentHandlerDefaultLog();
                  if (os_log_type_enabled(v173, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 0;
                    _os_log_impl(&_mh_execute_header, v173, OS_LOG_TYPE_DEFAULT, "ScoreBasedResolutionResult is Disambiguate, but some contacts have the same name. Proceeding to handle disambiguation.", buf, 2u);
                  }

                  v162 = v162;
                  v75 = v162;
                  goto LABEL_197;
                }

                v190 = [(ContactSlotResolutionHelper *)v223 buildDisambiguationResultForContacts:v161];
              }

              v192 = v190;
              [v225 addObject:v190];

              goto LABEL_196;
            }

            v232 = v16;
            v30 = [(StartCallIntentHandler *)self globalEmergencyNumbers];
            v31 = [v14 personHandle];
            v32 = [v31 value];
            v33 = [v30 containsObject:v32];

            v34 = IntentHandlerDefaultLog();
            v35 = os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT);
            if (!v33)
            {
              if (v35)
              {
                *buf = 0;
                _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "Number is not on the global emergency numbers list", buf, 2u);
              }

              v29 = [(StartCallIntentHandler *)self resolutionResultForPersonWithResolvedHandleValue:v14];
              [v9 addObject:v29];
              v13 = v235;
              goto LABEL_32;
            }

            if (v35)
            {
              v36 = [v14 personHandle];
              v37 = [v14 personHandle];
              v38 = -[StartCallIntentHandler emergencyTypeToString:](self, "emergencyTypeToString:", [v37 emergencyType]);
              *buf = 138412546;
              v273 = v36;
              v274 = 2112;
              v275 = v38;
              _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "Handle %@ is in the global emergency numbers list. EmergencyType is %@", buf, 0x16u);
            }

            v39 = [v14 personHandle];
            v40 = [v39 emergencyType];

            v41 = IntentHandlerDefaultLog();
            v42 = os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT);
            v13 = v235;
            if (v40)
            {
              if (v42)
              {
                *buf = 138412290;
                v273 = v14;
                _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "Number is on the global emergency numbers list, but INPersonHandle already has the emergencyType set: %@", buf, 0xCu);
              }

              v29 = [(StartCallIntentHandler *)self resolutionResultForPersonWithResolvedHandleValue:v14];
              [v9 addObject:v29];
LABEL_32:
              v16 = v232;
              v12 = v234;
              goto LABEL_208;
            }

            if (v42)
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "It's unclear if the user literally wanted this number, or if they meant to call emergency services. Disambiguate between local and nonlocal emergency services.", buf, 2u);
            }

            v106 = [INPersonHandle alloc];
            v107 = [v14 personHandle];
            v108 = [v107 value];
            v109 = [v14 personHandle];
            v110 = [v109 type];
            v111 = [v14 personHandle];
            v112 = [v111 label];
            v29 = [v106 initWithValue:v108 type:v110 label:v112 emergencyType:2];

            v113 = [[INPerson alloc] initWithPersonHandle:v29 nameComponents:0 displayName:0 image:0 contactIdentifier:0 customIdentifier:0];
            v114 = [[INPersonHandle alloc] initWithValue:&stru_10004D950 type:2 label:0 emergencyType:1];
            v115 = [[INPerson alloc] initWithPersonHandle:v114 nameComponents:0 displayName:0 image:0 contactIdentifier:0 customIdentifier:0];
            v286[0] = v113;
            v286[1] = v115;
            v116 = [NSArray arrayWithObjects:v286 count:2];
            v117 = [INStartCallContactResolutionResult resolutionResultUnsupportedWithReason:v222 alternativeItems:v116];
            [v225 addObject:v117];

            v118 = IntentHandlerDefaultLog();
            if (os_log_type_enabled(v118, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v273 = v116;
              _os_log_impl(&_mh_execute_header, v118, OS_LOG_TYPE_DEFAULT, "Returning _INStartCallContactUnsupportedReasonForeignEmergencyDisambiguation with alternative items: %@", buf, 0xCu);
            }

            v10 = v231;
            v16 = v232;
            self = v239;
            v12 = v234;
            v13 = v235;
            v4 = v237;
            v9 = v225;
          }
        }

        else
        {
          v43 = IntentHandlerDefaultLog();
          if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEFAULT, "Attempting to resolve more than one call participant. Returning multiple contacts unsupported for each recipient.", buf, 2u);
          }

          v29 = [INStartCallContactResolutionResult unsupportedForReason:2];
          [v9 addObject:v29];
        }

LABEL_208:

        v13 = v13 + 1;
      }

      while (v13 != v12);
      v12 = [v10 countByEnumeratingWithState:&v265 objects:v287 count:16];
      if (!v12)
      {
LABEL_210:

        v196 = [v9 copy];
        v197 = [v4 contacts];
        v198 = [v197 count];

        if (v198 < 2)
        {
          goto LABEL_236;
        }

        v199 = objc_alloc_init(NSMutableArray);
        v245 = 0u;
        v246 = 0u;
        v247 = 0u;
        v248 = 0u;
        v200 = v9;
        v201 = [v200 countByEnumeratingWithState:&v245 objects:v270 count:16];
        if (!v201)
        {
          goto LABEL_223;
        }

        v202 = v201;
        LODWORD(v203) = 0;
        v204 = *v246;
        while (1)
        {
          v205 = 0;
          v203 = v203;
          do
          {
            if (*v246 != v204)
            {
              objc_enumerationMutation(v200);
            }

            v206 = *(*(&v245 + 1) + 8 * v205);
            if ([v206 resolutionResultCode])
            {
              if ([v231 count] <= v203)
              {
                goto LABEL_221;
              }

              v207 = [v231 objectAtIndexedSubscript:v203];
            }

            else
            {
              v207 = [v206 resolvedValue];
            }

            v208 = v207;
            [v199 addObject:v207];

LABEL_221:
            ++v203;
            v205 = v205 + 1;
          }

          while (v202 != v205);
          v202 = [v200 countByEnumeratingWithState:&v245 objects:v270 count:16];
          if (!v202)
          {
LABEL_223:
            v226 = v200;

            [v4 setValue:v199 forKey:@"contacts"];
            v243 = 0u;
            v244 = 0u;
            v241 = 0u;
            v242 = 0u;
            v209 = [v4 contacts];
            v210 = [v209 countByEnumeratingWithState:&v241 objects:v269 count:16];
            if (v210)
            {
              v211 = v210;
              v212 = *v242;
              do
              {
                for (n = 0; n != v211; n = n + 1)
                {
                  if (*v242 != v212)
                  {
                    objc_enumerationMutation(v209);
                  }

                  v214 = *(*(&v241 + 1) + 8 * n);
                  v215 = IntentHandlerDefaultLog();
                  if (os_log_type_enabled(v215, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 138412290;
                    v273 = v214;
                    _os_log_impl(&_mh_execute_header, v215, OS_LOG_TYPE_DEFAULT, "Updated contact in intent: %@", buf, 0xCu);
                  }
                }

                v211 = [v209 countByEnumeratingWithState:&v241 objects:v269 count:16];
              }

              while (v211);
            }

            v4 = v237;
            v9 = v226;
            goto LABEL_236;
          }
        }
      }
    }
  }

  v216 = IntentHandlerDefaultLog();
  if (os_log_type_enabled(v216, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v216, OS_LOG_TYPE_DEFAULT, "Resolution needs a value for zero contacts", buf, 2u);
  }

  v9 = +[INStartCallContactResolutionResult needsValue];
  v288 = v9;
  v196 = [NSArray arrayWithObjects:&v288 count:1];
LABEL_236:

  v217 = IntentHandlerDefaultLog();
  if (os_log_type_enabled(v217, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v273 = v196;
    _os_log_impl(&_mh_execute_header, v217, OS_LOG_TYPE_DEFAULT, "resolutionResults: %@", buf, 0xCu);
  }

  v218 = v196;
  return v196;
}

- (id)relayCRRRecommendationForPerson:(id)a3 intent:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = IntentHandlerDefaultLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "relaying CRR recommendations", buf, 2u);
  }

  v9 = [v6 scoredAlternatives];
  if ([v9 count])
  {
    if ([v9 count] != 1)
    {
      v22 = IntentHandlerDefaultLog();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        v23 = [v9 count];
        *buf = 134217984;
        v56 = v23;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Found %ld candidates; returning disambiguate", buf, 0xCu);
      }

      v54[0] = _NSConcreteStackBlock;
      v54[1] = 3221225472;
      v54[2] = sub_100018DB8;
      v54[3] = &unk_10004CFC0;
      v54[4] = self;
      v11 = [v9 tu_mapObjectsUsingBlock:v54];
      v24 = [INStartCallContactResolutionResult disambiguationWithPeopleToDisambiguate:v11];
      goto LABEL_44;
    }

    v10 = [v9 objectAtIndexedSubscript:0];
    v11 = [v10 person];

    v12 = [v9 objectAtIndexedSubscript:0];
    v13 = [v12 recommendation];

    v14 = [v11 personHandle];
    v15 = [v14 value];

    if (v15)
    {
      v16 = [v11 personHandle];
      v17 = [v16 type];

      v18 = [v11 personHandle];
      v19 = [v18 type] == 1 && objc_msgSend(v7, "preferredCallProvider") == 2;

      if (v17 == 2 || v19)
      {
        v36 = [(StartCallIntentHandler *)self dataSource];
        v37 = [v36 coreTelephonyDataSource];
        v38 = [v37 allRelevantISOCountryCodes];
        v39 = [v11 tu_personWithFormattedHandleForISOCountryCodes:v38];

        v40 = [(StartCallIntentHandler *)self dataSource];
        v41 = [v39 personHandle];
        v42 = [v41 value];
        LODWORD(v37) = [v40 isMMIOrUSSDNumber:v42];

        if (v37)
        {
          v43 = IntentHandlerDefaultLog();
          if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
          {
            v44 = [v39 personHandle];
            v45 = [v44 value];
            *buf = 138412290;
            v56 = v45;
            _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEFAULT, "Found 1 candidate with unsupported MMI or USSD handle %@", buf, 0xCu);
          }

          v46 = [INStartCallContactResolutionResult unsupportedForReason:5];
        }

        else
        {
          v51 = IntentHandlerDefaultLog();
          v52 = os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT);
          if (v13)
          {
            if (v52)
            {
              *buf = 138412290;
              v56 = v39;
              _os_log_impl(&_mh_execute_header, v51, OS_LOG_TYPE_DEFAULT, "Found 1 low-confidence candidate; returning confirm: %@", buf, 0xCu);
            }

            v46 = [INStartCallContactResolutionResult confirmationRequiredWithPersonToConfirm:v39];
          }

          else
          {
            if (v52)
            {
              *buf = 138412290;
              v56 = v39;
              _os_log_impl(&_mh_execute_header, v51, OS_LOG_TYPE_DEFAULT, "Found 1 high-confidence candidate; returning success: %@", buf, 0xCu);
            }

            v46 = [INStartCallContactResolutionResult successWithResolvedPerson:v39];
          }
        }

        v21 = v46;
        v11 = v39;
        goto LABEL_45;
      }

      v34 = IntentHandlerDefaultLog();
      if (!os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_43;
      }

      *buf = 138412290;
      v56 = v11;
      v35 = "Found 1 candidate with an invalid handle type; returning unsupported. Person: %@";
      goto LABEL_42;
    }

    v25 = [v6 personHandle];

    if (!v25)
    {
      v34 = IntentHandlerDefaultLog();
      if (!os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
      {
LABEL_43:

        v24 = [INStartCallContactResolutionResult unsupportedForReason:3];
LABEL_44:
        v21 = v24;
LABEL_45:

        goto LABEL_46;
      }

      *buf = 138412290;
      v56 = v11;
      v35 = "Found 1 candidate with a no handle; returning unsupported. Person: %@";
LABEL_42:
      _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, v35, buf, 0xCu);
      goto LABEL_43;
    }

    v26 = [(StartCallIntentHandler *)self dataSource];
    v27 = [v26 contactsDataSource];
    v28 = [v11 contactIdentifier];
    v29 = +[ContactResolver keysToFetch];
    v30 = [v27 contactForIdentifier:v28 keysToFetch:v29];

    v31 = [v6 personHandle];
    v32 = [v31 type];

    if (v32 || [v7 preferredCallProvider] != 1)
    {
      if ([v7 preferredCallProvider] != 2)
      {
LABEL_33:
        v47 = -[StartCallIntentHandler getAlternativesForContact:forRequestedHandleType:forCallProvider:](self, "getAlternativesForContact:forRequestedHandleType:forCallProvider:", v30, v32, [v7 preferredCallProvider]);
        v48 = [v47 copy];
        v49 = [INPersonDeduplicator dedupeINPersons:v48];

        v50 = IntentHandlerDefaultLog();
        if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_DEFAULT, "Found 1 candidate with no matching handle; offering other handles as alternatives", buf, 2u);
        }

        v21 = [INStartCallContactResolutionResult resolutionResultUnsupportedWithReason:3 alternativeItems:v49];

        goto LABEL_45;
      }

      v33 = IntentHandlerDefaultLog();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "PreferredCallProvider is faceTime. Inferring handle type of unknown to present both phone number and email address.", buf, 2u);
      }

      v32 = 0;
    }

    else
    {
      v33 = IntentHandlerDefaultLog();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v32 = 2;
        _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "Requested handle type is unknown, but preferredCallProvider is phone. Inferring handle type of phone number.", buf, 2u);
      }

      else
      {
        v32 = 2;
      }
    }

    goto LABEL_33;
  }

  v20 = IntentHandlerDefaultLog();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v56 = v6;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "No candidates from CRR. Returning unsupported. Person: %@", buf, 0xCu);
  }

  v21 = [INStartCallContactResolutionResult unsupportedForReason:1];
LABEL_46:

  return v21;
}

- (void)parseEmergencyContacts:(id)a3 usingExistingResult:(id)a4
{
  v5 = a3;
  v6 = a4;
  if ([v5 count] == 1)
  {
    v7 = [v5 objectAtIndexedSubscript:0];
    v8 = [v7 displayName];
    if ([v8 isEqualToString:@"emergency contact"])
    {
      v9 = [v5 objectAtIndexedSubscript:0];
      v10 = [v9 alternatives];
      v11 = [v10 count];
      v12 = [v6 disambiguationItems];
      v13 = [v12 count];

      if (v11 == v13)
      {
        v14 = IntentHandlerDefaultLog();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          *v26 = 0;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Emergency contacts detected. Inserting personHandles.", v26, 2u);
        }

        v15 = [v6 disambiguationItems];
        v16 = [v15 count];

        if (v16)
        {
          v17 = 0;
          do
          {
            v18 = [v6 disambiguationItems];
            v19 = [v18 objectAtIndexedSubscript:v17];

            v20 = [v5 objectAtIndexedSubscript:0];
            v21 = [v20 alternatives];
            v22 = [v21 objectAtIndexedSubscript:v17];

            v23 = [v22 personHandle];
            [v19 setPersonHandle:v23];

            ++v17;
            v24 = [v6 disambiguationItems];
            v25 = [v24 count];
          }

          while (v25 > v17);
        }
      }
    }

    else
    {
    }
  }
}

- (id)generateAdditionalMatchingHandles:(id)a3 resolvedContacts:(id)a4 requestedHandleType:(int64_t)a5 requestedHandleLabel:(id)a6
{
  v9 = a4;
  v10 = a6;
  v43 = [a3 tu_matchingINPersonHandlesByContactIdentifier];
  v48 = objc_alloc_init(NSMutableArray);
  v42 = [INPersonHandleLabelMobile isEqualToString:v10];
  v38 = v10;
  v41 = [INPersonHandleLabeliPhone isEqualToString:v10];
  if ((v41 & 1) != 0 || v42)
  {
    v11 = IntentHandlerDefaultLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Either a mobile handle or an iPhone label was requested without any matching handle. Checking if an alternative for mobile or iPhone handles exists.", buf, 2u);
    }
  }

  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  obj = v9;
  v44 = [obj countByEnumeratingWithState:&v54 objects:v60 count:16];
  if (v44)
  {
    v40 = *v55;
    do
    {
      for (i = 0; i != v44; i = i + 1)
      {
        if (*v55 != v40)
        {
          objc_enumerationMutation(obj);
        }

        v49 = *(*(&v54 + 1) + 8 * i);
        v13 = [v49 identifier];
        v14 = [v43 objectForKeyedSubscript:v13];

        if (v14)
        {
          v45 = v14;
          v46 = i;
          v52 = 0u;
          v53 = 0u;
          v50 = 0u;
          v51 = 0u;
          v15 = v14;
          v16 = [v15 countByEnumeratingWithState:&v50 objects:v59 count:16];
          if (v16)
          {
            v17 = v16;
            v18 = *v51;
            do
            {
              for (j = 0; j != v17; j = j + 1)
              {
                if (*v51 != v18)
                {
                  objc_enumerationMutation(v15);
                }

                v20 = *(*(&v50 + 1) + 8 * j);
                if (v20)
                {
                  v21 = [*(*(&v50 + 1) + 8 * j) label];

                  if (v21)
                  {
                    v22 = [v20 label];
                    v23 = [(StartCallIntentHandler *)self dataSource];
                    v24 = [v23 coreTelephonyDataSource];
                    v25 = [v24 allRelevantISOCountryCodes];
                    v26 = [(StartCallIntentHandler *)self _inPersonsFromContact:v49 withRequestedType:a5 requestedLabel:v22 isoCountryCodes:v25];

                    [v48 addObjectsFromArray:v26];
                  }
                }
              }

              v17 = [v15 countByEnumeratingWithState:&v50 objects:v59 count:16];
            }

            while (v17);
          }

          v14 = v45;
          i = v46;
        }

        if (v41)
        {
          v27 = [(StartCallIntentHandler *)self dataSource];
          v28 = [v27 coreTelephonyDataSource];
          v29 = [v28 allRelevantISOCountryCodes];
          v30 = [(StartCallIntentHandler *)self _inPersonsFromContact:v49 withRequestedType:a5 requestedLabel:INPersonHandleLabelMobile isoCountryCodes:v29];

          [v48 addObjectsFromArray:v30];
        }

        if (v42)
        {
          v31 = [(StartCallIntentHandler *)self dataSource];
          v32 = [v31 coreTelephonyDataSource];
          v33 = [v32 allRelevantISOCountryCodes];
          v34 = [(StartCallIntentHandler *)self _inPersonsFromContact:v49 withRequestedType:a5 requestedLabel:INPersonHandleLabeliPhone isoCountryCodes:v33];

          [v48 addObjectsFromArray:v34];
        }
      }

      v44 = [obj countByEnumeratingWithState:&v54 objects:v60 count:16];
    }

    while (v44);
  }

  v35 = [v48 copy];
  v36 = [INPersonDeduplicator dedupeINPersons:v35];

  return v36;
}

- (id)resolutionResultForPersonWithResolvedHandleValue:(id)a3
{
  v4 = a3;
  v5 = [v4 personHandle];
  v6 = [v5 value];

  v7 = [(StartCallIntentHandler *)self dataSource];
  v8 = [v7 isMMIOrUSSDNumber:v6];

  if (v8)
  {
    v9 = IntentHandlerDefaultLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v20 = 138412546;
      v21 = v6;
      v22 = 2112;
      v23 = v4;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Handle %@ is MMI or USSD which is unsupported. Returning error for person: %@", &v20, 0x16u);
    }

    v10 = [INStartCallContactResolutionResult unsupportedForReason:5];
LABEL_9:
    v14 = v10;
    goto LABEL_13;
  }

  v11 = [(StartCallIntentHandler *)self shouldRequireInvalidNumberConfirmationForRecipient:v4];
  v12 = IntentHandlerDefaultLog();
  v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
  if (v11)
  {
    if (v13)
    {
      LOWORD(v20) = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "The user requested a potentially invalid phone number or email, returning confirmationRequired.", &v20, 2u);
    }

    v10 = [INStartCallContactResolutionResult confirmationRequiredWithPersonToConfirm:v4 forReason:1];
    goto LABEL_9;
  }

  if (v13)
  {
    LOWORD(v20) = 0;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "There is a handle on the single contact. Format the person handle and return success with that person.", &v20, 2u);
  }

  v15 = [(StartCallIntentHandler *)self dataSource];
  v16 = [v15 coreTelephonyDataSource];
  v17 = [v16 allRelevantISOCountryCodes];
  v18 = [v4 tu_personWithFormattedHandleForISOCountryCodes:v17];

  v14 = [INStartCallContactResolutionResult successWithResolvedPerson:v18];

LABEL_13:

  return v14;
}

- (id)resolutionResultForPersonWithResolvedContactName:(id)a3 resolvedPerson:(id)a4 resolvedContact:(id)a5 contactIdentifiersRequiringConfirmation:(id)a6
{
  v10 = a4;
  v11 = a5;
  v12 = a6;
  if ([(StartCallIntentHandler *)self shouldRequireUnknownRecipientConfirmationForRequestedRecipient:a3 resolvedToRecipient:v10 contact:v11])
  {
    v13 = IntentHandlerDefaultLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v23 = 138412290;
      v24 = v10;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Returning confirmationRequired with person: %@", &v23, 0xCu);
    }

    v14 = v10;
    v15 = 4;
LABEL_9:
    v20 = [INStartCallContactResolutionResult confirmationRequiredWithPersonToConfirm:v14 forReason:v15];
    goto LABEL_13;
  }

  v16 = [v11 identifier];
  v17 = [v12 containsObject:v16];

  v18 = IntentHandlerDefaultLog();
  v19 = os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT);
  if (v17)
  {
    if (v19)
    {
      v23 = 138412290;
      v24 = v10;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Returning confirmationRequired with person (as upstream contact resolver recommended): %@", &v23, 0xCu);
    }

    v14 = v10;
    v15 = 3;
    goto LABEL_9;
  }

  if (v19)
  {
    v23 = 138412290;
    v24 = v10;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Returning success with person: %@", &v23, 0xCu);
  }

  v20 = [INStartCallContactResolutionResult successWithResolvedPerson:v10];
LABEL_13:
  v21 = v20;

  return v21;
}

- (id)allCountryCodesRelevantToCall:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(NSMutableOrderedSet);
  v6 = [v4 isoCountryCode];

  if ([v6 length])
  {
    [v5 addObject:v6];
  }

  v7 = [(StartCallIntentHandler *)self dataSource];
  v8 = [v7 coreTelephonyDataSource];
  v9 = [v8 allRelevantISOCountryCodes];
  [v5 addObjectsFromArray:v9];

  v10 = [v5 array];

  return v10;
}

- (void)updateScoreBasedHandleResolver:(id)a3 forFavoritesAmongHandles:(id)a4
{
  v28 = a3;
  v6 = a4;
  v7 = IntentHandlerDefaultLog();
  v8 = os_signpost_id_generate(v7);

  v9 = IntentHandlerDefaultLog();
  v10 = v9;
  spid = v8;
  v27 = v8 - 1;
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v10, OS_SIGNPOST_INTERVAL_BEGIN, v8, "favoritesAmongHandles", "", buf, 2u);
  }

  v11 = IntentHandlerDefaultLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Beginning favorites for handles check.", buf, 2u);
  }

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  obj = v6;
  v12 = [obj countByEnumeratingWithState:&v31 objects:v37 count:16];
  if (v12)
  {
    v13 = v12;
    v30 = *v32;
    do
    {
      for (i = 0; i != v13; i = i + 1)
      {
        if (*v32 != v30)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v31 + 1) + 8 * i);
        v16 = [(StartCallIntentHandler *)self dataSource];
        v17 = [v16 favoritesDataSource];
        v18 = [(StartCallIntentHandler *)self dataSource];
        v19 = [v18 coreTelephonyDataSource];
        v20 = [v19 allRelevantISOCountryCodes];
        v21 = [v17 hasFavoritesEntryForTelephonyCallWithPhoneNumber:v15 isoCountryCodes:v20];

        if (v21)
        {
          [v28 addScore:4 forEntity:v15 reason:@"Favorites entry for telephony call with this handle"];
        }

        else
        {
          v22 = IntentHandlerDefaultLog();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v36 = v15;
            _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "No favorites entry for handle %@. No score adjustment.", buf, 0xCu);
          }
        }
      }

      v13 = [obj countByEnumeratingWithState:&v31 objects:v37 count:16];
    }

    while (v13);
  }

  v23 = IntentHandlerDefaultLog();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Completed favorites for handles check.", buf, 2u);
  }

  v24 = IntentHandlerDefaultLog();
  v25 = v24;
  if (v27 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v24))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v25, OS_SIGNPOST_INTERVAL_END, spid, "favoritesAmongHandles", "", buf, 2u);
  }
}

- (id)resolvePreferredContactFromContacts:(id)a3
{
  v4 = a3;
  v5 = IntentHandlerDefaultLog();
  v6 = os_signpost_id_generate(v5);

  v7 = IntentHandlerDefaultLog();
  v8 = v7;
  v38 = v6 - 1;
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v8, OS_SIGNPOST_INTERVAL_BEGIN, v6, "scoreBasedContactResolution", "", buf, 2u);
  }

  spid = v6;

  v9 = IntentHandlerDefaultLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Beginning score based contact resolution.", buf, 2u);
  }

  v10 = objc_alloc_init(NSMutableArray);
  v11 = objc_alloc_init(NSMutableDictionary);
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v12 = v4;
  v13 = [v12 countByEnumeratingWithState:&v43 objects:v50 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v44;
    do
    {
      for (i = 0; i != v14; i = i + 1)
      {
        if (*v44 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v43 + 1) + 8 * i);
        v18 = [v17 identifier];
        [v10 addObject:v18];
        [v11 setObject:v17 forKey:v18];
      }

      v14 = [v12 countByEnumeratingWithState:&v43 objects:v50 count:16];
    }

    while (v14);
  }

  v19 = [ScoreBasedResolver alloc];
  v20 = [v10 copy];
  v21 = [(ScoreBasedResolver *)v19 initWithEntities:v20];

  [(ScoreBasedResolver *)v21 setConfirmationEnabled:0];
  [(ScoreBasedResolver *)v21 setConfirmationMargin:2];
  [(ScoreBasedResolver *)v21 setSuccessfulResolutionMargin:4];
  [(StartCallIntentHandler *)self updateScoreBasedContactResolver:v21 forRecentCallsMatchingContacts:v12];
  v37 = v12;
  [(StartCallIntentHandler *)self updateScoreBasedContactResolver:v21 forFavoritesAmongContacts:v12];
  v36 = v21;
  v22 = [(ScoreBasedResolver *)v21 result];
  v23 = IntentHandlerDefaultLog();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Completed score based contact resolution.", buf, 2u);
  }

  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v35 = v22;
  v24 = [v22 resolutionSummary];
  v25 = [v24 countByEnumeratingWithState:&v39 objects:v49 count:16];
  if (v25)
  {
    v26 = v25;
    v27 = *v40;
    do
    {
      for (j = 0; j != v26; j = j + 1)
      {
        if (*v40 != v27)
        {
          objc_enumerationMutation(v24);
        }

        v29 = *(*(&v39 + 1) + 8 * j);
        v30 = IntentHandlerDefaultLog();
        if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v48 = v29;
          _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "%@", buf, 0xCu);
        }
      }

      v26 = [v24 countByEnumeratingWithState:&v39 objects:v49 count:16];
    }

    while (v26);
  }

  v31 = IntentHandlerDefaultLog();
  v32 = v31;
  if (v38 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v31))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v32, OS_SIGNPOST_INTERVAL_END, spid, "scoreBasedContactResolution", "", buf, 2u);
  }

  return v35;
}

- (void)updateScoreBasedContactResolver:(id)a3 forRecentCallsMatchingContacts:(id)a4
{
  v49 = a3;
  v5 = a4;
  v6 = IntentHandlerDefaultLog();
  v7 = os_signpost_id_generate(v6);

  v8 = IntentHandlerDefaultLog();
  v9 = v8;
  spid = v7;
  v48 = v7 - 1;
  if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v9, OS_SIGNPOST_INTERVAL_BEGIN, v7, "contactCallRecency", "", buf, 2u);
  }

  v10 = IntentHandlerDefaultLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Beginning call recency for contacts check.", buf, 2u);
  }

  v58 = objc_alloc_init(NSMutableOrderedSet);
  v63 = objc_alloc_init(NSMutableDictionary);
  v95 = 0u;
  v96 = 0u;
  v97 = 0u;
  v98 = 0u;
  obj = v5;
  v70 = [obj countByEnumeratingWithState:&v95 objects:v111 count:16];
  if (v70)
  {
    v68 = *v96;
    do
    {
      for (i = 0; i != v70; i = i + 1)
      {
        if (*v96 != v68)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v95 + 1) + 8 * i);
        v13 = [v12 allTUHandles];
        if ([v13 count])
        {
          [v58 addObjectsFromArray:v13];
          v93 = 0u;
          v94 = 0u;
          v91 = 0u;
          v92 = 0u;
          v14 = v13;
          v15 = [v14 countByEnumeratingWithState:&v91 objects:v110 count:16];
          if (v15)
          {
            v16 = v15;
            v17 = *v92;
            do
            {
              for (j = 0; j != v16; j = j + 1)
              {
                if (*v92 != v17)
                {
                  objc_enumerationMutation(v14);
                }

                v19 = *(*(&v91 + 1) + 8 * j);
                v20 = [v63 objectForKeyedSubscript:v19];
                if (!v20)
                {
                  v20 = objc_alloc_init(NSMutableArray);
                  [v63 setObject:v20 forKeyedSubscript:v19];
                }

                [v20 addObject:v12];
              }

              v16 = [v14 countByEnumeratingWithState:&v91 objects:v110 count:16];
            }

            while (v16);
          }
        }
      }

      v70 = [obj countByEnumeratingWithState:&v95 objects:v111 count:16];
    }

    while (v70);
  }

  v21 = [v58 array];
  v22 = [(StartCallIntentHandler *)self recentCallsWithHandles:v21 telephonyOnly:0];

  if ([v22 count])
  {
    v23 = objc_alloc_init(NSMutableOrderedSet);
    v87 = 0u;
    v88 = 0u;
    v89 = 0u;
    v90 = 0u;
    v50 = v22;
    v54 = [v50 countByEnumeratingWithState:&v87 objects:v109 count:16];
    if (v54)
    {
      v52 = *v88;
      do
      {
        v24 = 0;
        do
        {
          if (*v88 != v52)
          {
            objc_enumerationMutation(v50);
          }

          v55 = v24;
          v25 = *(*(&v87 + 1) + 8 * v24);
          v64 = [(StartCallIntentHandler *)self allCountryCodesRelevantToCall:v25];
          v83 = 0u;
          v84 = 0u;
          v85 = 0u;
          v86 = 0u;
          v56 = [v25 remoteParticipantHandles];
          v59 = [v56 countByEnumeratingWithState:&v83 objects:v108 count:16];
          if (v59)
          {
            v57 = *v84;
            do
            {
              v26 = 0;
              do
              {
                if (*v84 != v57)
                {
                  objc_enumerationMutation(v56);
                }

                v60 = v26;
                v27 = [*(*(&v83 + 1) + 8 * v26) tu_tuHandle];
                v79 = 0u;
                v80 = 0u;
                v81 = 0u;
                v82 = 0u;
                v61 = v58;
                v66 = [v61 countByEnumeratingWithState:&v79 objects:v107 count:16];
                if (v66)
                {
                  v65 = *v80;
                  v62 = v27;
                  do
                  {
                    for (k = 0; k != v66; k = k + 1)
                    {
                      if (*v80 != v65)
                      {
                        objc_enumerationMutation(v61);
                      }

                      v29 = *(*(&v79 + 1) + 8 * k);
                      v75 = 0u;
                      v76 = 0u;
                      v77 = 0u;
                      v78 = 0u;
                      v69 = v64;
                      v30 = [v69 countByEnumeratingWithState:&v75 objects:v106 count:16];
                      if (v30)
                      {
                        v31 = v30;
                        v32 = *v76;
                        while (2)
                        {
                          for (m = 0; m != v31; m = m + 1)
                          {
                            if (*v76 != v32)
                            {
                              objc_enumerationMutation(v69);
                            }

                            v34 = *(*(&v75 + 1) + 8 * m);
                            if ([v29 isCanonicallyEqualToHandle:v27 isoCountryCode:v34])
                            {
                              v67 = k;
                              v35 = [v63 objectForKeyedSubscript:v29];
                              v71 = 0u;
                              v72 = 0u;
                              v73 = 0u;
                              v74 = 0u;
                              v36 = [v35 countByEnumeratingWithState:&v71 objects:v105 count:16];
                              if (v36)
                              {
                                v37 = v36;
                                v38 = *v72;
                                do
                                {
                                  for (n = 0; n != v37; n = n + 1)
                                  {
                                    if (*v72 != v38)
                                    {
                                      objc_enumerationMutation(v35);
                                    }

                                    v40 = *(*(&v71 + 1) + 8 * n);
                                    v41 = IntentHandlerDefaultLog();
                                    if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
                                    {
                                      *buf = 138412802;
                                      v100 = v40;
                                      v101 = 2112;
                                      v102 = v25;
                                      v103 = 2112;
                                      v104 = v34;
                                      _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "Contact %@ was a partipant in recent call %@ with isoCountryCode %@.", buf, 0x20u);
                                    }

                                    v42 = [v40 identifier];
                                    [v23 addObject:v42];
                                  }

                                  v37 = [v35 countByEnumeratingWithState:&v71 objects:v105 count:16];
                                }

                                while (v37);
                              }

                              v27 = v62;
                              k = v67;
                              goto LABEL_59;
                            }
                          }

                          v31 = [v69 countByEnumeratingWithState:&v75 objects:v106 count:16];
                          if (v31)
                          {
                            continue;
                          }

                          break;
                        }
                      }

LABEL_59:
                    }

                    v66 = [v61 countByEnumeratingWithState:&v79 objects:v107 count:16];
                  }

                  while (v66);
                }

                v26 = v60 + 1;
              }

              while ((v60 + 1) != v59);
              v59 = [v56 countByEnumeratingWithState:&v83 objects:v108 count:16];
            }

            while (v59);
          }

          v24 = v55 + 1;
        }

        while ((v55 + 1) != v54);
        v54 = [v50 countByEnumeratingWithState:&v87 objects:v109 count:16];
      }

      while (v54);
    }

    v43 = [v23 array];
    [v49 addScore:6 forEntities:v43 reason:@"Call Recency"];
  }

  v44 = IntentHandlerDefaultLog();
  if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEFAULT, "Completed call recency for contacts check.", buf, 2u);
  }

  v45 = IntentHandlerDefaultLog();
  v46 = v45;
  if (v48 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v45))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v46, OS_SIGNPOST_INTERVAL_END, spid, "contactCallRecency", "", buf, 2u);
  }
}

- (id)recentCallsWithHandles:(id)a3 telephonyOnly:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = IntentHandlerDefaultLog();
  v8 = os_signpost_id_generate(v7);

  v9 = IntentHandlerDefaultLog();
  v10 = v9;
  v60 = v8 - 1;
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v10, OS_SIGNPOST_INTERVAL_BEGIN, v8, "recentCallsWithHandles", "", buf, 2u);
  }

  spid = v8;

  v11 = objc_alloc_init(NSMutableArray);
  v12 = [(StartCallIntentHandler *)self dataSource];
  v13 = [v12 coreTelephonyDataSource];
  v14 = [v13 allRelevantISOCountryCodes];
  v15 = [CallHistoryDataSourcePredicate predicateForCallsWithAnyOfTheseRemoteParticipantHandles:v6 isoCountryCodes:v14];

  [v11 addObject:v15];
  if (v4)
  {
    +[CallHistoryDataSourcePredicate predicateForTelephonyCalls];
  }

  else
  {
    +[CallHistoryDataSourcePredicate predicateForTelephonyOrFaceTimeCalls];
  }
  v16 = ;
  [v11 addObject:v16];

  v17 = +[CallHistoryDataSourcePredicate predicateForCallsWithDurationLongerThanImmediateHangUp];
  [v11 addObject:v17];

  v18 = [v11 copy];
  v19 = [NSCompoundPredicate andPredicateWithSubpredicates:v18];

  v20 = IntentHandlerDefaultLog();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v62 = v19;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Searching call history for one call matching predicate: %@", buf, 0xCu);
  }

  v21 = IntentHandlerDefaultLog();
  v22 = os_signpost_id_generate(v21);

  v23 = IntentHandlerDefaultLog();
  v24 = v23;
  if (v22 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v23))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v24, OS_SIGNPOST_INTERVAL_BEGIN, v22, "callHistoryDBFirstRecencyCheck", "", buf, 2u);
  }

  v25 = [(StartCallIntentHandler *)self dataSource];
  v26 = [v25 callHistoryDataSource];
  v27 = [v26 callsWithPredicate:v19 limit:1 offset:0 batchSize:1];
  v28 = [v27 firstObject];

  v29 = IntentHandlerDefaultLog();
  v30 = v29;
  if (v22 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v29))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v30, OS_SIGNPOST_INTERVAL_END, v22, "callHistoryDBFirstRecencyCheck", "", buf, 2u);
  }

  v31 = IntentHandlerDefaultLog();
  if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v62 = v28;
    _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "Completed initial call history search with result: %@", buf, 0xCu);
  }

  if (v28)
  {
    v32 = [v28 date];
    if (v32)
    {
      v33 = [(StartCallIntentHandler *)self dataSource];
      v34 = [v33 now];
      [v32 timeIntervalSinceDate:v34];
      v36 = v35;
    }

    else
    {
      v36 = 0.0;
    }

    if (v36 * 4.0 <= -3600.0)
    {
      v38 = v36 * 4.0;
    }

    else
    {
      v38 = -3600.0;
    }

    v39 = [(StartCallIntentHandler *)self dataSource];
    v40 = [v39 now];
    v41 = [v40 dateByAddingTimeInterval:v38];

    v42 = IntentHandlerDefaultLog();
    if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v62 = v41;
      v63 = 2048;
      v64 = v36;
      _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, "Calculated oldest relevant date of %@ based on most recent matching call %.0f seconds ago", buf, 0x16u);
    }

    v43 = [CallHistoryDataSourcePredicate predicateForCallsAfterDate:v41 beforeDate:0];
    [v11 addObject:v43];

    v44 = [v11 copy];
    v45 = [NSCompoundPredicate andPredicateWithSubpredicates:v44];

    v46 = IntentHandlerDefaultLog();
    if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218242;
      v62 = 25;
      v63 = 2112;
      v64 = *&v45;
      _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_DEFAULT, "Searching call history for up to %ld calls matching predicate: %@", buf, 0x16u);
    }

    v47 = IntentHandlerDefaultLog();
    v48 = os_signpost_id_generate(v47);

    v49 = IntentHandlerDefaultLog();
    v50 = v49;
    if (v48 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v49))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v50, OS_SIGNPOST_INTERVAL_BEGIN, v48, "callHistoryDBSecondRecencyCheck", "", buf, 2u);
    }

    v51 = [(StartCallIntentHandler *)self dataSource];
    v52 = [v51 callHistoryDataSource];
    v37 = [v52 callsWithPredicate:v45 limit:25 offset:0 batchSize:25];

    v53 = IntentHandlerDefaultLog();
    v54 = v53;
    if (v48 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v53))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v54, OS_SIGNPOST_INTERVAL_END, v48, "callHistoryDBSecondRecencyCheck", "", buf, 2u);
    }

    v55 = IntentHandlerDefaultLog();
    if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v62 = v37;
      _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_DEFAULT, "Completed second call history search with result: %@", buf, 0xCu);
    }
  }

  else
  {
    v32 = IntentHandlerDefaultLog();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "No matching call history for any of the requested handles. No score adjustment.", buf, 2u);
    }

    v37 = &__NSArray0__struct;
  }

  v56 = IntentHandlerDefaultLog();
  v57 = v56;
  if (v60 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v56))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v57, OS_SIGNPOST_INTERVAL_END, spid, "recentCallsWithHandles", "", buf, 2u);
  }

  return v37;
}

- (void)updateScoreBasedContactResolver:(id)a3 forFavoritesAmongContacts:(id)a4
{
  v27 = a3;
  v6 = a4;
  v7 = IntentHandlerDefaultLog();
  v8 = os_signpost_id_generate(v7);

  v9 = IntentHandlerDefaultLog();
  v10 = v9;
  spid = v8;
  v26 = v8 - 1;
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v10, OS_SIGNPOST_INTERVAL_BEGIN, v8, "favoritesAmongContacts", "", buf, 2u);
  }

  v11 = IntentHandlerDefaultLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Beginning favorites for contacts check.", buf, 2u);
  }

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v12 = v6;
  v13 = [v12 countByEnumeratingWithState:&v28 objects:v34 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v29;
    do
    {
      for (i = 0; i != v14; i = i + 1)
      {
        if (*v29 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v28 + 1) + 8 * i);
        v18 = [(StartCallIntentHandler *)self dataSource];
        v19 = [v18 favoritesDataSource];
        v20 = [v19 hasFavoritesEntryForContact:v17];

        if (v20)
        {
          v21 = [v17 identifier];
          [v27 addScore:4 forEntity:v21 reason:@"Favorites entry for this contact"];
        }

        else
        {
          v21 = IntentHandlerDefaultLog();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v33 = v17;
            _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "No favorites entry for contact %@. No score adjustment.", buf, 0xCu);
          }
        }
      }

      v14 = [v12 countByEnumeratingWithState:&v28 objects:v34 count:16];
    }

    while (v14);
  }

  v22 = IntentHandlerDefaultLog();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Completed favorites for contacts check.", buf, 2u);
  }

  v23 = IntentHandlerDefaultLog();
  v24 = v23;
  if (v26 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v23))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v24, OS_SIGNPOST_INTERVAL_END, spid, "favoritesAmongContacts", "", buf, 2u);
  }
}

- (void)updateHandlerStateForContactResolutionResults:(id)a3
{
  v4 = a3;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v18;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v18 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v17 + 1) + 8 * i);
        if ([v9 resolutionResultCode] == 3)
        {
          v10 = [v9 itemToConfirm];
          v11 = v10;
          if (v10)
          {
            v12 = [v10 personHandle];
            if (v12)
            {
              v13 = [TUHandle handleWithPerson:v11];
              if (v13)
              {
                v14 = [(StartCallIntentHandler *)self handlesConfirmed];
                [v14 addObject:v13];
              }
            }

            v15 = [v11 contactIdentifier];
            if ([v15 length])
            {
              v16 = [(StartCallIntentHandler *)self contactIdentifiersConfirmed];
              [v16 addObject:v15];
            }
          }
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v6);
  }
}

- (id)getAlternativesForContact:(id)a3 forRequestedHandleType:(int64_t)a4 forCallProvider:(int64_t)a5
{
  v8 = a3;
  v9 = [(StartCallIntentHandler *)self dataSource];
  v10 = [v9 coreTelephonyDataSource];
  v11 = [v10 allRelevantISOCountryCodes];
  v12 = [(StartCallIntentHandler *)self _inPersonsFromContact:v8 withRequestedType:a4 requestedLabel:0 isoCountryCodes:v11];

  v13 = IntentHandlerDefaultLog();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v21 = 134217984;
    v22 = [v12 count];
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Found %ld alternatives when dropping label constraint.", &v21, 0xCu);
  }

  if (![v12 count])
  {
    if (a4 == 2 && a5 == 1)
    {
      v14 = IntentHandlerDefaultLog();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v21) = 0;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Not dropping handle type constraint because the user requested a telephony call.", &v21, 2u);
      }
    }

    else
    {
      v15 = [(StartCallIntentHandler *)self dataSource];
      v16 = [v15 coreTelephonyDataSource];
      v17 = [v16 allRelevantISOCountryCodes];
      v18 = [(StartCallIntentHandler *)self _inPersonsFromContact:v8 withRequestedType:0 requestedLabel:0 isoCountryCodes:v17];

      v14 = IntentHandlerDefaultLog();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v19 = [v18 count];
        v21 = 134217984;
        v22 = v19;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Found %ld alternatives when dropping handle and label constraint.", &v21, 0xCu);
      }

      v12 = v18;
    }
  }

  return v12;
}

- (BOOL)anyContactsHaveSameName:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(NSMutableSet);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = *v15;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = [CNContactFormatter stringFromContact:*(*(&v14 + 1) + 8 * i) style:0, v14];
        v10 = v9;
        if (v9)
        {
          v11 = v9;
        }

        else
        {
          v11 = &stru_10004D950;
        }

        v12 = v11;

        if ([v4 containsObject:v12])
        {

          LOBYTE(v6) = 1;
          goto LABEL_14;
        }

        [v4 addObject:v12];
      }

      v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_14:

  return v6;
}

- (BOOL)isEmergencyHandle:(id)a3
{
  v4 = a3;
  v5 = [(StartCallIntentHandler *)self dataSource];
  v6 = [v5 providerManager];

  v44 = self;
  v7 = [(StartCallIntentHandler *)self dataSource];
  v8 = [v7 senderIdentityClient];

  v9 = [v6 telephonyProvider];
  v10 = [v9 prioritizedSenderIdentities];

  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  v11 = v10;
  v12 = [v11 countByEnumeratingWithState:&v53 objects:v61 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v54;
    while (2)
    {
      for (i = 0; i != v13; i = i + 1)
      {
        if (*v54 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = [*(*(&v53 + 1) + 8 * i) UUID];
        v17 = [v8 isEmergencyNumberForDigits:v4 senderIdentityUUID:v16];

        if (v17)
        {
          v39 = IntentHandlerDefaultLog();
          if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v60 = v4;
            _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "Handle is an emergency number, %@ is in the prioritizedSenderIdentities list", buf, 0xCu);
          }

          v38 = 1;
          v21 = v11;
          goto LABEL_38;
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v53 objects:v61 count:16];
      if (v13)
      {
        continue;
      }

      break;
    }
  }

  v43 = v6;

  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  v18 = [(StartCallIntentHandler *)v44 dataSource];
  v19 = [v18 providerManager];
  v20 = [v19 emergencyProvider];
  v21 = [v20 emergencyLabeledHandles];

  v22 = [v21 countByEnumeratingWithState:&v49 objects:v58 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = *v50;
    while (2)
    {
      for (j = 0; j != v23; j = j + 1)
      {
        if (*v50 != v24)
        {
          objc_enumerationMutation(v21);
        }

        v26 = [*(*(&v49 + 1) + 8 * j) handle];
        v27 = [v26 value];
        v28 = [v4 isEqualToString:v27];

        if (v28)
        {
          v40 = IntentHandlerDefaultLog();
          v6 = v43;
          if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v60 = v4;
            _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "Handle is an emergency number, %@ is in the emergencyLabeledHandles list", buf, 0xCu);
          }

          v38 = 1;
          goto LABEL_38;
        }
      }

      v23 = [v21 countByEnumeratingWithState:&v49 objects:v58 count:16];
      if (v23)
      {
        continue;
      }

      break;
    }
  }

  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v29 = [(StartCallIntentHandler *)v44 dataSource];
  v30 = [v29 providerManager];
  v31 = [v30 emergencyProvider];
  v21 = [v31 emergencyHandles];

  v32 = [v21 countByEnumeratingWithState:&v45 objects:v57 count:16];
  if (v32)
  {
    v33 = v32;
    v34 = *v46;
    while (2)
    {
      for (k = 0; k != v33; k = k + 1)
      {
        if (*v46 != v34)
        {
          objc_enumerationMutation(v21);
        }

        v36 = [*(*(&v45 + 1) + 8 * k) value];
        v37 = [v4 isEqualToString:v36];

        if (v37)
        {
          v41 = IntentHandlerDefaultLog();
          if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v60 = v4;
            _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "Handle is an emergency number, %@ is in the unlabeled emergencyHandles list", buf, 0xCu);
          }

          v38 = 1;
          goto LABEL_37;
        }
      }

      v33 = [v21 countByEnumeratingWithState:&v45 objects:v57 count:16];
      if (v33)
      {
        continue;
      }

      break;
    }
  }

  v21 = IntentHandlerDefaultLog();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v60 = v4;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Handle is not an emergency number: %@", buf, 0xCu);
  }

  v38 = 0;
LABEL_37:
  v6 = v43;
LABEL_38:

  return v38;
}

- (id)localizedEmergencyString:(id)a3
{
  v4 = a3;
  v5 = [INDeferredLocalizedString alloc];
  v6 = [NSBundle bundleWithPath:@"/Applications/InCallService.app"];
  v7 = [v5 initWithDeferredFormat:v4 fromTable:@"InCallService" bundle:v6 arguments:0];

  v8 = [(StartCallIntentHandler *)self dataSource];
  v9 = [v8 siriLanguageCode];
  v10 = [v7 localizeForLanguage:v9];

  return v10;
}

- (id)_applyImpliedFilterToPhoneNumberOnlyMatchesIfApplicableForPersonsByContact:(id)a3 requestedHandleType:(int64_t)a4 preferredCallProvider:(int64_t)a5
{
  v8 = a3;
  if (a4)
  {
    v9 = IntentHandlerDefaultLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v10 = "Not applying an implicit handle type filter to an intent with an explicit handle type specified";
LABEL_26:
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, v10, buf, 2u);
      goto LABEL_27;
    }

    goto LABEL_27;
  }

  if (a5)
  {
    v9 = IntentHandlerDefaultLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v10 = "Not applying an implicit handle type filter to an intent with an explicit call provider specified";
      goto LABEL_26;
    }

LABEL_27:

    v25 = v8;
    goto LABEL_28;
  }

  v11 = [(StartCallIntentHandler *)self dataSource];
  v12 = [v11 supportsTelephonyCalls];

  if ((v12 & 1) == 0)
  {
    v9 = IntentHandlerDefaultLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v10 = "Not applying an implicit handle type = phone number filter on a device that doesn't support telephone calls";
      goto LABEL_26;
    }

    goto LABEL_27;
  }

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v13 = [v8 allValues];
  v14 = [v13 countByEnumeratingWithState:&v29 objects:v35 count:16];
  if (!v14)
  {

    goto LABEL_24;
  }

  v15 = v14;
  v16 = 0;
  v17 = *v30;
  do
  {
    for (i = 0; i != v15; i = i + 1)
    {
      if (*v30 != v17)
      {
        objc_enumerationMutation(v13);
      }

      v16 += [*(*(&v29 + 1) + 8 * i) count];
    }

    v15 = [v13 countByEnumeratingWithState:&v29 objects:v35 count:16];
  }

  while (v15);

  if (v16 <= 1)
  {
LABEL_24:
    v9 = IntentHandlerDefaultLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v10 = "Not applying an implicit handle type filter because there is already only one matching handle";
      goto LABEL_26;
    }

    goto LABEL_27;
  }

  v19 = IntentHandlerDefaultLog();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Multiple handles match call request. Attempting to filter to just phone numbers to resolve ambiguity.", buf, 2u);
  }

  v27[0] = _NSConcreteStackBlock;
  v27[1] = 3221225472;
  v27[2] = sub_10001D1AC;
  v27[3] = &unk_10004D028;
  v20 = objc_alloc_init(NSMutableDictionary);
  v28 = v20;
  [v8 enumerateKeysAndObjectsUsingBlock:v27];
  v21 = [v20 count];
  v22 = IntentHandlerDefaultLog();
  v23 = os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT);
  if (v21)
  {
    v24 = v20;
    if (v23)
    {
      *buf = 138412290;
      v34 = v20;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Filtered the results to only phone numbers. Remaining matches: %@", buf, 0xCu);
      v24 = v20;
    }
  }

  else
  {
    v24 = v8;
    if (v23)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Filtering results to only phone numbers would have produced no results, not filtering.", buf, 2u);
      v24 = v8;
    }
  }

  v25 = v24;
LABEL_28:

  return v25;
}

- (id)_inPersonsFromContact:(id)a3 withRequestedType:(int64_t)a4 requestedLabel:(id)a5 isoCountryCodes:(id)a6
{
  v38 = a3;
  v9 = a5;
  v37 = a6;
  v10 = objc_alloc_init(NSMutableArray);
  v11 = v10;
  if (a4 == 2)
  {
    v36 = v10;
    v35 = 0;
  }

  else
  {
    if (a4 == 1)
    {
LABEL_16:
      v24 = [v38 emailAddresses];
      v39 = 0u;
      v40 = 0u;
      v41 = 0u;
      v42 = 0u;
      v25 = [v24 countByEnumeratingWithState:&v39 objects:v47 count:16];
      if (v25)
      {
        v26 = v25;
        v27 = *v40;
        do
        {
          for (i = 0; i != v26; i = i + 1)
          {
            if (*v40 != v27)
            {
              objc_enumerationMutation(v24);
            }

            v29 = *(*(&v39 + 1) + 8 * i);
            v30 = INPersonHandleLabelForCNLabeledValue();
            if (![v9 length] || !objc_msgSend(v9, "caseInsensitiveCompare:", v30))
            {
              v31 = [v29 value];
              v32 = [StartCallIntentHandlerUtilities inPersonFromContact:v38 handleValue:v31 handleType:1 handleLabel:v30];
              [v11 addObject:v32];
            }
          }

          v26 = [v24 countByEnumeratingWithState:&v39 objects:v47 count:16];
        }

        while (v26);
      }

      goto LABEL_27;
    }

    if (a4)
    {
      goto LABEL_27;
    }

    v36 = v10;
    v35 = 1;
  }

  [v38 phoneNumbers];
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v12 = v46 = 0u;
  v13 = [v12 countByEnumeratingWithState:&v43 objects:v48 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v44;
    do
    {
      for (j = 0; j != v14; j = j + 1)
      {
        if (*v44 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v43 + 1) + 8 * j);
        if (INPersonHandleLabelEqualsCNLabeledValue())
        {
          v18 = INPersonHandleLabelForCNLabeledValue();
          v19 = [v17 value];
          v20 = [v19 stringValue];
          v21 = [v37 firstObject];
          v22 = TUFormattedPhoneNumber();

          v23 = [StartCallIntentHandlerUtilities inPersonFromContact:v38 handleValue:v22 handleType:2 handleLabel:v18];
          [v36 addObject:v23];
        }
      }

      v14 = [v12 countByEnumeratingWithState:&v43 objects:v48 count:16];
    }

    while (v14);
  }

  v11 = v36;
  if (v35)
  {
    goto LABEL_16;
  }

LABEL_27:
  v33 = [v11 copy];

  return v33;
}

- (BOOL)haveAlreadyConfirmedRecipient:(id)a3
{
  v4 = a3;
  v5 = [TUHandle handleWithPerson:v4];
  if (v5)
  {
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v6 = [(StartCallIntentHandler *)self handlesConfirmed];
    v7 = [v6 countByEnumeratingWithState:&v22 objects:v28 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v23;
LABEL_4:
      v10 = 0;
      while (1)
      {
        if (*v23 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v22 + 1) + 8 * v10);
        if (TUHandlesAreCanonicallyEqual())
        {
          break;
        }

        if (v8 == ++v10)
        {
          v8 = [v6 countByEnumeratingWithState:&v22 objects:v28 count:16];
          if (v8)
          {
            goto LABEL_4;
          }

          goto LABEL_10;
        }
      }

      v17 = IntentHandlerDefaultLog();
      if (!os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_19;
      }

      *buf = 138412290;
      v27 = v11;
      v18 = "Have previously confirmed recipient with handle %@";
      v19 = v17;
      goto LABEL_18;
    }

LABEL_10:
  }

  v12 = [v4 contactIdentifier];
  v13 = [v12 length];

  if (v13)
  {
    v14 = [(StartCallIntentHandler *)self contactIdentifiersConfirmed];
    v15 = [v4 contactIdentifier];
    v16 = [v14 containsObject:v15];

    if (v16)
    {
      v6 = IntentHandlerDefaultLog();
      if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
LABEL_20:

        v20 = 1;
        goto LABEL_21;
      }

      v17 = [v4 contactIdentifier];
      *buf = 138412290;
      v27 = v17;
      v18 = "Have previously confirmed recipient with contactIdentifier: %@";
      v19 = v6;
LABEL_18:
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, v18, buf, 0xCu);
LABEL_19:

      goto LABEL_20;
    }
  }

  v20 = 0;
LABEL_21:

  return v20;
}

- (BOOL)shouldRequireInvalidNumberConfirmationForRecipient:(id)a3
{
  v4 = a3;
  v5 = IntentHandlerDefaultLog();
  v6 = os_signpost_id_generate(v5);

  v7 = IntentHandlerDefaultLog();
  v8 = v7;
  v9 = v6 - 1;
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v8, OS_SIGNPOST_INTERVAL_BEGIN, v6, "shouldRequireInvalidNumberConfirmation", "", buf, 2u);
  }

  v10 = [TUHandle handleWithPerson:v4];
  v11 = [(StartCallIntentHandler *)self haveAlreadyConfirmedRecipient:v4];
  v12 = v11;
  if (v11)
  {
    v13 = IntentHandlerDefaultLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Not requiring invalid number confirmation because recipient has already been confirmed.", buf, 2u);
    }
  }

  v14 = [v4 personHandle];
  v15 = [v14 emergencyType];

  if (v15 == 2)
  {
    v16 = IntentHandlerDefaultLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Not requiring invalid number confirmation because recipient has a nonlocal emergency handle type and has already been confirmed.", buf, 2u);
    }

    goto LABEL_38;
  }

  if ((v12 & 1) == 0)
  {
    v18 = [(StartCallIntentHandler *)self dataSource];
    v19 = [v18 coreTelephonyDataSource];
    v20 = [v19 allRelevantISOCountryCodes];

    v53 = 0u;
    v54 = 0u;
    v51 = 0u;
    v52 = 0u;
    v16 = v20;
    v21 = [v16 countByEnumeratingWithState:&v51 objects:v61 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v52;
      while (2)
      {
        for (i = 0; i != v22; i = i + 1)
        {
          if (*v52 != v23)
          {
            objc_enumerationMutation(v16);
          }

          v25 = *(*(&v51 + 1) + 8 * i);
          if ([v10 isValidForISOCountryCode:v25])
          {
            v44 = IntentHandlerDefaultLog();
            if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v58 = v25;
              _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEFAULT, "Not requiring invalid number confirmation because handle is valid for country code %@", buf, 0xCu);
            }

            goto LABEL_38;
          }
        }

        v22 = [v16 countByEnumeratingWithState:&v51 objects:v61 count:16];
        if (v22)
        {
          continue;
        }

        break;
      }
    }

    v26 = IntentHandlerDefaultLog();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v58 = v10;
      v59 = 2112;
      v60 = v16;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "[WARN] Requested handle %@ is not valid for any of the following country codes: %@", buf, 0x16u);
    }

    v50 = v6;

    v27 = IntentHandlerDefaultLog();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "Examining call history to determine if there is existing call history with the invalid number.", buf, 2u);
    }

    v55 = v10;
    v48 = [NSArray arrayWithObjects:&v55 count:1];
    v49 = [(StartCallIntentHandler *)self dataSource];
    v28 = [v49 coreTelephonyDataSource];
    v29 = [v28 allRelevantISOCountryCodes];
    v30 = [CallHistoryDataSourcePredicate predicateForCallsWithAnyOfTheseRemoteParticipantHandles:v48 isoCountryCodes:v29];
    v56[0] = v30;
    v31 = +[CallHistoryDataSourcePredicate predicateForCallsWithDurationLongerThanImmediateHangUp];
    v56[1] = v31;
    v32 = [NSArray arrayWithObjects:v56 count:2];
    v16 = [NSCompoundPredicate andPredicateWithSubpredicates:v32];

    v33 = IntentHandlerDefaultLog();
    v34 = os_signpost_id_generate(v33);

    v35 = IntentHandlerDefaultLog();
    v36 = v35;
    if (v34 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v35))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v36, OS_SIGNPOST_INTERVAL_BEGIN, v34, "callHistoryDBForInvalidNumber", "", buf, 2u);
    }

    v37 = [(StartCallIntentHandler *)self dataSource];
    v38 = [v37 callHistoryDataSource];
    v39 = [v38 callCountWithPredicate:v16];

    v40 = IntentHandlerDefaultLog();
    v41 = v40;
    v6 = v50;
    if (v34 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v40))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v41, OS_SIGNPOST_INTERVAL_END, v34, "callHistoryDBForInvalidNumber", "", buf, 2u);
    }

    v42 = IntentHandlerDefaultLog();
    v43 = os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT);
    if (v39 < 1)
    {
      if (v43)
      {
        *buf = 138412290;
        v58 = v10;
        _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, "Did not find any matching calls with: %@", buf, 0xCu);
      }

      v16 = IntentHandlerDefaultLog();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "[WARN] Returning YES for shouldRequireInvalidNumberConfirmationForRecipient.", buf, 2u);
      }

      v17 = 1;
      goto LABEL_39;
    }

    if (v43)
    {
      *buf = 134218242;
      v58 = v39;
      v59 = 2112;
      v60 = v10;
      _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, "Not requiring invalid number confirmation because there are %ld recents call with %@", buf, 0x16u);
    }

LABEL_38:
    v17 = 0;
LABEL_39:

    goto LABEL_40;
  }

  v17 = 0;
LABEL_40:
  v45 = IntentHandlerDefaultLog();
  v46 = v45;
  if (v9 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v45))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v46, OS_SIGNPOST_INTERVAL_END, v6, "shouldRequireInvalidNumberConfirmation", "", buf, 2u);
  }

  return v17;
}

- (BOOL)shouldRequireUnknownRecipientConfirmationForRequestedRecipient:(id)a3 resolvedToRecipient:(id)a4 contact:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = IntentHandlerDefaultLog();
  v12 = os_signpost_id_generate(v11);

  v13 = IntentHandlerDefaultLog();
  v14 = v13;
  if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v14, OS_SIGNPOST_INTERVAL_BEGIN, v12, "shouldRequireUnknownRecipientConfirmation", "", buf, 2u);
  }

  v15 = [v8 _userInput];
  v16 = [v8 displayName];
  if ([(StartCallIntentHandler *)self haveAlreadyConfirmedRecipient:v8])
  {
    v17 = IntentHandlerDefaultLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Not requiring unknown recipient confirmation because recipient has already been confirmed.", buf, 2u);
    }

    goto LABEL_15;
  }

  v18 = [v8 relationship];
  v19 = [v18 length];

  if (v19)
  {
    v17 = IntentHandlerDefaultLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v20 = [v8 relationship];
      *buf = 138412290;
      v76 = v20;
      v21 = "Not requiring unknown recipient confirmation because requested recipient was a relation: %@";
      v22 = v17;
      v23 = 12;
LABEL_10:
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, v21, buf, v23);
LABEL_14:
    }

LABEL_15:
    v28 = 0;
LABEL_16:

    goto LABEL_17;
  }

  v74 = v10;
  v24 = [v8 personHandle];
  v25 = [v24 value];
  v26 = [v25 length];

  if (v26)
  {
    v17 = IntentHandlerDefaultLog();
    v10 = v74;
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v20 = [v8 personHandle];
      v27 = [v20 value];
      *buf = 138412290;
      v76 = v27;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Not requiring unknown recipient confirmation because requested recipient was a manually dictated handle: %@", buf, 0xCu);

      goto LABEL_14;
    }

    goto LABEL_15;
  }

  if ([v15 length])
  {
    v34 = [v9 displayName];
    v35 = [v15 isEqualToIgnoringCase:v34];

    if (v35)
    {
      v17 = IntentHandlerDefaultLog();
      v10 = v74;
      if (!os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_15;
      }

      v20 = [v9 displayName];
      *buf = 138412546;
      v76 = v15;
      v77 = 2112;
      v78 = v20;
      v21 = "Not requiring unknown recipient confirmation because userInput %@ matches resolved recipients full displayName: %@";
      v22 = v17;
      v23 = 22;
      goto LABEL_10;
    }
  }

  if ([v16 length])
  {
    v36 = [v9 displayName];
    v37 = [v16 isEqualToIgnoringCase:v36];

    if (v37)
    {
      v17 = IntentHandlerDefaultLog();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v38 = [v9 displayName];
        *buf = 138412546;
        v76 = v16;
        v77 = 2112;
        v78 = v38;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Not requiring unknown recipient confirmation because requested displayName %@ matches resolved recipients displayName: %@", buf, 0x16u);
      }

      v28 = 0;
      v10 = v74;
      goto LABEL_16;
    }
  }

  v39 = [v9 nameComponents];

  if (v39)
  {
    v40 = [v9 nameComponents];
    v17 = [NSPersonNameComponentsFormatter localizedStringFromPersonNameComponents:v40 style:3 options:0];

    if ([v15 length] && objc_msgSend(v15, "isEqualToIgnoringCase:", v17))
    {
      v20 = IntentHandlerDefaultLog();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v76 = v15;
        v77 = 2112;
        v78 = v17;
        v41 = "Not requiring unknown recipient confirmation because userInput %@ matches resolved recipients long format name: %@";
LABEL_43:
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, v41, buf, 0x16u);
        goto LABEL_44;
      }

      goto LABEL_44;
    }

    if ([v16 length] && objc_msgSend(v16, "isEqualToIgnoringCase:", v17))
    {
      v20 = IntentHandlerDefaultLog();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v76 = v16;
        v77 = 2112;
        v78 = v17;
        v41 = "Not requiring unknown recipient confirmation because requested recipient displayName %@ matches resolved recipients long format name: %@";
        goto LABEL_43;
      }

LABEL_44:
      v10 = v74;
      goto LABEL_14;
    }
  }

  v42 = [v9 nameComponents];

  if (v42)
  {
    v43 = [v9 nameComponents];
    v44 = [NSPersonNameComponentsFormatter localizedStringFromPersonNameComponents:v43 style:2 options:0];

    if ([v15 length] && objc_msgSend(v15, "isEqualToIgnoringCase:", v44))
    {
      v45 = IntentHandlerDefaultLog();
      if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v76 = v15;
        v77 = 2112;
        v78 = v44;
        _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_DEFAULT, "Not requiring unknown recipient confirmation because userInput %@ matches resolved recipients medium format name: %@", buf, 0x16u);
      }

      v10 = v74;
    }

    else
    {
      if (![v16 length])
      {
        v28 = 1;
        v10 = v74;
        goto LABEL_60;
      }

      v10 = v74;
      if (![v16 isEqualToIgnoringCase:v44])
      {
        v28 = 1;
        goto LABEL_60;
      }

      v45 = IntentHandlerDefaultLog();
      if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v76 = v16;
        v77 = 2112;
        v78 = v44;
        _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_DEFAULT, "Not requiring unknown recipient confirmation because requested recipient displayName %@ matches resolved recipients medium format name: %@", buf, 0x16u);
      }
    }

    v28 = 0;
LABEL_60:

    goto LABEL_61;
  }

  v28 = 1;
  v10 = v74;
LABEL_61:
  if (v10 && v28)
  {
    v46 = [CNContactFormatter stringFromContact:v10 style:0];
    if ([v15 length] && objc_msgSend(v15, "isEqualToIgnoringCase:", v46))
    {
      v47 = IntentHandlerDefaultLog();
      if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v76 = v15;
        v77 = 2112;
        v78 = v46;
        v48 = "Not requiring unknown recipient confirmation because userInput %@ matches resolved contact formatted name: %@";
LABEL_71:
        _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_DEFAULT, v48, buf, 0x16u);
      }
    }

    else if ([v16 length] && objc_msgSend(v16, "isEqualToIgnoringCase:", v46))
    {
      v47 = IntentHandlerDefaultLog();
      if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v76 = v16;
        v77 = 2112;
        v78 = v46;
        v48 = "Not requiring unknown recipient confirmation because requested recipient displayName %@ matches resolved contact formatted name: %@";
        goto LABEL_71;
      }
    }

    else
    {
      v72 = v46;
      v49 = [(StartCallIntentHandler *)self dataSource];
      v50 = [v49 favoritesDataSource];
      v51 = v10;
      v52 = v50;
      v53 = [v50 hasFavoritesEntryForContact:v51];

      if (!v53)
      {
        v28 = 1;
        v46 = v72;
        v10 = v74;
LABEL_79:

        goto LABEL_80;
      }

      v47 = IntentHandlerDefaultLog();
      if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v10 = v74;
        v76 = v74;
        _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_DEFAULT, "Not requiring unknown recipient confirmation because resolved contact is a favorite. Contact: %@", buf, 0xCu);
      }

      else
      {
        v10 = v74;
      }

      v46 = v72;
    }

    v28 = 0;
    goto LABEL_79;
  }

LABEL_80:
  if (v10 && v28)
  {
    v17 = [v10 allTUHandles];
    if (![v17 count])
    {
      v28 = 1;
      goto LABEL_16;
    }

    v70 = [(StartCallIntentHandler *)self dataSource];
    v54 = [v70 coreTelephonyDataSource];
    v55 = [v54 allRelevantISOCountryCodes];
    v73 = [CallHistoryDataSourcePredicate predicateForCallsWithAnyOfTheseRemoteParticipantHandles:v17 isoCountryCodes:v55];

    v56 = IntentHandlerDefaultLog();
    if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v76 = v73;
      _os_log_impl(&_mh_execute_header, v56, OS_LOG_TYPE_DEFAULT, "Searching for recent calls using predicate: %@", buf, 0xCu);
    }

    v57 = IntentHandlerDefaultLog();
    v58 = os_signpost_id_generate(v57);

    v59 = IntentHandlerDefaultLog();
    v60 = v59;
    v71 = v58 - 1;
    if (v58 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v59))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v60, OS_SIGNPOST_INTERVAL_BEGIN, v58, "callHistoryDBForUnknownRecipient", "", buf, 2u);
    }

    spid = v58;

    v61 = [(StartCallIntentHandler *)self dataSource];
    v62 = [v61 callHistoryDataSource];
    v63 = [v62 callCountWithPredicate:v73];

    v64 = IntentHandlerDefaultLog();
    v65 = v64;
    if (v71 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v64))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v65, OS_SIGNPOST_INTERVAL_END, spid, "callHistoryDBForUnknownRecipient", "", buf, 2u);
    }

    v66 = IntentHandlerDefaultLog();
    v67 = os_log_type_enabled(v66, OS_LOG_TYPE_DEFAULT);
    v28 = v63 < 1;
    if (v63 < 1)
    {
      v10 = v74;
      if (v67)
      {
        *buf = 138412290;
        v76 = v17;
        v68 = "Did not find a recent calls with any of the following handles: %@";
        goto LABEL_97;
      }
    }

    else
    {
      v10 = v74;
      if (v67)
      {
        *buf = 138412290;
        v76 = v17;
        v68 = "Not requiring unknown recipient confirmation because there is a recent call with one of the following handles: %@";
LABEL_97:
        _os_log_impl(&_mh_execute_header, v66, OS_LOG_TYPE_DEFAULT, v68, buf, 0xCu);
      }
    }

    goto LABEL_16;
  }

LABEL_17:
  v29 = IntentHandlerDefaultLog();
  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
  {
    v30 = @"false";
    if (v28)
    {
      v30 = @"true";
    }

    *buf = 138543362;
    v76 = v30;
    _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "Returning %{public}@ for shouldRequireUnknownRecipientConfirmationForRequestedRecipient.", buf, 0xCu);
  }

  v31 = IntentHandlerDefaultLog();
  v32 = v31;
  if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v31))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v32, OS_SIGNPOST_INTERVAL_END, v12, "shouldRequireUnknownRecipientConfirmation", "", buf, 2u);
  }

  return v28;
}

- (id)resolveContactsFromCallGroups:(id)a3
{
  v4 = a3;
  v5 = [v4 contacts];
  v6 = objc_alloc_init(NSMutableArray);
  v7 = IntentHandlerDefaultLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [v4 callGroups];
    *buf = 138412290;
    v35 = v8;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "group facetime message callGroups for intent: %@", buf, 0xCu);
  }

  v9 = [v4 callGroups];
  v10 = [v9 firstObject];
  v11 = [v10 groupId];

  v12 = [(StartCallIntentHandler *)self dataSource];
  v13 = [v12 fetchSPIHandlesForGroupID:v11];

  if ([v13 count])
  {
    v27 = v5;
    v28 = v4;
    v14 = IntentHandlerDefaultLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v35 = v13;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "fetching handles from spiChat: %@", buf, 0xCu);
    }

    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v15 = v13;
    v16 = [v15 countByEnumeratingWithState:&v29 objects:v33 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v30;
      do
      {
        for (i = 0; i != v17; i = i + 1)
        {
          if (*v30 != v18)
          {
            objc_enumerationMutation(v15);
          }

          v20 = *(*(&v29 + 1) + 8 * i);
          v21 = [INPersonHandle alloc];
          v22 = [v20 address];
          v23 = [v21 initWithValue:v22 type:0 label:0 emergencyType:2];

          v24 = [[INPerson alloc] initWithPersonHandle:v23 nameComponents:0 displayName:0 image:0 contactIdentifier:0 customIdentifier:0];
          [v6 addObject:v24];
        }

        v17 = [v15 countByEnumeratingWithState:&v29 objects:v33 count:16];
      }

      while (v17);
    }

    v5 = [v6 copy];
    v4 = v28;
  }

  v25 = IntentHandlerDefaultLog();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v35 = v5;
    _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "updated contacts: %@", buf, 0xCu);
  }

  return v5;
}

@end