@interface MTFetchedResultsController
- (BOOL)_hasManagedObjectChanged:(id)changed;
- (BOOL)performFetch:(id *)fetch;
- (MTFetchedResultsController)initWithFetchRequest:(id)request managedObjectContext:(id)context sectionNameKeyPath:(id)path cacheName:(id)name;
- (NSFetchedResultsControllerDelegate)delegate;
- (id)_dictionaryForObject:(id)object;
- (void)_updateCacheWithManagedObject:(id)object;
- (void)controller:(id)controller didChangeObject:(id)object atIndexPath:(id)path forChangeType:(unint64_t)type newIndexPath:(id)indexPath;
- (void)controllerDidChangeContent:(id)content;
- (void)controllerWillChangeContent:(id)content;
- (void)setPropertyKeys:(id)keys;
@end

@implementation MTFetchedResultsController

- (MTFetchedResultsController)initWithFetchRequest:(id)request managedObjectContext:(id)context sectionNameKeyPath:(id)path cacheName:(id)name
{
  requestCopy = request;
  contextCopy = context;
  pathCopy = path;
  nameCopy = name;
  v22.receiver = self;
  v22.super_class = MTFetchedResultsController;
  v14 = [(MTFetchedResultsController *)&v22 init];
  if (v14)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    propertyCache = v14->_propertyCache;
    v14->_propertyCache = dictionary;

    v17 = [objc_alloc(MEMORY[0x1E695D600]) initWithFetchRequest:requestCopy managedObjectContext:contextCopy sectionNameKeyPath:pathCopy cacheName:nameCopy];
    frc = v14->_frc;
    v14->_frc = v17;

    [(NSFetchedResultsController *)v14->_frc setDelegate:v14];
    array = [MEMORY[0x1E695DF70] array];
    changes = v14->_changes;
    v14->_changes = array;
  }

  return v14;
}

- (BOOL)performFetch:(id *)fetch
{
  v18 = *MEMORY[0x1E69E9840];
  [(NSMutableDictionary *)self->_propertyCache removeAllObjects];
  v5 = [(NSFetchedResultsController *)self->_frc performFetch:fetch];
  if (v5)
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    fetchedObjects = [(NSFetchedResultsController *)self->_frc fetchedObjects];
    v7 = [fetchedObjects countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v14;
      do
      {
        v10 = 0;
        do
        {
          if (*v14 != v9)
          {
            objc_enumerationMutation(fetchedObjects);
          }

          [(MTFetchedResultsController *)self _updateCacheWithManagedObject:*(*(&v13 + 1) + 8 * v10++)];
        }

        while (v8 != v10);
        v8 = [fetchedObjects countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v8);
    }
  }

  v11 = *MEMORY[0x1E69E9840];
  return v5;
}

- (void)setPropertyKeys:(id)keys
{
  v18 = *MEMORY[0x1E69E9840];
  keysCopy = keys;
  p_propertyKeys = &self->_propertyKeys;
  propertyKeys = self->_propertyKeys;
  if (propertyKeys != keysCopy && ![(NSArray *)propertyKeys isEqualToArray:keysCopy])
  {
    if ([(NSArray *)keysCopy containsObject:@"episodes"])
    {
      v8 = _MTLogCategoryDatabase();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        fetchRequest = [(MTFetchedResultsController *)self fetchRequest];
        entityName = [fetchRequest entityName];
        fetchRequest2 = [(MTFetchedResultsController *)self fetchRequest];
        predicate = [fetchRequest2 predicate];
        v14 = 138543618;
        v15 = entityName;
        v16 = 2114;
        v17 = predicate;
        _os_log_impl(&dword_1D8CEC000, v8, OS_LOG_TYPE_ERROR, "MTFetchedResultsController with episodes within property keys detected - entity %{public}@ - predicate %{public}@", &v14, 0x16u);
      }
    }

    objc_storeStrong(p_propertyKeys, keys);
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (void)controller:(id)controller didChangeObject:(id)object atIndexPath:(id)path forChangeType:(unint64_t)type newIndexPath:(id)indexPath
{
  controllerCopy = controller;
  objectCopy = object;
  pathCopy = path;
  indexPathCopy = indexPath;
  propertyKeys = [(MTFetchedResultsController *)self propertyKeys];
  v17 = [propertyKeys count];

  if (!v17)
  {
    delegate = [(MTFetchedResultsController *)self delegate];
    v20 = objc_opt_respondsToSelector();

    if ((v20 & 1) == 0)
    {
      goto LABEL_20;
    }

    delegate2 = [(MTFetchedResultsController *)self delegate];
    [delegate2 controller:controllerCopy didChangeObject:objectCopy atIndexPath:pathCopy forChangeType:type newIndexPath:indexPathCopy];
    goto LABEL_8;
  }

  if (type <= 2)
  {
    if (type != 1)
    {
      if (type == 2)
      {
        objectID = [objectCopy objectID];
        [(MTFetchedResultsController *)self _removeObjectFromCacheWithId:objectID];
      }

      goto LABEL_13;
    }

    goto LABEL_12;
  }

  if (type == 3)
  {
LABEL_12:
    [(MTFetchedResultsController *)self _updateCacheWithManagedObject:objectCopy];
    goto LABEL_13;
  }

  if (type == 4)
  {
    if ([(MTFetchedResultsController *)self _hasManagedObjectChanged:objectCopy])
    {
      goto LABEL_12;
    }

    delegate2 = _MTLogCategoryDatabase();
    if (os_log_type_enabled(delegate2, OS_LOG_TYPE_DEBUG))
    {
      *v25 = 0;
      _os_log_impl(&dword_1D8CEC000, delegate2, OS_LOG_TYPE_DEBUG, "Managed object was updated, but none of the properties we care about changed", v25, 2u);
    }

LABEL_8:

    goto LABEL_20;
  }

LABEL_13:
  v22 = objc_opt_new();
  v23 = v22;
  if (objectCopy)
  {
    [v22 setObject:objectCopy forKeyedSubscript:@"object"];
  }

  if (pathCopy)
  {
    [v23 setObject:pathCopy forKeyedSubscript:@"indexPath"];
  }

  v24 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:type];
  [v23 setObject:v24 forKeyedSubscript:@"type"];

  if (indexPathCopy)
  {
    [v23 setObject:indexPathCopy forKeyedSubscript:@"newIndexPath"];
  }

  [(NSMutableArray *)self->_changes addObject:v23];

LABEL_20:
}

- (void)controllerWillChangeContent:(id)content
{
  contentCopy = content;
  propertyKeys = [(MTFetchedResultsController *)self propertyKeys];
  v5 = [propertyKeys count];

  if (!v5)
  {
    delegate = [(MTFetchedResultsController *)self delegate];
    v7 = objc_opt_respondsToSelector();

    if (v7)
    {
      delegate2 = [(MTFetchedResultsController *)self delegate];
      [delegate2 controllerWillChangeContent:contentCopy];
    }
  }
}

- (void)controllerDidChangeContent:(id)content
{
  v29 = *MEMORY[0x1E69E9840];
  contentCopy = content;
  propertyKeys = [(MTFetchedResultsController *)self propertyKeys];
  v5 = [propertyKeys count];

  if (v5)
  {
    if ([(NSMutableArray *)self->_changes count])
    {
      delegate = [(MTFetchedResultsController *)self delegate];
      if (objc_opt_respondsToSelector())
      {
        [delegate controllerWillChangeContent:contentCopy];
      }

      if (objc_opt_respondsToSelector())
      {
        v26 = 0u;
        v27 = 0u;
        v24 = 0u;
        v25 = 0u;
        selfCopy = self;
        obj = self->_changes;
        v7 = [(NSMutableArray *)obj countByEnumeratingWithState:&v24 objects:v28 count:16];
        if (v7)
        {
          v8 = v7;
          v9 = *v25;
          do
          {
            for (i = 0; i != v8; ++i)
            {
              if (*v25 != v9)
              {
                objc_enumerationMutation(obj);
              }

              v11 = *(*(&v24 + 1) + 8 * i);
              v12 = [v11 objectForKeyedSubscript:@"object"];
              v13 = [v11 objectForKeyedSubscript:@"indexPath"];
              v14 = [v11 objectForKeyedSubscript:@"type"];
              unsignedIntegerValue = [v14 unsignedIntegerValue];
              v16 = [v11 objectForKeyedSubscript:@"newIndexPath"];
              [delegate controller:contentCopy didChangeObject:v12 atIndexPath:v13 forChangeType:unsignedIntegerValue newIndexPath:v16];
            }

            v8 = [(NSMutableArray *)obj countByEnumeratingWithState:&v24 objects:v28 count:16];
          }

          while (v8);
        }

        self = selfCopy;
      }

      [(NSMutableArray *)self->_changes removeAllObjects];
      if (objc_opt_respondsToSelector())
      {
        [delegate controllerDidChangeContent:contentCopy];
      }
    }
  }

  else
  {
    delegate2 = [(MTFetchedResultsController *)self delegate];
    v18 = objc_opt_respondsToSelector();

    if (v18)
    {
      delegate3 = [(MTFetchedResultsController *)self delegate];
      [delegate3 controllerDidChangeContent:contentCopy];
    }
  }

  v20 = *MEMORY[0x1E69E9840];
}

- (id)_dictionaryForObject:(id)object
{
  v19 = *MEMORY[0x1E69E9840];
  objectCopy = object;
  propertyKeys = [(MTFetchedResultsController *)self propertyKeys];

  if (!propertyKeys)
  {
    v6 = _MTLogCategoryDatabase();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      fetchRequest = [(MTFetchedResultsController *)self fetchRequest];
      entityName = [fetchRequest entityName];
      fetchRequest2 = [(MTFetchedResultsController *)self fetchRequest];
      predicate = [fetchRequest2 predicate];
      v15 = 138543618;
      v16 = entityName;
      v17 = 2114;
      v18 = predicate;
      _os_log_impl(&dword_1D8CEC000, v6, OS_LOG_TYPE_ERROR, "MTFetchedResultsController with null property keys detected - entity %{public}@ - predicate %{public}@", &v15, 0x16u);
    }
  }

  propertyKeys2 = [(MTFetchedResultsController *)self propertyKeys];
  v12 = [objectCopy dictionaryWithValuesForKeys:propertyKeys2];

  v13 = *MEMORY[0x1E69E9840];

  return v12;
}

- (void)_updateCacheWithManagedObject:(id)object
{
  objectCopy = object;
  v4 = [(MTFetchedResultsController *)self _dictionaryForObject:?];
  if (v4)
  {
    propertyCache = self->_propertyCache;
    objectID = [objectCopy objectID];
    [(NSMutableDictionary *)propertyCache setObject:v4 forKeyedSubscript:objectID];
  }
}

- (BOOL)_hasManagedObjectChanged:(id)changed
{
  changedCopy = changed;
  objectID = [changedCopy objectID];
  v6 = [(MTFetchedResultsController *)self _dictionaryFromCacheForObjectID:objectID];

  v7 = [(MTFetchedResultsController *)self _dictionaryForObject:changedCopy];

  LOBYTE(changedCopy) = [v6 isEqualToDictionary:v7];
  return changedCopy ^ 1;
}

- (NSFetchedResultsControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end