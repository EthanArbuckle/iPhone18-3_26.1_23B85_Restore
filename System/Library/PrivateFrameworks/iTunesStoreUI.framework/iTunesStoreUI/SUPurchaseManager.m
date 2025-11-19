@interface SUPurchaseManager
- (BOOL)_issuePurchaseRequestForPurchases:(id)a3;
- (BOOL)_needsAuthenticationForPurchases:(id)a3;
- (BOOL)addPurchaseBatch:(id)a3;
- (BOOL)itemIdentifierIsPurchased:(unint64_t)a3;
- (BOOL)itemIdentifierIsPurchasing:(unint64_t)a3;
- (SUPurchaseManager)init;
- (id)_accountDSIDForPurchase:(id)a3;
- (id)_downloadManagerForDownloadKind:(id)a3;
- (id)_newDictionaryForWebScriptValue:(id)a3 inContext:(OpaqueJSContext *)a4;
- (id)_newExternalDownloadWithDictionary:(id)a3;
- (id)_newExternalDownloadWithDownloadDictionary:(id)a3;
- (id)_newExternalDownloadWithItemDictionary:(id)a3;
- (id)_newPurchaseBatchForPurchases:(id)a3;
- (id)copyPurchaseForScriptObject:(id)a3 inContext:(OpaqueJSContext *)a4;
- (id)newPurchaseBatchForItems:(id)a3 offers:(id)a4;
- (int64_t)numberOfPendingPurchases;
- (void)_dialogDidFinish:(id)a3;
- (void)_enqueueContinuations:(id)a3;
- (void)_enqueueExternalDownload:(id)a3;
- (void)_enqueuePurchases:(id)a3;
- (void)_performNextAction;
- (void)_removePurchaseRequest:(id)a3;
- (void)_schedulePurchaseCallback:(id)a3 forPurchases:(id)a4;
- (void)_showDialogsForErrors:(id)a3;
- (void)_startContinuations:(id)a3;
- (void)_startPurchases:(id)a3;
- (void)addExternalDownloads:(id)a3 withOptions:(id)a4 inContext:(OpaqueJSContext *)a5;
- (void)addFuturePurchase:(id)a3;
- (void)addPurchasedItemIdentifier:(unint64_t)a3;
- (void)addPurchasedItemIdentifiers:(id)a3;
- (void)beginUpdates;
- (void)cancelFuturePurchase:(id)a3;
- (void)continuation:(id)a3 failedWithError:(id)a4;
- (void)continuationFinished:(id)a3;
- (void)dealloc;
- (void)endUpdates;
- (void)enqueueScriptPurchases:(id)a3;
- (void)eventMonitor:(id)a3 receivedEventWithName:(id)a4 userInfo:(id)a5;
- (void)purchaseRequest:(id)a3 purchaseDidFail:(id)a4 withError:(id)a5;
- (void)purchaseRequest:(id)a3 purchaseDidSucceed:(id)a4;
- (void)purchaseRequest:(id)a3 purchaseDidSucceedWithResponse:(id)a4;
- (void)purchaseScriptObject:(id)a3 withOptions:(id)a4 inContext:(OpaqueJSContext *)a5;
- (void)removePurchasedItemIdentifier:(unint64_t)a3;
- (void)request:(id)a3 didFailWithError:(id)a4;
- (void)requestDidFinish:(id)a3;
@end

@implementation SUPurchaseManager

- (SUPurchaseManager)init
{
  v5.receiver = self;
  v5.super_class = SUPurchaseManager;
  v2 = [(SUPurchaseManager *)&v5 init];
  if (v2)
  {
    [objc_msgSend(MEMORY[0x1E696AD88] "defaultCenter")];
    v3 = objc_alloc_init(MEMORY[0x1E69D4900]);
    v2->_eventMonitor = v3;
    [(SSEventMonitor *)v3 setDelegate:v2];
  }

  return v2;
}

- (void)dealloc
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E69D4938] sharedConfig];
  v4 = [v3 shouldLog];
  if ([v3 shouldLogToDisk])
  {
    v5 = v4 | 2;
  }

  else
  {
    v5 = v4;
  }

  if (!os_log_type_enabled([v3 OSLogObject], OS_LOG_TYPE_DEBUG))
  {
    v5 &= 2u;
  }

  if (v5)
  {
    v23 = 138412290;
    v24 = objc_opt_class();
    LODWORD(v16) = 12;
    v15 = &v23;
    v6 = _os_log_send_and_compose_impl();
    if (v6)
    {
      v7 = v6;
      v8 = [MEMORY[0x1E696AEC0] stringWithCString:v6 encoding:{4, &v23, v16}];
      free(v7);
      v15 = v8;
      SSFileLog();
    }
  }

  [objc_msgSend(MEMORY[0x1E696AD88] defaultCenter];
  [(SSEventMonitor *)self->_eventMonitor setDelegate:0];

  observedDownloadManagers = self->_observedDownloadManagers;
  if (observedDownloadManagers)
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v10 = [(NSMutableArray *)observedDownloadManagers countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v19;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v19 != v12)
          {
            objc_enumerationMutation(observedDownloadManagers);
          }

          v14 = *(*(&v18 + 1) + 8 * i);
          [v14 removeObserver:self];
          [(SUQueueSessionManager *)self->_queueSessionManager endDownloadManagerSessionForManager:v14];
        }

        v11 = [(NSMutableArray *)observedDownloadManagers countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v11);
    }
  }

  [(NSMutableArray *)self->_purchaseRequests makeObjectsPerformSelector:sel_setDelegate_ withObject:0];
  v17.receiver = self;
  v17.super_class = SUPurchaseManager;
  [(SUPurchaseManager *)&v17 dealloc];
}

- (void)addFuturePurchase:(id)a3
{
  futurePurchases = self->_futurePurchases;
  if (!futurePurchases)
  {
    futurePurchases = objc_alloc_init(MEMORY[0x1E695DFA8]);
    self->_futurePurchases = futurePurchases;
  }

  [(NSMutableSet *)futurePurchases addObject:a3];
  if ([a3 valueForDownloadProperty:*MEMORY[0x1E69D4BF0]])
  {
    v6 = SSGetUnsignedLongLongFromValue();

    [(SUPurchaseManager *)self addPurchasedItemIdentifier:v6];
  }
}

- (BOOL)addPurchaseBatch:(id)a3
{
  if ([objc_msgSend(a3 "errors")])
  {
    -[SUPurchaseManager _showDialogsForErrors:](self, "_showDialogsForErrors:", [a3 errors]);
  }

  v5 = [objc_msgSend(a3 "continuations")];
  v6 = v5 != 0;
  if (v5)
  {
    -[SUPurchaseManager _enqueueContinuations:](self, "_enqueueContinuations:", [a3 continuations]);
  }

  if ([objc_msgSend(a3 "validPurchases")])
  {
    -[SUPurchaseManager _enqueuePurchases:](self, "_enqueuePurchases:", [a3 validPurchases]);
    v6 = 1;
  }

  [(SUPurchaseManager *)self _performNextAction];
  return v6;
}

- (void)addPurchasedItemIdentifier:(unint64_t)a3
{
  if (!self->_purchasedIdentifiers)
  {
    self->_purchasedIdentifiers = objc_alloc_init(MEMORY[0x1E695DFA8]);
  }

  v5 = [MEMORY[0x1E696AD98] numberWithItemIdentifier:a3];
  if (([(NSMutableSet *)self->_purchasedIdentifiers containsObject:v5]& 1) == 0)
  {
    [(NSMutableSet *)self->_purchasedIdentifiers addObject:v5];
    v6 = [MEMORY[0x1E696AD88] defaultCenter];

    [v6 postNotificationName:@"SUPurchasedItemIdentifiersChangedNotification" object:self];
  }
}

- (void)addPurchasedItemIdentifiers:(id)a3
{
  purchasedIdentifiers = self->_purchasedIdentifiers;
  if (!purchasedIdentifiers)
  {
    purchasedIdentifiers = objc_alloc_init(MEMORY[0x1E695DFA8]);
    self->_purchasedIdentifiers = purchasedIdentifiers;
  }

  v6 = [(NSMutableSet *)purchasedIdentifiers count];
  [(NSMutableSet *)self->_purchasedIdentifiers unionSet:a3];
  if ([(NSMutableSet *)self->_purchasedIdentifiers count]> v6)
  {
    v7 = [MEMORY[0x1E696AD88] defaultCenter];

    [v7 postNotificationName:@"SUPurchasedItemIdentifiersChangedNotification" object:self];
  }
}

- (void)beginUpdates
{
  updatesCount = self->_updatesCount;
  self->_updatesCount = updatesCount + 1;
  if (!updatesCount && (objc_opt_respondsToSelector() & 1) != 0)
  {
    delegate = self->_delegate;

    [(SUPurchaseManagerDelegate *)delegate purchaseManagerWillBeginUpdates:self];
  }
}

- (void)cancelFuturePurchase:(id)a3
{
  v5 = a3;
  if ([a3 valueForDownloadProperty:*MEMORY[0x1E69D4BF0]])
  {
    [(SUPurchaseManager *)self removePurchasedItemIdentifier:SSGetUnsignedLongLongFromValue()];
  }

  [(SUPurchaseManager *)self _removePlaceholdersForPurchase:a3];
  futurePurchases = self->_futurePurchases;

  [(NSMutableSet *)futurePurchases removeObject:a3];
}

- (void)endUpdates
{
  updatesCount = self->_updatesCount;
  v3 = updatesCount == 1;
  v4 = updatesCount < 1;
  v5 = updatesCount - 1;
  if (!v4)
  {
    self->_updatesCount = v5;
    if (v3 && (objc_opt_respondsToSelector() & 1) != 0)
    {
      delegate = self->_delegate;

      [(SUPurchaseManagerDelegate *)delegate purchaseManagerDidEndUpdates:self];
    }
  }
}

- (BOOL)itemIdentifierIsPurchased:(unint64_t)a3
{
  v4 = [objc_alloc(MEMORY[0x1E696AD98]) initWithItemIdentifier:a3];
  LOBYTE(self) = [(NSMutableSet *)self->_purchasedIdentifiers containsObject:v4];

  return self;
}

- (BOOL)itemIdentifierIsPurchasing:(unint64_t)a3
{
  v26 = *MEMORY[0x1E69E9840];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  purchaseRequests = self->_purchaseRequests;
  v5 = [(NSMutableArray *)purchaseRequests countByEnumeratingWithState:&v20 objects:v25 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v21;
    v8 = *MEMORY[0x1E69D4BF0];
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v21 != v7)
        {
          objc_enumerationMutation(purchaseRequests);
        }

        v10 = [*(*(&v20 + 1) + 8 * i) purchases];
        v16 = 0u;
        v17 = 0u;
        v18 = 0u;
        v19 = 0u;
        v11 = [v10 countByEnumeratingWithState:&v16 objects:v24 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v17;
          while (2)
          {
            for (j = 0; j != v12; ++j)
            {
              if (*v17 != v13)
              {
                objc_enumerationMutation(v10);
              }

              [*(*(&v16 + 1) + 8 * j) valueForDownloadProperty:v8];
              if (SSGetUnsignedLongLongFromValue() == a3)
              {
                LOBYTE(v5) = 1;
                return v5;
              }
            }

            v12 = [v10 countByEnumeratingWithState:&v16 objects:v24 count:16];
            if (v12)
            {
              continue;
            }

            break;
          }
        }
      }

      v6 = [(NSMutableArray *)purchaseRequests countByEnumeratingWithState:&v20 objects:v25 count:16];
      LOBYTE(v5) = 0;
    }

    while (v6);
  }

  return v5;
}

- (id)newPurchaseBatchForItems:(id)a3 offers:(id)a4
{
  if ((objc_opt_respondsToSelector() & 1) == 0 || (v7 = [(SUPurchaseManagerDelegate *)self->_delegate purchaseManager:self purchaseBatchForItems:a3]) == 0)
  {
    v7 = [[SUPurchaseBatch alloc] initWithItems:a3 offers:a4];
  }

  [(SUPurchaseBatch *)v7 setPurchaseManager:self];
  return v7;
}

- (int64_t)numberOfPendingPurchases
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  purchaseRequests = self->_purchaseRequests;
  v3 = [(NSMutableArray *)purchaseRequests countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v5 = 0;
  v6 = *v10;
  do
  {
    for (i = 0; i != v4; ++i)
    {
      if (*v10 != v6)
      {
        objc_enumerationMutation(purchaseRequests);
      }

      v5 += [objc_msgSend(*(*(&v9 + 1) + 8 * i) "purchases")];
    }

    v4 = [(NSMutableArray *)purchaseRequests countByEnumeratingWithState:&v9 objects:v13 count:16];
  }

  while (v4);
  return v5;
}

- (void)removePurchasedItemIdentifier:(unint64_t)a3
{
  if (self->_purchasedIdentifiers)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithItemIdentifier:a3];
    if ([(NSMutableSet *)self->_purchasedIdentifiers containsObject:v4])
    {
      [(NSMutableSet *)self->_purchasedIdentifiers removeObject:v4];
      v5 = [MEMORY[0x1E696AD88] defaultCenter];

      [v5 postNotificationName:@"SUPurchasedItemIdentifiersChangedNotification" object:self];
    }
  }
}

- (void)eventMonitor:(id)a3 receivedEventWithName:(id)a4 userInfo:(id)a5
{
  v64 = *MEMORY[0x1E69E9840];
  if (![a4 isEqualToString:*MEMORY[0x1E69D4C30]])
  {
    return;
  }

  v7 = [MEMORY[0x1E69D4938] sharedConfig];
  v8 = [v7 shouldLog];
  if ([v7 shouldLogToDisk])
  {
    v9 = v8 | 2;
  }

  else
  {
    v9 = v8;
  }

  if (!os_log_type_enabled([v7 OSLogObject], OS_LOG_TYPE_DEFAULT))
  {
    v9 &= 2u;
  }

  if (v9)
  {
    v60 = 138412290;
    v61 = objc_opt_class();
    LODWORD(v58) = 12;
    v55 = &v60;
    v10 = _os_log_send_and_compose_impl();
    if (v10)
    {
      v11 = v10;
      v12 = [MEMORY[0x1E696AEC0] stringWithCString:v10 encoding:{4, &v60, v58}];
      free(v11);
      v55 = v12;
      SSFileLog();
    }
  }

  v13 = [a5 objectForKey:{@"response", v55}];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v36 = [MEMORY[0x1E69D4938] sharedConfig];
    v37 = [v36 shouldLog];
    if ([v36 shouldLogToDisk])
    {
      v38 = v37 | 2;
    }

    else
    {
      v38 = v37;
    }

    if (!os_log_type_enabled([v36 OSLogObject], OS_LOG_TYPE_ERROR))
    {
      v38 &= 2u;
    }

    if (!v38)
    {
      return;
    }

    v39 = objc_opt_class();
    v40 = objc_opt_class();
    v60 = 138412546;
    v61 = v39;
    v62 = 2112;
    v63 = v40;
    LODWORD(v58) = 22;
LABEL_44:
    v41 = _os_log_send_and_compose_impl();
    if (v41)
    {
      v42 = v41;
      [MEMORY[0x1E696AEC0] stringWithCString:v41 encoding:{4, &v60, v58}];
      free(v42);
      SSFileLog();
    }

    return;
  }

  v59 = 0;
  v14 = MEMORY[0x1E696ACD0];
  v15 = MEMORY[0x1E695DFD8];
  v16 = objc_opt_class();
  v17 = [v14 unarchivedObjectOfClasses:objc_msgSend(v15 fromData:"setWithObjects:" error:{v16, objc_opt_class(), 0), v13, &v59}];
  if (v59)
  {
    v18 = [MEMORY[0x1E69D4938] sharedConfig];
    v19 = [v18 shouldLog];
    if ([v18 shouldLogToDisk])
    {
      v20 = v19 | 2;
    }

    else
    {
      v20 = v19;
    }

    if (!os_log_type_enabled([v18 OSLogObject], OS_LOG_TYPE_ERROR))
    {
      v20 &= 2u;
    }

    if (v20)
    {
      v21 = objc_opt_class();
      v60 = 138412546;
      v61 = v21;
      v62 = 2112;
      v63 = v59;
      LODWORD(v58) = 22;
      v56 = &v60;
      v22 = _os_log_send_and_compose_impl();
      if (v22)
      {
        v23 = v22;
        v24 = [MEMORY[0x1E696AEC0] stringWithCString:v22 encoding:{4, &v60, v58}];
        free(v23);
        v56 = v24;
        SSFileLog();
      }
    }
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v44 = [MEMORY[0x1E69D4938] sharedConfig];
    v45 = [v44 shouldLog];
    if ([v44 shouldLogToDisk])
    {
      v46 = v45 | 2;
    }

    else
    {
      v46 = v45;
    }

    v47 = [v44 OSLogObject];
    if (isKindOfClass)
    {
      if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
      {
        v48 = v46;
      }

      else
      {
        v48 = v46 & 2;
      }

      if (!v48)
      {
        return;
      }

      v49 = objc_opt_class();
      v60 = 138412546;
      v61 = v49;
      v62 = 2112;
      v63 = 0;
      LODWORD(v58) = 22;
    }

    else
    {
      if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
      {
        v50 = v46;
      }

      else
      {
        v50 = v46 & 2;
      }

      if (!v50)
      {
        return;
      }

      v51 = objc_opt_class();
      v52 = objc_opt_class();
      v60 = 138412546;
      v61 = v51;
      v62 = 2112;
      v63 = v52;
      LODWORD(v58) = 22;
    }

    goto LABEL_44;
  }

  v25 = [MEMORY[0x1E69D4938] sharedConfig];
  v26 = [v25 shouldLog];
  if ([v25 shouldLogToDisk])
  {
    v27 = v26 | 2;
  }

  else
  {
    v27 = v26;
  }

  if (!os_log_type_enabled([v25 OSLogObject], OS_LOG_TYPE_DEFAULT))
  {
    v27 &= 2u;
  }

  if (v27)
  {
    v28 = objc_opt_class();
    v60 = 138412546;
    v61 = v28;
    v62 = 2112;
    v63 = v17;
    LODWORD(v58) = 22;
    v57 = &v60;
    v29 = _os_log_send_and_compose_impl();
    if (v29)
    {
      v30 = v29;
      v31 = [MEMORY[0x1E696AEC0] stringWithCString:v29 encoding:{4, &v60, v58}];
      free(v30);
      v57 = v31;
      SSFileLog();
    }
  }

  if (![v17 error])
  {
    v53 = [MEMORY[0x1E696AD88] defaultCenter];
    [v53 postNotificationName:@"SUPurchaseFinishedNotification" object:{objc_msgSend(v17, "purchase")}];
    v54 = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{v17, @"SUPurchaseNotificationKeyPurchaseResponse", 0}];
    [v53 postNotificationName:@"SUPurchaseRequestDidSucceedNotification" object:self userInfo:v54];

    return;
  }

  v32 = [MEMORY[0x1E69D4938] sharedConfig];
  v33 = [v32 shouldLog];
  if ([v32 shouldLogToDisk])
  {
    v34 = v33 | 2;
  }

  else
  {
    v34 = v33;
  }

  if (!os_log_type_enabled([v32 OSLogObject], OS_LOG_TYPE_ERROR))
  {
    v34 &= 2u;
  }

  if (v34)
  {
    v35 = objc_opt_class();
    v60 = 138412290;
    v61 = v35;
    LODWORD(v58) = 12;
    goto LABEL_44;
  }
}

- (void)_dialogDidFinish:(id)a3
{
  if (self->_showingErrorDialogs && ![+[SUDialogManager numberOfPendingDialogs:a3]])
  {
    self->_showingErrorDialogs = 0;

    [(SUPurchaseManager *)self _performNextAction];
  }
}

- (void)continuation:(id)a3 failedWithError:(id)a4
{
  [(NSMutableSet *)self->_inflightContinuations removeObject:a3, a4];

  [(SUPurchaseManager *)self _performNextAction];
}

- (void)continuationFinished:(id)a3
{
  -[SUPurchaseManager _enqueuePurchases:](self, "_enqueuePurchases:", [MEMORY[0x1E695DEC8] arrayWithObjects:{objc_msgSend(a3, "purchase"), 0}]);
  [(NSMutableSet *)self->_inflightContinuations removeObject:a3];

  [(SUPurchaseManager *)self _performNextAction];
}

- (void)purchaseRequest:(id)a3 purchaseDidFail:(id)a4 withError:(id)a5
{
  v21 = *MEMORY[0x1E69E9840];
  v8 = [MEMORY[0x1E69D4938] sharedConfig];
  v9 = [v8 shouldLog];
  if ([v8 shouldLogToDisk])
  {
    v10 = v9 | 2;
  }

  else
  {
    v10 = v9;
  }

  if (!os_log_type_enabled([v8 OSLogObject], OS_LOG_TYPE_ERROR))
  {
    v10 &= 2u;
  }

  if (v10)
  {
    v17 = 138412546;
    v18 = objc_opt_class();
    v19 = 2112;
    v20 = a5;
    LODWORD(v16) = 22;
    v15 = &v17;
    v11 = _os_log_send_and_compose_impl();
    if (v11)
    {
      v12 = v11;
      v13 = [MEMORY[0x1E696AEC0] stringWithCString:v11 encoding:{4, &v17, v16}];
      free(v12);
      v15 = v13;
      SSFileLog();
    }
  }

  if ([a4 valueForDownloadProperty:{*MEMORY[0x1E69D4BF0], v15}])
  {
    [(SUPurchaseManager *)self removePurchasedItemIdentifier:SSGetUnsignedLongLongFromValue()];
  }

  [(SUPurchaseManager *)self _removePlaceholdersForPurchase:a4];
  if ([a5 code] == 9990)
  {
    v14 = [a4 tidHeaders];
  }

  else
  {
    v14 = 0;
  }

  [(SUPurchaseManager *)self setTidHeaders:v14];
  if (a5)
  {
    a5 = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{a5, @"SUPurchaseNotificationKeyError", 0}];
  }

  [objc_msgSend(MEMORY[0x1E696AD88] "defaultCenter")];
}

- (void)purchaseRequest:(id)a3 purchaseDidSucceed:(id)a4
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = [MEMORY[0x1E69D4938] sharedConfig];
  v5 = [v4 shouldLog];
  if ([v4 shouldLogToDisk])
  {
    v6 = v5 | 2;
  }

  else
  {
    v6 = v5;
  }

  if (!os_log_type_enabled([v4 OSLogObject], OS_LOG_TYPE_DEBUG))
  {
    v6 &= 2u;
  }

  if (v6)
  {
    v10 = 138412290;
    v11 = objc_opt_class();
    LODWORD(v9) = 12;
    v7 = _os_log_send_and_compose_impl();
    if (v7)
    {
      v8 = v7;
      [MEMORY[0x1E696AEC0] stringWithCString:v7 encoding:{4, &v10, v9}];
      free(v8);
      SSFileLog();
    }
  }
}

- (void)purchaseRequest:(id)a3 purchaseDidSucceedWithResponse:(id)a4
{
  v12 = *MEMORY[0x1E69E9840];
  [(SUPurchaseManager *)self setTidHeaders:0, a4];
  v4 = [MEMORY[0x1E69D4938] sharedConfig];
  v5 = [v4 shouldLog];
  if ([v4 shouldLogToDisk])
  {
    v6 = v5 | 2;
  }

  else
  {
    v6 = v5;
  }

  if (!os_log_type_enabled([v4 OSLogObject], OS_LOG_TYPE_DEBUG))
  {
    v6 &= 2u;
  }

  if (v6)
  {
    v10 = 138412290;
    v11 = objc_opt_class();
    LODWORD(v9) = 12;
    v7 = _os_log_send_and_compose_impl();
    if (v7)
    {
      v8 = v7;
      [MEMORY[0x1E696AEC0] stringWithCString:v7 encoding:{4, &v10, v9}];
      free(v8);
      SSFileLog();
    }
  }
}

- (void)request:(id)a3 didFailWithError:(id)a4
{
  if (objc_opt_respondsToSelector())
  {
    v7 = self;
    [(SUPurchaseManagerDelegate *)self->_delegate purchaseManager:self didFinishPurchaseRequest:a3 withError:a4];
  }

  [(SUPurchaseManager *)self _removePurchaseRequest:a3];
}

- (void)requestDidFinish:(id)a3
{
  if (objc_opt_respondsToSelector())
  {
    v5 = self;
    [(SUPurchaseManagerDelegate *)self->_delegate purchaseManager:self didFinishPurchaseRequest:a3 withError:0];
  }

  [(SUPurchaseManager *)self _removePurchaseRequest:a3];
}

- (id)_accountDSIDForPurchase:(id)a3
{
  v5 = [a3 valueForDownloadProperty:*MEMORY[0x1E69D4BC8]];
  if (![v5 isEqualToString:*MEMORY[0x1E69D4AF8]] || (v6 = objc_msgSend(a3, "valueForDownloadProperty:", *MEMORY[0x1E69D4BF0]), v7 = objc_msgSend(MEMORY[0x1E69635E0], "applicationProxyForItemID:", v6), !objc_msgSend(objc_msgSend(v7, "applicationDSID"), "integerValue")) || (result = objc_msgSend(MEMORY[0x1E696AD98], "numberWithInteger:", objc_msgSend(objc_msgSend(v7, "applicationDSID"), "integerValue"))) == 0)
  {

    return [(SUPurchaseManager *)self accountDSID];
  }

  return result;
}

- (id)_downloadManagerForDownloadKind:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  observedDownloadManagers = self->_observedDownloadManagers;
  if (!observedDownloadManagers)
  {
    observedDownloadManagers = objc_alloc_init(MEMORY[0x1E695DF70]);
    self->_observedDownloadManagers = observedDownloadManagers;
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = [(NSMutableArray *)observedDownloadManagers countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
LABEL_5:
    v9 = 0;
    while (1)
    {
      if (*v15 != v8)
      {
        objc_enumerationMutation(observedDownloadManagers);
      }

      v10 = *(*(&v14 + 1) + 8 * v9);
      if ([objc_msgSend(objc_msgSend(v10 "managerOptions")])
      {
        break;
      }

      if (v7 == ++v9)
      {
        v7 = [(NSMutableArray *)observedDownloadManagers countByEnumeratingWithState:&v14 objects:v18 count:16];
        if (v7)
        {
          goto LABEL_5;
        }

        goto LABEL_13;
      }
    }

    if (v10)
    {
      return v10;
    }
  }

LABEL_13:
  v11 = [(SUQueueSessionManager *)self->_queueSessionManager beginDownloadManagerSessionForDownloadKind:a3];
  if (v11)
  {
    v10 = v11;
LABEL_16:
    [v10 addObserver:self];
    [(NSMutableArray *)self->_observedDownloadManagers addObject:v10];
    return v10;
  }

  v12 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:{a3, 0}];
  v10 = [(SUQueueSessionManager *)self->_queueSessionManager beginDownloadManagerSessionWithDownloadKinds:v12];

  if (v10)
  {
    goto LABEL_16;
  }

  return v10;
}

- (void)_enqueueContinuations:(id)a3
{
  pendingContinuations = self->_pendingContinuations;
  if (!pendingContinuations)
  {
    pendingContinuations = objc_alloc_init(MEMORY[0x1E695DF70]);
    self->_pendingContinuations = pendingContinuations;
  }

  [(NSMutableArray *)pendingContinuations addObjectsFromArray:a3];
}

- (void)_enqueueExternalDownload:(id)a3
{
  [a3 valueForProperty:*MEMORY[0x1E69D4BF0]];
  v5 = SSGetUnsignedLongLongFromValue();
  [(SUPurchaseManager *)self addPurchasedItemIdentifier:v5];
  v6 = -[SUPurchaseManager _downloadManagerForDownloadKind:](self, "_downloadManagerForDownloadKind:", [a3 valueForProperty:*MEMORY[0x1E69D4BC8]]);
  v7 = [MEMORY[0x1E695DEC8] arrayWithObject:a3];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __46__SUPurchaseManager__enqueueExternalDownload___block_invoke;
  v8[3] = &unk_1E8164E30;
  v8[4] = self;
  v8[5] = v5;
  [v6 addDownloads:v7 completionBlock:v8];
}

void __46__SUPurchaseManager__enqueueExternalDownload___block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __46__SUPurchaseManager__enqueueExternalDownload___block_invoke_2;
    v3[3] = &unk_1E8164CB8;
    v2 = *(a1 + 40);
    v3[4] = *(a1 + 32);
    v3[5] = v2;
    dispatch_async(MEMORY[0x1E69E96A0], v3);
  }
}

- (void)_enqueuePurchases:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = [a3 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v16;
    v8 = *MEMORY[0x1E69D4C40];
    do
    {
      v9 = 0;
      do
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(a3);
        }

        v10 = *(*(&v15 + 1) + 8 * v9);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) != 0 && ![v10 accountIdentifier])
        {
          v11 = [(SUPurchaseManager *)self _accountDSIDForPurchase:v10];
          if (v11)
          {
            [v10 setAccountIdentifier:v11];
          }

          if (self->_userAgent && ![objc_msgSend(objc_msgSend(v10 "requestProperties")])
          {
            v12 = [objc_msgSend(v10 "requestProperties")];
            if (!v12)
            {
              v12 = objc_alloc_init(MEMORY[0x1E69D4970]);
            }

            [v12 setValue:self->_userAgent forHTTPHeaderField:v8];
            [v10 setRequestProperties:v12];
          }
        }

        ++v9;
      }

      while (v6 != v9);
      v13 = [a3 countByEnumeratingWithState:&v15 objects:v19 count:16];
      v6 = v13;
    }

    while (v13);
  }

  pendingPurchases = self->_pendingPurchases;
  if (!pendingPurchases)
  {
    pendingPurchases = objc_alloc_init(MEMORY[0x1E695DF70]);
    self->_pendingPurchases = pendingPurchases;
  }

  [(NSMutableArray *)pendingPurchases addObjectsFromArray:a3];
}

- (BOOL)_issuePurchaseRequestForPurchases:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = [objc_alloc(MEMORY[0x1E69D49A0]) initWithPurchases:a3];
  [v5 setDelegate:self];
  [v5 setShouldValidatePurchases:0];
  purchaseRequests = self->_purchaseRequests;
  if (!purchaseRequests)
  {
    purchaseRequests = objc_alloc_init(MEMORY[0x1E695DF70]);
    self->_purchaseRequests = purchaseRequests;
  }

  [(NSMutableArray *)purchaseRequests addObject:v5];
  [objc_msgSend(MEMORY[0x1E696AD88] "defaultCenter")];

  v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v8 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v9 = [a3 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v18;
    v12 = *MEMORY[0x1E69D4BF0];
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v18 != v11)
        {
          objc_enumerationMutation(a3);
        }

        v14 = *(*(&v17 + 1) + 8 * i);
        if ([(NSMutableSet *)self->_futurePurchases containsObject:v14])
        {
          [(NSMutableSet *)self->_futurePurchases removeObject:v14];
        }

        v15 = [v14 valueForDownloadProperty:v12];
        if (v15)
        {
          [v8 addObject:v15];
        }
      }

      v10 = [a3 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v10);
  }

  [(SUPurchaseManager *)self addPurchasedItemIdentifiers:v8];

  [v7 count];
  return [v5 start];
}

- (BOOL)_needsAuthenticationForPurchases:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = [MEMORY[0x1E69D4890] defaultStore];
  v5 = [v4 activeAccount];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = [a3 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    while (2)
    {
      v9 = 0;
      do
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(a3);
        }

        v10 = *(*(&v14 + 1) + 8 * v9);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v11 = [v10 accountIdentifier];
          v12 = v5;
          if (v11)
          {
            v12 = [v4 accountWithUniqueIdentifier:?];
          }

          if (!v12 || ![v12 isAuthenticated])
          {
            return 1;
          }
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [a3 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  return [v4 isExpired];
}

- (void)_performNextAction
{
  if (!self->_showingErrorDialogs && ![(NSMutableSet *)self->_inflightContinuations count])
  {
    if ([(NSMutableArray *)self->_pendingContinuations count])
    {
      v3 = self->_pendingContinuations;

      self->_pendingContinuations = 0;
      [(SUPurchaseManager *)self _startContinuations:v3];
    }

    else
    {
      if (![(NSMutableArray *)self->_pendingPurchases count])
      {
        return;
      }

      v3 = self->_pendingPurchases;

      self->_pendingPurchases = 0;
      [(SUPurchaseManager *)self _startPurchases:v3];
    }
  }
}

- (void)_removePurchaseRequest:(id)a3
{
  [a3 setDelegate:0];
  [(NSMutableArray *)self->_purchaseRequests removeObject:a3];
  v5 = [MEMORY[0x1E696AD88] defaultCenter];

  [v5 postNotificationName:@"SSPurchaseRequestsChangedNotification" object:self];
}

- (void)_showDialogsForErrors:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = +[SUDialogManager sharedInstance];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = [a3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(a3);
        }

        [(SUDialogManager *)v5 presentDialogForError:*(*(&v10 + 1) + 8 * v9++)];
      }

      while (v7 != v9);
      v7 = [a3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }

  self->_showingErrorDialogs = [(SUDialogManager *)v5 numberOfPendingDialogs]> 0;
}

- (void)_startContinuations:(id)a3
{
  inflightContinuations = self->_inflightContinuations;
  if (!inflightContinuations)
  {
    inflightContinuations = objc_alloc_init(MEMORY[0x1E695DFA8]);
    self->_inflightContinuations = inflightContinuations;
  }

  [(NSMutableSet *)inflightContinuations addObjectsFromArray:a3];
  [a3 makeObjectsPerformSelector:sel_setDelegate_ withObject:self];

  [a3 makeObjectsPerformSelector:sel_start];
}

- (void)_startPurchases:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  if (objc_opt_respondsToSelector())
  {
    [(SUPurchaseManagerDelegate *)self->_delegate purchaseManager:self willAddPurchases:a3];
  }

  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = [a3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      v9 = 0;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(a3);
        }

        v10 = *(*(&v12 + 1) + 8 * v9);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [(SUPurchaseManager *)self _enqueueExternalDownload:v10];
        }

        else
        {
          [v5 addObject:v10];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [a3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  if ([v5 count])
  {
    v11 = [(SUPurchaseManager *)self _issuePurchaseRequestForPurchases:v5];

    if (!v11)
    {
      if (objc_opt_respondsToSelector())
      {
        [(SUPurchaseManagerDelegate *)self->_delegate purchaseManager:self failedToAddPurchases:a3];
      }

      goto LABEL_20;
    }
  }

  else
  {
  }

  if (objc_opt_respondsToSelector())
  {
    [(SUPurchaseManagerDelegate *)self->_delegate purchaseManager:self didAddPurchases:a3];
  }

LABEL_20:
  [(SUPurchaseManager *)self _performNextAction];
}

- (void)addExternalDownloads:(id)a3 withOptions:(id)a4 inContext:(OpaqueJSContext *)a5
{
  v9 = JSObjectCopyPropertyNames(a5, [a3 JSObject]);
  if (v9)
  {
    v10 = v9;
    v20 = a4;
    v11 = objc_alloc_init(MEMORY[0x1E695DF70]);
    Count = JSPropertyNameArrayGetCount(v10);
    if (Count >= 1)
    {
      v13 = Count;
      for (i = 0; i != v13; ++i)
      {
        v15 = objc_alloc_init(MEMORY[0x1E696AAC8]);
        v16 = -[SUPurchaseManager _newDictionaryForWebScriptValue:inContext:](self, "_newDictionaryForWebScriptValue:inContext:", [a3 webScriptValueAtIndex:i], a5);
        if (v16)
        {
          v17 = v16;
          v18 = [(SUPurchaseManager *)self _newExternalDownloadWithDictionary:v16];
          if (v18)
          {
            v19 = v18;
            [v11 addObject:v18];
          }
        }

        [v15 drain];
      }
    }

    if ([v11 count])
    {
      [(SUPurchaseManager *)self _addBatchForPurchases:v11 options:v21];
    }

    JSPropertyNameArrayRelease(v10);
  }
}

- (id)copyPurchaseForScriptObject:(id)a3 inContext:(OpaqueJSContext *)a4
{
  v7 = [a3 safeValueForKey:@"actionParams"];
  if (![v7 length])
  {
    return 0;
  }

  [a3 safeValueForKey:@"itemType"];
  v8 = SSDownloadKindForItemKind();
  v9 = 0x1E69D49E8;
  if (([v8 isEqualToString:*MEMORY[0x1E69D4AF0]] & 1) == 0 && !objc_msgSend(v8, "isEqualToString:", *MEMORY[0x1E69D4B08]))
  {
    v9 = 0x1E69D4998;
  }

  v10 = objc_alloc_init(*v9);
  [v10 setBuyParameters:v7];
  [v10 setValue:v8 forDownloadProperty:*MEMORY[0x1E69D4BC8]];
  v11 = [(SUPurchaseManager *)self tidHeaders];
  if (v11)
  {
    [v10 setTidHeaders:v11];
  }

  v12 = [a3 safeValueForKey:@"artworkURL"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v10 setValue:v12 forDownloadProperty:*MEMORY[0x1E69D4C10]];
  }

  v13 = [a3 safeValueForKey:@"artistName"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v10 setValue:v13 forDownloadProperty:*MEMORY[0x1E69D4B58]];
  }

  v14 = [a3 safeValueForKey:@"bundleId"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v10 setValue:v14 forDownloadProperty:*MEMORY[0x1E69D4B68]];
  }

  v15 = [a3 safeValueForKey:@"collectionName"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v10 setValue:v15 forDownloadProperty:*MEMORY[0x1E69D4B78]];
  }

  if ([a3 safeValueForKey:@"itemId"])
  {
    [v10 setValue:objc_msgSend(MEMORY[0x1E696AD98] forDownloadProperty:{"numberWithItemIdentifier:", SSGetUnsignedLongLongFromValue()), *MEMORY[0x1E69D4BF0]}];
  }

  v16 = [a3 safeValueForKey:*MEMORY[0x1E69D4CC8]];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v10 setValue:v16 forDownloadProperty:*MEMORY[0x1E69D4C00]];
  }

  v17 = [a3 safeValueForKey:*MEMORY[0x1E69D4CD0]];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v10 setValue:v17 forDownloadProperty:*MEMORY[0x1E69D4C08]];
  }

  v18 = [a3 safeValueForKey:*MEMORY[0x1E69D4D10]];
  if ((objc_opt_respondsToSelector() & 1) != 0 && [v18 BOOLValue])
  {
    v19 = [v10 valueForDownloadProperty:*MEMORY[0x1E69D4BF0]];
    [v10 setValue:v19 forDownloadProperty:*MEMORY[0x1E69D4BF8]];
  }

  v20 = [a3 safeValueForKey:@"seasonNumber"];
  if (objc_opt_respondsToSelector())
  {
    v21 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v20, "integerValue")}];
    [v10 setValue:v21 forDownloadProperty:*MEMORY[0x1E69D4BD8]];
  }

  v22 = [a3 safeValueForKey:@"seriesName"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v10 setValue:v22 forDownloadProperty:*MEMORY[0x1E69D4BE0]];
  }

  v23 = [a3 safeValueForKey:@"software-type"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v10 setValue:v23 forDownloadProperty:*MEMORY[0x1E69D4BE8]];
  }

  v24 = [a3 safeValueForKey:@"title"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v10 setValue:v24 forDownloadProperty:*MEMORY[0x1E69D4C18]];
  }

  v25 = [a3 safeValueForKey:@"networkConstraints"];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (a4 && (isKindOfClass & 1) != 0)
  {
    v27 = [v25 copyArrayOrDictionaryWithContext:a4];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v28 = objc_alloc_init(MEMORY[0x1E69D4978]);
      [v28 setSizeLimitsWithStoreConstraintDictionary:v27];
      [v10 setNetworkConstraints:v28];
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v29 = [a3 safeValueForKey:@"allowedToneStyles"];
    objc_opt_class();
    v30 = objc_opt_isKindOfClass();
    v31 = 0;
    if (a4 && (v30 & 1) != 0)
    {
      v31 = [v29 copyArrayOrDictionaryWithContext:a4];
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {

      v32 = [v8 isEqualToString:*MEMORY[0x1E69D4B08]];
      v33 = objc_alloc(MEMORY[0x1E695DEC8]);
      v34 = *MEMORY[0x1E69D4D20];
      if (v32)
      {
        v35 = [v33 initWithObjects:{v34, *MEMORY[0x1E69D4D28], 0}];
      }

      else
      {
        v35 = [v33 initWithObjects:{v34, 0, v37}];
      }

      v31 = v35;
    }

    [v10 setAllowedToneStyles:v31];
  }

  SSVPurchaseAddDownloadPropertiesForBuyParameters();
  return v10;
}

- (void)enqueueScriptPurchases:(id)a3
{
  v4 = [(SUPurchaseManager *)self _newPurchaseBatchForPurchases:a3];
  [(SUPurchaseManager *)self addPurchaseBatch:v4];
}

- (void)purchaseScriptObject:(id)a3 withOptions:(id)a4 inContext:(OpaqueJSContext *)a5
{
  v23 = *MEMORY[0x1E69E9840];
  [a3 webScriptValueAtIndex:0];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:{a3, 0}];
  }

  else
  {
    v9 = [a3 copyArrayValueWithValidator:SUISAValidator context:objc_opt_class()];
  }

  v10 = v9;
  if ([v9 count])
  {
    v11 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v12 = [v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v19;
      do
      {
        v15 = 0;
        do
        {
          if (*v19 != v14)
          {
            objc_enumerationMutation(v10);
          }

          v16 = [(SUPurchaseManager *)self copyPurchaseForScriptObject:*(*(&v18 + 1) + 8 * v15) inContext:a5];
          if (v16)
          {
            v17 = v16;
            [v11 addObject:v16];
          }

          ++v15;
        }

        while (v13 != v15);
        v13 = [v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v13);
    }

    if ([v11 count])
    {
      [(SUPurchaseManager *)self _addBatchForPurchases:v11 options:a4];
    }
  }

  else
  {
    [MEMORY[0x1E69E2F88] throwException:@"Invalid argument"];
  }
}

void __70__SUPurchaseManager_SUScriptAdditions___addBatchForPurchases_options___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) _newPurchaseBatchForPurchases:*(a1 + 40)];
  v2 = [v3 validPurchases];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v2 count])
  {
    [*(a1 + 32) _schedulePurchaseCallback:*(a1 + 48) forPurchases:v2];
  }

  [*(a1 + 32) addPurchaseBatch:v3];
}

- (id)_newDictionaryForWebScriptValue:(id)a3 inContext:(OpaqueJSContext *)a4
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {

    return [a3 copyArrayOrDictionaryWithContext:a4];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = SUScriptPropertyListFromString(a3);

      return v7;
    }

    else
    {
      return 0;
    }
  }
}

- (id)_newExternalDownloadWithDictionary:(id)a3
{
  if ([a3 objectForKey:@"type"])
  {

    return [(SUPurchaseManager *)self _newExternalDownloadWithItemDictionary:a3];
  }

  else
  {

    return [(SUPurchaseManager *)self _newExternalDownloadWithDownloadDictionary:a3];
  }
}

- (id)_newExternalDownloadWithDownloadDictionary:(id)a3
{
  v3 = [objc_alloc(MEMORY[0x1E69D48E8]) initWithDictionary:a3];
  if ([v3 kind])
  {
    v4 = [objc_alloc(MEMORY[0x1E69D48C0]) initWithDownloadMetadata:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)_newExternalDownloadWithItemDictionary:(id)a3
{
  v4 = +[SUItemDataSource sharedDataSource];
  result = [v4 newItemWithItemDictionary:a3];
  if (result)
  {
    v6 = result;
    v7 = [v4 newExternalDownloadWithItem:result storeOffer:{objc_msgSend(result, "defaultStoreOffer")}];

    return v7;
  }

  return result;
}

- (id)_newPurchaseBatchForPurchases:(id)a3
{
  v5 = [(SUPurchaseManager *)self delegate];
  if ((objc_opt_respondsToSelector() & 1) == 0 || (v6 = [(SUPurchaseManagerDelegate *)v5 purchaseManager:self purchaseBatchForPurchases:a3]) == 0)
  {
    v6 = objc_alloc_init(SUPurchaseBatch);
    [(SUPurchaseBatch *)v6 setValidPurchases:a3];
  }

  [(SUPurchaseBatch *)v6 setPurchaseManager:self];
  return v6;
}

- (void)_schedulePurchaseCallback:(id)a3 forPurchases:(id)a4
{
  v7 = [MEMORY[0x1E696AD88] defaultCenter];
  if ([a4 count] < 2)
  {
    v12 = [a4 firstObject];
    v28 = 0;
    v29 = &v28;
    v30 = 0x3052000000;
    v31 = __Block_byref_object_copy__29;
    v32 = __Block_byref_object_dispose__29;
    v33 = 0;
    v21 = 0;
    v22 = &v21;
    v23 = 0x3052000000;
    v24 = __Block_byref_object_copy__29;
    v25 = __Block_byref_object_dispose__29;
    v26 = 0;
    v13 = [MEMORY[0x1E696ADC8] mainQueue];
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __79__SUPurchaseManager_SUScriptAdditions___schedulePurchaseCallback_forPurchases___block_invoke_2;
    v20[3] = &unk_1E8165FB0;
    v20[4] = v12;
    v20[5] = a3;
    v20[6] = v7;
    v20[7] = &v28;
    v20[8] = &v21;
    v14 = [v7 addObserverForName:@"SUPurchaseFailedNotification" object:0 queue:v13 usingBlock:v20];
    v29[5] = v14;
    v15 = [MEMORY[0x1E696ADC8] mainQueue];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __79__SUPurchaseManager_SUScriptAdditions___schedulePurchaseCallback_forPurchases___block_invoke_3;
    v19[3] = &unk_1E8165FB0;
    v19[4] = v12;
    v19[5] = a3;
    v19[6] = v7;
    v19[7] = &v28;
    v19[8] = &v21;
    v16 = [v7 addObserverForName:@"SUPurchaseFinishedNotification" object:0 queue:v15 usingBlock:v19];
    v22[5] = v16;
    v17 = v29[5];
    v18 = v22[5];
    _Block_object_dispose(&v21, 8);
  }

  else
  {
    v8 = [(SUPurchaseManager *)self numberOfPendingPurchases];
    v28 = 0;
    v29 = &v28;
    v30 = 0x3052000000;
    v31 = __Block_byref_object_copy__29;
    v32 = __Block_byref_object_dispose__29;
    v33 = 0;
    v9 = [MEMORY[0x1E696ADC8] mainQueue];
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __79__SUPurchaseManager_SUScriptAdditions___schedulePurchaseCallback_forPurchases___block_invoke;
    v27[3] = &unk_1E8165F88;
    v27[6] = &v28;
    v27[7] = v8;
    v27[4] = a3;
    v27[5] = v7;
    v10 = [v7 addObserverForName:@"SSPurchaseRequestsChangedNotification" object:self queue:v9 usingBlock:v27];
    v29[5] = v10;
    v11 = v10;
  }

  _Block_object_dispose(&v28, 8);
}

void __79__SUPurchaseManager_SUScriptAdditions___schedulePurchaseCallback_forPurchases___block_invoke(uint64_t a1, void *a2)
{
  if ([objc_msgSend(a2 "object")] <= *(a1 + 56))
  {
    __CallPurchaseCallback(*(a1 + 32), 1, 0);
    if (*(*(*(a1 + 48) + 8) + 40))
    {
      [*(a1 + 40) removeObserver:?];

      *(*(*(a1 + 48) + 8) + 40) = 0;
    }
  }
}

void __79__SUPurchaseManager_SUScriptAdditions___schedulePurchaseCallback_forPurchases___block_invoke_2(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v5 = [a2 object];
  if (v4 == v5 || [objc_msgSend(v4 valueForDownloadProperty:{*MEMORY[0x1E69D4BF0]), "isEqual:", objc_msgSend(v5, "valueForDownloadProperty:", *MEMORY[0x1E69D4BF0])}])
  {
    __CallPurchaseCallback(*(a1 + 40), 0, [objc_msgSend(a2 "userInfo")]);
    if (*(*(*(a1 + 56) + 8) + 40))
    {
      [*(a1 + 48) removeObserver:?];

      *(*(*(a1 + 56) + 8) + 40) = 0;
    }

    if (*(*(*(a1 + 64) + 8) + 40))
    {
      [*(a1 + 48) removeObserver:?];

      *(*(*(a1 + 64) + 8) + 40) = 0;
    }
  }
}

void __79__SUPurchaseManager_SUScriptAdditions___schedulePurchaseCallback_forPurchases___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = [a2 object];
  if (v3 == v4 || [objc_msgSend(v3 valueForDownloadProperty:{*MEMORY[0x1E69D4BF0]), "isEqual:", objc_msgSend(v4, "valueForDownloadProperty:", *MEMORY[0x1E69D4BF0])}])
  {
    __CallPurchaseCallback(*(a1 + 40), 1, 0);
    if (*(*(*(a1 + 56) + 8) + 40))
    {
      [*(a1 + 48) removeObserver:?];

      *(*(*(a1 + 56) + 8) + 40) = 0;
    }

    if (*(*(*(a1 + 64) + 8) + 40))
    {
      [*(a1 + 48) removeObserver:?];

      *(*(*(a1 + 64) + 8) + 40) = 0;
    }
  }
}

@end