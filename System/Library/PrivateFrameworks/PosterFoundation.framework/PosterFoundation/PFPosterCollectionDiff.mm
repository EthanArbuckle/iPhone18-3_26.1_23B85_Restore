@interface PFPosterCollectionDiff
+ (BOOL)diffCollection:(id)collection toCollection:(id)toCollection outAddedPosters:(id *)posters outRemovedPosters:(id *)removedPosters outUpdatedPosters:(id *)updatedPosters;
- (PFPosterCollectionDiff)initWithCollection:(id)collection otherCollection:(id)otherCollection;
- (id)description;
@end

@implementation PFPosterCollectionDiff

+ (BOOL)diffCollection:(id)collection toCollection:(id)toCollection outAddedPosters:(id *)posters outRemovedPosters:(id *)removedPosters outUpdatedPosters:(id *)updatedPosters
{
  postersCopy = posters;
  v76 = *MEMORY[0x1E69E9840];
  toCollectionCopy = toCollection;
  posters = [collection posters];
  v50 = toCollectionCopy;
  posters2 = [toCollectionCopy posters];
  v11 = objc_opt_new();
  v12 = objc_opt_new();
  strongToStrongObjectsMapTable = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
  v69 = 0u;
  v70 = 0u;
  v71 = 0u;
  v72 = 0u;
  v13 = posters2;
  v14 = [v13 countByEnumeratingWithState:&v69 objects:v75 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v70;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v70 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v69 + 1) + 8 * i);
        if (([posters containsObject:{v18, postersCopy}] & 1) == 0)
        {
          [v11 addObject:v18];
        }
      }

      v15 = [v13 countByEnumeratingWithState:&v69 objects:v75 count:16];
    }

    while (v15);
  }

  v67 = 0u;
  v68 = 0u;
  v65 = 0u;
  v66 = 0u;
  v19 = posters;
  v20 = [v19 countByEnumeratingWithState:&v65 objects:v74 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v66;
    do
    {
      for (j = 0; j != v21; ++j)
      {
        if (*v66 != v22)
        {
          objc_enumerationMutation(v19);
        }

        v24 = *(*(&v65 + 1) + 8 * j);
        if (([v13 containsObject:{v24, postersCopy}] & 1) == 0)
        {
          [v12 addObject:v24];
        }
      }

      v21 = [v19 countByEnumeratingWithState:&v65 objects:v74 count:16];
    }

    while (v21);
  }

  v51 = v12;
  v52 = v11;

  v63 = 0u;
  v64 = 0u;
  v61 = 0u;
  v62 = 0u;
  obj = v13;
  v25 = [obj countByEnumeratingWithState:&v61 objects:v73 count:16];
  if (v25)
  {
    v26 = v25;
    v27 = *v62;
    do
    {
      for (k = 0; k != v26; ++k)
      {
        if (*v62 != v27)
        {
          objc_enumerationMutation(obj);
        }

        v29 = *(*(&v61 + 1) + 8 * k);
        _path = [v29 _path];
        isServerPosterPath = [_path isServerPosterPath];
        descriptorIdentifier = [v29 descriptorIdentifier];
        v33 = descriptorIdentifier;
        if (isServerPosterPath)
        {
          _path2 = [v29 _path];
          serverIdentity = [_path2 serverIdentity];
          posterUUID = [serverIdentity posterUUID];

          v57[0] = MEMORY[0x1E69E9820];
          v57[1] = 3221225472;
          v57[2] = __106__PFPosterCollectionDiff_diffCollection_toCollection_outAddedPosters_outRemovedPosters_outUpdatedPosters___block_invoke;
          v57[3] = &unk_1E81895F0;
          v58 = _path;
          v59 = v33;
          v60 = posterUUID;
          v37 = posterUUID;
          v38 = v33;
          v39 = [v19 bs_firstObjectPassingTest:v57];
        }

        else
        {
          v55[0] = MEMORY[0x1E69E9820];
          v55[1] = 3221225472;
          v55[2] = __106__PFPosterCollectionDiff_diffCollection_toCollection_outAddedPosters_outRemovedPosters_outUpdatedPosters___block_invoke_2;
          v55[3] = &unk_1E8189618;
          v56 = descriptorIdentifier;
          v40 = descriptorIdentifier;
          v39 = [v19 bs_firstObjectPassingTest:v55];
          v37 = v56;
        }

        if (v39)
        {
          v41 = [strongToStrongObjectsMapTable objectForKey:v39];
          if (v41)
          {
          }

          else if (([v39 isEqual:v29] & 1) == 0)
          {
            [strongToStrongObjectsMapTable setObject:v29 forKey:v39];
            [v52 removeObject:v29];
            [v52 removeObject:v39];
            [v51 removeObject:v29];
            [v51 removeObject:v39];
          }
        }
      }

      v26 = [obj countByEnumeratingWithState:&v61 objects:v73 count:16];
    }

    while (v26);
  }

  if (postersCopy)
  {
    v42 = v52;
    *postersCopy = v52;
  }

  if (removedPosters)
  {
    v43 = v51;
    *removedPosters = v51;
  }

  if (updatedPosters)
  {
    *updatedPosters = strongToStrongObjectsMapTable;
  }

  v44 = ![v52 count] && !objc_msgSend(v51, "count") && objc_msgSend(strongToStrongObjectsMapTable, "count") == 0;

  v45 = *MEMORY[0x1E69E9840];
  return v44;
}

uint64_t __106__PFPosterCollectionDiff_diffCollection_toCollection_outAddedPosters_outRemovedPosters_outUpdatedPosters___block_invoke(void *a1, void *a2)
{
  v3 = a2;
  v4 = [v3 _path];
  v5 = v4;
  if (a1[4] == v4 || ![v4 isServerPosterPath])
  {
    v9 = 0;
  }

  else
  {
    v6 = [v3 descriptorIdentifier];
    if ([v6 isEqualToString:a1[5]])
    {
      v7 = [v5 serverIdentity];
      v8 = [v7 posterUUID];
      v9 = [v8 isEqual:a1[6]];
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

uint64_t __106__PFPosterCollectionDiff_diffCollection_toCollection_outAddedPosters_outRemovedPosters_outUpdatedPosters___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 _path];
  if ([v4 isServerPosterPath])
  {
    v5 = [v3 descriptorIdentifier];
    v6 = [v5 isEqualToString:*(a1 + 32)];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (PFPosterCollectionDiff)initWithCollection:(id)collection otherCollection:(id)otherCollection
{
  collectionCopy = collection;
  otherCollectionCopy = otherCollection;
  v10 = objc_opt_class();
  if (v10 != objc_opt_class())
  {
    [PFPosterCollectionDiff initWithCollection:a2 otherCollection:self];
  }

  v33.receiver = self;
  v33.super_class = PFPosterCollectionDiff;
  v11 = [(PFPosterCollectionDiff *)&v33 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_lhsCollection, collection);
    objc_storeStrong(&v12->_rhsCollection, otherCollection);
    v31 = 0;
    v32 = 0;
    v30 = 0;
    v13 = [objc_opt_class() diffCollection:collectionCopy toCollection:otherCollectionCopy outAddedPosters:&v32 outRemovedPosters:&v31 outUpdatedPosters:&v30];
    v14 = v32;
    v15 = v31;
    v16 = v30;
    v12->_areCollectionsEqual = v13;
    v17 = [v14 copy];
    v18 = v17;
    if (v17)
    {
      v19 = v17;
    }

    else
    {
      v19 = [MEMORY[0x1E695DFD8] set];
    }

    addedPosters = v12->_addedPosters;
    v12->_addedPosters = v19;

    v21 = [v15 copy];
    v22 = v21;
    if (v21)
    {
      v23 = v21;
    }

    else
    {
      v23 = [MEMORY[0x1E695DFD8] set];
    }

    removedPosters = v12->_removedPosters;
    v12->_removedPosters = v23;

    v25 = [v16 copy];
    v26 = v25;
    if (v25)
    {
      strongToStrongObjectsMapTable = v25;
    }

    else
    {
      strongToStrongObjectsMapTable = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
    }

    updatedPosters = v12->_updatedPosters;
    v12->_updatedPosters = strongToStrongObjectsMapTable;
  }

  return v12;
}

- (id)description
{
  v3 = [MEMORY[0x1E698E680] builderWithObject:self];
  if ([(NSSet *)self->_addedPosters count])
  {
    bs_array = [(NSSet *)self->_addedPosters bs_array];
    [v3 appendArraySection:bs_array withName:@"addedPosters" skipIfEmpty:0];
  }

  if ([(NSSet *)self->_removedPosters count])
  {
    bs_array2 = [(NSSet *)self->_removedPosters bs_array];
    [v3 appendArraySection:bs_array2 withName:@"removedPosters" skipIfEmpty:0];
  }

  if ([(NSMapTable *)self->_updatedPosters count])
  {
    dictionaryRepresentation = [(NSMapTable *)self->_updatedPosters dictionaryRepresentation];
    [v3 appendDictionarySection:dictionaryRepresentation withName:@"updatedPosters" skipIfEmpty:0];
  }

  v7 = [v3 appendBool:-[PFPosterCollectionDiff areCollectionsEqual](self withName:"areCollectionsEqual") ifEqualTo:{@"areCollectionsEqual", 1}];
  build = [v3 build];

  return build;
}

- (void)initWithCollection:(const char *)a1 otherCollection:(uint64_t)a2 .cold.1(const char *a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"[initialCollection class] == [newCollection class]"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v5 = NSStringFromSelector(a1);
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    *buf = 138544642;
    v9 = v5;
    v10 = 2114;
    v11 = v7;
    v12 = 2048;
    v13 = a2;
    v14 = 2114;
    v15 = @"PFPosterCollectionDiff.m";
    v16 = 1024;
    v17 = 95;
    v18 = 2114;
    v19 = v4;
    _os_log_error_impl(&dword_1C269D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
  }

  [v4 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

@end