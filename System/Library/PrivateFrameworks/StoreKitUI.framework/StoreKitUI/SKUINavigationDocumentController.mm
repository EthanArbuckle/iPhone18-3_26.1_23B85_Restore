@interface SKUINavigationDocumentController
- (SKUINavigationDocumentController)initWithNavigationController:(id)controller;
- (SKUINavigationDocumentDelegate)delegate;
- (id)_activeNavigationController;
- (id)documents;
- (void)_applyDocumentReplacementForOldStackItem:(id)item atOldIndex:(int64_t)index withStackItem:(id)stackItem;
- (void)_ensureStackConsistencyForNavigationControllerOperation:(int64_t)operation operationDidComplete:(BOOL)complete;
- (void)_handleStackDidChange;
- (void)_scheduleFlushingPendingNavigationStackEnsureConsistencyRequestsWithTransitionCoordinator:(id)coordinator;
- (void)_unloadAllStackItems;
- (void)ensureStackConsistencyForNavigationControllerOperation:(int64_t)operation operationDidComplete:(BOOL)complete;
- (void)insertDocument:(id)document beforeDocument:(id)beforeDocument options:(id)options;
- (void)popAllDocuments;
- (void)popDocument;
- (void)popToDocument:(id)document;
- (void)popToRootDocument;
- (void)pushDocument:(id)document options:(id)options;
- (void)removeDocument:(id)document;
- (void)replaceDocument:(id)document withDocument:(id)withDocument options:(id)options;
- (void)setStackItems:(id)items animated:(BOOL)animated;
@end

@implementation SKUINavigationDocumentController

- (SKUINavigationDocumentController)initWithNavigationController:(id)controller
{
  controllerCopy = controller;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    [SKUINavigationDocumentController initWithNavigationController:];
  }

  v14.receiver = self;
  v14.super_class = SKUINavigationDocumentController;
  v6 = [(SKUINavigationDocumentController *)&v14 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_navigationController, controller);
    v8 = storeSemanticContentAttribute();
    view = [(UINavigationController *)v7->_navigationController view];
    [view setSemanticContentAttribute:v8];

    navigationBar = [(UINavigationController *)v7->_navigationController navigationBar];
    [navigationBar setSemanticContentAttribute:v8];

    v11 = objc_alloc_init(MEMORY[0x277CBEB18]);
    stackItems = v7->_stackItems;
    v7->_stackItems = v11;
  }

  return v7;
}

- (void)ensureStackConsistencyForNavigationControllerOperation:(int64_t)operation operationDidComplete:(BOOL)complete
{
  completeCopy = complete;
  if ([(NSMutableArray *)self->_pendingNavigationStackEnsureConsistencyRequests count])
  {
    v11 = [[SKUINavigationStackEnsureConsistencyRequest alloc] initWithNavigationControllerOperation:operation operationDidComplete:completeCopy];
    [(NSMutableArray *)self->_pendingNavigationStackEnsureConsistencyRequests addObject:v11];
LABEL_5:

    return;
  }

  transitionCoordinator = [(UINavigationController *)self->_navigationController transitionCoordinator];
  if (transitionCoordinator)
  {
    v11 = transitionCoordinator;
    v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
    pendingNavigationStackEnsureConsistencyRequests = self->_pendingNavigationStackEnsureConsistencyRequests;
    self->_pendingNavigationStackEnsureConsistencyRequests = v8;

    v10 = [[SKUINavigationStackEnsureConsistencyRequest alloc] initWithNavigationControllerOperation:operation operationDidComplete:completeCopy];
    [(NSMutableArray *)self->_pendingNavigationStackEnsureConsistencyRequests addObject:v10];
    [(SKUINavigationDocumentController *)self _scheduleFlushingPendingNavigationStackEnsureConsistencyRequestsWithTransitionCoordinator:v11];

    goto LABEL_5;
  }

  [(SKUINavigationDocumentController *)self _ensureStackConsistencyForNavigationControllerOperation:operation operationDidComplete:completeCopy];
}

- (void)popAllDocuments
{
  [(SKUINavigationDocumentController *)self _unloadAllStackItems];
  moreNavigationController = self->_moreNavigationController;
  if (moreNavigationController || (moreNavigationController = self->_overrideNavigationController) != 0)
  {
    v4 = [(UINavigationController *)moreNavigationController popToRootViewControllerAnimated:0];
  }

  else
  {
    [(UINavigationController *)self->_navigationController setViewControllers:MEMORY[0x277CBEBF8] animated:0];
  }

  [(SKUINavigationDocumentController *)self _handleStackDidChange];
}

- (void)setStackItems:(id)items animated:(BOOL)animated
{
  animatedCopy = animated;
  v31 = *MEMORY[0x277D85DE8];
  itemsCopy = items;
  [(SKUINavigationDocumentController *)self _unloadAllStackItems];
  clientContext = [(SKUINavigationDocumentController *)self clientContext];
  v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v7 = itemsCopy;
  v8 = [v7 countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v27;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v27 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v26 + 1) + 8 * i);
        viewController = [v12 viewController];
        if (viewController)
        {
          v14 = viewController;
        }

        else
        {
          v15 = [SKUIDocumentContainerViewController alloc];
          document = [v12 document];
          presentationOptions = [v12 presentationOptions];
          v14 = [(SKUIDocumentContainerViewController *)v15 initWithDocument:document options:presentationOptions clientContext:clientContext];

          [v12 setViewController:v14];
          if (!v14)
          {
            continue;
          }
        }

        [(NSMutableArray *)self->_stackItems addObject:v12];
        [v6 addObject:v14];
      }

      v9 = [v7 countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v9);
  }

  moreNavigationController = self->_moreNavigationController;
  if (moreNavigationController || (moreNavigationController = self->_overrideNavigationController) != 0)
  {
    viewControllers = [(UINavigationController *)moreNavigationController viewControllers];
    firstObject = [viewControllers firstObject];

    if (firstObject)
    {
      [v6 insertObject:firstObject atIndex:0];
    }
  }

  _activeNavigationController = [(SKUINavigationDocumentController *)self _activeNavigationController];
  firstObject2 = [v6 firstObject];
  if ([firstObject2 conformsToProtocol:&unk_28293AF68])
  {
    [_activeNavigationController setTransitioningDelegate:firstObject2];
  }

  _activeNavigationController2 = [(SKUINavigationDocumentController *)self _activeNavigationController];
  [_activeNavigationController2 setViewControllers:v6 animated:animatedCopy];

  [(SKUINavigationDocumentController *)self _handleStackDidChange];
}

- (id)documents
{
  v16 = *MEMORY[0x277D85DE8];
  array = [MEMORY[0x277CBEB18] array];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = self->_stackItems;
  v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        document = [*(*(&v11 + 1) + 8 * i) document];
        if (document)
        {
          [array addObject:document];
        }
      }

      v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  return array;
}

- (void)insertDocument:(id)document beforeDocument:(id)beforeDocument options:(id)options
{
  documentCopy = document;
  beforeDocumentCopy = beforeDocument;
  optionsCopy = options;
  if (beforeDocumentCopy && (v11 = self->_stackItems, v25[0] = MEMORY[0x277D85DD0], v25[1] = 3221225472, v25[2] = __74__SKUINavigationDocumentController_insertDocument_beforeDocument_options___block_invoke, v25[3] = &unk_2781FD120, v26 = beforeDocumentCopy, v12 = [(NSMutableArray *)v11 indexOfObjectPassingTest:v25], v26, v12 != 0x7FFFFFFFFFFFFFFFLL))
  {
    v13 = [SKUIDocumentContainerViewController alloc];
    clientContext = [(SKUINavigationDocumentController *)self clientContext];
    v15 = [(SKUIDocumentContainerViewController *)v13 initWithDocument:documentCopy options:optionsCopy clientContext:clientContext];

    if (v15)
    {
      v16 = [[SKUIDocumentStackItem alloc] initWithDocument:documentCopy presentationOptions:optionsCopy];
      [(SKUIDocumentStackItem *)v16 setViewController:v15];
      _activeNavigationController = [(SKUINavigationDocumentController *)self _activeNavigationController];
      viewControllers = [_activeNavigationController viewControllers];
      v18 = [viewControllers mutableCopy];

      v23 = [(NSMutableArray *)self->_stackItems objectAtIndex:v12];
      viewController = [v23 viewController];
      v20 = [v18 indexOfObjectIdenticalTo:viewController];

      stackItems = self->_stackItems;
      if (v20 == 0x7FFFFFFFFFFFFFFFLL)
      {
        [(NSMutableArray *)stackItems addObject:v16];
        v22 = _activeNavigationController;
        [_activeNavigationController pushViewController:v15 animated:{-[SKUIDocumentStackItem isAnimated](v16, "isAnimated")}];
      }

      else
      {
        [(NSMutableArray *)stackItems insertObject:v16 atIndex:v12];
        [v18 insertObject:v15 atIndex:v20];
        v22 = _activeNavigationController;
        [_activeNavigationController setViewControllers:v18 animated:{-[SKUIDocumentStackItem isAnimated](v16, "isAnimated")}];
      }

      [(SKUINavigationDocumentController *)self _handleStackDidChange];
    }

    else
    {
      NSLog(&cfstr_NoViewControll.isa, documentCopy, optionsCopy);
    }
  }

  else
  {
    [(SKUINavigationDocumentController *)self pushDocument:documentCopy options:optionsCopy];
  }
}

BOOL __74__SKUINavigationDocumentController_insertDocument_beforeDocument_options___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 document];
  v4 = v3 == *(a1 + 32);

  return v4;
}

- (void)popDocument
{
  if ([(NSMutableArray *)self->_stackItems count])
  {
    lastObject = [(NSMutableArray *)self->_stackItems lastObject];
    isAnimated = [lastObject isAnimated];
    document = [lastObject document];
    [document onUnload];

    [(NSMutableArray *)self->_stackItems removeLastObject];
    _activeNavigationController = [(SKUINavigationDocumentController *)self _activeNavigationController];
    v6 = [_activeNavigationController popViewControllerAnimated:isAnimated];

    [(SKUINavigationDocumentController *)self _handleStackDidChange];
  }
}

- (void)popToRootDocument
{
  v3 = [(NSMutableArray *)self->_stackItems count];
  if (v3 >= 2)
  {
    v4 = v3 + 1;
    do
    {
      v5 = [(NSMutableArray *)self->_stackItems objectAtIndex:v4 - 2];
      document = [v5 document];
      [document onUnload];

      [(NSMutableArray *)self->_stackItems removeObjectAtIndex:v4 - 2];
      --v4;
    }

    while (v4 > 2);
  }

  if ([(NSMutableArray *)self->_stackItems count])
  {
    firstObject = [(NSMutableArray *)self->_stackItems firstObject];
    _activeNavigationController = [(SKUINavigationDocumentController *)self _activeNavigationController];
    viewController = [firstObject viewController];
    v10 = [_activeNavigationController popToViewController:viewController animated:1];
  }

  [(SKUINavigationDocumentController *)self _handleStackDidChange];
}

- (void)popToDocument:(id)document
{
  documentCopy = document;
  stackItems = self->_stackItems;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __50__SKUINavigationDocumentController_popToDocument___block_invoke;
  v16[3] = &unk_2781FD120;
  v6 = documentCopy;
  v17 = v6;
  v7 = [(NSMutableArray *)stackItems indexOfObjectPassingTest:v16];
  if (v7 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = v7;
    for (i = [(NSMutableArray *)self->_stackItems count]- 1; i > v8; --i)
    {
      v10 = [(NSMutableArray *)self->_stackItems objectAtIndex:i];
      document = [v10 document];
      [document onUnload];

      [(NSMutableArray *)self->_stackItems removeObjectAtIndex:i];
    }

    v12 = [(NSMutableArray *)self->_stackItems objectAtIndex:v8];
    _activeNavigationController = [(SKUINavigationDocumentController *)self _activeNavigationController];
    viewController = [v12 viewController];
    v15 = [_activeNavigationController popToViewController:viewController animated:{objc_msgSend(v12, "isAnimated")}];

    [(SKUINavigationDocumentController *)self _handleStackDidChange];
  }
}

BOOL __50__SKUINavigationDocumentController_popToDocument___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 document];
  v4 = v3 == *(a1 + 32);

  return v4;
}

- (void)pushDocument:(id)document options:(id)options
{
  documentCopy = document;
  optionsCopy = options;
  v8 = [SKUIDocumentContainerViewController alloc];
  clientContext = [(SKUINavigationDocumentController *)self clientContext];
  v10 = [(SKUIDocumentContainerViewController *)v8 initWithDocument:documentCopy options:optionsCopy clientContext:clientContext];

  if (v10)
  {
    v11 = [[SKUIDocumentStackItem alloc] initWithDocument:documentCopy presentationOptions:optionsCopy];
    [(SKUIDocumentStackItem *)v11 setViewController:v10];
    [(NSMutableArray *)self->_stackItems addObject:v11];
    _activeNavigationController = [(SKUINavigationDocumentController *)self _activeNavigationController];
    [(SKUIDocumentContainerViewController *)v10 preferredContentSize];
    if (*MEMORY[0x277CBF3A8] == v14 && *(MEMORY[0x277CBF3A8] + 8) == v13)
    {
      [_activeNavigationController preferredContentSize];
      [(SKUIDocumentContainerViewController *)v10 setPreferredContentSize:?];
    }

    viewControllers = [_activeNavigationController viewControllers];
    v17 = [viewControllers count];

    transitionCoordinator = [_activeNavigationController transitionCoordinator];
    [_activeNavigationController pushViewController:v10 animated:{-[SKUIDocumentStackItem isAnimated](v11, "isAnimated")}];
    if (!v17)
    {
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 3221225472;
      aBlock[2] = __57__SKUINavigationDocumentController_pushDocument_options___block_invoke;
      aBlock[3] = &unk_2781F80C8;
      v24 = _activeNavigationController;
      v25 = v10;
      v19 = _Block_copy(aBlock);
      v20 = v19;
      if (transitionCoordinator)
      {
        v21[0] = MEMORY[0x277D85DD0];
        v21[1] = 3221225472;
        v21[2] = __57__SKUINavigationDocumentController_pushDocument_options___block_invoke_4;
        v21[3] = &unk_2781FD148;
        v22 = v19;
        [transitionCoordinator animateAlongsideTransition:0 completion:v21];
      }

      else
      {
        v19[2](v19);
      }
    }

    [(SKUINavigationDocumentController *)self _handleStackDidChange];
  }

  else
  {
    NSLog(&cfstr_NoViewControll.isa, documentCopy, optionsCopy);
  }
}

void __57__SKUINavigationDocumentController_pushDocument_options___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277D75128] sharedApplication];
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __57__SKUINavigationDocumentController_pushDocument_options___block_invoke_2;
  v3[3] = &unk_2781F80C8;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  [v2 _performBlockAfterCATransactionCommits:v3];
}

void __57__SKUINavigationDocumentController_pushDocument_options___block_invoke_2(uint64_t a1)
{
  v2 = MEMORY[0x277D75D18];
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __57__SKUINavigationDocumentController_pushDocument_options___block_invoke_3;
  v3[3] = &unk_2781F80C8;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  [v2 performWithoutAnimation:v3];
}

uint64_t __57__SKUINavigationDocumentController_pushDocument_options___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) view];
  [v2 layoutSubviews];

  v3 = *(a1 + 40);

  return [v3 reloadData];
}

- (void)removeDocument:(id)document
{
  documentCopy = document;
  stackItems = self->_stackItems;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __51__SKUINavigationDocumentController_removeDocument___block_invoke;
  v15[3] = &unk_2781FD120;
  v6 = documentCopy;
  v16 = v6;
  v7 = [(NSMutableArray *)stackItems indexOfObjectPassingTest:v15];
  if (v7 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = v7;
    v9 = [(NSMutableArray *)self->_stackItems objectAtIndex:v7];
    _activeNavigationController = [(SKUINavigationDocumentController *)self _activeNavigationController];
    viewControllers = [_activeNavigationController viewControllers];
    v12 = [viewControllers mutableCopy];

    viewController = [v9 viewController];
    [v12 removeObjectIdenticalTo:viewController];

    document = [v9 document];
    [document onUnload];

    [(NSMutableArray *)self->_stackItems removeObjectAtIndex:v8];
    [_activeNavigationController setViewControllers:v12 animated:0];
    [(SKUINavigationDocumentController *)self _handleStackDidChange];
  }
}

BOOL __51__SKUINavigationDocumentController_removeDocument___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 document];
  v4 = v3 == *(a1 + 32);

  return v4;
}

- (void)replaceDocument:(id)document withDocument:(id)withDocument options:(id)options
{
  documentCopy = document;
  withDocumentCopy = withDocument;
  optionsCopy = options;
  if (documentCopy && (stackItems = self->_stackItems, v31[0] = MEMORY[0x277D85DD0], v31[1] = 3221225472, v31[2] = __73__SKUINavigationDocumentController_replaceDocument_withDocument_options___block_invoke, v31[3] = &unk_2781FD120, v32 = documentCopy, v12 = [(NSMutableArray *)stackItems indexOfObjectPassingTest:v31], v32, v12 != 0x7FFFFFFFFFFFFFFFLL))
  {
    v13 = [SKUIDocumentContainerViewController alloc];
    clientContext = [(SKUINavigationDocumentController *)self clientContext];
    v15 = [(SKUIDocumentContainerViewController *)v13 initWithDocument:withDocumentCopy options:optionsCopy clientContext:clientContext];

    if (v15)
    {
      v26 = [[SKUIDocumentStackItem alloc] initWithDocument:withDocumentCopy presentationOptions:optionsCopy];
      [(SKUIDocumentStackItem *)v26 setViewController:v15];
      v16 = [(NSMutableArray *)self->_stackItems objectAtIndex:v12];
      _activeNavigationController = [(SKUINavigationDocumentController *)self _activeNavigationController];
      viewControllers = [_activeNavigationController viewControllers];
      viewController = [v16 viewController];
      v25 = viewControllers;
      v20 = [viewControllers indexOfObjectIdenticalTo:viewController];

      if (v20 == 0x7FFFFFFFFFFFFFFFLL && ([_activeNavigationController transitionCoordinator], (v21 = objc_claimAutoreleasedReturnValue()) != 0))
      {
        v22 = v21;
        v27[0] = MEMORY[0x277D85DD0];
        v27[1] = 3221225472;
        v27[2] = __73__SKUINavigationDocumentController_replaceDocument_withDocument_options___block_invoke_2;
        v27[3] = &unk_2781FD170;
        v27[4] = self;
        v28 = v16;
        v30 = v12;
        v23 = v26;
        v29 = v26;
        [v22 animateAlongsideTransition:0 completion:v27];
      }

      else
      {
        selfCopy = self;
        v23 = v26;
        [(SKUINavigationDocumentController *)selfCopy _applyDocumentReplacementForOldStackItem:v16 atOldIndex:v12 withStackItem:v26];
      }
    }

    else
    {
      NSLog(&cfstr_NoViewControll.isa, withDocumentCopy, optionsCopy);
    }
  }

  else
  {
    [(SKUINavigationDocumentController *)self pushDocument:withDocumentCopy options:optionsCopy];
  }
}

BOOL __73__SKUINavigationDocumentController_replaceDocument_withDocument_options___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 document];
  v4 = v3 == *(a1 + 32);

  return v4;
}

- (id)_activeNavigationController
{
  moreNavigationController = self->_moreNavigationController;
  if (moreNavigationController)
  {
    return moreNavigationController;
  }

  moreNavigationController = self->_overrideNavigationController;
  if (moreNavigationController)
  {
    return moreNavigationController;
  }

  else
  {
    return self->_navigationController;
  }
}

- (void)_applyDocumentReplacementForOldStackItem:(id)item atOldIndex:(int64_t)index withStackItem:(id)stackItem
{
  itemCopy = item;
  stackItemCopy = stackItem;
  _activeNavigationController = [(SKUINavigationDocumentController *)self _activeNavigationController];
  viewControllers = [_activeNavigationController viewControllers];
  v11 = [viewControllers mutableCopy];

  viewController = [itemCopy viewController];
  v13 = [v11 indexOfObjectIdenticalTo:viewController];

  viewController2 = [stackItemCopy viewController];
  if (v13 == 0x7FFFFFFFFFFFFFFFLL)
  {
    [(NSMutableArray *)self->_stackItems addObject:stackItemCopy];
    [_activeNavigationController pushViewController:viewController2 animated:{objc_msgSend(stackItemCopy, "isAnimated")}];
  }

  else
  {
    document = [itemCopy document];
    [document onUnload];

    [(NSMutableArray *)self->_stackItems replaceObjectAtIndex:index withObject:stackItemCopy];
    [v11 replaceObjectAtIndex:v13 withObject:viewController2];
    [_activeNavigationController setViewControllers:v11 animated:{objc_msgSend(stackItemCopy, "isAnimated")}];
  }

  [(SKUINavigationDocumentController *)self _handleStackDidChange];
}

- (void)_ensureStackConsistencyForNavigationControllerOperation:(int64_t)operation operationDidComplete:(BOOL)complete
{
  v35[2] = *MEMORY[0x277D85DE8];
  v4 = (operation & 0xFFFFFFFFFFFFFFFDLL) == 1 && !complete;
  if ((operation & 0xFFFFFFFFFFFFFFFDLL) == 1 || complete)
  {
    completeCopy = complete;
    _activeNavigationController = [(SKUINavigationDocumentController *)self _activeNavigationController];
    viewControllers = [_activeNavigationController viewControllers];

    v28 = completeCopy;
    if (completeCopy)
    {
      v10 = [(NSMutableArray *)self->_stackItems count];
      if (v10)
      {
        v11 = v10 - 1;
        do
        {
          v12 = [(NSMutableArray *)self->_stackItems objectAtIndex:v11];
          viewController = [v12 viewController];
          v14 = [viewControllers indexOfObjectIdenticalTo:viewController];

          if (v14 == 0x7FFFFFFFFFFFFFFFLL)
          {
            document = [v12 document];
            [document onUnload];

            [(NSMutableArray *)self->_stackItems removeObjectAtIndex:v11];
          }

          --v11;
        }

        while (v11 != -1);
      }
    }

    if (v4)
    {
      delegate = [(SKUINavigationDocumentController *)self delegate];
      if (objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector())
      {
        v27 = delegate;
        v29 = [viewControllers count];
        v17 = 0;
        if (v29)
        {
          for (i = 0; i != v29; ++i)
          {
            v19 = [viewControllers objectAtIndex:i];
            if (i >= [(NSMutableArray *)self->_stackItems count])
            {
              v20 = 0;
            }

            else
            {
              v20 = [(NSMutableArray *)self->_stackItems objectAtIndex:i];
            }

            viewController2 = [v20 viewController];

            if (v19 != viewController2)
            {
              v22 = [[SKUIDocumentStackItem alloc] initWithDocument:0 presentationOptions:0];
              [(SKUIDocumentStackItem *)v22 setViewController:v19];
              [(NSMutableArray *)self->_stackItems insertObject:v22 atIndex:i];
              if (!v17)
              {
                v17 = objc_alloc_init(MEMORY[0x277CBEB18]);
              }

              v34[0] = @"stackItem";
              v34[1] = @"viewControllerClass";
              v35[0] = v22;
              v23 = objc_opt_class();
              v24 = NSStringFromClass(v23);
              v35[1] = v24;
              v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v35 forKeys:v34 count:2];
              v26 = [v25 mutableCopy];
              [v17 addObject:v26];
            }
          }
        }

        delegate = v27;
        if ([v17 count])
        {
          v30[0] = MEMORY[0x277D85DD0];
          v30[1] = 3221225472;
          v30[2] = __113__SKUINavigationDocumentController__ensureStackConsistencyForNavigationControllerOperation_operationDidComplete___block_invoke;
          v30[3] = &unk_2781FCA48;
          v31 = v27;
          selfCopy = self;
          v33 = v17;
          [v31 navigationDocumentController:self requestsAccessToAppContextUsingBlock:v30];
        }
      }
    }

    if (v28)
    {
      [(SKUINavigationDocumentController *)self _handleStackDidChange];
    }
  }
}

void __113__SKUINavigationDocumentController__ensureStackConsistencyForNavigationControllerOperation_operationDidComplete___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __113__SKUINavigationDocumentController__ensureStackConsistencyForNavigationControllerOperation_operationDidComplete___block_invoke_2;
  v8[3] = &unk_2781FABC8;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v9 = v4;
  v10 = v5;
  v11 = v6;
  v12 = v3;
  v7 = v3;
  [v7 evaluate:v8 completionBlock:0];
}

void __113__SKUINavigationDocumentController__ensureStackConsistencyForNavigationControllerOperation_operationDidComplete___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = [*(a1 + 32) jsNavigationDocumentForNavigationDocumentController:*(a1 + 40) inContext:a2];
  if (v3)
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    obj = *(a1 + 48);
    v4 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v18;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v18 != v6)
          {
            objc_enumerationMutation(obj);
          }

          v8 = *(*(&v17 + 1) + 8 * i);
          v9 = [v8 objectForKey:@"viewControllerClass"];
          v10 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"<document><nativeViewPlaceholderTemplate viewControllerClass=%@></nativeViewPlaceholderTemplate></document>", v9];
          v11 = [objc_alloc(MEMORY[0x277D1B078]) initWithAppContext:*(a1 + 56) xmlStr:v10 error:0];
          [v11 setNavigationDocument:v3];
          v12 = [objc_alloc(MEMORY[0x277D1B038]) initWithAppContext:*(a1 + 56) document:v11 owner:v3];
          [v8 setObject:v12 forKey:@"placeholderTemplateDocument"];
        }

        v5 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v5);
    }

    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __113__SKUINavigationDocumentController__ensureStackConsistencyForNavigationControllerOperation_operationDidComplete___block_invoke_3;
    v15[3] = &unk_2781FAC18;
    v13 = *(a1 + 56);
    v16 = *(a1 + 48);
    [v13 evaluateDelegateBlockSync:v15];
  }
}

void __113__SKUINavigationDocumentController__ensureStackConsistencyForNavigationControllerOperation_operationDidComplete___block_invoke_3(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v1 = *(a1 + 32);
  v2 = [v1 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v10;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v10 != v4)
        {
          objc_enumerationMutation(v1);
        }

        v6 = *(*(&v9 + 1) + 8 * i);
        v7 = [v6 objectForKey:{@"stackItem", v9}];
        v8 = [v6 objectForKey:@"placeholderTemplateDocument"];
        [v7 _setDocument:v8];
      }

      v3 = [v1 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v3);
  }
}

- (void)_handleStackDidChange
{
  firstObject = [(NSMutableArray *)self->_stackItems firstObject];
  viewController = [firstObject viewController];
  tabBarItem = [(UINavigationController *)self->_navigationController tabBarItem];
  [viewController setTabBarItem:tabBarItem];

  delegate = [(SKUINavigationDocumentController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate navigationDocumentStackDidChange:self];
  }
}

- (void)_scheduleFlushingPendingNavigationStackEnsureConsistencyRequestsWithTransitionCoordinator:(id)coordinator
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __126__SKUINavigationDocumentController__scheduleFlushingPendingNavigationStackEnsureConsistencyRequestsWithTransitionCoordinator___block_invoke;
  v3[3] = &unk_2781F8348;
  v3[4] = self;
  [coordinator animateAlongsideTransition:0 completion:v3];
}

void __126__SKUINavigationDocumentController__scheduleFlushingPendingNavigationStackEnsureConsistencyRequestsWithTransitionCoordinator___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277D75128] sharedApplication];
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __126__SKUINavigationDocumentController__scheduleFlushingPendingNavigationStackEnsureConsistencyRequestsWithTransitionCoordinator___block_invoke_2;
  v3[3] = &unk_2781F80F0;
  v3[4] = *(a1 + 32);
  [v2 _performBlockAfterCATransactionCommits:v3];
}

void __126__SKUINavigationDocumentController__scheduleFlushingPendingNavigationStackEnsureConsistencyRequestsWithTransitionCoordinator___block_invoke_2(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 24) transitionCoordinator];
  v3 = *(a1 + 32);
  v8 = v2;
  if (v2)
  {
    [v3 _scheduleFlushingPendingNavigationStackEnsureConsistencyRequestsWithTransitionCoordinator:v2];
  }

  else
  {
    for (i = v3[1]; [i count]; i = *(*(a1 + 32) + 8))
    {
      v5 = [*(*(a1 + 32) + 8) objectAtIndex:0];
      [*(*(a1 + 32) + 8) removeObjectAtIndex:0];
      [*(a1 + 32) _ensureStackConsistencyForNavigationControllerOperation:objc_msgSend(v5 operationDidComplete:{"navigationControllerOperation"), objc_msgSend(v5, "operationDidComplete")}];
    }

    v6 = *(a1 + 32);
    v7 = *(v6 + 8);
    *(v6 + 8) = 0;
  }
}

- (void)_unloadAllStackItems
{
  v3 = [(NSMutableArray *)self->_stackItems count];
  if (v3 >= 1)
  {
    v4 = v3 + 1;
    do
    {
      v5 = [(NSMutableArray *)self->_stackItems objectAtIndex:v4 - 2];
      document = [v5 document];
      [document onUnload];

      --v4;
    }

    while (v4 > 1);
  }

  stackItems = self->_stackItems;

  [(NSMutableArray *)stackItems removeAllObjects];
}

- (SKUINavigationDocumentDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)initWithNavigationController:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUINavigationDocumentController initWithNavigationController:]";
}

@end