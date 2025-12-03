@interface UIAddToReadingListActivity
- (BOOL)canPerformWithActivityItems:(id)items;
- (id)_heroActionTitle;
- (id)activityTitle;
- (void)_addToReadingList:(id)list withTitle:(id)title;
- (void)prepareWithActivityItems:(id)items;
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

- (BOOL)canPerformWithActivityItems:(id)items
{
  applicationBundleID = [objc_opt_class() applicationBundleID];
  CanDisplayActivityForApplicationWithBundleID = _UIActivityCanDisplayActivityForApplicationWithBundleID(applicationBundleID);

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

- (void)prepareWithActivityItems:(id)items
{
  v16 = *MEMORY[0x1E69E9840];
  itemsCopy = items;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [itemsCopy countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(itemsCopy);
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
      v6 = [itemsCopy countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }
}

- (void)_addToReadingList:(id)list withTitle:(id)title
{
  listCopy = list;
  titleCopy = title;
  if (listCopy && [listCopy isHTTPOrHTTPSURL])
  {
    if (!titleCopy)
    {
      titleCopy = [listCopy absoluteString];
    }

    defaultReadingList = [(objc_class *)getSSReadingListClass() defaultReadingList];
    [defaultReadingList addReadingListItemWithURL:listCopy title:titleCopy previewText:0 error:0];
  }
}

@end