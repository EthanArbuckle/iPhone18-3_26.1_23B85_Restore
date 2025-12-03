@interface PLSyndicationResourcePrefetchEngine
- (PLSyndicationResourcePrefetchEngine)initWithDelegate:(id)delegate;
- (PLSyndicationResourcePrefetchEngineDelegate)delegate;
- (id)_fetchDownloadThrottlingDateAndClearIfNeededWithManagedObjectContext:(id)context;
- (id)_resourcesForPrefetchWithManagedObjectContext:(id)context predicate:(id)predicate sortDescriptors:(id)descriptors;
- (id)_sortDescriptorsForResourcePrefetchImmediately:(BOOL)immediately;
- (id)dateOfNextResourceToPrefetchWithManagedObjectContext:(id)context;
- (id)highPriorityResourcesForPrefetchWithManagedObjectContext:(id)context;
- (id)lowPriorityResourcesForPrefetchWithManagedObjectContext:(id)context;
- (void)_handleDownloadFinishedWithSuccess:(BOOL)success error:(id)error resource:(id)resource downloadThrottlingDate:(id)date networkAccessAllowed:(BOOL)allowed managedObjectContext:(id)context;
- (void)_prepareResourceForPrefetch:(id)prefetch;
- (void)prefetchResourceWithObjectID:(id)d completion:(id)completion;
- (void)prefetchResourceWithObjectIDs:(id)ds completion:(id)completion;
@end

@implementation PLSyndicationResourcePrefetchEngine

- (PLSyndicationResourcePrefetchEngineDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)prefetchResourceWithObjectIDs:(id)ds completion:(id)completion
{
  dsCopy = ds;
  completionCopy = completion;
  v8 = dispatch_group_create();
  v9 = qos_class_self();
  v10 = dispatch_queue_attr_make_with_qos_class(0, v9, 0);
  v11 = dispatch_queue_create("com.apple.photos.syndicationPrefetch", v10);

  v54[0] = 0;
  v54[1] = v54;
  v54[2] = 0x3032000000;
  v54[3] = __Block_byref_object_copy__92136;
  v54[4] = __Block_byref_object_dispose__92137;
  v55 = 0;
  v12 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v13 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v31 = completionCopy;
  v14 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v15 = objc_alloc_init(MEMORY[0x1E695DF70]);
  delegate = [(PLSyndicationResourcePrefetchEngine *)self delegate];
  v46[0] = MEMORY[0x1E69E9820];
  v46[1] = 3221225472;
  v46[2] = __80__PLSyndicationResourcePrefetchEngine_prefetchResourceWithObjectIDs_completion___block_invoke;
  v46[3] = &unk_1E7574098;
  v53 = v54;
  v46[4] = self;
  v17 = dsCopy;
  v47 = v17;
  v30 = v15;
  v48 = v30;
  v18 = v8;
  v49 = v18;
  v19 = v12;
  v50 = v19;
  v32 = v13;
  v51 = v32;
  v20 = v14;
  v52 = v20;
  [delegate performTransactionForPrefetchManager:self synchronous:1 block:v46];

  v21 = objc_alloc_init(PLResourceLocalAvailabilityRequestOptions);
  [(PLResourceLocalAvailabilityRequestOptions *)v21 setNetworkAccessAllowed:1];
  v29 = v17;
  v22 = [objc_alloc(MEMORY[0x1E6994BA8]) initWithIntent:5 priority:2];
  [(PLResourceLocalAvailabilityRequestOptions *)v21 setDownloadOptions:v22];
  v45[0] = 0;
  v45[1] = v45;
  v45[2] = 0x2020000000;
  v45[3] = 0;
  v23 = [v19 count];
  delegate2 = [(PLSyndicationResourcePrefetchEngine *)self delegate];
  v40[0] = MEMORY[0x1E69E9820];
  v40[1] = 3221225472;
  v40[2] = __80__PLSyndicationResourcePrefetchEngine_prefetchResourceWithObjectIDs_completion___block_invoke_55;
  v40[3] = &unk_1E7574138;
  v40[4] = self;
  v25 = v20;
  v41 = v25;
  v42 = v18;
  v43 = v45;
  v44 = v54;
  v33[0] = MEMORY[0x1E69E9820];
  v33[1] = 3221225472;
  v33[2] = __80__PLSyndicationResourcePrefetchEngine_prefetchResourceWithObjectIDs_completion___block_invoke_69;
  v33[3] = &unk_1E7574188;
  v26 = v42;
  v34 = v26;
  v27 = v11;
  v35 = v27;
  selfCopy = self;
  v38 = v45;
  v39 = v23;
  v28 = v31;
  v37 = v28;
  [delegate2 batchRequestResourcesForPrefetchManager:self itemIdentifiersWithBundleIDs:v19 destURLs:v32 options:v21 resultHandler:v40 completionHandler:v33];

  _Block_object_dispose(v45, 8);
  _Block_object_dispose(v54, 8);
}

void __80__PLSyndicationResourcePrefetchEngine_prefetchResourceWithObjectIDs_completion___block_invoke(id *a1, void *a2)
{
  v78 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [a1[4] _fetchDownloadThrottlingDateAndClearIfNeededWithManagedObjectContext:v3];
  v5 = *(a1[11] + 1);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  v68 = 0u;
  v69 = 0u;
  v66 = 0u;
  v67 = 0u;
  v7 = a1[5];
  v8 = [v7 countByEnumeratingWithState:&v66 objects:v77 count:16];
  if (v8)
  {
    v9 = v8;
    v57 = *v67;
    v52 = *MEMORY[0x1E6982F80];
    v55 = v7;
    v53 = a1;
    v54 = v3;
    do
    {
      v10 = 0;
      v56 = v9;
      do
      {
        if (*v67 != v57)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v66 + 1) + 8 * v10);
        v65 = 0;
        v12 = [v3 existingObjectWithID:v11 error:&v65];
        v13 = v65;
        v14 = v13;
        if (v12)
        {
          v58 = v13;
          v15 = [v12 asset];
          v16 = [v15 additionalAttributes];
          v17 = [v16 syndicationIdentifier];

          v18 = [v12 asset];
          v19 = [v18 additionalAttributes];
          v20 = [v19 importedByBundleIdentifier];

          v59 = v20;
          if (v17)
          {
            v21 = v20 == 0;
          }

          else
          {
            v21 = 1;
          }

          if (v21)
          {
            v22 = PLSyndicationGetLog();
            if (os_log_type_enabled(&v22->super, OS_LOG_TYPE_ERROR))
            {
              v23 = [v12 objectID];
              *buf = 138543874;
              v71 = v17;
              v72 = 2114;
              v73 = v59;
              v74 = 2114;
              v75 = v23;
              _os_log_impl(&dword_19BF1F000, &v22->super, OS_LOG_TYPE_ERROR, "[resource.prefetch] asset missing syndicationIdentifier (%{public}@) or bundleID (%{public}@), skipping resource with object id: %{public}@", buf, 0x20u);
            }

LABEL_20:
            v14 = v58;
          }

          else
          {
            [a1[4] _prepareResourceForPrefetch:v12];
            v24 = [v12 asset];
            v25 = [v24 syndicationOriginalResourcesAreLocal];

            if (v25)
            {
              v26 = a1[6];
              v27 = [v12 objectID];
              [v26 addObject:v27];

              v28 = [v12 asset];
              v29 = [v28 uuid];

              v30 = PLSyndicationGetLog();
              if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138543362;
                v71 = v29;
                _os_log_impl(&dword_19BF1F000, v30, OS_LOG_TYPE_DEFAULT, "[resource.prefetch] attempting to generate derivative for asset with local originals: %{public}@", buf, 0xCu);
              }

              dispatch_group_enter(a1[7]);
              v22 = objc_alloc_init(PLResourceLocalAvailabilityRequestOptions);
              v31 = [a1[4] delegate];
              v32 = a1[4];
              v60[0] = MEMORY[0x1E69E9820];
              v60[1] = 3221225472;
              v60[2] = __80__PLSyndicationResourcePrefetchEngine_prefetchResourceWithObjectIDs_completion___block_invoke_53;
              v60[3] = &unk_1E7574070;
              v60[4] = v32;
              v61 = v29;
              v33 = v12;
              v34 = a1[11];
              v62 = v33;
              v64 = v34;
              v63 = a1[7];
              v35 = v29;
              v36 = [v31 requestLocalAvailabilityChangeForPrefetchManager:v32 resource:v33 options:v22 completion:v60];

              v7 = v55;
              v9 = v56;
              goto LABEL_20;
            }

            v37 = [v12 asset];
            v22 = [v37 syndicationOriginalResource];

            if (v22)
            {
              v38 = [v12 asset];
              v39 = [(PLResourceLocalAvailabilityRequestOptions *)v22 resourceType];
              v40 = [(PLResourceLocalAvailabilityRequestOptions *)v22 version];
              v41 = [(PLResourceLocalAvailabilityRequestOptions *)v22 recipeID];
              v42 = [(PLResourceLocalAvailabilityRequestOptions *)v22 uniformTypeIdentifier];
              v43 = [v42 identifier];
              v44 = [v38 syndicationResourceURLForResourceType:v39 version:v40 recipeID:v41 utiString:v43 error:0];

              v45 = [v12 asset];
              v46 = [v52 identifier];
              v47 = [v45 syndicationResourceURLForResourceType:3 version:0 recipeID:0 utiString:v46 error:0];

              if (v44 && v47)
              {
                a1 = v53;
                [v53[8] setObject:v59 forKey:v17];
                v76[0] = v44;
                v76[1] = v47;
                v48 = [MEMORY[0x1E695DEC8] arrayWithObjects:v76 count:2];
                [v53[9] setObject:v48 forKeyedSubscript:v17];

                v49 = [v12 objectID];
                [v53[10] setObject:v49 forKeyedSubscript:v17];
              }

              else
              {
                v49 = PLSyndicationGetLog();
                a1 = v53;
                if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
                {
                  v51 = [v12 objectID];
                  *buf = 138543362;
                  v71 = v51;
                  _os_log_impl(&dword_19BF1F000, v49, OS_LOG_TYPE_ERROR, "[resource.prefetch] asset has malformed original URL, skipping resource with object id: %{public}@", buf, 0xCu);
                }
              }

              v3 = v54;
              v7 = v55;
            }

            else
            {
              v44 = PLSyndicationGetLog();
              if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
              {
                v50 = [v12 objectID];
                *buf = 138543362;
                v71 = v50;
                _os_log_impl(&dword_19BF1F000, v44, OS_LOG_TYPE_ERROR, "[resource.prefetch] asset missing original resource, skipping resource with object id: %{public}@", buf, 0xCu);
              }
            }

            v14 = v58;

            v9 = v56;
          }

          goto LABEL_32;
        }

        v17 = PLSyndicationGetLog();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543618;
          v71 = v11;
          v72 = 2112;
          v73 = v14;
          _os_log_impl(&dword_19BF1F000, v17, OS_LOG_TYPE_ERROR, "[resource.prefetch] unable to fetch resource with object id: %{public}@, error: %@", buf, 0x16u);
        }

LABEL_32:

        ++v10;
      }

      while (v9 != v10);
      v9 = [v7 countByEnumeratingWithState:&v66 objects:v77 count:16];
    }

    while (v9);
  }
}

void __80__PLSyndicationResourcePrefetchEngine_prefetchResourceWithObjectIDs_completion___block_invoke_55(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6)
{
  v43 = *MEMORY[0x1E69E9840];
  v11 = a2;
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = PLSyndicationGetLog();
  v17 = v16;
  if (v12)
  {
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v18 = [*(a1 + 32) delegate];
      v19 = [v18 name];
      *buf = 138544130;
      v36 = v19;
      v37 = 2114;
      v38 = v11;
      v39 = 2112;
      v40 = v12;
      v41 = 2112;
      v42 = v13;
      _os_log_impl(&dword_19BF1F000, v17, OS_LOG_TYPE_DEFAULT, "[resource.prefetch] %{public}@ prefetched file for identifier: %{public}@, fileURL: %@, secondary fileURL: %@", buf, 0x2Au);
    }

    v20 = [*(a1 + 32) delegate];
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __80__PLSyndicationResourcePrefetchEngine_prefetchResourceWithObjectIDs_completion___block_invoke_56;
    v26[3] = &unk_1E7574110;
    v21 = *(a1 + 32);
    v27 = *(a1 + 40);
    v28 = v11;
    v29 = v12;
    v30 = v13;
    v31 = v14;
    v22 = *(a1 + 48);
    v23 = *(a1 + 32);
    v32 = v22;
    v33 = v23;
    v34 = *(a1 + 56);
    [v20 performTransactionForPrefetchManager:v21 synchronous:1 block:v26];

    v17 = v27;
  }

  else if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    v24 = [*(a1 + 32) delegate];
    v25 = [v24 name];
    *buf = 138543874;
    v36 = v25;
    v37 = 2114;
    v38 = v11;
    v39 = 2112;
    v40 = v15;
    _os_log_impl(&dword_19BF1F000, v17, OS_LOG_TYPE_ERROR, "[resource.prefetch] %{public}@ failed to prefetch file with identifier: %{public}@, error: %@", buf, 0x20u);
  }
}

void __80__PLSyndicationResourcePrefetchEngine_prefetchResourceWithObjectIDs_completion___block_invoke_69(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __80__PLSyndicationResourcePrefetchEngine_prefetchResourceWithObjectIDs_completion___block_invoke_2;
  block[3] = &unk_1E7574160;
  v6 = *(a1 + 48);
  v11 = v3;
  v12 = v6;
  v14 = *(a1 + 72);
  v9 = *(a1 + 56);
  v7 = v9;
  v13 = v9;
  v8 = v3;
  dispatch_group_notify(v4, v5, block);
}

uint64_t __80__PLSyndicationResourcePrefetchEngine_prefetchResourceWithObjectIDs_completion___block_invoke_2(uint64_t a1)
{
  v23 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = PLSyndicationGetLog();
  v4 = v3;
  if (v2)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v5 = [*(a1 + 40) delegate];
      v6 = [v5 name];
      v7 = *(a1 + 32);
      v17 = 138543618;
      v18 = v6;
      v19 = 2112;
      v20 = v7;
      v8 = "[resource.prefetch] %{public}@ batch download request failed with error: %@";
      v9 = v4;
      v10 = OS_LOG_TYPE_ERROR;
      v11 = 22;
LABEL_6:
      _os_log_impl(&dword_19BF1F000, v9, v10, v8, &v17, v11);
    }
  }

  else if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [*(a1 + 40) delegate];
    v6 = [v5 name];
    v12 = *(a1 + 64);
    v13 = *(*(*(a1 + 56) + 8) + 24);
    v17 = 138543874;
    v18 = v6;
    v19 = 2048;
    v20 = v13;
    v21 = 2048;
    v22 = v12;
    v8 = "[resource.prefetch] %{public}@ batch download request completed, %tu out of %tu items generated successfully";
    v9 = v4;
    v10 = OS_LOG_TYPE_DEFAULT;
    v11 = 32;
    goto LABEL_6;
  }

  return (*(*(a1 + 48) + 16))(*(a1 + 48), *(a1 + 32), v14, v15);
}

void __80__PLSyndicationResourcePrefetchEngine_prefetchResourceWithObjectIDs_completion___block_invoke_56(uint64_t a1, void *a2)
{
  v92 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = a2;
  v6 = [v3 objectForKeyedSubscript:v4];
  v87 = 0;
  v7 = [v5 existingObjectWithID:v6 error:&v87];

  v8 = v87;
  v73 = v8;
  if (v7)
  {
    v9 = [v7 asset];
    v10 = [v9 uuid];
    v11 = [v9 filename];

    if (!v11)
    {
      v12 = PLSyndicationGetLog();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = *(a1 + 64);
        *buf = 138543618;
        v89 = v10;
        v90 = 2112;
        v91 = v13;
        _os_log_impl(&dword_19BF1F000, v12, OS_LOG_TYPE_DEFAULT, "[resource.prefetch] setting filename and directory for asset: %{public}@ with original filename: %@", buf, 0x16u);
      }

      [v9 setSyndicationFilenameAndDirectoryWithOriginalFilename:*(a1 + 64)];
    }

    if (![v9 isPhoto] || (objc_msgSend(v9, "isPhotoIris") & 1) != 0 || (v14 = *(a1 + 56)) == 0)
    {
      v21 = 0;
      goto LABEL_15;
    }

    v15 = MEMORY[0x1E6982C40];
    v16 = [v14 pathExtension];
    v17 = [v15 typeWithFilenameExtension:v16 conformingToType:*MEMORY[0x1E6982EE8]];

    if (v17 && ([v17 isDynamic] & 1) == 0)
    {
      v71 = [v9 becomeSyndicationLivePhotoWithVideoComplementContentType:v17];
      v72 = PLSyndicationGetLog();
      v18 = v72;
      if (v71)
      {
        if (os_log_type_enabled(v72, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          v89 = v10;
          _os_log_impl(&dword_19BF1F000, v18, OS_LOG_TYPE_DEFAULT, "[resource.prefetch] found video complement URL, promoted asset (%{public}@) to live photo", buf, 0xCu);
        }

        v21 = 1;
        goto LABEL_69;
      }

      if (os_log_type_enabled(v72, OS_LOG_TYPE_ERROR))
      {
        v19 = [v17 identifier];
        *buf = 138543618;
        v89 = v10;
        v90 = 2114;
        v91 = v19;
        v20 = "[resource.prefetch] failed to promote asset to live photo: %{public}@, content type: %{public}@";
        goto LABEL_13;
      }
    }

    else
    {
      v18 = PLSyndicationGetLog();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v19 = [*(a1 + 56) pathExtension];
        *buf = 138543618;
        v89 = v19;
        v90 = 2114;
        v91 = v10;
        v20 = "[resource.prefetch] ignoring video complement with unexpected uti for file extension: %{public}@, asset: %{public}@";
LABEL_13:
        _os_log_impl(&dword_19BF1F000, v18, OS_LOG_TYPE_ERROR, v20, buf, 0x16u);
      }
    }

    v21 = 0;
LABEL_69:

LABEL_15:
    if (!*(a1 + 48))
    {
      goto LABEL_38;
    }

    v22 = [v9 syndicationOriginalResource];

    if (v22)
    {
      v23 = [v9 syndicationOriginalResource];
      v24 = *(a1 + 48);
      v84 = 0;
      v25 = [PLSyndicationResourceDataStore readInodeAndMarkResource:v23 locallyAvailableWithFileURL:v24 error:&v84];
      v26 = v84;

      if (v25)
      {
LABEL_37:

LABEL_38:
        if (!*(a1 + 56))
        {
LABEL_59:
          dispatch_group_enter(*(a1 + 72));
          v41 = objc_alloc_init(PLResourceLocalAvailabilityRequestOptions);
          v65 = [*(a1 + 80) delegate];
          v66 = *(a1 + 80);
          v74[0] = MEMORY[0x1E69E9820];
          v74[1] = 3221225472;
          v74[2] = __80__PLSyndicationResourcePrefetchEngine_prefetchResourceWithObjectIDs_completion___block_invoke_60;
          v74[3] = &unk_1E75740E8;
          v74[4] = v66;
          v75 = v10;
          v78 = *(a1 + 88);
          v67 = v7;
          v68 = *(a1 + 96);
          v76 = v67;
          v79 = v68;
          v77 = *(a1 + 72);
          v69 = v10;
          v70 = [v65 requestLocalAvailabilityChangeForPrefetchManager:v66 resource:v67 options:v41 completion:v74];

          goto LABEL_60;
        }

        if ((v21 & 1) != 0 || [v9 isPhotoIris])
        {
          v47 = [v9 syndicationOriginalVideoComplementResource];

          if (v47)
          {
            v48 = [v9 syndicationOriginalVideoComplementResource];
            v49 = *(a1 + 56);
            v82 = 0;
            v50 = [PLSyndicationResourceDataStore readInodeAndMarkResource:v48 locallyAvailableWithFileURL:v49 error:&v82];
            v51 = v82;

            if (v50)
            {
LABEL_58:

              goto LABEL_59;
            }

            v52 = PLSyndicationGetLog();
            if (!os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
            {
LABEL_57:

              goto LABEL_58;
            }

            *buf = 138543618;
            v89 = v10;
            v90 = 2112;
            v91 = v51;
            v53 = "[resource.prefetch] failed to mark video complement resource as locally available for asset: %{public}@, error: %@";
            v54 = v52;
            v55 = 22;
LABEL_56:
            _os_log_impl(&dword_19BF1F000, v54, OS_LOG_TYPE_ERROR, v53, buf, v55);
            goto LABEL_57;
          }

          v56 = PLSyndicationGetLog();
          if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
          {
            v57 = *(a1 + 56);
            *buf = 138543618;
            v89 = v10;
            v90 = 2112;
            v91 = v57;
            _os_log_impl(&dword_19BF1F000, v56, OS_LOG_TYPE_ERROR, "[resource.prefetch] asset %{public}@ does not have a video complement resource, cannot ingest file at url: %@", buf, 0x16u);
          }

          v58 = [MEMORY[0x1E696AC08] defaultManager];
          v59 = *(a1 + 56);
          v81 = 0;
          v60 = [v58 removeItemAtURL:v59 error:&v81];
          v51 = v81;

          if (v60)
          {
            goto LABEL_58;
          }

          v52 = PLSyndicationGetLog();
          if (!os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_57;
          }

          *buf = 138412290;
          v89 = v51;
          v53 = "[resource.prefetch] failed to remove erroneous video complement file: %@";
        }

        else
        {
          v61 = PLSyndicationGetLog();
          if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
          {
            *buf = 138543362;
            v89 = v10;
            _os_log_impl(&dword_19BF1F000, v61, OS_LOG_TYPE_ERROR, "[resource.prefetch] received video complement file for non-live photo asset: %{public}@, removing", buf, 0xCu);
          }

          v62 = [MEMORY[0x1E696AC08] defaultManager];
          v63 = *(a1 + 56);
          v80 = 0;
          v64 = [v62 removeItemAtURL:v63 error:&v80];
          v51 = v80;

          if (v64)
          {
            goto LABEL_58;
          }

          v52 = PLSyndicationGetLog();
          if (!os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_57;
          }

          *buf = 138412290;
          v89 = v51;
          v53 = "[resource.prefetch] failed to remove erroneous video complement file: %@";
        }

        v54 = v52;
        v55 = 12;
        goto LABEL_56;
      }

      v27 = PLSyndicationGetLog();
      if (!os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
LABEL_36:

        goto LABEL_37;
      }

      *buf = 138543618;
      v89 = v10;
      v90 = 2112;
      v91 = v26;
      v28 = "[resource.prefetch] failed to mark original resource as locally available for asset: %{public}@, error: %@";
      v29 = v27;
      v30 = 22;
    }

    else
    {
      v42 = PLSyndicationGetLog();
      if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
      {
        v43 = *(a1 + 48);
        *buf = 138543618;
        v89 = v10;
        v90 = 2112;
        v91 = v43;
        _os_log_impl(&dword_19BF1F000, v42, OS_LOG_TYPE_ERROR, "[resource.prefetch] asset %{public}@ does not have an original resource, cannot ingest file at url: %@", buf, 0x16u);
      }

      v44 = [MEMORY[0x1E696AC08] defaultManager];
      v45 = *(a1 + 48);
      v83 = 0;
      v46 = [v44 removeItemAtURL:v45 error:&v83];
      v26 = v83;

      if (v46)
      {
        goto LABEL_37;
      }

      v27 = PLSyndicationGetLog();
      if (!os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_36;
      }

      *buf = 138412290;
      v89 = v26;
      v28 = "[resource.prefetch] failed to remove erroneous original file: %@";
      v29 = v27;
      v30 = 12;
    }

    _os_log_impl(&dword_19BF1F000, v29, OS_LOG_TYPE_ERROR, v28, buf, v30);
    goto LABEL_36;
  }

  v31 = v8;
  v32 = PLSyndicationGetLog();
  if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543618;
    v89 = v6;
    v90 = 2112;
    v91 = v31;
    _os_log_impl(&dword_19BF1F000, v32, OS_LOG_TYPE_ERROR, "[resource.prefetch] unable to fetch resource with object id: %{public}@, error: %@", buf, 0x16u);
  }

  v33 = [MEMORY[0x1E696AC08] defaultManager];
  v34 = *(a1 + 48);
  v86 = 0;
  v35 = [v33 removeItemAtURL:v34 error:&v86];
  v36 = v86;

  if ((v35 & 1) == 0)
  {
    v37 = PLSyndicationGetLog();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v89 = v36;
      _os_log_impl(&dword_19BF1F000, v37, OS_LOG_TYPE_ERROR, "[resource.prefetch] failed to clean up file after resource fetch failure: %@", buf, 0xCu);
    }
  }

  if (*(a1 + 56))
  {
    v38 = [MEMORY[0x1E696AC08] defaultManager];
    v39 = *(a1 + 56);
    v85 = v36;
    v40 = [v38 removeItemAtURL:v39 error:&v85];
    v9 = v85;

    if (v40)
    {
LABEL_61:
      v36 = v9;
      goto LABEL_62;
    }

    v41 = PLSyndicationGetLog();
    if (os_log_type_enabled(&v41->super, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v89 = v9;
      _os_log_impl(&dword_19BF1F000, &v41->super, OS_LOG_TYPE_ERROR, "[resource.prefetch] failed to clean up file after resource fetch failure: %@", buf, 0xCu);
    }

LABEL_60:

    goto LABEL_61;
  }

LABEL_62:
}

void __80__PLSyndicationResourcePrefetchEngine_prefetchResourceWithObjectIDs_completion___block_invoke_60(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v29 = *MEMORY[0x1E69E9840];
  v6 = a2;
  v7 = a4;
  v8 = PLSyndicationGetLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [*(a1 + 32) delegate];
    v10 = [v9 name];
    v11 = *(a1 + 40);
    v12 = @"N";
    *buf = 138543874;
    v24 = v10;
    if (v7)
    {
      v12 = @"Y";
    }

    v25 = 2114;
    v26 = v11;
    v27 = 2114;
    v28 = v12;
    _os_log_impl(&dword_19BF1F000, v8, OS_LOG_TYPE_DEFAULT, "[resource.prefetch] %{public}@ finished generating derivative for asset: %{public}@ with success: %{public}@", buf, 0x20u);
  }

  if (v7)
  {
    ++*(*(*(a1 + 64) + 8) + 24);
  }

  v13 = [*(a1 + 32) delegate];
  v14 = *(a1 + 32);
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __80__PLSyndicationResourcePrefetchEngine_prefetchResourceWithObjectIDs_completion___block_invoke_67;
  v18[3] = &unk_1E75740C0;
  v22 = v7 != 0;
  v18[4] = v14;
  v19 = v6;
  v15 = *(a1 + 48);
  v16 = *(a1 + 72);
  v20 = v15;
  v21 = v16;
  v17 = v6;
  [v13 performTransactionForPrefetchManager:v14 synchronous:1 block:v18];

  dispatch_group_leave(*(a1 + 56));
}

void __80__PLSyndicationResourcePrefetchEngine_prefetchResourceWithObjectIDs_completion___block_invoke_53(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v27 = *MEMORY[0x1E69E9840];
  v6 = a2;
  v7 = a4;
  v8 = PLSyndicationGetLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [*(a1 + 32) delegate];
    v10 = [v9 name];
    v11 = *(a1 + 40);
    *buf = 138543618;
    v24 = v10;
    v25 = 2114;
    v26 = v11;
    _os_log_impl(&dword_19BF1F000, v8, OS_LOG_TYPE_DEFAULT, "[resource.prefetch] %{public}@ finished generating derivative for asset: %{public}@", buf, 0x16u);
  }

  v12 = [*(a1 + 32) delegate];
  v13 = *(a1 + 32);
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __80__PLSyndicationResourcePrefetchEngine_prefetchResourceWithObjectIDs_completion___block_invoke_54;
  v18[3] = &unk_1E7574048;
  v18[4] = v13;
  v19 = v7;
  v20 = v6;
  v14 = *(a1 + 48);
  v15 = *(a1 + 64);
  v21 = v14;
  v22 = v15;
  v16 = v6;
  v17 = v7;
  [v12 performTransactionForPrefetchManager:v13 synchronous:1 block:v18];

  dispatch_group_leave(*(a1 + 56));
}

- (void)prefetchResourceWithObjectID:(id)d completion:(id)completion
{
  dCopy = d;
  completionCopy = completion;
  v21[0] = 0;
  v21[1] = v21;
  v21[2] = 0x3032000000;
  v21[3] = __Block_byref_object_copy__92136;
  v21[4] = __Block_byref_object_dispose__92137;
  v22 = 0;
  delegate = [(PLSyndicationResourcePrefetchEngine *)self delegate];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __79__PLSyndicationResourcePrefetchEngine_prefetchResourceWithObjectID_completion___block_invoke;
  v18[3] = &unk_1E7573FA8;
  v20 = v21;
  v18[4] = self;
  v9 = dCopy;
  v19 = v9;
  [delegate performTransactionForPrefetchManager:self synchronous:1 block:v18];

  delegate2 = [(PLSyndicationResourcePrefetchEngine *)self delegate];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __79__PLSyndicationResourcePrefetchEngine_prefetchResourceWithObjectID_completion___block_invoke_2;
  v13[3] = &unk_1E7574020;
  v11 = v9;
  v14 = v11;
  selfCopy = self;
  v17 = v21;
  v12 = completionCopy;
  v16 = v12;
  [delegate2 performTransactionForPrefetchManager:self synchronous:0 block:v13];

  _Block_object_dispose(v21, 8);
}

void __79__PLSyndicationResourcePrefetchEngine_prefetchResourceWithObjectID_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 _fetchDownloadThrottlingDateAndClearIfNeededWithManagedObjectContext:v4];
  v6 = *(*(a1 + 48) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  v8 = [v4 existingObjectWithID:*(a1 + 40) error:0];

  [*(a1 + 32) _prepareResourceForPrefetch:v8];
}

void __79__PLSyndicationResourcePrefetchEngine_prefetchResourceWithObjectID_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v34 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v27 = 0;
  v4 = [a2 existingObjectWithID:v3 error:&v27];
  v5 = v27;
  v6 = PLSyndicationGetLog();
  v7 = v6;
  if (v4)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [*(a1 + 40) delegate];
      v9 = [v8 name];
      v10 = [v4 singleLineDescription];
      *buf = 138543618;
      v29 = v9;
      v30 = 2112;
      v31 = v10;
      _os_log_impl(&dword_19BF1F000, v7, OS_LOG_TYPE_DEFAULT, "[resource.sync] %{public}@ performing work on resource: %@", buf, 0x16u);
    }

    v11 = objc_alloc_init(PLResourceLocalAvailabilityRequestOptions);
    v12 = [*(a1 + 40) delegate];
    if ([v12 isNetworkAccessAllowed])
    {
      v13 = *(*(*(a1 + 56) + 8) + 40) == 0;
    }

    else
    {
      v13 = 0;
    }

    [(PLResourceLocalAvailabilityRequestOptions *)v11 setNetworkAccessAllowed:v13];
    v17 = [objc_alloc(MEMORY[0x1E6994BA8]) initWithIntent:0 priority:2];
    [(PLResourceLocalAvailabilityRequestOptions *)v11 setDownloadOptions:v17];

    v18 = [*(a1 + 40) delegate];
    v19 = *(a1 + 40);
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __79__PLSyndicationResourcePrefetchEngine_prefetchResourceWithObjectID_completion___block_invoke_39;
    v23[3] = &unk_1E7573FF8;
    v23[4] = v19;
    v24 = v4;
    v26 = v13;
    v22 = *(a1 + 48);
    v20 = v22;
    v25 = v22;
    v21 = [v18 requestLocalAvailabilityChangeForPrefetchManager:v19 resource:v24 options:v11 completion:v23];
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v14 = [*(a1 + 40) delegate];
      v15 = [v14 name];
      v16 = *(a1 + 32);
      *buf = 138543874;
      v29 = v15;
      v30 = 2114;
      v31 = v16;
      v32 = 2112;
      v33 = v5;
      _os_log_impl(&dword_19BF1F000, v7, OS_LOG_TYPE_ERROR, "[resource.sync] %{public}@ failed to fetch resource with object ID: %{public}@, error: %@", buf, 0x20u);
    }

    v11 = PLErrorCreate();
    (*(*(a1 + 48) + 16))();
  }
}

void __79__PLSyndicationResourcePrefetchEngine_prefetchResourceWithObjectID_completion___block_invoke_39(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v39[1] = *MEMORY[0x1E69E9840];
  v6 = a2;
  v7 = a4;
  v8 = v6;
  v9 = v8;
  if (v8 | v7)
  {
    v10 = v8;
    if (v7)
    {
      v11 = PLSyndicationGetLog();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = [*(a1 + 32) delegate];
        v13 = [v12 name];
        *buf = 138543362;
        v35 = v13;
        _os_log_impl(&dword_19BF1F000, v11, OS_LOG_TYPE_DEFAULT, "[resource.sync] %{public}@ generated image derivative", buf, 0xCu);
      }

      v10 = v9;
      goto LABEL_9;
    }
  }

  else
  {
    v14 = MEMORY[0x1E696ABC0];
    v15 = *MEMORY[0x1E69BFF48];
    v38 = *MEMORY[0x1E696A278];
    v39[0] = @"unknown error sanitizing syndication resource";
    v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v39 forKeys:&v38 count:1];
    v10 = [v14 errorWithDomain:v15 code:47001 userInfo:v16];
  }

  v11 = PLSyndicationGetLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    v17 = [*(a1 + 32) delegate];
    v18 = [v17 name];
    *buf = 138543618;
    v35 = v18;
    v36 = 2112;
    v37 = v10;
    _os_log_impl(&dword_19BF1F000, v11, OS_LOG_TYPE_ERROR, "[resource.sync] %{public}@ error generating image derivative: %@", buf, 0x16u);
  }

LABEL_9:

  v19 = [*(a1 + 32) delegate];
  v20 = *(a1 + 32);
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __79__PLSyndicationResourcePrefetchEngine_prefetchResourceWithObjectID_completion___block_invoke_45;
  v28[3] = &unk_1E7573FD0;
  v28[4] = v20;
  v29 = v7;
  v30 = v10;
  v21 = *(a1 + 40);
  v22 = *(a1 + 56);
  v31 = v21;
  v32 = v22;
  v33 = *(a1 + 64);
  v23 = v10;
  v24 = v7;
  [v19 performTransactionForPrefetchManager:v20 synchronous:1 block:v28];

  (*(*(a1 + 48) + 16))(*(a1 + 48), v23, v25, v26, v27);
}

- (id)dateOfNextResourceToPrefetchWithManagedObjectContext:(id)context
{
  contextCopy = context;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__92136;
  v15 = __Block_byref_object_dispose__92137;
  v16 = 0;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __92__PLSyndicationResourcePrefetchEngine_dateOfNextResourceToPrefetchWithManagedObjectContext___block_invoke;
  v8[3] = &unk_1E7578820;
  v8[4] = self;
  v5 = contextCopy;
  v9 = v5;
  v10 = &v11;
  [v5 performBlockAndWait:v8];
  v6 = v12[5];

  _Block_object_dispose(&v11, 8);

  return v6;
}

void __92__PLSyndicationResourcePrefetchEngine_dateOfNextResourceToPrefetchWithManagedObjectContext___block_invoke(uint64_t a1)
{
  v26[1] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E695D5E0];
  v3 = +[PLInternalResource entityName];
  v4 = [v2 fetchRequestWithEntityName:v3];

  v5 = [PLInternalResource predicateForSyndicationResourcesRequiringBackgroundDownloadImmediately:0];
  [v4 setPredicate:v5];

  [v4 setResultType:2];
  v26[0] = @"cloudLastPrefetchDate";
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:1];
  [v4 setPropertiesToFetch:v6];

  [v4 setFetchLimit:1];
  v7 = [*(a1 + 32) _sortDescriptorsForResourcePrefetchImmediately:0];
  [v4 setSortDescriptors:v7];

  v8 = *(a1 + 40);
  v21 = 0;
  v9 = [v8 executeFetchRequest:v4 error:&v21];
  v10 = v21;
  if (!v9)
  {
    v15 = PLSyndicationGetLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v19 = [*(a1 + 32) delegate];
      v20 = [v19 name];
      *buf = 138543618;
      v23 = v20;
      v24 = 2112;
      v25 = v10;
      _os_log_impl(&dword_19BF1F000, v15, OS_LOG_TYPE_ERROR, "[resource.sync] %{public}@ failed to fetch work items with error: %@", buf, 0x16u);
    }

    goto LABEL_7;
  }

  if ([v9 count])
  {
    v11 = [v9 firstObject];
    v12 = [v11 objectForKeyedSubscript:@"cloudLastPrefetchDate"];
    v13 = *(*(a1 + 48) + 8);
    v14 = *(v13 + 40);
    *(v13 + 40) = v12;

    v15 = PLSyndicationGetLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      v16 = [*(a1 + 32) delegate];
      v17 = [v16 name];
      v18 = *(*(*(a1 + 48) + 8) + 40);
      *buf = 138543618;
      v23 = v17;
      v24 = 2112;
      v25 = v18;
      _os_log_impl(&dword_19BF1F000, v15, OS_LOG_TYPE_DEBUG, "[resource.sync] %{public}@ earliest date for next resource prefetch: %@", buf, 0x16u);
    }

LABEL_7:
  }
}

- (id)lowPriorityResourcesForPrefetchWithManagedObjectContext:(id)context
{
  contextCopy = context;
  v5 = [PLInternalResource predicateForSyndicationResourcesRequiringBackgroundDownloadImmediately:1];
  v6 = [(PLSyndicationResourcePrefetchEngine *)self _sortDescriptorsForResourcePrefetchImmediately:1];
  v7 = [(PLSyndicationResourcePrefetchEngine *)self _resourcesForPrefetchWithManagedObjectContext:contextCopy predicate:v5 sortDescriptors:v6];

  return v7;
}

- (id)highPriorityResourcesForPrefetchWithManagedObjectContext:(id)context
{
  contextCopy = context;
  v5 = +[PLInternalResource predicateForSyndicationResourcesRequiringSanitization];
  v6 = [(PLSyndicationResourcePrefetchEngine *)self _sortDescriptorsForResourcePrefetchImmediately:1];
  v7 = [(PLSyndicationResourcePrefetchEngine *)self _resourcesForPrefetchWithManagedObjectContext:contextCopy predicate:v5 sortDescriptors:v6];

  return v7;
}

- (void)_handleDownloadFinishedWithSuccess:(BOOL)success error:(id)error resource:(id)resource downloadThrottlingDate:(id)date networkAccessAllowed:(BOOL)allowed managedObjectContext:(id)context
{
  successCopy = success;
  v35 = *MEMORY[0x1E69E9840];
  errorCopy = error;
  resourceCopy = resource;
  dateCopy = date;
  contextCopy = context;
  if (successCopy)
  {
    date = [MEMORY[0x1E695DF00] date];
    [resourceCopy setCloudLastPrefetchDate:date];

    [resourceCopy setCloudPrefetchCount:0];
  }

  else
  {
    if (PLErrorOrUnderlyingErrorHasDomainAndCode())
    {
      [resourceCopy setSyndicationLocalAvailabilityWithAvailable:0 additionalFlags:4];
    }

    if (PLUnderlyingErrorIsSyndicationMessagesNeedsDownload(errorCopy) && !allowed)
    {
      if (dateCopy)
      {
        [resourceCopy setCloudLastPrefetchDate:dateCopy];
      }

      else
      {
        date2 = [MEMORY[0x1E695DF00] date];
        [resourceCopy setCloudLastPrefetchDate:date2];
      }

      [resourceCopy setCloudPrefetchCount:0];
      v20 = PLSyndicationGetLog();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
      {
        delegate = [(PLSyndicationResourcePrefetchEngine *)self delegate];
        name = [delegate name];
        *buf = 138543362;
        v32 = name;
        _os_log_impl(&dword_19BF1F000, v20, OS_LOG_TYPE_DEBUG, "[resource.sync] %{public}@ downloads not permitted, will try again when network access allowed", buf, 0xCu);
      }
    }

    v30 = 0;
    PLUnderlyingErrorIsSyndicationMessagesRetry(errorCopy, &v30);
    v24 = v23;
    v25 = v30;
    if (v24)
    {
      delegate2 = [(PLSyndicationResourcePrefetchEngine *)self delegate];
      [delegate2 prefetchManager:self receivedNewDownloadThrottlingDate:v25 managedObjectContext:contextCopy];

      v27 = PLSyndicationGetLog();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        delegate3 = [(PLSyndicationResourcePrefetchEngine *)self delegate];
        name2 = [delegate3 name];
        *buf = 138543618;
        v32 = name2;
        v33 = 2114;
        v34 = v25;
        _os_log_impl(&dword_19BF1F000, v27, OS_LOG_TYPE_DEFAULT, "[resource.sync.throttle] %{public}@ server has indicated that network prefetch should be disabled until: %{public}@", buf, 0x16u);
      }

      [resourceCopy setCloudLastPrefetchDate:v25];
      [resourceCopy setCloudPrefetchCount:0];
    }
  }
}

- (void)_prepareResourceForPrefetch:(id)prefetch
{
  prefetchCopy = prefetch;
  [prefetchCopy clearRequiresSanitizationFlag];
  cloudPrefetchCount = [prefetchCopy cloudPrefetchCount];
  v4 = cloudPrefetchCount;
  v5 = 86400.0;
  if (cloudPrefetchCount)
  {
    v6 = cloudPrefetchCount;
    do
    {
      v5 = v5 + v5;
      --v6;
    }

    while (v6);
  }

  v7 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceNow:v5];
  [prefetchCopy setCloudLastPrefetchDate:v7];
  [prefetchCopy setCloudPrefetchCount:(v4 + 1)];
}

- (id)_fetchDownloadThrottlingDateAndClearIfNeededWithManagedObjectContext:(id)context
{
  v17 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  delegate = [(PLSyndicationResourcePrefetchEngine *)self delegate];
  v6 = [delegate downloadThrottlingDateForPrefetchManager:self];

  if (v6)
  {
    [v6 timeIntervalSinceNow];
    if (v7 <= 0.0)
    {
      v8 = PLSyndicationGetLog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        delegate2 = [(PLSyndicationResourcePrefetchEngine *)self delegate];
        name = [delegate2 name];
        v13 = 138543618;
        v14 = name;
        v15 = 2114;
        v16 = v6;
        _os_log_impl(&dword_19BF1F000, v8, OS_LOG_TYPE_DEFAULT, "[resource.sync.throttle] %{public}@ server time limit for disabling network prefetch has expired (%{public}@), allowing network prefetch", &v13, 0x16u);
      }

      delegate3 = [(PLSyndicationResourcePrefetchEngine *)self delegate];
      [delegate3 prefetchManager:self receivedNewDownloadThrottlingDate:0 managedObjectContext:contextCopy];

      v6 = 0;
    }
  }

  return v6;
}

- (id)_resourcesForPrefetchWithManagedObjectContext:(id)context predicate:(id)predicate sortDescriptors:(id)descriptors
{
  contextCopy = context;
  predicateCopy = predicate;
  descriptorsCopy = descriptors;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy__92136;
  v26 = __Block_byref_object_dispose__92137;
  v27 = 0;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __111__PLSyndicationResourcePrefetchEngine__resourcesForPrefetchWithManagedObjectContext_predicate_sortDescriptors___block_invoke;
  v16[3] = &unk_1E75780D8;
  v11 = predicateCopy;
  v17 = v11;
  v12 = descriptorsCopy;
  v18 = v12;
  v21 = &v22;
  v13 = contextCopy;
  v19 = v13;
  selfCopy = self;
  [v13 performBlockAndWait:v16];
  v14 = v23[5];

  _Block_object_dispose(&v22, 8);

  return v14;
}

void __111__PLSyndicationResourcePrefetchEngine__resourcesForPrefetchWithManagedObjectContext_predicate_sortDescriptors___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E695D5E0];
  v3 = +[PLInternalResource entityName];
  v4 = [v2 fetchRequestWithEntityName:v3];

  [v4 setPredicate:*(a1 + 32)];
  [v4 setResultType:1];
  [v4 setFetchLimit:100];
  [v4 setSortDescriptors:*(a1 + 40)];
  v5 = *(a1 + 48);
  v13 = 0;
  v6 = [v5 executeFetchRequest:v4 error:&v13];
  v7 = v13;
  v8 = *(*(a1 + 64) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v6;

  if (!*(*(*(a1 + 64) + 8) + 40))
  {
    v10 = PLSyndicationGetLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = [*(a1 + 56) delegate];
      v12 = [v11 name];
      *buf = 138543618;
      v15 = v12;
      v16 = 2112;
      v17 = v7;
      _os_log_impl(&dword_19BF1F000, v10, OS_LOG_TYPE_ERROR, "[resource.sync] %{public}@ failed to fetch work items with error: %@", buf, 0x16u);
    }
  }
}

- (id)_sortDescriptorsForResourcePrefetchImmediately:(BOOL)immediately
{
  v8[1] = *MEMORY[0x1E69E9840];
  if (immediately)
  {
    v3 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"asset.addedDate" ascending:0];
    v8[0] = v3;
    v4 = v8;
  }

  else
  {
    v3 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"cloudLastPrefetchDate" ascending:1];
    v7 = v3;
    v4 = &v7;
  }

  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:1];

  return v5;
}

- (PLSyndicationResourcePrefetchEngine)initWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v8.receiver = self;
  v8.super_class = PLSyndicationResourcePrefetchEngine;
  v5 = [(PLSyndicationResourcePrefetchEngine *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_delegate, delegateCopy);
  }

  return v6;
}

@end