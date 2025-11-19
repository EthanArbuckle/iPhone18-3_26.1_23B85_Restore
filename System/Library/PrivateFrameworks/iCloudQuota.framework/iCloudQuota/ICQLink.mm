@interface ICQLink
+ (BOOL)performAction:(int64_t)a3 parameters:(id)a4 options:(int64_t)a5;
+ (ICQLink)linkWithText:(id)a3 options:(int64_t)a4 action:(int64_t)a5 parameters:(id)a6;
+ (id)_icqDismissLinkForServerMessageParameters:(id)a3;
+ (id)urlRequestWithParams:(id)a3 options:(int64_t)a4;
+ (id)urlSession;
+ (void)addHeadersToRequest:(id)a3;
+ (void)addPOSTParams:(id)a3 toRequest:(id)a4;
+ (void)performAsyncHTTPPostCallWithURL:(id)a3 parameters:(id)a4;
+ (void)performHTTPGETCallWithParams:(id)a3 options:(int64_t)a4;
+ (void)performHTTPPOSTCallWithParams:(id)a3 options:(int64_t)a4;
+ (void)startDataTaskWithRequest:(id)a3;
- (BOOL)performActionWithOptions:(int64_t)a3;
- (ICQLink)initWithAction:(int64_t)a3 url:(id)a4;
- (ICQLink)initWithActionString:(id)a3;
- (ICQLink)initWithActionString:(id)a3 url:(id)a4;
- (ICQLink)initWithCoder:(id)a3;
- (ICQLink)initWithText:(id)a3 options:(int64_t)a4 action:(int64_t)a5 parameters:(id)a6;
- (NSString)purchaseAttribution;
- (NSURL)actionURL;
- (NSURL)dynamicUIRouteURL;
- (NSURL)serverUIURL;
- (id)description;
- (void)dynamicUIRouteURL;
- (void)encodeWithCoder:(id)a3;
- (void)getCachedContentWithCompletion:(id)a3;
- (void)purchaseAttribution;
- (void)setServerUIURL:(id)a3;
@end

@implementation ICQLink

+ (ICQLink)linkWithText:(id)a3 options:(int64_t)a4 action:(int64_t)a5 parameters:(id)a6
{
  v10 = a6;
  v11 = a3;
  v12 = [[a1 alloc] initWithText:v11 options:a4 action:a5 parameters:v10];

  return v12;
}

- (ICQLink)initWithText:(id)a3 options:(int64_t)a4 action:(int64_t)a5 parameters:(id)a6
{
  v10 = a3;
  v11 = a6;
  v18.receiver = self;
  v18.super_class = ICQLink;
  v12 = [(ICQLink *)&v18 init];
  if (v12)
  {
    v13 = [v10 copy];
    text = v12->_text;
    v12->_text = v13;

    v12->_options = a4;
    v12->_action = a5;
    v15 = [v11 copy];
    parameters = v12->_parameters;
    v12->_parameters = v15;
  }

  return v12;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  text = self->_text;
  v5 = [MEMORY[0x277CCABB0] numberWithInteger:self->_options];
  v6 = _ICQStringForAction(self->_action);
  parameters = self->_parameters;
  v8 = [v3 stringWithFormat:@"Text: %@, Options: %@, Action: %@, Parameters: %@, actionURL: %@", text, v5, v6, parameters, self->_actionURL];

  return v8;
}

- (NSURL)serverUIURL
{
  v2 = [(NSDictionary *)self->_parameters valueForKey:@"openURL"];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x277CBEBC0]) initWithString:v2];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setServerUIURL:(id)a3
{
  parameters = self->_parameters;
  v5 = a3;
  v9 = [(NSDictionary *)parameters mutableCopy];
  v6 = [v5 absoluteString];

  [v9 setObject:v6 forKeyedSubscript:@"openURL"];
  v7 = [v9 copy];
  v8 = self->_parameters;
  self->_parameters = v7;
}

- (NSURL)actionURL
{
  actionURL = self->_actionURL;
  if (actionURL)
  {
    v3 = actionURL;
  }

  else
  {
    v3 = [(ICQLink *)self serverUIURL];
  }

  return v3;
}

- (NSURL)dynamicUIRouteURL
{
  p_parameters = &self->_parameters;
  v3 = [(NSDictionary *)self->_parameters objectForKeyedSubscript:@"route"];
  if (v3)
  {
    v4 = [objc_alloc(MEMORY[0x277CBEBC0]) initWithString:v3];
  }

  else
  {
    v5 = _ICQGetLogSystem();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [(ICQLink *)p_parameters dynamicUIRouteURL];
    }

    v4 = 0;
  }

  return v4;
}

- (NSString)purchaseAttribution
{
  p_parameters = &self->_parameters;
  v3 = [(NSDictionary *)self->_parameters objectForKeyedSubscript:@"purchaseAttribution"];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v6 = _ICQGetLogSystem();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [(ICQLink *)p_parameters purchaseAttribution];
    }
  }

  return v4;
}

- (BOOL)performActionWithOptions:(int64_t)a3
{
  v5 = objc_opt_class();
  v6 = [(ICQLink *)self action];
  v7 = [(ICQLink *)self parameters];
  LOBYTE(a3) = [v5 performAction:v6 parameters:v7 options:a3];

  return a3;
}

+ (BOOL)performAction:(int64_t)a3 parameters:(id)a4 options:(int64_t)a5
{
  v26 = *MEMORY[0x277D85DE8];
  v8 = a4;
  v9 = v8;
  isKindOfClass = 0;
  if (a3 <= 105)
  {
    if (a3 <= 99)
    {
      if (a3 > 3)
      {
        if ((a3 - 4) >= 2)
        {
          if (a3 == 6)
          {
            v16 = [v8 objectForKeyedSubscript:@"URL"];
            v17 = _ICQGetLogSystem();
            if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
            {
              v24 = 138412290;
              v25 = v16;
              _os_log_impl(&dword_275572000, v17, OS_LOG_TYPE_DEFAULT, "link - opening URL %@", &v24, 0xCu);
            }

            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v18 = [MEMORY[0x277CBEBC0] URLWithString:v16];

              v16 = v18;
            }

            objc_opt_class();
            isKindOfClass = objc_opt_isKindOfClass();
            if (isKindOfClass)
            {
              ICQOpenURL(v16);
            }
          }

          goto LABEL_55;
        }

        goto LABEL_25;
      }

      if (a3 == 1)
      {
        v20 = [v8 objectForKeyedSubscript:@"openURL"];

        if (!v20)
        {
          v12 = _ICQGetLogSystem();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(v24) = 0;
            _os_log_impl(&dword_275572000, v12, OS_LOG_TYPE_DEFAULT, "ICQLink: performAction: ICQActionDismiss not handled", &v24, 2u);
          }

          goto LABEL_28;
        }

LABEL_49:
        [a1 performHTTPPOSTCallWithParams:v9 options:a5];
        goto LABEL_29;
      }

      if (a3 == 2)
      {
        v19 = _ICQGetLogSystem();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v24) = 0;
          _os_log_impl(&dword_275572000, v19, OS_LOG_TYPE_DEFAULT, "link - offer rejected", &v24, 2u);
        }

        goto LABEL_54;
      }

      if (a3 != 3)
      {
        goto LABEL_55;
      }

LABEL_32:
      if (a5)
      {
        v15 = _ICQGetLogSystem();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v24) = 0;
          _os_log_impl(&dword_275572000, v15, OS_LOG_TYPE_DEFAULT, "link - presenting purchase flow in Settings", &v24, 2u);
        }

        _ICQOpenPurchaseFlowInSettings();
        goto LABEL_54;
      }

      goto LABEL_29;
    }

    if (a3 <= 102)
    {
      if (a3 == 100)
      {
        v21 = _ICQGetLogSystem();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v24) = 0;
          _os_log_impl(&dword_275572000, v21, OS_LOG_TYPE_DEFAULT, "link - presenting manage storage in Settings", &v24, 2u);
        }

        _ICQOpenManageStorageInSettings();
        goto LABEL_54;
      }

      if (a3 != 101)
      {
LABEL_18:
        v12 = _ICQGetLogSystem();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          v13 = _ICQStringForAction(a3);
          v24 = 138412290;
          v25 = v13;
          v14 = "ICQLink: performAction: %@ not handled since it requires context";
LABEL_27:
          _os_log_impl(&dword_275572000, v12, OS_LOG_TYPE_DEFAULT, v14, &v24, 0xCu);

          goto LABEL_28;
        }

        goto LABEL_28;
      }

      goto LABEL_25;
    }

    if (a3 == 103)
    {
      _ICQOpenPrimaryPaymentInSettings();
    }

    else
    {
      if (a3 != 104)
      {
        goto LABEL_32;
      }

      _ICQOpenCloudBackupInSettings();
    }

LABEL_54:
    isKindOfClass = 1;
    goto LABEL_55;
  }

  if (a3 > 115)
  {
    if ((a3 - 116) >= 3)
    {
      if (a3 != 123)
      {
        if (a3 != 124)
        {
          goto LABEL_55;
        }

        [a1 performHTTPGETCallWithParams:v8 options:a5];
LABEL_29:
        isKindOfClass = 0;
        goto LABEL_55;
      }

      goto LABEL_49;
    }

LABEL_25:
    v12 = _ICQGetLogSystem();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = _ICQStringForAction(a3);
      v24 = 138412290;
      v25 = v13;
      v14 = "ICQLink: performAction: %@ not handled";
      goto LABEL_27;
    }

LABEL_28:

    goto LABEL_29;
  }

  if ((a3 - 112) < 4 || (a3 - 106) < 3)
  {
    goto LABEL_18;
  }

  if (a3 == 109)
  {
    v11 = _ICQGetLogSystem();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v24) = 0;
      _os_log_impl(&dword_275572000, v11, OS_LOG_TYPE_DEFAULT, "link - presenting family setup in Settings", &v24, 2u);
    }

    _ICQOpenFamilySetupInSettings();
    goto LABEL_54;
  }

LABEL_55:

  v22 = *MEMORY[0x277D85DE8];
  return isKindOfClass & 1;
}

+ (id)urlSession
{
  v2 = [MEMORY[0x277CCAD38] defaultSessionConfiguration];
  v3 = [objc_alloc(MEMORY[0x277CF0188]) initWithIdentifier:@"ICQFetchOfferURLSession"];
  [v2 set_appleIDContext:v3];

  v4 = [MEMORY[0x277CCAD30] sessionWithConfiguration:v2];

  return v4;
}

+ (id)urlRequestWithParams:(id)a3 options:(int64_t)a4
{
  v4 = a4;
  v15 = *MEMORY[0x277D85DE8];
  v6 = MEMORY[0x277CBEBC0];
  v7 = [a3 objectForKeyedSubscript:@"openURL"];
  v8 = [v6 URLWithString:v7];

  v9 = _ICQGetLogSystem();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138412290;
    v14 = v8;
    _os_log_impl(&dword_275572000, v9, OS_LOG_TYPE_DEFAULT, "HTTP Call - server call to URL %@", &v13, 0xCu);
  }

  v10 = [MEMORY[0x277CCAB70] requestWithURL:v8 cachePolicy:1 timeoutInterval:30.0];
  [a1 addHeadersToRequest:v10];
  if ((v4 & 2) != 0)
  {
    [v10 setValue:@"application/x-plist" forHTTPHeaderField:@"Content-Type"];
    [v10 setValue:@"application/x-buddyml" forHTTPHeaderField:@"Accept"];
  }

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

+ (void)performAsyncHTTPPostCallWithURL:(id)a3 parameters:(id)a4
{
  v6 = MEMORY[0x277CCAB70];
  v7 = a4;
  v8 = [v6 requestWithURL:a3 cachePolicy:1 timeoutInterval:30.0];
  [a1 addHeadersToRequest:v8];
  [a1 addPOSTParams:v7 toRequest:v8];

  [a1 startDataTaskWithRequest:v8];
}

+ (void)performHTTPPOSTCallWithParams:(id)a3 options:(int64_t)a4
{
  v6 = a3;
  v7 = [a1 urlRequestWithParams:v6 options:a4];
  [a1 addPOSTParams:v6 toRequest:v7];

  [a1 startDataTaskWithRequest:v7];
}

+ (void)performHTTPGETCallWithParams:(id)a3 options:(int64_t)a4
{
  v5 = [a1 urlRequestWithParams:a3 options:a4];
  [a1 startDataTaskWithRequest:v5];
}

+ (void)startDataTaskWithRequest:(id)a3
{
  v4 = a3;
  v6 = [a1 urlSession];
  v5 = [v6 dataTaskWithRequest:v4 completionHandler:&__block_literal_global_4];

  [v5 resume];
}

void __36__ICQLink_startDataTaskWithRequest___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = a4;
  if (v4)
  {
    v5 = _ICQGetLogSystem();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [v4 localizedDescription];
      v8 = 138412290;
      v9 = v6;
      _os_log_impl(&dword_275572000, v5, OS_LOG_TYPE_DEFAULT, "Error making HTTP call to url: %@", &v8, 0xCu);
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

+ (void)addHeadersToRequest:(id)a3
{
  v3 = a3;
  v4 = [ICQRequestProvider alloc];
  v5 = objc_opt_new();
  v6 = [v5 aa_primaryAppleAccount];
  v7 = [(ICQRequestProvider *)v4 initWithAccount:v6];

  [(ICQRequestProvider *)v7 addBasicHeadersToRequest:v3];
}

+ (void)addPOSTParams:(id)a3 toRequest:(id)a4
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  [v6 setHTTPMethod:@"POST"];
  [v6 setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];
  v12 = 0;
  v7 = [MEMORY[0x277CCAAA0] dataWithJSONObject:v5 options:0 error:&v12];
  v8 = v12;
  if (v8)
  {
    v9 = _ICQGetLogSystem();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v14 = v8;
      _os_log_impl(&dword_275572000, v9, OS_LOG_TYPE_DEFAULT, "Could not convert message body to JSON. Error: %@", buf, 0xCu);
    }

    v10 = _ICQGetLogSystem();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      [ICQLink addPOSTParams:v5 toRequest:v10];
    }
  }

  else
  {
    [v6 setHTTPBody:v7];
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)encodeWithCoder:(id)a3
{
  text = self->_text;
  v5 = a3;
  [v5 encodeObject:text forKey:@"text"];
  [v5 encodeInteger:self->_action forKey:@"action"];
  [v5 encodeInteger:self->_options forKey:@"options"];
  [v5 encodeObject:self->_parameters forKey:@"parameters"];
  [v5 encodeObject:self->_actionURL forKey:@"actionURL"];
  [v5 encodeObject:self->_serverUIContent forKey:@"serverUIContent"];
}

- (ICQLink)initWithCoder:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(ICQLink *)self init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"text"];
    text = v5->_text;
    v5->_text = v6;

    v5->_action = [v4 decodeIntegerForKey:@"action"];
    v5->_options = [v4 decodeIntegerForKey:@"options"];
    v8 = MEMORY[0x277CBEB98];
    v19 = objc_opt_class();
    v20 = objc_opt_class();
    v21 = objc_opt_class();
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:&v19 count:3];
    v10 = [v8 setWithArray:{v9, v19, v20}];
    v11 = [v4 decodeObjectOfClasses:v10 forKey:@"parameters"];
    parameters = v5->_parameters;
    v5->_parameters = v11;

    v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"actionURL"];
    actionURL = v5->_actionURL;
    v5->_actionURL = v13;

    v15 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"serverUIContent"];
    serverUIContent = v5->_serverUIContent;
    v5->_serverUIContent = v15;
  }

  v17 = *MEMORY[0x277D85DE8];
  return v5;
}

- (ICQLink)initWithActionString:(id)a3
{
  v4 = _ICQActionForString(a3);
  v5 = MEMORY[0x277CBEC10];

  return [(ICQLink *)self initWithText:&stru_288431E38 options:0 action:v4 parameters:v5];
}

- (ICQLink)initWithActionString:(id)a3 url:(id)a4
{
  v7 = a4;
  v8 = [(ICQLink *)self initWithText:&stru_288431E38 options:0 action:_ICQActionForString(a3) parameters:MEMORY[0x277CBEC10]];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_actionURL, a4);
  }

  return v9;
}

- (ICQLink)initWithAction:(int64_t)a3 url:(id)a4
{
  v7 = a4;
  v8 = [(ICQLink *)self initWithText:&stru_288431E38 options:0 action:a3 parameters:MEMORY[0x277CBEC10]];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_actionURL, a4);
  }

  return v9;
}

- (void)getCachedContentWithCompletion:(id)a3
{
  v4 = a3;
  v6 = +[ICQLiftUICache sharedCache];
  v5 = [(ICQLink *)self serverUIURL];
  [v6 fetchResponseForURL:v5 completion:v4];
}

+ (id)_icqDismissLinkForServerMessageParameters:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v4 = v3;
    v5 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v16;
      while (2)
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v16 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v15 + 1) + 8 * i);
          v10 = [v9 objectForKeyedSubscript:{@"id", v15}];
          if ([v10 isEqualToString:@"cancel"])
          {
            v11 = _ICQLinkForServerMessageParameterWithOptions(v9, 0);
            if (v11)
            {
              v12 = v11;

              goto LABEL_17;
            }
          }
        }

        v6 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
        if (v6)
        {
          continue;
        }

        break;
      }
    }
  }

  else
  {
    if (!v3)
    {
      v12 = 0;
      goto LABEL_18;
    }

    v4 = _ICQGetLogSystem();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v21 = v3;
      _os_log_impl(&dword_275572000, v4, OS_LOG_TYPE_DEFAULT, "links: expected array: invalid server message parameters:%@", buf, 0xCu);
    }
  }

  v12 = 0;
LABEL_17:

LABEL_18:
  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

- (void)dynamicUIRouteURL
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v4 = 138412290;
  v5 = v2;
  _os_log_error_impl(&dword_275572000, a2, OS_LOG_TYPE_ERROR, "Unable to find dynamicUI route in params %@", &v4, 0xCu);
  v3 = *MEMORY[0x277D85DE8];
}

- (void)purchaseAttribution
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v4 = 138412290;
  v5 = v2;
  _os_log_error_impl(&dword_275572000, a2, OS_LOG_TYPE_ERROR, "Unable to find dynamicUI purchase attribution in params %@", &v4, 0xCu);
  v3 = *MEMORY[0x277D85DE8];
}

+ (void)addPOSTParams:(uint64_t)a1 toRequest:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_debug_impl(&dword_275572000, a2, OS_LOG_TYPE_DEBUG, "Body: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end