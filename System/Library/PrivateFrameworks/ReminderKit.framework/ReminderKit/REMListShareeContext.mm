@interface REMListShareeContext
- (NSArray)sharees;
- (REMListShareeContext)initWithList:(id)list;
- (id)shareesExcludingOwner;
@end

@implementation REMListShareeContext

- (REMListShareeContext)initWithList:(id)list
{
  v27 = *MEMORY[0x1E69E9840];
  listCopy = list;
  v25.receiver = self;
  v25.super_class = REMListShareeContext;
  v6 = [(REMListShareeContext *)&v25 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_list, list);
    sharedOwner = v7->_sharedOwner;
    v7->_sharedOwner = 0;

    sharedOwnerID = [listCopy sharedOwnerID];

    if (sharedOwnerID)
    {
      v23 = 0u;
      v24 = 0u;
      v21 = 0u;
      v22 = 0u;
      sharees = [listCopy sharees];
      v11 = [sharees countByEnumeratingWithState:&v21 objects:v26 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = *v22;
        while (2)
        {
          for (i = 0; i != v12; ++i)
          {
            if (*v22 != v13)
            {
              objc_enumerationMutation(sharees);
            }

            v15 = *(*(&v21 + 1) + 8 * i);
            objectID = [v15 objectID];
            sharedOwnerID2 = [listCopy sharedOwnerID];
            v18 = [objectID isEqual:sharedOwnerID2];

            if (v18)
            {
              objc_storeStrong(&v7->_sharedOwner, v15);
              goto LABEL_13;
            }
          }

          v12 = [sharees countByEnumeratingWithState:&v21 objects:v26 count:16];
          if (v12)
          {
            continue;
          }

          break;
        }
      }

LABEL_13:
    }
  }

  v19 = *MEMORY[0x1E69E9840];
  return v7;
}

- (NSArray)sharees
{
  list = [(REMListShareeContext *)self list];
  sharees = [list sharees];
  v4 = sharees;
  if (sharees)
  {
    v5 = sharees;
  }

  else
  {
    v5 = MEMORY[0x1E695E0F0];
  }

  v6 = v5;

  return v5;
}

- (id)shareesExcludingOwner
{
  v17[1] = *MEMORY[0x1E69E9840];
  sharedOwner = [(REMListShareeContext *)self sharedOwner];
  objectID = [sharedOwner objectID];

  sharees = [(REMListShareeContext *)self sharees];
  v6 = MEMORY[0x1E696AE18];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __45__REMListShareeContext_shareesExcludingOwner__block_invoke;
  v15[3] = &unk_1E7507A78;
  v16 = objectID;
  v7 = objectID;
  v8 = [v6 predicateWithBlock:v15];
  v9 = [sharees filteredArrayUsingPredicate:v8];

  v10 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"hash" ascending:1];
  v17[0] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:1];
  v12 = [v9 sortedArrayUsingDescriptors:v11];

  v13 = *MEMORY[0x1E69E9840];

  return v12;
}

uint64_t __45__REMListShareeContext_shareesExcludingOwner__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_opt_class();
  v5 = REMDynamicCast(v4, v3);

  v6 = [v5 objectID];
  LODWORD(a1) = [v6 isEqual:*(a1 + 32)];

  return a1 ^ 1;
}

@end