@interface PXActivityCoordinator
+ (id)coordinatorForActivity:(id)activity;
- (PXActivityCoordinator)init;
- (PXActivityCoordinator)initWithActivityName:(id)name;
- (id)description;
- (void)_update;
- (void)registerItem:(id)item;
- (void)unregisterItem:(id)item;
@end

@implementation PXActivityCoordinator

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 initWithFormat:@"<%@ %p: %@>", v5, self, self->_activityName];

  return v6;
}

- (void)_update
{
  v4 = objc_alloc_init(MEMORY[0x1E696AD50]);
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  records = self->_records;
  v7 = MEMORY[0x1E69E9820];
  v8 = 3221225472;
  v9 = __32__PXActivityCoordinator__update__block_invoke;
  v10 = &unk_1E77469F8;
  v13 = &v15;
  v6 = v4;
  v14 = a2;
  v11 = v6;
  selfCopy = self;
  [(NSMutableArray *)records enumerateObjectsUsingBlock:&v7];
  if (v16[3] >= 1)
  {
    [(NSMutableArray *)self->_records removeObjectsAtIndexes:v6, v7, v8, v9, v10];
  }

  _Block_object_dispose(&v15, 8);
}

void __32__PXActivityCoordinator__update__block_invoke(uint64_t a1, void *a2, unint64_t a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = [v5 item];

  v7 = *(*(a1 + 48) + 8);
  v8 = *(v7 + 24);
  if (v6)
  {
    if (v8 > a3)
    {
      PXAssertGetLog();
    }

    v9 = a3 - v8;
    v10 = PLUIGetLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = *(a1 + 40);
      v12 = [v5 item];
      v14 = 138543874;
      v15 = v11;
      v16 = 2114;
      v17 = v12;
      v18 = 2048;
      v19 = v9;
      _os_log_impl(&dword_1A3C1C000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@ updating item %{public}@ with queue position %ld", &v14, 0x20u);
    }

    v13 = [v5 item];
    [v13 setActivityCoordinatorQueuePosition:v9];
  }

  else
  {
    *(v7 + 24) = v8 + 1;
    [*(a1 + 32) addIndex:a3];
  }
}

- (void)unregisterItem:(id)item
{
  v13 = *MEMORY[0x1E69E9840];
  itemCopy = item;
  v5 = [[PXActivityCoordinatorRecord alloc] initWithItem:itemCopy];
  v6 = [(NSMutableArray *)self->_records indexOfObject:v5];
  if (v6 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = v6;
    v8 = PLUIGetLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138543618;
      selfCopy = self;
      v11 = 2114;
      v12 = itemCopy;
      _os_log_impl(&dword_1A3C1C000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ unregistering item %{public}@", &v9, 0x16u);
    }

    [(NSMutableArray *)self->_records removeObjectAtIndex:v7];
    [(PXActivityCoordinator *)self _update];
  }
}

- (void)registerItem:(id)item
{
  v15 = *MEMORY[0x1E69E9840];
  itemCopy = item;
  v5 = [[PXActivityCoordinatorRecord alloc] initWithItem:itemCopy];
  records = self->_records;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __38__PXActivityCoordinator_registerItem___block_invoke;
  v9[3] = &unk_1E77469D0;
  v7 = v5;
  v10 = v7;
  if ([(NSMutableArray *)records indexOfObjectPassingTest:v9]== 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = PLUIGetLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      selfCopy = self;
      v13 = 2114;
      v14 = itemCopy;
      _os_log_impl(&dword_1A3C1C000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ registering item %{public}@", buf, 0x16u);
    }

    [(NSMutableArray *)self->_records addObject:v7];
    [(PXActivityCoordinator *)self _update];
  }
}

- (PXActivityCoordinator)initWithActivityName:(id)name
{
  nameCopy = name;
  v11.receiver = self;
  v11.super_class = PXActivityCoordinator;
  v5 = [(PXActivityCoordinator *)&v11 init];
  if (v5)
  {
    v6 = [nameCopy copy];
    activityName = v5->_activityName;
    v5->_activityName = v6;

    v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
    records = v5->_records;
    v5->_records = v8;
  }

  return v5;
}

- (PXActivityCoordinator)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXActivityCoordinator.m" lineNumber:42 description:{@"%s is not available as initializer", "-[PXActivityCoordinator init]"}];

  abort();
}

+ (id)coordinatorForActivity:(id)activity
{
  activityCopy = activity;
  if (coordinatorForActivity__onceToken != -1)
  {
    dispatch_once(&coordinatorForActivity__onceToken, &__block_literal_global_217581);
  }

  v4 = [coordinatorForActivity__coordinators objectForKeyedSubscript:activityCopy];
  if (!v4)
  {
    v4 = [[PXActivityCoordinator alloc] initWithActivityName:activityCopy];
    [coordinatorForActivity__coordinators setObject:v4 forKeyedSubscript:activityCopy];
  }

  return v4;
}

void __48__PXActivityCoordinator_coordinatorForActivity___block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v1 = coordinatorForActivity__coordinators;
  coordinatorForActivity__coordinators = v0;
}

@end