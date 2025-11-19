@interface PGCuratorInvestigationItem
+ (id)itemWithUUID:(id)a3 itemInfo:(id)a4 curationModel:(id)a5;
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
- (PGCuratorInvestigationItem)initWithUUID:(id)a3 itemInfo:(id)a4 curationModel:(id)a5;
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
  v4 = [MEMORY[0x277CBEB68] null];

  if (clsGpsHorizontalAccuracy == v4)
  {
    return 0.0;
  }

  v5 = self->_clsGpsHorizontalAccuracy;

  [(NSNumber *)v5 doubleValue];
  return result;
}

- (CLLocationCoordinate2D)pl_coordinate
{
  v3 = [(PGCuratorInvestigationItem *)self location];

  if (v3)
  {
    v4 = [(PGCuratorInvestigationItem *)self location];
    [v4 coordinate];
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
  v2 = [(CLSCurationModel *)self->_curationModel sceneModel];
  v3 = [v2 version];

  return v3;
}

- (double)clsIconicScore
{
  clsIconicScore = self->_clsIconicScore;
  v4 = [MEMORY[0x277CBEB68] null];

  if (clsIconicScore == v4)
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
  v4 = [MEMORY[0x277CBEB68] null];

  if (clsIsInSharedLibrary == v4)
  {
    return 0;
  }

  v5 = self->_clsIsInSharedLibrary;

  return [(NSNumber *)v5 BOOLValue];
}

- (double)clsSquareCropScore
{
  clsSquareCropScore = self->_clsSquareCropScore;
  v4 = [MEMORY[0x277CBEB68] null];

  if (clsSquareCropScore == v4)
  {
    return 0.0;
  }

  v5 = self->_clsSquareCropScore;
  v6 = [MEMORY[0x277CBEB68] null];
  if (v5 == v6)
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
  v4 = [MEMORY[0x277CBEB68] null];

  if (clsIsLongExposure == v4)
  {
    return 0;
  }

  v5 = self->_clsIsLongExposure;

  return [(NSNumber *)v5 BOOLValue];
}

- (BOOL)clsIsLoopOrBounce
{
  clsIsLoopOrBounce = self->_clsIsLoopOrBounce;
  v4 = [MEMORY[0x277CBEB68] null];

  if (clsIsLoopOrBounce == v4)
  {
    return 0;
  }

  v5 = self->_clsIsLoopOrBounce;

  return [(NSNumber *)v5 BOOLValue];
}

- (BOOL)clsIsNonMemorable
{
  clsIsNonMemorable = self->_clsIsNonMemorable;
  v4 = [MEMORY[0x277CBEB68] null];

  if (clsIsNonMemorable == v4)
  {
    return 0;
  }

  v5 = self->_clsIsNonMemorable;

  return [(NSNumber *)v5 BOOLValue];
}

- (double)clsDuration
{
  clsDuration = self->_clsDuration;
  v4 = [MEMORY[0x277CBEB68] null];

  if (clsDuration == v4)
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
  v4 = [MEMORY[0x277CBEB68] null];

  if (clsAutoplaySuggestionScore == v4)
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
  v4 = [MEMORY[0x277CBEB68] null];

  if (clsHighlightVisibilityScore == v4)
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
  v4 = [MEMORY[0x277CBEB68] null];

  if (clsHasInterestingScenes == v4)
  {
    return 0;
  }

  v5 = self->_clsHasInterestingScenes;

  return [(NSNumber *)v5 BOOLValue];
}

- (BOOL)clsHasPoorResolution
{
  clsHasPoorResolution = self->_clsHasPoorResolution;
  v4 = [MEMORY[0x277CBEB68] null];

  if (clsHasPoorResolution == v4)
  {
    return 0;
  }

  v5 = self->_clsHasPoorResolution;

  return [(NSNumber *)v5 BOOLValue];
}

- (BOOL)clsIsInhabited
{
  clsIsInhabited = self->_clsIsInhabited;
  v4 = [MEMORY[0x277CBEB68] null];

  if (clsIsInhabited == v4)
  {
    return 0;
  }

  v5 = self->_clsIsInhabited;

  return [(NSNumber *)v5 BOOLValue];
}

- (double)clsFaceScore
{
  clsFaceScore = self->_clsFaceScore;
  v4 = [MEMORY[0x277CBEB68] null];

  if (clsFaceScore == v4)
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
  v4 = [MEMORY[0x277CBEB68] null];

  if (clsAestheticScore == v4)
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
  v4 = [MEMORY[0x277CBEB68] null];

  if (clsExposureScore == v4)
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
  v4 = [MEMORY[0x277CBEB68] null];

  if (clsSharpnessScore == v4)
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
  v4 = [MEMORY[0x277CBEB68] null];

  if (clsHasCustomPlaybackVariation == v4)
  {
    return 0;
  }

  v5 = self->_clsHasCustomPlaybackVariation;

  return [(NSNumber *)v5 BOOLValue];
}

- (BOOL)clsHasInterestingAudioClassification
{
  clsHasInterestingAudioClassification = self->_clsHasInterestingAudioClassification;
  v4 = [MEMORY[0x277CBEB68] null];

  if (clsHasInterestingAudioClassification == v4)
  {
    return 0;
  }

  v5 = self->_clsHasInterestingAudioClassification;

  return [(NSNumber *)v5 BOOLValue];
}

- (BOOL)clsIsInterestingHDR
{
  clsIsInterestingHDR = self->_clsIsInterestingHDR;
  v4 = [MEMORY[0x277CBEB68] null];

  if (clsIsInterestingHDR == v4)
  {
    return 0;
  }

  v5 = self->_clsIsInterestingHDR;

  return [(NSNumber *)v5 BOOLValue];
}

- (BOOL)clsIsInterestingSDOF
{
  clsIsInterestingSDOF = self->_clsIsInterestingSDOF;
  v4 = [MEMORY[0x277CBEB68] null];

  if (clsIsInterestingSDOF == v4)
  {
    return 0;
  }

  v5 = self->_clsIsInterestingSDOF;

  return [(NSNumber *)v5 BOOLValue];
}

- (BOOL)clsIsInterestingPanorama
{
  clsIsInterestingPanorama = self->_clsIsInterestingPanorama;
  v4 = [MEMORY[0x277CBEB68] null];

  if (clsIsInterestingPanorama == v4)
  {
    return 0;
  }

  v5 = self->_clsIsInterestingPanorama;

  return [(NSNumber *)v5 BOOLValue];
}

- (BOOL)clsIsInterestingLivePhoto
{
  clsIsInterestingLivePhoto = self->_clsIsInterestingLivePhoto;
  v4 = [MEMORY[0x277CBEB68] null];

  if (clsIsInterestingLivePhoto == v4)
  {
    return 0;
  }

  v5 = self->_clsIsInterestingLivePhoto;

  return [(NSNumber *)v5 BOOLValue];
}

- (BOOL)clsIsInterestingVideo
{
  clsIsInterestingVideo = self->_clsIsInterestingVideo;
  v4 = [MEMORY[0x277CBEB68] null];

  if (clsIsInterestingVideo == v4)
  {
    return 0;
  }

  v5 = self->_clsIsInterestingVideo;

  return [(NSNumber *)v5 BOOLValue];
}

- (double)clsContentScore
{
  clsContentScore = self->_clsContentScore;
  v4 = [MEMORY[0x277CBEB68] null];

  if (clsContentScore == v4)
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
  v4 = [MEMORY[0x277CBEB68] null];

  if (isVideo == v4)
  {
    return 0;
  }

  v5 = self->_isVideo;

  return [(NSNumber *)v5 BOOLValue];
}

- (BOOL)isFavorite
{
  isFavorite = self->_isFavorite;
  v4 = [MEMORY[0x277CBEB68] null];

  if (isFavorite == v4)
  {
    return 0;
  }

  v5 = self->_isFavorite;

  return [(NSNumber *)v5 BOOLValue];
}

- (BOOL)clsIsScreenshotOrScreenRecording
{
  clsIsScreenshotOrScreenRecording = self->_clsIsScreenshotOrScreenRecording;
  v4 = [MEMORY[0x277CBEB68] null];

  if (clsIsScreenshotOrScreenRecording == v4)
  {
    return 0;
  }

  v5 = self->_clsIsScreenshotOrScreenRecording;

  return [(NSNumber *)v5 BOOLValue];
}

- (BOOL)clsIsBlurry
{
  clsIsBlurry = self->_clsIsBlurry;
  v4 = [MEMORY[0x277CBEB68] null];

  if (clsIsBlurry == v4)
  {
    return 0;
  }

  v5 = self->_clsIsBlurry;

  return [(NSNumber *)v5 BOOLValue];
}

- (BOOL)clsIsUtility
{
  clsIsUtility = self->_clsIsUtility;
  v4 = [MEMORY[0x277CBEB68] null];

  if (clsIsUtility == v4)
  {
    return 0;
  }

  v5 = self->_clsIsUtility;

  return [(NSNumber *)v5 BOOLValue];
}

- (int64_t)clsShareCount
{
  clsShareCount = self->_clsShareCount;
  v4 = [MEMORY[0x277CBEB68] null];

  if (clsShareCount == v4)
  {
    return 0;
  }

  v5 = self->_clsShareCount;

  return [(NSNumber *)v5 integerValue];
}

- (int64_t)clsPlayCount
{
  clsPlayCount = self->_clsPlayCount;
  v4 = [MEMORY[0x277CBEB68] null];

  if (clsPlayCount == v4)
  {
    return 0;
  }

  v5 = self->_clsPlayCount;

  return [(NSNumber *)v5 integerValue];
}

- (int64_t)clsViewCount
{
  clsViewCount = self->_clsViewCount;
  v4 = [MEMORY[0x277CBEB68] null];

  if (clsViewCount == v4)
  {
    return 0;
  }

  v5 = self->_clsViewCount;

  return [(NSNumber *)v5 integerValue];
}

- (NSDateComponents)cls_localDateComponents
{
  v3 = MEMORY[0x277D27690];
  v4 = [(PGCuratorInvestigationItem *)self cls_universalDate];
  v5 = [(PGCuratorInvestigationItem *)self cls_localDate];
  v6 = [v3 dateComponentsWithUTCDate:v4 localDate:v5];

  return v6;
}

- (unint64_t)clsPeopleCount
{
  v3 = [(PGCuratorInvestigationItem *)self clsPersonLocalIdentifiers];
  v4 = [MEMORY[0x277CBEB68] null];

  if (v3 == v4)
  {
    return 0;
  }

  v5 = [(PGCuratorInvestigationItem *)self clsPersonLocalIdentifiers];
  v6 = [v5 count];

  return v6;
}

- (CLLocation)location
{
  v3 = [(PGCuratorInvestigationItem *)self clsLocation];
  v4 = [MEMORY[0x277CBEB68] null];

  if (v3 == v4)
  {
    v5 = 0;
  }

  else
  {
    v5 = [(PGCuratorInvestigationItem *)self clsLocation];
  }

  return v5;
}

- (id)date
{
  v3 = [(PGCuratorInvestigationItem *)self cls_universalDate];
  v4 = [MEMORY[0x277CBEB68] null];

  if (v3 == v4)
  {
    v5 = 0;
  }

  else
  {
    v5 = [(PGCuratorInvestigationItem *)self cls_universalDate];
  }

  return v5;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = PGCuratorInvestigationItem;
  v4 = [(PGCuratorInvestigationItem *)&v8 description];
  v5 = [(PGCuratorInvestigationItem *)self cls_universalDate];
  v6 = [v3 stringWithFormat:@"%@: %@", v4, v5];

  return v6;
}

- (PGCuratorInvestigationItem)initWithUUID:(id)a3 itemInfo:(id)a4 curationModel:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v222.receiver = self;
  v222.super_class = PGCuratorInvestigationItem;
  v12 = [(PGCuratorInvestigationItem *)&v222 init];

  if (v12)
  {
    v217 = v11;
    objc_storeStrong(&v12->_clsIdentifier, a3);
    v13 = [MEMORY[0x277CBEB68] null];
    cls_universalDate = v12->_cls_universalDate;
    v12->_cls_universalDate = v13;

    v15 = [MEMORY[0x277CBEB68] null];
    clsLocation = v12->_clsLocation;
    v12->_clsLocation = v15;

    v17 = [MEMORY[0x277CBEB68] null];
    clsPersonLocalIdentifiers = v12->_clsPersonLocalIdentifiers;
    v12->_clsPersonLocalIdentifiers = v17;

    v19 = [MEMORY[0x277CBEB68] null];
    clsSceneClassifications = v12->_clsSceneClassifications;
    v12->_clsSceneClassifications = v19;

    v21 = [MEMORY[0x277CBEB68] null];
    clsSceneprint = v12->_clsSceneprint;
    v12->_clsSceneprint = v21;

    v23 = [MEMORY[0x277CBEB68] null];
    clsUnprefetchedPersonLocalIdentifiers = v12->_clsUnprefetchedPersonLocalIdentifiers;
    v12->_clsUnprefetchedPersonLocalIdentifiers = v23;

    v25 = [MEMORY[0x277CBEB68] null];
    clsPetLocalIdentifiers = v12->_clsPetLocalIdentifiers;
    v12->_clsPetLocalIdentifiers = v25;

    v27 = [MEMORY[0x277CBEB68] null];
    clsPersonAndPetLocalIdentifiers = v12->_clsPersonAndPetLocalIdentifiers;
    v12->_clsPersonAndPetLocalIdentifiers = v27;

    v29 = [MEMORY[0x277CBEB68] null];
    clsViewCount = v12->_clsViewCount;
    v12->_clsViewCount = v29;

    v31 = [MEMORY[0x277CBEB68] null];
    clsPlayCount = v12->_clsPlayCount;
    v12->_clsPlayCount = v31;

    v33 = [MEMORY[0x277CBEB68] null];
    clsShareCount = v12->_clsShareCount;
    v12->_clsShareCount = v33;

    v35 = [MEMORY[0x277CBEB68] null];
    clsIsUtility = v12->_clsIsUtility;
    v12->_clsIsUtility = v35;

    v37 = [MEMORY[0x277CBEB68] null];
    clsIsBlurry = v12->_clsIsBlurry;
    p_clsIsBlurry = &v12->_clsIsBlurry;
    v12->_clsIsBlurry = v37;

    v39 = [MEMORY[0x277CBEB68] null];
    isVideo = v12->_isVideo;
    v12->_isVideo = v39;

    v41 = [MEMORY[0x277CBEB68] null];
    clsIsScreenshotOrScreenRecording = v12->_clsIsScreenshotOrScreenRecording;
    v12->_clsIsScreenshotOrScreenRecording = v41;

    v43 = [MEMORY[0x277CBEB68] null];
    isFavorite = v12->_isFavorite;
    v12->_isFavorite = v43;

    v45 = [MEMORY[0x277CBEB68] null];
    clsContentScore = v12->_clsContentScore;
    v12->_clsContentScore = v45;

    v47 = [MEMORY[0x277CBEB68] null];
    clsIsInterestingVideo = v12->_clsIsInterestingVideo;
    p_clsIsInterestingVideo = &v12->_clsIsInterestingVideo;
    v12->_clsIsInterestingVideo = v47;

    v49 = [MEMORY[0x277CBEB68] null];
    clsIsInterestingLivePhoto = v12->_clsIsInterestingLivePhoto;
    p_clsIsInterestingLivePhoto = &v12->_clsIsInterestingLivePhoto;
    v12->_clsIsInterestingLivePhoto = v49;

    v51 = [MEMORY[0x277CBEB68] null];
    clsIsInterestingPanorama = v12->_clsIsInterestingPanorama;
    p_clsIsInterestingPanorama = &v12->_clsIsInterestingPanorama;
    v12->_clsIsInterestingPanorama = v51;

    v53 = [MEMORY[0x277CBEB68] null];
    clsIsInterestingSDOF = v12->_clsIsInterestingSDOF;
    p_clsIsInterestingSDOF = &v12->_clsIsInterestingSDOF;
    v12->_clsIsInterestingSDOF = v53;

    v55 = [MEMORY[0x277CBEB68] null];
    clsIsInterestingHDR = v12->_clsIsInterestingHDR;
    p_clsIsInterestingHDR = &v12->_clsIsInterestingHDR;
    v12->_clsIsInterestingHDR = v55;

    v57 = [MEMORY[0x277CBEB68] null];
    clsHasInterestingAudioClassification = v12->_clsHasInterestingAudioClassification;
    p_clsHasInterestingAudioClassification = &v12->_clsHasInterestingAudioClassification;
    v12->_clsHasInterestingAudioClassification = v57;

    v59 = [MEMORY[0x277CBEB68] null];
    clsHasCustomPlaybackVariation = v12->_clsHasCustomPlaybackVariation;
    p_clsHasCustomPlaybackVariation = &v12->_clsHasCustomPlaybackVariation;
    v12->_clsHasCustomPlaybackVariation = v59;

    v61 = [MEMORY[0x277CBEB68] null];
    clsSharpnessScore = v12->_clsSharpnessScore;
    p_clsSharpnessScore = &v12->_clsSharpnessScore;
    v12->_clsSharpnessScore = v61;

    v63 = [MEMORY[0x277CBEB68] null];
    clsExposureScore = v12->_clsExposureScore;
    p_clsExposureScore = &v12->_clsExposureScore;
    v12->_clsExposureScore = v63;

    v65 = [MEMORY[0x277CBEB68] null];
    clsAestheticScore = v12->_clsAestheticScore;
    v12->_clsAestheticScore = v65;

    v67 = [MEMORY[0x277CBEB68] null];
    clsIsAestheticallyPrettyGood = v12->_clsIsAestheticallyPrettyGood;
    v12->_clsIsAestheticallyPrettyGood = v67;

    v69 = [MEMORY[0x277CBEB68] null];
    clsFaceScore = v12->_clsFaceScore;
    v12->_clsFaceScore = v69;

    v71 = [MEMORY[0x277CBEB68] null];
    clsIsInhabited = v12->_clsIsInhabited;
    p_clsIsInhabited = &v12->_clsIsInhabited;
    v12->_clsIsInhabited = v71;

    v73 = [MEMORY[0x277CBEB68] null];
    clsAvoidIfPossibleForKeyItem = v12->_clsAvoidIfPossibleForKeyItem;
    v12->_clsAvoidIfPossibleForKeyItem = v73;

    v75 = [MEMORY[0x277CBEB68] null];
    clsHasPoorResolution = v12->_clsHasPoorResolution;
    v12->_clsHasPoorResolution = v75;

    v77 = [MEMORY[0x277CBEB68] null];
    clsHasInterestingScenes = v12->_clsHasInterestingScenes;
    p_clsHasInterestingScenes = &v12->_clsHasInterestingScenes;
    v12->_clsHasInterestingScenes = v77;

    v79 = [MEMORY[0x277CBEB68] null];
    clsHighlightVisibilityScore = v12->_clsHighlightVisibilityScore;
    p_clsHighlightVisibilityScore = &v12->_clsHighlightVisibilityScore;
    v12->_clsHighlightVisibilityScore = v79;

    v81 = [MEMORY[0x277CBEB68] null];
    clsAutoplaySuggestionScore = v12->_clsAutoplaySuggestionScore;
    p_clsAutoplaySuggestionScore = &v12->_clsAutoplaySuggestionScore;
    v12->_clsAutoplaySuggestionScore = v81;

    v83 = [MEMORY[0x277CBEB68] null];
    clsDuration = v12->_clsDuration;
    p_clsDuration = &v12->_clsDuration;
    v12->_clsDuration = v83;

    v85 = [MEMORY[0x277CBEB68] null];
    clsIsNonMemorable = v12->_clsIsNonMemorable;
    p_clsIsNonMemorable = &v12->_clsIsNonMemorable;
    v12->_clsIsNonMemorable = v85;

    v87 = [MEMORY[0x277CBEB68] null];
    clsIsLoopOrBounce = v12->_clsIsLoopOrBounce;
    p_clsIsLoopOrBounce = &v12->_clsIsLoopOrBounce;
    v12->_clsIsLoopOrBounce = v87;

    v89 = [MEMORY[0x277CBEB68] null];
    clsIsLongExposure = v12->_clsIsLongExposure;
    v12->_clsIsLongExposure = v89;

    v91 = [MEMORY[0x277CBEB68] null];
    clsGpsHorizontalAccuracy = v12->_clsGpsHorizontalAccuracy;
    v12->_clsGpsHorizontalAccuracy = v91;

    v93 = [MEMORY[0x277CBEB68] null];
    clsSquareCropScore = v12->_clsSquareCropScore;
    v12->_clsSquareCropScore = v93;

    v95 = [MEMORY[0x277CBEB68] null];
    clsIsInSharedLibrary = v12->_clsIsInSharedLibrary;
    v12->_clsIsInSharedLibrary = v95;

    v97 = [MEMORY[0x277CBEB68] null];
    clsIconicScore = v12->_clsIconicScore;
    v12->_clsIconicScore = v97;

    v99 = [v10 objectForKeyedSubscript:@"creationDate"];
    v100 = v99;
    if (!v99)
    {
      v100 = v12->_cls_universalDate;
    }

    objc_storeStrong(&v12->_cls_universalDate, v100);

    v101 = [v10 objectForKeyedSubscript:@"localCreationDate"];
    cls_localDate = v101;
    if (!v101)
    {
      cls_localDate = v12->_cls_localDate;
    }

    objc_storeStrong(&v12->_cls_localDate, cls_localDate);

    v103 = [v10 objectForKeyedSubscript:@"location"];
    v218 = v103;
    if (v103)
    {
      v104 = [v103 objectForKeyedSubscript:@"latitude"];

      if (v104)
      {
        v105 = v9;
        v106 = objc_alloc(MEMORY[0x277CE41F8]);
        v107 = [v218 objectForKeyedSubscript:@"latitude"];
        [v107 doubleValue];
        v109 = v108;
        v110 = [v218 objectForKeyedSubscript:@"longitude"];
        [v110 doubleValue];
        v111 = v106;
        v9 = v105;
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

    v115 = [v10 objectForKeyedSubscript:@"peopleNames"];
    v116 = v115;
    if (!v115)
    {
      v116 = v12->_clsPersonLocalIdentifiers;
    }

    objc_storeStrong(&v12->_clsPersonLocalIdentifiers, v116);

    v117 = [v10 objectForKeyedSubscript:@"petNames"];
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

    v125 = [v10 objectForKeyedSubscript:@"isUtility"];
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

    v129 = [v10 objectForKeyedSubscript:@"isFavorite"];
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

    v132 = [v10 objectForKeyedSubscript:@"isVideo"];
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

    v135 = [v10 objectForKeyedSubscript:@"contentScore"];
    v136 = v135;
    if (!v135)
    {
      v136 = v12->_clsContentScore;
    }

    objc_storeStrong(&v12->_clsContentScore, v136);

    v137 = [v10 objectForKeyedSubscript:@"aestheticScore"];
    v138 = v137;
    if (!v137)
    {
      v138 = v12->_clsAestheticScore;
    }

    objc_storeStrong(&v12->_clsAestheticScore, v138);

    v139 = [v10 objectForKeyedSubscript:@"faceScore"];
    v140 = v139;
    if (!v139)
    {
      v140 = v12->_clsFaceScore;
    }

    objc_storeStrong(&v12->_clsFaceScore, v140);

    v141 = [v10 objectForKeyedSubscript:@"sceneprint"];
    if (v141)
    {
      v142 = MEMORY[0x277CCAAC8];
      v143 = objc_opt_class();
      v144 = [v10 objectForKeyedSubscript:@"sceneprint"];
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

    v147 = [v10 objectForKeyedSubscript:@"isInterestingVideo"];
    v148 = v147;
    if (!v147)
    {
      v148 = *p_clsIsInterestingVideo;
    }

    objc_storeStrong(p_clsIsInterestingVideo, v148);

    v149 = [v10 objectForKeyedSubscript:@"isInterestingLivePhoto"];
    v150 = v149;
    if (!v149)
    {
      v150 = *p_clsIsInterestingLivePhoto;
    }

    objc_storeStrong(p_clsIsInterestingLivePhoto, v150);

    v151 = [v10 objectForKeyedSubscript:@"isInterestingPanorama"];
    v152 = v151;
    if (!v151)
    {
      v152 = *p_clsIsInterestingPanorama;
    }

    objc_storeStrong(p_clsIsInterestingPanorama, v152);

    v153 = [v10 objectForKeyedSubscript:@"isInterestingSDOF"];
    v154 = v153;
    if (!v153)
    {
      v154 = *p_clsIsInterestingSDOF;
    }

    objc_storeStrong(p_clsIsInterestingSDOF, v154);

    v155 = [v10 objectForKeyedSubscript:@"isInterestingHDR"];
    v156 = v155;
    if (!v155)
    {
      v156 = *p_clsIsInterestingHDR;
    }

    objc_storeStrong(p_clsIsInterestingHDR, v156);

    v157 = [v10 objectForKeyedSubscript:@"hasInterestingAudioClassification"];
    v158 = v157;
    if (!v157)
    {
      v158 = *p_clsHasInterestingAudioClassification;
    }

    objc_storeStrong(p_clsHasInterestingAudioClassification, v158);

    v159 = [v10 objectForKeyedSubscript:@"hasCustomPlaybackVariation"];
    v160 = v159;
    if (!v159)
    {
      v160 = *p_clsHasCustomPlaybackVariation;
    }

    objc_storeStrong(p_clsHasCustomPlaybackVariation, v160);

    v161 = [v10 objectForKeyedSubscript:@"sharpnessScore"];
    v162 = v161;
    if (!v161)
    {
      v162 = *p_clsSharpnessScore;
    }

    objc_storeStrong(p_clsSharpnessScore, v162);

    v163 = [v10 objectForKeyedSubscript:@"exposureScore"];
    v164 = v163;
    if (!v163)
    {
      v164 = *p_clsExposureScore;
    }

    objc_storeStrong(p_clsExposureScore, v164);

    v165 = [v10 objectForKeyedSubscript:@"isBlurry"];
    v166 = v165;
    if (!v165)
    {
      v166 = *p_clsIsBlurry;
    }

    objc_storeStrong(p_clsIsBlurry, v166);

    v167 = [v10 objectForKeyedSubscript:@"isInhabited"];
    v168 = v167;
    if (!v167)
    {
      v168 = *p_clsIsInhabited;
    }

    objc_storeStrong(p_clsIsInhabited, v168);

    v169 = [v10 objectForKeyedSubscript:@"hasInterestingScenes"];
    v170 = v169;
    if (!v169)
    {
      v170 = *p_clsHasInterestingScenes;
    }

    objc_storeStrong(p_clsHasInterestingScenes, v170);

    v171 = [v10 objectForKeyedSubscript:@"highlightVisibilityScore"];
    v172 = v171;
    if (!v171)
    {
      v172 = *p_clsHighlightVisibilityScore;
    }

    objc_storeStrong(p_clsHighlightVisibilityScore, v172);

    v173 = [v10 objectForKeyedSubscript:@"autoplaySuggestionScore"];
    v174 = v173;
    if (!v173)
    {
      v174 = *p_clsAutoplaySuggestionScore;
    }

    objc_storeStrong(p_clsAutoplaySuggestionScore, v174);

    v175 = [v10 objectForKeyedSubscript:@"faceInfos"];
    faceInfos = v175;
    if (!v175)
    {
      faceInfos = v12->_faceInfos;
    }

    objc_storeStrong(&v12->_faceInfos, faceInfos);

    v177 = [v10 objectForKeyedSubscript:@"duration"];
    v178 = v177;
    if (!v177)
    {
      v178 = *p_clsDuration;
    }

    objc_storeStrong(p_clsDuration, v178);

    v179 = [v10 objectForKeyedSubscript:@"isNonMemorable"];
    v180 = v179;
    if (!v179)
    {
      v180 = *p_clsIsNonMemorable;
    }

    objc_storeStrong(p_clsIsNonMemorable, v180);

    v181 = [v10 objectForKeyedSubscript:@"isLoopOrBounce"];
    v182 = v181;
    if (!v181)
    {
      v182 = *p_clsIsLoopOrBounce;
    }

    objc_storeStrong(p_clsIsLoopOrBounce, v182);

    v183 = [v10 objectForKeyedSubscript:@"isLongExposure"];
    v184 = v183;
    if (!v183)
    {
      v184 = v12->_clsIsLongExposure;
    }

    objc_storeStrong(&v12->_clsIsLongExposure, v184);

    v185 = [v10 objectForKeyedSubscript:@"gpsHorizontalAccuracy"];
    v186 = v185;
    if (!v185)
    {
      v186 = v12->_clsGpsHorizontalAccuracy;
    }

    objc_storeStrong(&v12->_clsGpsHorizontalAccuracy, v186);

    v187 = [v10 objectForKeyedSubscript:@"squareCropScore"];
    v188 = v187;
    if (!v187)
    {
      v188 = v12->_clsSquareCropScore;
    }

    objc_storeStrong(&v12->_clsSquareCropScore, v188);

    v189 = [v10 objectForKeyedSubscript:@"isInSharedLibrary"];
    v190 = v189;
    if (!v189)
    {
      v190 = v12->_clsIsInSharedLibrary;
    }

    objc_storeStrong(&v12->_clsIsInSharedLibrary, v190);

    v191 = [v10 objectForKeyedSubscript:@"iconicScore"];
    v192 = v191;
    if (!v191)
    {
      v192 = v12->_clsIconicScore;
    }

    objc_storeStrong(&v12->_clsIconicScore, v192);

    v193 = [v10 objectForKeyedSubscript:@"scenes"];
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

    v11 = v217;
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
    v3 = [MEMORY[0x277CCAD78] UUID];
    v4 = [v3 UUIDString];
    clsIdentifier = v2->_clsIdentifier;
    v2->_clsIdentifier = v4;
  }

  return v2;
}

+ (id)itemWithUUID:(id)a3 itemInfo:(id)a4 curationModel:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [[a1 alloc] initWithUUID:v10 itemInfo:v9 curationModel:v8];

  return v11;
}

@end