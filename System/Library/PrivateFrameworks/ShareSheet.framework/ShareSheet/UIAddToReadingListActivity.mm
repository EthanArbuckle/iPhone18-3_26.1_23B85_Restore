@interface UIAddToReadingListActivity
- (BOOL)canPerformWithActivityItems:(id)a3;
- (id)_heroActionTitle;
- (id)activityTitle;
- (void)_addToReadingList:(id)a3 withTitle:(id)a4;
- (void)prepareWithActivityItems:(id)a3;
@end

@implementation UIAddToReadingListActivity

- (id)activityTitle
{
  v2 = _ShareSheetBundle();
  v3 = [v2 localizedStringForKey:@"AddToReadingList[Activity]" value:@"Add to Reading List" table:@"Localizable"];

  return v3;
}

- (id)_heroActionTitle
{
  v2 = _ShareSheetBundle();
  v3 = [v2 localizedStringForKey:@"Read Later" value:@"Read Later" table:@"Localizable"];

  return v3;
}

- (BOOL)canPerformWithActivityItems:(id)a3
{
  v3 = [objc_opt_class() applicationBundleID];
  CanDisplayActivityForApplicationWithBundleID = _UIActivityCanDisplayActivityForApplicationWithBundleID(v3);

  if (CanDisplayActivityForApplicationWithBundleID)
  {
    return (_UIActivityItemTypes() >> 2) & 1;
  }

  else
  {
    v6 = share_sheet_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&dword_18B359000, v6, OS_LOG_TYPE_DEFAULT, "AddToReadingListActivity: Can't display activity", v8, 2u);
    }

    LOBYTE(v5) = 0;
  }

  return v5;
}

- (void)prepareWithActivityItems:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      v8 = 0;
      do
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v11 + 1) + 8 * v8);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v10 = [(UIActivity *)self _subjectForActivityItem:v9];
          [(UIAddToReadingListActivity *)self _addToReadingList:v9 withTitle:v10];
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }
}

- (void)_addToReadingList:(id)a3 withTitle:(id)a4
{
  v7 = a3;
  v5 = a4;
  if (v7 && [v7 isHTTPOrHTTPSURL])
  {
    if (!v5)
    {
      v5 = [v7 absoluteString];
    }

    v6 = [(objc_class *)getSSReadingListClass() defaultReadingList];
    [v6 addReadingListItemWithURL:v7 title:v5 previewText:0 error:0];
  }
}

@end