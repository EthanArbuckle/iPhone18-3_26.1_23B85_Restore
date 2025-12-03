@interface PFCameraMetadata
- (NSData)JSONDebugDescription;
- (PFCameraMetadata)initWithCoder:(id)coder;
- (PFCameraMetadata)initWithJunkImageClassificationObservations:(id)observations imageAestheticsObservation:(id)observation saliencyObservation:(id)saliencyObservation scenePrintObservation:(id)printObservation detectedObjectsInfoHumanFaces:(id)faces detectedObjectsInfoHumanBodies:(id)bodies detectedObjectsInfoCatBodies:(id)catBodies detectedObjectsInfoDogBodies:(id)self0 detectedObjectsSalientObjects:(id)self1 smartCamInfo:(id)self2 stitchConfidence:(unint64_t)self3 horizonLinePresent:(BOOL)self4 horizonLineAngleInDegrees:(float)self5 captureFolderPath:(id)self6 semanticDevelopmentGatingObservations:(id)self7 faceObservations:(id)self8 torsoprints:(id)self9 foodAndDrinkObservations:(id)drinkObservations semanticEnhanceScene:(int64_t)scene contactIDsInProximity:(id)proximity sharedLibraryMode:(int64_t)mode;
- (PFCameraMetadata)initWithSpatialOverCapturePrivateClientMetadata:(id)metadata;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PFCameraMetadata

- (PFCameraMetadata)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(PFCameraMetadata *)self init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectForKey:@"semanticEnhanceScene"];
    v5->_semanticEnhanceScene = [v6 integerValue];

    v7 = [coderCopy decodeObjectForKey:@"semanticEnhanceSceneConfidence"];
    [v7 floatValue];
    v5->_semanticEnhanceSceneConfidence = v8;

    v9 = MEMORY[0x1E695DFD8];
    v10 = objc_opt_class();
    v11 = [v9 setWithObjects:{v10, getVNRecognizedObjectObservationClass(), 0}];
    v12 = [coderCopy decodeObjectOfClasses:v11 forKey:@"foodBoxes"];
    foodAndDrinkObservations = v5->_foodAndDrinkObservations;
    v5->_foodAndDrinkObservations = v12;

    v14 = MEMORY[0x1E695DFD8];
    v15 = objc_opt_class();
    v16 = [v14 setWithObjects:{v15, getVNFaceObservationClass(), 0}];
    v17 = [coderCopy decodeObjectOfClasses:v16 forKey:@"faceBoxes"];
    faceObservations = v5->_faceObservations;
    v5->_faceObservations = v17;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v4 = MEMORY[0x1E696AD98];
  semanticEnhanceScene = self->_semanticEnhanceScene;
  coderCopy = coder;
  v6 = [v4 numberWithInteger:semanticEnhanceScene];
  [coderCopy encodeObject:v6 forKey:@"semanticEnhanceScene"];

  semanticEnhanceSceneConfidence = self->_semanticEnhanceSceneConfidence;
  *&semanticEnhanceSceneConfidence = semanticEnhanceSceneConfidence;
  v8 = [MEMORY[0x1E696AD98] numberWithFloat:semanticEnhanceSceneConfidence];
  [coderCopy encodeObject:v8 forKey:@"semanticEnhanceSceneConfidence"];

  [coderCopy encodeObject:self->_foodAndDrinkObservations forKey:@"foodBoxes"];
  [coderCopy encodeObject:self->_faceObservations forKey:@"faceBoxes"];
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

  jSONDebugData = [v3 JSONDebugData];

  return jSONDebugData;
}

- (PFCameraMetadata)initWithSpatialOverCapturePrivateClientMetadata:(id)metadata
{
  metadataCopy = metadata;
  v10.receiver = self;
  v10.super_class = PFCameraMetadata;
  v5 = [(PFCameraMetadata *)&v10 init];
  if (v5)
  {
    if (objc_opt_respondsToSelector())
    {
      spatialOverCaptureImageStitchingConfidenceScore = [metadataCopy spatialOverCaptureImageStitchingConfidenceScore];
    }

    else
    {
      spatialOverCaptureImageStitchingConfidenceScore = 0;
    }

    v5->_stitchConfidence = spatialOverCaptureImageStitchingConfidenceScore;
    if ((objc_opt_respondsToSelector() & 1) == 0)
    {
      v5->_horizonLinePresent = 0;
      v8 = 0.0;
      goto LABEL_9;
    }

    spatialOverCaptureImageHorizonLinePresent = [metadataCopy spatialOverCaptureImageHorizonLinePresent];
    v5->_horizonLinePresent = spatialOverCaptureImageHorizonLinePresent;
    if (spatialOverCaptureImageHorizonLinePresent)
    {
      [metadataCopy spatialOverCaptureImageHorizonLineAngleInDegrees];
LABEL_9:
      v5->_horizonLineAngleInDegrees = v8;
    }
  }

  return v5;
}

- (PFCameraMetadata)initWithJunkImageClassificationObservations:(id)observations imageAestheticsObservation:(id)observation saliencyObservation:(id)saliencyObservation scenePrintObservation:(id)printObservation detectedObjectsInfoHumanFaces:(id)faces detectedObjectsInfoHumanBodies:(id)bodies detectedObjectsInfoCatBodies:(id)catBodies detectedObjectsInfoDogBodies:(id)self0 detectedObjectsSalientObjects:(id)self1 smartCamInfo:(id)self2 stitchConfidence:(unint64_t)self3 horizonLinePresent:(BOOL)self4 horizonLineAngleInDegrees:(float)self5 captureFolderPath:(id)self6 semanticDevelopmentGatingObservations:(id)self7 faceObservations:(id)self8 torsoprints:(id)self9 foodAndDrinkObservations:(id)drinkObservations semanticEnhanceScene:(int64_t)scene contactIDsInProximity:(id)proximity sharedLibraryMode:(int64_t)mode
{
  observationsCopy = observations;
  observationCopy = observation;
  saliencyObservationCopy = saliencyObservation;
  printObservationCopy = printObservation;
  facesCopy = faces;
  facesCopy2 = faces;
  bodiesCopy = bodies;
  catBodiesCopy = catBodies;
  dogBodiesCopy = dogBodies;
  objectsCopy = objects;
  infoCopy = info;
  pathCopy = path;
  gatingObservationsCopy = gatingObservations;
  faceObservationsCopy = faceObservations;
  torsoprintsCopy = torsoprints;
  drinkObservationsCopy = drinkObservations;
  proximityCopy = proximity;
  v51.receiver = self;
  v51.super_class = PFCameraMetadata;
  v31 = [(PFCameraMetadata *)&v51 init];
  v32 = v31;
  if (v31)
  {
    objc_storeStrong(&v31->_junkImageClassificationObservations, observations);
    objc_storeStrong(&v32->_imageAestheticsObservation, observation);
    objc_storeStrong(&v32->_detectedHumanFaces, facesCopy);
    objc_storeStrong(&v32->_detectedHumanBodies, bodies);
    objc_storeStrong(&v32->_detectedCatBodies, catBodies);
    objc_storeStrong(&v32->_detectedDogBodies, dogBodies);
    objc_storeStrong(&v32->_detectedSalientObjects, objects);
    objc_storeStrong(&v32->_saliencyObservation, saliencyObservation);
    objc_storeStrong(&v32->_scenePrintObservation, printObservation);
    objc_storeStrong(&v32->_captureFolderPath, path);
    objc_storeStrong(&v32->_semanticDevelopmentGatingObservations, gatingObservations);
    objc_storeStrong(&v32->_faceObservations, faceObservations);
    objc_storeStrong(&v32->_torsoprints, torsoprints);
    objc_storeStrong(&v32->_foodAndDrinkObservations, drinkObservations);
    objc_storeStrong(&v32->_smartCamInfo, info);
    objc_storeStrong(&v32->_contactIDsInProximity, proximity);
    v32->_stitchConfidence = confidence;
    v32->_horizonLinePresent = present;
    v32->_horizonLineAngleInDegrees = degrees;
    v32->_semanticEnhanceScene = scene;
    v32->_sharedLibraryMode = mode;
  }

  return v32;
}

@end