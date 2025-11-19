@interface OKMediaFeederPhotoKit
+ (id)mediaFeederWithAllAssetsWithOptions:(id)a3;
+ (id)mediaFeederWithAssetCollection:(id)a3 andOptions:(id)a4;
+ (id)mediaFeederWithFetchResult:(id)a3;
+ (id)supportedSettings;
- (BOOL)canBePersisted;
- (OKMediaFeederPhotoKit)init;
- (OKMediaFeederPhotoKit)initWithAllAssetsWithOptions:(id)a3;
- (OKMediaFeederPhotoKit)initWithAssetCollection:(id)a3 andOptions:(id)a4;
- (OKMediaFeederPhotoKit)initWithFetchResult:(id)a3;
- (OKMediaFeederPhotoKit)initWithSettings:(id)a3;
- (id)feederSettings;
- (id)indexesForMediaObjects:(id)a3;
- (id)mediaObjectURLsAtIndexes:(id)a3;
- (id)mediaObjectsAtIndexes:(id)a3;
- (id)photoLibrary;
- (id)reloadMediaObjectsWithCompletionHandler:(id)a3;
- (unint64_t)numberOfMediaObjects;
- (void)dealloc;
@end

@implementation OKMediaFeederPhotoKit

- (OKMediaFeederPhotoKit)init
{
  v5.receiver = self;
  v5.super_class = OKMediaFeederPhotoKit;
  v2 = [(OKMediaFeeder *)&v5 init];
  v3 = v2;
  if (v2)
  {
    v2->_type = 0;
    [-[OKMediaFeederPhotoKit photoLibrary](v2 "photoLibrary")];
  }

  return v3;
}

- (OKMediaFeederPhotoKit)initWithAssetCollection:(id)a3 andOptions:(id)a4
{
  [(OKMediaFeederPhotoKit *)self setAssetCollection:a3];
  [(OKMediaFeederPhotoKit *)self setOptions:a4];
  result = [(OKMediaFeederPhotoKit *)self init];
  if (result)
  {
    result->_type = 2;
  }

  return result;
}

- (id)photoLibrary
{
  result = [(PHAssetCollection *)[(OKMediaFeederPhotoKit *)self assetCollection] photoLibrary];
  if (!result)
  {
    result = [(PHFetchResult *)[(OKMediaFeederPhotoKit *)self fetchResult] photoLibrary];
    if (!result)
    {
      result = [(PHFetchOptions *)[(OKMediaFeederPhotoKit *)self options] photoLibrary];
      if (!result && ((objc_opt_respondsToSelector() & 1) == 0 || (result = [MEMORY[0x277CD9948] px_appPhotoLibrary]) == 0))
      {
        v4 = MEMORY[0x277CD9948];

        return [v4 sharedPhotoLibrary];
      }
    }
  }

  return result;
}

+ (id)mediaFeederWithAssetCollection:(id)a3 andOptions:(id)a4
{
  v4 = [[OKMediaFeederPhotoKit alloc] initWithAssetCollection:a3 andOptions:a4];

  return v4;
}

- (OKMediaFeederPhotoKit)initWithAllAssetsWithOptions:(id)a3
{
  [(OKMediaFeederPhotoKit *)self setOptions:a3];
  result = [(OKMediaFeederPhotoKit *)self init];
  if (result)
  {
    result->_type = 1;
  }

  return result;
}

+ (id)mediaFeederWithAllAssetsWithOptions:(id)a3
{
  v3 = [[OKMediaFeederPhotoKit alloc] initWithAllAssetsWithOptions:a3];

  return v3;
}

- (OKMediaFeederPhotoKit)initWithFetchResult:(id)a3
{
  [(OKMediaFeederPhotoKit *)self setFetchResult:a3];
  result = [(OKMediaFeederPhotoKit *)self init];
  if (result)
  {
    result->_type = 3;
  }

  return result;
}

+ (id)mediaFeederWithFetchResult:(id)a3
{
  v3 = [[OKMediaFeederPhotoKit alloc] initWithFetchResult:a3];

  return v3;
}

- (OKMediaFeederPhotoKit)initWithSettings:(id)a3
{
  v7.receiver = self;
  v7.super_class = OKMediaFeederPhotoKit;
  v4 = [(OKMediaFeeder *)&v7 initWithSettings:?];
  if (v4)
  {
    v5 = [a3 objectForKey:@"type"];
    if (v5)
    {
      v4->_type = [v5 unsignedIntegerValue];
    }

    v4->_collectionIdentifier = [objc_msgSend(a3 objectForKey:{@"collectionIdentifier", "copy"}];
  }

  return v4;
}

- (void)dealloc
{
  [-[OKMediaFeederPhotoKit photoLibrary](self "photoLibrary")];
  fetchResult = self->_fetchResult;
  if (fetchResult)
  {

    self->_fetchResult = 0;
  }

  assetCollection = self->_assetCollection;
  if (assetCollection)
  {

    self->_assetCollection = 0;
  }

  options = self->_options;
  if (options)
  {

    self->_options = 0;
  }

  collectionIdentifier = self->_collectionIdentifier;
  if (collectionIdentifier)
  {

    self->_collectionIdentifier = 0;
  }

  predicate = self->_predicate;
  if (predicate)
  {

    self->_predicate = 0;
  }

  sortDescriptors = self->_sortDescriptors;
  if (sortDescriptors)
  {

    self->_sortDescriptors = 0;
  }

  v9.receiver = self;
  v9.super_class = OKMediaFeederPhotoKit;
  [(OKMediaFeeder *)&v9 dealloc];
}

+ (id)supportedSettings
{
  v13[2] = *MEMORY[0x277D85DE8];
  v5.receiver = a1;
  v5.super_class = &OBJC_METACLASS___OKMediaFeederPhotoKit;
  v2 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:{objc_msgSendSuper2(&v5, sel_supportedSettings)}];
  v12[0] = @"type";
  v10[1] = @"mapping";
  v11[0] = &unk_287AF12C8;
  v8[0] = @"allPhotos";
  v8[1] = @"assetCollection";
  v9[0] = &unk_287AF12E0;
  v9[1] = &unk_287AF12F8;
  v10[0] = @"type";
  v11[1] = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:v8 count:2];
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:2];
  v12[1] = @"collectionIdentifier";
  v13[0] = v3;
  v6 = @"type";
  v7 = &unk_287AF1310;
  v13[1] = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v7 forKeys:&v6 count:1];
  [v2 addEntriesFromDictionary:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", v13, v12, 2)}];
  return v2;
}

- (BOOL)canBePersisted
{
  type = self->_type;
  if (type)
  {
    v3 = type == 3;
  }

  else
  {
    v3 = 1;
  }

  return !v3;
}

- (id)feederSettings
{
  v18[1] = *MEMORY[0x277D85DE8];
  v10.receiver = self;
  v10.super_class = OKMediaFeederPhotoKit;
  v3 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:{-[OKMediaFeeder feederSettings](&v10, sel_feederSettings)}];
  type = self->_type;
  if (type == 2)
  {
    v15 = @"type";
    v16 = @"assetCollection";
    [v3 addEntriesFromDictionary:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", &v16, &v15, 1)}];
    if ([(OKMediaFeederPhotoKit *)self assetCollection])
    {
      v13 = @"collectionIdentifier";
      v14 = [(PHAssetCollection *)[(OKMediaFeederPhotoKit *)self assetCollection] localIdentifier];
      v5 = MEMORY[0x277CBEAC0];
      v6 = &v14;
      v7 = &v13;
      goto LABEL_9;
    }

    collectionIdentifier = self->_collectionIdentifier;
    if (collectionIdentifier)
    {
      v11 = @"collectionIdentifier";
      v12 = collectionIdentifier;
      v5 = MEMORY[0x277CBEAC0];
      v6 = &v12;
      v7 = &v11;
      goto LABEL_9;
    }
  }

  else
  {
    if (type == 1)
    {
      v17 = @"type";
      v18[0] = @"allPhotos";
      v5 = MEMORY[0x277CBEAC0];
      v6 = v18;
      v7 = &v17;
LABEL_9:
      [v3 addEntriesFromDictionary:{objc_msgSend(v5, "dictionaryWithObjects:forKeys:count:", v6, v7, 1)}];
      return v3;
    }

    return 0;
  }

  return v3;
}

- (id)reloadMediaObjectsWithCompletionHandler:(id)a3
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __65__OKMediaFeederPhotoKit_reloadMediaObjectsWithCompletionHandler___block_invoke;
  v4[3] = &unk_279C90DA0;
  v4[4] = self;
  return [OKMediaFeeder operationWithBlock:v4 cancellationBlock:&__block_literal_global_28 completionHandler:a3];
}

uint64_t __65__OKMediaFeederPhotoKit_reloadMediaObjectsWithCompletionHandler___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v12[1] = *MEMORY[0x277D85DE8];
  if ([*(a1 + 32) fetchResult])
  {
    goto LABEL_11;
  }

  if (![*(a1 + 32) options])
  {
    [*(a1 + 32) setOptions:{objc_msgSend(objc_msgSend(*(a1 + 32), "photoLibrary"), "librarySpecificFetchOptions")}];
  }

  v5 = *(a1 + 32);
  v6 = v5[7];
  if (v6 == 2)
  {
    if (![v5 assetCollection])
    {
      if (*(*(a1 + 32) + 88))
      {
        v12[0] = *(*(a1 + 32) + 88);
        v11 = [MEMORY[0x277CD97B8] fetchAssetCollectionsWithLocalIdentifiers:objc_msgSend(MEMORY[0x277CBEA60] options:{"arrayWithObjects:count:", v12, 1), objc_msgSend(*(a1 + 32), "options")}];
        if (v11)
        {
          [*(a1 + 32) setAssetCollection:{objc_msgSend(v11, "firstObject")}];
        }
      }
    }

    if (![*(a1 + 32) assetCollection])
    {
      goto LABEL_11;
    }

    v7 = [MEMORY[0x277CD97A8] fetchAssetsInAssetCollection:objc_msgSend(*(a1 + 32) options:{"assetCollection"), objc_msgSend(*(a1 + 32), "options")}];
    goto LABEL_10;
  }

  if (v6 == 1)
  {
    v7 = [MEMORY[0x277CD97A8] fetchAssetsWithOptions:{objc_msgSend(v5, "options")}];
LABEL_10:
    [*(a1 + 32) setFetchResult:v7];
LABEL_11:
    if ([*(a1 + 32) fetchResult])
    {
      return (*(a3 + 16))(a3, 0);
    }

    else
    {
      return (*(a3 + 16))(a3, [OKError errorForCode:-1]);
    }
  }

  v9 = [OKError errorForCode:-1];
  v10 = *(a3 + 16);

  return v10(a3, v9);
}

- (unint64_t)numberOfMediaObjects
{
  v2 = [(OKMediaFeederPhotoKit *)self fetchResult];

  return [(PHFetchResult *)v2 count];
}

- (id)mediaObjectsAtIndexes:(id)a3
{
  v4 = [(OKMediaFeederPhotoKit *)self fetchResult];

  return [(PHFetchResult *)v4 objectsAtIndexes:a3];
}

- (id)mediaObjectURLsAtIndexes:(id)a3
{
  v5 = [MEMORY[0x277CBEB18] array];
  v6 = [(OKMediaFeederPhotoKit *)self fetchResult];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __50__OKMediaFeederPhotoKit_mediaObjectURLsAtIndexes___block_invoke;
  v8[3] = &unk_279C90ED8;
  v8[4] = v5;
  [(PHFetchResult *)v6 enumerateObjectsAtIndexes:a3 options:0 usingBlock:v8];
  return [MEMORY[0x277CBEA60] arrayWithArray:v5];
}

uint64_t __50__OKMediaFeederPhotoKit_mediaObjectURLsAtIndexes___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [OKMediaPhotoKitItem urlForPHAsset:a2];

  return [v2 addObject:v3];
}

- (id)indexesForMediaObjects:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = [MEMORY[0x277CCAB58] indexSet];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = [a3 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      v9 = 0;
      do
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(a3);
        }

        v10 = *(*(&v13 + 1) + 8 * v9);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v11 = [(PHFetchResult *)[(OKMediaFeederPhotoKit *)self fetchResult] indexOfObject:v10];
          if (v11 != 0x7FFFFFFFFFFFFFFFLL)
          {
            [v5 addIndex:v11];
          }
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [a3 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  return v5;
}

@end