@interface PLCloudStreamShareJob
+ (id)cloudStreamShareJobToPublishMediaFromSources:(id)a3 toCollectionShareScopeIdentifier:(id)a4 withCommentText:(id)a5 clientBundleIdentifier:(id)a6 unitTestingMode:(BOOL)a7;
+ (void)publishMediaFromSources:(id)a3 toNewSharedAlbumWithName:(id)a4 withCommentText:(id)a5 recipients:(id)a6;
+ (void)publishMediaFromSources:(id)a3 toSharedAlbum:(id)a4 withCommentText:(id)a5 completionHandler:(id)a6;
- (id)description;
- (id)initFromXPCObject:(id)a3 libraryServicesManager:(id)a4;
- (void)addInfosForRecipients:(id)a3;
- (void)encodeToXPCObject:(id)a3;
- (void)executeDaemonOperation;
- (void)runDaemonSide;
@end

@implementation PLCloudStreamShareJob

- (void)executeDaemonOperation
{
  v45[0] = 0;
  v45[1] = v45;
  v45[2] = 0x3032000000;
  v45[3] = __Block_byref_object_copy__67484;
  v45[4] = __Block_byref_object_dispose__67485;
  v46 = 0;
  v43[0] = 0;
  v43[1] = v43;
  v43[2] = 0x3032000000;
  v43[3] = __Block_byref_object_copy__67484;
  v43[4] = __Block_byref_object_dispose__67485;
  v44 = 0;
  v3 = objc_opt_new();
  v41[0] = 0;
  v41[1] = v41;
  v41[2] = 0x3032000000;
  v41[3] = __Block_byref_object_copy__67484;
  v41[4] = __Block_byref_object_dispose__67485;
  v42 = 0;
  v39[0] = 0;
  v39[1] = v39;
  v39[2] = 0x2020000000;
  v40 = 0;
  v4 = [MEMORY[0x1E69BF320] UUIDString];
  v5 = [MEMORY[0x1E695DF00] date];
  v6 = [(PLCloudSharingJob *)self transientPhotoLibrary];
  v7 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __47__PLCloudStreamShareJob_executeDaemonOperation__block_invoke;
  aBlock[3] = &unk_1E75700A0;
  aBlock[4] = self;
  v35 = v39;
  v36 = v45;
  v8 = v6;
  v30 = v8;
  v9 = v7;
  v31 = v9;
  v37 = v43;
  v10 = v4;
  v32 = v10;
  v11 = v5;
  v33 = v11;
  v12 = v3;
  v34 = v12;
  v38 = v41;
  v13 = _Block_copy(aBlock);
  v18 = MEMORY[0x1E69E9820];
  v19 = 3221225472;
  v20 = __47__PLCloudStreamShareJob_executeDaemonOperation__block_invoke_103;
  v21 = &unk_1E7572760;
  v22 = self;
  v26 = v39;
  v27 = v45;
  v14 = v8;
  v23 = v14;
  v15 = v12;
  v24 = v15;
  v28 = v41;
  v16 = v9;
  v25 = v16;
  v17 = _Block_copy(&v18);
  if (self->_executeSynchronously)
  {
    [v14 performTransactionAndWait:v13 completionHandler:{v17, v18, v19, v20, v21, v22, v23, v24}];
  }

  else
  {
    [v14 performTransaction:v13 completionHandler:v17 withPriority:{1, v18, v19, v20, v21, v22, v23, v24}];
  }

  _Block_object_dispose(v39, 8);
  _Block_object_dispose(v41, 8);

  _Block_object_dispose(v43, 8);
  _Block_object_dispose(v45, 8);
}

void __47__PLCloudStreamShareJob_executeDaemonOperation__block_invoke(uint64_t a1)
{
  v170 = *MEMORY[0x1E69E9840];
  v130 = +[PLPhotoSharingHelper sharingPersonID];
  if (v130)
  {
    v1 = [*(a1 + 32) albumCloudGUID];
    *(*(*(a1 + 80) + 8) + 24) = v1 == 0;

    if (*(*(*(a1 + 80) + 8) + 24) == 1)
    {
      v2 = [MEMORY[0x1E696AFB0] UUID];
      v3 = [v2 UUIDString];
      v4 = [MEMORY[0x1E695DF00] now];
      v5 = [*(a1 + 32) albumName];
      v6 = [*(a1 + 32) clientBundleIdentifier];
      v7 = [PLCollectionShare createOwnedShareWithUUID:v3 creationDate:v4 title:v5 kind:2 clientBundleIdentifier:v6 unitTestMode:0 inPhotoLibrary:*(a1 + 40)];
      v8 = *(*(a1 + 88) + 8);
      v9 = *(v8 + 40);
      *(v8 + 40) = v7;

      v165 = 0u;
      v166 = 0u;
      v163 = 0u;
      v164 = 0u;
      obj = *(*(a1 + 32) + 120);
      v10 = [obj countByEnumeratingWithState:&v163 objects:v169 count:16];
      if (v10)
      {
        v11 = *v164;
        do
        {
          for (i = 0; i != v10; ++i)
          {
            if (*v164 != v11)
            {
              objc_enumerationMutation(obj);
            }

            v13 = *(*(&v163 + 1) + 8 * i);
            v14 = [*(a1 + 40) managedObjectContext];
            v15 = [PLShareParticipant insertInManagedObjectContext:v14];

            [v15 setParticipantKind:1];
            v16 = objc_alloc_init(MEMORY[0x1E696ADF0]);
            v17 = [v13 objectForKeyedSubscript:@"kRecipientFirstNameKey"];
            if (v17)
            {
              [v16 setGivenName:v17];
            }

            v18 = [v13 objectForKeyedSubscript:@"kRecipientLastNameKey"];
            if (v18)
            {
              [v16 setFamilyName:v18];
            }

            [v15 setNameComponents:v16];
            v19 = [v13 objectForKeyedSubscript:@"kRecipientEmailsNameKey"];
            v20 = [v19 firstObject];
            [v15 setEmailAddress:v20];

            v21 = [v13 objectForKeyedSubscript:@"kRecipientPhonesNameKey"];
            v22 = [v21 firstObject];
            [v15 setPhoneNumber:v22];

            [v15 setIsCurrentUser:0];
            [v15 setRole:2];
            [v15 setAcceptanceStatus:1];
            v23 = [MEMORY[0x1E69BF320] UUIDString];
            [v15 setParticipantID:v23];

            [v15 setShare:*(*(*(a1 + 88) + 8) + 40)];
          }

          v10 = [obj countByEnumeratingWithState:&v163 objects:v169 count:16];
        }

        while (v10);
      }

      v24 = a1;
    }

    else
    {
      v26 = [*(a1 + 32) albumCloudGUID];
      v27 = [*(a1 + 40) managedObjectContext];
      v28 = [(PLShare *)PLCollectionShare shareWithScopeIdentifier:v26 includeTrashed:0 inManagedObjectContext:v27];
      v24 = a1;
      v29 = *(*(a1 + 88) + 8);
      v30 = *(v29 + 40);
      *(v29 + 40) = v28;
    }

    v31 = [*(v24 + 40) pathManager];
    v129 = [v31 temporaryDragAndDropDirectoryCreateIfNeeded:0 error:0];

    v161 = 0u;
    v162 = 0u;
    v159 = 0u;
    v160 = 0u;
    v128 = [*(a1 + 32) mediaSources];
    v132 = [v128 countByEnumeratingWithState:&v159 objects:v168 count:16];
    if (v132)
    {
      v131 = *v160;
      v127 = *MEMORY[0x1E69C09D0];
      do
      {
        v32 = 0;
        do
        {
          if (*v160 != v131)
          {
            objc_enumerationMutation(v128);
          }

          v33 = *(*(&v159 + 1) + 8 * v32);
          *buf = 0;
          v154 = buf;
          v155 = 0x3032000000;
          v156 = __Block_byref_object_copy__67484;
          v157 = __Block_byref_object_dispose__67485;
          v158 = 0;
          v147 = 0;
          v148 = &v147;
          v149 = 0x3032000000;
          v150 = __Block_byref_object_copy__67484;
          v151 = __Block_byref_object_dispose__67485;
          v152 = 0;
          if ([v33 mediaType] == 3)
          {
            v34 = [v33 mediaURL];
            v35 = [v34 path];
            v36 = [v35 hasPrefix:v129];

            if (v36)
            {
              v37 = [v33 mediaURL];
              v38 = [v37 pathExtension];

              v39 = *(a1 + 48);
              v146[0] = MEMORY[0x1E69E9820];
              v146[1] = 3221225472;
              v146[2] = __47__PLCloudStreamShareJob_executeDaemonOperation__block_invoke_76;
              v146[3] = &unk_1E7570050;
              v146[4] = v33;
              v146[5] = &v147;
              v146[6] = buf;
              writeToTemporaryMediaFileWithExtension(v38, v39, v146);
            }

            else
            {
              v48 = [v33 videoComplement];
              v49 = v148[5];
              v148[5] = v48;

              v50 = [v148[5] imagePath];
              v51 = *(v154 + 5);
              *(v154 + 5) = v50;
            }
          }

          else
          {
            v40 = [v33 mediaData];

            if (v40)
            {
              v41 = [v33 mediaType];
              v42 = @"mp4";
              if (v41 != 1)
              {
                v43 = [v33 mediaType];
                v42 = &stru_1F0F06D80;
                if (v43 == 2)
                {
                  v44 = [v33 mediaData];
                  v45 = DCIM_newPLImageWithData();

                  v46 = DCIM_newJPEGRepresentationWithPLImage();
                  [v33 setMediaData:v46];

                  v42 = @"jpg";
                }
              }

              v47 = *(a1 + 48);
              v145[0] = MEMORY[0x1E69E9820];
              v145[1] = 3221225472;
              v145[2] = __47__PLCloudStreamShareJob_executeDaemonOperation__block_invoke_90;
              v145[3] = &unk_1E7570078;
              v145[4] = v33;
              v145[5] = buf;
              writeToTemporaryMediaFileWithExtension(v42, v47, v145);
            }

            else
            {
              v52 = [v33 mediaURL];

              if (v52)
              {
                v53 = [v33 mediaURL];
                v54 = [v53 isFileURL];

                if (v54)
                {
                  v55 = [v33 mediaURL];
                  v56 = [v55 path];
                  v57 = [v56 hasPrefix:v129];

                  if (v57)
                  {
                    v58 = [v33 mediaURL];
                    v59 = [v58 pathExtension];

                    v60 = *(a1 + 48);
                    v144[0] = MEMORY[0x1E69E9820];
                    v144[1] = 3221225472;
                    v144[2] = __47__PLCloudStreamShareJob_executeDaemonOperation__block_invoke_2;
                    v144[3] = &unk_1E7570078;
                    v144[4] = v33;
                    v144[5] = buf;
                    writeToTemporaryMediaFileWithExtension(v59, v60, v144);
                  }

                  else
                  {
                    v70 = [v33 mediaURL];
                    v71 = [v70 pathExtension];
                    v72 = [v71 isEqualToString:v127];

                    if (v72)
                    {
                      v73 = objc_alloc(MEMORY[0x1E69C0918]);
                      v74 = [v33 mediaURL];
                      v75 = [v73 initWithBundleAtURL:v74];

                      v76 = [v75 imagePath];
                      v77 = [v75 videoPath];
                      v78 = v77;
                      if (v76 && v77)
                      {
                        objc_storeStrong(v148 + 5, v75);
                        objc_storeStrong(v154 + 5, v76);
                      }
                    }

                    else
                    {
                      v85 = [v33 mediaURL];
                      v86 = [v85 path];
                      v87 = *(v154 + 5);
                      *(v154 + 5) = v86;
                    }
                  }
                }

                else
                {
                  v61 = [v33 mediaURL];
                  v62 = [v61 scheme];
                  v63 = [v62 isEqualToString:@"assets-library"];

                  if (v63)
                  {
                    v64 = *(a1 + 40);
                    v65 = [v33 mediaURL];
                    v66 = [v64 photoFromAssetURL:v65];

                    if (!v66)
                    {
                      v92 = PLPhotoSharingGetLog();
                      if (os_log_type_enabled(v92, OS_LOG_TYPE_ERROR))
                      {
                        v124 = *(a1 + 32);
                        v125 = [v33 mediaURL];
                        *v167 = 138412546;
                        *&v167[4] = v124;
                        *&v167[12] = 2112;
                        *&v167[14] = v125;
                        _os_log_impl(&dword_19BF1F000, v92, OS_LOG_TYPE_ERROR, "%@ couldn't load asset from asset url: %@", v167, 0x16u);
                      }

                      goto LABEL_53;
                    }

                    v67 = [v66 mainFileURL];
                    v68 = [v67 path];
                    v69 = *(v154 + 5);
                    *(v154 + 5) = v68;
                  }

                  else
                  {
                    v79 = MEMORY[0x1E695DEF0];
                    v80 = [v33 mediaURL];
                    v81 = [v79 dataWithContentsOfURL:v80];

                    if (v81)
                    {
                      v82 = [v33 mediaURL];
                      v83 = [v82 pathExtension];

                      v84 = *(a1 + 48);
                      v141[0] = MEMORY[0x1E69E9820];
                      v141[1] = 3221225472;
                      v141[2] = __47__PLCloudStreamShareJob_executeDaemonOperation__block_invoke_95;
                      v141[3] = &unk_1E7570078;
                      v143 = buf;
                      v142 = v81;
                      writeToTemporaryMediaFileWithExtension(v83, v84, v141);
                    }
                  }
                }
              }
            }
          }

          if (!*(v154 + 5))
          {
            v92 = PLPhotoSharingGetLog();
            if (os_log_type_enabled(v92, OS_LOG_TYPE_ERROR))
            {
              v93 = *(a1 + 32);
              *v167 = 138412546;
              *&v167[4] = v93;
              *&v167[12] = 2112;
              *&v167[14] = v33;
              _os_log_impl(&dword_19BF1F000, v92, OS_LOG_TYPE_ERROR, "%@ unable to find media file path for source: %@", v167, 0x16u);
            }

LABEL_53:

            goto LABEL_76;
          }

          v140 = 0;
          v88 = [MEMORY[0x1E696AFB0] UUID];
          v89 = [v88 UUIDString];

          v90 = [*(*(*(a1 + 88) + 8) + 40) scopeIdentifier];
          v91 = v90;
          if (v90)
          {
            obja = v90;
          }

          else
          {
            obja = [*(*(*(a1 + 96) + 8) + 40) cloudGUID];
          }

          v94 = [*(a1 + 40) pathManager];
          v95 = [*(v154 + 5) pathExtension];
          v96 = [PLCloudSharedAssetSaveJob nextDCIMSaveFileURLForCloudPersonID:v130 cloudAlbumGUID:obja pathManager:v94 fileExtension:v95 assetUUID:v89];

          v97 = MEMORY[0x1E69BF238];
          v98 = [MEMORY[0x1E695DFF8] fileURLWithPath:*(v154 + 5) isDirectory:0];
          v139 = 0;
          LOBYTE(v97) = [v97 copyItemAtURL:v98 toURL:v96 error:&v139];
          v99 = v139;

          if ((v97 & 1) == 0)
          {
            v104 = PLPhotoSharingGetLog();
            if (os_log_type_enabled(v104, OS_LOG_TYPE_ERROR))
            {
              v112 = *(a1 + 32);
              *v167 = 138412546;
              *&v167[4] = v112;
              *&v167[12] = 2112;
              *&v167[14] = v99;
              _os_log_impl(&dword_19BF1F000, v104, OS_LOG_TYPE_ERROR, "%@ Failed to copy media for asset %@", v167, 0x16u);
            }

            v102 = 0;
            v103 = 0;
            goto LABEL_75;
          }

          v100 = *(a1 + 40);
          v101 = [MEMORY[0x1E69BF328] savedAssetTypeForCloudSharedAsset];
          v138 = 0;
          v102 = [PLManagedAsset insertAssetIntoPhotoLibrary:v100 mainFileURL:v96 savedAssetType:v101 bundleScope:2 uuid:v89 replacementUUID:0 imageSource:&v140 imageData:&v138];
          v103 = v138;
          [v102 generateAndUpdateThumbnailsWithPreviewImage:0 thumbnailImage:0 fromImageSource:v140 imageData:v103 forceSRGBConversion:0];
          v104 = [MEMORY[0x1E69BF320] UUIDString];
          [v102 setCloudAssetGUID:v104];
          [v102 setCloudBatchID:*(a1 + 56)];
          [v102 setCloudBatchPublishDate:*(a1 + 64)];
          [v102 setCloudIsMyAsset:1];
          [v102 setCloudIsDeletable:1];
          v105 = v148[5];
          if (v105)
          {
            v106 = [v105 pairingIdentifier];
            v107 = MEMORY[0x1E695DFF8];
            v108 = [v148[5] videoPath];
            v109 = [v107 fileURLWithPath:v108 isDirectory:0];
            v110 = v148[5];
            if (v110)
            {
              [v110 originalVideoDuration];
              v111 = v148[5];
              if (v111)
              {
                [v111 imageDisplayTime];
LABEL_65:
                [v102 becomePhotoIrisWithMediaGroupUUID:v106 mainFileMetadata:0 videoURL:v109 videoDuration:v167 stillDisplayTime:v137 options:0];

                goto LABEL_66;
              }
            }

            else
            {
              memset(v167, 0, sizeof(v167));
            }

            memset(v137, 0, sizeof(v137));
            goto LABEL_65;
          }

LABEL_66:
          [v102 setCollectionShareWithCurrentUserAsContributor:*(*(*(a1 + 88) + 8) + 40)];
          [*(a1 + 72) addObject:v102];
          v113 = [*(a1 + 32) commentText];
          if (![v113 length])
          {
            goto LABEL_69;
          }

          v114 = *(*(*(a1 + 104) + 8) + 40) == 0;

          if (v114)
          {
            v115 = [*(a1 + 32) commentText];
            v116 = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
            v113 = [v115 stringByTrimmingCharactersInSet:v116];

            v117 = [PLCloudSharedComment insertNewCommentIntoAsset:v102 commentDate:0 withText:v113 isLike:0 isMyComment:1 inLibrary:*(a1 + 40)];
            [v117 setIsBatchComment:MEMORY[0x1E695E118]];
            [v117 setIsCaption:MEMORY[0x1E695E118]];
            v118 = *(*(a1 + 104) + 8);
            v119 = *(v118 + 40);
            *(v118 + 40) = v117;

LABEL_69:
          }

          v136 = 0;
          v120 = [PLResourceInstaller installInternalResourcesForExistingAsset:v102 assumeNoExistingResources:1 referencedResourceURLs:0 error:&v136];
          v121 = v136;
          if (!v120)
          {
            v122 = PLPhotoSharingGetLog();
            if (os_log_type_enabled(v122, OS_LOG_TYPE_ERROR))
            {
              v123 = *(a1 + 32);
              *v167 = 138412546;
              *&v167[4] = v123;
              *&v167[12] = 2112;
              *&v167[14] = v121;
              _os_log_impl(&dword_19BF1F000, v122, OS_LOG_TYPE_ERROR, "%@ Failed to install resources for asset %@", v167, 0x16u);
            }
          }

LABEL_75:
LABEL_76:
          _Block_object_dispose(&v147, 8);

          _Block_object_dispose(buf, 8);
          ++v32;
        }

        while (v132 != v32);
        v126 = [v128 countByEnumeratingWithState:&v159 objects:v168 count:16];
        v132 = v126;
      }

      while (v126);
    }

    [*(*(*(a1 + 88) + 8) + 40) setLastModifiedDate:*(a1 + 64)];
    [*(*(*(a1 + 88) + 8) + 40) recomputeCachedValues];
    v25 = v129;
  }

  else
  {
    v25 = PLPhotoSharingGetLog();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19BF1F000, v25, OS_LOG_TYPE_ERROR, "ERROR: sharingPersonID is nil, ending job", buf, 2u);
    }
  }
}

void __47__PLCloudStreamShareJob_executeDaemonOperation__block_invoke_103(uint64_t a1)
{
  if ((*(*(a1 + 32) + 80) & 1) == 0)
  {
    if (*(*(*(a1 + 64) + 8) + 24) == 1)
    {
      v2 = *(a1 + 72);
      v3 = *(*(v2 + 8) + 40);
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __47__PLCloudStreamShareJob_executeDaemonOperation__block_invoke_2_104;
      v13[3] = &unk_1E75700C8;
      v13[4] = v2;
      [v3 publishWithCompletionHandler:v13];
    }

    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __47__PLCloudStreamShareJob_executeDaemonOperation__block_invoke_106;
    v9[3] = &unk_1E7578870;
    v11 = *(a1 + 72);
    v4 = *(a1 + 40);
    v5 = *(a1 + 48);
    v6 = *(a1 + 80);
    v10 = v5;
    v12 = v6;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __47__PLCloudStreamShareJob_executeDaemonOperation__block_invoke_2_107;
    v7[3] = &unk_1E75781E8;
    v8 = *(a1 + 56);
    [v4 performTransaction:v9 completionHandler:v7 withPriority:1];
  }
}

void __47__PLCloudStreamShareJob_executeDaemonOperation__block_invoke_2_104(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = PLBackendGetLog();
  v7 = v6;
  if (v5)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v8 = [*(*(*(a1 + 32) + 8) + 40) uuid];
      v13 = 138543618;
      v14 = v8;
      v15 = 2114;
      v16 = v5;
      v9 = "Failed to publish collection share uuid: %{public}@ (%{public}@)";
      v10 = v7;
      v11 = OS_LOG_TYPE_ERROR;
      v12 = 22;
LABEL_6:
      _os_log_impl(&dword_19BF1F000, v10, v11, v9, &v13, v12);
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v8 = [*(*(*(a1 + 32) + 8) + 40) uuid];
    v13 = 138543362;
    v14 = v8;
    v9 = "Published collection share with uuid: %{public}@";
    v10 = v7;
    v11 = OS_LOG_TYPE_INFO;
    v12 = 12;
    goto LABEL_6;
  }
}

void __47__PLCloudStreamShareJob_executeDaemonOperation__block_invoke_2_107(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v1 = *(a1 + 32);
  v2 = [v1 countByEnumeratingWithState:&v9 objects:v15 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v10;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v10 != v4)
        {
          objc_enumerationMutation(v1);
        }

        v6 = *(*(&v9 + 1) + 8 * i);
        v7 = PLPhotoSharingGetLog();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v14 = v6;
          _os_log_impl(&dword_19BF1F000, v7, OS_LOG_TYPE_DEFAULT, "PLCloudShareStreamJob removing temporary media file at path %@", buf, 0xCu);
        }

        v8 = [MEMORY[0x1E696AC08] defaultManager];
        [v8 removeItemAtPath:v6 error:0];
      }

      v3 = [v1 countByEnumeratingWithState:&v9 objects:v15 count:16];
    }

    while (v3);
  }
}

uint64_t __47__PLCloudStreamShareJob_executeDaemonOperation__block_invoke_76(uint64_t a1, uint64_t a2)
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DFF8] fileURLWithPath:a2];
  v4 = [MEMORY[0x1E696AC08] defaultManager];
  v5 = [*(a1 + 32) mediaURL];
  v16 = 0;
  v6 = [v4 moveItemAtURL:v5 toURL:v3 error:&v16];
  v7 = v16;

  if (v6)
  {
    v8 = [objc_alloc(MEMORY[0x1E69C0918]) initWithBundleAtURL:v3];
    v9 = *(*(a1 + 40) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;

    v11 = [*(*(*(a1 + 40) + 8) + 40) imagePath];
    v12 = *(*(a1 + 48) + 8);
    v13 = *(v12 + 40);
    *(v12 + 40) = v11;
  }

  else
  {
    v13 = PLPhotoSharingGetLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = [*(a1 + 32) mediaURL];
      *buf = 138412802;
      v18 = v14;
      v19 = 2112;
      v20 = v3;
      v21 = 2112;
      v22 = v7;
      _os_log_impl(&dword_19BF1F000, v13, OS_LOG_TYPE_ERROR, "Couldn't move asset from url: %@ to url: %@ with error %@.", buf, 0x20u);
    }
  }

  return v6;
}

uint64_t __47__PLCloudStreamShareJob_executeDaemonOperation__block_invoke_90(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  v5 = [*(a1 + 32) mediaData];
  v6 = [v5 writeToFile:*(*(*(a1 + 40) + 8) + 40) options:1073741825 error:0];

  return v6;
}

uint64_t __47__PLCloudStreamShareJob_executeDaemonOperation__block_invoke_2(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a2;
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v5 = [MEMORY[0x1E695DFF8] fileURLWithPath:*(*(*(a1 + 40) + 8) + 40)];
  v6 = [MEMORY[0x1E696AC08] defaultManager];
  v7 = [*(a1 + 32) mediaURL];
  v13 = 0;
  v8 = [v6 moveItemAtURL:v7 toURL:v5 error:&v13];
  v9 = v13;

  if ((v8 & 1) == 0)
  {
    v10 = PLPhotoSharingGetLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = [*(a1 + 32) mediaURL];
      *buf = 138412802;
      v15 = v11;
      v16 = 2112;
      v17 = v5;
      v18 = 2112;
      v19 = v9;
      _os_log_impl(&dword_19BF1F000, v10, OS_LOG_TYPE_ERROR, "Couldn't move asset from url: %@ to url: %@ with error %@.", buf, 0x20u);
    }
  }

  return v8;
}

uint64_t __47__PLCloudStreamShareJob_executeDaemonOperation__block_invoke_95(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  v5 = [*(a1 + 32) writeToFile:*(*(*(a1 + 40) + 8) + 40) options:1073741825 error:0];

  return v5;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v13.receiver = self;
  v13.super_class = PLCloudStreamShareJob;
  v4 = [(PLDaemonJob *)&v13 description];
  v5 = [(PLCloudStreamShareJob *)self commentText];
  v6 = [(PLCloudStreamShareJob *)self mediaSources];
  v7 = [v6 count];
  v8 = [(PLCloudStreamShareJob *)self recipientsInfo];
  v9 = [(PLCloudStreamShareJob *)self albumCloudGUID];
  if (v9)
  {
    [(PLCloudStreamShareJob *)self albumCloudGUID];
  }

  else
  {
    [(PLCloudStreamShareJob *)self albumName];
  }
  v10 = ;
  v11 = [v3 stringWithFormat:@"%@ comment (%@), sources (%lu sources), recipients (%@), album (%@)", v4, v5, v7, v8, v10];

  return v11;
}

- (void)runDaemonSide
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = PLPhotoSharingGetLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v11 = objc_opt_class();
    v12 = 2112;
    v13 = self;
    v4 = v11;
    _os_log_impl(&dword_19BF1F000, v3, OS_LOG_TYPE_DEFAULT, "%@ : runDaemonSide %@", buf, 0x16u);
  }

  v5 = [MEMORY[0x1E69BF360] transaction:"-[PLCloudStreamShareJob runDaemonSide]"];
  v6 = [objc_opt_class() highPriorityOperationQueue];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __38__PLCloudStreamShareJob_runDaemonSide__block_invoke;
  v8[3] = &unk_1E7578848;
  v8[4] = self;
  v9 = v5;
  v7 = v5;
  [v6 addOperationWithBlock:v8];
}

void __38__PLCloudStreamShareJob_runDaemonSide__block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  [*(a1 + 32) executeDaemonOperation];
  v3 = *(a1 + 32);
  v4 = xpc_dictionary_create(0, 0, 0);
  [v3 setXpcReply:v4];

  v5.receiver = *(a1 + 32);
  v5.super_class = PLCloudStreamShareJob;
  objc_msgSendSuper2(&v5, sel_runDaemonSide);
  [*(a1 + 40) stillAlive];
  objc_autoreleasePoolPop(v2);
}

- (id)initFromXPCObject:(id)a3 libraryServicesManager:(id)a4
{
  v30 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v28.receiver = self;
  v28.super_class = PLCloudStreamShareJob;
  v7 = [(PLCloudSharingJob *)&v28 initFromXPCObject:v6 libraryServicesManager:a4];
  if (v7)
  {
    v8 = PLArrayFromXPCDictionary();
    v9 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v8, "count")}];
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v10 = v8;
    v11 = [v10 countByEnumeratingWithState:&v24 objects:v29 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v25;
      do
      {
        v14 = 0;
        do
        {
          if (*v25 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v24 + 1) + 8 * v14);
          v16 = [PLStreamShareSource alloc];
          v17 = [(PLStreamShareSource *)v16 initWithDictionary:v15, v24];
          if (v17)
          {
            [v9 addObject:v17];
          }

          ++v14;
        }

        while (v12 != v14);
        v12 = [v10 countByEnumeratingWithState:&v24 objects:v29 count:16];
      }

      while (v12);
    }

    [v7 setMediaSources:v9];
    v18 = PLArrayFromXPCDictionary();
    [v7 setRecipientsInfo:v18];

    v19 = PLStringFromXPCDictionary();
    [v7 setCommentText:v19];

    v20 = PLStringFromXPCDictionary();
    [v7 setAlbumCloudGUID:v20];

    v21 = PLStringFromXPCDictionary();
    [v7 setAlbumName:v21];

    v22 = PLStringFromXPCDictionary();
    [v7 setClientBundleIdentifier:v22];

    [v7 setUnitTestingMode:{xpc_dictionary_get_BOOL(v6, "kPropertyKeyUnitTestingMode")}];
    [v7 setExecuteSynchronously:{xpc_dictionary_get_BOOL(v6, "kPropertyKeyExecuteSynchronously")}];
  }

  return v7;
}

- (void)encodeToXPCObject:(id)a3
{
  v12.receiver = self;
  v12.super_class = PLCloudStreamShareJob;
  v4 = a3;
  [(PLDaemonJob *)&v12 encodeToXPCObject:v4];
  v5 = [(PLCloudStreamShareJob *)self mediaSources:v12.receiver];
  v6 = [v5 valueForKeyPath:@"serializedDictionary"];

  PLXPCDictionarySetArray();
  v7 = [(PLCloudStreamShareJob *)self recipientsInfo];
  PLXPCDictionarySetArray();

  v8 = [(PLCloudStreamShareJob *)self commentText];
  PLXPCDictionarySetString();

  v9 = [(PLCloudStreamShareJob *)self albumCloudGUID];
  PLXPCDictionarySetString();

  v10 = [(PLCloudStreamShareJob *)self albumName];
  PLXPCDictionarySetString();

  v11 = [(PLCloudStreamShareJob *)self clientBundleIdentifier];
  PLXPCDictionarySetString();

  xpc_dictionary_set_BOOL(v4, "kPropertyKeyUnitTestingMode", [(PLCloudStreamShareJob *)self unitTestingMode]);
  xpc_dictionary_set_BOOL(v4, "kPropertyKeyExecuteSynchronously", [(PLCloudStreamShareJob *)self executeSynchronously]);
}

- (void)addInfosForRecipients:(id)a3
{
  v19 = self;
  v26 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  obj = v3;
  v5 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v22;
    do
    {
      v8 = 0;
      do
      {
        if (*v22 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v21 + 1) + 8 * v8);
        v10 = [MEMORY[0x1E695DF90] dictionary];
        v11 = [v9 firstName];
        v12 = [v9 lastName];
        v13 = [v9 allEmailsArray];
        v14 = [v9 allPhonesArray];
        if (v11)
        {
          [v10 setObject:v11 forKeyedSubscript:@"kRecipientFirstNameKey"];
        }

        if (v12)
        {
          [v10 setObject:v12 forKeyedSubscript:@"kRecipientLastNameKey"];
        }

        if (v13)
        {
          v15 = [v13 copy];
          [v10 setObject:v15 forKeyedSubscript:@"kRecipientEmailsNameKey"];
        }

        if (v14)
        {
          v16 = [v14 copy];
          [v10 setObject:v16 forKeyedSubscript:@"kRecipientPhonesNameKey"];
        }

        [v4 addObject:v10];

        ++v8;
      }

      while (v6 != v8);
      v6 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v6);
  }

  v17 = [v4 copy];
  recipientsInfo = v19->_recipientsInfo;
  v19->_recipientsInfo = v17;
}

+ (void)publishMediaFromSources:(id)a3 toNewSharedAlbumWithName:(id)a4 withCommentText:(id)a5 recipients:(id)a6
{
  v9 = a6;
  v10 = a5;
  v11 = a4;
  v12 = a3;
  objc_opt_class();
  v13 = objc_opt_new();
  [v13 setMediaSources:v12];

  [v13 setAlbumName:v11];
  [v13 setCommentText:v10];

  [v13 addInfosForRecipients:v9];
  [v13 runWithCompletionHandler:0];
}

+ (void)publishMediaFromSources:(id)a3 toSharedAlbum:(id)a4 withCommentText:(id)a5 completionHandler:(id)a6
{
  v9 = a6;
  v10 = a5;
  v11 = a4;
  v12 = a3;
  objc_opt_class();
  v14 = objc_opt_new();
  [v14 setMediaSources:v12];

  v13 = [v11 cloudGUID];

  [v14 setAlbumCloudGUID:v13];
  [v14 setCommentText:v10];

  [v14 runWithCompletionHandler:v9];
}

+ (id)cloudStreamShareJobToPublishMediaFromSources:(id)a3 toCollectionShareScopeIdentifier:(id)a4 withCommentText:(id)a5 clientBundleIdentifier:(id)a6 unitTestingMode:(BOOL)a7
{
  v7 = a7;
  v11 = a6;
  v12 = a5;
  v13 = a4;
  v14 = a3;
  objc_opt_class();
  v15 = objc_opt_new();
  [v15 setMediaSources:v14];

  [v15 setAlbumCloudGUID:v13];
  [v15 setCommentText:v12];

  [v15 setClientBundleIdentifier:v11];
  [v15 setUnitTestingMode:v7];
  [v15 setExecuteSynchronously:1];

  return v15;
}

@end