@interface VKAnalyticsAnalyzerEvent
- (CGSize)imageSize;
- (VKAnalyticsAnalyzerEvent)initWithExecutionDurations:(id)a3 request:(id)a4 analysis:(id)a5 customIdentifier:(id)a6 error:(id)a7;
- (double)madDocumentDuration;
- (double)madMRCDuration;
- (double)madRoundTripAnalysisDuration;
- (double)madVisualSearchDuration;
- (double)mrcParseDuration;
- (id)coreAnalyticsDictionary;
- (id)description;
@end

@implementation VKAnalyticsAnalyzerEvent

- (VKAnalyticsAnalyzerEvent)initWithExecutionDurations:(id)a3 request:(id)a4 analysis:(id)a5 customIdentifier:(id)a6 error:(id)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a7;
  v30.receiver = self;
  v30.super_class = VKAnalyticsAnalyzerEvent;
  v17 = [(VKAnalyticsEvent *)&v30 initWithCustomIdentifier:a6];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_durations, a3);
    v18->_analysisTypes = [v14 analysisTypes];
    v18->_requestType = [v14 requestType];
    v18->_requestSource = [v14 imageSource];
    [v14 imageSize];
    v18->_imageSize.width = v19;
    v18->_imageSize.height = v20;
    v21 = [v15 imageAnalysisResult];
    v22 = [v21 allLineQuads];
    v18->_lineCount = [v22 count];

    v23 = [v15 imageAnalysisResult];
    v24 = [v23 text];
    v18->_textLength = [v24 length];

    v25 = [v23 textDataDetectorElements];
    v18->_ddCount = [v25 count];

    v26 = [v23 mrcDataDetectorElements];
    v18->_mrcCount = [v26 count];

    v27 = [v23 visualSearchResult];
    v28 = [v27 resultItems];
    v18->_visualSearchCount = [v28 count];

    objc_storeStrong(&v18->_error, a7);
  }

  return v18;
}

- (double)madRoundTripAnalysisDuration
{
  v2 = [(VKAnalyticsAnalyzerEvent *)self durations];
  [v2 madRoundTripAnalysisDuration];
  VKMReplaceIfNan();
  v4 = v3;

  return v4;
}

- (double)madDocumentDuration
{
  v2 = [(VKAnalyticsAnalyzerEvent *)self durations];
  [v2 madDocumentDuration];
  VKMReplaceIfNan();
  v4 = v3;

  return v4;
}

- (double)madMRCDuration
{
  v2 = [(VKAnalyticsAnalyzerEvent *)self durations];
  [v2 madMRCDuration];
  VKMReplaceIfNan();
  v4 = v3;

  return v4;
}

- (double)madVisualSearchDuration
{
  v2 = [(VKAnalyticsAnalyzerEvent *)self durations];
  [v2 madVisualSearchDuration];
  VKMReplaceIfNan();
  v4 = v3;

  return v4;
}

- (double)mrcParseDuration
{
  v2 = [(VKAnalyticsAnalyzerEvent *)self durations];
  [v2 mrcParseDuration];
  VKMReplaceIfNan();
  v4 = v3;

  return v4;
}

- (id)coreAnalyticsDictionary
{
  v38[19] = *MEMORY[0x1E69E9840];
  v37[0] = @"madAnalysisDuration";
  v3 = MEMORY[0x1E696AD98];
  [(VKAnalyticsAnalyzerEvent *)self madRoundTripAnalysisDuration];
  v36 = [v3 numberWithDouble:?];
  v38[0] = v36;
  v37[1] = @"visionExecutionTimeInternal";
  v4 = MEMORY[0x1E696AD98];
  [(VKAnalyticsAnalyzerEvent *)self madDocumentDuration];
  v35 = [v4 numberWithDouble:?];
  v38[1] = v35;
  v37[2] = @"mrcDuration";
  v5 = MEMORY[0x1E696AD98];
  [(VKAnalyticsAnalyzerEvent *)self madMRCDuration];
  v34 = [v5 numberWithDouble:?];
  v38[2] = v34;
  v37[3] = @"vsDuration";
  v6 = MEMORY[0x1E696AD98];
  [(VKAnalyticsAnalyzerEvent *)self madVisualSearchDuration];
  v33 = [v6 numberWithDouble:?];
  v38[3] = v33;
  v37[4] = @"mrcParseDuration";
  v7 = MEMORY[0x1E696AD98];
  [(VKAnalyticsAnalyzerEvent *)self mrcParseDuration];
  v32 = [v7 numberWithDouble:?];
  v38[4] = v32;
  v37[5] = @"analysisTypes";
  v31 = VKMUIStringForAnalysisTypes([(VKAnalyticsAnalyzerEvent *)self analysisTypes]);
  v38[5] = v31;
  v37[6] = @"imageSizeWidth";
  v8 = MEMORY[0x1E696AD98];
  [(VKAnalyticsAnalyzerEvent *)self imageSize];
  v30 = [v8 numberWithDouble:?];
  v38[6] = v30;
  v37[7] = @"imageSizeHeight";
  v9 = MEMORY[0x1E696AD98];
  [(VKAnalyticsAnalyzerEvent *)self imageSize];
  v29 = [v9 numberWithDouble:v10];
  v38[7] = v29;
  v37[8] = @"imageAspectRatio";
  v11 = MEMORY[0x1E696AD98];
  [(VKAnalyticsAnalyzerEvent *)self imageSize];
  v28 = [v11 numberWithDouble:{VKMAspectRatio(v12, v13)}];
  v38[8] = v28;
  v37[9] = @"requestType";
  v27 = VKMUIStringForAnalyzerRequestType([(VKAnalyticsAnalyzerEvent *)self requestType]);
  v38[9] = v27;
  v37[10] = @"requestSource";
  v26 = VKMUIStringForAnalyzerRequestSource([(VKAnalyticsAnalyzerEvent *)self requestSource]);
  v38[10] = v26;
  v37[11] = @"textLength";
  v14 = [MEMORY[0x1E696AD98] numberWithInteger:{-[VKAnalyticsAnalyzerEvent textLength](self, "textLength")}];
  v38[11] = v14;
  v37[12] = @"lineCount";
  v15 = [MEMORY[0x1E696AD98] numberWithInteger:{-[VKAnalyticsAnalyzerEvent lineCount](self, "lineCount")}];
  v38[12] = v15;
  v37[13] = @"ddCount";
  v16 = [MEMORY[0x1E696AD98] numberWithInteger:{-[VKAnalyticsAnalyzerEvent ddCount](self, "ddCount")}];
  v38[13] = v16;
  v37[14] = @"mrcCount";
  v17 = [MEMORY[0x1E696AD98] numberWithInteger:{-[VKAnalyticsAnalyzerEvent mrcCount](self, "mrcCount")}];
  v38[14] = v17;
  v37[15] = @"vsCount";
  v18 = [MEMORY[0x1E696AD98] numberWithInteger:{-[VKAnalyticsAnalyzerEvent visualSearchCount](self, "visualSearchCount")}];
  v38[15] = v18;
  v37[16] = @"bundleIdentifier";
  v19 = [(VKAnalyticsEvent *)self bundleIdentifier];
  v38[16] = v19;
  v37[17] = @"automatedTest";
  v20 = [MEMORY[0x1E696AD98] numberWithBool:{-[VKAnalyticsEvent isPerformingAutomatedTest](self, "isPerformingAutomatedTest")}];
  v38[17] = v20;
  v37[18] = @"hadError";
  v21 = MEMORY[0x1E696AD98];
  v22 = [(VKAnalyticsAnalyzerEvent *)self error];
  v23 = [v21 numberWithInt:v22 != 0];
  v38[18] = v23;
  v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v38 forKeys:v37 count:19];

  return v24;
}

- (id)description
{
  v27 = MEMORY[0x1E696AEC0];
  v28.receiver = self;
  v28.super_class = VKAnalyticsAnalyzerEvent;
  v26 = [(VKAnalyticsAnalyzerEvent *)&v28 description];
  [(VKAnalyticsAnalyzerEvent *)self madRoundTripAnalysisDuration];
  v4 = v3;
  [(VKAnalyticsAnalyzerEvent *)self madDocumentDuration];
  v6 = v5;
  [(VKAnalyticsAnalyzerEvent *)self madVisualSearchDuration];
  v8 = v7;
  [(VKAnalyticsAnalyzerEvent *)self madMRCDuration];
  v10 = v9;
  [(VKAnalyticsAnalyzerEvent *)self mrcParseDuration];
  v12 = v11;
  v25 = VKMUIStringForAnalysisTypes(self->_analysisTypes);
  v24 = VKMUIStringForAnalyzerRequestType(self->_requestType);
  v13 = VKMUIStringForAnalyzerRequestSource(self->_requestSource);
  v14 = VKMUIStringForSize(self->_imageSize.width, self->_imageSize.height);
  textLength = self->_textLength;
  lineCount = self->_lineCount;
  ddCount = self->_ddCount;
  mrcCount = self->_mrcCount;
  visualSearchCount = self->_visualSearchCount;
  v20 = VKMUIStringForBool([(VKAnalyticsEvent *)self isPerformingAutomatedTest]);
  v21 = [(VKAnalyticsEvent *)self bundleIdentifier];
  v22 = [v27 stringWithFormat:@"%@ \n madRoundTripAnalysisDuration: %f \n madDocumentDuration: %f \n madVisualSearchDuration: %f \n madMRCDuration: %f \n mrcParseDuration: %f \n analysisTypes: %@ \n requestType: %@ \n requestSource: %@ \n imageSize: %@ \n textLength: %ld \n lineCount: %ld \n ddCount: %ld \n mrcCount: %ld \n visualSearchCount: %ld \n automatedTest: %@ \n bundleIdentifier: %@ \n error: %@ ", v26, v4, v6, v8, v10, v12, v25, v24, v13, v14, textLength, lineCount, ddCount, mrcCount, visualSearchCount, v20, v21, self->_error];

  return v22;
}

- (CGSize)imageSize
{
  width = self->_imageSize.width;
  height = self->_imageSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end