@interface PBSecurePasteAuthenticationMessageGenerator
+ (id)sharedInstance;
- (BOOL)_isRequester:(id)requester allowedToRequestAuthenticationMessageWithContext:(unint64_t)context;
- (BOOL)validateAuthenticationMessage:(id)message;
- (PBSecurePasteAuthenticationMessageGenerator)init;
- (id)generateAuthenticationMessageWithContext:(unint64_t)context forClientVersionedPID:(int64_t)d requesterAuditTokenInfo:(id)info error:(id *)error;
@end

@implementation PBSecurePasteAuthenticationMessageGenerator

+ (id)sharedInstance
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000EB3C;
  block[3] = &unk_100030D20;
  block[4] = self;
  if (qword_1000392B8 != -1)
  {
    dispatch_once(&qword_1000392B8, block);
  }

  v2 = qword_1000392B0;

  return v2;
}

- (PBSecurePasteAuthenticationMessageGenerator)init
{
  v8.receiver = self;
  v8.super_class = PBSecurePasteAuthenticationMessageGenerator;
  v2 = [(PBSecurePasteAuthenticationMessageGenerator *)&v8 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.Pasteboard.PBServerConnection-authentication-message-queue", 0);
    authenticationMessageQueue = v2->_authenticationMessageQueue;
    v2->_authenticationMessageQueue = v3;

    v5 = objc_opt_new();
    originator = v2->_originator;
    v2->_originator = v5;
  }

  return v2;
}

- (id)generateAuthenticationMessageWithContext:(unint64_t)context forClientVersionedPID:(int64_t)d requesterAuditTokenInfo:(id)info error:(id *)error
{
  infoCopy = info;
  v28 = 0;
  v29 = &v28;
  v30 = 0x3032000000;
  v31 = sub_10000ED90;
  v32 = sub_10000EDA0;
  v33 = 0;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = sub_10000ED90;
  v26 = sub_10000EDA0;
  v27 = 0;
  authenticationMessageQueue = self->_authenticationMessageQueue;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10000EDA8;
  v15[3] = &unk_1000316B0;
  v12 = infoCopy;
  v16 = v12;
  selfCopy = self;
  v18 = &v22;
  v19 = &v28;
  contextCopy = context;
  dCopy = d;
  dispatch_sync(authenticationMessageQueue, v15);
  if (error)
  {
    *error = v23[5];
  }

  v13 = v29[5];

  _Block_object_dispose(&v22, 8);
  _Block_object_dispose(&v28, 8);

  return v13;
}

- (BOOL)validateAuthenticationMessage:(id)message
{
  messageCopy = message;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  authenticationMessageQueue = self->_authenticationMessageQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000F4F4;
  block[3] = &unk_1000316D8;
  block[4] = self;
  v9 = messageCopy;
  v10 = &v11;
  v6 = messageCopy;
  dispatch_sync(authenticationMessageQueue, block);
  LOBYTE(authenticationMessageQueue) = *(v12 + 24);

  _Block_object_dispose(&v11, 8);
  return authenticationMessageQueue;
}

- (BOOL)_isRequester:(id)requester allowedToRequestAuthenticationMessageWithContext:(unint64_t)context
{
  requesterCopy = requester;
  bundleID = [requesterCopy bundleID];
  v7 = [&off_100033B50 objectForKeyedSubscript:bundleID];

  v8 = [NSNumber numberWithUnsignedLongLong:context];
  v9 = [v7 containsObject:v8];

  if ((v9 & 1) == 0)
  {
    v10 = _PBLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      bundleID2 = [requesterCopy bundleID];
      v13 = 138543362;
      v14 = bundleID2;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%{public}@ requested an authentication message with context ID that it's not allowed to request", &v13, 0xCu);
    }
  }

  return v9;
}

@end