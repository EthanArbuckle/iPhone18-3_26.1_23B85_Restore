@interface PGCuratorInvestigationItem
+ (id)itemWithUUID:(id)d itemInfo:(id)info curationModel:(id)model;
- (BOOL)clsHasCustomPlaybackVariation;
- (BOOL)clsHasInterestingAudioClassification;
- (BOOL)clsHasInterestingScenes;
- (BOOL)clsHasPoorResolution;
- (BOOL)clsIsBlurry;
- (BOOL)clsIsInSharedLibrary;
- (BOOL)clsIsInhabited;
- (BOOL)clsIsInterestingHDR;
- (BOOL)clsIsInterestingLivePhoto;
- (BOOL)clsIsInterestingPanorama;
- (BOOL)clsIsInterestingSDOF;
- (BOOL)clsIsInterestingVideo;
- (BOOL)clsIsLongExposure;
- (BOOL)clsIsLoopOrBounce;
- (BOOL)clsIsNonMemorable;
- (BOOL)clsIsScreenshotOrScreenRecording;
- (BOOL)clsIsUtility;
- (BOOL)isFavorite;
- (BOOL)isVideo;
- (CLLocation)location;
- (CLLocationCoordinate2D)pl_coordinate;
- (NSDateComponents)cls_localDateComponents;
- (NSString)description;
- (PGCuratorInvestigationItem)init;
- (PGCuratorInvestigationItem)initWithUUID:(id)d itemInfo:(id)info curationModel:(id)model;
- (double)clsAestheticScore;
- (double)clsAutoplaySuggestionScore;
- (double)clsContentScore;
- (double)clsDuration;
- (double)clsExposureScore;
- (double)clsFaceScore;
- (double)clsHighlightVisibilityScore;
- (double)clsIconicScore;
- (double)clsSharpnessScore;
- (double)clsSquareCropScore;
- (double)pl_gpsHorizontalAccuracy;
- (id)date;
- (int64_t)clsPlayCount;
- (int64_t)clsShareCount;
- (int64_t)clsViewCount;
- (unint64_t)clsPeopleCount;
- (unint64_t)clsSimilarityModelVersion;
@end

@implementation PGCuratorInvestigationItem

- (double)pl_gpsHorizontalAccuracy
{
  clsGpsHorizontalAccuracy = self->_clsGpsHorizontalAccuracy;
  null = [MEMORY[0x277CBEB68] null];

  if (clsGpsHorizontalAccuracy == null)
  {
    return 0.0;
  }

  v5 = self->_clsGpsHorizontalAccuracy;

  [(NSNumber *)v5 doubleValue];
  return result;
}

- (CLLocationCoordinate2D)pl_coordinate
{
  location = [(PGCuratorInvestigationItem *)self location];

  if (location)
  {
    location2 = [(PGCuratorInvestigationItem *)self location];
    [location2 coordinate];
    v6 = v5;
    v8 = v7;
  }

  else
  {
    v6 = *MEMORY[0x277CE4278];
    v8 = *(MEMORY[0x277CE4278] + 8);
  }

  v9 = v6;
  v10 = v8;
  result.longitude = v10;
  result.latitude = v9;
  return result;
}

- (unint64_t)clsSimilarityModelVersion
{
  sceneModel = [(CLSCurationModel *)self->_curationModel sceneModel];
  version = [sceneModel version];

  return version;
}

- (double)clsIconicScore
{
  clsIconicScore = self->_clsIconicScore;
  null = [MEMORY[0x277CBEB68] null];

  if (clsIconicScore == null)
  {
    return 0.0;
  }

  v5 = self->_clsIconicScore;

  [(NSNumber *)v5 doubleValue];
  return result;
}

- (BOOL)clsIsInSharedLibrary
{
  clsIsInSharedLibrary = self->_clsIsInSharedLibrary;
  null = [MEMORY[0x277CBEB68] null];

  if (clsIsInSharedLibrary == null)
  {
    return 0;
  }

  v5 = self->_clsIsInSharedLibrary;

  return [(NSNumber *)v5 BOOLValue];
}

- (double)clsSquareCropScore
{
  clsSquareCropScore = self->_clsSquareCropScore;
  null = [MEMORY[0x277CBEB68] null];

  if (clsSquareCropScore == null)
  {
    return 0.0;
  }

  v5 = self->_clsSquareCropScore;
  null2 = [MEMORY[0x277CBEB68] null];
  if (v5 == null2)
  {
    v8 = 0.5;
  }

  else
  {
    [(NSNumber *)self->_clsSquareCropScore doubleValue];
    v8 = v7;
  }

  return v8;
}

- (BOOL)clsIsLongExposure
{
  clsIsLongExposure = self->_clsIsLongExposure;
  null = [MEMORY[0x277CBEB68] null];

  if (clsIsLongExposure == null)
  {
    return 0;
  }

  v5 = self->_clsIsLongExposure;

  return [(NSNumber *)v5 BOOLValue];
}

- (BOOL)clsIsLoopOrBounce
{
  clsIsLoopOrBounce = self->_clsIsLoopOrBounce;
  null = [MEMORY[0x277CBEB68] null];

  if (clsIsLoopOrBounce == null)
  {
    return 0;
  }

  v5 = self->_clsIsLoopOrBounce;

  return [(NSNumber *)v5 BOOLValue];
}

- (BOOL)clsIsNonMemorable
{
  clsIsNonMemorable = self->_clsIsNonMemorable;
  null = [MEMORY[0x277CBEB68] null];

  if (clsIsNonMemorable == null)
  {
    return 0;
  }

  v5 = self->_clsIsNonMemorable;

  return [(NSNumber *)v5 BOOLValue];
}

- (double)clsDuration
{
  clsDuration = self->_clsDuration;
  null = [MEMORY[0x277CBEB68] null];

  if (clsDuration == null)
  {
    return 0.0;
  }

  v5 = self->_clsDuration;

  [(NSNumber *)v5 doubleValue];
  return result;
}

- (double)clsAutoplaySuggestionScore
{
  clsAutoplaySuggestionScore = self->_clsAutoplaySuggestionScore;
  null = [MEMORY[0x277CBEB68] null];

  if (clsAutoplaySuggestionScore == null)
  {
    return 0.0;
  }

  v5 = self->_clsAutoplaySuggestionScore;

  [(NSNumber *)v5 doubleValue];
  return result;
}

- (double)clsHighlightVisibilityScore
{
  clsHighlightVisibilityScore = self->_clsHighlightVisibilityScore;
  null = [MEMORY[0x277CBEB68] null];

  if (clsHighlightVisibilityScore == null)
  {
    return 0.0;
  }

  v5 = self->_clsHighlightVisibilityScore;

  [(NSNumber *)v5 doubleValue];
  return result;
}

- (BOOL)clsHasInterestingScenes
{
  clsHasInterestingScenes = self->_clsHasInterestingScenes;
  null = [MEMORY[0x277CBEB68] null];

  if (clsHasInterestingScenes == null)
  {
    return 0;
  }

  v5 = self->_clsHasInterestingScenes;

  return [(NSNumber *)v5 BOOLValue];
}

- (BOOL)clsHasPoorResolution
{
  clsHasPoorResolution = self->_clsHasPoorResolution;
  null = [MEMORY[0x277CBEB68] null];

  if (clsHasPoorResolution == null)
  {
    return 0;
  }

  v5 = self->_clsHasPoorResolution;

  return [(NSNumber *)v5 BOOLValue];
}

- (BOOL)clsIsInhabited
{
  clsIsInhabited = self->_clsIsInhabited;
  null = [MEMORY[0x277CBEB68] null];

  if (clsIsInhabited == null)
  {
    return 0;
  }

  v5 = self->_clsIsInhabited;

  return [(NSNumber *)v5 BOOLValue];
}

- (double)clsFaceScore
{
  clsFaceScore = self->_clsFaceScore;
  null = [MEMORY[0x277CBEB68] null];

  if (clsFaceScore == null)
  {
    return 0.0;
  }

  v5 = self->_clsFaceScore;

  [(NSNumber *)v5 doubleValue];
  return result;
}

- (double)clsAestheticScore
{
  clsAestheticScore = self->_clsAestheticScore;
  null = [MEMORY[0x277CBEB68] null];

  if (clsAestheticScore == null)
  {
    return 0.0;
  }

  v5 = self->_clsAestheticScore;

  [(NSNumber *)v5 doubleValue];
  return result;
}

- (double)clsExposureScore
{
  clsExposureScore = self->_clsExposureScore;
  null = [MEMORY[0x277CBEB68] null];

  if (clsExposureScore == null)
  {
    return 0.0;
  }

  v5 = self->_clsExposureScore;

  [(NSNumber *)v5 doubleValue];
  return result;
}

- (double)clsSharpnessScore
{
  clsSharpnessScore = self->_clsSharpnessScore;
  null = [MEMORY[0x277CBEB68] null];

  if (clsSharpnessScore == null)
  {
    return 0.0;
  }

  v5 = self->_clsSharpnessScore;

  [(NSNumber *)v5 doubleValue];
  return result;
}

- (BOOL)clsHasCustomPlaybackVariation
{
  clsHasCustomPlaybackVariation = self->_clsHasCustomPlaybackVariation;
  null = [MEMORY[0x277CBEB68] null];

  if (clsHasCustomPlaybackVariation == null)
  {
    return 0;
  }

  v5 = self->_clsHasCustomPlaybackVariation;

  return [(NSNumber *)v5 BOOLValue];
}

- (BOOL)clsHasInterestingAudioClassification
{
  clsHasInterestingAudioClassification = self->_clsHasInterestingAudioClassification;
  null = [MEMORY[0x277CBEB68] null];

  if (clsHasInterestingAudioClassification == null)
  {
    return 0;
  }

  v5 = self->_clsHasInterestingAudioClassification;

  return [(NSNumber *)v5 BOOLValue];
}

- (BOOL)clsIsInterestingHDR
{
  clsIsInterestingHDR = self->_clsIsInterestingHDR;
  null = [MEMORY[0x277CBEB68] null];

  if (clsIsInterestingHDR == null)
  {
    return 0;
  }

  v5 = self->_clsIsInterestingHDR;

  return [(NSNumber *)v5 BOOLValue];
}

- (BOOL)clsIsInterestingSDOF
{
  clsIsInterestingSDOF = self->_clsIsInterestingSDOF;
  null = [MEMORY[0x277CBEB68] null];

  if (clsIsInterestingSDOF == null)
  {
    return 0;
  }

  v5 = self->_clsIsInterestingSDOF;

  return [(NSNumber *)v5 BOOLValue];
}

- (BOOL)clsIsInterestingPanorama
{
  clsIsInterestingPanorama = self->_clsIsInterestingPanorama;
  null = [MEMORY[0x277CBEB68] null];

  if (clsIsInterestingPanorama == null)
  {
    return 0;
  }

  v5 = self->_clsIsInterestingPanorama;

  return [(NSNumber *)v5 BOOLValue];
}

- (BOOL)clsIsInterestingLivePhoto
{
  clsIsInterestingLivePhoto = self->_clsIsInterestingLivePhoto;
  null = [MEMORY[0x277CBEB68] null];

  if (clsIsInterestingLivePhoto == null)
  {
    return 0;
  }

  v5 = self->_clsIsInterestingLivePhoto;

  return [(NSNumber *)v5 BOOLValue];
}

- (BOOL)clsIsInterestingVideo
{
  clsIsInterestingVideo = self->_clsIsInterestingVideo;
  null = [MEMORY[0x277CBEB68] null];

  if (clsIsInterestingVideo == null)
  {
    return 0;
  }

  v5 = self->_clsIsInterestingVideo;

  return [(NSNumber *)v5 BOOLValue];
}

- (double)clsContentScore
{
  clsContentScore = self->_clsContentScore;
  null = [MEMORY[0x277CBEB68] null];

  if (clsContentScore == null)
  {
    return 0.0;
  }

  v5 = self->_clsContentScore;

  [(NSNumber *)v5 doubleValue];
  return result;
}

- (BOOL)isVideo
{
  isVideo = self->_isVideo;
  null = [MEMORY[0x277CBEB68] null];

  if (isVideo == null)
  {
    return 0;
  }

  v5 = self->_isVideo;

  return [(NSNumber *)v5 BOOLValue];
}

- (BOOL)isFavorite
{
  isFavorite = self->_isFavorite;
  null = [MEMORY[0x277CBEB68] null];

  if (isFavorite == null)
  {
    return 0;
  }

  v5 = self->_isFavorite;

  return [(NSNumber *)v5 BOOLValue];
}

- (BOOL)clsIsScreenshotOrScreenRecording
{
  clsIsScreenshotOrScreenRecording = self->_clsIsScreenshotOrScreenRecording;
  null = [MEMORY[0x277CBEB68] null];

  if (clsIsScreenshotOrScreenRecording == null)
  {
    return 0;
  }

  v5 = self->_clsIsScreenshotOrScreenRecording;

  return [(NSNumber *)v5 BOOLValue];
}

- (BOOL)clsIsBlurry
{
  clsIsBlurry = self->_clsIsBlurry;
  null = [MEMORY[0x277CBEB68] null];

  if (clsIsBlurry == null)
  {
    return 0;
  }

  v5 = self->_clsIsBlurry;

  return [(NSNumber *)v5 BOOLValue];
}

- (BOOL)clsIsUtility
{
  clsIsUtility = self->_clsIsUtility;
  null = [MEMORY[0x277CBEB68] null];

  if (clsIsUtility == null)
  {
    return 0;
  }

  v5 = self->_clsIsUtility;

  return [(NSNumber *)v5 BOOLValue];
}

- (int64_t)clsShareCount
{
  clsShareCount = self->_clsShareCount;
  null = [MEMORY[0x277CBEB68] null];

  if (clsShareCount == null)
  {
    return 0;
  }

  v5 = self->_clsShareCount;

  return [(NSNumber *)v5 integerValue];
}

- (int64_t)clsPlayCount
{
  clsPlayCount = self->_clsPlayCount;
  null = [MEMORY[0x277CBEB68] null];

  if (clsPlayCount == null)
  {
    return 0;
  }

  v5 = self->_clsPlayCount;

  return [(NSNumber *)v5 integerValue];
}

- (int64_t)clsViewCount
{
  clsViewCount = self->_clsViewCount;
  null = [MEMORY[0x277CBEB68] null];

  if (clsViewCount == null)
  {
    return 0;
  }

  v5 = self->_clsViewCount;

  return [(NSNumber *)v5 integerValue];
}

- (NSDateComponents)cls_localDateComponents
{
  v3 = MEMORY[0x277D27690];
  cls_universalDate = [(PGCuratorInvestigationItem *)self cls_universalDate];
  cls_localDate = [(PGCuratorInvestigationItem *)self cls_localDate];
  v6 = [v3 dateComponentsWithUTCDate:cls_universalDate localDate:cls_localDate];

  return v6;
}

- (unint64_t)clsPeopleCount
{
  clsPersonLocalIdentifiers = [(PGCuratorInvestigationItem *)self clsPersonLocalIdentifiers];
  null = [MEMORY[0x277CBEB68] null];

  if (clsPersonLocalIdentifiers == null)
  {
    return 0;
  }

  clsPersonLocalIdentifiers2 = [(PGCuratorInvestigationItem *)self clsPersonLocalIdentifiers];
  v6 = [clsPersonLocalIdentifiers2 count];

  return v6;
}

- (CLLocation)location
{
  clsLocation = [(PGCuratorInvestigationItem *)self clsLocation];
  null = [MEMORY[0x277CBEB68] null];

  if (clsLocation == null)
  {
    clsLocation2 = 0;
  }

  else
  {
    clsLocation2 = [(PGCuratorInvestigationItem *)self clsLocation];
  }

  return clsLocation2;
}

- (id)date
{
  cls_universalDate = [(PGCuratorInvestigationItem *)self cls_universalDate];
  null = [MEMORY[0x277CBEB68] null];

  if (cls_universalDate == null)
  {
    cls_universalDate2 = 0;
  }

  else
  {
    cls_universalDate2 = [(PGCuratorInvestigationItem *)self cls_universalDate];
  }

  return cls_universalDate2;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = PGCuratorInvestigationItem;
  v4 = [(PGCuratorInvestigationItem *)&v8 description];
  cls_universalDate = [(PGCuratorInvestigationItem *)self cls_universalDate];
  v6 = [v3 stringWithFormat:@"%@: %@", v4, cls_universalDate];

  return v6;
}

- (PGCuratorInvestigationItem)initWithUUID:(id)d itemInfo:(id)info curationModel:(id)model
{
  dCopy = d;
  infoCopy = info;
  modelCopy = model;
  v222.receiver = self;
  v222.super_class = PGCuratorInvestigationItem;
  v12 = [(PGCuratorInvestigationItem *)&v222 init];

  if (v12)
  {
    v217 = modelCopy;
    objc_storeStrong(&v12->_clsIdentifier, d);
    null = [MEMORY[0x277CBEB68] null];
    cls_universalDate = v12->_cls_universalDate;
    v12->_cls_universalDate = null;

    null2 = [MEMORY[0x277CBEB68] null];
    clsLocation = v12->_clsLocation;
    v12->_clsLocation = null2;

    null3 = [MEMORY[0x277CBEB68] null];
    clsPersonLocalIdentifiers = v12->_clsPersonLocalIdentifiers;
    v12->_clsPersonLocalIdentifiers = null3;

    null4 = [MEMORY[0x277CBEB68] null];
    clsSceneClassifications = v12->_clsSceneClassifications;
    v12->_clsSceneClassifications = null4;

    null5 = [MEMORY[0x277CBEB68] null];
    clsSceneprint = v12->_clsSceneprint;
    v12->_clsSceneprint = null5;

    null6 = [MEMORY[0x277CBEB68] null];
    clsUnprefetchedPersonLocalIdentifiers = v12->_clsUnprefetchedPersonLocalIdentifiers;
    v12->_clsUnprefetchedPersonLocalIdentifiers = null6;

    null7 = [MEMORY[0x277CBEB68] null];
    clsPetLocalIdentifiers = v12->_clsPetLocalIdentifiers;
    v12->_clsPetLocalIdentifiers = null7;

    null8 = [MEMORY[0x277CBEB68] null];
    clsPersonAndPetLocalIdentifiers = v12->_clsPersonAndPetLocalIdentifiers;
    v12->_clsPersonAndPetLocalIdentifiers = null8;

    null9 = [MEMORY[0x277CBEB68] null];
    clsViewCount = v12->_clsViewCount;
    v12->_clsViewCount = null9;

    null10 = [MEMORY[0x277CBEB68] null];
    clsPlayCount = v12->_clsPlayCount;
    v12->_clsPlayCount = null10;

    null11 = [MEMORY[0x277CBEB68] null];
    clsShareCount = v12->_clsShareCount;
    v12->_clsShareCount = null11;

    null12 = [MEMORY[0x277CBEB68] null];
    clsIsUtility = v12->_clsIsUtility;
    v12->_clsIsUtility = null12;

    null13 = [MEMORY[0x277CBEB68] null];
    clsIsBlurry = v12->_clsIsBlurry;
    p_clsIsBlurry = &v12->_clsIsBlurry;
    v12->_clsIsBlurry = null13;

    null14 = [MEMORY[0x277CBEB68] null];
    isVideo = v12->_isVideo;
    v12->_isVideo = null14;

    null15 = [MEMORY[0x277CBEB68] null];
    clsIsScreenshotOrScreenRecording = v12->_clsIsScreenshotOrScreenRecording;
    v12->_clsIsScreenshotOrScreenRecording = null15;

    null16 = [MEMORY[0x277CBEB68] null];
    isFavorite = v12->_isFavorite;
    v12->_isFavorite = null16;

    null17 = [MEMORY[0x277CBEB68] null];
    clsContentScore = v12->_clsContentScore;
    v12->_clsContentScore = null17;

    null18 = [MEMORY[0x277CBEB68] null];
    clsIsInterestingVideo = v12->_clsIsInterestingVideo;
    p_clsIsInterestingVideo = &v12->_clsIsInterestingVideo;
    v12->_clsIsInterestingVideo = null18;

    null19 = [MEMORY[0x277CBEB68] null];
    clsIsInterestingLivePhoto = v12->_clsIsInterestingLivePhoto;
    p_clsIsInterestingLivePhoto = &v12->_clsIsInterestingLivePhoto;
    v12->_clsIsInterestingLivePhoto = null19;

    null20 = [MEMORY[0x277CBEB68] null];
    clsIsInterestingPanorama = v12->_clsIsInterestingPanorama;
    p_clsIsInterestingPanorama = &v12->_clsIsInterestingPanorama;
    v12->_clsIsInterestingPanorama = null20;

    null21 = [MEMORY[0x277CBEB68] null];
    clsIsInterestingSDOF = v12->_clsIsInterestingSDOF;
    p_clsIsInterestingSDOF = &v12->_clsIsInterestingSDOF;
    v12->_clsIsInterestingSDOF = null21;

    null22 = [MEMORY[0x277CBEB68] null];
    clsIsInterestingHDR = v12->_clsIsInterestingHDR;
    p_clsIsInterestingHDR = &v12->_clsIsInterestingHDR;
    v12->_clsIsInterestingHDR = null22;

    null23 = [MEMORY[0x277CBEB68] null];
    clsHasInterestingAudioClassification = v12->_clsHasInterestingAudioClassification;
    p_clsHasInterestingAudioClassification = &v12->_clsHasInterestingAudioClassification;
    v12->_clsHasInterestingAudioClassification = null23;

    null24 = [MEMORY[0x277CBEB68] null];
    clsHasCustomPlaybackVariation = v12->_clsHasCustomPlaybackVariation;
    p_clsHasCustomPlaybackVariation = &v12->_clsHasCustomPlaybackVariation;
    v12->_clsHasCustomPlaybackVariation = null24;

    null25 = [MEMORY[0x277CBEB68] null];
    clsSharpnessScore = v12->_clsSharpnessScore;
    p_clsSharpnessScore = &v12->_clsSharpnessScore;
    v12->_clsSharpnessScore = null25;

    null26 = [MEMORY[0x277CBEB68] null];
    clsExposureScore = v12->_clsExposureScore;
    p_clsExposureScore = &v12->_clsExposureScore;
    v12->_clsExposureScore = null26;

    null27 = [MEMORY[0x277CBEB68] null];
    clsAestheticScore = v12->_clsAestheticScore;
    v12->_clsAestheticScore = null27;

    null28 = [MEMORY[0x277CBEB68] null];
    clsIsAestheticallyPrettyGood = v12->_clsIsAestheticallyPrettyGood;
    v12->_clsIsAestheticallyPrettyGood = null28;

    null29 = [MEMORY[0x277CBEB68] null];
    clsFaceScore = v12->_clsFaceScore;
    v12->_clsFaceScore = null29;

    null30 = [MEMORY[0x277CBEB68] null];
    clsIsInhabited = v12->_clsIsInhabited;
    p_clsIsInhabited = &v12->_clsIsInhabited;
    v12->_clsIsInhabited = null30;

    null31 = [MEMORY[0x277CBEB68] null];
    clsAvoidIfPossibleForKeyItem = v12->_clsAvoidIfPossibleForKeyItem;
    v12->_clsAvoidIfPossibleForKeyItem = null31;

    null32 = [MEMORY[0x277CBEB68] null];
    clsHasPoorResolution = v12->_clsHasPoorResolution;
    v12->_clsHasPoorResolution = null32;

    null33 = [MEMORY[0x277CBEB68] null];
    clsHasInterestingScenes = v12->_clsHasInterestingScenes;
    p_clsHasInterestingScenes = &v12->_clsHasInterestingScenes;
    v12->_clsHasInterestingScenes = null33;

    null34 = [MEMORY[0x277CBEB68] null];
    clsHighlightVisibilityScore = v12->_clsHighlightVisibilityScore;
    p_clsHighlightVisibilityScore = &v12->_clsHighlightVisibilityScore;
    v12->_clsHighlightVisibilityScore = null34;

    null35 = [MEMORY[0x277CBEB68] null];
    clsAutoplaySuggestionScore = v12->_clsAutoplaySuggestionScore;
    p_clsAutoplaySuggestionScore = &v12->_clsAutoplaySuggestionScore;
    v12->_clsAutoplaySuggestionScore = null35;

    null36 = [MEMORY[0x277CBEB68] null];
    clsDuration = v12->_clsDuration;
    p_clsDuration = &v12->_clsDuration;
    v12->_clsDuration = null36;

    null37 = [MEMORY[0x277CBEB68] null];
    clsIsNonMemorable = v12->_clsIsNonMemorable;
    p_clsIsNonMemorable = &v12->_clsIsNonMemorable;
    v12->_clsIsNonMemorable = null37;

    null38 = [MEMORY[0x277CBEB68] null];
    clsIsLoopOrBounce = v12->_clsIsLoopOrBounce;
    p_clsIsLoopOrBounce = &v12->_clsIsLoopOrBounce;
    v12->_clsIsLoopOrBounce = null38;

    null39 = [MEMORY[0x277CBEB68] null];
    clsIsLongExposure = v12->_clsIsLongExposure;
    v12->_clsIsLongExposure = null39;

    null40 = [MEMORY[0x277CBEB68] null];
    clsGpsHorizontalAccuracy = v12->_clsGpsHorizontalAccuracy;
    v12->_clsGpsHorizontalAccuracy = null40;

    null41 = [MEMORY[0x277CBEB68] null];
    clsSquareCropScore = v12->_clsSquareCropScore;
    v12->_clsSquareCropScore = null41;

    null42 = [MEMORY[0x277CBEB68] null];
    clsIsInSharedLibrary = v12->_clsIsInSharedLibrary;
    v12->_clsIsInSharedLibrary = null42;

    null43 = [MEMORY[0x277CBEB68] null];
    clsIconicScore = v12->_clsIconicScore;
    v12->_clsIconicScore = null43;

    v99 = [infoCopy objectForKeyedSubscript:@"creationDate"];
    v100 = v99;
    if (!v99)
    {
      v100 = v12->_cls_universalDate;
    }

    objc_storeStrong(&v12->_cls_universalDate, v100);

    v101 = [infoCopy objectForKeyedSubscript:@"localCreationDate"];
    cls_localDate = v101;
    if (!v101)
    {
      cls_localDate = v12->_cls_localDate;
    }

    objc_storeStrong(&v12->_cls_localDate, cls_localDate);

    v103 = [infoCopy objectForKeyedSubscript:@"location"];
    v218 = v103;
    if (v103)
    {
      v104 = [v103 objectForKeyedSubscript:@"latitude"];

      if (v104)
      {
        v105 = dCopy;
        v106 = objc_alloc(MEMORY[0x277CE41F8]);
        v107 = [v218 objectForKeyedSubscript:@"latitude"];
        [v107 doubleValue];
        v109 = v108;
        v110 = [v218 objectForKeyedSubscript:@"longitude"];
        [v110 doubleValue];
        v111 = v106;
        dCopy = v105;
        v113 = [v111 initWithLatitude:v109 longitude:v112];
        v114 = v12->_clsLocation;
        v12->_clsLocation = v113;
      }

      else
      {
        v107 = v12->_clsLocation;
        v12->_clsLocation = 0;
      }
    }

    v115 = [infoCopy objectForKeyedSubscript:@"peopleNames"];
    v116 = v115;
    if (!v115)
    {
      v116 = v12->_clsPersonLocalIdentifiers;
    }

    objc_storeStrong(&v12->_clsPersonLocalIdentifiers, v116);

    v117 = [infoCopy objectForKeyedSubscript:@"petNames"];
    v118 = v117;
    if (!v117)
    {
      v118 = v12->_clsPetLocalIdentifiers;
    }

    objc_storeStrong(&v12->_clsPetLocalIdentifiers, v118);

    v119 = v12->_clsPersonLocalIdentifiers;
    v120 = MEMORY[0x277CBEBF8];
    if (!v119)
    {
      v119 = MEMORY[0x277CBEBF8];
    }

    v121 = v119;
    v122 = v12->_clsPetLocalIdentifiers;
    if (!v122)
    {
      v122 = v120;
    }

    v212 = v121;
    v210 = v122;
    v123 = [(NSArray *)v121 arrayByAddingObjectsFromArray:?];
    v124 = v12->_clsPersonAndPetLocalIdentifiers;
    v12->_clsPersonAndPetLocalIdentifiers = v123;

    v125 = [infoCopy objectForKeyedSubscript:@"isUtility"];
    v126 = v125;
    v127 = MEMORY[0x277CBEC28];
    if (v125)
    {
      v128 = v125;
    }

    else
    {
      v128 = MEMORY[0x277CBEC28];
    }

    objc_storeStrong(&v12->_clsIsUtility, v128);

    v129 = [infoCopy objectForKeyedSubscript:@"isFavorite"];
    v130 = v129;
    if (v129)
    {
      v131 = v129;
    }

    else
    {
      v131 = v127;
    }

    objc_storeStrong(&v12->_isFavorite, v131);

    v132 = [infoCopy objectForKeyedSubscript:@"isVideo"];
    v133 = v132;
    if (v132)
    {
      v134 = v132;
    }

    else
    {
      v134 = v127;
    }

    objc_storeStrong(&v12->_isVideo, v134);

    v135 = [infoCopy objectForKeyedSubscript:@"contentScore"];
    v136 = v135;
    if (!v135)
    {
      v136 = v12->_clsContentScore;
    }

    objc_storeStrong(&v12->_clsContentScore, v136);

    v137 = [infoCopy objectForKeyedSubscript:@"aestheticScore"];
    v138 = v137;
    if (!v137)
    {
      v138 = v12->_clsAestheticScore;
    }

    objc_storeStrong(&v12->_clsAestheticScore, v138);

    v139 = [infoCopy objectForKeyedSubscript:@"faceScore"];
    v140 = v139;
    if (!v139)
    {
      v140 = v12->_clsFaceScore;
    }

    objc_storeStrong(&v12->_clsFaceScore, v140);

    v141 = [infoCopy objectForKeyedSubscript:@"sceneprint"];
    if (v141)
    {
      v142 = MEMORY[0x277CCAAC8];
      v143 = objc_opt_class();
      v144 = [infoCopy objectForKeyedSubscript:@"sceneprint"];
      v221 = 0;
      v145 = [v142 unarchivedObjectOfClass:v143 fromData:v144 error:&v221];
      v146 = v221;
      objc_storeStrong(&v12->_clsSceneprint, v145);
    }

    else
    {
      v146 = 0;
      v144 = v12->_clsSceneprint;
      v12->_clsSceneprint = 0;
    }

    v147 = [infoCopy objectForKeyedSubscript:@"isInterestingVideo"];
    v148 = v147;
    if (!v147)
    {
      v148 = *p_clsIsInterestingVideo;
    }

    objc_storeStrong(p_clsIsInterestingVideo, v148);

    v149 = [infoCopy objectForKeyedSubscript:@"isInterestingLivePhoto"];
    v150 = v149;
    if (!v149)
    {
      v150 = *p_clsIsInterestingLivePhoto;
    }

    objc_storeStrong(p_clsIsInterestingLivePhoto, v150);

    v151 = [infoCopy objectForKeyedSubscript:@"isInterestingPanorama"];
    v152 = v151;
    if (!v151)
    {
      v152 = *p_clsIsInterestingPanorama;
    }

    objc_storeStrong(p_clsIsInterestingPanorama, v152);

    v153 = [infoCopy objectForKeyedSubscript:@"isInterestingSDOF"];
    v154 = v153;
    if (!v153)
    {
      v154 = *p_clsIsInterestingSDOF;
    }

    objc_storeStrong(p_clsIsInterestingSDOF, v154);

    v155 = [infoCopy objectForKeyedSubscript:@"isInterestingHDR"];
    v156 = v155;
    if (!v155)
    {
      v156 = *p_clsIsInterestingHDR;
    }

    objc_storeStrong(p_clsIsInterestingHDR, v156);

    v157 = [infoCopy objectForKeyedSubscript:@"hasInterestingAudioClassification"];
    v158 = v157;
    if (!v157)
    {
      v158 = *p_clsHasInterestingAudioClassification;
    }

    objc_storeStrong(p_clsHasInterestingAudioClassification, v158);

    v159 = [infoCopy objectForKeyedSubscript:@"hasCustomPlaybackVariation"];
    v160 = v159;
    if (!v159)
    {
      v160 = *p_clsHasCustomPlaybackVariation;
    }

    objc_storeStrong(p_clsHasCustomPlaybackVariation, v160);

    v161 = [infoCopy objectForKeyedSubscript:@"sharpnessScore"];
    v162 = v161;
    if (!v161)
    {
      v162 = *p_clsSharpnessScore;
    }

    objc_storeStrong(p_clsSharpnessScore, v162);

    v163 = [infoCopy objectForKeyedSubscript:@"exposureScore"];
    v164 = v163;
    if (!v163)
    {
      v164 = *p_clsExposureScore;
    }

    objc_storeStrong(p_clsExposureScore, v164);

    v165 = [infoCopy objectForKeyedSubscript:@"isBlurry"];
    v166 = v165;
    if (!v165)
    {
      v166 = *p_clsIsBlurry;
    }

    objc_storeStrong(p_clsIsBlurry, v166);

    v167 = [infoCopy objectForKeyedSubscript:@"isInhabited"];
    v168 = v167;
    if (!v167)
    {
      v168 = *p_clsIsInhabited;
    }

    objc_storeStrong(p_clsIsInhabited, v168);

    v169 = [infoCopy objectForKeyedSubscript:@"hasInterestingScenes"];
    v170 = v169;
    if (!v169)
    {
      v170 = *p_clsHasInterestingScenes;
    }

    objc_storeStrong(p_clsHasInterestingScenes, v170);

    v171 = [infoCopy objectForKeyedSubscript:@"highlightVisibilityScore"];
    v172 = v171;
    if (!v171)
    {
      v172 = *p_clsHighlightVisibilityScore;
    }

    objc_storeStrong(p_clsHighlightVisibilityScore, v172);

    v173 = [infoCopy objectForKeyedSubscript:@"autoplaySuggestionScore"];
    v174 = v173;
    if (!v173)
    {
      v174 = *p_clsAutoplaySuggestionScore;
    }

    objc_storeStrong(p_clsAutoplaySuggestionScore, v174);

    v175 = [infoCopy objectForKeyedSubscript:@"faceInfos"];
    faceInfos = v175;
    if (!v175)
    {
      faceInfos = v12->_faceInfos;
    }

    objc_storeStrong(&v12->_faceInfos, faceInfos);

    v177 = [infoCopy objectForKeyedSubscript:@"duration"];
    v178 = v177;
    if (!v177)
    {
      v178 = *p_clsDuration;
    }

    objc_storeStrong(p_clsDuration, v178);

    v179 = [infoCopy objectForKeyedSubscript:@"isNonMemorable"];
    v180 = v179;
    if (!v179)
    {
      v180 = *p_clsIsNonMemorable;
    }

    objc_storeStrong(p_clsIsNonMemorable, v180);

    v181 = [infoCopy objectForKeyedSubscript:@"isLoopOrBounce"];
    v182 = v181;
    if (!v181)
    {
      v182 = *p_clsIsLoopOrBounce;
    }

    objc_storeStrong(p_clsIsLoopOrBounce, v182);

    v183 = [infoCopy objectForKeyedSubscript:@"isLongExposure"];
    v184 = v183;
    if (!v183)
    {
      v184 = v12->_clsIsLongExposure;
    }

    objc_storeStrong(&v12->_clsIsLongExposure, v184);

    v185 = [infoCopy objectForKeyedSubscript:@"gpsHorizontalAccuracy"];
    v186 = v185;
    if (!v185)
    {
      v186 = v12->_clsGpsHorizontalAccuracy;
    }

    objc_storeStrong(&v12->_clsGpsHorizontalAccuracy, v186);

    v187 = [infoCopy objectForKeyedSubscript:@"squareCropScore"];
    v188 = v187;
    if (!v187)
    {
      v188 = v12->_clsSquareCropScore;
    }

    objc_storeStrong(&v12->_clsSquareCropScore, v188);

    v189 = [infoCopy objectForKeyedSubscript:@"isInSharedLibrary"];
    v190 = v189;
    if (!v189)
    {
      v190 = v12->_clsIsInSharedLibrary;
    }

    objc_storeStrong(&v12->_clsIsInSharedLibrary, v190);

    v191 = [infoCopy objectForKeyedSubscript:@"iconicScore"];
    v192 = v191;
    if (!v191)
    {
      v192 = v12->_clsIconicScore;
    }

    objc_storeStrong(&v12->_clsIconicScore, v192);

    v193 = [infoCopy objectForKeyedSubscript:@"scenes"];
    if (v193)
    {
      v194 = objc_alloc_init(MEMORY[0x277CBEB58]);
      v219[0] = MEMORY[0x277D85DD0];
      v219[1] = 3221225472;
      v219[2] = __66__PGCuratorInvestigationItem_initWithUUID_itemInfo_curationModel___block_invoke;
      v219[3] = &unk_278882128;
      v195 = v194;
      v220 = v195;
      [v193 enumerateKeysAndObjectsUsingBlock:v219];
      objc_storeStrong(&v12->_clsSceneClassifications, v194);
    }

    modelCopy = v217;
  }

  v196 = v12;

  return v196;
}

void __66__PGCuratorInvestigationItem_initWithUUID_itemInfo_curationModel___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = objc_msgSend(v5, "rangeOfString:", @"(");
  v8 = [v5 rangeOfString:@""]);
  if (v7 != 0x7FFFFFFFFFFFFFFFLL && v8 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v10 = [v5 substringWithRange:{v7 + 1, v8 + ~v7}];
    v11 = [MEMORY[0x277CCAC80] scannerWithString:v10];
    v19 = 0;
    [v11 scanUnsignedLongLong:&v19];
    v12 = objc_alloc(MEMORY[0x277CD9990]);
    v13 = v19;
    [v6 doubleValue];
    v14 = *MEMORY[0x277CBF398];
    v15 = *(MEMORY[0x277CBF398] + 8);
    v16 = *(MEMORY[0x277CBF398] + 16);
    v17 = *(MEMORY[0x277CBF398] + 24);
    v18 = [v12 initWithExtendedSceneIdentifier:v13 confidence:0 boundingBox:0 startTime:? duration:? classificationType:? thumbnailIdentifier:?];
    [*(a1 + 32) addObject:v18];
  }
}

- (PGCuratorInvestigationItem)init
{
  v7.receiver = self;
  v7.super_class = PGCuratorInvestigationItem;
  v2 = [(PGCuratorInvestigationItem *)&v7 init];
  if (v2)
  {
    uUID = [MEMORY[0x277CCAD78] UUID];
    uUIDString = [uUID UUIDString];
    clsIdentifier = v2->_clsIdentifier;
    v2->_clsIdentifier = uUIDString;
  }

  return v2;
}

+ (id)itemWithUUID:(id)d itemInfo:(id)info curationModel:(id)model
{
  modelCopy = model;
  infoCopy = info;
  dCopy = d;
  v11 = [[self alloc] initWithUUID:dCopy itemInfo:infoCopy curationModel:modelCopy];

  return v11;
}

@end