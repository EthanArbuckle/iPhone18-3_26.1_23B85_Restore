@interface PLComputedAssetAttributes
+ (id)fetchRequest;
- (void)setPropertiesFromImageAestheticsObservation:(id)a3;
@end

@implementation PLComputedAssetAttributes

+ (id)fetchRequest
{
  v2 = [objc_alloc(MEMORY[0x1E695D5E0]) initWithEntityName:@"ComputedAssetAttributes"];

  return v2;
}

- (void)setPropertiesFromImageAestheticsObservation:(id)a3
{
  v4 = a3;
  [v4 wellFramedSubjectScore];
  [(PLComputedAssetAttributes *)self setWellFramedSubjectScore:?];
  [v4 tastefullyBlurredScore];
  [(PLComputedAssetAttributes *)self setTastefullyBlurredScore:?];
  [v4 sharplyFocusedSubjectScore];
  [(PLComputedAssetAttributes *)self setSharplyFocusedSubjectScore:?];
  [v4 wellTimedShotScore];
  [(PLComputedAssetAttributes *)self setWellTimedShotScore:?];
  [v4 pleasantLightingScore];
  [(PLComputedAssetAttributes *)self setPleasantLightingScore:?];
  [v4 pleasantReflectionsScore];
  [(PLComputedAssetAttributes *)self setPleasantReflectionsScore:?];
  [v4 harmoniousColorScore];
  [(PLComputedAssetAttributes *)self setHarmoniousColorScore:?];
  [v4 livelyColorScore];
  [(PLComputedAssetAttributes *)self setLivelyColorScore:?];
  [v4 pleasantSymmetryScore];
  [(PLComputedAssetAttributes *)self setPleasantSymmetryScore:?];
  [v4 pleasantPatternScore];
  [(PLComputedAssetAttributes *)self setPleasantPatternScore:?];
  [v4 immersivenessScore];
  [(PLComputedAssetAttributes *)self setImmersivenessScore:?];
  [v4 pleasantPerspectiveScore];
  [(PLComputedAssetAttributes *)self setPleasantPerspectiveScore:?];
  [v4 pleasantPostProcessingScore];
  [(PLComputedAssetAttributes *)self setPleasantPostProcessingScore:?];
  [v4 noiseScore];
  [(PLComputedAssetAttributes *)self setNoiseScore:?];
  [v4 noiseScore];
  [(PLComputedAssetAttributes *)self setNoiseScore:?];
  [v4 failureScore];
  [(PLComputedAssetAttributes *)self setFailureScore:?];
  [v4 pleasantCompositionScore];
  [(PLComputedAssetAttributes *)self setPleasantCompositionScore:?];
  [v4 interestingSubjectScore];
  [(PLComputedAssetAttributes *)self setInterestingSubjectScore:?];
  [v4 intrusiveObjectPresenceScore];
  [(PLComputedAssetAttributes *)self setIntrusiveObjectPresenceScore:?];
  [v4 pleasantCameraTiltScore];
  [(PLComputedAssetAttributes *)self setPleasantCameraTiltScore:?];
  [v4 lowKeyLightingScore];
  v6 = v5;

  LODWORD(v7) = v6;

  [(PLComputedAssetAttributes *)self setLowLight:v7];
}

@end