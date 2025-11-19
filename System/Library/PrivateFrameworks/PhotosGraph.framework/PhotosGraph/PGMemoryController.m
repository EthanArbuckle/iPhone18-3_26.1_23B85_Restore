@interface PGMemoryController
- (PGMemoryController)initWithGraph:(id)a3 photoLibrary:(id)a4 loggingConnection:(id)a5;
- (PGMemoryController)initWithPhotoLibrary:(id)a3 loggingConnection:(id)a4;
- (id)assetCollectionWithAssetLocalIdentifiers:(id)a3;
- (id)momentForMomentID:(id)a3;
@end

@implementation PGMemoryController

- (id)momentForMomentID:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = self->_momentsByMomentIDs;
    objc_sync_enter(v5);
    v6 = [(NSMutableDictionary *)self->_momentsByMomentIDs objectForKeyedSubscript:v4];
    if (!v6)
    {
      v7 = [(PHPhotoLibrary *)self->_photoLibrary librarySpecificFetchOptions];
      [v7 setFetchLimit:1];
      v8 = [MEMORY[0x277CCAC30] predicateWithFormat:@"localIdentifier == %@", v4];
      [v7 setPredicate:v8];

      v9 = [MEMORY[0x277CD97B8] fetchMomentsWithOptions:v7];
      v6 = [v9 firstObject];
      if (v6)
      {
        [(NSMutableDictionary *)self->_momentsByMomentIDs setObject:v6 forKeyedSubscript:v4];
      }
    }

    objc_sync_exit(v5);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (PGMemoryController)initWithPhotoLibrary:(id)a3 loggingConnection:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = PGMemoryController;
  v9 = [(PGMemoryController *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_photoLibrary, a3);
    objc_storeStrong(&v10->_loggingConnection, a4);
  }

  return v10;
}

- (PGMemoryController)initWithGraph:(id)a3 photoLibrary:(id)a4 loggingConnection:(id)a5
{
  v9 = a3;
  v10 = [(PGMemoryController *)self initWithPhotoLibrary:a4 loggingConnection:a5];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_graph, a3);
  }

  return v11;
}

- (id)assetCollectionWithAssetLocalIdentifiers:(id)a3
{
  v13[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(PGMemoryController *)self photoLibrary];
  v6 = [v5 librarySpecificFetchOptions];

  v13[0] = *MEMORY[0x277CD9AA8];
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:1];
  [v6 setFetchPropertySets:v7];

  v8 = +[PGCurationManager defaultAssetSortDescriptors];
  [v6 setSortDescriptors:v8];

  [v6 setIncludeGuestAssets:1];
  v9 = [MEMORY[0x277CD97A8] fetchAssetsWithLocalIdentifiers:v4 options:v6];

  v10 = [MEMORY[0x277CD97B8] transientAssetCollectionWithAssetFetchResult:v9 title:0];

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

@end