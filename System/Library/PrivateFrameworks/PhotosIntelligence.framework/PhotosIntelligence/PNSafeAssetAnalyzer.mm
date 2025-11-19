@interface PNSafeAssetAnalyzer
- (PNSafeAssetAnalyzer)initWithPhotoLibrary:(id)a3;
@end

@implementation PNSafeAssetAnalyzer

- (PNSafeAssetAnalyzer)initWithPhotoLibrary:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = PNSafeAssetAnalyzer;
  v5 = [(PNSafeAssetAnalyzer *)&v9 init];
  if (v5)
  {
    v6 = [[_PNSafeAssetAnalyzer alloc] initWithPhotoLibrary:v4 computeIsUtilityForMemories:1];
    safeAssetAnalyzer = v5->_safeAssetAnalyzer;
    v5->_safeAssetAnalyzer = v6;
  }

  return v5;
}

@end