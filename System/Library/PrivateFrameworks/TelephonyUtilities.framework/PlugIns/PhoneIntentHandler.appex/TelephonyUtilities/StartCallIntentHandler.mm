@interface StartCallIntentHandler
- (AppResolving)appResolver;
- (BOOL)anyContactsHaveSameName:(id)name;
- (BOOL)haveAlreadyConfirmedRecipient:(id)recipient;
- (BOOL)intentHasUnresolvedLocalEmergencyContact:(id)contact;
- (BOOL)isChinaSKUDevice;
- (BOOL)isEmergencyCall:(id)call;
- (BOOL)isEmergencyHandle:(id)handle;
- (BOOL)isFaceTimeInvitationEnabled;
- (BOOL)isFaceTimeNoFanOutEnabled;
- (BOOL)isGFTDisabledForChinaSKU:(id)u;
- (BOOL)isUnresolvedLocalEmergencyContact:(id)contact;
- (BOOL)shouldForceAudioOnlyWithIdiom:(int64_t)idiom withDisplayDisabled:(BOOL)disabled;
- (BOOL)shouldRequireInvalidNumberConfirmationForRecipient:(id)recipient;
- (BOOL)shouldRequireUnknownRecipientConfirmationForRequestedRecipient:(id)recipient resolvedToRecipient:(id)toRecipient contact:(id)contact;
- (IntentHandlerCoreAnalyticsLogging)coreAnalyticsLogger;
- (NSCache)identifierToContactCache;
- (StartCallIntentHandler)init;
- (StartCallIntentHandler)initWithFeatureFlags:(id)flags;
- (StartCallIntentHandler)initWithFeatureFlags:(id)flags faceTimeUtilities:(id)utilities;
- (StartCallIntentHandlerDataSource)dataSource;
- (id)_applyImpliedFilterToPhoneNumberOnlyMatchesIfApplicableForPersonsByContact:(id)contact requestedHandleType:(int64_t)type preferredCallProvider:(int64_t)provider;
- (id)_inPersonsFromContact:(id)contact withRequestedType:(int64_t)type requestedLabel:(id)label isoCountryCodes:(id)codes;
- (id)allCountryCodesRelevantToCall:(id)call;
- (id)callRecordForRecentCall:(id)call;
- (id)emergencyTypeToString:(int64_t)string;
- (id)generateAdditionalMatchingHandles:(id)handles resolvedContacts:(id)contacts requestedHandleType:(int64_t)type requestedHandleLabel:(id)label;
- (id)getAlternativesForContact:(id)contact forRequestedHandleType:(int64_t)type forCallProvider:(int64_t)provider;
- (id)globalEmergencyNumbers;
- (id)localizedEmergencyString:(id)string;
- (id)personResolutionResultsForIntent:(id)intent;
- (id)recentCallRecordToRedialForIntent:(id)intent;
- (id)recentCallToRedialForQuery:(id)query;
- (id)recentCallsWithHandles:(id)handles telephonyOnly:(BOOL)only;
- (id)relayCRRRecommendationForPerson:(id)person intent:(id)intent;
- (id)resolutionResultForEmergency;
- (id)resolutionResultForPersonWithResolvedContactName:(id)name resolvedPerson:(id)person resolvedContact:(id)contact contactIdentifiersRequiringConfirmation:(id)confirmation;
- (id)resolutionResultForPersonWithResolvedHandleValue:(id)value;
- (id)resolveContactsFromCallGroups:(id)groups;
- (id)resolvePreferredContactFromContacts:(id)contacts;
- (id)responseForDialRequest:(id)request intent:(id)intent;
- (id)responseForJoinRequest:(id)request intent:(id)intent callProvider:(id)provider;
- (int64_t)callCapabilityFromRecentCall:(id)call;
- (void)confirmStartCall:(id)call completion:(id)completion;
- (void)extractHandlesFromIntent:(id)intent faceTimeMemberHandles:(id)handles nonFaceTimeMemberHandles:(id)memberHandles;
- (void)handleStartCall:(id)call completion:(id)completion;
- (void)parseEmergencyContacts:(id)contacts usingExistingResult:(id)result;
- (void)resolveCallCapabilityForStartCall:(id)call withCompletion:(id)completion;
- (void)resolveCallRecordToCallBackForStartCall:(id)call withCompletion:(id)completion;
- (void)resolveContactsForStartCall:(id)call withCompletion:(id)completion;
- (void)resolveDestinationTypeForStartCall:(id)call withCompletion:(id)completion;
- (void)resolveFaceTimeLinkForStartCall:(id)call withCompletion:(id)completion;
- (void)resolvePreferredCallProviderForStartCall:(id)call withCompletion:(id)completion;
- (void)sortFaceTimeHandles:(id)handles faceTimeHandles:(id)timeHandles nonFaceTimeHandles:(id)faceTimeHandles;
- (void)updateHandlerStateForContactResolutionResults:(id)results;
- (void)updateScoreBasedContactResolver:(id)resolver forFavoritesAmongContacts:(id)contacts;
- (void)updateScoreBasedContactResolver:(id)resolver forRecentCallsMatchingContacts:(id)contacts;
- (void)updateScoreBasedHandleResolver:(id)resolver forFavoritesAmongHandles:(id)handles;
@end

@implementation StartCallIntentHandler

- (StartCallIntentHandler)init
{
  v3 = objc_alloc_init(IntentHandlerFeatureFlags);
  v4 = +[FaceTimeUtilities sharedInstance];
  v5 = [(StartCallIntentHandler *)self initWithFeatureFlags:v3 faceTimeUtilities:v4];

  return v5;
}

- (StartCallIntentHandler)initWithFeatureFlags:(id)flags
{
  flagsCopy = flags;
  v5 = +[FaceTimeUtilities sharedInstance];
  v6 = [(StartCallIntentHandler *)self initWithFeatureFlags:flagsCopy faceTimeUtilities:v5];

  return v6;
}

- (StartCallIntentHandler)initWithFeatureFlags:(id)flags faceTimeUtilities:(id)utilities
{
  flagsCopy = flags;
  utilitiesCopy = utilities;
  v12.receiver = self;
  v12.super_class = StartCallIntentHandler;
  v9 = [(StartCallIntentHandler *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_featureFlags, flags);
    objc_storeStrong(&v10->_faceTimeUtilities, utilities);
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
  isGreenTea = [v2 isGreenTea];

  return isGreenTea;
}

- (BOOL)isFaceTimeNoFanOutEnabled
{
  featureFlags = [(StartCallIntentHandler *)self featureFlags];
  faceTimeNoFanOutEnabled = [featureFlags faceTimeNoFanOutEnabled];

  if (faceTimeNoFanOutEnabled)
  {
    v5 = IntentHandlerDefaultLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Facetime No Fan Out is true", v9, 2u);
    }
  }

  featureFlags2 = [(StartCallIntentHandler *)self featureFlags];
  faceTimeNoFanOutEnabled2 = [featureFlags2 faceTimeNoFanOutEnabled];

  return faceTimeNoFanOutEnabled2;
}

- (BOOL)isFaceTimeInvitationEnabled
{
  featureFlags = [(StartCallIntentHandler *)self featureFlags];
  faceTimeInvitationEnabled = [featureFlags faceTimeInvitationEnabled];

  return faceTimeInvitationEnabled;
}

- (void)handleStartCall:(id)call completion:(id)completion
{
  callCopy = call;
  completionCopy = completion;
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
  v81 = completionCopy;
  spid = v8;

  v11 = IntentHandlerDefaultLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v93 = callCopy;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Handling start call intent: %@", buf, 0xCu);
  }

  v12 = [TUDialRequest alloc];
  dataSource = [(StartCallIntentHandler *)self dataSource];
  providerManager = [dataSource providerManager];
  dataSource2 = [(StartCallIntentHandler *)self dataSource];
  [dataSource2 contactsDataSource];
  v16 = v82 = callCopy;
  dataSource3 = [(StartCallIntentHandler *)self dataSource];
  senderIdentityClient = [dataSource3 senderIdentityClient];
  featureFlags = [(StartCallIntentHandler *)self featureFlags];
  v79 = [v12 initWithDialIntent:v82 providerManager:providerManager contactsDataSource:v16 senderIdentityClient:senderIdentityClient isEmergencyServicesOverrideEnabled:{objc_msgSend(featureFlags, "emergencyServicesOverrideEnabled")}];

  v20 = v82;
  if ([(StartCallIntentHandler *)self isFaceTimeInvitationEnabled])
  {
    faceTimeLink = [v82 faceTimeLink];
    v22 = [faceTimeLink length];

    if (v22)
    {
      v23 = IntentHandlerDefaultLog();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        faceTimeLink2 = [v82 faceTimeLink];
        *buf = 138412290;
        v93 = faceTimeLink2;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "FaceTimeInvitation Enabled for faceTime link: %@", buf, 0xCu);
      }

      v25 = +[NSMutableSet set];
      v26 = +[NSMutableSet set];
      [(StartCallIntentHandler *)self extractHandlesFromIntent:v82 faceTimeMemberHandles:v25 nonFaceTimeMemberHandles:v26];
      faceTimeLink3 = [v82 faceTimeLink];
      v28 = [NSString stringWithFormat:@"%@", faceTimeLink3];
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
  contacts = [v20 contacts];
  v41 = [v39 initWithCapacity:{objc_msgSend(contacts, "count")}];

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
        personHandle = [v46 personHandle];
        type = [personHandle type];

        if (type == 2)
        {
          dataSource4 = [(StartCallIntentHandler *)self dataSource];
          coreTelephonyDataSource = [dataSource4 coreTelephonyDataSource];
          allRelevantISOCountryCodes = [coreTelephonyDataSource allRelevantISOCountryCodes];
          firstObject = [allRelevantISOCountryCodes firstObject];

          v52 = [CNPhoneNumber alloc];
          personHandle2 = [v46 personHandle];
          value = [personHandle2 value];
          v55 = [v52 initWithStringValue:value countryCode:firstObject];

          v56 = [INPersonHandle alloc];
          formattedInternationalStringValue = [v55 formattedInternationalStringValue];
          personHandle3 = [v46 personHandle];
          type2 = [personHandle3 type];
          personHandle4 = [v46 personHandle];
          label = [personHandle4 label];
          v62 = [v56 initWithValue:formattedInternationalStringValue type:type2 label:label];

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
    remoteMembers = [v31 remoteMembers];
    if ([remoteMembers count] >= 2)
    {

      v66 = v80;
      v65 = v81;
      v67 = v79;
LABEL_32:
      provider = [v67 provider];
      v70 = [(StartCallIntentHandler *)self responseForJoinRequest:v31 intent:v20 callProvider:provider];
LABEL_33:

      goto LABEL_38;
    }

    conversationLink = [v31 conversationLink];

    v66 = v80;
    v65 = v81;
    v67 = v79;
    if (conversationLink)
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
    provider2 = [v67 provider];
    isTelephonyProvider = [provider2 isTelephonyProvider];

    if (isTelephonyProvider)
    {
      provider = [(StartCallIntentHandler *)self dataSource];
      handle = [v67 handle];
      [provider logOutgoingCallToHandle:handle];

      goto LABEL_33;
    }
  }

LABEL_38:
  v74 = IntentHandlerDefaultLog();
  if (os_log_type_enabled(v74, OS_LOG_TYPE_DEFAULT))
  {
    userActivity = [v70 userActivity];
    *buf = 138412546;
    v93 = v70;
    v94 = 2112;
    v95 = userActivity;
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

- (void)sortFaceTimeHandles:(id)handles faceTimeHandles:(id)timeHandles nonFaceTimeHandles:(id)faceTimeHandles
{
  handlesCopy = handles;
  timeHandlesCopy = timeHandles;
  faceTimeHandlesCopy = faceTimeHandles;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  obj = handlesCopy;
  v11 = [handlesCopy countByEnumeratingWithState:&v26 objects:v33 count:16];
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
        faceTimeUtilities = [(StartCallIntentHandler *)self faceTimeUtilities];
        v32 = v16;
        v18 = [NSArray arrayWithObjects:&v32 count:1];
        v19 = [faceTimeUtilities isFaceTimeable:v18];

        v20 = IntentHandlerDefaultLog();
        v21 = os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT);
        if (v19)
        {
          v22 = timeHandlesCopy;
          if (v21)
          {
            *buf = v24;
            v31 = v16;
            _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "found a FaceTimeable personHandle: %@", buf, 0xCu);
            v22 = timeHandlesCopy;
          }
        }

        else
        {
          v22 = faceTimeHandlesCopy;
          if (v21)
          {
            *buf = v24;
            v31 = v16;
            _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "found a non-FaceTimeable personHandle: %@", buf, 0xCu);
            v22 = faceTimeHandlesCopy;
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

- (void)extractHandlesFromIntent:(id)intent faceTimeMemberHandles:(id)handles nonFaceTimeMemberHandles:(id)memberHandles
{
  intentCopy = intent;
  handlesCopy = handles;
  memberHandlesCopy = memberHandles;
  v8 = IntentHandlerDefaultLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    contacts = [intentCopy contacts];
    *buf = 138412290;
    v42 = contacts;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Extracting Handles From Intent: %@", buf, 0xCu);
  }

  v33 = intentCopy;
  v34 = objc_alloc_init(NSMutableArray);
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  contacts2 = [intentCopy contacts];
  v11 = [contacts2 countByEnumeratingWithState:&v37 objects:v45 count:16];
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
          objc_enumerationMutation(contacts2);
        }

        v15 = *(*(&v37 + 1) + 8 * i);
        personHandle = [v15 personHandle];
        value = [personHandle value];
        v18 = [value length];

        if (v18)
        {
          v19 = IntentHandlerDefaultLog();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
          {
            personHandle2 = [v15 personHandle];
            faceTimeType = [personHandle2 faceTimeType];
            *buf = 134218242;
            v42 = faceTimeType;
            v43 = 2112;
            v44 = v15;
            _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "faceTimeType is %ld for %@", buf, 0x16u);
          }

          personHandle3 = [v15 personHandle];
          faceTimeType2 = [personHandle3 faceTimeType];

          if (faceTimeType2 == 2)
          {
            personHandle4 = [v15 personHandle];
            value2 = [personHandle4 value];
            v26 = [TUHandle normalizedHandleWithDestinationID:value2];
            v27 = memberHandlesCopy;
          }

          else
          {
            if (faceTimeType2 != 1)
            {
              if (faceTimeType2)
              {
                continue;
              }

              personHandle4 = [v15 personHandle];
              value2 = [personHandle4 value];
              [v34 addObject:value2];
              goto LABEL_18;
            }

            personHandle4 = [v15 personHandle];
            value2 = [personHandle4 value];
            v26 = [TUHandle normalizedHandleWithDestinationID:value2];
            v27 = handlesCopy;
          }

          [v27 addObject:v26];

LABEL_18:
          continue;
        }
      }

      v12 = [contacts2 countByEnumeratingWithState:&v37 objects:v45 count:16];
    }

    while (v12);
  }

  if ([v34 count])
  {
    faceTimeUtilities = [(StartCallIntentHandler *)self faceTimeUtilities];
    [faceTimeUtilities runIDSQueryForStartCallIntent:v34];

    v30 = memberHandlesCopy;
    v29 = handlesCopy;
    [(StartCallIntentHandler *)self sortFaceTimeHandles:v34 faceTimeHandles:handlesCopy nonFaceTimeHandles:memberHandlesCopy];
  }

  else
  {
    v31 = IntentHandlerDefaultLog();
    v30 = memberHandlesCopy;
    v29 = handlesCopy;
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "Skipping IDS query lookup as all handles have been resolved.", buf, 2u);
    }
  }
}

- (id)responseForDialRequest:(id)request intent:(id)intent
{
  requestCopy = request;
  intentCopy = intent;
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
    v62 = requestCopy;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Determining response for dial request: %@", buf, 0xCu);
  }

  if ([intentCopy preferredCallProvider] == 3 && (objc_msgSend(intentCopy, "destinationType") == 4 || objc_msgSend(intentCopy, "destinationType") == 5))
  {
    v14 = IntentHandlerDefaultLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Redial/callback to 3P call history entry.", buf, 2u);
    }

    appResolver = [(StartCallIntentHandler *)self appResolver];
    bundleIdentifier = [(__CFString *)requestCopy bundleIdentifier];
    v17 = [appResolver appSupportsDeprecatedCallingIntents:bundleIdentifier];

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

    v20 = [(__CFString *)requestCopy userActivityUsingDeprecatedCallingIntents:v17];
  }

  else
  {
    v20 = [NSUserActivity makeActivityWithIntent:intentCopy dialRequestAttachment:requestCopy];
  }

  v21 = v20;
  v22 = [[INStartCallIntentResponse alloc] initWithCode:2 userActivity:v20];
  dataSource = [(StartCallIntentHandler *)self dataSource];
  v24 = [dataSource callFilterStatusForDialRequest:requestCopy];

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

    if ([intentCopy _idiom] == 4)
    {
      dataSource2 = [(StartCallIntentHandler *)self dataSource];
      callRinging = [dataSource2 callRinging];

      if (callRinging)
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

    if ([intentCopy _idiom] == 4)
    {
      dataSource3 = [(StartCallIntentHandler *)self dataSource];
      callsInProgress = [dataSource3 callsInProgress];

      if (callsInProgress)
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
    provider = [(__CFString *)requestCopy provider];
    if ([provider isFaceTimeProvider] && (-[__CFString isVideo](requestCopy, "isVideo") & 1) != 0)
    {
      dataSource4 = [(StartCallIntentHandler *)self dataSource];
      supportsFaceTimeVideoCalls = [dataSource4 supportsFaceTimeVideoCalls];

      if ((supportsFaceTimeVideoCalls & 1) == 0)
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

    provider2 = [(__CFString *)requestCopy provider];
    if ([provider2 isFaceTimeProvider] && !-[__CFString isVideo](requestCopy, "isVideo"))
    {
      dataSource5 = [(StartCallIntentHandler *)self dataSource];
      supportsFaceTimeAudioCalls = [dataSource5 supportsFaceTimeAudioCalls];

      if ((supportsFaceTimeAudioCalls & 1) == 0)
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
      if ([(__CFString *)requestCopy isValid]& 1) != 0 || _TUIsInternalInstall() && (TUShouldUseSuperboxTelephonyProvider())
      {
        provider3 = [(__CFString *)requestCopy provider];
        isTelephonyProvider = [provider3 isTelephonyProvider];

        if (!isTelephonyProvider)
        {
          goto LABEL_28;
        }

        if ([(__CFString *)requestCopy dialType]== 1)
        {
          dataSource9 = IntentHandlerDefaultLog();
          if (os_log_type_enabled(dataSource9, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, dataSource9, OS_LOG_TYPE_DEFAULT, "Emergency call requested, will always try to place the call, skipping provider and cellular service availability checks.", buf, 2u);
          }

          goto LABEL_27;
        }

        if ([intentCopy _idiom] == 3)
        {
          dataSource9 = IntentHandlerDefaultLog();
          if (os_log_type_enabled(dataSource9, OS_LOG_TYPE_DEBUG))
          {
            sub_10003012C();
          }

          goto LABEL_27;
        }

        dataSource6 = [(StartCallIntentHandler *)self dataSource];
        supportsTelephonyCalls = [dataSource6 supportsTelephonyCalls];

        if (supportsTelephonyCalls)
        {
          dataSource7 = [(StartCallIntentHandler *)self dataSource];
          canAttemptTelephonyCallsWithoutCellularConnection = [dataSource7 canAttemptTelephonyCallsWithoutCellularConnection];

          if (canAttemptTelephonyCallsWithoutCellularConnection)
          {
            goto LABEL_28;
          }

          dataSource8 = [(StartCallIntentHandler *)self dataSource];
          isAirplaneModeEnabled = [dataSource8 isAirplaneModeEnabled];

          if (isAirplaneModeEnabled)
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

          dataSource9 = [(StartCallIntentHandler *)self dataSource];
          if (![dataSource9 supportsPrimaryCalling])
          {
            goto LABEL_27;
          }

          dataSource10 = [(StartCallIntentHandler *)self dataSource];
          coreTelephonyDataSource = [dataSource10 coreTelephonyDataSource];
          isCellularServiceAvailable = [coreTelephonyDataSource isCellularServiceAvailable];

          if (isCellularServiceAvailable)
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

          dataSource9 = v22;
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
  dataSource9 = v22;
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

- (id)responseForJoinRequest:(id)request intent:(id)intent callProvider:(id)provider
{
  requestCopy = request;
  intentCopy = intent;
  providerCopy = provider;
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
    v40 = requestCopy;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Determining response for join request: %@", buf, 0xCu);
  }

  v17 = [NSUserActivity makeActivityWithIntent:intentCopy joinRequestAttachment:requestCopy];
  v18 = [[INStartCallIntentResponse alloc] initWithCode:2 userActivity:v17];
  dataSource = [(StartCallIntentHandler *)self dataSource];
  contacts = [intentCopy contacts];
  v21 = [dataSource restrictedContacts:contacts callProvider:providerCopy];

  if (v21)
  {
    v22 = [v21 count];
    contacts2 = [intentCopy contacts];
    v24 = [contacts2 count];

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

  if ([requestCopy isVideoEnabled])
  {
    dataSource2 = [(StartCallIntentHandler *)self dataSource];
    supportsFaceTimeVideoCalls = [dataSource2 supportsFaceTimeVideoCalls];

    if ((supportsFaceTimeVideoCalls & 1) == 0)
    {
      v33 = IntentHandlerDefaultLog();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        sub_100030298();
      }

      goto LABEL_23;
    }
  }

  if (([requestCopy isVideoEnabled] & 1) == 0)
  {
    dataSource3 = [(StartCallIntentHandler *)self dataSource];
    supportsFaceTimeAudioCalls = [dataSource3 supportsFaceTimeAudioCalls];

    if ((supportsFaceTimeAudioCalls & 1) == 0)
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

- (BOOL)isEmergencyCall:(id)call
{
  callCopy = call;
  if ([callCopy destinationType] == 2)
  {
    v5 = 1;
  }

  else
  {
    v5 = [(StartCallIntentHandler *)self intentHasUnresolvedLocalEmergencyContact:callCopy];
  }

  return v5;
}

- (void)confirmStartCall:(id)call completion:(id)completion
{
  callCopy = call;
  completionCopy = completion;
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
    v74 = callCopy;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Confirm start audio call: %@", buf, 0xCu);
  }

  spid = v8;

  v13 = [[NSUserActivity alloc] _initWithIntent:callCopy];
  v14 = [[TUJoinConversationRequest alloc] initWithUserActivity:v13];
  v72 = v14;
  if (v14 && ([v14 remoteMembers], v15 = objc_claimAutoreleasedReturnValue(), v16 = objc_msgSend(v15, "count"), v15, v16 >= 2))
  {
    v17 = [TUDialRequest alloc];
    dataSource = [(StartCallIntentHandler *)self dataSource];
    [dataSource providerManager];
    v19 = v68 = v13;
    [(StartCallIntentHandler *)self dataSource];
    v20 = v67 = v8 - 1;
    contactsDataSource = [v20 contactsDataSource];
    dataSource2 = [(StartCallIntentHandler *)self dataSource];
    senderIdentityClient = [dataSource2 senderIdentityClient];
    v24 = [v17 initWithDialIntent:callCopy providerManager:v19 contactsDataSource:contactsDataSource senderIdentityClient:senderIdentityClient];

    v11 = v67;
    v13 = v68;

    dataSource3 = [(StartCallIntentHandler *)self dataSource];
    contacts = [callCopy contacts];
    provider = [v24 provider];
    v28 = [dataSource3 restrictedContacts:contacts callProvider:provider];
  }

  else
  {
    v28 = 0;
  }

  if ([callCopy preferredCallProvider] == 2)
  {
LABEL_17:
    if (!v28)
    {
      goto LABEL_25;
    }

    goto LABEL_20;
  }

  dataSource4 = [(StartCallIntentHandler *)self dataSource];
  if ([dataSource4 isAirplaneModeEnabled])
  {
    v30 = v13;
    v31 = v11;
    v32 = [(StartCallIntentHandler *)self isEmergencyCall:callCopy];
    if (v32 && (-[StartCallIntentHandler dataSource](self, "dataSource"), v13 = objc_claimAutoreleasedReturnValue(), ([v13 canAttemptEmergencyCallsWithoutCellularConnection] & 1) == 0))
    {

      v11 = v31;
      v13 = v30;
    }

    else
    {
      dataSource5 = [(StartCallIntentHandler *)self dataSource];
      canAttemptTelephonyCallsWithoutCellularConnection = [dataSource5 canAttemptTelephonyCallsWithoutCellularConnection];

      if (v32)
      {
      }

      v11 = v31;
      v13 = v30;
      if (canAttemptTelephonyCallsWithoutCellularConnection)
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
    if ([(StartCallIntentHandler *)self intentHasUnresolvedLocalEmergencyContact:callCopy])
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

    if ([callCopy destinationType] == 4 || objc_msgSend(callCopy, "destinationType") == 5)
    {
      contacts2 = [callCopy contacts];
      v43 = [contacts2 count];

      if (v43 == 1)
      {
        v69 = v13;
        contacts3 = [callCopy contacts];
        firstObject = [contacts3 firstObject];

        personHandle = [firstObject personHandle];
        if (personHandle)
        {
          v47 = personHandle;
          selfCopy = self;
          v49 = v11;
          personHandle2 = [firstObject personHandle];
          value = [personHandle2 value];
          if (value)
          {
            v52 = value;
            personHandle3 = [firstObject personHandle];
            value2 = [personHandle3 value];
            v55 = [(StartCallIntentHandler *)selfCopy isEmergencyHandle:value2];

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

              if ([callCopy destinationType] == 4)
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

    if ([callCopy destinationType] == 2)
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
  contacts4 = [callCopy contacts];
  v37 = [contacts4 count];

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

  completionCopy[2](completionCopy, v39);
}

- (void)resolveCallRecordToCallBackForStartCall:(id)call withCompletion:(id)completion
{
  callCopy = call;
  completionCopy = completion;
  v8 = IntentHandlerDefaultLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v19 = 138412290;
    v20 = callCopy;
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

  callRecordFilter = [callCopy callRecordFilter];

  if (callRecordFilter)
  {
    v14 = [(StartCallIntentHandler *)self recentCallRecordToRedialForIntent:callCopy];
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

  completionCopy[2](completionCopy, v15);
}

- (void)resolveDestinationTypeForStartCall:(id)call withCompletion:(id)completion
{
  callCopy = call;
  completionCopy = completion;
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
    v32 = callCopy;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Resolve destination type for start call: %@", &v31, 0xCu);
  }

  v14 = &AnalyticsSendEventLazy_ptr;
  if ([callCopy destinationType])
  {
    [INCallDestinationTypeResolutionResult successWithResolvedCallDestinationType:[callCopy destinationType]];
  }

  else
  {
    +[INCallDestinationTypeResolutionResult notRequired];
  }
  v15 = ;
  contacts = [callCopy contacts];
  if ([contacts count] != 1 || -[NSObject destinationType](callCopy, "destinationType") == 4)
  {
    value = 0;
LABEL_12:

    goto LABEL_13;
  }

  destinationType = [callCopy destinationType];

  if (destinationType != 5)
  {
    contacts = [callCopy contacts];
    [contacts firstObject];
    v29 = v28 = v9;
    personHandle = [v29 personHandle];
    value = [personHandle value];

    v9 = v28;
    v14 = &AnalyticsSendEventLazy_ptr;
    goto LABEL_12;
  }

  value = 0;
LABEL_13:
  if (![value length])
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

  v18 = [(StartCallIntentHandler *)self isEmergencyHandle:value];
  v19 = IntentHandlerDefaultLog();
  v20 = os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT);
  if (!v18)
  {
    if (!v20)
    {
      goto LABEL_23;
    }

    v31 = 138412290;
    v32 = value;
    v21 = "%@ is not an emergency handle. Do not need special resolving.";
    v22 = v19;
    v23 = 12;
    goto LABEL_22;
  }

  if (v20)
  {
    v31 = 138412290;
    v32 = value;
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

  completionCopy[2](completionCopy, v15);
}

- (id)resolutionResultForEmergency
{
  dataSource = [(StartCallIntentHandler *)self dataSource];
  siriEmergencyServices = [dataSource siriEmergencyServices];

  v4 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [siriEmergencyServices count]);
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  obj = siriEmergencyServices;
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
        handle = [v10 handle];
        value = [handle value];
        label = [v10 label];
        v16 = [(StartCallIntentHandler *)self localizedEmergencyString:label];
        v17 = [v12 initWithValue:value type:2 label:v16 emergencyType:1];
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

  firstObject = [v4 firstObject];
  v25 = [INStartCallContactResolutionResult successWithResolvedPerson:firstObject];

LABEL_20:

  return v25;
}

- (void)resolveContactsForStartCall:(id)call withCompletion:(id)completion
{
  callCopy = call;
  completionCopy = completion;
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
    v100 = callCopy;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Resolving contacts for start call intent: %@", buf, 0xCu);
  }

  if ([(StartCallIntentHandler *)self intentHasUnresolvedLocalEmergencyContact:callCopy])
  {
    dataSource = [(StartCallIntentHandler *)self dataSource];
    providerManager = [dataSource providerManager];
    emergencyProvider = [providerManager emergencyProvider];
    emergencyLabeledHandles = [emergencyProvider emergencyLabeledHandles];
    v18 = [emergencyLabeledHandles count];

    v12 = v9 - 1;
    if (v18 >= 2)
    {
      v75 = completionCopy;
      v19 = objc_alloc_init(NSMutableArray);
      v87 = 0u;
      v88 = 0u;
      v89 = 0u;
      v90 = 0u;
      contacts = [callCopy contacts];
      v21 = [contacts countByEnumeratingWithState:&v87 objects:v98 count:16];
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
              objc_enumerationMutation(contacts);
            }

            v25 = *(*(&v87 + 1) + 8 * i);
            if ([(StartCallIntentHandler *)self isUnresolvedLocalEmergencyContact:v25])
            {
              resolutionResultForEmergency = [(StartCallIntentHandler *)self resolutionResultForEmergency];
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

              resolutionResultForEmergency = [INStartCallContactResolutionResult successWithResolvedPerson:v25];
            }

            v28 = resolutionResultForEmergency;
            [v19 addObject:resolutionResultForEmergency];
          }

          v22 = [contacts countByEnumeratingWithState:&v87 objects:v98 count:16];
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
      completionCopy = v75;
      if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v31))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v32, OS_SIGNPOST_INTERVAL_END, v9, "resolveContacts", "", buf, 2u);
      }

      v75[2](v75, v29);
      goto LABEL_80;
    }
  }

  destinationType = [callCopy destinationType];
  v29 = 0;
  if (destinationType > 2)
  {
    if ((destinationType - 4) >= 2)
    {
      if (destinationType != 3)
      {
        goto LABEL_74;
      }

      v63 = IntentHandlerDefaultLog();
      if (os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v63, OS_LOG_TYPE_DEFAULT, "Resolution not required for voicemail destination", buf, 2u);
      }

      resolutionResultForEmergency2 = +[INStartCallContactResolutionResult notRequired];
      v97 = resolutionResultForEmergency2;
      v65 = &v97;
      goto LABEL_68;
    }

    v34 = IntentHandlerDefaultLog();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "Resolution for redial", buf, 2u);
    }

    v35 = [(StartCallIntentHandler *)self recentCallRecordToRedialForIntent:callCopy];
    v36 = v35;
    if (v35)
    {
      participants = [v35 participants];
      v38 = [participants count];

      if (v38 >= 2)
      {
        v76 = completionCopy;
        v78 = v12;
        v39 = callCopy;
        v40 = IntentHandlerDefaultLog();
        if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v100 = v36;
          _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "recentCall for group facetime: %@", buf, 0xCu);
        }

        participants4 = objc_alloc_init(NSMutableArray);
        v79 = 0u;
        v80 = 0u;
        v81 = 0u;
        v82 = 0u;
        participants2 = [v36 participants];
        v43 = [participants2 countByEnumeratingWithState:&v79 objects:v94 count:16];
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
                objc_enumerationMutation(participants2);
              }

              v47 = [INPersonResolutionResult successWithResolvedPerson:*(*(&v79 + 1) + 8 * j)];
              [participants4 addObject:v47];
            }

            v44 = [participants2 countByEnumeratingWithState:&v79 objects:v94 count:16];
          }

          while (v44);
        }

        v29 = [participants4 copy];
        callCopy = v39;
        completionCopy = v76;
        v12 = v78;
        goto LABEL_73;
      }

      participants3 = [v36 participants];
      v68 = [participants3 count];

      if (v68 == 1)
      {
        participants4 = [v36 participants];
        firstObject = [participants4 firstObject];
        v70 = [INStartCallContactResolutionResult successWithResolvedPerson:firstObject];
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

      participants4 = [INStartCallContactResolutionResult unsupportedForReason:7];
      v91 = participants4;
      v66 = &v91;
    }

    else
    {
      participants4 = [INStartCallContactResolutionResult unsupportedForReason:6];
      v92 = participants4;
      v66 = &v92;
    }

    v29 = [NSArray arrayWithObjects:v66 count:1];
    goto LABEL_73;
  }

  if (destinationType >= 2)
  {
    if (destinationType != 2)
    {
      goto LABEL_74;
    }

    v48 = IntentHandlerDefaultLog();
    if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_DEFAULT, "Resolution for emergency destination", buf, 2u);
    }

    contacts2 = [callCopy contacts];
    firstObject2 = [contacts2 firstObject];
    personHandle = [firstObject2 personHandle];
    value = [personHandle value];
    v53 = [value length];

    v54 = IntentHandlerDefaultLog();
    v55 = os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT);
    if (v53)
    {
      v77 = completionCopy;
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
      contacts3 = [callCopy contacts];
      v58 = [contacts3 countByEnumeratingWithState:&v83 objects:v95 count:16];
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
              objc_enumerationMutation(contacts3);
            }

            v62 = [INPersonResolutionResult successWithResolvedPerson:*(*(&v83 + 1) + 8 * k)];
            [v56 addObject:v62];
          }

          v59 = [contacts3 countByEnumeratingWithState:&v83 objects:v95 count:16];
        }

        while (v59);
      }

      v29 = [v56 copy];
      completionCopy = v77;
      goto LABEL_74;
    }

    if (v55)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v54, OS_LOG_TYPE_DEFAULT, "Intent's contact has no display name. Looking up the list of emergency handles available on this device", buf, 2u);
    }

    resolutionResultForEmergency2 = [(StartCallIntentHandler *)self resolutionResultForEmergency];
    v96 = resolutionResultForEmergency2;
    v65 = &v96;
LABEL_68:
    v29 = [NSArray arrayWithObjects:v65 count:1];

    goto LABEL_74;
  }

  v29 = [(StartCallIntentHandler *)self personResolutionResultsForIntent:callCopy];
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

  completionCopy[2](completionCopy, v29);
LABEL_80:
}

- (void)resolveCallCapabilityForStartCall:(id)call withCompletion:(id)completion
{
  callCopy = call;
  completionCopy = completion;
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
    v19 = callCopy;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Resolving call capability for start call intent: %@", &v18, 0xCu);
  }

  v13 = [(StartCallIntentHandler *)self recentCallRecordToRedialForIntent:callCopy];
  v14 = -[StartCallIntentHandler resolutionResultForCallCapability:idiom:withDisplayDisabled:](self, "resolutionResultForCallCapability:idiom:withDisplayDisabled:", -[StartCallIntentHandler inferCallCapabilityForPreferredCallProvider:recentCall:initialCallCapability:idiom:isDisplayDisabled:executionContext:](self, "inferCallCapabilityForPreferredCallProvider:recentCall:initialCallCapability:idiom:isDisplayDisabled:executionContext:", [callCopy preferredCallProvider], v13, objc_msgSend(callCopy, "callCapability"), objc_msgSend(callCopy, "_idiom"), objc_msgSend(callCopy, "_isPrimaryDisplayDisabled"), objc_msgSend(callCopy, "_executionContext")), objc_msgSend(callCopy, "_idiom"), objc_msgSend(callCopy, "_isPrimaryDisplayDisabled"));
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

  completionCopy[2](completionCopy, v14);
}

- (int64_t)callCapabilityFromRecentCall:(id)call
{
  callCopy = call;
  v4 = callCopy;
  if (!callCopy)
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

  mediaType = [callCopy mediaType];
  if (!mediaType)
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

  if (mediaType == 2)
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
    if (mediaType != 1)
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

- (BOOL)shouldForceAudioOnlyWithIdiom:(int64_t)idiom withDisplayDisabled:(BOOL)disabled
{
  v4 = __stack_chk_guard;
  if (idiom <= 7)
  {
    disabledCopy = disabled;
    if (((1 << idiom) & 0x47) == 0)
    {
      if (((1 << idiom) & 0x38) != 0)
      {
        v11 = IntentHandlerDefaultLog();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          v18 = 134217984;
          idiomCopy2 = idiom;
          v12 = "deviceIdiom %ld is an audio only device idiom.";
          v13 = v11;
          v14 = 12;
LABEL_15:
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, v12, &v18, v14);
          goto LABEL_16;
        }

        goto LABEL_16;
      }

      dataSource = [(StartCallIntentHandler *)self dataSource];
      hasCamera = [dataSource hasCamera];

      if ((hasCamera & 1) == 0)
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
      idiomCopy2 = idiom;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "deviceIdiom %ld supports video calling.", &v18, 0xCu);
    }

    dataSource2 = [(StartCallIntentHandler *)self dataSource];
    supportsFaceTimeVideoCalls = [dataSource2 supportsFaceTimeVideoCalls];

    if (supportsFaceTimeVideoCalls)
    {
      if (!disabledCopy)
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

- (BOOL)isGFTDisabledForChinaSKU:(id)u
{
  uCopy = u;
  if (-[StartCallIntentHandler isChinaSKUDevice](self, "isChinaSKUDevice") && ([uCopy isGroupCall], v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "BOOLValue"), v5, v6))
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

- (void)resolveFaceTimeLinkForStartCall:(id)call withCompletion:(id)completion
{
  callCopy = call;
  completionCopy = completion;
  v8 = IntentHandlerDefaultLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v42 = callCopy;
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
  v13 = completionCopy;
  v39 = v13;
  v14 = objc_retainBlock(&v35);
  if ([callCopy preferredCallProvider] == 2)
  {
    if ([(StartCallIntentHandler *)self isFaceTimeInvitationEnabled])
    {
      contacts = [callCopy contacts];
      v16 = [contacts count];

      if (v16)
      {
        v17 = +[NSMutableSet set];
        v18 = +[NSMutableSet set];
        [(StartCallIntentHandler *)self extractHandlesFromIntent:callCopy faceTimeMemberHandles:v17 nonFaceTimeMemberHandles:v18];
        if ([v18 count])
        {
          _idiom = [callCopy _idiom];
          if ([callCopy _idiom] != 4)
          {
            _idiom2 = [callCopy _idiom];
            if (_idiom != 3 && _idiom2 != 6)
            {
              faceTimeUtilities = [(StartCallIntentHandler *)self faceTimeUtilities];
              v27 = [faceTimeUtilities generateFaceTimeLink:v17];

              if (v27 && ([v27 URL], v28 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v28, "absoluteString"), v29 = objc_claimAutoreleasedReturnValue(), v30 = objc_msgSend(v29, "length"), v29, v28, v30))
              {
                v31 = [v27 URL];
                absoluteString = [v31 absoluteString];
                v23 = [INStringResolutionResult successWithResolvedString:absoluteString];
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

- (void)resolvePreferredCallProviderForStartCall:(id)call withCompletion:(id)completion
{
  callCopy = call;
  completionCopy = completion;
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
    v64 = callCopy;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Resolving call provider for start call intent: %@", buf, 0xCu);
  }

  preferredCallProvider = [callCopy preferredCallProvider];
  if (preferredCallProvider)
  {
    v16 = 0;
LABEL_8:
    if (preferredCallProvider == 3)
    {
      v36 = 3;
      goto LABEL_52;
    }

    if (preferredCallProvider != 2)
    {
      if (preferredCallProvider == 1)
      {
        v61 = v16;
        v62 = v9 - 1;
        v17 = v9;
        globalEmergencyNumbers = [(StartCallIntentHandler *)self globalEmergencyNumbers];
        contacts = [callCopy contacts];
        firstObject = [contacts firstObject];
        personHandle = [firstObject personHandle];
        value = [personHandle value];
        v23 = ([globalEmergencyNumbers containsObject:value] & 1) != 0 || objc_msgSend(callCopy, "destinationType") == 2;

        _idiom = [callCopy _idiom];
        dataSource = [(StartCallIntentHandler *)self dataSource];
        supportsTelephonyCalls = [dataSource supportsTelephonyCalls];

        if ((v23 & 1) != 0 || _idiom == 3)
        {
          v9 = v17;
          v16 = v61;
          v12 = v62;
          v14 = &off_100038000;
          if ((supportsTelephonyCalls & 1) == 0)
          {
            v43 = IntentHandlerDefaultLog();
            if (os_log_type_enabled(v43, OS_LOG_TYPE_DEBUG))
            {
              sub_100030570(_idiom == 3, v23, v43);
            }
          }
        }

        else
        {
          v9 = v17;
          v16 = v61;
          v12 = v62;
          v14 = &off_100038000;
          if ((supportsTelephonyCalls & 1) == 0)
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

    v28 = -[StartCallIntentHandler inferCallCapabilityForPreferredCallProvider:recentCall:initialCallCapability:idiom:isDisplayDisabled:executionContext:](self, "inferCallCapabilityForPreferredCallProvider:recentCall:initialCallCapability:idiom:isDisplayDisabled:executionContext:", 2, v16, [callCopy callCapability], objc_msgSend(callCopy, "_idiom"), objc_msgSend(callCopy, "_isPrimaryDisplayDisabled"), objc_msgSend(callCopy, "_executionContext"));
    faceTimeUtilities = [(StartCallIntentHandler *)self faceTimeUtilities];
    isFaceTimeEnabledInSettings = [faceTimeUtilities isFaceTimeEnabledInSettings];

    if ((isFaceTimeEnabledInSettings & 1) == 0)
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
      if (-[StartCallIntentHandler shouldForceAudioOnlyWithIdiom:withDisplayDisabled:](self, "shouldForceAudioOnlyWithIdiom:withDisplayDisabled:", [callCopy _idiom], objc_msgSend(callCopy, "_isPrimaryDisplayDisabled")))
      {
        dataSource2 = [(StartCallIntentHandler *)self dataSource];
        isFaceTimeVideoBlocked = [dataSource2 isFaceTimeVideoBlocked];

        if (isFaceTimeVideoBlocked)
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

        dataSource3 = [(StartCallIntentHandler *)self dataSource];
        supportsDisplayingFaceTimeVideoCalls = [dataSource3 supportsDisplayingFaceTimeVideoCalls];

        if (supportsDisplayingFaceTimeVideoCalls)
        {
          dataSource4 = [(StartCallIntentHandler *)self dataSource];
          isDirectFaceTimeVideoCallingCurrentlyAvailable = [dataSource4 isDirectFaceTimeVideoCallingCurrentlyAvailable];

          v54 = IntentHandlerDefaultLog();
          v60 = os_log_type_enabled(v54, OS_LOG_TYPE_ERROR);
          if (isDirectFaceTimeVideoCallingCurrentlyAvailable)
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

      if ([(StartCallIntentHandler *)self isGFTDisabledForChinaSKU:callCopy])
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
      dataSource5 = [(StartCallIntentHandler *)self dataSource];
      supportsFaceTimeAudioCalls = [dataSource5 supportsFaceTimeAudioCalls];

      if ((supportsFaceTimeAudioCalls & 1) == 0)
      {
        dataSource6 = [(StartCallIntentHandler *)self dataSource];
        isFaceTimeAudioBlocked = [dataSource6 isFaceTimeAudioBlocked];

        if (isFaceTimeAudioBlocked)
        {
          v35 = IntentHandlerDefaultLog();
          if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_45;
          }

          goto LABEL_46;
        }

        dataSource7 = [(StartCallIntentHandler *)self dataSource];
        supportsDisplayingFaceTimeAudioCalls = [dataSource7 supportsDisplayingFaceTimeAudioCalls];

        if (supportsDisplayingFaceTimeAudioCalls)
        {
          dataSource8 = [(StartCallIntentHandler *)self dataSource];
          isDirectFaceTimeAudioCallingCurrentlyAvailable = [dataSource8 isDirectFaceTimeAudioCallingCurrentlyAvailable];

          v54 = IntentHandlerDefaultLog();
          v55 = os_log_type_enabled(v54, OS_LOG_TYPE_ERROR);
          if (isDirectFaceTimeAudioCallingCurrentlyAvailable)
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

  v24 = [(StartCallIntentHandler *)self recentCallRecordToRedialForIntent:callCopy];
  v16 = v24;
  if (!v24)
  {
    goto LABEL_18;
  }

  preferredCallProvider = [v24 preferredCallProvider];
  if (preferredCallProvider)
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

  completionCopy[2](completionCopy, v26);
}

- (id)recentCallRecordToRedialForIntent:(id)intent
{
  intentCopy = intent;
  if ([intentCopy destinationType] == 4 || objc_msgSend(intentCopy, "destinationType") == 5)
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

    callRecordToCallBack = [intentCopy callRecordToCallBack];

    if (callRecordToCallBack)
    {
      v12 = IntentHandlerDefaultLog();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        sub_1000306C8();
      }

      callRecordToCallBack2 = [intentCopy callRecordToCallBack];
    }

    else
    {
      callRecordFilter = [intentCopy callRecordFilter];

      v15 = IntentHandlerDefaultLog();
      v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG);
      if (callRecordFilter)
      {
        selfCopy = self;
        v36 = v6 - 1;
        v37 = v6;
        if (v16)
        {
          sub_1000306FC();
        }

        v17 = [RecentCallQuery alloc];
        callRecordFilter2 = [intentCopy callRecordFilter];
        participants = [callRecordFilter2 participants];
        destinationType = [intentCopy destinationType];
        callRecordFilter3 = [intentCopy callRecordFilter];
        callTypes = [callRecordFilter3 callTypes];
        callRecordFilter4 = [intentCopy callRecordFilter];
        callCapability = [callRecordFilter4 callCapability];
        callRecordFilter5 = [intentCopy callRecordFilter];
        v26 = -[RecentCallQuery initWithParticipants:destinationType:callTypes:callCapability:preferredCallProvider:includeThirdPartyCalls:](v17, "initWithParticipants:destinationType:callTypes:callCapability:preferredCallProvider:includeThirdPartyCalls:", participants, destinationType, callTypes, callCapability, [callRecordFilter5 preferredCallProvider], 1);

        v27 = [(StartCallIntentHandler *)selfCopy recentCallToRedialForQuery:v26];
        if (v27)
        {
          callRecordToCallBack2 = [(StartCallIntentHandler *)selfCopy callRecordForRecentCall:v27];
        }

        else
        {
          callRecordToCallBack2 = 0;
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
        [intentCopy recordTypeForRedialing];
        INCallRecordTypeGetBackingType();
        INCallRecordTypeOptionsAddBackingType();
        v28 = [RecentCallQuery alloc];
        contacts = [intentCopy contacts];
        v30 = -[RecentCallQuery initWithParticipants:destinationType:callTypes:callCapability:preferredCallProvider:](v28, "initWithParticipants:destinationType:callTypes:callCapability:preferredCallProvider:", contacts, [intentCopy destinationType], 0, objc_msgSend(intentCopy, "callCapability"), objc_msgSend(intentCopy, "preferredCallProvider"));

        v31 = [(StartCallIntentHandler *)self recentCallToRedialForQuery:v30];
        if (v31)
        {
          callRecordToCallBack2 = [(StartCallIntentHandler *)self callRecordForRecentCall:v31];
        }

        else
        {
          callRecordToCallBack2 = 0;
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
    callRecordToCallBack2 = 0;
  }

  return callRecordToCallBack2;
}

- (id)callRecordForRecentCall:(id)call
{
  callCopy = call;
  v5 = +[CallRecordConverter sharedInstance];
  v18 = callCopy;
  v6 = [NSArray arrayWithObjects:&v18 count:1];

  dataSource = [(StartCallIntentHandler *)self dataSource];
  contactsDataSource = [dataSource contactsDataSource];
  dataSource2 = [(StartCallIntentHandler *)self dataSource];
  providerManager = [dataSource2 providerManager];
  dataSource3 = [(StartCallIntentHandler *)self dataSource];
  coreTelephonyDataSource = [dataSource3 coreTelephonyDataSource];
  allRelevantISOCountryCodes = [coreTelephonyDataSource allRelevantISOCountryCodes];
  v14 = [v5 callRecordsForRecentCalls:v6 withContactsDataSource:contactsDataSource withCallProviderManager:providerManager withCurrentISOCountryCodes:allRelevantISOCountryCodes];

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

- (id)recentCallToRedialForQuery:(id)query
{
  queryCopy = query;
  dataSource = [(StartCallIntentHandler *)self dataSource];
  contactsDataSource = [dataSource contactsDataSource];
  identifierToContactCache = [(StartCallIntentHandler *)self identifierToContactCache];
  dataSource2 = [(StartCallIntentHandler *)self dataSource];
  coreTelephonyDataSource = [dataSource2 coreTelephonyDataSource];
  v10 = [queryCopy predicateForRecentCallWithContactsDataSource:contactsDataSource contactIdentifierCache:identifierToContactCache coreTelephonyDataSource:coreTelephonyDataSource];

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

  dataSource3 = [(StartCallIntentHandler *)self dataSource];
  callHistoryDataSource = [dataSource3 callHistoryDataSource];
  v18 = [callHistoryDataSource callsWithPredicate:v10 limit:1 offset:0 batchSize:1];
  firstObject = [v18 firstObject];

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

  return firstObject;
}

- (id)emergencyTypeToString:(int64_t)string
{
  if (string > 2)
  {
    return @"Unset";
  }

  else
  {
    return off_10004D110[string];
  }
}

- (BOOL)intentHasUnresolvedLocalEmergencyContact:(id)contact
{
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  contacts = [contact contacts];
  v5 = [contacts countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(contacts);
        }

        if ([(StartCallIntentHandler *)self isUnresolvedLocalEmergencyContact:*(*(&v11 + 1) + 8 * i)])
        {
          v9 = 1;
          goto LABEL_11;
        }
      }

      v6 = [contacts countByEnumeratingWithState:&v11 objects:v15 count:16];
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

- (BOOL)isUnresolvedLocalEmergencyContact:(id)contact
{
  contactCopy = contact;
  personHandle = [contactCopy personHandle];
  if ([personHandle emergencyType] == 1)
  {
    personHandle2 = [contactCopy personHandle];
    value = [personHandle2 value];
    v7 = [value length] == 0;
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

- (id)personResolutionResultsForIntent:(id)intent
{
  intentCopy = intent;
  contacts = [intentCopy contacts];
  callGroups = [intentCopy callGroups];
  v7 = [callGroups count];

  if (v7)
  {
    v8 = [(StartCallIntentHandler *)self resolveContactsFromCallGroups:intentCopy];

    contacts = v8;
  }

  v220 = contacts;
  if ([contacts count])
  {
    v9 = objc_alloc_init(NSMutableArray);
    v265 = 0u;
    v266 = 0u;
    v267 = 0u;
    v268 = 0u;
    v10 = contacts;
    v11 = [v10 countByEnumeratingWithState:&v265 objects:v287 count:16];
    v237 = intentCopy;
    v231 = v10;
    if (!v11)
    {
      goto LABEL_210;
    }

    v12 = v11;
    v236 = *v266;
    v222 = _INStartCallContactUnsupportedReasonForeignEmergencyDisambiguation;
    v225 = v9;
    selfCopy = self;
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
        personHandle = [v14 personHandle];
        value = [personHandle value];

        if ([v10 count] < 2 || objc_msgSend(intentCopy, "preferredCallProvider") == 2)
        {
          personHandle2 = [v14 personHandle];
          emergencyType = [personHandle2 emergencyType];

          if (emergencyType == 1)
          {
            v19 = IntentHandlerDefaultLog();
            if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
            {
              personHandle3 = [v14 personHandle];
              [v14 personHandle];
              v229 = v14;
              v21 = intentCopy;
              v23 = v22 = v13;
              -[StartCallIntentHandler emergencyTypeToString:](self, "emergencyTypeToString:", [v23 emergencyType]);
              v24 = v10;
              selfCopy2 = self;
              v26 = v9;
              v28 = v27 = value;
              *buf = 138412546;
              v273 = personHandle3;
              v274 = 2112;
              v275 = v28;
              _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Handle has the LocalEmergency flag. Resolving success. %@ with type: %@", buf, 0x16u);

              v13 = v22;
              intentCopy = v21;
              v14 = v229;

              value = v27;
              v9 = v26;
              self = selfCopy2;
              v10 = v24;
            }

            v29 = [INStartCallContactResolutionResult successWithResolvedPerson:v14];
            [v9 addObject:v29];
            v12 = v234;
          }

          else
          {
            v235 = v13;
            if (![value length])
            {
              featureFlags = [(StartCallIntentHandler *)self featureFlags];
              if ([featureFlags crrFullRecommendation])
              {
                scoredAlternatives = [v14 scoredAlternatives];

                if (scoredAlternatives)
                {
                  v29 = [(StartCallIntentHandler *)self relayCRRRecommendationForPerson:v14 intent:intentCopy];
                  [v9 addObject:v29];
                  v12 = v234;
                  goto LABEL_208;
                }
              }

              else
              {
              }

              v233 = value;
              v46 = [ContactResolver alloc];
              dataSource = [(StartCallIntentHandler *)self dataSource];
              contactsDataSource = [dataSource contactsDataSource];
              coreAnalyticsLogger = [(StartCallIntentHandler *)self coreAnalyticsLogger];
              v29 = [(ContactResolver *)v46 initWithDataSource:contactsDataSource logger:coreAnalyticsLogger];

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

              personHandle4 = [v14 personHandle];
              label = [personHandle4 label];

              v230 = v14;
              personHandle5 = [v14 personHandle];
              type = [personHandle5 type];

              v240 = type;
              if (!type && [intentCopy preferredCallProvider] == 1)
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

              if ([intentCopy preferredCallProvider] == 2)
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

              v238 = label;
              v227 = v29;
              v56 = objc_alloc_init(NSMutableDictionary);
              v261 = 0u;
              v262 = 0u;
              v263 = 0u;
              v264 = 0u;
              v228 = v50;
              allContacts = [v50 allContacts];
              v58 = [allContacts countByEnumeratingWithState:&v261 objects:v285 count:16];
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
                      objc_enumerationMutation(allContacts);
                    }

                    v62 = *(*(&v261 + 1) + 8 * i);
                    dataSource2 = [(StartCallIntentHandler *)selfCopy dataSource];
                    coreTelephonyDataSource = [dataSource2 coreTelephonyDataSource];
                    allRelevantISOCountryCodes = [coreTelephonyDataSource allRelevantISOCountryCodes];
                    v66 = [(StartCallIntentHandler *)selfCopy _inPersonsFromContact:v62 withRequestedType:v240 requestedLabel:v238 isoCountryCodes:allRelevantISOCountryCodes];

                    if ([v66 count])
                    {
                      [v56 setObject:v66 forKeyedSubscript:v62];
                    }
                  }

                  v59 = [allContacts countByEnumeratingWithState:&v261 objects:v285 count:16];
                }

                while (v59);
              }

              v67 = [v56 copy];
              intentCopy = v237;
              v68 = -[StartCallIntentHandler _applyImpliedFilterToPhoneNumberOnlyMatchesIfApplicableForPersonsByContact:requestedHandleType:preferredCallProvider:](selfCopy, "_applyImpliedFilterToPhoneNumberOnlyMatchesIfApplicableForPersonsByContact:requestedHandleType:preferredCallProvider:", v67, v240, [v237 preferredCallProvider]);

              v50 = v228;
              v223 = [[ContactSlotResolutionHelper alloc] initWithUnresolvedPerson:v230 availableContacts:v228];
              v69 = objc_alloc_init(NSSet);
              extractRecommendation = [v230 extractRecommendation];
              v224 = extractRecommendation;
              if ([extractRecommendation contactsAvailableInPool:v228])
              {
                dataSource3 = [(StartCallIntentHandler *)selfCopy dataSource];
                expectUpstreamContactRecommendation = [dataSource3 expectUpstreamContactRecommendation];

                if (expectUpstreamContactRecommendation)
                {
                  v73 = IntentHandlerDefaultLog();
                  v13 = v235;
                  if (os_log_type_enabled(v73, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 0;
                    _os_log_impl(&_mh_execute_header, v73, OS_LOG_TYPE_DEFAULT, "Native flow contact resolver enabled.", buf, 2u);
                  }

                  type2 = [extractRecommendation type];
                  allKeys = 0;
                  if (type2 <= 1)
                  {
                    v29 = v227;
                    if (type2)
                    {
                      if (type2 == 1)
                      {
                        contactIdentifiers = [extractRecommendation contactIdentifiers];
                        firstObject = [contactIdentifiers firstObject];
                        v78 = [v228 contactWithId:firstObject];
                        v284 = v78;
                        allKeys = [NSArray arrayWithObjects:&v284 count:1];

                        firstObject3 = IntentHandlerDefaultLog();
                        if (os_log_type_enabled(firstObject3, OS_LOG_TYPE_DEFAULT))
                        {
                          contactIdentifiers2 = [extractRecommendation contactIdentifiers];
                          firstObject2 = [contactIdentifiers2 firstObject];
                          *buf = 138412290;
                          v273 = firstObject2;
                          _os_log_impl(&_mh_execute_header, firstObject3, OS_LOG_TYPE_DEFAULT, "Confident match found by NCR, uuid %@", buf, 0xCu);
                        }

                        goto LABEL_68;
                      }

LABEL_206:

                      v9 = v225;
                      v10 = v231;
                      v120 = v238;
                      self = selfCopy;
                      v12 = v234;
LABEL_207:

                      value = v233;
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
                    allKeys = 0;
LABEL_204:

LABEL_205:
                    v13 = v235;
                    goto LABEL_206;
                  }

                  v29 = v227;
                  if (type2 == 2)
                  {
                    contactIdentifiers3 = [extractRecommendation contactIdentifiers];
                    firstObject3 = [contactIdentifiers3 firstObject];

                    v170 = [v228 contactWithId:firstObject3];
                    v283 = v170;
                    allKeys = [NSArray arrayWithObjects:&v283 count:1];

                    v171 = [NSSet setWithObject:firstObject3];

                    v172 = IntentHandlerDefaultLog();
                    if (os_log_type_enabled(v172, OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 138412290;
                      v273 = firstObject3;
                      _os_log_impl(&_mh_execute_header, v172, OS_LOG_TYPE_DEFAULT, "Low-confidence (needsConfirmation) match found by NCR, uuid %@", buf, 0xCu);
                    }

                    v69 = v171;
                    intentCopy = v237;
                  }

                  else
                  {
                    if (type2 != 3)
                    {
                      goto LABEL_206;
                    }

                    contactIdentifiers4 = [extractRecommendation contactIdentifiers];
                    firstObject3 = [v228 contactsWithIds:contactIdentifiers4];

                    if ([(StartCallIntentHandler *)selfCopy anyContactsHaveSameName:firstObject3])
                    {
                      v135 = IntentHandlerDefaultLog();
                      if (os_log_type_enabled(v135, OS_LOG_TYPE_DEFAULT))
                      {
                        *buf = 0;
                        _os_log_impl(&_mh_execute_header, v135, OS_LOG_TYPE_DEFAULT, "NCR recommended needsDisambiguation for contacts, but some have the same name. Proceeding to handle disambiguation.", buf, 2u);
                      }

                      firstObject3 = firstObject3;
                      allKeys = firstObject3;
                    }

                    else
                    {
                      contactIdentifiers5 = [extractRecommendation contactIdentifiers];
                      v177 = [(ContactSlotResolutionHelper *)v223 buildDisambiguationResultForContacts:contactIdentifiers5];

                      [(StartCallIntentHandler *)selfCopy parseEmergencyContacts:v231 usingExistingResult:v177];
                      featureFlags2 = [(StartCallIntentHandler *)selfCopy featureFlags];
                      crrHandleRecommendation = [featureFlags2 crrHandleRecommendation];

                      if (crrHandleRecommendation)
                      {
                        siriMatches = [v230 siriMatches];
                        v181 = [INStartCallContactResolutionResult disambiguationWithPeopleToDisambiguate:siriMatches];

                        v177 = v181;
                      }

                      [v225 addObject:v177];
                      v182 = IntentHandlerDefaultLog();
                      if (os_log_type_enabled(v182, OS_LOG_TYPE_DEFAULT))
                      {
                        *buf = 138412290;
                        v273 = firstObject3;
                        _os_log_impl(&_mh_execute_header, v182, OS_LOG_TYPE_DEFAULT, "needsDisambiguation recommended by NCR, uuids %@", buf, 0xCu);
                      }

                      allKeys = 0;
                    }
                  }

LABEL_68:

                  if (!allKeys || ![allKeys count])
                  {
                    goto LABEL_205;
                  }

                  v83 = objc_alloc_init(NSMutableArray);
                  v253 = 0u;
                  v254 = 0u;
                  v255 = 0u;
                  v256 = 0u;
                  allKeys = allKeys;
                  v84 = [allKeys countByEnumeratingWithState:&v253 objects:v280 count:16];
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
                          objc_enumerationMutation(allKeys);
                        }

                        v88 = [v68 objectForKeyedSubscript:*(*(&v253 + 1) + 8 * j)];
                        [v83 addObjectsFromArray:v88];
                      }

                      v85 = [allKeys countByEnumeratingWithState:&v253 objects:v280 count:16];
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
                      v92 = [allKeys count];
                      v93 = [v90 count];
                      *buf = 134218754;
                      v273 = v92;
                      v274 = 2048;
                      v275 = v93;
                      v276 = 2112;
                      v277 = allKeys;
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
                      personHandle6 = [v230 personHandle];
                      *buf = 138412290;
                      v273 = personHandle6;
                      _os_log_impl(&_mh_execute_header, v138, OS_LOG_TYPE_DEFAULT, "No valid matching handle is found for the resolved contacts and this handle has been requested: %@. will attempt additional matching handles from siri matches.", buf, 0xCu);
                    }

                    v90 = [(StartCallIntentHandler *)selfCopy generateAdditionalMatchingHandles:v230 resolvedContacts:allKeys requestedHandleType:v240 requestedHandleLabel:v238];

                    v140 = IntentHandlerDefaultLog();
                    if (os_log_type_enabled(v140, OS_LOG_TYPE_DEFAULT))
                    {
                      v141 = [allKeys count];
                      v142 = [v90 count];
                      *buf = 134218754;
                      v273 = v141;
                      v274 = 2048;
                      v275 = v142;
                      v276 = 2112;
                      v277 = allKeys;
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
                        firstObject4 = [v90 firstObject];
                        *buf = 138412546;
                        v273 = v238;
                        v274 = 2112;
                        v275 = firstObject4;
                        _os_log_impl(&_mh_execute_header, v143, OS_LOG_TYPE_DEFAULT, "%@ was requested but the contact doesn't an exact match. Using the only alternative instead: %@", buf, 0x16u);
                      }

                      firstObject5 = [v90 firstObject];
                      v145 = [(StartCallIntentHandler *)selfCopy resolutionResultForPersonWithResolvedHandleValue:firstObject5];
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

                    firstObject5 = objc_alloc_init(NSMutableArray);
                    v249 = 0u;
                    v250 = 0u;
                    v251 = 0u;
                    v252 = 0u;
                    v148 = allKeys;
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

                          v153 = -[StartCallIntentHandler getAlternativesForContact:forRequestedHandleType:forCallProvider:](selfCopy, "getAlternativesForContact:forRequestedHandleType:forCallProvider:", *(*(&v249 + 1) + 8 * k), v240, [v237 preferredCallProvider]);
                          [firstObject5 addObjectsFromArray:v153];
                        }

                        v150 = [v148 countByEnumeratingWithState:&v249 objects:v271 count:16];
                      }

                      while (v150);
                    }

                    v154 = [firstObject5 copy];
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
                    intentCopy = v237;
                    v29 = v227;
                    v50 = v228;
                    v69 = v221;
                    goto LABEL_203;
                  }

                  featureFlags3 = [(StartCallIntentHandler *)selfCopy featureFlags];
                  if ([featureFlags3 crrHandleRecommendation])
                  {
                    siriMatches2 = [v230 siriMatches];
                    v96 = [siriMatches2 count];

                    if (v96)
                    {
                      v97 = IntentHandlerDefaultLog();
                      if (os_log_type_enabled(v97, OS_LOG_TYPE_DEFAULT))
                      {
                        siriMatches3 = [v230 siriMatches];
                        *buf = 138412290;
                        v273 = siriMatches3;
                        _os_log_impl(&_mh_execute_header, v97, OS_LOG_TYPE_DEFAULT, "Using CRR based recommendation results: %@", buf, 0xCu);
                      }

                      siriMatches4 = [v230 siriMatches];
                      v100 = [siriMatches4 count];

                      v69 = v221;
                      if (v100 == 1)
                      {
                        siriMatches5 = [v230 siriMatches];
                        firstObject6 = [siriMatches5 firstObject];

                        v103 = IntentHandlerDefaultLog();
                        if (os_log_type_enabled(v103, OS_LOG_TYPE_DEFAULT))
                        {
                          *buf = 138412290;
                          v273 = firstObject6;
                          _os_log_impl(&_mh_execute_header, v103, OS_LOG_TYPE_DEFAULT, "Resolved to one CRR recommended handle: %@", buf, 0xCu);
                        }

                        firstObject7 = [allKeys firstObject];
                        firstObject5 = [(StartCallIntentHandler *)selfCopy resolutionResultForPersonWithResolvedContactName:v230 resolvedPerson:firstObject6 resolvedContact:firstObject7 contactIdentifiersRequiringConfirmation:v221];
                      }

                      else
                      {
                        v174 = IntentHandlerDefaultLog();
                        if (os_log_type_enabled(v174, OS_LOG_TYPE_DEFAULT))
                        {
                          siriMatches6 = [v230 siriMatches];
                          *buf = 138412290;
                          v273 = siriMatches6;
                          _os_log_impl(&_mh_execute_header, v174, OS_LOG_TYPE_DEFAULT, "Resolved to more than one CRR recommended handle: %@", buf, 0xCu);
                        }

                        firstObject6 = [v230 siriMatches];
                        firstObject5 = [INStartCallContactResolutionResult disambiguationWithPeopleToDisambiguate:firstObject6];
                      }

                      [v225 addObject:firstObject5];
                      goto LABEL_202;
                    }
                  }

                  else
                  {
                  }

                  if ([v90 count]== 1)
                  {
                    firstObject5 = [v90 firstObject];
                    v164 = IntentHandlerDefaultLog();
                    v69 = v221;
                    if (os_log_type_enabled(v164, OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 138412290;
                      v273 = firstObject5;
                      _os_log_impl(&_mh_execute_header, v164, OS_LOG_TYPE_DEFAULT, "Resolved to one handle: %@", buf, 0xCu);
                    }

                    firstObject8 = [allKeys firstObject];
                    v166 = [(StartCallIntentHandler *)selfCopy resolutionResultForPersonWithResolvedContactName:v230 resolvedPerson:firstObject5 resolvedContact:firstObject8 contactIdentifiersRequiringConfirmation:v221];

                    [v225 addObject:v166];
                    goto LABEL_202;
                  }

                  v69 = v221;
                  if ([intentCopy preferredCallProvider] == 2 || objc_msgSend(intentCopy, "callCapability") == 2)
                  {
                    if ([allKeys count]== 1)
                    {
                      firstObject9 = [allKeys firstObject];
                      goto LABEL_179;
                    }

                    if ([StartCallIntentHandlerUtilities contactsShareHandleValue:allKeys])
                    {
                      v183 = IntentHandlerDefaultLog();
                      if (os_log_type_enabled(v183, OS_LOG_TYPE_DEFAULT))
                      {
                        *buf = 138412290;
                        v273 = allKeys;
                        _os_log_impl(&_mh_execute_header, v183, OS_LOG_TYPE_DEFAULT, "Resolved contacts all share a handle: treating them as the same person. Contacts: %@", buf, 0xCu);
                      }

                      firstObject9 = [StartCallIntentHandlerUtilities contactWithMostHandles:allKeys];
LABEL_179:
                      firstObject5 = firstObject9;
                      if (firstObject9)
                      {
                        if (-[StartCallIntentHandler requireScoreBasedResolutionForGFT:numberOfContactsCount:](selfCopy, "requireScoreBasedResolutionForGFT:numberOfContactsCount:", -[NSObject count](v90, "count"), [v231 count]) || (-[StartCallIntentHandler featureFlags](selfCopy, "featureFlags"), v184 = objc_claimAutoreleasedReturnValue(), v185 = objc_msgSend(v184, "faceTimeNoFanOutEnabled"), v184, v185))
                        {
                          v186 = IntentHandlerDefaultLog();
                          if (os_log_type_enabled(v186, OS_LOG_TYPE_DEFAULT))
                          {
                            *buf = 138412290;
                            v273 = v90;
                            _os_log_impl(&_mh_execute_header, v186, OS_LOG_TYPE_DEFAULT, "Facetime call contact resolved to multiple handles. Using score based resolution model to resolve handles: %@", buf, 0xCu);
                          }

                          v69 = v221;
                          v187 = [(StartCallIntentHandler *)selfCopy resolvePreferredHandleFromHandles:v90 contactIdentifiersRequiringConfirmation:v221 telephonyOnly:0];
                          [v225 addObject:v187];
                        }

                        else
                        {
                          v193 = [StartCallIntentHandlerUtilities inPersonFromContact:firstObject5 handleValue:0 handleType:v240 handleLabel:v238];
                          v194 = IntentHandlerDefaultLog();
                          if (os_log_type_enabled(v194, OS_LOG_TYPE_DEFAULT))
                          {
                            *buf = 138412290;
                            v273 = v193;
                            _os_log_impl(&_mh_execute_header, v194, OS_LOG_TYPE_DEFAULT, "Facetime call resolved to multiple handles for a distinct person, preserving ambiguity. Will ring all handles. Person: %@", buf, 0xCu);
                          }

                          v69 = v221;
                          v195 = [(StartCallIntentHandler *)selfCopy resolutionResultForPersonWithResolvedContactName:v230 resolvedPerson:v193 resolvedContact:firstObject5 contactIdentifiersRequiringConfirmation:v221];
                          [v225 addObject:v195];

                          intentCopy = v237;
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

                    v189 = [(StartCallIntentHandler *)selfCopy resolvePreferredHandleFromHandles:v90 contactIdentifiersRequiringConfirmation:v221 telephonyOnly:1];
                  }

                  firstObject5 = v189;
                  [v225 addObject:v189];
                  goto LABEL_203;
                }
              }

              if ([v68 count] == 1)
              {
                allKeys = [v68 allKeys];
                firstObject3 = IntentHandlerDefaultLog();
                if (os_log_type_enabled(firstObject3, OS_LOG_TYPE_DEFAULT))
                {
                  firstObject10 = [allKeys firstObject];
                  *buf = 138412290;
                  v273 = firstObject10;
                  _os_log_impl(&_mh_execute_header, firstObject3, OS_LOG_TYPE_DEFAULT, "Only one matching contact for requested handle -- proceeding to handle disambiguation: %@", buf, 0xCu);
                }

                v29 = v227;
                goto LABEL_68;
              }

              if ([v228 count] == 1)
              {
                allKeys = [v228 allContacts];
                firstObject3 = IntentHandlerDefaultLog();
                v29 = v227;
                if (os_log_type_enabled(firstObject3, OS_LOG_TYPE_DEFAULT))
                {
                  firstObject11 = [allKeys firstObject];
                  *buf = 138412290;
                  v273 = firstObject11;
                  _os_log_impl(&_mh_execute_header, firstObject3, OS_LOG_TYPE_DEFAULT, "Only one matching contact (regardless of requested handle): %@", buf, 0xCu);
                }

                goto LABEL_68;
              }

              dataSource4 = [(StartCallIntentHandler *)selfCopy dataSource];
              useLegacyContactResolution = [dataSource4 useLegacyContactResolution];

              if (useLegacyContactResolution)
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
                allContacts2 = [v228 allContacts];
                v126 = [allContacts2 countByEnumeratingWithState:&v257 objects:v282 count:16];
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
                        objc_enumerationMutation(allContacts2);
                      }

                      v130 = [StartCallIntentHandlerUtilities inPersonFromContact:*(*(&v257 + 1) + 8 * m) handleValue:0 handleType:v240 handleLabel:v238];
                      [v83 addObject:v130];
                    }

                    v127 = [allContacts2 countByEnumeratingWithState:&v257 objects:v282 count:16];
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

                allKeys = 0;
                v29 = v227;
                goto LABEL_204;
              }

              allContacts3 = [v228 allContacts];
              firstObject3 = [(StartCallIntentHandler *)selfCopy resolvePreferredContactFromContacts:allContacts3];

              resolutionResultType = [firstObject3 resolutionResultType];
              resolvedEntities = [firstObject3 resolvedEntities];
              v161 = resolvedEntities;
              allKeys = 0;
              v29 = v227;
              if (resolutionResultType <= 1)
              {
                if (resolutionResultType)
                {
                  if (resolutionResultType == 1)
                  {
                    firstObject12 = [resolvedEntities firstObject];
                    v163 = [v228 contactWithId:firstObject12];
                    v281 = v163;
                    allKeys = [NSArray arrayWithObjects:&v281 count:1];

                    goto LABEL_197;
                  }

LABEL_198:

                  goto LABEL_68;
                }

                firstObject12 = [NSException exceptionWithName:NSInternalInconsistencyException reason:@"Unexpected score based contact resolution result type." userInfo:0];
                [firstObject12 raise];
LABEL_196:
                allKeys = 0;
LABEL_197:

                goto LABEL_198;
              }

              if (resolutionResultType == 2)
              {
                firstObject12 = [resolvedEntities firstObject];
                v190 = [(ContactSlotResolutionHelper *)v223 buildConfirmationResultForContact:firstObject12 withReason:3];
              }

              else
              {
                if (resolutionResultType != 3)
                {
                  goto LABEL_198;
                }

                firstObject12 = [v228 contactsWithIds:resolvedEntities];
                if ([(StartCallIntentHandler *)selfCopy anyContactsHaveSameName:firstObject12])
                {
                  v173 = IntentHandlerDefaultLog();
                  if (os_log_type_enabled(v173, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 0;
                    _os_log_impl(&_mh_execute_header, v173, OS_LOG_TYPE_DEFAULT, "ScoreBasedResolutionResult is Disambiguate, but some contacts have the same name. Proceeding to handle disambiguation.", buf, 2u);
                  }

                  firstObject12 = firstObject12;
                  allKeys = firstObject12;
                  goto LABEL_197;
                }

                v190 = [(ContactSlotResolutionHelper *)v223 buildDisambiguationResultForContacts:v161];
              }

              v192 = v190;
              [v225 addObject:v190];

              goto LABEL_196;
            }

            v232 = value;
            globalEmergencyNumbers = [(StartCallIntentHandler *)self globalEmergencyNumbers];
            personHandle7 = [v14 personHandle];
            value2 = [personHandle7 value];
            v33 = [globalEmergencyNumbers containsObject:value2];

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
              personHandle8 = [v14 personHandle];
              personHandle9 = [v14 personHandle];
              v38 = -[StartCallIntentHandler emergencyTypeToString:](self, "emergencyTypeToString:", [personHandle9 emergencyType]);
              *buf = 138412546;
              v273 = personHandle8;
              v274 = 2112;
              v275 = v38;
              _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "Handle %@ is in the global emergency numbers list. EmergencyType is %@", buf, 0x16u);
            }

            personHandle10 = [v14 personHandle];
            emergencyType2 = [personHandle10 emergencyType];

            v41 = IntentHandlerDefaultLog();
            v42 = os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT);
            v13 = v235;
            if (emergencyType2)
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
              value = v232;
              v12 = v234;
              goto LABEL_208;
            }

            if (v42)
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "It's unclear if the user literally wanted this number, or if they meant to call emergency services. Disambiguate between local and nonlocal emergency services.", buf, 2u);
            }

            v106 = [INPersonHandle alloc];
            personHandle11 = [v14 personHandle];
            value3 = [personHandle11 value];
            personHandle12 = [v14 personHandle];
            type3 = [personHandle12 type];
            personHandle13 = [v14 personHandle];
            label2 = [personHandle13 label];
            v29 = [v106 initWithValue:value3 type:type3 label:label2 emergencyType:2];

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
            value = v232;
            self = selfCopy;
            v12 = v234;
            v13 = v235;
            intentCopy = v237;
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
        contacts2 = [intentCopy contacts];
        v198 = [contacts2 count];

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

              resolvedValue = [v231 objectAtIndexedSubscript:v203];
            }

            else
            {
              resolvedValue = [v206 resolvedValue];
            }

            v208 = resolvedValue;
            [v199 addObject:resolvedValue];

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

            [intentCopy setValue:v199 forKey:@"contacts"];
            v243 = 0u;
            v244 = 0u;
            v241 = 0u;
            v242 = 0u;
            contacts3 = [intentCopy contacts];
            v210 = [contacts3 countByEnumeratingWithState:&v241 objects:v269 count:16];
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
                    objc_enumerationMutation(contacts3);
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

                v211 = [contacts3 countByEnumeratingWithState:&v241 objects:v269 count:16];
              }

              while (v211);
            }

            intentCopy = v237;
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

- (id)relayCRRRecommendationForPerson:(id)person intent:(id)intent
{
  personCopy = person;
  intentCopy = intent;
  v8 = IntentHandlerDefaultLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "relaying CRR recommendations", buf, 2u);
  }

  scoredAlternatives = [personCopy scoredAlternatives];
  if ([scoredAlternatives count])
  {
    if ([scoredAlternatives count] != 1)
    {
      v22 = IntentHandlerDefaultLog();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        v23 = [scoredAlternatives count];
        *buf = 134217984;
        v56 = v23;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Found %ld candidates; returning disambiguate", buf, 0xCu);
      }

      v54[0] = _NSConcreteStackBlock;
      v54[1] = 3221225472;
      v54[2] = sub_100018DB8;
      v54[3] = &unk_10004CFC0;
      v54[4] = self;
      person = [scoredAlternatives tu_mapObjectsUsingBlock:v54];
      v24 = [INStartCallContactResolutionResult disambiguationWithPeopleToDisambiguate:person];
      goto LABEL_44;
    }

    v10 = [scoredAlternatives objectAtIndexedSubscript:0];
    person = [v10 person];

    v12 = [scoredAlternatives objectAtIndexedSubscript:0];
    recommendation = [v12 recommendation];

    personHandle = [person personHandle];
    value = [personHandle value];

    if (value)
    {
      personHandle2 = [person personHandle];
      type = [personHandle2 type];

      personHandle3 = [person personHandle];
      v19 = [personHandle3 type] == 1 && objc_msgSend(intentCopy, "preferredCallProvider") == 2;

      if (type == 2 || v19)
      {
        dataSource = [(StartCallIntentHandler *)self dataSource];
        coreTelephonyDataSource = [dataSource coreTelephonyDataSource];
        allRelevantISOCountryCodes = [coreTelephonyDataSource allRelevantISOCountryCodes];
        v39 = [person tu_personWithFormattedHandleForISOCountryCodes:allRelevantISOCountryCodes];

        dataSource2 = [(StartCallIntentHandler *)self dataSource];
        personHandle4 = [v39 personHandle];
        value2 = [personHandle4 value];
        LODWORD(coreTelephonyDataSource) = [dataSource2 isMMIOrUSSDNumber:value2];

        if (coreTelephonyDataSource)
        {
          v43 = IntentHandlerDefaultLog();
          if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
          {
            personHandle5 = [v39 personHandle];
            value3 = [personHandle5 value];
            *buf = 138412290;
            v56 = value3;
            _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEFAULT, "Found 1 candidate with unsupported MMI or USSD handle %@", buf, 0xCu);
          }

          v46 = [INStartCallContactResolutionResult unsupportedForReason:5];
        }

        else
        {
          v51 = IntentHandlerDefaultLog();
          v52 = os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT);
          if (recommendation)
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
        person = v39;
        goto LABEL_45;
      }

      v34 = IntentHandlerDefaultLog();
      if (!os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_43;
      }

      *buf = 138412290;
      v56 = person;
      v35 = "Found 1 candidate with an invalid handle type; returning unsupported. Person: %@";
      goto LABEL_42;
    }

    personHandle6 = [personCopy personHandle];

    if (!personHandle6)
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
      v56 = person;
      v35 = "Found 1 candidate with a no handle; returning unsupported. Person: %@";
LABEL_42:
      _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, v35, buf, 0xCu);
      goto LABEL_43;
    }

    dataSource3 = [(StartCallIntentHandler *)self dataSource];
    contactsDataSource = [dataSource3 contactsDataSource];
    contactIdentifier = [person contactIdentifier];
    v29 = +[ContactResolver keysToFetch];
    v30 = [contactsDataSource contactForIdentifier:contactIdentifier keysToFetch:v29];

    personHandle7 = [personCopy personHandle];
    type2 = [personHandle7 type];

    if (type2 || [intentCopy preferredCallProvider] != 1)
    {
      if ([intentCopy preferredCallProvider] != 2)
      {
LABEL_33:
        v47 = -[StartCallIntentHandler getAlternativesForContact:forRequestedHandleType:forCallProvider:](self, "getAlternativesForContact:forRequestedHandleType:forCallProvider:", v30, type2, [intentCopy preferredCallProvider]);
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

      type2 = 0;
    }

    else
    {
      v33 = IntentHandlerDefaultLog();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        type2 = 2;
        _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "Requested handle type is unknown, but preferredCallProvider is phone. Inferring handle type of phone number.", buf, 2u);
      }

      else
      {
        type2 = 2;
      }
    }

    goto LABEL_33;
  }

  v20 = IntentHandlerDefaultLog();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v56 = personCopy;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "No candidates from CRR. Returning unsupported. Person: %@", buf, 0xCu);
  }

  v21 = [INStartCallContactResolutionResult unsupportedForReason:1];
LABEL_46:

  return v21;
}

- (void)parseEmergencyContacts:(id)contacts usingExistingResult:(id)result
{
  contactsCopy = contacts;
  resultCopy = result;
  if ([contactsCopy count] == 1)
  {
    v7 = [contactsCopy objectAtIndexedSubscript:0];
    displayName = [v7 displayName];
    if ([displayName isEqualToString:@"emergency contact"])
    {
      v9 = [contactsCopy objectAtIndexedSubscript:0];
      alternatives = [v9 alternatives];
      v11 = [alternatives count];
      disambiguationItems = [resultCopy disambiguationItems];
      v13 = [disambiguationItems count];

      if (v11 == v13)
      {
        v14 = IntentHandlerDefaultLog();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          *v26 = 0;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Emergency contacts detected. Inserting personHandles.", v26, 2u);
        }

        disambiguationItems2 = [resultCopy disambiguationItems];
        v16 = [disambiguationItems2 count];

        if (v16)
        {
          v17 = 0;
          do
          {
            disambiguationItems3 = [resultCopy disambiguationItems];
            v19 = [disambiguationItems3 objectAtIndexedSubscript:v17];

            v20 = [contactsCopy objectAtIndexedSubscript:0];
            alternatives2 = [v20 alternatives];
            v22 = [alternatives2 objectAtIndexedSubscript:v17];

            personHandle = [v22 personHandle];
            [v19 setPersonHandle:personHandle];

            ++v17;
            disambiguationItems4 = [resultCopy disambiguationItems];
            v25 = [disambiguationItems4 count];
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

- (id)generateAdditionalMatchingHandles:(id)handles resolvedContacts:(id)contacts requestedHandleType:(int64_t)type requestedHandleLabel:(id)label
{
  contactsCopy = contacts;
  labelCopy = label;
  tu_matchingINPersonHandlesByContactIdentifier = [handles tu_matchingINPersonHandlesByContactIdentifier];
  v48 = objc_alloc_init(NSMutableArray);
  v42 = [INPersonHandleLabelMobile isEqualToString:labelCopy];
  v38 = labelCopy;
  v41 = [INPersonHandleLabeliPhone isEqualToString:labelCopy];
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
  obj = contactsCopy;
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
        identifier = [v49 identifier];
        v14 = [tu_matchingINPersonHandlesByContactIdentifier objectForKeyedSubscript:identifier];

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
                  label = [*(*(&v50 + 1) + 8 * j) label];

                  if (label)
                  {
                    label2 = [v20 label];
                    dataSource = [(StartCallIntentHandler *)self dataSource];
                    coreTelephonyDataSource = [dataSource coreTelephonyDataSource];
                    allRelevantISOCountryCodes = [coreTelephonyDataSource allRelevantISOCountryCodes];
                    v26 = [(StartCallIntentHandler *)self _inPersonsFromContact:v49 withRequestedType:type requestedLabel:label2 isoCountryCodes:allRelevantISOCountryCodes];

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
          dataSource2 = [(StartCallIntentHandler *)self dataSource];
          coreTelephonyDataSource2 = [dataSource2 coreTelephonyDataSource];
          allRelevantISOCountryCodes2 = [coreTelephonyDataSource2 allRelevantISOCountryCodes];
          v30 = [(StartCallIntentHandler *)self _inPersonsFromContact:v49 withRequestedType:type requestedLabel:INPersonHandleLabelMobile isoCountryCodes:allRelevantISOCountryCodes2];

          [v48 addObjectsFromArray:v30];
        }

        if (v42)
        {
          dataSource3 = [(StartCallIntentHandler *)self dataSource];
          coreTelephonyDataSource3 = [dataSource3 coreTelephonyDataSource];
          allRelevantISOCountryCodes3 = [coreTelephonyDataSource3 allRelevantISOCountryCodes];
          v34 = [(StartCallIntentHandler *)self _inPersonsFromContact:v49 withRequestedType:type requestedLabel:INPersonHandleLabeliPhone isoCountryCodes:allRelevantISOCountryCodes3];

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

- (id)resolutionResultForPersonWithResolvedHandleValue:(id)value
{
  valueCopy = value;
  personHandle = [valueCopy personHandle];
  value = [personHandle value];

  dataSource = [(StartCallIntentHandler *)self dataSource];
  v8 = [dataSource isMMIOrUSSDNumber:value];

  if (v8)
  {
    v9 = IntentHandlerDefaultLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v20 = 138412546;
      v21 = value;
      v22 = 2112;
      v23 = valueCopy;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Handle %@ is MMI or USSD which is unsupported. Returning error for person: %@", &v20, 0x16u);
    }

    v10 = [INStartCallContactResolutionResult unsupportedForReason:5];
LABEL_9:
    v14 = v10;
    goto LABEL_13;
  }

  v11 = [(StartCallIntentHandler *)self shouldRequireInvalidNumberConfirmationForRecipient:valueCopy];
  v12 = IntentHandlerDefaultLog();
  v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
  if (v11)
  {
    if (v13)
    {
      LOWORD(v20) = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "The user requested a potentially invalid phone number or email, returning confirmationRequired.", &v20, 2u);
    }

    v10 = [INStartCallContactResolutionResult confirmationRequiredWithPersonToConfirm:valueCopy forReason:1];
    goto LABEL_9;
  }

  if (v13)
  {
    LOWORD(v20) = 0;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "There is a handle on the single contact. Format the person handle and return success with that person.", &v20, 2u);
  }

  dataSource2 = [(StartCallIntentHandler *)self dataSource];
  coreTelephonyDataSource = [dataSource2 coreTelephonyDataSource];
  allRelevantISOCountryCodes = [coreTelephonyDataSource allRelevantISOCountryCodes];
  v18 = [valueCopy tu_personWithFormattedHandleForISOCountryCodes:allRelevantISOCountryCodes];

  v14 = [INStartCallContactResolutionResult successWithResolvedPerson:v18];

LABEL_13:

  return v14;
}

- (id)resolutionResultForPersonWithResolvedContactName:(id)name resolvedPerson:(id)person resolvedContact:(id)contact contactIdentifiersRequiringConfirmation:(id)confirmation
{
  personCopy = person;
  contactCopy = contact;
  confirmationCopy = confirmation;
  if ([(StartCallIntentHandler *)self shouldRequireUnknownRecipientConfirmationForRequestedRecipient:name resolvedToRecipient:personCopy contact:contactCopy])
  {
    v13 = IntentHandlerDefaultLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v23 = 138412290;
      v24 = personCopy;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Returning confirmationRequired with person: %@", &v23, 0xCu);
    }

    v14 = personCopy;
    v15 = 4;
LABEL_9:
    v20 = [INStartCallContactResolutionResult confirmationRequiredWithPersonToConfirm:v14 forReason:v15];
    goto LABEL_13;
  }

  identifier = [contactCopy identifier];
  v17 = [confirmationCopy containsObject:identifier];

  v18 = IntentHandlerDefaultLog();
  v19 = os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT);
  if (v17)
  {
    if (v19)
    {
      v23 = 138412290;
      v24 = personCopy;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Returning confirmationRequired with person (as upstream contact resolver recommended): %@", &v23, 0xCu);
    }

    v14 = personCopy;
    v15 = 3;
    goto LABEL_9;
  }

  if (v19)
  {
    v23 = 138412290;
    v24 = personCopy;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Returning success with person: %@", &v23, 0xCu);
  }

  v20 = [INStartCallContactResolutionResult successWithResolvedPerson:personCopy];
LABEL_13:
  v21 = v20;

  return v21;
}

- (id)allCountryCodesRelevantToCall:(id)call
{
  callCopy = call;
  v5 = objc_alloc_init(NSMutableOrderedSet);
  isoCountryCode = [callCopy isoCountryCode];

  if ([isoCountryCode length])
  {
    [v5 addObject:isoCountryCode];
  }

  dataSource = [(StartCallIntentHandler *)self dataSource];
  coreTelephonyDataSource = [dataSource coreTelephonyDataSource];
  allRelevantISOCountryCodes = [coreTelephonyDataSource allRelevantISOCountryCodes];
  [v5 addObjectsFromArray:allRelevantISOCountryCodes];

  array = [v5 array];

  return array;
}

- (void)updateScoreBasedHandleResolver:(id)resolver forFavoritesAmongHandles:(id)handles
{
  resolverCopy = resolver;
  handlesCopy = handles;
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
  obj = handlesCopy;
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
        dataSource = [(StartCallIntentHandler *)self dataSource];
        favoritesDataSource = [dataSource favoritesDataSource];
        dataSource2 = [(StartCallIntentHandler *)self dataSource];
        coreTelephonyDataSource = [dataSource2 coreTelephonyDataSource];
        allRelevantISOCountryCodes = [coreTelephonyDataSource allRelevantISOCountryCodes];
        v21 = [favoritesDataSource hasFavoritesEntryForTelephonyCallWithPhoneNumber:v15 isoCountryCodes:allRelevantISOCountryCodes];

        if (v21)
        {
          [resolverCopy addScore:4 forEntity:v15 reason:@"Favorites entry for telephony call with this handle"];
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

- (id)resolvePreferredContactFromContacts:(id)contacts
{
  contactsCopy = contacts;
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
  v12 = contactsCopy;
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
        identifier = [v17 identifier];
        [v10 addObject:identifier];
        [v11 setObject:v17 forKey:identifier];
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
  result = [(ScoreBasedResolver *)v21 result];
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
  v35 = result;
  resolutionSummary = [result resolutionSummary];
  v25 = [resolutionSummary countByEnumeratingWithState:&v39 objects:v49 count:16];
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
          objc_enumerationMutation(resolutionSummary);
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

      v26 = [resolutionSummary countByEnumeratingWithState:&v39 objects:v49 count:16];
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

- (void)updateScoreBasedContactResolver:(id)resolver forRecentCallsMatchingContacts:(id)contacts
{
  resolverCopy = resolver;
  contactsCopy = contacts;
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
  obj = contactsCopy;
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
        allTUHandles = [v12 allTUHandles];
        if ([allTUHandles count])
        {
          [v58 addObjectsFromArray:allTUHandles];
          v93 = 0u;
          v94 = 0u;
          v91 = 0u;
          v92 = 0u;
          v14 = allTUHandles;
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

  array = [v58 array];
  v22 = [(StartCallIntentHandler *)self recentCallsWithHandles:array telephonyOnly:0];

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
          remoteParticipantHandles = [v25 remoteParticipantHandles];
          v59 = [remoteParticipantHandles countByEnumeratingWithState:&v83 objects:v108 count:16];
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
                  objc_enumerationMutation(remoteParticipantHandles);
                }

                v60 = v26;
                tu_tuHandle = [*(*(&v83 + 1) + 8 * v26) tu_tuHandle];
                v79 = 0u;
                v80 = 0u;
                v81 = 0u;
                v82 = 0u;
                v61 = v58;
                v66 = [v61 countByEnumeratingWithState:&v79 objects:v107 count:16];
                if (v66)
                {
                  v65 = *v80;
                  v62 = tu_tuHandle;
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
                            if ([v29 isCanonicallyEqualToHandle:tu_tuHandle isoCountryCode:v34])
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

                                    identifier = [v40 identifier];
                                    [v23 addObject:identifier];
                                  }

                                  v37 = [v35 countByEnumeratingWithState:&v71 objects:v105 count:16];
                                }

                                while (v37);
                              }

                              tu_tuHandle = v62;
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
              v59 = [remoteParticipantHandles countByEnumeratingWithState:&v83 objects:v108 count:16];
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

    array2 = [v23 array];
    [resolverCopy addScore:6 forEntities:array2 reason:@"Call Recency"];
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

- (id)recentCallsWithHandles:(id)handles telephonyOnly:(BOOL)only
{
  onlyCopy = only;
  handlesCopy = handles;
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
  dataSource = [(StartCallIntentHandler *)self dataSource];
  coreTelephonyDataSource = [dataSource coreTelephonyDataSource];
  allRelevantISOCountryCodes = [coreTelephonyDataSource allRelevantISOCountryCodes];
  v15 = [CallHistoryDataSourcePredicate predicateForCallsWithAnyOfTheseRemoteParticipantHandles:handlesCopy isoCountryCodes:allRelevantISOCountryCodes];

  [v11 addObject:v15];
  if (onlyCopy)
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

  dataSource2 = [(StartCallIntentHandler *)self dataSource];
  callHistoryDataSource = [dataSource2 callHistoryDataSource];
  v27 = [callHistoryDataSource callsWithPredicate:v19 limit:1 offset:0 batchSize:1];
  firstObject = [v27 firstObject];

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
    v62 = firstObject;
    _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "Completed initial call history search with result: %@", buf, 0xCu);
  }

  if (firstObject)
  {
    date = [firstObject date];
    if (date)
    {
      dataSource3 = [(StartCallIntentHandler *)self dataSource];
      v34 = [dataSource3 now];
      [date timeIntervalSinceDate:v34];
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

    dataSource4 = [(StartCallIntentHandler *)self dataSource];
    v40 = [dataSource4 now];
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

    dataSource5 = [(StartCallIntentHandler *)self dataSource];
    callHistoryDataSource2 = [dataSource5 callHistoryDataSource];
    v37 = [callHistoryDataSource2 callsWithPredicate:v45 limit:25 offset:0 batchSize:25];

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
    date = IntentHandlerDefaultLog();
    if (os_log_type_enabled(date, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, date, OS_LOG_TYPE_DEFAULT, "No matching call history for any of the requested handles. No score adjustment.", buf, 2u);
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

- (void)updateScoreBasedContactResolver:(id)resolver forFavoritesAmongContacts:(id)contacts
{
  resolverCopy = resolver;
  contactsCopy = contacts;
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
  v12 = contactsCopy;
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
        dataSource = [(StartCallIntentHandler *)self dataSource];
        favoritesDataSource = [dataSource favoritesDataSource];
        v20 = [favoritesDataSource hasFavoritesEntryForContact:v17];

        if (v20)
        {
          identifier = [v17 identifier];
          [resolverCopy addScore:4 forEntity:identifier reason:@"Favorites entry for this contact"];
        }

        else
        {
          identifier = IntentHandlerDefaultLog();
          if (os_log_type_enabled(identifier, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v33 = v17;
            _os_log_impl(&_mh_execute_header, identifier, OS_LOG_TYPE_DEFAULT, "No favorites entry for contact %@. No score adjustment.", buf, 0xCu);
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

- (void)updateHandlerStateForContactResolutionResults:(id)results
{
  resultsCopy = results;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v5 = [resultsCopy countByEnumeratingWithState:&v17 objects:v21 count:16];
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
          objc_enumerationMutation(resultsCopy);
        }

        v9 = *(*(&v17 + 1) + 8 * i);
        if ([v9 resolutionResultCode] == 3)
        {
          itemToConfirm = [v9 itemToConfirm];
          v11 = itemToConfirm;
          if (itemToConfirm)
          {
            personHandle = [itemToConfirm personHandle];
            if (personHandle)
            {
              v13 = [TUHandle handleWithPerson:v11];
              if (v13)
              {
                handlesConfirmed = [(StartCallIntentHandler *)self handlesConfirmed];
                [handlesConfirmed addObject:v13];
              }
            }

            contactIdentifier = [v11 contactIdentifier];
            if ([contactIdentifier length])
            {
              contactIdentifiersConfirmed = [(StartCallIntentHandler *)self contactIdentifiersConfirmed];
              [contactIdentifiersConfirmed addObject:contactIdentifier];
            }
          }
        }
      }

      v6 = [resultsCopy countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v6);
  }
}

- (id)getAlternativesForContact:(id)contact forRequestedHandleType:(int64_t)type forCallProvider:(int64_t)provider
{
  contactCopy = contact;
  dataSource = [(StartCallIntentHandler *)self dataSource];
  coreTelephonyDataSource = [dataSource coreTelephonyDataSource];
  allRelevantISOCountryCodes = [coreTelephonyDataSource allRelevantISOCountryCodes];
  v12 = [(StartCallIntentHandler *)self _inPersonsFromContact:contactCopy withRequestedType:type requestedLabel:0 isoCountryCodes:allRelevantISOCountryCodes];

  v13 = IntentHandlerDefaultLog();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v21 = 134217984;
    v22 = [v12 count];
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Found %ld alternatives when dropping label constraint.", &v21, 0xCu);
  }

  if (![v12 count])
  {
    if (type == 2 && provider == 1)
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
      dataSource2 = [(StartCallIntentHandler *)self dataSource];
      coreTelephonyDataSource2 = [dataSource2 coreTelephonyDataSource];
      allRelevantISOCountryCodes2 = [coreTelephonyDataSource2 allRelevantISOCountryCodes];
      v18 = [(StartCallIntentHandler *)self _inPersonsFromContact:contactCopy withRequestedType:0 requestedLabel:0 isoCountryCodes:allRelevantISOCountryCodes2];

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

- (BOOL)anyContactsHaveSameName:(id)name
{
  nameCopy = name;
  v4 = objc_alloc_init(NSMutableSet);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = nameCopy;
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

- (BOOL)isEmergencyHandle:(id)handle
{
  handleCopy = handle;
  dataSource = [(StartCallIntentHandler *)self dataSource];
  providerManager = [dataSource providerManager];

  selfCopy = self;
  dataSource2 = [(StartCallIntentHandler *)self dataSource];
  senderIdentityClient = [dataSource2 senderIdentityClient];

  telephonyProvider = [providerManager telephonyProvider];
  prioritizedSenderIdentities = [telephonyProvider prioritizedSenderIdentities];

  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  v11 = prioritizedSenderIdentities;
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

        uUID = [*(*(&v53 + 1) + 8 * i) UUID];
        v17 = [senderIdentityClient isEmergencyNumberForDigits:handleCopy senderIdentityUUID:uUID];

        if (v17)
        {
          v39 = IntentHandlerDefaultLog();
          if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v60 = handleCopy;
            _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "Handle is an emergency number, %@ is in the prioritizedSenderIdentities list", buf, 0xCu);
          }

          v38 = 1;
          emergencyLabeledHandles = v11;
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

  v43 = providerManager;

  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  dataSource3 = [(StartCallIntentHandler *)selfCopy dataSource];
  providerManager2 = [dataSource3 providerManager];
  emergencyProvider = [providerManager2 emergencyProvider];
  emergencyLabeledHandles = [emergencyProvider emergencyLabeledHandles];

  v22 = [emergencyLabeledHandles countByEnumeratingWithState:&v49 objects:v58 count:16];
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
          objc_enumerationMutation(emergencyLabeledHandles);
        }

        handle = [*(*(&v49 + 1) + 8 * j) handle];
        value = [handle value];
        v28 = [handleCopy isEqualToString:value];

        if (v28)
        {
          v40 = IntentHandlerDefaultLog();
          providerManager = v43;
          if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v60 = handleCopy;
            _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "Handle is an emergency number, %@ is in the emergencyLabeledHandles list", buf, 0xCu);
          }

          v38 = 1;
          goto LABEL_38;
        }
      }

      v23 = [emergencyLabeledHandles countByEnumeratingWithState:&v49 objects:v58 count:16];
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
  dataSource4 = [(StartCallIntentHandler *)selfCopy dataSource];
  providerManager3 = [dataSource4 providerManager];
  emergencyProvider2 = [providerManager3 emergencyProvider];
  emergencyLabeledHandles = [emergencyProvider2 emergencyHandles];

  v32 = [emergencyLabeledHandles countByEnumeratingWithState:&v45 objects:v57 count:16];
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
          objc_enumerationMutation(emergencyLabeledHandles);
        }

        value2 = [*(*(&v45 + 1) + 8 * k) value];
        v37 = [handleCopy isEqualToString:value2];

        if (v37)
        {
          v41 = IntentHandlerDefaultLog();
          if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v60 = handleCopy;
            _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "Handle is an emergency number, %@ is in the unlabeled emergencyHandles list", buf, 0xCu);
          }

          v38 = 1;
          goto LABEL_37;
        }
      }

      v33 = [emergencyLabeledHandles countByEnumeratingWithState:&v45 objects:v57 count:16];
      if (v33)
      {
        continue;
      }

      break;
    }
  }

  emergencyLabeledHandles = IntentHandlerDefaultLog();
  if (os_log_type_enabled(emergencyLabeledHandles, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v60 = handleCopy;
    _os_log_impl(&_mh_execute_header, emergencyLabeledHandles, OS_LOG_TYPE_DEFAULT, "Handle is not an emergency number: %@", buf, 0xCu);
  }

  v38 = 0;
LABEL_37:
  providerManager = v43;
LABEL_38:

  return v38;
}

- (id)localizedEmergencyString:(id)string
{
  stringCopy = string;
  v5 = [INDeferredLocalizedString alloc];
  v6 = [NSBundle bundleWithPath:@"/Applications/InCallService.app"];
  v7 = [v5 initWithDeferredFormat:stringCopy fromTable:@"InCallService" bundle:v6 arguments:0];

  dataSource = [(StartCallIntentHandler *)self dataSource];
  siriLanguageCode = [dataSource siriLanguageCode];
  v10 = [v7 localizeForLanguage:siriLanguageCode];

  return v10;
}

- (id)_applyImpliedFilterToPhoneNumberOnlyMatchesIfApplicableForPersonsByContact:(id)contact requestedHandleType:(int64_t)type preferredCallProvider:(int64_t)provider
{
  contactCopy = contact;
  if (type)
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

  if (provider)
  {
    v9 = IntentHandlerDefaultLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v10 = "Not applying an implicit handle type filter to an intent with an explicit call provider specified";
      goto LABEL_26;
    }

LABEL_27:

    v25 = contactCopy;
    goto LABEL_28;
  }

  dataSource = [(StartCallIntentHandler *)self dataSource];
  supportsTelephonyCalls = [dataSource supportsTelephonyCalls];

  if ((supportsTelephonyCalls & 1) == 0)
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
  allValues = [contactCopy allValues];
  v14 = [allValues countByEnumeratingWithState:&v29 objects:v35 count:16];
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
        objc_enumerationMutation(allValues);
      }

      v16 += [*(*(&v29 + 1) + 8 * i) count];
    }

    v15 = [allValues countByEnumeratingWithState:&v29 objects:v35 count:16];
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
  [contactCopy enumerateKeysAndObjectsUsingBlock:v27];
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
    v24 = contactCopy;
    if (v23)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Filtering results to only phone numbers would have produced no results, not filtering.", buf, 2u);
      v24 = contactCopy;
    }
  }

  v25 = v24;
LABEL_28:

  return v25;
}

- (id)_inPersonsFromContact:(id)contact withRequestedType:(int64_t)type requestedLabel:(id)label isoCountryCodes:(id)codes
{
  contactCopy = contact;
  labelCopy = label;
  codesCopy = codes;
  v10 = objc_alloc_init(NSMutableArray);
  v11 = v10;
  if (type == 2)
  {
    v36 = v10;
    v35 = 0;
  }

  else
  {
    if (type == 1)
    {
LABEL_16:
      emailAddresses = [contactCopy emailAddresses];
      v39 = 0u;
      v40 = 0u;
      v41 = 0u;
      v42 = 0u;
      v25 = [emailAddresses countByEnumeratingWithState:&v39 objects:v47 count:16];
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
              objc_enumerationMutation(emailAddresses);
            }

            v29 = *(*(&v39 + 1) + 8 * i);
            v30 = INPersonHandleLabelForCNLabeledValue();
            if (![labelCopy length] || !objc_msgSend(labelCopy, "caseInsensitiveCompare:", v30))
            {
              value = [v29 value];
              v32 = [StartCallIntentHandlerUtilities inPersonFromContact:contactCopy handleValue:value handleType:1 handleLabel:v30];
              [v11 addObject:v32];
            }
          }

          v26 = [emailAddresses countByEnumeratingWithState:&v39 objects:v47 count:16];
        }

        while (v26);
      }

      goto LABEL_27;
    }

    if (type)
    {
      goto LABEL_27;
    }

    v36 = v10;
    v35 = 1;
  }

  [contactCopy phoneNumbers];
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
          value2 = [v17 value];
          stringValue = [value2 stringValue];
          firstObject = [codesCopy firstObject];
          v22 = TUFormattedPhoneNumber();

          v23 = [StartCallIntentHandlerUtilities inPersonFromContact:contactCopy handleValue:v22 handleType:2 handleLabel:v18];
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

- (BOOL)haveAlreadyConfirmedRecipient:(id)recipient
{
  recipientCopy = recipient;
  v5 = [TUHandle handleWithPerson:recipientCopy];
  if (v5)
  {
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    handlesConfirmed = [(StartCallIntentHandler *)self handlesConfirmed];
    v7 = [handlesConfirmed countByEnumeratingWithState:&v22 objects:v28 count:16];
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
          objc_enumerationMutation(handlesConfirmed);
        }

        v11 = *(*(&v22 + 1) + 8 * v10);
        if (TUHandlesAreCanonicallyEqual())
        {
          break;
        }

        if (v8 == ++v10)
        {
          v8 = [handlesConfirmed countByEnumeratingWithState:&v22 objects:v28 count:16];
          if (v8)
          {
            goto LABEL_4;
          }

          goto LABEL_10;
        }
      }

      contactIdentifier3 = IntentHandlerDefaultLog();
      if (!os_log_type_enabled(contactIdentifier3, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_19;
      }

      *buf = 138412290;
      v27 = v11;
      v18 = "Have previously confirmed recipient with handle %@";
      v19 = contactIdentifier3;
      goto LABEL_18;
    }

LABEL_10:
  }

  contactIdentifier = [recipientCopy contactIdentifier];
  v13 = [contactIdentifier length];

  if (v13)
  {
    contactIdentifiersConfirmed = [(StartCallIntentHandler *)self contactIdentifiersConfirmed];
    contactIdentifier2 = [recipientCopy contactIdentifier];
    v16 = [contactIdentifiersConfirmed containsObject:contactIdentifier2];

    if (v16)
    {
      handlesConfirmed = IntentHandlerDefaultLog();
      if (!os_log_type_enabled(handlesConfirmed, OS_LOG_TYPE_DEFAULT))
      {
LABEL_20:

        v20 = 1;
        goto LABEL_21;
      }

      contactIdentifier3 = [recipientCopy contactIdentifier];
      *buf = 138412290;
      v27 = contactIdentifier3;
      v18 = "Have previously confirmed recipient with contactIdentifier: %@";
      v19 = handlesConfirmed;
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

- (BOOL)shouldRequireInvalidNumberConfirmationForRecipient:(id)recipient
{
  recipientCopy = recipient;
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

  v10 = [TUHandle handleWithPerson:recipientCopy];
  v11 = [(StartCallIntentHandler *)self haveAlreadyConfirmedRecipient:recipientCopy];
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

  personHandle = [recipientCopy personHandle];
  emergencyType = [personHandle emergencyType];

  if (emergencyType == 2)
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
    dataSource = [(StartCallIntentHandler *)self dataSource];
    coreTelephonyDataSource = [dataSource coreTelephonyDataSource];
    allRelevantISOCountryCodes = [coreTelephonyDataSource allRelevantISOCountryCodes];

    v53 = 0u;
    v54 = 0u;
    v51 = 0u;
    v52 = 0u;
    v16 = allRelevantISOCountryCodes;
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
    dataSource2 = [(StartCallIntentHandler *)self dataSource];
    coreTelephonyDataSource2 = [dataSource2 coreTelephonyDataSource];
    allRelevantISOCountryCodes2 = [coreTelephonyDataSource2 allRelevantISOCountryCodes];
    v30 = [CallHistoryDataSourcePredicate predicateForCallsWithAnyOfTheseRemoteParticipantHandles:v48 isoCountryCodes:allRelevantISOCountryCodes2];
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

    dataSource3 = [(StartCallIntentHandler *)self dataSource];
    callHistoryDataSource = [dataSource3 callHistoryDataSource];
    v39 = [callHistoryDataSource callCountWithPredicate:v16];

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

- (BOOL)shouldRequireUnknownRecipientConfirmationForRequestedRecipient:(id)recipient resolvedToRecipient:(id)toRecipient contact:(id)contact
{
  recipientCopy = recipient;
  toRecipientCopy = toRecipient;
  contactCopy = contact;
  v11 = IntentHandlerDefaultLog();
  v12 = os_signpost_id_generate(v11);

  v13 = IntentHandlerDefaultLog();
  v14 = v13;
  if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v14, OS_SIGNPOST_INTERVAL_BEGIN, v12, "shouldRequireUnknownRecipientConfirmation", "", buf, 2u);
  }

  _userInput = [recipientCopy _userInput];
  displayName = [recipientCopy displayName];
  if ([(StartCallIntentHandler *)self haveAlreadyConfirmedRecipient:recipientCopy])
  {
    allTUHandles = IntentHandlerDefaultLog();
    if (os_log_type_enabled(allTUHandles, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, allTUHandles, OS_LOG_TYPE_DEFAULT, "Not requiring unknown recipient confirmation because recipient has already been confirmed.", buf, 2u);
    }

    goto LABEL_15;
  }

  relationship = [recipientCopy relationship];
  v19 = [relationship length];

  if (v19)
  {
    allTUHandles = IntentHandlerDefaultLog();
    if (os_log_type_enabled(allTUHandles, OS_LOG_TYPE_DEFAULT))
    {
      relationship2 = [recipientCopy relationship];
      *buf = 138412290;
      v76 = relationship2;
      v21 = "Not requiring unknown recipient confirmation because requested recipient was a relation: %@";
      v22 = allTUHandles;
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

  v74 = contactCopy;
  personHandle = [recipientCopy personHandle];
  value = [personHandle value];
  v26 = [value length];

  if (v26)
  {
    allTUHandles = IntentHandlerDefaultLog();
    contactCopy = v74;
    if (os_log_type_enabled(allTUHandles, OS_LOG_TYPE_DEFAULT))
    {
      relationship2 = [recipientCopy personHandle];
      value2 = [relationship2 value];
      *buf = 138412290;
      v76 = value2;
      _os_log_impl(&_mh_execute_header, allTUHandles, OS_LOG_TYPE_DEFAULT, "Not requiring unknown recipient confirmation because requested recipient was a manually dictated handle: %@", buf, 0xCu);

      goto LABEL_14;
    }

    goto LABEL_15;
  }

  if ([_userInput length])
  {
    displayName2 = [toRecipientCopy displayName];
    v35 = [_userInput isEqualToIgnoringCase:displayName2];

    if (v35)
    {
      allTUHandles = IntentHandlerDefaultLog();
      contactCopy = v74;
      if (!os_log_type_enabled(allTUHandles, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_15;
      }

      relationship2 = [toRecipientCopy displayName];
      *buf = 138412546;
      v76 = _userInput;
      v77 = 2112;
      v78 = relationship2;
      v21 = "Not requiring unknown recipient confirmation because userInput %@ matches resolved recipients full displayName: %@";
      v22 = allTUHandles;
      v23 = 22;
      goto LABEL_10;
    }
  }

  if ([displayName length])
  {
    displayName3 = [toRecipientCopy displayName];
    v37 = [displayName isEqualToIgnoringCase:displayName3];

    if (v37)
    {
      allTUHandles = IntentHandlerDefaultLog();
      if (os_log_type_enabled(allTUHandles, OS_LOG_TYPE_DEFAULT))
      {
        displayName4 = [toRecipientCopy displayName];
        *buf = 138412546;
        v76 = displayName;
        v77 = 2112;
        v78 = displayName4;
        _os_log_impl(&_mh_execute_header, allTUHandles, OS_LOG_TYPE_DEFAULT, "Not requiring unknown recipient confirmation because requested displayName %@ matches resolved recipients displayName: %@", buf, 0x16u);
      }

      v28 = 0;
      contactCopy = v74;
      goto LABEL_16;
    }
  }

  nameComponents = [toRecipientCopy nameComponents];

  if (nameComponents)
  {
    nameComponents2 = [toRecipientCopy nameComponents];
    allTUHandles = [NSPersonNameComponentsFormatter localizedStringFromPersonNameComponents:nameComponents2 style:3 options:0];

    if ([_userInput length] && objc_msgSend(_userInput, "isEqualToIgnoringCase:", allTUHandles))
    {
      relationship2 = IntentHandlerDefaultLog();
      if (os_log_type_enabled(relationship2, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v76 = _userInput;
        v77 = 2112;
        v78 = allTUHandles;
        v41 = "Not requiring unknown recipient confirmation because userInput %@ matches resolved recipients long format name: %@";
LABEL_43:
        _os_log_impl(&_mh_execute_header, relationship2, OS_LOG_TYPE_DEFAULT, v41, buf, 0x16u);
        goto LABEL_44;
      }

      goto LABEL_44;
    }

    if ([displayName length] && objc_msgSend(displayName, "isEqualToIgnoringCase:", allTUHandles))
    {
      relationship2 = IntentHandlerDefaultLog();
      if (os_log_type_enabled(relationship2, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v76 = displayName;
        v77 = 2112;
        v78 = allTUHandles;
        v41 = "Not requiring unknown recipient confirmation because requested recipient displayName %@ matches resolved recipients long format name: %@";
        goto LABEL_43;
      }

LABEL_44:
      contactCopy = v74;
      goto LABEL_14;
    }
  }

  nameComponents3 = [toRecipientCopy nameComponents];

  if (nameComponents3)
  {
    nameComponents4 = [toRecipientCopy nameComponents];
    v44 = [NSPersonNameComponentsFormatter localizedStringFromPersonNameComponents:nameComponents4 style:2 options:0];

    if ([_userInput length] && objc_msgSend(_userInput, "isEqualToIgnoringCase:", v44))
    {
      v45 = IntentHandlerDefaultLog();
      if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v76 = _userInput;
        v77 = 2112;
        v78 = v44;
        _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_DEFAULT, "Not requiring unknown recipient confirmation because userInput %@ matches resolved recipients medium format name: %@", buf, 0x16u);
      }

      contactCopy = v74;
    }

    else
    {
      if (![displayName length])
      {
        v28 = 1;
        contactCopy = v74;
        goto LABEL_60;
      }

      contactCopy = v74;
      if (![displayName isEqualToIgnoringCase:v44])
      {
        v28 = 1;
        goto LABEL_60;
      }

      v45 = IntentHandlerDefaultLog();
      if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v76 = displayName;
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
  contactCopy = v74;
LABEL_61:
  if (contactCopy && v28)
  {
    v46 = [CNContactFormatter stringFromContact:contactCopy style:0];
    if ([_userInput length] && objc_msgSend(_userInput, "isEqualToIgnoringCase:", v46))
    {
      v47 = IntentHandlerDefaultLog();
      if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v76 = _userInput;
        v77 = 2112;
        v78 = v46;
        v48 = "Not requiring unknown recipient confirmation because userInput %@ matches resolved contact formatted name: %@";
LABEL_71:
        _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_DEFAULT, v48, buf, 0x16u);
      }
    }

    else if ([displayName length] && objc_msgSend(displayName, "isEqualToIgnoringCase:", v46))
    {
      v47 = IntentHandlerDefaultLog();
      if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v76 = displayName;
        v77 = 2112;
        v78 = v46;
        v48 = "Not requiring unknown recipient confirmation because requested recipient displayName %@ matches resolved contact formatted name: %@";
        goto LABEL_71;
      }
    }

    else
    {
      v72 = v46;
      dataSource = [(StartCallIntentHandler *)self dataSource];
      favoritesDataSource = [dataSource favoritesDataSource];
      v51 = contactCopy;
      v52 = favoritesDataSource;
      v53 = [favoritesDataSource hasFavoritesEntryForContact:v51];

      if (!v53)
      {
        v28 = 1;
        v46 = v72;
        contactCopy = v74;
LABEL_79:

        goto LABEL_80;
      }

      v47 = IntentHandlerDefaultLog();
      if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        contactCopy = v74;
        v76 = v74;
        _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_DEFAULT, "Not requiring unknown recipient confirmation because resolved contact is a favorite. Contact: %@", buf, 0xCu);
      }

      else
      {
        contactCopy = v74;
      }

      v46 = v72;
    }

    v28 = 0;
    goto LABEL_79;
  }

LABEL_80:
  if (contactCopy && v28)
  {
    allTUHandles = [contactCopy allTUHandles];
    if (![allTUHandles count])
    {
      v28 = 1;
      goto LABEL_16;
    }

    dataSource2 = [(StartCallIntentHandler *)self dataSource];
    coreTelephonyDataSource = [dataSource2 coreTelephonyDataSource];
    allRelevantISOCountryCodes = [coreTelephonyDataSource allRelevantISOCountryCodes];
    v73 = [CallHistoryDataSourcePredicate predicateForCallsWithAnyOfTheseRemoteParticipantHandles:allTUHandles isoCountryCodes:allRelevantISOCountryCodes];

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

    dataSource3 = [(StartCallIntentHandler *)self dataSource];
    callHistoryDataSource = [dataSource3 callHistoryDataSource];
    v63 = [callHistoryDataSource callCountWithPredicate:v73];

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
      contactCopy = v74;
      if (v67)
      {
        *buf = 138412290;
        v76 = allTUHandles;
        v68 = "Did not find a recent calls with any of the following handles: %@";
        goto LABEL_97;
      }
    }

    else
    {
      contactCopy = v74;
      if (v67)
      {
        *buf = 138412290;
        v76 = allTUHandles;
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

- (id)resolveContactsFromCallGroups:(id)groups
{
  groupsCopy = groups;
  contacts = [groupsCopy contacts];
  v6 = objc_alloc_init(NSMutableArray);
  v7 = IntentHandlerDefaultLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    callGroups = [groupsCopy callGroups];
    *buf = 138412290;
    v35 = callGroups;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "group facetime message callGroups for intent: %@", buf, 0xCu);
  }

  callGroups2 = [groupsCopy callGroups];
  firstObject = [callGroups2 firstObject];
  groupId = [firstObject groupId];

  dataSource = [(StartCallIntentHandler *)self dataSource];
  v13 = [dataSource fetchSPIHandlesForGroupID:groupId];

  if ([v13 count])
  {
    v27 = contacts;
    v28 = groupsCopy;
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
          address = [v20 address];
          v23 = [v21 initWithValue:address type:0 label:0 emergencyType:2];

          v24 = [[INPerson alloc] initWithPersonHandle:v23 nameComponents:0 displayName:0 image:0 contactIdentifier:0 customIdentifier:0];
          [v6 addObject:v24];
        }

        v17 = [v15 countByEnumeratingWithState:&v29 objects:v33 count:16];
      }

      while (v17);
    }

    contacts = [v6 copy];
    groupsCopy = v28;
  }

  v25 = IntentHandlerDefaultLog();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v35 = contacts;
    _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "updated contacts: %@", buf, 0xCu);
  }

  return contacts;
}

@end