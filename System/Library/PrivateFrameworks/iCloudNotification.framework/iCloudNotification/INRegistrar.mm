@interface INRegistrar
- (INRegistrar)init;
- (void)_handleRegistrationResponse:(id)response forRequest:(id)request digest:(id)digest account:(id)account completion:(id)completion;
- (void)_handleUnregistrationResponse:(id)response account:(id)account completion:(id)completion;
- (void)registerForLoggedOutPushWithToken:(id)token reason:(unint64_t)reason completion:(id)completion;
- (void)registerForPushNotificationsWithAccount:(id)account pushToken:(id)token reason:(unint64_t)reason completion:(id)completion;
- (void)unregisterFromLoggedOutPushNotificationsWithToken:(NSData *)token reason:(unint64_t)reason completionHandler:(id)handler;
- (void)unregisterFromPushNotificationsForAccount:(id)account pushToken:(id)token completion:(id)completion;
@end

@implementation INRegistrar

- (INRegistrar)init
{
  v16.receiver = self;
  v16.super_class = INRegistrar;
  v2 = [(INRegistrar *)&v16 init];
  if (v2)
  {
    v3 = objc_alloc_init(NSMutableDictionary);
    inflightRegistrationRequestsByAccountID = v2->_inflightRegistrationRequestsByAccountID;
    v2->_inflightRegistrationRequestsByAccountID = v3;

    v5 = objc_alloc_init(NSMutableArray);
    unregisteredAccountIDs = v2->_unregisteredAccountIDs;
    v2->_unregisteredAccountIDs = v5;

    v7 = objc_alloc_init(NSLock);
    inflightRegistrationLock = v2->_inflightRegistrationLock;
    v2->_inflightRegistrationLock = v7;

    v9 = objc_alloc_init(NSLock);
    unregisteredAcountsLock = v2->_unregisteredAcountsLock;
    v2->_unregisteredAcountsLock = v9;

    v11 = +[INRegistrationDigestCache sharedInstance];
    registrationDigestCache = v2->_registrationDigestCache;
    v2->_registrationDigestCache = v11;

    v13 = +[AAURLSession sharedSessionWithNoUrlCache];
    aaUrlSession = v2->_aaUrlSession;
    v2->_aaUrlSession = v13;
  }

  return v2;
}

- (void)registerForPushNotificationsWithAccount:(id)account pushToken:(id)token reason:(unint64_t)reason completion:(id)completion
{
  accountCopy = account;
  tokenCopy = token;
  completionCopy = completion;
  v50 = 0;
  v51 = &v50;
  v52 = 0x3032000000;
  v53 = sub_10000E4D8;
  v54 = sub_10000E4E8;
  v55 = os_transaction_create();
  v13 = [INRegistrationRequest bodyParameterValueForRegistrationReason:reason];
  v14 = _INLogSystem();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v57 = accountCopy;
    v58 = 2112;
    v59 = v13;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Registration request for account %@ has reason code %@", buf, 0x16u);
  }

  [(NSLock *)self->_unregisteredAcountsLock lock];
  unregisteredAccountIDs = self->_unregisteredAccountIDs;
  identifier = [(__CFString *)accountCopy identifier];
  LODWORD(unregisteredAccountIDs) = [(NSMutableArray *)unregisteredAccountIDs containsObject:identifier];

  [(NSLock *)self->_unregisteredAcountsLock unlock];
  if (unregisteredAccountIDs)
  {
    (*(completionCopy + 2))(completionCopy, 2, 0, 0);
    v17 = _INLogSystem();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Requested was ignored as it was for a removed account.", buf, 2u);
    }

    v18 = v51[5];
    v51[5] = 0;
    goto LABEL_39;
  }

  v19 = [(INRequest *)[INRegistrationRequest alloc] initWithAccount:accountCopy pushToken:tokenCopy];
  v18 = v19;
  if (v19)
  {
    [(INRegistrationRequest *)v19 setRegistrationReason:reason];
    v43 = [[INRegistrationDigest alloc] initWithRegistrationRequest:v18];
    [(NSLock *)self->_inflightRegistrationLock lock];
    inflightRegistrationRequestsByAccountID = self->_inflightRegistrationRequestsByAccountID;
    identifier2 = [(__CFString *)accountCopy identifier];
    v22 = [(NSMutableDictionary *)inflightRegistrationRequestsByAccountID objectForKey:identifier2];

    if (v22)
    {
      v23 = _INLogSystem();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
      {
        sub_100036A84();
      }

      v24 = [[INRegistrationDigest alloc] initWithRegistrationRequest:v22];
      if ([(INRegistrationDigest *)v24 isEqual:v43])
      {
        v25 = _INLogSystem();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
        {
          sub_100036AB8();
        }

LABEL_15:
        v26 = 0;
LABEL_33:
        [(NSLock *)self->_inflightRegistrationLock unlock];
        if ((v26 & 1) == 0)
        {
          v35 = _INLogSystem();
          if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
          {
            sub_100036BC8();
          }

          if (completionCopy)
          {
            (*(completionCopy + 2))(completionCopy, 2, 0, 0);
            v36 = v51[5];
            v51[5] = 0;
          }
        }

        goto LABEL_39;
      }

      v30 = _INLogSystem();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "The request being prepared looks new!", buf, 2u);
      }
    }

    else
    {
      v29 = _INLogSystem();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
      {
        sub_100036AEC();
      }

      if (reason != 5 && reason)
      {
        v37 = _INLogSystem();
        if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
        {
          sub_100036B94();
        }

        v38 = [(INRegistrationDigestCache *)self->_registrationDigestCache registrationDigestForAccount:accountCopy withError:0];
        v39 = v38;
        if (v38)
        {
          v40 = [v38 isEqual:v43];
          v41 = _INLogSystem();
          if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
          {
            v42 = @"YES";
            if (v40)
            {
              v42 = @"NO";
            }

            *buf = 138412290;
            v57 = v42;
            _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "Previous registration digest found. Is it different? %@", buf, 0xCu);
          }

          if (v40)
          {
            goto LABEL_15;
          }

LABEL_30:
          v31 = _INLogSystem();
          if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v57 = v18;
            _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "Sending registration request %@", buf, 0xCu);
          }

          v32 = self->_inflightRegistrationRequestsByAccountID;
          identifier3 = [(__CFString *)accountCopy identifier];
          [(NSMutableDictionary *)v32 setObject:v18 forKey:identifier3];

          aaUrlSession = self->_aaUrlSession;
          v45[0] = _NSConcreteStackBlock;
          v45[1] = 3221225472;
          v45[2] = sub_10000E4F0;
          v45[3] = &unk_1000556F8;
          v45[4] = self;
          v46 = v43;
          v47 = accountCopy;
          v48 = completionCopy;
          v49 = &v50;
          [(INRegistrationRequest *)v18 performRequestWithSession:aaUrlSession withHandler:v45];

          v26 = 1;
          goto LABEL_33;
        }

        v24 = _INLogSystem();
        if (os_log_type_enabled(&v24->super, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, &v24->super, OS_LOG_TYPE_DEFAULT, "No previous registration digest was found.", buf, 2u);
        }
      }

      else
      {
        v24 = _INLogSystem();
        if (os_log_type_enabled(&v24->super, OS_LOG_TYPE_DEBUG))
        {
          sub_100036B20();
        }
      }
    }

    goto LABEL_30;
  }

  v27 = _INLogSystem();
  if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
  {
    sub_100036BFC();
  }

  if (completionCopy)
  {
    v28 = INCreateError();
    (*(completionCopy + 2))(completionCopy, 0, 0, v28);

    v44 = v51[5];
    v51[5] = 0;
  }

LABEL_39:

  _Block_object_dispose(&v50, 8);
}

- (void)_handleRegistrationResponse:(id)response forRequest:(id)request digest:(id)digest account:(id)account completion:(id)completion
{
  responseCopy = response;
  digestCopy = digest;
  accountCopy = account;
  completionCopy = completion;
  inflightRegistrationLock = self->_inflightRegistrationLock;
  requestCopy = request;
  [(NSLock *)inflightRegistrationLock lock];
  inflightRegistrationRequestsByAccountID = self->_inflightRegistrationRequestsByAccountID;
  identifier = [accountCopy identifier];
  v20 = [(NSMutableDictionary *)inflightRegistrationRequestsByAccountID objectForKey:identifier];

  if (v20 != requestCopy)
  {
    v21 = _INLogSystem();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "This response is for a stale request. We have another one in-flight.", buf, 2u);
    }

    v22 = 0;
    timeToLive = 0;
    v24 = 2;
    goto LABEL_14;
  }

  v25 = self->_inflightRegistrationRequestsByAccountID;
  identifier2 = [accountCopy identifier];
  [(NSMutableDictionary *)v25 removeObjectForKey:identifier2];

  if (!responseCopy || [responseCopy isResponseEmpty])
  {
    v27 = _INLogSystem();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      sub_100036DC0(responseCopy);
    }

LABEL_13:

    v22 = INCreateError();
    timeToLive = 0;
    v24 = 0;
    goto LABEL_14;
  }

  error = [responseCopy error];

  if (error)
  {
    v27 = _INLogSystem();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      sub_100036CCC(responseCopy);
    }

    goto LABEL_13;
  }

  if (os_variant_has_internal_diagnostics())
  {
    +[INDiagnostics setLastRegistrationSuccess];
  }

  timeToLive = [responseCopy timeToLive];
  registrationDigestCache = self->_registrationDigestCache;
  v33 = 0;
  v30 = [(INRegistrationDigestCache *)registrationDigestCache updateRegistrationDigest:digestCopy forAccount:accountCopy withError:&v33];
  v31 = v33;
  if ((v30 & 1) == 0)
  {
    v32 = _INLogSystem();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      sub_100036D50();
    }
  }

  v22 = 0;
  v24 = 1;
LABEL_14:
  [(NSLock *)self->_inflightRegistrationLock unlock];
  if (completionCopy)
  {
    completionCopy[2](completionCopy, v24, timeToLive, v22);
  }
}

- (void)unregisterFromPushNotificationsForAccount:(id)account pushToken:(id)token completion:(id)completion
{
  accountCopy = account;
  completionCopy = completion;
  tokenCopy = token;
  v11 = [(INRequest *)[INUnregistrationRequest alloc] initWithAccount:accountCopy pushToken:tokenCopy];

  v12 = _INLogSystem();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v25 = v11;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Starting unregistration request %@", buf, 0xCu);
  }

  if (v11)
  {
    [(NSLock *)self->_unregisteredAcountsLock lock];
    v13 = _INLogSystem();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      identifier = [accountCopy identifier];
      *buf = 138412290;
      v25 = identifier;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Adding %@ to unregistered account IDs.", buf, 0xCu);
    }

    unregisteredAccountIDs = self->_unregisteredAccountIDs;
    identifier2 = [accountCopy identifier];
    [(NSMutableArray *)unregisteredAccountIDs addObject:identifier2];

    [(NSLock *)self->_unregisteredAcountsLock unlock];
    v17 = _INLogSystem();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Sending unregistration request.", buf, 2u);
    }

    aaUrlSession = self->_aaUrlSession;
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_10000EC60;
    v21[3] = &unk_100055720;
    v21[4] = self;
    v22 = accountCopy;
    v23 = completionCopy;
    [(INUnregistrationRequest *)v11 performRequestWithSession:aaUrlSession withHandler:v21];
  }

  else
  {
    v19 = _INLogSystem();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      sub_100036E44();
    }

    v20 = INCreateError();
    (*(completionCopy + 2))(completionCopy, 0, v20);
  }
}

- (void)_handleUnregistrationResponse:(id)response account:(id)account completion:(id)completion
{
  responseCopy = response;
  accountCopy = account;
  completionCopy = completion;
  if (responseCopy)
  {
    error = [responseCopy error];

    if (!error)
    {
      registrationDigestCache = self->_registrationDigestCache;
      v17 = 0;
      v15 = [(INRegistrationDigestCache *)registrationDigestCache removeRegistrationDigestForAccount:accountCopy withError:&v17];
      v13 = v17;
      if ((v15 & 1) == 0)
      {
        v16 = _INLogSystem();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          sub_100036F28();
        }
      }

      if (completionCopy)
      {
        completionCopy[2](completionCopy, 1, 0);
      }

      goto LABEL_13;
    }
  }

  v12 = _INLogSystem();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    sub_100036F98(responseCopy);
  }

  if (completionCopy)
  {
    v13 = INCreateError();
    (completionCopy)[2](completionCopy, 0, v13);
LABEL_13:
  }
}

- (void)registerForLoggedOutPushWithToken:(id)token reason:(unint64_t)reason completion:(id)completion
{
  v9 = sub_100022CF0(&qword_1000632D0, &qword_10004DAC0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v22 - v11;
  v13 = _Block_copy(completion);
  tokenCopy = token;
  selfCopy = self;
  v16 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v18 = v17;

  v19 = swift_allocObject();
  *(v19 + 16) = v13;
  v20 = type metadata accessor for TaskPriority();
  (*(*(v20 - 8) + 56))(v12, 1, 1, v20);
  v21 = swift_allocObject();
  v21[2] = 0;
  v21[3] = 0;
  v21[4] = v16;
  v21[5] = v18;
  v21[6] = reason;
  v21[7] = selfCopy;
  v21[8] = sub_1000334C8;
  v21[9] = v19;
  sub_100020818(0, 0, v12, &unk_10004E2E0, v21);
}

- (void)unregisterFromLoggedOutPushNotificationsWithToken:(NSData *)token reason:(unint64_t)reason completionHandler:(id)handler
{
  v9 = sub_100022CF0(&qword_1000632D0, &qword_10004DAC0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v20 - v11;
  v13 = _Block_copy(handler);
  v14 = swift_allocObject();
  v14[2] = token;
  v14[3] = reason;
  v14[4] = v13;
  v14[5] = self;
  v15 = type metadata accessor for TaskPriority();
  (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_10004E2A0;
  v16[5] = v14;
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_10004E2B0;
  v17[5] = v16;
  tokenCopy = token;
  selfCopy = self;
  sub_10002FEE4(0, 0, v12, &unk_10004E2C0, v17);
}

@end