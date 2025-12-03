@interface WBSTabDialogManager
- (WBSTabDialogManager)init;
- (id)_dialogBlockingSlot:(id)slot;
- (id)_dialogBlockingWebProcessID:(int)d;
- (id)_queueForTabID:(unint64_t)d createIfNeeded:(BOOL)needed;
- (id)_setForWebProcessID:(int)d createIfNeeded:(BOOL)needed;
- (id)description;
- (int64_t)_enqueueDialog:(id)dialog;
- (void)_cancelDialogsInQueue:(id)queue tabID:(unint64_t)d context:(id)context;
- (void)_dismissDialog:(id)dialog withResponse:(id)response;
- (void)cancelAllDialogsBlockingSlot:(id)slot;
- (void)cancelAllDialogsBlockingWebProcessID:(int)d;
- (void)cancelAllDialogsForTabID:(unint64_t)d context:(id)context;
- (void)cancelAllDialogsForTabID:(unint64_t)d reason:(id)reason;
- (void)cancelAllDialogsWithContext:(id)context;
- (void)dismissCurrentDialogForTabID:(unint64_t)d withResponse:(id)response;
- (void)enqueueOrPresentDialog:(id)dialog inSlot:(id)slot;
- (void)enqueueOrPresentDialogInSlot:(id)slot presentationBlock:(id)block dismissalBlock:(id)dismissalBlock blocksWebProcessUntilDismissed:(BOOL)dismissed;
- (void)presentNextDialogForSlot:(id)slot;
@end

@implementation WBSTabDialogManager

- (WBSTabDialogManager)init
{
  v9.receiver = self;
  v9.super_class = WBSTabDialogManager;
  v2 = [(WBSTabDialogManager *)&v9 init];
  if (v2)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    webProcessIDToDialogSetMapping = v2->_webProcessIDToDialogSetMapping;
    v2->_webProcessIDToDialogSetMapping = dictionary;

    dictionary2 = [MEMORY[0x1E695DF90] dictionary];
    tabIDToDialogQueueMapping = v2->_tabIDToDialogQueueMapping;
    v2->_tabIDToDialogQueueMapping = dictionary2;

    v2->_queueCapacity = 10;
    v7 = v2;
  }

  return v2;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_queueCapacity];
  v6 = [v3 stringWithFormat:@"<%@:%p queueCapacity = %@, webProcessIDToDialogSetMapping = %@, tabIDToQueueMapping = %@>", v4, self, v5, self->_webProcessIDToDialogSetMapping, self->_tabIDToDialogQueueMapping];;

  return v6;
}

- (void)enqueueOrPresentDialog:(id)dialog inSlot:(id)slot
{
  var1 = slot.var1;
  v5 = *&slot.var0;
  createInfo = [dialog createInfo];
  v8 = createInfo;
  if (v5 >= 1 && var1)
  {
    [createInfo setSlot:{v5, var1}];
    v9 = [(WBSTabDialogManager *)self _enqueueDialog:v8];
    if (v9 == 1)
    {
      [v8 presentIfNeeded];
      goto LABEL_9;
    }

    if (v9)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v10 = WBS_LOG_CHANNEL_PREFIXTabDialogs();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      [(WBSTabDialogManager *)v10 enqueueOrPresentDialog:v5 inSlot:var1];
    }
  }

  [v8 dismissWithResponse:0];
LABEL_9:
}

- (void)enqueueOrPresentDialogInSlot:(id)slot presentationBlock:(id)block dismissalBlock:(id)dismissalBlock blocksWebProcessUntilDismissed:(BOOL)dismissed
{
  dismissedCopy = dismissed;
  var1 = slot.var1;
  v8 = *&slot.var0;
  v10 = [WBSTabDialog tabDialogWithPresentationBlock:block dismissalBlock:dismissalBlock];
  [v10 setBlocksWebProcessUntilDismissed:dismissedCopy];
  [(WBSTabDialogManager *)self enqueueOrPresentDialog:v10 inSlot:v8, var1];
}

- (void)presentNextDialogForSlot:(id)slot
{
  var1 = slot.var1;
  [(WBSTabDialogManager *)self cancelAllDialogsBlockingSlot:*&slot.var0];
  v6 = [(WBSTabDialogManager *)self _queueForTabID:var1 createIfNeeded:0];
  firstObject = [v6 firstObject];
  [firstObject presentIfNeeded];
}

- (void)dismissCurrentDialogForTabID:(unint64_t)d withResponse:(id)response
{
  responseCopy = response;
  v6 = [(WBSTabDialogManager *)self _queueForTabID:d createIfNeeded:0];
  firstObject = [v6 firstObject];

  if ([firstObject isPresented])
  {
    [(WBSTabDialogManager *)self _dismissDialog:firstObject withResponse:responseCopy];
  }
}

- (void)cancelAllDialogsBlockingSlot:(id)slot
{
  v4 = [(WBSTabDialogManager *)self _dialogBlockingSlot:*&slot.var0, slot.var1];
  if (v4)
  {
    v5 = v4;
    [(WBSTabDialogManager *)self _dismissDialog:v4 withResponse:0];
    v4 = v5;
  }
}

- (void)cancelAllDialogsBlockingWebProcessID:(int)d
{
  v4 = [(WBSTabDialogManager *)self _dialogBlockingWebProcessID:*&d];
  if (v4)
  {
    v5 = v4;
    [(WBSTabDialogManager *)self _dismissDialog:v4 withResponse:0];
    v4 = v5;
  }
}

- (void)cancelAllDialogsForTabID:(unint64_t)d reason:(id)reason
{
  v6 = [WBSTabDialogCancellationContext cancellationContextWithReason:reason userInfo:0];
  [(WBSTabDialogManager *)self cancelAllDialogsForTabID:d context:v6];
}

- (void)cancelAllDialogsForTabID:(unint64_t)d context:(id)context
{
  contextCopy = context;
  v6 = [(WBSTabDialogManager *)self _queueForTabID:d createIfNeeded:0];
  if (v6)
  {
    [(WBSTabDialogManager *)self _cancelDialogsInQueue:v6 tabID:d context:contextCopy];
  }
}

- (void)_cancelDialogsInQueue:(id)queue tabID:(unint64_t)d context:(id)context
{
  v54 = *MEMORY[0x1E69E9840];
  queueCopy = queue;
  contextCopy = context;
  array = [MEMORY[0x1E695DF70] array];
  array2 = [MEMORY[0x1E695DF70] array];
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v12 = queueCopy;
  v13 = [v12 countByEnumeratingWithState:&v47 objects:v53 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v48;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v48 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v47 + 1) + 8 * i);
        if ([v17 isExemptFromCancellationInContext:contextCopy])
        {
          v18 = array;
        }

        else
        {
          v18 = array2;
        }

        [v18 addObject:v17];
      }

      v14 = [v12 countByEnumeratingWithState:&v47 objects:v53 count:16];
    }

    while (v14);
  }

  if ([array2 count])
  {
    if ([array count])
    {
      v19 = array;
    }

    else
    {
      v19 = 0;
    }

    tabIDToDialogQueueMapping = self->_tabIDToDialogQueueMapping;
    v21 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:d];
    [(NSMutableDictionary *)tabIDToDialogQueueMapping setObject:v19 forKeyedSubscript:v21];

    v22 = [array2 objectAtIndexedSubscript:0];
    slot = [v22 slot];

    v24 = [(WBSTabDialogManager *)self _setForWebProcessID:slot createIfNeeded:0];
    v25 = [v24 count];
    if (v25 == [array2 count])
    {
      goto LABEL_24;
    }

    selfCopy = self;
    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v26 = array2;
    v27 = [v26 countByEnumeratingWithState:&v43 objects:v52 count:16];
    if (v27)
    {
      v28 = v27;
      v29 = *v44;
      do
      {
        for (j = 0; j != v28; ++j)
        {
          if (*v44 != v29)
          {
            objc_enumerationMutation(v26);
          }

          [v24 removeObject:*(*(&v43 + 1) + 8 * j)];
        }

        v28 = [v26 countByEnumeratingWithState:&v43 objects:v52 count:16];
      }

      while (v28);
    }

    self = selfCopy;
    if (![v24 count])
    {
LABEL_24:
      webProcessIDToDialogSetMapping = self->_webProcessIDToDialogSetMapping;
      v32 = [MEMORY[0x1E696AD98] numberWithInt:slot];
      [(NSMutableDictionary *)webProcessIDToDialogSetMapping removeObjectForKey:v32];
    }

    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v33 = array2;
    v34 = [v33 countByEnumeratingWithState:&v39 objects:v51 count:16];
    if (v34)
    {
      v35 = v34;
      v36 = *v40;
      do
      {
        for (k = 0; k != v35; ++k)
        {
          if (*v40 != v36)
          {
            objc_enumerationMutation(v33);
          }

          [*(*(&v39 + 1) + 8 * k) dismissWithResponse:0];
        }

        v35 = [v33 countByEnumeratingWithState:&v39 objects:v51 count:16];
      }

      while (v35);
    }
  }
}

- (void)cancelAllDialogsWithContext:(id)context
{
  contextCopy = context;
  v5 = [(NSMutableDictionary *)self->_tabIDToDialogQueueMapping copy];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __51__WBSTabDialogManager_cancelAllDialogsWithContext___block_invoke;
  v7[3] = &unk_1E7FCADA8;
  v7[4] = self;
  v8 = contextCopy;
  v6 = contextCopy;
  [v5 enumerateKeysAndObjectsUsingBlock:v7];
}

void __51__WBSTabDialogManager_cancelAllDialogsWithContext___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  [v5 _cancelDialogsInQueue:v6 tabID:objc_msgSend(a2 context:{"unsignedLongValue"), *(a1 + 40)}];
}

- (id)_queueForTabID:(unint64_t)d createIfNeeded:(BOOL)needed
{
  neededCopy = needed;
  tabIDToDialogQueueMapping = self->_tabIDToDialogQueueMapping;
  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:?];
  array = [(NSMutableDictionary *)tabIDToDialogQueueMapping objectForKeyedSubscript:v8];

  if (array)
  {
    v10 = 1;
  }

  else
  {
    v10 = !neededCopy;
  }

  if (!v10)
  {
    array = [MEMORY[0x1E695DF70] array];
    v11 = self->_tabIDToDialogQueueMapping;
    v12 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:d];
    [(NSMutableDictionary *)v11 setObject:array forKeyedSubscript:v12];
  }

  return array;
}

- (id)_setForWebProcessID:(int)d createIfNeeded:(BOOL)needed
{
  neededCopy = needed;
  v5 = *&d;
  webProcessIDToDialogSetMapping = self->_webProcessIDToDialogSetMapping;
  v8 = [MEMORY[0x1E696AD98] numberWithInt:?];
  v9 = [(NSMutableDictionary *)webProcessIDToDialogSetMapping objectForKeyedSubscript:v8];

  if (v9)
  {
    v10 = 1;
  }

  else
  {
    v10 = !neededCopy;
  }

  if (!v10)
  {
    v9 = [MEMORY[0x1E695DFA8] set];
    v11 = self->_webProcessIDToDialogSetMapping;
    v12 = [MEMORY[0x1E696AD98] numberWithInt:v5];
    [(NSMutableDictionary *)v11 setObject:v9 forKeyedSubscript:v12];
  }

  return v9;
}

- (int64_t)_enqueueDialog:(id)dialog
{
  dialogCopy = dialog;
  slot = [dialogCopy slot];
  v7 = [(WBSTabDialogManager *)self _queueForTabID:v6 createIfNeeded:1];
  if ([v7 count] < self->_queueCapacity || objc_msgSend(dialogCopy, "isBlockingWebProcess"))
  {
    [v7 addObject:dialogCopy];
    v8 = [(WBSTabDialogManager *)self _setForWebProcessID:slot createIfNeeded:1];
    [v8 addObject:dialogCopy];
    if ([v7 count] == 1)
    {
      v9 = 1;
    }

    else
    {
      v9 = 2;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)_dismissDialog:(id)dialog withResponse:(id)response
{
  dialogCopy = dialog;
  responseCopy = response;
  slot = [dialogCopy slot];
  v9 = v8;
  v10 = [(WBSTabDialogManager *)self _setForWebProcessID:slot createIfNeeded:0];
  [v10 removeObject:dialogCopy];
  if (![v10 count])
  {
    webProcessIDToDialogSetMapping = self->_webProcessIDToDialogSetMapping;
    v12 = [MEMORY[0x1E696AD98] numberWithInt:slot];
    [(NSMutableDictionary *)webProcessIDToDialogSetMapping removeObjectForKey:v12];
  }

  v13 = [(WBSTabDialogManager *)self _queueForTabID:v9 createIfNeeded:0];
  [v13 removeObject:dialogCopy];
  if (![v13 count])
  {
    tabIDToDialogQueueMapping = self->_tabIDToDialogQueueMapping;
    v15 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:v9];
    [(NSMutableDictionary *)tabIDToDialogQueueMapping removeObjectForKey:v15];
  }

  [dialogCopy dismissWithResponse:responseCopy];
}

- (id)_dialogBlockingSlot:(id)slot
{
  var1 = slot.var1;
  v4 = [(WBSTabDialogManager *)self _dialogBlockingWebProcessID:*&slot.var0];
  [v4 slot];
  if (v5 == var1)
  {
    v6 = 0;
  }

  else
  {
    v6 = v4;
  }

  v7 = v6;

  return v6;
}

- (id)_dialogBlockingWebProcessID:(int)d
{
  v14 = *MEMORY[0x1E69E9840];
  [(WBSTabDialogManager *)self _setForWebProcessID:*&d createIfNeeded:0];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = v12 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = *v10;
    while (2)
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v9 + 1) + 8 * i);
        if ([v7 isBlockingWebProcess])
        {
          v4 = v7;
          goto LABEL_11;
        }
      }

      v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v4;
}

- (void)enqueueOrPresentDialog:(uint64_t)a3 inSlot:.cold.1(void *a1, uint64_t a2, uint64_t a3)
{
  v10 = *MEMORY[0x1E69E9840];
  v5 = MEMORY[0x1E696AEC0];
  v6 = a1;
  v7 = [v5 stringWithFormat:@"{pid:%d, tab:0x%lx}", a2, a3];
  *buf = 138543362;
  v9 = v7;
  _os_log_fault_impl(&dword_1BB6F3000, v6, OS_LOG_TYPE_FAULT, "Dialog enqueued in invalid slot: %{public}@", buf, 0xCu);
}

@end