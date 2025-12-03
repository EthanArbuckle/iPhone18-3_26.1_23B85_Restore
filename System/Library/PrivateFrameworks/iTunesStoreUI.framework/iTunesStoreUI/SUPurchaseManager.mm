@interface SUPurchaseManager
- (BOOL)_issuePurchaseRequestForPurchases:(id)purchases;
- (BOOL)_needsAuthenticationForPurchases:(id)purchases;
- (BOOL)addPurchaseBatch:(id)batch;
- (BOOL)itemIdentifierIsPurchased:(unint64_t)purchased;
- (BOOL)itemIdentifierIsPurchasing:(unint64_t)purchasing;
- (SUPurchaseManager)init;
- (id)_accountDSIDForPurchase:(id)purchase;
- (id)_downloadManagerForDownloadKind:(id)kind;
- (id)_newDictionaryForWebScriptValue:(id)value inContext:(OpaqueJSContext *)context;
- (id)_newExternalDownloadWithDictionary:(id)dictionary;
- (id)_newExternalDownloadWithDownloadDictionary:(id)dictionary;
- (id)_newExternalDownloadWithItemDictionary:(id)dictionary;
- (id)_newPurchaseBatchForPurchases:(id)purchases;
- (id)copyPurchaseForScriptObject:(id)object inContext:(OpaqueJSContext *)context;
- (id)newPurchaseBatchForItems:(id)items offers:(id)offers;
- (int64_t)numberOfPendingPurchases;
- (void)_dialogDidFinish:(id)finish;
- (void)_enqueueContinuations:(id)continuations;
- (void)_enqueueExternalDownload:(id)download;
- (void)_enqueuePurchases:(id)purchases;
- (void)_performNextAction;
- (void)_removePurchaseRequest:(id)request;
- (void)_schedulePurchaseCallback:(id)callback forPurchases:(id)purchases;
- (void)_showDialogsForErrors:(id)errors;
- (void)_startContinuations:(id)continuations;
- (void)_startPurchases:(id)purchases;
- (void)addExternalDownloads:(id)downloads withOptions:(id)options inContext:(OpaqueJSContext *)context;
- (void)addFuturePurchase:(id)purchase;
- (void)addPurchasedItemIdentifier:(unint64_t)identifier;
- (void)addPurchasedItemIdentifiers:(id)identifiers;
- (void)beginUpdates;
- (void)cancelFuturePurchase:(id)purchase;
- (void)continuation:(id)continuation failedWithError:(id)error;
- (void)continuationFinished:(id)finished;
- (void)dealloc;
- (void)endUpdates;
- (void)enqueueScriptPurchases:(id)purchases;
- (void)eventMonitor:(id)monitor receivedEventWithName:(id)name userInfo:(id)info;
- (void)purchaseRequest:(id)request purchaseDidFail:(id)fail withError:(id)error;
- (void)purchaseRequest:(id)request purchaseDidSucceed:(id)succeed;
- (void)purchaseRequest:(id)request purchaseDidSucceedWithResponse:(id)response;
- (void)purchaseScriptObject:(id)object withOptions:(id)options inContext:(OpaqueJSContext *)context;
- (void)removePurchasedItemIdentifier:(unint64_t)identifier;
- (void)request:(id)request didFailWithError:(id)error;
- (void)requestDidFinish:(id)finish;
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
  mEMORY[0x1E69D4938] = [MEMORY[0x1E69D4938] sharedConfig];
  shouldLog = [mEMORY[0x1E69D4938] shouldLog];
  if ([mEMORY[0x1E69D4938] shouldLogToDisk])
  {
    v5 = shouldLog | 2;
  }

  else
  {
    v5 = shouldLog;
  }

  if (!os_log_type_enabled([mEMORY[0x1E69D4938] OSLogObject], OS_LOG_TYPE_DEBUG))
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

- (void)addFuturePurchase:(id)purchase
{
  futurePurchases = self->_futurePurchases;
  if (!futurePurchases)
  {
    futurePurchases = objc_alloc_init(MEMORY[0x1E695DFA8]);
    self->_futurePurchases = futurePurchases;
  }

  [(NSMutableSet *)futurePurchases addObject:purchase];
  if ([purchase valueForDownloadProperty:*MEMORY[0x1E69D4BF0]])
  {
    v6 = SSGetUnsignedLongLongFromValue();

    [(SUPurchaseManager *)self addPurchasedItemIdentifier:v6];
  }
}

- (BOOL)addPurchaseBatch:(id)batch
{
  if ([objc_msgSend(batch "errors")])
  {
    -[SUPurchaseManager _showDialogsForErrors:](self, "_showDialogsForErrors:", [batch errors]);
  }

  v5 = [objc_msgSend(batch "continuations")];
  v6 = v5 != 0;
  if (v5)
  {
    -[SUPurchaseManager _enqueueContinuations:](self, "_enqueueContinuations:", [batch continuations]);
  }

  if ([objc_msgSend(batch "validPurchases")])
  {
    -[SUPurchaseManager _enqueuePurchases:](self, "_enqueuePurchases:", [batch validPurchases]);
    v6 = 1;
  }

  [(SUPurchaseManager *)self _performNextAction];
  return v6;
}

- (void)addPurchasedItemIdentifier:(unint64_t)identifier
{
  if (!self->_purchasedIdentifiers)
  {
    self->_purchasedIdentifiers = objc_alloc_init(MEMORY[0x1E695DFA8]);
  }

  v5 = [MEMORY[0x1E696AD98] numberWithItemIdentifier:identifier];
  if (([(NSMutableSet *)self->_purchasedIdentifiers containsObject:v5]& 1) == 0)
  {
    [(NSMutableSet *)self->_purchasedIdentifiers addObject:v5];
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];

    [defaultCenter postNotificationName:@"SUPurchasedItemIdentifiersChangedNotification" object:self];
  }
}

- (void)addPurchasedItemIdentifiers:(id)identifiers
{
  purchasedIdentifiers = self->_purchasedIdentifiers;
  if (!purchasedIdentifiers)
  {
    purchasedIdentifiers = objc_alloc_init(MEMORY[0x1E695DFA8]);
    self->_purchasedIdentifiers = purchasedIdentifiers;
  }

  v6 = [(NSMutableSet *)purchasedIdentifiers count];
  [(NSMutableSet *)self->_purchasedIdentifiers unionSet:identifiers];
  if ([(NSMutableSet *)self->_purchasedIdentifiers count]> v6)
  {
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];

    [defaultCenter postNotificationName:@"SUPurchasedItemIdentifiersChangedNotification" object:self];
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

- (void)cancelFuturePurchase:(id)purchase
{
  purchaseCopy = purchase;
  if ([purchase valueForDownloadProperty:*MEMORY[0x1E69D4BF0]])
  {
    [(SUPurchaseManager *)self removePurchasedItemIdentifier:SSGetUnsignedLongLongFromValue()];
  }

  [(SUPurchaseManager *)self _removePlaceholdersForPurchase:purchase];
  futurePurchases = self->_futurePurchases;

  [(NSMutableSet *)futurePurchases removeObject:purchase];
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

- (BOOL)itemIdentifierIsPurchased:(unint64_t)purchased
{
  v4 = [objc_alloc(MEMORY[0x1E696AD98]) initWithItemIdentifier:purchased];
  LOBYTE(self) = [(NSMutableSet *)self->_purchasedIdentifiers containsObject:v4];

  return self;
}

- (BOOL)itemIdentifierIsPurchasing:(unint64_t)purchasing
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

        purchases = [*(*(&v20 + 1) + 8 * i) purchases];
        v16 = 0u;
        v17 = 0u;
        v18 = 0u;
        v19 = 0u;
        v11 = [purchases countByEnumeratingWithState:&v16 objects:v24 count:16];
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
                objc_enumerationMutation(purchases);
              }

              [*(*(&v16 + 1) + 8 * j) valueForDownloadProperty:v8];
              if (SSGetUnsignedLongLongFromValue() == purchasing)
              {
                LOBYTE(v5) = 1;
                return v5;
              }
            }

            v12 = [purchases countByEnumeratingWithState:&v16 objects:v24 count:16];
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

- (id)newPurchaseBatchForItems:(id)items offers:(id)offers
{
  if ((objc_opt_respondsToSelector() & 1) == 0 || (v7 = [(SUPurchaseManagerDelegate *)self->_delegate purchaseManager:self purchaseBatchForItems:items]) == 0)
  {
    v7 = [[SUPurchaseBatch alloc] initWithItems:items offers:offers];
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

- (void)removePurchasedItemIdentifier:(unint64_t)identifier
{
  if (self->_purchasedIdentifiers)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithItemIdentifier:identifier];
    if ([(NSMutableSet *)self->_purchasedIdentifiers containsObject:v4])
    {
      [(NSMutableSet *)self->_purchasedIdentifiers removeObject:v4];
      defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];

      [defaultCenter postNotificationName:@"SUPurchasedItemIdentifiersChangedNotification" object:self];
    }
  }
}

- (void)eventMonitor:(id)monitor receivedEventWithName:(id)name userInfo:(id)info
{
  v64 = *MEMORY[0x1E69E9840];
  if (![name isEqualToString:*MEMORY[0x1E69D4C30]])
  {
    return;
  }

  mEMORY[0x1E69D4938] = [MEMORY[0x1E69D4938] sharedConfig];
  shouldLog = [mEMORY[0x1E69D4938] shouldLog];
  if ([mEMORY[0x1E69D4938] shouldLogToDisk])
  {
    v9 = shouldLog | 2;
  }

  else
  {
    v9 = shouldLog;
  }

  if (!os_log_type_enabled([mEMORY[0x1E69D4938] OSLogObject], OS_LOG_TYPE_DEFAULT))
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

  v13 = [info objectForKey:{@"response", v55}];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    mEMORY[0x1E69D4938]2 = [MEMORY[0x1E69D4938] sharedConfig];
    shouldLog2 = [mEMORY[0x1E69D4938]2 shouldLog];
    if ([mEMORY[0x1E69D4938]2 shouldLogToDisk])
    {
      v38 = shouldLog2 | 2;
    }

    else
    {
      v38 = shouldLog2;
    }

    if (!os_log_type_enabled([mEMORY[0x1E69D4938]2 OSLogObject], OS_LOG_TYPE_ERROR))
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
    mEMORY[0x1E69D4938]3 = [MEMORY[0x1E69D4938] sharedConfig];
    shouldLog3 = [mEMORY[0x1E69D4938]3 shouldLog];
    if ([mEMORY[0x1E69D4938]3 shouldLogToDisk])
    {
      v20 = shouldLog3 | 2;
    }

    else
    {
      v20 = shouldLog3;
    }

    if (!os_log_type_enabled([mEMORY[0x1E69D4938]3 OSLogObject], OS_LOG_TYPE_ERROR))
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
    mEMORY[0x1E69D4938]4 = [MEMORY[0x1E69D4938] sharedConfig];
    shouldLog4 = [mEMORY[0x1E69D4938]4 shouldLog];
    if ([mEMORY[0x1E69D4938]4 shouldLogToDisk])
    {
      v46 = shouldLog4 | 2;
    }

    else
    {
      v46 = shouldLog4;
    }

    oSLogObject = [mEMORY[0x1E69D4938]4 OSLogObject];
    if (isKindOfClass)
    {
      if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
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
      if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
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

  mEMORY[0x1E69D4938]5 = [MEMORY[0x1E69D4938] sharedConfig];
  shouldLog5 = [mEMORY[0x1E69D4938]5 shouldLog];
  if ([mEMORY[0x1E69D4938]5 shouldLogToDisk])
  {
    v27 = shouldLog5 | 2;
  }

  else
  {
    v27 = shouldLog5;
  }

  if (!os_log_type_enabled([mEMORY[0x1E69D4938]5 OSLogObject], OS_LOG_TYPE_DEFAULT))
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
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter postNotificationName:@"SUPurchaseFinishedNotification" object:{objc_msgSend(v17, "purchase")}];
    v54 = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{v17, @"SUPurchaseNotificationKeyPurchaseResponse", 0}];
    [defaultCenter postNotificationName:@"SUPurchaseRequestDidSucceedNotification" object:self userInfo:v54];

    return;
  }

  mEMORY[0x1E69D4938]6 = [MEMORY[0x1E69D4938] sharedConfig];
  shouldLog6 = [mEMORY[0x1E69D4938]6 shouldLog];
  if ([mEMORY[0x1E69D4938]6 shouldLogToDisk])
  {
    v34 = shouldLog6 | 2;
  }

  else
  {
    v34 = shouldLog6;
  }

  if (!os_log_type_enabled([mEMORY[0x1E69D4938]6 OSLogObject], OS_LOG_TYPE_ERROR))
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

- (void)_dialogDidFinish:(id)finish
{
  if (self->_showingErrorDialogs && ![+[SUDialogManager numberOfPendingDialogs:finish]])
  {
    self->_showingErrorDialogs = 0;

    [(SUPurchaseManager *)self _performNextAction];
  }
}

- (void)continuation:(id)continuation failedWithError:(id)error
{
  [(NSMutableSet *)self->_inflightContinuations removeObject:continuation, error];

  [(SUPurchaseManager *)self _performNextAction];
}

- (void)continuationFinished:(id)finished
{
  -[SUPurchaseManager _enqueuePurchases:](self, "_enqueuePurchases:", [MEMORY[0x1E695DEC8] arrayWithObjects:{objc_msgSend(finished, "purchase"), 0}]);
  [(NSMutableSet *)self->_inflightContinuations removeObject:finished];

  [(SUPurchaseManager *)self _performNextAction];
}

- (void)purchaseRequest:(id)request purchaseDidFail:(id)fail withError:(id)error
{
  v21 = *MEMORY[0x1E69E9840];
  mEMORY[0x1E69D4938] = [MEMORY[0x1E69D4938] sharedConfig];
  shouldLog = [mEMORY[0x1E69D4938] shouldLog];
  if ([mEMORY[0x1E69D4938] shouldLogToDisk])
  {
    v10 = shouldLog | 2;
  }

  else
  {
    v10 = shouldLog;
  }

  if (!os_log_type_enabled([mEMORY[0x1E69D4938] OSLogObject], OS_LOG_TYPE_ERROR))
  {
    v10 &= 2u;
  }

  if (v10)
  {
    v17 = 138412546;
    v18 = objc_opt_class();
    v19 = 2112;
    errorCopy = error;
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

  if ([fail valueForDownloadProperty:{*MEMORY[0x1E69D4BF0], v15}])
  {
    [(SUPurchaseManager *)self removePurchasedItemIdentifier:SSGetUnsignedLongLongFromValue()];
  }

  [(SUPurchaseManager *)self _removePlaceholdersForPurchase:fail];
  if ([error code] == 9990)
  {
    tidHeaders = [fail tidHeaders];
  }

  else
  {
    tidHeaders = 0;
  }

  [(SUPurchaseManager *)self setTidHeaders:tidHeaders];
  if (error)
  {
    error = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{error, @"SUPurchaseNotificationKeyError", 0}];
  }

  [objc_msgSend(MEMORY[0x1E696AD88] "defaultCenter")];
}

- (void)purchaseRequest:(id)request purchaseDidSucceed:(id)succeed
{
  v12 = *MEMORY[0x1E69E9840];
  mEMORY[0x1E69D4938] = [MEMORY[0x1E69D4938] sharedConfig];
  shouldLog = [mEMORY[0x1E69D4938] shouldLog];
  if ([mEMORY[0x1E69D4938] shouldLogToDisk])
  {
    v6 = shouldLog | 2;
  }

  else
  {
    v6 = shouldLog;
  }

  if (!os_log_type_enabled([mEMORY[0x1E69D4938] OSLogObject], OS_LOG_TYPE_DEBUG))
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

- (void)purchaseRequest:(id)request purchaseDidSucceedWithResponse:(id)response
{
  v12 = *MEMORY[0x1E69E9840];
  [(SUPurchaseManager *)self setTidHeaders:0, response];
  mEMORY[0x1E69D4938] = [MEMORY[0x1E69D4938] sharedConfig];
  shouldLog = [mEMORY[0x1E69D4938] shouldLog];
  if ([mEMORY[0x1E69D4938] shouldLogToDisk])
  {
    v6 = shouldLog | 2;
  }

  else
  {
    v6 = shouldLog;
  }

  if (!os_log_type_enabled([mEMORY[0x1E69D4938] OSLogObject], OS_LOG_TYPE_DEBUG))
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

- (void)request:(id)request didFailWithError:(id)error
{
  if (objc_opt_respondsToSelector())
  {
    selfCopy = self;
    [(SUPurchaseManagerDelegate *)self->_delegate purchaseManager:self didFinishPurchaseRequest:request withError:error];
  }

  [(SUPurchaseManager *)self _removePurchaseRequest:request];
}

- (void)requestDidFinish:(id)finish
{
  if (objc_opt_respondsToSelector())
  {
    selfCopy = self;
    [(SUPurchaseManagerDelegate *)self->_delegate purchaseManager:self didFinishPurchaseRequest:finish withError:0];
  }

  [(SUPurchaseManager *)self _removePurchaseRequest:finish];
}

- (id)_accountDSIDForPurchase:(id)purchase
{
  v5 = [purchase valueForDownloadProperty:*MEMORY[0x1E69D4BC8]];
  if (![v5 isEqualToString:*MEMORY[0x1E69D4AF8]] || (v6 = objc_msgSend(purchase, "valueForDownloadProperty:", *MEMORY[0x1E69D4BF0]), v7 = objc_msgSend(MEMORY[0x1E69635E0], "applicationProxyForItemID:", v6), !objc_msgSend(objc_msgSend(v7, "applicationDSID"), "integerValue")) || (result = objc_msgSend(MEMORY[0x1E696AD98], "numberWithInteger:", objc_msgSend(objc_msgSend(v7, "applicationDSID"), "integerValue"))) == 0)
  {

    return [(SUPurchaseManager *)self accountDSID];
  }

  return result;
}

- (id)_downloadManagerForDownloadKind:(id)kind
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
  v11 = [(SUQueueSessionManager *)self->_queueSessionManager beginDownloadManagerSessionForDownloadKind:kind];
  if (v11)
  {
    v10 = v11;
LABEL_16:
    [v10 addObserver:self];
    [(NSMutableArray *)self->_observedDownloadManagers addObject:v10];
    return v10;
  }

  v12 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:{kind, 0}];
  v10 = [(SUQueueSessionManager *)self->_queueSessionManager beginDownloadManagerSessionWithDownloadKinds:v12];

  if (v10)
  {
    goto LABEL_16;
  }

  return v10;
}

- (void)_enqueueContinuations:(id)continuations
{
  pendingContinuations = self->_pendingContinuations;
  if (!pendingContinuations)
  {
    pendingContinuations = objc_alloc_init(MEMORY[0x1E695DF70]);
    self->_pendingContinuations = pendingContinuations;
  }

  [(NSMutableArray *)pendingContinuations addObjectsFromArray:continuations];
}

- (void)_enqueueExternalDownload:(id)download
{
  [download valueForProperty:*MEMORY[0x1E69D4BF0]];
  v5 = SSGetUnsignedLongLongFromValue();
  [(SUPurchaseManager *)self addPurchasedItemIdentifier:v5];
  v6 = -[SUPurchaseManager _downloadManagerForDownloadKind:](self, "_downloadManagerForDownloadKind:", [download valueForProperty:*MEMORY[0x1E69D4BC8]]);
  v7 = [MEMORY[0x1E695DEC8] arrayWithObject:download];
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

- (void)_enqueuePurchases:(id)purchases
{
  v20 = *MEMORY[0x1E69E9840];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = [purchases countByEnumeratingWithState:&v15 objects:v19 count:16];
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
          objc_enumerationMutation(purchases);
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
      v13 = [purchases countByEnumeratingWithState:&v15 objects:v19 count:16];
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

  [(NSMutableArray *)pendingPurchases addObjectsFromArray:purchases];
}

- (BOOL)_issuePurchaseRequestForPurchases:(id)purchases
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = [objc_alloc(MEMORY[0x1E69D49A0]) initWithPurchases:purchases];
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
  v9 = [purchases countByEnumeratingWithState:&v17 objects:v21 count:16];
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
          objc_enumerationMutation(purchases);
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

      v10 = [purchases countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v10);
  }

  [(SUPurchaseManager *)self addPurchasedItemIdentifiers:v8];

  [v7 count];
  return [v5 start];
}

- (BOOL)_needsAuthenticationForPurchases:(id)purchases
{
  v19 = *MEMORY[0x1E69E9840];
  defaultStore = [MEMORY[0x1E69D4890] defaultStore];
  activeAccount = [defaultStore activeAccount];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = [purchases countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(purchases);
        }

        v10 = *(*(&v14 + 1) + 8 * v9);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          accountIdentifier = [v10 accountIdentifier];
          v12 = activeAccount;
          if (accountIdentifier)
          {
            v12 = [defaultStore accountWithUniqueIdentifier:?];
          }

          if (!v12 || ![v12 isAuthenticated])
          {
            return 1;
          }
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [purchases countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  return [defaultStore isExpired];
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

- (void)_removePurchaseRequest:(id)request
{
  [request setDelegate:0];
  [(NSMutableArray *)self->_purchaseRequests removeObject:request];
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];

  [defaultCenter postNotificationName:@"SSPurchaseRequestsChangedNotification" object:self];
}

- (void)_showDialogsForErrors:(id)errors
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = +[SUDialogManager sharedInstance];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = [errors countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(errors);
        }

        [(SUDialogManager *)v5 presentDialogForError:*(*(&v10 + 1) + 8 * v9++)];
      }

      while (v7 != v9);
      v7 = [errors countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }

  self->_showingErrorDialogs = [(SUDialogManager *)v5 numberOfPendingDialogs]> 0;
}

- (void)_startContinuations:(id)continuations
{
  inflightContinuations = self->_inflightContinuations;
  if (!inflightContinuations)
  {
    inflightContinuations = objc_alloc_init(MEMORY[0x1E695DFA8]);
    self->_inflightContinuations = inflightContinuations;
  }

  [(NSMutableSet *)inflightContinuations addObjectsFromArray:continuations];
  [continuations makeObjectsPerformSelector:sel_setDelegate_ withObject:self];

  [continuations makeObjectsPerformSelector:sel_start];
}

- (void)_startPurchases:(id)purchases
{
  v17 = *MEMORY[0x1E69E9840];
  if (objc_opt_respondsToSelector())
  {
    [(SUPurchaseManagerDelegate *)self->_delegate purchaseManager:self willAddPurchases:purchases];
  }

  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = [purchases countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(purchases);
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
      v7 = [purchases countByEnumeratingWithState:&v12 objects:v16 count:16];
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
        [(SUPurchaseManagerDelegate *)self->_delegate purchaseManager:self failedToAddPurchases:purchases];
      }

      goto LABEL_20;
    }
  }

  else
  {
  }

  if (objc_opt_respondsToSelector())
  {
    [(SUPurchaseManagerDelegate *)self->_delegate purchaseManager:self didAddPurchases:purchases];
  }

LABEL_20:
  [(SUPurchaseManager *)self _performNextAction];
}

- (void)addExternalDownloads:(id)downloads withOptions:(id)options inContext:(OpaqueJSContext *)context
{
  v9 = JSObjectCopyPropertyNames(context, [downloads JSObject]);
  if (v9)
  {
    v10 = v9;
    optionsCopy = options;
    v11 = objc_alloc_init(MEMORY[0x1E695DF70]);
    Count = JSPropertyNameArrayGetCount(v10);
    if (Count >= 1)
    {
      v13 = Count;
      for (i = 0; i != v13; ++i)
      {
        v15 = objc_alloc_init(MEMORY[0x1E696AAC8]);
        v16 = -[SUPurchaseManager _newDictionaryForWebScriptValue:inContext:](self, "_newDictionaryForWebScriptValue:inContext:", [downloads webScriptValueAtIndex:i], context);
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

- (id)copyPurchaseForScriptObject:(id)object inContext:(OpaqueJSContext *)context
{
  v7 = [object safeValueForKey:@"actionParams"];
  if (![v7 length])
  {
    return 0;
  }

  [object safeValueForKey:@"itemType"];
  v8 = SSDownloadKindForItemKind();
  v9 = 0x1E69D49E8;
  if (([v8 isEqualToString:*MEMORY[0x1E69D4AF0]] & 1) == 0 && !objc_msgSend(v8, "isEqualToString:", *MEMORY[0x1E69D4B08]))
  {
    v9 = 0x1E69D4998;
  }

  v10 = objc_alloc_init(*v9);
  [v10 setBuyParameters:v7];
  [v10 setValue:v8 forDownloadProperty:*MEMORY[0x1E69D4BC8]];
  tidHeaders = [(SUPurchaseManager *)self tidHeaders];
  if (tidHeaders)
  {
    [v10 setTidHeaders:tidHeaders];
  }

  v12 = [object safeValueForKey:@"artworkURL"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v10 setValue:v12 forDownloadProperty:*MEMORY[0x1E69D4C10]];
  }

  v13 = [object safeValueForKey:@"artistName"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v10 setValue:v13 forDownloadProperty:*MEMORY[0x1E69D4B58]];
  }

  v14 = [object safeValueForKey:@"bundleId"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v10 setValue:v14 forDownloadProperty:*MEMORY[0x1E69D4B68]];
  }

  v15 = [object safeValueForKey:@"collectionName"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v10 setValue:v15 forDownloadProperty:*MEMORY[0x1E69D4B78]];
  }

  if ([object safeValueForKey:@"itemId"])
  {
    [v10 setValue:objc_msgSend(MEMORY[0x1E696AD98] forDownloadProperty:{"numberWithItemIdentifier:", SSGetUnsignedLongLongFromValue()), *MEMORY[0x1E69D4BF0]}];
  }

  v16 = [object safeValueForKey:*MEMORY[0x1E69D4CC8]];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v10 setValue:v16 forDownloadProperty:*MEMORY[0x1E69D4C00]];
  }

  v17 = [object safeValueForKey:*MEMORY[0x1E69D4CD0]];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v10 setValue:v17 forDownloadProperty:*MEMORY[0x1E69D4C08]];
  }

  v18 = [object safeValueForKey:*MEMORY[0x1E69D4D10]];
  if ((objc_opt_respondsToSelector() & 1) != 0 && [v18 BOOLValue])
  {
    v19 = [v10 valueForDownloadProperty:*MEMORY[0x1E69D4BF0]];
    [v10 setValue:v19 forDownloadProperty:*MEMORY[0x1E69D4BF8]];
  }

  v20 = [object safeValueForKey:@"seasonNumber"];
  if (objc_opt_respondsToSelector())
  {
    v21 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v20, "integerValue")}];
    [v10 setValue:v21 forDownloadProperty:*MEMORY[0x1E69D4BD8]];
  }

  v22 = [object safeValueForKey:@"seriesName"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v10 setValue:v22 forDownloadProperty:*MEMORY[0x1E69D4BE0]];
  }

  v23 = [object safeValueForKey:@"software-type"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v10 setValue:v23 forDownloadProperty:*MEMORY[0x1E69D4BE8]];
  }

  v24 = [object safeValueForKey:@"title"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v10 setValue:v24 forDownloadProperty:*MEMORY[0x1E69D4C18]];
  }

  v25 = [object safeValueForKey:@"networkConstraints"];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (context && (isKindOfClass & 1) != 0)
  {
    v27 = [v25 copyArrayOrDictionaryWithContext:context];
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
    v29 = [object safeValueForKey:@"allowedToneStyles"];
    objc_opt_class();
    v30 = objc_opt_isKindOfClass();
    v31 = 0;
    if (context && (v30 & 1) != 0)
    {
      v31 = [v29 copyArrayOrDictionaryWithContext:context];
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

- (void)enqueueScriptPurchases:(id)purchases
{
  v4 = [(SUPurchaseManager *)self _newPurchaseBatchForPurchases:purchases];
  [(SUPurchaseManager *)self addPurchaseBatch:v4];
}

- (void)purchaseScriptObject:(id)object withOptions:(id)options inContext:(OpaqueJSContext *)context
{
  v23 = *MEMORY[0x1E69E9840];
  [object webScriptValueAtIndex:0];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:{object, 0}];
  }

  else
  {
    v9 = [object copyArrayValueWithValidator:SUISAValidator context:objc_opt_class()];
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

          v16 = [(SUPurchaseManager *)self copyPurchaseForScriptObject:*(*(&v18 + 1) + 8 * v15) inContext:context];
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
      [(SUPurchaseManager *)self _addBatchForPurchases:v11 options:options];
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

- (id)_newDictionaryForWebScriptValue:(id)value inContext:(OpaqueJSContext *)context
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {

    return [value copyArrayOrDictionaryWithContext:context];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = SUScriptPropertyListFromString(value);

      return v7;
    }

    else
    {
      return 0;
    }
  }
}

- (id)_newExternalDownloadWithDictionary:(id)dictionary
{
  if ([dictionary objectForKey:@"type"])
  {

    return [(SUPurchaseManager *)self _newExternalDownloadWithItemDictionary:dictionary];
  }

  else
  {

    return [(SUPurchaseManager *)self _newExternalDownloadWithDownloadDictionary:dictionary];
  }
}

- (id)_newExternalDownloadWithDownloadDictionary:(id)dictionary
{
  v3 = [objc_alloc(MEMORY[0x1E69D48E8]) initWithDictionary:dictionary];
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

- (id)_newExternalDownloadWithItemDictionary:(id)dictionary
{
  v4 = +[SUItemDataSource sharedDataSource];
  result = [v4 newItemWithItemDictionary:dictionary];
  if (result)
  {
    v6 = result;
    v7 = [v4 newExternalDownloadWithItem:result storeOffer:{objc_msgSend(result, "defaultStoreOffer")}];

    return v7;
  }

  return result;
}

- (id)_newPurchaseBatchForPurchases:(id)purchases
{
  delegate = [(SUPurchaseManager *)self delegate];
  if ((objc_opt_respondsToSelector() & 1) == 0 || (v6 = [(SUPurchaseManagerDelegate *)delegate purchaseManager:self purchaseBatchForPurchases:purchases]) == 0)
  {
    v6 = objc_alloc_init(SUPurchaseBatch);
    [(SUPurchaseBatch *)v6 setValidPurchases:purchases];
  }

  [(SUPurchaseBatch *)v6 setPurchaseManager:self];
  return v6;
}

- (void)_schedulePurchaseCallback:(id)callback forPurchases:(id)purchases
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  if ([purchases count] < 2)
  {
    firstObject = [purchases firstObject];
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
    mainQueue = [MEMORY[0x1E696ADC8] mainQueue];
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __79__SUPurchaseManager_SUScriptAdditions___schedulePurchaseCallback_forPurchases___block_invoke_2;
    v20[3] = &unk_1E8165FB0;
    v20[4] = firstObject;
    v20[5] = callback;
    v20[6] = defaultCenter;
    v20[7] = &v28;
    v20[8] = &v21;
    v14 = [defaultCenter addObserverForName:@"SUPurchaseFailedNotification" object:0 queue:mainQueue usingBlock:v20];
    v29[5] = v14;
    mainQueue2 = [MEMORY[0x1E696ADC8] mainQueue];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __79__SUPurchaseManager_SUScriptAdditions___schedulePurchaseCallback_forPurchases___block_invoke_3;
    v19[3] = &unk_1E8165FB0;
    v19[4] = firstObject;
    v19[5] = callback;
    v19[6] = defaultCenter;
    v19[7] = &v28;
    v19[8] = &v21;
    v16 = [defaultCenter addObserverForName:@"SUPurchaseFinishedNotification" object:0 queue:mainQueue2 usingBlock:v19];
    v22[5] = v16;
    v17 = v29[5];
    v18 = v22[5];
    _Block_object_dispose(&v21, 8);
  }

  else
  {
    numberOfPendingPurchases = [(SUPurchaseManager *)self numberOfPendingPurchases];
    v28 = 0;
    v29 = &v28;
    v30 = 0x3052000000;
    v31 = __Block_byref_object_copy__29;
    v32 = __Block_byref_object_dispose__29;
    v33 = 0;
    mainQueue3 = [MEMORY[0x1E696ADC8] mainQueue];
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __79__SUPurchaseManager_SUScriptAdditions___schedulePurchaseCallback_forPurchases___block_invoke;
    v27[3] = &unk_1E8165F88;
    v27[6] = &v28;
    v27[7] = numberOfPendingPurchases;
    v27[4] = callback;
    v27[5] = defaultCenter;
    v10 = [defaultCenter addObserverForName:@"SSPurchaseRequestsChangedNotification" object:self queue:mainQueue3 usingBlock:v27];
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