@interface SKUIGiftPurchaseRequest
- (SKUIGiftPurchaseRequest)initWithDonation:(id)donation configuration:(id)configuration;
- (SKUIGiftPurchaseRequest)initWithGift:(id)gift configuration:(id)configuration;
- (id)_requestWithURL:(id)l bodyDictionary:(id)dictionary;
- (void)purchaseWithCompletionBlock:(id)block;
@end

@implementation SKUIGiftPurchaseRequest

- (SKUIGiftPurchaseRequest)initWithDonation:(id)donation configuration:(id)configuration
{
  donationCopy = donation;
  configurationCopy = configuration;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUIGiftPurchaseRequest initWithDonation:configuration:];
  }

  v14.receiver = self;
  v14.super_class = SKUIGiftPurchaseRequest;
  v8 = [(SKUIGiftPurchaseRequest *)&v14 init];
  if (v8)
  {
    donationPurchaseURL = [configurationCopy donationPurchaseURL];
    hTTPBodyDictionary = [donationCopy HTTPBodyDictionary];
    v11 = [(SKUIGiftPurchaseRequest *)v8 _requestWithURL:donationPurchaseURL bodyDictionary:hTTPBodyDictionary];
    request = v8->_request;
    v8->_request = v11;
  }

  return v8;
}

- (SKUIGiftPurchaseRequest)initWithGift:(id)gift configuration:(id)configuration
{
  giftCopy = gift;
  configurationCopy = configuration;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUIGiftPurchaseRequest initWithGift:configuration:];
  }

  v14.receiver = self;
  v14.super_class = SKUIGiftPurchaseRequest;
  v8 = [(SKUIGiftPurchaseRequest *)&v14 init];
  if (v8)
  {
    giftPurchaseURL = [configurationCopy giftPurchaseURL];
    hTTPBodyDictionary = [giftCopy HTTPBodyDictionary];
    v11 = [(SKUIGiftPurchaseRequest *)v8 _requestWithURL:giftPurchaseURL bodyDictionary:hTTPBodyDictionary];
    request = v8->_request;
    v8->_request = v11;
  }

  return v8;
}

- (void)purchaseWithCompletionBlock:(id)block
{
  blockCopy = block;
  request = self->_request;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __55__SKUIGiftPurchaseRequest_purchaseWithCompletionBlock___block_invoke;
  v7[3] = &unk_278200700;
  v8 = blockCopy;
  v6 = blockCopy;
  [(SKUIURLConnectionRequest *)request startWithConnectionResponseBlock:v7];
}

void __55__SKUIGiftPurchaseRequest_purchaseWithCompletionBlock___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v11 = a3;
  v5 = [a2 bodyData];
  if (v5)
  {
    v6 = [MEMORY[0x277CCAC58] propertyListWithData:v5 options:0 format:0 error:0];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 objectForKey:@"status"];
      if ((objc_opt_respondsToSelector() & 1) != 0 && ![v7 integerValue])
      {
        v9 = 0;
      }

      else
      {
        v8 = [v6 objectForKey:@"dialog"];
        if (v8)
        {
          v9 = 0;
        }

        else
        {
          v10 = [v6 objectForKey:@"userPresentableErrorMessage"];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v9 = v10;
          }

          else
          {
            v9 = 0;
          }
        }
      }
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = [v11 localizedDescription];
  }

  (*(*(a1 + 32) + 16))();
}

- (id)_requestWithURL:(id)l bodyDictionary:(id)dictionary
{
  v5 = MEMORY[0x277D69BD0];
  dictionaryCopy = dictionary;
  lCopy = l;
  v8 = [[v5 alloc] initWithURL:lCopy];

  [v8 setAllowedRetryCount:0];
  [v8 setITunesStoreRequest:1];
  [v8 setKBSyncType:2];
  [v8 setRequestParameters:dictionaryCopy];

  [v8 setShouldProcessProtocol:1];
  [v8 setShouldSendSecureToken:1];
  v9 = SSVDefaultUserAgent();
  [v8 setValue:v9 forHTTPHeaderField:@"User-Agent"];

  [v8 setHTTPMethod:@"POST"];
  [v8 setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];
  v10 = [(SSURLConnectionRequest *)[SKUIURLConnectionRequest alloc] initWithRequestProperties:v8];
  [(SSURLConnectionRequest *)v10 setShouldMescalSign:1];

  return v10;
}

- (void)initWithDonation:configuration:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIGiftPurchaseRequest initWithDonation:configuration:]";
}

- (void)initWithGift:configuration:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIGiftPurchaseRequest initWithGift:configuration:]";
}

@end