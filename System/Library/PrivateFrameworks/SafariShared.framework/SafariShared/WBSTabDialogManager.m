@interface WBSTabDialogManager
- (WBSTabDialogManager)init;
- (id)_dialogBlockingSlot:(id)a3;
- (id)_dialogBlockingWebProcessID:(int)a3;
- (id)_queueForTabID:(unint64_t)a3 createIfNeeded:(BOOL)a4;
- (id)_setForWebProcessID:(int)a3 createIfNeeded:(BOOL)a4;
- (id)description;
- (int64_t)_enqueueDialog:(id)a3;
- (void)_cancelDialogsInQueue:(id)a3 tabID:(unint64_t)a4 context:(id)a5;
- (void)_dismissDialog:(id)a3 withResponse:(id)a4;
- (void)cancelAllDialogsBlockingSlot:(id)a3;
- (void)cancelAllDialogsBlockingWebProcessID:(int)a3;
- (void)cancelAllDialogsForTabID:(unint64_t)a3 context:(id)a4;
- (void)cancelAllDialogsForTabID:(unint64_t)a3 reason:(id)a4;
- (void)cancelAllDialogsWithContext:(id)a3;
- (void)dismissCurrentDialogForTabID:(unint64_t)a3 withResponse:(id)a4;
- (void)enqueueOrPresentDialog:(id)a3 inSlot:(id)a4;
- (void)enqueueOrPresentDialogInSlot:(id)a3 presentationBlock:(id)a4 dismissalBlock:(id)a5 blocksWebProcessUntilDismissed:(BOOL)a6;
- (void)presentNextDialogForSlot:(id)a3;
@end

@implementation WBSTabDialogManager

- (WBSTabDialogManager)init
{
  v9.receiver = self;
  v9.super_class = WBSTabDialogManager;
  v2 = [(WBSTabDialogManager *)&v9 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E695DF90] dictionary];
    webProcessIDToDialogSetMapping = v2->_webProcessIDToDialogSetMapping;
    v2->_webProcessIDToDialogSetMapping = v3;

    v5 = [MEMORY[0x1E695DF90] dictionary];
    tabIDToDialogQueueMapping = v2->_tabIDToDialogQueueMapping;
    v2->_tabIDToDialogQueueMapping = v5;

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

- (void)enqueueOrPresentDialog:(id)a3 inSlot:(id)a4
{
  var1 = a4.var1;
  v5 = *&a4.var0;
  v7 = [a3 createInfo];
  v8 = v7;
  if (v5 >= 1 && var1)
  {
    [v7 setSlot:{v5, var1}];
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

- (void)enqueueOrPresentDialogInSlot:(id)a3 presentationBlock:(id)a4 dismissalBlock:(id)a5 blocksWebProcessUntilDismissed:(BOOL)a6
{
  v6 = a6;
  var1 = a3.var1;
  v8 = *&a3.var0;
  v10 = [WBSTabDialog tabDialogWithPresentationBlock:a4 dismissalBlock:a5];
  [v10 setBlocksWebProcessUntilDismissed:v6];
  [(WBSTabDialogManager *)self enqueueOrPresentDialog:v10 inSlot:v8, var1];
}

- (void)presentNextDialogForSlot:(id)a3
{
  var1 = a3.var1;
  [(WBSTabDialogManager *)self cancelAllDialogsBlockingSlot:*&a3.var0];
  v6 = [(WBSTabDialogManager *)self _queueForTabID:var1 createIfNeeded:0];
  v5 = [v6 firstObject];
  [v5 presentIfNeeded];
}

- (void)dismissCurrentDialogForTabID:(unint64_t)a3 withResponse:(id)a4
{
  v8 = a4;
  v6 = [(WBSTabDialogManager *)self _queueForTabID:a3 createIfNeeded:0];
  v7 = [v6 firstObject];

  if ([v7 isPresented])
  {
    [(WBSTabDialogManager *)self _dismissDialog:v7 withResponse:v8];
  }
}

- (void)cancelAllDialogsBlockingSlot:(id)a3
{
  v4 = [(WBSTabDialogManager *)self _dialogBlockingSlot:*&a3.var0, a3.var1];
  if (v4)
  {
    v5 = v4;
    [(WBSTabDialogManager *)self _dismissDialog:v4 withResponse:0];
    v4 = v5;
  }
}

- (void)cancelAllDialogsBlockingWebProcessID:(int)a3
{
  v4 = [(WBSTabDialogManager *)self _dialogBlockingWebProcessID:*&a3];
  if (v4)
  {
    v5 = v4;
    [(WBSTabDialogManager *)self _dismissDialog:v4 withResponse:0];
    v4 = v5;
  }
}

- (void)cancelAllDialogsForTabID:(unint64_t)a3 reason:(id)a4
{
  v6 = [WBSTabDialogCancellationContext cancellationContextWithReason:a4 userInfo:0];
  [(WBSTabDialogManager *)self cancelAllDialogsForTabID:a3 context:v6];
}

- (void)cancelAllDialogsForTabID:(unint64_t)a3 context:(id)a4
{
  v7 = a4;
  v6 = [(WBSTabDialogManager *)self _queueForTabID:a3 createIfNeeded:0];
  if (v6)
  {
    [(WBSTabDialogManager *)self _cancelDialogsInQueue:v6 tabID:a3 context:v7];
  }
}

- (void)_cancelDialogsInQueue:(id)a3 tabID:(unint64_t)a4 context:(id)a5
{
  v54 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a5;
  v10 = [MEMORY[0x1E695DF70] array];
  v11 = [MEMORY[0x1E695DF70] array];
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v12 = v8;
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
        if ([v17 isExemptFromCancellationInContext:v9])
        {
          v18 = v10;
        }

        else
        {
          v18 = v11;
        }

        [v18 addObject:v17];
      }

      v14 = [v12 countByEnumeratingWithState:&v47 objects:v53 count:16];
    }

    while (v14);
  }

  if ([v11 count])
  {
    if ([v10 count])
    {
      v19 = v10;
    }

    else
    {
      v19 = 0;
    }

    tabIDToDialogQueueMapping = self->_tabIDToDialogQueueMapping;
    v21 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:a4];
    [(NSMutableDictionary *)tabIDToDialogQueueMapping setObject:v19 forKeyedSubscript:v21];

    v22 = [v11 objectAtIndexedSubscript:0];
    v23 = [v22 slot];

    v24 = [(WBSTabDialogManager *)self _setForWebProcessID:v23 createIfNeeded:0];
    v25 = [v24 count];
    if (v25 == [v11 count])
    {
      goto LABEL_24;
    }

    v38 = self;
    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v26 = v11;
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

    self = v38;
    if (![v24 count])
    {
LABEL_24:
      webProcessIDToDialogSetMapping = self->_webProcessIDToDialogSetMapping;
      v32 = [MEMORY[0x1E696AD98] numberWithInt:v23];
      [(NSMutableDictionary *)webProcessIDToDialogSetMapping removeObjectForKey:v32];
    }

    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v33 = v11;
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

- (void)cancelAllDialogsWithContext:(id)a3
{
  v4 = a3;
  v5 = [(NSMutableDictionary *)self->_tabIDToDialogQueueMapping copy];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __51__WBSTabDialogManager_cancelAllDialogsWithContext___block_invoke;
  v7[3] = &unk_1E7FCADA8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [v5 enumerateKeysAndObjectsUsingBlock:v7];
}

void __51__WBSTabDialogManager_cancelAllDialogsWithContext___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  [v5 _cancelDialogsInQueue:v6 tabID:objc_msgSend(a2 context:{"unsignedLongValue"), *(a1 + 40)}];
}

- (id)_queueForTabID:(unint64_t)a3 createIfNeeded:(BOOL)a4
{
  v4 = a4;
  tabIDToDialogQueueMapping = self->_tabIDToDialogQueueMapping;
  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:?];
  v9 = [(NSMutableDictionary *)tabIDToDialogQueueMapping objectForKeyedSubscript:v8];

  if (v9)
  {
    v10 = 1;
  }

  else
  {
    v10 = !v4;
  }

  if (!v10)
  {
    v9 = [MEMORY[0x1E695DF70] array];
    v11 = self->_tabIDToDialogQueueMapping;
    v12 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:a3];
    [(NSMutableDictionary *)v11 setObject:v9 forKeyedSubscript:v12];
  }

  return v9;
}

- (id)_setForWebProcessID:(int)a3 createIfNeeded:(BOOL)a4
{
  v4 = a4;
  v5 = *&a3;
  webProcessIDToDialogSetMapping = self->_webProcessIDToDialogSetMapping;
  v8 = [MEMORY[0x1E696AD98] numberWithInt:?];
  v9 = [(NSMutableDictionary *)webProcessIDToDialogSetMapping objectForKeyedSubscript:v8];

  if (v9)
  {
    v10 = 1;
  }

  else
  {
    v10 = !v4;
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

- (int64_t)_enqueueDialog:(id)a3
{
  v4 = a3;
  v5 = [v4 slot];
  v7 = [(WBSTabDialogManager *)self _queueForTabID:v6 createIfNeeded:1];
  if ([v7 count] < self->_queueCapacity || objc_msgSend(v4, "isBlockingWebProcess"))
  {
    [v7 addObject:v4];
    v8 = [(WBSTabDialogManager *)self _setForWebProcessID:v5 createIfNeeded:1];
    [v8 addObject:v4];
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

- (void)_dismissDialog:(id)a3 withResponse:(id)a4
{
  v16 = a3;
  v6 = a4;
  v7 = [v16 slot];
  v9 = v8;
  v10 = [(WBSTabDialogManager *)self _setForWebProcessID:v7 createIfNeeded:0];
  [v10 removeObject:v16];
  if (![v10 count])
  {
    webProcessIDToDialogSetMapping = self->_webProcessIDToDialogSetMapping;
    v12 = [MEMORY[0x1E696AD98] numberWithInt:v7];
    [(NSMutableDictionary *)webProcessIDToDialogSetMapping removeObjectForKey:v12];
  }

  v13 = [(WBSTabDialogManager *)self _queueForTabID:v9 createIfNeeded:0];
  [v13 removeObject:v16];
  if (![v13 count])
  {
    tabIDToDialogQueueMapping = self->_tabIDToDialogQueueMapping;
    v15 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:v9];
    [(NSMutableDictionary *)tabIDToDialogQueueMapping removeObjectForKey:v15];
  }

  [v16 dismissWithResponse:v6];
}

- (id)_dialogBlockingSlot:(id)a3
{
  var1 = a3.var1;
  v4 = [(WBSTabDialogManager *)self _dialogBlockingWebProcessID:*&a3.var0];
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

- (id)_dialogBlockingWebProcessID:(int)a3
{
  v14 = *MEMORY[0x1E69E9840];
  [(WBSTabDialogManager *)self _setForWebProcessID:*&a3 createIfNeeded:0];
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