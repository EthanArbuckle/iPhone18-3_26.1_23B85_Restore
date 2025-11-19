@interface PBEnterpriseInfo
+ (id)sharedInstance;
- (NSString)orgName;
- (PBEnterpriseInfo)init;
- (void)updateOrgName;
@end

@implementation PBEnterpriseInfo

+ (id)sharedInstance
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100005140;
  block[3] = &unk_100030D20;
  block[4] = a1;
  if (qword_100039240 != -1)
  {
    dispatch_once(&qword_100039240, block);
  }

  v2 = qword_100039238;

  return v2;
}

- (PBEnterpriseInfo)init
{
  v12.receiver = self;
  v12.super_class = PBEnterpriseInfo;
  v2 = [(PBEnterpriseInfo *)&v12 init];
  if (v2)
  {
    v3 = dispatch_queue_create("PBEnterpriseInfo-queue", 0);
    queue = v2->_queue;
    v2->_queue = v3;

    [(PBEnterpriseInfo *)v2 updateOrgName];
    out_token = 0;
    objc_initWeak(&location, v2);
    v5 = [MDMManagingOrgInfoChangedNotification cStringUsingEncoding:4];
    v6 = v2->_queue;
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_1000052B4;
    handler[3] = &unk_100030D48;
    objc_copyWeak(&v9, &location);
    notify_register_dispatch(v5, &out_token, v6, handler);
    objc_destroyWeak(&v9);
    objc_destroyWeak(&location);
  }

  return v2;
}

- (NSString)orgName
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_100005424;
  v10 = sub_100005434;
  v11 = 0;
  queue = self->_queue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10000543C;
  v5[3] = &unk_100030D70;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (void)updateOrgName
{
  v3 = +[MCProfileConnection sharedConnection];
  v4 = [v3 managingOrganizationInformation];
  v5 = [v4 objectForKeyedSubscript:kMCCCOrganizationNameKey];
  orgName = self->_orgName;
  self->_orgName = v5;

  v7 = _PBLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v8 = self->_orgName;
    v9 = 138543362;
    v10 = v8;
    _os_log_debug_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "Updated MDM organization name: %{public}@", &v9, 0xCu);
  }
}

@end