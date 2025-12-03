@interface ICQOfferUpdateController
- (ICQOfferUpdateController)initWithSession:(id)session;
- (void)performOfferUpdateWithContext:(id)context completion:(id)completion;
@end

@implementation ICQOfferUpdateController

- (ICQOfferUpdateController)initWithSession:(id)session
{
  sessionCopy = session;
  v6 = [(ICQOfferUpdateController *)self init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_sharedURLSession, session);
  }

  return v7;
}

- (void)performOfferUpdateWithContext:(id)context completion:(id)completion
{
  v51 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  completionCopy = completion;
  v7 = _ICQGetLogSystem();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    offerId = [contextCopy offerId];
    buttonId = [contextCopy buttonId];
    isZeroAction = [contextCopy isZeroAction];
    account = [contextCopy account];
    *buf = 138413058;
    *&buf[4] = offerId;
    *&buf[12] = 2112;
    *&buf[14] = buttonId;
    *&buf[22] = 1024;
    *v50 = isZeroAction;
    *&v50[4] = 2112;
    *&v50[6] = account;
    _os_log_impl(&dword_275572000, v7, OS_LOG_TYPE_DEFAULT, "performOfferUpdateWithContext:%@ - %@ zeroAction:%d account:%@", buf, 0x26u);
  }

  account2 = [contextCopy account];
  v13 = account2 == 0;

  if (v13)
  {
    v16 = ICQCreateError(0);
    completionCopy[2](completionCopy, 0, v16);
  }

  else
  {
    v14 = [ICQRequestProvider alloc];
    account3 = [contextCopy account];
    v16 = [(ICQRequestProvider *)v14 initWithAccount:account3];

    v17 = [(ICQRequestProvider *)v16 urlForUpdateOfferWithContext:contextCopy];
    if (!v17)
    {
      goto LABEL_22;
    }

    v18 = [MEMORY[0x277CCAB70] requestWithURL:v17 cachePolicy:1 timeoutInterval:30.0];
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    offerId2 = [contextCopy offerId];
    v21 = [(ICQRequestProvider *)v16 willUseNewKey:@"quotaUpdateOfferURL" offerID:offerId2 notificationID:0];

    if (v21)
    {
      buttonId2 = [contextCopy buttonId];

      if (buttonId2)
      {
        buttonId3 = [contextCopy buttonId];
        [dictionary setObject:buttonId3 forKeyedSubscript:@"buttonId"];
      }
    }

    else
    {
      account4 = [contextCopy account];
      aa_personID = [account4 aa_personID];

      if (aa_personID)
      {
        account5 = [contextCopy account];
        aa_personID2 = [account5 aa_personID];
        [dictionary setObject:aa_personID2 forKeyedSubscript:@"dsid"];
      }

      buttonId4 = [contextCopy buttonId];

      if (buttonId4)
      {
        buttonId5 = [contextCopy buttonId];
        [dictionary setObject:buttonId5 forKeyedSubscript:@"btnId"];
      }

      offerId3 = [contextCopy offerId];

      if (offerId3)
      {
        offerId4 = [contextCopy offerId];
        [dictionary setObject:offerId4 forKeyedSubscript:@"offerId"];
      }

      if ([contextCopy isZeroAction])
      {
        [dictionary setObject:@"true" forKeyedSubscript:@"directAction"];
      }
    }

    [(ICQRequestProvider *)v16 addCommonHeadersToRequest:v18];
    if (![ICQRequestProvider attemptSetRequest:v18 toPostWithJSONDict:dictionary])
    {

      v18 = 0;
    }

    offerId5 = [contextCopy offerId];
    v33 = [(ICQRequestProvider *)v16 httpMethodForKey:@"quotaUpdateOfferURL" offerID:offerId5 notificationID:0];
    [v18 setHTTPMethod:v33];

    if (v18)
    {
      hTTPBody = [v18 HTTPBody];
      if (hTTPBody)
      {
        v35 = objc_alloc(MEMORY[0x277CCACA8]);
        hTTPBody2 = [v18 HTTPBody];
        v37 = [v35 initWithData:hTTPBody2 encoding:4];
      }

      else
      {
        v37 = &stru_288431E38;
      }

      v39 = _ICQGetLogSystem();
      if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
      {
        allHTTPHeaderFields = [v18 allHTTPHeaderFields];
        hTTPBody3 = [v18 HTTPBody];
        *buf = 138413058;
        *&buf[4] = v18;
        *&buf[12] = 2112;
        *&buf[14] = allHTTPHeaderFields;
        *&buf[22] = 2112;
        *v50 = hTTPBody3;
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
      v47 = completionCopy;
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
      completionCopy[2](completionCopy, 0, v18);
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