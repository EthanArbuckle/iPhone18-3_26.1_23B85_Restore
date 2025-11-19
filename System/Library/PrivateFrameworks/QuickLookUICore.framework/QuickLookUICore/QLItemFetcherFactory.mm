@interface QLItemFetcherFactory
+ (id)fetcherForPreviewItem:(id)a3;
+ (id)possibleFetcherClasses;
@end

@implementation QLItemFetcherFactory

+ (id)fetcherForPreviewItem:(id)a3
{
  v35 = *MEMORY[0x277D85DE8];
  v3 = a3;
  if ([v3 isPromisedItem])
  {
LABEL_2:
    v4 = 0;
    goto LABEL_11;
  }

  v5 = [v3 previewItemType] == 6 || objc_msgSend(v3, "previewItemType") == 4;
  v6 = [v3 sandboxingURLWrapper];

  if (v6)
  {
    v7 = [QLUbiquitousItemFetcher alloc];
    v8 = [v3 sandboxingURLWrapper];
    v9 = [(QLUbiquitousItemFetcher *)v7 initWithSandboxingURLWrapper:v8 shouldZipPackageIfNeeded:v5];
LABEL_10:
    v4 = v9;

    goto LABEL_11;
  }

  v10 = [v3 previewItemURL];

  if (v10)
  {
    v11 = [QLUbiquitousItemFetcher alloc];
    v8 = [v3 previewItemURL];
    v9 = [(QLUbiquitousItemFetcher *)v11 initWithURL:v8 shouldZipPackageIfNeeded:v5];
    goto LABEL_10;
  }

  v14 = [v3 previewItemData];

  if (v14)
  {
    v15 = [QLDataFetcher alloc];
    v16 = [v3 previewItemData];
    v17 = [v3 previewItemContentType];
    v18 = [v3 previewItemTitle];
    v19 = [(QLDataFetcher *)v15 initWithData:v16 contentType:v17 previewItemTitle:v18];
  }

  else
  {
    v20 = [v3 previewItemDataProvider];

    if (v20)
    {
      v21 = [QLDataFetcher alloc];
      v16 = [v3 previewItemContentType];
      v4 = [(QLDataFetcher *)v21 initWithItem:v3 contentType:v16];
      goto LABEL_21;
    }

    v22 = [v3 previewItemProvider];

    if (v22)
    {
      v23 = [QLItemProviderFetcher alloc];
      v24 = [v3 previewItemContentType];
      v25 = [v3 itemSize];
      v4 = [(QLItemProviderFetcher *)v23 initWithContentType:v24 fileSize:v25];

      v16 = [v3 previewItemProvider];
      [(QLDataFetcher *)v4 setItemProvider:v16];
      goto LABEL_21;
    }

    v26 = [v3 searchableItemIdentifier];
    if (!v26 || (v27 = v26, [v3 searchableItemApplicationBundleIdentifier], v28 = objc_claimAutoreleasedReturnValue(), v28, v27, !v28))
    {
      v30 = [v3 fpItem];

      if (!v30)
      {
        v32 = QLSLogHandle();
        if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
        {
          v33 = 138412290;
          v34 = v3;
          _os_log_impl(&dword_261653000, v32, OS_LOG_TYPE_DEBUG, "No fetcher available for item: %@ #PreviewItem", &v33, 0xCu);
        }

        goto LABEL_2;
      }

      v31 = [QLFPItemFetcher alloc];
      v8 = [v3 fpItem];
      v9 = [(QLFPItemFetcher *)v31 initWithFPItem:v8 shouldZipPackageIfNeeded:v5];
      goto LABEL_10;
    }

    v29 = [QLSpotlightFetcher alloc];
    v16 = [v3 searchableItemIdentifier];
    v17 = [v3 spotlightQueryString];
    v18 = [v3 searchableItemApplicationBundleIdentifier];
    v19 = [(QLSpotlightFetcher *)v29 initWithSearchableItemUniqueIdentifier:v16 queryString:v17 applicationBundleIdentifier:v18];
  }

  v4 = v19;

LABEL_21:
LABEL_11:

  v12 = *MEMORY[0x277D85DE8];

  return v4;
}

+ (id)possibleFetcherClasses
{
  if (possibleFetcherClasses_onceToken != -1)
  {
    +[QLItemFetcherFactory possibleFetcherClasses];
  }

  v3 = possibleFetcherClasses__possibleFetcherClasses;

  return v3;
}

uint64_t __46__QLItemFetcherFactory_possibleFetcherClasses__block_invoke()
{
  v0 = MEMORY[0x277CBEB98];
  v1 = objc_opt_class();
  v2 = objc_opt_class();
  v3 = objc_opt_class();
  possibleFetcherClasses__possibleFetcherClasses = [v0 setWithObjects:{v1, v2, v3, objc_opt_class(), 0}];

  return MEMORY[0x2821F96F8]();
}

@end