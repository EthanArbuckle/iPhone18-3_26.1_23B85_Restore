@interface PFPosterCollection
+ (BOOL)validatePoster:(id)poster;
+ (PFPosterCollection)new;
+ (id)posterUUIDForPoster:(id)poster;
+ (id)postersByDescriptorIdentifier:(id)identifier;
+ (id)postersByProvider:(id)provider;
+ (id)postersByUUID:(id)d;
+ (id)providerForPoster:(id)poster;
- (BOOL)isEmpty;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToCollection:(id)collection;
- (NSDictionary)postersByDescriptorIdentifier;
- (NSDictionary)postersByProvider;
- (NSOrderedSet)postersOrderedByCreationDate;
- (PFPosterCollection)init;
- (PFPosterCollection)initWithArray:(id)array;
- (PFPosterCollection)initWithPosters:(id)posters;
- (PFPosterCollection)initWithSet:(id)set;
- (id)collectionForPostersMatchingPredicate:(id)predicate;
- (id)collectionForPostersMatchingRoles:(id)roles;
- (id)collectionForPostersPassingTest:(id)test;
- (id)collectionForProvider:(id)provider;
- (id)description;
- (id)posterForDescriptor:(id)descriptor;
- (id)posterWithUUID:(id)d;
- (id)postersForProvider:(id)provider;
- (id)postersMatchingRoles:(id)roles;
- (unint64_t)countByEnumeratingWithState:(id *)state objects:(id *)objects count:(unint64_t)count;
@end

@implementation PFPosterCollection

- (PFPosterCollection)init
{
  v3 = [MEMORY[0x1E695DFD8] set];
  v4 = [(PFPosterCollection *)self initWithSet:v3];

  return v4;
}

+ (PFPosterCollection)new
{
  v2 = [self alloc];
  v3 = [MEMORY[0x1E695DFD8] set];
  v4 = [v2 initWithSet:v3];

  return v4;
}

+ (BOOL)validatePoster:(id)poster
{
  posterCopy = poster;
  if (!posterCopy)
  {
    [PFPosterCollection validatePoster:a2];
  }

  v5 = posterCopy;
  v6 = objc_opt_respondsToSelector();

  return v6 & 1;
}

+ (id)providerForPoster:(id)poster
{
  posterCopy = poster;
  if (!posterCopy)
  {
    [PFPosterCollection providerForPoster:a2];
  }

  v5 = posterCopy;
  _path = [posterCopy _path];
  if ([_path isServerPosterPath])
  {
    serverIdentity = [_path serverIdentity];
    provider = [serverIdentity provider];
  }

  else
  {
    provider = 0;
  }

  return provider;
}

+ (id)posterUUIDForPoster:(id)poster
{
  posterCopy = poster;
  if (!posterCopy)
  {
    [PFPosterCollection posterUUIDForPoster:a2];
  }

  v5 = posterCopy;
  _path = [posterCopy _path];
  if ([_path isServerPosterPath])
  {
    serverIdentity = [_path serverIdentity];
    posterUUID = [serverIdentity posterUUID];
  }

  else
  {
    posterUUID = 0;
  }

  return posterUUID;
}

- (PFPosterCollection)initWithPosters:(id)posters
{
  v19 = *MEMORY[0x1E69E9840];
  postersCopy = posters;
  v5 = objc_opt_new();
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = postersCopy;
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      v10 = 0;
      do
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [v5 addObject:{*(*(&v14 + 1) + 8 * v10++), v14}];
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  v11 = [(PFPosterCollection *)self initWithSet:v5];
  v12 = *MEMORY[0x1E69E9840];
  return v11;
}

- (PFPosterCollection)initWithArray:(id)array
{
  v4 = [MEMORY[0x1E695DFD8] setWithArray:array];
  v5 = [(PFPosterCollection *)self initWithSet:v4];

  return v5;
}

- (PFPosterCollection)initWithSet:(id)set
{
  v27 = *MEMORY[0x1E69E9840];
  setCopy = set;
  if (!setCopy)
  {
    [PFPosterCollection initWithSet:a2];
  }

  v6 = setCopy;
  v25.receiver = self;
  v25.super_class = PFPosterCollection;
  v7 = [(PFPosterCollection *)&v25 init];
  if (v7)
  {
    v8 = objc_opt_new();
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v9 = v6;
    v10 = [v9 countByEnumeratingWithState:&v21 objects:v26 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v22;
      do
      {
        v13 = 0;
        do
        {
          if (*v22 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v21 + 1) + 8 * v13);
          if ([objc_opt_class() validatePoster:{v14, v21}])
          {
            [v8 addObject:v14];
          }

          ++v13;
        }

        while (v11 != v13);
        v11 = [v9 countByEnumeratingWithState:&v21 objects:v26 count:16];
      }

      while (v11);
    }

    v15 = [v8 copy];
    posters = v7->_posters;
    v7->_posters = v15;

    v17 = [objc_opt_class() postersByUUID:v7->_posters];
    postersByUUID = v7->_postersByUUID;
    v7->_postersByUUID = v17;
  }

  v19 = *MEMORY[0x1E69E9840];
  return v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (self == equalCopy)
  {
    v9 = 1;
  }

  else if (equalCopy)
  {
    v6 = objc_opt_class();
    v7 = v5;
    if (v6)
    {
      if (objc_opt_isKindOfClass())
      {
        v8 = v7;
      }

      else
      {
        v8 = 0;
      }
    }

    else
    {
      v8 = 0;
    }

    v10 = v8;

    v9 = [(PFPosterCollection *)self isEqualToCollection:v10];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)isEqualToCollection:(id)collection
{
  collectionCopy = collection;
  v5 = collectionCopy;
  if (self == collectionCopy)
  {
    v8 = 1;
  }

  else if (collectionCopy)
  {
    posters = [(PFPosterCollection *)collectionCopy posters];
    posters2 = [(PFPosterCollection *)self posters];
    v8 = BSEqualObjects();
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)postersMatchingRoles:(id)roles
{
  rolesCopy = roles;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __43__PFPosterCollection_postersMatchingRoles___block_invoke;
  v8[3] = &unk_1E8189618;
  v9 = rolesCopy;
  v5 = rolesCopy;
  v6 = [(PFPosterCollection *)self postersPassingTest:v8];

  return v6;
}

uint64_t __43__PFPosterCollection_postersMatchingRoles___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 role];
  v4 = [v2 containsObject:v3];

  return v4;
}

- (id)postersForProvider:(id)provider
{
  providerCopy = provider;
  postersByProvider = [(PFPosterCollection *)self postersByProvider];
  v6 = [postersByProvider objectForKey:providerCopy];

  if (v6)
  {
    v7 = v6;
  }

  else
  {
    v7 = [MEMORY[0x1E695DFD8] set];
  }

  v8 = v7;

  return v8;
}

- (id)collectionForPostersMatchingRoles:(id)roles
{
  rolesCopy = roles;
  v5 = [rolesCopy count];
  v6 = objc_opt_class();
  if (v5)
  {
    v7 = [v6 alloc];
    v8 = [(PFPosterCollection *)self postersMatchingRoles:rolesCopy];
    v9 = [v7 initWithSet:v8];
  }

  else
  {
    v9 = objc_opt_new();
  }

  return v9;
}

- (id)collectionForPostersMatchingPredicate:(id)predicate
{
  predicateCopy = predicate;
  v5 = objc_opt_class();
  if (predicateCopy)
  {
    v6 = [v5 alloc];
    v7 = [(PFPosterCollection *)self postersMatchingPredicate:predicateCopy];
    v8 = [v6 initWithSet:v7];
  }

  else
  {
    v8 = objc_opt_new();
  }

  return v8;
}

- (id)collectionForPostersPassingTest:(id)test
{
  testCopy = test;
  v5 = objc_opt_class();
  if (testCopy)
  {
    v6 = [v5 alloc];
    v7 = [(PFPosterCollection *)self postersPassingTest:testCopy];
    v8 = [v6 initWithSet:v7];
  }

  else
  {
    v8 = objc_opt_new();
  }

  return v8;
}

- (id)collectionForProvider:(id)provider
{
  providerCopy = provider;
  v5 = [providerCopy length];
  v6 = objc_opt_class();
  if (v5)
  {
    v7 = [v6 alloc];
    v8 = [(PFPosterCollection *)self postersForProvider:providerCopy];
    v9 = [v7 initWithSet:v8];
  }

  else
  {
    v9 = objc_opt_new();
  }

  return v9;
}

- (BOOL)isEmpty
{
  posters = [(PFPosterCollection *)self posters];
  v3 = [posters count] == 0;

  return v3;
}

- (id)posterWithUUID:(id)d
{
  dCopy = d;
  postersByUUID = [(PFPosterCollection *)self postersByUUID];
  v6 = [postersByUUID objectForKey:dCopy];

  return v6;
}

- (id)posterForDescriptor:(id)descriptor
{
  descriptorCopy = descriptor;
  postersByDescriptorIdentifier = [(PFPosterCollection *)self postersByDescriptorIdentifier];
  v6 = [postersByDescriptorIdentifier objectForKey:descriptorCopy];

  return v6;
}

- (NSOrderedSet)postersOrderedByCreationDate
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  postersOrderedByCreationDate = selfCopy->_postersOrderedByCreationDate;
  if (postersOrderedByCreationDate)
  {
    v4 = postersOrderedByCreationDate;
  }

  else
  {
    v5 = MEMORY[0x1E695DFA0];
    posters = [(PFPosterCollection *)selfCopy posters];
    v7 = [v5 orderedSetWithSet:posters];

    [v7 sortUsingComparator:&__block_literal_global_10];
    v8 = [v7 copy];
    v9 = selfCopy->_postersOrderedByCreationDate;
    selfCopy->_postersOrderedByCreationDate = v8;

    v4 = selfCopy->_postersOrderedByCreationDate;
  }

  objc_sync_exit(selfCopy);

  return v4;
}

uint64_t __50__PFPosterCollection_postersOrderedByCreationDate__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 _path];
  v6 = [v4 _path];

  v7 = [MEMORY[0x1E695DF00] distantPast];
  v8 = [MEMORY[0x1E695DF00] distantPast];
  v9 = [v5 versionsURL];
  v17 = 0;
  v10 = *MEMORY[0x1E695DAA8];
  [v9 getResourceValue:&v17 forKey:*MEMORY[0x1E695DAA8] error:0];
  v11 = v17;

  v12 = [v6 versionsURL];
  v16 = 0;
  [v12 getResourceValue:&v16 forKey:v10 error:0];
  v13 = v16;

  v14 = [v11 compare:v13];
  return v14;
}

- (NSDictionary)postersByDescriptorIdentifier
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  postersByDescriptorIdentifier = selfCopy->_postersByDescriptorIdentifier;
  if (!postersByDescriptorIdentifier)
  {
    v4 = [objc_opt_class() postersByDescriptorIdentifier:selfCopy->_posters];
    v5 = selfCopy->_postersByDescriptorIdentifier;
    selfCopy->_postersByDescriptorIdentifier = v4;

    postersByDescriptorIdentifier = selfCopy->_postersByDescriptorIdentifier;
  }

  v6 = postersByDescriptorIdentifier;
  objc_sync_exit(selfCopy);

  return v6;
}

- (NSDictionary)postersByProvider
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  postersByProvider = selfCopy->_postersByProvider;
  if (!postersByProvider)
  {
    v4 = [objc_opt_class() postersByProvider:selfCopy->_posters];
    v5 = selfCopy->_postersByProvider;
    selfCopy->_postersByProvider = v4;

    postersByProvider = selfCopy->_postersByProvider;
  }

  v6 = postersByProvider;
  objc_sync_exit(selfCopy);

  return v6;
}

+ (id)postersByUUID:(id)d
{
  v23 = *MEMORY[0x1E69E9840];
  dCopy = d;
  v6 = objc_opt_new();
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v7 = dCopy;
  v8 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v19;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v19 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v18 + 1) + 8 * i);
        v13 = [self posterUUIDForPoster:{v12, v18}];
        if (v13)
        {
          v14 = [v6 objectForKey:v13];

          if (v14)
          {
            [PFPosterCollection postersByUUID:a2];
          }

          [v6 setObject:v12 forKey:v13];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v9);
  }

  v15 = [v6 copy];
  v16 = *MEMORY[0x1E69E9840];

  return v15;
}

+ (id)postersByProvider:(id)provider
{
  v22 = *MEMORY[0x1E69E9840];
  providerCopy = provider;
  v5 = objc_opt_new();
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v6 = providerCopy;
  v7 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v18;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v17 + 1) + 8 * i);
        v12 = [self providerForPoster:{v11, v17}];
        if (v12)
        {
          v13 = [v5 objectForKey:v12];
          if (!v13)
          {
            v13 = objc_opt_new();
            [v5 setObject:v13 forKey:v12];
          }

          [v13 addObject:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v8);
  }

  v14 = [v5 copy];
  v15 = *MEMORY[0x1E69E9840];

  return v14;
}

+ (id)postersByDescriptorIdentifier:(id)identifier
{
  v20 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v4 = objc_opt_new();
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = identifierCopy;
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        descriptorIdentifier = [v10 descriptorIdentifier];
        if (descriptorIdentifier)
        {
          [v4 setObject:v10 forKey:descriptorIdentifier];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  v12 = [v4 copy];
  v13 = *MEMORY[0x1E69E9840];

  return v12;
}

- (unint64_t)countByEnumeratingWithState:(id *)state objects:(id *)objects count:(unint64_t)count
{
  posters = [(PFPosterCollection *)self posters];
  v9 = [posters countByEnumeratingWithState:state objects:objects count:count];

  return v9;
}

- (id)description
{
  v3 = [MEMORY[0x1E698E680] builderWithObject:self];
  posters = [(PFPosterCollection *)self posters];
  bs_array = [posters bs_array];
  [v3 appendArraySection:bs_array withName:@"posters" skipIfEmpty:0];

  build = [v3 build];

  return build;
}

+ (void)validatePoster:(char *)a1 .cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_3();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_2(&dword_1C269D000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"poster", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

+ (void)providerForPoster:(char *)a1 .cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_3();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_2(&dword_1C269D000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"poster", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

+ (void)posterUUIDForPoster:(char *)a1 .cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_3();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_2(&dword_1C269D000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"poster", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)initWithSet:(char *)a1 .cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_3();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_2(&dword_1C269D000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"posters", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

+ (void)postersByUUID:(char *)a1 .cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_3();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_2(&dword_1C269D000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"NO == [postersByUUID objectForKey:posterUUID]", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

@end