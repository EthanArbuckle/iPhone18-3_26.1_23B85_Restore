@interface WebFilterEvaluator
+ (id)createWithResponse:(id)response;
+ (id)sharedBloomFilter;
- ($115C4C562B26FF47E01F9F4EA65B5887)browserAuditToken;
- (WebFilterEvaluator)initWithCoder:(id)coder;
- (WebFilterEvaluator)initWithResponse:(id)response;
- (id)addData:(id)data;
- (id)blockPageForPageWithTitle:(id)title origURL:(id)l;
- (id)debugPageForPageWithData:(id)data forURL:(id)l debugString:(id)string;
- (int)filterState;
- (void)attemptUnblockWithCompletion:(id)completion;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)filterState;
- (void)setBrowserAuditToken:(id *)token;
- (void)unblockWithCompletion:(id)completion;
- (void)userDidCancel;
- (void)userEnteredCorrectPIN;
@end

@implementation WebFilterEvaluator

+ (id)sharedBloomFilter
{
  if (sharedBloomFilter_once != -1)
  {
    +[WebFilterEvaluator sharedBloomFilter];
  }

  return sharedBloomFilter__bloomFilter;
}

void __39__WebFilterEvaluator_sharedBloomFilter__block_invoke()
{
  sharedBloomFilter__bloomFilter = objc_opt_new();
  v0 = __WFDefaultLog();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEBUG))
  {
    __39__WebFilterEvaluator_sharedBloomFilter__block_invoke_cold_1();
  }
}

- (id)debugPageForPageWithData:(id)data forURL:(id)l debugString:(id)string
{
  absoluteString = [l absoluteString];

  return ComposeDebugPageSimple(data, absoluteString, string);
}

- (id)blockPageForPageWithTitle:(id)title origURL:(id)l
{
  v7 = NSUserName();
  v8 = [[WFUserSettings alloc] initWithUserName:v7];
  v9 = __WFDefaultLog();
  v10 = v9;
  if (v8)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      [WebFilterEvaluator blockPageForPageWithTitle:origURL:];
    }

    v11 = [[WFBlockPage alloc] initWithUsername:v7 overridesAllowded:[(WFUserSettings *)v8 overridesAllowed]];

    [(WFBlockPage *)v11 setFormActionURLString:@"x-apple-content-filter://unblock"];
    -[WFBlockPage setUserVisibleURLString:](v11, "setUserVisibleURLString:", [l absoluteString]);
    page = [(WFBlockPage *)v11 page];

    if (!page)
    {
      page = @"<html> <head><title>Error composing block page</title></head> <body>Error composing block page</body> </html>";
    }

    if (![(WebFilterEvaluator *)self remoteViewController])
    {
      v13 = objc_opt_class();
      v17[0] = MEMORY[0x277D85DD0];
      v17[1] = 3221225472;
      v17[2] = __56__WebFilterEvaluator_blockPageForPageWithTitle_origURL___block_invoke;
      v17[3] = &unk_279E7DCD8;
      v17[4] = self;
      [v13 requestViewController:@"WFServicePINEntryNavigationController" fromServiceWithBundleIdentifier:@"com.apple.WebContentFilter.remoteUI.WebContentAnalysisUI" connectionHandler:v17];
      v14 = __WFDefaultLog();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        [WebFilterEvaluator blockPageForPageWithTitle:v14 origURL:?];
      }
    }

    v15 = __WFDefaultLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      [WebFilterEvaluator blockPageForPageWithTitle:origURL:];
    }

    return [(__CFString *)page dataUsingEncoding:4];
  }

  else
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [(WebFilterEvaluator *)title blockPageForPageWithTitle:l origURL:v10];
    }

    return 0;
  }
}

uint64_t __56__WebFilterEvaluator_blockPageForPageWithTitle_origURL___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __WFDefaultLog();
  if (!a2)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __56__WebFilterEvaluator_blockPageForPageWithTitle_origURL___block_invoke_cold_2();
      if (!a3)
      {
        goto LABEL_13;
      }

      goto LABEL_7;
    }

LABEL_6:
    if (!a3)
    {
      goto LABEL_13;
    }

    goto LABEL_7;
  }

  if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    goto LABEL_6;
  }

  __56__WebFilterEvaluator_blockPageForPageWithTitle_origURL___block_invoke_cold_1();
  if (!a3)
  {
LABEL_13:
    result = [*(a1 + 32) remoteViewController];
    if (!result)
    {
      return [*(a1 + 32) setRemoteViewController:a2];
    }

    return result;
  }

LABEL_7:
  v7 = __WFDefaultLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    __56__WebFilterEvaluator_blockPageForPageWithTitle_origURL___block_invoke_cold_3();
  }

  v8 = __WFDefaultLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    __56__WebFilterEvaluator_blockPageForPageWithTitle_origURL___block_invoke_cold_4();
  }

  return (*(*(*(a1 + 32) + 40) + 16))();
}

+ (id)createWithResponse:(id)response
{
  if (!_WebFilterIsActive())
  {
    return 0;
  }

  if ((_gWebFilterActivated & 1) == 0)
  {
    _gWebFilterActivated = 1;
  }

  v4 = [[WebFilterEvaluator alloc] initWithResponse:response];

  return v4;
}

- (WebFilterEvaluator)initWithResponse:(id)response
{
  v7.receiver = self;
  v7.super_class = WebFilterEvaluator;
  v4 = [(WebFilterEvaluator *)&v7 init];
  v5 = v4;
  if (v4)
  {
    v4->_filterState = 2;
    v4->_buffer = objc_alloc_init(MEMORY[0x277CBEB28]);
    v5->_url = [response URL];
    v5->_completion = &__block_literal_global_32;
  }

  return v5;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = WebFilterEvaluator;
  [(WebFilterEvaluator *)&v3 dealloc];
}

- (id)addData:(id)data
{
  if (!data || ([(NSMutableData *)self->_buffer appendData:?], [(NSMutableData *)self->_buffer length]>> 15))
  {
    v6 = [(NSMutableData *)self->_buffer length];
    if (v6)
    {
      v7 = v6;
      v8 = [[WFUserSettings alloc] initWithUserName:NSUserName()];
      self->_filterState = 3;
      if (v7 <= 0x8000)
      {
        buffer = self->_buffer;
      }

      else
      {
        buffer = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:-[NSMutableData bytes](self->_buffer length:"bytes") freeWhenDone:{0x8000, 0}];
      }

      p_url = &self->_url;
      lowercaseString = [(NSString *)[(NSURL *)self->_url scheme] lowercaseString];
      v12 = [(NSString *)lowercaseString isEqualToString:@"https"]|| [(NSString *)lowercaseString isEqualToString:@"http"];
      absoluteString = [(NSURL *)*p_url absoluteString];
      v14 = [(WFWebPageDecorator *)WFWebPageToFilterText webPageWithData:buffer URLString:absoluteString];
      pageTitle = [v14 pageTitle];
      if (!pageTitle)
      {
        v16 = __WFDefaultLog();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          [WebFilterEvaluator addData:];
        }

        pageTitle = [(NSURL *)*p_url host];
      }

      self->_pageTitle = [(NSString *)pageTitle copy];
      if (!_WebFilterIsActive())
      {
        self->_filterState = 0;
        v21 = __WFDefaultLog();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          [WebFilterEvaluator addData:];
        }

        return self->_buffer;
      }

      if ([(NSString *)lowercaseString isEqualToString:@"https"]&& [(WFUserSettings *)v8 alwaysAllowHTTPS])
      {
        self->_filterState = 0;
        v17 = __WFDefaultLog();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
        {
          [WebFilterEvaluator addData:?];
        }

        return self->_buffer;
      }

      if (v12)
      {
        if ([(WFUserSettings *)v8 contentFilterOverriddenBlackListContainsURL:absoluteString])
        {
          v18 = WFDebugLevel();
          v19 = *p_url;
          if (v18 == 1)
          {
            v20 = [(WebFilterEvaluator *)self debugPageForPageWithData:self->_buffer forURL:v19 debugString:@"URL was on content filter blacklist"];
          }

          else
          {
            v20 = [(WebFilterEvaluator *)self blockPageForPageWithTitle:self->_pageTitle origURL:v19];
          }

          v23 = v20;
          [(NSMutableData *)self->_buffer setLength:0];
          self->_filterState = 1;
          v24 = __WFDefaultLog();
          if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
          {
            [WebFilterEvaluator addData:?];
          }

          return v23;
        }

        if ([(WFUserSettings *)v8 contentFilterEnabled])
        {
          if ([(WFUserSettings *)v8 autoWhitelistContainsURL:*p_url])
          {
            v22 = __WFDefaultLog();
            if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
            {
              [WebFilterEvaluator addData:?];
            }
          }

          else if (-[WFUserSettings contentFilterOverriddenWhiteListContainsURL:withAppleAllowList:](v8, "contentFilterOverriddenWhiteListContainsURL:withAppleAllowList:", absoluteString, [objc_msgSend(objc_opt_class() "sharedBloomFilter")]))
          {
            v25 = __WFDefaultLog();
            if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
            {
              [WebFilterEvaluator addData:?];
            }
          }

          else if (v14)
          {
            if ([objc_msgSend(objc_opt_class() "sharedBloomFilter")])
            {
              if (WFDebugLevel() == 1)
              {
                v26 = [(WebFilterEvaluator *)self debugPageForPageWithData:self->_buffer forURL:self->_url debugString:@"URL is explicit"];
              }

              else
              {
                v35 = __WFDefaultLog();
                if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
                {
                  [WebFilterEvaluator addData:?];
                }

                v26 = [(WebFilterEvaluator *)self blockPageForPageWithTitle:self->_pageTitle origURL:self->_url];
              }

              v23 = v26;
              [(NSMutableData *)self->_buffer setLength:0];
              self->_filterState = 1;
              v36 = __WFDefaultLog();
              if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
              {
                [WebFilterEvaluator addData:?];
              }

              return v23;
            }

            v28 = __WFDefaultLog();
            if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
            {
              [WebFilterEvaluator addData:?];
            }
          }

          else
          {
            v27 = __WFDefaultLog();
            if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
            {
              [WebFilterEvaluator addData:?];
            }
          }
        }

        if ([(WFUserSettings *)v8 whiteListEnabled])
        {
          if (![(WFUserSettings *)v8 whiteListContainsURL:absoluteString]&& ![(WFUserSettings *)v8 autoWhitelistContainsURL:*p_url])
          {
            v31 = WFDebugLevel();
            v32 = *p_url;
            if (v31 == 1)
            {
              v33 = [(WebFilterEvaluator *)self debugPageForPageWithData:self->_buffer forURL:v32 debugString:@"URL was on content filter blacklist"];
            }

            else
            {
              v33 = [(WebFilterEvaluator *)self blockPageForPageWithTitle:self->_pageTitle origURL:v32];
            }

            v23 = v33;
            [(NSMutableData *)self->_buffer setLength:0];
            self->_filterState = 1;
            v34 = __WFDefaultLog();
            if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
            {
              [WebFilterEvaluator addData:?];
            }

            return v23;
          }

          v29 = __WFDefaultLog();
          if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
          {
            [WebFilterEvaluator addData:?];
          }
        }
      }

      v30 = __WFDefaultLog();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
      {
        [WebFilterEvaluator addData:?];
      }
    }

    self->_filterState = 0;
    return self->_buffer;
  }

  v4 = MEMORY[0x277CBEA90];

  return [v4 data];
}

- (int)filterState
{
  v3 = __WFDefaultLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [(WebFilterEvaluator *)self filterState];
  }

  return self->_filterState;
}

- (void)attemptUnblockWithCompletion:(id)completion
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __51__WebFilterEvaluator_attemptUnblockWithCompletion___block_invoke;
  v3[3] = &unk_279E7DD20;
  v3[4] = completion;
  [(WebFilterEvaluator *)self unblockWithCompletion:v3];
}

uint64_t __51__WebFilterEvaluator_attemptUnblockWithCompletion___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v4 = __WFDefaultLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __51__WebFilterEvaluator_attemptUnblockWithCompletion___block_invoke_cold_1();
    }
  }

  return (*(*(a1 + 32) + 16))();
}

- (void)unblockWithCompletion:(id)completion
{
  if (completion)
  {
    self->_completion = [completion copy];
  }

  if ([(WebFilterEvaluator *)self wasBlocked])
  {
    v4 = [objc_msgSend(objc_msgSend(MEMORY[0x277D75128] "sharedApplication")];
    v5 = objc_opt_class();
    objc_initWeak(&location, self);
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __44__WebFilterEvaluator_unblockWithCompletion___block_invoke;
    v7[3] = &unk_279E7DD98;
    objc_copyWeak(&v8, &location);
    v7[4] = self;
    v7[5] = v4;
    [v5 requestViewController:@"WFServicePINEntryNavigationController" fromServiceWithBundleIdentifier:@"com.apple.WebContentFilter.remoteUI.WebContentAnalysisUI" connectionHandler:v7];
    objc_destroyWeak(&v8);
    objc_destroyWeak(&location);
  }

  else
  {
    v6 = __WFDefaultLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      [WebFilterEvaluator unblockWithCompletion:];
    }

    (*(self->_completion + 2))();
  }
}

id __44__WebFilterEvaluator_unblockWithCompletion___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  result = objc_loadWeak((a1 + 48));
  if (!result)
  {
    return result;
  }

  v7 = result;
  v8 = __WFDefaultLog();
  if (a2)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      __56__WebFilterEvaluator_blockPageForPageWithTitle_origURL___block_invoke_cold_1();
      if (!a3)
      {
        goto LABEL_14;
      }

      goto LABEL_8;
    }
  }

  else if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    __56__WebFilterEvaluator_blockPageForPageWithTitle_origURL___block_invoke_cold_2();
    if (a3)
    {
      goto LABEL_8;
    }

LABEL_14:
    [v7 setRemoteViewController:a2];
    [a2 setDelegate:v7];
    [a2 setURL:*(*(a1 + 32) + 16)];
    [a2 setPageTitle:*(*(a1 + 32) + 24)];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __44__WebFilterEvaluator_unblockWithCompletion___block_invoke_50;
    v11[3] = &unk_279E7DD70;
    v12 = *(a1 + 32);
    v13 = a2;
    return [a2 getIsPINPresentWithCompletion:v11];
  }

  if (!a3)
  {
    goto LABEL_14;
  }

LABEL_8:
  v9 = __WFDefaultLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    __44__WebFilterEvaluator_unblockWithCompletion___block_invoke_cold_3();
  }

  v10 = __WFDefaultLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    __44__WebFilterEvaluator_unblockWithCompletion___block_invoke_cold_4();
  }

  return (*(*(*(a1 + 32) + 40) + 16))();
}

uint64_t __44__WebFilterEvaluator_unblockWithCompletion___block_invoke_50(void *a1, int a2, uint64_t a3)
{
  if (a3)
  {
    v4 = __WFDefaultLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      __44__WebFilterEvaluator_unblockWithCompletion___block_invoke_cold_3();
    }

    v5 = __WFDefaultLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __44__WebFilterEvaluator_unblockWithCompletion___block_invoke_cold_4();
    }

    return (*(*(a1[4] + 40) + 16))();
  }

  else if (a2)
  {
    v7 = a1[5];
    v8 = a1[6];

    return [v7 presentViewController:v8 animated:1 completion:&__block_literal_global_53];
  }

  else
  {
    v9 = a1[6];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __44__WebFilterEvaluator_unblockWithCompletion___block_invoke_2;
    v10[3] = &unk_279E7DD48;
    v10[4] = a1[4];
    return [v9 permitURLWithCompletion:v10];
  }
}

uint64_t __44__WebFilterEvaluator_unblockWithCompletion___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v4 = __WFDefaultLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    __44__WebFilterEvaluator_unblockWithCompletion___block_invoke_2_cold_1();
    if (!a2)
    {
      return (*(*(*(a1 + 32) + 40) + 16))();
    }
  }

  else if (!a2)
  {
    return (*(*(*(a1 + 32) + 40) + 16))();
  }

  v5 = __WFDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    __44__WebFilterEvaluator_unblockWithCompletion___block_invoke_cold_4();
  }

  return (*(*(*(a1 + 32) + 40) + 16))();
}

- (void)encodeWithCoder:(id)coder
{
  filterState = self->_filterState;
  if (filterState <= 3 && filterState != 1)
  {
    NSLog(&cfstr_Webcontentfilt.isa, a2);
    filterState = self->_filterState;
  }

  [coder encodeObject:objc_msgSend(MEMORY[0x277CCABB0] forKey:{"numberWithUnsignedInteger:", filterState), @"WebContentFilterStateKey"}];
  [coder encodeObject:self->_url forKey:@"WebContentFilterURLKey"];
  pageTitle = self->_pageTitle;

  [coder encodeObject:pageTitle forKey:@"WebContentFilterPageTitleKey"];
}

- (WebFilterEvaluator)initWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = WebFilterEvaluator;
  v4 = [(WebFilterEvaluator *)&v6 init];
  if (v4)
  {
    v4->_filterState = [objc_msgSend(coder decodeObjectOfClass:objc_opt_class() forKey:{@"WebContentFilterStateKey", "unsignedIntegerValue"}];
    v4->_url = [coder decodeObjectOfClass:objc_opt_class() forKey:@"WebContentFilterURLKey"];
    v4->_pageTitle = [coder decodeObjectOfClass:objc_opt_class() forKey:@"WebContentFilterPageTitleKey"];
  }

  return v4;
}

- (void)userEnteredCorrectPIN
{
  remoteViewController = [(WebFilterEvaluator *)self remoteViewController];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __43__WebFilterEvaluator_userEnteredCorrectPIN__block_invoke;
  v4[3] = &unk_279E7DDC0;
  v4[4] = self;
  [(WFRemotePINEntryViewController *)remoteViewController dismissViewControllerAnimated:1 completion:v4];
}

uint64_t __43__WebFilterEvaluator_userEnteredCorrectPIN__block_invoke(uint64_t a1)
{
  v2 = __WFDefaultLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __43__WebFilterEvaluator_userEnteredCorrectPIN__block_invoke_cold_1();
  }

  return (*(*(*(a1 + 32) + 40) + 16))();
}

- (void)userDidCancel
{
  remoteViewController = [(WebFilterEvaluator *)self remoteViewController];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __35__WebFilterEvaluator_userDidCancel__block_invoke;
  v4[3] = &unk_279E7DDC0;
  v4[4] = self;
  [(WFRemotePINEntryViewController *)remoteViewController dismissViewControllerAnimated:1 completion:v4];
}

uint64_t __35__WebFilterEvaluator_userDidCancel__block_invoke(uint64_t a1)
{
  v2 = __WFDefaultLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __35__WebFilterEvaluator_userDidCancel__block_invoke_cold_1();
  }

  if ([MEMORY[0x277CCA9B8] errorWithDomain:@"WFPINEntryErrorDomain" code:2 userInfo:0])
  {
    v3 = __WFDefaultLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __35__WebFilterEvaluator_userDidCancel__block_invoke_cold_2(v3);
    }
  }

  return (*(*(*(a1 + 32) + 40) + 16))(*(*(a1 + 32) + 40), 0, [MEMORY[0x277CCA9B8] errorWithDomain:@"WFPINEntryErrorDomain" code:2 userInfo:0]);
}

- ($115C4C562B26FF47E01F9F4EA65B5887)browserAuditToken
{
  v3 = *&self[2].var0[2];
  *retstr->var0 = *&self[1].var0[6];
  *&retstr->var0[4] = v3;
  return self;
}

- (void)setBrowserAuditToken:(id *)token
{
  v3 = *token->var0;
  *&self->_browserAuditToken.val[4] = *&token->var0[4];
  *self->_browserAuditToken.val = v3;
}

void __39__WebFilterEvaluator_sharedBloomFilter__block_invoke_cold_1()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)blockPageForPageWithTitle:origURL:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)blockPageForPageWithTitle:(void *)a1 origURL:(NSObject *)a2 .cold.2(void *a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  [a1 remoteViewController];
  OUTLINED_FUNCTION_4();
  _os_log_debug_impl(&dword_272D73000, a2, OS_LOG_TYPE_DEBUG, "WFRemotePINEntryViewController is %s", v4, 0xCu);
  v3 = *MEMORY[0x277D85DE8];
}

- (void)blockPageForPageWithTitle:origURL:.cold.3()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)blockPageForPageWithTitle:(os_log_t)log origURL:.cold.4(uint64_t a1, uint64_t a2, os_log_t log)
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = 136446723;
  v5 = "[WebFilterEvaluator blockPageForPageWithTitle:origURL:]";
  v6 = 2113;
  v7 = a1;
  v8 = 2113;
  v9 = a2;
  _os_log_error_impl(&dword_272D73000, log, OS_LOG_TYPE_ERROR, "**** Error %{public}s: nil block page for title %{private}@, URL %{private}@", &v4, 0x20u);
  v3 = *MEMORY[0x277D85DE8];
}

void __56__WebFilterEvaluator_blockPageForPageWithTitle_origURL___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __56__WebFilterEvaluator_blockPageForPageWithTitle_origURL___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __56__WebFilterEvaluator_blockPageForPageWithTitle_origURL___block_invoke_cold_3()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

void __56__WebFilterEvaluator_blockPageForPageWithTitle_origURL___block_invoke_cold_4()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)addData:.cold.1()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)addData:(uint64_t *)a1 .cold.2(uint64_t *a1)
{
  OUTLINED_FUNCTION_5(a1, *MEMORY[0x277D85DE8]);
  v2 = *v1;
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_7(&dword_272D73000, v3, v4, "WebFilterEvaluator:addData: %{private}@ is not blocked: '%{private}@' is not explicit");
  v5 = *MEMORY[0x277D85DE8];
}

- (void)addData:(uint64_t *)a1 .cold.3(uint64_t *a1)
{
  OUTLINED_FUNCTION_5(a1, *MEMORY[0x277D85DE8]);
  v2 = *v1;
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_7(&dword_272D73000, v3, v4, "WebFilterEvaluator:addData: Getting block page for %{private}@ with title %{private}@");
  v5 = *MEMORY[0x277D85DE8];
}

- (void)addData:(uint64_t *)a1 .cold.4(uint64_t *a1)
{
  OUTLINED_FUNCTION_5(a1, *MEMORY[0x277D85DE8]);
  v2 = *v1;
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_7(&dword_272D73000, v3, v4, "WebFilterEvaluator:addData: %{private}@ is blocked: '%{private}@' is explicit");
  v5 = *MEMORY[0x277D85DE8];
}

- (void)addData:(uint64_t *)a1 .cold.5(uint64_t *a1)
{
  OUTLINED_FUNCTION_5(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)addData:(uint64_t *)a1 .cold.6(uint64_t *a1)
{
  OUTLINED_FUNCTION_5(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)addData:(uint64_t *)a1 .cold.7(uint64_t *a1)
{
  OUTLINED_FUNCTION_5(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)addData:(uint64_t *)a1 .cold.8(uint64_t *a1)
{
  OUTLINED_FUNCTION_5(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)addData:(uint64_t *)a1 .cold.9(uint64_t *a1)
{
  OUTLINED_FUNCTION_5(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)addData:(uint64_t *)a1 .cold.10(uint64_t *a1)
{
  OUTLINED_FUNCTION_5(a1, *MEMORY[0x277D85DE8]);
  v2 = *v1;
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_7(&dword_272D73000, v3, v4, "WebFilterEvaluator:addData: '%{private}@' at %{private}@ is not blocked");
  v5 = *MEMORY[0x277D85DE8];
}

- (void)addData:(uint64_t *)a1 .cold.11(uint64_t *a1)
{
  OUTLINED_FUNCTION_5(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)addData:(uint64_t *)a1 .cold.12(uint64_t *a1)
{
  OUTLINED_FUNCTION_5(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)addData:.cold.13()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)filterState
{
  v8 = *MEMORY[0x277D85DE8];
  v7 = *(self + 8);
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x16u);
  v6 = *MEMORY[0x277D85DE8];
}

void __51__WebFilterEvaluator_attemptUnblockWithCompletion___block_invoke_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)unblockWithCompletion:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

void __44__WebFilterEvaluator_unblockWithCompletion___block_invoke_cold_3()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

void __44__WebFilterEvaluator_unblockWithCompletion___block_invoke_cold_4()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

void __44__WebFilterEvaluator_unblockWithCompletion___block_invoke_2_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

void __43__WebFilterEvaluator_userEnteredCorrectPIN__block_invoke_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

void __35__WebFilterEvaluator_userDidCancel__block_invoke_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

void __35__WebFilterEvaluator_userDidCancel__block_invoke_cold_2(NSObject *a1)
{
  v4 = *MEMORY[0x277D85DE8];
  [MEMORY[0x277CCA9B8] errorWithDomain:@"WFPINEntryErrorDomain" code:2 userInfo:0];
  v3[0] = 136446466;
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(&dword_272D73000, a1, OS_LOG_TYPE_ERROR, "%{public}s completion: error: %@", v3, 0x16u);
  v2 = *MEMORY[0x277D85DE8];
}

@end