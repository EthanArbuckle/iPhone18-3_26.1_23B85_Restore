@interface RBSStateCaptureSet
- (NSSet)itemsCopy;
- (RBSStateCaptureSet)init;
- (void)addItem:(id)a3;
- (void)removeItem:(id)a3;
@end

@implementation RBSStateCaptureSet

- (RBSStateCaptureSet)init
{
  v6.receiver = self;
  v6.super_class = RBSStateCaptureSet;
  v2 = [(RBSStateCaptureSet *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CBEB58] set];
    stateCaptureSegments = v2->_stateCaptureSegments;
    v2->_stateCaptureSegments = v3;
  }

  return v2;
}

- (void)addItem:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 captureState];
  v6 = [v5 length];

  os_unfair_lock_assert_owner(&_stateCaptureLock);
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = self->_stateCaptureSegments;
  v8 = [(NSMutableSet *)v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (!v8)
  {

LABEL_15:
    v10 = objc_alloc_init(RBSStateCaptureSetSegment);
    [(NSMutableSet *)self->_stateCaptureSegments addObject:v10];
    goto LABEL_16;
  }

  v9 = v8;
  v10 = 0;
  v11 = *v18;
  do
  {
    for (i = 0; i != v9; ++i)
    {
      if (*v18 != v11)
      {
        objc_enumerationMutation(v7);
      }

      v13 = *(*(&v17 + 1) + 8 * i);
      if ([v13 count] <= 0x18)
      {
        if (!v10 || (v14 = -[RBSStateCaptureSetSegment count](v10, "count"), v14 < [v13 count]))
        {
          v15 = v13;

          v10 = v15;
        }
      }
    }

    v9 = [(NSMutableSet *)v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
  }

  while (v9);

  if (!v10)
  {
    goto LABEL_15;
  }

LABEL_16:
  [(RBSStateCaptureSetSegment *)v10 addItem:v4 withLength:v6, v17];

  v16 = *MEMORY[0x277D85DE8];
}

- (void)removeItem:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = a3;
  os_unfair_lock_assert_owner(&_stateCaptureLock);
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v5 = self->_stateCaptureSegments;
  v6 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v21;
LABEL_3:
    v9 = 0;
    while (1)
    {
      if (*v21 != v8)
      {
        objc_enumerationMutation(v5);
      }

      v10 = *(*(&v20 + 1) + 8 * v9);
      if ([v10 containsItem:{v4, v20}])
      {
        break;
      }

      if (v7 == ++v9)
      {
        v7 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v20 objects:v24 count:16];
        if (v7)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }

    v11 = v10;

    if (!v11)
    {
      goto LABEL_13;
    }

    [v11 removeItem:v4];
    if (![v11 count])
    {
      [(NSMutableSet *)self->_stateCaptureSegments removeObject:v11];
    }
  }

  else
  {
LABEL_9:

LABEL_13:
    v12 = rbs_general_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [(RBSStateCaptureSet *)v4 removeItem:v12, v13, v14, v15, v16, v17, v18];
    }

    v11 = 0;
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (NSSet)itemsCopy
{
  v18 = *MEMORY[0x277D85DE8];
  os_unfair_lock_assert_owner(&_stateCaptureLock);
  v3 = [MEMORY[0x277CBEB58] set];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = self->_stateCaptureSegments;
  v5 = [(NSMutableSet *)v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v13 + 1) + 8 * i) items];
        v10 = [v9 allObjects];
        [v3 addObjectsFromArray:v10];
      }

      v6 = [(NSMutableSet *)v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  v11 = *MEMORY[0x277D85DE8];

  return v3;
}

- (void)removeItem:(uint64_t)a3 .cold.1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_2(&dword_262485000, a2, a3, "RBSStateCapture remove item called for untracked item %{public}@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

@end