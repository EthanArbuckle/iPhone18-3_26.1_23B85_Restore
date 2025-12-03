@interface SUScriptSubscriptionStatusRequest
+ (id)webScriptNameForKeyName:(id)name;
+ (id)webScriptNameForSelector:(SEL)selector;
+ (void)initialize;
- (NSString)carrierBundleProvisioningStyleName;
- (NSString)reasonName;
- (NSString)serviceName;
- (SUScriptSubscriptionStatusRequest)init;
- (id)ignoreCache;
- (id)scriptAttributeKeys;
- (id)wantsPartialResults;
- (void)_handleRequestCompletionWithSubscriptionStatus:(id)status isFinal:(BOOL)final scriptCallbackFunction:(id)function;
- (void)performRequestWithCallbackFunction:(id)function;
- (void)setCarrierBundleProvisioningStyleName:(id)name;
- (void)setIgnoreCache:(id)cache;
- (void)setReasonName:(id)name;
- (void)setServiceName:(id)name;
- (void)setWantsPartialResults:(id)results;
@end

@implementation SUScriptSubscriptionStatusRequest

- (SUScriptSubscriptionStatusRequest)init
{
  v3.receiver = self;
  v3.super_class = SUScriptSubscriptionStatusRequest;
  result = [(SUScriptObject *)&v3 init];
  if (result)
  {
    result->_carrierBundleProvisioningStyle = 1;
  }

  return result;
}

- (NSString)carrierBundleProvisioningStyleName
{
  [(SUScriptObject *)self lock];
  carrierBundleProvisioningStyle = self->_carrierBundleProvisioningStyle;
  [(SUScriptObject *)self unlock];
  if (carrierBundleProvisioningStyle > 2)
  {
    v4 = 0;
  }

  else
  {
    v4 = *off_1E8166AB0[carrierBundleProvisioningStyle];
  }

  return v4;
}

- (id)ignoreCache
{
  [(SUScriptObject *)self lock];
  ignoreCache = self->_ignoreCache;
  [(SUScriptObject *)self unlock];
  v4 = MEMORY[0x1E695E4D0];
  if (!ignoreCache)
  {
    v4 = MEMORY[0x1E695E4C0];
  }

  v5 = *v4;

  return v5;
}

- (NSString)reasonName
{
  [(SUScriptObject *)self lock];
  reason = self->_reason;
  [(SUScriptObject *)self unlock];
  if (reason == 1)
  {
    reasonNameDeepLink = [(SUScriptSubscriptionStatusRequest *)self reasonNameDeepLink];
  }

  else
  {
    reasonNameDeepLink = 0;
  }

  return reasonNameDeepLink;
}

- (NSString)serviceName
{
  [(SUScriptObject *)self lock];
  service = self->_service;
  [(SUScriptObject *)self unlock];
  if (service == 1)
  {
    serviceNameAppleMusic = [(SUScriptSubscriptionStatusRequest *)self serviceNameAppleMusic];
  }

  else
  {
    serviceNameAppleMusic = 0;
  }

  return serviceNameAppleMusic;
}

- (void)setCarrierBundleProvisioningStyleName:(id)name
{
  nameCopy = name;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if ([nameCopy isEqualToString:@"never"])
    {
      v4 = 0;
      goto LABEL_9;
    }

    if ([nameCopy isEqualToString:@"once"])
    {
      goto LABEL_8;
    }

    if ([nameCopy isEqualToString:@"always"])
    {
      v4 = 2;
      goto LABEL_9;
    }
  }

  [MEMORY[0x1E69E2F88] throwException:@"Invalid argument"];
LABEL_8:
  v4 = 1;
LABEL_9:
  [(SUScriptObject *)self lock];
  if (self->_carrierBundleProvisioningStyle != v4)
  {
    self->_carrierBundleProvisioningStyle = v4;
  }

  [(SUScriptObject *)self unlock];
}

- (void)setIgnoreCache:(id)cache
{
  cacheCopy = cache;
  if (objc_opt_respondsToSelector())
  {
    bOOLValue = [cacheCopy BOOLValue];
    [(SUScriptObject *)self lock];
    if (self->_ignoreCache != bOOLValue)
    {
      self->_ignoreCache = bOOLValue;
    }

    [(SUScriptObject *)self unlock];
  }

  else
  {
    [MEMORY[0x1E69E2F88] throwException:@"Invalid argument"];
  }
}

- (void)setReasonName:(id)name
{
  nameCopy = name;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 && (-[SUScriptSubscriptionStatusRequest reasonNameDeepLink](self, "reasonNameDeepLink"), v4 = objc_claimAutoreleasedReturnValue(), v5 = [nameCopy isEqualToString:v4], v4, (v5))
  {
    v6 = 1;
  }

  else
  {
    [MEMORY[0x1E69E2F88] throwException:@"Invalid argument"];
    v6 = 0;
  }

  [(SUScriptObject *)self lock];
  if (self->_reason != v6)
  {
    self->_reason = v6;
  }

  [(SUScriptObject *)self unlock];
}

- (void)setServiceName:(id)name
{
  nameCopy = name;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 && (-[SUScriptSubscriptionStatusRequest serviceNameAppleMusic](self, "serviceNameAppleMusic"), v4 = objc_claimAutoreleasedReturnValue(), v5 = [nameCopy isEqualToString:v4], v4, (v5))
  {
    v6 = 1;
  }

  else
  {
    [MEMORY[0x1E69E2F88] throwException:@"Invalid argument"];
    v6 = 0;
  }

  [(SUScriptObject *)self lock];
  if (self->_service != v6)
  {
    self->_service = v6;
  }

  [(SUScriptObject *)self unlock];
}

- (id)wantsPartialResults
{
  [(SUScriptObject *)self lock];
  wantsPartialResults = self->_wantsPartialResults;
  [(SUScriptObject *)self unlock];
  v4 = MEMORY[0x1E695E4D0];
  if (!wantsPartialResults)
  {
    v4 = MEMORY[0x1E695E4C0];
  }

  v5 = *v4;

  return v5;
}

- (void)setWantsPartialResults:(id)results
{
  resultsCopy = results;
  if (objc_opt_respondsToSelector())
  {
    bOOLValue = [resultsCopy BOOLValue];
    [(SUScriptObject *)self lock];
    if (self->_wantsPartialResults != bOOLValue)
    {
      self->_wantsPartialResults = bOOLValue;
    }

    [(SUScriptObject *)self unlock];
  }

  else
  {
    [MEMORY[0x1E69E2F88] throwException:@"Invalid argument"];
  }
}

- (void)performRequestWithCallbackFunction:(id)function
{
  functionCopy = function;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [[SUScriptFunction alloc] initWithScriptObject:functionCopy];
    [(SUScriptFunction *)v5 setThisObject:self];
    [(SUScriptObject *)self lock];
    service = self->_service;
    reason = self->_reason;
    carrierBundleProvisioningStyle = self->_carrierBundleProvisioningStyle;
    ignoreCache = self->_ignoreCache;
    wantsPartialResults = self->_wantsPartialResults;
    [(SUScriptObject *)self unlock];
    if (!service)
    {
      [MEMORY[0x1E69E2F88] throwException:@"Invalid argument"];
    }

    v11 = reason == 1;
    v12 = [objc_alloc(getICStoreRequestContextClass()) initWithBlock:&__block_literal_global_12];
    v13 = [objc_alloc(getICMusicSubscriptionStatusRequestClass()) initWithStoreRequestContext:v12];
    [v13 setCarrierBundleProvisioningStyle:carrierBundleProvisioningStyle];
    [v13 setReason:v11];
    if (ignoreCache)
    {
      [v13 setShouldIgnoreCache:1];
    }

    else
    {
      [v13 setAllowsFallbackToExpiredStatus:1];
      [v13 setAllowsFallbackToStatusNeedingReload:1];
    }

    sharedStatusController = [(objc_class *)getICMusicSubscriptionStatusControllerClass() sharedStatusController];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __72__SUScriptSubscriptionStatusRequest_performRequestWithCallbackFunction___block_invoke_2;
    v16[3] = &unk_1E8166A90;
    v18 = ignoreCache;
    v19 = wantsPartialResults;
    v16[4] = self;
    v17 = v5;
    v15 = v5;
    [sharedStatusController performSubscriptionStatusRequest:v13 withStatusHandler:v16];
  }

  else
  {
    [MEMORY[0x1E69E2F88] throwException:@"Invalid argument"];
  }
}

void __72__SUScriptSubscriptionStatusRequest_performRequestWithCallbackFunction___block_invoke(uint64_t a1, void *a2)
{
  v2 = getICUserIdentityClass_0;
  v3 = a2;
  v4 = [(objc_class *)v2() activeAccount];
  [v3 setIdentity:v4];

  v5 = [(objc_class *)getICUserIdentityStoreClass() defaultIdentityStore];
  [v3 setIdentityStore:v5];

  [v3 setAllowsExpiredBags:1];
  v6 = [objc_alloc(getICURLResponseAuthenticationProviderClass()) initWithUserInteractionLevel:1];
  [v3 setAuthenticationProvider:v6];
}

void __72__SUScriptSubscriptionStatusRequest_performRequestWithCallbackFunction___block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v12 = [v5 subscriptionStatus];
  v6 = [v5 isFinalResponse];

  if (a3 && (*(a1 + 48) & 1) == 0)
  {
    v9 = [(objc_class *)getICUserIdentityClass_0() autoupdatingActiveAccount];
    v10 = [(objc_class *)getICMusicSubscriptionStatusMonitorClass_0() sharedMonitorForIdentity:v9];
    v11 = [v10 subscriptionStatus];

    v7 = 1;
    v8 = v11;
  }

  else if (v6)
  {
    v7 = 1;
    v8 = v12;
  }

  else
  {
    v8 = v12;
    if (*(a1 + 49) != 1)
    {
      goto LABEL_9;
    }

    v7 = 0;
  }

  v13 = v8;
  [*(a1 + 32) _handleRequestCompletionWithSubscriptionStatus:v8 isFinal:v7 scriptCallbackFunction:*(a1 + 40)];
  v8 = v13;
LABEL_9:
}

+ (id)webScriptNameForKeyName:(id)name
{
  nameCopy = name;
  v5 = [__KeyMapping_54 objectForKey:nameCopy];
  if (!v5)
  {
    v7.receiver = self;
    v7.super_class = &OBJC_METACLASS___SUScriptSubscriptionStatusRequest;
    v5 = objc_msgSendSuper2(&v7, sel_webScriptNameForKeyName_, nameCopy);
  }

  return v5;
}

+ (id)webScriptNameForSelector:(SEL)selector
{
  v5 = SUWebScriptNameForSelector2(selector, &__SelectorMapping_39, 1);
  if (!v5)
  {
    v7.receiver = self;
    v7.super_class = &OBJC_METACLASS___SUScriptSubscriptionStatusRequest;
    v5 = objc_msgSendSuper2(&v7, sel_webScriptNameForSelector_, selector);
  }

  return v5;
}

- (id)scriptAttributeKeys
{
  v5.receiver = self;
  v5.super_class = SUScriptSubscriptionStatusRequest;
  scriptAttributeKeys = [(SUScriptObject *)&v5 scriptAttributeKeys];
  allKeys = [__KeyMapping_54 allKeys];
  [scriptAttributeKeys addObjectsFromArray:allKeys];

  return scriptAttributeKeys;
}

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    __SelectorMapping_39 = sel_performRequestWithCallbackFunction_;
    *algn_1EBF3B458 = @"perform";
    v2 = __KeyMapping_54;
    __KeyMapping_54 = &unk_1F41EAA38;
  }
}

- (void)_handleRequestCompletionWithSubscriptionStatus:(id)status isFinal:(BOOL)final scriptCallbackFunction:(id)function
{
  finalCopy = final;
  functionCopy = function;
  statusCopy = status;
  v8 = [[SUScriptSubscriptionStatusResponse alloc] initWithSubscriptionStatus:statusCopy isFinal:finalCopy];

  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:{v8, 0}];
  [functionCopy callWithArguments:v9];

  if (finalCopy)
  {
    [functionCopy setThisObject:0];
  }
}

@end