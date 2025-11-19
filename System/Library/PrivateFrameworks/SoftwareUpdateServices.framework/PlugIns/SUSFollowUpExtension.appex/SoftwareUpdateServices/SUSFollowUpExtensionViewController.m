@interface SUSFollowUpExtensionViewController
- (void)processFollowUpItem:(id)a3 selectedAction:(id)a4 completion:(id)a5;
@end

@implementation SUSFollowUpExtensionViewController

- (void)processFollowUpItem:(id)a3 selectedAction:(id)a4 completion:(id)a5
{
  v39 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v37 = 0;
  objc_storeStrong(&v37, a4);
  v36 = 0;
  objc_storeStrong(&v36, a5);
  objc_storeStrong(&v39->_activeAction, v37);
  v6 = location[0];
  SULogInfo();
  v7 = [v37 identifier];
  SULogInfo();

  v28 = [v37 identifier];
  v29 = [v28 isEqualToString:@"com.followup.install_now_action"];

  if (v29)
  {
    SULogInfo();
    v5 = &_dispatch_main_q;
    v25 = &_dispatch_main_q;
    dispatch_sync(v25, &stru_1000043B0);
  }

  else
  {
    v23 = [v37 identifier];
    v24 = [v23 isEqualToString:@"com.followup.install_later_action"];

    if (v24)
    {
      v35 = 0;
      SULogInfo();
      v34 = objc_alloc_init(FLFollowUpController);
      v33 = v35;
      v22 = [v34 clearNotificationForItem:location[0] error:&v33];
      objc_storeStrong(&v35, v33);
      if ((v22 & 1) == 0)
      {
        v8 = location[0];
        v9 = v35;
        SULogInfo();
      }

      v18 = v34;
      v20 = [location[0] uniqueIdentifier];
      v41 = v20;
      v19 = [NSArray arrayWithObjects:&v41 count:1];
      v32 = v35;
      v21 = [v18 clearPendingFollowUpItemsWithUniqueIdentifiers:? error:?];
      objc_storeStrong(&v35, v32);

      if ((v21 & 1) == 0)
      {
        SULogInfo();
      }

      objc_storeStrong(&v34, 0);
      objc_storeStrong(&v35, 0);
    }

    else
    {
      v16 = [v37 identifier];
      v17 = [v16 isEqualToString:@"com.followup.clear_item_action"];

      if (v17)
      {
        SULogInfo();
        v31 = objc_alloc_init(FLFollowUpController);
        v13 = v31;
        v15 = [location[0] uniqueIdentifier];
        v40 = v15;
        v14 = [NSArray arrayWithObjects:&v40 count:1];
        [v13 clearPendingFollowUpItemsWithUniqueIdentifiers:? error:?];

        objc_storeStrong(&v31, 0);
      }

      else
      {
        v11 = [v37 identifier];
        v12 = [v11 isEqualToString:@"com.followup.go_to_update_pane"];

        SULogInfo();
        if (v12)
        {
          v30 = [NSURL URLWithString:@"prefs:root=General&path=SOFTWARE_UPDATE_LINK"];
          v10 = +[LSApplicationWorkspace defaultWorkspace];
          [v10 openSensitiveURL:v30 withOptions:?];

          objc_storeStrong(&v30, 0);
        }
      }
    }
  }

  (*(v36 + 2))(v36, 1);
  objc_storeStrong(&v36, 0);
  objc_storeStrong(&v37, 0);
  objc_storeStrong(location, 0);
}

@end