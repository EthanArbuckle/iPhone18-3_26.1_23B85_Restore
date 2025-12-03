@interface JoinCallIntentHandler
- (JoinCallIntentHandler)init;
- (JoinCallIntentHandler)initWithCallCenter:(id)center contactsDataSource:(id)source;
- (id)_responseForMatchingConversation:(id)conversation intent:(id)intent;
- (void)confirmJoinCall:(id)call completion:(id)completion;
- (void)handleJoinCall:(id)call completion:(id)completion;
- (void)resolveGroupConversationForJoinCall:(id)call withCompletion:(id)completion;
@end

@implementation JoinCallIntentHandler

- (JoinCallIntentHandler)init
{
  v3 = [NSString stringWithFormat:@"com.apple.TelephonyUtilities.PhoneIntentHandler.%@", objc_opt_class()];
  v4 = dispatch_queue_create([v3 UTF8String], 0);

  v5 = [TUCallCenter callCenterWithQueue:v4];
  contactStore = [v5 contactStore];
  v7 = [(JoinCallIntentHandler *)self initWithCallCenter:v5 contactsDataSource:contactStore];

  return v7;
}

- (JoinCallIntentHandler)initWithCallCenter:(id)center contactsDataSource:(id)source
{
  centerCopy = center;
  sourceCopy = source;
  v12.receiver = self;
  v12.super_class = JoinCallIntentHandler;
  v9 = [(JoinCallIntentHandler *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_callCenter, center);
    objc_storeStrong(&v10->_contactsDataSource, source);
  }

  return v10;
}

- (void)handleJoinCall:(id)call completion:(id)completion
{
  callCopy = call;
  completionCopy = completion;
  v8 = IntentHandlerDefaultLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = callCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Handling join call intent: %@", &buf, 0xCu);
  }

  groupConversation = [callCopy groupConversation];
  conversationId = [groupConversation conversationId];

  *&buf = 0;
  *(&buf + 1) = &buf;
  v24 = 0x3032000000;
  v25 = sub_100021958;
  v26 = sub_100021968;
  v27 = 0;
  callCenter = [(JoinCallIntentHandler *)self callCenter];
  queue = [callCenter queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100021970;
  block[3] = &unk_10004D130;
  v13 = conversationId;
  v20 = v13;
  selfCopy = self;
  p_buf = &buf;
  dispatch_sync(queue, block);

  v14 = *(*(&buf + 1) + 40);
  if (v14)
  {
    v15 = [(JoinCallIntentHandler *)self _responseForMatchingConversation:v14 intent:callCopy];
  }

  else
  {
    v16 = IntentHandlerDefaultLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *v18 = 0;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "No matching conversation. Returning failure.", v18, 2u);
    }

    v15 = [[INJoinCallIntentResponse alloc] initWithCode:5 userActivity:0];
  }

  v17 = v15;
  completionCopy[2](completionCopy, v15);

  _Block_object_dispose(&buf, 8);
}

- (id)_responseForMatchingConversation:(id)conversation intent:(id)intent
{
  intentCopy = intent;
  conversationCopy = conversation;
  v7 = [[TUJoinConversationRequest alloc] initWithConversation:conversationCopy originatingUIType:37];

  [v7 setVideoEnabled:1];
  v8 = [NSUserActivity makeActivityWithIntent:intentCopy joinRequestAttachment:v7];

  v9 = IntentHandlerDefaultLog();
  v10 = v9;
  if (v8)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Attaching TUJoinConversationRequest to UserActivity", v16, 2u);
    }

    v11 = [INJoinCallIntentResponse alloc];
    v12 = 2;
    v13 = v8;
  }

  else
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_10003094C(v10);
    }

    v11 = [INJoinCallIntentResponse alloc];
    v12 = 5;
    v13 = 0;
  }

  v14 = [v11 initWithCode:v12 userActivity:v13];

  return v14;
}

- (void)confirmJoinCall:(id)call completion:(id)completion
{
  callCopy = call;
  completionCopy = completion;
  v7 = IntentHandlerDefaultLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = callCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Confirming join call intent: %@", &v9, 0xCu);
  }

  v8 = [[INJoinCallIntentResponse alloc] initWithCode:1 userActivity:0];
  completionCopy[2](completionCopy, v8);
}

- (void)resolveGroupConversationForJoinCall:(id)call withCompletion:(id)completion
{
  callCopy = call;
  completionCopy = completion;
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = sub_100021958;
  v28 = sub_100021968;
  v29 = 0;
  v8 = IntentHandlerDefaultLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v31 = callCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Resolving join call intent: %@", buf, 0xCu);
  }

  groupConversation = [callCopy groupConversation];
  conversationId = [groupConversation conversationId];
  v11 = [conversationId length] == 0;

  if (v11)
  {
    callCenter = [(JoinCallIntentHandler *)self callCenter];
    queue = [callCenter queue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000220C0;
    block[3] = &unk_10004D130;
    v21 = callCopy;
    selfCopy = self;
    v23 = &v24;
    dispatch_sync(queue, block);

    groupConversation2 = v21;
  }

  else
  {
    v12 = IntentHandlerDefaultLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "INCallGroupConversation already resolved.", buf, 2u);
    }

    groupConversation2 = [callCopy groupConversation];
    v14 = [INCallGroupConversationResolutionResult successWithResolvedCallGroupConversation:groupConversation2];
    v15 = v25[5];
    v25[5] = v14;
  }

  v18 = IntentHandlerDefaultLog();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v19 = v25[5];
    *buf = 138412290;
    v31 = v19;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Calling completion on resolution result: %@", buf, 0xCu);
  }

  completionCopy[2](completionCopy, v25[5]);
  _Block_object_dispose(&v24, 8);
}

@end