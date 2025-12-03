@interface RCComposition
+ (BOOL)_isSessionWithModificationAccessActiveForComposedAVURL:(id)l;
+ (BOOL)_markCompositionAVURLsBeingModified:(id)modified;
+ (BOOL)excludeFromBackup:(id)backup error:(id *)error;
+ (BOOL)migrateBackupExclusionFlag:(id)flag;
+ (id)_compositionFragmentsFolderForComposedAVURL:(id)l;
+ (id)_compositionLoadedFromMetadataURL:(id)l composedAVURL:(id)rL savedRecordingUUID:(id)d creationDate:(id)date createIfNeeded:(BOOL)needed;
+ (id)_compositionLoadedFromMetadataURL:(id)l savedRecording:(id)recording;
+ (id)_unitTestingCompositionWithDecomposedFragments:(id)fragments;
+ (id)compositionLoadedForEditingSavedRecording:(id)recording error:(id *)error;
+ (id)compositionLoadedForSavedRecording:(id)recording;
+ (id)compositionLoadedFromCompositionBundleURL:(id)l;
+ (id)compositionMetadataURLForComposedAVURL:(id)l;
+ (id)mergeCaptureFragmentMetadataURLForComposedAVURL:(id)l;
+ (id)uriRepresentationForLegacyComposedAVURL:(id)l;
+ (void)deleteFromFilesystem:(id)filesystem;
- ($F24F406B2B787EFB06265DBA3D28CBD5)composedTimeRangeForTrackIndex:(unint64_t)index;
- (BOOL)_enumerateTracksForInsertion:(id)insertion error:(id *)error;
- (BOOL)hasSpatialAudio;
- (BOOL)isContentBeingModified;
- (BOOL)rcs_allAssetsAreMissing;
- (BOOL)saveMetadataToDefaultLocation;
- (NSArray)composedFragments;
- (NSArray)composedWaveformURLs;
- (NSString)description;
- (RCComposition)initWithDictionaryPListRepresentation:(id)representation;
- (id)_calculateComposedFragments;
- (id)_compositionAsset:(id *)asset;
- (id)_initWithComposedAVURL:(id)l savedRecordingUUID:(id)d creationDate:(id)date title:(id)title musicMemoMetadata:(id)metadata decomposedFragments:(id)fragments composedFragments:(id)composedFragments;
- (id)_initWithSavedRecording:(id)recording decomposedFragments:(id)fragments composedFragments:(id)composedFragments;
- (id)bufferEnumerator:(id)enumerator startTime:(double)time error:(id *)error;
- (id)composedFragmentsIntersectingTimeRange:(id)range;
- (id)compositionByClippingToComposedTimeRange:(id)range;
- (id)compositionByDeletingAndSplittingAtComposedTimeRange:(id)range;
- (id)compositionByOverdubbingWithFragment:(id)fragment;
- (id)dictionaryPListRepresentation;
- (id)moveTo:(id)to recordingID:(id)d error:(id *)error;
- (id)newRandomFragmentWithInsertionTimeRangeInComposition:(id)composition trackIndex:(unint64_t)index pathExtension:(id)extension;
- (id)playableAsset:(id *)asset;
- (unint64_t)_fileSizeOfComposedAssets;
- (unint64_t)fileSizeOfAssets;
- (void)_calculateComposedAVURLDerivedValues;
- (void)_loadMusicMemoMetadata;
- (void)_updateCachedValueForHasSpatialAudio;
- (void)deleteFromFilesystem;
- (void)enumerateOrphanedFragmentsWithBlock:(id)block;
- (void)recacheAVURLDerivedValues;
- (void)saveMetadataToDefaultLocation;
- (void)setComposedFragments:(id)fragments;
- (void)setDecomposedFragments:(id)fragments;
@end

@implementation RCComposition

- (id)_initWithComposedAVURL:(id)l savedRecordingUUID:(id)d creationDate:(id)date title:(id)title musicMemoMetadata:(id)metadata decomposedFragments:(id)fragments composedFragments:(id)composedFragments
{
  lCopy = l;
  dCopy = d;
  dateCopy = date;
  titleCopy = title;
  metadataCopy = metadata;
  fragmentsCopy = fragments;
  composedFragmentsCopy = composedFragments;
  v32.receiver = self;
  v32.super_class = RCComposition;
  v19 = [(RCComposition *)&v32 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_composedAVURL, l);
    objc_storeStrong(&v20->_savedRecordingUUID, d);
    objc_storeStrong(&v20->_creationDate, date);
    objc_storeStrong(&v20->_title, title);
    objc_storeStrong(&v20->_musicMemoMetadata, metadata);
    if (fragmentsCopy)
    {
      array = fragmentsCopy;
    }

    else
    {
      array = [MEMORY[0x277CBEA60] array];
    }

    decomposedFragments = v20->_decomposedFragments;
    v20->_decomposedFragments = array;

    if (composedFragmentsCopy)
    {
      _calculateComposedFragments = composedFragmentsCopy;
    }

    else
    {
      _calculateComposedFragments = [(RCComposition *)v20 _calculateComposedFragments];
    }

    composedFragments = v20->_composedFragments;
    v20->_composedFragments = _calculateComposedFragments;

    v25 = objc_opt_new();
    composedFragmentsMutex = v20->_composedFragmentsMutex;
    v20->_composedFragmentsMutex = v25;
  }

  return v20;
}

- (id)_initWithSavedRecording:(id)recording decomposedFragments:(id)fragments composedFragments:(id)composedFragments
{
  recordingCopy = recording;
  fragmentsCopy = fragments;
  composedFragmentsCopy = composedFragments;
  v26.receiver = self;
  v26.super_class = RCComposition;
  v11 = [(RCComposition *)&v26 init];
  if (v11)
  {
    v12 = [recordingCopy url];
    objc_storeStrong(&v11->_composedAVURL, v12);
    uuid = [recordingCopy uuid];
    savedRecordingUUID = v11->_savedRecordingUUID;
    v11->_savedRecordingUUID = uuid;

    creationDate = [recordingCopy creationDate];
    creationDate = v11->_creationDate;
    v11->_creationDate = creationDate;

    title = [recordingCopy title];
    title = v11->_title;
    v11->_title = title;

    if ([recordingCopy musicMemo])
    {
      [(RCComposition *)v11 _loadMusicMemoMetadata];
    }

    if (fragmentsCopy)
    {
      array = fragmentsCopy;
    }

    else
    {
      array = [MEMORY[0x277CBEA60] array];
    }

    decomposedFragments = v11->_decomposedFragments;
    v11->_decomposedFragments = array;

    if (composedFragmentsCopy)
    {
      _calculateComposedFragments = composedFragmentsCopy;
    }

    else
    {
      _calculateComposedFragments = [(RCComposition *)v11 _calculateComposedFragments];
    }

    composedFragments = v11->_composedFragments;
    v11->_composedFragments = _calculateComposedFragments;

    v23 = objc_opt_new();
    composedFragmentsMutex = v11->_composedFragmentsMutex;
    v11->_composedFragmentsMutex = v23;
  }

  return v11;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v12.receiver = self;
  v12.super_class = RCComposition;
  v4 = [(RCComposition *)&v12 description];
  savedRecordingUUID = self->_savedRecordingUUID;
  path = [(NSURL *)self->_composedAVURL path];
  composedWaveformURLs = [(RCComposition *)self composedWaveformURLs];
  v8 = MEMORY[0x277CCABB0];
  [(RCComposition *)self composedDuration];
  v9 = [v8 numberWithDouble:?];
  v10 = [v3 stringWithFormat:@"%@ savedRecordingUUID = %@, AVURL = %@ (waveformURLs = %@), composedDuration = %@, _decomposedFragments = %@", v4, savedRecordingUUID, path, composedWaveformURLs, v9, self->_decomposedFragments];

  return v10;
}

- (RCComposition)initWithDictionaryPListRepresentation:(id)representation
{
  v45 = *MEMORY[0x277D85DE8];
  representationCopy = representation;
  v43.receiver = self;
  v43.super_class = RCComposition;
  v5 = [(RCComposition *)&v43 init];
  if (!v5)
  {
    goto LABEL_17;
  }

  v6 = MEMORY[0x277CBEBC0];
  v7 = [representationCopy objectForKey:@"RCComposedAVURL"];
  v8 = [v6 URLWithString:v7];
  rc_URLByFixingUpPersistentMediaRecordingsDirectory = [v8 rc_URLByFixingUpPersistentMediaRecordingsDirectory];
  composedAVURL = v5->_composedAVURL;
  v5->_composedAVURL = rc_URLByFixingUpPersistentMediaRecordingsDirectory;

  v11 = [representationCopy objectForKey:@"RCSavedRecordingUUID"];
  savedRecordingUUID = v5->_savedRecordingUUID;
  v5->_savedRecordingUUID = v11;

  v13 = [representationCopy objectForKey:@"RCSavedRecordingCreationTime"];
  v38 = v13;
  if (v13)
  {
    v14 = MEMORY[0x277CBEAA8];
    [v13 doubleValue];
    [v14 dateWithTimeIntervalSinceReferenceDate:?];
  }

  else
  {
    [representationCopy objectForKey:@"RCSavedRecordingCreationDate"];
  }
  v15 = ;
  creationDate = v5->_creationDate;
  v5->_creationDate = v15;

  v17 = [representationCopy objectForKey:@"RCSavedRecordingTitle"];
  title = v5->_title;
  v5->_title = v17;

  v19 = [representationCopy objectForKey:@"RCSavedRecordingMusicMemoMetadata"];
  musicMemoMetadata = v5->_musicMemoMetadata;
  v5->_musicMemoMetadata = v19;

  array = [MEMORY[0x277CBEB18] array];
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v22 = [representationCopy objectForKey:@"RCDecomposedFragments"];
  v23 = [v22 countByEnumeratingWithState:&v39 objects:v44 count:16];
  if (v23)
  {
    v24 = v23;
    v25 = *v40;
    do
    {
      for (i = 0; i != v24; ++i)
      {
        if (*v40 != v25)
        {
          objc_enumerationMutation(v22);
        }

        v27 = [[RCCompositionFragment alloc] initWithDictionaryPListRepresentation:*(*(&v39 + 1) + 8 * i)];
        [array addObject:v27];
      }

      v24 = [v22 countByEnumeratingWithState:&v39 objects:v44 count:16];
    }

    while (v24);
  }

  objc_storeStrong(&v5->_decomposedFragments, array);
  _calculateComposedFragments = [(RCComposition *)v5 _calculateComposedFragments];
  composedFragments = v5->_composedFragments;
  v5->_composedFragments = _calculateComposedFragments;

  v30 = objc_opt_new();
  composedFragmentsMutex = v5->_composedFragmentsMutex;
  v5->_composedFragmentsMutex = v30;

  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v33 = [defaultManager rc_fileExistsAndIsInValidRecordingURL:v5->_composedAVURL];

  if (!v33)
  {

LABEL_17:
    v35 = v5;
    goto LABEL_18;
  }

  v34 = OSLogForCategory(@"Default");
  if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
  {
    [RCComposition initWithDictionaryPListRepresentation:?];
  }

  v35 = 0;
LABEL_18:

  v36 = *MEMORY[0x277D85DE8];
  return v35;
}

- (id)dictionaryPListRepresentation
{
  v25 = *MEMORY[0x277D85DE8];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  absoluteString = [(NSURL *)self->_composedAVURL absoluteString];
  if (absoluteString)
  {
    [dictionary setObject:absoluteString forKey:@"RCComposedAVURL"];
  }

  v5 = self->_savedRecordingUUID;

  if (v5)
  {
    [dictionary setObject:v5 forKey:@"RCSavedRecordingUUID"];
  }

  creationDate = self->_creationDate;
  if (creationDate)
  {
    v7 = MEMORY[0x277CCABB0];
    [(NSDate *)creationDate timeIntervalSinceReferenceDate];
    v8 = [v7 numberWithDouble:?];
    [dictionary setObject:v8 forKey:@"RCSavedRecordingCreationTime"];

    [dictionary setObject:self->_creationDate forKey:@"RCSavedRecordingCreationDate"];
  }

  title = [(RCComposition *)self title];

  if (title)
  {
    [dictionary setObject:title forKey:@"RCSavedRecordingTitle"];
  }

  musicMemoMetadata = self->_musicMemoMetadata;
  if (musicMemoMetadata)
  {
    [dictionary setObject:musicMemoMetadata forKey:@"RCSavedRecordingMusicMemoMetadata"];
  }

  array = [MEMORY[0x277CBEB18] array];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v12 = self->_decomposedFragments;
  v13 = [(NSArray *)v12 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v21;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v21 != v15)
        {
          objc_enumerationMutation(v12);
        }

        dictionaryPListRepresentation = [*(*(&v20 + 1) + 8 * i) dictionaryPListRepresentation];
        [array addObject:dictionaryPListRepresentation];
      }

      v14 = [(NSArray *)v12 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v14);
  }

  [dictionary setObject:array forKey:@"RCDecomposedFragments"];
  v18 = *MEMORY[0x277D85DE8];

  return dictionary;
}

+ (id)_unitTestingCompositionWithDecomposedFragments:(id)fragments
{
  v3 = MEMORY[0x277CBEBC0];
  fragmentsCopy = fragments;
  v5 = [v3 URLWithString:@"*composedAVURL*"];
  v6 = [objc_alloc(objc_opt_class()) _initWithComposedAVURL:v5 savedRecordingUUID:0 creationDate:0 title:0 musicMemoMetadata:0 decomposedFragments:fragmentsCopy composedFragments:0];

  return v6;
}

+ (id)_compositionLoadedFromMetadataURL:(id)l composedAVURL:(id)rL savedRecordingUUID:(id)d creationDate:(id)date createIfNeeded:(BOOL)needed
{
  neededCopy = needed;
  rLCopy = rL;
  dCopy = d;
  dateCopy = date;
  v14 = [MEMORY[0x277CBEA90] dataWithContentsOfURL:l];
  if (v14)
  {
    v22 = 0;
    v15 = [MEMORY[0x277CCAC58] propertyListWithData:v14 options:0 format:0 error:&v22];
    v16 = v22;
    if (v16)
    {
      v17 = v16;
      v18 = OSLogForCategory(@"Default");
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        +[RCComposition _compositionLoadedFromMetadataURL:composedAVURL:savedRecordingUUID:creationDate:createIfNeeded:];
      }

      v19 = 0;
    }

    else
    {
      v20 = [objc_alloc(objc_opt_class()) initWithDictionaryPListRepresentation:v15];
      v19 = v20;
      if (dCopy)
      {
        [v20 setSavedRecordingUUID:dCopy];
      }
    }
  }

  else
  {
    v19 = 0;
    if (rLCopy && neededCopy)
    {
      v19 = [objc_alloc(objc_opt_class()) _initWithComposedAVURL:rLCopy savedRecordingUUID:dCopy creationDate:dateCopy title:0 musicMemoMetadata:0 decomposedFragments:0 composedFragments:0];
    }
  }

  return v19;
}

+ (id)_compositionLoadedFromMetadataURL:(id)l savedRecording:(id)recording
{
  recordingCopy = recording;
  v6 = [MEMORY[0x277CBEA90] dataWithContentsOfURL:l];
  if (!v6)
  {
    if (recordingCopy)
    {
      v11 = [objc_alloc(objc_opt_class()) _initWithSavedRecording:recordingCopy decomposedFragments:0 composedFragments:0];
      goto LABEL_13;
    }

    goto LABEL_8;
  }

  v16 = 0;
  v7 = [MEMORY[0x277CCAC58] propertyListWithData:v6 options:0 format:0 error:&v16];
  v8 = v16;
  if (v8)
  {
    v9 = v8;
    v10 = OSLogForCategory(@"Default");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      +[RCComposition _compositionLoadedFromMetadataURL:savedRecording:];
    }

LABEL_8:
    v11 = 0;
    goto LABEL_13;
  }

  v11 = [objc_alloc(objc_opt_class()) initWithDictionaryPListRepresentation:v7];
  if (recordingCopy)
  {
    uuid = [recordingCopy uuid];
    [v11 setSavedRecordingUUID:uuid];

    creationDate = [recordingCopy creationDate];
    [v11 setCreationDate:creationDate];

    title = [recordingCopy title];
    [v11 setTitle:title];

    if ([recordingCopy musicMemo])
    {
      [v11 _loadMusicMemoMetadata];
    }
  }

LABEL_13:

  return v11;
}

+ (id)compositionLoadedFromCompositionBundleURL:(id)l
{
  v4 = [self _compositionMetadataURLForCompositionBundleURL:l];
  v5 = [self _compositionLoadedFromMetadataURL:v4 composedAVURL:0 savedRecordingUUID:0 creationDate:0 createIfNeeded:0];

  return v5;
}

+ (id)uriRepresentationForLegacyComposedAVURL:(id)l
{
  v3 = [RCComposition compositionMetadataURLForComposedAVURL:l];
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithContentsOfURL:v3];
  v5 = [v4 objectForKeyedSubscript:@"RCSavedRecordingURI"];
  if (v5)
  {
    v6 = [MEMORY[0x277CBEBC0] URLWithString:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)compositionLoadedForSavedRecording:(id)recording
{
  recordingCopy = recording;
  v5 = [recordingCopy url];
  v6 = [RCComposition compositionMetadataURLForComposedAVURL:v5];

  v7 = [self _compositionLoadedFromMetadataURL:v6 savedRecording:recordingCopy];

  return v7;
}

+ (id)compositionLoadedForEditingSavedRecording:(id)recording error:(id *)error
{
  v28[2] = *MEMORY[0x277D85DE8];
  recordingCopy = recording;
  v7 = [self compositionLoadedForSavedRecording:recordingCopy];
  composedFragments = [v7 composedFragments];
  v9 = [composedFragments count];

  if (!v9)
  {
    v10 = [recordingCopy url];
    [recordingCopy length];
    v12 = v11;
    v13 = RCTimeRangeMake(0.0, v11);
    v15 = v14;
    pathExtension = [v10 pathExtension];
    v17 = [v7 newRandomFragmentWithInsertionTimeRangeInComposition:0 trackIndex:pathExtension pathExtension:{v13, v15}];
    v18 = [v17 mutableCopy];

    [v18 setContentDuration:v12];
    [v18 setTimeRangeInContentToUse:{v13, v15}];
    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    aVOutputURL = [v18 AVOutputURL];
    v21 = [defaultManager moveItemAtURL:v10 toURL:aVOutputURL error:error];

    if (!v21)
    {

      v24 = 0;
      goto LABEL_9;
    }

    if ([v7 hasMultipleTracks])
    {
      v22 = [v18 mutableCopy];
      [v22 setTrackIndex:1];
      v28[0] = v18;
      v28[1] = v22;
      v23 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:2];
      [v7 setDecomposedFragments:v23];
    }

    else
    {
      v27 = v18;
      v22 = [MEMORY[0x277CBEA60] arrayWithObjects:&v27 count:1];
      [v7 setDecomposedFragments:v22];
    }

    [v7 saveMetadataToDefaultLocation];
  }

  v24 = v7;
LABEL_9:

  v25 = *MEMORY[0x277D85DE8];

  return v24;
}

- (BOOL)isContentBeingModified
{
  v3 = objc_opt_class();
  composedAVURL = [(RCComposition *)self composedAVURL];
  LOBYTE(v3) = [v3 _isSessionWithModificationAccessActiveForComposedAVURL:composedAVURL];

  return v3;
}

- (void)setDecomposedFragments:(id)fragments
{
  fragmentsCopy = fragments;
  p_decomposedFragments = &self->_decomposedFragments;
  if (self->_decomposedFragments != fragmentsCopy)
  {
    v8 = fragmentsCopy;
    objc_storeStrong(p_decomposedFragments, fragments);
    _calculateComposedFragments = [(RCComposition *)self _calculateComposedFragments];
    [(RCComposition *)self setComposedFragments:_calculateComposedFragments];

    p_decomposedFragments = [(RCComposition *)self recacheAVURLDerivedValues];
    fragmentsCopy = v8;
  }

  MEMORY[0x2821F96F8](p_decomposedFragments, fragmentsCopy);
}

- (NSArray)composedFragments
{
  v3 = self->_composedFragmentsMutex;
  objc_sync_enter(v3);
  v4 = [(NSArray *)self->_composedFragments copy];
  objc_sync_exit(v3);

  return v4;
}

- (void)setComposedFragments:(id)fragments
{
  fragmentsCopy = fragments;
  v5 = self->_composedFragmentsMutex;
  objc_sync_enter(v5);
  composedFragments = self->_composedFragments;
  self->_composedFragments = fragmentsCopy;
  v7 = fragmentsCopy;

  objc_sync_exit(v5);
}

- (NSArray)composedWaveformURLs
{
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v4 = objc_opt_new();
  for (i = 0; i != 3; ++i)
  {
    v6 = [(RCComposition *)self composedWaveformURLForTrackIndex:qword_272492520[i]];
    v7 = v6;
    if (v6)
    {
      path = [v6 path];
      v9 = [defaultManager fileExistsAtPath:path];

      if (v9)
      {
        [v4 addObject:v7];
      }
    }
  }

  return v4;
}

- ($F24F406B2B787EFB06265DBA3D28CBD5)composedTimeRangeForTrackIndex:(unint64_t)index
{
  [(RCComposition *)self _calculateComposedAVURLDerivedValues];
  v5 = &self->_cachedTrackRanges[index];
  if (index >= 2)
  {
    v5 = &RCTimeRangeZero;
  }

  beginTime = v5->beginTime;
  endTime = v5->endTime;
  result.var1 = endTime;
  result.var0 = beginTime;
  return result;
}

- (unint64_t)fileSizeOfAssets
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  decomposedFragments = [(RCComposition *)self decomposedFragments];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __33__RCComposition_fileSizeOfAssets__block_invoke;
  v7[3] = &unk_279E44198;
  v7[4] = &v8;
  [decomposedFragments enumerateObjectsUsingBlock:v7];

  v4 = v9[3];
  _fileSizeOfComposedAssets = [(RCComposition *)self _fileSizeOfComposedAssets];
  _Block_object_dispose(&v8, 8);
  return _fileSizeOfComposedAssets + v4;
}

uint64_t __33__RCComposition_fileSizeOfAssets__block_invoke(uint64_t a1, void *a2)
{
  result = [a2 fileSizeOfAssets];
  *(*(*(a1 + 32) + 8) + 24) += result;
  return result;
}

- (unint64_t)_fileSizeOfComposedAssets
{
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  path = [(NSURL *)self->_composedAVURL path];
  v5 = [defaultManager fileExistsAtPath:path];

  if (v5)
  {
    path2 = [(NSURL *)self->_composedAVURL path];
    v7 = [defaultManager attributesOfItemAtPath:path2 error:0];
    v8 = [v7 objectForKey:*MEMORY[0x277CCA1C0]];
    longLongValue = [v8 longLongValue];
  }

  else
  {
    longLongValue = 0;
  }

  return longLongValue;
}

- (id)composedFragmentsIntersectingTimeRange:(id)range
{
  var1 = range.var1;
  var0 = range.var0;
  array = [MEMORY[0x277CBEB18] array];
  composedFragments = [(RCComposition *)self composedFragments];
  objectEnumerator = [composedFragments objectEnumerator];

  nextObject = 0;
  while (1)
  {
    v10 = nextObject;
    nextObject = [objectEnumerator nextObject];

    if (!nextObject)
    {
      break;
    }

    [nextObject timeRangeInComposition];
    if (RCTimeRangeIntersectsRange(v11, v12, var0, var1))
    {
      [array addObject:nextObject];
      nextObject2 = [objectEnumerator nextObject];

      if (nextObject2)
      {
        do
        {
          [nextObject2 timeRangeInComposition];
          if (v14 >= var1)
          {
            break;
          }

          [array addObject:nextObject2];
          nextObject3 = [objectEnumerator nextObject];

          nextObject2 = nextObject3;
        }

        while (nextObject3);
      }

      break;
    }
  }

  return array;
}

- (id)compositionByDeletingAndSplittingAtComposedTimeRange:(id)range
{
  var1 = range.var1;
  var0 = range.var0;
  v50 = *MEMORY[0x277D85DE8];
  v6 = [(RCComposition *)self compositionByClippingToComposedTimeRange:RCTimeRangeMake(-3.40282347e38, range.var0)];
  v7 = [(RCComposition *)self compositionByClippingToComposedTimeRange:RCTimeRangeMake(var1, 3.40282347e38)];
  v8 = v7;
  if (v6)
  {
    v9 = [v6 mutableCopy];
    decomposedFragments = [v8 decomposedFragments];
    if (decomposedFragments)
    {
      v33 = v8;
      v34 = v6;
      decomposedFragments2 = [v9 decomposedFragments];
      v11 = [decomposedFragments2 mutableCopy];

      v12 = 0;
      v13 = 1;
      v35 = v9;
      do
      {
        v38 = v13;
        composedFragments = [v9 composedFragments];
        v15 = [composedFragments fragmentsWithTrackIndex:v12];

        v37 = v15;
        lastObject = [v15 lastObject];
        [lastObject timeRangeInComposition];
        v18 = v17;

        v41 = 0u;
        v42 = 0u;
        v39 = 0u;
        v40 = 0u;
        v19 = [decomposedFragments fragmentsWithTrackIndex:v12];
        v20 = [v19 countByEnumeratingWithState:&v39 objects:v49 count:16];
        if (v20)
        {
          v21 = v20;
          v22 = *v40;
          do
          {
            v23 = 0;
            do
            {
              if (*v40 != v22)
              {
                objc_enumerationMutation(v19);
              }

              v24 = [*(*(&v39 + 1) + 8 * v23) mutableCopy];
              [v24 timeRangeInComposition];
              v27 = RCTimeRangeShift(v25, v26, v18);
              if (var0 >= v27)
              {
                v28 = var0;
              }

              else
              {
                v28 = v27;
              }

              [v24 setTimeRangeInComposition:v28];
              [v11 addObject:v24];
              if (v28 < var0)
              {
                v29 = OSLogForCategory(@"Default");
                if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
                {
                  v30 = NSStringFromRCTimeRange(var0, var1);
                  *buf = 136315650;
                  v44 = "[RCComposition compositionByDeletingAndSplittingAtComposedTimeRange:]";
                  v45 = 2112;
                  v46 = v24;
                  v47 = 2112;
                  v48 = v30;
                  _os_log_error_impl(&dword_272442000, v29, OS_LOG_TYPE_ERROR, "%s -- Invalid fragment times:  %@, composedTimeRange = %@", buf, 0x20u);
                }
              }

              ++v23;
            }

            while (v21 != v23);
            v21 = [v19 countByEnumeratingWithState:&v39 objects:v49 count:16];
          }

          while (v21);
        }

        v13 = 0;
        v12 = 1;
        v9 = v35;
      }

      while ((v38 & 1) != 0);
      [v35 setDecomposedFragments:v11];

      v8 = v33;
      v6 = v34;
    }
  }

  else
  {
    v9 = [v7 mutableCopy];
  }

  v31 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)compositionByClippingToComposedTimeRange:(id)range
{
  var1 = range.var1;
  var0 = range.var0;
  v33 = *MEMORY[0x277D85DE8];
  v6 = [(RCComposition *)self composedFragmentsIntersectingTimeRange:?];
  firstObject = [v6 firstObject];
  if ([v6 count] < 2)
  {
    v9 = 0;
    if (firstObject)
    {
      goto LABEL_7;
    }
  }

  else
  {
    lastObject = [v6 lastObject];

    v9 = lastObject != 0;
    if (firstObject)
    {
      goto LABEL_7;
    }
  }

  if (!v9)
  {
    v10 = 0;
    goto LABEL_19;
  }

LABEL_7:
  array = [MEMORY[0x277CBEB18] array];
  v12 = 0;
  v13 = 1;
  do
  {
    v14 = v13;
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v15 = [v6 fragmentsWithTrackIndex:{v12, 0}];
    v16 = [v15 countByEnumeratingWithState:&v28 objects:v32 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v29;
      v19 = 0.0;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v29 != v18)
          {
            objc_enumerationMutation(v15);
          }

          v21 = [*(*(&v28 + 1) + 8 * i) mutableCopy];
          if ([v21 intersectWithTimeRange:{var0, var1}])
          {
            [v21 timeRangeInComposition];
            v24 = RCTimeRangeDeltaWithExactPrecision(v22, v23);
            v25 = v19 + v24;
            [v21 setTimeRangeInComposition:{RCTimeRangeMake(v19, v19 + v24)}];
            [array addObject:v21];
            v19 = v25;
          }
        }

        v17 = [v15 countByEnumeratingWithState:&v28 objects:v32 count:16];
      }

      while (v17);
    }

    v13 = 0;
    v12 = 1;
  }

  while ((v14 & 1) != 0);
  v10 = [(RCComposition *)self mutableCopy];
  [v10 setDecomposedFragments:array];
  [v10 recacheAVURLDerivedValues];

LABEL_19:
  v26 = *MEMORY[0x277D85DE8];

  return v10;
}

- (id)compositionByOverdubbingWithFragment:(id)fragment
{
  v62[1] = *MEMORY[0x277D85DE8];
  fragmentCopy = fragment;
  if (-[RCComposition hasMultipleTracks](self, "hasMultipleTracks") || [fragmentCopy trackIndex])
  {
    v5 = [(RCComposition *)self mutableCopy];
    decomposedFragments = [(RCComposition *)self decomposedFragments];
    v7 = [decomposedFragments mutableCopy];

    [v7 addObject:fragmentCopy];
    [v5 setDecomposedFragments:v7];
    _calculateComposedFragments = [v5 _calculateComposedFragments];
    [v5 setComposedFragments:_calculateComposedFragments];

    [v5 recacheAVURLDerivedValues];
  }

  else
  {
    [fragmentCopy timeRangeInComposition];
    v12 = v11;
    v14 = v13;
    [(RCComposition *)self composedDuration];
    v16 = RCTimeRangeMake(0.0, v15);
    if (RCTimeRangeContainsRange(v12, v14, v16, v17))
    {
      v5 = [(RCComposition *)self mutableCopy];
      v62[0] = fragmentCopy;
      v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v62 count:1];
      [v5 setDecomposedFragments:v18];
    }

    else
    {
      v19 = [(RCComposition *)self compositionByClippingToComposedTimeRange:RCTimeRangeMake(-3.40282347e38, v12)];
      v20 = [(RCComposition *)self compositionByClippingToComposedTimeRange:RCTimeRangeMake(v14, 3.40282347e38)];
      v21 = v20;
      if (v19)
      {
        v5 = [v19 mutableCopy];
        decomposedFragments2 = [v19 decomposedFragments];
        lastObject = [decomposedFragments2 lastObject];
        [lastObject timeRangeInComposition];
        if (v24 != v12)
        {
          v25 = OSLogForCategory(@"Default");
          if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
          {
            [(RCComposition *)v12 compositionByOverdubbingWithFragment:v14];
          }
        }

        v26 = [decomposedFragments2 arrayByAddingObject:fragmentCopy];
        [v5 setDecomposedFragments:v26];
      }

      else
      {
        v5 = [v20 mutableCopy];
        v61 = fragmentCopy;
        decomposedFragments2 = [MEMORY[0x277CBEA60] arrayWithObjects:&v61 count:1];
        [v5 setDecomposedFragments:decomposedFragments2];
      }

      decomposedFragments3 = [v21 decomposedFragments];
      if (decomposedFragments3)
      {
        v47 = v21;
        v48 = v19;
        v49 = fragmentCopy;
        decomposedFragments4 = [v5 decomposedFragments];
        v29 = [decomposedFragments4 mutableCopy];

        composedFragments = [v5 composedFragments];
        lastObject2 = [composedFragments lastObject];
        [lastObject2 timeRangeInComposition];
        v33 = v32;

        v52 = 0u;
        v53 = 0u;
        v50 = 0u;
        v51 = 0u;
        v46 = decomposedFragments3;
        v34 = decomposedFragments3;
        v35 = [v34 countByEnumeratingWithState:&v50 objects:v60 count:16];
        if (v35)
        {
          v36 = v35;
          v37 = *v51;
          do
          {
            v38 = 0;
            do
            {
              if (*v51 != v37)
              {
                objc_enumerationMutation(v34);
              }

              v39 = [*(*(&v50 + 1) + 8 * v38) mutableCopy];
              [v39 timeRangeInComposition];
              v42 = RCTimeRangeShift(v40, v41, v33);
              if (v14 >= v42)
              {
                v43 = v14;
              }

              else
              {
                v43 = v42;
              }

              [v39 setTimeRangeInComposition:v43];
              [v29 addObject:v39];
              if (v43 < v14)
              {
                v44 = OSLogForCategory(@"Default");
                if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
                {
                  v45 = NSStringFromRCTimeRange(v12, v14);
                  *buf = 136315650;
                  v55 = "[RCComposition compositionByOverdubbingWithFragment:]";
                  v56 = 2112;
                  v57 = v39;
                  v58 = 2112;
                  v59 = v45;
                  _os_log_error_impl(&dword_272442000, v44, OS_LOG_TYPE_ERROR, "%s -- Invalid fragment times:  %@, composedTimeRange = %@", buf, 0x20u);
                }
              }

              ++v38;
            }

            while (v36 != v38);
            v36 = [v34 countByEnumeratingWithState:&v50 objects:v60 count:16];
          }

          while (v36);
        }

        [v5 setDecomposedFragments:v29];
        v19 = v48;
        fragmentCopy = v49;
        decomposedFragments3 = v46;
        v21 = v47;
      }
    }
  }

  v9 = *MEMORY[0x277D85DE8];

  return v5;
}

- (id)newRandomFragmentWithInsertionTimeRangeInComposition:(id)composition trackIndex:(unint64_t)index pathExtension:(id)extension
{
  var1 = composition.var1;
  var0 = composition.var0;
  v9 = MEMORY[0x277CCAD78];
  extensionCopy = extension;
  uUID = [v9 UUID];
  uUIDString = [uUID UUIDString];

  v13 = [objc_opt_class() _compositionFragmentsFolderForComposedAVURL:self->_composedAVURL];
  v14 = [v13 URLByAppendingPathComponent:uUIDString];
  v15 = [v14 URLByAppendingPathExtension:extensionCopy];

  [(RCComposition *)self composedDuration];
  v17 = v16;
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  uRLByDeletingLastPathComponent = [v15 URLByDeletingLastPathComponent];
  v29 = 0;
  LOBYTE(v14) = [defaultManager createDirectoryAtURL:uRLByDeletingLastPathComponent withIntermediateDirectories:1 attributes:0 error:&v29];
  v20 = v29;

  if ((v14 & 1) == 0)
  {
    v21 = OSLogForCategory(@"Default");
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      [RCComposition newRandomFragmentWithInsertionTimeRangeInComposition:v15 trackIndex:? pathExtension:?];
    }
  }

  v22 = fmax(var0, var0 + 0.0500000007);
  if (var1 >= v17)
  {
    v23 = var1;
  }

  else
  {
    v23 = v17;
  }

  v24 = v22 < v17;
  if (v22 >= v17)
  {
    v25 = v23;
  }

  else
  {
    v25 = var1;
  }

  if (!v24)
  {
    var0 = v17;
  }

  if (v17 >= v25)
  {
    v26 = v25;
  }

  else
  {
    v26 = v17;
  }

  v27 = [[RCCompositionFragment alloc] initWithAVOutputURL:v15 contentDuration:index timeRangeInContentToUse:0.0 timeRangeInComposition:-1.79769313e308 trackIndex:1.79769313e308, var0, v26];

  return v27;
}

- (void)enumerateOrphanedFragmentsWithBlock:(id)block
{
  v42 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  v30 = +[RCCaptureFormat fileExtensionsSupported];
  v4 = [MEMORY[0x277CBEB58] set];
  if ([(NSArray *)self->_decomposedFragments count])
  {
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v5 = self->_decomposedFragments;
    v6 = [(NSArray *)v5 countByEnumeratingWithState:&v36 objects:v41 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v37;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v37 != v8)
          {
            objc_enumerationMutation(v5);
          }

          aVOutputURL = [*(*(&v36 + 1) + 8 * i) AVOutputURL];
          lastPathComponent = [aVOutputURL lastPathComponent];
          [v4 addObject:lastPathComponent];
        }

        v7 = [(NSArray *)v5 countByEnumeratingWithState:&v36 objects:v41 count:16];
      }

      while (v7);
    }
  }

  lastPathComponent2 = [(NSURL *)self->_composedAVURL lastPathComponent];
  [v4 addObject:lastPathComponent2];

  v13 = [objc_opt_class() _compositionFragmentsFolderForComposedAVURL:self->_composedAVURL];
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  array = [MEMORY[0x277CBEA60] array];
  v16 = [defaultManager contentsOfDirectoryAtURL:v13 includingPropertiesForKeys:array options:5 error:0];

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v17 = v16;
  v18 = [v17 countByEnumeratingWithState:&v32 objects:v40 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v33;
    do
    {
      for (j = 0; j != v19; ++j)
      {
        if (*v33 != v20)
        {
          objc_enumerationMutation(v17);
        }

        v22 = *(*(&v32 + 1) + 8 * j);
        lastPathComponent3 = [v22 lastPathComponent];
        if ([v4 containsObject:lastPathComponent3])
        {
        }

        else
        {
          pathExtension = [v22 pathExtension];
          v25 = [v30 containsObject:pathExtension];

          if (v25)
          {
            v31 = 0;
            v26 = [[RCCompositionFragment alloc] initWithAVOutputURL:v22 contentDuration:0 timeRangeInContentToUse:0.0 timeRangeInComposition:-1.79769313e308 trackIndex:1.79769313e308, -1.79769313e308, 1.79769313e308];
            blockCopy[2](blockCopy, v26, &v31);
            v27 = v31;

            if (v27)
            {
              goto LABEL_21;
            }
          }
        }
      }

      v19 = [v17 countByEnumeratingWithState:&v32 objects:v40 count:16];
    }

    while (v19);
  }

LABEL_21:

  v28 = *MEMORY[0x277D85DE8];
}

- (void)deleteFromFilesystem
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = OSLogForCategory(@"Default");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v5 = 136315394;
    v6 = "[RCComposition deleteFromFilesystem]";
    v7 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_272442000, v3, OS_LOG_TYPE_INFO, "%s -- deleting all composition assets for %@", &v5, 0x16u);
  }

  [RCComposition deleteFromFilesystem:self->_composedAVURL];
  v4 = *MEMORY[0x277D85DE8];
}

+ (void)deleteFromFilesystem:(id)filesystem
{
  v15 = *MEMORY[0x277D85DE8];
  filesystemCopy = filesystem;
  v4 = OSLogForCategory(@"Default");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v11 = 136315394;
    v12 = "+[RCComposition deleteFromFilesystem:]";
    v13 = 2112;
    v14 = filesystemCopy;
    _os_log_impl(&dword_272442000, v4, OS_LOG_TYPE_INFO, "%s -- deleting all composition assets for %@", &v11, 0x16u);
  }

  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v6 = [RCWaveform waveformURLForAVURL:filesystemCopy trackIndex:-1];
  [defaultManager removeItemAtURL:v6 error:0];
  v7 = [RCWaveform waveformURLForAVURL:filesystemCopy trackIndex:0];

  [defaultManager removeItemAtURL:v7 error:0];
  v8 = [RCWaveform waveformURLForAVURL:filesystemCopy trackIndex:1];

  [defaultManager removeItemAtURL:v8 error:0];
  v9 = [filesystemCopy rc_URLByReplacingPathExtensionWithExtension:@"composition"];
  [defaultManager removeItemAtURL:filesystemCopy error:0];
  [defaultManager removeItemAtURL:v9 error:0];

  v10 = *MEMORY[0x277D85DE8];
}

+ (BOOL)excludeFromBackup:(id)backup error:(id *)error
{
  v22 = *MEMORY[0x277D85DE8];
  backupCopy = backup;
  v6 = OSLogForCategory(@"Default");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v18 = 136315394;
    v19 = "+[RCComposition excludeFromBackup:error:]";
    v20 = 2112;
    v21 = backupCopy;
    _os_log_impl(&dword_272442000, v6, OS_LOG_TYPE_DEFAULT, "%s -- excluding from backup %@", &v18, 0x16u);
  }

  path = [backupCopy path];
  v8 = chmod([path fileSystemRepresentation], 0x1A4u);

  if (v8)
  {
    if (error)
    {
      [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:*__error() userInfo:0];
      *error = v9 = 0;
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v10 = *MEMORY[0x277CBECB0];
    v11 = MEMORY[0x277CBEC38];
    v9 = [backupCopy setResourceValue:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277CBECB0] error:error];
    v12 = [RCWaveform waveformURLForAVURL:backupCopy trackIndex:-1];
    [v12 setResourceValue:v11 forKey:v10 error:0];
    v13 = [RCWaveform waveformURLForAVURL:backupCopy trackIndex:0];

    [v13 setResourceValue:v11 forKey:v10 error:0];
    v14 = [RCWaveform waveformURLForAVURL:backupCopy trackIndex:1];

    [v14 setResourceValue:v11 forKey:v10 error:0];
    v15 = [backupCopy rc_URLByReplacingPathExtensionWithExtension:@"composition"];
    [v15 setResourceValue:v11 forKey:v10 error:0];
  }

  v16 = *MEMORY[0x277D85DE8];
  return v9;
}

+ (BOOL)migrateBackupExclusionFlag:(id)flag
{
  v15 = *MEMORY[0x277D85DE8];
  flagCopy = flag;
  v4 = OSLogForCategory(@"Default");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 136315394;
    v12 = "+[RCComposition migrateBackupExclusionFlag:]";
    v13 = 2112;
    v14 = flagCopy;
    _os_log_impl(&dword_272442000, v4, OS_LOG_TYPE_DEFAULT, "%s -- migrating backup exclusion flag %@", &v11, 0x16u);
  }

  migrateBackupExclusionFlag(flagCopy);
  v5 = [RCWaveform waveformURLForAVURL:flagCopy trackIndex:-1];
  migrateBackupExclusionFlag(v5);

  v6 = [RCWaveform waveformURLForAVURL:flagCopy trackIndex:0];
  migrateBackupExclusionFlag(v6);

  v7 = [RCWaveform waveformURLForAVURL:flagCopy trackIndex:1];
  migrateBackupExclusionFlag(v7);

  v8 = [flagCopy rc_URLByReplacingPathExtensionWithExtension:@"composition"];
  migrateBackupExclusionFlag(v8);

  v9 = *MEMORY[0x277D85DE8];
  return 1;
}

- (BOOL)saveMetadataToDefaultLocation
{
  dictionaryPListRepresentation = [(RCComposition *)self dictionaryPListRepresentation];
  if (dictionaryPListRepresentation)
  {
    v17 = 0;
    v4 = [MEMORY[0x277CCAC58] dataWithPropertyList:dictionaryPListRepresentation format:100 options:0 error:&v17];
    v5 = v17;
    if (v5)
    {
      v6 = OSLogForCategory(@"Default");
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        [RCComposition saveMetadataToDefaultLocation];
      }

      v7 = 0;
      goto LABEL_21;
    }

    composedAVURL = [(RCComposition *)self composedAVURL];
    v6 = [RCComposition compositionMetadataURLForComposedAVURL:composedAVURL];

    v9 = OSLogForCategory(@"Default");
    v10 = v9;
    if (v6)
    {
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        [(RCComposition *)v6 saveMetadataToDefaultLocation];
      }

      if (![v4 length])
      {
        v7 = 1;
        goto LABEL_21;
      }

      defaultManager = [MEMORY[0x277CCAA00] defaultManager];
      uRLByDeletingLastPathComponent = [v6 URLByDeletingLastPathComponent];
      v16 = 0;
      v13 = [defaultManager createDirectoryAtURL:uRLByDeletingLastPathComponent withIntermediateDirectories:1 attributes:0 error:&v16];
      v10 = v16;

      if ((v13 & 1) == 0)
      {
        v14 = OSLogForCategory(@"Default");
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          [(RCComposition *)v6 saveMetadataToDefaultLocation];
        }
      }

      v7 = [v4 writeToURL:v6 atomically:1];
    }

    else
    {
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        [(RCComposition *)v10 saveMetadataToDefaultLocation];
      }

      v7 = 0;
    }

LABEL_21:
    goto LABEL_22;
  }

  v7 = 0;
LABEL_22:

  return v7;
}

- (void)recacheAVURLDerivedValues
{
  self->_cachedComposedAVURLDuration = -1.0;
  self->_cachedTrackRanges[0] = RCTimeRangeZero;
  self->_cachedTrackRanges[1] = RCTimeRangeZero;
  *&self->_cachedValueForHasSpatialAudioIsValid = 0;
  [(RCComposition *)self _calculateComposedAVURLDerivedValues];
}

- (void)_loadMusicMemoMetadata
{
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  path = [(NSURL *)self->_composedAVURL path];
  v5 = [defaultManager fileExistsAtPath:path isDirectory:0];

  if (v5)
  {
    v6 = [MEMORY[0x277CE6650] assetWithURL:self->_composedAVURL];
    if (RCMusicMemosKeys_onceToken != -1)
    {
      [RCComposition _loadMusicMemoMetadata];
    }

    v7 = RCMusicMemosKeys_musicMemosKeys;
    rc_recordingMetadata = [v6 rc_recordingMetadata];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __39__RCComposition__loadMusicMemoMetadata__block_invoke;
    v12[3] = &unk_279E441C0;
    v13 = v7;
    v9 = v7;
    v10 = [rc_recordingMetadata na_filter:v12];
    musicMemoMetadata = self->_musicMemoMetadata;
    self->_musicMemoMetadata = v10;
  }
}

+ (id)compositionMetadataURLForComposedAVURL:(id)l
{
  v3 = [self compositionBundleURLForComposedAVURL:l];
  v4 = [v3 URLByAppendingPathComponent:@"manifest.plist"];

  return v4;
}

+ (id)_compositionFragmentsFolderForComposedAVURL:(id)l
{
  v3 = [self compositionBundleURLForComposedAVURL:l];
  v4 = [v3 URLByAppendingPathComponent:@"fragments"];

  return v4;
}

+ (id)mergeCaptureFragmentMetadataURLForComposedAVURL:(id)l
{
  v3 = [self compositionBundleURLForComposedAVURL:l];
  v4 = [v3 URLByAppendingPathComponent:@"mergeCaptureFragment.plist"];

  return v4;
}

- (BOOL)hasSpatialAudio
{
  [(RCComposition *)self _calculateComposedAVURLDerivedValues];
  [(RCComposition *)self _updateCachedValueForHasSpatialAudio];
  return self->_cachedHasSpatialAudio;
}

- (void)_calculateComposedAVURLDerivedValues
{
  v9 = *MEMORY[0x277D85DE8];
  path = [*self path];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_0(&dword_272442000, v2, v3, "%s -- could not open audio file path = %@, error = %@", v4, v5, v6, v7, 2u);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)_updateCachedValueForHasSpatialAudio
{
  if (!self->_cachedValueForHasSpatialAudioIsValid)
  {
    composedFragments = [(RCComposition *)self composedFragments];
    v4 = MEMORY[0x277CBEB98];
    v5 = [composedFragments na_map:&__block_literal_global_3];
    v6 = [v4 setWithArray:v5];
    self->_cachedHasSpatialAudio = [v6 na_any:&__block_literal_global_71];

    self->_cachedValueForHasSpatialAudioIsValid = 1;
  }
}

uint64_t __53__RCComposition__updateCachedValueForHasSpatialAudio__block_invoke_2(uint64_t a1, uint64_t a2)
{
  v2 = [MEMORY[0x277CE6650] assetWithURL:a2];
  v3 = [v2 rc_hasSpatialTracks];

  return v3;
}

- (id)_calculateComposedFragments
{
  v141 = *MEMORY[0x277D85DE8];
  if ([(NSArray *)self->_decomposedFragments count])
  {
    array3 = objc_opt_new();
    array = [MEMORY[0x277CBEB18] array];
    v2 = 0;
    v3 = 1;
    while (1)
    {
      v110 = v3;
      v123 = 0u;
      v124 = 0u;
      v121 = 0u;
      v122 = 0u;
      obj = [(NSArray *)self->_decomposedFragments fragmentsWithTrackIndex:v2];
      v114 = [obj countByEnumeratingWithState:&v121 objects:v137 count:16];
      if (!v114)
      {
        goto LABEL_77;
      }

      v112 = *v122;
      do
      {
        for (i = 0; i != v114; ++i)
        {
          if (*v122 != v112)
          {
            objc_enumerationMutation(obj);
          }

          v5 = *(*(&v121 + 1) + 8 * i);
          v6 = array;
          v7 = v5;
          v8 = v6;
          v9 = v7;
          if ([v8 count] && (v10 = objc_msgSend(v8, "count")) != 0)
          {
            v11 = v10;
            v12 = 0;
            v13 = 0x7FFFFFFFFFFFFFFFLL;
            while (1)
            {
              while (1)
              {
                v14 = [v8 objectAtIndexedSubscript:v12];
                [v14 timeRangeInComposition];
                v16 = v15;
                if (v13 != 0x7FFFFFFFFFFFFFFFLL)
                {
                  break;
                }

                [v9 timeRangeInComposition];
                if (v12 != 0x7FFFFFFFFFFFFFFFLL)
                {
                  v13 = v12;
                  if (v17 <= v16)
                  {
                    break;
                  }
                }

                ++v12;
                v13 = 0x7FFFFFFFFFFFFFFFLL;
                if (v12 == v11)
                {
                  v20 = 0;
                  goto LABEL_27;
                }
              }

              [v9 timeRangeInComposition];
              if (v18 == v16)
              {
                break;
              }

              [v9 timeRangeInComposition];
              if (v19 < v16)
              {
                goto LABEL_24;
              }

              if (++v12 == v11)
              {
                goto LABEL_25;
              }
            }

            v21 = [v8 count];
            if (v12 + 1 < (v21 - 1))
            {
              ++v12;
            }

            else
            {
              v12 = v21 - 1;
            }

LABEL_24:

            if (v12 == 0x7FFFFFFFFFFFFFFFLL)
            {
LABEL_25:
              v12 = [v8 count] - 1;
            }

            v20 = v12 - v13 + 1;
          }

          else
          {
            v20 = 0;
            v13 = 0x7FFFFFFFFFFFFFFFLL;
          }

LABEL_27:

          if (!v20)
          {
            goto LABEL_62;
          }

          v120 = v9;
          v118 = i;
          array2 = [MEMORY[0x277CBEB18] array];
          v116 = v13;
          v117 = v8;
          v115 = v20;
          v23 = [v8 subarrayWithRange:{v13, v20}];
          v133 = 0u;
          v134 = 0u;
          v135 = 0u;
          v136 = 0u;
          v119 = v23;
          v24 = [v23 countByEnumeratingWithState:&v133 objects:v140 count:16];
          if (!v24)
          {
            goto LABEL_61;
          }

          v25 = v24;
          v26 = *v134;
          do
          {
            v27 = 0;
            do
            {
              if (*v134 != v26)
              {
                objc_enumerationMutation(v119);
              }

              v28 = *(*(&v133 + 1) + 8 * v27);
              [v120 timeRangeInComposition];
              v30 = v29;
              v32 = v31;
              v33 = v28;
              [v33 timeRangeInComposition];
              v35 = v34;
              v37 = v36;
              [v33 timeRangeInComposition];
              v39 = v38;
              [v33 timeRangeInContentToUse];
              v42 = RCTimeRangeDeltaWithExactPrecision(v40, v41);
              v43 = RCTimeRangeMake(v39, v42);
              if (v30 >= v37 || v32 <= v35)
              {
                v46 = [v33 mutableCopy];
                v138[0] = v46;
                goto LABEL_38;
              }

              v48 = v43;
              v49 = v44;
              if (!RCTimeRangeContainsRange(v30, v32, v35, v37))
              {
                if (RCTimeRangeContainsRange(v35, v37, v30, v32))
                {
                  v58 = v37 - v32;
                  v46 = [v33 mutableCopy];
                  [v33 timeRangeInContentToUse];
                  v60 = v59;
                  [v33 timeRangeInContentToUse];
                  [v46 setTimeRangeInContentToUse:{RCTimeRangeMake(v60, v30 - v35 + v61)}];
                  [v46 setTimeRangeInComposition:{RCTimeRangeMake(v48, v30)}];
                  v62 = [v33 mutableCopy];
                  [v33 timeRangeInContentToUse];
                  v64 = v63 - v58;
                  [v33 timeRangeInContentToUse];
                  [v62 setTimeRangeInContentToUse:{RCTimeRangeMake(v64, v65)}];
                  [v62 setTimeRangeInComposition:{RCTimeRangeMake(v32, v49)}];
                  v138[0] = v46;
                  v138[1] = v62;
                  v47 = [MEMORY[0x277CBEA60] arrayWithObjects:v138 count:2];

                  goto LABEL_39;
                }

                if (v32 < v37)
                {
                  v46 = [v33 mutableCopy];
                  [v33 timeRangeInContentToUse];
                  v67 = v32 - v35 + v66;
                  [v33 timeRangeInContentToUse];
                  [v46 setTimeRangeInContentToUse:{RCTimeRangeMake(v67, v68)}];
                  v69 = v32;
                  v70 = v49;
LABEL_59:
                  [v46 setTimeRangeInComposition:{RCTimeRangeMake(v69, v70)}];
                  v138[0] = v46;
LABEL_38:
                  v47 = [MEMORY[0x277CBEA60] arrayWithObjects:v138 count:1];
LABEL_39:

                  goto LABEL_42;
                }

                if (v30 > v35)
                {
                  v46 = [v33 mutableCopy];
                  [v33 timeRangeInContentToUse];
                  v72 = v71;
                  [v33 timeRangeInContentToUse];
                  [v46 setTimeRangeInContentToUse:{RCTimeRangeMake(v72, v73 - (v37 - v30))}];
                  v69 = v48;
                  v70 = v30;
                  goto LABEL_59;
                }
              }

              v47 = MEMORY[0x277CBEBF8];
LABEL_42:

              v129 = 0u;
              v130 = 0u;
              v131 = 0u;
              v132 = 0u;
              v50 = v47;
              v51 = [v50 countByEnumeratingWithState:&v129 objects:v139 count:16];
              if (v51)
              {
                v52 = v51;
                v53 = *v130;
                do
                {
                  for (j = 0; j != v52; ++j)
                  {
                    if (*v130 != v53)
                    {
                      objc_enumerationMutation(v50);
                    }

                    v55 = *(*(&v129 + 1) + 8 * j);
                    [v55 timeRangeInContentToUse];
                    if (RCTimeRangeDeltaWithExactPrecision(v56, v57) > 2.22044605e-16)
                    {
                      [array2 addObject:v55];
                    }
                  }

                  v52 = [v50 countByEnumeratingWithState:&v129 objects:v139 count:16];
                }

                while (v52);
              }

              ++v27;
            }

            while (v27 != v25);
            v74 = [v119 countByEnumeratingWithState:&v133 objects:v140 count:16];
            v25 = v74;
          }

          while (v74);
LABEL_61:
          v8 = v117;
          [v117 replaceObjectsInRange:v116 withObjectsFromArray:{v115, array2}];

          i = v118;
          v9 = v120;
LABEL_62:
          for (k = 0; k < [v8 count]; ++k)
          {
            v76 = [v8 objectAtIndexedSubscript:k];
            [v9 timeRangeInComposition];
            v78 = v77;
            [v76 timeRangeInComposition];
            v80 = v79;

            if (v78 <= v80)
            {
              break;
            }
          }

          v81 = [v9 mutableCopy];
          [v9 timeRangeInComposition];
          [v81 setTimeRangeInComposition:{RCTimeRangeMake(v82, 0.0)}];
          [v8 insertObject:v81 atIndex:k];
          [v9 timeRangeInContentToUse];
          v85 = RCTimeRangeDeltaWithExactPrecision(v83, v84);
          [v9 timeRangeInComposition];
          v88 = RCTimeRangeDeltaWithExactPrecision(v86, v87);
          v89 = k + 1;
          if (v89 < [v8 count])
          {
            v90 = v85 - v88;
            do
            {
              v91 = [v8 objectAtIndexedSubscript:v89];
              [v91 timeRangeInComposition];
              [v91 setTimeRangeInComposition:{RCTimeRangeShift(v92, v93, v90)}];

              ++v89;
            }

            while (v89 < [v8 count]);
          }

          v127 = 0u;
          v128 = 0u;
          v125 = 0u;
          v126 = 0u;
          v94 = v8;
          v95 = [v94 countByEnumeratingWithState:&v125 objects:v138 count:16];
          if (v95)
          {
            v96 = v95;
            v97 = *v126;
            do
            {
              for (m = 0; m != v96; ++m)
              {
                if (*v126 != v97)
                {
                  objc_enumerationMutation(v94);
                }

                v99 = *(*(&v125 + 1) + 8 * m);
                [v99 timeRangeInContentToUse];
                v102 = RCTimeRangeDeltaWithExactPrecision(v100, v101);
                [v99 timeRangeInComposition];
                v104 = v103;
                [v99 timeRangeInComposition];
                [v99 setTimeRangeInComposition:{RCTimeRangeMake(v104, v102 + v105)}];
              }

              v96 = [v94 countByEnumeratingWithState:&v125 objects:v138 count:16];
            }

            while (v96);
          }
        }

        v114 = [obj countByEnumeratingWithState:&v121 objects:v137 count:16];
      }

      while (v114);
LABEL_77:

      [array3 addObjectsFromArray:array];
      [array removeAllObjects];
      v3 = 0;
      v2 = 1;
      if ((v110 & 1) == 0)
      {

        goto LABEL_80;
      }
    }
  }

  array3 = [MEMORY[0x277CBEA60] array];
LABEL_80:
  v106 = *MEMORY[0x277D85DE8];

  return array3;
}

+ (BOOL)_isSessionWithModificationAccessActiveForComposedAVURL:(id)l
{
  lCopy = l;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __72__RCComposition__isSessionWithModificationAccessActiveForComposedAVURL___block_invoke;
  v7[3] = &unk_279E44228;
  v8 = lCopy;
  v9 = &v10;
  v4 = lCopy;
  _accessActiveCaptureCompositionAVURLs(v7);
  v5 = *(v11 + 24);

  _Block_object_dispose(&v10, 8);
  return v5;
}

uint64_t __72__RCComposition__isSessionWithModificationAccessActiveForComposedAVURL___block_invoke(uint64_t a1, void *a2)
{
  result = [a2 containsObject:*(a1 + 32)];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

+ (BOOL)_markCompositionAVURLsBeingModified:(id)modified
{
  modifiedCopy = modified;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __53__RCComposition__markCompositionAVURLsBeingModified___block_invoke;
  v7[3] = &unk_279E44228;
  v8 = modifiedCopy;
  v9 = &v10;
  v4 = modifiedCopy;
  _accessActiveCaptureCompositionAVURLs(v7);
  v5 = *(v11 + 24);

  _Block_object_dispose(&v10, 8);
  return v5;
}

void __53__RCComposition__markCompositionAVURLsBeingModified___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  *(*(*(a1 + 40) + 8) + 24) = [v3 isEqual:*(a1 + 32)] ^ 1;
  if (*(*(*(a1 + 40) + 8) + 24) == 1)
  {
    [v3 removeAllObjects];
    [v3 unionSet:*(a1 + 32)];
    v4 = OSLogForCategory(@"Default");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      __53__RCComposition__markCompositionAVURLsBeingModified___block_invoke_cold_1(v3);
    }
  }
}

- (BOOL)rcs_allAssetsAreMissing
{
  v20 = *MEMORY[0x277D85DE8];
  composedAVURL = [(RCComposition *)self composedAVURL];
  v4 = [composedAVURL checkResourceIsReachableAndReturnError:0];

  if (v4)
  {
    v5 = 0;
  }

  else
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    decomposedFragments = [(RCComposition *)self decomposedFragments];
    v7 = [decomposedFragments countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v16;
      while (2)
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v16 != v9)
          {
            objc_enumerationMutation(decomposedFragments);
          }

          aVOutputURL = [*(*(&v15 + 1) + 8 * i) AVOutputURL];
          v12 = [aVOutputURL checkResourceIsReachableAndReturnError:0];

          if (v12)
          {
            v5 = 0;
            goto LABEL_13;
          }
        }

        v8 = [decomposedFragments countByEnumeratingWithState:&v15 objects:v19 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }

    v5 = 1;
LABEL_13:
  }

  v13 = *MEMORY[0x277D85DE8];
  return v5;
}

- (id)moveTo:(id)to recordingID:(id)d error:(id *)error
{
  v42 = *MEMORY[0x277D85DE8];
  toCopy = to;
  dCopy = d;
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  composedAVURL = [(RCComposition *)self composedAVURL];
  v13 = [RCComposition compositionBundleURLForComposedAVURL:composedAVURL];

  v14 = [RCComposition compositionBundleURLForComposedAVURL:toCopy];
  if ([defaultManager moveItemAtURL:v13 toURL:v14 error:error])
  {
    v31 = v14;
    v33 = v13;
    v34 = defaultManager;
    v35 = dCopy;
    v15 = [(RCComposition *)self mutableCopy];
    objc_storeStrong(v15 + 7, to);
    objc_storeStrong(v15 + 8, d);
    v36 = toCopy;
    v16 = [objc_opt_class() _compositionFragmentsFolderForComposedAVURL:toCopy];
    v17 = objc_opt_new();
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v32 = v15;
    decomposedFragments = [v15 decomposedFragments];
    v19 = [decomposedFragments countByEnumeratingWithState:&v37 objects:v41 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v38;
      do
      {
        for (i = 0; i != v20; ++i)
        {
          if (*v38 != v21)
          {
            objc_enumerationMutation(decomposedFragments);
          }

          v23 = *(*(&v37 + 1) + 8 * i);
          v24 = [v23 mutableCopy];
          aVOutputURL = [v23 AVOutputURL];
          lastPathComponent = [aVOutputURL lastPathComponent];
          v27 = [v16 URLByAppendingPathComponent:lastPathComponent];
          [v24 setAVOutputURL:v27];

          [v17 addObject:v24];
        }

        v20 = [decomposedFragments countByEnumeratingWithState:&v37 objects:v41 count:16];
      }

      while (v20);
    }

    v28 = v32;
    [v32 setDecomposedFragments:v17];
    [v32 saveMetadataToDefaultLocation];

    dCopy = v35;
    toCopy = v36;
    v13 = v33;
    defaultManager = v34;
    v14 = v31;
  }

  else
  {
    v28 = 0;
  }

  v29 = *MEMORY[0x277D85DE8];

  return v28;
}

- (id)playableAsset:(id *)asset
{
  v20[1] = *MEMORY[0x277D85DE8];
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  composedAVURL = [(RCComposition *)self composedAVURL];
  path = [composedAVURL path];
  v8 = [defaultManager fileExistsAtPath:path isDirectory:0];

  if (v8)
  {
    v9 = MEMORY[0x277CE6650];
    composedAVURL2 = [(RCComposition *)self composedAVURL];
    v11 = [v9 assetWithURL:composedAVURL2];

    rc_audioTracks = [v11 rc_audioTracks];
    v13 = [rc_audioTracks count];

    if (v13)
    {
      asset = v11;
    }

    else if (asset)
    {
      v14 = MEMORY[0x277CCA9B8];
      v19 = *MEMORY[0x277CCA760];
      composedAVURL3 = [(RCComposition *)self composedAVURL];
      v20[0] = composedAVURL3;
      v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:&v19 count:1];
      *asset = [v14 errorWithDomain:@"com.apple.VoiceMemos.ErrorDomain" code:1 userInfo:v16];

      asset = 0;
    }
  }

  else
  {
    asset = [(RCComposition *)self _compositionAsset:asset];
  }

  v17 = *MEMORY[0x277D85DE8];

  return asset;
}

- (id)_compositionAsset:(id *)asset
{
  v27[1] = *MEMORY[0x277D85DE8];
  v5 = MEMORY[0x277CE6548];
  v26 = *MEMORY[0x277CE6240];
  v27[0] = MEMORY[0x277CBEC38];
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v27 forKeys:&v26 count:1];
  v7 = [v5 compositionWithURLAssetInitializationOptions:v6];

  v8 = objc_opt_new();
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __51__RCComposition_RCAVFoundation___compositionAsset___block_invoke;
  v23[3] = &unk_279E44770;
  v9 = v8;
  v24 = v9;
  v10 = v7;
  v25 = v10;
  v11 = MEMORY[0x2743CA3B0](v23);
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __51__RCComposition_RCAVFoundation___compositionAsset___block_invoke_2;
  v21[3] = &unk_279E44798;
  v12 = v11;
  v22 = v12;
  v20 = 0;
  v13 = [(RCComposition *)self _enumerateTracksForInsertion:v21 error:&v20];
  v14 = v20;
  if (v13)
  {
    v15 = v10;
  }

  else
  {
    v16 = OSLogForCategory(@"Default");
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [(RCComposition(RCAVFoundation) *)v14 _compositionAsset:v16];
    }

    if (asset)
    {
      v17 = v14;
      v15 = 0;
      *asset = v14;
    }

    else
    {
      v15 = 0;
    }
  }

  v18 = *MEMORY[0x277D85DE8];

  return v15;
}

id __51__RCComposition_RCAVFoundation___compositionAsset___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a2];
  v4 = [*(a1 + 32) objectForKeyedSubscript:v3];
  if (!v4)
  {
    v4 = [*(a1 + 40) addMutableTrackWithMediaType:*MEMORY[0x277CE5E48] preferredTrackID:0];
    [*(a1 + 32) setObject:v4 forKeyedSubscript:v3];
  }

  return v4;
}

uint64_t __51__RCComposition_RCAVFoundation___compositionAsset___block_invoke_2(uint64_t a1, uint64_t a2, void *a3, _OWORD *a4, __int128 *a5, uint64_t a6)
{
  v10 = *(a1 + 32);
  v11 = *(v10 + 16);
  v12 = a3;
  v13 = v11(v10, a2);
  v14 = a4[1];
  v19[0] = *a4;
  v19[1] = v14;
  v19[2] = a4[2];
  v17 = *a5;
  v18 = *(a5 + 2);
  v15 = [v13 insertTimeRange:v19 ofTrack:v12 atTime:&v17 error:a6];

  return v15;
}

- (BOOL)_enumerateTracksForInsertion:(id)insertion error:(id *)error
{
  v55 = *MEMORY[0x277D85DE8];
  insertionCopy = insertion;
  composedFragments = [(RCComposition *)self composedFragments];
  if ([composedFragments count])
  {
    errorCopy = error;
    v8 = objc_opt_new();
    v50[0] = MEMORY[0x277D85DD0];
    v50[1] = 3221225472;
    v50[2] = __68__RCComposition_RCAVFoundation___enumerateTracksForInsertion_error___block_invoke;
    v50[3] = &unk_279E447C0;
    v38 = v8;
    v51 = v38;
    v9 = MEMORY[0x2743CA3B0](v50);
    v10 = 0;
    v11 = 1;
    v12 = 0uLL;
    do
    {
      v13 = v11;
      v48 = v12;
      v49 = v12;
      v46 = v12;
      v47 = v12;
      obj = [composedFragments fragmentsWithTrackIndex:v10];
      v14 = [obj countByEnumeratingWithState:&v46 objects:v54 count:16];
      if (v14)
      {
        v15 = v14;
        v16 = *v47;
        v39 = composedFragments;
        v37 = v13;
        while (2)
        {
          for (i = 0; i != v15; ++i)
          {
            if (*v47 != v16)
            {
              objc_enumerationMutation(obj);
            }

            v18 = *(*(&v46 + 1) + 8 * i);
            aVOutputURL = [v18 AVOutputURL];
            v20 = (v9)[2](v9, aVOutputURL);

            if (RCSpatialFeatureFlagIsEnabled())
            {
              [v20 rc_audioTracksPreferringSpatial];
            }

            else
            {
              [v20 rc_audioTracks];
            }
            v21 = ;
            v22 = [v21 count];
            if (!v22)
            {
              v31 = OSLogForCategory(@"Service");
              if (os_log_type_enabled(v31, OS_LOG_TYPE_FAULT))
              {
                [RCComposition(RCAVFoundation) _enumerateTracksForInsertion:v31 error:?];
              }

              if (errorCopy)
              {
                v32 = MEMORY[0x277CCA9B8];
                v52 = *MEMORY[0x277CCA760];
                aVOutputURL2 = [v18 AVOutputURL];
                v53 = aVOutputURL2;
                v34 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v53 forKeys:&v52 count:1];
                *errorCopy = [v32 errorWithDomain:@"com.apple.VoiceMemos.ErrorDomain" code:1 userInfo:v34];
              }

LABEL_26:
              LOBYTE(v10) = 0;
              composedFragments = v39;
              goto LABEL_27;
            }

            v23 = v22;
            memset(&v45, 0, sizeof(v45));
            [v18 timeRangeInContentToUse];
            CMTimeRangeFromRCTimeRange(&v45, v24, v25);
            memset(&v44, 0, sizeof(v44));
            [v18 timeRangeInComposition];
            CMTimeMakeWithSeconds(&v44, v26, kCMDefaultTimeScale);
            if (v10 >= v23)
            {
              v27 = 0;
            }

            else
            {
              v27 = v10;
            }

            v28 = [v21 objectAtIndexedSubscript:v27];
            v29 = insertionCopy[2];
            v43 = v45;
            v42 = v44;
            v30 = v29(insertionCopy, v10, v28, &v43, &v42, errorCopy);

            if (!v30)
            {
              goto LABEL_26;
            }
          }

          v15 = [obj countByEnumeratingWithState:&v46 objects:v54 count:16];
          composedFragments = v39;
          v13 = v37;
          if (v15)
          {
            continue;
          }

          break;
        }
      }

      v11 = 0;
      v10 = 1;
      v12 = 0uLL;
    }

    while ((v13 & 1) != 0);
LABEL_27:
  }

  else
  {
    LOBYTE(v10) = 0;
  }

  v35 = *MEMORY[0x277D85DE8];
  return v10;
}

id __68__RCComposition_RCAVFoundation___enumerateTracksForInsertion_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) objectForKeyedSubscript:v3];
  if (!v4)
  {
    v4 = [MEMORY[0x277CE6650] rc_preciseTimingAssetWithURL:v3];
    [*(a1 + 32) setObject:v4 forKeyedSubscript:v3];
  }

  return v4;
}

- (id)bufferEnumerator:(id)enumerator startTime:(double)time error:(id *)error
{
  enumeratorCopy = enumerator;
  v9 = [[RCAudioBufferEnumerator alloc] initWithComposition:self processingFormat:enumeratorCopy startTime:error error:time];

  return v9;
}

- (void)initWithDictionaryPListRepresentation:(id *)a1 .cold.1(id *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = [*a1 path];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_0(&dword_272442000, v2, v3, "%s -- WARNING: bogus path (%@) detected for composition %@", v4, v5, v6, v7, 2u);

  v8 = *MEMORY[0x277D85DE8];
}

+ (void)_compositionLoadedFromMetadataURL:composedAVURL:savedRecordingUUID:creationDate:createIfNeeded:.cold.1()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_3(&dword_272442000, v0, v1, "%s -- ERROR: unable to load composition.  Encountered error = %@ while loading.", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

+ (void)_compositionLoadedFromMetadataURL:savedRecording:.cold.1()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_3(&dword_272442000, v0, v1, "%s -- ERROR: unable to load composition.  Encountered error = %@ while loading.", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)compositionByOverdubbingWithFragment:(double)a1 .cold.1(double a1, double a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v9 = NSStringFromRCTimeRange(a1, a2);
  OUTLINED_FUNCTION_1_0(&dword_272442000, v2, v3, "%s -- Invalid fragment times:  %@, composedTimeRange = %@", v4, v5, v6, v7, 2u);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)newRandomFragmentWithInsertionTimeRangeInComposition:(void *)a1 trackIndex:pathExtension:.cold.1(void *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = [a1 URLByDeletingLastPathComponent];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_0(&dword_272442000, v2, v3, "%s -- ERROR: couldn't createDirectoryAtURL %@, error = %@", v4, v5, v6, v7, 2u);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)saveMetadataToDefaultLocation
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 136315138;
  v3 = "[RCComposition saveMetadataToDefaultLocation]";
  _os_log_error_impl(&dword_272442000, log, OS_LOG_TYPE_ERROR, "%s -- ERROR: compositionMetadataURL is nil!", &v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

void __53__RCComposition__markCompositionAVURLsBeingModified___block_invoke_cold_1(void *a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v1 = [a1 valueForKeyPath:@"path.lastPathComponent"];
  v2 = [v1 allObjects];
  v3 = [v2 componentsJoinedByString:{@", "}];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_3_0(&dword_272442000, v4, v5, "%s -- current compositionAVURLs being modified: [ %@ ]", v6, v7, v8, v9, 2u);

  v10 = *MEMORY[0x277D85DE8];
}

@end