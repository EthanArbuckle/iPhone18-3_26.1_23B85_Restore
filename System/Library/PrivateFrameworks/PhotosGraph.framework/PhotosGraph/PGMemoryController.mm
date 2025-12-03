@interface PGMemoryController
- (PGMemoryController)initWithGraph:(id)graph photoLibrary:(id)library loggingConnection:(id)connection;
- (PGMemoryController)initWithPhotoLibrary:(id)library loggingConnection:(id)connection;
- (id)assetCollectionWithAssetLocalIdentifiers:(id)identifiers;
- (id)momentForMomentID:(id)d;
@end

@implementation PGMemoryController

- (id)momentForMomentID:(id)d
{
  dCopy = d;
  if (dCopy)
  {
    v5 = self->_momentsByMomentIDs;
    objc_sync_enter(v5);
    firstObject = [(NSMutableDictionary *)self->_momentsByMomentIDs objectForKeyedSubscript:dCopy];
    if (!firstObject)
    {
      librarySpecificFetchOptions = [(PHPhotoLibrary *)self->_photoLibrary librarySpecificFetchOptions];
      [librarySpecificFetchOptions setFetchLimit:1];
      dCopy = [MEMORY[0x277CCAC30] predicateWithFormat:@"localIdentifier == %@", dCopy];
      [librarySpecificFetchOptions setPredicate:dCopy];

      v9 = [MEMORY[0x277CD97B8] fetchMomentsWithOptions:librarySpecificFetchOptions];
      firstObject = [v9 firstObject];
      if (firstObject)
      {
        [(NSMutableDictionary *)self->_momentsByMomentIDs setObject:firstObject forKeyedSubscript:dCopy];
      }
    }

    objc_sync_exit(v5);
  }

  else
  {
    firstObject = 0;
  }

  return firstObject;
}

- (PGMemoryController)initWithPhotoLibrary:(id)library loggingConnection:(id)connection
{
  libraryCopy = library;
  connectionCopy = connection;
  v12.receiver = self;
  v12.super_class = PGMemoryController;
  v9 = [(PGMemoryController *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_photoLibrary, library);
    objc_storeStrong(&v10->_loggingConnection, connection);
  }

  return v10;
}

- (PGMemoryController)initWithGraph:(id)graph photoLibrary:(id)library loggingConnection:(id)connection
{
  graphCopy = graph;
  v10 = [(PGMemoryController *)self initWithPhotoLibrary:library loggingConnection:connection];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_graph, graph);
  }

  return v11;
}

- (id)assetCollectionWithAssetLocalIdentifiers:(id)identifiers
{
  v13[1] = *MEMORY[0x277D85DE8];
  identifiersCopy = identifiers;
  photoLibrary = [(PGMemoryController *)self photoLibrary];
  librarySpecificFetchOptions = [photoLibrary librarySpecificFetchOptions];

  v13[0] = *MEMORY[0x277CD9AA8];
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:1];
  [librarySpecificFetchOptions setFetchPropertySets:v7];

  v8 = +[PGCurationManager defaultAssetSortDescriptors];
  [librarySpecificFetchOptions setSortDescriptors:v8];

  [librarySpecificFetchOptions setIncludeGuestAssets:1];
  v9 = [MEMORY[0x277CD97A8] fetchAssetsWithLocalIdentifiers:identifiersCopy options:librarySpecificFetchOptions];

  v10 = [MEMORY[0x277CD97B8] transientAssetCollectionWithAssetFetchResult:v9 title:0];

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

@end