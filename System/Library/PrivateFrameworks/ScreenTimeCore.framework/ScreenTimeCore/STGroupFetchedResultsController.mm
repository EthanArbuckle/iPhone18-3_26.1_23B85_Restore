@interface STGroupFetchedResultsController
- (STGroupFetchedResultsController)initWithResultsRequests:(id)requests cacheName:(id)name managedObjectContext:(id)context;
- (STGroupFetchedResultsControllerDelegate)delegate;
- (void)_evaluateCounter;
- (void)controller:(id)controller didChangeObject:(id)object atIndexPath:(id)path forChangeType:(unint64_t)type newIndexPath:(id)indexPath;
- (void)controllerDidChangeContent:(id)content;
- (void)controllerWillChangeContent:(id)content;
@end

@implementation STGroupFetchedResultsController

- (STGroupFetchedResultsController)initWithResultsRequests:(id)requests cacheName:(id)name managedObjectContext:(id)context
{
  v39 = *MEMORY[0x1E69E9840];
  requestsCopy = requests;
  nameCopy = name;
  contextCopy = context;
  v37.receiver = self;
  v37.super_class = STGroupFetchedResultsController;
  v9 = [(STGroupFetchedResultsController *)&v37 init];
  if (v9)
  {
    v10 = objc_opt_new();
    v11 = objc_opt_new();
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v28 = requestsCopy;
    obj = requestsCopy;
    v12 = [obj countByEnumeratingWithState:&v33 objects:v38 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v34;
      while (2)
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v34 != v14)
          {
            objc_enumerationMutation(obj);
          }

          v16 = *(*(&v33 + 1) + 8 * i);
          v17 = objc_alloc(MEMORY[0x1E695D600]);
          fetchRequest = [v16 fetchRequest];
          v19 = [v17 initWithFetchRequest:fetchRequest managedObjectContext:contextCopy sectionNameKeyPath:0 cacheName:nameCopy];

          [v19 setDelegate:v9];
          v32 = 0;
          LOBYTE(fetchRequest) = [v19 performFetch:&v32];
          v20 = v32;
          if ((fetchRequest & 1) == 0)
          {
            v21 = +[STLog persistence];
            if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
            {
              [STGroupFetchedResultsController initWithResultsRequests:v20 cacheName:v21 managedObjectContext:?];
            }

            goto LABEL_14;
          }

          [v10 addObject:v19];
          [v11 addObject:v16];
        }

        v13 = [obj countByEnumeratingWithState:&v33 objects:v38 count:16];
        if (v13)
        {
          continue;
        }

        break;
      }
    }

LABEL_14:

    v22 = [v10 copy];
    resultsControllers = v9->_resultsControllers;
    v9->_resultsControllers = v22;

    v24 = [v11 copy];
    resultsRequests = v9->_resultsRequests;
    v9->_resultsRequests = v24;

    v9->_changeCounter = 0;
    requestsCopy = v28;
  }

  v26 = *MEMORY[0x1E69E9840];
  return v9;
}

- (void)controller:(id)controller didChangeObject:(id)object atIndexPath:(id)path forChangeType:(unint64_t)type newIndexPath:(id)indexPath
{
  controllerCopy = controller;
  objectCopy = object;
  v12 = +[STLog persistence];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    [STGroupFetchedResultsController controller:controllerCopy didChangeObject:objectCopy atIndexPath:v12 forChangeType:? newIndexPath:?];
  }

  delegate = [(STGroupFetchedResultsController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    resultsControllers = [(STGroupFetchedResultsController *)self resultsControllers];
    v15 = [resultsControllers indexOfObject:controllerCopy];

    if (v15 != 0x7FFFFFFFFFFFFFFFLL)
    {
      resultsRequests = [(STGroupFetchedResultsController *)self resultsRequests];
      v17 = [resultsRequests objectAtIndexedSubscript:v15];

      managedObjectContext = [controllerCopy managedObjectContext];
      v20[0] = MEMORY[0x1E69E9820];
      v20[1] = 3221225472;
      v20[2] = __101__STGroupFetchedResultsController_controller_didChangeObject_atIndexPath_forChangeType_newIndexPath___block_invoke;
      v20[3] = &unk_1E7CE76B8;
      v21 = objectCopy;
      v22 = delegate;
      selfCopy = self;
      v24 = v17;
      typeCopy = type;
      v19 = v17;
      [managedObjectContext performBlock:v20];
    }
  }
}

void __101__STGroupFetchedResultsController_controller_didChangeObject_atIndexPath_forChangeType_newIndexPath___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) objectID];
  [*(a1 + 40) groupResultsController:*(a1 + 48) didChangeResultsForRequest:*(a1 + 56) objectID:v2 changeType:*(a1 + 64)];
}

- (void)controllerWillChangeContent:(id)content
{
  [(STGroupFetchedResultsController *)self setChangeCounter:[(STGroupFetchedResultsController *)self changeCounter]+ 1];
  [MEMORY[0x1E69E58C0] cancelPreviousPerformRequestsWithTarget:self selector:sel__evaluateCounter object:self];

  [(STGroupFetchedResultsController *)self performSelector:sel__evaluateCounter withObject:self afterDelay:1.0];
}

- (void)controllerDidChangeContent:(id)content
{
  [(STGroupFetchedResultsController *)self setChangeCounter:[(STGroupFetchedResultsController *)self changeCounter]- 1];
  [MEMORY[0x1E69E58C0] cancelPreviousPerformRequestsWithTarget:self selector:sel__evaluateCounter object:self];

  [(STGroupFetchedResultsController *)self performSelector:sel__evaluateCounter withObject:self afterDelay:1.0];
}

- (void)_evaluateCounter
{
  if (![(STGroupFetchedResultsController *)self changeCounter])
  {
    delegate = [(STGroupFetchedResultsController *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      [delegate groupResultsControllerDidChangeContents:self];
    }
  }
}

- (STGroupFetchedResultsControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)initWithResultsRequests:(uint64_t)a1 cacheName:(NSObject *)a2 managedObjectContext:.cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138543362;
  v4 = a1;
  _os_log_error_impl(&dword_1B831F000, a2, OS_LOG_TYPE_ERROR, "Failed to perform inital results fetch: %{public}@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

- (void)controller:(os_log_t)log didChangeObject:atIndexPath:forChangeType:newIndexPath:.cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = 138412546;
  v5 = a1;
  v6 = 2112;
  v7 = a2;
  _os_log_debug_impl(&dword_1B831F000, log, OS_LOG_TYPE_DEBUG, "Controller: %@ changed content: %@", &v4, 0x16u);
  v3 = *MEMORY[0x1E69E9840];
}

@end