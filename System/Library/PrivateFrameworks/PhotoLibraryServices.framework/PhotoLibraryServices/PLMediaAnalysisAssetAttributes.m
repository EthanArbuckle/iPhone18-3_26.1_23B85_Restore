@interface PLMediaAnalysisAssetAttributes
+ (id)fetchRequest;
- ($6C36EBF4C34944E14D6052B25C3B65B5)animatedStickerTimeRange;
- ($6C36EBF4C34944E14D6052B25C3B65B5)bestVideoTimeRange;
- (id)_characterRecognitionAttributesCreateIfNeeded;
- (void)prepareForDeletion;
- (void)resetCharacterRecognitionAttributesResetVersion:(BOOL)a3 resetData:(BOOL)a4;
- (void)resetTextUnderstandingAttributesResetVersion:(BOOL)a3 resetData:(BOOL)a4;
- (void)setAnimatedStickerTimeRange:(id *)a3;
- (void)setBestVideoTimeRange:(id *)a3;
- (void)setCharacterRecognitionData:(id)a3 machineReadableCodeData:(id)a4 algorithmVersion:(signed __int16)a5 adjustmentVersion:(id)a6;
- (void)setStickerConfidenceScore:(float)a3 stickerAlgorithmVersion:(signed __int16)a4;
- (void)setTextUnderstandingData:(id)a3 version:(int64_t)a4;
- (void)setVisualSearchData:(id)a3 algorithmVersion:(signed __int16)a4 adjustmentVersion:(id)a5;
- (void)willSave;
@end

@implementation PLMediaAnalysisAssetAttributes

- (void)willSave
{
  v31 = *MEMORY[0x1E69E9840];
  v28.receiver = self;
  v28.super_class = PLMediaAnalysisAssetAttributes;
  [(PLManagedObject *)&v28 willSave];
  v3 = [(PLMediaAnalysisAssetAttributes *)self managedObjectContext];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_22;
  }

  v4 = [(PLMediaAnalysisAssetAttributes *)self changedValues];
  v5 = [v4 objectForKeyedSubscript:@"syndicationProcessingValue"];

  if (v5)
  {
    v6 = [(PLMediaAnalysisAssetAttributes *)self asset];
    [v6 updateSyndicationStateWithSyndicationProcessingValue:{-[PLMediaAnalysisAssetAttributes syndicationProcessingValue](self, "syndicationProcessingValue")}];

    if (PLPlatformMomentsSupported())
    {
      if ([(PLMediaAnalysisAssetAttributes *)self isUpdated])
      {
        v7 = [(PLMediaAnalysisAssetAttributes *)self asset];
        v8 = [v7 needsMomentUpdate];

        if ((v8 & 1) == 0)
        {
          v9 = PLMomentsGetLog();
          if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
          {
            v10 = [(PLMediaAnalysisAssetAttributes *)self asset];
            v11 = [v10 objectID];
            *buf = 138412290;
            v30 = v11;
            _os_log_impl(&dword_19BF1F000, v9, OS_LOG_TYPE_DEBUG, "Adding asset %@ to be updated in moments due to relevant MediaAnalysisAttributes change", buf, 0xCu);
          }

          v12 = [(PLMediaAnalysisAssetAttributes *)self asset];
          [v12 setNeedsMomentUpdate:1];

          v13 = [v3 delayedSaveActions];
          v14 = [(PLMediaAnalysisAssetAttributes *)self asset];
          [v13 recordAssetForMomentUpdate:v14];
        }
      }
    }
  }

  v15 = [v4 objectForKeyedSubscript:@"exposureScore"];

  if (v15)
  {
    [(PLMediaAnalysisAssetAttributes *)self exposureScore];
    v17 = v16;
    v18 = [(PLMediaAnalysisAssetAttributes *)self asset];
    v19 = [v18 additionalAttributes];
    v20 = v19;
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

    [v19 addDuplicateDetectorPerceptualProcessingStates:v21 removeProcessingStates:v22];
  }

  v23 = [v4 objectForKeyedSubscript:@"textUnderstandingVersion"];
  if (v23)
  {

    goto LABEL_17;
  }

  v24 = [v4 objectForKeyedSubscript:@"mediaAnalysisTimeStamp"];

  if (v24)
  {
LABEL_17:
    v25 = [(PLMediaAnalysisAssetAttributes *)self asset];
    v26 = [v25 isReadyForPurgeSyndicationResources];

    if (v26)
    {
      v27 = [(PLMediaAnalysisAssetAttributes *)self asset];
      [v27 purgeSyndicationResourcesAfterMediaAnalysisProcessing];
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
  v3 = [(PLMediaAnalysisAssetAttributes *)self managedObjectContext];
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
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

- (void)setStickerConfidenceScore:(float)a3 stickerAlgorithmVersion:(signed __int16)a4
{
  v4 = a4;
  v10 = [(PLMediaAnalysisAssetAttributes *)self visualSearchAttributes];
  if (!v10)
  {
    v7 = [(PLMediaAnalysisAssetAttributes *)self managedObjectContext];
    v10 = [(PLManagedObject *)PLVisualSearchAttributes insertInManagedObjectContext:v7];
    if (v10)
    {
      [(PLMediaAnalysisAssetAttributes *)self setVisualSearchAttributes:v10];
    }
  }

  v8 = [(PLMediaAnalysisAssetAttributes *)self asset];
  *&v9 = a3;
  [v8 setStickerConfidenceScore:v9];

  [(PLMediaAnalysisAssetAttributes *)self setVisualSearchStickerConfidenceVersion:v4];
}

- (void)setVisualSearchData:(id)a3 algorithmVersion:(signed __int16)a4 adjustmentVersion:(id)a5
{
  v6 = a4;
  v11 = a3;
  v8 = a5;
  v9 = [(PLMediaAnalysisAssetAttributes *)self visualSearchAttributes];
  if (!v9)
  {
    v10 = [(PLMediaAnalysisAssetAttributes *)self managedObjectContext];
    v9 = [(PLManagedObject *)PLVisualSearchAttributes insertInManagedObjectContext:v10];
    if (v9)
    {
      [(PLMediaAnalysisAssetAttributes *)self setVisualSearchAttributes:v9];
    }
  }

  [v9 setVisualSearchData:v11];
  [(PLMediaAnalysisAssetAttributes *)self setVisualSearchVersion:v6];
  [v9 setAdjustmentVersion:v8];
}

- (void)resetTextUnderstandingAttributesResetVersion:(BOOL)a3 resetData:(BOOL)a4
{
  v4 = a4;
  if (a3 && [(PLMediaAnalysisAssetAttributes *)self textUnderstandingVersion])
  {
    [(PLMediaAnalysisAssetAttributes *)self setTextUnderstandingVersion:0];
  }

  if (v4)
  {
    v6 = [(PLMediaAnalysisAssetAttributes *)self characterRecognitionAttributes];
    v7 = [v6 textUnderstandingData];

    if (v7)
    {
      v8 = [(PLMediaAnalysisAssetAttributes *)self characterRecognitionAttributes];
      [v8 setTextUnderstandingData:0];
    }
  }
}

- (void)setTextUnderstandingData:(id)a3 version:(int64_t)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(PLMediaAnalysisAssetAttributes *)self _characterRecognitionAttributesCreateIfNeeded];
  [(PLMediaAnalysisAssetAttributes *)self setTextUnderstandingVersion:v4];
  [v7 setTextUnderstandingData:v6];
}

- (void)resetCharacterRecognitionAttributesResetVersion:(BOOL)a3 resetData:(BOOL)a4
{
  v4 = a4;
  if (a3 && [(PLMediaAnalysisAssetAttributes *)self characterRecognitionVersion])
  {
    [(PLMediaAnalysisAssetAttributes *)self setCharacterRecognitionVersion:0];
  }

  if (v4)
  {
    v6 = [(PLMediaAnalysisAssetAttributes *)self characterRecognitionAttributes];
    v7 = [v6 characterRecognitionData];

    if (v7)
    {
      v8 = [(PLMediaAnalysisAssetAttributes *)self characterRecognitionAttributes];
      [v8 setCharacterRecognitionData:0];
    }

    v9 = [(PLMediaAnalysisAssetAttributes *)self characterRecognitionAttributes];
    v10 = [v9 machineReadableCodeData];

    if (v10)
    {
      v11 = [(PLMediaAnalysisAssetAttributes *)self characterRecognitionAttributes];
      [v11 setMachineReadableCodeData:0];
    }

    v12 = [(PLMediaAnalysisAssetAttributes *)self characterRecognitionAttributes];
    v13 = [v12 adjustmentVersion];
    v14 = [MEMORY[0x1E695DF00] distantPast];
    v15 = [v13 isEqualToDate:v14];

    if ((v15 & 1) == 0)
    {
      v17 = [MEMORY[0x1E695DF00] distantPast];
      v16 = [(PLMediaAnalysisAssetAttributes *)self characterRecognitionAttributes];
      [v16 setAdjustmentVersion:v17];
    }
  }
}

- (void)setCharacterRecognitionData:(id)a3 machineReadableCodeData:(id)a4 algorithmVersion:(signed __int16)a5 adjustmentVersion:(id)a6
{
  v6 = a5;
  v10 = a6;
  v11 = a4;
  v12 = a3;
  v13 = [(PLMediaAnalysisAssetAttributes *)self _characterRecognitionAttributesCreateIfNeeded];
  [v13 setCharacterRecognitionData:v12];

  [v13 setMachineReadableCodeData:v11];
  [v13 setAdjustmentVersion:v10];

  [(PLMediaAnalysisAssetAttributes *)self setCharacterRecognitionVersion:v6];
}

- (id)_characterRecognitionAttributesCreateIfNeeded
{
  v3 = [(PLMediaAnalysisAssetAttributes *)self characterRecognitionAttributes];
  if (!v3)
  {
    v4 = [(PLMediaAnalysisAssetAttributes *)self managedObjectContext];
    v3 = [(PLManagedObject *)PLCharacterRecognitionAttributes insertInManagedObjectContext:v4];

    if (v3)
    {
      [(PLMediaAnalysisAssetAttributes *)self setCharacterRecognitionAttributes:v3];
    }
  }

  return v3;
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

- (void)setAnimatedStickerTimeRange:(id *)a3
{
  var1 = a3->var0.var1;
  [(PLMediaAnalysisAssetAttributes *)self setAnimatedStickerRangeStartValue:a3->var0.var0];
  [(PLMediaAnalysisAssetAttributes *)self setAnimatedStickerRangeStartTimeScale:var1];
  var0 = a3->var1.var0;
  v7 = a3->var1.var1;
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

- (void)setBestVideoTimeRange:(id *)a3
{
  var1 = a3->var0.var1;
  [(PLMediaAnalysisAssetAttributes *)self setBestVideoRangeStartValue:a3->var0.var0];
  [(PLMediaAnalysisAssetAttributes *)self setBestVideoRangeStartTimeScale:var1];
  var0 = a3->var1.var0;
  v7 = a3->var1.var1;
  [(PLMediaAnalysisAssetAttributes *)self setBestVideoRangeDurationValue:var0];

  [(PLMediaAnalysisAssetAttributes *)self setBestVideoRangeDurationTimeScale:v7];
}

+ (id)fetchRequest
{
  v2 = [objc_alloc(MEMORY[0x1E695D5E0]) initWithEntityName:@"MediaAnalysisAssetAttributes"];

  return v2;
}

@end