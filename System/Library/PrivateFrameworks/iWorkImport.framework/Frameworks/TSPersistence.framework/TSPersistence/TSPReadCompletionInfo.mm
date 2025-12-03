@interface TSPReadCompletionInfo
- (TSPReadCompletionInfo)initWithObjects:(id)objects readCoordinator:(id)coordinator finalizeHandlerQueue:(id)queue;
- (id)readObjectWithIdentifier:(int64_t)identifier;
@end

@implementation TSPReadCompletionInfo

- (TSPReadCompletionInfo)initWithObjects:(id)objects readCoordinator:(id)coordinator finalizeHandlerQueue:(id)queue
{
  objectsCopy = objects;
  coordinatorCopy = coordinator;
  queueCopy = queue;
  v15.receiver = self;
  v15.super_class = TSPReadCompletionInfo;
  v12 = [(TSPReadCompletionInfo *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_objects, objects);
    objc_storeStrong(&v13->_readCoordinator, coordinator);
    objc_storeStrong(&v13->_finalizeHandlerQueue, queue);
  }

  return v13;
}

- (id)readObjectWithIdentifier:(int64_t)identifier
{
  v20 = *MEMORY[0x277D85DE8];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v4 = self->_objects;
  v6 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v5, &v15, v19, 16);
  if (v6)
  {
    v8 = v6;
    v9 = *v16;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v4);
        }

        v11 = objc_msgSend_tsp_objectForIdentifier_(*(*(&v15 + 1) + 8 * i), v7, identifier, v15);
        if (v11)
        {
          v12 = v11;
          goto LABEL_11;
        }
      }

      v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v7, &v15, v19, 16);
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v12 = 0;
LABEL_11:

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

@end