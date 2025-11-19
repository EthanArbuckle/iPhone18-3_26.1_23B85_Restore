@interface PUExportUnmodifiedOriginalsActivity
- (BOOL)canPerformWithActivityItems:(id)a3;
- (id)_createDocumentPickerViewControllerForExportedItems:(id)a3;
- (id)activityTitle;
- (void)prepareWithActivityItems:(id)a3;
@end

@implementation PUExportUnmodifiedOriginalsActivity

- (id)_createDocumentPickerViewControllerForExportedItems:(id)a3
{
  v35 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v3, "count")}];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v29 objects:v34 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v30;
    v24 = v5;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v30 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v29 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v11 = v10;
          if (objc_opt_class() && (objc_opt_isKindOfClass() & 1) != 0)
          {
            v12 = v11;
          }

          else
          {
            v12 = 0;
          }

          [v4 addObject:v12];
        }

        else
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            continue;
          }

          v13 = v10;
          if (objc_opt_class() && (objc_opt_isKindOfClass() & 1) != 0)
          {
            v14 = v13;
          }

          else
          {
            v14 = 0;
          }

          v27 = 0u;
          v28 = 0u;
          v25 = 0u;
          v26 = 0u;
          v12 = v14;
          v15 = [v12 countByEnumeratingWithState:&v25 objects:v33 count:16];
          if (v15)
          {
            v16 = v15;
            v17 = *v26;
            do
            {
              for (j = 0; j != v16; ++j)
              {
                if (*v26 != v17)
                {
                  objc_enumerationMutation(v12);
                }

                v19 = *(*(&v25 + 1) + 8 * j);
                if (objc_opt_class() && (objc_opt_isKindOfClass() & 1) != 0)
                {
                  v20 = v19;

                  if (v20)
                  {
                    [v4 addObject:v20];
                  }
                }

                else
                {

                  v20 = 0;
                }
              }

              v16 = [v12 countByEnumeratingWithState:&v25 objects:v33 count:16];
            }

            while (v16);
          }

          v5 = v24;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v29 objects:v34 count:16];
    }

    while (v7);
  }

  v21 = [objc_alloc(MEMORY[0x1E69DC968]) initForExportingURLs:v4 asCopy:1];
  [v21 setDelegate:self];
  [v21 _setAutomaticallyDismissesAfterCompletion:0];

  return v21;
}

- (void)prepareWithActivityItems:(id)a3
{
  v4 = [(PUExportUnmodifiedOriginalsActivity *)self _createDocumentPickerViewControllerForExportedItems:a3];
  [(PUExportUnmodifiedOriginalsActivity *)self setCachedDocumentPickerViewController:v4];
}

- (BOOL)canPerformWithActivityItems:(id)a3
{
  v3 = [(PXActivity *)self itemSourceController];
  if ([v3 isPreparingIndividualItems])
  {
    v4 = [v3 assets];
    v5 = [v4 count] != 0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)activityTitle
{
  v2 = [(PXActivity *)self itemSourceController];
  v3 = [v2 assets];
  if ([v3 count] == 1)
  {
    v4 = @"SHARING_EXPORT_UNMODIFIED_ORIGINALS_TITLE";
  }

  else
  {
    v4 = @"SHARING_EXPORT_UNMODIFIED_ORIGINALS_MULTIPLE_TITLE";
  }

  v5 = PULocalizedString(v4);

  return v5;
}

@end