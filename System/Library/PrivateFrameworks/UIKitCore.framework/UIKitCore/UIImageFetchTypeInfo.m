@interface UIImageFetchTypeInfo
@end

@implementation UIImageFetchTypeInfo

void ___UIImageFetchTypeInfo_block_invoke()
{
  v37[5] = *MEMORY[0x1E69E9840];
  v0 = [*MEMORY[0x1E6982E00] identifier];
  v37[0] = v0;
  v1 = [*MEMORY[0x1E6982F28] identifier];
  v37[1] = v1;
  v2 = [*MEMORY[0x1E6983008] identifier];
  v37[2] = v2;
  v3 = [*MEMORY[0x1E6982E58] identifier];
  v37[3] = v3;
  v4 = [*MEMORY[0x1E6982DE8] identifier];
  v37[4] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v37 count:5];
  v6 = [v5 mutableCopy];

  v7 = CGImageSourceCopyTypeIdentifiers();
  v8 = [(__CFArray *)v7 mutableCopy];

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v9 = v6;
  v10 = [v9 countByEnumeratingWithState:&v30 objects:v36 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v31;
    do
    {
      v13 = 0;
      do
      {
        if (*v31 != v12)
        {
          objc_enumerationMutation(v9);
        }

        [v8 removeObject:*(*(&v30 + 1) + 8 * v13++)];
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v30 objects:v36 count:16];
    }

    while (v11);
  }

  [v9 addObjectsFromArray:v8];
  v35 = @"com.apple.uikit.image";
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v35 count:1];
  v15 = [v14 arrayByAddingObjectsFromArray:v9];
  v16 = qword_1ED49FBD0;
  qword_1ED49FBD0 = v15;

  v17 = [MEMORY[0x1E695DF70] array];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v18 = v9;
  v19 = [v18 countByEnumeratingWithState:&v26 objects:v34 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v27;
    do
    {
      v22 = 0;
      do
      {
        if (*v27 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v23 = [MEMORY[0x1E6982C40] _typeWithIdentifier:*(*(&v26 + 1) + 8 * v22) allowUndeclared:{1, v26}];
        [v17 addObject:v23];

        ++v22;
      }

      while (v20 != v22);
      v20 = [v18 countByEnumeratingWithState:&v26 objects:v34 count:16];
    }

    while (v20);
  }

  v24 = [v17 copy];
  v25 = _MergedGlobals_1230;
  _MergedGlobals_1230 = v24;
}

@end