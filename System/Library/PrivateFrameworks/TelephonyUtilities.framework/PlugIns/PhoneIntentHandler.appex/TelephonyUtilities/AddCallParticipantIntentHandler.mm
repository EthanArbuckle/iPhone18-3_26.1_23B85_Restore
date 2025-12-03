@interface AddCallParticipantIntentHandler
- (AddCallParticipantIntentHandler)init;
- (AddCallParticipantIntentHandler)initWithCallCenter:(id)center dataSource:(id)source faceTimeUtilities:(id)utilities;
- (BOOL)_checkParticipantAlreadyActive:(id)active inConversation:(id)conversation;
- (BOOL)_checkParticipantLimitedByScreenTimeDownTime:(id)time forCall:(id)call;
- (BOOL)_checkSelfAdd:(id)add toConversation:(id)conversation;
- (id)_checkRestrictionsForCall:(id)call conversation:(id)conversation personToAdd:(id)add asMember:(id)member;
- (id)interpretContactResolutionRecommendation:(id)recommendation participant:(id)participant;
- (id)runNativeContactResolutionOnParticipant:(id)participant;
- (void)_addCallParticipant:(id)participant asConversationMember:(id)member toConversation:(id)conversation completion:(id)completion;
- (void)_generateLinkResponseForConversation:(id)conversation person:(id)person completion:(id)completion;
- (void)handleAddCallParticipant:(id)participant completion:(id)completion;
- (void)resolveParticipantsForAddCallParticipant:(id)participant withCompletion:(id)completion;
@end

@implementation AddCallParticipantIntentHandler

- (AddCallParticipantIntentHandler)init
{
  v3 = [NSString stringWithFormat:@"com.apple.TelephonyUtilities.PhoneIntentHandler.%@", objc_opt_class()];
  v4 = dispatch_queue_create([v3 UTF8String], 0);

  v5 = [TUCallCenter callCenterWithQueue:v4];
  v6 = objc_alloc_init(AddCallParticipantIntentHandlerDataSource);
  v7 = +[FaceTimeUtilities sharedInstance];
  v8 = [(AddCallParticipantIntentHandler *)self initWithCallCenter:v5 dataSource:v6 faceTimeUtilities:v7];

  return v8;
}

- (AddCallParticipantIntentHandler)initWithCallCenter:(id)center dataSource:(id)source faceTimeUtilities:(id)utilities
{
  centerCopy = center;
  sourceCopy = source;
  utilitiesCopy = utilities;
  v15.receiver = self;
  v15.super_class = AddCallParticipantIntentHandler;
  v12 = [(AddCallParticipantIntentHandler *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_callCenter, center);
    objc_storeStrong(&v13->_dataSource, source);
    objc_storeStrong(&v13->_ftUtilities, utilities);
  }

  return v13;
}

- (void)handleAddCallParticipant:(id)participant completion:(id)completion
{
  participantCopy = participant;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_10000B5E8;
  v17[3] = &unk_10004CE10;
  completionCopy = completion;
  v7 = completionCopy;
  v8 = objc_retainBlock(v17);
  callCenter = [(AddCallParticipantIntentHandler *)self callCenter];
  queue = [callCenter queue];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10000B6C8;
  v13[3] = &unk_10004CE38;
  v14 = participantCopy;
  selfCopy = self;
  v16 = v8;
  v11 = v8;
  v12 = participantCopy;
  dispatch_async(queue, v13);
}

- (void)_addCallParticipant:(id)participant asConversationMember:(id)member toConversation:(id)conversation completion:(id)completion
{
  participantCopy = participant;
  memberCopy = member;
  conversationCopy = conversation;
  completionCopy = completion;
  callCenter = [(AddCallParticipantIntentHandler *)self callCenter];
  queue = [callCenter queue];
  dispatch_assert_queue_V2(queue);

  personHandle = [participantCopy personHandle];
  if (personHandle && (v17 = personHandle, [participantCopy personHandle], v18 = objc_claimAutoreleasedReturnValue(), v19 = objc_msgSend(v18, "faceTimeType"), v18, v17, v19 == 2))
  {
    v20 = IntentHandlerDefaultLog();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      sub_10002F7E0();
    }

    [(AddCallParticipantIntentHandler *)self _generateLinkResponseForConversation:conversationCopy person:participantCopy completion:completionCopy];
  }

  else
  {
    remoteMembers = [conversationCopy remoteMembers];
    v41[0] = _NSConcreteStackBlock;
    v41[1] = 3221225472;
    v41[2] = sub_10000BD88;
    v41[3] = &unk_10004CE60;
    v22 = memberCopy;
    v42 = v22;
    v23 = [remoteMembers tu_containsObjectPassingTest:v41];

    v24 = IntentHandlerDefaultLog();
    v25 = os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG);
    if (v23)
    {
      if (v25)
      {
        sub_10002F8D8();
      }

      callCenter2 = [(AddCallParticipantIntentHandler *)self callCenter];
      conversationManager = [callCenter2 conversationManager];
      [conversationManager buzzMember:v22 conversation:conversationCopy];

      v28 = [INCallInvite alloc];
      v45 = participantCopy;
      v29 = [NSArray arrayWithObjects:&v45 count:1];
      v30 = v28;
      v31 = v29;
      v32 = 2;
    }

    else
    {
      if (v25)
      {
        sub_10002F85C();
      }

      callCenter3 = [(AddCallParticipantIntentHandler *)self callCenter];
      conversationManager2 = [callCenter3 conversationManager];
      v35 = [NSSet setWithObject:v22];
      v36 = +[NSSet set];
      [conversationManager2 addRemoteMembers:v35 otherInvitedHandles:v36 toConversation:conversationCopy];

      v37 = [INCallInvite alloc];
      v44 = participantCopy;
      v29 = [NSArray arrayWithObjects:&v44 count:1];
      v30 = v37;
      v31 = v29;
      v32 = 1;
    }

    v38 = [v30 initWithParticipants:v31 inviteType:v32 callURL:0];

    v39 = [[INAddCallParticipantIntentResponse alloc] initWithCode:3 userActivity:0];
    v43 = v38;
    v40 = [NSArray arrayWithObjects:&v43 count:1];
    [v39 setInvites:v40];

    completionCopy[2](completionCopy, v39);
  }
}

- (void)_generateLinkResponseForConversation:(id)conversation person:(id)person completion:(id)completion
{
  personCopy = person;
  completionCopy = completion;
  conversationCopy = conversation;
  callCenter = [(AddCallParticipantIntentHandler *)self callCenter];
  conversationManager = [callCenter conversationManager];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10000BEF4;
  v15[3] = &unk_10004CE88;
  v16 = personCopy;
  v17 = completionCopy;
  v13 = completionCopy;
  v14 = personCopy;
  [conversationManager generateLinkForConversation:conversationCopy completionHandler:v15];
}

- (id)_checkRestrictionsForCall:(id)call conversation:(id)conversation personToAdd:(id)add asMember:(id)member
{
  callCopy = call;
  conversationCopy = conversation;
  addCopy = add;
  memberCopy = member;
  if ([(AddCallParticipantIntentHandler *)self _checkSelfAdd:memberCopy toConversation:conversationCopy])
  {
    v14 = 8;
LABEL_7:
    v15 = [[INAddCallParticipantIntentResponse alloc] initWithCode:v14 userActivity:0];
    goto LABEL_8;
  }

  if ([(AddCallParticipantIntentHandler *)self _checkParticipantAlreadyActive:memberCopy inConversation:conversationCopy])
  {
    v14 = 9;
    goto LABEL_7;
  }

  if ([(AddCallParticipantIntentHandler *)self _checkParticipantLimitedByScreenTimeDownTime:addCopy forCall:callCopy])
  {
    v14 = 13;
    goto LABEL_7;
  }

  v15 = 0;
LABEL_8:

  return v15;
}

- (BOOL)_checkSelfAdd:(id)add toConversation:(id)conversation
{
  addCopy = add;
  conversationCopy = conversation;
  localMember = [conversationCopy localMember];
  handle = [localMember handle];
  if (handle)
  {
    v10 = handle;
    localMember2 = [conversationCopy localMember];
    handle2 = [localMember2 handle];
    handle3 = [addCopy handle];
    v14 = TUHandlesAreCanonicallyEqual();

    if (v14)
    {
      fetchFaceTimeAccountAliases = IntentHandlerDefaultLog();
      if (os_log_type_enabled(fetchFaceTimeAccountAliases, OS_LOG_TYPE_DEBUG))
      {
        sub_10002FA74(conversationCopy, fetchFaceTimeAccountAliases);
      }

      goto LABEL_12;
    }
  }

  else
  {
  }

  fetchFaceTimeAccountAliases = [(FaceTimeUtilities *)self->_ftUtilities fetchFaceTimeAccountAliases];
  handle4 = [addCopy handle];
  value = [handle4 value];
  if ([fetchFaceTimeAccountAliases containsObject:value])
  {
  }

  else
  {
    handle5 = [addCopy handle];
    normalizedValue = [handle5 normalizedValue];
    v20 = [fetchFaceTimeAccountAliases containsObject:normalizedValue];

    if (!v20)
    {
      v22 = 0;
      goto LABEL_13;
    }
  }

  v21 = IntentHandlerDefaultLog();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
  {
    sub_10002FB14();
  }

LABEL_12:
  v22 = 1;
LABEL_13:

  return v22;
}

- (BOOL)_checkParticipantAlreadyActive:(id)active inConversation:(id)conversation
{
  activeCopy = active;
  activeRemoteParticipants = [conversation activeRemoteParticipants];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10000C458;
  v10[3] = &unk_10004CEB0;
  v11 = activeCopy;
  v7 = activeCopy;
  v8 = [activeRemoteParticipants tu_containsObjectPassingTest:v10];

  return v8;
}

- (BOOL)_checkParticipantLimitedByScreenTimeDownTime:(id)time forCall:(id)call
{
  callCopy = call;
  timeCopy = time;
  callCenter = [(AddCallParticipantIntentHandler *)self callCenter];
  callFilterController = [callCenter callFilterController];
  v14 = timeCopy;
  v10 = [NSArray arrayWithObjects:&v14 count:1];

  provider = [callCopy provider];

  v12 = [callFilterController restrictedContacts:v10 callProvider:provider];
  LOBYTE(callCopy) = [v12 count] != 0;

  return callCopy;
}

- (void)resolveParticipantsForAddCallParticipant:(id)participant withCompletion:(id)completion
{
  participantCopy = participant;
  completionCopy = completion;
  v8 = objc_alloc_init(NSMutableArray);
  participants = [participantCopy participants];
  v10 = [participants count];

  if (!v10)
  {
    v13 = +[INAddCallParticipantParticipantResolutionResult needsValue];
    goto LABEL_5;
  }

  participants2 = [participantCopy participants];
  v12 = [participants2 count];

  if (v12 >= 2)
  {
    v13 = [INAddCallParticipantParticipantResolutionResult unsupportedForReason:2];
LABEL_5:
    v14 = v13;
    goto LABEL_7;
  }

  participants3 = [participantCopy participants];
  v16 = [participants3 objectAtIndexedSubscript:0];
  v14 = [(AddCallParticipantIntentHandler *)self runNativeContactResolutionOnParticipant:v16];

LABEL_7:
  [v8 addObject:v14];

  v17 = IntentHandlerDefaultLog();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    sub_10002FB94();
  }

  completionCopy[2](completionCopy, v8);
}

- (id)runNativeContactResolutionOnParticipant:(id)participant
{
  participantCopy = participant;
  v5 = [[CRRRecommendation alloc] initWithPerson:participantCopy];
  recommendedResult = [(CRRRecommendation *)v5 recommendedResult];
  v7 = [(AddCallParticipantIntentHandler *)self interpretContactResolutionRecommendation:recommendedResult participant:participantCopy];

  return v7;
}

- (id)interpretContactResolutionRecommendation:(id)recommendation participant:(id)participant
{
  participantCopy = participant;
  recommendationCopy = recommendation;
  v7 = [[INAddCallParticipantParticipantResolutionResult alloc] initWithPersonResolutionResult:recommendationCopy];
  resolutionResultCode = [recommendationCopy resolutionResultCode];

  if (!resolutionResultCode || resolutionResultCode == 3)
  {
    resolvedValue = [v7 resolvedValue];
    v15 = resolvedValue;
    if (resolvedValue)
    {
      itemToConfirm = resolvedValue;
    }

    else
    {
      itemToConfirm = [v7 itemToConfirm];
    }

    v17 = itemToConfirm;

    personHandle = [v17 personHandle];
    value = [personHandle value];
    v20 = [value length];

    if (!v20)
    {
      v21 = IntentHandlerDefaultLog();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
      {
        sub_10002FC10();
      }

      v22 = [INAddCallParticipantParticipantResolutionResult unsupportedForReason:3];

      v7 = v22;
    }
  }

  else if (resolutionResultCode == 1)
  {
    personHandle2 = [participantCopy personHandle];
    label = [personHandle2 label];
    v11 = [label length];

    if (v11)
    {
      v12 = 3;
    }

    else
    {
      v12 = 1;
    }

    v13 = [INAddCallParticipantParticipantResolutionResult unsupportedForReason:v12];

    v7 = v13;
  }

  return v7;
}

@end