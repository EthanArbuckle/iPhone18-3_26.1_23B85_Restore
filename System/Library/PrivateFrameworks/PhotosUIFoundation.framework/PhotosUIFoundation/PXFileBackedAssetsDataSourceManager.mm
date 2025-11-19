@interface PXFileBackedAssetsDataSourceManager
+ (id)emptyFileBackedDataSourceManager;
+ (id)fileBackedDataSourceManagerWithDirectory:(id)a3;
- (PXFileBackedAssetsDataSourceManager)initWithFileURLsBySection:(id)a3;
- (void)_createDataSource;
- (void)insertFileURL:(id)a3 atIndex:(int64_t)a4 inSection:(int64_t)a5;
- (void)removeFileURLsAtIndexes:(id)a3 inSection:(int64_t)a4;
@end

@implementation PXFileBackedAssetsDataSourceManager

- (void)insertFileURL:(id)a3 atIndex:(int64_t)a4 inSection:(int64_t)a5
{
  v31[1] = *MEMORY[0x1E69E9840];
  fileURLsBySection = self->_fileURLsBySection;
  v9 = MEMORY[0x1E696AD98];
  v10 = a3;
  v11 = [v9 numberWithInteger:a5];
  v12 = [(NSMutableDictionary *)fileURLsBySection objectForKeyedSubscript:v11];
  v13 = [v12 mutableCopy];

  [v13 insertObject:v10 atIndex:a4];
  v14 = self->_fileURLsBySection;
  v15 = [MEMORY[0x1E696AD98] numberWithInteger:a5];
  [(NSMutableDictionary *)v14 setObject:v13 forKeyedSubscript:v15];

  v16 = [(PXSectionedDataSourceManager *)self dataSource];
  v17 = [PXFileBackedAssetsDataSource alloc];
  v18 = [(NSMutableDictionary *)self->_fileURLsBySection copy];
  v19 = [(PXFileBackedAssetsDataSource *)v17 initWithFileURLsBySection:v18];

  if (v16)
  {
    v29 = [PXSectionedDataSourceChangeDetails alloc];
    v28 = [v16 identifier];
    v27 = [(PXSectionedDataSource *)v19 identifier];
    v20 = +[PXArrayChangeDetails changeDetailsWithNoChanges];
    v21 = [MEMORY[0x1E696AD98] numberWithInteger:a5];
    v30 = v21;
    v22 = [PXArrayChangeDetails alloc];
    v23 = [MEMORY[0x1E696AC90] indexSetWithIndex:a4];
    v24 = [(PXArrayChangeDetails *)v22 initWithIncrementalChangeDetailsRemovedIndexes:0 insertedIndexes:v23 movesToIndexes:0 movesFromIndexes:0 changedIndexes:0];
    v31[0] = v24;
    v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v31 forKeys:&v30 count:1];
    v26 = [(PXSectionedDataSourceChangeDetails *)v29 initWithFromDataSourceIdentifier:v28 toDataSourceIdentifier:v27 sectionChanges:v20 itemChangeDetailsBySection:v25 subitemChangeDetailsByItemBySection:0];
  }

  else
  {
    v26 = 0;
  }

  [(PXSectionedDataSourceManager *)self setDataSource:v19 changeDetails:v26];
}

- (void)removeFileURLsAtIndexes:(id)a3 inSection:(int64_t)a4
{
  v26[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  fileURLsBySection = self->_fileURLsBySection;
  v8 = [MEMORY[0x1E696AD98] numberWithInteger:a4];
  v9 = [(NSMutableDictionary *)fileURLsBySection objectForKeyedSubscript:v8];
  v10 = [v9 mutableCopy];

  [v10 removeObjectsAtIndexes:v6];
  v11 = self->_fileURLsBySection;
  v12 = [MEMORY[0x1E696AD98] numberWithInteger:a4];
  [(NSMutableDictionary *)v11 setObject:v10 forKeyedSubscript:v12];

  v13 = [(PXSectionedDataSourceManager *)self dataSource];
  v14 = [PXFileBackedAssetsDataSource alloc];
  v15 = [(NSMutableDictionary *)self->_fileURLsBySection copy];
  v16 = [(PXFileBackedAssetsDataSource *)v14 initWithFileURLsBySection:v15];

  if (v13)
  {
    v24 = [PXSectionedDataSourceChangeDetails alloc];
    v23 = [v13 identifier];
    v17 = [(PXSectionedDataSource *)v16 identifier];
    v18 = +[PXArrayChangeDetails changeDetailsWithNoChanges];
    v19 = [MEMORY[0x1E696AD98] numberWithInteger:a4];
    v25 = v19;
    v20 = [[PXArrayChangeDetails alloc] initWithIncrementalChangeDetailsRemovedIndexes:v6 insertedIndexes:0 movesToIndexes:0 movesFromIndexes:0 changedIndexes:0];
    v26[0] = v20;
    v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v26 forKeys:&v25 count:1];
    v22 = [(PXSectionedDataSourceChangeDetails *)v24 initWithFromDataSourceIdentifier:v23 toDataSourceIdentifier:v17 sectionChanges:v18 itemChangeDetailsBySection:v21 subitemChangeDetailsByItemBySection:0];
  }

  else
  {
    v22 = 0;
  }

  [(PXSectionedDataSourceManager *)self setDataSource:v16 changeDetails:v22];
}

- (void)_createDataSource
{
  v3 = [PXFileBackedAssetsDataSource alloc];
  v4 = [(NSMutableDictionary *)self->_fileURLsBySection copy];
  v5 = [(PXFileBackedAssetsDataSource *)v3 initWithFileURLsBySection:v4];

  [(PXSectionedDataSourceManager *)self setDataSource:v5 changeDetails:0];
}

- (PXFileBackedAssetsDataSourceManager)initWithFileURLsBySection:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = PXFileBackedAssetsDataSourceManager;
  v5 = [(PXSectionedDataSourceManager *)&v9 init];
  if (v5)
  {
    v6 = [v4 mutableCopy];
    fileURLsBySection = v5->_fileURLsBySection;
    v5->_fileURLsBySection = v6;

    [(PXFileBackedAssetsDataSourceManager *)v5 _createDataSource];
  }

  return v5;
}

+ (id)fileBackedDataSourceManagerWithDirectory:(id)a3
{
  v53 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MEMORY[0x1E696AC08] defaultManager];
  v45 = 0;
  v6 = [v4 path];
  v7 = [v5 fileExistsAtPath:v6 isDirectory:&v45];
  v8 = v45;

  if (v7 && (v8 & 1) != 0)
  {
    v44 = 0;
    v9 = [v5 contentsOfDirectoryAtURL:v4 includingPropertiesForKeys:0 options:0 error:&v44];
    v10 = v44;
    v11 = v10;
    if (v9)
    {
      v34 = a1;
      v35 = v10;
      v37 = v5;
      v38 = v4;
      v39 = [MEMORY[0x1E695DF70] array];
      v40 = 0u;
      v41 = 0u;
      v42 = 0u;
      v43 = 0u;
      v36 = v9;
      v12 = v9;
      v13 = [v12 countByEnumeratingWithState:&v40 objects:v48 count:16];
      if (v13)
      {
        v14 = v13;
        v15 = *v41;
        v16 = *MEMORY[0x1E6982E30];
        v17 = *MEMORY[0x1E6982EE8];
        do
        {
          for (i = 0; i != v14; ++i)
          {
            if (*v41 != v15)
            {
              objc_enumerationMutation(v12);
            }

            v19 = *(*(&v40 + 1) + 8 * i);
            v20 = [v19 pathExtension];
            if (v20)
            {
              v21 = v20;
              v22 = MEMORY[0x1E6982C40];
              v23 = [v19 pathExtension];
              v24 = [v22 typeWithFilenameExtension:v23];

              if (v24)
              {
                v25 = [v24 conformsToType:v16];
                v26 = [v24 conformsToType:v17];
                if ((v25 & 1) != 0 || v26)
                {
                  [v39 addObject:v19];
                }
              }
            }

            else
            {
              v24 = 0;
            }
          }

          v14 = [v12 countByEnumeratingWithState:&v40 objects:v48 count:16];
        }

        while (v14);
      }

      if ([v39 count])
      {
        v46 = &unk_1F2BAC850;
        v27 = [v39 copy];
        v47 = v27;
        v28 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v47 forKeys:&v46 count:1];

        v29 = [[PXFileBackedAssetsDataSourceManager alloc] initWithFileURLsBySection:v28];
        v5 = v37;
        v4 = v38;
        v11 = v35;
        v9 = v36;
      }

      else
      {
        v32 = PFUIGetLog();
        v4 = v38;
        v11 = v35;
        if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v50 = v38;
          _os_log_impl(&dword_1B3F73000, v32, OS_LOG_TYPE_ERROR, "[PXFileBackedAssetsDataSourceManager]: There are no recognized media files at %@", buf, 0xCu);
        }

        v29 = [v34 emptyFileBackedDataSourceManager];
        v9 = v36;
        v5 = v37;
      }
    }

    else
    {
      v31 = PFUIGetLog();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v50 = v4;
        v51 = 2112;
        v52 = v11;
        _os_log_impl(&dword_1B3F73000, v31, OS_LOG_TYPE_ERROR, "[PXFileBackedAssetsDataSourceManager]: Failed to get contents of directory %@: %@", buf, 0x16u);
      }

      v29 = [a1 emptyFileBackedDataSourceManager];
    }
  }

  else
  {
    v30 = PFUIGetLog();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v50 = v4;
      _os_log_impl(&dword_1B3F73000, v30, OS_LOG_TYPE_ERROR, "[PXFileBackedAssetsDataSourceManager]: %@ does not exist or is not a directory", buf, 0xCu);
    }

    v29 = [a1 emptyFileBackedDataSourceManager];
  }

  return v29;
}

+ (id)emptyFileBackedDataSourceManager
{
  v2 = [PXFileBackedAssetsDataSourceManager alloc];
  v3 = [(PXFileBackedAssetsDataSourceManager *)v2 initWithFileURLsBySection:MEMORY[0x1E695E0F8]];

  return v3;
}

@end