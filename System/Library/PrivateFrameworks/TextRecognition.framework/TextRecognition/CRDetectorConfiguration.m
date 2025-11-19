@interface CRDetectorConfiguration
- (BOOL)detectTables;
- (BOOL)disableScriptDetection;
- (BOOL)disableTextTypeDetection;
- (BOOL)extractPolygons;
- (BOOL)logIntermediateResults;
- (BOOL)mergeFullTile;
- (BOOL)runFineScale;
- (BOOL)runFullTile;
- (BOOL)skipVerticalText;
- (BOOL)useScaleTraversal;
- (CGSize)maximumInputSize;
- (CGSize)minimumInputSize;
- (CGSize)tileSize;
- (MTLDevice)metalDevice;
- (NSDictionary)scriptRatioThresholds;
- (NSString)customModelPath;
- (NSString)prioritization;
- (double)inputLengthLimit;
- (double)minimumTextHeight;
- (unint64_t)computeDeviceType;
- (void)setComputeDeviceType:(unint64_t)a3;
- (void)setCustomModelPath:(id)a3;
- (void)setDetectTables:(BOOL)a3;
- (void)setDisableScriptDetection:(BOOL)a3;
- (void)setDisableTextTypeDetection:(BOOL)a3;
- (void)setExtractPolygons:(BOOL)a3;
- (void)setInputLengthLimit:(double)a3;
- (void)setLogIntermediateResults:(BOOL)a3;
- (void)setMaximumInputSize:(CGSize)a3;
- (void)setMergeFullTile:(BOOL)a3;
- (void)setMetalDevice:(id)a3;
- (void)setMinimumTextHeight:(double)a3;
- (void)setPrioritization:(id)a3;
- (void)setRunFineScale:(BOOL)a3;
- (void)setRunFullTile:(BOOL)a3;
- (void)setScriptRatioThresholds:(id)a3;
- (void)setSkipVerticalText:(BOOL)a3;
- (void)setUseScaleTraversal:(BOOL)a3;
@end

@implementation CRDetectorConfiguration

- (BOOL)detectTables
{
  v3 = OBJC_IVAR___CRDetectorConfiguration_detectTables;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setDetectTables:(BOOL)a3
{
  v5 = OBJC_IVAR___CRDetectorConfiguration_detectTables;
  swift_beginAccess();
  *(self + v5) = a3;
}

- (BOOL)skipVerticalText
{
  v3 = OBJC_IVAR___CRDetectorConfiguration_skipVerticalText;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setSkipVerticalText:(BOOL)a3
{
  v5 = OBJC_IVAR___CRDetectorConfiguration_skipVerticalText;
  swift_beginAccess();
  *(self + v5) = a3;
}

- (BOOL)logIntermediateResults
{
  v3 = OBJC_IVAR___CRDetectorConfiguration_logIntermediateResults;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setLogIntermediateResults:(BOOL)a3
{
  v5 = OBJC_IVAR___CRDetectorConfiguration_logIntermediateResults;
  swift_beginAccess();
  *(self + v5) = a3;
}

- (NSString)customModelPath
{
  v2 = self + OBJC_IVAR___CRDetectorConfiguration_customModelPath;
  swift_beginAccess();
  if (*(v2 + 1))
  {

    v3 = sub_1B429FB88();
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setCustomModelPath:(id)a3
{
  if (a3)
  {
    v4 = sub_1B429FB98();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v7 = (self + OBJC_IVAR___CRDetectorConfiguration_customModelPath);
  swift_beginAccess();
  *v7 = v4;
  v7[1] = v6;
}

- (BOOL)disableScriptDetection
{
  v3 = OBJC_IVAR___CRDetectorConfiguration_disableScriptDetection;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setDisableScriptDetection:(BOOL)a3
{
  v5 = OBJC_IVAR___CRDetectorConfiguration_disableScriptDetection;
  swift_beginAccess();
  *(self + v5) = a3;
}

- (BOOL)disableTextTypeDetection
{
  v3 = OBJC_IVAR___CRDetectorConfiguration_disableTextTypeDetection;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setDisableTextTypeDetection:(BOOL)a3
{
  v5 = OBJC_IVAR___CRDetectorConfiguration_disableTextTypeDetection;
  swift_beginAccess();
  *(self + v5) = a3;
}

- (BOOL)runFullTile
{
  v3 = OBJC_IVAR___CRDetectorConfiguration_runFullTile;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setRunFullTile:(BOOL)a3
{
  v5 = OBJC_IVAR___CRDetectorConfiguration_runFullTile;
  swift_beginAccess();
  *(self + v5) = a3;
}

- (BOOL)runFineScale
{
  v3 = OBJC_IVAR___CRDetectorConfiguration_runFineScale;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setRunFineScale:(BOOL)a3
{
  v5 = OBJC_IVAR___CRDetectorConfiguration_runFineScale;
  swift_beginAccess();
  *(self + v5) = a3;
}

- (BOOL)mergeFullTile
{
  v3 = OBJC_IVAR___CRDetectorConfiguration_mergeFullTile;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setMergeFullTile:(BOOL)a3
{
  v5 = OBJC_IVAR___CRDetectorConfiguration_mergeFullTile;
  swift_beginAccess();
  *(self + v5) = a3;
}

- (BOOL)useScaleTraversal
{
  v3 = OBJC_IVAR___CRDetectorConfiguration_useScaleTraversal;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setUseScaleTraversal:(BOOL)a3
{
  v5 = OBJC_IVAR___CRDetectorConfiguration_useScaleTraversal;
  swift_beginAccess();
  *(self + v5) = a3;
}

- (BOOL)extractPolygons
{
  v3 = OBJC_IVAR___CRDetectorConfiguration_extractPolygons;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setExtractPolygons:(BOOL)a3
{
  v5 = OBJC_IVAR___CRDetectorConfiguration_extractPolygons;
  swift_beginAccess();
  *(self + v5) = a3;
}

- (CGSize)tileSize
{
  v2 = *(self + OBJC_IVAR___CRDetectorConfiguration_tileSize);
  v3 = *(self + OBJC_IVAR___CRDetectorConfiguration_tileSize + 8);
  result.height = v3;
  result.width = v2;
  return result;
}

- (NSString)prioritization
{
  swift_beginAccess();

  v2 = sub_1B429FB88();

  return v2;
}

- (void)setPrioritization:(id)a3
{
  v4 = sub_1B429FB98();
  v6 = v5;
  v7 = (self + OBJC_IVAR___CRDetectorConfiguration_prioritization);
  swift_beginAccess();
  *v7 = v4;
  v7[1] = v6;
}

- (CGSize)minimumInputSize
{
  v2 = *(self + OBJC_IVAR___CRDetectorConfiguration_minimumInputSize);
  v3 = *(self + OBJC_IVAR___CRDetectorConfiguration_minimumInputSize + 8);
  result.height = v3;
  result.width = v2;
  return result;
}

- (CGSize)maximumInputSize
{
  v2 = (self + OBJC_IVAR___CRDetectorConfiguration_maximumInputSize);
  swift_beginAccess();
  v3 = *v2;
  v4 = v2[1];
  result.height = v4;
  result.width = v3;
  return result;
}

- (void)setMaximumInputSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v5 = (self + OBJC_IVAR___CRDetectorConfiguration_maximumInputSize);
  swift_beginAccess();
  *v5 = width;
  v5[1] = height;
}

- (double)inputLengthLimit
{
  v3 = OBJC_IVAR___CRDetectorConfiguration_inputLengthLimit;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setInputLengthLimit:(double)a3
{
  v5 = OBJC_IVAR___CRDetectorConfiguration_inputLengthLimit;
  swift_beginAccess();
  *(self + v5) = a3;
}

- (double)minimumTextHeight
{
  v3 = OBJC_IVAR___CRDetectorConfiguration_minimumTextHeight;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setMinimumTextHeight:(double)a3
{
  v5 = OBJC_IVAR___CRDetectorConfiguration_minimumTextHeight;
  swift_beginAccess();
  *(self + v5) = a3;
}

- (NSDictionary)scriptRatioThresholds
{
  swift_beginAccess();
  sub_1B40E27B4(0, &qword_1ED95EE90);

  v2 = sub_1B429FAE8();

  return v2;
}

- (void)setScriptRatioThresholds:(id)a3
{
  sub_1B40E27B4(0, &qword_1ED95EE90);
  v4 = sub_1B429FAF8();
  v5 = OBJC_IVAR___CRDetectorConfiguration_scriptRatioThresholds;
  swift_beginAccess();
  *(self + v5) = v4;
}

- (MTLDevice)metalDevice
{
  swift_beginAccess();
  v2 = swift_unknownObjectRetain();

  return v2;
}

- (void)setMetalDevice:(id)a3
{
  v5 = OBJC_IVAR___CRDetectorConfiguration_metalDevice;
  swift_beginAccess();
  *(self + v5) = a3;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
}

- (unint64_t)computeDeviceType
{
  v3 = OBJC_IVAR___CRDetectorConfiguration_computeDeviceType;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setComputeDeviceType:(unint64_t)a3
{
  v5 = OBJC_IVAR___CRDetectorConfiguration_computeDeviceType;
  swift_beginAccess();
  *(self + v5) = a3;
}

@end