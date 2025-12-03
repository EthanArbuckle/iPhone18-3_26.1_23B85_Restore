@interface VUIMenuDataSource
- (VUIMenuDataSource)initWithMainMenuItems:(id)items genreMenuItems:(id)menuItems;
- (id)_mainMenuItemsWithDefaultItemsBehavingAsiPhone:(BOOL)phone;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation VUIMenuDataSource

- (VUIMenuDataSource)initWithMainMenuItems:(id)items genreMenuItems:(id)menuItems
{
  itemsCopy = items;
  menuItemsCopy = menuItems;
  v12.receiver = self;
  v12.super_class = VUIMenuDataSource;
  v9 = [(VUIMenuDataSource *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_mainMenuItems, items);
    objc_storeStrong(&v10->_genreMenuItems, menuItems);
  }

  return v10;
}

- (id)copyWithZone:(_NSZone *)zone
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

- (id)_mainMenuItemsWithDefaultItemsBehavingAsiPhone:(BOOL)phone
{
  phoneCopy = phone;
  v25 = *MEMORY[0x1E69E9840];
  if (+[VUIAuthenticationManager isLibraryOnlyCountry](VUIAuthenticationManager, "isLibraryOnlyCountry") || (-[VUIMenuDataSource genreMenuItems](self, "genreMenuItems"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 count], v5, v6))
  {
    mainMenuItems = [(VUIMenuDataSource *)self mainMenuItems];
    goto LABEL_4;
  }

  mainMenuItems2 = [(VUIMenuDataSource *)self mainMenuItems];
  mainMenuItems = [MEMORY[0x1E695DF70] arrayWithArray:mainMenuItems2];
  v10 = [MEMORY[0x1E696AE18] predicateWithBlock:&__block_literal_global_122];
  v11 = [mainMenuItems2 filteredArrayUsingPredicate:v10];
  v12 = [mainMenuItems2 count];
  v13 = [v11 count];
  if (([MEMORY[0x1E69DF6F0] isTV] & 1) != 0 || (objc_msgSend(MEMORY[0x1E69DF6F0], "isVision") & 1) != 0 || (objc_msgSend(MEMORY[0x1E69DF6F0], "isPhone") & 1) != 0 || phoneCopy)
  {
    if (![v11 count] && v12 > v13)
    {
      goto LABEL_11;
    }
  }

  else if ((([MEMORY[0x1E69DF6F0] isPad] & 1) != 0 || objc_msgSend(MEMORY[0x1E69DF6F0], "isMac")) && !objc_msgSend(v11, "count"))
  {
LABEL_11:
    if ([mainMenuItems count])
    {
      v22 = 0u;
      v23 = 0u;
      v20 = 0u;
      v21 = 0u;
      reverseObjectEnumerator = [&unk_1F5E5EA90 reverseObjectEnumerator];
      allObjects = [reverseObjectEnumerator allObjects];

      v16 = [allObjects countByEnumeratingWithState:&v20 objects:v24 count:16];
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
              objc_enumerationMutation(allObjects);
            }

            [mainMenuItems insertObject:*(*(&v20 + 1) + 8 * i) atIndex:0];
          }

          v17 = [allObjects countByEnumeratingWithState:&v20 objects:v24 count:16];
        }

        while (v17);
      }
    }

    else
    {
      [mainMenuItems addObjectsFromArray:&unk_1F5E5EA90];
    }
  }

LABEL_4:

  return mainMenuItems;
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