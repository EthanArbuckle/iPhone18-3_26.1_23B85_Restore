@interface SKUIRedeemOperation
- (SKUIRedeemOperation)initWithCode:(id)code;
- (id)_authenticationContext;
- (id)_itemsForItemIdentifiers:(id)identifiers;
- (id)_performRequestWithProperties:(id)properties error:(id *)error;
- (id)_redeemForSuccessDictionary:(id)dictionary;
- (id)_requestPropertiesForThankYouWithURL:(id)l;
- (void)_applyThankYouDictionary:(id)dictionary toRedeem:(id)redeem;
- (void)main;
@end

@implementation SKUIRedeemOperation

- (SKUIRedeemOperation)initWithCode:(id)code
{
  codeCopy = code;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUIRedeemOperation initWithCode:];
  }

  v9.receiver = self;
  v9.super_class = SKUIRedeemOperation;
  v6 = [(SKUIRedeemOperation *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_code, code);
  }

  return v7;
}

- (void)main
{
  v74 = *MEMORY[0x277D85DE8];
  v61 = 0;
  v62 = &v61;
  v63 = 0x3032000000;
  v64 = __Block_byref_object_copy__99;
  v65 = __Block_byref_object_dispose__99;
  v66 = 0;
  mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharedConfig];
  shouldLog = [mEMORY[0x277D69B38] shouldLog];
  shouldLogToDisk = [mEMORY[0x277D69B38] shouldLogToDisk];
  oSLogObject = [mEMORY[0x277D69B38] OSLogObject];
  v7 = oSLogObject;
  if (shouldLogToDisk)
  {
    shouldLog |= 2u;
  }

  if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    shouldLog &= 2u;
  }

  if (!shouldLog)
  {
    goto LABEL_8;
  }

  v8 = objc_opt_class();
  code = self->_code;
  *v70 = 138543618;
  *&v70[4] = v8;
  *&v70[12] = 2114;
  *&v70[14] = code;
  v10 = v8;
  LODWORD(v52) = 22;
  v51 = v70;
  v11 = _os_log_send_and_compose_impl();

  if (v11)
  {
    v7 = [MEMORY[0x277CCACA8] stringWithCString:v11 encoding:{4, v70, v52}];
    free(v11);
    v51 = v7;
    SSFileLog();
LABEL_8:
  }

  if (!self->_code)
  {
    goto LABEL_46;
  }

  *v70 = 0;
  *&v70[8] = v70;
  *&v70[16] = 0x3032000000;
  v71 = __Block_byref_object_copy__99;
  v72 = __Block_byref_object_dispose__99;
  v73 = 0;
  v12 = dispatch_semaphore_create(0);
  v13 = objc_alloc(MEMORY[0x277D69C30]);
  v69 = self->_code;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:&v69 count:1];
  v15 = [v13 initWithRedeemCodes:v14];

  _authenticationContext = [(SKUIRedeemOperation *)self _authenticationContext];
  [v15 setAuthenticationContext:_authenticationContext];

  [v15 setCameraRecognized:self->_cameraRecognized];
  [v15 setHeadless:0];
  v57[0] = MEMORY[0x277D85DD0];
  v57[1] = 3221225472;
  v57[2] = __27__SKUIRedeemOperation_main__block_invoke;
  v57[3] = &unk_278200BB0;
  v59 = v70;
  v60 = &v61;
  v17 = v12;
  v58 = v17;
  [v15 startWithRedeemResponseBlock:v57];
  dispatch_semaphore_wait(v17, 0xFFFFFFFFFFFFFFFFLL);
  v18 = *(*&v70[8] + 40);
  if (v18)
  {
    v19 = [v18 dictionaryForCode:self->_code];
    if (v19)
    {
      v20 = [(SKUIRedeemOperation *)self _redeemForSuccessDictionary:v19];
    }

    else
    {
      v21 = [*(*&v70[8] + 40) errorForCode:self->_code];
      v22 = v62[5];
      v62[5] = v21;

      v20 = 0;
    }
  }

  else
  {
    v20 = 0;
  }

  redirectURL = [v20 redirectURL];

  if (redirectURL)
  {
    redirectURL2 = [v20 redirectURL];
    v25 = [(SKUIRedeemOperation *)self _requestPropertiesForThankYouWithURL:redirectURL2];

    v26 = [(SKUIRedeemOperation *)self _performRequestWithProperties:v25 error:0];
    [v20 setThankYouDictionary:v26];
    if (v26)
    {
      [(SKUIRedeemOperation *)self _applyThankYouDictionary:v26 toRedeem:v20];
    }
  }

  _Block_object_dispose(v70, 8);
  if (!v20)
  {
LABEL_46:
    if (!v62[5])
    {
      v27 = MEMORY[0x277CCA9B8];
      v67 = *MEMORY[0x277CCA450];
      v28 = self->_clientContext;
      v29 = @"Redeem";
      if (v28)
      {
        [(SKUIClientContext *)v28 localizedStringForKey:@"REDEEM_UNAVAILABLE" inTable:v29];
      }

      else
      {
        [SKUIClientContext localizedStringForKey:@"REDEEM_UNAVAILABLE" inBundles:0 inTable:v29];
      }
      v30 = ;

      v68 = v30;
      v31 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v68 forKeys:&v67 count:1];
      v32 = [v27 errorWithDomain:*MEMORY[0x277CDD438] code:0 userInfo:v31];
      v33 = v62[5];
      v62[5] = v32;
    }

    v20 = 0;
  }

  if (v62[5])
  {
    mEMORY[0x277D69B38]2 = [MEMORY[0x277D69B38] sharedConfig];
    shouldLog2 = [mEMORY[0x277D69B38]2 shouldLog];
    shouldLogToDisk2 = [mEMORY[0x277D69B38]2 shouldLogToDisk];
    oSLogObject2 = [mEMORY[0x277D69B38]2 OSLogObject];
    v38 = oSLogObject2;
    if (shouldLogToDisk2)
    {
      shouldLog2 |= 2u;
    }

    if (!os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_ERROR))
    {
      shouldLog2 &= 2u;
    }

    if (!shouldLog2)
    {
      goto LABEL_42;
    }

    v39 = objc_opt_class();
    v40 = self->_code;
    v41 = v62[5];
    *v70 = 138543874;
    *&v70[4] = v39;
    *&v70[12] = 2114;
    *&v70[14] = v40;
    *&v70[22] = 2114;
    v71 = v41;
    v42 = v39;
    LODWORD(v52) = 32;
    v43 = _os_log_send_and_compose_impl();

    if (v43)
    {
LABEL_41:
      v38 = [MEMORY[0x277CCACA8] stringWithCString:v43 encoding:{4, v70, v52}];
      free(v43);
      SSFileLog();
LABEL_42:
    }
  }

  else
  {
    mEMORY[0x277D69B38]2 = [MEMORY[0x277D69B38] sharedConfig];
    shouldLog3 = [mEMORY[0x277D69B38]2 shouldLog];
    shouldLogToDisk3 = [mEMORY[0x277D69B38]2 shouldLogToDisk];
    oSLogObject3 = [mEMORY[0x277D69B38]2 OSLogObject];
    v38 = oSLogObject3;
    if (shouldLogToDisk3)
    {
      shouldLog3 |= 2u;
    }

    if (!os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_DEFAULT))
    {
      shouldLog3 &= 2u;
    }

    if (!shouldLog3)
    {
      goto LABEL_42;
    }

    v47 = objc_opt_class();
    v48 = self->_code;
    *v70 = 138543618;
    *&v70[4] = v47;
    *&v70[12] = 2114;
    *&v70[14] = v48;
    v49 = v47;
    LODWORD(v52) = 22;
    v43 = _os_log_send_and_compose_impl();

    if (v43)
    {
      goto LABEL_41;
    }
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __27__SKUIRedeemOperation_main__block_invoke_13;
  block[3] = &unk_2781FDA50;
  v54 = v20;
  selfCopy = self;
  v56 = &v61;
  v50 = v20;
  dispatch_async(MEMORY[0x277D85CD0], block);

  _Block_object_dispose(&v61, 8);
}

void __27__SKUIRedeemOperation_main__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v12 = v5;

  v9 = *(*(a1 + 48) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
  v11 = v6;

  dispatch_semaphore_signal(*(a1 + 32));
}

uint64_t __27__SKUIRedeemOperation_main__block_invoke_13(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = +[SKUIItemStateCenter defaultCenter];
    [v2 reloadFromServer];

    v3 = [MEMORY[0x277D69A20] defaultStore];
    v4 = [v3 activeAccount];
    v5 = [v3 activeAccount];
    v6 = [*(a1 + 32) creditDisplay];
    [v5 setCreditsString:v6];

    [v3 saveAccount:v4 verifyCredentials:0 completion:0];
  }

  v7 = *(*(*(a1 + 40) + 272) + 16);

  return v7();
}

- (id)_authenticationContext
{
  defaultStore = [MEMORY[0x277D69A20] defaultStore];
  activeAccount = [defaultStore activeAccount];

  v4 = objc_alloc_init(MEMORY[0x277D7FCC8]);
  if (activeAccount && ([activeAccount uniqueIdentifier], v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v4, "canPerformExtendedBiometricActionsForAccountIdentifier:", v5), v5, v6))
  {
    v7 = [objc_alloc(MEMORY[0x277D69BC8]) initWithAccount:activeAccount];
    [v7 setShouldCreateNewSession:1];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)_redeemForSuccessDictionary:(id)dictionary
{
  v112 = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  v3 = [dictionaryCopy objectForKey:@"status"];
  if ((objc_opt_respondsToSelector() & 1) == 0 || [v3 integerValue] < 0)
  {
    v39 = 0;
    goto LABEL_122;
  }

  array = [MEMORY[0x277CBEB18] array];
  array2 = [MEMORY[0x277CBEB18] array];
  v5 = [dictionaryCopy objectForKey:@"salables"];

  objc_opt_class();
  v90 = array;
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v40 = 0;
    goto LABEL_52;
  }

  v104 = 0u;
  v105 = 0u;
  v102 = 0u;
  v103 = 0u;
  v85 = v5;
  obj = v5;
  v6 = [obj countByEnumeratingWithState:&v102 objects:v111 count:16];
  if (!v6)
  {
    v88 = 0;
    goto LABEL_51;
  }

  v7 = v6;
  v88 = 0;
  v8 = *v103;
  do
  {
    for (i = 0; i != v7; ++i)
    {
      if (*v103 != v8)
      {
        objc_enumerationMutation(obj);
      }

      v10 = *(*(&v102 + 1) + 8 * i);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v11 = [v10 objectForKey:@"parentSalableAdamId"];
        v12 = v11;
        if (v11)
        {
          v13 = v11;
        }

        else
        {
          v13 = [v10 objectForKey:@"salableAdamId"];
        }

        v14 = v13;

        if (objc_opt_respondsToSelector())
        {
          v15 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v14, "longLongValue")}];
          v110 = v15;
          v16 = [MEMORY[0x277CBEA60] arrayWithObjects:&v110 count:1];
          v17 = [(SKUIRedeemOperation *)self _itemsForItemIdentifiers:v16];

          if ([(SKUIRedeemItem *)v17 count])
          {
            [array addObjectsFromArray:v17];
LABEL_39:

            v37 = [v10 objectForKey:@"parentSalableName"];

            if (v37)
            {
              v38 = [v10 objectForKey:@"salableName"];

              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v14 = v38;

                v88 = v14;
              }

              else
              {
                v14 = v38;
              }
            }

            continue;
          }
        }

        v17 = objc_alloc_init(SKUIRedeemItem);
        v18 = [v10 objectForKey:@"productType"];

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v19 = [&unk_2828D30A8 objectForKey:@"productType"];
          v20 = v19;
          if (!v19)
          {
            v19 = &unk_2828D2E70;
          }

          integerValue = [v19 integerValue];

          [(SKUIItem *)v17 setItemKind:integerValue];
        }

        v22 = [v10 objectForKey:{@"parentSalableName", v85}];
        v23 = v22;
        if (v22)
        {
          v24 = v22;
        }

        else
        {
          v24 = [v10 objectForKey:@"salableName"];
        }

        v25 = v24;

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [(SKUIItem *)v17 setTitle:v25];
        }

        v26 = [v10 objectForKey:@"parentSalableAdamId"];
        v27 = v26;
        if (v26)
        {
          v28 = v26;
        }

        else
        {
          v28 = [v10 objectForKey:@"salableAdamId"];
        }

        v29 = v28;

        if (objc_opt_respondsToSelector())
        {
          -[SKUIItem setItemIdentifier:](v17, "setItemIdentifier:", [v29 longLongValue]);
        }

        v30 = [v10 objectForKey:@"hiResCoverArtUrl"];
        v31 = v30;
        if (v30)
        {
          v32 = v30;
        }

        else
        {
          v32 = [v10 objectForKey:@"lowResCoverArtUrl"];
        }

        v14 = v32;

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v33 = [MEMORY[0x277CBEBC0] URLWithString:v14];
          if (v33)
          {
            v34 = [[SKUIArtwork alloc] initWithURL:v33 size:10.0, 10.0];
            v35 = objc_alloc_init(SKUIArtworkList);
            v109 = v34;
            v36 = [MEMORY[0x277CBEA60] arrayWithObjects:&v109 count:1];
            [(SKUIArtworkList *)v35 setArtworks:v36];

            [(SKUIRedeemItem *)v17 setArtworks:v35];
            array = v90;
          }
        }

        [array addObject:v17];
        goto LABEL_39;
      }
    }

    v7 = [obj countByEnumeratingWithState:&v102 objects:v111 count:16];
  }

  while (v7);
LABEL_51:

  v40 = v88;
  v5 = v85;
LABEL_52:
  v89 = v40;
  v41 = [dictionaryCopy objectForKey:{@"downloads", v85}];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v100 = 0u;
    v101 = 0u;
    v98 = 0u;
    v99 = 0u;
    v93 = v41;
    v42 = v41;
    v43 = [v42 countByEnumeratingWithState:&v98 objects:v108 count:16];
    if (v43)
    {
      v44 = v43;
      v45 = *v99;
      do
      {
        for (j = 0; j != v44; ++j)
        {
          if (*v99 != v45)
          {
            objc_enumerationMutation(v42);
          }

          v47 = *(*(&v98 + 1) + 8 * j);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v48 = [v47 objectForKey:@"songId"];
            if (objc_opt_respondsToSelector())
            {
              v49 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v48, "longLongValue")}];
              v107 = v49;
              v50 = [MEMORY[0x277CBEA60] arrayWithObjects:&v107 count:1];
              v51 = [(SKUIRedeemOperation *)self _itemsForItemIdentifiers:v50];

              [array2 addObjectsFromArray:v51];
              array = v90;
            }
          }
        }

        v44 = [v42 countByEnumeratingWithState:&v98 objects:v108 count:16];
      }

      while (v44);
    }

    v41 = v93;
  }

  if ([array count])
  {
    if ([array count] == 1)
    {
      v52 = [array valueForKeyPath:@"itemIdentifier"];
      v53 = v52;
      v54 = MEMORY[0x277CBEBF8];
      if (v52)
      {
        v54 = v52;
      }

      v55 = v54;

      v56 = [MEMORY[0x277CBEB98] setWithArray:v55];
      v57 = [v41 valueForKeyPath:@"songId"];

      array3 = [MEMORY[0x277CBEB18] array];
      v94 = 0u;
      v95 = 0u;
      v96 = 0u;
      v97 = 0u;
      v59 = v57;
      v60 = [v59 countByEnumeratingWithState:&v94 objects:v106 count:16];
      if (v60)
      {
        v61 = v60;
        v62 = *v95;
        do
        {
          for (k = 0; k != v61; ++k)
          {
            if (*v95 != v62)
            {
              objc_enumerationMutation(v59);
            }

            v64 = *(*(&v94 + 1) + 8 * k);
            if (([v56 containsObject:v64] & 1) == 0)
            {
              [array3 addObject:v64];
            }
          }

          v61 = [v59 countByEnumeratingWithState:&v94 objects:v106 count:16];
        }

        while (v61);
      }
    }

    else
    {
      array3 = 0;
      v55 = array2;
    }
  }

  else
  {
    array3 = 0;
    v55 = array;
    array = array2;
  }

  v65 = [dictionaryCopy objectForKey:@"redeemedCredit"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v66 = [v65 objectForKey:@"totalCredit"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v67 = v66;
    }

    else
    {
      v67 = 0;
    }

    if (![v67 length])
    {
      v68 = [v65 objectForKey:@"money"];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v66 = v68;

        v67 = v66;
      }

      else
      {
        v66 = v68;
      }
    }
  }

  else
  {
    v67 = 0;
  }

  v69 = [dictionaryCopy objectForKey:@"totalCredit"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v70 = [v69 objectForKey:@"totalCredit"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v71 = v70;
    }

    else
    {
      v71 = 0;
    }

    if (![v71 length])
    {
      v72 = [v69 objectForKey:@"money"];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v70 = v72;

        v71 = v70;
      }

      else
      {
        v70 = v72;
      }
    }
  }

  else
  {
    v71 = 0;
  }

  v73 = [dictionaryCopy objectForKey:@"creditDisplay"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    stringValue = [v73 stringValue];
  }

  else
  {
    stringValue = 0;
  }

  v75 = [dictionaryCopy objectForKey:@"postRedemptionRedirectURL"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v76 = [objc_alloc(MEMORY[0x277CBEBC0]) initWithString:v75];
  }

  else
  {
    v76 = 0;
  }

  v77 = [dictionaryCopy objectForKey:@"customizedThankYouPageURL"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v78 = [objc_alloc(MEMORY[0x277CBEBC0]) initWithString:v77];
  }

  else
  {
    v78 = 0;
  }

  v3 = [dictionaryCopy objectForKey:@"iTunesPassAlertInterval"];

  v79 = -1.0;
  if (objc_opt_respondsToSelector())
  {
    [v3 doubleValue];
    v79 = v80;
  }

  if ([v67 length] || objc_msgSend(array, "count"))
  {
    v39 = objc_alloc_init(SKUIRedeem);
    [(SKUIRedeem *)v39 setBalance:v71];
    [(SKUIRedeem *)v39 setCredit:v67];
    [(SKUIRedeem *)v39 setCreditDisplay:stringValue];
    v81 = v89;
    [(SKUIRedeem *)v39 setInAppPurchase:v89];
    if ([array count])
    {
      v82 = array;
    }

    else
    {
      v82 = 0;
    }

    [(SKUIRedeem *)v39 setItems:v82];
    if ([array3 count])
    {
      v83 = array3;
    }

    else
    {
      v83 = 0;
    }

    [(SKUIRedeem *)v39 setDownloads:v83];
    [(SKUIRedeem *)v39 setITunesPassLearnMoreAlertInterval:v79];
    [(SKUIRedeem *)v39 setRedirectURL:v76];
    [(SKUIRedeem *)v39 setCustomizedThankyouURL:v78];
  }

  else
  {
    v39 = 0;
    v81 = v89;
  }

LABEL_122:

  return v39;
}

- (id)_itemsForItemIdentifiers:(id)identifiers
{
  v46 = *MEMORY[0x277D85DE8];
  identifiersCopy = identifiers;
  array = [MEMORY[0x277CBEB18] array];
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v5 = identifiersCopy;
  v6 = [v5 countByEnumeratingWithState:&v40 objects:v45 count:16];
  if (v6)
  {
    v7 = *v41;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v41 != v7)
        {
          objc_enumerationMutation(v5);
        }

        stringValue = [*(*(&v40 + 1) + 8 * i) stringValue];
        [array addObject:stringValue];
      }

      v6 = [v5 countByEnumeratingWithState:&v40 objects:v45 count:16];
    }

    while (v6);
  }

  v26 = objc_alloc_init(MEMORY[0x277D69B50]);
  [v26 setKeyProfile:*MEMORY[0x277D6A2C8]];
  [v26 setValue:array forRequestParameter:*MEMORY[0x277D6A2E0]];
  v34 = 0;
  v35 = &v34;
  v36 = 0x3032000000;
  v37 = __Block_byref_object_copy__99;
  v38 = __Block_byref_object_dispose__99;
  v39 = 0;
  v10 = dispatch_semaphore_create(0);
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = __48__SKUIRedeemOperation__itemsForItemIdentifiers___block_invoke;
  v31[3] = &unk_278200BD8;
  v33 = &v34;
  v11 = v10;
  v32 = v11;
  [v26 startWithLookupBlock:v31];
  v25 = v11;
  dispatch_semaphore_wait(v11, 0xFFFFFFFFFFFFFFFFLL);
  allItems = [v35[5] allItems];
  array2 = [MEMORY[0x277CBEB18] array];
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v14 = allItems;
  v15 = [v14 countByEnumeratingWithState:&v27 objects:v44 count:16];
  if (v15)
  {
    v16 = *v28;
    do
    {
      for (j = 0; j != v15; ++j)
      {
        if (*v28 != v16)
        {
          objc_enumerationMutation(v14);
        }

        v18 = *(*(&v27 + 1) + 8 * j);
        v19 = [SKUIItem alloc];
        lookupDictionary = [v18 lookupDictionary];
        v21 = [(SKUIItem *)v19 initWithLookupDictionary:lookupDictionary];
        [array2 addObject:v21];
      }

      v15 = [v14 countByEnumeratingWithState:&v27 objects:v44 count:16];
    }

    while (v15);
  }

  if ([array2 count])
  {
    v22 = array2;
  }

  else
  {
    v22 = 0;
  }

  v23 = v22;

  _Block_object_dispose(&v34, 8);

  return v23;
}

void __48__SKUIRedeemOperation__itemsForItemIdentifiers___block_invoke(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

- (void)_applyThankYouDictionary:(id)dictionary toRedeem:(id)redeem
{
  v48 = *MEMORY[0x277D85DE8];
  redeemCopy = redeem;
  v6 = [dictionary objectForKey:@"typ"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_42;
  }

  v7 = [v6 objectForKey:@"explanation"];
  v8 = 0x277CBE000uLL;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v9 = v7;
    v10 = [v9 countByEnumeratingWithState:&v41 objects:v47 count:16];
    if (v10)
    {
      v11 = v10;
      v35 = redeemCopy;
      v12 = *v42;
      v13 = 1;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v42 != v12)
          {
            objc_enumerationMutation(v9);
          }

          objc_opt_class();
          v13 &= objc_opt_isKindOfClass();
        }

        v11 = [v9 countByEnumeratingWithState:&v41 objects:v47 count:16];
      }

      while (v11);

      redeemCopy = v35;
      v8 = 0x277CBE000;
      if ((v13 & 1) == 0)
      {
        goto LABEL_14;
      }
    }

    else
    {
    }

    v15 = [v9 componentsJoinedByString:@"\n"];
    [redeemCopy setMessage:v15];
  }

LABEL_14:
  v16 = [v6 objectForKey:@"title"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [redeemCopy setTitle:v16];
  }

  v17 = [v6 objectForKey:@"finalPageUrl"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v18 = [MEMORY[0x277CBEBC0] URLWithString:v17];
    [redeemCopy setRedirectURL:v18];
  }

  v19 = [v6 objectForKey:@"links"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v36 = redeemCopy;
    array = [MEMORY[0x277CBEB18] array];
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v21 = v19;
    v22 = [v21 countByEnumeratingWithState:&v37 objects:v46 count:16];
    if (v22)
    {
      v23 = v22;
      v24 = *v38;
      do
      {
        for (j = 0; j != v23; ++j)
        {
          if (*v38 != v24)
          {
            objc_enumerationMutation(v21);
          }

          v26 = *(*(&v37 + 1) + 8 * j);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v27 = [[SKUILink alloc] initWithLinkDictionary:v26];
            if (v27)
            {
              [array addObject:v27];
            }
          }
        }

        v23 = [v21 countByEnumeratingWithState:&v37 objects:v46 count:16];
      }

      while (v23);
    }

    redeemCopy = v36;
    [v36 setLinks:array];

    v8 = 0x277CBE000uLL;
  }

  v28 = [v6 objectForKey:@"artwork"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v29 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:v28];

    v30 = [v29 objectForKey:@"imgSrc"];
    if (v30)
    {
      [v29 setObject:v30 forKey:@"url"];
      v31 = [v29 objectForKey:@"isLogo"];
      if ((objc_opt_respondsToSelector() & 1) != 0 && [v31 BOOLValue])
      {
        v32 = [SKUIArtworkList alloc];
        v45 = v29;
        v33 = [*(v8 + 2656) arrayWithObjects:&v45 count:1];
        v34 = [(SKUIArtworkList *)v32 initWithArtworkListArray:v33];

        if (v34)
        {
          [redeemCopy setHeaderArtworkProvider:v34];
        }
      }
    }
  }

  else
  {
    v29 = v28;
  }

LABEL_42:
}

- (id)_requestPropertiesForThankYouWithURL:(id)l
{
  v3 = MEMORY[0x277D69BD0];
  lCopy = l;
  v5 = [[v3 alloc] initWithURL:lCopy];

  [v5 setITunesStoreRequest:1];
  v6 = SSVDefaultUserAgent();
  [v5 setValue:v6 forHTTPHeaderField:@"User-Agent"];

  [v5 setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];

  return v5;
}

- (id)_performRequestWithProperties:(id)properties error:(id *)error
{
  propertiesCopy = properties;
  v5 = dispatch_semaphore_create(0);
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__99;
  v23 = __Block_byref_object_dispose__99;
  v24 = 0;
  v6 = [(SSURLConnectionRequest *)[SKUIURLConnectionRequest alloc] initWithRequestProperties:propertiesCopy];
  v13 = MEMORY[0x277D85DD0];
  v14 = 3221225472;
  v15 = __59__SKUIRedeemOperation__performRequestWithProperties_error___block_invoke;
  v16 = &unk_2782002B8;
  v18 = &v19;
  v7 = v5;
  v17 = v7;
  [(SKUIURLConnectionRequest *)v6 startWithConnectionResponseBlock:&v13];
  dispatch_semaphore_wait(v7, 0xFFFFFFFFFFFFFFFFLL);
  bodyData = [v20[5] bodyData];
  if (bodyData)
  {
    v9 = +[(SSVURLDataConsumer *)SKUIJSONDataConsumer];
    v10 = [v9 objectForData:bodyData response:0 error:0];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  _Block_object_dispose(&v19, 8);

  return v11;
}

void __59__SKUIRedeemOperation__performRequestWithProperties_error___block_invoke(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

- (void)initWithCode:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIRedeemOperation initWithCode:]";
}

@end