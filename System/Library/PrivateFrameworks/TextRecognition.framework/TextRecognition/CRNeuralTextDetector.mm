@interface CRNeuralTextDetector
+ (CGSize)smallestImageSizeForTextWithRelativeHeight:(double)a3 originalImageSize:(CGSize)a4 configuration:(id)a5;
+ (id)_lineRegionFromLineTextFeature:(id)a3 imageSize:(CGSize)a4;
+ (id)textFeaturesFromPolygons:(void *)a3 withScale:(const float *)a4 withNMSOutputScale:(unint64_t)a5;
- (CRNeuralTextDetector)init;
- (id)detectInImage:(id)a3 trackingSession:(id)a4 delegate:(id)a5 error:(id *)a6;
@end

@implementation CRNeuralTextDetector

+ (id)_lineRegionFromLineTextFeature:(id)a3 imageSize:(CGSize)a4
{
  height = a4.height;
  width = a4.width;
  v6 = a3;
  v7 = sub_1B410FA4C(v6, width, height);

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

+ (id)textFeaturesFromPolygons:(void *)a3 withScale:(const float *)a4 withNMSOutputScale:(unint64_t)a5
{
  v7 = [MEMORY[0x1E695DF70] array];
  if (*(a3 + 1) != *a3)
  {
    CRDetectorUtils::sortQuadWithRotation(*a3);
  }

  return v7;
}

- (id)detectInImage:(id)a3 trackingSession:(id)a4 delegate:(id)a5 error:(id *)a6
{
  v6 = [(CRNeuralTextDetector *)self detectInImage:a3 delegate:a5 error:a6];

  return v6;
}

+ (CGSize)smallestImageSizeForTextWithRelativeHeight:(double)a3 originalImageSize:(CGSize)a4 configuration:(id)a5
{
  v5 = *MEMORY[0x1E695F060];
  v6 = *(MEMORY[0x1E695F060] + 8);
  result.height = v6;
  result.width = v5;
  return result;
}

@end