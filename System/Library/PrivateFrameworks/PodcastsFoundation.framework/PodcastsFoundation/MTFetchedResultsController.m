@interface MTFetchedResultsController
- (BOOL)_hasManagedObjectChanged:(id)a3;
- (BOOL)performFetch:(id *)a3;
- (MTFetchedResultsController)initWithFetchRequest:(id)a3 managedObjectContext:(id)a4 sectionNameKeyPath:(id)a5 cacheName:(id)a6;
- (NSFetchedResultsControllerDelegate)delegate;
- (id)_dictionaryForObject:(id)a3;
- (void)_updateCacheWithManagedObject:(id)a3;
- (void)controller:(id)a3 didChangeObject:(id)a4 atIndexPath:(id)a5 forChangeType:(unint64_t)a6 newIndexPath:(id)a7;
- (void)controllerDidChangeContent:(id)a3;
- (void)controllerWillChangeContent:(id)a3;
- (void)setPropertyKeys:(id)a3;
@end

@implementation MTFetchedResultsController

- (MTFetchedResultsController)initWithFetchRequest:(id)a3 managedObjectContext:(id)a4 sectionNameKeyPath:(id)a5 cacheName:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v22.receiver = self;
  v22.super_class = MTFetchedResultsController;
  v14 = [(MTFetchedResultsController *)&v22 init];
  if (v14)
  {
    v15 = [MEMORY[0x1E695DF90] dictionary];
    propertyCache = v14->_propertyCache;
    v14->_propertyCache = v15;

    v17 = [objc_alloc(MEMORY[0x1E695D600]) initWithFetchRequest:v10 managedObjectContext:v11 sectionNameKeyPath:v12 cacheName:v13];
    frc = v14->_frc;
    v14->_frc = v17;

    [(NSFetchedResultsController *)v14->_frc setDelegate:v14];
    v19 = [MEMORY[0x1E695DF70] array];
    changes = v14->_changes;
    v14->_changes = v19;
  }

  return v14;
}

- (BOOL)performFetch:(id *)a3
{
  v18 = *MEMORY[0x1E69E9840];
  [(NSMutableDictionary *)self->_propertyCache removeAllObjects];
  v5 = [(NSFetchedResultsController *)self->_frc performFetch:a3];
  if (v5)
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v6 = [(NSFetchedResultsController *)self->_frc fetchedObjects];
    v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
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
            objc_enumerationMutation(v6);
          }

          [(MTFetchedResultsController *)self _updateCacheWithManagedObject:*(*(&v13 + 1) + 8 * v10++)];
        }

        while (v8 != v10);
        v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v8);
    }
  }

  v11 = *MEMORY[0x1E69E9840];
  return v5;
}

- (void)setPropertyKeys:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = a3;
  p_propertyKeys = &self->_propertyKeys;
  propertyKeys = self->_propertyKeys;
  if (propertyKeys != v5 && ![(NSArray *)propertyKeys isEqualToArray:v5])
  {
    if ([(NSArray *)v5 containsObject:@"episodes"])
    {
      v8 = _MTLogCategoryDatabase();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v9 = [(MTFetchedResultsController *)self fetchRequest];
        v10 = [v9 entityName];
        v11 = [(MTFetchedResultsController *)self fetchRequest];
        v12 = [v11 predicate];
        v14 = 138543618;
        v15 = v10;
        v16 = 2114;
        v17 = v12;
        _os_log_impl(&dword_1D8CEC000, v8, OS_LOG_TYPE_ERROR, "MTFetchedResultsController with episodes within property keys detected - entity %{public}@ - predicate %{public}@", &v14, 0x16u);
      }
    }

    objc_storeStrong(p_propertyKeys, a3);
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (void)controller:(id)a3 didChangeObject:(id)a4 atIndexPath:(id)a5 forChangeType:(unint64_t)a6 newIndexPath:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a7;
  v16 = [(MTFetchedResultsController *)self propertyKeys];
  v17 = [v16 count];

  if (!v17)
  {
    v19 = [(MTFetchedResultsController *)self delegate];
    v20 = objc_opt_respondsToSelector();

    if ((v20 & 1) == 0)
    {
      goto LABEL_20;
    }

    v21 = [(MTFetchedResultsController *)self delegate];
    [v21 controller:v12 didChangeObject:v13 atIndexPath:v14 forChangeType:a6 newIndexPath:v15];
    goto LABEL_8;
  }

  if (a6 <= 2)
  {
    if (a6 != 1)
    {
      if (a6 == 2)
      {
        v18 = [v13 objectID];
        [(MTFetchedResultsController *)self _removeObjectFromCacheWithId:v18];
      }

      goto LABEL_13;
    }

    goto LABEL_12;
  }

  if (a6 == 3)
  {
LABEL_12:
    [(MTFetchedResultsController *)self _updateCacheWithManagedObject:v13];
    goto LABEL_13;
  }

  if (a6 == 4)
  {
    if ([(MTFetchedResultsController *)self _hasManagedObjectChanged:v13])
    {
      goto LABEL_12;
    }

    v21 = _MTLogCategoryDatabase();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
    {
      *v25 = 0;
      _os_log_impl(&dword_1D8CEC000, v21, OS_LOG_TYPE_DEBUG, "Managed object was updated, but none of the properties we care about changed", v25, 2u);
    }

LABEL_8:

    goto LABEL_20;
  }

LABEL_13:
  v22 = objc_opt_new();
  v23 = v22;
  if (v13)
  {
    [v22 setObject:v13 forKeyedSubscript:@"object"];
  }

  if (v14)
  {
    [v23 setObject:v14 forKeyedSubscript:@"indexPath"];
  }

  v24 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a6];
  [v23 setObject:v24 forKeyedSubscript:@"type"];

  if (v15)
  {
    [v23 setObject:v15 forKeyedSubscript:@"newIndexPath"];
  }

  [(NSMutableArray *)self->_changes addObject:v23];

LABEL_20:
}

- (void)controllerWillChangeContent:(id)a3
{
  v9 = a3;
  v4 = [(MTFetchedResultsController *)self propertyKeys];
  v5 = [v4 count];

  if (!v5)
  {
    v6 = [(MTFetchedResultsController *)self delegate];
    v7 = objc_opt_respondsToSelector();

    if (v7)
    {
      v8 = [(MTFetchedResultsController *)self delegate];
      [v8 controllerWillChangeContent:v9];
    }
  }
}

- (void)controllerDidChangeContent:(id)a3
{
  v29 = *MEMORY[0x1E69E9840];
  v23 = a3;
  v4 = [(MTFetchedResultsController *)self propertyKeys];
  v5 = [v4 count];

  if (v5)
  {
    if ([(NSMutableArray *)self->_changes count])
    {
      v6 = [(MTFetchedResultsController *)self delegate];
      if (objc_opt_respondsToSelector())
      {
        [v6 controllerWillChangeContent:v23];
      }

      if (objc_opt_respondsToSelector())
      {
        v26 = 0u;
        v27 = 0u;
        v24 = 0u;
        v25 = 0u;
        v21 = self;
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
              v15 = [v14 unsignedIntegerValue];
              v16 = [v11 objectForKeyedSubscript:@"newIndexPath"];
              [v6 controller:v23 didChangeObject:v12 atIndexPath:v13 forChangeType:v15 newIndexPath:v16];
            }

            v8 = [(NSMutableArray *)obj countByEnumeratingWithState:&v24 objects:v28 count:16];
          }

          while (v8);
        }

        self = v21;
      }

      [(NSMutableArray *)self->_changes removeAllObjects];
      if (objc_opt_respondsToSelector())
      {
        [v6 controllerDidChangeContent:v23];
      }
    }
  }

  else
  {
    v17 = [(MTFetchedResultsController *)self delegate];
    v18 = objc_opt_respondsToSelector();

    if (v18)
    {
      v19 = [(MTFetchedResultsController *)self delegate];
      [v19 controllerDidChangeContent:v23];
    }
  }

  v20 = *MEMORY[0x1E69E9840];
}

- (id)_dictionaryForObject:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(MTFetchedResultsController *)self propertyKeys];

  if (!v5)
  {
    v6 = _MTLogCategoryDatabase();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = [(MTFetchedResultsController *)self fetchRequest];
      v8 = [v7 entityName];
      v9 = [(MTFetchedResultsController *)self fetchRequest];
      v10 = [v9 predicate];
      v15 = 138543618;
      v16 = v8;
      v17 = 2114;
      v18 = v10;
      _os_log_impl(&dword_1D8CEC000, v6, OS_LOG_TYPE_ERROR, "MTFetchedResultsController with null property keys detected - entity %{public}@ - predicate %{public}@", &v15, 0x16u);
    }
  }

  v11 = [(MTFetchedResultsController *)self propertyKeys];
  v12 = [v4 dictionaryWithValuesForKeys:v11];

  v13 = *MEMORY[0x1E69E9840];

  return v12;
}

- (void)_updateCacheWithManagedObject:(id)a3
{
  v7 = a3;
  v4 = [(MTFetchedResultsController *)self _dictionaryForObject:?];
  if (v4)
  {
    propertyCache = self->_propertyCache;
    v6 = [v7 objectID];
    [(NSMutableDictionary *)propertyCache setObject:v4 forKeyedSubscript:v6];
  }
}

- (BOOL)_hasManagedObjectChanged:(id)a3
{
  v4 = a3;
  v5 = [v4 objectID];
  v6 = [(MTFetchedResultsController *)self _dictionaryFromCacheForObjectID:v5];

  v7 = [(MTFetchedResultsController *)self _dictionaryForObject:v4];

  LOBYTE(v4) = [v6 isEqualToDictionary:v7];
  return v4 ^ 1;
}

- (NSFetchedResultsControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end