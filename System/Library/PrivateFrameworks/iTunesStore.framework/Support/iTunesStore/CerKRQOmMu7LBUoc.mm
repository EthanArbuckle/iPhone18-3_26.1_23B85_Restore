@interface CerKRQOmMu7LBUoc
+ (id)scorerWithContext:(id)context;
- (CerKRQOmMu7LBUoc)initWithContext:(id)context;
- (id)VkBISyFszEu5z9lr:(id)eu5z9lr error:(id *)error;
- (id)settingsFromContext:(id)context;
- (void)_safeCallbackWithMessage:(id)message uuid:(id)uuid error:(id)error;
- (void)eVZ8hjC0Tuzwvnqc:(id)tuzwvnqc;
- (void)prepareScoreMessage;
- (void)scoreWithScoreRequest:(id)request completionHandler:(id)handler;
- (void)stop;
@end

@implementation CerKRQOmMu7LBUoc

+ (id)scorerWithContext:(id)context
{
  contextCopy = context;
  v4 = [[CerKRQOmMu7LBUoc alloc] initWithContext:contextCopy];

  return v4;
}

- (CerKRQOmMu7LBUoc)initWithContext:(id)context
{
  contextCopy = context;
  v17.receiver = self;
  v17.super_class = CerKRQOmMu7LBUoc;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1002708EC;
  block[3] = &unk_100333310;
  v5 = [(CerKRQOmMu7LBUoc *)&v17 init];
  v16 = v5;
  if (qword_1003841E0 != -1)
  {
    dispatch_once(&qword_1003841E0, block);
  }

  context = v5->_context;
  v5->_context = contextCopy;
  v7 = contextCopy;

  v8 = dispatch_queue_create("com.apple.libCoreAS.callback", 0);
  callback_queue = v5->_callback_queue;
  v5->_callback_queue = v8;

  v10 = dispatch_queue_create("com.apple.libCoreAS.sid", 0);
  score_id_queue = v5->_score_id_queue;
  v5->_score_id_queue = v10;

  v12 = +[NSMutableDictionary dictionary];
  identifier2UUID = v5->_identifier2UUID;
  v5->_identifier2UUID = v12;

  return v5;
}

- (id)settingsFromContext:(id)context
{
  contextCopy = context;
  v4 = objc_opt_new();
  serverEndpointIdentifier = [contextCopy serverEndpointIdentifier];
  [v4 setEndpointIdentifier:serverEndpointIdentifier];

  [v4 setSettingsType:{objc_msgSend(contextCopy, "eventFrequency") == 2}];
  phoneNumber = [contextCopy phoneNumber];
  [v4 setPhone:phoneNumber];

  emailAddress = [contextCopy emailAddress];
  [v4 setEmail:emailAddress];

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  identities = [contextCopy identities];
  v9 = [identities countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v30;
    do
    {
      v12 = 0;
      do
      {
        if (*v30 != v11)
        {
          objc_enumerationMutation(identities);
        }

        v13 = *(*(&v29 + 1) + 8 * v12);
        fullName = [v13 fullName];
        if (fullName || ([v13 firstName], (fullName = objc_claimAutoreleasedReturnValue()) != 0))
        {
        }

        else
        {
          lastName = [v13 lastName];

          if (!lastName)
          {
            goto LABEL_13;
          }
        }

        if (![v13 type])
        {
          name = [v4 name];
          if (!name || (v16 = name, v17 = [v13 source], v16, v17 == 2))
          {
            v18 = objc_opt_new();
            firstName = [v13 firstName];
            [v18 setFirstName:firstName];

            lastName2 = [v13 lastName];
            [v18 setLastName:lastName2];

            fullName2 = [v13 fullName];
            [v18 setFullName:fullName2];

            [v4 setName:v18];
          }
        }

LABEL_13:
        phoneNumber2 = [v13 phoneNumber];
        if (phoneNumber2)
        {
        }

        else
        {
          emailAddress2 = [v13 emailAddress];

          if (!emailAddress2)
          {
            goto LABEL_21;
          }
        }

        if ([v13 type] == 1)
        {
          phoneNumber3 = [v13 phoneNumber];
          [v4 setPPhone:phoneNumber3];

          emailAddress3 = [v13 emailAddress];
          [v4 setPEmail:emailAddress3];
        }

        else
        {
          if ([v13 type])
          {
            goto LABEL_21;
          }

          emailAddress3 = [v13 phoneNumber];
          [v4 setPhone:emailAddress3];
        }

LABEL_21:
        v12 = v12 + 1;
      }

      while (v10 != v12);
      v27 = [identities countByEnumeratingWithState:&v29 objects:v33 count:16];
      v10 = v27;
    }

    while (v27);
  }

  return v4;
}

- (id)VkBISyFszEu5z9lr:(id)eu5z9lr error:(id *)error
{
  eu5z9lrCopy = eu5z9lr;
  v12 = 0;
  sub_100004FB0([eu5z9lrCopy bytes], objc_msgSend(eu5z9lrCopy, "length"), &v12);
  if (v6)
  {
    v7 = v6;
    v8 = [NSString stringWithUTF8String:kCoreASErrorDomainCADecrypt];
    *error = [NSError errorWithDomain:v8 code:v7 userInfo:0];

    v9 = 0;
  }

  else
  {
    v10 = [NSData alloc];
    v9 = [v10 initWithBytes:v12 length:{objc_msgSend(eu5z9lrCopy, "length")}];
  }

  free(v12);

  return v9;
}

- (void)prepareScoreMessage
{
  self->_prepared = 1;
  v3 = +[ktSeAkOyXkmyQNgH sharedInstance];
  context = [(CerKRQOmMu7LBUoc *)self context];
  v5 = [(CerKRQOmMu7LBUoc *)self settingsFromContext:context];

  score_id_queue = self->_score_id_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100270E94;
  block[3] = &unk_100333360;
  v10 = v3;
  v11 = v5;
  selfCopy = self;
  v7 = v5;
  v8 = v3;
  dispatch_async(score_id_queue, block);
}

- (void)_safeCallbackWithMessage:(id)message uuid:(id)uuid error:(id)error
{
  messageCopy = message;
  uuidCopy = uuid;
  errorCopy = error;
  callback_queue = self->_callback_queue;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1002710EC;
  v15[3] = &unk_100333388;
  v15[4] = self;
  v16 = uuidCopy;
  v17 = messageCopy;
  v18 = errorCopy;
  v12 = errorCopy;
  v13 = messageCopy;
  v14 = uuidCopy;
  dispatch_async(callback_queue, v15);
}

- (void)scoreWithScoreRequest:(id)request completionHandler:(id)handler
{
  requestCopy = request;
  handlerCopy = handler;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
  {
    sub_100271DC4();
  }

  v8 = objc_retainBlock(handlerCopy);
  handler = self->_handler;
  self->_handler = v8;

  if (self->_prepared)
  {
    v10 = +[ktSeAkOyXkmyQNgH sharedInstance];
    score_id_queue = self->_score_id_queue;
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_10027130C;
    v15[3] = &unk_100333360;
    v15[4] = self;
    v16 = requestCopy;
    v17 = v10;
    v12 = v10;
    dispatch_async(score_id_queue, v15);
  }

  else
  {
    v13 = [NSString stringWithUTF8String:kCoreASErrorDomainCA];
    v18 = NSLocalizedDescriptionKey;
    v19 = @"prepareScoreMessage wasn't called prior to scoreMessageWithNonce:completionHandler:";
    v14 = [NSDictionary dictionaryWithObjects:&v19 forKeys:&v18 count:1];
    v12 = [NSError errorWithDomain:v13 code:-21 userInfo:v14];

    [(CerKRQOmMu7LBUoc *)self _safeCallbackWithMessage:0 uuid:0 error:v12];
  }
}

- (void)stop
{
  v3 = [NSString stringWithUTF8String:kCoreASErrorDomainCA];
  v6 = NSLocalizedDescriptionKey;
  v7 = @"Timeout Error";
  v4 = [NSDictionary dictionaryWithObjects:&v7 forKeys:&v6 count:1];
  v5 = [NSError errorWithDomain:v3 code:40000 userInfo:v4];
  [(CerKRQOmMu7LBUoc *)self _safeCallbackWithMessage:0 uuid:0 error:v5];
}

- (void)eVZ8hjC0Tuzwvnqc:(id)tuzwvnqc
{
  logger = self->_logger;
  if (os_log_type_enabled(logger, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, logger, OS_LOG_TYPE_INFO, "confirmFinished", v4, 2u);
  }
}

@end