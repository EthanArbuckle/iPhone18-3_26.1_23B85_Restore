@interface QLExtensionManagerCache
+ (id)bestMatchingExtensionsFromSupportingExtensions:(id)extensions includingExtensionsWithSupportingParentTypes:(BOOL)types byContentType:(id)type;
- (BOOL)_supportedContentTypesFromExtension:(id)extension matches:(id)matches allowMatchingWithParentTypes:(BOOL)types;
- (BOOL)hasExtensionWithMatchingAttributes:(id)attributes;
- (QLExtensionManagerCache)initWithMatchingAttributes:(id)attributes;
- (id)extensionWithMatchingAttributes:(id)attributes allowExtensionsForParentTypes:(BOOL)types extensionPath:(id)path firstPartyExtension:(BOOL)extension;
- (void)_didReceiveNewMatchingExtensionList:(id)list;
- (void)_synchronouslyWaitForExtensionListIfNeeded;
- (void)beginMatchingExtensions;
- (void)dealloc;
- (void)endMatchingExtensions;
@end

@implementation QLExtensionManagerCache

- (QLExtensionManagerCache)initWithMatchingAttributes:(id)attributes
{
  attributesCopy = attributes;
  v21.receiver = self;
  v21.super_class = QLExtensionManagerCache;
  v5 = [(QLExtensionManagerCache *)&v21 init];
  if (v5)
  {
    v6 = [attributesCopy copy];
    matchingAttributes = v5->_matchingAttributes;
    v5->_matchingAttributes = v6;

    v8 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v9 = dispatch_queue_create("com.apple.quicklook.extensionmanager.accessextensions", v8);
    accessMatchingExtensionsQueue = v5->_accessMatchingExtensionsQueue;
    v5->_accessMatchingExtensionsQueue = v9;

    v11 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v12 = dispatch_queue_create("com.apple.quicklook.extensionmanager.waitforextensions", v11);
    waitForExtensionListQueue = v5->_waitForExtensionListQueue;
    v5->_waitForExtensionListQueue = v12;

    v14 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v15 = dispatch_queue_create("com.apple.quicklook.extensionmanager.querycache", v14);
    queryCacheQueue = v5->_queryCacheQueue;
    v5->_queryCacheQueue = v15;

    v17 = objc_opt_new();
    queryCache = v5->_queryCache;
    v5->_queryCache = v17;

    v19 = v5;
  }

  return v5;
}

- (void)beginMatchingExtensions
{
  self->_isMatchingExtensions = 1;
  objc_initWeak(&location, self);
  v3 = MEMORY[0x277CCA9C8];
  matchingAttributes = self->_matchingAttributes;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __50__QLExtensionManagerCache_beginMatchingExtensions__block_invoke;
  v7[3] = &unk_279ADB308;
  objc_copyWeak(&v8, &location);
  v5 = [v3 beginMatchingExtensionsWithAttributes:matchingAttributes completion:v7];
  matchingContext = self->_matchingContext;
  self->_matchingContext = v5;

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

void __50__QLExtensionManagerCache_beginMatchingExtensions__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _didReceiveNewMatchingExtensionList:v3];
}

- (void)endMatchingExtensions
{
  accessMatchingExtensionsQueue = self->_accessMatchingExtensionsQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __48__QLExtensionManagerCache_endMatchingExtensions__block_invoke;
  block[3] = &unk_279ADB330;
  block[4] = self;
  dispatch_sync(accessMatchingExtensionsQueue, block);
}

void __48__QLExtensionManagerCache_endMatchingExtensions__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) matchingContext];

  if (v2)
  {
    v3 = MEMORY[0x277CCA9C8];
    v4 = [*(a1 + 32) matchingContext];
    [v3 endMatchingExtensions:v4];

    [*(a1 + 32) setMatchingContext:0];
    [*(a1 + 32) setMatchingExtensions:0];
    v5 = *(a1 + 32);

    [v5 setIsMatchingExtensions:0];
  }
}

- (void)_didReceiveNewMatchingExtensionList:(id)list
{
  listCopy = list;
  accessMatchingExtensionsQueue = self->_accessMatchingExtensionsQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __63__QLExtensionManagerCache__didReceiveNewMatchingExtensionList___block_invoke;
  v7[3] = &unk_279ADB358;
  v7[4] = self;
  v8 = listCopy;
  v6 = listCopy;
  dispatch_async(accessMatchingExtensionsQueue, v7);
}

void __63__QLExtensionManagerCache__didReceiveNewMatchingExtensionList___block_invoke(uint64_t a1)
{
  v39 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) matchingExtensions];
  v3 = objc_opt_new();
  [*(a1 + 32) setMatchingExtensions:v3];

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v4 = *(a1 + 40);
  v5 = [v4 countByEnumeratingWithState:&v33 objects:v38 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v34;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v34 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v33 + 1) + 8 * i);
        v10 = [v9 _plugIn];
        v11 = [v10 userElection] & 0xFE;

        if (!v11)
        {
          v12 = [v9 identifier];
          v13 = [v2 objectForKeyedSubscript:v12];

          v14 = [v13 extension];
          v15 = [v14 isEqual:v9];

          if (v15)
          {
            v16 = [v9 identifier];
            [v2 removeObjectForKey:v16];

            v17 = v13;
          }

          else
          {
            v17 = [[QLExtension alloc] initWithExtension:v9];
          }

          v18 = v17;
          v19 = [*(a1 + 32) matchingExtensions];
          v20 = [v9 identifier];
          [v19 setObject:v18 forKeyedSubscript:v20];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v33 objects:v38 count:16];
    }

    while (v6);
  }

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v21 = [v2 objectEnumerator];
  v22 = [v21 countByEnumeratingWithState:&v29 objects:v37 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = *v30;
    do
    {
      for (j = 0; j != v23; ++j)
      {
        if (*v30 != v24)
        {
          objc_enumerationMutation(v21);
        }

        [*(*(&v29 + 1) + 8 * j) invalidateAndCancelExtensionRequest];
      }

      v23 = [v21 countByEnumeratingWithState:&v29 objects:v37 count:16];
    }

    while (v23);
  }

  v26 = *(a1 + 32);
  v27 = *(v26 + 24);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __63__QLExtensionManagerCache__didReceiveNewMatchingExtensionList___block_invoke_2;
  block[3] = &unk_279ADB330;
  block[4] = v26;
  dispatch_sync(v27, block);
}

- (BOOL)hasExtensionWithMatchingAttributes:(id)attributes
{
  v3 = [(QLExtensionManagerCache *)self extensionWithMatchingAttributes:attributes allowExtensionsForParentTypes:0 extensionPath:0];
  v4 = v3 != 0;

  return v4;
}

- (id)extensionWithMatchingAttributes:(id)attributes allowExtensionsForParentTypes:(BOOL)types extensionPath:(id)path firstPartyExtension:(BOOL)extension
{
  extensionCopy = extension;
  typesCopy = types;
  attributesCopy = attributes;
  pathCopy = path;
  if ([attributesCopy count])
  {
    v12 = [[QLExtensionManagerCacheKey alloc] initWithAttributes:attributesCopy allowParentTypes:typesCopy wantsFirstPartyExtension:extensionCopy extensionPath:pathCopy];
    v31 = 0;
    v32 = &v31;
    v33 = 0x3032000000;
    v34 = __Block_byref_object_copy__0;
    v35 = __Block_byref_object_dispose__0;
    v36 = 0;
    queryCacheQueue = self->_queryCacheQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __123__QLExtensionManagerCache_extensionWithMatchingAttributes_allowExtensionsForParentTypes_extensionPath_firstPartyExtension___block_invoke;
    block[3] = &unk_279ADB380;
    block[4] = self;
    v14 = v12;
    v29 = v14;
    v30 = &v31;
    dispatch_sync(queryCacheQueue, block);
    if (v32[5])
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v15 = 0;
      }

      else
      {
        v15 = v32[5];
      }
    }

    else
    {
      [(QLExtensionManagerCache *)self _synchronouslyWaitForExtensionListIfNeeded];
      accessMatchingExtensionsQueue = self->_accessMatchingExtensionsQueue;
      v22[0] = MEMORY[0x277D85DD0];
      v22[1] = 3221225472;
      v22[2] = __123__QLExtensionManagerCache_extensionWithMatchingAttributes_allowExtensionsForParentTypes_extensionPath_firstPartyExtension___block_invoke_2;
      v22[3] = &unk_279ADB3A8;
      v22[4] = self;
      v26 = extensionCopy;
      v23 = attributesCopy;
      v27 = typesCopy;
      v24 = pathCopy;
      v25 = &v31;
      dispatch_sync(accessMatchingExtensionsQueue, v22);
      v17 = self->_queryCacheQueue;
      v19[0] = MEMORY[0x277D85DD0];
      v19[1] = 3221225472;
      v19[2] = __123__QLExtensionManagerCache_extensionWithMatchingAttributes_allowExtensionsForParentTypes_extensionPath_firstPartyExtension___block_invoke_3;
      v19[3] = &unk_279ADB3D0;
      v21 = &v31;
      v19[4] = self;
      v20 = v14;
      dispatch_sync(v17, v19);
      v15 = v32[5];
    }

    _Block_object_dispose(&v31, 8);
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

uint64_t __123__QLExtensionManagerCache_extensionWithMatchingAttributes_allowExtensionsForParentTypes_extensionPath_firstPartyExtension___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 72) objectForKey:a1[5]];
  if (v2)
  {
    objc_storeStrong((*(a1[6] + 8) + 40), v2);
  }

  return MEMORY[0x2821F96F8]();
}

void __123__QLExtensionManagerCache_extensionWithMatchingAttributes_allowExtensionsForParentTypes_extensionPath_firstPartyExtension___block_invoke_2(uint64_t a1)
{
  v78 = *MEMORY[0x277D85DE8];
  v54 = objc_opt_new();
  v71 = 0u;
  v72 = 0u;
  v73 = 0u;
  v74 = 0u;
  obj = [*(a1 + 32) matchingExtensions];
  v57 = [obj countByEnumeratingWithState:&v71 objects:v77 count:16];
  if (v57)
  {
    v56 = *v72;
    v61 = *MEMORY[0x277CCA0B8];
    v60 = a1;
    while (2)
    {
      for (i = 0; i != v57; ++i)
      {
        if (*v72 != v56)
        {
          objc_enumerationMutation(obj);
        }

        v3 = *(*(&v71 + 1) + 8 * i);
        v4 = [*(a1 + 32) matchingExtensions];
        v5 = [v4 objectForKeyedSubscript:v3];

        if (*(a1 + 64) != 1 || ([v5 extension], v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "QL_isAppleExtension"), v6, v7))
        {
          v58 = i;
          v69 = 0u;
          v70 = 0u;
          v67 = 0u;
          v68 = 0u;
          v59 = [*(a1 + 40) allKeys];
          v8 = [v59 countByEnumeratingWithState:&v67 objects:v76 count:16];
          if (v8)
          {
            v9 = v8;
            v62 = *v68;
            while (2)
            {
              for (j = 0; j != v9; ++j)
              {
                if (*v68 != v62)
                {
                  objc_enumerationMutation(v59);
                }

                v11 = *(*(&v67 + 1) + 8 * j);
                v12 = [v5 extension];
                v13 = [v12 attributes];
                v14 = [v13 objectForKeyedSubscript:v11];

                v15 = [*(a1 + 40) objectForKeyedSubscript:v11];
                if ([v11 isEqualToString:v61])
                {
                  v16 = [v5 extension];
                  v17 = [v16 _plugIn];
                  v18 = [v17 containingUrl];
                  v19 = [v18 path];
                  v20 = [v15 isEqualToString:v19];

                  a1 = v60;
                  if ((v20 & 1) == 0)
                  {
                    goto LABEL_49;
                  }
                }

                else if ([v11 isEqualToString:@"QLSupportedContentTypes"])
                {
                  v21 = *(a1 + 32);
                  v22 = [v5 extension];
                  LOBYTE(v21) = [v21 _supportedContentTypesFromExtension:v22 matches:v15 allowMatchingWithParentTypes:*(a1 + 65)];

                  if ((v21 & 1) == 0)
                  {
                    goto LABEL_49;
                  }
                }

                else if ([v11 isEqualToString:@"kQLExtensionFrameworkPath"])
                {
                  v23 = [v5 extension];
                  v24 = [v23 _plugIn];
                  v25 = [v24 url];
                  v26 = [v25 path];
                  v27 = [v26 containsString:v15];

                  a1 = v60;
                  if ((v27 & 1) == 0)
                  {
                    goto LABEL_49;
                  }
                }

                else
                {
                  objc_opt_class();
                  if (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_class(), (objc_opt_isKindOfClass()))
                  {
                    if (([v15 isEqualToString:v14] & 1) == 0)
                    {
                      goto LABEL_49;
                    }
                  }

                  else
                  {
                    objc_opt_class();
                    if (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_class(), (objc_opt_isKindOfClass()))
                    {
                      v28 = [v15 integerValue];
                      if (v28 != [v14 integerValue])
                      {
                        goto LABEL_49;
                      }
                    }

                    else
                    {
                      objc_opt_class();
                      if ((objc_opt_isKindOfClass() & 1) == 0)
                      {
                        goto LABEL_49;
                      }

                      if ([v11 isEqualToString:@"QLSupportedContentTypes"])
                      {
                        v65 = 0u;
                        v66 = 0u;
                        v63 = 0u;
                        v64 = 0u;
                        v29 = v14;
                        v30 = [v29 countByEnumeratingWithState:&v63 objects:v75 count:16];
                        if (v30)
                        {
                          v31 = v30;
                          v32 = *v64;
                          while (2)
                          {
                            for (k = 0; k != v31; ++k)
                            {
                              if (*v64 != v32)
                              {
                                objc_enumerationMutation(v29);
                              }

                              v34 = *(*(&v63 + 1) + 8 * k);
                              objc_opt_class();
                              if ((objc_opt_isKindOfClass() & 1) != 0 && ![v15 caseInsensitiveCompare:v34])
                              {

                                a1 = v60;
                                goto LABEL_45;
                              }
                            }

                            v31 = [v29 countByEnumeratingWithState:&v63 objects:v75 count:16];
                            if (v31)
                            {
                              continue;
                            }

                            break;
                          }
                        }

                        a1 = v60;
LABEL_49:

                        v35 = 1;
                        goto LABEL_50;
                      }

                      if (![v14 containsObject:v15])
                      {
                        goto LABEL_49;
                      }
                    }
                  }
                }

LABEL_45:
              }

              v9 = [v59 countByEnumeratingWithState:&v67 objects:v76 count:16];
              if (v9)
              {
                continue;
              }

              break;
            }
          }

          v35 = 0;
LABEL_50:

          v36 = *(a1 + 48);
          if (v36)
          {
            v37 = [v5 extension];
            v38 = [v37 _extensionBundle];
            v39 = [v38 bundlePath];
            v40 = [v36 isEqualToString:v39];

            v41 = v40 ^ 1;
          }

          else
          {
            v41 = 0;
          }

          v42 = v35 | v41;
          i = v58;
          if ((v42 & 1) == 0)
          {
            [v54 addObject:v5];
            v43 = [*(a1 + 40) objectForKeyedSubscript:@"QLSupportedContentTypes"];

            if (!v43)
            {

              goto LABEL_59;
            }
          }
        }
      }

      v57 = [obj countByEnumeratingWithState:&v71 objects:v77 count:16];
      if (v57)
      {
        continue;
      }

      break;
    }
  }

LABEL_59:

  v44 = [*(a1 + 40) objectForKeyedSubscript:@"QLSupportedContentTypes"];

  if (v44)
  {
    v45 = objc_opt_class();
    v46 = *(a1 + 65);
    v47 = [*(a1 + 40) objectForKeyedSubscript:@"QLSupportedContentTypes"];
    v48 = v54;
    v49 = [v45 bestMatchingExtensionsFromSupportingExtensions:v54 includingExtensionsWithSupportingParentTypes:v46 byContentType:v47];
    v50 = *(*(a1 + 56) + 8);
    v51 = *(v50 + 40);
    *(v50 + 40) = v49;
  }

  else
  {
    v48 = v54;
    v52 = [v54 firstObject];
    v53 = *(*(a1 + 56) + 8);
    v47 = *(v53 + 40);
    *(v53 + 40) = v52;
  }
}

void __123__QLExtensionManagerCache_extensionWithMatchingAttributes_allowExtensionsForParentTypes_extensionPath_firstPartyExtension___block_invoke_3(void *a1)
{
  if (*(*(a1[6] + 8) + 40))
  {
    v2 = *(a1[4] + 72);

    [v2 setObject:? forKeyedSubscript:?];
  }

  else
  {
    v3 = [MEMORY[0x277CBEB68] null];
    [*(a1[4] + 72) setObject:v3 forKeyedSubscript:a1[5]];
  }
}

+ (id)bestMatchingExtensionsFromSupportingExtensions:(id)extensions includingExtensionsWithSupportingParentTypes:(BOOL)types byContentType:(id)type
{
  v71 = *MEMORY[0x277D85DE8];
  extensionsCopy = extensions;
  typeCopy = type;
  lowercaseString = [typeCopy lowercaseString];
  v9 = +[QLUTIManager typesForWhichExternalGeneratorsArePreferred];
  v10 = [v9 containsObject:lowercaseString];

  if (!types)
  {
    v60 = 0u;
    v61 = 0u;
    v58 = 0u;
    v59 = 0u;
    v49 = extensionsCopy;
    v29 = [v49 countByEnumeratingWithState:&v58 objects:v70 count:16];
    if (v29)
    {
      v30 = v29;
      v12 = 0;
      v31 = *v59;
LABEL_30:
      v32 = 0;
      v33 = v12;
      while (1)
      {
        if (*v59 != v31)
        {
          objc_enumerationMutation(v49);
        }

        v12 = *(*(&v58 + 1) + 8 * v32);

        extension = [v12 extension];
        v35 = v10;
        v36 = ([extension QL_isAppleExtension] ^ 1) & v10;

        if (v36)
        {
          break;
        }

        extension2 = [v12 extension];
        qL_isAppleExtension = [extension2 QL_isAppleExtension];

        if (!(v35 & 1 | ((qL_isAppleExtension & 1) == 0)))
        {
          break;
        }

        v10 = v35;
        ++v32;
        v33 = v12;
        if (v30 == v32)
        {
          v30 = [v49 countByEnumeratingWithState:&v58 objects:v70 count:16];
          if (v30)
          {
            goto LABEL_30;
          }

          goto LABEL_42;
        }
      }
    }

    else
    {
      v12 = 0;
    }

    goto LABEL_42;
  }

  v49 = objc_opt_new();
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  v11 = extensionsCopy;
  v48 = [v11 countByEnumeratingWithState:&v54 objects:v69 count:16];
  if (v48)
  {
    obj = v11;
    v42 = extensionsCopy;
    v12 = 0;
    v47 = *v55;
    v45 = v10;
    v46 = v10 ^ 1;
    while (2)
    {
      for (i = 0; i != v48; ++i)
      {
        if (*v55 != v47)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v54 + 1) + 8 * i);
        extension3 = [v14 extension];
        v50 = 0u;
        v51 = 0u;
        v52 = 0u;
        v53 = 0u;
        attributes = [extension3 attributes];
        v17 = [attributes objectForKeyedSubscript:@"QLSupportedContentTypes"];

        v18 = [v17 countByEnumeratingWithState:&v50 objects:v68 count:16];
        if (v18)
        {
          v19 = v18;
          v20 = *v51;
          while (2)
          {
            for (j = 0; j != v19; ++j)
            {
              if (*v51 != v20)
              {
                objc_enumerationMutation(v17);
              }

              lowercaseString2 = [*(*(&v50 + 1) + 8 * j) lowercaseString];
              if ([lowercaseString2 isEqualToString:lowercaseString])
              {
                v24 = v14;

                v12 = v24;
                goto LABEL_22;
              }

              if (!v12)
              {
                v23 = [v49 objectForKeyedSubscript:lowercaseString2];
                if (v23)
                {
                }

                else if ([extension3 QL_isAppleExtension])
                {
                  [v49 setObject:v14 forKeyedSubscript:lowercaseString2];
                }
              }
            }

            v19 = [v17 countByEnumeratingWithState:&v50 objects:v68 count:16];
            if (v19)
            {
              continue;
            }

            break;
          }

LABEL_22:
          LOBYTE(v10) = v45;
        }

        extension4 = [v12 extension];
        qL_isAppleExtension2 = [extension4 QL_isAppleExtension];

        if (!(v10 & 1 | ((qL_isAppleExtension2 & 1) == 0)))
        {

          goto LABEL_41;
        }

        extension5 = [v12 extension];
        qL_isAppleExtension3 = [extension5 QL_isAppleExtension];

        if (((qL_isAppleExtension3 | v46) & 1) == 0)
        {
          goto LABEL_41;
        }
      }

      v48 = [obj countByEnumeratingWithState:&v54 objects:v69 count:16];
      if (v48)
      {
        continue;
      }

      break;
    }

LABEL_41:

    extensionsCopy = v42;
    if (v12)
    {
LABEL_42:
      v39 = typeCopy;
      goto LABEL_48;
    }
  }

  else
  {
  }

  v40 = _qlsLogHandle;
  if (!_qlsLogHandle)
  {
    QLSInitLogging();
    v40 = _qlsLogHandle;
  }

  if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
  {
    *buf = 138412802;
    v63 = @"extension";
    v64 = 2112;
    v65 = typeCopy;
    v66 = 2048;
    v67 = v49;
    _os_log_impl(&dword_2615AE000, v40, OS_LOG_TYPE_INFO, "Retrieving %@ for type %@ from dictionary %p #UTI", buf, 0x20u);
  }

  v39 = typeCopy;
  v12 = [QLUTIManager valueInTypeKeyedDictionary:v49 forType:typeCopy];
LABEL_48:

  return v12;
}

- (BOOL)_supportedContentTypesFromExtension:(id)extension matches:(id)matches allowMatchingWithParentTypes:(BOOL)types
{
  typesCopy = types;
  v48 = *MEMORY[0x277D85DE8];
  extensionCopy = extension;
  matchesCopy = matches;
  v9 = [MEMORY[0x277CE1CB8] typeWithIdentifier:matchesCopy];
  if ([extensionCopy QL_isAppleExtension] && typesCopy)
  {
    attributes = [extensionCopy attributes];
    v11 = [attributes objectForKeyedSubscript:@"QLSupportedContentTypes"];

    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v12 = v11;
    v13 = [v12 countByEnumeratingWithState:&v38 objects:v47 count:16];
    if (v13)
    {
      v14 = v13;
      v33 = extensionCopy;
      v15 = *v39;
      while (2)
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v39 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v38 + 1) + 8 * i);
          v18 = [MEMORY[0x277CE1CB8] typeWithIdentifier:v17];
          if (v18)
          {
            if ([v9 conformsToType:v18])
            {
              goto LABEL_31;
            }
          }

          else
          {
            v19 = _log();
            if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
            {
              identifier = [v33 identifier];
              *buf = 138412546;
              v44 = v17;
              v45 = 2112;
              v46 = identifier;
              _os_log_error_impl(&dword_2615AE000, v19, OS_LOG_TYPE_ERROR, "Invalid content type identifier %@ specified in extension %@", buf, 0x16u);
            }

            if (![matchesCopy compare:v17 options:1])
            {
LABEL_31:

              v20 = 1;
              goto LABEL_32;
            }
          }
        }

        v14 = [v12 countByEnumeratingWithState:&v38 objects:v47 count:16];
        if (v14)
        {
          continue;
        }

        break;
      }

      v20 = 0;
LABEL_32:
      v22 = v12;
LABEL_33:
      extensionCopy = v33;
    }

    else
    {
      v20 = 0;
      v22 = v12;
    }
  }

  else
  {
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    attributes2 = [extensionCopy attributes];
    v22 = [attributes2 objectForKeyedSubscript:@"QLSupportedContentTypes"];

    v23 = [v22 countByEnumeratingWithState:&v34 objects:v42 count:16];
    if (v23)
    {
      v24 = v23;
      v33 = extensionCopy;
      v25 = *v35;
      do
      {
        for (j = 0; j != v24; ++j)
        {
          if (*v35 != v25)
          {
            objc_enumerationMutation(v22);
          }

          v27 = *(*(&v34 + 1) + 8 * j);
          v28 = [MEMORY[0x277CE1CB8] typeWithIdentifier:v27];
          v12 = v28;
          if (v28)
          {
            if ([v28 isEqual:v9])
            {
              v20 = 1;
              goto LABEL_33;
            }
          }

          else
          {
            v29 = _log();
            if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
            {
              identifier2 = [v33 identifier];
              *buf = 138412546;
              v44 = v27;
              v45 = 2112;
              v46 = identifier2;
              _os_log_error_impl(&dword_2615AE000, v29, OS_LOG_TYPE_ERROR, "Invalid content type identifier %@ specified in extension %@", buf, 0x16u);
            }

            v20 = 1;
            if (![v27 compare:matchesCopy options:1])
            {
              goto LABEL_33;
            }
          }
        }

        v24 = [v22 countByEnumeratingWithState:&v34 objects:v42 count:16];
      }

      while (v24);
      v20 = 0;
      extensionCopy = v33;
    }

    else
    {
      v20 = 0;
    }
  }

  return v20;
}

- (void)_synchronouslyWaitForExtensionListIfNeeded
{
  if (!self->_matchingExtensions)
  {
    v7[3] = v2;
    v7[4] = v3;
    if (self->_isMatchingExtensions)
    {
      matchingAttributes = self->_matchingAttributes;
      v7[0] = 0;
      v6 = [MEMORY[0x277CCA9C8] extensionsWithMatchingAttributes:matchingAttributes error:v7];
      [(QLExtensionManagerCache *)self _didReceiveNewMatchingExtensionList:v6];
    }
  }
}

- (void)dealloc
{
  [(QLExtensionManagerCache *)self endMatchingExtensions];
  v3.receiver = self;
  v3.super_class = QLExtensionManagerCache;
  [(QLExtensionManagerCache *)&v3 dealloc];
}

@end