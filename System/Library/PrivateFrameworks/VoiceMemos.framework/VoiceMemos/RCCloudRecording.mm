@interface RCCloudRecording
+ (BOOL)isRecordingExported:(id)exported;
+ (id)keyPathsForValuesAffectingValueForKey:(id)key;
- (AVAsset)avAsset;
- (BOOL)_audioFutureIsCurrent;
- (BOOL)_audioFutureIsOutdated:(id)outdated;
- (BOOL)_audioFutureUUIDIsCurrent;
- (BOOL)_composedURLIsCloneOfAudioFuture;
- (BOOL)_copyCustomLabelToEncryptedTitleIfNeeded;
- (BOOL)_copyEncryptedTitleToCustomLabelIfNeeded;
- (BOOL)_isOlderThanMandatoryMigrationAge;
- (BOOL)_isReadyToMigrate;
- (BOOL)_localAssetIsReachable;
- (BOOL)_migrateCustomLabelIfNeeded:(BOOL)needed;
- (BOOL)audioFutureVersionIsCompatible;
- (BOOL)canUpdateWithMultiTrackAsset;
- (BOOL)canUpdateWithSpatialAsset;
- (BOOL)isContentBeingModified;
- (BOOL)isSkipSilenceEnabled;
- (BOOL)isSpeechIsolatorEnabled;
- (BOOL)localAssetIsCurrent;
- (BOOL)markRecordingAsExported:(id)exported error:(id *)error;
- (BOOL)recreateAudioFutureIfNecessary;
- (BOOL)synchronizeWithExistingAudioFuture:(id *)future;
- (BOOL)validateForInsert:(id *)insert;
- (BOOL)validateForUpdate:(id *)update;
- (NSNumber)purgeableAudioFileSize;
- (NSString)userFolderUUID;
- (NSURL)URIRepresentation;
- (NSURL)url;
- (RCCloudRecording)initWithContext:(id)context andCreationDate:(id)date;
- (_NSFileBackedFuture)syncedAudioFuture;
- (double)length;
- (double)syncedDuration;
- (float)layerMix;
- (float)playRate;
- (float)speechIsolatorValue;
- (id)_detailLabel;
- (id)_labelAllowingEmptyString:(BOOL)string;
- (id)_localTitleForWillSave;
- (id)_migratedTitleDateString;
- (id)_uniqueMigratedTitleWithTitleBase:(id)base;
- (id)fileNameForSharing;
- (id)filePathForSyncingFromExistingAudioFuture;
- (id)purgeAudioFileWithModel:(id)model error:(id *)error;
- (id)recordingsModel;
- (id)subjectForActivityType:(id)type;
- (unint64_t)syncedSharedFlags;
- (void)_enqueueAudioFutureUUID:(id)d;
- (void)_evictAudioFuture;
- (void)_setFlag:(unint64_t)flag value:(BOOL)value;
- (void)_updateAudioFuture:(id)future isRecovery:(BOOL)recovery;
- (void)_updateFlagsDerivedFromComposedAsset:(id)asset;
- (void)_updateLocalDurationWithAssetDuration;
- (void)copySharedFlagsFromOriginalRecording:(id)recording;
- (void)fileNameForSharing;
- (void)migrateCustomLabelIfNeeded;
- (void)migrateLocalProperties;
- (void)migratePlaybackSettings;
- (void)migrateSyncedUUIDs;
- (void)setEnhanced:(BOOL)enhanced;
- (void)setFavorite:(BOOL)favorite;
- (void)setLayerMix:(float)mix;
- (void)setLength:(double)length;
- (void)setMusicMemo:(BOOL)memo;
- (void)setPlayRate:(float)rate;
- (void)setSpeechIsolatorValue:(float)value;
- (void)setSyncedAudioFuture:(id)future sourceFileURL:(id)l containsSpatialAudio:(BOOL)audio;
- (void)setSyncedDuration:(double)duration;
- (void)setSyncedSharedFlags:(unint64_t)flags;
- (void)setTitle:(id)title;
- (void)setWatchOS:(BOOL)s;
- (void)synchronizeRecordingMetadata;
- (void)updateAudioFutureWithLocalAsset;
- (void)updateForLocalTitleChange:(BOOL)change;
- (void)updateForRemoteTitleChange:(BOOL)change;
- (void)updateNilTitleFields:(BOOL)fields;
- (void)willSave;
@end

@implementation RCCloudRecording

- (double)length
{
  localDuration = [(RCCloudRecording *)self localDuration];
  v4 = localDuration;
  if (localDuration)
  {
    [localDuration doubleValue];
  }

  else
  {
    [(RCCloudRecording *)self syncedDuration];
  }

  v6 = v5;

  return v6;
}

- (unint64_t)syncedSharedFlags
{
  sharedFlags = [(RCCloudRecording *)self sharedFlags];
  longLongValue = [sharedFlags longLongValue];

  return longLongValue;
}

- (RCCloudRecording)initWithContext:(id)context andCreationDate:(id)date
{
  dateCopy = date;
  v10.receiver = self;
  v10.super_class = RCCloudRecording;
  v7 = [(RCCloudRecording *)&v10 initWithContext:context];
  v8 = v7;
  if (v7)
  {
    [(RCCloudRecording *)v7 setValue:dateCopy forKey:@"date"];
  }

  return v8;
}

- (void)migrateLocalProperties
{
  encryptedTitle = [(RCCloudRecording *)self encryptedTitle];
  if (encryptedTitle)
  {
    [(RCCloudRecording *)self setLocalTitle:encryptedTitle];
  }

  else
  {
    v4 = [(RCCloudRecording *)self valueForKey:@"customLabel"];
    [(RCCloudRecording *)self setLocalTitle:v4];
  }

  [(RCCloudRecording *)self _updateLocalDurationWithAssetDuration];
}

- (void)_updateLocalDurationWithAssetDuration
{
  v3 = [(RCCloudRecording *)self url];
  v4 = v3;
  if (v3)
  {
    v8 = v3;
    v3 = [v3 checkResourceIsReachableAndReturnError:0];
    v4 = v8;
    if (v3)
    {
      v5 = [MEMORY[0x277CE6650] rc_preciseTimingAssetWithURL:v8];
      [v5 rc_durationInSeconds];
      if (v6 > 0.0)
      {
        v7 = [MEMORY[0x277CCABB0] numberWithDouble:?];
        [(RCCloudRecording *)self setLocalDuration:v7];
      }

      v4 = v8;
    }
  }

  MEMORY[0x2821F96F8](v3, v4);
}

- (id)_localTitleForWillSave
{
  if ([(RCCloudRecording *)self isInserted])
  {
    selfCopy = self;
  }

  else
  {
    if (![(RCCloudRecording *)self hasChanges])
    {
LABEL_12:
      v5 = 0;
      goto LABEL_13;
    }

    selfCopy = [(RCCloudRecording *)self changedValues];
  }

  v4 = selfCopy;
  if (!selfCopy)
  {
    goto LABEL_12;
  }

  v5 = [(RCCloudRecording *)selfCopy valueForKey:@"encryptedTitle"];
  if ((isNotNullAndNotNSNull(v5) & 1) == 0)
  {
    v6 = [(RCCloudRecording *)v4 valueForKey:@"customLabel"];
    if (!isNotNullAndNotNSNull(v6) || ([(RCCloudRecording *)self valueForKey:@"encryptedTitle"], v7 = objc_claimAutoreleasedReturnValue(), v7, v7))
    {

      v6 = 0;
    }

    v5 = v6;
  }

LABEL_13:

  return v5;
}

- (void)willSave
{
  v7 = *MEMORY[0x277D85DE8];
  uuid = [self uuid];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_2_0();
  _os_log_fault_impl(v2, v3, OS_LOG_TYPE_FAULT, v4, v5, 0x16u);

  v6 = *MEMORY[0x277D85DE8];
}

- (BOOL)validateForInsert:(id *)insert
{
  creationDate = [(RCCloudRecording *)self creationDate];
  v4 = creationDate != 0;

  return v4;
}

- (BOOL)validateForUpdate:(id *)update
{
  creationDate = [(RCCloudRecording *)self creationDate];
  v4 = creationDate != 0;

  return v4;
}

- (void)synchronizeRecordingMetadata
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = [(RCCloudRecording *)self url];
  if ([v3 checkResourceIsReachableAndReturnError:0] && -[RCCloudRecording playable](self, "playable"))
  {
    v4 = [MEMORY[0x277CE6650] assetWithURL:v3];
    rc_recordingMetadata = [v4 rc_recordingMetadata];
    v6 = [rc_recordingMetadata mutableCopy];

    title = [(RCCloudRecording *)self title];
    [v6 setObject:title forKeyedSubscript:@"title"];

    v14 = 0;
    v8 = [MEMORY[0x277CE63D8] rc_updateMetadataInFile:v3 withRecordingMetadata:v6 error:&v14];
    v9 = v14;
    if (v8)
    {
      fileSystemRepresentation = [v3 fileSystemRepresentation];
      if (audioDigestAttribute_onceToken != -1)
      {
        v13 = fileSystemRepresentation;
        [RCCloudRecording synchronizeRecordingMetadata];
        fileSystemRepresentation = v13;
      }

      removexattr(fileSystemRepresentation, audioDigestAttribute__audioDigestAttribute, 0);
      [(RCCloudRecording *)self _updateLocalDurationWithAssetDuration];
      [(RCCloudRecording *)self _updateAudioFuture:v3 isRecovery:0];
    }

    else
    {
      v11 = OSLogForCategory(@"Service");
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v16 = "[RCCloudRecording synchronizeRecordingMetadata]";
        v17 = 2112;
        v18 = v9;
        _os_log_impl(&dword_272442000, v11, OS_LOG_TYPE_DEFAULT, "%s -- ERROR:  synchronizing file metadata (error = %@)", buf, 0x16u);
      }
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)_updateAudioFuture:(id)future isRecovery:(BOOL)recovery
{
  recoveryCopy = recovery;
  v27 = *MEMORY[0x277D85DE8];
  futureCopy = future;
  if ([futureCopy checkResourceIsReachableAndReturnError:0])
  {
    v7 = [(RCCloudRecording *)self url];
    v8 = computeAudioDigest(v7);
    v9 = 0;

    if (!v8)
    {
      v10 = OSLogForCategory(@"Service");
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        [RCCloudRecording _updateAudioFuture:isRecovery:];
      }
    }

    audioDigest = [(RCCloudRecording *)self audioDigest];
    syncedAudioFuture = [(RCCloudRecording *)self syncedAudioFuture];
    if (!syncedAudioFuture || !audioDigest || ![audioDigest isEqualToData:v8] || recoveryCopy)
    {
      v13 = [MEMORY[0x277CBE440] createFutureForFileAtURL:futureCopy];
      v14 = OSLogForCategory(@"Service");
      v15 = v14;
      if (v13)
      {
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          uuid = [(RCCloudRecording *)self uuid];
          *buf = 136315906;
          v20 = "[RCCloudRecording _updateAudioFuture:isRecovery:]";
          v21 = 2112;
          v22 = uuid;
          v23 = 2112;
          v24 = audioDigest;
          v25 = 2112;
          v26 = v8;
          _os_log_impl(&dword_272442000, v15, OS_LOG_TYPE_DEFAULT, "%s -- uniqueID = %@, oldDigest = %@, newDigest = %@", buf, 0x2Au);
        }

        [(RCCloudRecording *)self _updateFlagsDerivedFromComposedAsset:futureCopy];
        [(RCCloudRecording *)self setSyncedAudioFuture:v13 sourceFileURL:futureCopy containsSpatialAudio:[(RCCloudRecording *)self composedAssetIsSpatialRecording]];
        [(RCCloudRecording *)self setAudioDigest:v8];
        uUID = [v13 UUID];
        [(RCCloudRecording *)self _enqueueAudioFutureUUID:uUID];

        [(RCCloudRecording *)self setFlags:[(RCCloudRecording *)self flags]& 0xFFFFFFFFFFFFFFF9 | 4];
      }

      else
      {
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          [RCCloudRecording _updateAudioFuture:isRecovery:];
        }
      }
    }

    [(RCCloudRecording *)self setAvAsset:0];
  }

  else
  {
    v9 = OSLogForCategory(@"Service");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [RCCloudRecording _updateAudioFuture:isRecovery:];
    }
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)_updateFlagsDerivedFromComposedAsset:(id)asset
{
  v4 = [MEMORY[0x277CE6650] assetWithURL:asset];
  rc_transcriptionData = [v4 rc_transcriptionData];
  if (rc_transcriptionData)
  {
    v12 = 0;
    v6 = [TranscriptionDecoder decodeTransciptionData:rc_transcriptionData error:&v12];
    v7 = v12;
    v8 = v6 != 0;
    if (v6)
    {
      v9 = [v6 length] != 0;
    }

    else
    {
      v10 = OSLogForCategory(@"Service");
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        [RCCloudRecording _updateFlagsDerivedFromComposedAsset:];
      }

      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
    v8 = 0;
  }

  [(RCCloudRecording *)self setHasBeenTranscribed:v8];
  [(RCCloudRecording *)self setTranscriptionContentExists:v9];
  rc_audioTracks = [v4 rc_audioTracks];
  -[RCCloudRecording setComposedAssetHasMultipleTracks:](self, "setComposedAssetHasMultipleTracks:", [rc_audioTracks count] > 1);

  -[RCCloudRecording setComposedAssetIsSpatialRecording:](self, "setComposedAssetIsSpatialRecording:", [v4 rc_hasSpatialTracks]);
}

- (void)migrateSyncedUUIDs
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_3(&dword_272442000, v0, v1, "%s -- failed to evict audio future - error = %@", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_enqueueAudioFutureUUID:(id)d
{
  dCopy = d;
  if (dCopy)
  {
    audioFutureUUIDs = [(RCCloudRecording *)self audioFutureUUIDs];
    v5 = [audioFutureUUIDs containsObject:dCopy];

    if ((v5 & 1) == 0)
    {
      audioFutureUUIDs2 = [(RCCloudRecording *)self audioFutureUUIDs];
      v7 = audioFutureUUIDs2;
      v8 = MEMORY[0x277CBEBF8];
      if (audioFutureUUIDs2)
      {
        v8 = audioFutureUUIDs2;
      }

      v9 = v8;

      v10 = [v9 arrayByAddingObject:dCopy];

      [(RCCloudRecording *)self setAudioFutureUUIDs:v10];
    }
  }
}

- (void)copySharedFlagsFromOriginalRecording:(id)recording
{
  syncedSharedFlags = [recording syncedSharedFlags];

  [(RCCloudRecording *)self setSyncedSharedFlags:syncedSharedFlags];
}

- (BOOL)recreateAudioFutureIfNecessary
{
  v15 = *MEMORY[0x277D85DE8];
  syncedAudioFuture = [(RCCloudRecording *)self syncedAudioFuture];
  v4 = [(RCCloudRecording *)self url];
  v5 = v4;
  if (v4 && [v4 checkResourceIsReachableAndReturnError:0] && (!syncedAudioFuture || -[RCCloudRecording _audioFutureIsOutdated:](self, "_audioFutureIsOutdated:", syncedAudioFuture)))
  {
    v6 = OSLogForCategory(@"Service");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      uuid = [(RCCloudRecording *)self uuid];
      v11 = 136315394;
      v12 = "[RCCloudRecording recreateAudioFutureIfNecessary]";
      v13 = 2112;
      v14 = uuid;
      _os_log_impl(&dword_272442000, v6, OS_LOG_TYPE_DEFAULT, "%s -- Recreating audio future - recording uuid = %@", &v11, 0x16u);
    }

    [(RCCloudRecording *)self updateAudioFutureWithLocalAsset];
    v8 = 1;
  }

  else
  {
    v8 = 0;
  }

  v9 = *MEMORY[0x277D85DE8];
  return v8;
}

- (void)updateAudioFutureWithLocalAsset
{
  v3 = [(RCCloudRecording *)self url];
  [(RCCloudRecording *)self _updateAudioFuture:v3 isRecovery:1];
}

- (BOOL)_audioFutureIsOutdated:(id)outdated
{
  uUID = [outdated UUID];
  if (uUID)
  {
    audioFutureUUIDs = [(RCCloudRecording *)self audioFutureUUIDs];
    if ([audioFutureUUIDs containsObject:uUID])
    {
      audioFutureUUIDs2 = [(RCCloudRecording *)self audioFutureUUIDs];
      lastObject = [audioFutureUUIDs2 lastObject];
      v8 = [uUID isEqual:lastObject] ^ 1;
    }

    else
    {
      LOBYTE(v8) = 0;
    }
  }

  else
  {
    LOBYTE(v8) = 0;
  }

  return v8;
}

- (BOOL)_localAssetIsReachable
{
  v2 = [(RCCloudRecording *)self url];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 checkResourceIsReachableAndReturnError:0];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)_audioFutureUUIDIsCurrent
{
  audioFutureUUIDs = [(RCCloudRecording *)self audioFutureUUIDs];
  lastObject = [audioFutureUUIDs lastObject];
  syncedAudioFuture = [(RCCloudRecording *)self syncedAudioFuture];
  uUID = [syncedAudioFuture UUID];
  v7 = [lastObject isEqual:uUID];

  return v7;
}

- (BOOL)_audioFutureIsCurrent
{
  if ([(RCCloudRecording *)self _audioFutureUUIDIsCurrent])
  {
    return 1;
  }

  return [(RCCloudRecording *)self _composedURLIsCloneOfAudioFuture];
}

- (BOOL)_composedURLIsCloneOfAudioFuture
{
  syncedAudioFuture = [(RCCloudRecording *)self syncedAudioFuture];
  fileURL = [syncedAudioFuture fileURL];

  v5 = [(RCCloudRecording *)self url];
  v6 = v5;
  v7 = 0;
  if (fileURL && v5)
  {
    v7 = identicalClones(fileURL, v5);
  }

  return v7;
}

- (BOOL)localAssetIsCurrent
{
  _localAssetIsReachable = [(RCCloudRecording *)self _localAssetIsReachable];
  if (_localAssetIsReachable)
  {

    LOBYTE(_localAssetIsReachable) = [(RCCloudRecording *)self _audioFutureIsCurrent];
  }

  return _localAssetIsReachable;
}

- (BOOL)synchronizeWithExistingAudioFuture:(id *)future
{
  v33 = *MEMORY[0x277D85DE8];
  syncedAudioFuture = [(RCCloudRecording *)self syncedAudioFuture];
  fileURL = [syncedAudioFuture fileURL];
  v7 = fileURL;
  if (fileURL)
  {
    path = [fileURL path];
    v9 = [(RCCloudRecording *)self url];
    path2 = [v9 path];

    if (path2)
    {
      v11 = [MEMORY[0x277CBEBC0] fileURLWithPath:path2];
      if (identicalClones(v11, v7))
      {
        goto LABEL_4;
      }

      memset(&v32, 0, sizeof(v32));
      memset(&v31, 0, sizeof(v31));
      if (!stat([path2 fileSystemRepresentation], &v32) && !stat(objc_msgSend(path, "fileSystemRepresentation"), &v31) && !(v32.st_size | v31.st_size))
      {
        goto LABEL_4;
      }
    }

    else
    {
      filePathForSyncingFromExistingAudioFuture = [(RCCloudRecording *)self filePathForSyncingFromExistingAudioFuture];
      if (!filePathForSyncingFromExistingAudioFuture)
      {
        v14 = OSLogForCategory(@"Default");
        if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
        {
          [RCCloudRecording synchronizeWithExistingAudioFuture:v14];
        }

        v11 = 0;
        path2 = 0;
        goto LABEL_20;
      }

      path2 = filePathForSyncingFromExistingAudioFuture;
      v11 = [MEMORY[0x277CBEBC0] fileURLWithPath:filePathForSyncingFromExistingAudioFuture];
    }

    [RCComposition deleteFromFilesystem:v11];
    if (clonefile([path fileSystemRepresentation], objc_msgSend(path2, "fileSystemRepresentation"), 0) || chmod(objc_msgSend(path2, "fileSystemRepresentation"), 0x1A4u))
    {
      if (future)
      {
        [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:*__error() userInfo:0];
        *future = v12 = 0;
        goto LABEL_21;
      }

LABEL_20:
      v12 = 0;
      goto LABEL_21;
    }

    v30[1] = 0;
    v17 = computeAudioDigest(v11);
    v18 = 0;
    if (!v17)
    {
      v19 = OSLogForCategory(@"Service");
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        v32.st_dev = 136315394;
        *&v32.st_mode = "[RCCloudRecording synchronizeWithExistingAudioFuture:]";
        WORD2(v32.st_ino) = 2112;
        *(&v32.st_ino + 6) = v18;
        _os_log_impl(&dword_272442000, v19, OS_LOG_TYPE_DEFAULT, "%s -- digestError = %@", &v32, 0x16u);
      }
    }

    v29 = v18;
    [(RCCloudRecording *)self setAudioDigest:v17];
    lastPathComponent = [path2 lastPathComponent];
    [(RCCloudRecording *)self setFileName:lastPathComponent];

    [(RCCloudRecording *)self setFlags:[(RCCloudRecording *)self flags]& 0xFFFFFFFFFFFFFFF9 | 4];
    v21 = OSLogForCategory(@"Service");
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      [(RCCloudRecording *)self uuid];
      v22 = v28 = v17;
      lastPathComponent2 = [path2 lastPathComponent];
      v32.st_dev = 136315650;
      *&v32.st_mode = "[RCCloudRecording synchronizeWithExistingAudioFuture:]";
      WORD2(v32.st_ino) = 2112;
      *(&v32.st_ino + 6) = v22;
      HIWORD(v32.st_gid) = 2112;
      *&v32.st_rdev = lastPathComponent2;
      _os_log_impl(&dword_272442000, v21, OS_LOG_TYPE_DEFAULT, "%s -- synchronized recording uuid = %@ audioFuture to %@", &v32, 0x20u);

      v17 = v28;
    }

    v24 = OSLogForCategory(@"Service");
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
    {
      [RCCloudRecording synchronizeWithExistingAudioFuture:path2];
    }

    [(RCCloudRecording *)self _updateLocalDurationWithAssetDuration];
    uUID = [syncedAudioFuture UUID];
    [(RCCloudRecording *)self _enqueueAudioFutureUUID:uUID];

    [(RCCloudRecording *)self _updateFlagsDerivedFromComposedAsset:v11];
    v30[0] = 0;
    LOBYTE(uUID) = [(RCCloudRecording *)self markRecordingAsExported:v11 error:v30];
    v26 = v30[0];
    if ((uUID & 1) == 0)
    {
      v27 = OSLogForCategory(@"Service");
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        [RCCloudRecording synchronizeWithExistingAudioFuture:];
      }
    }

LABEL_4:
    v12 = 1;
LABEL_21:

    goto LABEL_22;
  }

  if (future)
  {
    [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA050] code:4 userInfo:0];
    *future = v12 = 0;
  }

  else
  {
    v12 = 0;
  }

LABEL_22:

  v15 = *MEMORY[0x277D85DE8];
  return v12;
}

+ (BOOL)isRecordingExported:(id)exported
{
  exportedCopy = exported;
  if (isAudioFilePurgeable(exportedCopy))
  {
    v4 = *MEMORY[0x277CBECB0];
    v11 = 0;
    v12 = 0;
    v5 = [exportedCopy getResourceValue:&v12 forKey:v4 error:&v11];
    v6 = v12;
    v7 = v11;
    if (v5)
    {
      bOOLValue = [v6 BOOLValue];
    }

    else
    {
      v9 = OSLogForCategory(@"Default");
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        +[RCCloudRecording isRecordingExported:];
      }

      bOOLValue = 0;
    }
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

- (BOOL)markRecordingAsExported:(id)exported error:(id *)error
{
  exportedCopy = exported;
  value = 1;
  fileSystemRepresentation = [exportedCopy fileSystemRepresentation];
  if (audioFileFlagsAttribute_onceToken != -1)
  {
    isAudioFilePurgeable_cold_1();
  }

  v8 = setxattr(fileSystemRepresentation, audioFileFlagsAttribute__audioFileFlagsAttribute, &value, 8uLL, 0, 0);
  if (error && v8)
  {
    [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:*__error() userInfo:0];
    *error = v9 = 0;
  }

  else if (v8 || ![RCComposition excludeFromBackup:exportedCopy error:error])
  {
    v9 = 0;
  }

  else
  {
    [(RCCloudRecording *)self _evictAudioFuture];
    v9 = 1;
  }

  return v9;
}

- (void)_evictAudioFuture
{
  v7 = *MEMORY[0x277D85DE8];
  fileURL = [self fileURL];
  OUTLINED_FUNCTION_2_0();
  _os_log_error_impl(v1, v2, OS_LOG_TYPE_ERROR, v3, v4, 0x20u);

  v5 = *MEMORY[0x277D85DE8];
}

- (NSNumber)purgeableAudioFileSize
{
  v2 = [(RCCloudRecording *)self url];
  if (isAudioFilePurgeable(v2))
  {
    v7 = 0;
    v3 = [v2 getResourceValue:&v7 forKey:*MEMORY[0x277CBE838] error:0];
    v4 = v7;
    v5 = v4;
    if (v3)
    {
      goto LABEL_5;
    }
  }

  v5 = 0;
LABEL_5:

  return v5;
}

- (id)purgeAudioFileWithModel:(id)model error:(id *)error
{
  v29 = *MEMORY[0x277D85DE8];
  modelCopy = model;
  v7 = [(RCCloudRecording *)self url];
  if (isAudioFilePurgeable(v7))
  {
    v24 = 0;
    v8 = [v7 getResourceValue:&v24 forKey:*MEMORY[0x277CBE838] error:error];
    v9 = v24;
    v10 = 0;
    if (v8)
    {
      [(RCCloudRecording *)self setFileName:0];
      [(RCCloudRecording *)self setPlayable:0];
      defaultManager = [MEMORY[0x277CCAA00] defaultManager];
      v23 = 0;
      v12 = [defaultManager removeItemAtURL:v7 error:&v23];
      v13 = v23;

      if (v12)
      {
        syncedAudioFuture = [(RCCloudRecording *)self syncedAudioFuture];
        if (syncedAudioFuture)
        {
          context = [modelCopy context];
          v22 = 0;
          v16 = [context evictFuture:syncedAudioFuture withError:&v22];
          v17 = v22;
          if ((v16 & 1) == 0)
          {
            v18 = OSLogForCategory(@"Service");
            if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136315394;
              v26 = "[RCCloudRecording purgeAudioFileWithModel:error:]";
              v27 = 2112;
              v28 = v17;
              _os_log_impl(&dword_272442000, v18, OS_LOG_TYPE_DEFAULT, "%s -- evictError = %@", buf, 0x16u);
            }
          }
        }

        v10 = v9;
      }

      else if (error)
      {
        v19 = v13;
        v10 = 0;
        *error = v13;
      }

      else
      {
        v10 = 0;
      }
    }
  }

  else
  {
    v10 = 0;
  }

  v20 = *MEMORY[0x277D85DE8];

  return v10;
}

- (void)_setFlag:(unint64_t)flag value:(BOOL)value
{
  valueCopy = value;
  flags = [(RCCloudRecording *)self flags];
  if (valueCopy)
  {
    v8 = flags | flag;
  }

  else
  {
    v8 = flags & ~flag;
  }

  [(RCCloudRecording *)self setFlags:v8];
}

- (void)setWatchOS:(BOOL)s
{
  sCopy = s;
  v5 = [(RCCloudRecording *)self syncedSharedFlags]& 0xFFFFFFFFFFFFFFBFLL;
  v6 = 64;
  if (!sCopy)
  {
    v6 = 0;
  }

  [(RCCloudRecording *)self setSyncedSharedFlags:v5 | v6];
}

- (void)setMusicMemo:(BOOL)memo
{
  memoCopy = memo;
  v5 = [(RCCloudRecording *)self syncedSharedFlags]& 0xFFFFFFFFFFFFFFFBLL;
  v6 = 4;
  if (!memoCopy)
  {
    v6 = 0;
  }

  [(RCCloudRecording *)self setSyncedSharedFlags:v5 | v6];
}

- (void)setFavorite:(BOOL)favorite
{
  v4 = [(RCCloudRecording *)self syncedSharedFlags]& 0xFFFFFFFFFFFFFFFELL | favorite;

  [(RCCloudRecording *)self setSyncedSharedFlags:v4];
}

- (void)setEnhanced:(BOOL)enhanced
{
  enhancedCopy = enhanced;
  v5 = [(RCCloudRecording *)self syncedSharedFlags]& 0xFFFFFFFFFFFFFFFDLL;
  v6 = 2;
  if (!enhancedCopy)
  {
    v6 = 0;
  }

  [(RCCloudRecording *)self setSyncedSharedFlags:v5 | v6];
}

+ (id)keyPathsForValuesAffectingValueForKey:(id)key
{
  v11[1] = *MEMORY[0x277D85DE8];
  v10.receiver = self;
  v10.super_class = &OBJC_METACLASS___RCCloudRecording;
  keyCopy = key;
  v4 = objc_msgSendSuper2(&v10, sel_keyPathsForValuesAffectingValueForKey_, keyCopy);
  v5 = [keyCopy isEqualToString:{@"enhanced", v10.receiver, v10.super_class}];

  if (v5)
  {
    v11[0] = @"sharedFlags";
    v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:1];
    v7 = [v4 setByAddingObjectsFromArray:v6];

    v4 = v7;
  }

  v8 = *MEMORY[0x277D85DE8];

  return v4;
}

- (NSURL)url
{
  fileName = [(RCCloudRecording *)self fileName];
  if (fileName)
  {
    v3 = RCRecordingsDirectoryURL();
    v4 = [v3 URLByAppendingPathComponent:fileName];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (NSURL)URIRepresentation
{
  objectID = [(RCCloudRecording *)self objectID];
  uRIRepresentation = [objectID URIRepresentation];

  return uRIRepresentation;
}

- (void)setTitle:(id)title
{
  titleCopy = title;
  [(RCCloudRecording *)self setLocalTitle:titleCopy];
  [(RCCloudRecording *)self setEncryptedTitle:titleCopy];
}

- (BOOL)isContentBeingModified
{
  v2 = [(RCCloudRecording *)self url];
  v3 = [RCComposition _isSessionWithModificationAccessActiveForComposedAVURL:v2];

  return v3;
}

- (id)_labelAllowingEmptyString:(BOOL)string
{
  title = [(RCCloudRecording *)self title];
  whitespaceCharacterSet = [MEMORY[0x277CCA900] whitespaceCharacterSet];
  v6 = [title stringByTrimmingCharactersInSet:whitespaceCharacterSet];
  v7 = [v6 length];

  if (v7)
  {
    if (title)
    {
      goto LABEL_3;
    }
  }

  else
  {
    if (string)
    {
      v8 = 0;
      goto LABEL_6;
    }

    v9 = RCLocalizedFrameworkString(@"UNNAMED_RECORDING_LABEL");

    title = v9;
    if (v9)
    {
LABEL_3:
      v8 = RCDisplayStringForString(title);
LABEL_6:

      goto LABEL_9;
    }
  }

  v8 = 0;
LABEL_9:

  return v8;
}

- (id)_detailLabel
{
  v3 = [(RCCloudRecording *)self _labelAllowingEmptyString:1];
  if (!v3)
  {
    v4 = _detailLabel___timeFormatter;
    if (!_detailLabel___timeFormatter)
    {
      v5 = objc_alloc_init(MEMORY[0x277CCA968]);
      v6 = _detailLabel___timeFormatter;
      _detailLabel___timeFormatter = v5;

      [_detailLabel___timeFormatter setTimeStyle:1];
      [_detailLabel___timeFormatter setDateStyle:0];
      v4 = _detailLabel___timeFormatter;
    }

    creationDate = [(RCCloudRecording *)self creationDate];
    v3 = [v4 stringFromDate:creationDate];
  }

  return v3;
}

- (AVAsset)avAsset
{
  if (!self->_avAsset)
  {
    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    v4 = [(RCCloudRecording *)self url];
    path = [v4 path];
    v6 = [defaultManager fileExistsAtPath:path];

    if (v6)
    {
      v7 = MEMORY[0x277CE6650];
      v8 = [(RCCloudRecording *)self url];
      v9 = [v7 rc_preciseTimingAssetWithURL:v8];
      avAsset = self->_avAsset;
      self->_avAsset = v9;
    }
  }

  v11 = self->_avAsset;

  return v11;
}

- (id)fileNameForSharing
{
  title = [(RCCloudRecording *)self title];
  v4 = [title stringByReplacingOccurrencesOfString:@"/" withString:@"-"];

  whitespaceAndNewlineCharacterSet = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
  v6 = [v4 stringByTrimmingCharactersInSet:whitespaceAndNewlineCharacterSet];

  v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:{objc_msgSend(v6, "fileSystemRepresentation")}];

  if ([v7 length])
  {
    goto LABEL_4;
  }

  v8 = [(RCCloudRecording *)self url];
  lastPathComponent = [v8 lastPathComponent];
  stringByDeletingPathExtension = [lastPathComponent stringByDeletingPathExtension];

  if ([stringByDeletingPathExtension length])
  {
    v7 = stringByDeletingPathExtension;
LABEL_4:
    stringByDeletingPathExtension = v7;
    v11 = stringByDeletingPathExtension;
    goto LABEL_5;
  }

  v13 = OSLogForCategory(@"Default");
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    [(RCCloudRecording *)v13 fileNameForSharing];
  }

  v11 = 0;
LABEL_5:

  return v11;
}

- (id)subjectForActivityType:(id)type
{
  v13[2] = *MEMORY[0x277D85DE8];
  if ([type isEqualToString:@"com.apple.UIKit.activity.AirDrop"])
  {
    v12[0] = @"SFAirDropActivitySubjectMain";
    _detailLabel = [(RCCloudRecording *)self _detailLabel];
    v12[1] = @"SFAirDropActivitySubjectDuration";
    v13[0] = _detailLabel;
    v5 = MEMORY[0x277CCABB0];
    [(RCCloudRecording *)self length];
    v6 = [v5 numberWithDouble:?];
    v13[1] = v6;
    v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:2];

    v8 = [MEMORY[0x277CCAAA0] dataWithJSONObject:v7 options:0 error:0];
    _detailLabel2 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v8 encoding:4];
  }

  else
  {
    _detailLabel2 = [(RCCloudRecording *)self _detailLabel];
  }

  v10 = *MEMORY[0x277D85DE8];

  return _detailLabel2;
}

- (void)setLength:(double)length
{
  [(RCCloudRecording *)self setSyncedDuration:?];
  v5 = [MEMORY[0x277CCABB0] numberWithDouble:length];
  [(RCCloudRecording *)self setLocalDuration:v5];

  avAsset = self->_avAsset;
  self->_avAsset = 0;
}

- (NSString)userFolderUUID
{
  folder = [(RCCloudRecording *)self folder];
  uuid = [folder uuid];

  return uuid;
}

- (_NSFileBackedFuture)syncedAudioFuture
{
  audioFuture = [(RCCloudRecording *)self audioFuture];
  v4 = audioFuture;
  if (audioFuture)
  {
    v5 = audioFuture;
  }

  else
  {
    mtAudioFuture = [(RCCloudRecording *)self mtAudioFuture];
    v7 = mtAudioFuture;
    if (mtAudioFuture)
    {
      versionedAudioFuture = mtAudioFuture;
    }

    else
    {
      versionedAudioFuture = [(RCCloudRecording *)self versionedAudioFuture];
    }

    v5 = versionedAudioFuture;
  }

  return v5;
}

- (id)filePathForSyncingFromExistingAudioFuture
{
  audioFuture = [(RCCloudRecording *)self audioFuture];

  if (audioFuture)
  {
    v4 = RCAudioFileExtensionM4A;
LABEL_6:
    v7 = *v4;
    creationDate = [(RCCloudRecording *)self creationDate];
    uuid = [(RCCloudRecording *)self uuid];
    v10 = [RCSavedRecordingsModel standardPathForRecordingWithCreationDate:creationDate uniqueID:uuid fileExtension:v7];

    goto LABEL_7;
  }

  mtAudioFuture = [(RCCloudRecording *)self mtAudioFuture];

  if (mtAudioFuture || ([(RCCloudRecording *)self versionedAudioFuture], v6 = objc_claimAutoreleasedReturnValue(), v6, v6))
  {
    v4 = RCAudioFileExtensionQTA;
    goto LABEL_6;
  }

  v10 = 0;
LABEL_7:

  return v10;
}

- (void)setSyncedAudioFuture:(id)future sourceFileURL:(id)l containsSpatialAudio:(BOOL)audio
{
  audioCopy = audio;
  futureCopy = future;
  pathExtension = [l pathExtension];
  v10 = [pathExtension isEqualToString:@"qta"];

  if (v10)
  {
    versionedAudioFuture = [(RCCloudRecording *)self versionedAudioFuture];

    if (versionedAudioFuture || audioCopy)
    {
      [(RCCloudRecording *)self setVersionedAudioFuture:futureCopy];
      audioFutureFlags = [(RCCloudRecording *)self audioFutureFlags];
      integerValue = [audioFutureFlags integerValue];

      v16 = [MEMORY[0x277CCABB0] numberWithLongLong:integerValue | 1];
      [(RCCloudRecording *)self setAudioFutureFlags:v16];

      mtAudioFuture = [(RCCloudRecording *)self mtAudioFuture];
      if (!mtAudioFuture)
      {
LABEL_10:
        audioFuture = [(RCCloudRecording *)self audioFuture];
LABEL_11:
        v17 = audioFuture;

        if (!v17)
        {
          goto LABEL_15;
        }

        goto LABEL_12;
      }
    }

    else
    {
      [(RCCloudRecording *)self setMtAudioFuture:futureCopy];
      mtAudioFuture = [(RCCloudRecording *)self versionedAudioFuture];
      if (!mtAudioFuture)
      {
        goto LABEL_10;
      }
    }
  }

  else
  {
    [(RCCloudRecording *)self setAudioFuture:futureCopy];
    mtAudioFuture = [(RCCloudRecording *)self versionedAudioFuture];
    if (!mtAudioFuture)
    {
      audioFuture = [(RCCloudRecording *)self mtAudioFuture];
      goto LABEL_11;
    }
  }

LABEL_12:
  v18 = OSLogForCategory(@"Default");
  if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
  {
    [RCCloudRecording(SyncedProperties) setSyncedAudioFuture:v18 sourceFileURL:? containsSpatialAudio:?];
  }

LABEL_15:
}

- (BOOL)audioFutureVersionIsCompatible
{
  audioFuture = [(RCCloudRecording *)self audioFuture];
  if (audioFuture)
  {

    return 1;
  }

  mtAudioFuture = [(RCCloudRecording *)self mtAudioFuture];

  if (mtAudioFuture)
  {
    return 1;
  }

  audioFutureFlags = [(RCCloudRecording *)self audioFutureFlags];
  integerValue = [audioFutureFlags integerValue];

  if (integerValue && ([(RCCloudRecording *)self versionedAudioFuture], v8 = objc_claimAutoreleasedReturnValue(), v8, v8))
  {
    return integerValue & 1;
  }

  else
  {
    return 0;
  }
}

- (BOOL)canUpdateWithMultiTrackAsset
{
  audioFuture = [(RCCloudRecording *)self audioFuture];
  v3 = audioFuture == 0;

  return v3;
}

- (BOOL)canUpdateWithSpatialAsset
{
  audioFuture = [(RCCloudRecording *)self audioFuture];
  if (audioFuture)
  {
    v4 = 0;
  }

  else
  {
    mtAudioFuture = [(RCCloudRecording *)self mtAudioFuture];
    v4 = mtAudioFuture == 0;
  }

  return v4;
}

- (double)syncedDuration
{
  duration = [(RCCloudRecording *)self duration];
  [duration doubleValue];
  v4 = v3;

  return v4;
}

- (void)setSyncedDuration:(double)duration
{
  v4 = [MEMORY[0x277CCABB0] numberWithDouble:duration];
  [(RCCloudRecording *)self setDuration:v4];
}

- (void)setSyncedSharedFlags:(unint64_t)flags
{
  v4 = [MEMORY[0x277CCABB0] numberWithLongLong:flags];
  [(RCCloudRecording *)self setSharedFlags:v4];
}

- (void)setLayerMix:(float)mix
{
  v4 = [MEMORY[0x277CCABB0] numberWithFloat:?];
  [(RCCloudRecording *)self setMtLayerMix:v4];
}

- (float)layerMix
{
  mtLayerMix = [(RCCloudRecording *)self mtLayerMix];
  [mtLayerMix floatValue];
  v4 = v3;

  return v4;
}

- (BOOL)isSpeechIsolatorEnabled
{
  studioMixEnabled = [(RCCloudRecording *)self studioMixEnabled];
  bOOLValue = [studioMixEnabled BOOLValue];

  return bOOLValue;
}

- (void)setSpeechIsolatorValue:(float)value
{
  v4 = [MEMORY[0x277CCABB0] numberWithFloat:?];
  [(RCCloudRecording *)self setStudioMixLevel:v4];
}

- (float)speechIsolatorValue
{
  studioMixLevel = [(RCCloudRecording *)self studioMixLevel];
  v3 = studioMixLevel;
  if (studioMixLevel)
  {
    [studioMixLevel floatValue];
    v5 = v4;
  }

  else
  {
    v5 = *&kDefaultSpeechIsolatorValue;
  }

  return v5;
}

- (void)setPlayRate:(float)rate
{
  v4 = [MEMORY[0x277CCABB0] numberWithFloat:?];
  [(RCCloudRecording *)self setPlaybackSpeed:v4];
}

- (float)playRate
{
  playbackSpeed = [(RCCloudRecording *)self playbackSpeed];
  v3 = playbackSpeed;
  if (playbackSpeed)
  {
    [playbackSpeed floatValue];
    v5 = v4;
  }

  else
  {
    v5 = 1.0;
  }

  return v5;
}

- (BOOL)isSkipSilenceEnabled
{
  skipSilenceEnabled = [(RCCloudRecording *)self skipSilenceEnabled];
  bOOLValue = [skipSilenceEnabled BOOLValue];

  return bOOLValue;
}

- (id)recordingsModel
{
  managedObjectContext = [(RCCloudRecording *)self managedObjectContext];
  recordingsModel = [managedObjectContext recordingsModel];

  return recordingsModel;
}

- (BOOL)_copyCustomLabelToEncryptedTitleIfNeeded
{
  customLabel = [(RCCloudRecording *)self customLabel];
  if (customLabel && (-[RCCloudRecording _migratedTitleDateString](self, "_migratedTitleDateString"), v4 = objc_claimAutoreleasedReturnValue(), v5 = [customLabel isEqualToString:v4], v4, (v5 & 1) == 0))
  {
    customLabel2 = [(RCCloudRecording *)self customLabel];
    [(RCCloudRecording *)self setEncryptedTitle:customLabel2];

    customLabel3 = [(RCCloudRecording *)self customLabel];
    [(RCCloudRecording *)self setLocalTitle:customLabel3];

    v6 = 1;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)_copyEncryptedTitleToCustomLabelIfNeeded
{
  localTitle = [(RCCloudRecording *)self localTitle];
  if (localTitle)
  {
  }

  else
  {
    encryptedTitle = [(RCCloudRecording *)self encryptedTitle];

    if (!encryptedTitle)
    {
      return 0;
    }
  }

  encryptedTitle2 = [(RCCloudRecording *)self encryptedTitle];
  if (encryptedTitle2)
  {
    [(RCCloudRecording *)self setCustomLabel:encryptedTitle2];
  }

  else
  {
    localTitle2 = [(RCCloudRecording *)self localTitle];
    [(RCCloudRecording *)self setCustomLabel:localTitle2];
  }

  return 1;
}

- (void)updateForRemoteTitleChange:(BOOL)change
{
  changeCopy = change;
  v13 = *MEMORY[0x277D85DE8];
  if ([(RCCloudRecording *)self _isReadyToMigrate])
  {
    if (changeCopy)
    {
      if ([(RCCloudRecording *)self _migrateCustomLabelIfNeeded:1])
      {
        v5 = OSLogForCategory(@"Service");
        if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
        {
          uuid = [(RCCloudRecording *)self uuid];
          v9 = 136315394;
          v10 = "[RCCloudRecording(SyncedProperties) updateForRemoteTitleChange:]";
          v11 = 2112;
          v12 = uuid;
          v7 = "%s -- Migrated customLabel to encryptedTitle for recording %@";
LABEL_9:
          _os_log_impl(&dword_272442000, v5, OS_LOG_TYPE_DEFAULT, v7, &v9, 0x16u);

          goto LABEL_10;
        }

        goto LABEL_10;
      }
    }

    else if ([(RCCloudRecording *)self _copyCustomLabelToEncryptedTitleIfNeeded])
    {
      v5 = OSLogForCategory(@"Service");
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        uuid = [(RCCloudRecording *)self uuid];
        v9 = 136315394;
        v10 = "[RCCloudRecording(SyncedProperties) updateForRemoteTitleChange:]";
        v11 = 2112;
        v12 = uuid;
        v7 = "%s -- Copied customLabel to encryptedTitle for recording %@";
        goto LABEL_9;
      }

LABEL_10:
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)updateForLocalTitleChange:(BOOL)change
{
  v12 = *MEMORY[0x277D85DE8];
  if (change)
  {
    if ([(RCCloudRecording *)self _migrateCustomLabelIfNeeded:0])
    {
      v4 = OSLogForCategory(@"Service");
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        uuid = [(RCCloudRecording *)self uuid];
        v8 = 136315394;
        v9 = "[RCCloudRecording(SyncedProperties) updateForLocalTitleChange:]";
        v10 = 2112;
        v11 = uuid;
        v6 = "%s -- Migrated customLabel to encryptedTitle for recording %@";
LABEL_8:
        _os_log_impl(&dword_272442000, v4, OS_LOG_TYPE_DEFAULT, v6, &v8, 0x16u);

        goto LABEL_9;
      }

      goto LABEL_9;
    }
  }

  else if ([(RCCloudRecording *)self _copyEncryptedTitleToCustomLabelIfNeeded])
  {
    v4 = OSLogForCategory(@"Service");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      uuid = [(RCCloudRecording *)self uuid];
      v8 = 136315394;
      v9 = "[RCCloudRecording(SyncedProperties) updateForLocalTitleChange:]";
      v10 = 2112;
      v11 = uuid;
      v6 = "%s -- Copied encryptedTitle to customLabel for recording %@";
      goto LABEL_8;
    }

LABEL_9:
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)updateNilTitleFields:(BOOL)fields
{
  fieldsCopy = fields;
  v17 = *MEMORY[0x277D85DE8];
  if ([(RCCloudRecording *)self _isReadyToMigrate])
  {
    encryptedTitle = [(RCCloudRecording *)self encryptedTitle];

    if (!encryptedTitle)
    {
      localTitle = [(RCCloudRecording *)self localTitle];
      [(RCCloudRecording *)self setEncryptedTitle:localTitle];
    }

    customLabel = [(RCCloudRecording *)self customLabel];

    if (!customLabel)
    {
      if (fieldsCopy)
      {
        _migratedTitleDateString = [(RCCloudRecording *)self _migratedTitleDateString];
        [(RCCloudRecording *)self setCustomLabel:_migratedTitleDateString];

        v9 = OSLogForCategory(@"Service");
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          uuid = [(RCCloudRecording *)self uuid];
          v13 = 136315394;
          v14 = "[RCCloudRecording(SyncedProperties) updateNilTitleFields:]";
          v15 = 2112;
          v16 = uuid;
          v11 = "%s -- Updated nil customLabel to date string for recording %@";
LABEL_11:
          _os_log_impl(&dword_272442000, v9, OS_LOG_TYPE_DEFAULT, v11, &v13, 0x16u);

          goto LABEL_12;
        }

        goto LABEL_12;
      }

      if ([(RCCloudRecording *)self _copyEncryptedTitleToCustomLabelIfNeeded])
      {
        v9 = OSLogForCategory(@"Service");
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          uuid = [(RCCloudRecording *)self uuid];
          v13 = 136315394;
          v14 = "[RCCloudRecording(SyncedProperties) updateNilTitleFields:]";
          v15 = 2112;
          v16 = uuid;
          v11 = "%s -- Copied encryptedTitle to customLabel for recording %@";
          goto LABEL_11;
        }

LABEL_12:
      }
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (id)_migratedTitleDateString
{
  managedObjectContext = [(RCCloudRecording *)self managedObjectContext];
  recordingsModel = [managedObjectContext recordingsModel];

  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__10;
  v16 = __Block_byref_object_dispose__10;
  v17 = 0;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __62__RCCloudRecording_SyncedProperties___migratedTitleDateString__block_invoke;
  v8[3] = &unk_279E43B48;
  v11 = &v12;
  v5 = recordingsModel;
  v9 = v5;
  selfCopy = self;
  [v5 performBlockAndWait:v8];
  v6 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v6;
}

void __62__RCCloudRecording_SyncedProperties___migratedTitleDateString__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v6 = [*(a1 + 40) syncedDate];
  v3 = [v2 unencryptedTitleDateStringFromDate:v6];
  v4 = *(*(a1 + 48) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

- (void)migrateCustomLabelIfNeeded
{
  v10 = *MEMORY[0x277D85DE8];
  if ([(RCCloudRecording *)self _isReadyToMigrate]&& [(RCCloudRecording *)self _migrateCustomLabelIfNeeded:0])
  {
    v3 = OSLogForCategory(@"Service");
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      uuid = [(RCCloudRecording *)self uuid];
      v6 = 136315394;
      v7 = "[RCCloudRecording(SyncedProperties) migrateCustomLabelIfNeeded]";
      v8 = 2112;
      v9 = uuid;
      _os_log_impl(&dword_272442000, v3, OS_LOG_TYPE_DEFAULT, "%s -- Migrated customLabel to encryptedTitle for recording %@", &v6, 0x16u);
    }
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (BOOL)_migrateCustomLabelIfNeeded:(BOOL)needed
{
  _migratedTitleDateString = [(RCCloudRecording *)self _migratedTitleDateString];
  v6 = _migratedTitleDateString;
  v7 = &stru_2881A6FB8;
  if (_migratedTitleDateString)
  {
    v7 = _migratedTitleDateString;
  }

  v8 = v7;

  customLabel = [(RCCloudRecording *)self customLabel];
  if (customLabel && ([(__CFString *)v8 isEqualToString:customLabel]& 1) == 0)
  {
    encryptedTitle = [(RCCloudRecording *)self encryptedTitle];
    v12 = [encryptedTitle isEqualToString:customLabel];

    if ((v12 & 1) == 0)
    {
      if (needed)
      {
        v13 = [(RCCloudRecording *)self _uniqueMigratedTitleWithTitleBase:customLabel];
      }

      else
      {
        v13 = customLabel;
      }

      v14 = v13;
      [(RCCloudRecording *)self setEncryptedTitle:v13];
    }

    v10 = 1;
  }

  else
  {
    v10 = 0;
  }

  customLabel2 = [(RCCloudRecording *)self customLabel];
  v16 = [customLabel2 isEqualToString:v8];

  if ((v16 & 1) == 0)
  {
    [(RCCloudRecording *)self setCustomLabel:v8];
  }

  encryptedTitle2 = [(RCCloudRecording *)self encryptedTitle];
  if (encryptedTitle2)
  {
    v18 = encryptedTitle2;
    localTitle = [(RCCloudRecording *)self localTitle];
    encryptedTitle3 = [(RCCloudRecording *)self encryptedTitle];
    v21 = [localTitle isEqualToString:encryptedTitle3];

    if (v21)
    {
      encryptedTitle4 = [(RCCloudRecording *)self encryptedTitle];
      [(RCCloudRecording *)self setLocalTitle:encryptedTitle4];
    }
  }

  return v10;
}

- (id)_uniqueMigratedTitleWithTitleBase:(id)base
{
  baseCopy = base;
  managedObjectContext = [(RCCloudRecording *)self managedObjectContext];
  recordingsModel = [managedObjectContext recordingsModel];

  v7 = [recordingsModel recordingsWithTitle:baseCopy];
  if ([v7 count] != 1)
  {
    goto LABEL_4;
  }

  firstObject = [v7 firstObject];
  uuid = [firstObject uuid];
  uuid2 = [(RCCloudRecording *)self uuid];
  v11 = [uuid isEqual:uuid2];

  if (v11)
  {
    v12 = baseCopy;
  }

  else
  {
LABEL_4:
    v12 = [recordingsModel nextRecordingDefaultLabelWithCustomTitleBase:baseCopy];
  }

  v13 = v12;

  return v13;
}

- (BOOL)_isReadyToMigrate
{
  audioFuture = [(RCCloudRecording *)self audioFuture];
  if (audioFuture)
  {
    _isOlderThanMandatoryMigrationAge = 1;
  }

  else
  {
    _isOlderThanMandatoryMigrationAge = [(RCCloudRecording *)self _isOlderThanMandatoryMigrationAge];
  }

  return _isOlderThanMandatoryMigrationAge;
}

- (BOOL)_isOlderThanMandatoryMigrationAge
{
  v19 = *MEMORY[0x277D85DE8];
  date = [(RCCloudRecording *)self date];
  [date timeIntervalSinceNow];
  v5 = v4;

  v6 = 3600.0;
  if (RCIsInternalInstall())
  {
    mEMORY[0x277CBEBD0] = [MEMORY[0x277CBEBD0] sharedSettingsUserDefaults];
    v8 = [mEMORY[0x277CBEBD0] integerForKey:@"com.apple.VoiceMemos.mandatoryMigrationAgeOverride"];

    if (v8 >= 1)
    {
      v9 = OSLogForCategory(@"Default");
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        uuid = [(RCCloudRecording *)self uuid];
        v13 = 136315650;
        v14 = "[RCCloudRecording(SyncedProperties) _isOlderThanMandatoryMigrationAge]";
        v15 = 2048;
        v16 = v8;
        v17 = 2112;
        v18 = uuid;
        _os_log_impl(&dword_272442000, v9, OS_LOG_TYPE_DEFAULT, "%s -- com.apple.VoiceMemos.mandatoryMigrationAgeOverride was used with value of %li for recording with uuid %@", &v13, 0x20u);
      }

      v6 = v8;
    }
  }

  result = v6 < -v5;
  v12 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)migratePlaybackSettings
{
  v3 = [(RCCloudRecording *)self valueForKey:@"playbackRate"];
  v6 = v3;
  if (v3)
  {
    [v3 floatValue];
    if (v4 != 1.0)
    {
      [(RCCloudRecording *)self setPlaybackSpeed:v6];
    }
  }

  v5 = [(RCCloudRecording *)self valueForKey:@"silenceRemoverEnabled"];
  if ([v5 BOOLValue])
  {
    [(RCCloudRecording *)self setSkipSilenceEnabled:v5];
  }
}

- (void)_updateAudioFuture:isRecovery:.cold.1()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_3(&dword_272442000, v0, v1, "%s -- File does not exist at = %@", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_updateAudioFuture:isRecovery:.cold.2()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_3(&dword_272442000, v0, v1, "%s -- Could not create audio digest - error = %@", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_updateAudioFuture:isRecovery:.cold.3()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_3(&dword_272442000, v0, v1, "%s -- Failed to create audio future for file at = %@", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_updateFlagsDerivedFromComposedAsset:.cold.1()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_3(&dword_272442000, v0, v1, "%s -- Failed to decode transcription, error = %@", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)synchronizeWithExistingAudioFuture:(uint64_t)a1 .cold.1(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CCAA00] defaultManager];
  v3 = [v2 attributesOfItemAtPath:a1 error:0];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_2_0();
  _os_log_debug_impl(v4, v5, OS_LOG_TYPE_DEBUG, v6, v7, 0x16u);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)synchronizeWithExistingAudioFuture:.cold.2()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_3(&dword_272442000, v0, v1, "%s -- failed to mark as exported = %@", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)synchronizeWithExistingAudioFuture:(os_log_t)log .cold.3(os_log_t log)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 136315138;
  v3 = "[RCCloudRecording synchronizeWithExistingAudioFuture:]";
  _os_log_fault_impl(&dword_272442000, log, OS_LOG_TYPE_FAULT, "%s -- Audio Future was set to nil during synchronizeWithExistingAudioFuture", &v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

+ (void)isRecordingExported:.cold.1()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_3(&dword_272442000, v0, v1, "%s -- ERROR reading exclusion flag: %@", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)setPlayable:.cold.1()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_3(&dword_272442000, v0, v1, "%s -- Faied to update audio file metadata: error = %@", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)fileNameForSharing
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 136315138;
  v3 = "[RCCloudRecording fileNameForSharing]";
  _os_log_error_impl(&dword_272442000, log, OS_LOG_TYPE_ERROR, "%s -- No filename exists for sharing", &v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

@end