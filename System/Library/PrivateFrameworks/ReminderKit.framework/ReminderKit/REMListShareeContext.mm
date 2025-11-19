@interface REMListShareeContext
- (NSArray)sharees;
- (REMListShareeContext)initWithList:(id)a3;
- (id)shareesExcludingOwner;
@end

@implementation REMListShareeContext

- (REMListShareeContext)initWithList:(id)a3
{
  v27 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v25.receiver = self;
  v25.super_class = REMListShareeContext;
  v6 = [(REMListShareeContext *)&v25 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_list, a3);
    sharedOwner = v7->_sharedOwner;
    v7->_sharedOwner = 0;

    v9 = [v5 sharedOwnerID];

    if (v9)
    {
      v23 = 0u;
      v24 = 0u;
      v21 = 0u;
      v22 = 0u;
      v10 = [v5 sharees];
      v11 = [v10 countByEnumeratingWithState:&v21 objects:v26 count:16];
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
              objc_enumerationMutation(v10);
            }

            v15 = *(*(&v21 + 1) + 8 * i);
            v16 = [v15 objectID];
            v17 = [v5 sharedOwnerID];
            v18 = [v16 isEqual:v17];

            if (v18)
            {
              objc_storeStrong(&v7->_sharedOwner, v15);
              goto LABEL_13;
            }
          }

          v12 = [v10 countByEnumeratingWithState:&v21 objects:v26 count:16];
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
  v2 = [(REMListShareeContext *)self list];
  v3 = [v2 sharees];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
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
  v3 = [(REMListShareeContext *)self sharedOwner];
  v4 = [v3 objectID];

  v5 = [(REMListShareeContext *)self sharees];
  v6 = MEMORY[0x1E696AE18];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __45__REMListShareeContext_shareesExcludingOwner__block_invoke;
  v15[3] = &unk_1E7507A78;
  v16 = v4;
  v7 = v4;
  v8 = [v6 predicateWithBlock:v15];
  v9 = [v5 filteredArrayUsingPredicate:v8];

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