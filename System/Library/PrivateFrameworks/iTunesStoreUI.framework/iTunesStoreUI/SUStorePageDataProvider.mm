@interface SUStorePageDataProvider
- (BOOL)parseData:(id)data returningError:(id *)error;
- (BOOL)shouldProcessTouchIDDialogs;
- (void)_loadPersonalizedStoreOffersForPage:(id)page;
@end

@implementation SUStorePageDataProvider

- (BOOL)parseData:(id)data returningError:(id *)error
{
  dataCopy = data;
  contentType = [(ISDataProvider *)self contentType];
  if ([contentType isEqualToString:@"text/html"])
  {
    [(ISDataProvider *)self setOutput:dataCopy];
    LOBYTE(v8) = 1;
    [(SUStorePageDataProvider *)self setOutputType:1];
    goto LABEL_7;
  }

  if (![contentType hasPrefix:@"image"])
  {
    if ([contentType rangeOfString:@"itml" options:1] != 0x7FFFFFFFFFFFFFFFLL)
    {
      [(ISDataProvider *)self setOutput:dataCopy];
      [(SUStorePageDataProvider *)self setOutputType:5];
      v10 = 0;
      LOBYTE(v8) = 1;
      if (!error)
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }

    propertyListDataProvider = [(SUStorePageDataProvider *)self propertyListDataProvider];
    v14 = [propertyListDataProvider copy];

    if (!v14)
    {
      v14 = objc_alloc_init(MEMORY[0x1E69E47C0]);
    }

    [v14 configureFromProvider:self];
    [v14 setShouldPostFooterSectionChanged:0];
    shouldProcessAuthenticationDialogs = [v14 shouldProcessAuthenticationDialogs];
    shouldProcessTouchIDDialogs = [(SUStorePageDataProvider *)self shouldProcessTouchIDDialogs];
    shouldProcessDialogs = [v14 shouldProcessDialogs];
    clientInterface = [(SUStorePageDataProvider *)self clientInterface];
    if (clientInterface)
    {
      [v14 setShouldProcessAuthenticationDialogs:0];
      [v14 setShouldProcessDialogs:0];
    }

    v42 = 0;
    v8 = [v14 parseData:dataCopy returningError:&v42];
    v10 = v42;
    output = [v14 output];
    if (!v8)
    {
LABEL_27:
      if (!clientInterface)
      {
        goto LABEL_48;
      }

      v20 = [output objectForKey:*MEMORY[0x1E69E4828]];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
LABEL_47:

LABEL_48:
        if (!error)
        {
          goto LABEL_9;
        }

        goto LABEL_8;
      }

      v30 = v20;
      v21 = [objc_alloc(MEMORY[0x1E69E4750]) initWithDialogDictionary:v20];
      if ([v21 kind] == 1)
      {
        if (shouldProcessTouchIDDialogs)
        {
          v22 = [output objectForKey:*MEMORY[0x1E69E4840]];
          v35 = [output objectForKey:*MEMORY[0x1E69E4838]];
          objc_opt_class();
          v33 = v22;
          if (objc_opt_isKindOfClass())
          {
            v23 = [objc_alloc(MEMORY[0x1E69E47E8]) initWithDialogDictionary:v22];
          }

          else
          {
            v23 = 0;
          }

          v41 = v10;
          v29 = v23;
          LOBYTE(v8) = [(ISDataProvider *)self runTouchIDAuthorizationDialog:v23 fallbackDialog:v21 metricsDictionary:v35 error:&v41];
          v28 = v41;

          if (v8)
          {
            v10 = v28;
          }

          else
          {
            v10 = v28;
            if (!v28 && ((shouldProcessAuthenticationDialogs ^ 1) & 1) == 0)
            {
              v40 = 0;
              LOBYTE(v8) = [(ISDataProvider *)self runAuthorizationDialog:v21 error:&v40];
              v10 = v40;
            }
          }

          v24 = v21;

          v25 = v29;
          v20 = v30;
          goto LABEL_45;
        }

        if (shouldProcessAuthenticationDialogs)
        {
          v39 = v10;
          selfCopy = self;
          v24 = v21;
          LOBYTE(v8) = [(ISDataProvider *)selfCopy runAuthorizationDialog:v21 error:&v39];
          v27 = v39;
          v25 = v10;
          v10 = v27;
          goto LABEL_37;
        }
      }

      else if (shouldProcessDialogs)
      {
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __52__SUStorePageDataProvider_parseData_returningError___block_invoke;
        block[3] = &unk_1E81644A8;
        v37 = clientInterface;
        v24 = v21;
        v38 = v21;
        dispatch_async(MEMORY[0x1E69E96A0], block);

        v25 = v37;
LABEL_37:
        v20 = v30;
LABEL_45:

        goto LABEL_46;
      }

      v24 = v21;
      v20 = v30;
LABEL_46:

      goto LABEL_47;
    }

    if ([SUStructuredPage pageTypeForStorePageDictionary:output]== 6)
    {
      [(ISDataProvider *)self setOutput:output];
      selfCopy3 = self;
      v18 = 3;
    }

    else
    {
      if ([contentType caseInsensitiveCompare:@"application/json"])
      {
        v19 = objc_alloc_init(SUStructuredPage);
        if ([(SUStructuredPage *)v19 loadFromDictionary:output])
        {
          [(SUStorePageDataProvider *)self _loadPersonalizedStoreOffersForPage:v19];
        }

        [(ISDataProvider *)self setOutput:v19];
        [(SUStorePageDataProvider *)self setOutputType:0];

        goto LABEL_26;
      }

      [(ISDataProvider *)self setOutput:output];
      selfCopy3 = self;
      v18 = 4;
    }

    [(SUStorePageDataProvider *)selfCopy3 setOutputType:v18];
LABEL_26:
    [(ISDataProvider *)self migrateOutputFromSubProvider:v14];
    goto LABEL_27;
  }

  v9 = [objc_alloc(MEMORY[0x1E69DCAB8]) initWithData:dataCopy];
  LOBYTE(v8) = v9 != 0;
  if (v9)
  {
    [(ISDataProvider *)self setOutput:v9];
    [(SUStorePageDataProvider *)self setOutputType:2];
  }

LABEL_7:
  v10 = 0;
  if (error)
  {
LABEL_8:
    v11 = v10;
    *error = v10;
  }

LABEL_9:

  return v8;
}

- (BOOL)shouldProcessTouchIDDialogs
{
  biometricAuthenticationContext = [(ISDataProvider *)self biometricAuthenticationContext];
  v3 = biometricAuthenticationContext != 0;

  return v3;
}

- (void)_loadPersonalizedStoreOffersForPage:(id)page
{
  v53 = *MEMORY[0x1E69E9840];
  pageCopy = page;
  authenticatedAccountDSID = [(ISDataProvider *)self authenticatedAccountDSID];
  if (authenticatedAccountDSID)
  {
    requiredUniqueIdentifier = authenticatedAccountDSID;
  }

  else
  {
    authenticationContext = [(ISDataProvider *)self authenticationContext];
    requiredUniqueIdentifier = [authenticationContext requiredUniqueIdentifier];

    if (!requiredUniqueIdentifier)
    {
      defaultStore = [MEMORY[0x1E69D4890] defaultStore];
      activeAccount = [defaultStore activeAccount];
      requiredUniqueIdentifier = [activeAccount uniqueIdentifier];

      if (!requiredUniqueIdentifier)
      {
        goto LABEL_32;
      }
    }
  }

  v42 = objc_alloc_init(MEMORY[0x1E69E47A8]);
  [v42 setAccountIdentifier:requiredUniqueIdentifier];
  v41 = objc_alloc_init(MEMORY[0x1E695DF90]);
  itemList = [pageCopy itemList];
  copyItems = [itemList copyItems];

  item = [pageCopy item];
  v37 = item;
  v38 = requiredUniqueIdentifier;
  if (item)
  {
    v13 = item;
    if (!copyItems)
    {
      copyItems = objc_alloc_init(MEMORY[0x1E695DF70]);
    }

    [copyItems addObject:v13];
  }

  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  obj = copyItems;
  v14 = [obj countByEnumeratingWithState:&v47 objects:v52 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v48;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v48 != v16)
        {
          objc_enumerationMutation(obj);
        }

        v18 = *(*(&v47 + 1) + 8 * i);
        defaultStoreOffer = [v18 defaultStoreOffer];
        if (defaultStoreOffer)
        {
          v20 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%lld", objc_msgSend(v18, "itemIdentifier")];
          itemTypeString = [v18 itemTypeString];
          [v42 addItemIdentifier:v20 forItemType:itemTypeString];

          [v41 setObject:v18 forKey:v20];
        }
      }

      v15 = [obj countByEnumeratingWithState:&v47 objects:v52 count:16];
    }

    while (v15);
  }

  v22 = [objc_alloc(MEMORY[0x1E69E47A0]) initWithPersonalizeOffersRequest:v42];
  [v22 main];
  response = [v22 response];
  if (response)
  {
    v35 = v22;
    v36 = pageCopy;
    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v24 = v41;
    v25 = [v24 countByEnumeratingWithState:&v43 objects:v51 count:16];
    if (v25)
    {
      v26 = v25;
      v40 = *v44;
      do
      {
        for (j = 0; j != v26; ++j)
        {
          if (*v44 != v40)
          {
            objc_enumerationMutation(v24);
          }

          v28 = *(*(&v43 + 1) + 8 * j);
          v29 = [response actionParametersForItemIdentifier:v28];
          if (v29)
          {
            v30 = [v24 objectForKey:v28];
            defaultStoreOffer2 = [v30 defaultStoreOffer];
            [defaultStoreOffer2 setBuyParameters:v29];
            itemTypeString2 = [v30 itemTypeString];
            v33 = [response priceDisplayForItemType:itemTypeString2];
            if (v33)
            {
              [defaultStoreOffer2 setPriceDisplay:v33];
            }

            v34 = [response actionDisplayNameForItemType:itemTypeString2];
            [defaultStoreOffer2 setActionDisplayName:v34];
            [defaultStoreOffer2 setOneTapOffer:v34 == 0];
          }
        }

        v26 = [v24 countByEnumeratingWithState:&v43 objects:v51 count:16];
      }

      while (v26);
    }

    v22 = v35;
    pageCopy = v36;
  }

LABEL_32:
}

@end