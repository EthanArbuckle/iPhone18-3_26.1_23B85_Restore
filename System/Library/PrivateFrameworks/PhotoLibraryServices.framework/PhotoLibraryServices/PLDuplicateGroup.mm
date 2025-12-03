@interface PLDuplicateGroup
- (NSSet)excludedGroup;
- (NSSet)group;
- (NSSet)subGroups;
- (PLDuplicateGroup)initWithGroupResults:(id)results;
- (id)debugDescription;
- (id)printStringListFromOIDs:(id)ds;
- (void)addManagedObjectID:(id)d;
- (void)addSubGroup:(id)group;
- (void)compactSubGroups;
- (void)excludeManagedObjectID:(id)d;
- (void)replaceSubGroups:(id)groups;
@end

@implementation PLDuplicateGroup

- (void)compactSubGroups
{
  v23 = *MEMORY[0x1E69E9840];
  p_mutableSubGroups = &self->_mutableSubGroups;
  v4 = self->_mutableSubGroups;
  if ([(NSMutableSet *)v4 count]== 1)
  {
    [(NSMutableSet *)*p_mutableSubGroups removeAllObjects];
  }

  else if ([(NSMutableSet *)v4 count]>= 2)
  {
    v5 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v6 = v4;
    v7 = [(NSMutableSet *)v6 countByEnumeratingWithState:&v16 objects:v22 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v17;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v17 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v16 + 1) + 8 * i);
          if ([v11 count] == 1)
          {
            mutableExcludedGroup = self->_mutableExcludedGroup;
            anyObject = [v11 anyObject];
            [(NSMutableSet *)mutableExcludedGroup addObject:anyObject];
          }

          else
          {
            [v5 addObject:v11];
          }
        }

        v8 = [(NSMutableSet *)v6 countByEnumeratingWithState:&v16 objects:v22 count:16];
      }

      while (v8);
    }

    objc_storeStrong(p_mutableSubGroups, v5);
    if (![(NSMutableSet *)*p_mutableSubGroups count])
    {
      [(NSMutableSet *)self->_mutableGroup minusSet:self->_mutableExcludedGroup];
    }
  }

  v14 = PLDuplicateDetectionGetLog();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    v15 = [(PLDuplicateGroup *)self debugDescription];
    *buf = 138543362;
    v21 = v15;
    _os_log_impl(&dword_19BF1F000, v14, OS_LOG_TYPE_INFO, "Duplicate Grouping: Compact results: %{public}@", buf, 0xCu);
  }
}

- (void)excludeManagedObjectID:(id)d
{
  dCopy = d;
  [(PLDuplicateGroup *)self addManagedObjectID:dCopy];
  [(NSMutableSet *)self->_mutableExcludedGroup addObject:dCopy];
}

- (void)replaceSubGroups:(id)groups
{
  groupsCopy = groups;
  v9 = groupsCopy;
  if (!groupsCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLDuplicateGroup.m" lineNumber:95 description:{@"Invalid parameter not satisfying: %@", @"subGroups"}];

    groupsCopy = 0;
  }

  v6 = [groupsCopy mutableCopy];
  mutableSubGroups = self->_mutableSubGroups;
  self->_mutableSubGroups = v6;
}

- (void)addSubGroup:(id)group
{
  groupCopy = group;
  v7 = groupCopy;
  if (!groupCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLDuplicateGroup.m" lineNumber:90 description:{@"Invalid parameter not satisfying: %@", @"subGroup"}];

    groupCopy = 0;
  }

  [(NSMutableSet *)self->_mutableSubGroups addObject:groupCopy];
}

- (void)addManagedObjectID:(id)d
{
  dCopy = d;
  v7 = dCopy;
  if (!dCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLDuplicateGroup.m" lineNumber:85 description:{@"Invalid parameter not satisfying: %@", @"objectID"}];

    dCopy = 0;
  }

  [(NSMutableSet *)self->_mutableGroup addObject:dCopy];
}

- (NSSet)subGroups
{
  v2 = [(NSMutableSet *)self->_mutableSubGroups copy];

  return v2;
}

- (NSSet)excludedGroup
{
  v2 = [(NSMutableSet *)self->_mutableExcludedGroup copy];

  return v2;
}

- (NSSet)group
{
  v2 = [(NSMutableSet *)self->_mutableGroup copy];

  return v2;
}

- (id)debugDescription
{
  v3 = objc_alloc(MEMORY[0x1E696AD60]);
  v20.receiver = self;
  v20.super_class = PLDuplicateGroup;
  v4 = [(PLDuplicateGroup *)&v20 description];
  v5 = [v3 initWithString:v4];

  [v5 appendString:@" Group:{ "];
  group = [(PLDuplicateGroup *)self group];
  v7 = [(PLDuplicateGroup *)self printStringListFromOIDs:group];
  [v5 appendString:v7];

  [v5 appendString:{@" }, SubGroup:{ "}];
  subGroups = [(PLDuplicateGroup *)self subGroups];
  v14 = MEMORY[0x1E69E9820];
  v15 = 3221225472;
  v16 = __36__PLDuplicateGroup_debugDescription__block_invoke;
  v17 = &unk_1E756EA78;
  v9 = v5;
  v18 = v9;
  selfCopy = self;
  [subGroups enumerateObjectsUsingBlock:&v14];

  [v9 appendString:{@" }, Excluded Group:{ ", v14, v15, v16, v17}];
  excludedGroup = [(PLDuplicateGroup *)self excludedGroup];
  v11 = [(PLDuplicateGroup *)self printStringListFromOIDs:excludedGroup];
  [v9 appendString:v11];

  [v9 appendString:@" }"];
  v12 = v9;

  return v9;
}

uint64_t __36__PLDuplicateGroup_debugDescription__block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v3 appendString:@"{ "];
  v5 = *(a1 + 32);
  v6 = [*(a1 + 40) printStringListFromOIDs:v4];

  [v5 appendString:v6];
  v7 = *(a1 + 32);

  return [v7 appendString:@" }"];
}

- (id)printStringListFromOIDs:(id)ds
{
  v20 = *MEMORY[0x1E69E9840];
  dsCopy = ds;
  v4 = objc_alloc_init(MEMORY[0x1E696AD60]);
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = dsCopy;
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    v9 = 1;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        if ((v9 & 1) == 0)
        {
          [v4 appendString:{@", "}];
        }

        uRIRepresentation = [v11 URIRepresentation];
        relativePath = [uRIRepresentation relativePath];
        [v4 appendFormat:@"%@", relativePath];

        v9 = 0;
      }

      v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
      v9 = 0;
    }

    while (v7);
  }

  return v4;
}

- (PLDuplicateGroup)initWithGroupResults:(id)results
{
  resultsCopy = results;
  v13.receiver = self;
  v13.super_class = PLDuplicateGroup;
  v5 = [(PLDuplicateGroup *)&v13 init];
  if (v5)
  {
    if (resultsCopy)
    {
      v6 = [resultsCopy mutableCopy];
    }

    else
    {
      v6 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    }

    mutableGroup = v5->_mutableGroup;
    v5->_mutableGroup = v6;

    v8 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    mutableExcludedGroup = v5->_mutableExcludedGroup;
    v5->_mutableExcludedGroup = v8;

    v10 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    mutableSubGroups = v5->_mutableSubGroups;
    v5->_mutableSubGroups = v10;
  }

  return v5;
}

@end