@interface PGFeatureExtractorGraphRelations
- (PGFeatureExtractorGraphRelations)initWithGraph:(id)a3 featureExtractor:(id)a4;
- (id)_generateErrorWithErrorCode:(int64_t)a3 andMessage:(id)a4;
- (id)featureNames;
- (id)floatVectorWithEntity:(id)a3 error:(id *)a4;
- (id)floatVectorWithMomentNodeCollection:(id)a3 error:(id *)a4;
- (id)name;
- (int64_t)featureLength;
@end

@implementation PGFeatureExtractorGraphRelations

- (id)_generateErrorWithErrorCode:(int64_t)a3 andMessage:(id)a4
{
  v13[1] = *MEMORY[0x277D85DE8];
  v5 = MEMORY[0x277CCA9B8];
  v12 = *MEMORY[0x277CCA450];
  v13[0] = a4;
  v6 = MEMORY[0x277CBEAC0];
  v7 = a4;
  v8 = [v6 dictionaryWithObjects:v13 forKeys:&v12 count:1];
  v9 = [v5 errorWithDomain:@"com.apple.PhotosGraph.PGFeatureExtractorGraphRelations" code:a3 userInfo:v8];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)floatVectorWithEntity:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [MEMORY[0x277CD97B8] fetchAssetCollectionsContainingAsset:v6 withType:3 options:0];
  v8 = [v7 firstObject];
  v9 = v8;
  if (!v8)
  {
    if (!a4)
    {
      goto LABEL_10;
    }

    v17 = MEMORY[0x277CCACA8];
    v13 = [v6 localIdentifier];
    v18 = [v17 stringWithFormat:@"Asset collection could not be fetched from asset %@", v13];
    *a4 = [(PGFeatureExtractorGraphRelations *)self _generateErrorWithErrorCode:0 andMessage:v18];

    goto LABEL_7;
  }

  v10 = MEMORY[0x277CBEB98];
  v11 = [v8 uuid];
  v12 = [v10 setWithObject:v11];
  v13 = [PGGraphMomentNodeCollection momentNodesForUUIDs:v12 inGraph:self->_graph];

  if (![v13 isEmpty])
  {
    a4 = [(PGFeatureExtractorGraphRelations *)self floatVectorWithMomentNodeCollection:v13 error:a4];
    goto LABEL_9;
  }

  if (a4)
  {
    v14 = MEMORY[0x277CCACA8];
    v15 = [v6 localIdentifier];
    v16 = [v14 stringWithFormat:@"Moment node could not be fetched from asset collection of asset %@", v15];
    *a4 = [(PGFeatureExtractorGraphRelations *)self _generateErrorWithErrorCode:1 andMessage:v16];

LABEL_7:
    a4 = 0;
  }

LABEL_9:

LABEL_10:

  return a4;
}

- (id)floatVectorWithMomentNodeCollection:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(PGFeatureExtractorGraphRelations *)self featureExtractor];
  v8 = [v7 floatVectorWithEntity:v6 error:a4];

  return v8;
}

- (int64_t)featureLength
{
  v2 = [(PGFeatureExtractorGraphRelations *)self featureExtractor];
  v3 = [v2 featureNames];
  v4 = [v3 count];

  return v4;
}

- (id)featureNames
{
  v2 = [(PGFeatureExtractorGraphRelations *)self featureExtractor];
  v3 = [v2 featureNames];

  return v3;
}

- (id)name
{
  v2 = [(PGFeatureExtractorGraphRelations *)self featureExtractor];
  v3 = [v2 name];

  return v3;
}

- (PGFeatureExtractorGraphRelations)initWithGraph:(id)a3 featureExtractor:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = PGFeatureExtractorGraphRelations;
  v9 = [(PGFeatureExtractorGraphRelations *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_graph, a3);
    objc_storeStrong(&v10->_featureExtractor, a4);
  }

  return v10;
}

@end