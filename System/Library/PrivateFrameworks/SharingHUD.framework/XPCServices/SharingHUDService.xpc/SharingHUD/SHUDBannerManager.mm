@interface SHUDBannerManager
- (SHUDBannerManager)init;
- (void)cancelDismissalTimer;
- (void)dismissBanner;
- (void)postBannerWithModel:(id)model;
- (void)setUpDismissalTimer;
@end

@implementation SHUDBannerManager

- (SHUDBannerManager)init
{
  v8.receiver = self;
  v8.super_class = SHUDBannerManager;
  v2 = [(SHUDBannerManager *)&v8 init];
  v3 = [BNBannerSource bannerSourceForDestination:0 forRequesterIdentifier:@"com.apple.Sharing.SharingHUDService"];
  bannerSource = v2->_bannerSource;
  v2->_bannerSource = v3;

  v9 = kSBUIPresentableSystemApertureSupportingUserInfoKey;
  v10 = &__kCFBooleanTrue;
  v5 = [NSDictionary dictionaryWithObjects:&v10 forKeys:&v9 count:1];
  bannerUserInfo = v2->_bannerUserInfo;
  v2->_bannerUserInfo = v5;

  return v2;
}

- (void)postBannerWithModel:(id)model
{
  modelCopy = model;
  if ([modelCopy type])
  {
    goto LABEL_5;
  }

  bannerPresentable = [(SHUDBannerManager *)self bannerPresentable];
  model = [bannerPresentable model];
  if ([model type] || objc_msgSend(modelCopy, "needsUpdate"))
  {

LABEL_5:
    v7 = sharingHUDLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = +[SFHUDBannerModel descriptionForType:](SFHUDBannerModel, "descriptionForType:", [modelCopy type]);
      *buf = 138412290;
      v57 = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Showing banner of type %@", buf, 0xCu);
    }

    bannerViewController8 = [[SHUDBannerPresentable alloc] initWithModel:modelCopy];
    objc_initWeak(&location, self);
    [(SHUDBannerManager *)self setBannerDismissed:0];
    type = [modelCopy type];
    if (type)
    {
      if (type == 1)
      {
        v51[0] = _NSConcreteStackBlock;
        v51[1] = 3221225472;
        v51[2] = sub_1000021AC;
        v51[3] = &unk_100014408;
        objc_copyWeak(&v52, &location);
        bannerViewController = [(SHUDBannerPresentable *)bannerViewController8 bannerViewController];
        [bannerViewController setViewDidAppearHandler:v51];

        objc_destroyWeak(&v52);
      }

      else
      {
        v13 = sharingHUDLog();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          v14 = +[SFHUDBannerModel descriptionForType:](SFHUDBannerModel, "descriptionForType:", [modelCopy type]);
          *buf = 138412290;
          v57 = v14;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Banner type is not handled: %@", buf, 0xCu);
        }
      }
    }

    else if (([modelCopy needsUpdate] & 1) == 0)
    {
      v53[0] = _NSConcreteStackBlock;
      v53[1] = 3221225472;
      v53[2] = sub_10000216C;
      v53[3] = &unk_100014408;
      objc_copyWeak(&v54, &location);
      bannerViewController2 = [(SHUDBannerPresentable *)bannerViewController8 bannerViewController];
      [bannerViewController2 setViewDidAppearHandler:v53];

      objc_destroyWeak(&v54);
    }

    bannerViewController3 = [(SHUDBannerPresentable *)bannerViewController8 bannerViewController];
    [bannerViewController3 setViewDidDisappearHandler:&stru_100014448];

    v48[0] = _NSConcreteStackBlock;
    v48[1] = 3221225472;
    v48[2] = sub_100002254;
    v48[3] = &unk_100014470;
    objc_copyWeak(&v50, &location);
    v16 = modelCopy;
    v49 = v16;
    bannerViewController4 = [(SHUDBannerPresentable *)bannerViewController8 bannerViewController];
    [bannerViewController4 setButtonTapped:v48];

    v45[0] = _NSConcreteStackBlock;
    v45[1] = 3221225472;
    v45[2] = sub_1000022E4;
    v45[3] = &unk_1000144C0;
    v45[4] = self;
    objc_copyWeak(&v47, &location);
    v18 = v16;
    v46 = v18;
    [(SHUDBannerPresentable *)bannerViewController8 setBannerDidDisappearHandler:v45];
    bannerViewController5 = [(SHUDBannerPresentable *)bannerViewController8 bannerViewController];
    [bannerViewController5 loadViewIfNeeded];

    v20 = +[UIScreen mainScreen];
    [v20 bounds];
    v22 = v21;

    bannerViewController6 = [(SHUDBannerPresentable *)bannerViewController8 bannerViewController];
    contentSizeProvidingView = [bannerViewController6 contentSizeProvidingView];
    [contentSizeProvidingView intrinsicContentSize];
    v26 = v25;
    v28 = v27;

    bannerViewController7 = [(SHUDBannerPresentable *)bannerViewController8 bannerViewController];
    v30 = bannerViewController7;
    v31 = v22 * 0.8;
    if (v22 * 0.8 <= v26)
    {
      v31 = v26;
    }

    [bannerViewController7 setPreferredContentSize:{v31, v28}];

    [(SHUDBannerManager *)self setBannerPresentable:bannerViewController8];
    bannerSource = [(SHUDBannerManager *)self bannerSource];
    bannerUserInfo = [(SHUDBannerManager *)self bannerUserInfo];
    v44 = 0;
    [bannerSource postPresentable:bannerViewController8 options:1 userInfo:bannerUserInfo error:&v44];
    v34 = v44;

    if (v34)
    {
      v35 = sharingHUDLog();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
      {
        v36 = +[SFHUDBannerModel descriptionForType:](SFHUDBannerModel, "descriptionForType:", [v18 type]);
        sub_100009294(v36, v34, buf, v35);
      }
    }

    objc_destroyWeak(&v47);
    objc_destroyWeak(&v50);
    objc_destroyWeak(&location);
    goto LABEL_22;
  }

  bannerPresentable2 = [(SHUDBannerManager *)self bannerPresentable];
  model2 = [bannerPresentable2 model];
  needsUpdate = [model2 needsUpdate];

  if (!needsUpdate)
  {
    goto LABEL_5;
  }

  v40 = sharingHUDLog();
  if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "Updating paired unlock banner", buf, 2u);
  }

  bannerPresentable3 = [(SHUDBannerManager *)self bannerPresentable];
  bannerViewController8 = [bannerPresentable3 bannerViewController];

  [(SHUDBannerPresentable *)bannerViewController8 setNeedsUpdate:0];
  bannerPresentable4 = [(SHUDBannerManager *)self bannerPresentable];
  bannerViewController9 = [bannerPresentable4 bannerViewController];
  [bannerViewController9 updateUI];

  [(SHUDBannerManager *)self setUpDismissalTimer];
LABEL_22:
}

- (void)dismissBanner
{
  bannerPresentable = [(SHUDBannerManager *)self bannerPresentable];
  model = [bannerPresentable model];
  type = [model type];

  v6 = sharingHUDLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [SFHUDBannerModel descriptionForType:type];
    *buf = 138412290;
    v15 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Dismissing banner of type %@", buf, 0xCu);
  }

  [(SHUDBannerManager *)self setBannerDismissed:1];
  bannerSource = [(SHUDBannerManager *)self bannerSource];
  v9 = +[SHUDBannerPresentable requestIdentifier];
  v13 = 0;
  v10 = [bannerSource revokePresentableWithRequestIdentifier:v9 reason:@"SHUDBannerDismissedReason" animated:1 userInfo:&__NSDictionary0__struct error:&v13];
  v11 = v13;

  if (v11)
  {
    v12 = sharingHUDLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_10000939C(type);
    }
  }
}

- (void)setUpDismissalTimer
{
  v3 = dispatch_time(0, 4000000000);
  dismissalTimer = [(SHUDBannerManager *)self dismissalTimer];

  if (dismissalTimer)
  {
    dismissalTimer2 = [(SHUDBannerManager *)self dismissalTimer];
    dispatch_source_set_timer(dismissalTimer2, v3, 0xFFFFFFFFFFFFFFFFLL, 0);

    v6 = sharingHUDLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v7 = "Dismissal timer already exists";
      v8 = v6;
      v9 = 2;
LABEL_7:
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, v7, buf, v9);
    }
  }

  else
  {
    v10 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, &_dispatch_main_q);
    [(SHUDBannerManager *)self setDismissalTimer:v10];

    dismissalTimer3 = [(SHUDBannerManager *)self dismissalTimer];

    if (dismissalTimer3)
    {
      dismissalTimer4 = [(SHUDBannerManager *)self dismissalTimer];
      handler[0] = _NSConcreteStackBlock;
      handler[1] = 3221225472;
      handler[2] = sub_100002B04;
      handler[3] = &unk_1000144E8;
      handler[4] = self;
      dispatch_source_set_event_handler(dismissalTimer4, handler);

      dismissalTimer5 = [(SHUDBannerManager *)self dismissalTimer];
      dispatch_source_set_timer(dismissalTimer5, v3, 0xFFFFFFFFFFFFFFFFLL, 0);

      dismissalTimer6 = [(SHUDBannerManager *)self dismissalTimer];
      dispatch_resume(dismissalTimer6);

      v6 = sharingHUDLog();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        v17 = 0x4010000000000000;
        v7 = "Restarting dismissal timer with timout of %f sec";
        v8 = v6;
        v9 = 12;
        goto LABEL_7;
      }
    }

    else
    {
      v6 = sharingHUDLog();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_100009438(v6);
      }
    }
  }
}

- (void)cancelDismissalTimer
{
  dismissalTimer = [(SHUDBannerManager *)self dismissalTimer];

  if (dismissalTimer)
  {
    dismissalTimer2 = [(SHUDBannerManager *)self dismissalTimer];
    dispatch_source_cancel(dismissalTimer2);

    v5 = sharingHUDLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Dismissal timer cancelled", v6, 2u);
    }
  }
}

@end