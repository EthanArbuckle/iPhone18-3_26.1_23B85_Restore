@interface PGWallpaperLibraryAnalysisSummary
- (PGWallpaperLibraryAnalysisSummary)initWithPhotoLibrary:(id)library;
@end

@implementation PGWallpaperLibraryAnalysisSummary

- (PGWallpaperLibraryAnalysisSummary)initWithPhotoLibrary:(id)library
{
  libraryCopy = library;
  v17.receiver = self;
  v17.super_class = PGWallpaperLibraryAnalysisSummary;
  v5 = [(PGWallpaperLibraryAnalysisSummary *)&v17 init];
  v6 = v5;
  if (v5)
  {
    *&v5->_libraryIsProcessedEnough = 0;
    v5->_ratioOfAssetsAtOrAboveSceneAnalysisVersion = 0.0;
    v5->_ratioOfAssetsAtOrAboveFaceAnalysisVersion = 0.0;
    [libraryCopy ratioOfAssetsAtOrAboveSceneAnalysisVersion:88];
    v6->_ratioOfAssetsAtOrAboveSceneAnalysisVersion = v7;
    faceAnalysisProgressCounts = [libraryCopy faceAnalysisProgressCounts];
    v9 = [faceAnalysisProgressCounts objectForKeyedSubscript:*MEMORY[0x277D267F8]];
    v10 = [faceAnalysisProgressCounts objectForKeyedSubscript:*MEMORY[0x277D26800]];
    [v10 doubleValue];
    v12 = v11;

    v13 = 0.0;
    if (v12 > 0.0)
    {
      [v9 doubleValue];
      v13 = v14 / v12;
    }

    v6->_ratioOfAssetsAtOrAboveFaceAnalysisVersion = v13;
    v15 = v6->_ratioOfAssetsAtOrAboveSceneAnalysisVersion >= 0.75;
    if (v13 < 0.75)
    {
      v15 = 0;
    }

    v6->_libraryIsProcessedEnough = v15;
    v6->_libraryIsEmpty = v12 == 0.0;
  }

  return v6;
}

@end