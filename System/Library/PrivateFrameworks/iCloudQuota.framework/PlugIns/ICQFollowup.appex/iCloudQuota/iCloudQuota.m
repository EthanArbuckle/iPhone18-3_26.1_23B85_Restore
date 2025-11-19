void sub_100001098(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _ICQGetLogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v8 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Finished showing server UI: %@", buf, 0xCu);
  }

  v5 = dispatch_get_global_queue(25, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000011BC;
  block[3] = &unk_100008298;
  block[4] = *(a1 + 32);
  dispatch_async(v5, block);
}

void sub_1000016B8(id a1)
{
  qword_10000C848 = [[FLFollowUpController alloc] initWithClientIdentifier:@"com.apple.icloud.quota"];

  _objc_release_x1();
}

void sub_100001A54(id a1, ICQOffer *a2)
{
  v2 = a2;
  v3 = os_transaction_create();
  v4 = +[ICQOfferManager sharedOfferManager];
  v5 = [(ICQOffer *)v2 offerId];

  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = nullsub_1;
  v6[3] = &unk_100008390;
  v7 = v3;
  [v4 updateOfferId:v5 buttonId:@"followup" info:0 completion:v6];
}

void sub_100001B38(void *a1, uint64_t a2)
{
  if (a2)
  {
    *(*(a1[6] + 8) + 24) = 1;
    v3 = a1[5];
    (*(a1[5] + 16))();
  }

  else
  {
    v4 = +[ICQOfferManager sharedOfferManager];
    [v4 teardownCachedOffer];
  }

  v5 = a1[4];

  dispatch_group_leave(v5);
}

void sub_100001BB0(void *a1, uint64_t a2)
{
  if (a2)
  {
    *(*(a1[6] + 8) + 24) = 1;
    v3 = a1[5];
    (*(a1[5] + 16))();
  }

  else
  {
    v4 = +[ICQOfferManager sharedOfferManager];
    [v4 teardownCachedPremiumOffer];
  }

  v5 = a1[4];

  dispatch_group_leave(v5);
}

BOOL sub_10000231C(id a1, FLFollowUpAction *a2, unint64_t a3, BOOL *a4)
{
  v4 = [(FLFollowUpAction *)a2 userInfo:a3];
  v5 = [v4 objectForKeyedSubscript:@"ICQLinkParameters"];

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && (v6 = ICQActionParameterZeroCFUActionKey, [v5 objectForKeyedSubscript:ICQActionParameterZeroCFUActionKey], v7 = objc_claimAutoreleasedReturnValue(), v7, v7))
  {
    v8 = [v5 objectForKeyedSubscript:v6];
    v9 = [v8 isEqual:@"true"];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

void sub_1000023E8(uint64_t a1, void *a2)
{
  v3 = [a2 offerId];
  if ([*(a1 + 32) eventSource] == 3)
  {
    v17 = ICQUpdateOfferKeyIsZeroAction;
    v18 = &off_100008658;
    v4 = [NSDictionary dictionaryWithObjects:&v18 forKeys:&v17 count:1];
  }

  else
  {
    v4 = 0;
  }

  v5 = _ICQGetLogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 40);
    *buf = 138412802;
    v12 = v3;
    v13 = 2112;
    v14 = v6;
    v15 = 2112;
    v16 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "ICQFollowup sending updateOfferId:%@ buttonId:%@ info:%@", buf, 0x20u);
  }

  v7 = +[ICQOfferManager sharedOfferManager];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = nullsub_3;
  v9[3] = &unk_100008390;
  v8 = *(a1 + 40);
  v10 = *(a1 + 48);
  [v7 updateOfferId:v3 buttonId:v8 info:v4 completion:v9];
}

void sub_100002BE0(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100002C90;
  block[3] = &unk_100008470;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v8 = v3;
  v9 = v4;
  v10 = v5;
  v6 = v3;
  dispatch_async(&_dispatch_main_q, block);
}

uint64_t sub_100002C90(uint64_t a1)
{
  v2 = *(a1 + 32);
  objc_opt_class();
  result = objc_opt_isKindOfClass();
  if (result)
  {
    v4 = objc_retainBlock(*(a1 + 48));
    v5 = *(a1 + 40);
    v6 = *(v5 + 56);
    *(v5 + 56) = v4;

    v8 = *(a1 + 32);
    v7 = *(a1 + 40);
    v9 = *(a1 + 48);

    return [v7 icqActionPresentOptInFlowForOffer:v8 withCompletion:v9];
  }

  return result;
}

void sub_100002E08(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100002EB8;
  block[3] = &unk_100008470;
  v4 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v7 = v3;
  v8 = v4;
  v5 = v3;
  dispatch_async(&_dispatch_main_q, block);
}

id sub_100002EB8(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 32))
  {
    [*(a1 + 40) _updateRequestedServerUIURLWithURL:?];
    v2 = *(a1 + 32);
  }

  [*(a1 + 40) updateOfferWithAction:*(v2 + 8)];
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);

  return [v3 icqActionPresentPurchaseFlowForOffer:v4 withCompletion:v5];
}

void sub_10000336C(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void sub_1000034B8(uint64_t a1, NSObject *a2)
{
  v3 = [_ICQHelperFunctions _getOfferDescriptionFromRequestType:a1];
  v4 = 138412290;
  v5 = v3;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Followup triggered with non-offer request type %@", &v4, 0xCu);
}