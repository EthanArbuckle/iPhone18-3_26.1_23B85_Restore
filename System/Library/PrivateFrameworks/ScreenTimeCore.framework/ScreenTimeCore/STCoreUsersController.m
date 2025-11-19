@interface STCoreUsersController
- (BOOL)_updateSelectedIndexForDSID:(id)a3 isManaged:(BOOL)a4;
- (NSArray)users;
- (NSFetchedResultsController)childUserController;
- (NSFetchedResultsController)localUserController;
- (STCoreUser)localUser;
- (STCoreUser)selectedUser;
- (STCoreUsersController)initWithManagedObjectContext:(id)a3;
- (void)childUserController;
- (void)controllerDidChangeContent:(id)a3;
- (void)controllerWillChangeContent:(id)a3;
- (void)localUser;
- (void)localUserController;
- (void)refresh;
- (void)setSelectedIndex:(unint64_t)a3;
@end

@implementation STCoreUsersController

- (STCoreUsersController)initWithManagedObjectContext:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = STCoreUsersController;
  v5 = [(STCoreUsersController *)&v8 init];
  managedObjectContext = v5->_managedObjectContext;
  v5->_managedObjectContext = v4;

  return v5;
}

- (STCoreUser)localUser
{
  v4 = [(STCoreUsersController *)self localUserController];
  v5 = [v4 fetchedObjects];

  if (![v5 count])
  {
    [(STCoreUsersController *)a2 localUser];
  }

  if ([v5 count] >= 2)
  {
    v6 = +[STLog screentime];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      [(STCoreUsersController *)v5 localUser];
    }
  }

  v7 = [v5 objectAtIndexedSubscript:0];

  return v7;
}

- (NSFetchedResultsController)localUserController
{
  v16[1] = *MEMORY[0x1E69E9840];
  localUserController = self->_localUserController;
  if (!localUserController)
  {
    v4 = +[STCoreUser fetchRequestMatchingLocalUser];
    v5 = [objc_alloc(MEMORY[0x1E696AEB0]) initWithKey:@"givenName" ascending:1];
    v16[0] = v5;
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:1];
    [v4 setSortDescriptors:v6];

    [v4 setShouldRefreshRefetchedObjects:1];
    v7 = objc_alloc(MEMORY[0x1E695D600]);
    v8 = [(STCoreUsersController *)self managedObjectContext];
    v9 = [v7 initWithFetchRequest:v4 managedObjectContext:v8 sectionNameKeyPath:0 cacheName:0];
    v10 = self->_localUserController;
    self->_localUserController = v9;

    [(NSFetchedResultsController *)self->_localUserController setDelegate:self];
    v11 = self->_localUserController;
    v15 = 0;
    LOBYTE(v8) = [(NSFetchedResultsController *)v11 performFetch:&v15];
    v12 = v15;
    if ((v8 & 1) == 0)
    {
      [STCoreUsersController localUserController];
    }

    localUserController = self->_localUserController;
  }

  v13 = *MEMORY[0x1E69E9840];

  return localUserController;
}

- (NSArray)users
{
  v18[1] = *MEMORY[0x1E69E9840];
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  v3 = [(STCoreUsersController *)self localUser];
  v4 = [(STCoreUsersController *)self managedObjectContext];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __30__STCoreUsersController_users__block_invoke;
  v11[3] = &unk_1E7CE7558;
  v13 = &v14;
  v5 = v3;
  v12 = v5;
  [v4 performBlockAndWait:v11];

  if (*(v15 + 24) == 1)
  {
    v6 = [objc_alloc(MEMORY[0x1E695DF70]) initWithObjects:{v5, 0}];
    v7 = [(STCoreUsersController *)self childUserController];
    v8 = [v7 fetchedObjects];
    [v6 addObjectsFromArray:v8];
  }

  else
  {
    v18[0] = v5;
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:1];
  }

  _Block_object_dispose(&v14, 8);
  v9 = *MEMORY[0x1E69E9840];

  return v6;
}

uint64_t __30__STCoreUsersController_users__block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) isParent])
  {
    result = 1;
  }

  else
  {
    result = [*(a1 + 32) isFamilyOrganizer];
  }

  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (NSFetchedResultsController)childUserController
{
  v17[1] = *MEMORY[0x1E69E9840];
  childUserController = self->_childUserController;
  if (!childUserController)
  {
    v4 = +[STCoreUser fetchRequest];
    v5 = [MEMORY[0x1E696AE18] predicateWithFormat:@"(%K == YES) || (%K == %@) || (%K == %@)", @"familySettings.isManaged", @"familyMemberType", @"Child", @"familyMemberType", @"Teen"];
    [v4 setPredicate:v5];

    v6 = [objc_alloc(MEMORY[0x1E696AEB0]) initWithKey:@"givenName" ascending:1];
    v17[0] = v6;
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:1];
    [v4 setSortDescriptors:v7];

    [v4 setShouldRefreshRefetchedObjects:1];
    v8 = objc_alloc(MEMORY[0x1E695D600]);
    v9 = [(STCoreUsersController *)self managedObjectContext];
    v10 = [v8 initWithFetchRequest:v4 managedObjectContext:v9 sectionNameKeyPath:0 cacheName:0];
    v11 = self->_childUserController;
    self->_childUserController = v10;

    [(NSFetchedResultsController *)self->_childUserController setDelegate:self];
    v12 = self->_childUserController;
    v16 = 0;
    LOBYTE(v9) = [(NSFetchedResultsController *)v12 performFetch:&v16];
    v13 = v16;
    if ((v9 & 1) == 0)
    {
      [STCoreUsersController childUserController];
    }

    childUserController = self->_childUserController;
  }

  v14 = *MEMORY[0x1E69E9840];

  return childUserController;
}

- (STCoreUser)selectedUser
{
  v3 = [(STCoreUsersController *)self users];
  v4 = [v3 objectAtIndexedSubscript:{-[STCoreUsersController selectedIndex](self, "selectedIndex")}];

  return v4;
}

- (void)setSelectedIndex:(unint64_t)a3
{
  v6 = [(STCoreUsersController *)self users];
  v7 = [v6 count];

  if (v7 <= a3)
  {
    [(STCoreUsersController *)a2 setSelectedIndex:?];
  }

  self->_selectedIndex = a3;
}

- (BOOL)_updateSelectedIndexForDSID:(id)a3 isManaged:(BOOL)a4
{
  v6 = a3;
  v7 = [(STCoreUsersController *)self users];
  v12 = MEMORY[0x1E69E9820];
  v13 = 3221225472;
  v14 = __63__STCoreUsersController__updateSelectedIndexForDSID_isManaged___block_invoke;
  v15 = &unk_1E7CE75D0;
  v8 = v6;
  v16 = v8;
  v17 = a4;
  v9 = [v7 indexOfObjectPassingTest:&v12];

  if (v9 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v10 = [STLog screentime:v12];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [(STCoreUsersController *)v8 _updateSelectedIndexForDSID:v10 isManaged:?];
    }
  }

  else
  {
    [(STCoreUsersController *)self setSelectedIndex:v9, v12, v13, v14, v15];
  }

  return v9 != 0x7FFFFFFFFFFFFFFFLL;
}

uint64_t __63__STCoreUsersController__updateSelectedIndexForDSID_isManaged___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v18[0] = 0;
  v18[1] = v18;
  v18[2] = 0x2020000000;
  v19 = 0;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__6;
  v16 = __Block_byref_object_dispose__6;
  v17 = 0;
  v4 = [v3 managedObjectContext];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __63__STCoreUsersController__updateSelectedIndexForDSID_isManaged___block_invoke_55;
  v8[3] = &unk_1E7CE75A8;
  v10 = v18;
  v5 = v3;
  v9 = v5;
  v11 = &v12;
  [v4 performBlockAndWait:v8];

  v6 = [v13[5] isEqualToNumber:*(a1 + 32)];
  _Block_object_dispose(&v12, 8);

  _Block_object_dispose(v18, 8);
  return v6;
}

uint64_t __63__STCoreUsersController__updateSelectedIndexForDSID_isManaged___block_invoke_55(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 24) = [*(a1 + 32) isManaged];
  v2 = [*(a1 + 32) dsid];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8]();
}

- (void)refresh
{
  OUTLINED_FUNCTION_0_10();
  v3 = [MEMORY[0x1E696AAA8] currentHandler];
  [v3 handleFailureInMethod:v2 object:v1 file:@"STCoreUsersController.m" lineNumber:204 description:{@"Failed to fetch the local Screen Time settings: %@", v0}];
}

- (void)controllerWillChangeContent:(id)a3
{
  v9 = a3;
  v4 = [(STCoreUsersController *)self localUserController];

  if (v4 == v9)
  {
    v8 = @"localUser";
  }

  else
  {
    v5 = [(STCoreUsersController *)self childUserController];

    if (v5 == v9)
    {
      v8 = @"users";
    }

    else
    {
      v6 = [(STCoreUsersController *)self settingsController];

      v7 = v9;
      if (v6 != v9)
      {
        goto LABEL_8;
      }

      [(STCoreUsersController *)self willChangeValueForKey:@"localUser.screenTimeEnabled"];
      v8 = @"localUser.syncingEnabled";
    }
  }

  [(STCoreUsersController *)self willChangeValueForKey:v8];
  v7 = v9;
LABEL_8:
}

- (void)controllerDidChangeContent:(id)a3
{
  v9 = a3;
  v4 = [(STCoreUsersController *)self localUserController];

  if (v4 == v9)
  {
    v8 = @"localUser";
  }

  else
  {
    v5 = [(STCoreUsersController *)self childUserController];

    if (v5 == v9)
    {
      v8 = @"users";
    }

    else
    {
      v6 = [(STCoreUsersController *)self settingsController];

      v7 = v9;
      if (v6 != v9)
      {
        goto LABEL_8;
      }

      [(STCoreUsersController *)self didChangeValueForKey:@"localUser.screenTimeEnabled"];
      v8 = @"localUser.syncingEnabled";
    }
  }

  [(STCoreUsersController *)self didChangeValueForKey:v8];
  v7 = v9;
LABEL_8:
}

- (void)localUser
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138543362;
  v4 = a1;
  _os_log_fault_impl(&dword_1B831F000, a2, OS_LOG_TYPE_FAULT, "Fetched more than one local user: %{public}@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

- (void)localUserController
{
  OUTLINED_FUNCTION_0_10();
  v3 = [MEMORY[0x1E696AAA8] currentHandler];
  [v3 handleFailureInMethod:v2 object:v1 file:@"STCoreUsersController.m" lineNumber:76 description:{@"Failed to fetch the local user: %@", v0}];
}

- (void)childUserController
{
  OUTLINED_FUNCTION_0_10();
  v3 = [MEMORY[0x1E696AAA8] currentHandler];
  [v3 handleFailureInMethod:v2 object:v1 file:@"STCoreUsersController.m" lineNumber:131 description:{@"Failed to fetch child users: %@", v0}];
}

- (void)setSelectedIndex:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"STCoreUsersController.m" lineNumber:149 description:{@"Invalid parameter not satisfying: %@", @"selectedIndex < self.users.count"}];
}

- (void)_updateSelectedIndexForDSID:(NSObject *)a3 isManaged:.cold.1(uint64_t a1, void *a2, NSObject *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = [a2 users];
  v7 = 138543618;
  v8 = a1;
  v9 = 2114;
  v10 = v5;
  _os_log_error_impl(&dword_1B831F000, a3, OS_LOG_TYPE_ERROR, "Could not find user with dsid: %{public}@ in users: %{public}@", &v7, 0x16u);

  v6 = *MEMORY[0x1E69E9840];
}

@end