@interface PXSectionedChangeDetailsRepository
- (PXSectionedChangeDetailsRepository)init;
- (PXSectionedChangeDetailsRepository)initWithChangeHistoryLimit:(int64_t)a3;
- (id)changeDetailsFromDataSourceIdentifier:(int64_t)a3 toDataSourceIdentifier:(int64_t)a4;
- (id)coalescedChangeDetailsFromDataSourceIdentifier:(int64_t)a3 toDataSourceIdentifier:(int64_t)a4;
- (id)indexPathSetAfterApplyingChangeDetailsToDataSourceIdentifier:(int64_t)a3 indexPathSetBeforeChanges:(id)a4 hasIncrementalChanges:(BOOL *)a5;
- (void)addChangeDetails:(id)a3;
@end

@implementation PXSectionedChangeDetailsRepository

- (id)indexPathSetAfterApplyingChangeDetailsToDataSourceIdentifier:(int64_t)a3 indexPathSetBeforeChanges:(id)a4 hasIncrementalChanges:(BOOL *)a5
{
  v8 = a4;
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 1;
  v9 = objc_alloc_init(PXMutableIndexPathSet);
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __147__PXSectionedChangeDetailsRepository_indexPathSetAfterApplyingChangeDetailsToDataSourceIdentifier_indexPathSetBeforeChanges_hasIncrementalChanges___block_invoke;
  v14[3] = &unk_1E7BB5D08;
  v14[4] = self;
  v18 = a3;
  v10 = v8;
  v15 = v10;
  v17 = &v19;
  v11 = v9;
  v16 = v11;
  [v10 enumerateDataSourceIdentifiers:v14];
  if (a5)
  {
    *a5 = *(v20 + 24);
  }

  v12 = [(PXMutableIndexPathSet *)v11 copy];

  _Block_object_dispose(&v19, 8);

  return v12;
}

void __147__PXSectionedChangeDetailsRepository_indexPathSetAfterApplyingChangeDetailsToDataSourceIdentifier_indexPathSetBeforeChanges_hasIncrementalChanges___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) changeDetailsFromDataSourceIdentifier:a2 toDataSourceIdentifier:*(a1 + 64)];
  v5 = [*(a1 + 40) filteredWithDataSourceIdentifier:a2];
  v7 = 1;
  v6 = [PXSectionedDataSourceChangeDetails indexPathSetAfterApplyingChanges:v4 toIndexPathSet:v5 hasIncrementalChanges:&v7];
  *(*(*(a1 + 56) + 8) + 24) &= v7;
  [*(a1 + 48) unionIndexPathSet:v6];
}

- (id)coalescedChangeDetailsFromDataSourceIdentifier:(int64_t)a3 toDataSourceIdentifier:(int64_t)a4
{
  v4 = [(PXSectionedChangeDetailsRepository *)self changeDetailsFromDataSourceIdentifier:a3 toDataSourceIdentifier:a4];
  if ([v4 count])
  {
    v5 = [PXSectionedChangeDetailsCoalescer changeDetailsByCoalescingChangeDetails:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)changeDetailsFromDataSourceIdentifier:(int64_t)a3 toDataSourceIdentifier:(int64_t)a4
{
  v55[1] = *MEMORY[0x1E69E9840];
  if (a3 == a4)
  {
    v5 = [PXSectionedDataSourceChangeDetails changeDetailsWithNoChangesFromDataSourceIdentifier:a3 toDataSourceIdentifier:a3];
    v55[0] = v5;
    v6 = MEMORY[0x1E695DEC8];
    v7 = v55;
LABEL_21:
    v25 = [v6 arrayWithObjects:v7 count:1];
    goto LABEL_38;
  }

  if (!a3 || !a4)
  {
    v5 = [PXSectionedDataSourceChangeDetails changeDetailsWithoutIncrementalChangesFromDataSourceIdentifier:a3 toDataSourceIdentifier:a4];
    v54 = v5;
    v6 = MEMORY[0x1E695DEC8];
    v7 = &v54;
    goto LABEL_21;
  }

  v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __99__PXSectionedChangeDetailsRepository_changeDetailsFromDataSourceIdentifier_toDataSourceIdentifier___block_invoke;
  block[3] = &unk_1E7BB5CE0;
  block[4] = self;
  v49 = a4;
  v12 = v10;
  v48 = v12;
  v50 = a3;
  dispatch_sync(internalQueue, block);
  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v5 = v12;
  v13 = [v5 countByEnumeratingWithState:&v43 objects:v53 count:16];
  if (!v13)
  {
    v15 = 0;
    goto LABEL_23;
  }

  v14 = v13;
  v15 = 0;
  v16 = *v44;
  do
  {
    v17 = 0;
    v38 = v14;
    do
    {
      if (*v44 != v16)
      {
        objc_enumerationMutation(v5);
      }

      v18 = *(*(&v43 + 1) + 8 * v17);
      if (!v15 || (v19 = [*(*(&v43 + 1) + 8 * v17) count], v19 < objc_msgSend(v15, "count")))
      {
        v20 = [v18 firstObject];
        if ([v20 fromDataSourceIdentifier] != a3)
        {
          goto LABEL_15;
        }

        v21 = v16;
        v22 = v5;
        v23 = [v18 lastObject];
        v24 = [v23 toDataSourceIdentifier];

        if (v24 == a4)
        {
          v20 = v15;
          v15 = v18;
          v5 = v22;
          v16 = v21;
          v14 = v38;
LABEL_15:

          goto LABEL_17;
        }

        v5 = v22;
        v16 = v21;
        v14 = v38;
      }

LABEL_17:
      ++v17;
    }

    while (v14 != v17);
    v14 = [v5 countByEnumeratingWithState:&v43 objects:v53 count:16];
  }

  while (v14);
LABEL_23:

  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v26 = v15;
  v27 = [v26 countByEnumeratingWithState:&v39 objects:v52 count:16];
  if (v27)
  {
    v28 = v27;
    v29 = *v40;
    while (2)
    {
      for (i = 0; i != v28; ++i)
      {
        if (*v40 != v29)
        {
          objc_enumerationMutation(v26);
        }

        v31 = [*(*(&v39 + 1) + 8 * i) sectionChanges];
        v32 = [v31 hasIncrementalChanges];

        if (!v32)
        {
          v33 = v26;
          goto LABEL_35;
        }
      }

      v28 = [v26 countByEnumeratingWithState:&v39 objects:v52 count:16];
      if (v28)
      {
        continue;
      }

      break;
    }
  }

  v33 = [v26 firstObject];
  if ([v33 fromDataSourceIdentifier] == a3)
  {
    v34 = [v26 lastObject];
    v35 = [v34 toDataSourceIdentifier];

    if (v35 == a4)
    {
      v25 = v26;
      goto LABEL_37;
    }
  }

  else
  {
LABEL_35:
  }

  v36 = [PXSectionedDataSourceChangeDetails changeDetailsWithoutIncrementalChangesFromDataSourceIdentifier:a3 toDataSourceIdentifier:a4];
  v51 = v36;
  v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v51 count:1];

LABEL_37:
LABEL_38:

  return v25;
}

void __99__PXSectionedChangeDetailsRepository_changeDetailsFromDataSourceIdentifier_toDataSourceIdentifier___block_invoke(uint64_t a1)
{
  v1 = a1;
  v34 = *MEMORY[0x1E69E9840];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  obj = *(*(a1 + 32) + 8);
  v2 = [obj countByEnumeratingWithState:&v28 objects:v33 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v29;
    v19 = *v29;
    v20 = v1;
    do
    {
      v5 = 0;
      v21 = v3;
      do
      {
        if (*v29 != v4)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v28 + 1) + 8 * v5);
        v23 = v5;
        if ([v6 toDataSourceIdentifier] == *(v1 + 48))
        {
          v7 = *(v1 + 40);
          v8 = [objc_alloc(MEMORY[0x1E695DF70]) initWithObjects:{v6, 0}];
          [v7 addObject:v8];

LABEL_18:
          if ([v6 fromDataSourceIdentifier] == *(v1 + 56))
          {
            goto LABEL_23;
          }

          goto LABEL_21;
        }

        v26 = 0u;
        v27 = 0u;
        v24 = 0u;
        v25 = 0u;
        v9 = *(v1 + 40);
        v10 = [v9 countByEnumeratingWithState:&v24 objects:v32 count:16];
        if (!v10)
        {

          goto LABEL_21;
        }

        v11 = v10;
        v12 = 0;
        v13 = *v25;
        do
        {
          for (i = 0; i != v11; ++i)
          {
            if (*v25 != v13)
            {
              objc_enumerationMutation(v9);
            }

            v15 = *(*(&v24 + 1) + 8 * i);
            v16 = [v15 firstObject];
            v17 = [v16 fromDataSourceIdentifier];
            v18 = [v6 toDataSourceIdentifier];

            if (v17 == v18)
            {
              [v15 insertObject:v6 atIndex:0];
              v12 = 1;
            }
          }

          v11 = [v9 countByEnumeratingWithState:&v24 objects:v32 count:16];
        }

        while (v11);

        v4 = v19;
        v1 = v20;
        v3 = v21;
        if (v12)
        {
          goto LABEL_18;
        }

LABEL_21:
        v5 = v23 + 1;
      }

      while (v23 + 1 != v3);
      v3 = [obj countByEnumeratingWithState:&v28 objects:v33 count:16];
    }

    while (v3);
  }

LABEL_23:
}

- (void)addChangeDetails:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    internalQueue = self->_internalQueue;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __55__PXSectionedChangeDetailsRepository_addChangeDetails___block_invoke;
    v7[3] = &unk_1E7BB7DD0;
    v7[4] = self;
    v8 = v4;
    dispatch_sync(internalQueue, v7);
  }
}

unint64_t __55__PXSectionedChangeDetailsRepository_addChangeDetails___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 8) insertObject:*(a1 + 40) atIndex:0];
  result = [*(*(a1 + 32) + 8) count];
  v3 = *(a1 + 32);
  v4 = *(v3 + 24);
  if (result > 2 * v4)
  {
    v5 = [*(v3 + 8) count] - v4;
    v6 = *(*(a1 + 32) + 8);

    return [v6 removeObjectsInRange:{v4, v5}];
  }

  return result;
}

- (PXSectionedChangeDetailsRepository)initWithChangeHistoryLimit:(int64_t)a3
{
  v12.receiver = self;
  v12.super_class = PXSectionedChangeDetailsRepository;
  v4 = [(PXSectionedChangeDetailsRepository *)&v12 init];
  v5 = v4;
  if (v4)
  {
    v4->_historyLimit = a3;
    v6 = [MEMORY[0x1E695DF70] array];
    allChangeDetails = v5->_allChangeDetails;
    v5->_allChangeDetails = v6;

    v8 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UNSPECIFIED, 0);
    v9 = dispatch_queue_create("com.apple.photosUIFoundation.changeDetailsRepository", v8);
    internalQueue = v5->_internalQueue;
    v5->_internalQueue = v9;
  }

  return v5;
}

- (PXSectionedChangeDetailsRepository)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  v5 = NSStringFromSelector(a2);
  [v4 handleFailureInMethod:a2 object:self file:@"PXSectionedChangeDetailsRepository.m" lineNumber:19 description:{@"%@ not supported", v5}];

  abort();
}

@end