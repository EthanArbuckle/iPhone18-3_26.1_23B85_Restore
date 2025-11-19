@interface AddCallParticipantIntentHandler
- (AddCallParticipantIntentHandler)init;
- (AddCallParticipantIntentHandler)initWithCallCenter:(id)a3 dataSource:(id)a4 faceTimeUtilities:(id)a5;
- (BOOL)_checkParticipantAlreadyActive:(id)a3 inConversation:(id)a4;
- (BOOL)_checkParticipantLimitedByScreenTimeDownTime:(id)a3 forCall:(id)a4;
- (BOOL)_checkSelfAdd:(id)a3 toConversation:(id)a4;
- (id)_checkRestrictionsForCall:(id)a3 conversation:(id)a4 personToAdd:(id)a5 asMember:(id)a6;
- (id)interpretContactResolutionRecommendation:(id)a3 participant:(id)a4;
- (id)runNativeContactResolutionOnParticipant:(id)a3;
- (void)_addCallParticipant:(id)a3 asConversationMember:(id)a4 toConversation:(id)a5 completion:(id)a6;
- (void)_generateLinkResponseForConversation:(id)a3 person:(id)a4 completion:(id)a5;
- (void)handleAddCallParticipant:(id)a3 completion:(id)a4;
- (void)resolveParticipantsForAddCallParticipant:(id)a3 withCompletion:(id)a4;
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

- (AddCallParticipantIntentHandler)initWithCallCenter:(id)a3 dataSource:(id)a4 faceTimeUtilities:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = AddCallParticipantIntentHandler;
  v12 = [(AddCallParticipantIntentHandler *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_callCenter, a3);
    objc_storeStrong(&v13->_dataSource, a4);
    objc_storeStrong(&v13->_ftUtilities, a5);
  }

  return v13;
}

- (void)handleAddCallParticipant:(id)a3 completion:(id)a4
{
  v6 = a3;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_10000B5E8;
  v17[3] = &unk_10004CE10;
  v18 = a4;
  v7 = v18;
  v8 = objc_retainBlock(v17);
  v9 = [(AddCallParticipantIntentHandler *)self callCenter];
  v10 = [v9 queue];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10000B6C8;
  v13[3] = &unk_10004CE38;
  v14 = v6;
  v15 = self;
  v16 = v8;
  v11 = v8;
  v12 = v6;
  dispatch_async(v10, v13);
}

- (void)_addCallParticipant:(id)a3 asConversationMember:(id)a4 toConversation:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [(AddCallParticipantIntentHandler *)self callCenter];
  v15 = [v14 queue];
  dispatch_assert_queue_V2(v15);

  v16 = [v10 personHandle];
  if (v16 && (v17 = v16, [v10 personHandle], v18 = objc_claimAutoreleasedReturnValue(), v19 = objc_msgSend(v18, "faceTimeType"), v18, v17, v19 == 2))
  {
    v20 = IntentHandlerDefaultLog();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      sub_10002F7E0();
    }

    [(AddCallParticipantIntentHandler *)self _generateLinkResponseForConversation:v12 person:v10 completion:v13];
  }

  else
  {
    v21 = [v12 remoteMembers];
    v41[0] = _NSConcreteStackBlock;
    v41[1] = 3221225472;
    v41[2] = sub_10000BD88;
    v41[3] = &unk_10004CE60;
    v22 = v11;
    v42 = v22;
    v23 = [v21 tu_containsObjectPassingTest:v41];

    v24 = IntentHandlerDefaultLog();
    v25 = os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG);
    if (v23)
    {
      if (v25)
      {
        sub_10002F8D8();
      }

      v26 = [(AddCallParticipantIntentHandler *)self callCenter];
      v27 = [v26 conversationManager];
      [v27 buzzMember:v22 conversation:v12];

      v28 = [INCallInvite alloc];
      v45 = v10;
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

      v33 = [(AddCallParticipantIntentHandler *)self callCenter];
      v34 = [v33 conversationManager];
      v35 = [NSSet setWithObject:v22];
      v36 = +[NSSet set];
      [v34 addRemoteMembers:v35 otherInvitedHandles:v36 toConversation:v12];

      v37 = [INCallInvite alloc];
      v44 = v10;
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

    v13[2](v13, v39);
  }
}

- (void)_generateLinkResponseForConversation:(id)a3 person:(id)a4 completion:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = a3;
  v11 = [(AddCallParticipantIntentHandler *)self callCenter];
  v12 = [v11 conversationManager];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10000BEF4;
  v15[3] = &unk_10004CE88;
  v16 = v8;
  v17 = v9;
  v13 = v9;
  v14 = v8;
  [v12 generateLinkForConversation:v10 completionHandler:v15];
}

- (id)_checkRestrictionsForCall:(id)a3 conversation:(id)a4 personToAdd:(id)a5 asMember:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if ([(AddCallParticipantIntentHandler *)self _checkSelfAdd:v13 toConversation:v11])
  {
    v14 = 8;
LABEL_7:
    v15 = [[INAddCallParticipantIntentResponse alloc] initWithCode:v14 userActivity:0];
    goto LABEL_8;
  }

  if ([(AddCallParticipantIntentHandler *)self _checkParticipantAlreadyActive:v13 inConversation:v11])
  {
    v14 = 9;
    goto LABEL_7;
  }

  if ([(AddCallParticipantIntentHandler *)self _checkParticipantLimitedByScreenTimeDownTime:v12 forCall:v10])
  {
    v14 = 13;
    goto LABEL_7;
  }

  v15 = 0;
LABEL_8:

  return v15;
}

- (BOOL)_checkSelfAdd:(id)a3 toConversation:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v7 localMember];
  v9 = [v8 handle];
  if (v9)
  {
    v10 = v9;
    v11 = [v7 localMember];
    v12 = [v11 handle];
    v13 = [v6 handle];
    v14 = TUHandlesAreCanonicallyEqual();

    if (v14)
    {
      v15 = IntentHandlerDefaultLog();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        sub_10002FA74(v7, v15);
      }

      goto LABEL_12;
    }
  }

  else
  {
  }

  v15 = [(FaceTimeUtilities *)self->_ftUtilities fetchFaceTimeAccountAliases];
  v16 = [v6 handle];
  v17 = [v16 value];
  if ([v15 containsObject:v17])
  {
  }

  else
  {
    v18 = [v6 handle];
    v19 = [v18 normalizedValue];
    v20 = [v15 containsObject:v19];

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

- (BOOL)_checkParticipantAlreadyActive:(id)a3 inConversation:(id)a4
{
  v5 = a3;
  v6 = [a4 activeRemoteParticipants];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10000C458;
  v10[3] = &unk_10004CEB0;
  v11 = v5;
  v7 = v5;
  v8 = [v6 tu_containsObjectPassingTest:v10];

  return v8;
}

- (BOOL)_checkParticipantLimitedByScreenTimeDownTime:(id)a3 forCall:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(AddCallParticipantIntentHandler *)self callCenter];
  v9 = [v8 callFilterController];
  v14 = v7;
  v10 = [NSArray arrayWithObjects:&v14 count:1];

  v11 = [v6 provider];

  v12 = [v9 restrictedContacts:v10 callProvider:v11];
  LOBYTE(v6) = [v12 count] != 0;

  return v6;
}

- (void)resolveParticipantsForAddCallParticipant:(id)a3 withCompletion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = objc_alloc_init(NSMutableArray);
  v9 = [v6 participants];
  v10 = [v9 count];

  if (!v10)
  {
    v13 = +[INAddCallParticipantParticipantResolutionResult needsValue];
    goto LABEL_5;
  }

  v11 = [v6 participants];
  v12 = [v11 count];

  if (v12 >= 2)
  {
    v13 = [INAddCallParticipantParticipantResolutionResult unsupportedForReason:2];
LABEL_5:
    v14 = v13;
    goto LABEL_7;
  }

  v15 = [v6 participants];
  v16 = [v15 objectAtIndexedSubscript:0];
  v14 = [(AddCallParticipantIntentHandler *)self runNativeContactResolutionOnParticipant:v16];

LABEL_7:
  [v8 addObject:v14];

  v17 = IntentHandlerDefaultLog();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    sub_10002FB94();
  }

  v7[2](v7, v8);
}

- (id)runNativeContactResolutionOnParticipant:(id)a3
{
  v4 = a3;
  v5 = [[CRRRecommendation alloc] initWithPerson:v4];
  v6 = [(CRRRecommendation *)v5 recommendedResult];
  v7 = [(AddCallParticipantIntentHandler *)self interpretContactResolutionRecommendation:v6 participant:v4];

  return v7;
}

- (id)interpretContactResolutionRecommendation:(id)a3 participant:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[INAddCallParticipantParticipantResolutionResult alloc] initWithPersonResolutionResult:v6];
  v8 = [v6 resolutionResultCode];

  if (!v8 || v8 == 3)
  {
    v14 = [v7 resolvedValue];
    v15 = v14;
    if (v14)
    {
      v16 = v14;
    }

    else
    {
      v16 = [v7 itemToConfirm];
    }

    v17 = v16;

    v18 = [v17 personHandle];
    v19 = [v18 value];
    v20 = [v19 length];

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

  else if (v8 == 1)
  {
    v9 = [v5 personHandle];
    v10 = [v9 label];
    v11 = [v10 length];

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