@interface PFPosterCollection
+ (BOOL)validatePoster:(id)a3;
+ (PFPosterCollection)new;
+ (id)posterUUIDForPoster:(id)a3;
+ (id)postersByDescriptorIdentifier:(id)a3;
+ (id)postersByProvider:(id)a3;
+ (id)postersByUUID:(id)a3;
+ (id)providerForPoster:(id)a3;
- (BOOL)isEmpty;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToCollection:(id)a3;
- (NSDictionary)postersByDescriptorIdentifier;
- (NSDictionary)postersByProvider;
- (NSOrderedSet)postersOrderedByCreationDate;
- (PFPosterCollection)init;
- (PFPosterCollection)initWithArray:(id)a3;
- (PFPosterCollection)initWithPosters:(id)a3;
- (PFPosterCollection)initWithSet:(id)a3;
- (id)collectionForPostersMatchingPredicate:(id)a3;
- (id)collectionForPostersMatchingRoles:(id)a3;
- (id)collectionForPostersPassingTest:(id)a3;
- (id)collectionForProvider:(id)a3;
- (id)description;
- (id)posterForDescriptor:(id)a3;
- (id)posterWithUUID:(id)a3;
- (id)postersForProvider:(id)a3;
- (id)postersMatchingRoles:(id)a3;
- (unint64_t)countByEnumeratingWithState:(id *)a3 objects:(id *)a4 count:(unint64_t)a5;
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
  v2 = [a1 alloc];
  v3 = [MEMORY[0x1E695DFD8] set];
  v4 = [v2 initWithSet:v3];

  return v4;
}

+ (BOOL)validatePoster:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    [PFPosterCollection validatePoster:a2];
  }

  v5 = v4;
  v6 = objc_opt_respondsToSelector();

  return v6 & 1;
}

+ (id)providerForPoster:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    [PFPosterCollection providerForPoster:a2];
  }

  v5 = v4;
  v6 = [v4 _path];
  if ([v6 isServerPosterPath])
  {
    v7 = [v6 serverIdentity];
    v8 = [v7 provider];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (id)posterUUIDForPoster:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    [PFPosterCollection posterUUIDForPoster:a2];
  }

  v5 = v4;
  v6 = [v4 _path];
  if ([v6 isServerPosterPath])
  {
    v7 = [v6 serverIdentity];
    v8 = [v7 posterUUID];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (PFPosterCollection)initWithPosters:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_opt_new();
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = v4;
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

- (PFPosterCollection)initWithArray:(id)a3
{
  v4 = [MEMORY[0x1E695DFD8] setWithArray:a3];
  v5 = [(PFPosterCollection *)self initWithSet:v4];

  return v5;
}

- (PFPosterCollection)initWithSet:(id)a3
{
  v27 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (!v5)
  {
    [PFPosterCollection initWithSet:a2];
  }

  v6 = v5;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self == v4)
  {
    v9 = 1;
  }

  else if (v4)
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

- (BOOL)isEqualToCollection:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self == v4)
  {
    v8 = 1;
  }

  else if (v4)
  {
    v6 = [(PFPosterCollection *)v4 posters];
    v7 = [(PFPosterCollection *)self posters];
    v8 = BSEqualObjects();
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)postersMatchingRoles:(id)a3
{
  v4 = a3;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __43__PFPosterCollection_postersMatchingRoles___block_invoke;
  v8[3] = &unk_1E8189618;
  v9 = v4;
  v5 = v4;
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

- (id)postersForProvider:(id)a3
{
  v4 = a3;
  v5 = [(PFPosterCollection *)self postersByProvider];
  v6 = [v5 objectForKey:v4];

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

- (id)collectionForPostersMatchingRoles:(id)a3
{
  v4 = a3;
  v5 = [v4 count];
  v6 = objc_opt_class();
  if (v5)
  {
    v7 = [v6 alloc];
    v8 = [(PFPosterCollection *)self postersMatchingRoles:v4];
    v9 = [v7 initWithSet:v8];
  }

  else
  {
    v9 = objc_opt_new();
  }

  return v9;
}

- (id)collectionForPostersMatchingPredicate:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  if (v4)
  {
    v6 = [v5 alloc];
    v7 = [(PFPosterCollection *)self postersMatchingPredicate:v4];
    v8 = [v6 initWithSet:v7];
  }

  else
  {
    v8 = objc_opt_new();
  }

  return v8;
}

- (id)collectionForPostersPassingTest:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  if (v4)
  {
    v6 = [v5 alloc];
    v7 = [(PFPosterCollection *)self postersPassingTest:v4];
    v8 = [v6 initWithSet:v7];
  }

  else
  {
    v8 = objc_opt_new();
  }

  return v8;
}

- (id)collectionForProvider:(id)a3
{
  v4 = a3;
  v5 = [v4 length];
  v6 = objc_opt_class();
  if (v5)
  {
    v7 = [v6 alloc];
    v8 = [(PFPosterCollection *)self postersForProvider:v4];
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
  v2 = [(PFPosterCollection *)self posters];
  v3 = [v2 count] == 0;

  return v3;
}

- (id)posterWithUUID:(id)a3
{
  v4 = a3;
  v5 = [(PFPosterCollection *)self postersByUUID];
  v6 = [v5 objectForKey:v4];

  return v6;
}

- (id)posterForDescriptor:(id)a3
{
  v4 = a3;
  v5 = [(PFPosterCollection *)self postersByDescriptorIdentifier];
  v6 = [v5 objectForKey:v4];

  return v6;
}

- (NSOrderedSet)postersOrderedByCreationDate
{
  v2 = self;
  objc_sync_enter(v2);
  postersOrderedByCreationDate = v2->_postersOrderedByCreationDate;
  if (postersOrderedByCreationDate)
  {
    v4 = postersOrderedByCreationDate;
  }

  else
  {
    v5 = MEMORY[0x1E695DFA0];
    v6 = [(PFPosterCollection *)v2 posters];
    v7 = [v5 orderedSetWithSet:v6];

    [v7 sortUsingComparator:&__block_literal_global_10];
    v8 = [v7 copy];
    v9 = v2->_postersOrderedByCreationDate;
    v2->_postersOrderedByCreationDate = v8;

    v4 = v2->_postersOrderedByCreationDate;
  }

  objc_sync_exit(v2);

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
  v2 = self;
  objc_sync_enter(v2);
  postersByDescriptorIdentifier = v2->_postersByDescriptorIdentifier;
  if (!postersByDescriptorIdentifier)
  {
    v4 = [objc_opt_class() postersByDescriptorIdentifier:v2->_posters];
    v5 = v2->_postersByDescriptorIdentifier;
    v2->_postersByDescriptorIdentifier = v4;

    postersByDescriptorIdentifier = v2->_postersByDescriptorIdentifier;
  }

  v6 = postersByDescriptorIdentifier;
  objc_sync_exit(v2);

  return v6;
}

- (NSDictionary)postersByProvider
{
  v2 = self;
  objc_sync_enter(v2);
  postersByProvider = v2->_postersByProvider;
  if (!postersByProvider)
  {
    v4 = [objc_opt_class() postersByProvider:v2->_posters];
    v5 = v2->_postersByProvider;
    v2->_postersByProvider = v4;

    postersByProvider = v2->_postersByProvider;
  }

  v6 = postersByProvider;
  objc_sync_exit(v2);

  return v6;
}

+ (id)postersByUUID:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = objc_opt_new();
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v7 = v5;
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
        v13 = [a1 posterUUIDForPoster:{v12, v18}];
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

+ (id)postersByProvider:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_opt_new();
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v6 = v4;
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
        v12 = [a1 providerForPoster:{v11, v17}];
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

+ (id)postersByDescriptorIdentifier:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = objc_opt_new();
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = v3;
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
        v11 = [v10 descriptorIdentifier];
        if (v11)
        {
          [v4 setObject:v10 forKey:v11];
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

- (unint64_t)countByEnumeratingWithState:(id *)a3 objects:(id *)a4 count:(unint64_t)a5
{
  v8 = [(PFPosterCollection *)self posters];
  v9 = [v8 countByEnumeratingWithState:a3 objects:a4 count:a5];

  return v9;
}

- (id)description
{
  v3 = [MEMORY[0x1E698E680] builderWithObject:self];
  v4 = [(PFPosterCollection *)self posters];
  v5 = [v4 bs_array];
  [v3 appendArraySection:v5 withName:@"posters" skipIfEmpty:0];

  v6 = [v3 build];

  return v6;
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