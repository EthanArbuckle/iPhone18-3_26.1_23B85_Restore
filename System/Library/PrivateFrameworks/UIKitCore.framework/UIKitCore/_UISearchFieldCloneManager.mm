@interface _UISearchFieldCloneManager
- (id)description;
- (void)addClone:(id)clone;
- (void)cloneDidMoveToWindowNotification:(id)notification;
- (void)refreshCloneAssignments;
- (void)updateClonesOfSearchField:(id)field updates:(id)updates;
@end

@implementation _UISearchFieldCloneManager

- (void)addClone:(id)clone
{
  v13 = *MEMORY[0x1E69E9840];
  cloneCopy = clone;
  if (cloneCopy)
  {
    recentClones = self->_recentClones;
    if (!recentClones)
    {
      v6 = [MEMORY[0x1E695DFA8] set];
      v7 = self->_recentClones;
      self->_recentClones = v6;

      recentClones = self->_recentClones;
    }

    [(NSMutableSet *)recentClones addObject:cloneCopy];
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:self selector:sel_cloneDidMoveToWindowNotification_ name:@"_UISearchTextFieldMovedToWindowNotification" object:cloneCopy];
  }

  else if (os_variant_has_internal_diagnostics())
  {
    v10 = __UIFaultDebugAssertLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      v11 = 136315138;
      v12 = "[_UISearchFieldCloneManager addClone:]";
      _os_log_fault_impl(&dword_188A29000, v10, OS_LOG_TYPE_FAULT, "%s: Can't add nil for clone. Ignoring.", &v11, 0xCu);
    }
  }

  else
  {
    v9 = *(__UILogGetCategoryCachedImpl("Assert", &addClone____s_category) + 8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v11 = 136315138;
      v12 = "[_UISearchFieldCloneManager addClone:]";
      _os_log_impl(&dword_188A29000, v9, OS_LOG_TYPE_ERROR, "%s: Can't add nil for clone. Ignoring.", &v11, 0xCu);
    }
  }
}

- (void)cloneDidMoveToWindowNotification:(id)notification
{
  object = [notification object];
  activeClone = self->_activeClone;
  self->_activeClone = object;

  [(_UISearchFieldCloneManager *)self refreshCloneAssignments];
}

- (void)refreshCloneAssignments
{
  v21 = *MEMORY[0x1E69E9840];
  p_recentClones = &self->_recentClones;
  v4 = [(NSMutableSet *)self->_recentClones mutableCopy];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  location = p_recentClones;
  v5 = *p_recentClones;
  v6 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v17;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        superview = [v10 superview];

        if (!superview)
        {
          defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
          [defaultCenter removeObserver:self name:@"_UISearchTextFieldMovedToWindowNotification" object:v10];

          [v4 removeObject:v10];
        }
      }

      v7 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v7);
  }

  objc_storeStrong(location, v4);
  if (![*location count])
  {
    activeClone = self->_activeClone;
    self->_activeClone = 0;

    cloneUndergoingUpdates = self->_cloneUndergoingUpdates;
    self->_cloneUndergoingUpdates = 0;
  }
}

- (void)updateClonesOfSearchField:(id)field updates:(id)updates
{
  v20 = *MEMORY[0x1E69E9840];
  fieldCopy = field;
  updatesCopy = updates;
  if (![(_UISearchFieldCloneManager *)self isUpdatingClone])
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v8 = self->_recentClones;
    v9 = [(NSMutableSet *)v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v16;
      do
      {
        v12 = 0;
        do
        {
          if (*v16 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v15 + 1) + 8 * v12);
          if (v13 != fieldCopy)
          {
            objc_storeStrong(&self->_cloneUndergoingUpdates, *(*(&v15 + 1) + 8 * v12));
            (updatesCopy)[2](updatesCopy, v13);
            cloneUndergoingUpdates = self->_cloneUndergoingUpdates;
            self->_cloneUndergoingUpdates = 0;
          }

          ++v12;
        }

        while (v10 != v12);
        v10 = [(NSMutableSet *)v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v10);
    }
  }
}

- (id)description
{
  v8.receiver = self;
  v8.super_class = _UISearchFieldCloneManager;
  v3 = [(_UISearchFieldCloneManager *)&v8 description];
  if ([(NSMutableSet *)self->_recentClones count])
  {
    v4 = [v3 stringByAppendingFormat:@" all=%p", self->_recentClones];

    v3 = v4;
  }

  if (self->_activeClone)
  {
    v5 = [v3 stringByAppendingFormat:@" active=%p", self->_activeClone];

    v3 = v5;
  }

  if ([(_UISearchFieldCloneManager *)self isUpdatingClone])
  {
    v6 = [v3 stringByAppendingFormat:@" updating=%p", self->_cloneUndergoingUpdates];

    v3 = v6;
  }

  return v3;
}

@end