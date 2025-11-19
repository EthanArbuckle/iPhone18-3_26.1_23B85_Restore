@interface PFPosterCollectionDiff
+ (BOOL)diffCollection:(id)a3 toCollection:(id)a4 outAddedPosters:(id *)a5 outRemovedPosters:(id *)a6 outUpdatedPosters:(id *)a7;
- (PFPosterCollectionDiff)initWithCollection:(id)a3 otherCollection:(id)a4;
- (id)description;
@end

@implementation PFPosterCollectionDiff

+ (BOOL)diffCollection:(id)a3 toCollection:(id)a4 outAddedPosters:(id *)a5 outRemovedPosters:(id *)a6 outUpdatedPosters:(id *)a7
{
  v47 = a5;
  v76 = *MEMORY[0x1E69E9840];
  v8 = a4;
  v9 = [a3 posters];
  v50 = v8;
  v10 = [v8 posters];
  v11 = objc_opt_new();
  v12 = objc_opt_new();
  v54 = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
  v69 = 0u;
  v70 = 0u;
  v71 = 0u;
  v72 = 0u;
  v13 = v10;
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
        if (([v9 containsObject:{v18, v47}] & 1) == 0)
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
  v19 = v9;
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
        if (([v13 containsObject:{v24, v47}] & 1) == 0)
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
        v30 = [v29 _path];
        v31 = [v30 isServerPosterPath];
        v32 = [v29 descriptorIdentifier];
        v33 = v32;
        if (v31)
        {
          v34 = [v29 _path];
          v35 = [v34 serverIdentity];
          v36 = [v35 posterUUID];

          v57[0] = MEMORY[0x1E69E9820];
          v57[1] = 3221225472;
          v57[2] = __106__PFPosterCollectionDiff_diffCollection_toCollection_outAddedPosters_outRemovedPosters_outUpdatedPosters___block_invoke;
          v57[3] = &unk_1E81895F0;
          v58 = v30;
          v59 = v33;
          v60 = v36;
          v37 = v36;
          v38 = v33;
          v39 = [v19 bs_firstObjectPassingTest:v57];
        }

        else
        {
          v55[0] = MEMORY[0x1E69E9820];
          v55[1] = 3221225472;
          v55[2] = __106__PFPosterCollectionDiff_diffCollection_toCollection_outAddedPosters_outRemovedPosters_outUpdatedPosters___block_invoke_2;
          v55[3] = &unk_1E8189618;
          v56 = v32;
          v40 = v32;
          v39 = [v19 bs_firstObjectPassingTest:v55];
          v37 = v56;
        }

        if (v39)
        {
          v41 = [v54 objectForKey:v39];
          if (v41)
          {
          }

          else if (([v39 isEqual:v29] & 1) == 0)
          {
            [v54 setObject:v29 forKey:v39];
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

  if (v47)
  {
    v42 = v52;
    *v47 = v52;
  }

  if (a6)
  {
    v43 = v51;
    *a6 = v51;
  }

  if (a7)
  {
    *a7 = v54;
  }

  v44 = ![v52 count] && !objc_msgSend(v51, "count") && objc_msgSend(v54, "count") == 0;

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

- (PFPosterCollectionDiff)initWithCollection:(id)a3 otherCollection:(id)a4
{
  v8 = a3;
  v9 = a4;
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
    objc_storeStrong(&v11->_lhsCollection, a3);
    objc_storeStrong(&v12->_rhsCollection, a4);
    v31 = 0;
    v32 = 0;
    v30 = 0;
    v13 = [objc_opt_class() diffCollection:v8 toCollection:v9 outAddedPosters:&v32 outRemovedPosters:&v31 outUpdatedPosters:&v30];
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
      v27 = v25;
    }

    else
    {
      v27 = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
    }

    updatedPosters = v12->_updatedPosters;
    v12->_updatedPosters = v27;
  }

  return v12;
}

- (id)description
{
  v3 = [MEMORY[0x1E698E680] builderWithObject:self];
  if ([(NSSet *)self->_addedPosters count])
  {
    v4 = [(NSSet *)self->_addedPosters bs_array];
    [v3 appendArraySection:v4 withName:@"addedPosters" skipIfEmpty:0];
  }

  if ([(NSSet *)self->_removedPosters count])
  {
    v5 = [(NSSet *)self->_removedPosters bs_array];
    [v3 appendArraySection:v5 withName:@"removedPosters" skipIfEmpty:0];
  }

  if ([(NSMapTable *)self->_updatedPosters count])
  {
    v6 = [(NSMapTable *)self->_updatedPosters dictionaryRepresentation];
    [v3 appendDictionarySection:v6 withName:@"updatedPosters" skipIfEmpty:0];
  }

  v7 = [v3 appendBool:-[PFPosterCollectionDiff areCollectionsEqual](self withName:"areCollectionsEqual") ifEqualTo:{@"areCollectionsEqual", 1}];
  v8 = [v3 build];

  return v8;
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