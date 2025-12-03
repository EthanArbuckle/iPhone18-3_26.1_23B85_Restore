@interface PLFeatureProcessingAlgorithmVersionProvider
+ (id)descriptionForVersionProvider:(id)provider;
+ (id)provider;
- (PLFeatureProcessingAlgorithmVersionProvider)init;
@end

@implementation PLFeatureProcessingAlgorithmVersionProvider

- (PLFeatureProcessingAlgorithmVersionProvider)init
{
  v6.receiver = self;
  v6.super_class = PLFeatureProcessingAlgorithmVersionProvider;
  v2 = [(PLFeatureProcessingAlgorithmVersionProvider *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  return v3;
}

+ (id)descriptionForVersionProvider:(id)provider
{
  v27[15] = *MEMORY[0x1E69E9840];
  v26[0] = @"scene";
  v3 = MEMORY[0x1E696AD98];
  providerCopy = provider;
  v25 = [v3 numberWithShort:{objc_msgSend(providerCopy, "sceneAnalysisVersion")}];
  v27[0] = v25;
  v26[1] = @"face";
  v24 = [MEMORY[0x1E696AD98] numberWithShort:{objc_msgSend(providerCopy, "faceAnalysisVersion")}];
  v27[1] = v24;
  v26[2] = @"ocr";
  v23 = [MEMORY[0x1E696AD98] numberWithShort:{objc_msgSend(providerCopy, "characterRecognitionAlgorithmVersion")}];
  v27[2] = v23;
  v26[3] = @"tu";
  v22 = [MEMORY[0x1E696AD98] numberWithShort:{objc_msgSend(providerCopy, "textUnderstandingAlgorithmVersion")}];
  v27[3] = v22;
  v26[4] = @"tugate";
  v21 = [MEMORY[0x1E696AD98] numberWithShort:{objc_msgSend(providerCopy, "textUnderstandingGatingVersion")}];
  v27[4] = v21;
  v26[5] = @"vsearch";
  v20 = [MEMORY[0x1E696AD98] numberWithShort:{objc_msgSend(providerCopy, "visualSearchAlgorithmVersion")}];
  v27[5] = v20;
  v26[6] = @"sticker";
  v19 = [MEMORY[0x1E696AD98] numberWithShort:{objc_msgSend(providerCopy, "stickerConfidenceAlgorithmVersion")}];
  v27[6] = v19;
  v26[7] = @"va";
  v5 = [MEMORY[0x1E696AD98] numberWithShort:{objc_msgSend(providerCopy, "vaAnalysisVersion")}];
  v27[7] = v5;
  v26[8] = @"valoc";
  v6 = [MEMORY[0x1E696AD98] numberWithShort:{objc_msgSend(providerCopy, "vaLocationAnalysisVersion")}];
  v27[8] = v6;
  v26[9] = @"media";
  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{objc_msgSend(providerCopy, "mediaAnalysisVersion")}];
  v27[9] = v7;
  v26[10] = @"mediai";
  v8 = [MEMORY[0x1E696AD98] numberWithShort:{objc_msgSend(providerCopy, "mediaAnalysisImageVersion")}];
  v27[10] = v8;
  v26[11] = @"caption";
  v9 = [MEMORY[0x1E696AD98] numberWithShort:{objc_msgSend(providerCopy, "captionGenerationVersion")}];
  v27[11] = v9;
  v26[12] = @"embed";
  v10 = [MEMORY[0x1E696AD98] numberWithShort:{objc_msgSend(providerCopy, "imageEmbeddingVersion")}];
  v27[12] = v10;
  v26[13] = @"vembed";
  v11 = [MEMORY[0x1E696AD98] numberWithShort:{objc_msgSend(providerCopy, "videoEmbeddingVersion")}];
  v27[13] = v11;
  v26[14] = @"vsens";
  v12 = MEMORY[0x1E696AD98];
  videoSensitivityAnalysisVersion = [providerCopy videoSensitivityAnalysisVersion];

  v14 = [v12 numberWithShort:videoSensitivityAnalysisVersion];
  v27[14] = v14;
  v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v27 forKeys:v26 count:15];

  v16 = [MEMORY[0x1E696ACB0] dataWithJSONObject:v15 options:0 error:0];
  v17 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v16 encoding:4];

  return v17;
}

+ (id)provider
{
  v2 = objc_alloc_init(self);
  v3 = +[PLMediaAnalysisServiceRequestAdapter currentSceneVersion];
  [v2 setSceneAnalysisVersion:{objc_msgSend(v3, "shortValue")}];

  v4 = +[PLMediaAnalysisServiceRequestAdapter currentFaceVersion];
  [v2 setFaceAnalysisVersion:{objc_msgSend(v4, "shortValue")}];

  v5 = +[PLMediaAnalysisServiceRequestAdapter currentOCRAlgorithmVersion];
  [v2 setCharacterRecognitionAlgorithmVersion:{objc_msgSend(v5, "shortValue")}];

  v6 = +[PLMediaAnalysisServiceRequestAdapter currentTUAlgorithmVersion];
  [v2 setTextUnderstandingAlgorithmVersion:{objc_msgSend(v6, "shortValue")}];

  v7 = +[PLMediaAnalysisServiceRequestAdapter currentTUGatingVersion];
  [v2 setTextUnderstandingGatingVersion:{objc_msgSend(v7, "shortValue")}];

  v8 = +[PLMediaAnalysisServiceRequestAdapter currentVisualSearchAlgorithmVersion];
  [v2 setVisualSearchAlgorithmVersion:{objc_msgSend(v8, "shortValue")}];

  v9 = +[PLMediaAnalysisServiceRequestAdapter currentStickerConfidenceAlgorithmVersion];
  [v2 setStickerConfidenceAlgorithmVersion:{objc_msgSend(v9, "shortValue")}];

  v10 = +[PLMediaAnalysisServiceRequestAdapter currentVaAnalysisAlgorithmVersion];
  [v2 setVaAnalysisVersion:{objc_msgSend(v10, "shortValue")}];

  v11 = +[PLMediaAnalysisServiceRequestAdapter currentVaLocationAnalysisAlgorithmVersion];
  [v2 setVaLocationAnalysisVersion:{objc_msgSend(v11, "shortValue")}];

  v12 = +[PLMediaAnalysisServiceRequestAdapter currentMediaAnalysisVersion];
  [v2 setMediaAnalysisVersion:{objc_msgSend(v12, "unsignedLongLongValue")}];

  v13 = +[PLMediaAnalysisServiceRequestAdapter currentMediaAnalysisImageVersion];
  [v2 setMediaAnalysisImageVersion:{objc_msgSend(v13, "shortValue")}];

  v14 = +[PLMediaAnalysisServiceRequestAdapter currentCaptionGenerationVersion];
  [v2 setCaptionGenerationVersion:{objc_msgSend(v14, "shortValue")}];

  v15 = +[PLMediaAnalysisServiceRequestAdapter currentVideoEmbeddingVersion];
  [v2 setVideoEmbeddingVersion:{objc_msgSend(v15, "shortValue")}];

  v16 = +[PLMediaAnalysisServiceRequestAdapter currentVideoSensitivityAnalysisVersion];
  [v2 setVideoSensitivityAnalysisVersion:{objc_msgSend(v16, "shortValue")}];

  [v2 setSceneAnalysisVersion:1];
  [v2 setFaceAnalysisVersion:1];
  v17 = +[PLMediaAnalysisServiceRequestAdapter mediaAnalysisEmbeddingChangedVersion];
  [v2 setMediaAnalysisVersion:{objc_msgSend(v17, "shortValue")}];

  v18 = +[PLMediaAnalysisServiceRequestAdapter mediaAnalysisEmbeddingChangedVersion];
  [v2 setMediaAnalysisImageVersion:{objc_msgSend(v18, "shortValue")}];

  return v2;
}

@end