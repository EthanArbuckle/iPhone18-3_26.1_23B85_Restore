@interface PHFace(PNFaceProtocol)
- (id)faceprintData;
- (void)setQualityMeasure:()PNFaceProtocol;
@end

@implementation PHFace(PNFaceProtocol)

- (void)setQualityMeasure:()PNFaceProtocol
{
  v4 = [MEMORY[0x1E69787D8] changeRequestForFace:self];
  [v4 setQualityMeasure:a3];
}

- (id)faceprintData
{
  [self fetchPropertySetsIfNeeded];
  faceClusteringProperties = [self faceClusteringProperties];
  faceprint = [faceClusteringProperties faceprint];
  faceprintData = [faceprint faceprintData];

  return faceprintData;
}

@end