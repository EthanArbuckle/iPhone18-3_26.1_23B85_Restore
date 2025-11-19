@interface PLSyndicationSanitizedResourceGenerator
- (BOOL)_handleGenerateCompletionWithGenerateError:(id)a3 storedRecipes:(id)a4 sourceMetadata:(id)a5 targetRecipe:(id)a6 assetObjectID:(id)a7 managedObjectContext:(id)a8 timeZoneLookup:(id)a9 error:(id *)a10;
- (PLSyndicationSanitizedResourceGenerator)initWithDelegate:(id)a3;
- (PLSyndicationSanitizedResourceGeneratorDelegate)delegate;
- (void)_generateAndStoreDerivativeResourcesForSyndicationResource:(id)a3 taskIdentifier:(id)a4 completion:(id)a5;
- (void)generateAndStoreDerivativeResourcesForSyndicationResource:(id)a3 taskIdentifier:(id)a4 completion:(id)a5;
@end

@implementation PLSyndicationSanitizedResourceGenerator

- (PLSyndicationSanitizedResourceGeneratorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)generateAndStoreDerivativeResourcesForSyndicationResource:(id)a3 taskIdentifier:(id)a4 completion:(id)a5
{
  v8 = a5;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __127__PLSyndicationSanitizedResourceGenerator_generateAndStoreDerivativeResourcesForSyndicationResource_taskIdentifier_completion___block_invoke;
  v10[3] = &unk_1E7566208;
  v11 = v8;
  v9 = v8;
  [(PLSyndicationSanitizedResourceGenerator *)self _generateAndStoreDerivativeResourcesForSyndicationResource:a3 taskIdentifier:a4 completion:v10];
}

- (void)_generateAndStoreDerivativeResourcesForSyndicationResource:(id)a3 taskIdentifier:(id)a4 completion:(id)a5
{
  v46 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v8 asset];
  v12 = [v11 firstPersistedResourceMatching:&__block_literal_global_7744];
  if ([v12 isLocallyAvailable] && objc_msgSend(v11, "effectiveThumbnailIndex") != 0x7FFFFFFFFFFFFFFFLL)
  {
    v29 = PLSyndicationGetLog();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19BF1F000, v29, OS_LOG_TYPE_DEFAULT, "[sync] medium image is already locally available", buf, 2u);
    }

    v35 = [v8 managedObjectContext];
    v10[2](v10, 1);
  }

  else
  {
    v31 = [v11 objectID];
    v30 = [v12 objectID];
    v13 = PLSyndicationGetLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = [v11 uuid];
      *buf = 138543362;
      v45 = v14;
      _os_log_impl(&dword_19BF1F000, v13, OS_LOG_TYPE_DEFAULT, "[sync] generating medium image for %{public}@", buf, 0xCu);
    }

    v33 = v10;
    v34 = v8;
    v32 = v12;
    v15 = v9;
    if (PLSyndicationAssetRequiresBlastDoorToAccessOriginals(v11))
    {
      v42 = *MEMORY[0x1E69AE988];
      v43 = MEMORY[0x1E695E118];
      v35 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v43 forKeys:&v42 count:1];
    }

    else
    {
      v35 = 0;
    }

    v16 = PLSyndicationAssetRequiresBlastDoorToAccessOriginals(v11);
    v17 = @"Syndication sans Blast Door";
    if (v16)
    {
      v17 = @"Blast Door";
    }

    v18 = v17;
    v19 = [PLResourceRecipe recipeFromID:65741];
    v20 = [PLResourceRecipeGenerationOptions alloc];
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v22 = [WeakRetained imageConversionClientForResourceGenerator:self];
    v23 = objc_loadWeakRetained(&self->_delegate);
    v24 = [v23 videoConversionClientForResourceGenerator:self];
    v25 = [(PLResourceRecipeGenerationOptions *)v20 initWithVersion:0 taskIdentifier:v15 reason:v18 imageConversionServiceClient:v22 videoConversionServiceClient:v24 conversionServiceOptions:v35];

    v36[0] = MEMORY[0x1E69E9820];
    v36[1] = 3221225472;
    v36[2] = __128__PLSyndicationSanitizedResourceGenerator__generateAndStoreDerivativeResourcesForSyndicationResource_taskIdentifier_completion___block_invoke_63;
    v36[3] = &unk_1E75665B8;
    v36[4] = self;
    v37 = v19;
    v38 = v31;
    v8 = v34;
    v39 = v34;
    v40 = v30;
    v10 = v33;
    v41 = v33;
    v26 = v30;
    v27 = v31;
    v28 = v19;
    [v28 generateAndStoreForAsset:v11 options:v25 progress:0 completion:v36];

    v9 = v15;
    v12 = v32;
  }
}

void __128__PLSyndicationSanitizedResourceGenerator__generateAndStoreDerivativeResourcesForSyndicationResource_taskIdentifier_completion___block_invoke_63(void *a1, void *a2, void *a3, void *a4, uint64_t a5, void *a6)
{
  v33 = *MEMORY[0x1E69E9840];
  v10 = a2;
  v11 = a1[4];
  v26 = a1[5];
  v12 = a1[6];
  v13 = a1[7];
  v14 = a6;
  v15 = a4;
  v16 = a3;
  v17 = [v13 photoLibrary];
  v18 = [v17 libraryBundle];
  v19 = [v18 timeZoneLookup];
  v28 = 0;
  [v11 _handleGenerateCompletionWithGenerateError:v16 storedRecipes:v15 sourceMetadata:v14 targetRecipe:v26 assetObjectID:v12 managedObjectContext:v10 timeZoneLookup:v19 error:&v28];

  v20 = v28;
  v21 = a1[8];
  v27 = 0;
  v22 = [v10 existingObjectWithID:v21 error:&v27];
  v23 = v27;
  if (!v22)
  {
    v24 = PLSyndicationGetLog();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v25 = a1[8];
      *buf = 138543618;
      v30 = v25;
      v31 = 2112;
      v32 = v23;
      _os_log_impl(&dword_19BF1F000, v24, OS_LOG_TYPE_ERROR, "[sync] failed to fetch resource to clear sanitization flag with objectID: %{public}@, error %@", buf, 0x16u);
    }

    if (!v20)
    {
      v20 = v23;
    }
  }

  (*(a1[9] + 16))();
}

BOOL __128__PLSyndicationSanitizedResourceGenerator__generateAndStoreDerivativeResourcesForSyndicationResource_taskIdentifier_completion___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 recipeID] == 65741 && !objc_msgSend(v2, "version") && objc_msgSend(v2, "resourceType") == 0;

  return v3;
}

- (BOOL)_handleGenerateCompletionWithGenerateError:(id)a3 storedRecipes:(id)a4 sourceMetadata:(id)a5 targetRecipe:(id)a6 assetObjectID:(id)a7 managedObjectContext:(id)a8 timeZoneLookup:(id)a9 error:(id *)a10
{
  v123 = *MEMORY[0x1E69E9840];
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a6;
  v20 = a7;
  v101 = a8;
  v94 = a9;
  v96 = v19;
  if (v16)
  {
    v21 = v16;
    v22 = PLSyndicationGetLog();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v116 = v21;
      _os_log_impl(&dword_19BF1F000, v22, OS_LOG_TYPE_ERROR, "[sync.resource] conversion service returned error: %@", buf, 0xCu);
    }

    goto LABEL_7;
  }

  if (([v17 containsObject:v19] & 1) == 0)
  {
    v22 = [MEMORY[0x1E696AEC0] stringWithFormat:@"requested recipe %@ was not stored", v19];
    v21 = PLErrorCreate();
LABEL_7:

    v23 = 0;
    goto LABEL_8;
  }

  v21 = 0;
  v23 = 1;
LABEL_8:
  v113 = 0;
  v24 = [v101 existingObjectWithID:v20 error:&v113];
  v102 = v24;
  v97 = v18;
  v98 = v16;
  v95 = v20;
  v93 = v113;
  if (!v23 || v24)
  {
    if (!v23)
    {
      goto LABEL_20;
    }

    v100 = v21;
    v27 = [MEMORY[0x1E695E000] standardUserDefaults];
    v28 = [v27 BOOLForKey:@"PADisablePhotosBlastDoorProcessing"];

    if ((v28 & 1) == 0)
    {
      v56 = PLSyndicationAssetRequiresBlastDoorToAccessOriginals(v24);
      if (!v18)
      {
        if (v56)
        {
          v25 = [MEMORY[0x1E696AEC0] stringWithFormat:@"missing blastdoor source metadata"];
          v26 = PLErrorCreate();
          goto LABEL_11;
        }
      }
    }

    v29 = [v24 syndicationOriginalResource];
    if (v29)
    {
      v30 = v29;
      [v29 fileURL];
      obj = v99 = v30;
      if (obj)
      {
        v31 = [v24 isPhotoIris] ^ 1;
        if (v31)
        {
          v103 = 0;
          v34 = 0;
          goto LABEL_65;
        }

        v32 = [v24 syndicationOriginalVideoComplementResource];
        v33 = v32;
        if (v32)
        {
          v103 = [v32 fileURL];
          if (v103)
          {
            v34 = 0;
LABEL_64:

LABEL_65:
            v70 = [MEMORY[0x1E695E000] standardUserDefaults];
            v71 = [v70 BOOLForKey:@"PADisablePhotosBlastDoorProcessing"];

            if ((v71 & 1) != 0 || !PLSyndicationAssetRequiresBlastDoorToAccessOriginals(v102))
            {
              v81 = PLSyndicationGetLog();
              v73 = obj;
              if (os_log_type_enabled(v81, OS_LOG_TYPE_DEFAULT))
              {
                v82 = [v102 uuid];
                *buf = 138543362;
                v116 = v82;
                _os_log_impl(&dword_19BF1F000, v81, OS_LOG_TYPE_DEFAULT, "[sync.resource] setting properties via direct access to the original file: %{public}@", buf, 0xCu);
              }

              WeakRetained = objc_loadWeakRetained(&self->_delegate);
              v77 = [WeakRetained metadataForResourceGenerator:self fromFileURL:obj];
              v80 = 0;
            }

            else
            {
              v72 = PLSyndicationGetLog();
              v73 = obj;
              if (os_log_type_enabled(v72, OS_LOG_TYPE_DEFAULT))
              {
                v74 = [v102 uuid];
                *buf = 138543362;
                v116 = v74;
                _os_log_impl(&dword_19BF1F000, v72, OS_LOG_TYPE_DEFAULT, "[sync.resource] setting properties via blastdoor metadata: %{public}@", buf, 0xCu);
              }

              v75 = objc_alloc(MEMORY[0x1E69C0718]);
              v76 = [v18 objectForKeyedSubscript:*MEMORY[0x1E69AE8E0]];
              v77 = [v75 initWithSyndicationProperties:v76];

              v78 = objc_alloc(MEMORY[0x1E69C0718]);
              WeakRetained = [v18 objectForKeyedSubscript:*MEMORY[0x1E69AE8E8]];
              v80 = [v78 initWithSyndicationProperties:WeakRetained];
            }

            [v102 setSyndicationAttributesFromMainFileURL:v73 metadata:v77];
            if (((v34 | v31) & 1) == 0)
            {
              v83 = PLSyndicationGetLog();
              if (os_log_type_enabled(v83, OS_LOG_TYPE_DEFAULT))
              {
                v84 = [v102 uuid];
                *buf = 138543362;
                v116 = v84;
                _os_log_impl(&dword_19BF1F000, v83, OS_LOG_TYPE_DEFAULT, "[sync.resource] setting live photo properties for asset: %{public}@", buf, 0xCu);
              }

              [v102 setSyndicationLivePhotoAttributesFromMainFileURL:v73 mainFileMetadata:v77 videoComplementFileURL:v103 videoComplementMetadata:v80];
            }

            [v77 exifPixelSize];
            [v99 setUnorientedWidth:v85];
            [v77 exifPixelSize];
            [v99 setUnorientedHeight:v86];
            [v99 setDataLength:{objc_msgSend(v77, "fileSize")}];
            v87 = PLSyndicationGetLog();
            if (os_log_type_enabled(v87, OS_LOG_TYPE_DEFAULT))
            {
              v88 = [v99 unorientedWidth];
              v89 = [v99 unorientedHeight];
              v90 = [v99 orientation];
              v91 = [v99 dataLength];
              *buf = 134349824;
              v116 = v88;
              v117 = 2050;
              v118 = v89;
              v119 = 2050;
              v120 = v90;
              v73 = obj;
              v121 = 2050;
              v122 = v91;
              _os_log_impl(&dword_19BF1F000, v87, OS_LOG_TYPE_DEFAULT, "[sync.resource] setting original resource dimensions (%{public}lu, %{public}lu), orientation: %{public}lu, filesize: %{public}lu", buf, 0x2Au);
            }

            v35 = v102;
            [v102 generateAndUpdateThumbnailsWithPreviewImage:0 thumbnailImage:0 fromImageSource:0 imageData:0 forceSRGBConversion:0];

            v92 = 1;
            goto LABEL_22;
          }

          [v33 setSyndicationLocalAvailabilityWithAvailable:0];
          v67 = PLSyndicationGetLog();
          if (os_log_type_enabled(v67, OS_LOG_TYPE_ERROR))
          {
            v68 = [v24 uuid];
            *buf = 138543362;
            v116 = v68;
            v69 = "[sync.resource] nonfatal error missing video complement file url for live photo asset: %{public}@";
            goto LABEL_62;
          }
        }

        else
        {
          v67 = PLSyndicationGetLog();
          if (os_log_type_enabled(v67, OS_LOG_TYPE_ERROR))
          {
            v68 = [v24 uuid];
            *buf = 138543362;
            v116 = v68;
            v69 = "[sync.resource] nonfatal error missing video complement resource for asset: %{public}@";
LABEL_62:
            _os_log_impl(&dword_19BF1F000, v67, OS_LOG_TYPE_ERROR, v69, buf, 0xCu);
          }
        }

        v103 = 0;
        v34 = 1;
        goto LABEL_64;
      }

      [v30 setSyndicationLocalAvailabilityWithAvailable:0];
      v62 = MEMORY[0x1E696AEC0];
      v63 = [v24 uuid];
      v64 = [v62 stringWithFormat:@"missing original file url for asset: %@", v63];
      v21 = PLErrorCreate();

      v65 = PLSyndicationGetLog();
      if (os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
      {
        v66 = [v24 uuid];
        *buf = 138543362;
        v116 = v66;
        _os_log_impl(&dword_19BF1F000, v65, OS_LOG_TYPE_ERROR, "[sync.resource] missing original file url for asset: %{public}@", buf, 0xCu);
      }
    }

    else
    {
      v57 = MEMORY[0x1E696AEC0];
      v58 = [v24 uuid];
      v59 = [v57 stringWithFormat:@"missing original resource for asset: %@", v58];
      v21 = PLErrorCreate();

      v60 = PLSyndicationGetLog();
      if (os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
      {
        v61 = [v24 uuid];
        *buf = 138543362;
        v116 = v61;
        _os_log_impl(&dword_19BF1F000, v60, OS_LOG_TYPE_ERROR, "[sync.resource] missing original resource for asset: %{public}@", buf, 0xCu);
      }

      v99 = 0;
    }

    v35 = v24;
    goto LABEL_21;
  }

  v25 = [MEMORY[0x1E696AEC0] stringWithFormat:@"did not find existing asset with object ID: %@", v20];
  v26 = PLErrorCreate();
LABEL_11:

  v21 = v26;
LABEL_20:
  v35 = v24;
  v99 = [v24 syndicationOriginalResource];
LABEL_21:
  v100 = v21;
  [v35 isPhotoIris];
  v92 = 0;
LABEL_22:
  v111 = 0u;
  v112 = 0u;
  v109 = 0u;
  v110 = 0u;
  obja = v17;
  v36 = [obja countByEnumeratingWithState:&v109 objects:v114 count:16];
  if (!v36)
  {
    goto LABEL_44;
  }

  v37 = v36;
  v38 = *v110;
  do
  {
    for (i = 0; i != v37; ++i)
    {
      if (*v110 != v38)
      {
        objc_enumerationMutation(obja);
      }

      v40 = *(*(&v109 + 1) + 8 * i);
      v108[0] = MEMORY[0x1E69E9820];
      v108[1] = 3221225472;
      v108[2] = __184__PLSyndicationSanitizedResourceGenerator__handleGenerateCompletionWithGenerateError_storedRecipes_sourceMetadata_targetRecipe_assetObjectID_managedObjectContext_timeZoneLookup_error___block_invoke;
      v108[3] = &unk_1E7577AB0;
      v108[4] = v40;
      v41 = [v35 firstPersistedResourceMatching:v108];
      v42 = v41;
      if (!v41)
      {
        v45 = PLSyndicationGetLog();
        if (!os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_42;
        }

        v49 = [v35 uuid];
        *buf = 138543618;
        v116 = v40;
        v117 = 2114;
        v118 = v49;
        v50 = v45;
        v51 = "[sync.resource] generated and stored recipe %{public}@ for asset %{public}@, but no stored resource found";
LABEL_37:
        _os_log_impl(&dword_19BF1F000, v50, OS_LOG_TYPE_ERROR, v51, buf, 0x16u);

        goto LABEL_42;
      }

      v43 = [v41 fileURL];

      v44 = PLSyndicationGetLog();
      v45 = v44;
      if (!v43)
      {
        if (!os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_42;
        }

        v49 = [v35 uuid];
        *buf = 138543618;
        v116 = v40;
        v117 = 2114;
        v118 = v49;
        v50 = v45;
        v51 = "[sync.resource] generated and stored recipe %{public}@ for asset %{public}@, but resource missing file url";
        goto LABEL_37;
      }

      if (os_log_type_enabled(v44, OS_LOG_TYPE_DEBUG))
      {
        v46 = [v35 uuid];
        *buf = 138543618;
        v116 = v40;
        v117 = 2114;
        v118 = v46;
        _os_log_impl(&dword_19BF1F000, v45, OS_LOG_TYPE_DEBUG, "[sync.resource] reading inode for generated derivative resource with recipe: %{public}@ for asset %{public}@", buf, 0x16u);
      }

      v45 = [v42 fileURL];
      v106 = 0;
      v107 = 0;
      v47 = [PLCacheDeleteSupport readInodeAtURL:v45 outInode:&v107 error:&v106];
      v48 = v106;
      if (v47)
      {
        [v42 setFileID:v107];
      }

      else
      {
        v52 = PLSyndicationGetLog();
        if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
        {
          v53 = [MEMORY[0x1E69BF220] descriptionWithFileURL:v45];
          *buf = 138412546;
          v116 = v53;
          v117 = 2112;
          v118 = v48;
          _os_log_impl(&dword_19BF1F000, v52, OS_LOG_TYPE_ERROR, "[resource] failed to read inode at url: %@ non-fatal error: %@", buf, 0x16u);
        }
      }

      v35 = v102;
LABEL_42:
    }

    v37 = [obja countByEnumeratingWithState:&v109 objects:v114 count:16];
  }

  while (v37);
LABEL_44:

  if (a10)
  {
    v54 = v100;
    *a10 = v100;
  }

  return v92;
}

- (PLSyndicationSanitizedResourceGenerator)initWithDelegate:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    [v9 handleFailureInMethod:a2 object:self file:@"PLSyndicationSanitizedResourceGenerator.m" lineNumber:39 description:{@"Invalid parameter not satisfying: %@", @"delegate"}];
  }

  v10.receiver = self;
  v10.super_class = PLSyndicationSanitizedResourceGenerator;
  v6 = [(PLSyndicationSanitizedResourceGenerator *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeWeak(&v6->_delegate, v5);
  }

  return v7;
}

@end