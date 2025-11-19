@interface _UIIndexPathIdentityTracker
- (_UIIndexPathIdentityTracker)init;
- (id)_mappingIdentifierForSanitizedIndexPath:(uint64_t)a1;
- (id)currentIndexPathForIdentifier:(uint64_t)a1;
- (id)identifierForIndexPath:(uint64_t)a1;
- (id)initWithCollectionView:(id *)a1;
- (id)initWithTableView:(id *)a1;
- (void)_identifierBasedUpdateWithUpdateItems:(uint64_t)a1;
- (void)_manuallyUpdateWithUpdateItems:(uint64_t)a1;
- (void)reset;
- (void)updateWithUpdateItems:(uint64_t)a1;
@end

@implementation _UIIndexPathIdentityTracker

- (void)reset
{
  if (!a1)
  {
    return;
  }

  if (*(a1 + 40))
  {
    goto LABEL_3;
  }

  WeakRetained = objc_loadWeakRetained((a1 + 8));

  if (WeakRetained)
  {
    v3 = objc_loadWeakRetained((a1 + 8));
    v9 = [v3 dataSource];
  }

  else
  {
    v4 = objc_loadWeakRetained((a1 + 16));

    if (!v4)
    {
LABEL_3:
      v9 = 0;
LABEL_10:
      v6 = 0;
      goto LABEL_11;
    }

    v5 = objc_loadWeakRetained((a1 + 16));
    v9 = [v5 dataSource];
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_10;
  }

  v6 = v9;
LABEL_11:
  objc_storeStrong((a1 + 24), v6);
  v7 = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
  v8 = *(a1 + 32);
  *(a1 + 32) = v7;
}

- (id)initWithTableView:(id *)a1
{
  v3 = a2;
  if (a1)
  {
    v6.receiver = a1;
    v6.super_class = _UIIndexPathIdentityTracker;
    v4 = objc_msgSendSuper2(&v6, sel_init);
    a1 = v4;
    if (v4)
    {
      objc_storeWeak(v4 + 1, v3);
      [(_UIIndexPathIdentityTracker *)a1 reset];
    }
  }

  return a1;
}

- (id)initWithCollectionView:(id *)a1
{
  v3 = a2;
  if (a1)
  {
    v6.receiver = a1;
    v6.super_class = _UIIndexPathIdentityTracker;
    v4 = objc_msgSendSuper2(&v6, sel_init);
    a1 = v4;
    if (v4)
    {
      objc_storeWeak(v4 + 2, v3);
      [(_UIIndexPathIdentityTracker *)a1 reset];
    }
  }

  return a1;
}

- (id)_mappingIdentifierForSanitizedIndexPath:(uint64_t)a1
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v11 = 0;
    v12 = &v11;
    v13 = 0x3032000000;
    v14 = __Block_byref_object_copy__157;
    v15 = __Block_byref_object_dispose__157;
    v16 = 0;
    v6 = *(a1 + 32);
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __71___UIIndexPathIdentityTracker__mappingIdentifierForSanitizedIndexPath___block_invoke;
    v8[3] = &unk_1E711B2C0;
    v9 = v3;
    v10 = &v11;
    _enumerateMapTableKeysAndObjectsUsingBlock(v6, v8);
    v5 = v12[5];

    _Block_object_dispose(&v11, 8);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)identifierForIndexPath:(uint64_t)a1
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v5 = _sanitizedIndexPath(v3);

    v6 = [(_UIIndexPathIdentityTracker *)a1 _mappingIdentifierForSanitizedIndexPath:v5];
    if (v6)
    {
      v7 = v6;
      v4 = v5;
    }

    else
    {
      v8 = *(a1 + 24);
      v9 = v5;
      v4 = v9;
      if (v8)
      {
        if ([v9 length] == 1)
        {
          [v8 sectionIdentifierForIndex:{objc_msgSend(v4, "section")}];
        }

        else
        {
          [v8 itemIdentifierForIndexPath:v4];
        }
        v10 = ;
      }

      else
      {
        v10 = objc_opt_new();
      }

      v7 = v10;

      [*(a1 + 32) setObject:v4 forKey:v7];
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)currentIndexPathForIdentifier:(uint64_t)a1
{
  v4 = 0;
  if (a1 && a2)
  {
    v4 = [*(a1 + 32) objectForKey:a2];
    v2 = vars8;
  }

  return v4;
}

- (void)_identifierBasedUpdateWithUpdateItems:(uint64_t)a1
{
  v3 = a2;
  if (a1)
  {
    if (!*(a1 + 24))
    {
      v5 = [MEMORY[0x1E696AAA8] currentHandler];
      [v5 handleFailureInMethod:sel__identifierBasedUpdateWithUpdateItems_ object:a1 file:@"_UIIndexPathIdentityTracker.m" lineNumber:216 description:{@"Invalid parameter not satisfying: %@", @"_identityBasedDataSource != nil"}];
    }

    v4 = [*(a1 + 32) copy];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __69___UIIndexPathIdentityTracker__identifierBasedUpdateWithUpdateItems___block_invoke;
    v6[3] = &unk_1E711B2E8;
    v6[4] = a1;
    _enumerateMapTableKeysAndObjectsUsingBlock(v4, v6);
  }
}

- (void)_manuallyUpdateWithUpdateItems:(uint64_t)a1
{
  v55 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (a1)
  {
    if (*(a1 + 24))
    {
      v32 = [MEMORY[0x1E696AAA8] currentHandler];
      [v32 handleFailureInMethod:sel__manuallyUpdateWithUpdateItems_ object:a1 file:@"_UIIndexPathIdentityTracker.m" lineNumber:226 description:{@"Invalid parameter not satisfying: %@", @"_identityBasedDataSource == nil"}];
    }

    if ([*(a1 + 32) count])
    {
      v35 = objc_opt_new();
      v36 = objc_opt_new();
      v34 = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
      v48 = 0u;
      v49 = 0u;
      v50 = 0u;
      v51 = 0u;
      v4 = v3;
      v5 = [v4 countByEnumeratingWithState:&v48 objects:v54 count:16];
      if (!v5)
      {
        goto LABEL_22;
      }

      v6 = v5;
      v7 = *v49;
      while (1)
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v49 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v48 + 1) + 8 * i);
          v10 = [v9 indexPathBeforeUpdate];
          v11 = _sanitizedIndexPath(v10);

          v12 = [v9 indexPathAfterUpdate];
          v13 = _sanitizedIndexPath(v12);

          if (!v9 || (v14 = v9[10]) == 0)
          {
            v15 = v36;
            v16 = v13;
LABEL_16:
            [v15 addObject:v16];
            goto LABEL_20;
          }

          if (v14 != 3)
          {
            if (v14 != 1)
            {
              goto LABEL_20;
            }

            v15 = v35;
            v16 = v11;
            goto LABEL_16;
          }

          [v35 addObject:v11];
          [v36 addObject:v13];
          v17 = [(_UIIndexPathIdentityTracker *)a1 _mappingIdentifierForSanitizedIndexPath:v11];
          if (v17)
          {
            [v34 setObject:v13 forKey:v17];
          }

LABEL_20:
        }

        v6 = [v4 countByEnumeratingWithState:&v48 objects:v54 count:16];
        if (!v6)
        {
LABEL_22:
          v33 = v3;

          [v35 sortUsingSelector:sel_compare_];
          [v36 sortUsingSelector:sel_compare_];
          v46 = 0u;
          v47 = 0u;
          v44 = 0u;
          v45 = 0u;
          v18 = [v35 reverseObjectEnumerator];
          v19 = [v18 countByEnumeratingWithState:&v44 objects:v53 count:16];
          if (v19)
          {
            v20 = v19;
            v21 = *v45;
            do
            {
              for (j = 0; j != v20; ++j)
              {
                if (*v45 != v21)
                {
                  objc_enumerationMutation(v18);
                }

                v23 = *(*(&v44 + 1) + 8 * j);
                v24 = [*(a1 + 32) copy];
                v43[0] = MEMORY[0x1E69E9820];
                v43[1] = 3221225472;
                v43[2] = __62___UIIndexPathIdentityTracker__manuallyUpdateWithUpdateItems___block_invoke;
                v43[3] = &unk_1E711B310;
                v43[4] = v23;
                v43[5] = a1;
                _enumerateMapTableKeysAndObjectsUsingBlock(v24, v43);
              }

              v20 = [v18 countByEnumeratingWithState:&v44 objects:v53 count:16];
            }

            while (v20);
          }

          v42 = 0u;
          v40 = 0u;
          v41 = 0u;
          v39 = 0u;
          v25 = v36;
          v26 = [v25 countByEnumeratingWithState:&v39 objects:v52 count:16];
          if (v26)
          {
            v27 = v26;
            v28 = *v40;
            do
            {
              for (k = 0; k != v27; ++k)
              {
                if (*v40 != v28)
                {
                  objc_enumerationMutation(v25);
                }

                v30 = *(*(&v39 + 1) + 8 * k);
                v31 = [*(a1 + 32) copy];
                v38[0] = MEMORY[0x1E69E9820];
                v38[1] = 3221225472;
                v38[2] = __62___UIIndexPathIdentityTracker__manuallyUpdateWithUpdateItems___block_invoke_2;
                v38[3] = &unk_1E711B310;
                v38[4] = v30;
                v38[5] = a1;
                _enumerateMapTableKeysAndObjectsUsingBlock(v31, v38);
              }

              v27 = [v25 countByEnumeratingWithState:&v39 objects:v52 count:16];
            }

            while (v27);
          }

          v37[0] = MEMORY[0x1E69E9820];
          v37[1] = 3221225472;
          v37[2] = __62___UIIndexPathIdentityTracker__manuallyUpdateWithUpdateItems___block_invoke_3;
          v37[3] = &unk_1E711B2E8;
          v37[4] = a1;
          _enumerateMapTableKeysAndObjectsUsingBlock(v34, v37);

          v3 = v33;
          break;
        }
      }
    }
  }
}

- (void)updateWithUpdateItems:(uint64_t)a1
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v5 = v3;
    if (*(a1 + 24))
    {
      [(_UIIndexPathIdentityTracker *)a1 _identifierBasedUpdateWithUpdateItems:v3];
    }

    else
    {
      [(_UIIndexPathIdentityTracker *)a1 _manuallyUpdateWithUpdateItems:v3];
    }

    v4 = v5;
  }
}

- (_UIIndexPathIdentityTracker)init
{
  v5.receiver = self;
  v5.super_class = _UIIndexPathIdentityTracker;
  v2 = [(_UIIndexPathIdentityTracker *)&v5 init];
  v3 = v2;
  if (v2)
  {
    v2->_enforcesManualMapping = 1;
    [(_UIIndexPathIdentityTracker *)v2 reset];
  }

  return v3;
}

@end