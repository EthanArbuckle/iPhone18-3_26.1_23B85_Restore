@interface CRFeatureSequenceRecognitionInfo
+ (id)infoForRegion:(double)a3 scale:(double)a4 bounds:(double)a5 featureImageSize:(double)a6 rotatedROI:(double)a7;
- (double)bounds;
- (double)featureImageSize;
- (double)orientationConfidence;
- (double)rotatedROI;
- (id)recognizedTextRegion;
- (id)sequenceScriptCategory;
- (id)sequenceScriptOutputResult;
- (id)transientDecodingResult;
- (uint64_t)layoutDirection;
- (uint64_t)orientationAdjustment;
@end

@implementation CRFeatureSequenceRecognitionInfo

+ (id)infoForRegion:(double)a3 scale:(double)a4 bounds:(double)a5 featureImageSize:(double)a6 rotatedROI:(double)a7
{
  v27 = a9;
  objc_opt_self();
  v28 = objc_opt_new();
  v29 = v28;
  if (v28)
  {
    objc_storeStrong((v28 + 16), a9);

    *(v29 + 8) = a1;
    src = a2;
    v36 = a3;
    v37 = a4;
    v38 = a5;
    objc_copyStruct((v29 + 104), &src, 32, 1, 0);
    src = a6;
    v36 = a7;
    objc_copyStruct((v29 + 88), &src, 16, 1, 0);
    src = a11;
    v36 = a12;
    v37 = a13;
    v38 = a14;
    objc_copyStruct((v29 + 136), &src, 32, 1, 0);
    *(v29 + 24) = 0;
    objc_setProperty_atomic(v29, v30, 0, 40);
    objc_setProperty_atomic(v29, v31, 0, 48);
    objc_setProperty_atomic(v29, v32, 0, 56);
    *(v29 + 72) = 0;
    objc_setProperty_atomic(v29, v33, 0, 80);
  }

  else
  {
  }

  return v29;
}

- (double)bounds
{
  if (!a1)
  {
    return 0.0;
  }

  objc_copyStruct(&v2, (a1 + 104), 32, 1, 0);
  return v2;
}

- (double)featureImageSize
{
  if (!a1)
  {
    return 0.0;
  }

  objc_copyStruct(&v2, (a1 + 88), 16, 1, 0);
  return v2;
}

- (double)rotatedROI
{
  if (!a1)
  {
    return 0.0;
  }

  objc_copyStruct(&v2, (a1 + 136), 32, 1, 0);
  return v2;
}

- (uint64_t)orientationAdjustment
{
  if (result)
  {
    return *(result + 24);
  }

  return result;
}

- (double)orientationConfidence
{
  if (a1)
  {
    return *(a1 + 32);
  }

  else
  {
    return 0.0;
  }
}

- (id)sequenceScriptCategory
{
  if (result)
  {
    return objc_getProperty(result, a2, 48, 1);
  }

  return result;
}

- (id)sequenceScriptOutputResult
{
  if (result)
  {
    return objc_getProperty(result, a2, 56, 1);
  }

  return result;
}

- (id)recognizedTextRegion
{
  if (result)
  {
    return objc_getProperty(result, a2, 64, 1);
  }

  return result;
}

- (uint64_t)layoutDirection
{
  if (result)
  {
    return *(result + 72);
  }

  return result;
}

- (id)transientDecodingResult
{
  if (result)
  {
    return objc_getProperty(result, a2, 80, 1);
  }

  return result;
}

@end