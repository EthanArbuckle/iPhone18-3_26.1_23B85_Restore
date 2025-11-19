@interface ISURLOperationPool
- (ISURLOperationPool)init;
- (id)_poolOperationForOperation:(id)a3 flags:(int64_t)a4;
- (void)addOperation:(id)a3 withFlags:(int64_t)a4;
- (void)cancelOperation:(id)a3;
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

- (void)addOperation:(id)a3 withFlags:(int64_t)a4
{
  v6 = [(ISURLOperationPool *)self _poolOperationForOperation:a3 flags:a4];
  if (v6)
  {

    [v6 addOperation:a3];
  }

  else
  {
    v7 = objc_alloc_init(ISURLOperationPoolOperation);
    [(ISURLOperationPoolOperation *)v7 addOperation:a3];
    [(ISOperationQueue *)self->_operationQueue addOperation:v7];
  }
}

- (void)cancelOperation:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = [(ISOperationQueue *)self->_operationQueue operations];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
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
        objc_enumerationMutation(v4);
      }

      v9 = *(*(&v11 + 1) + 8 * v8);
      if ([v9 containsOperation:a3])
      {
        break;
      }

      if (v6 == ++v8)
      {
        v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
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

    [v9 cancelOperation:a3];
  }

  else
  {
LABEL_12:
    [a3 cancel];
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (id)_poolOperationForOperation:(id)a3 flags:(int64_t)a4
{
  v4 = a4;
  v24 = *MEMORY[0x277D85DE8];
  v7 = [a3 dataProvider];
  v8 = [objc_msgSend(a3 "_requestProperties")];
  v9 = [(ISOperationQueue *)self->_operationQueue operations];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v10 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
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
        objc_enumerationMutation(v9);
      }

      v14 = *(*(&v19 + 1) + 8 * v13);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v15 = [v14 mainOperation];
        if ([v8 isEqual:{objc_msgSend(objc_msgSend(v15, "_requestProperties"), "URL")}])
        {
          v16 = [v15 dataProvider];
          if (v4 & 1) != 0 && (v7 == v16 || ([v7 isEqual:v16]))
          {
            break;
          }
        }
      }

      if (v11 == ++v13)
      {
        v11 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
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