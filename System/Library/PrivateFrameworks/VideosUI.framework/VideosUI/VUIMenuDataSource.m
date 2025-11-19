@interface VUIMenuDataSource
- (VUIMenuDataSource)initWithMainMenuItems:(id)a3 genreMenuItems:(id)a4;
- (id)_mainMenuItemsWithDefaultItemsBehavingAsiPhone:(BOOL)a3;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation VUIMenuDataSource

- (VUIMenuDataSource)initWithMainMenuItems:(id)a3 genreMenuItems:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = VUIMenuDataSource;
  v9 = [(VUIMenuDataSource *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_mainMenuItems, a3);
    objc_storeStrong(&v10->_genreMenuItems, a4);
  }

  return v10;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(VUIMenuDataSource);
  v5 = [(NSArray *)self->_mainMenuItems copy];
  mainMenuItems = v4->_mainMenuItems;
  v4->_mainMenuItems = v5;

  v7 = [(NSArray *)self->_genreMenuItems copy];
  genreMenuItems = v4->_genreMenuItems;
  v4->_genreMenuItems = v7;

  v9 = [(NSArray *)self->_genreTypes copy];
  genreTypes = v4->_genreTypes;
  v4->_genreTypes = v9;

  return v4;
}

- (id)_mainMenuItemsWithDefaultItemsBehavingAsiPhone:(BOOL)a3
{
  v3 = a3;
  v25 = *MEMORY[0x1E69E9840];
  if (+[VUIAuthenticationManager isLibraryOnlyCountry](VUIAuthenticationManager, "isLibraryOnlyCountry") || (-[VUIMenuDataSource genreMenuItems](self, "genreMenuItems"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 count], v5, v6))
  {
    v7 = [(VUIMenuDataSource *)self mainMenuItems];
    goto LABEL_4;
  }

  v9 = [(VUIMenuDataSource *)self mainMenuItems];
  v7 = [MEMORY[0x1E695DF70] arrayWithArray:v9];
  v10 = [MEMORY[0x1E696AE18] predicateWithBlock:&__block_literal_global_122];
  v11 = [v9 filteredArrayUsingPredicate:v10];
  v12 = [v9 count];
  v13 = [v11 count];
  if (([MEMORY[0x1E69DF6F0] isTV] & 1) != 0 || (objc_msgSend(MEMORY[0x1E69DF6F0], "isVision") & 1) != 0 || (objc_msgSend(MEMORY[0x1E69DF6F0], "isPhone") & 1) != 0 || v3)
  {
    if (![v11 count] && v12 > v13)
    {
      goto LABEL_11;
    }
  }

  else if ((([MEMORY[0x1E69DF6F0] isPad] & 1) != 0 || objc_msgSend(MEMORY[0x1E69DF6F0], "isMac")) && !objc_msgSend(v11, "count"))
  {
LABEL_11:
    if ([v7 count])
    {
      v22 = 0u;
      v23 = 0u;
      v20 = 0u;
      v21 = 0u;
      v14 = [&unk_1F5E5EA90 reverseObjectEnumerator];
      v15 = [v14 allObjects];

      v16 = [v15 countByEnumeratingWithState:&v20 objects:v24 count:16];
      if (v16)
      {
        v17 = v16;
        v18 = *v21;
        do
        {
          for (i = 0; i != v17; ++i)
          {
            if (*v21 != v18)
            {
              objc_enumerationMutation(v15);
            }

            [v7 insertObject:*(*(&v20 + 1) + 8 * i) atIndex:0];
          }

          v17 = [v15 countByEnumeratingWithState:&v20 objects:v24 count:16];
        }

        while (v17);
      }
    }

    else
    {
      [v7 addObjectsFromArray:&unk_1F5E5EA90];
    }
  }

LABEL_4:

  return v7;
}

BOOL __68__VUIMenuDataSource__mainMenuItemsWithDefaultItemsBehavingAsiPhone___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
    v4 = [v3 intValue] != 5 && objc_msgSend(v3, "intValue") != 7 && objc_msgSend(v3, "intValue") != 6 && objc_msgSend(v3, "intValue") != 8 && objc_msgSend(v3, "intValue") != 9;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end