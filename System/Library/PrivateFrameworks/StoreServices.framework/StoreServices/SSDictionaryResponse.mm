@interface SSDictionaryResponse
- (BOOL)isSupportedProtocolVersion;
- (NSArray)actions;
- (NSArray)pingURLs;
- (NSURL)versionMismatchURL;
- (SSDictionaryResponse)initWithResponseDictionary:(id)a3;
- (id)_copyAccount;
- (id)_valueForProtocolKey:(id)a3;
- (id)actionsWithActionType:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation SSDictionaryResponse

- (SSDictionaryResponse)initWithResponseDictionary:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v9.receiver = self;
    v9.super_class = SSDictionaryResponse;
    v5 = [(SSDictionaryResponse *)&v9 init];
    if (v5)
    {
      v6 = [v4 copy];
      dictionary = v5->_dictionary;
      v5->_dictionary = v6;
    }
  }

  else
  {

    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"nil dictionary"];
    v5 = 0;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSDictionary *)self->_dictionary copyWithZone:a3];
  v7 = v5[1];
  v5[1] = v6;

  return v5;
}

- (NSArray)actions
{
  v53 = *MEMORY[0x1E69E9840];
  v47 = [MEMORY[0x1E695DF70] array];
  v3 = [(SSDictionaryResponse *)self _valueForProtocolKey:@"dialog"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [[SSDialog alloc] initWithDialogDictionary:v3];
    if (v4)
    {
      v5 = [SSResponseAction _dialogActionWithDialog:v4];
      [v47 addObject:v5];
    }
  }

  else
  {
    v4 = 0;
  }

  v6 = [(SSDictionaryResponse *)self _valueForProtocolKey:@"tid-dialog"];

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_8;
  }

  v7 = [[SSDialog alloc] initWithDialogDictionary:v6];

  if (v7)
  {
    v8 = [SSResponseAction _dialogActionWithTouchIDDialog:v7];
    [v47 addObject:v8];

    v4 = v7;
LABEL_8:
  }

  v9 = [(SSDictionaryResponse *)self _valueForProtocolKey:@"invalidate-url-bags"];

  if ((objc_opt_respondsToSelector() & 1) != 0 && [v9 BOOLValue])
  {
    v10 = +[SSResponseAction _invalidateURLBagsAction];
    [v47 addObject:v10];
  }

  v11 = [(SSDictionaryResponse *)self _copyAccount];
  if (v11)
  {
    v12 = [SSResponseAction _setActiveAccountActionWithAccount:v11];
    [v47 addObject:v12];
  }

  v13 = [(SSDictionaryResponse *)self _valueForProtocolKey:@"creditDisplay"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v14 = [(SSDictionaryResponse *)self _valueForProtocolKey:@"dsPersonId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v14, "integerValue")}];

      v14 = v15;
    }

    if (v14 || ([(SSDictionaryResponse *)self _valueForProtocolKey:@"dsid"], (v14 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v16 = +[SSAccountStore defaultStore];
      v17 = [v16 accountWithUniqueIdentifier:v14];

      if (!v17)
      {
        v17 = objc_alloc_init(SSAccount);
        [(SSAccount *)v17 setUniqueIdentifier:v14];
      }

      v18 = [SSResponseAction _setCreditsActionWithCredits:v13 account:v17];
      [v47 addObject:v18];
    }
  }

  v19 = [(SSDictionaryResponse *)self _valueForProtocolKey:@"action"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v20 = [v19 objectForKey:@"kind"];
    v21 = [v19 objectForKey:@"url"];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_33;
    }

    if ([v20 caseInsensitiveCompare:@"GoBack"])
    {
      if ([v20 caseInsensitiveCompare:@"RetryRestoreAll"])
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v22 = [objc_alloc(MEMORY[0x1E695DFF8]) initWithString:v21];
          if ([v20 isEqualToString:@"Goto"])
          {
            v23 = @"SSResponseActionTypeGotoURL";
LABEL_65:
            v43 = [SSResponseAction _urlActionWithType:v23 URL:v22];
            [v47 addObject:v43];

            goto LABEL_32;
          }

          if ([v20 isEqualToString:@"OpenURL"])
          {
            v23 = @"SSResponseActionTypeOpenURL";
            goto LABEL_65;
          }

LABEL_32:
        }

LABEL_33:

        goto LABEL_34;
      }

      v24 = @"SSResponseActionTypeRetryRestoreDownloads";
    }

    else
    {
      v24 = @"SSResponseActionTypeDismissCurrentPage";
    }

    v22 = [SSResponseAction _actionWithActionType:v24];
    [v47 addObject:v22];
    goto LABEL_32;
  }

LABEL_34:
  v25 = [(SSDictionaryResponse *)self _valueForProtocolKey:@"selected-footer-section"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v26 = [SSResponseAction _selectFooterActionWithSection:v25];
    [v47 addObject:v26];
  }

  v27 = [(SSDictionaryResponse *)self _valueForProtocolKey:@"trigger-in-app-purchase-queue"];

  objc_opt_class();
  v45 = v11;
  v46 = self;
  v44 = v27;
  if (objc_opt_isKindOfClass())
  {
    v28 = v27;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v28 = [MEMORY[0x1E695DEC8] arrayWithObject:v27];
    }

    else
    {
      v28 = 0;
    }
  }

  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v29 = v28;
  v30 = [v29 countByEnumeratingWithState:&v48 objects:v52 count:16];
  if (v30)
  {
    v31 = v30;
    v32 = *v49;
    do
    {
      for (i = 0; i != v31; ++i)
      {
        if (*v49 != v32)
        {
          objc_enumerationMutation(v29);
        }

        v34 = *(*(&v48 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v35 = [v34 objectForKey:@"client-id"];
          v36 = [v34 objectForKey:@"environment"];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            if (!v36 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
            {
              v37 = [SSResponseAction _checkInAppQueueActionWithClientID:v35 environment:v36];
              [v47 addObject:v37];
            }
          }
        }
      }

      v31 = [v29 countByEnumeratingWithState:&v48 objects:v52 count:16];
    }

    while (v31);
  }

  v38 = [(SSDictionaryResponse *)v46 _valueForProtocolKey:@"trigger-download"];

  if ((objc_opt_respondsToSelector() & 1) != 0 && [v38 BOOLValue])
  {
    v39 = [SSResponseAction _actionWithActionType:@"SSResponseActionTypeCheckDownloadQueues"];
    [v47 addObject:v39];
  }

  v40 = [(SSDictionaryResponse *)v46 _valueForProtocolKey:@"refresh-subscription-status"];

  if ((objc_opt_respondsToSelector() & 1) != 0 && [v40 BOOLValue])
  {
    v41 = [SSResponseAction _actionWithActionType:@"SSResponseActionTypeRefreshSubscriptionStatus"];
    [v47 addObject:v41];
  }

  return v47;
}

- (id)actionsWithActionType:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MEMORY[0x1E695DF70] array];
  v6 = [(SSDictionaryResponse *)self actions];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        v12 = [v11 actionType];
        v13 = [v12 isEqualToString:v4];

        if (v13)
        {
          [v5 addObject:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  return v5;
}

- (BOOL)isSupportedProtocolVersion
{
  v2 = [(SSDictionaryResponse *)self _valueForProtocolKey:@"store-version"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [v2 objectForKey:@"1.0"];
    if (v3 || ([v2 objectForKey:@"*"], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v4 = v3;
      v5 = [v3 objectForKey:@"redirect-url"];
      v6 = v5 == 0;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

- (NSArray)pingURLs
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = [(SSDictionaryResponse *)self _valueForProtocolKey:@"pings"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v4 = [(SSDictionaryResponse *)self _valueForProtocolKey:@"ping"];
    v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:{v4, 0}];

    v3 = v5;
  }

  v6 = [MEMORY[0x1E695DF70] array];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v7 = v3;
    v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v16;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v16 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = [objc_alloc(MEMORY[0x1E695DFF8]) initWithString:*(*(&v15 + 1) + 8 * i)];
          v13 = [v12 host];

          if (v13)
          {
            [v6 addObject:v12];
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v9);
    }
  }

  return v6;
}

- (NSURL)versionMismatchURL
{
  v2 = [(SSDictionaryResponse *)self _valueForProtocolKey:@"store-version"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [v2 objectForKey:@"1.0"];
    if (!v3)
    {
      v3 = [v2 objectForKey:@"*"];
    }

    v4 = [v3 objectForKey:@"redirect-url"];
    if (v4)
    {
      v5 = [MEMORY[0x1E695DFF8] URLWithString:v4];
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)_copyAccount
{
  v3 = [(SSDictionaryResponse *)self _valueForProtocolKey:@"accountInfo"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v4 = [(SSDictionaryResponse *)self _valueForProtocolKey:@"set-current-user"];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v3 = [v4 mutableCopy];
      v5 = [v3 objectForKey:@"accountInfo"];

      if (v5)
      {
        [v3 addEntriesFromDictionary:v5];
        [v3 removeObjectForKey:@"accountInfo"];
      }
    }

    else
    {
      v3 = v4;
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [[SSAuthenticationResponse alloc] initWithURLResponse:0 dictionary:v3];
    v7 = [(SSAuthenticationResponse *)v6 newAccount];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)_valueForProtocolKey:(id)a3
{
  v4 = a3;
  v5 = [(NSDictionary *)self->_dictionary objectForKey:@"protocol"];
  v6 = [v5 objectForKey:v4];

  if (!v6)
  {
    v6 = [(NSDictionary *)self->_dictionary objectForKey:v4];
  }

  return v6;
}

@end