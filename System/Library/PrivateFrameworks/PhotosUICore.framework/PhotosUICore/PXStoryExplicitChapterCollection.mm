@interface PXStoryExplicitChapterCollection
- (BOOL)containsChapterBeginningWithAsset:(id)asset;
- (PXStoryExplicitChapterCollection)initWithAssets:(id)assets configuration:(id)configuration;
- (id)chapterAtIndex:(int64_t)index;
- (id)chapterContainingAsset:(id)asset;
- (int64_t)indexOfChapterWithIdentifier:(id)identifier;
- (int64_t)numberOfChapters;
- (void)addChapterWithAssetRange:(_NSRange)range configuration:(id)configuration;
- (void)addChapterWithAssetUUIDs:(id)ds configuration:(id)configuration;
@end

@implementation PXStoryExplicitChapterCollection

- (id)chapterContainingAsset:(id)asset
{
  v18 = *MEMORY[0x1E69E9840];
  uuid = [asset uuid];
  if (uuid)
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    chapters = [(PXStoryExplicitChapterCollection *)self chapters];
    v6 = [chapters countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v6)
    {
      v7 = *v14;
      while (2)
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v14 != v7)
          {
            objc_enumerationMutation(chapters);
          }

          v9 = *(*(&v13 + 1) + 8 * i);
          assetUUIDs = [v9 assetUUIDs];
          v11 = [assetUUIDs containsObject:uuid];

          if (v11)
          {
            v6 = v9;
            goto LABEL_12;
          }
        }

        v6 = [chapters countByEnumeratingWithState:&v13 objects:v17 count:16];
        if (v6)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)containsChapterBeginningWithAsset:(id)asset
{
  assetCopy = asset;
  chapterBeginningAssetlocalIdentifiers = [(PXStoryExplicitChapterCollection *)self chapterBeginningAssetlocalIdentifiers];
  uuid = [assetCopy uuid];

  LOBYTE(assetCopy) = [chapterBeginningAssetlocalIdentifiers containsObject:uuid];
  return assetCopy;
}

- (int64_t)indexOfChapterWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  chapterIndexesByIdentifier = [(PXStoryExplicitChapterCollection *)self chapterIndexesByIdentifier];
  v6 = [chapterIndexesByIdentifier objectForKeyedSubscript:identifierCopy];

  if (v6)
  {
    integerValue = [v6 integerValue];
  }

  else
  {
    integerValue = 0x7FFFFFFFFFFFFFFFLL;
  }

  return integerValue;
}

- (id)chapterAtIndex:(int64_t)index
{
  chapters = [(PXStoryExplicitChapterCollection *)self chapters];
  v5 = [chapters objectAtIndexedSubscript:index];

  return v5;
}

- (int64_t)numberOfChapters
{
  chapters = [(PXStoryExplicitChapterCollection *)self chapters];
  v3 = [chapters count];

  return v3;
}

- (void)addChapterWithAssetUUIDs:(id)ds configuration:(id)configuration
{
  dsCopy = ds;
  configurationCopy = configuration;
  if (![dsCopy count])
  {
    PXAssertGetLog();
  }

  v8 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithArray:dsCopy];
  v9 = [_PXStoryExplicitChapter alloc];
  v10 = [dsCopy objectAtIndexedSubscript:0];
  v11 = [(_PXStoryExplicitChapter *)v9 initWithFirstAssetUUID:v10 assetUUIDs:v8];

  configurationCopy[2](configurationCopy, v11);
  [(NSMutableArray *)self->_initializedChapters addObject:v11];
}

- (void)addChapterWithAssetRange:(_NSRange)range configuration:(id)configuration
{
  length = range.length;
  location = range.location;
  configurationCopy = configuration;
  v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if (location < (location + length))
  {
    *&v9 = 138412290;
    v14 = v9;
    do
    {
      v10 = [(PXDisplayAssetFetchResult *)self->_initializedAssets objectAtIndexedSubscript:location, v14];
      v11 = [(PXDisplayAssetFetchResult *)self->_initializedAssets objectAtIndexedSubscript:location];
      uuid = [v11 uuid];

      if (!uuid)
      {
        PXAssertGetLog();
      }

      [v8 addObject:uuid];

      ++location;
      --length;
    }

    while (length);
  }

  if ([v8 count])
  {
    v13 = [v8 copy];
    [(PXStoryExplicitChapterCollection *)self addChapterWithAssetUUIDs:v13 configuration:configurationCopy];
  }
}

- (PXStoryExplicitChapterCollection)initWithAssets:(id)assets configuration:(id)configuration
{
  assetsCopy = assets;
  configurationCopy = configuration;
  v9 = [(PXStoryExplicitChapterCollection *)self init];
  if (v9)
  {
    v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
    initializedChapters = v9->_initializedChapters;
    v9->_initializedChapters = v10;

    objc_storeStrong(&v9->_initializedAssets, assets);
    configurationCopy[2](configurationCopy, v9);
    v12 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v13 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v14 = v9->_initializedChapters;
    v26 = MEMORY[0x1E69E9820];
    v27 = 3221225472;
    v28 = __65__PXStoryExplicitChapterCollection_initWithAssets_configuration___block_invoke;
    v29 = &unk_1E77447E8;
    v30 = v12;
    v31 = v13;
    v15 = v13;
    v16 = v12;
    [(NSMutableArray *)v14 enumerateObjectsUsingBlock:&v26];
    v17 = [(NSMutableArray *)v9->_initializedChapters copy:v26];
    chapters = v9->_chapters;
    v9->_chapters = v17;

    v19 = [v15 copy];
    chapterIndexesByIdentifier = v9->_chapterIndexesByIdentifier;
    v9->_chapterIndexesByIdentifier = v19;

    v21 = [v16 copy];
    chapterBeginningAssetlocalIdentifiers = v9->_chapterBeginningAssetlocalIdentifiers;
    v9->_chapterBeginningAssetlocalIdentifiers = v21;

    v23 = v9->_initializedChapters;
    v9->_initializedChapters = 0;

    initializedAssets = v9->_initializedAssets;
    v9->_initializedAssets = 0;
  }

  return v9;
}

void __65__PXStoryExplicitChapterCollection_initWithAssets_configuration___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v9 = [v5 firstAssetUUID];
  [*(a1 + 32) addObject:v9];
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
  v7 = *(a1 + 40);
  v8 = [v5 identifier];

  [v7 setObject:v6 forKeyedSubscript:v8];
}

@end