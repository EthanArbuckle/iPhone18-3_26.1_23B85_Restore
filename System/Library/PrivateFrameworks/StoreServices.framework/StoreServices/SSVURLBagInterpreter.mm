@interface SSVURLBagInterpreter
- (BOOL)shouldSendAnonymousMachineIdentifierForURL:(id)l;
- (NSArray)AMDDomains;
- (NSDictionary)mescalSignedActions;
- (NSDictionary)mescalSignedRequests;
- (NSDictionary)mescalSignedResponses;
- (NSString)storeFrontSuffix;
- (SSVURLBagInterpreter)initWithSSBag:(id)bag;
- (SSVURLBagInterpreter)initWithURLBag:(id)bag;
- (SSVURLBagInterpreter)initWithURLBagDictionary:(id)dictionary;
- (id)URLForURLBagKey:(id)key;
- (id)_valueForKey:(id)key withClass:(Class)class;
- (id)cachedValueFromBag:(id)bag key:(id)key withType:(unint64_t)type updateCache:(BOOL)cache;
- (id)mescalSignaturePolicyForRequestURL:(id)l;
- (id)mescalSignaturePolicyForResponseURL:(id)l;
@end

@implementation SSVURLBagInterpreter

- (SSVURLBagInterpreter)initWithURLBag:(id)bag
{
  bagCopy = bag;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__9;
  v19 = __Block_byref_object_dispose__9;
  v20 = 0;
  v5 = dispatch_semaphore_create(0);
  v9 = MEMORY[0x1E69E9820];
  v10 = 3221225472;
  v11 = __39__SSVURLBagInterpreter_initWithURLBag___block_invoke;
  v12 = &unk_1E84ADCE0;
  v14 = &v15;
  v6 = v5;
  v13 = v6;
  [bagCopy loadWithCompletionBlock:&v9];
  dispatch_semaphore_wait(v6, 0xFFFFFFFFFFFFFFFFLL);
  v7 = [(SSVURLBagInterpreter *)self initWithURLBagDictionary:v16[5], v9, v10, v11, v12];

  _Block_object_dispose(&v15, 8);
  return v7;
}

void __39__SSVURLBagInterpreter_initWithURLBag___block_invoke(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

- (SSVURLBagInterpreter)initWithURLBagDictionary:(id)dictionary
{
  v25 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v23.receiver = self;
  v23.super_class = SSVURLBagInterpreter;
  v5 = [(SSVURLBagInterpreter *)&v23 init];
  if (v5)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
    cachedBagValues = v5->_cachedBagValues;
    v5->_cachedBagValues = v6;

    v8 = 0;
    v24[2] = xmmword_1E84ADD20;
    v24[3] = *&off_1E84ADD30;
    v24[4] = xmmword_1E84ADD40;
    v24[0] = xmmword_1E84ADD00;
    v24[1] = *&off_1E84ADD10;
    do
    {
      v9 = *(v24 + v8);
      v10 = [dictionaryCopy objectForKey:v9];
      if (v10)
      {
        [(NSMutableDictionary *)v5->_cachedBagValues setObject:v10 forKey:v9];
      }

      v8 += 8;
    }

    while (v8 != 80);
    v11 = [dictionaryCopy objectForKey:@"musicCommon"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = [v11 objectForKey:@"musicMescal"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v13 = [v12 objectForKey:@"actions"];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v14 = [v13 copy];
          subscriptionSignedActions = v5->_subscriptionSignedActions;
          v5->_subscriptionSignedActions = v14;
        }

        v16 = [[SSVSAPSignaturePolicy alloc] initWithSignedActionsDictionary:v12];
        subscriptionSignaturePolicy = v5->_subscriptionSignaturePolicy;
        v5->_subscriptionSignaturePolicy = v16;

        v18 = [v12 objectForKey:@"primeUrl"];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v19 = [MEMORY[0x1E695DFF8] URLWithString:v18];
          mescalPrimingURL = v5->_mescalPrimingURL;
          v5->_mescalPrimingURL = v19;
        }
      }
    }

    for (i = 72; i != -8; i -= 8)
    {
    }
  }

  return v5;
}

- (SSVURLBagInterpreter)initWithSSBag:(id)bag
{
  bagCopy = bag;
  v26.receiver = self;
  v26.super_class = SSVURLBagInterpreter;
  v5 = [(SSVURLBagInterpreter *)&v26 init];
  if (v5)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
    cachedBagValues = v5->_cachedBagValues;
    v5->_cachedBagValues = v6;

    v8 = [(SSVURLBagInterpreter *)v5 cachedValueFromBag:bagCopy key:@"amd-domains" withType:0 updateCache:1];
    v9 = [(SSVURLBagInterpreter *)v5 cachedValueFromBag:bagCopy key:@"sign-sap-setup-cert" withType:5 updateCache:1];
    v10 = [(SSVURLBagInterpreter *)v5 cachedValueFromBag:bagCopy key:@"sign-sap-setup" withType:5 updateCache:1];
    v11 = [(SSVURLBagInterpreter *)v5 cachedValueFromBag:bagCopy key:@"signed-actions" withType:2 updateCache:1];
    v12 = [(SSVURLBagInterpreter *)v5 cachedValueFromBag:bagCopy key:@"sign-sap-request" withType:2 updateCache:1];
    v13 = [(SSVURLBagInterpreter *)v5 cachedValueFromBag:bagCopy key:@"sign-sap-response" withType:2 updateCache:1];
    v14 = [(SSVURLBagInterpreter *)v5 cachedValueFromBag:bagCopy key:@"storefront-header-suffix" withType:5 updateCache:1];
    v15 = [(SSVURLBagInterpreter *)v5 cachedValueFromBag:bagCopy key:@"fps-request" withType:5 updateCache:1];
    v16 = [(SSVURLBagInterpreter *)v5 cachedValueFromBag:bagCopy key:@"fps-cert" withType:5 updateCache:1];
    v17 = [(SSVURLBagInterpreter *)v5 cachedValueFromBag:bagCopy key:@"musicCommon" withType:2 updateCache:0];
    v18 = [v17 objectForKey:@"musicMescal"];
    if (v18)
    {
      v19 = [[SSVSAPSignaturePolicy alloc] initWithSignedActionsDictionary:v18];
      subscriptionSignaturePolicy = v5->_subscriptionSignaturePolicy;
      v5->_subscriptionSignaturePolicy = v19;

      v21 = [v18 objectForKey:@"actions"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        objc_storeStrong(&v5->_subscriptionSignedActions, v21);
      }

      v22 = [v18 objectForKey:@"primeUrl"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v23 = [MEMORY[0x1E695DFF8] URLWithString:v22];
        mescalPrimingURL = v5->_mescalPrimingURL;
        v5->_mescalPrimingURL = v23;
      }
    }
  }

  return v5;
}

- (id)cachedValueFromBag:(id)bag key:(id)key withType:(unint64_t)type updateCache:(BOOL)cache
{
  v44 = *MEMORY[0x1E69E9840];
  bagCopy = bag;
  keyCopy = key;
  v11 = 0;
  if (type <= 2)
  {
    if (type)
    {
      if (type == 1)
      {
        v36 = 0;
        v12 = &v36;
        v13 = [bagCopy BOOLForKey:keyCopy error:&v36];
      }

      else
      {
        v14 = 0;
        if (type != 2)
        {
          goto LABEL_19;
        }

        v31 = 0;
        v12 = &v31;
        v13 = [bagCopy dictionaryForKey:keyCopy error:&v31];
      }
    }

    else
    {
      v37 = 0;
      v12 = &v37;
      v13 = [bagCopy arrayForKey:keyCopy error:&v37];
    }
  }

  else if (type > 4)
  {
    if (type == 5)
    {
      v33 = 0;
      v12 = &v33;
      v13 = [bagCopy stringForKey:keyCopy error:&v33];
    }

    else
    {
      v14 = 0;
      if (type != 6)
      {
        goto LABEL_19;
      }

      v32 = 0;
      v12 = &v32;
      v13 = [bagCopy URLForKey:keyCopy error:&v32];
    }
  }

  else if (type == 3)
  {
    v35 = 0;
    v12 = &v35;
    v13 = [bagCopy doubleForKey:keyCopy error:&v35];
  }

  else
  {
    v34 = 0;
    v12 = &v34;
    v13 = [bagCopy integerForKey:keyCopy error:&v34];
  }

  v14 = v13;
  v15 = *v12;
  v11 = v15;
  if (v14 && !v15)
  {
    [(NSMutableDictionary *)self->_cachedBagValues setObject:v14 forKeyedSubscript:keyCopy];
    goto LABEL_31;
  }

LABEL_19:
  v16 = +[SSLogConfig sharedStoreServicesConfig];
  if (!v16)
  {
    v16 = +[SSLogConfig sharedConfig];
  }

  shouldLog = [v16 shouldLog];
  if ([v16 shouldLogToDisk])
  {
    v18 = shouldLog | 2;
  }

  else
  {
    v18 = shouldLog;
  }

  oSLogObject = [v16 OSLogObject];
  if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
  {
    v18 &= 2u;
  }

  if (!v18)
  {
    goto LABEL_29;
  }

  v20 = objc_opt_class();
  v38 = 138412802;
  v39 = v20;
  v40 = 2112;
  v41 = keyCopy;
  v42 = 2112;
  v43 = v11;
  v21 = v20;
  LODWORD(v30) = 32;
  v22 = _os_log_send_and_compose_impl();

  if (v22)
  {
    oSLogObject = [MEMORY[0x1E696AEC0] stringWithCString:v22 encoding:{4, &v38, v30}];
    free(v22);
    SSFileLog(v16, @"%@", v23, v24, v25, v26, v27, v28, oSLogObject);
LABEL_29:
  }

LABEL_31:

  return v14;
}

- (NSArray)AMDDomains
{
  v3 = objc_opt_class();

  return [(SSVURLBagInterpreter *)self _valueForKey:@"amd-domains" withClass:v3];
}

- (id)mescalSignaturePolicyForRequestURL:(id)l
{
  v23 = *MEMORY[0x1E69E9840];
  lCopy = l;
  path = [lCopy path];
  mescalSignedRequests = [(SSVURLBagInterpreter *)self mescalSignedRequests];
  v7 = SSVURLPathMatchesActionDictionary(path, mescalSignedRequests);

  if (v7)
  {
    v8 = [[SSVSAPSignatureComponent alloc] initWithComponentType:0 key:0];
    lastPathComponent = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:{v8, 0}];
    v10 = [[SSVSAPSignaturePolicy alloc] initWithPolicyType:2 signatureComponents:lastPathComponent];
LABEL_3:

    goto LABEL_18;
  }

  mescalSignedActions = [(SSVURLBagInterpreter *)self mescalSignedActions];
  v8 = SSVURLBagGetSignaturePolicyDictionaryForURL(lCopy, mescalSignedActions);

  if (v8)
  {
    v10 = [[SSVSAPSignaturePolicy alloc] initWithSignedActionsDictionary:v8];
  }

  else
  {
    if (self->_subscriptionSignaturePolicy && [(NSArray *)self->_subscriptionSignedActions count])
    {
      lastPathComponent = [lCopy lastPathComponent];
      v18 = 0u;
      v19 = 0u;
      v20 = 0u;
      v21 = 0u;
      v12 = self->_subscriptionSignedActions;
      v13 = [(NSArray *)v12 countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v13)
      {
        v14 = v13;
        v15 = *v19;
        while (2)
        {
          for (i = 0; i != v14; ++i)
          {
            if (*v19 != v15)
            {
              objc_enumerationMutation(v12);
            }

            if (![*(*(&v18 + 1) + 8 * i) caseInsensitiveCompare:lastPathComponent])
            {
              v10 = self->_subscriptionSignaturePolicy;
              goto LABEL_22;
            }
          }

          v14 = [(NSArray *)v12 countByEnumeratingWithState:&v18 objects:v22 count:16];
          if (v14)
          {
            continue;
          }

          break;
        }
      }

      v10 = 0;
LABEL_22:

      goto LABEL_3;
    }

    v10 = 0;
  }

LABEL_18:

  return v10;
}

- (id)mescalSignaturePolicyForResponseURL:(id)l
{
  path = [l path];
  mescalSignedResponses = [(SSVURLBagInterpreter *)self mescalSignedResponses];
  v6 = SSVURLPathMatchesActionDictionary(path, mescalSignedResponses);

  if (v6)
  {
    v7 = [[SSVSAPSignatureComponent alloc] initWithComponentType:0 key:0];
    v8 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:{v7, 0}];
    v9 = [[SSVSAPSignaturePolicy alloc] initWithPolicyType:2 signatureComponents:v8];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (NSDictionary)mescalSignedActions
{
  v3 = objc_opt_class();

  return [(SSVURLBagInterpreter *)self _valueForKey:@"signed-actions" withClass:v3];
}

- (NSDictionary)mescalSignedRequests
{
  v3 = objc_opt_class();

  return [(SSVURLBagInterpreter *)self _valueForKey:@"sign-sap-request" withClass:v3];
}

- (NSDictionary)mescalSignedResponses
{
  v3 = objc_opt_class();

  return [(SSVURLBagInterpreter *)self _valueForKey:@"sign-sap-response" withClass:v3];
}

- (BOOL)shouldSendAnonymousMachineIdentifierForURL:(id)l
{
  lCopy = l;
  aMDDomains = [(SSVURLBagInterpreter *)self AMDDomains];
  ShouldSendAMDForURL = SSVURLBagShouldSendAMDForURL(lCopy, aMDDomains);

  return ShouldSendAMDForURL;
}

- (NSString)storeFrontSuffix
{
  v3 = objc_opt_class();

  return [(SSVURLBagInterpreter *)self _valueForKey:@"storefront-header-suffix" withClass:v3];
}

- (id)URLForURLBagKey:(id)key
{
  v3 = [(SSVURLBagInterpreter *)self valueForURLBagKey:key];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [MEMORY[0x1E695DFF8] URLWithString:v3];
LABEL_5:
    v5 = v4;
    goto LABEL_7;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
    goto LABEL_5;
  }

  v5 = 0;
LABEL_7:

  return v5;
}

- (id)_valueForKey:(id)key withClass:(Class)class
{
  v5 = [(NSMutableDictionary *)self->_cachedBagValues objectForKey:key];
  v6 = v5;
  if (class && v5 && (objc_opt_isKindOfClass() & 1) == 0)
  {

    v6 = 0;
  }

  return v6;
}

@end