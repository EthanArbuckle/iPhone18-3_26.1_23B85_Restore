@interface PLSearchDonationProgressVersionProvider
- (PLSearchDonationProgressVersionProvider)init;
@end

@implementation PLSearchDonationProgressVersionProvider

- (PLSearchDonationProgressVersionProvider)init
{
  v19.receiver = self;
  v19.super_class = PLSearchDonationProgressVersionProvider;
  v2 = [(PLSearchDonationProgressVersionProvider *)&v19 init];
  if (v2)
  {
    v3 = +[PLMediaAnalysisServiceRequestAdapter currentOCRAlgorithmVersion];
    v2->_characterRecognitionAlgorithmVersion = [v3 shortValue];

    v4 = +[PLMediaAnalysisServiceRequestAdapter currentFaceVersion];
    v2->_faceAnalysisVersion = [v4 shortValue];

    v5 = +[PLMediaAnalysisServiceRequestAdapter currentMediaAnalysisImageVersion];
    v2->_mediaAnalysisImageVersion = [v5 shortValue];

    v6 = +[PLMediaAnalysisServiceRequestAdapter currentMediaAnalysisVersion];
    v2->_mediaAnalysisVersion = [v6 unsignedLongLongValue];

    v7 = +[PLMediaAnalysisServiceRequestAdapter currentSceneVersion];
    v2->_sceneAnalysisVersion = [v7 shortValue];

    v8 = +[PLMediaAnalysisServiceRequestAdapter currentImageEmbeddingVersion];
    v2->_imageEmbeddingVersion = [v8 shortValue];

    v9 = +[PLMediaAnalysisServiceRequestAdapter currentVideoEmbeddingVersion];
    v2->_videoEmbeddingVersion = [v9 shortValue];

    v10 = +[PLMediaAnalysisServiceRequestAdapter currentStickerConfidenceAlgorithmVersion];
    v2->_stickerConfidenceAlgorithmVersion = [v10 shortValue];

    v11 = +[PLMediaAnalysisServiceRequestAdapter currentVaAnalysisAlgorithmVersion];
    v2->_vaAnalysisVersion = [v11 shortValue];

    v12 = +[PLMediaAnalysisServiceRequestAdapter currentVaLocationAnalysisAlgorithmVersion];
    v2->_vaLocationAnalysisVersion = [v12 shortValue];

    v13 = +[PLMediaAnalysisServiceRequestAdapter currentVisualSearchAlgorithmVersion];
    v2->_visualSearchAlgorithmVersion = [v13 shortValue];

    v14 = +[PLMediaAnalysisServiceRequestAdapter currentCaptionGenerationVersion];
    v2->_captionGenerationVersion = [v14 shortValue];

    v15 = +[PLMediaAnalysisServiceRequestAdapter currentVideoSensitivityAnalysisVersion];
    v2->_videoSensitivityAnalysisVersion = [v15 shortValue];

    v16 = +[PLMediaAnalysisServiceRequestAdapter currentTUAlgorithmVersion];
    v2->_textUnderstandingAlgorithmVersion = [v16 shortValue];

    v17 = +[PLMediaAnalysisServiceRequestAdapter currentTUGatingVersion];
    v2->_textUnderstandingGatingVersion = [v17 shortValue];
  }

  return v2;
}

@end