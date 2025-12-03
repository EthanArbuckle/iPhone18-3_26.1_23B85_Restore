@interface CRNeuralTextDetector
+ (CGSize)smallestImageSizeForTextWithRelativeHeight:(double)height originalImageSize:(CGSize)size configuration:(id)configuration;
+ (id)_lineRegionFromLineTextFeature:(id)feature imageSize:(CGSize)size;
+ (id)textFeaturesFromPolygons:(void *)polygons withScale:(const float *)scale withNMSOutputScale:(unint64_t)outputScale;
- (CRNeuralTextDetector)init;
- (id)detectInImage:(id)image trackingSession:(id)session delegate:(id)delegate error:(id *)error;
@end

@implementation CRNeuralTextDetector

+ (id)_lineRegionFromLineTextFeature:(id)feature imageSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  featureCopy = feature;
  v7 = sub_1B410FA4C(featureCopy, width, height);

  return v7;
}

- (CRNeuralTextDetector)init
{
  v5.receiver = self;
  v5.super_class = CRNeuralTextDetector;
  v2 = [(CRNeuralTextDetector *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(CRNeuralTextDetector *)v2 setDetectorStats:0];
    [(CRNeuralTextDetector *)v3 setPostProcStats:0];
    [(CRNeuralTextDetector *)v3 setInferenceStats:0];
    [(CRNeuralTextDetector *)v3 setShouldCancel:0];
  }

  return v3;
}

+ (id)textFeaturesFromPolygons:(void *)polygons withScale:(const float *)scale withNMSOutputScale:(unint64_t)outputScale
{
  array = [MEMORY[0x1E695DF70] array];
  if (*(polygons + 1) != *polygons)
  {
    CRDetectorUtils::sortQuadWithRotation(*polygons);
  }

  return array;
}

- (id)detectInImage:(id)image trackingSession:(id)session delegate:(id)delegate error:(id *)error
{
  v6 = [(CRNeuralTextDetector *)self detectInImage:image delegate:delegate error:error];

  return v6;
}

+ (CGSize)smallestImageSizeForTextWithRelativeHeight:(double)height originalImageSize:(CGSize)size configuration:(id)configuration
{
  v5 = *MEMORY[0x1E695F060];
  v6 = *(MEMORY[0x1E695F060] + 8);
  result.height = v6;
  result.width = v5;
  return result;
}

@end