@interface ICQFollowupViewController
- (id)sharedFollowUpController;
- (int64_t)requestType;
- (void)_finalizeUpgradeFlowManager:(id)manager;
- (void)clearFollowupItem:(id)item;
- (void)followUpPerformUpdateWithCompletionHandler:(id)handler;
- (void)getOfferWithRequestType:(int64_t)type withCompletion:(id)completion;
- (void)handleRemoteUIAction:(id)action;
- (void)icqActionPhotosOptimize:(id)optimize;
- (void)icqActionPresentOptInFlow:(id)flow;
- (void)icqActionPresentOptInFlowForOffer:(id)offer withCompletion:(id)completion;
- (void)icqActionPresentPurchaseFlow:(id)flow;
- (void)icqActionPresentPurchaseFlowForOffer:(id)offer withCompletion:(id)completion;
- (void)processFollowUpItem:(id)item selectedAction:(id)action completion:(id)completion;
- (void)startShowingServerUI:(id)i;
- (void)teardownOffer;
- (void)upgradeFlowManagerDidCancel:(id)cancel;
- (void)upgradeFlowManagerDidComplete:(id)complete;
@end

@implementation ICQFollowupViewController

- (int64_t)requestType
{
  uniqueIdentifier = [(FLFollowUpItem *)self->_item uniqueIdentifier];
  v4 = [uniqueIdentifier isEqualToString:_ICQIdentifierPrefixPremium];

  if (v4)
  {
    return 2;
  }

  uniqueIdentifier2 = [(FLFollowUpItem *)self->_item uniqueIdentifier];
  v7 = [uniqueIdentifier2 isEqualToString:_ICQIdentifierPrefixEvent];

  if (v7)
  {
    return 5;
  }

  else
  {
    return 3;
  }
}

- (id)sharedFollowUpController
{
  if (qword_10000C850 != -1)
  {
    sub_100003388();
  }

  v3 = qword_10000C848;

  return v3;
}

- (void)clearFollowupItem:(id)item
{
  itemCopy = item;
  sharedFollowUpController = [(ICQFollowupViewController *)self sharedFollowUpController];
  uniqueIdentifier = [itemCopy uniqueIdentifier];
  v19 = uniqueIdentifier;
  v7 = [NSArray arrayWithObjects:&v19 count:1];
  v14 = 0;
  [sharedFollowUpController clearPendingFollowUpItemsWithUniqueIdentifiers:v7 error:&v14];
  v8 = v14;

  v9 = _ICQGetLogSystem();
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
  if (v8)
  {
    if (v10)
    {
      *buf = 138412546;
      v16 = itemCopy;
      v17 = 2112;
      v18 = v8;
      v11 = "unable to clear followup item %@ error %@";
      v12 = v9;
      v13 = 22;
LABEL_6:
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, v11, buf, v13);
    }
  }

  else if (v10)
  {
    *buf = 0;
    v11 = "followup item successfully cleared";
    v12 = v9;
    v13 = 2;
    goto LABEL_6;
  }
}

- (void)followUpPerformUpdateWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  v4 = dispatch_group_create();
  dispatch_group_enter(v4);
  v5 = +[ICQOfferManager sharedOfferManager];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100001B38;
  v14[3] = &unk_1000083B8;
  v16 = &stru_100008368;
  v17 = &v18;
  v6 = v4;
  v15 = v6;
  [v5 getOfferWithCompletion:v14];

  dispatch_group_enter(v6);
  v7 = +[ICQOfferManager sharedOfferManager];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100001BB0;
  v10[3] = &unk_1000083E0;
  v12 = &stru_100008368;
  v13 = &v18;
  v8 = v6;
  v11 = v8;
  [v7 getPremiumOfferWithCompletion:v10];

  v9 = dispatch_time(0, 10000000000);
  dispatch_group_wait(v8, v9);
  handlerCopy[2](handlerCopy, *(v19 + 24) ^ 1);

  _Block_object_dispose(&v18, 8);
}

- (void)processFollowUpItem:(id)item selectedAction:(id)action completion:(id)completion
{
  itemCopy = item;
  actionCopy = action;
  completionCopy = completion;
  objc_storeStrong(&self->_item, item);
  userInfo = [actionCopy userInfo];
  v13 = [userInfo objectForKeyedSubscript:@"ICQLinkAction"];
  self->_icqAction = _ICQActionForString();

  userInfo2 = [actionCopy userInfo];
  v15 = [userInfo2 objectForKeyedSubscript:@"ICQLinkParameters"];
  icqActionParameters = self->_icqActionParameters;
  self->_icqActionParameters = v15;

  userInfo3 = [actionCopy userInfo];
  v18 = [userInfo3 objectForKeyedSubscript:@"ICQFlowServerDict"];
  icqFlowServerDict = self->_icqFlowServerDict;
  self->_icqFlowServerDict = v18;

  if ([actionCopy eventSource] == 3)
  {
    actions = [itemCopy actions];
    v21 = [actions indexOfObjectPassingTest:&stru_100008420];

    if (v21 != 0x7FFFFFFFFFFFFFFFLL)
    {
      actions2 = [itemCopy actions];
      v23 = [actions2 objectAtIndex:v21];

      userInfo4 = [v23 userInfo];
      v25 = [userInfo4 objectForKeyedSubscript:@"ICQLinkAction"];
      self->_icqAction = _ICQActionForString();

      userInfo5 = [v23 userInfo];
      v27 = [userInfo5 objectForKeyedSubscript:@"ICQLinkParameters"];
      v28 = self->_icqActionParameters;
      self->_icqActionParameters = v27;

      userInfo6 = [v23 userInfo];
      v30 = [userInfo6 objectForKeyedSubscript:@"ICQFlowServerDict"];
      v31 = self->_icqFlowServerDict;
      self->_icqFlowServerDict = v30;
    }
  }

  v32 = _ICQGetLogSystem();
  if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
  {
    icqAction = self->_icqAction;
    v34 = _ICQStringForAction();
    *buf = 138412290;
    v64 = v34;
    _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "followup: %@", buf, 0xCu);
  }

  v35 = [(NSDictionary *)self->_icqActionParameters objectForKeyedSubscript:ICQActionParameterServerLinkIdentifierKey];
  if (v35)
  {
    v36 = os_transaction_create();
    userInfo7 = [itemCopy userInfo];
    v38 = _ICQStringForKey();

    v56 = completionCopy;
    if (v38)
    {
      v39 = itemCopy;
      if ([actionCopy eventSource] == 3)
      {
        v69 = ICQUpdateOfferKeyIsZeroAction;
        v70 = &off_100008658;
        v40 = [NSDictionary dictionaryWithObjects:&v70 forKeys:&v69 count:1];
      }

      else
      {
        v40 = 0;
      }

      v43 = _ICQGetLogSystem();
      if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412802;
        v64 = v38;
        v65 = 2112;
        v66 = v35;
        v67 = 2112;
        v68 = v40;
        _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEFAULT, "ICQFollowup sending updateOfferId:%@ buttonId:%@ info:%@", buf, 0x20u);
      }

      v44 = +[ICQOfferManager sharedOfferManager];
      v61[0] = _NSConcreteStackBlock;
      v61[1] = 3221225472;
      v61[2] = nullsub_2;
      v61[3] = &unk_100008390;
      v62 = v36;
      v42 = v36;
      [v44 updateOfferId:v38 buttonId:v35 info:v40 completion:v61];
    }

    else
    {
      v39 = itemCopy;
      requestType = [(ICQFollowupViewController *)self requestType];
      v57[0] = _NSConcreteStackBlock;
      v57[1] = 3221225472;
      v57[2] = sub_1000023E8;
      v57[3] = &unk_100008448;
      v58 = actionCopy;
      v59 = v35;
      v60 = v36;
      v40 = v36;
      [(ICQFollowupViewController *)self getOfferWithRequestType:requestType withCompletion:v57];

      v42 = v58;
    }

    itemCopy = v39;
    completionCopy = v56;
  }

  v45 = self->_icqAction;
  v46 = 1;
  if (v45 <= 101)
  {
    if (v45 <= 3)
    {
      if ((v45 - 1) >= 2)
      {
        if (v45)
        {
          if (v45 != 3)
          {
            goto LABEL_43;
          }

          goto LABEL_19;
        }

        v55 = _ICQGetLogSystem();
        if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_DEFAULT, "action specified was none; doing nothing", buf, 2u);
        }

LABEL_42:
        v46 = 1;
        goto LABEL_43;
      }

LABEL_37:
      [(ICQFollowupViewController *)self clearFollowupItem:itemCopy];
      goto LABEL_42;
    }

    if ((v45 - 4) < 2)
    {
LABEL_31:
      v50 = _ICQGetLogSystem();
      if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
      {
        v51 = self->_icqAction;
        v52 = _ICQStringForAction();
        *buf = 138412290;
        v64 = v52;
        _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_DEFAULT, "action %@ not supported directly in followup context", buf, 0xCu);
      }

      goto LABEL_42;
    }

    if (v45 != 6)
    {
      if (v45 != 100)
      {
        goto LABEL_43;
      }

LABEL_36:
      v53 = self->_icqActionParameters;
      [ICQLink performAction:"performAction:parameters:options:" parameters:? options:?];
      goto LABEL_37;
    }

    goto LABEL_38;
  }

  if ((v45 - 104) > 0x11)
  {
LABEL_34:
    if (v45 == 102)
    {
      goto LABEL_19;
    }

    if (v45 != 103)
    {
      goto LABEL_43;
    }

    goto LABEL_36;
  }

  if (((1 << (v45 - 104)) & 0x27D1E) == 0)
  {
    if (v45 != 104)
    {
      if (v45 == 109)
      {
        goto LABEL_31;
      }

      goto LABEL_34;
    }

LABEL_38:
    v54 = self->_icqActionParameters;
    [ICQLink performAction:"performAction:parameters:options:" parameters:? options:?];
    goto LABEL_42;
  }

LABEL_19:
  v47 = [(NSDictionary *)self->_icqActionParameters objectForKeyedSubscript:ICQActionParameterOpenURLKey];
  v48 = [NSURL URLWithString:v47];
  openURL = self->_openURL;
  self->_openURL = v48;

  v46 = 0;
LABEL_43:
  completionCopy[2](completionCopy, v46);
}

- (void)startShowingServerUI:(id)i
{
  iCopy = i;
  if (!iCopy)
  {
    sub_10000339C();
  }

  v5 = iCopy;
  v6 = _ICQGetLogSystem();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "presenting ICQ UI", buf, 2u);
  }

  icqAction = self->_icqAction;
  if (icqAction > 104)
  {
    if (icqAction <= 107)
    {
      if (icqAction != 105)
      {
        if (icqAction == 106)
        {
          [(ICQFollowupViewController *)self icqActionPhotosOptimize:v5];
        }

        else
        {
          [(ICQFollowupViewController *)self icqActionPhotosCloudEnable:v5];
        }

        goto LABEL_24;
      }
    }

    else
    {
      if ((icqAction - 109) > 0xC)
      {
LABEL_13:
        if (icqAction == 108)
        {
          [(ICQFollowupViewController *)self icqActionPhotosCloudUpgradeEnable:v5];
        }

        goto LABEL_24;
      }

      if (((1 << (icqAction - 109)) & 0x1248) == 0)
      {
        if (icqAction == 109)
        {
          goto LABEL_16;
        }

        if (icqAction == 114)
        {
LABEL_19:
          [(ICQFollowupViewController *)self icqActionPresentPurchaseFlow:v5];
          goto LABEL_24;
        }

        goto LABEL_13;
      }
    }

LABEL_23:
    [(ICQFollowupViewController *)self handleRemoteUIAction:v5];
    goto LABEL_24;
  }

  if (icqAction <= 6)
  {
    if (icqAction == 3)
    {
      goto LABEL_23;
    }

    goto LABEL_16;
  }

  if ((icqAction - 100) < 5)
  {
LABEL_16:
    v8 = _ICQStringForAction();
    v9 = _ICQGetLogSystem();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v13 = v8;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "unexpected action %@", buf, 0xCu);
    }

    v10 = [NSString stringWithFormat:@"unexpected action %@", v8];
    v11 = ICQCreateErrorWithMessage();
    (v5)[2](v5, v11);

    goto LABEL_19;
  }

LABEL_24:
}

- (void)_finalizeUpgradeFlowManager:(id)manager
{
  managerCopy = manager;
  if (self->_upgradeFlowManager != managerCopy)
  {
    v5 = _ICQGetLogSystem();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      upgradeFlowManager = self->_upgradeFlowManager;
      v10 = 138412546;
      v11 = managerCopy;
      v12 = 2112;
      v13 = upgradeFlowManager;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "ICQFollowup UpgradeFlowManager did cancel for manager %@ instead of %@", &v10, 0x16u);
    }
  }

  followupCompletion = self->_followupCompletion;
  if (followupCompletion)
  {
    followupCompletion[2](followupCompletion, 0);
    v8 = self->_followupCompletion;
    self->_followupCompletion = 0;
  }

  v9 = self->_upgradeFlowManager;
  self->_upgradeFlowManager = 0;
}

- (void)upgradeFlowManagerDidCancel:(id)cancel
{
  cancelCopy = cancel;
  v5 = _ICQGetLogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "upgradeFlowManagerDidCancel", v6, 2u);
  }

  [(ICQFollowupViewController *)self _finalizeUpgradeFlowManager:cancelCopy];
}

- (void)upgradeFlowManagerDidComplete:(id)complete
{
  completeCopy = complete;
  v5 = _ICQGetLogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "upgradeFlowManagerDidComplete", v6, 2u);
  }

  [(ICQFollowupViewController *)self clearFollowupItem:self->_item];
  [(ICQFollowupViewController *)self _finalizeUpgradeFlowManager:completeCopy];
}

- (void)handleRemoteUIAction:(id)action
{
  actionCopy = action;
  requestType = [(ICQFollowupViewController *)self requestType];
  v6 = _ICQGetLogSystem();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (requestType == 5)
  {
    if (v7)
    {
      v11 = 0;
      v8 = "Handling remoteUI Action for event offer";
      v9 = &v11;
LABEL_10:
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, v8, v9, 2u);
    }

LABEL_11:

    [(ICQFollowupViewController *)self icqActionPresentPurchaseFlow:actionCopy];
    goto LABEL_12;
  }

  if (requestType != 2)
  {
    if (v7)
    {
      v10 = 0;
      v8 = "Handling remoteUI Action for regular offer";
      v9 = &v10;
      goto LABEL_10;
    }

    goto LABEL_11;
  }

  if (v7)
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Handling remoteUI Action for premium offer", buf, 2u);
  }

  [(ICQFollowupViewController *)self icqActionPresentOptInFlow:actionCopy];
LABEL_12:
}

- (void)icqActionPresentOptInFlow:(id)flow
{
  flowCopy = flow;
  requestType = [(ICQFollowupViewController *)self requestType];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100002BE0;
  v7[3] = &unk_100008498;
  v7[4] = self;
  v8 = flowCopy;
  v6 = flowCopy;
  [(ICQFollowupViewController *)self getOfferWithRequestType:requestType withCompletion:v7];
}

- (void)icqActionPresentOptInFlowForOffer:(id)offer withCompletion:(id)completion
{
  v4 = _ICQGetLogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_1000033C8(v4, v5, v6, v7, v8, v9, v10, v11);
  }
}

- (void)icqActionPresentPurchaseFlow:(id)flow
{
  flowCopy = flow;
  requestType = [(ICQFollowupViewController *)self requestType];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100002E08;
  v7[3] = &unk_100008498;
  v7[4] = self;
  v8 = flowCopy;
  v6 = flowCopy;
  [(ICQFollowupViewController *)self getOfferWithRequestType:requestType withCompletion:v7];
}

- (void)icqActionPresentPurchaseFlowForOffer:(id)offer withCompletion:(id)completion
{
  v4 = _ICQGetLogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_100003440(v4, v5, v6, v7, v8, v9, v10, v11);
  }
}

- (void)getOfferWithRequestType:(int64_t)type withCompletion:(id)completion
{
  completionCopy = completion;
  if (type > 2)
  {
    if (type == 5)
    {
      v9 = +[ICQOfferManager sharedOfferManager];
      v10[0] = _NSConcreteStackBlock;
      v10[1] = 3221225472;
      v10[2] = sub_100003190;
      v10[3] = &unk_1000084C0;
      v11 = completionCopy;
      [v9 getEventOfferWithOptions:0 completion:v10];

      v7 = v11;
      goto LABEL_11;
    }

    if (type != 3)
    {
      goto LABEL_8;
    }

LABEL_7:
    v8 = +[ICQOfferManager sharedOfferManager];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_100003170;
    v14[3] = &unk_1000084C0;
    v15 = completionCopy;
    [v8 getOfferForBundleIdentifier:@"com.apple.Preferences" completion:v14];

    v7 = v15;
    goto LABEL_11;
  }

  if (type == 1)
  {
    goto LABEL_7;
  }

  if (type == 2)
  {
    v6 = +[ICQOfferManager sharedOfferManager];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100003180;
    v12[3] = &unk_1000084E8;
    v13 = completionCopy;
    [v6 getPremiumOfferForBundleIdentifier:@"com.apple.Preferences" completion:v12];

    v7 = v13;
    goto LABEL_11;
  }

LABEL_8:
  v7 = _ICQGetLogSystem();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    sub_1000034B8(type, v7);
  }

LABEL_11:
}

- (void)icqActionPhotosOptimize:(id)optimize
{
  v3 = _ICQGetLogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    sub_10000355C(v3, v4, v5, v6, v7, v8, v9, v10);
  }
}

- (void)teardownOffer
{
  requestType = [(ICQFollowupViewController *)self requestType];
  v3 = +[ICQOfferManager sharedOfferManager];
  v4 = v3;
  if (requestType == 5)
  {
    [v3 teardownCachedEventOffer];
  }

  else if (requestType == 2)
  {
    [v3 teardownCachedPremiumOffer];
  }

  else
  {
    [v3 teardownCachedOffer];
  }
}

@end