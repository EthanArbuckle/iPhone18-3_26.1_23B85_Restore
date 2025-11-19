@interface SUStorePageDataProvider
- (BOOL)parseData:(id)a3 returningError:(id *)a4;
- (BOOL)shouldProcessTouchIDDialogs;
- (void)_loadPersonalizedStoreOffersForPage:(id)a3;
@end

@implementation SUStorePageDataProvider

- (BOOL)parseData:(id)a3 returningError:(id *)a4
{
  v6 = a3;
  v7 = [(ISDataProvider *)self contentType];
  if ([v7 isEqualToString:@"text/html"])
  {
    [(ISDataProvider *)self setOutput:v6];
    LOBYTE(v8) = 1;
    [(SUStorePageDataProvider *)self setOutputType:1];
    goto LABEL_7;
  }

  if (![v7 hasPrefix:@"image"])
  {
    if ([v7 rangeOfString:@"itml" options:1] != 0x7FFFFFFFFFFFFFFFLL)
    {
      [(ISDataProvider *)self setOutput:v6];
      [(SUStorePageDataProvider *)self setOutputType:5];
      v10 = 0;
      LOBYTE(v8) = 1;
      if (!a4)
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }

    v13 = [(SUStorePageDataProvider *)self propertyListDataProvider];
    v14 = [v13 copy];

    if (!v14)
    {
      v14 = objc_alloc_init(MEMORY[0x1E69E47C0]);
    }

    [v14 configureFromProvider:self];
    [v14 setShouldPostFooterSectionChanged:0];
    v31 = [v14 shouldProcessAuthenticationDialogs];
    v34 = [(SUStorePageDataProvider *)self shouldProcessTouchIDDialogs];
    v32 = [v14 shouldProcessDialogs];
    v15 = [(SUStorePageDataProvider *)self clientInterface];
    if (v15)
    {
      [v14 setShouldProcessAuthenticationDialogs:0];
      [v14 setShouldProcessDialogs:0];
    }

    v42 = 0;
    v8 = [v14 parseData:v6 returningError:&v42];
    v10 = v42;
    v16 = [v14 output];
    if (!v8)
    {
LABEL_27:
      if (!v15)
      {
        goto LABEL_48;
      }

      v20 = [v16 objectForKey:*MEMORY[0x1E69E4828]];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
LABEL_47:

LABEL_48:
        if (!a4)
        {
          goto LABEL_9;
        }

        goto LABEL_8;
      }

      v30 = v20;
      v21 = [objc_alloc(MEMORY[0x1E69E4750]) initWithDialogDictionary:v20];
      if ([v21 kind] == 1)
      {
        if (v34)
        {
          v22 = [v16 objectForKey:*MEMORY[0x1E69E4840]];
          v35 = [v16 objectForKey:*MEMORY[0x1E69E4838]];
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
            if (!v28 && ((v31 ^ 1) & 1) == 0)
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

        if (v31)
        {
          v39 = v10;
          v26 = self;
          v24 = v21;
          LOBYTE(v8) = [(ISDataProvider *)v26 runAuthorizationDialog:v21 error:&v39];
          v27 = v39;
          v25 = v10;
          v10 = v27;
          goto LABEL_37;
        }
      }

      else if (v32)
      {
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __52__SUStorePageDataProvider_parseData_returningError___block_invoke;
        block[3] = &unk_1E81644A8;
        v37 = v15;
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

    if ([SUStructuredPage pageTypeForStorePageDictionary:v16]== 6)
    {
      [(ISDataProvider *)self setOutput:v16];
      v17 = self;
      v18 = 3;
    }

    else
    {
      if ([v7 caseInsensitiveCompare:@"application/json"])
      {
        v19 = objc_alloc_init(SUStructuredPage);
        if ([(SUStructuredPage *)v19 loadFromDictionary:v16])
        {
          [(SUStorePageDataProvider *)self _loadPersonalizedStoreOffersForPage:v19];
        }

        [(ISDataProvider *)self setOutput:v19];
        [(SUStorePageDataProvider *)self setOutputType:0];

        goto LABEL_26;
      }

      [(ISDataProvider *)self setOutput:v16];
      v17 = self;
      v18 = 4;
    }

    [(SUStorePageDataProvider *)v17 setOutputType:v18];
LABEL_26:
    [(ISDataProvider *)self migrateOutputFromSubProvider:v14];
    goto LABEL_27;
  }

  v9 = [objc_alloc(MEMORY[0x1E69DCAB8]) initWithData:v6];
  LOBYTE(v8) = v9 != 0;
  if (v9)
  {
    [(ISDataProvider *)self setOutput:v9];
    [(SUStorePageDataProvider *)self setOutputType:2];
  }

LABEL_7:
  v10 = 0;
  if (a4)
  {
LABEL_8:
    v11 = v10;
    *a4 = v10;
  }

LABEL_9:

  return v8;
}

- (BOOL)shouldProcessTouchIDDialogs
{
  v2 = [(ISDataProvider *)self biometricAuthenticationContext];
  v3 = v2 != 0;

  return v3;
}

- (void)_loadPersonalizedStoreOffersForPage:(id)a3
{
  v53 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(ISDataProvider *)self authenticatedAccountDSID];
  if (v5)
  {
    v6 = v5;
  }

  else
  {
    v7 = [(ISDataProvider *)self authenticationContext];
    v6 = [v7 requiredUniqueIdentifier];

    if (!v6)
    {
      v8 = [MEMORY[0x1E69D4890] defaultStore];
      v9 = [v8 activeAccount];
      v6 = [v9 uniqueIdentifier];

      if (!v6)
      {
        goto LABEL_32;
      }
    }
  }

  v42 = objc_alloc_init(MEMORY[0x1E69E47A8]);
  [v42 setAccountIdentifier:v6];
  v41 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v10 = [v4 itemList];
  v11 = [v10 copyItems];

  v12 = [v4 item];
  v37 = v12;
  v38 = v6;
  if (v12)
  {
    v13 = v12;
    if (!v11)
    {
      v11 = objc_alloc_init(MEMORY[0x1E695DF70]);
    }

    [v11 addObject:v13];
  }

  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  obj = v11;
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
        v19 = [v18 defaultStoreOffer];
        if (v19)
        {
          v20 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%lld", objc_msgSend(v18, "itemIdentifier")];
          v21 = [v18 itemTypeString];
          [v42 addItemIdentifier:v20 forItemType:v21];

          [v41 setObject:v18 forKey:v20];
        }
      }

      v15 = [obj countByEnumeratingWithState:&v47 objects:v52 count:16];
    }

    while (v15);
  }

  v22 = [objc_alloc(MEMORY[0x1E69E47A0]) initWithPersonalizeOffersRequest:v42];
  [v22 main];
  v23 = [v22 response];
  if (v23)
  {
    v35 = v22;
    v36 = v4;
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
          v29 = [v23 actionParametersForItemIdentifier:v28];
          if (v29)
          {
            v30 = [v24 objectForKey:v28];
            v31 = [v30 defaultStoreOffer];
            [v31 setBuyParameters:v29];
            v32 = [v30 itemTypeString];
            v33 = [v23 priceDisplayForItemType:v32];
            if (v33)
            {
              [v31 setPriceDisplay:v33];
            }

            v34 = [v23 actionDisplayNameForItemType:v32];
            [v31 setActionDisplayName:v34];
            [v31 setOneTapOffer:v34 == 0];
          }
        }

        v26 = [v24 countByEnumeratingWithState:&v43 objects:v51 count:16];
      }

      while (v26);
    }

    v22 = v35;
    v4 = v36;
  }

LABEL_32:
}

@end