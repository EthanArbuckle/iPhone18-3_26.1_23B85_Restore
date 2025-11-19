@interface _UITableViewDropPlaceholderContextImpl
- (BOOL)commitInsertionWithDataSourceUpdates:(id)a3;
- (BOOL)deletePlaceholder;
- (_UITableViewDropPlaceholderContextImpl)initWithDelegate:(id)a3 dragItem:(id)a4 reuseIdentifier:(id)a5 rowHeight:(double)a6 cellUpdateHandler:(id)a7;
- (_UITableViewPlaceholderContextDelegate)delegate;
- (void)addAnimations:(id)a3;
- (void)addCompletion:(id)a3;
@end

@implementation _UITableViewDropPlaceholderContextImpl

- (_UITableViewDropPlaceholderContextImpl)initWithDelegate:(id)a3 dragItem:(id)a4 reuseIdentifier:(id)a5 rowHeight:(double)a6 cellUpdateHandler:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a7;
  v21.receiver = self;
  v21.super_class = _UITableViewDropPlaceholderContextImpl;
  v16 = [(_UITableViewDropPlaceholderContextImpl *)&v21 init];
  v17 = v16;
  if (v16)
  {
    objc_storeWeak(&v16->_delegate, v12);
    objc_storeStrong(&v17->_dragItem, a4);
    objc_storeStrong(&v17->_reuseIdentifier, a5);
    v17->_rowHeight = a6;
    v18 = [v15 copy];
    cellUpdateHandler = v17->_cellUpdateHandler;
    v17->_cellUpdateHandler = v18;
  }

  return v17;
}

- (void)addAnimations:(id)a3
{
  v13 = *MEMORY[0x1E69E9840];
  v5 = a3;
  has_internal_diagnostics = os_variant_has_internal_diagnostics();
  animator = self->_animator;
  if (has_internal_diagnostics)
  {
    if (!animator)
    {
      v8 = __UIFaultDebugAssertLog();
      if (!os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
      {
LABEL_10:

        goto LABEL_3;
      }

      v9 = NSStringFromSelector(a2);
      v11 = 138412290;
      v12 = v9;
      _os_log_fault_impl(&dword_188A29000, v8, OS_LOG_TYPE_FAULT, "The animator should always be non-nil when %@ is called", &v11, 0xCu);
LABEL_9:

      goto LABEL_10;
    }
  }

  else if (!animator)
  {
    v10 = *(__UILogGetCategoryCachedImpl("Assert", &addAnimations____s_category) + 8);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v8 = v10;
      v9 = NSStringFromSelector(a2);
      v11 = 138412290;
      v12 = v9;
      _os_log_impl(&dword_188A29000, v8, OS_LOG_TYPE_ERROR, "The animator should always be non-nil when %@ is called", &v11, 0xCu);
      goto LABEL_9;
    }
  }

LABEL_3:
  [(UIDragAnimating *)self->_animator addAnimations:v5];
}

- (void)addCompletion:(id)a3
{
  v13 = *MEMORY[0x1E69E9840];
  v5 = a3;
  has_internal_diagnostics = os_variant_has_internal_diagnostics();
  animator = self->_animator;
  if (has_internal_diagnostics)
  {
    if (!animator)
    {
      v8 = __UIFaultDebugAssertLog();
      if (!os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
      {
LABEL_10:

        goto LABEL_3;
      }

      v9 = NSStringFromSelector(a2);
      v11 = 138412290;
      v12 = v9;
      _os_log_fault_impl(&dword_188A29000, v8, OS_LOG_TYPE_FAULT, "The animator should always be non-nil when %@ is called", &v11, 0xCu);
LABEL_9:

      goto LABEL_10;
    }
  }

  else if (!animator)
  {
    v10 = *(__UILogGetCategoryCachedImpl("Assert", &addCompletion____s_category) + 8);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v8 = v10;
      v9 = NSStringFromSelector(a2);
      v11 = 138412290;
      v12 = v9;
      _os_log_impl(&dword_188A29000, v8, OS_LOG_TYPE_ERROR, "The animator should always be non-nil when %@ is called", &v11, 0xCu);
      goto LABEL_9;
    }
  }

LABEL_3:
  [(UIDragAnimating *)self->_animator addCompletion:v5];
}

- (BOOL)commitInsertionWithDataSourceUpdates:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    [v9 handleFailureInMethod:a2 object:self file:@"_UITableViewDropCoordinator.m" lineNumber:406 description:@"Must provide a block of data source updates to run when committing the insertion of a placeholder."];
  }

  if (pthread_main_np() != 1)
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    v11 = NSStringFromSelector(a2);
    [v10 handleFailureInMethod:a2 object:self file:@"_UITableViewDropCoordinator.m" lineNumber:409 description:{@"%@ must be called from the main queue!", v11}];
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v7 = [WeakRetained commitPlaceholderInsertionWithContext:self dataSourceUpdates:v5];

  return v7;
}

- (BOOL)deletePlaceholder
{
  if (pthread_main_np() != 1)
  {
    v7 = [MEMORY[0x1E696AAA8] currentHandler];
    v8 = NSStringFromSelector(a2);
    [v7 handleFailureInMethod:a2 object:self file:@"_UITableViewDropCoordinator.m" lineNumber:417 description:{@"%@ must be called from the main queue!", v8}];
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v5 = [WeakRetained deletePlaceholder:self];

  return v5;
}

- (_UITableViewPlaceholderContextDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end