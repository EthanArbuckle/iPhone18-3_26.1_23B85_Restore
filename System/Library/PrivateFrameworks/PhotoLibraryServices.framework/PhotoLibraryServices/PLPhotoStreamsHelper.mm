@interface PLPhotoStreamsHelper
+ (void)deletePhotoStreamAssetsWithLibraryServiceManager:(id)a3 withReason:(id)a4 completion:(id)a5;
@end

@implementation PLPhotoStreamsHelper

+ (void)deletePhotoStreamAssetsWithLibraryServiceManager:(id)a3 withReason:(id)a4 completion:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = MEMORY[0x1E696AC08];
  v10 = a3;
  v11 = [v9 defaultManager];
  v12 = [v10 pathManager];
  v13 = [v12 photoDirectoryWithType:15];

  v14 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v15 = [v10 databaseContext];

  v16 = [v15 newShortLivedLibraryWithName:"+[PLPhotoStreamsHelper deletePhotoStreamAssetsWithLibraryServiceManager:withReason:completion:]"];
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __95__PLPhotoStreamsHelper_deletePhotoStreamAssetsWithLibraryServiceManager_withReason_completion___block_invoke;
  v28[3] = &unk_1E7573A98;
  v34 = 1;
  v29 = v16;
  v30 = v14;
  v31 = v7;
  v32 = v11;
  v33 = v13;
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __95__PLPhotoStreamsHelper_deletePhotoStreamAssetsWithLibraryServiceManager_withReason_completion___block_invoke_37;
  v23[3] = &unk_1E75760C8;
  v27 = 1;
  v24 = v33;
  v25 = v32;
  v26 = v8;
  v17 = v8;
  v18 = v32;
  v19 = v33;
  v20 = v7;
  v21 = v14;
  v22 = v16;
  [v22 performTransaction:v28 completionHandler:v23];
}

void __95__PLPhotoStreamsHelper_deletePhotoStreamAssetsWithLibraryServiceManager_withReason_completion___block_invoke(uint64_t a1)
{
  v105 = *MEMORY[0x1E69E9840];
  v63 = [MEMORY[0x1E695DF70] array];
  if (*(a1 + 72) == 1)
  {
    v2 = [*(a1 + 32) photoStreamAlbums];
    v91 = 0u;
    v92 = 0u;
    v93 = 0u;
    v94 = 0u;
    v3 = [v2 countByEnumeratingWithState:&v91 objects:v104 count:16];
    if (v3)
    {
      v4 = v3;
      v5 = *v92;
      v59 = *v92;
      obj = v2;
      do
      {
        v6 = 0;
        v62 = v4;
        do
        {
          if (*v92 != v5)
          {
            objc_enumerationMutation(v2);
          }

          v7 = *(*(&v91 + 1) + 8 * v6);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v8 = [v7 personID];
            if (v8)
            {
              [*(a1 + 40) addObject:v8];
              [v63 addObject:v7];
            }

            else
            {
              v68 = v6;
              v9 = PLMyPhotoStreamGetLog();
              if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
              {
                v10 = [v7 uuid];
                *buf = 138412290;
                v100 = v10;
                _os_log_impl(&dword_19BF1F000, v9, OS_LOG_TYPE_DEBUG, "found Photo Stream album with no streamID, uuid=%@ . deleting it", buf, 0xCu);
              }

              v89 = 0u;
              v90 = 0u;
              v87 = 0u;
              v88 = 0u;
              v66 = v7;
              v11 = [v7 assets];
              v12 = [v11 countByEnumeratingWithState:&v87 objects:v103 count:16];
              if (v12)
              {
                v13 = v12;
                v14 = *v88;
                do
                {
                  for (i = 0; i != v13; ++i)
                  {
                    if (*v88 != v14)
                    {
                      objc_enumerationMutation(v11);
                    }

                    v16 = *(*(&v87 + 1) + 8 * i);
                    v17 = PLMyPhotoStreamGetLog();
                    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
                    {
                      v18 = [v16 uuid];
                      v19 = [v16 directory];
                      *buf = 138412546;
                      v100 = v18;
                      v101 = 2112;
                      v102 = v19;
                      _os_log_impl(&dword_19BF1F000, v17, OS_LOG_TYPE_DEBUG, "deleting photo %@:%@ in Photo Stream album with no stream ID", buf, 0x16u);
                    }

                    [v16 deleteWithReason:*(a1 + 48)];
                  }

                  v13 = [v11 countByEnumeratingWithState:&v87 objects:v103 count:16];
                }

                while (v13);
              }

              [v66 delete];
              v5 = v59;
              v2 = obj;
              v4 = v62;
              v6 = v68;
              v8 = 0;
            }
          }

          ++v6;
        }

        while (v6 != v4);
        v4 = [v2 countByEnumeratingWithState:&v91 objects:v104 count:16];
      }

      while (v4);
    }

    v20 = [MEMORY[0x1E696AE70] regularExpressionWithPattern:@"^[0-9]*$" options:0 error:0];
    v83 = 0u;
    v84 = 0u;
    v85 = 0u;
    v86 = 0u;
    v21 = [*(a1 + 56) contentsOfDirectoryAtPath:*(a1 + 64) error:0];
    v22 = [v21 countByEnumeratingWithState:&v83 objects:v98 count:16];
    if (v22)
    {
      v23 = v22;
      v24 = *v84;
      do
      {
        for (j = 0; j != v23; ++j)
        {
          if (*v84 != v24)
          {
            objc_enumerationMutation(v21);
          }

          v26 = *(*(&v83 + 1) + 8 * j);
          if ([v20 numberOfMatchesInString:v26 options:0 range:{0, objc_msgSend(v26, "length")}] == 1)
          {
            [*(a1 + 40) addObject:v26];
          }
        }

        v23 = [v21 countByEnumeratingWithState:&v83 objects:v98 count:16];
      }

      while (v23);
    }
  }

  v81 = 0u;
  v82 = 0u;
  v79 = 0u;
  v80 = 0u;
  obja = v63;
  v65 = [obja countByEnumeratingWithState:&v79 objects:v97 count:16];
  if (v65)
  {
    v64 = *v80;
    do
    {
      v27 = 0;
      do
      {
        if (*v80 != v64)
        {
          objc_enumerationMutation(obja);
        }

        v69 = v27;
        v28 = *(*(&v79 + 1) + 8 * v27);
        v29 = PLMyPhotoStreamGetLog();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
        {
          v30 = [v28 title];
          *buf = 138412290;
          v100 = v30;
          _os_log_impl(&dword_19BF1F000, v29, OS_LOG_TYPE_DEBUG, "albumToDelete %@", buf, 0xCu);
        }

        v31 = [v28 assets];
        v32 = *(a1 + 48);
        v33 = MEMORY[0x1E696AEC0];
        v34 = [v32 reason];
        v67 = v28;
        v35 = [v28 title];
        v36 = [v33 stringWithFormat:@"%@. Deleting all assets from PhotoStream album: %@.", v34, v35];
        [v32 setReason:v36];

        v77 = 0u;
        v78 = 0u;
        v75 = 0u;
        v76 = 0u;
        v37 = v31;
        v38 = [v37 countByEnumeratingWithState:&v75 objects:v96 count:16];
        if (v38)
        {
          v39 = v38;
          v40 = *v76;
          do
          {
            for (k = 0; k != v39; ++k)
            {
              if (*v76 != v40)
              {
                objc_enumerationMutation(v37);
              }

              v42 = *(*(&v75 + 1) + 8 * k);
              v43 = PLMyPhotoStreamGetLog();
              if (os_log_type_enabled(v43, OS_LOG_TYPE_DEBUG))
              {
                v44 = [v42 uuid];
                v45 = [v42 directory];
                *buf = 138412546;
                v100 = v44;
                v101 = 2112;
                v102 = v45;
                _os_log_impl(&dword_19BF1F000, v43, OS_LOG_TYPE_DEBUG, "deleting photo %@:%@", buf, 0x16u);
              }

              [v42 deleteWithReason:*(a1 + 48)];
            }

            v39 = [v37 countByEnumeratingWithState:&v75 objects:v96 count:16];
          }

          while (v39);
        }

        v46 = PLMyPhotoStreamGetLog();
        if (os_log_type_enabled(v46, OS_LOG_TYPE_DEBUG))
        {
          v47 = [v67 title];
          *buf = 138412290;
          v100 = v47;
          _os_log_impl(&dword_19BF1F000, v46, OS_LOG_TYPE_DEBUG, "deleting album %@", buf, 0xCu);
        }

        [v67 delete];
        v27 = v69 + 1;
      }

      while (v69 + 1 != v65);
      v65 = [obja countByEnumeratingWithState:&v79 objects:v97 count:16];
    }

    while (v65);
  }

  v73 = 0u;
  v74 = 0u;
  v71 = 0u;
  v72 = 0u;
  v48 = *(a1 + 40);
  v49 = [v48 countByEnumeratingWithState:&v71 objects:v95 count:16];
  if (v49)
  {
    v50 = v49;
    v51 = *v72;
    do
    {
      for (m = 0; m != v50; ++m)
      {
        if (*v72 != v51)
        {
          objc_enumerationMutation(v48);
        }

        v53 = [*(a1 + 64) stringByAppendingPathComponent:*(*(&v71 + 1) + 8 * m)];
        v54 = PLMyPhotoStreamGetLog();
        if (os_log_type_enabled(v54, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v100 = v53;
          _os_log_impl(&dword_19BF1F000, v54, OS_LOG_TYPE_DEBUG, "removing Photo Stream directory %@", buf, 0xCu);
        }

        v55 = *(a1 + 56);
        v70 = 0;
        v56 = [v55 removeItemAtPath:v53 error:&v70];
        v57 = v70;
        if ((v56 & 1) == 0 && [*(a1 + 56) fileExistsAtPath:v53])
        {
          v58 = PLMyPhotoStreamGetLog();
          if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412546;
            v100 = v53;
            v101 = 2112;
            v102 = v57;
            _os_log_impl(&dword_19BF1F000, v58, OS_LOG_TYPE_ERROR, "Failed to delete Photo Stream Data directory at path %@ : %@", buf, 0x16u);
          }
        }
      }

      v50 = [v48 countByEnumeratingWithState:&v71 objects:v95 count:16];
    }

    while (v50);
  }
}

uint64_t __95__PLPhotoStreamsHelper_deletePhotoStreamAssetsWithLibraryServiceManager_withReason_completion___block_invoke_37(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  if (*(a1 + 56) == 1)
  {
    v2 = PLMyPhotoStreamGetLog();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
    {
      v3 = *(a1 + 32);
      *buf = 138412290;
      v13 = v3;
      _os_log_impl(&dword_19BF1F000, v2, OS_LOG_TYPE_DEBUG, "removing Photo Stream data directory %@", buf, 0xCu);
    }

    v5 = *(a1 + 32);
    v4 = *(a1 + 40);
    v11 = 0;
    v6 = [v4 removeItemAtPath:v5 error:&v11];
    v7 = v11;
    if ((v6 & 1) == 0 && [*(a1 + 40) fileExistsAtPath:*(a1 + 32)])
    {
      v8 = PLMyPhotoStreamGetLog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v9 = *(a1 + 32);
        *buf = 138412546;
        v13 = v9;
        v14 = 2112;
        v15 = v7;
        _os_log_impl(&dword_19BF1F000, v8, OS_LOG_TYPE_ERROR, "Failed stream data directory %@ : %@", buf, 0x16u);
      }
    }
  }

  return (*(*(a1 + 48) + 16))();
}

@end