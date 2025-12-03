@interface PLMediaAnalysisAssetAttributes
+ (id)fetchRequest;
- ($6C36EBF4C34944E14D6052B25C3B65B5)animatedStickerTimeRange;
- ($6C36EBF4C34944E14D6052B25C3B65B5)bestVideoTimeRange;
- (id)_characterRecognitionAttributesCreateIfNeeded;
- (void)prepareForDeletion;
- (void)resetCharacterRecognitionAttributesResetVersion:(BOOL)version resetData:(BOOL)data;
- (void)resetTextUnderstandingAttributesResetVersion:(BOOL)version resetData:(BOOL)data;
- (void)setAnimatedStickerTimeRange:(id *)range;
- (void)setBestVideoTimeRange:(id *)range;
- (void)setCharacterRecognitionData:(id)data machineReadableCodeData:(id)codeData algorithmVersion:(signed __int16)version adjustmentVersion:(id)adjustmentVersion;
- (void)setStickerConfidenceScore:(float)score stickerAlgorithmVersion:(signed __int16)version;
- (void)setTextUnderstandingData:(id)data version:(int64_t)version;
- (void)setVisualSearchData:(id)data algorithmVersion:(signed __int16)version adjustmentVersion:(id)adjustmentVersion;
- (void)willSave;
@end

@implementation PLMediaAnalysisAssetAttributes

- (void)willSave
{
  v31 = *MEMORY[0x1E69E9840];
  v28.receiver = self;
  v28.super_class = PLMediaAnalysisAssetAttributes;
  [(PLManagedObject *)&v28 willSave];
  managedObjectContext = [(PLMediaAnalysisAssetAttributes *)self managedObjectContext];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_22;
  }

  changedValues = [(PLMediaAnalysisAssetAttributes *)self changedValues];
  v5 = [changedValues objectForKeyedSubscript:@"syndicationProcessingValue"];

  if (v5)
  {
    asset = [(PLMediaAnalysisAssetAttributes *)self asset];
    [asset updateSyndicationStateWithSyndicationProcessingValue:{-[PLMediaAnalysisAssetAttributes syndicationProcessingValue](self, "syndicationProcessingValue")}];

    if (PLPlatformMomentsSupported())
    {
      if ([(PLMediaAnalysisAssetAttributes *)self isUpdated])
      {
        asset2 = [(PLMediaAnalysisAssetAttributes *)self asset];
        needsMomentUpdate = [asset2 needsMomentUpdate];

        if ((needsMomentUpdate & 1) == 0)
        {
          v9 = PLMomentsGetLog();
          if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
          {
            asset3 = [(PLMediaAnalysisAssetAttributes *)self asset];
            objectID = [asset3 objectID];
            *buf = 138412290;
            v30 = objectID;
            _os_log_impl(&dword_19BF1F000, v9, OS_LOG_TYPE_DEBUG, "Adding asset %@ to be updated in moments due to relevant MediaAnalysisAttributes change", buf, 0xCu);
          }

          asset4 = [(PLMediaAnalysisAssetAttributes *)self asset];
          [asset4 setNeedsMomentUpdate:1];

          delayedSaveActions = [managedObjectContext delayedSaveActions];
          asset5 = [(PLMediaAnalysisAssetAttributes *)self asset];
          [delayedSaveActions recordAssetForMomentUpdate:asset5];
        }
      }
    }
  }

  v15 = [changedValues objectForKeyedSubscript:@"exposureScore"];

  if (v15)
  {
    [(PLMediaAnalysisAssetAttributes *)self exposureScore];
    v17 = v16;
    asset6 = [(PLMediaAnalysisAssetAttributes *)self asset];
    additionalAttributes = [asset6 additionalAttributes];
    v20 = additionalAttributes;
    if (v17 == 0.0)
    {
      v21 = 32;
      v22 = 0;
    }

    else
    {
      v21 = 0;
      v22 = 32;
    }

    [additionalAttributes addDuplicateDetectorPerceptualProcessingStates:v21 removeProcessingStates:v22];
  }

  v23 = [changedValues objectForKeyedSubscript:@"textUnderstandingVersion"];
  if (v23)
  {

    goto LABEL_17;
  }

  v24 = [changedValues objectForKeyedSubscript:@"mediaAnalysisTimeStamp"];

  if (v24)
  {
LABEL_17:
    asset7 = [(PLMediaAnalysisAssetAttributes *)self asset];
    isReadyForPurgeSyndicationResources = [asset7 isReadyForPurgeSyndicationResources];

    if (isReadyForPurgeSyndicationResources)
    {
      asset8 = [(PLMediaAnalysisAssetAttributes *)self asset];
      [asset8 purgeSyndicationResourcesAfterMediaAnalysisProcessing];
    }
  }

  if (([(PLMediaAnalysisAssetAttributes *)self isDeleted]& 1) == 0)
  {
    [PLDelayedSearchIndexUpdates recordMediaAnalysisAssetAttributesIfNeeded:self];
  }

LABEL_22:
}

- (void)prepareForDeletion
{
  v5.receiver = self;
  v5.super_class = PLMediaAnalysisAssetAttributes;
  [(PLMediaAnalysisAssetAttributes *)&v5 prepareForDeletion];
  objc_opt_class();
  managedObjectContext = [(PLMediaAnalysisAssetAttributes *)self managedObjectContext];
  if (objc_opt_isKindOfClass())
  {
    v4 = managedObjectContext;
  }

  else
  {
    v4 = 0;
  }

  if (v4)
  {
    [PLDelayedSearchIndexUpdates recordMediaAnalysisAssetAttributesIfNeeded:self];
  }
}

- (void)setStickerConfidenceScore:(float)score stickerAlgorithmVersion:(signed __int16)version
{
  versionCopy = version;
  visualSearchAttributes = [(PLMediaAnalysisAssetAttributes *)self visualSearchAttributes];
  if (!visualSearchAttributes)
  {
    managedObjectContext = [(PLMediaAnalysisAssetAttributes *)self managedObjectContext];
    visualSearchAttributes = [(PLManagedObject *)PLVisualSearchAttributes insertInManagedObjectContext:managedObjectContext];
    if (visualSearchAttributes)
    {
      [(PLMediaAnalysisAssetAttributes *)self setVisualSearchAttributes:visualSearchAttributes];
    }
  }

  asset = [(PLMediaAnalysisAssetAttributes *)self asset];
  *&v9 = score;
  [asset setStickerConfidenceScore:v9];

  [(PLMediaAnalysisAssetAttributes *)self setVisualSearchStickerConfidenceVersion:versionCopy];
}

- (void)setVisualSearchData:(id)data algorithmVersion:(signed __int16)version adjustmentVersion:(id)adjustmentVersion
{
  versionCopy = version;
  dataCopy = data;
  adjustmentVersionCopy = adjustmentVersion;
  visualSearchAttributes = [(PLMediaAnalysisAssetAttributes *)self visualSearchAttributes];
  if (!visualSearchAttributes)
  {
    managedObjectContext = [(PLMediaAnalysisAssetAttributes *)self managedObjectContext];
    visualSearchAttributes = [(PLManagedObject *)PLVisualSearchAttributes insertInManagedObjectContext:managedObjectContext];
    if (visualSearchAttributes)
    {
      [(PLMediaAnalysisAssetAttributes *)self setVisualSearchAttributes:visualSearchAttributes];
    }
  }

  [visualSearchAttributes setVisualSearchData:dataCopy];
  [(PLMediaAnalysisAssetAttributes *)self setVisualSearchVersion:versionCopy];
  [visualSearchAttributes setAdjustmentVersion:adjustmentVersionCopy];
}

- (void)resetTextUnderstandingAttributesResetVersion:(BOOL)version resetData:(BOOL)data
{
  dataCopy = data;
  if (version && [(PLMediaAnalysisAssetAttributes *)self textUnderstandingVersion])
  {
    [(PLMediaAnalysisAssetAttributes *)self setTextUnderstandingVersion:0];
  }

  if (dataCopy)
  {
    characterRecognitionAttributes = [(PLMediaAnalysisAssetAttributes *)self characterRecognitionAttributes];
    textUnderstandingData = [characterRecognitionAttributes textUnderstandingData];

    if (textUnderstandingData)
    {
      characterRecognitionAttributes2 = [(PLMediaAnalysisAssetAttributes *)self characterRecognitionAttributes];
      [characterRecognitionAttributes2 setTextUnderstandingData:0];
    }
  }
}

- (void)setTextUnderstandingData:(id)data version:(int64_t)version
{
  versionCopy = version;
  dataCopy = data;
  _characterRecognitionAttributesCreateIfNeeded = [(PLMediaAnalysisAssetAttributes *)self _characterRecognitionAttributesCreateIfNeeded];
  [(PLMediaAnalysisAssetAttributes *)self setTextUnderstandingVersion:versionCopy];
  [_characterRecognitionAttributesCreateIfNeeded setTextUnderstandingData:dataCopy];
}

- (void)resetCharacterRecognitionAttributesResetVersion:(BOOL)version resetData:(BOOL)data
{
  dataCopy = data;
  if (version && [(PLMediaAnalysisAssetAttributes *)self characterRecognitionVersion])
  {
    [(PLMediaAnalysisAssetAttributes *)self setCharacterRecognitionVersion:0];
  }

  if (dataCopy)
  {
    characterRecognitionAttributes = [(PLMediaAnalysisAssetAttributes *)self characterRecognitionAttributes];
    characterRecognitionData = [characterRecognitionAttributes characterRecognitionData];

    if (characterRecognitionData)
    {
      characterRecognitionAttributes2 = [(PLMediaAnalysisAssetAttributes *)self characterRecognitionAttributes];
      [characterRecognitionAttributes2 setCharacterRecognitionData:0];
    }

    characterRecognitionAttributes3 = [(PLMediaAnalysisAssetAttributes *)self characterRecognitionAttributes];
    machineReadableCodeData = [characterRecognitionAttributes3 machineReadableCodeData];

    if (machineReadableCodeData)
    {
      characterRecognitionAttributes4 = [(PLMediaAnalysisAssetAttributes *)self characterRecognitionAttributes];
      [characterRecognitionAttributes4 setMachineReadableCodeData:0];
    }

    characterRecognitionAttributes5 = [(PLMediaAnalysisAssetAttributes *)self characterRecognitionAttributes];
    adjustmentVersion = [characterRecognitionAttributes5 adjustmentVersion];
    distantPast = [MEMORY[0x1E695DF00] distantPast];
    v15 = [adjustmentVersion isEqualToDate:distantPast];

    if ((v15 & 1) == 0)
    {
      distantPast2 = [MEMORY[0x1E695DF00] distantPast];
      characterRecognitionAttributes6 = [(PLMediaAnalysisAssetAttributes *)self characterRecognitionAttributes];
      [characterRecognitionAttributes6 setAdjustmentVersion:distantPast2];
    }
  }
}

- (void)setCharacterRecognitionData:(id)data machineReadableCodeData:(id)codeData algorithmVersion:(signed __int16)version adjustmentVersion:(id)adjustmentVersion
{
  versionCopy = version;
  adjustmentVersionCopy = adjustmentVersion;
  codeDataCopy = codeData;
  dataCopy = data;
  _characterRecognitionAttributesCreateIfNeeded = [(PLMediaAnalysisAssetAttributes *)self _characterRecognitionAttributesCreateIfNeeded];
  [_characterRecognitionAttributesCreateIfNeeded setCharacterRecognitionData:dataCopy];

  [_characterRecognitionAttributesCreateIfNeeded setMachineReadableCodeData:codeDataCopy];
  [_characterRecognitionAttributesCreateIfNeeded setAdjustmentVersion:adjustmentVersionCopy];

  [(PLMediaAnalysisAssetAttributes *)self setCharacterRecognitionVersion:versionCopy];
}

- (id)_characterRecognitionAttributesCreateIfNeeded
{
  characterRecognitionAttributes = [(PLMediaAnalysisAssetAttributes *)self characterRecognitionAttributes];
  if (!characterRecognitionAttributes)
  {
    managedObjectContext = [(PLMediaAnalysisAssetAttributes *)self managedObjectContext];
    characterRecognitionAttributes = [(PLManagedObject *)PLCharacterRecognitionAttributes insertInManagedObjectContext:managedObjectContext];

    if (characterRecognitionAttributes)
    {
      [(PLMediaAnalysisAssetAttributes *)self setCharacterRecognitionAttributes:characterRecognitionAttributes];
    }
  }

  return characterRecognitionAttributes;
}

- ($6C36EBF4C34944E14D6052B25C3B65B5)animatedStickerTimeRange
{
  memset(&v9, 0, sizeof(v9));
  CMTimeMake(&v9, [(PLMediaAnalysisAssetAttributes *)self animatedStickerRangeStartValue], [(PLMediaAnalysisAssetAttributes *)self animatedStickerRangeStartTimeScale]);
  memset(&v8, 0, sizeof(v8));
  CMTimeMake(&v8, [(PLMediaAnalysisAssetAttributes *)self animatedStickerRangeDurationValue], [(PLMediaAnalysisAssetAttributes *)self animatedStickerRangeDurationTimeScale]);
  start = v9;
  v6 = v8;
  return CMTimeRangeMake(retstr, &start, &v6);
}

- (void)setAnimatedStickerTimeRange:(id *)range
{
  var1 = range->var0.var1;
  [(PLMediaAnalysisAssetAttributes *)self setAnimatedStickerRangeStartValue:range->var0.var0];
  [(PLMediaAnalysisAssetAttributes *)self setAnimatedStickerRangeStartTimeScale:var1];
  var0 = range->var1.var0;
  v7 = range->var1.var1;
  [(PLMediaAnalysisAssetAttributes *)self setAnimatedStickerRangeDurationValue:var0];

  [(PLMediaAnalysisAssetAttributes *)self setAnimatedStickerRangeDurationTimeScale:v7];
}

- ($6C36EBF4C34944E14D6052B25C3B65B5)bestVideoTimeRange
{
  memset(&v9, 0, sizeof(v9));
  CMTimeMake(&v9, [(PLMediaAnalysisAssetAttributes *)self bestVideoRangeStartValue], [(PLMediaAnalysisAssetAttributes *)self bestVideoRangeStartTimeScale]);
  memset(&v8, 0, sizeof(v8));
  CMTimeMake(&v8, [(PLMediaAnalysisAssetAttributes *)self bestVideoRangeDurationValue], [(PLMediaAnalysisAssetAttributes *)self bestVideoRangeDurationTimeScale]);
  start = v9;
  v6 = v8;
  return CMTimeRangeMake(retstr, &start, &v6);
}

- (void)setBestVideoTimeRange:(id *)range
{
  var1 = range->var0.var1;
  [(PLMediaAnalysisAssetAttributes *)self setBestVideoRangeStartValue:range->var0.var0];
  [(PLMediaAnalysisAssetAttributes *)self setBestVideoRangeStartTimeScale:var1];
  var0 = range->var1.var0;
  v7 = range->var1.var1;
  [(PLMediaAnalysisAssetAttributes *)self setBestVideoRangeDurationValue:var0];

  [(PLMediaAnalysisAssetAttributes *)self setBestVideoRangeDurationTimeScale:v7];
}

+ (id)fetchRequest
{
  v2 = [objc_alloc(MEMORY[0x1E695D5E0]) initWithEntityName:@"MediaAnalysisAssetAttributes"];

  return v2;
}

@end