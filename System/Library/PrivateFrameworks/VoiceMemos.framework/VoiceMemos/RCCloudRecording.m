@interface RCCloudRecording
+ (BOOL)isRecordingExported:(id)a3;
+ (id)keyPathsForValuesAffectingValueForKey:(id)a3;
- (AVAsset)avAsset;
- (BOOL)_audioFutureIsCurrent;
- (BOOL)_audioFutureIsOutdated:(id)a3;
- (BOOL)_audioFutureUUIDIsCurrent;
- (BOOL)_composedURLIsCloneOfAudioFuture;
- (BOOL)_copyCustomLabelToEncryptedTitleIfNeeded;
- (BOOL)_copyEncryptedTitleToCustomLabelIfNeeded;
- (BOOL)_isOlderThanMandatoryMigrationAge;
- (BOOL)_isReadyToMigrate;
- (BOOL)_localAssetIsReachable;
- (BOOL)_migrateCustomLabelIfNeeded:(BOOL)a3;
- (BOOL)audioFutureVersionIsCompatible;
- (BOOL)canUpdateWithMultiTrackAsset;
- (BOOL)canUpdateWithSpatialAsset;
- (BOOL)isContentBeingModified;
- (BOOL)isSkipSilenceEnabled;
- (BOOL)isSpeechIsolatorEnabled;
- (BOOL)localAssetIsCurrent;
- (BOOL)markRecordingAsExported:(id)a3 error:(id *)a4;
- (BOOL)recreateAudioFutureIfNecessary;
- (BOOL)synchronizeWithExistingAudioFuture:(id *)a3;
- (BOOL)validateForInsert:(id *)a3;
- (BOOL)validateForUpdate:(id *)a3;
- (NSNumber)purgeableAudioFileSize;
- (NSString)userFolderUUID;
- (NSURL)URIRepresentation;
- (NSURL)url;
- (RCCloudRecording)initWithContext:(id)a3 andCreationDate:(id)a4;
- (_NSFileBackedFuture)syncedAudioFuture;
- (double)length;
- (double)syncedDuration;
- (float)layerMix;
- (float)playRate;
- (float)speechIsolatorValue;
- (id)_detailLabel;
- (id)_labelAllowingEmptyString:(BOOL)a3;
- (id)_localTitleForWillSave;
- (id)_migratedTitleDateString;
- (id)_uniqueMigratedTitleWithTitleBase:(id)a3;
- (id)fileNameForSharing;
- (id)filePathForSyncingFromExistingAudioFuture;
- (id)purgeAudioFileWithModel:(id)a3 error:(id *)a4;
- (id)recordingsModel;
- (id)subjectForActivityType:(id)a3;
- (unint64_t)syncedSharedFlags;
- (void)_enqueueAudioFutureUUID:(id)a3;
- (void)_evictAudioFuture;
- (void)_setFlag:(unint64_t)a3 value:(BOOL)a4;
- (void)_updateAudioFuture:(id)a3 isRecovery:(BOOL)a4;
- (void)_updateFlagsDerivedFromComposedAsset:(id)a3;
- (void)_updateLocalDurationWithAssetDuration;
- (void)copySharedFlagsFromOriginalRecording:(id)a3;
- (void)fileNameForSharing;
- (void)migrateCustomLabelIfNeeded;
- (void)migrateLocalProperties;
- (void)migratePlaybackSettings;
- (void)migrateSyncedUUIDs;
- (void)setEnhanced:(BOOL)a3;
- (void)setFavorite:(BOOL)a3;
- (void)setLayerMix:(float)a3;
- (void)setLength:(double)a3;
- (void)setMusicMemo:(BOOL)a3;
- (void)setPlayRate:(float)a3;
- (void)setSpeechIsolatorValue:(float)a3;
- (void)setSyncedAudioFuture:(id)a3 sourceFileURL:(id)a4 containsSpatialAudio:(BOOL)a5;
- (void)setSyncedDuration:(double)a3;
- (void)setSyncedSharedFlags:(unint64_t)a3;
- (void)setTitle:(id)a3;
- (void)setWatchOS:(BOOL)a3;
- (void)synchronizeRecordingMetadata;
- (void)updateAudioFutureWithLocalAsset;
- (void)updateForLocalTitleChange:(BOOL)a3;
- (void)updateForRemoteTitleChange:(BOOL)a3;
- (void)updateNilTitleFields:(BOOL)a3;
- (void)willSave;
@end

@implementation RCCloudRecording

- (double)length
{
  v3 = [(RCCloudRecording *)self localDuration];
  v4 = v3;
  if (v3)
  {
    [v3 doubleValue];
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
  v2 = [(RCCloudRecording *)self sharedFlags];
  v3 = [v2 longLongValue];

  return v3;
}

- (RCCloudRecording)initWithContext:(id)a3 andCreationDate:(id)a4
{
  v6 = a4;
  v10.receiver = self;
  v10.super_class = RCCloudRecording;
  v7 = [(RCCloudRecording *)&v10 initWithContext:a3];
  v8 = v7;
  if (v7)
  {
    [(RCCloudRecording *)v7 setValue:v6 forKey:@"date"];
  }

  return v8;
}

- (void)migrateLocalProperties
{
  v3 = [(RCCloudRecording *)self encryptedTitle];
  if (v3)
  {
    [(RCCloudRecording *)self setLocalTitle:v3];
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
    v3 = self;
  }

  else
  {
    if (![(RCCloudRecording *)self hasChanges])
    {
LABEL_12:
      v5 = 0;
      goto LABEL_13;
    }

    v3 = [(RCCloudRecording *)self changedValues];
  }

  v4 = v3;
  if (!v3)
  {
    goto LABEL_12;
  }

  v5 = [(RCCloudRecording *)v3 valueForKey:@"encryptedTitle"];
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
  v1 = [a1 uuid];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_2_0();
  _os_log_fault_impl(v2, v3, OS_LOG_TYPE_FAULT, v4, v5, 0x16u);

  v6 = *MEMORY[0x277D85DE8];
}

- (BOOL)validateForInsert:(id *)a3
{
  v3 = [(RCCloudRecording *)self creationDate];
  v4 = v3 != 0;

  return v4;
}

- (BOOL)validateForUpdate:(id *)a3
{
  v3 = [(RCCloudRecording *)self creationDate];
  v4 = v3 != 0;

  return v4;
}

- (void)synchronizeRecordingMetadata
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = [(RCCloudRecording *)self url];
  if ([v3 checkResourceIsReachableAndReturnError:0] && -[RCCloudRecording playable](self, "playable"))
  {
    v4 = [MEMORY[0x277CE6650] assetWithURL:v3];
    v5 = [v4 rc_recordingMetadata];
    v6 = [v5 mutableCopy];

    v7 = [(RCCloudRecording *)self title];
    [v6 setObject:v7 forKeyedSubscript:@"title"];

    v14 = 0;
    v8 = [MEMORY[0x277CE63D8] rc_updateMetadataInFile:v3 withRecordingMetadata:v6 error:&v14];
    v9 = v14;
    if (v8)
    {
      v10 = [v3 fileSystemRepresentation];
      if (audioDigestAttribute_onceToken != -1)
      {
        v13 = v10;
        [RCCloudRecording synchronizeRecordingMetadata];
        v10 = v13;
      }

      removexattr(v10, audioDigestAttribute__audioDigestAttribute, 0);
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

- (void)_updateAudioFuture:(id)a3 isRecovery:(BOOL)a4
{
  v4 = a4;
  v27 = *MEMORY[0x277D85DE8];
  v6 = a3;
  if ([v6 checkResourceIsReachableAndReturnError:0])
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

    v11 = [(RCCloudRecording *)self audioDigest];
    v12 = [(RCCloudRecording *)self syncedAudioFuture];
    if (!v12 || !v11 || ![v11 isEqualToData:v8] || v4)
    {
      v13 = [MEMORY[0x277CBE440] createFutureForFileAtURL:v6];
      v14 = OSLogForCategory(@"Service");
      v15 = v14;
      if (v13)
      {
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          v16 = [(RCCloudRecording *)self uuid];
          *buf = 136315906;
          v20 = "[RCCloudRecording _updateAudioFuture:isRecovery:]";
          v21 = 2112;
          v22 = v16;
          v23 = 2112;
          v24 = v11;
          v25 = 2112;
          v26 = v8;
          _os_log_impl(&dword_272442000, v15, OS_LOG_TYPE_DEFAULT, "%s -- uniqueID = %@, oldDigest = %@, newDigest = %@", buf, 0x2Au);
        }

        [(RCCloudRecording *)self _updateFlagsDerivedFromComposedAsset:v6];
        [(RCCloudRecording *)self setSyncedAudioFuture:v13 sourceFileURL:v6 containsSpatialAudio:[(RCCloudRecording *)self composedAssetIsSpatialRecording]];
        [(RCCloudRecording *)self setAudioDigest:v8];
        v17 = [v13 UUID];
        [(RCCloudRecording *)self _enqueueAudioFutureUUID:v17];

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

- (void)_updateFlagsDerivedFromComposedAsset:(id)a3
{
  v4 = [MEMORY[0x277CE6650] assetWithURL:a3];
  v5 = [v4 rc_transcriptionData];
  if (v5)
  {
    v12 = 0;
    v6 = [TranscriptionDecoder decodeTransciptionData:v5 error:&v12];
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
  v11 = [v4 rc_audioTracks];
  -[RCCloudRecording setComposedAssetHasMultipleTracks:](self, "setComposedAssetHasMultipleTracks:", [v11 count] > 1);

  -[RCCloudRecording setComposedAssetIsSpatialRecording:](self, "setComposedAssetIsSpatialRecording:", [v4 rc_hasSpatialTracks]);
}

- (void)migrateSyncedUUIDs
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_3(&dword_272442000, v0, v1, "%s -- failed to evict audio future - error = %@", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_enqueueAudioFutureUUID:(id)a3
{
  v11 = a3;
  if (v11)
  {
    v4 = [(RCCloudRecording *)self audioFutureUUIDs];
    v5 = [v4 containsObject:v11];

    if ((v5 & 1) == 0)
    {
      v6 = [(RCCloudRecording *)self audioFutureUUIDs];
      v7 = v6;
      v8 = MEMORY[0x277CBEBF8];
      if (v6)
      {
        v8 = v6;
      }

      v9 = v8;

      v10 = [v9 arrayByAddingObject:v11];

      [(RCCloudRecording *)self setAudioFutureUUIDs:v10];
    }
  }
}

- (void)copySharedFlagsFromOriginalRecording:(id)a3
{
  v4 = [a3 syncedSharedFlags];

  [(RCCloudRecording *)self setSyncedSharedFlags:v4];
}

- (BOOL)recreateAudioFutureIfNecessary
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = [(RCCloudRecording *)self syncedAudioFuture];
  v4 = [(RCCloudRecording *)self url];
  v5 = v4;
  if (v4 && [v4 checkResourceIsReachableAndReturnError:0] && (!v3 || -[RCCloudRecording _audioFutureIsOutdated:](self, "_audioFutureIsOutdated:", v3)))
  {
    v6 = OSLogForCategory(@"Service");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [(RCCloudRecording *)self uuid];
      v11 = 136315394;
      v12 = "[RCCloudRecording recreateAudioFutureIfNecessary]";
      v13 = 2112;
      v14 = v7;
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

- (BOOL)_audioFutureIsOutdated:(id)a3
{
  v4 = [a3 UUID];
  if (v4)
  {
    v5 = [(RCCloudRecording *)self audioFutureUUIDs];
    if ([v5 containsObject:v4])
    {
      v6 = [(RCCloudRecording *)self audioFutureUUIDs];
      v7 = [v6 lastObject];
      v8 = [v4 isEqual:v7] ^ 1;
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
  v3 = [(RCCloudRecording *)self audioFutureUUIDs];
  v4 = [v3 lastObject];
  v5 = [(RCCloudRecording *)self syncedAudioFuture];
  v6 = [v5 UUID];
  v7 = [v4 isEqual:v6];

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
  v3 = [(RCCloudRecording *)self syncedAudioFuture];
  v4 = [v3 fileURL];

  v5 = [(RCCloudRecording *)self url];
  v6 = v5;
  v7 = 0;
  if (v4 && v5)
  {
    v7 = identicalClones(v4, v5);
  }

  return v7;
}

- (BOOL)localAssetIsCurrent
{
  v3 = [(RCCloudRecording *)self _localAssetIsReachable];
  if (v3)
  {

    LOBYTE(v3) = [(RCCloudRecording *)self _audioFutureIsCurrent];
  }

  return v3;
}

- (BOOL)synchronizeWithExistingAudioFuture:(id *)a3
{
  v33 = *MEMORY[0x277D85DE8];
  v5 = [(RCCloudRecording *)self syncedAudioFuture];
  v6 = [v5 fileURL];
  v7 = v6;
  if (v6)
  {
    v8 = [v6 path];
    v9 = [(RCCloudRecording *)self url];
    v10 = [v9 path];

    if (v10)
    {
      v11 = [MEMORY[0x277CBEBC0] fileURLWithPath:v10];
      if (identicalClones(v11, v7))
      {
        goto LABEL_4;
      }

      memset(&v32, 0, sizeof(v32));
      memset(&v31, 0, sizeof(v31));
      if (!stat([v10 fileSystemRepresentation], &v32) && !stat(objc_msgSend(v8, "fileSystemRepresentation"), &v31) && !(v32.st_size | v31.st_size))
      {
        goto LABEL_4;
      }
    }

    else
    {
      v13 = [(RCCloudRecording *)self filePathForSyncingFromExistingAudioFuture];
      if (!v13)
      {
        v14 = OSLogForCategory(@"Default");
        if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
        {
          [RCCloudRecording synchronizeWithExistingAudioFuture:v14];
        }

        v11 = 0;
        v10 = 0;
        goto LABEL_20;
      }

      v10 = v13;
      v11 = [MEMORY[0x277CBEBC0] fileURLWithPath:v13];
    }

    [RCComposition deleteFromFilesystem:v11];
    if (clonefile([v8 fileSystemRepresentation], objc_msgSend(v10, "fileSystemRepresentation"), 0) || chmod(objc_msgSend(v10, "fileSystemRepresentation"), 0x1A4u))
    {
      if (a3)
      {
        [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:*__error() userInfo:0];
        *a3 = v12 = 0;
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
    v20 = [v10 lastPathComponent];
    [(RCCloudRecording *)self setFileName:v20];

    [(RCCloudRecording *)self setFlags:[(RCCloudRecording *)self flags]& 0xFFFFFFFFFFFFFFF9 | 4];
    v21 = OSLogForCategory(@"Service");
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      [(RCCloudRecording *)self uuid];
      v22 = v28 = v17;
      v23 = [v10 lastPathComponent];
      v32.st_dev = 136315650;
      *&v32.st_mode = "[RCCloudRecording synchronizeWithExistingAudioFuture:]";
      WORD2(v32.st_ino) = 2112;
      *(&v32.st_ino + 6) = v22;
      HIWORD(v32.st_gid) = 2112;
      *&v32.st_rdev = v23;
      _os_log_impl(&dword_272442000, v21, OS_LOG_TYPE_DEFAULT, "%s -- synchronized recording uuid = %@ audioFuture to %@", &v32, 0x20u);

      v17 = v28;
    }

    v24 = OSLogForCategory(@"Service");
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
    {
      [RCCloudRecording synchronizeWithExistingAudioFuture:v10];
    }

    [(RCCloudRecording *)self _updateLocalDurationWithAssetDuration];
    v25 = [v5 UUID];
    [(RCCloudRecording *)self _enqueueAudioFutureUUID:v25];

    [(RCCloudRecording *)self _updateFlagsDerivedFromComposedAsset:v11];
    v30[0] = 0;
    LOBYTE(v25) = [(RCCloudRecording *)self markRecordingAsExported:v11 error:v30];
    v26 = v30[0];
    if ((v25 & 1) == 0)
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

  if (a3)
  {
    [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA050] code:4 userInfo:0];
    *a3 = v12 = 0;
  }

  else
  {
    v12 = 0;
  }

LABEL_22:

  v15 = *MEMORY[0x277D85DE8];
  return v12;
}

+ (BOOL)isRecordingExported:(id)a3
{
  v3 = a3;
  if (isAudioFilePurgeable(v3))
  {
    v4 = *MEMORY[0x277CBECB0];
    v11 = 0;
    v12 = 0;
    v5 = [v3 getResourceValue:&v12 forKey:v4 error:&v11];
    v6 = v12;
    v7 = v11;
    if (v5)
    {
      v8 = [v6 BOOLValue];
    }

    else
    {
      v9 = OSLogForCategory(@"Default");
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        +[RCCloudRecording isRecordingExported:];
      }

      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)markRecordingAsExported:(id)a3 error:(id *)a4
{
  v6 = a3;
  value = 1;
  v7 = [v6 fileSystemRepresentation];
  if (audioFileFlagsAttribute_onceToken != -1)
  {
    isAudioFilePurgeable_cold_1();
  }

  v8 = setxattr(v7, audioFileFlagsAttribute__audioFileFlagsAttribute, &value, 8uLL, 0, 0);
  if (a4 && v8)
  {
    [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:*__error() userInfo:0];
    *a4 = v9 = 0;
  }

  else if (v8 || ![RCComposition excludeFromBackup:v6 error:a4])
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
  v6 = [a1 fileURL];
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

- (id)purgeAudioFileWithModel:(id)a3 error:(id *)a4
{
  v29 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [(RCCloudRecording *)self url];
  if (isAudioFilePurgeable(v7))
  {
    v24 = 0;
    v8 = [v7 getResourceValue:&v24 forKey:*MEMORY[0x277CBE838] error:a4];
    v9 = v24;
    v10 = 0;
    if (v8)
    {
      [(RCCloudRecording *)self setFileName:0];
      [(RCCloudRecording *)self setPlayable:0];
      v11 = [MEMORY[0x277CCAA00] defaultManager];
      v23 = 0;
      v12 = [v11 removeItemAtURL:v7 error:&v23];
      v13 = v23;

      if (v12)
      {
        v14 = [(RCCloudRecording *)self syncedAudioFuture];
        if (v14)
        {
          v15 = [v6 context];
          v22 = 0;
          v16 = [v15 evictFuture:v14 withError:&v22];
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

      else if (a4)
      {
        v19 = v13;
        v10 = 0;
        *a4 = v13;
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

- (void)_setFlag:(unint64_t)a3 value:(BOOL)a4
{
  v4 = a4;
  v7 = [(RCCloudRecording *)self flags];
  if (v4)
  {
    v8 = v7 | a3;
  }

  else
  {
    v8 = v7 & ~a3;
  }

  [(RCCloudRecording *)self setFlags:v8];
}

- (void)setWatchOS:(BOOL)a3
{
  v3 = a3;
  v5 = [(RCCloudRecording *)self syncedSharedFlags]& 0xFFFFFFFFFFFFFFBFLL;
  v6 = 64;
  if (!v3)
  {
    v6 = 0;
  }

  [(RCCloudRecording *)self setSyncedSharedFlags:v5 | v6];
}

- (void)setMusicMemo:(BOOL)a3
{
  v3 = a3;
  v5 = [(RCCloudRecording *)self syncedSharedFlags]& 0xFFFFFFFFFFFFFFFBLL;
  v6 = 4;
  if (!v3)
  {
    v6 = 0;
  }

  [(RCCloudRecording *)self setSyncedSharedFlags:v5 | v6];
}

- (void)setFavorite:(BOOL)a3
{
  v4 = [(RCCloudRecording *)self syncedSharedFlags]& 0xFFFFFFFFFFFFFFFELL | a3;

  [(RCCloudRecording *)self setSyncedSharedFlags:v4];
}

- (void)setEnhanced:(BOOL)a3
{
  v3 = a3;
  v5 = [(RCCloudRecording *)self syncedSharedFlags]& 0xFFFFFFFFFFFFFFFDLL;
  v6 = 2;
  if (!v3)
  {
    v6 = 0;
  }

  [(RCCloudRecording *)self setSyncedSharedFlags:v5 | v6];
}

+ (id)keyPathsForValuesAffectingValueForKey:(id)a3
{
  v11[1] = *MEMORY[0x277D85DE8];
  v10.receiver = a1;
  v10.super_class = &OBJC_METACLASS___RCCloudRecording;
  v3 = a3;
  v4 = objc_msgSendSuper2(&v10, sel_keyPathsForValuesAffectingValueForKey_, v3);
  v5 = [v3 isEqualToString:{@"enhanced", v10.receiver, v10.super_class}];

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
  v2 = [(RCCloudRecording *)self fileName];
  if (v2)
  {
    v3 = RCRecordingsDirectoryURL();
    v4 = [v3 URLByAppendingPathComponent:v2];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (NSURL)URIRepresentation
{
  v2 = [(RCCloudRecording *)self objectID];
  v3 = [v2 URIRepresentation];

  return v3;
}

- (void)setTitle:(id)a3
{
  v4 = a3;
  [(RCCloudRecording *)self setLocalTitle:v4];
  [(RCCloudRecording *)self setEncryptedTitle:v4];
}

- (BOOL)isContentBeingModified
{
  v2 = [(RCCloudRecording *)self url];
  v3 = [RCComposition _isSessionWithModificationAccessActiveForComposedAVURL:v2];

  return v3;
}

- (id)_labelAllowingEmptyString:(BOOL)a3
{
  v4 = [(RCCloudRecording *)self title];
  v5 = [MEMORY[0x277CCA900] whitespaceCharacterSet];
  v6 = [v4 stringByTrimmingCharactersInSet:v5];
  v7 = [v6 length];

  if (v7)
  {
    if (v4)
    {
      goto LABEL_3;
    }
  }

  else
  {
    if (a3)
    {
      v8 = 0;
      goto LABEL_6;
    }

    v9 = RCLocalizedFrameworkString(@"UNNAMED_RECORDING_LABEL");

    v4 = v9;
    if (v9)
    {
LABEL_3:
      v8 = RCDisplayStringForString(v4);
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

    v7 = [(RCCloudRecording *)self creationDate];
    v3 = [v4 stringFromDate:v7];
  }

  return v3;
}

- (AVAsset)avAsset
{
  if (!self->_avAsset)
  {
    v3 = [MEMORY[0x277CCAA00] defaultManager];
    v4 = [(RCCloudRecording *)self url];
    v5 = [v4 path];
    v6 = [v3 fileExistsAtPath:v5];

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
  v3 = [(RCCloudRecording *)self title];
  v4 = [v3 stringByReplacingOccurrencesOfString:@"/" withString:@"-"];

  v5 = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
  v6 = [v4 stringByTrimmingCharactersInSet:v5];

  v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:{objc_msgSend(v6, "fileSystemRepresentation")}];

  if ([v7 length])
  {
    goto LABEL_4;
  }

  v8 = [(RCCloudRecording *)self url];
  v9 = [v8 lastPathComponent];
  v10 = [v9 stringByDeletingPathExtension];

  if ([v10 length])
  {
    v7 = v10;
LABEL_4:
    v10 = v7;
    v11 = v10;
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

- (id)subjectForActivityType:(id)a3
{
  v13[2] = *MEMORY[0x277D85DE8];
  if ([a3 isEqualToString:@"com.apple.UIKit.activity.AirDrop"])
  {
    v12[0] = @"SFAirDropActivitySubjectMain";
    v4 = [(RCCloudRecording *)self _detailLabel];
    v12[1] = @"SFAirDropActivitySubjectDuration";
    v13[0] = v4;
    v5 = MEMORY[0x277CCABB0];
    [(RCCloudRecording *)self length];
    v6 = [v5 numberWithDouble:?];
    v13[1] = v6;
    v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:2];

    v8 = [MEMORY[0x277CCAAA0] dataWithJSONObject:v7 options:0 error:0];
    v9 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v8 encoding:4];
  }

  else
  {
    v9 = [(RCCloudRecording *)self _detailLabel];
  }

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

- (void)setLength:(double)a3
{
  [(RCCloudRecording *)self setSyncedDuration:?];
  v5 = [MEMORY[0x277CCABB0] numberWithDouble:a3];
  [(RCCloudRecording *)self setLocalDuration:v5];

  avAsset = self->_avAsset;
  self->_avAsset = 0;
}

- (NSString)userFolderUUID
{
  v2 = [(RCCloudRecording *)self folder];
  v3 = [v2 uuid];

  return v3;
}

- (_NSFileBackedFuture)syncedAudioFuture
{
  v3 = [(RCCloudRecording *)self audioFuture];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v6 = [(RCCloudRecording *)self mtAudioFuture];
    v7 = v6;
    if (v6)
    {
      v8 = v6;
    }

    else
    {
      v8 = [(RCCloudRecording *)self versionedAudioFuture];
    }

    v5 = v8;
  }

  return v5;
}

- (id)filePathForSyncingFromExistingAudioFuture
{
  v3 = [(RCCloudRecording *)self audioFuture];

  if (v3)
  {
    v4 = RCAudioFileExtensionM4A;
LABEL_6:
    v7 = *v4;
    v8 = [(RCCloudRecording *)self creationDate];
    v9 = [(RCCloudRecording *)self uuid];
    v10 = [RCSavedRecordingsModel standardPathForRecordingWithCreationDate:v8 uniqueID:v9 fileExtension:v7];

    goto LABEL_7;
  }

  v5 = [(RCCloudRecording *)self mtAudioFuture];

  if (v5 || ([(RCCloudRecording *)self versionedAudioFuture], v6 = objc_claimAutoreleasedReturnValue(), v6, v6))
  {
    v4 = RCAudioFileExtensionQTA;
    goto LABEL_6;
  }

  v10 = 0;
LABEL_7:

  return v10;
}

- (void)setSyncedAudioFuture:(id)a3 sourceFileURL:(id)a4 containsSpatialAudio:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = [a4 pathExtension];
  v10 = [v9 isEqualToString:@"qta"];

  if (v10)
  {
    v11 = [(RCCloudRecording *)self versionedAudioFuture];

    if (v11 || v5)
    {
      [(RCCloudRecording *)self setVersionedAudioFuture:v8];
      v14 = [(RCCloudRecording *)self audioFutureFlags];
      v15 = [v14 integerValue];

      v16 = [MEMORY[0x277CCABB0] numberWithLongLong:v15 | 1];
      [(RCCloudRecording *)self setAudioFutureFlags:v16];

      v12 = [(RCCloudRecording *)self mtAudioFuture];
      if (!v12)
      {
LABEL_10:
        v13 = [(RCCloudRecording *)self audioFuture];
LABEL_11:
        v17 = v13;

        if (!v17)
        {
          goto LABEL_15;
        }

        goto LABEL_12;
      }
    }

    else
    {
      [(RCCloudRecording *)self setMtAudioFuture:v8];
      v12 = [(RCCloudRecording *)self versionedAudioFuture];
      if (!v12)
      {
        goto LABEL_10;
      }
    }
  }

  else
  {
    [(RCCloudRecording *)self setAudioFuture:v8];
    v12 = [(RCCloudRecording *)self versionedAudioFuture];
    if (!v12)
    {
      v13 = [(RCCloudRecording *)self mtAudioFuture];
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
  v3 = [(RCCloudRecording *)self audioFuture];
  if (v3)
  {

    return 1;
  }

  v4 = [(RCCloudRecording *)self mtAudioFuture];

  if (v4)
  {
    return 1;
  }

  v6 = [(RCCloudRecording *)self audioFutureFlags];
  v7 = [v6 integerValue];

  if (v7 && ([(RCCloudRecording *)self versionedAudioFuture], v8 = objc_claimAutoreleasedReturnValue(), v8, v8))
  {
    return v7 & 1;
  }

  else
  {
    return 0;
  }
}

- (BOOL)canUpdateWithMultiTrackAsset
{
  v2 = [(RCCloudRecording *)self audioFuture];
  v3 = v2 == 0;

  return v3;
}

- (BOOL)canUpdateWithSpatialAsset
{
  v3 = [(RCCloudRecording *)self audioFuture];
  if (v3)
  {
    v4 = 0;
  }

  else
  {
    v5 = [(RCCloudRecording *)self mtAudioFuture];
    v4 = v5 == 0;
  }

  return v4;
}

- (double)syncedDuration
{
  v2 = [(RCCloudRecording *)self duration];
  [v2 doubleValue];
  v4 = v3;

  return v4;
}

- (void)setSyncedDuration:(double)a3
{
  v4 = [MEMORY[0x277CCABB0] numberWithDouble:a3];
  [(RCCloudRecording *)self setDuration:v4];
}

- (void)setSyncedSharedFlags:(unint64_t)a3
{
  v4 = [MEMORY[0x277CCABB0] numberWithLongLong:a3];
  [(RCCloudRecording *)self setSharedFlags:v4];
}

- (void)setLayerMix:(float)a3
{
  v4 = [MEMORY[0x277CCABB0] numberWithFloat:?];
  [(RCCloudRecording *)self setMtLayerMix:v4];
}

- (float)layerMix
{
  v2 = [(RCCloudRecording *)self mtLayerMix];
  [v2 floatValue];
  v4 = v3;

  return v4;
}

- (BOOL)isSpeechIsolatorEnabled
{
  v2 = [(RCCloudRecording *)self studioMixEnabled];
  v3 = [v2 BOOLValue];

  return v3;
}

- (void)setSpeechIsolatorValue:(float)a3
{
  v4 = [MEMORY[0x277CCABB0] numberWithFloat:?];
  [(RCCloudRecording *)self setStudioMixLevel:v4];
}

- (float)speechIsolatorValue
{
  v2 = [(RCCloudRecording *)self studioMixLevel];
  v3 = v2;
  if (v2)
  {
    [v2 floatValue];
    v5 = v4;
  }

  else
  {
    v5 = *&kDefaultSpeechIsolatorValue;
  }

  return v5;
}

- (void)setPlayRate:(float)a3
{
  v4 = [MEMORY[0x277CCABB0] numberWithFloat:?];
  [(RCCloudRecording *)self setPlaybackSpeed:v4];
}

- (float)playRate
{
  v2 = [(RCCloudRecording *)self playbackSpeed];
  v3 = v2;
  if (v2)
  {
    [v2 floatValue];
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
  v2 = [(RCCloudRecording *)self skipSilenceEnabled];
  v3 = [v2 BOOLValue];

  return v3;
}

- (id)recordingsModel
{
  v2 = [(RCCloudRecording *)self managedObjectContext];
  v3 = [v2 recordingsModel];

  return v3;
}

- (BOOL)_copyCustomLabelToEncryptedTitleIfNeeded
{
  v3 = [(RCCloudRecording *)self customLabel];
  if (v3 && (-[RCCloudRecording _migratedTitleDateString](self, "_migratedTitleDateString"), v4 = objc_claimAutoreleasedReturnValue(), v5 = [v3 isEqualToString:v4], v4, (v5 & 1) == 0))
  {
    v7 = [(RCCloudRecording *)self customLabel];
    [(RCCloudRecording *)self setEncryptedTitle:v7];

    v8 = [(RCCloudRecording *)self customLabel];
    [(RCCloudRecording *)self setLocalTitle:v8];

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
  v3 = [(RCCloudRecording *)self localTitle];
  if (v3)
  {
  }

  else
  {
    v4 = [(RCCloudRecording *)self encryptedTitle];

    if (!v4)
    {
      return 0;
    }
  }

  v5 = [(RCCloudRecording *)self encryptedTitle];
  if (v5)
  {
    [(RCCloudRecording *)self setCustomLabel:v5];
  }

  else
  {
    v6 = [(RCCloudRecording *)self localTitle];
    [(RCCloudRecording *)self setCustomLabel:v6];
  }

  return 1;
}

- (void)updateForRemoteTitleChange:(BOOL)a3
{
  v3 = a3;
  v13 = *MEMORY[0x277D85DE8];
  if ([(RCCloudRecording *)self _isReadyToMigrate])
  {
    if (v3)
    {
      if ([(RCCloudRecording *)self _migrateCustomLabelIfNeeded:1])
      {
        v5 = OSLogForCategory(@"Service");
        if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
        {
          v6 = [(RCCloudRecording *)self uuid];
          v9 = 136315394;
          v10 = "[RCCloudRecording(SyncedProperties) updateForRemoteTitleChange:]";
          v11 = 2112;
          v12 = v6;
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
        v6 = [(RCCloudRecording *)self uuid];
        v9 = 136315394;
        v10 = "[RCCloudRecording(SyncedProperties) updateForRemoteTitleChange:]";
        v11 = 2112;
        v12 = v6;
        v7 = "%s -- Copied customLabel to encryptedTitle for recording %@";
        goto LABEL_9;
      }

LABEL_10:
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)updateForLocalTitleChange:(BOOL)a3
{
  v12 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    if ([(RCCloudRecording *)self _migrateCustomLabelIfNeeded:0])
    {
      v4 = OSLogForCategory(@"Service");
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        v5 = [(RCCloudRecording *)self uuid];
        v8 = 136315394;
        v9 = "[RCCloudRecording(SyncedProperties) updateForLocalTitleChange:]";
        v10 = 2112;
        v11 = v5;
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
      v5 = [(RCCloudRecording *)self uuid];
      v8 = 136315394;
      v9 = "[RCCloudRecording(SyncedProperties) updateForLocalTitleChange:]";
      v10 = 2112;
      v11 = v5;
      v6 = "%s -- Copied encryptedTitle to customLabel for recording %@";
      goto LABEL_8;
    }

LABEL_9:
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)updateNilTitleFields:(BOOL)a3
{
  v3 = a3;
  v17 = *MEMORY[0x277D85DE8];
  if ([(RCCloudRecording *)self _isReadyToMigrate])
  {
    v5 = [(RCCloudRecording *)self encryptedTitle];

    if (!v5)
    {
      v6 = [(RCCloudRecording *)self localTitle];
      [(RCCloudRecording *)self setEncryptedTitle:v6];
    }

    v7 = [(RCCloudRecording *)self customLabel];

    if (!v7)
    {
      if (v3)
      {
        v8 = [(RCCloudRecording *)self _migratedTitleDateString];
        [(RCCloudRecording *)self setCustomLabel:v8];

        v9 = OSLogForCategory(@"Service");
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          v10 = [(RCCloudRecording *)self uuid];
          v13 = 136315394;
          v14 = "[RCCloudRecording(SyncedProperties) updateNilTitleFields:]";
          v15 = 2112;
          v16 = v10;
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
          v10 = [(RCCloudRecording *)self uuid];
          v13 = 136315394;
          v14 = "[RCCloudRecording(SyncedProperties) updateNilTitleFields:]";
          v15 = 2112;
          v16 = v10;
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
  v3 = [(RCCloudRecording *)self managedObjectContext];
  v4 = [v3 recordingsModel];

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
  v5 = v4;
  v9 = v5;
  v10 = self;
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
      v4 = [(RCCloudRecording *)self uuid];
      v6 = 136315394;
      v7 = "[RCCloudRecording(SyncedProperties) migrateCustomLabelIfNeeded]";
      v8 = 2112;
      v9 = v4;
      _os_log_impl(&dword_272442000, v3, OS_LOG_TYPE_DEFAULT, "%s -- Migrated customLabel to encryptedTitle for recording %@", &v6, 0x16u);
    }
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (BOOL)_migrateCustomLabelIfNeeded:(BOOL)a3
{
  v5 = [(RCCloudRecording *)self _migratedTitleDateString];
  v6 = v5;
  v7 = &stru_2881A6FB8;
  if (v5)
  {
    v7 = v5;
  }

  v8 = v7;

  v9 = [(RCCloudRecording *)self customLabel];
  if (v9 && ([(__CFString *)v8 isEqualToString:v9]& 1) == 0)
  {
    v11 = [(RCCloudRecording *)self encryptedTitle];
    v12 = [v11 isEqualToString:v9];

    if ((v12 & 1) == 0)
    {
      if (a3)
      {
        v13 = [(RCCloudRecording *)self _uniqueMigratedTitleWithTitleBase:v9];
      }

      else
      {
        v13 = v9;
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

  v15 = [(RCCloudRecording *)self customLabel];
  v16 = [v15 isEqualToString:v8];

  if ((v16 & 1) == 0)
  {
    [(RCCloudRecording *)self setCustomLabel:v8];
  }

  v17 = [(RCCloudRecording *)self encryptedTitle];
  if (v17)
  {
    v18 = v17;
    v19 = [(RCCloudRecording *)self localTitle];
    v20 = [(RCCloudRecording *)self encryptedTitle];
    v21 = [v19 isEqualToString:v20];

    if (v21)
    {
      v22 = [(RCCloudRecording *)self encryptedTitle];
      [(RCCloudRecording *)self setLocalTitle:v22];
    }
  }

  return v10;
}

- (id)_uniqueMigratedTitleWithTitleBase:(id)a3
{
  v4 = a3;
  v5 = [(RCCloudRecording *)self managedObjectContext];
  v6 = [v5 recordingsModel];

  v7 = [v6 recordingsWithTitle:v4];
  if ([v7 count] != 1)
  {
    goto LABEL_4;
  }

  v8 = [v7 firstObject];
  v9 = [v8 uuid];
  v10 = [(RCCloudRecording *)self uuid];
  v11 = [v9 isEqual:v10];

  if (v11)
  {
    v12 = v4;
  }

  else
  {
LABEL_4:
    v12 = [v6 nextRecordingDefaultLabelWithCustomTitleBase:v4];
  }

  v13 = v12;

  return v13;
}

- (BOOL)_isReadyToMigrate
{
  v3 = [(RCCloudRecording *)self audioFuture];
  if (v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = [(RCCloudRecording *)self _isOlderThanMandatoryMigrationAge];
  }

  return v4;
}

- (BOOL)_isOlderThanMandatoryMigrationAge
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = [(RCCloudRecording *)self date];
  [v3 timeIntervalSinceNow];
  v5 = v4;

  v6 = 3600.0;
  if (RCIsInternalInstall())
  {
    v7 = [MEMORY[0x277CBEBD0] sharedSettingsUserDefaults];
    v8 = [v7 integerForKey:@"com.apple.VoiceMemos.mandatoryMigrationAgeOverride"];

    if (v8 >= 1)
    {
      v9 = OSLogForCategory(@"Default");
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = [(RCCloudRecording *)self uuid];
        v13 = 136315650;
        v14 = "[RCCloudRecording(SyncedProperties) _isOlderThanMandatoryMigrationAge]";
        v15 = 2048;
        v16 = v8;
        v17 = 2112;
        v18 = v10;
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