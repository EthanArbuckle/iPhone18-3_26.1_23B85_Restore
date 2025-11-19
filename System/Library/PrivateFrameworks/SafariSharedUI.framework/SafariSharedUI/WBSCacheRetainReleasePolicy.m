@interface WBSCacheRetainReleasePolicy
- (BOOL)isEntryRetainedForKeyString:(id)a3;
- (NSSet)retainedKeyStrings;
- (WBSCacheRetainReleasePolicy)initWithPurgeBlock:(id)a3;
- (void)_releaseEntryForKeyString:(id)a3;
- (void)_retainEntryForKeyString:(id)a3;
- (void)releaseEntriesForKeyStrings:(id)a3;
- (void)releaseEntryWithKeyStringProvider:(id)a3;
- (void)retainEntriesForKeyStrings:(id)a3;
- (void)retainEntryWithKeyStringProvider:(id)a3;
@end

@implementation WBSCacheRetainReleasePolicy

- (WBSCacheRetainReleasePolicy)initWithPurgeBlock:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = WBSCacheRetainReleasePolicy;
  v5 = [(WBSCacheRetainReleasePolicy *)&v14 init];
  if (v5)
  {
    v6 = _Block_copy(v4);
    purgeBlock = v5->_purgeBlock;
    v5->_purgeBlock = v6;

    v8 = [MEMORY[0x1E696AB50] set];
    entryRetainCounts = v5->_entryRetainCounts;
    v5->_entryRetainCounts = v8;

    v10 = [MEMORY[0x1E696AB50] set];
    negativeEntryRetainCounts = v5->_negativeEntryRetainCounts;
    v5->_negativeEntryRetainCounts = v10;

    v12 = v5;
  }

  return v5;
}

- (void)retainEntriesForKeyStrings:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [(WBSCacheRetainReleasePolicy *)self _retainEntryForKeyString:*(*(&v9 + 1) + 8 * v8++)];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (void)retainEntryWithKeyStringProvider:(id)a3
{
  v4 = (*(a3 + 2))(a3, a2);
  [(WBSCacheRetainReleasePolicy *)self _retainEntryForKeyString:v4];
}

- (void)_retainEntryForKeyString:(id)a3
{
  v4 = a3;
  if ([v4 length])
  {
    if ([(NSCountedSet *)self->_negativeEntryRetainCounts containsObject:v4])
    {
      [(NSCountedSet *)self->_negativeEntryRetainCounts removeObject:v4];
    }

    else
    {
      [(NSCountedSet *)self->_entryRetainCounts addObject:v4];
    }
  }
}

- (void)releaseEntriesForKeyStrings:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [(WBSCacheRetainReleasePolicy *)self _releaseEntryForKeyString:*(*(&v9 + 1) + 8 * v8++)];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (void)releaseEntryWithKeyStringProvider:(id)a3
{
  v4 = (*(a3 + 2))(a3, a2);
  [(WBSCacheRetainReleasePolicy *)self _releaseEntryForKeyString:v4];
}

- (void)_releaseEntryForKeyString:(id)a3
{
  v4 = a3;
  if ([v4 length])
  {
    if (([(NSCountedSet *)self->_entryRetainCounts containsObject:v4]& 1) != 0)
    {
      [(NSCountedSet *)self->_entryRetainCounts removeObject:v4];
      if (([(NSCountedSet *)self->_entryRetainCounts containsObject:v4]& 1) == 0)
      {
        (*(self->_purgeBlock + 2))();
      }
    }

    else
    {
      [(NSCountedSet *)self->_negativeEntryRetainCounts addObject:v4];
    }
  }
}

- (BOOL)isEntryRetainedForKeyString:(id)a3
{
  v4 = a3;
  if ([v4 length])
  {
    v5 = [(NSCountedSet *)self->_entryRetainCounts containsObject:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (NSSet)retainedKeyStrings
{
  v2 = [(NSCountedSet *)self->_entryRetainCounts copy];

  return v2;
}

@end