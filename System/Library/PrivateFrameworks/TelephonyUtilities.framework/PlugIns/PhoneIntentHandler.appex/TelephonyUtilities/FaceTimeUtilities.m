@interface FaceTimeUtilities
+ (FaceTimeUtilities)sharedInstance;
- (BOOL)isFaceTimeable:(id)a3;
- (FaceTimeUtilities)init;
- (id)canonicalAddressesForAddresses:(id)a3;
- (id)fetchFaceTimeAccountAliases;
- (id)generateFaceTimeLink:(id)a3;
- (void)runIDSQueryForStartCallIntent:(id)a3;
@end

@implementation FaceTimeUtilities

+ (FaceTimeUtilities)sharedInstance
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000236EC;
  block[3] = &unk_10004CC00;
  block[4] = a1;
  if (qword_100057A60 != -1)
  {
    dispatch_once(&qword_100057A60, block);
  }

  v2 = qword_100057A58;

  return v2;
}

- (FaceTimeUtilities)init
{
  v6.receiver = self;
  v6.super_class = FaceTimeUtilities;
  v2 = [(FaceTimeUtilities *)&v6 init];
  if (v2)
  {
    v3 = [[IDSSignInController alloc] initWithQueue:&_dispatch_main_q];
    signInController = v2->_signInController;
    v2->_signInController = v3;
  }

  return v2;
}

- (void)runIDSQueryForStartCallIntent:(id)a3
{
  v3 = [(FaceTimeUtilities *)self canonicalAddressesForAddresses:a3];
  v4 = IntentHandlerDefaultLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "starting dispatch semaphore for TUIDSLookupManagerStatusChangedNotification", buf, 2u);
  }

  v5 = dispatch_semaphore_create(0);
  v6 = +[NSNotificationCenter defaultCenter];
  v7 = TUIDSLookupManagerStatusChangedNotification;
  v8 = +[NSOperationQueue mainQueue];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100023984;
  v15[3] = &unk_10004D158;
  v9 = v5;
  v16 = v9;
  v10 = [v6 addObserverForName:v7 object:0 queue:v8 usingBlock:v15];

  v11 = +[TUIDSLookupManager sharedManager];
  [v11 beginQueryWithDestinations:v3];

  v12 = dispatch_time(0, 3000000000);
  dispatch_semaphore_wait(v9, v12);
  v13 = IntentHandlerDefaultLog();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "ending dispatch semaphore for TUIDSLookupManagerStatusChangedNotification", buf, 2u);
  }

  v14 = +[NSNotificationCenter defaultCenter];
  [v14 removeObserver:v10];
}

- (id)canonicalAddressesForAddresses:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(NSMutableSet);
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v16 objects:v22 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v17;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        v11 = TUCopyIDSCanonicalAddressForDestinationID();
        [v4 addObject:v11];

        v12 = IntentHandlerDefaultLog();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          v13 = TUCopyIDSCanonicalAddressForDestinationID();
          *buf = 138412290;
          v21 = v13;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "canonical address: %@", buf, 0xCu);
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v16 objects:v22 count:16];
    }

    while (v7);
  }

  v14 = [v4 copy];

  return v14;
}

- (BOOL)isFaceTimeable:(id)a3
{
  v3 = [(FaceTimeUtilities *)self canonicalAddressesForAddresses:a3];
  v4 = [v3 allObjects];
  v5 = +[TUIDSLookupManager sharedManager];
  if ([v5 isFaceTimeAudioAvailableForAnyDestinationInDestinations:v4])
  {
    v6 = 1;
  }

  else
  {
    v7 = +[TUIDSLookupManager sharedManager];
    if ([v7 isFaceTimeVideoAvailableForAnyDestinationInDestinations:v4])
    {
      v6 = 1;
    }

    else
    {
      v8 = +[TUIDSLookupManager sharedManager];
      v6 = [v8 isFaceTimeMultiwayAvailableForAnyDestinationInDestinations:v4];
    }
  }

  return v6;
}

- (id)generateFaceTimeLink:(id)a3
{
  v3 = a3;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = sub_100023DA4;
  v21 = sub_100023DB4;
  v22 = 0;
  v4 = dispatch_semaphore_create(0);
  v5 = +[TUCallCenter sharedInstance];
  v6 = [v5 conversationManager];
  v11 = _NSConcreteStackBlock;
  v12 = 3221225472;
  v13 = sub_100023DBC;
  v14 = &unk_10004D180;
  v16 = &v17;
  v7 = v4;
  v15 = v7;
  [v6 generateLinkWithInvitedMemberHandles:v3 completionHandler:&v11];

  v8 = dispatch_time(0, 10000000000);
  dispatch_semaphore_wait(v7, v8);
  v9 = [v18[5] copy];

  _Block_object_dispose(&v17, 8);

  return v9;
}

- (id)fetchFaceTimeAccountAliases
{
  v2 = [IDSService alloc];
  v3 = [v2 initWithService:IDSServiceNameFaceTime];
  v4 = objc_alloc_init(NSMutableSet);
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [v3 accounts];
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v13 + 1) + 8 * i) vettedAliases];
        [v4 addObjectsFromArray:v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  v11 = IntentHandlerDefaultLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    sub_1000309D4(v4, v11);
  }

  return v4;
}

@end