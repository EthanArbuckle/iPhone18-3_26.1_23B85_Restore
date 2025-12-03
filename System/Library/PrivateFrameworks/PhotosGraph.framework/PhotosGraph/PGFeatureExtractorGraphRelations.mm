@interface PGFeatureExtractorGraphRelations
- (PGFeatureExtractorGraphRelations)initWithGraph:(id)graph featureExtractor:(id)extractor;
- (id)_generateErrorWithErrorCode:(int64_t)code andMessage:(id)message;
- (id)featureNames;
- (id)floatVectorWithEntity:(id)entity error:(id *)error;
- (id)floatVectorWithMomentNodeCollection:(id)collection error:(id *)error;
- (id)name;
- (int64_t)featureLength;
@end

@implementation PGFeatureExtractorGraphRelations

- (id)_generateErrorWithErrorCode:(int64_t)code andMessage:(id)message
{
  v13[1] = *MEMORY[0x277D85DE8];
  v5 = MEMORY[0x277CCA9B8];
  v12 = *MEMORY[0x277CCA450];
  v13[0] = message;
  v6 = MEMORY[0x277CBEAC0];
  messageCopy = message;
  v8 = [v6 dictionaryWithObjects:v13 forKeys:&v12 count:1];
  v9 = [v5 errorWithDomain:@"com.apple.PhotosGraph.PGFeatureExtractorGraphRelations" code:code userInfo:v8];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)floatVectorWithEntity:(id)entity error:(id *)error
{
  entityCopy = entity;
  v7 = [MEMORY[0x277CD97B8] fetchAssetCollectionsContainingAsset:entityCopy withType:3 options:0];
  firstObject = [v7 firstObject];
  v9 = firstObject;
  if (!firstObject)
  {
    if (!error)
    {
      goto LABEL_10;
    }

    v17 = MEMORY[0x277CCACA8];
    localIdentifier = [entityCopy localIdentifier];
    v18 = [v17 stringWithFormat:@"Asset collection could not be fetched from asset %@", localIdentifier];
    *error = [(PGFeatureExtractorGraphRelations *)self _generateErrorWithErrorCode:0 andMessage:v18];

    goto LABEL_7;
  }

  v10 = MEMORY[0x277CBEB98];
  uuid = [firstObject uuid];
  v12 = [v10 setWithObject:uuid];
  localIdentifier = [PGGraphMomentNodeCollection momentNodesForUUIDs:v12 inGraph:self->_graph];

  if (![localIdentifier isEmpty])
  {
    error = [(PGFeatureExtractorGraphRelations *)self floatVectorWithMomentNodeCollection:localIdentifier error:error];
    goto LABEL_9;
  }

  if (error)
  {
    v14 = MEMORY[0x277CCACA8];
    localIdentifier2 = [entityCopy localIdentifier];
    v16 = [v14 stringWithFormat:@"Moment node could not be fetched from asset collection of asset %@", localIdentifier2];
    *error = [(PGFeatureExtractorGraphRelations *)self _generateErrorWithErrorCode:1 andMessage:v16];

LABEL_7:
    error = 0;
  }

LABEL_9:

LABEL_10:

  return error;
}

- (id)floatVectorWithMomentNodeCollection:(id)collection error:(id *)error
{
  collectionCopy = collection;
  featureExtractor = [(PGFeatureExtractorGraphRelations *)self featureExtractor];
  v8 = [featureExtractor floatVectorWithEntity:collectionCopy error:error];

  return v8;
}

- (int64_t)featureLength
{
  featureExtractor = [(PGFeatureExtractorGraphRelations *)self featureExtractor];
  featureNames = [featureExtractor featureNames];
  v4 = [featureNames count];

  return v4;
}

- (id)featureNames
{
  featureExtractor = [(PGFeatureExtractorGraphRelations *)self featureExtractor];
  featureNames = [featureExtractor featureNames];

  return featureNames;
}

- (id)name
{
  featureExtractor = [(PGFeatureExtractorGraphRelations *)self featureExtractor];
  name = [featureExtractor name];

  return name;
}

- (PGFeatureExtractorGraphRelations)initWithGraph:(id)graph featureExtractor:(id)extractor
{
  graphCopy = graph;
  extractorCopy = extractor;
  v12.receiver = self;
  v12.super_class = PGFeatureExtractorGraphRelations;
  v9 = [(PGFeatureExtractorGraphRelations *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_graph, graph);
    objc_storeStrong(&v10->_featureExtractor, extractor);
  }

  return v10;
}

@end