@interface PHFace(PNFaceProtocol)
- (id)faceprintData;
- (void)setQualityMeasure:()PNFaceProtocol;
@end

@implementation PHFace(PNFaceProtocol)

- (void)setQualityMeasure:()PNFaceProtocol
{
  v4 = [MEMORY[0x1E69787D8] changeRequestForFace:a1];
  [v4 setQualityMeasure:a3];
}

- (id)faceprintData
{
  [a1 fetchPropertySetsIfNeeded];
  v2 = [a1 faceClusteringProperties];
  v3 = [v2 faceprint];
  v4 = [v3 faceprintData];

  return v4;
}

@end