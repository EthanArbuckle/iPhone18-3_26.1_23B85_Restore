@interface BKDisplayCloneMirrorRequestCache
- (void)_lock_rebuildModeCache;
@end

@implementation BKDisplayCloneMirrorRequestCache

- (void)_lock_rebuildModeCache
{
  os_unfair_lock_assert_owner(&self->_lock);
  v3 = objc_alloc_init(NSMutableDictionary);
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v4 = self->_modeRequestsInOrder;
  v5 = [(NSMutableOrderedSet *)v4 countByEnumeratingWithState:&v16 objects:v22 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v17;
    do
    {
      v8 = 0;
      do
      {
        if (*v17 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v16 + 1) + 8 * v8);
        if (v9)
        {
          v10 = *(v9 + 16);
        }

        else
        {
          v10 = 0;
        }

        v11 = v10;
        v12 = [v3 objectForKey:{v11, v16}];

        if (!v12)
        {
          [v3 setObject:v9 forKey:v11];
        }

        v8 = v8 + 1;
      }

      while (v6 != v8);
      v13 = [(NSMutableOrderedSet *)v4 countByEnumeratingWithState:&v16 objects:v22 count:16];
      v6 = v13;
    }

    while (v13);
  }

  objc_storeStrong(&self->_displayUUIDToModeRequest, v3);
  v14 = BKLogDisplay();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = [BSDescriptionStream descriptionForRootObject:v3];
    *buf = 138543362;
    v21 = v15;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "clone mirror cache is now %{public}@", buf, 0xCu);
  }
}

@end