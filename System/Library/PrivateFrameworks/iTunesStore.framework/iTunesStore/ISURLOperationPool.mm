@interface ISURLOperationPool
- (ISURLOperationPool)init;
- (id)_poolOperationForOperation:(id)operation flags:(int64_t)flags;
- (void)addOperation:(id)operation withFlags:(int64_t)flags;
- (void)cancelOperation:(id)operation;
- (void)dealloc;
@end

@implementation ISURLOperationPool

- (ISURLOperationPool)init
{
  __ISRecordSPIClassUsage(self);
  v5.receiver = self;
  v5.super_class = ISURLOperationPool;
  v3 = [(ISURLOperationPool *)&v5 init];
  if (v3)
  {
    v3->_operationQueue = +[ISOperationQueue mainQueue];
  }

  return v3;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = ISURLOperationPool;
  [(ISURLOperationPool *)&v3 dealloc];
}

- (void)addOperation:(id)operation withFlags:(int64_t)flags
{
  v6 = [(ISURLOperationPool *)self _poolOperationForOperation:operation flags:flags];
  if (v6)
  {

    [v6 addOperation:operation];
  }

  else
  {
    v7 = objc_alloc_init(ISURLOperationPoolOperation);
    [(ISURLOperationPoolOperation *)v7 addOperation:operation];
    [(ISOperationQueue *)self->_operationQueue addOperation:v7];
  }
}

- (void)cancelOperation:(id)operation
{
  v16 = *MEMORY[0x277D85DE8];
  operations = [(ISOperationQueue *)self->_operationQueue operations];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [operations countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
LABEL_3:
    v8 = 0;
    while (1)
    {
      if (*v12 != v7)
      {
        objc_enumerationMutation(operations);
      }

      v9 = *(*(&v11 + 1) + 8 * v8);
      if ([v9 containsOperation:operation])
      {
        break;
      }

      if (v6 == ++v8)
      {
        v6 = [operations countByEnumeratingWithState:&v11 objects:v15 count:16];
        if (v6)
        {
          goto LABEL_3;
        }

        goto LABEL_12;
      }
    }

    if (!v9)
    {
      goto LABEL_12;
    }

    [v9 cancelOperation:operation];
  }

  else
  {
LABEL_12:
    [operation cancel];
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (id)_poolOperationForOperation:(id)operation flags:(int64_t)flags
{
  flagsCopy = flags;
  v24 = *MEMORY[0x277D85DE8];
  dataProvider = [operation dataProvider];
  v8 = [objc_msgSend(operation "_requestProperties")];
  operations = [(ISOperationQueue *)self->_operationQueue operations];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v10 = [operations countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v20;
LABEL_3:
    v13 = 0;
    while (1)
    {
      if (*v20 != v12)
      {
        objc_enumerationMutation(operations);
      }

      v14 = *(*(&v19 + 1) + 8 * v13);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        mainOperation = [v14 mainOperation];
        if ([v8 isEqual:{objc_msgSend(objc_msgSend(mainOperation, "_requestProperties"), "URL")}])
        {
          dataProvider2 = [mainOperation dataProvider];
          if (flagsCopy & 1) != 0 && (dataProvider == dataProvider2 || ([dataProvider isEqual:dataProvider2]))
          {
            break;
          }
        }
      }

      if (v11 == ++v13)
      {
        v11 = [operations countByEnumeratingWithState:&v19 objects:v23 count:16];
        if (v11)
        {
          goto LABEL_3;
        }

        goto LABEL_13;
      }
    }
  }

  else
  {
LABEL_13:
    v14 = 0;
  }

  v17 = *MEMORY[0x277D85DE8];
  return v14;
}

@end