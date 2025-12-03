@interface PXCMMFileBackedContext
+ (id)fileBackedContextWithDirectoryURL:(id)l activityType:(unint64_t)type title:(id)title;
- (PXCMMFileBackedContext)initWithAssetsDataSourceManager:(id)manager mediaProvider:(id)provider activityType:(unint64_t)type;
@end

@implementation PXCMMFileBackedContext

- (PXCMMFileBackedContext)initWithAssetsDataSourceManager:(id)manager mediaProvider:(id)provider activityType:(unint64_t)type
{
  v9.receiver = self;
  v9.super_class = PXCMMFileBackedContext;
  v5 = [(PXCMMContext *)&v9 initWithAssetsDataSourceManager:manager mediaProvider:provider activityType:type];
  if (v5)
  {
    v6 = objc_alloc_init(PXCMMFileBackedActionManager);
    fileBackedActionManager = v5->_fileBackedActionManager;
    v5->_fileBackedActionManager = v6;
  }

  return v5;
}

+ (id)fileBackedContextWithDirectoryURL:(id)l activityType:(unint64_t)type title:(id)title
{
  v64 = *MEMORY[0x1E69E9840];
  lCopy = l;
  titleCopy = title;
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v59 = 0;
  path = [lCopy path];
  v11 = [defaultManager fileExistsAtPath:path isDirectory:&v59];
  v12 = v59;

  if (v11 && (v12 & 1) != 0)
  {
    v58 = 0;
    v13 = [defaultManager contentsOfDirectoryAtURL:lCopy includingPropertiesForKeys:0 options:0 error:&v58];
    v14 = v58;
    v15 = v14;
    if (v13)
    {
      typeCopy = type;
      v46 = v14;
      v47 = defaultManager;
      v48 = titleCopy;
      v49 = lCopy;
      array = [MEMORY[0x1E695DF70] array];
      v54 = 0u;
      v55 = 0u;
      v56 = 0u;
      v57 = 0u;
      v45 = v13;
      obj = v13;
      v16 = [obj countByEnumeratingWithState:&v54 objects:v63 count:16];
      if (v16)
      {
        v17 = v16;
        v53 = 0;
        v18 = 0;
        v19 = *v55;
        v20 = *MEMORY[0x1E6982E30];
        v21 = *MEMORY[0x1E6982EE8];
        do
        {
          for (i = 0; i != v17; ++i)
          {
            if (*v55 != v19)
            {
              objc_enumerationMutation(obj);
            }

            v23 = *(*(&v54 + 1) + 8 * i);
            v24 = MEMORY[0x1E6982C40];
            pathExtension = [v23 pathExtension];
            v26 = [v24 typeWithFilenameExtension:pathExtension];

            if (v26)
            {
              v27 = [v26 conformsToType:v20];
              v28 = [v26 conformsToType:v21];
              v18 += v27;
              v53 += v28;
              if ((v27 & 1) != 0 || v28)
              {
                [array addObject:v23];
              }
            }
          }

          v17 = [obj countByEnumeratingWithState:&v54 objects:v63 count:16];
        }

        while (v17);
      }

      else
      {
        v53 = 0;
        v18 = 0;
      }

      v30 = array;
      if ([array count])
      {
        v61 = &unk_1F190B8D8;
        v31 = [array copy];
        v62 = v31;
        v32 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v62 forKeys:&v61 count:1];

        obja = v32;
        v33 = [[off_1E7721578 alloc] initWithFileURLsBySection:v32];
        v34 = objc_alloc_init(off_1E7721580);
        v29 = [[PXCMMFileBackedContext alloc] initWithAssetsDataSourceManager:v33 mediaProvider:v34 activityType:typeCopy];
        dataSource = [v33 dataSource];
        titleCopy = v48;
        [(PXCMMContext *)v29 setTitle:v48];
        [(PXCMMContext *)v29 setSubtitle:&stru_1F1741150];
        startingAssetReference = [dataSource startingAssetReference];
        asset = [startingAssetReference asset];
        [(PXCMMContext *)v29 setPosterAsset:asset];

        [(PXCMMContext *)v29 setPosterMediaProvider:v34];
        if (dataSource)
        {
          [dataSource firstItemIndexPath];
        }

        else
        {
          memset(buf, 0, sizeof(buf));
        }

        v39 = [dataSource assetAtItemIndexPath:buf];
        creationDate = [v39 creationDate];
        [(PXCMMContext *)v29 setStartDate:creationDate];

        if (dataSource)
        {
          [dataSource lastItemIndexPath];
        }

        else
        {
          memset(buf, 0, sizeof(buf));
        }

        v41 = [dataSource assetAtItemIndexPath:buf];
        creationDate2 = [v41 creationDate];
        [(PXCMMContext *)v29 setEndDate:creationDate2];

        [(PXCMMContext *)v29 setPhotosCount:v18];
        [(PXCMMContext *)v29 setVideosCount:v53];
        [(PXCMMContext *)v29 setCount:[array count]];

        lCopy = v49;
        v15 = v46;
        defaultManager = v47;
        v13 = v45;
        v38 = obja;
      }

      else
      {
        v38 = PLSharingGetLog();
        titleCopy = v48;
        if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          lCopy = v49;
          *&buf[4] = v49;
          _os_log_impl(&dword_1A3C1C000, v38, OS_LOG_TYPE_ERROR, "There are no recognized media files at %@", buf, 0xCu);
          v29 = 0;
        }

        else
        {
          v29 = 0;
          lCopy = v49;
        }

        v15 = v46;
        defaultManager = v47;
      }
    }

    else
    {
      v30 = PLSharingGetLog();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        *&buf[4] = lCopy;
        *&buf[12] = 2112;
        *&buf[14] = v15;
        _os_log_impl(&dword_1A3C1C000, v30, OS_LOG_TYPE_ERROR, "Failed to get contents of directory %@: %@", buf, 0x16u);
      }

      v29 = 0;
    }
  }

  else
  {
    v15 = PLSharingGetLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      *&buf[4] = lCopy;
      _os_log_impl(&dword_1A3C1C000, v15, OS_LOG_TYPE_ERROR, "%@ does not exist or is not a directory", buf, 0xCu);
    }

    v29 = 0;
  }

  return v29;
}

@end