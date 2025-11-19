@interface ICQOfferUpdateController
- (ICQOfferUpdateController)initWithSession:(id)a3;
- (void)performOfferUpdateWithContext:(id)a3 completion:(id)a4;
@end

@implementation ICQOfferUpdateController

- (ICQOfferUpdateController)initWithSession:(id)a3
{
  v5 = a3;
  v6 = [(ICQOfferUpdateController *)self init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_sharedURLSession, a3);
  }

  return v7;
}

- (void)performOfferUpdateWithContext:(id)a3 completion:(id)a4
{
  v51 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = _ICQGetLogSystem();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [v5 offerId];
    v9 = [v5 buttonId];
    v10 = [v5 isZeroAction];
    v11 = [v5 account];
    *buf = 138413058;
    *&buf[4] = v8;
    *&buf[12] = 2112;
    *&buf[14] = v9;
    *&buf[22] = 1024;
    *v50 = v10;
    *&v50[4] = 2112;
    *&v50[6] = v11;
    _os_log_impl(&dword_275572000, v7, OS_LOG_TYPE_DEFAULT, "performOfferUpdateWithContext:%@ - %@ zeroAction:%d account:%@", buf, 0x26u);
  }

  v12 = [v5 account];
  v13 = v12 == 0;

  if (v13)
  {
    v16 = ICQCreateError(0);
    v6[2](v6, 0, v16);
  }

  else
  {
    v14 = [ICQRequestProvider alloc];
    v15 = [v5 account];
    v16 = [(ICQRequestProvider *)v14 initWithAccount:v15];

    v17 = [(ICQRequestProvider *)v16 urlForUpdateOfferWithContext:v5];
    if (!v17)
    {
      goto LABEL_22;
    }

    v18 = [MEMORY[0x277CCAB70] requestWithURL:v17 cachePolicy:1 timeoutInterval:30.0];
    v19 = [MEMORY[0x277CBEB38] dictionary];
    v20 = [v5 offerId];
    v21 = [(ICQRequestProvider *)v16 willUseNewKey:@"quotaUpdateOfferURL" offerID:v20 notificationID:0];

    if (v21)
    {
      v22 = [v5 buttonId];

      if (v22)
      {
        v23 = [v5 buttonId];
        [v19 setObject:v23 forKeyedSubscript:@"buttonId"];
      }
    }

    else
    {
      v24 = [v5 account];
      v25 = [v24 aa_personID];

      if (v25)
      {
        v26 = [v5 account];
        v27 = [v26 aa_personID];
        [v19 setObject:v27 forKeyedSubscript:@"dsid"];
      }

      v28 = [v5 buttonId];

      if (v28)
      {
        v29 = [v5 buttonId];
        [v19 setObject:v29 forKeyedSubscript:@"btnId"];
      }

      v30 = [v5 offerId];

      if (v30)
      {
        v31 = [v5 offerId];
        [v19 setObject:v31 forKeyedSubscript:@"offerId"];
      }

      if ([v5 isZeroAction])
      {
        [v19 setObject:@"true" forKeyedSubscript:@"directAction"];
      }
    }

    [(ICQRequestProvider *)v16 addCommonHeadersToRequest:v18];
    if (![ICQRequestProvider attemptSetRequest:v18 toPostWithJSONDict:v19])
    {

      v18 = 0;
    }

    v32 = [v5 offerId];
    v33 = [(ICQRequestProvider *)v16 httpMethodForKey:@"quotaUpdateOfferURL" offerID:v32 notificationID:0];
    [v18 setHTTPMethod:v33];

    if (v18)
    {
      v34 = [v18 HTTPBody];
      if (v34)
      {
        v35 = objc_alloc(MEMORY[0x277CCACA8]);
        v36 = [v18 HTTPBody];
        v37 = [v35 initWithData:v36 encoding:4];
      }

      else
      {
        v37 = &stru_288431E38;
      }

      v39 = _ICQGetLogSystem();
      if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
      {
        v40 = [v18 allHTTPHeaderFields];
        v41 = [v18 HTTPBody];
        *buf = 138413058;
        *&buf[4] = v18;
        *&buf[12] = 2112;
        *&buf[14] = v40;
        *&buf[22] = 2112;
        *v50 = v41;
        *&v50[8] = 2112;
        *&v50[10] = v37;
        _os_log_impl(&dword_275572000, v39, OS_LOG_TYPE_DEFAULT, "update offer request: %@ headers: %@ body: %@ body (as string): %@", buf, 0x2Au);
      }

      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x3032000000;
      *v50 = __Block_byref_object_copy__4;
      *&v50[8] = __Block_byref_object_dispose__4;
      *&v50[16] = self;
      v42 = *(*&v50[16] + 8);
      v46[0] = MEMORY[0x277D85DD0];
      v46[1] = 3221225472;
      v46[2] = __69__ICQOfferUpdateController_performOfferUpdateWithContext_completion___block_invoke;
      v46[3] = &unk_27A651E48;
      v47 = v6;
      v48 = buf;
      v43 = [v42 dataTaskWithRequest:v18 completionHandler:v46];
      [v43 resume];

      _Block_object_dispose(buf, 8);
    }

    else
    {
LABEL_22:
      v38 = _ICQGetLogSystem();
      if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        *&buf[4] = v17;
        _os_log_impl(&dword_275572000, v38, OS_LOG_TYPE_DEFAULT, "update offer - failed to create request to URL %@", buf, 0xCu);
      }

      v18 = ICQCreateError(0);
      v6[2](v6, 0, v18);
    }
  }

  v44 = *MEMORY[0x277D85DE8];
}

void __69__ICQOfferUpdateController_performOfferUpdateWithContext_completion___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a4;
  ICQLogDataTaskComplete(@"updateOffer", a2, a3, v7);
  (*(*(a1 + 32) + 16))(*(a1 + 32), v7 == 0, v7);

  v8 = *(*(a1 + 40) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = 0;
}

@end