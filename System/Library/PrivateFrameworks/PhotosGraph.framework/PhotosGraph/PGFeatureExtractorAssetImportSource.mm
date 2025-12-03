@interface PGFeatureExtractorAssetImportSource
- (id)featureNames;
- (id)floatVectorWithEntity:(id)entity error:(id *)error;
@end

@implementation PGFeatureExtractorAssetImportSource

- (id)floatVectorWithEntity:(id)entity error:(id *)error
{
  v5 = MEMORY[0x277D22C68];
  entityCopy = entity;
  v7 = [v5 zerosOfCount:{-[PGFeatureExtractorAssetImportSource featureLength](self, "featureLength")}];
  importProperties = [entityCopy importProperties];

  importedBy = [importProperties importedBy];
  if (importedBy < 0xC || importedBy - 14 < 2 || importedBy == 13)
  {
    goto LABEL_2;
  }

  if (importedBy == 12)
  {
    LODWORD(v10) = 1.0;
    [v7 setFloat:v10 atIndex:?];
LABEL_2:
    LODWORD(v10) = 1.0;
    [v7 setFloat:v10 atIndex:?];
  }

  return v7;
}

- (id)featureNames
{
  v5[10] = *MEMORY[0x277D85DE8];
  v5[0] = @"ImportSourceUnknown";
  v5[1] = @"ImportSourceBackCamera";
  v5[2] = @"ImportSourceFrontCamera";
  v5[3] = @"ImportSourcePhotoKit";
  v5[4] = @"ImportSourceCameraConnectionKit";
  v5[5] = @"ImportSourcePhotosApp";
  v5[6] = @"ImportSourceLegacy";
  v5[7] = @"ImportSourceMomentShare";
  v5[8] = @"ImportSourcePhotoKitInternal";
  v5[9] = @"ImportSourceLegacyInternal";
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:10];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

@end