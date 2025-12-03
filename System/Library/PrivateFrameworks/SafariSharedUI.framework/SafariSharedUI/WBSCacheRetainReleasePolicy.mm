@interface WBSCacheRetainReleasePolicy
- (BOOL)isEntryRetainedForKeyString:(id)string;
- (NSSet)retainedKeyStrings;
- (WBSCacheRetainReleasePolicy)initWithPurgeBlock:(id)block;
- (void)_releaseEntryForKeyString:(id)string;
- (void)_retainEntryForKeyString:(id)string;
- (void)releaseEntriesForKeyStrings:(id)strings;
- (void)releaseEntryWithKeyStringProvider:(id)provider;
- (void)retainEntriesForKeyStrings:(id)strings;
- (void)retainEntryWithKeyStringProvider:(id)provider;
@end

@implementation WBSCacheRetainReleasePolicy

- (WBSCacheRetainReleasePolicy)initWithPurgeBlock:(id)block
{
  blockCopy = block;
  v14.receiver = self;
  v14.super_class = WBSCacheRetainReleasePolicy;
  v5 = [(WBSCacheRetainReleasePolicy *)&v14 init];
  if (v5)
  {
    v6 = _Block_copy(blockCopy);
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

- (void)retainEntriesForKeyStrings:(id)strings
{
  v14 = *MEMORY[0x1E69E9840];
  stringsCopy = strings;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = [stringsCopy countByEnumeratingWithState:&v9 objects:v13 count:16];
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
          objc_enumerationMutation(stringsCopy);
        }

        [(WBSCacheRetainReleasePolicy *)self _retainEntryForKeyString:*(*(&v9 + 1) + 8 * v8++)];
      }

      while (v6 != v8);
      v6 = [stringsCopy countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (void)retainEntryWithKeyStringProvider:(id)provider
{
  v4 = (*(provider + 2))(provider, a2);
  [(WBSCacheRetainReleasePolicy *)self _retainEntryForKeyString:v4];
}

- (void)_retainEntryForKeyString:(id)string
{
  stringCopy = string;
  if ([stringCopy length])
  {
    if ([(NSCountedSet *)self->_negativeEntryRetainCounts containsObject:stringCopy])
    {
      [(NSCountedSet *)self->_negativeEntryRetainCounts removeObject:stringCopy];
    }

    else
    {
      [(NSCountedSet *)self->_entryRetainCounts addObject:stringCopy];
    }
  }
}

- (void)releaseEntriesForKeyStrings:(id)strings
{
  v14 = *MEMORY[0x1E69E9840];
  stringsCopy = strings;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = [stringsCopy countByEnumeratingWithState:&v9 objects:v13 count:16];
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
          objc_enumerationMutation(stringsCopy);
        }

        [(WBSCacheRetainReleasePolicy *)self _releaseEntryForKeyString:*(*(&v9 + 1) + 8 * v8++)];
      }

      while (v6 != v8);
      v6 = [stringsCopy countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (void)releaseEntryWithKeyStringProvider:(id)provider
{
  v4 = (*(provider + 2))(provider, a2);
  [(WBSCacheRetainReleasePolicy *)self _releaseEntryForKeyString:v4];
}

- (void)_releaseEntryForKeyString:(id)string
{
  stringCopy = string;
  if ([stringCopy length])
  {
    if (([(NSCountedSet *)self->_entryRetainCounts containsObject:stringCopy]& 1) != 0)
    {
      [(NSCountedSet *)self->_entryRetainCounts removeObject:stringCopy];
      if (([(NSCountedSet *)self->_entryRetainCounts containsObject:stringCopy]& 1) == 0)
      {
        (*(self->_purgeBlock + 2))();
      }
    }

    else
    {
      [(NSCountedSet *)self->_negativeEntryRetainCounts addObject:stringCopy];
    }
  }
}

- (BOOL)isEntryRetainedForKeyString:(id)string
{
  stringCopy = string;
  if ([stringCopy length])
  {
    v5 = [(NSCountedSet *)self->_entryRetainCounts containsObject:stringCopy];
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