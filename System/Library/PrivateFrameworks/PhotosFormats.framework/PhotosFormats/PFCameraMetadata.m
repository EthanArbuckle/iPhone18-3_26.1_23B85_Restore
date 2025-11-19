@interface PFCameraMetadata
- (NSData)JSONDebugDescription;
- (PFCameraMetadata)initWithCoder:(id)a3;
- (PFCameraMetadata)initWithJunkImageClassificationObservations:(id)a3 imageAestheticsObservation:(id)a4 saliencyObservation:(id)a5 scenePrintObservation:(id)a6 detectedObjectsInfoHumanFaces:(id)a7 detectedObjectsInfoHumanBodies:(id)a8 detectedObjectsInfoCatBodies:(id)a9 detectedObjectsInfoDogBodies:(id)a10 detectedObjectsSalientObjects:(id)a11 smartCamInfo:(id)a12 stitchConfidence:(unint64_t)a13 horizonLinePresent:(BOOL)a14 horizonLineAngleInDegrees:(float)a15 captureFolderPath:(id)a16 semanticDevelopmentGatingObservations:(id)a17 faceObservations:(id)a18 torsoprints:(id)a19 foodAndDrinkObservations:(id)a20 semanticEnhanceScene:(int64_t)a21 contactIDsInProximity:(id)a22 sharedLibraryMode:(int64_t)a23;
- (PFCameraMetadata)initWithSpatialOverCapturePrivateClientMetadata:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PFCameraMetadata

- (PFCameraMetadata)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(PFCameraMetadata *)self init];
  if (v5)
  {
    v6 = [v4 decodeObjectForKey:@"semanticEnhanceScene"];
    v5->_semanticEnhanceScene = [v6 integerValue];

    v7 = [v4 decodeObjectForKey:@"semanticEnhanceSceneConfidence"];
    [v7 floatValue];
    v5->_semanticEnhanceSceneConfidence = v8;

    v9 = MEMORY[0x1E695DFD8];
    v10 = objc_opt_class();
    v11 = [v9 setWithObjects:{v10, getVNRecognizedObjectObservationClass(), 0}];
    v12 = [v4 decodeObjectOfClasses:v11 forKey:@"foodBoxes"];
    foodAndDrinkObservations = v5->_foodAndDrinkObservations;
    v5->_foodAndDrinkObservations = v12;

    v14 = MEMORY[0x1E695DFD8];
    v15 = objc_opt_class();
    v16 = [v14 setWithObjects:{v15, getVNFaceObservationClass(), 0}];
    v17 = [v4 decodeObjectOfClasses:v16 forKey:@"faceBoxes"];
    faceObservations = v5->_faceObservations;
    v5->_faceObservations = v17;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = MEMORY[0x1E696AD98];
  semanticEnhanceScene = self->_semanticEnhanceScene;
  v9 = a3;
  v6 = [v4 numberWithInteger:semanticEnhanceScene];
  [v9 encodeObject:v6 forKey:@"semanticEnhanceScene"];

  semanticEnhanceSceneConfidence = self->_semanticEnhanceSceneConfidence;
  *&semanticEnhanceSceneConfidence = semanticEnhanceSceneConfidence;
  v8 = [MEMORY[0x1E696AD98] numberWithFloat:semanticEnhanceSceneConfidence];
  [v9 encodeObject:v8 forKey:@"semanticEnhanceSceneConfidence"];

  [v9 encodeObject:self->_foodAndDrinkObservations forKey:@"foodBoxes"];
  [v9 encodeObject:self->_faceObservations forKey:@"faceBoxes"];
}

- (NSData)JSONDebugDescription
{
  v3 = objc_opt_new();
  [v3 addObject:self->_junkImageClassificationObservations forKey:@"junkImageClassificationObservations"];
  [v3 addObject:self->_imageAestheticsObservation forKey:@"imageAestheticsObservation"];
  [v3 addObject:self->_detectedHumanFaces forKey:@"humanFaces"];
  [v3 addObject:self->_detectedHumanBodies forKey:@"humanBodies"];
  [v3 addObject:self->_detectedCatBodies forKey:@"catBodies"];
  [v3 addObject:self->_detectedDogBodies forKey:@"dogBodies"];
  [v3 addObject:self->_detectedSalientObjects forKey:@"salientObjects"];
  [v3 addObject:self->_saliencyObservation forKey:@"saliencyObservation"];
  [v3 addObject:self->_scenePrintObservation forKey:@"scenePrintObservation"];
  [v3 addObject:self->_captureFolderPath forKey:@"captureFolderPath"];
  [v3 addObject:self->_semanticDevelopmentGatingObservations forKey:@"semanticDevelopmentGatingObservations"];
  [v3 addObject:self->_faceObservations forKey:@"faceObservations"];
  [v3 addObject:self->_torsoprints forKey:@"torsoprints"];
  [v3 addObject:self->_foodAndDrinkObservations forKey:@"foodAndDrinkObservations"];
  [v3 addObject:self->_smartCamInfo forKey:@"smartCamInfo"];
  [v3 addObject:self->_contactIDsInProximity forKey:@"contactIDsInProximity"];
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_stitchConfidence];
  [v3 addObject:v4 forKey:@"stitchConfidence"];

  v5 = [MEMORY[0x1E696AD98] numberWithBool:self->_horizonLinePresent];
  [v3 addObject:v5 forKey:@"horizonLinePresent"];

  *&v6 = self->_horizonLineAngleInDegrees;
  v7 = [MEMORY[0x1E696AD98] numberWithFloat:v6];
  [v3 addObject:v7 forKey:@"horizonLineAngleInDegrees"];

  v8 = [MEMORY[0x1E696AD98] numberWithInteger:self->_semanticEnhanceScene];
  [v3 addObject:v8 forKey:@"semanticEnhanceScene"];

  v9 = [MEMORY[0x1E696AD98] numberWithInteger:self->_sharedLibraryMode];
  [v3 addObject:v9 forKey:@"sharedLibraryMode"];

  v10 = [v3 JSONDebugData];

  return v10;
}

- (PFCameraMetadata)initWithSpatialOverCapturePrivateClientMetadata:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = PFCameraMetadata;
  v5 = [(PFCameraMetadata *)&v10 init];
  if (v5)
  {
    if (objc_opt_respondsToSelector())
    {
      v6 = [v4 spatialOverCaptureImageStitchingConfidenceScore];
    }

    else
    {
      v6 = 0;
    }

    v5->_stitchConfidence = v6;
    if ((objc_opt_respondsToSelector() & 1) == 0)
    {
      v5->_horizonLinePresent = 0;
      v8 = 0.0;
      goto LABEL_9;
    }

    v7 = [v4 spatialOverCaptureImageHorizonLinePresent];
    v5->_horizonLinePresent = v7;
    if (v7)
    {
      [v4 spatialOverCaptureImageHorizonLineAngleInDegrees];
LABEL_9:
      v5->_horizonLineAngleInDegrees = v8;
    }
  }

  return v5;
}

- (PFCameraMetadata)initWithJunkImageClassificationObservations:(id)a3 imageAestheticsObservation:(id)a4 saliencyObservation:(id)a5 scenePrintObservation:(id)a6 detectedObjectsInfoHumanFaces:(id)a7 detectedObjectsInfoHumanBodies:(id)a8 detectedObjectsInfoCatBodies:(id)a9 detectedObjectsInfoDogBodies:(id)a10 detectedObjectsSalientObjects:(id)a11 smartCamInfo:(id)a12 stitchConfidence:(unint64_t)a13 horizonLinePresent:(BOOL)a14 horizonLineAngleInDegrees:(float)a15 captureFolderPath:(id)a16 semanticDevelopmentGatingObservations:(id)a17 faceObservations:(id)a18 torsoprints:(id)a19 foodAndDrinkObservations:(id)a20 semanticEnhanceScene:(int64_t)a21 contactIDsInProximity:(id)a22 sharedLibraryMode:(int64_t)a23
{
  v50 = a3;
  v49 = a4;
  v48 = a5;
  v47 = a6;
  v35 = a7;
  v46 = a7;
  v45 = a8;
  v44 = a9;
  v43 = a10;
  v42 = a11;
  v41 = a12;
  v29 = a16;
  v40 = a17;
  v39 = a18;
  v38 = a19;
  v37 = a20;
  v30 = a22;
  v51.receiver = self;
  v51.super_class = PFCameraMetadata;
  v31 = [(PFCameraMetadata *)&v51 init];
  v32 = v31;
  if (v31)
  {
    objc_storeStrong(&v31->_junkImageClassificationObservations, a3);
    objc_storeStrong(&v32->_imageAestheticsObservation, a4);
    objc_storeStrong(&v32->_detectedHumanFaces, v35);
    objc_storeStrong(&v32->_detectedHumanBodies, a8);
    objc_storeStrong(&v32->_detectedCatBodies, a9);
    objc_storeStrong(&v32->_detectedDogBodies, a10);
    objc_storeStrong(&v32->_detectedSalientObjects, a11);
    objc_storeStrong(&v32->_saliencyObservation, a5);
    objc_storeStrong(&v32->_scenePrintObservation, a6);
    objc_storeStrong(&v32->_captureFolderPath, a16);
    objc_storeStrong(&v32->_semanticDevelopmentGatingObservations, a17);
    objc_storeStrong(&v32->_faceObservations, a18);
    objc_storeStrong(&v32->_torsoprints, a19);
    objc_storeStrong(&v32->_foodAndDrinkObservations, a20);
    objc_storeStrong(&v32->_smartCamInfo, a12);
    objc_storeStrong(&v32->_contactIDsInProximity, a22);
    v32->_stitchConfidence = a13;
    v32->_horizonLinePresent = a14;
    v32->_horizonLineAngleInDegrees = a15;
    v32->_semanticEnhanceScene = a21;
    v32->_sharedLibraryMode = a23;
  }

  return v32;
}

@end