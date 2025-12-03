@interface PLComputedAssetAttributes
+ (id)fetchRequest;
- (void)setPropertiesFromImageAestheticsObservation:(id)observation;
@end

@implementation PLComputedAssetAttributes

+ (id)fetchRequest
{
  v2 = [objc_alloc(MEMORY[0x1E695D5E0]) initWithEntityName:@"ComputedAssetAttributes"];

  return v2;
}

- (void)setPropertiesFromImageAestheticsObservation:(id)observation
{
  observationCopy = observation;
  [observationCopy wellFramedSubjectScore];
  [(PLComputedAssetAttributes *)self setWellFramedSubjectScore:?];
  [observationCopy tastefullyBlurredScore];
  [(PLComputedAssetAttributes *)self setTastefullyBlurredScore:?];
  [observationCopy sharplyFocusedSubjectScore];
  [(PLComputedAssetAttributes *)self setSharplyFocusedSubjectScore:?];
  [observationCopy wellTimedShotScore];
  [(PLComputedAssetAttributes *)self setWellTimedShotScore:?];
  [observationCopy pleasantLightingScore];
  [(PLComputedAssetAttributes *)self setPleasantLightingScore:?];
  [observationCopy pleasantReflectionsScore];
  [(PLComputedAssetAttributes *)self setPleasantReflectionsScore:?];
  [observationCopy harmoniousColorScore];
  [(PLComputedAssetAttributes *)self setHarmoniousColorScore:?];
  [observationCopy livelyColorScore];
  [(PLComputedAssetAttributes *)self setLivelyColorScore:?];
  [observationCopy pleasantSymmetryScore];
  [(PLComputedAssetAttributes *)self setPleasantSymmetryScore:?];
  [observationCopy pleasantPatternScore];
  [(PLComputedAssetAttributes *)self setPleasantPatternScore:?];
  [observationCopy immersivenessScore];
  [(PLComputedAssetAttributes *)self setImmersivenessScore:?];
  [observationCopy pleasantPerspectiveScore];
  [(PLComputedAssetAttributes *)self setPleasantPerspectiveScore:?];
  [observationCopy pleasantPostProcessingScore];
  [(PLComputedAssetAttributes *)self setPleasantPostProcessingScore:?];
  [observationCopy noiseScore];
  [(PLComputedAssetAttributes *)self setNoiseScore:?];
  [observationCopy noiseScore];
  [(PLComputedAssetAttributes *)self setNoiseScore:?];
  [observationCopy failureScore];
  [(PLComputedAssetAttributes *)self setFailureScore:?];
  [observationCopy pleasantCompositionScore];
  [(PLComputedAssetAttributes *)self setPleasantCompositionScore:?];
  [observationCopy interestingSubjectScore];
  [(PLComputedAssetAttributes *)self setInterestingSubjectScore:?];
  [observationCopy intrusiveObjectPresenceScore];
  [(PLComputedAssetAttributes *)self setIntrusiveObjectPresenceScore:?];
  [observationCopy pleasantCameraTiltScore];
  [(PLComputedAssetAttributes *)self setPleasantCameraTiltScore:?];
  [observationCopy lowKeyLightingScore];
  v6 = v5;

  LODWORD(v7) = v6;

  [(PLComputedAssetAttributes *)self setLowLight:v7];
}

@end