@interface STConcreteFamilyCirclePrimitives
- (STFamilyCirclePrimitivesDelegate)delegate;
- (void)_delegateFetchedFamilyMembers;
- (void)_familyCircleChangedWithNotification:(id)notification;
- (void)_familyCircleDidChange;
- (void)_iCloudAccountDidChange;
- (void)_startObservingFamilyChangeNotificationsOnQueue:(id)queue;
- (void)_stopObservingFamilyChangeNotifications;
- (void)dealloc;
- (void)fetchFamilyMembersForcingCacheRefresh:(BOOL)refresh completionHandler:(id)handler;
@end

@implementation STConcreteFamilyCirclePrimitives

- (void)dealloc
{
  [(STConcreteFamilyCirclePrimitives *)self _stopObservingFamilyChangeNotifications];
  v3.receiver = self;
  v3.super_class = STConcreteFamilyCirclePrimitives;
  [(STConcreteFamilyCirclePrimitives *)&v3 dealloc];
}

- (void)_startObservingFamilyChangeNotificationsOnQueue:(id)queue
{
  queueCopy = queue;
  v5 = +[STLog familyMessaging];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446210;
    v31 = "[STConcreteFamilyCirclePrimitives _startObservingFamilyChangeNotificationsOnQueue:]";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[v2] %{public}s: \nObserving family change notifications.", buf, 0xCu);
  }

  objc_initWeak(&location, self);
  uTF8String = [DMFiCloudAccountDidChangeDarwinNotification UTF8String];
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_1000155D0;
  handler[3] = &unk_1001A3090;
  objc_copyWeak(&v28, &location);
  if (notify_register_dispatch(uTF8String, &self->_iCloudAccountChangedToken, queueCopy, handler))
  {
    v7 = +[STLog familyCirclePrimitives];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1001126D4(v7, v8, v9, v10, v11, v12, v13, v14);
    }
  }

  uTF8String2 = [FAFamilyUpdateNotification UTF8String];
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_100015610;
  v25[3] = &unk_1001A3090;
  objc_copyWeak(&v26, &location);
  if (notify_register_dispatch(uTF8String2, &self->_familyChangedToken, queueCopy, v25))
  {
    v16 = +[STLog familyCirclePrimitives];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      sub_10011274C(v16, v17, v18, v19, v20, v21, v22, v23);
    }
  }

  v24 = +[STLog familyMessaging];
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446210;
    v31 = "[STConcreteFamilyCirclePrimitives _startObservingFamilyChangeNotificationsOnQueue:]";
    _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "[v2] %{public}s: \nExiting Family Change Notifications Queue", buf, 0xCu);
  }

  objc_destroyWeak(&v26);
  objc_destroyWeak(&v28);
  objc_destroyWeak(&location);
}

- (void)_stopObservingFamilyChangeNotifications
{
  v3 = +[STLog familyMessaging];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v21 = 136446210;
    v22 = "[STConcreteFamilyCirclePrimitives _stopObservingFamilyChangeNotifications]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[v2] %{public}s", &v21, 0xCu);
  }

  if (notify_cancel(self->_iCloudAccountChangedToken))
  {
    v4 = +[STLog familyCirclePrimitives];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1001127C4(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  if (notify_cancel(self->_familyChangedToken))
  {
    v12 = +[STLog familyCirclePrimitives];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_10011283C(v12, v13, v14, v15, v16, v17, v18, v19);
    }
  }

  v20 = +[STLog familyMessaging];
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    v21 = 136446210;
    v22 = "[STConcreteFamilyCirclePrimitives _stopObservingFamilyChangeNotifications]";
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "[v2] %{public}s: \nexiting", &v21, 0xCu);
  }
}

- (void)_familyCircleChangedWithNotification:(id)notification
{
  v4 = +[STLog familyMessaging];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136446210;
    v6 = "[STConcreteFamilyCirclePrimitives _familyCircleChangedWithNotification:]";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[v2] %{public}s: \nFamily cricle changed with notification.", &v5, 0xCu);
  }

  [(STConcreteFamilyCirclePrimitives *)self _familyCircleDidChange];
}

- (void)_familyCircleDidChange
{
  v3 = +[STLog familyMessaging];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136446210;
    v5 = "[STConcreteFamilyCirclePrimitives _familyCircleDidChange]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[v2] %{public}s: \nFamily circle did change.", &v4, 0xCu);
  }

  [(STConcreteFamilyCirclePrimitives *)self _delegateFetchedFamilyMembers];
}

- (void)_iCloudAccountDidChange
{
  v3 = +[STLog familyMessaging];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136446210;
    v5 = "[STConcreteFamilyCirclePrimitives _iCloudAccountDidChange]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[v2] %{public}s: \niCloud account did change.", &v4, 0xCu);
  }

  [(STConcreteFamilyCirclePrimitives *)self _delegateFetchedFamilyMembers];
}

- (void)_delegateFetchedFamilyMembers
{
  v3 = +[STLog familyMessaging];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446210;
    v6 = "[STConcreteFamilyCirclePrimitives _delegateFetchedFamilyMembers]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[v2] %{public}s: \nDelegate fetched family members.", buf, 0xCu);
  }

  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100015B14;
  v4[3] = &unk_1001A30B8;
  v4[4] = self;
  [(STConcreteFamilyCirclePrimitives *)self fetchFamilyMembersForcingCacheRefresh:0 completionHandler:v4];
}

- (void)fetchFamilyMembersForcingCacheRefresh:(BOOL)refresh completionHandler:(id)handler
{
  refreshCopy = refresh;
  handlerCopy = handler;
  v6 = +[STLog familyMessaging];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = "NO";
    if (refreshCopy)
    {
      v7 = "YES";
    }

    *buf = 136446466;
    v13 = "[STConcreteFamilyCirclePrimitives fetchFamilyMembersForcingCacheRefresh:completionHandler:]";
    v14 = 2082;
    v15 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[v2] %{public}s: \nforceCacheRefresh: %{public}s", buf, 0x16u);
  }

  v8 = objc_opt_new();
  [v8 setCachePolicy:1];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100015D80;
  v10[3] = &unk_1001A30E0;
  v11 = handlerCopy;
  v9 = handlerCopy;
  [v8 startRequestWithCompletionHandler:v10];
}

- (STFamilyCirclePrimitivesDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->delegate);

  return WeakRetained;
}

@end