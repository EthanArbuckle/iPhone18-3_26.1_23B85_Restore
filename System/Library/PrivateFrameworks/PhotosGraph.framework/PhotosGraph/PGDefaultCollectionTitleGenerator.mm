@interface PGDefaultCollectionTitleGenerator
- (PGDefaultCollectionTitleGenerator)initWithCollection:(id)collection keyAsset:(id)asset curatedAssetCollection:(id)assetCollection titleGenerationContext:(id)context;
- (void)_generateTitleAndSubtitleWithManager:(id)manager curationContext:(id)context result:(id)result;
@end

@implementation PGDefaultCollectionTitleGenerator

- (void)_generateTitleAndSubtitleWithManager:(id)manager curationContext:(id)context result:(id)result
{
  managerCopy = manager;
  contextCopy = context;
  resultCopy = result;
  v29 = contextCopy;
  if (self->_forDiagnostics)
  {
    v10 = 0;
LABEL_3:
    v11 = 0;
    v12 = 0;
    goto LABEL_11;
  }

  collection = self->_collection;
  photoLibrary = [managerCopy photoLibrary];
  v10 = [(PGEventEnrichment *)collection fetchAssetCollectionInPhotoLibrary:photoLibrary];

  curatedAssetCollection = self->_curatedAssetCollection;
  if (curatedAssetCollection)
  {
    v12 = curatedAssetCollection;
    v11 = self->_keyAsset;
  }

  else
  {
    if (!v10)
    {
      goto LABEL_3;
    }

    v16 = +[PGCurationOptions defaultOptions];
    momentNodes = [(PGTitleGenerator *)self momentNodes];
    [v16 setIncludesAllFaces:{objc_msgSend(momentNodes, "count") == 1}];

    curationManager = [managerCopy curationManager];
    v19 = [curationManager curatedAssetsForAssetCollection:v10 options:v16 curationContext:contextCopy progressBlock:0];

    if (v19)
    {
      v12 = [MEMORY[0x277CD97B8] transientAssetCollectionWithAssets:v19 title:0];
      curationManager2 = [managerCopy curationManager];
      uuid = [(PGEventEnrichment *)self->_collection uuid];
      v11 = [curationManager2 curatedKeyAssetForCollectionUUID:uuid curatedAssetCollection:v12 options:0 criteria:0 curationContext:contextCopy];
    }

    else
    {
      v11 = 0;
      v12 = 0;
    }
  }

LABEL_11:
  momentNodes2 = [(PGTitleGenerator *)self momentNodes];
  v23 = [PGTitleGenerator alloc];
  titleGenerationContext = [(PGTitleGenerator *)self titleGenerationContext];
  v25 = [(PGTitleGenerator *)v23 initWithMomentNodes:momentNodes2 referenceDateInterval:0 keyAsset:v11 curatedAssetCollection:v12 assetCollection:v10 type:0 titleGenerationContext:titleGenerationContext];

  title = [(PGTitleGenerator *)v25 title];
  subtitle = [(PGTitleGenerator *)v25 subtitle];
  usedLocationNodes = [(PGTitleGenerator *)v25 usedLocationNodes];
  [(PGTitleGenerator *)self setUsedLocationNodes:usedLocationNodes];

  if (resultCopy)
  {
    resultCopy[2](resultCopy, title, subtitle);
  }
}

- (PGDefaultCollectionTitleGenerator)initWithCollection:(id)collection keyAsset:(id)asset curatedAssetCollection:(id)assetCollection titleGenerationContext:(id)context
{
  collectionCopy = collection;
  assetCopy = asset;
  assetCollectionCopy = assetCollection;
  contextCopy = context;
  eventEnrichmentMomentNodes = [collectionCopy eventEnrichmentMomentNodes];
  temporarySet = [eventEnrichmentMomentNodes temporarySet];

  v19.receiver = self;
  v19.super_class = PGDefaultCollectionTitleGenerator;
  v17 = [(PGTitleGenerator *)&v19 initWithMomentNodes:temporarySet type:0 titleGenerationContext:contextCopy];

  if (v17)
  {
    objc_storeStrong(&v17->_collection, collection);
    v17->_debug = 0;
    objc_storeStrong(&v17->_keyAsset, asset);
    objc_storeStrong(&v17->_curatedAssetCollection, assetCollection);
  }

  return v17;
}

@end