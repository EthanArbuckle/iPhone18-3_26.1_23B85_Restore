@interface ICQEngagementPluginProvider
+ (void)performRequestWithObject:(id)object completion:(id)completion;
@end

@implementation ICQEngagementPluginProvider

+ (void)performRequestWithObject:(id)object completion:(id)completion
{
  objectCopy = object;
  completionCopy = completion;
  v7 = _ICQGetLogSystem();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = objectCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Recieved JS object: %@", &buf, 0xCu);
  }

  v8 = _ICQGetLogSystem();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf) = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Checking if object is a dictionary...", &buf, 2u);
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    sub_100001A60();
  }

  v9 = objectCopy;
  v10 = [v9 objectForKeyedSubscript:@"json-payload"];
  v11 = [v10 objectForKeyedSubscript:@"request"];
  v12 = [v11 objectForKeyedSubscript:@"command"];

  v13 = _ICQGetLogSystem();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v12;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "JS Command: %@", &buf, 0xCu);
  }

  if ([v12 isEqualToString:@"fetchStorageLevel"])
  {
    *&buf = 0;
    *(&buf + 1) = &buf;
    v46 = 0x3032000000;
    v47 = sub_10000135C;
    v48 = sub_10000136C;
    v49 = 0;
    *v39 = 0;
    v40 = v39;
    v41 = 0x3032000000;
    v42 = sub_10000135C;
    v43 = sub_10000136C;
    v44 = 0;
    v14 = dispatch_group_create();
    dispatch_group_enter(v14);
    v15 = _ICQGetLogSystem();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *v38 = 0;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Requesting current iCloud and AppleOne storage levels", v38, 2u);
    }

    v16 = +[ICQOfferManager sharedOfferManager];
    v34[0] = _NSConcreteStackBlock;
    v34[1] = 3221225472;
    v34[2] = sub_100001374;
    v34[3] = &unk_100004168;
    p_buf = &buf;
    v37 = v39;
    v17 = v14;
    v35 = v17;
    [v16 getPremiumOfferWithCompletion:v34];

    v18 = dispatch_get_global_queue(2, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000014F4;
    block[3] = &unk_100004190;
    v32 = v39;
    v33 = &buf;
    v31 = completionCopy;
    dispatch_group_notify(v17, v18, block);

    _Block_object_dispose(v39, 8);
    _Block_object_dispose(&buf, 8);
  }

  else if ([v12 isEqualToString:@"fetchCameraCount"])
  {
    *&buf = 0;
    *(&buf + 1) = &buf;
    v46 = 0x3032000000;
    v47 = sub_10000135C;
    v48 = sub_10000136C;
    v49 = 0;
    v19 = dispatch_group_create();
    dispatch_group_enter(v19);
    v20 = _ICQGetLogSystem();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *v39 = 0;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Requesting camera count", v39, 2u);
    }

    v27[0] = _NSConcreteStackBlock;
    v27[1] = 3221225472;
    v27[2] = sub_100001730;
    v27[3] = &unk_1000041B8;
    v29 = &buf;
    v21 = v19;
    v28 = v21;
    [CSFFeatureManager requestFeatureWithId:@"home.cameras" completion:v27];
    v22 = dispatch_get_global_queue(2, 0);
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_1000018A8;
    v24[3] = &unk_1000041E0;
    v26 = &buf;
    v25 = completionCopy;
    dispatch_group_notify(v21, v22, v24);

    _Block_object_dispose(&buf, 8);
  }

  else
  {
    v23 = _ICQGetLogSystem();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Invalid JS command.", &buf, 2u);
    }

    (*(completionCopy + 2))(completionCopy, 0, 0);
  }
}

@end