@interface PGFeatureExtractorAssetSpecialPOI
- (PGFeatureExtractorAssetSpecialPOI)initWithGraph:(id)graph;
- (id)_generateErrorWithErrorCode:(int64_t)code andMessage:(id)message;
- (id)featureNames;
- (id)floatVectorWithEntity:(id)entity error:(id *)error;
- (id)floatVectorWithMoment:(id)moment error:(id *)error;
@end

@implementation PGFeatureExtractorAssetSpecialPOI

- (id)_generateErrorWithErrorCode:(int64_t)code andMessage:(id)message
{
  v13[1] = *MEMORY[0x277D85DE8];
  v5 = MEMORY[0x277CCA9B8];
  v12 = *MEMORY[0x277CCA450];
  v13[0] = message;
  v6 = MEMORY[0x277CBEAC0];
  messageCopy = message;
  v8 = [v6 dictionaryWithObjects:v13 forKeys:&v12 count:1];
  v9 = [v5 errorWithDomain:@"com.apple.PhotosGraph.PGFeatureExtractorSpecialPOIDomain" code:code userInfo:v8];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)floatVectorWithEntity:(id)entity error:(id *)error
{
  entityCopy = entity;
  v7 = [MEMORY[0x277CD97B8] fetchAssetCollectionsContainingAsset:entityCopy withType:3 options:0];
  firstObject = [v7 firstObject];
  if (!firstObject)
  {
    if (!error)
    {
      goto LABEL_10;
    }

    v11 = MEMORY[0x277CCACA8];
    localIdentifier = [entityCopy localIdentifier];
    v12 = [v11 stringWithFormat:@"Asset collection could not be fetched from asset %@", localIdentifier];
    *error = [(PGFeatureExtractorAssetSpecialPOI *)self _generateErrorWithErrorCode:0 andMessage:v12];

LABEL_8:
    error = 0;
    goto LABEL_9;
  }

  v9 = [(PGGraph *)self->_graph momentNodeForMoment:firstObject];
  if (!v9)
  {
    if (!error)
    {
      localIdentifier = 0;
      goto LABEL_9;
    }

    v13 = MEMORY[0x277CCACA8];
    localIdentifier2 = [entityCopy localIdentifier];
    v15 = [v13 stringWithFormat:@"Moment node could not be fetched from asset collection of asset %@", localIdentifier2];
    *error = [(PGFeatureExtractorAssetSpecialPOI *)self _generateErrorWithErrorCode:1 andMessage:v15];

    localIdentifier = 0;
    goto LABEL_8;
  }

  localIdentifier = v9;
  error = [(PGFeatureExtractorAssetSpecialPOI *)self floatVectorWithMoment:v9 error:error];
LABEL_9:

LABEL_10:

  return error;
}

- (id)floatVectorWithMoment:(id)moment error:(id *)error
{
  v14[1] = *MEMORY[0x277D85DE8];
  momentCopy = moment;
  v6 = [PGSpecialPOIResolver alloc];
  v14[0] = momentCopy;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:1];
  v8 = [(PGSpecialPOIResolver *)v6 initWithMomentNodes:v7];

  v9 = [MEMORY[0x277D22C68] zerosOfCount:{-[PGFeatureExtractorAssetSpecialPOI featureLength](self, "featureLength")}];

  if ([(PGSpecialPOIResolver *)v8 momentsContainSpecialPOI:1 withMomentRatio:1.0])
  {
    LODWORD(v10) = 1.0;
    [v9 setFloat:0 atIndex:v10];
  }

  if ([(PGSpecialPOIResolver *)v8 momentsContainSpecialPOI:2 withMomentRatio:1.0])
  {
    LODWORD(v11) = 1.0;
    [v9 setFloat:1 atIndex:v11];
  }

  v12 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)featureNames
{
  v5[2] = *MEMORY[0x277D85DE8];
  v5[0] = @"Disney";
  v5[1] = @"Universal";
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:2];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

- (PGFeatureExtractorAssetSpecialPOI)initWithGraph:(id)graph
{
  graphCopy = graph;
  v9.receiver = self;
  v9.super_class = PGFeatureExtractorAssetSpecialPOI;
  v6 = [(PGFeatureExtractorAssetSpecialPOI *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_graph, graph);
  }

  return v7;
}

@end