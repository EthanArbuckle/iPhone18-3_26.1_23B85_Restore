@interface TransparencyFollowUpExtensionViewController
- (void)_openKBArticle:(id)a3;
- (void)processFollowUpItem:(id)a3 selectedAction:(id)a4 completion:(id)a5;
@end

@implementation TransparencyFollowUpExtensionViewController

- (void)_openKBArticle:(id)a3
{
  v3 = a3;
  if (v3)
  {
    v4 = [NSURL URLWithString:v3];
    if (qword_10000C858 != -1)
    {
      sub_100004EB0();
    }

    v5 = qword_10000C860;
    if (os_log_type_enabled(qword_10000C860, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v13 = v4;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Opening kbase %@", buf, 0xCu);
    }

    v6 = +[LSApplicationWorkspace defaultWorkspace];
    v11 = 0;
    v7 = [v6 openURL:v4 withOptions:0 error:&v11];
    v8 = v11;

    if ((v7 & 1) == 0)
    {
      if (qword_10000C858 != -1)
      {
        sub_100004EC4();
      }

      v9 = qword_10000C860;
      if (os_log_type_enabled(qword_10000C860, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v13 = v4;
        v14 = 2112;
        v15 = v8;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Could not open kbase url %@ error %@", buf, 0x16u);
      }
    }
  }

  else
  {
    if (qword_10000C858 != -1)
    {
      sub_100004EEC();
    }

    v10 = qword_10000C860;
    if (os_log_type_enabled(qword_10000C860, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "missing informational link", buf, 2u);
    }
  }
}

- (void)processFollowUpItem:(id)a3 selectedAction:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (qword_10000C858 != -1)
  {
    sub_100004F00();
  }

  v11 = qword_10000C860;
  if (os_log_type_enabled(qword_10000C860, OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    v34 = v8;
    v35 = 2112;
    v36 = v9;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "processing Transparency follow up item %@, action %@", buf, 0x16u);
  }

  v12 = [v8 userInfo];
  v13 = [v12 objectForKeyedSubscript:@"type"];

  v14 = [v9 userInfo];
  v15 = [v14 objectForKeyedSubscript:@"action"];

  v16 = [v8 userInfo];
  v17 = [v16 objectForKeyedSubscript:@"eventId"];

  if (!v13 || !v15)
  {
    if (qword_10000C858 != -1)
    {
      sub_100004F14();
    }

    v18 = qword_10000C860;
    if (os_log_type_enabled(qword_10000C860, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "Follow up had no type or action. Skipping.", buf, 2u);
    }
  }

  v19 = [v15 intValue];
  if (!v19)
  {
    if (qword_10000C858 != -1)
    {
      sub_100004F8C();
    }

    v28 = qword_10000C860;
    if (os_log_type_enabled(qword_10000C860, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v34 = v13;
      v35 = 2112;
      v36 = v17;
      _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_INFO, "viewing details for follow up type %@, event %@", buf, 0x16u);
    }

    if ([v13 intValue] == 3)
    {
      v29 = [v9 userInfo];
      v30 = [v29 objectForKeyedSubscript:@"infoLink"];
      [(TransparencyFollowUpExtensionViewController *)self _openKBArticle:v30];

      goto LABEL_43;
    }

    v26 = [NSURL URLWithString:@"prefs:root=APPLE_ACCOUNT&path=TRANSPARENCY"];
    if (qword_10000C858 != -1)
    {
      sub_100004FB4();
    }

    v27 = qword_10000C860;
    if (!os_log_type_enabled(qword_10000C860, OS_LOG_TYPE_INFO))
    {
LABEL_42:
      v31 = +[LSApplicationWorkspace defaultWorkspace];
      [v31 openSensitiveURL:v26 withOptions:0];

      goto LABEL_43;
    }

    *buf = 138412290;
    v34 = v26;
LABEL_41:
    _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_INFO, "transferring to Contact Key Verification pane %@", buf, 0xCu);
    goto LABEL_42;
  }

  if (v19 == 2)
  {
    if (qword_10000C858 != -1)
    {
      sub_100004F3C();
    }

    v25 = qword_10000C860;
    if (os_log_type_enabled(qword_10000C860, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v34 = v13;
      v35 = 2112;
      v36 = v17;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_INFO, "viewing settings for follow up type %@, event %@", buf, 0x16u);
    }

    v26 = [NSURL URLWithString:@"prefs:root=APPLE_ACCOUNT&path=TRANSPARENCY"];
    if (qword_10000C858 != -1)
    {
      sub_100004F64();
    }

    v27 = qword_10000C860;
    if (!os_log_type_enabled(qword_10000C860, OS_LOG_TYPE_INFO))
    {
      goto LABEL_42;
    }

    *buf = 138412290;
    v34 = v26;
    goto LABEL_41;
  }

  if (v19 != 1)
  {
LABEL_43:
    v23 = 0;
    goto LABEL_44;
  }

  if (qword_10000C858 != -1)
  {
    sub_100004FDC();
  }

  v20 = qword_10000C860;
  if (os_log_type_enabled(qword_10000C860, OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    v34 = v13;
    v35 = 2112;
    v36 = v17;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "dismissing follow up type %@, event %@", buf, 0x16u);
  }

  v21 = +[TransparencyFollowup instance];
  v32 = 0;
  v22 = [v21 clearFollowup:v8 error:&v32];
  v23 = v32;

  if ((v22 & 1) == 0)
  {
    if (qword_10000C858 != -1)
    {
      sub_100005004();
    }

    v24 = qword_10000C860;
    if (os_log_type_enabled(qword_10000C860, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v34 = v13;
      v35 = 2112;
      v36 = v23;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "failed to dismiss follow up type %@: %@", buf, 0x16u);
    }
  }

LABEL_44:
  v10[2](v10, 1);
}

@end