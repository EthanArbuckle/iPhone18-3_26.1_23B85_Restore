@interface SSVURLBagInterpreter
- (BOOL)shouldSendAnonymousMachineIdentifierForURL:(id)a3;
- (NSArray)AMDDomains;
- (NSDictionary)mescalSignedActions;
- (NSDictionary)mescalSignedRequests;
- (NSDictionary)mescalSignedResponses;
- (NSString)storeFrontSuffix;
- (SSVURLBagInterpreter)initWithSSBag:(id)a3;
- (SSVURLBagInterpreter)initWithURLBag:(id)a3;
- (SSVURLBagInterpreter)initWithURLBagDictionary:(id)a3;
- (id)URLForURLBagKey:(id)a3;
- (id)_valueForKey:(id)a3 withClass:(Class)a4;
- (id)cachedValueFromBag:(id)a3 key:(id)a4 withType:(unint64_t)a5 updateCache:(BOOL)a6;
- (id)mescalSignaturePolicyForRequestURL:(id)a3;
- (id)mescalSignaturePolicyForResponseURL:(id)a3;
@end

@implementation SSVURLBagInterpreter

- (SSVURLBagInterpreter)initWithURLBag:(id)a3
{
  v4 = a3;
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
  [v4 loadWithCompletionBlock:&v9];
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

- (SSVURLBagInterpreter)initWithURLBagDictionary:(id)a3
{
  v25 = *MEMORY[0x1E69E9840];
  v4 = a3;
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
      v10 = [v4 objectForKey:v9];
      if (v10)
      {
        [(NSMutableDictionary *)v5->_cachedBagValues setObject:v10 forKey:v9];
      }

      v8 += 8;
    }

    while (v8 != 80);
    v11 = [v4 objectForKey:@"musicCommon"];
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

- (SSVURLBagInterpreter)initWithSSBag:(id)a3
{
  v4 = a3;
  v26.receiver = self;
  v26.super_class = SSVURLBagInterpreter;
  v5 = [(SSVURLBagInterpreter *)&v26 init];
  if (v5)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
    cachedBagValues = v5->_cachedBagValues;
    v5->_cachedBagValues = v6;

    v8 = [(SSVURLBagInterpreter *)v5 cachedValueFromBag:v4 key:@"amd-domains" withType:0 updateCache:1];
    v9 = [(SSVURLBagInterpreter *)v5 cachedValueFromBag:v4 key:@"sign-sap-setup-cert" withType:5 updateCache:1];
    v10 = [(SSVURLBagInterpreter *)v5 cachedValueFromBag:v4 key:@"sign-sap-setup" withType:5 updateCache:1];
    v11 = [(SSVURLBagInterpreter *)v5 cachedValueFromBag:v4 key:@"signed-actions" withType:2 updateCache:1];
    v12 = [(SSVURLBagInterpreter *)v5 cachedValueFromBag:v4 key:@"sign-sap-request" withType:2 updateCache:1];
    v13 = [(SSVURLBagInterpreter *)v5 cachedValueFromBag:v4 key:@"sign-sap-response" withType:2 updateCache:1];
    v14 = [(SSVURLBagInterpreter *)v5 cachedValueFromBag:v4 key:@"storefront-header-suffix" withType:5 updateCache:1];
    v15 = [(SSVURLBagInterpreter *)v5 cachedValueFromBag:v4 key:@"fps-request" withType:5 updateCache:1];
    v16 = [(SSVURLBagInterpreter *)v5 cachedValueFromBag:v4 key:@"fps-cert" withType:5 updateCache:1];
    v17 = [(SSVURLBagInterpreter *)v5 cachedValueFromBag:v4 key:@"musicCommon" withType:2 updateCache:0];
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

- (id)cachedValueFromBag:(id)a3 key:(id)a4 withType:(unint64_t)a5 updateCache:(BOOL)a6
{
  v44 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = 0;
  if (a5 <= 2)
  {
    if (a5)
    {
      if (a5 == 1)
      {
        v36 = 0;
        v12 = &v36;
        v13 = [v9 BOOLForKey:v10 error:&v36];
      }

      else
      {
        v14 = 0;
        if (a5 != 2)
        {
          goto LABEL_19;
        }

        v31 = 0;
        v12 = &v31;
        v13 = [v9 dictionaryForKey:v10 error:&v31];
      }
    }

    else
    {
      v37 = 0;
      v12 = &v37;
      v13 = [v9 arrayForKey:v10 error:&v37];
    }
  }

  else if (a5 > 4)
  {
    if (a5 == 5)
    {
      v33 = 0;
      v12 = &v33;
      v13 = [v9 stringForKey:v10 error:&v33];
    }

    else
    {
      v14 = 0;
      if (a5 != 6)
      {
        goto LABEL_19;
      }

      v32 = 0;
      v12 = &v32;
      v13 = [v9 URLForKey:v10 error:&v32];
    }
  }

  else if (a5 == 3)
  {
    v35 = 0;
    v12 = &v35;
    v13 = [v9 doubleForKey:v10 error:&v35];
  }

  else
  {
    v34 = 0;
    v12 = &v34;
    v13 = [v9 integerForKey:v10 error:&v34];
  }

  v14 = v13;
  v15 = *v12;
  v11 = v15;
  if (v14 && !v15)
  {
    [(NSMutableDictionary *)self->_cachedBagValues setObject:v14 forKeyedSubscript:v10];
    goto LABEL_31;
  }

LABEL_19:
  v16 = +[SSLogConfig sharedStoreServicesConfig];
  if (!v16)
  {
    v16 = +[SSLogConfig sharedConfig];
  }

  v17 = [v16 shouldLog];
  if ([v16 shouldLogToDisk])
  {
    v18 = v17 | 2;
  }

  else
  {
    v18 = v17;
  }

  v19 = [v16 OSLogObject];
  if (!os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
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
  v41 = v10;
  v42 = 2112;
  v43 = v11;
  v21 = v20;
  LODWORD(v30) = 32;
  v22 = _os_log_send_and_compose_impl();

  if (v22)
  {
    v19 = [MEMORY[0x1E696AEC0] stringWithCString:v22 encoding:{4, &v38, v30}];
    free(v22);
    SSFileLog(v16, @"%@", v23, v24, v25, v26, v27, v28, v19);
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

- (id)mescalSignaturePolicyForRequestURL:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 path];
  v6 = [(SSVURLBagInterpreter *)self mescalSignedRequests];
  v7 = SSVURLPathMatchesActionDictionary(v5, v6);

  if (v7)
  {
    v8 = [[SSVSAPSignatureComponent alloc] initWithComponentType:0 key:0];
    v9 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:{v8, 0}];
    v10 = [[SSVSAPSignaturePolicy alloc] initWithPolicyType:2 signatureComponents:v9];
LABEL_3:

    goto LABEL_18;
  }

  v11 = [(SSVURLBagInterpreter *)self mescalSignedActions];
  v8 = SSVURLBagGetSignaturePolicyDictionaryForURL(v4, v11);

  if (v8)
  {
    v10 = [[SSVSAPSignaturePolicy alloc] initWithSignedActionsDictionary:v8];
  }

  else
  {
    if (self->_subscriptionSignaturePolicy && [(NSArray *)self->_subscriptionSignedActions count])
    {
      v9 = [v4 lastPathComponent];
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

            if (![*(*(&v18 + 1) + 8 * i) caseInsensitiveCompare:v9])
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

- (id)mescalSignaturePolicyForResponseURL:(id)a3
{
  v4 = [a3 path];
  v5 = [(SSVURLBagInterpreter *)self mescalSignedResponses];
  v6 = SSVURLPathMatchesActionDictionary(v4, v5);

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

- (BOOL)shouldSendAnonymousMachineIdentifierForURL:(id)a3
{
  v4 = a3;
  v5 = [(SSVURLBagInterpreter *)self AMDDomains];
  ShouldSendAMDForURL = SSVURLBagShouldSendAMDForURL(v4, v5);

  return ShouldSendAMDForURL;
}

- (NSString)storeFrontSuffix
{
  v3 = objc_opt_class();

  return [(SSVURLBagInterpreter *)self _valueForKey:@"storefront-header-suffix" withClass:v3];
}

- (id)URLForURLBagKey:(id)a3
{
  v3 = [(SSVURLBagInterpreter *)self valueForURLBagKey:a3];
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

- (id)_valueForKey:(id)a3 withClass:(Class)a4
{
  v5 = [(NSMutableDictionary *)self->_cachedBagValues objectForKey:a3];
  v6 = v5;
  if (a4 && v5 && (objc_opt_isKindOfClass() & 1) == 0)
  {

    v6 = 0;
  }

  return v6;
}

@end