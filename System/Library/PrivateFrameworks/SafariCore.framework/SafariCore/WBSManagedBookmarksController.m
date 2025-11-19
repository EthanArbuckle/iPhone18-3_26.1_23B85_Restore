@interface WBSManagedBookmarksController
- (NSString)topLevelBookmarksFolderTitle;
- (WBSManagedBookmarksController)init;
- (id)managedBookmarks;
- (void)dealloc;
@end

@implementation WBSManagedBookmarksController

- (WBSManagedBookmarksController)init
{
  v10.receiver = self;
  v10.super_class = WBSManagedBookmarksController;
  v2 = [(WBSManagedBookmarksController *)&v10 init];
  if (v2)
  {
    v3 = MEMORY[0x1E69AE020];
    v4 = [MEMORY[0x1E695DFD8] setWithObject:*MEMORY[0x1E69ADFD8]];
    v5 = [v3 publisherForGroups:v4];

    v6 = [v5 sinkWithReceiveInput:&__block_literal_global_35];
    managedBookmarksSubscription = v2->_managedBookmarksSubscription;
    v2->_managedBookmarksSubscription = v6;

    v8 = v2;
  }

  return v2;
}

void __37__WBSManagedBookmarksController_init__block_invoke(uint64_t a1, void *a2)
{
  if ([a2 containsObject:*MEMORY[0x1E69ADFD8]])
  {
    v2 = [MEMORY[0x1E696AD88] defaultCenter];
    [v2 postNotificationName:@"ManagedBookmarksDidChange" object:0];
  }
}

- (void)dealloc
{
  managedBookmarksSubscription = self->_managedBookmarksSubscription;
  if (managedBookmarksSubscription)
  {
    [(MOCancellable *)managedBookmarksSubscription cancel];
  }

  v4.receiver = self;
  v4.super_class = WBSManagedBookmarksController;
  [(WBSManagedBookmarksController *)&v4 dealloc];
}

- (id)managedBookmarks
{
  v38 = *MEMORY[0x1E69E9840];
  v2 = objc_opt_new();
  v3 = [v2 safari];
  v4 = [v3 managedBookmarks];

  if ([v4 count])
  {
    v28 = v2;
    v5 = [MEMORY[0x1E695DF90] dictionary];
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v27 = v4;
    obj = v4;
    v31 = [obj countByEnumeratingWithState:&v33 objects:v37 count:16];
    if (v31)
    {
      v30 = *v34;
      do
      {
        v6 = 0;
        do
        {
          if (*v34 != v30)
          {
            objc_enumerationMutation(obj);
          }

          v32 = v6;
          v7 = *(*(&v33 + 1) + 8 * v6);
          v8 = [v7 title];
          v9 = [v5 objectForKey:v8];

          if (v9)
          {
            v10 = MEMORY[0x1E696AEC0];
            v11 = [v7 title];
            v12 = [v7 sourceIdentifier];
            v13 = [v10 stringWithFormat:@"%@ - %@", v11, v12];

            v8 = v13;
          }

          v14 = [v5 objectForKey:v8];

          if (v14)
          {
            v15 = 1;
            do
            {
              v16 = MEMORY[0x1E696AEC0];
              v17 = [v7 title];
              [v7 sourceIdentifier];
              v19 = v18 = v5;
              v20 = [v16 stringWithFormat:@"%@ - %@ (%lu)", v17, v19, v15];

              v5 = v18;
              v21 = [v18 objectForKey:v20];

              ++v15;
              v8 = v20;
            }

            while (v21);
          }

          else
          {
            v20 = v8;
          }

          v22 = [v7 children];
          v23 = dictionaryArrayFromBookmarkArray(v22);
          [v5 setObject:v23 forKeyedSubscript:v20];

          v6 = v32 + 1;
        }

        while (v32 + 1 != v31);
        v31 = [obj countByEnumeratingWithState:&v33 objects:v37 count:16];
      }

      while (v31);
    }

    v24 = [v5 copy];
    v4 = v27;
    v2 = v28;
  }

  else
  {
    v24 = 0;
  }

  v25 = *MEMORY[0x1E69E9840];

  return v24;
}

- (NSString)topLevelBookmarksFolderTitle
{
  v2 = [(WBSManagedBookmarksController *)self managedBookmarks];
  if ([v2 count])
  {
    if ([v2 count] == 1)
    {
      v3 = [v2 allKeys];
      v4 = [v3 firstObject];
    }

    else
    {
      v4 = _WBSLocalizedString(@"Organization Bookmarks", &_WBSLocalizableStringsBundleOnceToken, &_WBSLocalizableStringsBundle);
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end