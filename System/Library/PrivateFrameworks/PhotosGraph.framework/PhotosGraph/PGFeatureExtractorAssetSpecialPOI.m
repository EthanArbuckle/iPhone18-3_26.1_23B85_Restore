@interface PGFeatureExtractorAssetSpecialPOI
- (PGFeatureExtractorAssetSpecialPOI)initWithGraph:(id)a3;
- (id)_generateErrorWithErrorCode:(int64_t)a3 andMessage:(id)a4;
- (id)featureNames;
- (id)floatVectorWithEntity:(id)a3 error:(id *)a4;
- (id)floatVectorWithMoment:(id)a3 error:(id *)a4;
@end

@implementation PGFeatureExtractorAssetSpecialPOI

- (id)_generateErrorWithErrorCode:(int64_t)a3 andMessage:(id)a4
{
  v13[1] = *MEMORY[0x277D85DE8];
  v5 = MEMORY[0x277CCA9B8];
  v12 = *MEMORY[0x277CCA450];
  v13[0] = a4;
  v6 = MEMORY[0x277CBEAC0];
  v7 = a4;
  v8 = [v6 dictionaryWithObjects:v13 forKeys:&v12 count:1];
  v9 = [v5 errorWithDomain:@"com.apple.PhotosGraph.PGFeatureExtractorSpecialPOIDomain" code:a3 userInfo:v8];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)floatVectorWithEntity:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [MEMORY[0x277CD97B8] fetchAssetCollectionsContainingAsset:v6 withType:3 options:0];
  v8 = [v7 firstObject];
  if (!v8)
  {
    if (!a4)
    {
      goto LABEL_10;
    }

    v11 = MEMORY[0x277CCACA8];
    v10 = [v6 localIdentifier];
    v12 = [v11 stringWithFormat:@"Asset collection could not be fetched from asset %@", v10];
    *a4 = [(PGFeatureExtractorAssetSpecialPOI *)self _generateErrorWithErrorCode:0 andMessage:v12];

LABEL_8:
    a4 = 0;
    goto LABEL_9;
  }

  v9 = [(PGGraph *)self->_graph momentNodeForMoment:v8];
  if (!v9)
  {
    if (!a4)
    {
      v10 = 0;
      goto LABEL_9;
    }

    v13 = MEMORY[0x277CCACA8];
    v14 = [v6 localIdentifier];
    v15 = [v13 stringWithFormat:@"Moment node could not be fetched from asset collection of asset %@", v14];
    *a4 = [(PGFeatureExtractorAssetSpecialPOI *)self _generateErrorWithErrorCode:1 andMessage:v15];

    v10 = 0;
    goto LABEL_8;
  }

  v10 = v9;
  a4 = [(PGFeatureExtractorAssetSpecialPOI *)self floatVectorWithMoment:v9 error:a4];
LABEL_9:

LABEL_10:

  return a4;
}

- (id)floatVectorWithMoment:(id)a3 error:(id *)a4
{
  v14[1] = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [PGSpecialPOIResolver alloc];
  v14[0] = v5;
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

- (PGFeatureExtractorAssetSpecialPOI)initWithGraph:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = PGFeatureExtractorAssetSpecialPOI;
  v6 = [(PGFeatureExtractorAssetSpecialPOI *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_graph, a3);
  }

  return v7;
}

@end