@interface PLSyndicationResourceDataStore
+ (BOOL)_markSyndicationResourceAsLocallyAvailableWithURL:(id)a3 resource:(id)a4 inode:(unint64_t)a5 error:(id *)a6;
+ (BOOL)_safeCopyItemAtURL:(id)a3 toURLAndReplaceIfNeeded:(id)a4 error:(id *)a5;
+ (BOOL)_unpackPVTBundleAtURL:(id)a3 primaryURL:(id *)a4 secondaryURL:(id *)a5 error:(id *)a6;
+ (BOOL)readInodeAndMarkResource:(id)a3 locallyAvailableWithFileURL:(id)a4 error:(id *)a5;
+ (unsigned)keyLengthWithDataPreview:(unsigned __int8)a3;
+ (void)_addTemporaryURL:(id)a3 itemIdentifier:(id)a4 error:(id)a5 toResults:(id)a6 andFileHandles:(id)a7;
+ (void)_provideFileURLAndUnwrapLivePhotoIfNeededForBundleID:(id)a3 syndicationIdentifier:(id)a4 typeIdentifier:(id)a5 isLivePhoto:(BOOL)a6 options:(int64_t)a7 completionHandler:(id)a8;
+ (void)_provideFileURLForBundleID:(id)a3 itemIdentifier:(id)a4 typeIdentifier:(id)a5 options:(int64_t)a6 completionHandler:(id)a7;
+ (void)_provideFileURLsForBundleID:(id)a3 itemIdentifiers:(id)a4 typeIdentifier:(id)a5 options:(int64_t)a6 completionHandler:(id)a7;
+ (void)_provideTemporaryFileURLFromDataForBundleID:(id)a3 itemIdentifier:(id)a4 typeIdentifier:(id)a5 options:(int64_t)a6 completionHandler:(id)a7;
+ (void)provideFileURLAndUnwrapLivePhotoIfNeededForItemIdentifiersWithBundleIDs:(id)a3 destURLs:(id)a4 options:(id)a5 resultHandler:(id)a6 completionHandler:(id)a7;
- (BOOL)_copyAndMarkAsLocallyAvailablePairedLivePhotoResourceForRequestedResource:(id)a3 requestedVideoComplement:(BOOL)a4 sourceURL:(id)a5 error:(id *)a6;
- (BOOL)_copyItemAtURL:(id)a3 withPathManager:(id)a4 destFileIdentifier:(id)a5 inode:(unint64_t *)a6 error:(id *)a7;
- (BOOL)canStoreExternalResource:(id)a3;
- (BOOL)storeExternalResource:(id)a3 forAsset:(id)a4 options:(id)a5 error:(id *)a6 resultingResource:(id *)a7;
- (id)_errorForUnderlyingError:(id)a3;
- (id)_getDestinationURLAndFixLocalAvailabilityIfNeededForResource:(id)a3 fileIdentifier:(id *)a4 isLocallyAvailable:(BOOL *)a5 error:(id *)a6;
- (id)_requestLocalAvailabilityChangeForSyndicationOriginalResource:(id)a3 options:(id)a4 completion:(id)a5;
- (id)descriptionForSubtype:(int64_t)a3;
- (id)expectedFileURLForResource:(id)a3 asset:(id)a4;
- (id)imageConversionClientForResourceGenerator:(id)a3;
- (id)keyFromKeyStruct:(const void *)a3;
- (id)metadataForResourceGenerator:(id)a3 fromFileURL:(id)a4;
- (id)requestLocalAvailabilityChange:(signed __int16)a3 forResource:(id)a4 options:(id)a5 completion:(id)a6;
- (id)resourceDataForKey:(id)a3 assetID:(id)a4;
- (id)resourceURLForKey:(id)a3 assetID:(id)a4;
- (id)videoConversionClientForResourceGenerator:(id)a3;
@end

@implementation PLSyndicationResourceDataStore

+ (unsigned)keyLengthWithDataPreview:(unsigned __int8)a3
{
  v3 = a3;
  if (a3 >= 0x10u)
  {
    v4 = 16;
  }

  else
  {
    v4 = a3;
  }

  if (v4 == 3 || v4 == 4 || v4 == 16)
  {
    v5 = objc_opt_class();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  return [v6 keyLengthWithDataPreview:v3];
}

+ (BOOL)readInodeAndMarkResource:(id)a3 locallyAvailableWithFileURL:(id)a4 error:(id *)a5
{
  v22 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v16 = 0;
  v17 = 0;
  v10 = [PLCacheDeleteSupport readInodeAtURL:v9 outInode:&v17 error:&v16];
  v11 = v16;
  if (!v10)
  {
    v12 = PLSyndicationGetLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = [MEMORY[0x1E69BF220] descriptionWithFileURL:v9];
      *buf = 138412546;
      v19 = v13;
      v20 = 2112;
      v21 = v11;
      _os_log_impl(&dword_19BF1F000, v12, OS_LOG_TYPE_ERROR, "[resource] failed to read inode at url: %@, non-fatal error: %@", buf, 0x16u);
    }
  }

  v14 = [a1 _markSyndicationResourceAsLocallyAvailableWithURL:v9 resource:v8 inode:v17 error:a5];

  return v14;
}

+ (void)provideFileURLAndUnwrapLivePhotoIfNeededForItemIdentifiersWithBundleIDs:(id)a3 destURLs:(id)a4 options:(id)a5 resultHandler:(id)a6 completionHandler:(id)a7
{
  v69 = *MEMORY[0x1E69E9840];
  v12 = a3;
  v38 = a4;
  v39 = a5;
  v37 = a6;
  v36 = a7;
  v13 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  obj = v12;
  v14 = [obj countByEnumeratingWithState:&v57 objects:v68 count:16];
  if (v14)
  {
    v15 = *v58;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v58 != v15)
        {
          objc_enumerationMutation(obj);
        }

        v17 = *(*(&v57 + 1) + 8 * i);
        v18 = [obj objectForKeyedSubscript:v17];
        v19 = [v13 objectForKeyedSubscript:v18];
        if (!v19)
        {
          v19 = objc_alloc_init(MEMORY[0x1E695DF70]);
          [v13 setObject:v19 forKeyedSubscript:v18];
        }

        [v19 addObject:v17];
      }

      v14 = [obj countByEnumeratingWithState:&v57 objects:v68 count:16];
    }

    while (v14);
  }

  v20 = dispatch_group_create();
  v55[0] = 0;
  v55[1] = v55;
  v55[2] = 0x3032000000;
  v55[3] = __Block_byref_object_copy__90025;
  v55[4] = __Block_byref_object_dispose__90026;
  v56 = 0;
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v21 = v13;
  v22 = [v21 countByEnumeratingWithState:&v51 objects:v67 count:16];
  if (v22)
  {
    v23 = *v52;
    do
    {
      for (j = 0; j != v22; ++j)
      {
        if (*v52 != v23)
        {
          objc_enumerationMutation(v21);
        }

        v25 = *(*(&v51 + 1) + 8 * j);
        dispatch_group_enter(v20);
        v26 = [v21 objectForKeyedSubscript:v25];
        v27 = PLSyndicationCSProvideOptionsFromRequestOptions(v39, v25);
        v28 = PLSyndicationGetLog();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
        {
          v29 = [v26 count];
          *buf = 134218498;
          v62 = v29;
          v63 = 2114;
          v64 = v25;
          v65 = 2048;
          v66 = v27;
          _os_log_impl(&dword_19BF1F000, v28, OS_LOG_TYPE_INFO, "[resource] issuing batch request for %tu fileURLs for bundle ID %{public}@ with options 0x%tx", buf, 0x20u);
        }

        v44[0] = MEMORY[0x1E69E9820];
        v44[1] = 3221225472;
        v44[2] = __155__PLSyndicationResourceDataStore_provideFileURLAndUnwrapLivePhotoIfNeededForItemIdentifiersWithBundleIDs_destURLs_options_resultHandler_completionHandler___block_invoke;
        v44[3] = &unk_1E7573858;
        v44[4] = v25;
        v30 = v26;
        v45 = v30;
        v46 = v38;
        v50 = a1;
        v48 = v37;
        v49 = v55;
        v47 = v20;
        [a1 _provideFileURLsForBundleID:v25 itemIdentifiers:v30 typeIdentifier:&stru_1F0F06D80 options:v27 completionHandler:v44];
      }

      v22 = [v21 countByEnumeratingWithState:&v51 objects:v67 count:16];
    }

    while (v22);
  }

  v31 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v32 = qos_class_self();
  v33 = dispatch_queue_attr_make_with_qos_class(v31, v32, 0);
  v34 = dispatch_queue_create("PLSyndicationResourceDataStore-provideURLs", v33);

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __155__PLSyndicationResourceDataStore_provideFileURLAndUnwrapLivePhotoIfNeededForItemIdentifiersWithBundleIDs_destURLs_options_resultHandler_completionHandler___block_invoke_154;
  block[3] = &unk_1E7573998;
  v42 = v36;
  v43 = v55;
  v35 = v36;
  dispatch_group_notify(v20, v34, block);

  _Block_object_dispose(v55, 8);
}

void __155__PLSyndicationResourceDataStore_provideFileURLAndUnwrapLivePhotoIfNeededForItemIdentifiersWithBundleIDs_destURLs_options_resultHandler_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v80 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = PLSyndicationGetLog();
  v55 = v5;
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 32);
    *buf = 138543874;
    v70 = v8;
    v5 = v55;
    v71 = 2048;
    v72 = [v55 count];
    v73 = 2112;
    v74 = v6;
    _os_log_impl(&dword_19BF1F000, v7, OS_LOG_TYPE_DEFAULT, "[resource] batch request for bundle ID %{public}@ returned %tu results, error: %@", buf, 0x20u);
  }

  if (!v5)
  {
    v47 = *(*(a1 + 72) + 8);
    v48 = v6;
    v9 = *(v47 + 40);
    *(v47 + 40) = v48;
    goto LABEL_54;
  }

  v67 = 0u;
  v68 = 0u;
  v65 = 0u;
  v66 = 0u;
  v9 = *(a1 + 40);
  v57 = [v9 countByEnumeratingWithState:&v65 objects:v79 count:16];
  if (v57)
  {
    v49 = v6;
    v58 = a1;
    v56 = *v66;
    v52 = *MEMORY[0x1E696A278];
    v53 = *MEMORY[0x1E69BFF70];
    v51 = *MEMORY[0x1E69C09D0];
    obj = v9;
    while (1)
    {
      v10 = 0;
      do
      {
        if (*v66 != v56)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v65 + 1) + 8 * v10);
        v12 = [v5 objectForKeyedSubscript:v11];
        v13 = v12;
        if (!v12)
        {
          v17 = MEMORY[0x1E696ABC0];
          v77 = v52;
          v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"no batch result for item identifier: %@", v11];
          v78 = v18;
          v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v78 forKeys:&v77 count:1];
          v15 = [v17 errorWithDomain:v53 code:4 userInfo:v19];

          v20 = PLSyndicationGetLog();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
          {
            *buf = 138543362;
            v70 = v11;
            _os_log_impl(&dword_19BF1F000, v20, OS_LOG_TYPE_ERROR, "[resource] no batch result for item identifier %{public}@", buf, 0xCu);
          }

          goto LABEL_16;
        }

        v14 = [v12 url];

        if (v14)
        {
          v15 = 0;
          v16 = 1;
          goto LABEL_18;
        }

        v15 = [v13 error];
        v20 = PLSyndicationGetLog();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          v21 = [v13 error];
          *buf = 138543618;
          v70 = v11;
          v71 = 2112;
          v72 = v21;
          _os_log_impl(&dword_19BF1F000, v20, OS_LOG_TYPE_ERROR, "[resource] batch result for item identifier %{public}@ returned error %@", buf, 0x16u);

LABEL_16:
          v5 = v55;
        }

        v16 = 0;
LABEL_18:
        v22 = [*(v58 + 48) objectForKeyedSubscript:v11];
        v59 = v22;
        if (!v16)
        {
          v32 = 0;
          v29 = 0;
          v30 = 0;
          v33 = 0;
          v34 = 0;
          goto LABEL_40;
        }

        v23 = v22;
        if ([v22 count] != 2)
        {
          v35 = PLSyndicationGetLog();
          if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
          {
            v36 = [v23 count];
            *buf = 134217984;
            v70 = v36;
            _os_log_impl(&dword_19BF1F000, v35, OS_LOG_TYPE_ERROR, "[resource] invalid number of destination URLs provided: %tu", buf, 0xCu);
          }

          v32 = 0;
          v29 = 0;
          v30 = 0;
          v33 = 0;
          goto LABEL_37;
        }

        v24 = [v13 url];
        v25 = [v24 pathExtension];
        v26 = [v25 isEqualToString:v51];

        if (v26)
        {
          v27 = *(v58 + 80);
          v28 = [v13 url];
          v63 = 0;
          v64 = 0;
          v62 = v15;
          LODWORD(v27) = [v27 _unpackPVTBundleAtURL:v28 primaryURL:&v64 secondaryURL:&v63 error:&v62];
          v29 = v64;
          v30 = v63;
          v31 = v62;

          if (!v27)
          {
            v32 = 0;
            v33 = 0;
            v34 = 0;
            v15 = v31;
            goto LABEL_39;
          }

          v15 = v31;
        }

        else
        {
          v29 = [v13 url];
          v30 = 0;
        }

        v33 = [v29 lastPathComponent];
        v34 = [v59 objectAtIndexedSubscript:0];
        v37 = *(v58 + 80);
        v61 = 0;
        v38 = [v37 _safeCopyItemAtURL:v29 toURLAndReplaceIfNeeded:v34 error:&v61];
        v39 = v61;
        v40 = v39;
        if ((v38 & 1) == 0)
        {
          v44 = PLSyndicationGetLog();
          if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
          {
            *buf = 138544130;
            v70 = v11;
            v71 = 2112;
            v72 = v29;
            v73 = 2112;
            v74 = v34;
            v75 = 2112;
            v76 = v40;
            _os_log_impl(&dword_19BF1F000, v44, OS_LOG_TYPE_ERROR, "[resource] failed to copy primary resource for identifier: %{public}@ from url: %@ to url: %@, error: %@", buf, 0x2Au);
          }

          if (!v15)
          {
            v15 = v40;
          }

          v32 = 0;
          v35 = v34;
LABEL_37:
          v34 = 0;
          goto LABEL_38;
        }

        if (v30)
        {
          v35 = [v59 objectAtIndexedSubscript:1];
          v41 = [MEMORY[0x1E696AC08] defaultManager];
          [v41 removeItemAtURL:v35 error:0];

          v42 = *(v58 + 80);
          v60 = 0;
          LOBYTE(v41) = [v42 _safeCopyItemAtURL:v30 toURLAndReplaceIfNeeded:v35 error:&v60];
          v43 = v60;
          if ((v41 & 1) == 0)
          {
            v50 = v43;
            v45 = PLSyndicationGetLog();
            if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
            {
              *buf = 138544130;
              v70 = v11;
              v71 = 2112;
              v72 = v30;
              v73 = 2112;
              v74 = v35;
              v75 = 2112;
              v76 = v50;
              _os_log_impl(&dword_19BF1F000, v45, OS_LOG_TYPE_ERROR, "[resource] failed to copy secondary resource for identifier: %{public}@ from url: %@ to url: %@, error: %@", buf, 0x2Au);
            }

            if (!v15)
            {
              v15 = v50;
            }

            v32 = 0;
            goto LABEL_38;
          }

          v32 = v35;
        }

        else
        {
          v32 = 0;
        }

        v35 = PLSyndicationGetLog();
        if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543618;
          v70 = v11;
          v71 = 2112;
          v72 = v34;
          _os_log_impl(&dword_19BF1F000, v35, OS_LOG_TYPE_DEFAULT, "[resource] delivering individual result of batch download for identifier: %{public}@, primary url: %@", buf, 0x16u);
        }

LABEL_38:

LABEL_39:
        v5 = v55;
LABEL_40:
        (*(*(v58 + 64) + 16))();

        ++v10;
      }

      while (v57 != v10);
      v9 = obj;
      v46 = [obj countByEnumeratingWithState:&v65 objects:v79 count:16];
      v57 = v46;
      if (!v46)
      {
        a1 = v58;
        v6 = v49;
        break;
      }
    }
  }

LABEL_54:

  dispatch_group_leave(*(a1 + 56));
}

+ (BOOL)_safeCopyItemAtURL:(id)a3 toURLAndReplaceIfNeeded:(id)a4 error:(id *)a5
{
  v47[1] = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = [v8 pathComponents];
  v10 = v9;
  if (!v8 || [v9 count] < 6)
  {
    goto LABEL_12;
  }

  v11 = [v10 objectAtIndexedSubscript:{objc_msgSend(v10, "count") - 3}];
  if (![v11 isEqualToString:*MEMORY[0x1E69BFF28]])
  {
    goto LABEL_11;
  }

  v12 = [v10 objectAtIndexedSubscript:{objc_msgSend(v10, "count") - 4}];
  if (([v12 isEqualToString:*MEMORY[0x1E69BFF88]] & 1) == 0)
  {

LABEL_11:
    goto LABEL_12;
  }

  v13 = [v10 objectAtIndexedSubscript:{objc_msgSend(v10, "count") - 5}];
  v14 = [v13 isEqualToString:*MEMORY[0x1E69BFF80]];

  if (!v14)
  {
LABEL_12:
    v21 = MEMORY[0x1E696ABC0];
    v22 = *MEMORY[0x1E69BFF70];
    v42 = *MEMORY[0x1E696A278];
    v23 = [MEMORY[0x1E696AEC0] stringWithFormat:@"invalid url for syndication data store: %@", v8];
    v43 = v23;
    v24 = MEMORY[0x1E695DF20];
    v25 = &v43;
    v26 = &v42;
    goto LABEL_13;
  }

  if (!v7 || ([MEMORY[0x1E696AC08] defaultManager], v15 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v7, "path"), v16 = objc_claimAutoreleasedReturnValue(), v17 = objc_msgSend(v15, "fileExistsAtPath:", v16), v16, v15, !v17))
  {
    v21 = MEMORY[0x1E696ABC0];
    v22 = *MEMORY[0x1E69BFF70];
    v44 = *MEMORY[0x1E696A278];
    v23 = [MEMORY[0x1E696AEC0] stringWithFormat:@"invalid copy from url: %@", v7];
    v45 = v23;
    v24 = MEMORY[0x1E695DF20];
    v25 = &v45;
    v26 = &v44;
    goto LABEL_13;
  }

  v41 = 0;
  v18 = [MEMORY[0x1E696AC08] defaultManager];
  v19 = [v8 path];
  v20 = [v18 fileExistsAtPath:v19 isDirectory:&v41];

  if (v41)
  {
    v21 = MEMORY[0x1E696ABC0];
    v22 = *MEMORY[0x1E69BFF70];
    v46 = *MEMORY[0x1E696A278];
    v23 = [MEMORY[0x1E696AEC0] stringWithFormat:@"copy to url is a directory: %@", v8];
    v47[0] = v23;
    v24 = MEMORY[0x1E695DF20];
    v25 = v47;
    v26 = &v46;
LABEL_13:
    v27 = [v24 dictionaryWithObjects:v25 forKeys:v26 count:1];
    v28 = [v21 errorWithDomain:v22 code:0 userInfo:v27];

    goto LABEL_14;
  }

  if (v20)
  {
    v32 = [MEMORY[0x1E696AC08] defaultManager];
    [v32 removeItemAtURL:v8 error:0];
  }

  v33 = [v8 URLByDeletingLastPathComponent];
  v34 = [MEMORY[0x1E696AC08] defaultManager];
  v40 = 0;
  v35 = [v34 createDirectoryAtURL:v33 withIntermediateDirectories:1 attributes:0 error:&v40];
  v28 = v40;

  if (v35)
  {
    v39 = 0;
    v36 = [MEMORY[0x1E69BF238] copyItemAtURL:v7 toURL:v8 error:&v39];
    v37 = v39;
    v38 = v37;
    if (v36)
    {

      v30 = 1;
      goto LABEL_17;
    }

    v28 = v38;
  }

  else
  {
  }

LABEL_14:
  if (a5)
  {
    v29 = v28;
    *a5 = v28;
  }

  v30 = 0;
LABEL_17:

  return v30;
}

+ (void)_provideTemporaryFileURLFromDataForBundleID:(id)a3 itemIdentifier:(id)a4 typeIdentifier:(id)a5 options:(int64_t)a6 completionHandler:(id)a7
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a7;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __134__PLSyndicationResourceDataStore__provideTemporaryFileURLFromDataForBundleID_itemIdentifier_typeIdentifier_options_completionHandler___block_invoke;
  v19[3] = &unk_1E7573808;
  v20 = v12;
  v21 = v11;
  v22 = v13;
  v23 = v14;
  v24 = a6;
  v15 = v13;
  v16 = v14;
  v17 = v11;
  v18 = v12;
  PLUTIAndSizeFromCSSearchableItemIdentifier(v18, v17, v19);
}

void __134__PLSyndicationResourceDataStore__provideTemporaryFileURLFromDataForBundleID_itemIdentifier_typeIdentifier_options_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v57 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (!v7)
  {
    v19 = PLSyndicationGetLog();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = *(a1 + 32);
      v21 = *(a1 + 40);
      *buf = 138543874;
      v52 = 0;
      v53 = 2114;
      v54 = v20;
      v55 = 2114;
      v56 = v21;
      _os_log_impl(&dword_19BF1F000, v19, OS_LOG_TYPE_ERROR, "UTI not found for syndication ingest: %{public}@ item %{public}@ bundleID %{public}@", buf, 0x20u);
    }

    v22 = MEMORY[0x1E696ABC0];
    v23 = *MEMORY[0x1E69BFF48];
    v49 = *MEMORY[0x1E696A278];
    v24 = [MEMORY[0x1E696AEC0] stringWithFormat:@"UTI not found for syndication ingest of item %@ bundleID %@", *(a1 + 32), *(a1 + 40)];
    v50 = v24;
    v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v50 forKeys:&v49 count:1];
    v18 = [v22 errorWithDomain:v23 code:49504 userInfo:v25];

    goto LABEL_13;
  }

  if (!v8 || [v8 integerValue] > 0x100000)
  {
    v10 = PLSyndicationGetLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = *(a1 + 32);
      v12 = *(a1 + 40);
      *buf = 138543874;
      v52 = v8;
      v53 = 2114;
      v54 = v11;
      v55 = 2114;
      v56 = v12;
      _os_log_impl(&dword_19BF1F000, v10, OS_LOG_TYPE_ERROR, "Invalid size for syndication ingest: %{public}@ item %{public}@ bundleID %{public}@", buf, 0x20u);
    }

    if (v8)
    {
      v13 = 49502;
    }

    else
    {
      v13 = 49503;
    }

    v14 = MEMORY[0x1E696ABC0];
    v15 = *MEMORY[0x1E69BFF48];
    v47 = *MEMORY[0x1E696A278];
    v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid size for syndication ingest: %@ for item %@ bundleID %@", v8, *(a1 + 32), *(a1 + 40)];
    v48 = v16;
    v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v48 forKeys:&v47 count:1];
    v18 = [v14 errorWithDomain:v15 code:v13 userInfo:v17];

LABEL_13:
    (*(*(a1 + 56) + 16))();
    goto LABEL_14;
  }

  v18 = [MEMORY[0x1E6982C40] typeWithIdentifier:v7];
  if (v18)
  {
    v26 = [v8 integerValue];
    v27 = [MEMORY[0x1E6964E78] defaultSearchableIndex];
    v28 = *(a1 + 40);
    v29 = *(a1 + 48);
    v30 = *(a1 + 64);
    v37 = *(a1 + 32);
    v38[0] = MEMORY[0x1E69E9820];
    v38[1] = 3221225472;
    v38[2] = __134__PLSyndicationResourceDataStore__provideTemporaryFileURLFromDataForBundleID_itemIdentifier_typeIdentifier_options_completionHandler___block_invoke_114;
    v38[3] = &unk_1E75737E0;
    v39 = v28;
    v40 = *(a1 + 32);
    v41 = *(a1 + 48);
    v43 = *(a1 + 56);
    v44 = v26;
    v42 = v18;
    [v27 provideDataForBundle:v39 itemIdentifier:v37 typeIdentifier:v29 options:v30 completionHandler:v38];

    v31 = v39;
  }

  else
  {
    v32 = *(a1 + 56);
    v33 = MEMORY[0x1E696ABC0];
    v34 = *MEMORY[0x1E69BFF48];
    v45 = *MEMORY[0x1E696A278];
    v31 = [MEMORY[0x1E696AEC0] stringWithFormat:@"nil UTType for syndication ingest of item %@ bundleID %@", *(a1 + 32), *(a1 + 40)];
    v46 = v31;
    v35 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v46 forKeys:&v45 count:1];
    v36 = [v33 errorWithDomain:v34 code:49504 userInfo:v35];
    (*(v32 + 16))(v32, 0, v36);
  }

LABEL_14:
}

void __134__PLSyndicationResourceDataStore__provideTemporaryFileURLFromDataForBundleID_itemIdentifier_typeIdentifier_options_completionHandler___block_invoke_114(void *a1, void *a2, void *a3)
{
  v55[1] = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v5)
  {
    if ([v5 length] != a1[9])
    {
      v8 = PLSyndicationGetLog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v9 = a1[9];
        v10 = [v5 length];
        v12 = a1[4];
        v11 = a1[5];
        *buf = 134218754;
        v47 = v9;
        v48 = 2048;
        v49 = v10;
        v50 = 2114;
        v51 = v11;
        v52 = 2114;
        v53 = v12;
        _os_log_impl(&dword_19BF1F000, v8, OS_LOG_TYPE_ERROR, "Warning: CoreSpotlight size %td != data length %tu for item %{public}@ bundleID %{public}@", buf, 0x2Au);
      }
    }

    if ([v5 length] <= 0x100000)
    {
      v26 = NSTemporaryDirectory();
      v27 = [MEMORY[0x1E696AFB0] UUID];
      v28 = [v27 UUIDString];
      v29 = [v26 stringByAppendingPathComponent:v28];

      v21 = [v29 stringByAppendingPathExtensionForType:a1[7]];

      v30 = PLSyndicationGetLog();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
      {
        v31 = [v5 length];
        v33 = a1[4];
        v32 = a1[5];
        *buf = 134218754;
        v47 = v31;
        v48 = 2114;
        v49 = v32;
        v50 = 2114;
        v51 = v33;
        v52 = 2112;
        v53 = v21;
        _os_log_impl(&dword_19BF1F000, v30, OS_LOG_TYPE_INFO, "Writing temporary file for ingest %tu bytes, item %{public}@ bundleID %{public}@ to %@", buf, 0x2Au);
      }

      v43 = 0;
      v34 = [v5 writeToFile:v21 options:0 error:&v43];
      v35 = v43;
      v36 = PLSyndicationGetLog();
      v37 = v36;
      if (v34)
      {
        if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
        {
          v38 = [v5 length];
          v40 = a1[4];
          v39 = a1[5];
          *buf = 134218754;
          v47 = v38;
          v48 = 2112;
          v49 = v21;
          v50 = 2114;
          v51 = v39;
          v52 = 2114;
          v53 = v40;
          _os_log_impl(&dword_19BF1F000, v37, OS_LOG_TYPE_INFO, "%tu bytes written to path %@ for item %{public}@ bundleID %{public}@", buf, 0x2Au);
        }

        v41 = a1[8];
        v42 = [MEMORY[0x1E695DFF8] fileURLWithPath:v21];
        (*(v41 + 16))(v41, v42, 0);
      }

      else
      {
        if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412546;
          v47 = v21;
          v48 = 2112;
          v49 = v35;
          _os_log_impl(&dword_19BF1F000, v37, OS_LOG_TYPE_ERROR, "Data write to file %@ failed: %@", buf, 0x16u);
        }

        (*(a1[8] + 16))();
      }
    }

    else
    {
      v13 = PLSyndicationGetLog();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v14 = [v5 length];
        v16 = a1[4];
        v15 = a1[5];
        *buf = 134218498;
        v47 = v14;
        v48 = 2114;
        v49 = v15;
        v50 = 2114;
        v51 = v16;
        _os_log_impl(&dword_19BF1F000, v13, OS_LOG_TYPE_ERROR, "Invalid size for syndication ingest: %tu item %{public}@ bundleID %{public}@", buf, 0x20u);
      }

      v17 = MEMORY[0x1E696ABC0];
      v18 = *MEMORY[0x1E69BFF48];
      v44 = *MEMORY[0x1E696A278];
      v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Data size %tu exceeds max allowable size for syndication ingest of item %@ bundleID %@", objc_msgSend(v5, "length"), a1[5], a1[4]];
      v45 = v19;
      v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v45 forKeys:&v44 count:1];
      v21 = [v17 errorWithDomain:v18 code:49502 userInfo:v20];

      (*(a1[8] + 16))();
    }
  }

  else
  {
    if (!v6)
    {
      v22 = [MEMORY[0x1E696AEC0] stringWithFormat:@"CSSearchableIndex provideDataForBundle %@ returned no data and no error for item %@ type %@", a1[4], a1[5], a1[6]];
      v23 = MEMORY[0x1E696ABC0];
      v24 = *MEMORY[0x1E69BFF48];
      v54 = *MEMORY[0x1E696A278];
      v55[0] = v22;
      v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v55 forKeys:&v54 count:1];
      v7 = [v23 errorWithDomain:v24 code:45701 userInfo:v25];
    }

    (*(a1[8] + 16))();
  }
}

+ (void)_provideFileURLsForBundleID:(id)a3 itemIdentifiers:(id)a4 typeIdentifier:(id)a5 options:(int64_t)a6 completionHandler:(id)a7
{
  v52 = *MEMORY[0x1E69E9840];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a7;
  if ([a1 _shouldUseDataInterfaceForBundleID:v12])
  {
    v30 = v15;
    v34 = v12;
    context = objc_autoreleasePoolPush();
    v16 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v17 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    queue = dispatch_queue_create("+[PLSyndicationResourceDataStore _provideFileURLsForBundleID:itemIdentifiers:typeIdentifier:options:completionHandler:]", v17);

    v18 = dispatch_group_create();
    v19 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v47 = 0u;
    v48 = 0u;
    v49 = 0u;
    v50 = 0u;
    v31 = v13;
    obj = v13;
    v20 = [obj countByEnumeratingWithState:&v47 objects:v51 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v48;
      do
      {
        for (i = 0; i != v21; ++i)
        {
          if (*v48 != v22)
          {
            objc_enumerationMutation(obj);
          }

          v24 = *(*(&v47 + 1) + 8 * i);
          dispatch_group_enter(v18);
          v40[0] = MEMORY[0x1E69E9820];
          v40[1] = 3221225472;
          v40[2] = __119__PLSyndicationResourceDataStore__provideFileURLsForBundleID_itemIdentifiers_typeIdentifier_options_completionHandler___block_invoke;
          v40[3] = &unk_1E7577BB8;
          v41 = v18;
          v25 = queue;
          v46 = a1;
          v42 = v25;
          v43 = v24;
          v44 = v16;
          v45 = v19;
          [a1 _provideTemporaryFileURLFromDataForBundleID:v34 itemIdentifier:v24 typeIdentifier:v14 options:a6 completionHandler:v40];
        }

        v21 = [obj countByEnumeratingWithState:&v47 objects:v51 count:16];
      }

      while (v21);
    }

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __119__PLSyndicationResourceDataStore__provideFileURLsForBundleID_itemIdentifiers_typeIdentifier_options_completionHandler___block_invoke_3;
    block[3] = &unk_1E7573C00;
    v15 = v30;
    v39 = v30;
    v36 = v16;
    v37 = v19;
    v38 = obj;
    v26 = v19;
    v27 = v16;
    dispatch_group_notify(v18, queue, block);

    objc_autoreleasePoolPop(context);
    v12 = v34;
    v13 = v31;
  }

  else
  {
    v28 = [MEMORY[0x1E6964E78] defaultSearchableIndex];
    [v28 provideFileURLsForBundle:v12 itemIdentifiers:v13 typeIdentifier:v14 options:a6 completionHandler:v15];
  }
}

void __119__PLSyndicationResourceDataStore__provideFileURLsForBundleID_itemIdentifiers_typeIdentifier_options_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __119__PLSyndicationResourceDataStore__provideFileURLsForBundleID_itemIdentifiers_typeIdentifier_options_completionHandler___block_invoke_2;
  v14[3] = &unk_1E7577BE0;
  v9 = *(a1 + 72);
  v10 = *(a1 + 48);
  v11 = *(a1 + 56);
  v15 = v5;
  v16 = v10;
  v20 = v9;
  v17 = v6;
  v18 = v11;
  v19 = *(a1 + 64);
  v12 = v6;
  v13 = v5;
  dispatch_group_async(v7, v8, v14);
  dispatch_group_leave(*(a1 + 32));
}

void __119__PLSyndicationResourceDataStore__provideFileURLsForBundleID_itemIdentifiers_typeIdentifier_options_completionHandler___block_invoke_3(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  (*(*(a1 + 56) + 16))();
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = *(a1 + 48);
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v11;
    do
    {
      v6 = 0;
      do
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = [*(a1 + 32) objectForKeyedSubscript:{*(*(&v10 + 1) + 8 * v6), v10}];
        v8 = [v7 error];
        if (!v8)
        {
          v9 = [v7 url];

          if (!v9)
          {
            goto LABEL_10;
          }

          v8 = [v7 url];
          unlink([v8 fileSystemRepresentation]);
        }

LABEL_10:
        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v4);
  }
}

+ (void)_addTemporaryURL:(id)a3 itemIdentifier:(id)a4 error:(id)a5 toResults:(id)a6 andFileHandles:(id)a7
{
  v41 = *MEMORY[0x1E69E9840];
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  if (v14)
  {
    if (v13)
    {
LABEL_3:
      v18 = [v13 path];
      v19 = open([v18 fileSystemRepresentation], 0);

      if ((v19 & 0x80000000) != 0)
      {
        v21 = *__error();
        v22 = PLSyndicationGetLog();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          v23 = [v13 path];
          *buf = 67109378;
          v38 = v21;
          v39 = 2112;
          v40 = v23;
          _os_log_impl(&dword_19BF1F000, v22, OS_LOG_TYPE_ERROR, "open failed with errno %d for file at path %@", buf, 0x12u);
        }

        if (!v15)
        {
          v24 = v21;
          v25 = MEMORY[0x1E696ABC0];
          v26 = *MEMORY[0x1E696A798];
          v35 = *MEMORY[0x1E696A998];
          v36 = v13;
          v27 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v36 forKeys:&v35 count:1];
          v15 = [v25 errorWithDomain:v26 code:v24 userInfo:v27];
        }
      }

      else
      {
        v20 = [objc_alloc(MEMORY[0x1E696AC00]) initWithFileDescriptor:v19 closeOnDealloc:1];
        [v17 addObject:v20];
      }

      v28 = [objc_alloc(MEMORY[0x1E6964E18]) initWithFileURL:v13 andError:v15];
      goto LABEL_14;
    }
  }

  else
  {
    v29 = [MEMORY[0x1E696AAA8] currentHandler];
    [v29 handleFailureInMethod:a2 object:a1 file:@"PLSyndicationResourceDataStore.m" lineNumber:309 description:{@"Invalid parameter not satisfying: %@", @"itemIdentifier"}];

    if (v13)
    {
      goto LABEL_3;
    }
  }

  if (!v15)
  {
    v34 = [MEMORY[0x1E696AAA8] currentHandler];
    [v34 handleFailureInMethod:a2 object:a1 file:@"PLSyndicationResourceDataStore.m" lineNumber:325 description:{@"Invalid parameter not satisfying: %@", @"error != nil"}];
  }

  v30 = objc_alloc(MEMORY[0x1E6964E18]);
  v31 = MEMORY[0x1E695DFF8];
  v32 = NSTemporaryDirectory();
  v33 = [v31 fileURLWithPath:v32];
  v28 = [v30 initWithFileURL:v33 andError:v15];

LABEL_14:
  [v16 setObject:v28 forKeyedSubscript:v14];
}

+ (void)_provideFileURLForBundleID:(id)a3 itemIdentifier:(id)a4 typeIdentifier:(id)a5 options:(int64_t)a6 completionHandler:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a7;
  if ([a1 _shouldUseDataInterfaceForBundleID:v12])
  {
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __117__PLSyndicationResourceDataStore__provideFileURLForBundleID_itemIdentifier_typeIdentifier_options_completionHandler___block_invoke;
    v17[3] = &unk_1E75737B8;
    v18 = v15;
    [a1 _provideTemporaryFileURLFromDataForBundleID:v12 itemIdentifier:v13 typeIdentifier:v14 options:a6 completionHandler:v17];
  }

  else
  {
    v16 = [MEMORY[0x1E6964E78] defaultSearchableIndex];
    [v16 provideFileURLForBundle:v12 itemIdentifier:v13 typeIdentifier:v14 options:a6 completionHandler:v15];
  }
}

void __117__PLSyndicationResourceDataStore__provideFileURLForBundleID_itemIdentifier_typeIdentifier_options_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  (*(*(a1 + 32) + 16))();
  if (v3)
  {
    unlink([v3 fileSystemRepresentation]);
  }
}

+ (void)_provideFileURLAndUnwrapLivePhotoIfNeededForBundleID:(id)a3 syndicationIdentifier:(id)a4 typeIdentifier:(id)a5 isLivePhoto:(BOOL)a6 options:(int64_t)a7 completionHandler:(id)a8
{
  v32 = *MEMORY[0x1E69E9840];
  v13 = a3;
  v14 = a4;
  v15 = a8;
  v16 = a5;
  v17 = PLSyndicationGetLog();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543874;
    v27 = v13;
    v28 = 2114;
    v29 = v14;
    v30 = 2048;
    v31 = a7;
    _os_log_impl(&dword_19BF1F000, v17, OS_LOG_TYPE_DEFAULT, "[resource] making file provider request with bundleID: %{public}@, syndicationID: %{public}@, options: %lu", buf, 0x20u);
  }

  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __162__PLSyndicationResourceDataStore__provideFileURLAndUnwrapLivePhotoIfNeededForBundleID_syndicationIdentifier_typeIdentifier_isLivePhoto_options_completionHandler___block_invoke;
  v21[3] = &unk_1E7573790;
  v24 = v15;
  v25 = a1;
  v22 = v13;
  v23 = v14;
  v18 = v14;
  v19 = v13;
  v20 = v15;
  [a1 _provideFileURLForBundleID:v19 itemIdentifier:v18 typeIdentifier:v16 options:a7 completionHandler:v21];
}

void __162__PLSyndicationResourceDataStore__provideFileURLAndUnwrapLivePhotoIfNeededForBundleID_syndicationIdentifier_typeIdentifier_isLivePhoto_options_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v31 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = PLSyndicationGetLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v28 = v6;
      _os_log_impl(&dword_19BF1F000, v7, OS_LOG_TYPE_ERROR, "[resource] error from provideFileURL: %@", buf, 0xCu);
    }

LABEL_12:
    LOBYTE(v8) = 0;
    goto LABEL_13;
  }

  if (![MEMORY[0x1E69BF2E0] fileURLHasSecurityScope:v5])
  {
    v7 = PLSyndicationGetLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v11 = [v5 path];
      *buf = 138412290;
      v28 = v11;
      _os_log_impl(&dword_19BF1F000, v7, OS_LOG_TYPE_INFO, "[resource] providerURL does not have security scope for path %@", buf, 0xCu);
    }

    goto LABEL_12;
  }

  v8 = [v5 startAccessingSecurityScopedResource];
  v7 = PLSyndicationGetLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    if (v8)
    {
      v9 = @"was";
    }

    else
    {
      v9 = @"was not";
    }

    v10 = [v5 path];
    *buf = 138412546;
    v28 = v9;
    v29 = 2112;
    v30 = v10;
    _os_log_impl(&dword_19BF1F000, v7, OS_LOG_TYPE_INFO, "[resource] providerURL has security scope. accessing %@ started for URL path %@", buf, 0x16u);
  }

LABEL_13:

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __162__PLSyndicationResourceDataStore__provideFileURLAndUnwrapLivePhotoIfNeededForBundleID_syndicationIdentifier_typeIdentifier_isLivePhoto_options_completionHandler___block_invoke_89;
  aBlock[3] = &unk_1E7573768;
  v25 = *(a1 + 48);
  v26 = v8;
  v12 = v5;
  v24 = v12;
  v13 = _Block_copy(aBlock);
  v14 = [v12 pathExtension];
  v15 = [v14 isEqualToString:*MEMORY[0x1E69C09D0]];

  if (v15)
  {
    v16 = *(a1 + 56);
    v21 = 0;
    v22 = 0;
    v20 = v6;
    [v16 _unpackPVTBundleAtURL:v12 primaryURL:&v22 secondaryURL:&v21 error:&v20];
    v17 = v22;
    v18 = v21;
    v19 = v20;

    v6 = v19;
  }

  else
  {
    v17 = v12;
    v18 = 0;
  }

  v13[2](v13, v17, v18, v6);
}

uint64_t __162__PLSyndicationResourceDataStore__provideFileURLAndUnwrapLivePhotoIfNeededForBundleID_syndicationIdentifier_typeIdentifier_isLivePhoto_options_completionHandler___block_invoke_89(uint64_t a1)
{
  result = (*(*(a1 + 40) + 16))();
  if (*(a1 + 48) == 1)
  {
    v3 = *(a1 + 32);

    return [v3 stopAccessingSecurityScopedResource];
  }

  return result;
}

+ (BOOL)_unpackPVTBundleAtURL:(id)a3 primaryURL:(id *)a4 secondaryURL:(id *)a5 error:(id *)a6
{
  v34[1] = *MEMORY[0x1E69E9840];
  v9 = MEMORY[0x1E69C0918];
  v10 = a3;
  v11 = [[v9 alloc] initWithBundleAtURL:v10];

  if (v11 && ([v11 imagePath], (v12 = objc_claimAutoreleasedReturnValue()) != 0) && (v13 = v12, objc_msgSend(v11, "videoPath"), v14 = objc_claimAutoreleasedReturnValue(), v14, v13, v14))
  {
    v15 = PLSyndicationGetLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *v32 = 0;
      _os_log_impl(&dword_19BF1F000, v15, OS_LOG_TYPE_DEFAULT, "[resource] found image and video complement in live photo bundle", v32, 2u);
    }

    v16 = MEMORY[0x1E695DFF8];
    v17 = [v11 imagePath];
    v18 = [v16 fileURLWithPath:v17 isDirectory:0];

    v19 = MEMORY[0x1E695DFF8];
    v20 = [v11 videoPath];
    v21 = [v19 fileURLWithPath:v20 isDirectory:0];
    v22 = 0;
    v23 = 1;
  }

  else
  {
    v24 = PLSyndicationGetLog();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      *v32 = 0;
      _os_log_impl(&dword_19BF1F000, v24, OS_LOG_TYPE_ERROR, "[resource] unable to unpack live photo bundle", v32, 2u);
    }

    v25 = MEMORY[0x1E696ABC0];
    v26 = *MEMORY[0x1E69BFF70];
    v33 = *MEMORY[0x1E696A278];
    v34[0] = @"Unable to unpack live photo bundle";
    v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v34 forKeys:&v33 count:1];
    v22 = [v25 errorWithDomain:v26 code:4 userInfo:v20];
    v23 = 0;
    v21 = 0;
    v18 = 0;
  }

  if (a4)
  {
    v27 = v18;
    *a4 = v18;
  }

  if (a5)
  {
    v28 = v21;
    *a5 = v21;
  }

  if (a6)
  {
    v29 = v23;
  }

  else
  {
    v29 = 1;
  }

  if ((v29 & 1) == 0)
  {
    v30 = v22;
    *a6 = v22;
  }

  return v23;
}

+ (BOOL)_markSyndicationResourceAsLocallyAvailableWithURL:(id)a3 resource:(id)a4 inode:(unint64_t)a5 error:(id *)a6
{
  v42 = *MEMORY[0x1E69E9840];
  v11 = a3;
  v12 = a4;
  v13 = v12;
  if (v11)
  {
    if (v12)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v36 = [MEMORY[0x1E696AAA8] currentHandler];
    [v36 handleFailureInMethod:a2 object:a1 file:@"PLSyndicationResourceDataStore.m" lineNumber:64 description:{@"Invalid parameter not satisfying: %@", @"url"}];

    if (v13)
    {
LABEL_3:
      if (!a5)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  v37 = [MEMORY[0x1E696AAA8] currentHandler];
  [v37 handleFailureInMethod:a2 object:a1 file:@"PLSyndicationResourceDataStore.m" lineNumber:65 description:{@"Invalid parameter not satisfying: %@", @"resource"}];

  if (a5)
  {
LABEL_4:
    [v13 setFileID:a5];
  }

LABEL_5:
  v14 = [v13 resourceType];
  v15 = [v13 version];
  v16 = [v13 recipeID];
  v17 = [v13 uniformTypeIdentifier];
  v18 = [PLResourceInstaller generatedValidatedExternalSyndicationResourceOfType:v14 version:v15 recipeID:v16 fileURL:v11 requireFileToBePresent:1 uniformTypeIdentifier:v17];

  if (v18)
  {
    v19 = [PLPrimaryResourceDataStoreKey alloc];
    v20 = [v13 asset];
    v21 = [(PLPrimaryResourceDataStoreKey *)v19 initFromExistingLocationOfExternalResource:v18 asset:v20];

    v22 = [v21 keyData];
    [v13 setDataStoreKeyData:v22];

    [v13 setDataLength:{objc_msgSend(v18, "dataLength")}];
    [v13 setSyndicationLocalAvailabilityWithAvailable:1];
    v23 = [v13 fileURL];
    v24 = v23;
    if (v23)
    {
      if (([(__CFString *)v23 isEqual:v11]& 1) != 0)
      {
        v25 = PLSyndicationGetLog();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
        {
          v26 = [v13 singleLineDescription];
          *buf = 138412290;
          v39 = v26;
          _os_log_impl(&dword_19BF1F000, v25, OS_LOG_TYPE_DEFAULT, "[resource] marked resource as locally available: %@", buf, 0xCu);
        }

        v27 = 1;
        goto LABEL_21;
      }

      v28 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Resource data store key url: (%@) does not match initial syndication resource url: (%@)", v24, v11];
    }

    else
    {
      v28 = @"Failed to store syndication resource data store key data, url is nil";
    }

    v24 = v28;
  }

  else
  {
    v24 = @"Failed to generate external resource, file may not be present";
  }

  v29 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [v29 setObject:v24 forKeyedSubscript:*MEMORY[0x1E696A278]];
  v30 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E69BFF70] code:4 userInfo:v29];
  v31 = PLSyndicationGetLog();
  if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
  {
    v32 = [v13 singleLineDescription];
    *buf = 138412546;
    v39 = v32;
    v40 = 2112;
    v41 = v30;
    _os_log_impl(&dword_19BF1F000, v31, OS_LOG_TYPE_ERROR, "[resource] failed to mark resource (%@) as locally available with error: %@", buf, 0x16u);
  }

  v33 = v30;
  v25 = v33;
  if (a6)
  {
    v34 = v33;
    v27 = 0;
    *a6 = v25;
  }

  else
  {
    v27 = 0;
  }

  v21 = v25;
LABEL_21:

  return v27;
}

- (id)metadataForResourceGenerator:(id)a3 fromFileURL:(id)a4
{
  v5 = MEMORY[0x1E69C0718];
  v6 = a4;
  v7 = [v5 alloc];
  v8 = [(PLPhotoLibraryBundle *)self->_libraryBundle timeZoneLookup];
  v9 = [v7 initWithImageURL:v6 contentType:0 options:13 timeZoneLookup:v8 cacheImageSource:1 cacheImageData:1];

  return v9;
}

- (id)videoConversionClientForResourceGenerator:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  if (!v5->_videoConversionServiceClient)
  {
    v6 = objc_alloc_init(MEMORY[0x1E69AE888]);
    videoConversionServiceClient = v5->_videoConversionServiceClient;
    v5->_videoConversionServiceClient = v6;
  }

  objc_sync_exit(v5);

  v8 = v5->_videoConversionServiceClient;
  v9 = v8;

  return v8;
}

- (id)imageConversionClientForResourceGenerator:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  if (!v5->_imageConversionServiceClient)
  {
    v6 = objc_alloc_init(MEMORY[0x1E69AE870]);
    imageConversionServiceClient = v5->_imageConversionServiceClient;
    v5->_imageConversionServiceClient = v6;
  }

  objc_sync_exit(v5);

  v8 = v5->_imageConversionServiceClient;
  v9 = v8;

  return v8;
}

- (id)requestLocalAvailabilityChange:(signed __int16)a3 forResource:(id)a4 options:(id)a5 completion:(id)a6
{
  v144[1] = *MEMORY[0x1E69E9840];
  v9 = a4;
  v10 = a5;
  v11 = a6;
  if (!v9)
  {
    v30 = MEMORY[0x1E696ABC0];
    v31 = *MEMORY[0x1E69BFF70];
    v143 = *MEMORY[0x1E696A278];
    v144[0] = @"nil resource";
    v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v144 forKeys:&v143 count:1];
    v32 = [v30 errorWithDomain:v31 code:4 userInfo:v15];
    (*(v11 + 2))(v11, v32, 0, 0);

    goto LABEL_58;
  }

  if (!self->_libraryBundle)
  {
    v12 = [v9 photoLibrary];
    v13 = [v12 libraryBundle];
    libraryBundle = self->_libraryBundle;
    self->_libraryBundle = v13;
  }

  v15 = [v9 asset];
  v16 = [v15 uniformTypeIdentifier];

  if (v16)
  {
    goto LABEL_5;
  }

  v33 = [v15 kind];
  if (v33 - 2 < 2)
  {
    v52 = PLSyndicationGetLog();
    if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
    {
      v53 = v10;
      v54 = [v10 taskIdentifier];
      v55 = [v15 uuid];
      v56 = [v15 kind];
      if (v56 > 3)
      {
        v57 = 0;
      }

      else
      {
        v57 = off_1E7567AF8[v56];
      }

      v63 = v57;
      *buf = 138543874;
      v138 = v54;
      v139 = 2114;
      v140 = v55;
      v141 = 2114;
      v142 = v63;
      _os_log_impl(&dword_19BF1F000, v52, OS_LOG_TYPE_ERROR, "[resource] %{public}@ asset (%{public}@) of type %{public}@ missing UTI, request will fail", buf, 0x20u);

      v10 = v53;
    }

    goto LABEL_39;
  }

  if (v33 > 1)
  {
LABEL_39:
    v116 = v10;
    v64 = MEMORY[0x1E696ABC0];
    v65 = *MEMORY[0x1E69BFF70];
    v135 = *MEMORY[0x1E696A278];
    v66 = MEMORY[0x1E696AEC0];
    v67 = [v15 uuid];
    v68 = [v15 kind];
    if (v68 > 3)
    {
      v69 = 0;
    }

    else
    {
      v69 = off_1E7567AF8[v68];
    }

    v70 = v69;
    v71 = [v66 stringWithFormat:@"asset %@ missing UTI and invalid type %@", v67, v70];
    v136 = v71;
    v72 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v136 forKeys:&v135 count:1];
    v73 = [v64 errorWithDomain:v65 code:4 userInfo:v72];
    (*(v11 + 2))(v11, v73, 0, 0);

    v10 = v116;
    goto LABEL_58;
  }

  v34 = PLSyndicationGetLog();
  if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
  {
    v35 = v10;
    v36 = [v10 taskIdentifier];
    v37 = [v15 uuid];
    v38 = [v15 kind];
    if (v38 > 3)
    {
      v39 = 0;
    }

    else
    {
      v39 = off_1E7567AF8[v38];
    }

    v62 = v39;
    *buf = 138543874;
    v138 = v36;
    v139 = 2114;
    v140 = v37;
    v141 = 2114;
    v142 = v62;
    _os_log_impl(&dword_19BF1F000, v34, OS_LOG_TYPE_ERROR, "[resource] %{public}@ asset (%{public}@) of type %{public}@ missing UTI, request will attempt to continue", buf, 0x20u);

    v10 = v35;
  }

LABEL_5:
  if (PLSyndicationAssetRequiresBlastDoorToAccessOriginals(v15))
  {
    v17 = [v15 uniformTypeIdentifier];
    if (v17)
    {
      v18 = v17;
      v19 = MEMORY[0x1E6982C40];
      [v15 uniformTypeIdentifier];
      v21 = v20 = v10;
      v22 = [v19 typeWithIdentifier:v21];
      v23 = [v22 conformsToType:*MEMORY[0x1E6982F88]];

      v10 = v20;
      if (v23)
      {
        v24 = MEMORY[0x1E696ABC0];
        v25 = *MEMORY[0x1E69BFF70];
        v133 = *MEMORY[0x1E696A278];
        v134 = @"Unable to decode syndication RAW image";
        v26 = MEMORY[0x1E695DF20];
        v27 = &v134;
        v28 = &v133;
LABEL_32:
        v60 = [v26 dictionaryWithObjects:v27 forKeys:v28 count:1];
        v61 = [v24 errorWithDomain:v25 code:4 userInfo:v60];
        (*(v11 + 2))(v11, v61, 0, 0);

        v10 = v20;
        goto LABEL_58;
      }
    }
  }

  if ([v9 dataStoreSubtype] == 1 || objc_msgSend(v9, "dataStoreSubtype") == 18)
  {
    v29 = [(PLSyndicationResourceDataStore *)self _requestLocalAvailabilityChangeForSyndicationOriginalResource:v9 options:v10 completion:v11];
  }

  else
  {
    v40 = [v9 dataStoreSubtype];
    v41 = PLSyndicationGetLog();
    v42 = v41;
    if (v40 != 4)
    {
      v20 = v10;
      if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
      {
        v58 = [v10 taskIdentifier];
        v59 = [v9 singleLineDescription];
        *buf = 138543618;
        v138 = v58;
        v139 = 2112;
        v140 = v59;
        _os_log_impl(&dword_19BF1F000, v42, OS_LOG_TYPE_ERROR, "[resource] %{public}@ resource (%@) unsupported by syndication data store", buf, 0x16u);
      }

      v24 = MEMORY[0x1E696ABC0];
      v25 = *MEMORY[0x1E69BFF70];
      v129 = *MEMORY[0x1E696A278];
      v130 = @"resource unuspported by syndication data store";
      v26 = MEMORY[0x1E695DF20];
      v27 = &v130;
      v28 = &v129;
      goto LABEL_32;
    }

    if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
    {
      v43 = [v10 taskIdentifier];
      [v15 uuid];
      v45 = v44 = v10;
      *buf = 138543618;
      v138 = v43;
      v139 = 2114;
      v140 = v45;
      _os_log_impl(&dword_19BF1F000, v42, OS_LOG_TYPE_DEFAULT, "[resource] %{public}@ on demand request for derivative image for asset: %{public}@", buf, 0x16u);

      v10 = v44;
    }

    v128 = 0;
    v126 = 0;
    v127 = 0;
    v46 = [(PLSyndicationResourceDataStore *)self _getDestinationURLAndFixLocalAvailabilityIfNeededForResource:v9 fileIdentifier:&v127 isLocallyAvailable:&v128 error:&v126];
    v47 = v127;
    v48 = v126;
    v49 = v48;
    if (v46)
    {
      if (v128 == 1)
      {
        v50 = PLSyndicationGetLog();
        if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
        {
          v51 = [v10 taskIdentifier];
          *buf = 138543618;
          v138 = v51;
          v139 = 2112;
          v140 = v46;
          _os_log_impl(&dword_19BF1F000, v50, OS_LOG_TYPE_DEFAULT, "[resource] %{public}@ resource is already local at url: %@", buf, 0x16u);
        }

        (*(v11 + 2))(v11, 0, 0, v46);
      }

      else
      {
        v113 = v48;
        v83 = [v9 asset];
        v84 = [v83 syndicationOriginalResource];

        v112 = v84;
        if (v84)
        {
          v109 = v46;
          v115 = v47;
          v117 = v10;
          v111 = [v84 objectID];
          v110 = [v84 photoLibrary];
          v85 = [v9 asset];
          v86 = [v9 resourceType];
          v87 = [v9 version];
          v88 = [v9 recipeID];
          v89 = [v9 uniformTypeIdentifier];
          v90 = [v89 identifier];
          v125 = 0;
          v91 = [v85 syndicationResourceURLForResourceType:v86 version:v87 recipeID:v88 utiString:v90 error:&v125];
          v92 = v125;

          v108 = v92;
          if (v91)
          {
            v118[0] = MEMORY[0x1E69E9820];
            v118[1] = 3221225472;
            v118[2] = __96__PLSyndicationResourceDataStore_requestLocalAvailabilityChange_forResource_options_completion___block_invoke;
            v118[3] = &unk_1E7573920;
            v10 = v117;
            v119 = v117;
            v120 = v110;
            v121 = v111;
            v122 = self;
            v124 = v11;
            v123 = v91;
            v93 = v112;
            v94 = [(PLSyndicationResourceDataStore *)self _requestLocalAvailabilityChangeForSyndicationOriginalResource:v112 options:v119 completion:v118];

            v95 = v119;
          }

          else
          {
            v93 = v112;
            v95 = objc_alloc_init(MEMORY[0x1E695DF90]);
            [v95 setObject:@"missing destination url" forKeyedSubscript:*MEMORY[0x1E696A278]];
            v10 = v117;
            if (v92)
            {
              [v95 setObject:v92 forKeyedSubscript:*MEMORY[0x1E696AA08]];
            }

            v106 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E69BFF70] code:4 userInfo:v95];
            (*(v11 + 2))(v11, v106, 0, 0);
          }

          v49 = v113;
          v47 = v115;

          v46 = v109;
          v105 = v110;
          v104 = v111;
        }

        else
        {
          v96 = PLSyndicationGetLog();
          v49 = v113;
          if (os_log_type_enabled(v96, OS_LOG_TYPE_FAULT))
          {
            v97 = [v9 asset];
            [v97 syndicationDescription];
            v99 = v98 = v46;
            *buf = 138543362;
            v138 = v99;
            _os_log_impl(&dword_19BF1F000, v96, OS_LOG_TYPE_FAULT, "Syndication asset %{public}@ missing original resource", buf, 0xCu);

            v46 = v98;
            v49 = v113;
          }

          v100 = MEMORY[0x1E696ABC0];
          v101 = *MEMORY[0x1E69BFF70];
          v131 = *MEMORY[0x1E696A278];
          v132 = @"missing original resource";
          v102 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v132 forKeys:&v131 count:1];
          v103 = v100;
          v104 = v102;
          v105 = [v103 errorWithDomain:v101 code:4 userInfo:v102];
          (*(v11 + 2))(v11, v105, 0, 0);
          v93 = 0;
        }
      }
    }

    else
    {
      v114 = v47;
      v74 = PLSyndicationGetLog();
      if (os_log_type_enabled(v74, OS_LOG_TYPE_ERROR))
      {
        v75 = [v10 taskIdentifier];
        v76 = [v15 uuid];
        v77 = [v9 singleLineDescription];
        *buf = 138543874;
        v138 = v75;
        v139 = 2114;
        v140 = v76;
        v141 = 2112;
        v142 = v77;
        _os_log_impl(&dword_19BF1F000, v74, OS_LOG_TYPE_ERROR, "[resource] %{public}@ unable to resolve destination url for asset %{public}@, resource: %@", buf, 0x20u);

        v46 = 0;
      }

      v78 = MEMORY[0x1E696AEC0];
      v79 = [v15 uuid];
      v80 = [v9 singleLineDescription];
      v81 = [v78 stringWithFormat:@"Unable to resolve destination url for syndication asset: %@, resource: %@", v79, v80];
      v82 = PLResourceDataStoreErrorCreate();
      (*(v11 + 2))(v11, v82, 0, 0);

      v47 = v114;
    }
  }

LABEL_58:

  return 0;
}

void __96__PLSyndicationResourceDataStore_requestLocalAvailabilityChange_forResource_options_completion___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v26 = *MEMORY[0x1E69E9840];
  v6 = a2;
  v7 = PLSyndicationGetLog();
  v8 = v7;
  if (a4)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [*(a1 + 32) taskIdentifier];
      *buf = 138543362;
      v23 = v9;
      _os_log_impl(&dword_19BF1F000, v8, OS_LOG_TYPE_DEFAULT, "[resource] %{public}@ request for derivative image made original resource available, requesting sanitization", buf, 0xCu);
    }

    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __96__PLSyndicationResourceDataStore_requestLocalAvailabilityChange_forResource_options_completion___block_invoke_191;
    v17[3] = &unk_1E75738F8;
    v10 = *(a1 + 40);
    v11 = *(a1 + 48);
    v16 = *(a1 + 56);
    v12 = *(a1 + 32);
    *&v13 = v16;
    *(&v13 + 1) = v12;
    *&v14 = v10;
    *(&v14 + 1) = v11;
    v18 = v14;
    v19 = v13;
    v21 = *(a1 + 72);
    v20 = *(a1 + 64);
    [v10 performBlock:v17];
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v15 = [*(a1 + 32) taskIdentifier];
      *buf = 138543618;
      v23 = v15;
      v24 = 2112;
      v25 = v6;
      _os_log_impl(&dword_19BF1F000, v8, OS_LOG_TYPE_ERROR, "[resource] %{public}@ unable to make original resource available, will fail request for derivative image, error: %@", buf, 0x16u);
    }

    (*(*(a1 + 72) + 16))();
  }
}

void __96__PLSyndicationResourceDataStore_requestLocalAvailabilityChange_forResource_options_completion___block_invoke_191(uint64_t a1)
{
  v27 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) managedObjectContext];
  v3 = [v2 existingObjectWithID:*(a1 + 40) error:0];

  if (v3)
  {
    v4 = [[PLSyndicationSanitizedResourceGenerator alloc] initWithDelegate:*(a1 + 48)];
    v5 = PLSyndicationGetLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [*(a1 + 56) taskIdentifier];
      v7 = [v3 singleLineDescription];
      *buf = 138543618;
      v24 = v6;
      v25 = 2112;
      v26 = v7;
      _os_log_impl(&dword_19BF1F000, v5, OS_LOG_TYPE_DEFAULT, "[resource] %{public}@ attempting to generate sanitized derivatives from resource: %@", buf, 0x16u);
    }

    v8 = [*(a1 + 56) taskIdentifier];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __96__PLSyndicationResourceDataStore_requestLocalAvailabilityChange_forResource_options_completion___block_invoke_193;
    v16[3] = &unk_1E75738D0;
    v17 = *(a1 + 32);
    v18 = *(a1 + 56);
    v20 = *(a1 + 72);
    v19 = *(a1 + 64);
    [(PLSyndicationSanitizedResourceGenerator *)v4 generateAndStoreDerivativeResourcesForSyndicationResource:v3 taskIdentifier:v8 completion:v16];

    v9 = v17;
  }

  else
  {
    v10 = PLSyndicationGetLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = [*(a1 + 56) taskIdentifier];
      v12 = *(a1 + 40);
      *buf = 138543618;
      v24 = v11;
      v25 = 2112;
      v26 = v12;
      _os_log_impl(&dword_19BF1F000, v10, OS_LOG_TYPE_ERROR, "[resource] %{public}@ unable to refetch original resource (%@)", buf, 0x16u);
    }

    v13 = *(a1 + 72);
    v14 = MEMORY[0x1E696ABC0];
    v15 = *MEMORY[0x1E69BFF70];
    v21 = *MEMORY[0x1E696A278];
    v22 = @"unable to referch original resource";
    v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v22 forKeys:&v21 count:1];
    v9 = [v14 errorWithDomain:v15 code:4 userInfo:v4];
    (*(v13 + 16))(v13, v9, 0, 0);
  }
}

void __96__PLSyndicationResourceDataStore_requestLocalAvailabilityChange_forResource_options_completion___block_invoke_193(uint64_t a1, int a2, void *a3, void *a4)
{
  v25 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = [*(a1 + 32) managedObjectContext];
  if (v9 == v7)
  {
    v10 = [*(a1 + 32) managedObjectContext];
  }

  else
  {
    v10 = v7;
  }

  v11 = v10;

  if ([v11 hasChanges])
  {
    v20 = 0;
    v12 = [v11 save:&v20];
    v13 = v20;
    v14 = v13;
    if ((v12 & 1) == 0)
    {
      if (!v8)
      {
        v8 = v13;
      }

      v15 = PLSyndicationGetLog();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v16 = [*(a1 + 40) taskIdentifier];
        *buf = 138543618;
        v22 = v16;
        v23 = 2112;
        v24 = v14;
        _os_log_impl(&dword_19BF1F000, v15, OS_LOG_TYPE_ERROR, "[resource] %{public}@ failed to save changes with error %@", buf, 0x16u);
      }
    }
  }

  if (a2)
  {
    v17 = *(*(a1 + 56) + 16);
  }

  else
  {
    v18 = PLSyndicationGetLog();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = [*(a1 + 40) taskIdentifier];
      *buf = 138543618;
      v22 = v19;
      v23 = 2112;
      v24 = v8;
      _os_log_impl(&dword_19BF1F000, v18, OS_LOG_TYPE_ERROR, "[resource] %{public}@ failed to generate derivatives with error: %@", buf, 0x16u);
    }

    v17 = *(*(a1 + 56) + 16);
  }

  v17();
}

- (id)_requestLocalAvailabilityChangeForSyndicationOriginalResource:(id)a3 options:(id)a4 completion:(id)a5
{
  v63 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v41 = a4;
  v42 = a5;
  v9 = [v8 asset];
  v38 = [v9 pathManager];
  v40 = [v9 uuid];
  v10 = [v9 filename];
  v11 = v10 == 0;

  v37 = [v8 objectID];
  v60 = 0;
  v58 = 0;
  v59 = 0;
  v12 = [(PLSyndicationResourceDataStore *)self _getDestinationURLAndFixLocalAvailabilityIfNeededForResource:v8 fileIdentifier:&v59 isLocallyAvailable:&v60 error:&v58];
  v36 = v59;
  v39 = v58;
  if (v12)
  {
    if (v60 == 1)
    {
      v13 = PLSyndicationGetLog();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = [v41 taskIdentifier];
        *buf = 138543874;
        *&buf[4] = v14;
        *&buf[12] = 2114;
        *&buf[14] = v40;
        *&buf[22] = 2112;
        v62 = v12;
        _os_log_impl(&dword_19BF1F000, v13, OS_LOG_TYPE_DEFAULT, "[resource] %{public}@ original resource for asset %{public}@ is already local at url: %@", buf, 0x20u);
      }

      (*(v42 + 2))(v42, 0, 0, v12);
    }

    else
    {
      v23 = [v9 kind] == 0;
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x2020000000;
      LOBYTE(v62) = [v9 kindSubtype] == 2;
      v24 = [v8 resourceType] == 3;
      v25 = [v9 additionalAttributes];
      v34 = [v25 syndicationIdentifier];

      v26 = [v9 additionalAttributes];
      v35 = [v26 importedByBundleIdentifier];

      v27 = [v8 photoLibrary];
      LOBYTE(v26) = v24;
      v33 = PLSyndicationCSProvideOptionsFromRequestOptions(v41, v35);
      v32 = objc_opt_class();
      v28 = [v9 uniformTypeIdentifier];
      v29 = *(*&buf[8] + 24);
      v43[0] = MEMORY[0x1E69E9820];
      v43[1] = 3221225472;
      v43[2] = __115__PLSyndicationResourceDataStore__requestLocalAvailabilityChangeForSyndicationOriginalResource_options_completion___block_invoke;
      v43[3] = &unk_1E75738A8;
      v55 = v11;
      v30 = v27;
      v44 = v30;
      v45 = v9;
      v54 = buf;
      v46 = v41;
      v47 = self;
      v56 = v26;
      v48 = v38;
      v49 = v36;
      v50 = v37;
      v51 = v12;
      v57 = v23;
      v52 = v40;
      v53 = v42;
      [v32 _provideFileURLAndUnwrapLivePhotoIfNeededForBundleID:v35 syndicationIdentifier:v34 typeIdentifier:v28 isLivePhoto:v29 options:v33 completionHandler:v43];

      _Block_object_dispose(buf, 8);
    }
  }

  else
  {
    v15 = PLSyndicationGetLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = [v41 taskIdentifier];
      v17 = [v8 singleLineDescription];
      *buf = 138543874;
      *&buf[4] = v16;
      *&buf[12] = 2114;
      *&buf[14] = v40;
      *&buf[22] = 2112;
      v62 = v17;
      _os_log_impl(&dword_19BF1F000, v15, OS_LOG_TYPE_ERROR, "[resource] %{public}@ unable to resolve destination url for asset %{public}@, resource: %@", buf, 0x20u);
    }

    v18 = MEMORY[0x1E696AEC0];
    v19 = [v9 uuid];
    v20 = [v8 singleLineDescription];
    v21 = [v18 stringWithFormat:@"Unable to resolve destination url for syndication asset: %@, resource: %@", v19, v20];
    v22 = PLResourceDataStoreErrorCreate();
    (*(v42 + 2))(v42, v22, 0, 0);
  }

  return 0;
}

void __115__PLSyndicationResourceDataStore__requestLocalAvailabilityChangeForSyndicationOriginalResource_options_completion___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v65 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v55 = 0;
  v56 = &v55;
  v57 = 0x3032000000;
  v58 = __Block_byref_object_copy__90025;
  v59 = __Block_byref_object_dispose__90026;
  v9 = a4;
  v60 = v9;
  v51 = 0;
  v52 = &v51;
  v53 = 0x2020000000;
  v54 = 1;
  if (v7)
  {
    if (*(a1 + 120) == 1)
    {
      v10 = *(a1 + 32);
      v48[0] = MEMORY[0x1E69E9820];
      v48[1] = 3221225472;
      v48[2] = __115__PLSyndicationResourceDataStore__requestLocalAvailabilityChangeForSyndicationOriginalResource_options_completion___block_invoke_2;
      v48[3] = &unk_1E7578848;
      v49 = v7;
      v50 = *(a1 + 40);
      [v10 performTransactionAndWait:v48];
    }

    if (v8)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v11 = PLSyndicationGetLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = [*(a1 + 48) taskIdentifier];
      v13 = v56[5];
      *buf = 138543618;
      v62 = v12;
      v63 = 2112;
      v64 = v13;
      _os_log_impl(&dword_19BF1F000, v11, OS_LOG_TYPE_ERROR, "[resource] %{public}@ did not receive file url from provider, error: %@", buf, 0x16u);
    }

    *(v52 + 24) = 0;
    if (v8)
    {
      goto LABEL_13;
    }
  }

  if (*(*(*(a1 + 112) + 8) + 24))
  {
    v14 = PLSyndicationGetLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = [*(a1 + 48) taskIdentifier];
      v16 = v56[5];
      *buf = 138543618;
      v62 = v15;
      v63 = 2112;
      v64 = v16;
      _os_log_impl(&dword_19BF1F000, v14, OS_LOG_TYPE_ERROR, "[resource] %{public}@ did not receive video complement file url from provider, error: %@", buf, 0x16u);
    }

    *(v52 + 24) = 0;
    v47 = 0;
    goto LABEL_24;
  }

LABEL_13:
  v17 = *(v52 + 24);
  v47 = 0;
  if ((v17 & 1) == 0)
  {
LABEL_24:
    v29 = *(a1 + 104);
    v30 = [*(a1 + 56) _errorForUnderlyingError:v56[5]];
    (*(v29 + 16))(v29, v30, 0, 0);

    goto LABEL_25;
  }

  v18 = PLSyndicationGetLog();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v19 = [*(a1 + 48) taskIdentifier];
    *buf = 138543618;
    v62 = v19;
    v63 = 2112;
    v64 = v7;
    _os_log_impl(&dword_19BF1F000, v18, OS_LOG_TYPE_DEFAULT, "[resource] %{public}@ received file url from spotlight provider: %@", buf, 0x16u);
  }

  if (*(a1 + 121))
  {
    v20 = v8;
  }

  else
  {
    v20 = v7;
  }

  v21 = *(a1 + 56);
  v22 = *(a1 + 64);
  v23 = *(a1 + 72);
  v24 = v56;
  obj = v56[5];
  v25 = [v21 _copyItemAtURL:v20 withPathManager:v22 destFileIdentifier:v23 inode:&v47 error:&obj];
  objc_storeStrong(v24 + 5, obj);
  if ((v25 & 1) == 0)
  {
    *(v52 + 24) = 0;
    goto LABEL_24;
  }

  if ((v52[3] & 1) == 0)
  {
    goto LABEL_24;
  }

  v26 = *(a1 + 32);
  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v31[2] = __115__PLSyndicationResourceDataStore__requestLocalAvailabilityChangeForSyndicationOriginalResource_options_completion___block_invoke_178;
  v31[3] = &unk_1E7573880;
  v32 = v26;
  v27 = *(a1 + 80);
  v40 = &v55;
  v28 = *(a1 + 56);
  v33 = v27;
  v34 = v28;
  v35 = *(a1 + 88);
  v41 = &v51;
  v44 = *(a1 + 122);
  v42 = *(a1 + 112);
  v43 = v47;
  v36 = v8;
  v37 = *(a1 + 48);
  v38 = *(a1 + 96);
  v45 = *(a1 + 121);
  v39 = v7;
  [v32 performTransactionAndWait:v31];

  if ((v52[3] & 1) == 0)
  {
    goto LABEL_24;
  }

  (*(*(a1 + 104) + 16))();
LABEL_25:
  _Block_object_dispose(&v51, 8);
  _Block_object_dispose(&v55, 8);
}

void __115__PLSyndicationResourceDataStore__requestLocalAvailabilityChangeForSyndicationOriginalResource_options_completion___block_invoke_2(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) lastPathComponent];
  v3 = PLSyndicationGetLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [*(a1 + 40) uuid];
    v5 = 138543618;
    v6 = v4;
    v7 = 2112;
    v8 = v2;
    _os_log_impl(&dword_19BF1F000, v3, OS_LOG_TYPE_DEFAULT, "[resource.prefetch] setting filename and directory for asset: %{public}@ with original filename: %@", &v5, 0x16u);
  }

  [*(a1 + 40) setSyndicationFilenameAndDirectoryWithOriginalFilename:v2];
}

void __115__PLSyndicationResourceDataStore__requestLocalAvailabilityChangeForSyndicationOriginalResource_options_completion___block_invoke_178(uint64_t a1)
{
  v36 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) managedObjectContext];
  v3 = *(a1 + 40);
  v4 = *(*(a1 + 96) + 8);
  obj = *(v4 + 40);
  v5 = [v2 existingObjectWithID:v3 error:&obj];
  objc_storeStrong((v4 + 40), obj);

  if (!v5 || (v6 = objc_opt_class(), v7 = *(a1 + 56), v8 = *(a1 + 120), v9 = *(*(a1 + 96) + 8), v30 = *(v9 + 40), v10 = [v6 _markSyndicationResourceAsLocallyAvailableWithURL:v7 resource:v5 inode:v8 error:&v30], objc_storeStrong((v9 + 40), v30), (v10 & 1) == 0))
  {
    *(*(*(a1 + 104) + 8) + 24) = 0;
  }

  if (*(a1 + 128) == 1 && (*(*(*(a1 + 112) + 8) + 24) & 1) == 0)
  {
    v11 = *(a1 + 64);
    if (v11)
    {
      v12 = MEMORY[0x1E6982C40];
      v13 = [v11 pathExtension];
      v14 = [v12 typeWithFilenameExtension:v13 conformingToType:*MEMORY[0x1E6982EE8]];

      if (v14 && ([v14 isDynamic] & 1) == 0)
      {
        v25 = [v5 asset];
        v26 = [v25 becomeSyndicationLivePhotoWithVideoComplementContentType:v14];

        v27 = PLSyndicationGetLog();
        v15 = v27;
        if (v26)
        {
          if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
          {
            v28 = [*(a1 + 72) taskIdentifier];
            *buf = 138543362;
            v33 = v28;
            _os_log_impl(&dword_19BF1F000, v15, OS_LOG_TYPE_DEFAULT, "[resource] %{public}@ received video complement URL, promoted photo to live photo", buf, 0xCu);
          }

          *(*(*(a1 + 112) + 8) + 24) = 1;
          goto LABEL_13;
        }

        if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
        {
          v29 = *(a1 + 80);
          v16 = [v14 identifier];
          *buf = 138543618;
          v33 = v29;
          v34 = 2114;
          v35 = v16;
          v18 = "[resource] failed to promote asset to live photo: %{public}@, content type: %{public}@";
          goto LABEL_11;
        }
      }

      else
      {
        v15 = PLSyndicationGetLog();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          v16 = [*(a1 + 64) pathExtension];
          v17 = *(a1 + 80);
          *buf = 138543618;
          v33 = v16;
          v34 = 2114;
          v35 = v17;
          v18 = "[resource] ignoring video complement with unexpected uti for file extension: %{public}@, asset: %{public}@";
LABEL_11:
          _os_log_impl(&dword_19BF1F000, v15, OS_LOG_TYPE_ERROR, v18, buf, 0x16u);
        }
      }

LABEL_13:
    }
  }

  if (*(*(*(a1 + 112) + 8) + 24) == 1)
  {
    v19 = PLSyndicationGetLog();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v20 = [*(a1 + 72) taskIdentifier];
      *buf = 138543362;
      v33 = v20;
      _os_log_impl(&dword_19BF1F000, v19, OS_LOG_TYPE_DEFAULT, "[resource] %{public}@ attempting to make live photo paired resource locally available as well", buf, 0xCu);
    }

    v21 = [*(a1 + 48) _copyAndMarkAsLocallyAvailablePairedLivePhotoResourceForRequestedResource:v5 requestedVideoComplement:? sourceURL:? error:?];
    v22 = 0;
    if ((v21 & 1) == 0)
    {
      v23 = PLSyndicationGetLog();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        v24 = [*(a1 + 72) taskIdentifier];
        *buf = 138543618;
        v33 = v24;
        v34 = 2112;
        v35 = v22;
        _os_log_impl(&dword_19BF1F000, v23, OS_LOG_TYPE_ERROR, "[resource] %{public}@ failed to make paired live photo resource available with error: %@", buf, 0x16u);
      }
    }
  }
}

- (BOOL)storeExternalResource:(id)a3 forAsset:(id)a4 options:(id)a5 error:(id *)a6 resultingResource:(id *)a7
{
  v62[1] = *MEMORY[0x1E69E9840];
  v13 = a3;
  v14 = a4;
  v15 = a5;
  if (v13)
  {
    if (v14)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v55 = [MEMORY[0x1E696AAA8] currentHandler];
    [v55 handleFailureInMethod:a2 object:self file:@"PLSyndicationResourceDataStore.m" lineNumber:800 description:{@"Invalid parameter not satisfying: %@", @"externalResource"}];

    if (v14)
    {
      goto LABEL_3;
    }
  }

  v56 = [MEMORY[0x1E696AAA8] currentHandler];
  [v56 handleFailureInMethod:a2 object:self file:@"PLSyndicationResourceDataStore.m" lineNumber:801 description:{@"Invalid parameter not satisfying: %@", @"asset"}];

LABEL_3:
  v16 = [v14 managedObjectContext];
  if (v16)
  {
    v17 = [v13 uniformTypeIdentifier];

    if (!v17)
    {
      v18 = -[PLResourceDataStore guessUTIForExternalResource:forAssetKind:](self, "guessUTIForExternalResource:forAssetKind:", v13, [v14 kind]);
      [v13 setUniformTypeIdentifier:v18];

      v19 = PLImageManagerGetLog();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        v20 = [v14 uuid];
        *buf = 138543618;
        v58 = v13;
        v59 = 2114;
        v60 = v20;
        _os_log_impl(&dword_19BF1F000, v19, OS_LOG_TYPE_DEFAULT, "[RM] guessed UTI for external resource: %{public}@ for asset uuid: %{public}@", buf, 0x16u);
      }
    }

    if ([v15 assumeNoExistingResources])
    {
      v21 = [v14 objectID];
      v22 = [PLInternalResource insertResourceForAssetObjectID:v21 resourceIdentity:v13 inManagedObjectContext:v16];
    }

    else
    {
      v22 = [v14 fetchOrCreateResourceWithIdentity:v13];
    }

    if ([v22 isInserted])
    {
      [v22 ensureInitialValuesForSyndication];
    }

    v31 = [v13 codecFourCharCode];

    if (v31)
    {
      v32 = [v13 codecFourCharCode];
      [v22 setCodecFourCharCodeName:v32];
    }

    [v22 setUnorientedWidth:{objc_msgSend(v13, "unorientedWidth")}];
    [v22 setUnorientedHeight:{objc_msgSend(v13, "unorientedHeight")}];
    [v22 setDataLength:{objc_msgSend(v13, "dataLength")}];
    v33 = [MEMORY[0x1E695E000] standardUserDefaults];
    v34 = [v33 BOOLForKey:@"PADisablePhotosBlastDoorProcessing"];

    if ((v34 & 1) != 0 || [v13 version])
    {
      v35 = 1;
    }

    else
    {
      v35 = [v13 recipeID] & 1;
    }

    v36 = [v13 fileURL];

    v28 = 0;
    v37 = 1;
    if (v36 && v35)
    {
      v38 = [MEMORY[0x1E696AC08] defaultManager];
      v39 = [v13 fileURL];
      v40 = [v39 path];
      v41 = [v38 fileExistsAtPath:v40];

      if (v41)
      {
        v28 = [[PLPrimaryResourceDataStoreKey alloc] initFromExistingLocationOfExternalResource:v13 asset:v14];
        if (v28)
        {
          v42 = [v22 dataStoreKey];
          if (v42)
          {
            v43 = v42;
            v44 = [v22 dataStoreKey];
            v45 = [v28 isEqualToKey:v44];

            if ((v45 & 1) == 0)
            {
              v46 = [v22 dataStoreKey];
              v47 = [v14 assetID];
              v48 = [v46 fileURLForAssetID:v47];

              v49 = [v14 assetID];
              v50 = [v28 fileURLForAssetID:v49];

              if (([MEMORY[0x1E69BF238] fileURL:v48 isEqualToFileURL:v50] & 1) == 0)
              {
                v51 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Attempt to overwrite syndication store resource with existing key: %@ with new key: %@, on resource: %@.  Store will orphan the previous key."], v48, v50, v22);
                PLSimulateCrash();
              }
            }
          }

          v37 = 0;
          goto LABEL_34;
        }
      }

      else
      {
        v28 = 0;
      }

      v37 = 1;
    }

LABEL_34:
    v52 = [v28 keyData];
    [v22 setDataStoreKeyData:v52];

    if (v37)
    {
      [v22 setSyndicationLocalAvailabilityWithAvailable:0];
      if (!a7)
      {
        goto LABEL_39;
      }
    }

    else
    {
      [v22 setSyndicationLocalAvailabilityWithAvailable:1];
      [v22 setLocalAvailabilityTarget:0];
      if (!a7)
      {
LABEL_39:
        v30 = v22 != 0;
        goto LABEL_40;
      }
    }

    v53 = v22;
    *a7 = v22;
    goto LABEL_39;
  }

  v23 = PLSyndicationGetLog();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
  {
    v24 = [v14 uuid];
    *buf = 138543362;
    v58 = v24;
    _os_log_impl(&dword_19BF1F000, v23, OS_LOG_TYPE_ERROR, "asset %{public}@ managed object context is nil, cannot complete storing external resource", buf, 0xCu);
  }

  v25 = MEMORY[0x1E696ABC0];
  v26 = *MEMORY[0x1E69BFF48];
  v61 = *MEMORY[0x1E696A278];
  v62[0] = @"asset managed object context is nil";
  v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v62 forKeys:&v61 count:1];
  v27 = [v25 errorWithDomain:v26 code:47001 userInfo:v22];
  v28 = v27;
  if (a6)
  {
    v29 = v27;
    v30 = 0;
    *a6 = v28;
  }

  else
  {
    v30 = 0;
  }

LABEL_40:

  return v30;
}

- (BOOL)canStoreExternalResource:(id)a3
{
  v3 = a3;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (id)expectedFileURLForResource:(id)a3 asset:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v7 bundleScope] == 3)
  {
    v22 = objc_alloc(MEMORY[0x1E69BF298]);
    v8 = [v7 uuid];
    v20 = [v7 bundleScope];
    v9 = [v6 uniformTypeIdentifier];
    v10 = [v9 identifier];
    v11 = [v6 version];
    v12 = [v6 resourceType];
    v21 = self;
    v13 = [v6 recipeID];
    v14 = [v7 originalFilename];
    v15 = [v6 customSuffix];
    v16 = [v22 initWithAssetUuid:v8 bundleScope:v20 uti:v10 resourceVersion:v11 resourceType:v12 recipeID:v13 originalFilename:v14 customSuffix:v15];

    v17 = [(PLResourceDataStore *)v21 pathManager];
    v18 = [v17 readOnlyUrlWithIdentifier:v16];
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

- (id)resourceURLForKey:(id)a3 assetID:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (!v7)
  {
    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"PLSyndicationResourceDataStore.m" lineNumber:758 description:{@"Invalid parameter not satisfying: %@", @"key"}];
  }

  v9 = [v7 fileURLForAssetID:v8];

  return v9;
}

- (id)resourceDataForKey:(id)a3 assetID:(id)a4
{
  v19 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = MEMORY[0x1E695DEF0];
  v8 = [(PLSyndicationResourceDataStore *)self resourceURLForKey:a3 assetID:v6];
  v14 = 0;
  v9 = [v7 dataWithContentsOfURL:v8 options:2 error:&v14];
  v10 = v14;

  if (!v9)
  {
    v11 = PLSyndicationGetLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = [v6 uuid];
      *buf = 138543618;
      v16 = v12;
      v17 = 2112;
      v18 = v10;
      _os_log_impl(&dword_19BF1F000, v11, OS_LOG_TYPE_ERROR, "[resource] failed to read data for resource with asset: %{public}@, error: %@", buf, 0x16u);
    }
  }

  return v9;
}

- (id)keyFromKeyStruct:(const void *)a3
{
  v3 = [[PLPrimaryResourceDataStoreKey alloc] initWithKeyStruct:a3];

  return v3;
}

- (id)descriptionForSubtype:(int64_t)a3
{
  v3 = @"medium image derivative";
  v4 = @"original video complement";
  if (a3 != 18)
  {
    v4 = 0;
  }

  if (a3 != 4)
  {
    v3 = v4;
  }

  v5 = @"unknown";
  v6 = @"original resource";
  if (a3 != 1)
  {
    v6 = 0;
  }

  if (a3)
  {
    v5 = v6;
  }

  if (a3 <= 3)
  {
    return v5;
  }

  else
  {
    return v3;
  }
}

- (id)_errorForUnderlyingError:(id)a3
{
  v10[1] = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = *MEMORY[0x1E69BFF70];
  if (PLUnderlyingErrorIsSyndicationMessagesNeedsDownload(v3))
  {
    v5 = 6;
    if (v3)
    {
LABEL_3:
      v9 = *MEMORY[0x1E696AA08];
      v10[0] = v3;
      v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:&v9 count:1];
      goto LABEL_9;
    }
  }

  else
  {
    if (PLUnderlyingErrorIsSyndicationMessagesDownloadTimeout(v3))
    {
      v5 = 9;
    }

    else
    {
      v5 = 4;
    }

    if (v3)
    {
      goto LABEL_3;
    }
  }

  v6 = 0;
LABEL_9:
  v7 = [MEMORY[0x1E696ABC0] errorWithDomain:v4 code:v5 userInfo:v6];

  return v7;
}

- (BOOL)_copyAndMarkAsLocallyAvailablePairedLivePhotoResourceForRequestedResource:(id)a3 requestedVideoComplement:(BOOL)a4 sourceURL:(id)a5 error:(id *)a6
{
  v8 = a4;
  v57 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a5;
  v12 = [v10 asset];
  v45 = [v12 pathManager];
  v51[0] = MEMORY[0x1E69E9820];
  v51[1] = 3221225472;
  v51[2] = __149__PLSyndicationResourceDataStore__copyAndMarkAsLocallyAvailablePairedLivePhotoResourceForRequestedResource_requestedVideoComplement_sourceURL_error___block_invoke;
  v51[3] = &__block_descriptor_33_e28_B16__0__PLInternalResource_8l;
  v52 = v8;
  v13 = [v12 firstPersistedResourceMatching:v51];
  if (!v13)
  {
    v21 = PLSyndicationGetLog();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      if (v8)
      {
        v22 = @"image";
      }

      else
      {
        v22 = @"video complement";
      }

      [v12 uuid];
      v24 = v23 = v11;
      *buf = 138543618;
      v54 = v22;
      v55 = 2114;
      v56 = v24;
      _os_log_impl(&dword_19BF1F000, v21, OS_LOG_TYPE_ERROR, "[resource] unable to find paired %{public}@ resource for live photo to copy for asset: %{public}@", buf, 0x16u);

      v11 = v23;
    }

    v25 = 0;
    v14 = 0;
    v16 = 0;
    v17 = 0;
    if (a6)
    {
      goto LABEL_18;
    }

    goto LABEL_19;
  }

  LOBYTE(v48) = 0;
  v49 = 0;
  v50 = 0;
  v14 = [(PLSyndicationResourceDataStore *)self _getDestinationURLAndFixLocalAvailabilityIfNeededForResource:v13 fileIdentifier:&v50 isLocallyAvailable:&v48 error:&v49];
  v44 = v50;
  v15 = v49;
  v16 = v15;
  v17 = v14 != 0;
  if (v14)
  {
    if (v48 != 1)
    {
      v47 = v15;
      v48 = 0;
      v43 = v11;
      v30 = [(PLSyndicationResourceDataStore *)self _copyItemAtURL:v11 withPathManager:v45 destFileIdentifier:v44 inode:&v48 error:&v47];
      v31 = v47;

      if (v30)
      {
        v46 = v31;
        v32 = [objc_opt_class() _markSyndicationResourceAsLocallyAvailableWithURL:v14 resource:v13 inode:v48 error:&v46];
        v33 = v46;

        v34 = PLSyndicationGetLog();
        v35 = v34;
        if (v32)
        {
          if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
          {
            if (v8)
            {
              v36 = @"image";
            }

            else
            {
              v36 = @"video complement";
            }

            v37 = [v12 uuid];
            *buf = 138543618;
            v54 = v36;
            v55 = 2114;
            v56 = v37;
            _os_log_impl(&dword_19BF1F000, v35, OS_LOG_TYPE_DEFAULT, "[resource] marked paired %{public}@ resource as locally available for asset: %{public}@", buf, 0x16u);
          }

          v17 = 1;
        }

        else
        {
          if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
          {
            if (v8)
            {
              v40 = @"image";
            }

            else
            {
              v40 = @"video complement";
            }

            v41 = [v12 uuid];
            *buf = 138543618;
            v54 = v40;
            v55 = 2114;
            v56 = v41;
            _os_log_impl(&dword_19BF1F000, v35, OS_LOG_TYPE_ERROR, "[resource] unable to mark paired %{public}@ resource as locally available for asset: %{public}@", buf, 0x16u);
          }

          v17 = 0;
        }

        v31 = v33;
      }

      else
      {
        v35 = PLSyndicationGetLog();
        if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
        {
          if (v8)
          {
            v38 = @"image";
          }

          else
          {
            v38 = @"video complement";
          }

          v39 = [v12 uuid];
          *buf = 138543618;
          v54 = v38;
          v55 = 2114;
          v56 = v39;
          _os_log_impl(&dword_19BF1F000, v35, OS_LOG_TYPE_ERROR, "[resource] unable to copy paired %{public}@ url for asset: %{public}@", buf, 0x16u);
        }

        v17 = 0;
      }

      v25 = v44;

      v16 = v31;
      v11 = v43;
      if (a6)
      {
        goto LABEL_18;
      }

      goto LABEL_19;
    }

    v42 = a6;
    v18 = v11;
    v19 = PLSyndicationGetLog();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v20 = @"video complement";
      if (v8)
      {
        v20 = @"image";
      }

      *buf = 138543362;
      v54 = v20;
      _os_log_impl(&dword_19BF1F000, v19, OS_LOG_TYPE_DEFAULT, "[resource] paired %{public}@ resource is already locally available", buf, 0xCu);
    }
  }

  else
  {
    v42 = a6;
    v18 = v11;
    v19 = PLSyndicationGetLog();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v26 = [v12 uuid];
      v27 = [v10 singleLineDescription];
      *buf = 138543618;
      v54 = v26;
      v55 = 2112;
      v56 = v27;
      _os_log_impl(&dword_19BF1F000, v19, OS_LOG_TYPE_ERROR, "[resource] unable to resolve destination url for asset %{public}@, resource: %@", buf, 0x16u);
    }
  }

  v11 = v18;
  a6 = v42;
  v25 = v44;
  if (v42)
  {
LABEL_18:
    v28 = v16;
    *a6 = v16;
  }

LABEL_19:

  return v17;
}

BOOL __149__PLSyndicationResourceDataStore__copyAndMarkAsLocallyAvailablePairedLivePhotoResourceForRequestedResource_requestedVideoComplement_sourceURL_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  LODWORD(a1) = *(a1 + 32);
  v4 = [v3 resourceType];
  if (a1 == 1)
  {
    if (v4)
    {
      goto LABEL_6;
    }
  }

  else if (v4 != 3)
  {
    goto LABEL_6;
  }

  if (![v3 recipeID])
  {
    v5 = [v3 version] == 0;
    goto LABEL_7;
  }

LABEL_6:
  v5 = 0;
LABEL_7:

  return v5;
}

- (BOOL)_copyItemAtURL:(id)a3 withPathManager:(id)a4 destFileIdentifier:(id)a5 inode:(unint64_t *)a6 error:(id *)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  if (v13)
  {
    if (v14)
    {
      goto LABEL_3;
    }

LABEL_10:
    v21 = [MEMORY[0x1E696AAA8] currentHandler];
    [v21 handleFailureInMethod:a2 object:self file:@"PLSyndicationResourceDataStore.m" lineNumber:435 description:{@"Invalid parameter not satisfying: %@", @"pathManager"}];

    if (v15)
    {
      goto LABEL_4;
    }

    goto LABEL_11;
  }

  v20 = [MEMORY[0x1E696AAA8] currentHandler];
  [v20 handleFailureInMethod:a2 object:self file:@"PLSyndicationResourceDataStore.m" lineNumber:434 description:{@"Invalid parameter not satisfying: %@", @"url"}];

  if (!v14)
  {
    goto LABEL_10;
  }

LABEL_3:
  if (v15)
  {
    goto LABEL_4;
  }

LABEL_11:
  v22 = [MEMORY[0x1E696AAA8] currentHandler];
  [v22 handleFailureInMethod:a2 object:self file:@"PLSyndicationResourceDataStore.m" lineNumber:436 description:{@"Invalid parameter not satisfying: %@", @"destFileIdentifier"}];

LABEL_4:
  v39 = 0;
  v40 = &v39;
  v41 = 0x2020000000;
  v42 = 1;
  v33 = 0;
  v34 = &v33;
  v35 = 0x3032000000;
  v36 = __Block_byref_object_copy__90025;
  v37 = __Block_byref_object_dispose__90026;
  v38 = 0;
  v29 = 0;
  v30 = &v29;
  v31 = 0x2020000000;
  v32 = 0;
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __96__PLSyndicationResourceDataStore__copyItemAtURL_withPathManager_destFileIdentifier_inode_error___block_invoke;
  v23[3] = &unk_1E7573830;
  v16 = v13;
  v24 = v16;
  v26 = &v39;
  v27 = &v33;
  v28 = &v29;
  v17 = v15;
  v25 = v17;
  [v14 obtainAccessAndWaitWithFileWithIdentifier:v17 mode:2 toURLWithHandler:v23];
  if (a6)
  {
    *a6 = v30[3];
  }

  if (a7)
  {
    *a7 = v34[5];
  }

  v18 = *(v40 + 24);

  _Block_object_dispose(&v29, 8);
  _Block_object_dispose(&v33, 8);

  _Block_object_dispose(&v39, 8);
  return v18;
}

void __96__PLSyndicationResourceDataStore__copyItemAtURL_withPathManager_destFileIdentifier_inode_error___block_invoke(void *a1, void *a2, void *a3)
{
  v32 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = a1[4];
    v27 = 0;
    v8 = [MEMORY[0x1E69BF238] copyItemAtURL:v7 toURL:v5 error:&v27];
    v9 = v27;
    if (v8)
    {
      v10 = *(a1[8] + 8);
      v26 = 0;
      v11 = [PLCacheDeleteSupport readInodeAtURL:v5 outInode:v10 + 24 error:&v26];
      v12 = v26;
      v13 = PLSyndicationGetLog();
      v14 = v13;
      if (v11)
      {
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
        {
          v15 = [MEMORY[0x1E69BF220] descriptionWithFileURL:v5];
          v16 = *(*(a1[8] + 8) + 24);
          *buf = 138412546;
          v29 = v15;
          v30 = 2048;
          v31 = v16;
          _os_log_impl(&dword_19BF1F000, v14, OS_LOG_TYPE_DEBUG, "[resource] read inode at url: %@, %lu", buf, 0x16u);
        }
      }

      else if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v23 = [MEMORY[0x1E69BF220] descriptionWithFileURL:v5];
        *buf = 138412546;
        v29 = v23;
        v30 = 2112;
        v31 = v12;
        _os_log_impl(&dword_19BF1F000, v14, OS_LOG_TYPE_ERROR, "[resource] failed to read inode at url: %@, non-fatal error: %@", buf, 0x16u);
      }
    }

    else
    {
      v21 = PLIsErrorOrUnderlyingErrorFileExists();
      v22 = PLSyndicationGetLog();
      v12 = v22;
      if (v21)
      {
        if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v29 = v5;
          _os_log_impl(&dword_19BF1F000, v12, OS_LOG_TYPE_INFO, "[resource] file already exists at url: %@", buf, 0xCu);
        }
      }

      else
      {
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412546;
          v29 = v5;
          v30 = 2112;
          v31 = v9;
          _os_log_impl(&dword_19BF1F000, v12, OS_LOG_TYPE_ERROR, "[resource] error copying file to url: %@, error: %@", buf, 0x16u);
        }

        *(*(a1[6] + 8) + 24) = 0;
        v24 = *(a1[7] + 8);
        v25 = v9;
        v12 = *(v24 + 40);
        *(v24 + 40) = v25;
      }
    }
  }

  else
  {
    v17 = PLSyndicationGetLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = a1[5];
      *buf = 138543618;
      v29 = v18;
      v30 = 2112;
      v31 = v6;
      _os_log_impl(&dword_19BF1F000, v17, OS_LOG_TYPE_ERROR, "[resource] unable to obtain access to file identifier: %{public}@ error: %@", buf, 0x16u);
    }

    *(*(a1[6] + 8) + 24) = 0;
    v19 = *(a1[7] + 8);
    v20 = v6;
    v9 = *(v19 + 40);
    *(v19 + 40) = v20;
  }
}

- (id)_getDestinationURLAndFixLocalAvailabilityIfNeededForResource:(id)a3 fileIdentifier:(id *)a4 isLocallyAvailable:(BOOL *)a5 error:(id *)a6
{
  v67 = *MEMORY[0x1E69E9840];
  v10 = a3;
  if (!v10)
  {
    v37 = [MEMORY[0x1E696AAA8] currentHandler];
    [v37 handleFailureInMethod:a2 object:self file:@"PLSyndicationResourceDataStore.m" lineNumber:111 description:{@"Invalid parameter not satisfying: %@", @"resource"}];
  }

  v11 = [v10 asset];
  v12 = [v10 resourceType];
  v13 = [v10 version];
  v14 = [v10 recipeID];
  v15 = [v10 uniformTypeIdentifier];
  v16 = [v15 identifier];
  v17 = [v11 syndicationFileIdentifierForResourceType:v12 version:v13 recipeID:v14 utiString:v16];

  v57 = 0;
  v58 = &v57;
  v59 = 0x3032000000;
  v60 = __Block_byref_object_copy__90025;
  v61 = __Block_byref_object_dispose__90026;
  v62 = 0;
  v53 = 0;
  v54 = &v53;
  v55 = 0x2020000000;
  v56 = 0;
  v47 = 0;
  v48 = &v47;
  v49 = 0x3032000000;
  v50 = __Block_byref_object_copy__90025;
  v51 = __Block_byref_object_dispose__90026;
  v52 = 0;
  v18 = [v11 pathManager];
  v42[0] = MEMORY[0x1E69E9820];
  v42[1] = 3221225472;
  v42[2] = __135__PLSyndicationResourceDataStore__getDestinationURLAndFixLocalAvailabilityIfNeededForResource_fileIdentifier_isLocallyAvailable_error___block_invoke;
  v42[3] = &unk_1E7573740;
  v44 = &v57;
  v45 = &v47;
  v46 = &v53;
  v19 = v17;
  v43 = v19;
  [v18 obtainAccessAndWaitWithFileWithIdentifier:v19 mode:1 toURLWithHandler:v42];

  if (*(v54 + 24) == 1 && ([v10 isLocallyAvailable] & 1) == 0)
  {
    v20 = PLSyndicationGetLog();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v21 = [v10 singleLineDescription];
      v22 = [MEMORY[0x1E69BF220] descriptionWithFileURL:v58[5]];
      *buf = 138543618;
      v64 = v21;
      v65 = 2112;
      v66 = v22;
      _os_log_impl(&dword_19BF1F000, v20, OS_LOG_TYPE_DEFAULT, "[resource] fixing model for resource (%{public}@), file exists but is not marked locally available at URL: %@", buf, 0x16u);
    }

    v40 = 0;
    v41 = 0;
    v23 = [PLCacheDeleteSupport readInodeAtURL:v58[5] outInode:&v41 error:&v40];
    v24 = v40;
    if (!v23)
    {
      v25 = PLSyndicationGetLog();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        v26 = [MEMORY[0x1E69BF220] descriptionWithFileURL:v58[5]];
        *buf = 138412546;
        v64 = v26;
        v65 = 2112;
        v66 = v24;
        _os_log_impl(&dword_19BF1F000, v25, OS_LOG_TYPE_ERROR, "[resource] failed to read inode at url: %@ non-fatal error: %@", buf, 0x16u);
      }
    }

    [objc_opt_class() _markSyndicationResourceAsLocallyAvailableWithURL:v58[5] resource:v10 inode:v41 error:0];
    v27 = [v10 managedObjectContext];
    v28 = [v27 hasChanges];

    if (v28)
    {
      v29 = [v10 managedObjectContext];
      v39 = 0;
      v30 = [v29 save:&v39];
      v31 = v39;

      if ((v30 & 1) == 0)
      {
        v32 = PLSyndicationGetLog();
        if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
        {
          v33 = [v10 singleLineDescription];
          *buf = 138543362;
          v64 = v33;
          _os_log_impl(&dword_19BF1F000, v32, OS_LOG_TYPE_ERROR, "[resource] failed to save changes to fix local availability for resource: %{public}@", buf, 0xCu);
        }
      }
    }
  }

  if (a4)
  {
    v34 = v19;
    *a4 = v19;
  }

  if (a5)
  {
    *a5 = *(v54 + 24);
  }

  if (a6)
  {
    *a6 = v48[5];
  }

  v35 = v58[5];

  _Block_object_dispose(&v47, 8);
  _Block_object_dispose(&v53, 8);
  _Block_object_dispose(&v57, 8);

  return v35;
}

void __135__PLSyndicationResourceDataStore__getDestinationURLAndFixLocalAvailabilityIfNeededForResource_fileIdentifier_isLocallyAvailable_error___block_invoke(void *a1, void *a2, void *a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v6 = a2;
  v7 = a3;
  objc_storeStrong((*(a1[5] + 8) + 40), a2);
  objc_storeStrong((*(a1[6] + 8) + 40), a3);
  if (*(*(a1[5] + 8) + 40))
  {
    v14 = 0;
    v8 = [MEMORY[0x1E696AC08] defaultManager];
    v9 = [*(*(a1[5] + 8) + 40) path];
    *(*(a1[7] + 8) + 24) = [v8 fileExistsAtPath:v9 isDirectory:&v14];

    if (v14 == 1)
    {
      v10 = PLSyndicationGetLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v11 = a1[4];
        *buf = 138543362;
        v16 = v11;
        _os_log_impl(&dword_19BF1F000, v10, OS_LOG_TYPE_ERROR, "[resource] file identifier points to a directory: %{public}@", buf, 0xCu);
      }

      *(*(a1[7] + 8) + 24) = 0;
    }
  }

  else
  {
    v12 = PLSyndicationGetLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = a1[4];
      *buf = 138543618;
      v16 = v13;
      v17 = 2112;
      v18 = v7;
      _os_log_impl(&dword_19BF1F000, v12, OS_LOG_TYPE_ERROR, "[resource] unable to obtain access to file identifier: %{public}@ error: %@", buf, 0x16u);
    }
  }
}

@end