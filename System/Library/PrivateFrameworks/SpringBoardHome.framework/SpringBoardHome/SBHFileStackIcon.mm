@interface SBHFileStackIcon
- (SBHFileStackIcon)initWithLeafIdentifier:(id)a3 applicationBundleID:(id)a4;
- (SBHFileStackIcon)initWithUniqueLeafIdentifier;
- (id)displayName;
- (id)uninstallAlertCancelTitle;
- (id)uninstallAlertConfirmTitle;
- (id)uninstallAlertTitle;
- (void)displayName;
- (void)setCurrentSortOrderAscending:(BOOL)a3;
- (void)setDataSourceUniqueIdentifier:(id)a3;
- (void)setDisplayMode:(id)a3;
- (void)setSortOrder:(id)a3;
@end

@implementation SBHFileStackIcon

- (SBHFileStackIcon)initWithUniqueLeafIdentifier
{
  v3 = [MEMORY[0x1E696AFB0] UUID];
  v4 = [v3 UUIDString];

  v5 = [(SBHFileStackIcon *)self initWithLeafIdentifier:v4 applicationBundleID:0];
  return v5;
}

- (SBHFileStackIcon)initWithLeafIdentifier:(id)a3 applicationBundleID:(id)a4
{
  v15.receiver = self;
  v15.super_class = SBHFileStackIcon;
  v4 = [(SBLeafIcon *)&v15 initWithLeafIdentifier:a3 applicationBundleID:a4];
  if (v4)
  {
    v5 = objc_alloc_init(SBHFileStackIconImageProviderDocumentManagerDataSource);
    v6 = [[SBHFileStackIconImageProvider alloc] initWithFileStackIconImageProviderDataSource:v5];
    imageProvider = v4->_imageProvider;
    v4->_imageProvider = v6;

    [(SBHFileStackIconImageProvider *)v4->_imageProvider setDelegate:v4];
    [(SBIcon *)v4 setGridSizeClass:@"SBHIconGridSizeClassDefault"];
    v8 = [MEMORY[0x1E699A418] defaultSortOrder];
    sortOrder = v4->_sortOrder;
    v4->_sortOrder = v8;

    v4->_currentSortOrderAscending = [(DOCSBFolderSortOrder *)v4->_sortOrder isSortAscending];
    v10 = [MEMORY[0x1E699A418] defaultDisplayMode];
    displayMode = v4->_displayMode;
    v4->_displayMode = v10;

    v12 = objc_alloc_init(MEMORY[0x1E696AFB0]);
    dataSourceUniqueIdentifier = v4->_dataSourceUniqueIdentifier;
    v4->_dataSourceUniqueIdentifier = v12;
  }

  return v4;
}

- (void)setSortOrder:(id)a3
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 identifier];
  v6 = [(DOCSBFolderSortOrder *)self->_sortOrder identifier];
  v7 = [v5 isEqualToString:v6];

  if ((v7 & 1) == 0)
  {
    v8 = [MEMORY[0x1E699A418] supportedSortOrders];
    v21 = v4;
    v9 = [v4 identifier];
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v10 = v8;
    v11 = [v10 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v23;
      while (2)
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v23 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v22 + 1) + 8 * i);
          v16 = [v15 identifier];
          v17 = [v9 isEqualToString:v16];

          if (v17)
          {
            v19 = [v15 copy];
            sortOrder = self->_sortOrder;
            self->_sortOrder = v19;

            [(SBIcon *)self archivableStateDidChange];
            v18 = v10;
            goto LABEL_13;
          }
        }

        v12 = [v10 countByEnumeratingWithState:&v22 objects:v26 count:16];
        if (v12)
        {
          continue;
        }

        break;
      }
    }

    v18 = SBLogIcon();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v4 = v21;
      [SBHFileStackIcon setSortOrder:v21];
    }

    else
    {
LABEL_13:
      v4 = v21;
    }
  }
}

- (void)setDisplayMode:(id)a3
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 identifier];
  v6 = [(DOCSBFolderDisplayMode *)self->_displayMode identifier];
  v7 = [v5 isEqualToString:v6];

  if ((v7 & 1) == 0)
  {
    v8 = [MEMORY[0x1E699A418] supportedDisplayModes];
    v21 = v4;
    v9 = [v4 identifier];
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v10 = v8;
    v11 = [v10 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v23;
      while (2)
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v23 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v22 + 1) + 8 * i);
          v16 = [v15 identifier];
          v17 = [v9 isEqualToString:v16];

          if (v17)
          {
            v19 = [v15 copy];
            displayMode = self->_displayMode;
            self->_displayMode = v19;

            [(SBIcon *)self archivableStateDidChange];
            v18 = v10;
            goto LABEL_13;
          }
        }

        v12 = [v10 countByEnumeratingWithState:&v22 objects:v26 count:16];
        if (v12)
        {
          continue;
        }

        break;
      }
    }

    v18 = SBLogIcon();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v4 = v21;
      [SBHFileStackIcon setDisplayMode:v21];
    }

    else
    {
LABEL_13:
      v4 = v21;
    }
  }
}

- (void)setCurrentSortOrderAscending:(BOOL)a3
{
  if (self->_currentSortOrderAscending != a3)
  {
    self->_currentSortOrderAscending = a3;
    [(SBIcon *)self archivableStateDidChange];
  }
}

- (void)setDataSourceUniqueIdentifier:(id)a3
{
  v6 = a3;
  if (([v6 isEqual:self->_dataSourceUniqueIdentifier] & 1) == 0)
  {
    v4 = [v6 copy];
    dataSourceUniqueIdentifier = self->_dataSourceUniqueIdentifier;
    self->_dataSourceUniqueIdentifier = v4;

    [(SBIcon *)self archivableStateDidChange];
  }
}

- (id)displayName
{
  url = self->_url;
  v11 = 0;
  v3 = *MEMORY[0x1E695DC10];
  v10 = 0;
  v4 = [(NSURL *)url getResourceValue:&v11 forKey:v3 error:&v10];
  v5 = v11;
  v6 = v10;
  if (v4)
  {
    v7 = v5;
  }

  else
  {
    v8 = SBLogDockFileStack();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [(SBHFileStackIcon *)v6 displayName];
    }

    v7 = &stru_1F3D472A8;
  }

  return v7;
}

- (id)uninstallAlertTitle
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = SBHBundle();
  v5 = [v4 localizedStringForKey:@"REMOVE_FROM_DOCK_ICON_TITLE_WITH_NAME" value:&stru_1F3D472A8 table:@"SpringBoardHome"];
  v6 = [(SBHFileStackIcon *)self displayName];
  v7 = [v3 stringWithFormat:v5, v6];

  return v7;
}

- (id)uninstallAlertCancelTitle
{
  v2 = SBHBundle();
  v3 = [v2 localizedStringForKey:@"REMOVE_FROM_DOCK_BUTTON_CANCEL" value:&stru_1F3D472A8 table:@"SpringBoardHome"];

  return v3;
}

- (id)uninstallAlertConfirmTitle
{
  v2 = SBHBundle();
  v3 = [v2 localizedStringForKey:@"REMOVE_FROM_DOCK_BUTTON_REMOVE" value:&stru_1F3D472A8 table:@"SpringBoardHome"];

  return v3;
}

- (void)setSortOrder:(void *)a1 .cold.1(void *a1)
{
  v1 = [a1 localizedName];
  OUTLINED_FUNCTION_0_17(&dword_1BEB18000, v2, v3, "File Stack Icon Sort Order %@ is not supported", v4, v5, v6, v7, 2u);
}

- (void)setDisplayMode:(void *)a1 .cold.1(void *a1)
{
  v1 = [a1 localizedName];
  OUTLINED_FUNCTION_0_17(&dword_1BEB18000, v2, v3, "File Stack Icon Display Mode %@ is not supported", v4, v5, v6, v7, 2u);
}

- (void)displayName
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&dword_1BEB18000, a2, OS_LOG_TYPE_ERROR, "Error in retrieving localized name from URL. Error: %{public}@", &v2, 0xCu);
}

@end