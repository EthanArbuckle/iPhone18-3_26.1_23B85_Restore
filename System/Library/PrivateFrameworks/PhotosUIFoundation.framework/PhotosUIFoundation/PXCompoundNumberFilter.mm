@interface PXCompoundNumberFilter
- (double)updatedOutput;
@end

@implementation PXCompoundNumberFilter

- (double)updatedOutput
{
  v19 = *MEMORY[0x1E69E9840];
  [(PXNumberFilter *)self input];
  v4 = v3;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  filters = [(PXCompoundNumberFilter *)self filters];
  v6 = [filters countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      v9 = 0;
      do
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(filters);
        }

        v10 = *(*(&v14 + 1) + 8 * v9);
        v13[0] = MEMORY[0x1E69E9820];
        v13[1] = 3221225472;
        v13[2] = __39__PXCompoundNumberFilter_updatedOutput__block_invoke;
        v13[3] = &__block_descriptor_40_e33_v16__0___PXMutableNumberFilter__8l;
        *&v13[4] = v4;
        [v10 performChanges:v13];
        [v10 output];
        v4 = v11;
        ++v9;
      }

      while (v7 != v9);
      v7 = [filters countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  return v4;
}

@end