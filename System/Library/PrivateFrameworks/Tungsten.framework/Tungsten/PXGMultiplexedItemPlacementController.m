@interface PXGMultiplexedItemPlacementController
+ (id)itemPlacementControllerForItemPlacementControllers:(id)a3;
- (PXGMultiplexedItemPlacementController)init;
- (PXGMultiplexedItemPlacementController)initWithItemPlacementControllers:(id)a3;
- (id)placementInContext:(id)a3 forItemReference:(id)a4;
- (void)setPlacementOverride:(id)a3 forItemReference:(id)a4;
@end

@implementation PXGMultiplexedItemPlacementController

- (void)setPlacementOverride:(id)a3 forItemReference:(id)a4
{
  v18 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v8 = [(PXGMultiplexedItemPlacementController *)self itemPlacementControllers];
  v9 = [v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v14;
    do
    {
      v12 = 0;
      do
      {
        if (*v14 != v11)
        {
          objc_enumerationMutation(v8);
        }

        [*(*(&v13 + 1) + 8 * v12++) setPlacementOverride:v6 forItemReference:v7];
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v10);
  }
}

- (id)placementInContext:(id)a3 forItemReference:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(PXGMultiplexedItemPlacementController *)self mainItemPlacementController];
  v9 = [v8 placementInContext:v7 forItemReference:v6];

  return v9;
}

- (PXGMultiplexedItemPlacementController)initWithItemPlacementControllers:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v21.receiver = self;
  v21.super_class = PXGMultiplexedItemPlacementController;
  v5 = [(PXGMultiplexedItemPlacementController *)&v21 init];
  if (v5)
  {
    v6 = [v4 copy];
    itemPlacementControllers = v5->_itemPlacementControllers;
    v5->_itemPlacementControllers = v6;

    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v8 = v5->_itemPlacementControllers;
    v9 = [(NSArray *)v8 countByEnumeratingWithState:&v17 objects:v22 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v18;
      do
      {
        v12 = 0;
        do
        {
          if (*v18 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v17 + 1) + 8 * v12);
          if ((objc_opt_respondsToSelector() & 1) == 0 || ([v13 isIndirectItemPlacementController] & 1) == 0)
          {
            if (v5->_mainItemPlacementController)
            {
              v14 = PXAssertGetLog();
              if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
              {
                *buf = 0;
                _os_log_error_impl(&dword_21AD38000, v14, OS_LOG_TYPE_ERROR, "multiple main item placement controllers", buf, 2u);
              }
            }

            objc_storeStrong(&v5->_mainItemPlacementController, v13);
          }

          ++v12;
        }

        while (v10 != v12);
        v10 = [(NSArray *)v8 countByEnumeratingWithState:&v17 objects:v22 count:16];
      }

      while (v10);
    }

    v5->_isIndirectItemPlacementController = v5->_mainItemPlacementController != 0;
  }

  return v5;
}

- (PXGMultiplexedItemPlacementController)init
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PXGItemPlacementController.m" lineNumber:80 description:{@"%s is not available as initializer", "-[PXGMultiplexedItemPlacementController init]"}];

  abort();
}

+ (id)itemPlacementControllerForItemPlacementControllers:(id)a3
{
  v3 = a3;
  if ([v3 count] < 2)
  {
    v4 = [v3 firstObject];
  }

  else
  {
    v4 = [[PXGMultiplexedItemPlacementController alloc] initWithItemPlacementControllers:v3];
  }

  v5 = v4;

  return v5;
}

@end