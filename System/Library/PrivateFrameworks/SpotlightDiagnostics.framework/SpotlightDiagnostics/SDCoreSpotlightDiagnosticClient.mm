@interface SDCoreSpotlightDiagnosticClient
+ (id)defaultClientWithBundleID:(id)d protectionClass:(id)class;
+ (id)privateClientWithBundleID:(id)d protectionClass:(id)class;
- (SDCoreSpotlightDiagnosticClient)initWithBundleID:(id)d protectionClass:(id)class path:(id)path private:(BOOL)private managed:(BOOL)managed;
- (id)debugDescription;
- (void)getStatus:(BOOL)status protectionClasses:(id)classes queue:(id)queue completionHandler:(id)handler;
- (void)setActiveUser;
@end

@implementation SDCoreSpotlightDiagnosticClient

- (SDCoreSpotlightDiagnosticClient)initWithBundleID:(id)d protectionClass:(id)class path:(id)path private:(BOOL)private managed:(BOOL)managed
{
  dCopy = d;
  classCopy = class;
  pathCopy = path;
  v29.receiver = self;
  v29.super_class = SDCoreSpotlightDiagnosticClient;
  v15 = [(SDCoreSpotlightDiagnosticClient *)&v29 init];
  if (v15)
  {
    v16 = [dCopy copy];
    bundleID = v15->_bundleID;
    v15->_bundleID = v16;

    v18 = [classCopy copy];
    protectionClass = v15->_protectionClass;
    v15->_protectionClass = v18;

    v20 = [pathCopy copy];
    path = v15->_path;
    v15->_path = v20;

    v15->_private = private;
    v15->_managed = managed;
    if (v15->_private)
    {
      v22 = objc_alloc(MEMORY[0x29EDB94D0]);
      v23 = v15->_path;
      v24 = v15->_protectionClass;
      v25 = v15->_bundleID;
    }

    else
    {
      v22 = objc_alloc(MEMORY[0x29EDB94E8]);
      v24 = v15->_protectionClass;
      v25 = v15->_bundleID;
      v23 = &stru_2A2550518;
    }

    v26 = [v22 initWithName:v23 protectionClass:v24 bundleIdentifier:v25];
    index = v15->_index;
    v15->_index = v26;
  }

  return v15;
}

+ (id)defaultClientWithBundleID:(id)d protectionClass:(id)class
{
  classCopy = class;
  dCopy = d;
  v7 = [[SDCoreSpotlightDiagnosticClient alloc] initWithBundleID:dCopy protectionClass:classCopy path:0 private:0 managed:0];

  return v7;
}

+ (id)privateClientWithBundleID:(id)d protectionClass:(id)class
{
  classCopy = class;
  dCopy = d;
  v7 = [[SDCoreSpotlightDiagnosticClient alloc] initWithBundleID:dCopy protectionClass:classCopy path:0 private:1 managed:0];

  return v7;
}

- (void)setActiveUser
{
  active = SDGetActiveUID();

  [(SDCoreSpotlightDiagnosticClient *)self setUser:active];
}

- (id)debugDescription
{
  v3 = objc_alloc_init(MEMORY[0x29EDBA050]);
  bundleID = self->_bundleID;
  [v3 appendFormat:@"< SDCoreSpotlightDiagnosticClient - p:%d, m:%d, bID:%@, path:%@, ", self->_private, self->_managed, bundleID, self->_path];
  v5 = [(CSSearchableIndex *)self->_index debugDescription];
  [v3 appendFormat:@"_index = %@ >", v5];

  v6 = [v3 copy];

  return v6;
}

- (void)getStatus:(BOOL)status protectionClasses:(id)classes queue:(id)queue completionHandler:(id)handler
{
  classesCopy = classes;
  queueCopy = queue;
  handlerCopy = handler;
  if (SDIsAppleInternalInstall())
  {
    v16[0] = MEMORY[0x29EDCA5F8];
    v16[1] = 3221225472;
    v16[2] = __87__SDCoreSpotlightDiagnosticClient_getStatus_protectionClasses_queue_completionHandler___block_invoke;
    v16[3] = &unk_29F385850;
    statusCopy = status;
    v17 = classesCopy;
    selfCopy = self;
    v19 = handlerCopy;
    v13 = MEMORY[0x29EDAC780](v16);
    v14 = v13;
    if (queueCopy)
    {
      dispatch_async(queueCopy, v13);
    }

    else
    {
      v13[2](v13);
    }
  }

  else
  {
    v15 = SDError(-5006, @"CoreSpotlight status command");
    if (handlerCopy)
    {
      (*(handlerCopy + 2))(handlerCopy, 0, v15);
    }
  }
}

void __87__SDCoreSpotlightDiagnosticClient_getStatus_protectionClasses_queue_completionHandler___block_invoke(uint64_t a1)
{
  v58[1] = *MEMORY[0x29EDCA608];
  v2 = objc_alloc_init(MEMORY[0x29EDBA050]);
  if (*(a1 + 56))
  {
    v3 = @"{Status:[";
  }

  else
  {
    v3 = @"Status:\n";
  }

  v39 = v2;
  [v2 appendString:v3];
  v4 = [MEMORY[0x29EDB9F48] mainBundle];
  v38 = [v4 bundleIdentifier];

  v5 = objc_opt_new();
  v6 = dispatch_group_create();
  v34 = objc_opt_new();
  [v34 setProtectionClasses:*(a1 + 32)];
  [v34 setAttribute:1];
  v37 = *MEMORY[0x29EDB94B8];
  v58[0] = *MEMORY[0x29EDB94B8];
  v7 = [MEMORY[0x29EDB8D80] arrayWithObjects:v58 count:1];
  [v34 setFetchAttributes:v7];

  [v34 setClientBundleID:v38];
  if ([*(a1 + 40) isPrivate])
  {
    v8 = [objc_alloc(MEMORY[0x29EDB94C8]) initWithQueryString:@"*=*" queryContext:v34];
    [v8 setPrivateIndex:1];
    v9 = [*(a1 + 40) bundleID];
    [v8 setPrivateBundleID:v9];
    v33 = v8;
  }

  else
  {
    v33 = [objc_alloc(MEMORY[0x29EDB94D8]) initWithQueryString:@"*=*" queryContext:v34];
  }

  v51[0] = MEMORY[0x29EDCA5F8];
  v51[1] = 3221225472;
  v51[2] = __87__SDCoreSpotlightDiagnosticClient_getStatus_protectionClasses_queue_completionHandler___block_invoke_2;
  v51[3] = &unk_29F3857D8;
  v10 = v5;
  v52 = v10;
  [v33 setFoundAttributesHandler:v51];
  v49[0] = MEMORY[0x29EDCA5F8];
  v49[1] = 3221225472;
  v49[2] = __87__SDCoreSpotlightDiagnosticClient_getStatus_protectionClasses_queue_completionHandler___block_invoke_3;
  v49[3] = &unk_29F3857D8;
  v32 = v10;
  v50 = v32;
  [v33 setChangedAttributesHandler:v49];
  v47[0] = MEMORY[0x29EDCA5F8];
  v47[1] = 3221225472;
  v47[2] = __87__SDCoreSpotlightDiagnosticClient_getStatus_protectionClasses_queue_completionHandler___block_invoke_4;
  v47[3] = &unk_29F385800;
  v11 = v6;
  v48 = v11;
  [v33 setCompletionHandler:v47];
  dispatch_group_enter(v11);
  [v33 start];
  dispatch_group_wait(v11, 0xFFFFFFFFFFFFFFFFLL);
  v12 = [v32 allObjects];
  v13 = [v12 sortedArrayUsingSelector:sel_caseInsensitiveCompare_];

  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  obj = v13;
  v14 = 0;
  v15 = [obj countByEnumeratingWithState:&v43 objects:v57 count:16];
  if (!v15)
  {
    v16 = @"*=*";
    goto LABEL_25;
  }

  v36 = *v44;
  v16 = @"*=*";
  do
  {
    v17 = 0;
    v18 = v16;
    do
    {
      if (*v44 != v36)
      {
        objc_enumerationMutation(obj);
      }

      v19 = *(*(&v43 + 1) + 8 * v17);
      v20 = objc_opt_new();
      [v20 setCounting:1];
      [v20 setClientBundleID:v38];
      [v20 setProtectionClasses:*(a1 + 32)];
      v16 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@=%@", v37, v19];

      if ([*(a1 + 40) isPrivate])
      {
        v21 = [objc_alloc(MEMORY[0x29EDB94C8]) initWithQueryString:v16 queryContext:v20];
        [v21 setPrivateIndex:1];
        v22 = [*(a1 + 40) bundleID];
        [v21 setPrivateBundleID:v22];
LABEL_16:

        goto LABEL_18;
      }

      if ([*(a1 + 40) isManaged])
      {
        v23 = objc_alloc(MEMORY[0x29EDB94C0]);
        v22 = [*(a1 + 40) indexPath];
        v21 = [v23 initWithPath:v22 queryString:v16 context:v20];
        goto LABEL_16;
      }

      v21 = [objc_alloc(MEMORY[0x29EDB94D8]) initWithQueryString:v16 queryContext:v20];
LABEL_18:
      v53 = 0;
      v54 = &v53;
      v55 = 0x2020000000;
      v56 = 0;
      v42[0] = MEMORY[0x29EDCA5F8];
      v42[1] = 3221225472;
      v42[2] = __87__SDCoreSpotlightDiagnosticClient_getStatus_protectionClasses_queue_completionHandler___block_invoke_5;
      v42[3] = &unk_29F385828;
      v42[4] = &v53;
      [v21 setCountChangedHandler:v42];
      v40[0] = MEMORY[0x29EDCA5F8];
      v40[1] = 3221225472;
      v40[2] = __87__SDCoreSpotlightDiagnosticClient_getStatus_protectionClasses_queue_completionHandler___block_invoke_6;
      v40[3] = &unk_29F385800;
      v24 = v11;
      v41 = v24;
      [v21 setCompletionHandler:v40];
      dispatch_group_enter(v24);
      [v21 start];
      dispatch_group_wait(v24, 0xFFFFFFFFFFFFFFFFLL);
      LOBYTE(v24) = *(a1 + 56);
      v25 = v19;
      v26 = [v19 UTF8String];
      if (v24)
      {
        [v39 appendFormat:@"{Bundle:{name:%s, itemCount:%lu", v26, v54[3]];
        v27 = @"}},";
      }

      else
      {
        [v39 appendFormat:@"Bundle: %s, itemCount: %lu", v26, v54[3]];
        v27 = @"\n";
      }

      [v39 appendFormat:v27];
      v28 = v54[3];

      _Block_object_dispose(&v53, 8);
      v14 += v28;
      ++v17;
      v18 = v16;
    }

    while (v15 != v17);
    v15 = [obj countByEnumeratingWithState:&v43 objects:v57 count:16];
  }

  while (v15);
LABEL_25:

  if (*(a1 + 56) == 1)
  {
    [v39 appendFormat:@"{Totals:{bundleCount:%ld, itemCount:%ld", objc_msgSend(obj, "count"), v14];
    v29 = @"}}]}";
  }

  else
  {
    [v39 appendFormat:@"\nTotals: bundleCount: %ld, itemCount: %ld", objc_msgSend(obj, "count"), v14];
    v29 = @"\n\n";
  }

  [v39 appendFormat:v29];

  v30 = *(a1 + 48);
  if (v30)
  {
    (*(v30 + 16))(v30, v39, 0);
  }

  v31 = *MEMORY[0x29EDCA608];
}

void __87__SDCoreSpotlightDiagnosticClient_getStatus_protectionClasses_queue_completionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v17 = *MEMORY[0x29EDCA608];
  v5 = a3;
  if ([a2 isEqualToString:*MEMORY[0x29EDB94B8]])
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v6 = v5;
    v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v13;
      do
      {
        v10 = 0;
        do
        {
          if (*v13 != v9)
          {
            objc_enumerationMutation(v6);
          }

          [*(a1 + 32) addObject:{*(*(&v12 + 1) + 8 * v10++), v12}];
        }

        while (v8 != v10);
        v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v8);
    }
  }

  v11 = *MEMORY[0x29EDCA608];
}

void __87__SDCoreSpotlightDiagnosticClient_getStatus_protectionClasses_queue_completionHandler___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v17 = *MEMORY[0x29EDCA608];
  v5 = a3;
  if ([a2 isEqualToString:*MEMORY[0x29EDB94B8]])
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v6 = v5;
    v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v13;
      do
      {
        v10 = 0;
        do
        {
          if (*v13 != v9)
          {
            objc_enumerationMutation(v6);
          }

          [*(a1 + 32) addObject:{*(*(&v12 + 1) + 8 * v10++), v12}];
        }

        while (v8 != v10);
        v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v8);
    }
  }

  v11 = *MEMORY[0x29EDCA608];
}

void __87__SDCoreSpotlightDiagnosticClient_getStatus_protectionClasses_queue_completionHandler___block_invoke_cold_1(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138412290;
  *(buf + 4) = a1;
  _os_log_error_impl(&dword_29EC15000, log, OS_LOG_TYPE_ERROR, "Exception raised: %@", buf, 0xCu);
}

@end