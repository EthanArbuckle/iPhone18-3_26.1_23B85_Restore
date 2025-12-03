@interface RCSavedRecordingsModel
+ (id)_copyFileIntoImportFilesTemporaryDirectory:(id)directory error:(id *)error;
+ (id)_copyFileIntoRecordingsDirectory:(id)directory error:(id *)error;
+ (id)_dateFormatterComponentFormatting;
+ (id)recordingsModelForContext:(id)context;
+ (id)savedRecordingsDirectory;
+ (id)standardNameForRecordingWithCreationDate:(id)date uniqueID:(id)d;
+ (id)standardPathForRecordingWithCreationDate:(id)date uniqueID:(id)d fileExtension:(id)extension;
+ (id)standardURLForRecordingWithCreationDate:(id)date fileExtension:(id)extension;
+ (void)determineImportabilityOfRecordingWithAudioURL:(id)l completionHandler:(id)handler;
+ (void)fetchMetadataForRecordingWithUUID:(id)d completionHandler:(id)handler;
+ (void)fetchRecordingUUIDsForExport:(id)export;
+ (void)importFileWithURL:(id)l shouldUseMetadataTitle:(BOOL)title completionHandler:(id)handler;
+ (void)importFileWithURL:(id)l withMetadata:(id)metadata completionHandler:(id)handler;
+ (void)importRecordingWithSourceAudioURL:(id)l name:(id)name date:(id)date userInfo:(id)info completionHandler:(id)handler;
+ (void)sizeOfRecordingsForExport:(id)export;
- (BOOL)__saveManagedObjectContext:(id *)context;
- (BOOL)_mergeDuplicateNameFoldersWithName:(id)name;
- (BOOL)_mergeDuplicateUUIDFolders:(id)folders;
- (BOOL)encryptedFieldsMigrationExists;
- (BOOL)exportToCloudForStore:(id)store completionHandler:(id)handler;
- (BOOL)fetchExportProgress:(id)progress forStore:(id)store completionHandler:(id)handler;
- (BOOL)fetchObjectsFromCloud:(id)cloud entityToAttributesToFetch:(id)fetch forStore:(id)store completionHandler:(id)handler;
- (BOOL)importFromCloudForStore:(id)store completionHandler:(id)handler;
- (BOOL)resetCloudForStore:(id)store completionHandler:(id)handler;
- (BOOL)saveIfNecessary:(id *)necessary;
- (NSArray)allRecordings;
- (NSSet)audioProperties;
- (RCSavedRecordingsModel)init;
- (RCSavedRecordingsModel)initWithContext:(id)context;
- (id)_allTitles;
- (id)_foldersWithUUID:(id)d;
- (id)_recordingsFetchRequestForFolder:(id)folder;
- (id)_recordingsForFolderUUID:(id)d;
- (id)_recordingsWithFetchRequest:(id)request;
- (id)_recordingsWithFetchRequest:(id)request error:(id *)error;
- (id)_recordingsWithUniqueID:(id)d;
- (id)_transactionHistorySinceToken:(id)token forStore:(id)store;
- (id)_transactionsAndChangesForObjectIDs:(id)ds;
- (id)_transactionsAndChangesWithPredicate:(id)predicate;
- (id)_transactionsAndChangesWithRequest:(id)request;
- (id)cacheDeletedRecordings;
- (id)createEncryptedFieldsMigration:(int)migration;
- (id)duplicateRecording:(id)recording copyingResources:(BOOL)resources creationDate:(id)date error:(id *)error;
- (id)duplicateRecording:(id)recording error:(id *)error;
- (id)encryptedFieldMigrations;
- (id)enumerateChangeHistorySinceToken:(id)token forStore:(id)store usingBlock:(id)block;
- (id)existingFolderWithName:(id)name;
- (id)existingFolderWithUUID:(id)d;
- (id)existingFoldersWithName:(id)name searchOption:(int)option;
- (id)folderWithName:(id)name;
- (id)insertRecordingWithAudioFile:(id)file duration:(double)duration date:(id)date customTitleBase:(id)base uniqueID:(id)d error:(id *)error;
- (id)nextRecordingDefaultLabelWithCustomTitleBase:(id)base;
- (id)objectIDsForRecordingsNeedingAssetExport;
- (id)playableRecordingsForFolder:(id)folder;
- (id)recordingWithFileName:(id)name;
- (id)recordingWithID:(id)d;
- (id)recordingWithURIRepresentation:(id)representation;
- (id)recordingWithUniqueID:(id)d;
- (id)recordingsWithNilAudioFutures;
- (id)recordingsWithNilEncryptedTitleOrCustomLabel;
- (id)recordingsWithPredicate:(id)predicate;
- (id)recordingsWithTitle:(id)title;
- (id)recordingsWithUniqueIDs:(id)ds;
- (id)transactionForToken:(id)token forStore:(id)store;
- (id)transactionsAndChangesForObjectID:(id)d;
- (id)unencryptedTitleDateFormatter;
- (id)unencryptedTitleDateStringFromDate:(id)date;
- (id)userFolders;
- (id)userFoldersFetchedResultsController;
- (id)visibleRecordingsFetchedResultsController;
- (unint64_t)_countForFetchRequest:(id)request;
- (unint64_t)fetchPlayableRecordingsCount;
- (unint64_t)playableCountForFolder:(id)folder;
- (unint64_t)userFolderCount;
- (void)_copyPropertiesFromOriginalRecording:(id)recording newRecording:(id)newRecording;
- (void)_enumerateFetchedRecordingTitles:(id)titles;
- (void)_importImportableRecordingWithAudioAsset:(id)asset name:(id)name date:(id)date uniqueID:(id)d presetName:(id)presetName outputFileType:(id)type completionHandler:(id)handler;
- (void)_importRecordingWithSourceAudioURL:(id)l name:(id)name date:(id)date uniqueID:(id)d preferredFormat:(unsigned int)format completionHandler:(id)handler;
- (void)_insertRecordingWithImportableAudioURL:(id)l name:(id)name date:(id)date uniqueID:(id)d completionHandler:(id)handler;
- (void)_mergeFolders:(id)folders intoTargetFolder:(id)folder;
- (void)_postProcessCloudRecordingForRecordingWithId:(id)id named:(id)named userInfo:(id)info isMigrationImport:(BOOL)import isMusicMemoImport:(BOOL)memoImport sharingMetadata:(id)metadata;
- (void)_rerankFolders;
- (void)_synchronizeRecordingsMetadata;
- (void)addRecording:(id)recording toFolder:(id)folder;
- (void)addRecordings:(id)recordings toFolder:(id)folder;
- (void)deleteFolder:(id)folder;
- (void)deleteRecording:(id)recording;
- (void)deleteRecordings:(id)recordings;
- (void)enumerateExistingRecordingsWithBlock:(id)block;
- (void)enumerateExistingRecordingsWithProperties:(id)properties sortDescriptors:(id)descriptors block:(id)block;
- (void)eraseAllDeleted;
- (void)eraseRecording:(id)recording;
- (void)eraseRecordings:(id)recordings;
- (void)eraseRecordingsDeletedBeforeDate:(id)date;
- (void)importRecordingWithSourceAudioURL:(id)l name:(id)name date:(id)date xpcConnection:(id)connection userInfo:(id)info completionHandler:(id)handler;
- (void)mergeRecordings:(id)recordings;
- (void)performWithSavingDisabled:(id)disabled;
- (void)reconcileChangedFolder:(id)folder change:(id)change;
- (void)removeRecording:(id)recording fromFolder:(id)folder;
- (void)renameFolder:(id)folder toName:(id)name;
- (void)restoreDeletedRecording:(id)recording;
- (void)restoreDeletedRecordings:(id)recordings;
- (void)setEnhanced:(BOOL)enhanced ofRecording:(id)recording;
- (void)setFavorite:(BOOL)favorite ofRecording:(id)recording;
- (void)setTitle:(id)title ofRecording:(id)recording;
@end

@implementation RCSavedRecordingsModel

- (NSSet)audioProperties
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __41__RCSavedRecordingsModel_audioProperties__block_invoke;
  block[3] = &unk_279E43B20;
  block[4] = self;
  if (audioProperties_onceToken != -1)
  {
    dispatch_once(&audioProperties_onceToken, block);
  }

  return audioProperties_audioProperties;
}

void __41__RCSavedRecordingsModel_audioProperties__block_invoke(uint64_t a1)
{
  v13[2] = *MEMORY[0x277D85DE8];
  v1 = [*(*(a1 + 32) + 8) persistentStoreCoordinator];
  v2 = [v1 managedObjectModel];

  v3 = [v2 entitiesByName];
  v4 = [v3 objectForKeyedSubscript:@"CloudRecording"];
  v5 = [v4 propertiesByName];

  v6 = MEMORY[0x277CBEB98];
  v7 = [v5 objectForKeyedSubscript:@"audioDigest"];
  v13[0] = v7;
  v8 = [v5 objectForKeyedSubscript:@"localDuration"];
  v13[1] = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:2];
  v10 = [v6 setWithArray:v9];
  v11 = audioProperties_audioProperties;
  audioProperties_audioProperties = v10;

  v12 = *MEMORY[0x277D85DE8];
}

+ (id)_copyFileIntoImportFilesTemporaryDirectory:(id)directory error:(id *)error
{
  v20[1] = *MEMORY[0x277D85DE8];
  directoryCopy = directory;
  lastPathComponent = [directoryCopy lastPathComponent];
  if (lastPathComponent)
  {
    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    v8 = RCRecordingsDirectoryURL();
    v9 = [v8 URLByAppendingPathComponent:@".ImportFilesTemporaryDirectory"];

    [defaultManager createDirectoryAtURL:v9 withIntermediateDirectories:1 attributes:0 error:0];
    v10 = [v9 URLByAppendingPathComponent:lastPathComponent];
    v11 = [defaultManager rc_uniqueFileSystemURLWithPreferredURL:v10];

    if ([defaultManager copyItemAtURL:directoryCopy toURL:v11 error:error])
    {
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }

    error = v12;
  }

  else if (error)
  {
    v13 = MEMORY[0x277CCA9B8];
    v14 = *MEMORY[0x277CCA738];
    v19 = *MEMORY[0x277CCA760];
    null = directoryCopy;
    if (!directoryCopy)
    {
      null = [MEMORY[0x277CBEB68] null];
    }

    v20[0] = null;
    v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:&v19 count:1];
    *error = [v13 errorWithDomain:v14 code:-1000 userInfo:v16];

    if (!directoryCopy)
    {
    }

    error = 0;
  }

  v17 = *MEMORY[0x277D85DE8];
  return error;
}

+ (void)importFileWithURL:(id)l shouldUseMetadataTitle:(BOOL)title completionHandler:(id)handler
{
  titleCopy = title;
  lCopy = l;
  handlerCopy = handler;
  v30 = 0;
  v10 = [self _copyFileIntoImportFilesTemporaryDirectory:lCopy error:&v30];
  v11 = v30;
  if (v10)
  {
    v12 = v10;

    v22 = [MEMORY[0x277CE6650] assetWithURL:v12];
    rc_recordingMetadata = [v22 rc_recordingMetadata];
    v14 = [rc_recordingMetadata objectForKeyedSubscript:@"title"];
    v15 = [rc_recordingMetadata objectForKeyedSubscript:@"date"];
    if (titleCopy && v14)
    {
      stringByDeletingPathExtension = v14;
    }

    else
    {
      lastPathComponent = [v12 lastPathComponent];
      stringByDeletingPathExtension = [lastPathComponent stringByDeletingPathExtension];
    }

    v18 = v15;
    if (!v15)
    {
      v29 = 0;
      [v12 getResourceValue:&v29 forKey:*MEMORY[0x277CBE7C0] error:0];
      v18 = v29;
    }

    v19 = v18;
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __102__RCSavedRecordingsModel_ImportAdditions__importFileWithURL_shouldUseMetadataTitle_completionHandler___block_invoke;
    v23[3] = &unk_279E43A48;
    v24 = v12;
    v25 = stringByDeletingPathExtension;
    v26 = v19;
    lCopy = v24;
    v27 = lCopy;
    v28 = handlerCopy;
    v20 = v19;
    v21 = stringByDeletingPathExtension;
    [RCSavedRecordingsModel determineImportabilityOfRecordingWithAudioURL:lCopy completionHandler:v23];
  }

  else
  {
    (*(handlerCopy + 2))(handlerCopy, 0, v11);
  }
}

void __102__RCSavedRecordingsModel_ImportAdditions__importFileWithURL_shouldUseMetadataTitle_completionHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2 == 1)
  {
    v11 = v2;
    v12 = v3;
    v5 = *(a1 + 32);
    v6 = *(a1 + 40);
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __102__RCSavedRecordingsModel_ImportAdditions__importFileWithURL_shouldUseMetadataTitle_completionHandler___block_invoke_2;
    v8[3] = &unk_279E43A20;
    v7 = *(a1 + 48);
    v9 = *(a1 + 56);
    v10 = *(a1 + 64);
    [RCSavedRecordingsModel importRecordingWithSourceAudioURL:v5 name:v6 date:v7 completionHandler:v8];
  }
}

void __102__RCSavedRecordingsModel_ImportAdditions__importFileWithURL_shouldUseMetadataTitle_completionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [MEMORY[0x277CCAA00] defaultManager];
  v8 = *(a1 + 32);
  v12 = 0;
  v9 = [v7 removeItemAtURL:v8 error:&v12];
  v10 = v12;

  if ((v9 & 1) == 0)
  {
    v11 = OSLogForCategory(@"Service");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      __102__RCSavedRecordingsModel_ImportAdditions__importFileWithURL_shouldUseMetadataTitle_completionHandler___block_invoke_2_cold_1(v10, v11);
    }
  }

  (*(*(a1 + 40) + 16))();
}

+ (void)importFileWithURL:(id)l withMetadata:(id)metadata completionHandler:(id)handler
{
  v23[1] = *MEMORY[0x277D85DE8];
  lCopy = l;
  if (metadata)
  {
    v20 = @"RCVoiceMemoMetadataKey";
    metadataCopy = metadata;
    v8 = MEMORY[0x277CBEAC0];
    handlerCopy = handler;
    metadataCopy2 = metadata;
    v11 = [v8 dictionaryWithObjects:&metadataCopy forKeys:&v20 count:1];
    v12 = MEMORY[0x277CBEAA8];
    creationTimeMillis = [metadataCopy2 creationTimeMillis];
    [creationTimeMillis doubleValue];
    v15 = [v12 dateWithTimeIntervalSince1970:v14 / 1000.0];

    handlerCopy2 = [metadataCopy2 title];
    [RCSavedRecordingsModel importRecordingWithSourceAudioURL:lCopy name:handlerCopy2 date:v15 userInfo:v11 completionHandler:handlerCopy];
  }

  else
  {
    v22 = *MEMORY[0x277CCA450];
    v23[0] = @"metadata cannot be nil";
    v17 = MEMORY[0x277CBEAC0];
    handlerCopy2 = handler;
    v18 = 0;
    v11 = [v17 dictionaryWithObjects:v23 forKeys:&v22 count:1];
    v15 = [MEMORY[0x277CCA9B8] errorWithDomain:@"RCSavedRecordingsImportErrorDomain" code:500 userInfo:v11];

    handlerCopy2[2](handlerCopy2, 0, v15);
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (RCSavedRecordingsModel)init
{
  [MEMORY[0x277CBEAD8] raise:@"RCSavedRecordingsModelInitException" format:{@"-init is not supported, use +sharedInstance"}];

  return 0;
}

- (RCSavedRecordingsModel)initWithContext:(id)context
{
  contextCopy = context;
  v15.receiver = self;
  v15.super_class = RCSavedRecordingsModel;
  v6 = [(RCSavedRecordingsModel *)&v15 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_context, context);
    v8 = [RCWeakReferenceWrapper withReference:v7];
    context = v7->_context;
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __42__RCSavedRecordingsModel_initWithContext___block_invoke;
    v12[3] = &unk_279E43AD0;
    v13 = v7;
    v14 = v8;
    v10 = v8;
    [(NSManagedObjectContext *)context performBlockAndWait:v12];
  }

  return v7;
}

void __42__RCSavedRecordingsModel_initWithContext___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(*(a1 + 32) + 8) userInfo];
  [v2 setObject:v1 forKeyedSubscript:@"RCAssociatedRecordingsModel"];
}

+ (id)recordingsModelForContext:(id)context
{
  contextCopy = context;
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__1;
  v14 = __Block_byref_object_dispose__1;
  v15 = 0;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __52__RCSavedRecordingsModel_recordingsModelForContext___block_invoke;
  v7[3] = &unk_279E43AF8;
  v4 = contextCopy;
  v8 = v4;
  v9 = &v10;
  [v4 performBlockAndWait:v7];
  v5 = v11[5];

  _Block_object_dispose(&v10, 8);

  return v5;
}

void __52__RCSavedRecordingsModel_recordingsModelForContext___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) userInfo];
  v6 = [v2 objectForKeyedSubscript:@"RCAssociatedRecordingsModel"];

  v3 = [v6 weakReference];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

+ (id)savedRecordingsDirectory
{
  v2 = RCRecordingsDirectoryURL();
  path = [v2 path];

  return path;
}

+ (id)_dateFormatterComponentFormatting
{
  v2 = objc_alloc_init(MEMORY[0x277CCA968]);
  v3 = [objc_alloc(MEMORY[0x277CBEAF8]) initWithLocaleIdentifier:@"en_US"];
  [v2 setLocale:v3];

  return v2;
}

+ (id)standardNameForRecordingWithCreationDate:(id)date uniqueID:(id)d
{
  dCopy = d;
  dateCopy = date;
  _dateFormatterComponentFormatting = [self _dateFormatterComponentFormatting];
  [_dateFormatterComponentFormatting setDateFormat:@"YMMdd HHmmss"];
  v9 = [_dateFormatterComponentFormatting stringFromDate:dateCopy];

  v10 = [dCopy substringToIndex:8];

  v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@-%@", v9, v10];

  return v11;
}

+ (id)standardPathForRecordingWithCreationDate:(id)date uniqueID:(id)d fileExtension:(id)extension
{
  extensionCopy = extension;
  v9 = [self standardNameForRecordingWithCreationDate:date uniqueID:d];
  v10 = +[RCSavedRecordingsModel savedRecordingsDirectory];
  extensionCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.%@", v9, extensionCopy];

  v12 = [v10 stringByAppendingPathComponent:extensionCopy];

  return v12;
}

+ (id)standardURLForRecordingWithCreationDate:(id)date fileExtension:(id)extension
{
  extensionCopy = extension;
  dateCopy = date;
  _dateFormatterComponentFormatting = [self _dateFormatterComponentFormatting];
  [_dateFormatterComponentFormatting setDateFormat:@"YMMdd HHmmss"];
  v9 = [_dateFormatterComponentFormatting stringFromDate:dateCopy];

  v10 = +[RCSavedRecordingsModel savedRecordingsDirectory];
  extensionCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.%@", v9, extensionCopy];

  v12 = [v10 stringByAppendingPathComponent:extensionCopy];

  v13 = [MEMORY[0x277CBEBC0] fileURLWithPath:v12];

  return v13;
}

- (id)unencryptedTitleDateFormatter
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __55__RCSavedRecordingsModel_unencryptedTitleDateFormatter__block_invoke;
  v4[3] = &unk_279E43B20;
  v4[4] = self;
  [(RCSavedRecordingsModel *)self performBlockAndWait:v4];
  return self->_unencryptedTitleDateFormatter;
}

uint64_t __55__RCSavedRecordingsModel_unencryptedTitleDateFormatter__block_invoke(uint64_t result)
{
  if (!*(*(result + 32) + 16))
  {
    v2 = result;
    v3 = objc_alloc_init(MEMORY[0x277CCAA68]);
    v4 = *(v2 + 32);
    v5 = *(v4 + 16);
    *(v4 + 16) = v3;

    return MEMORY[0x2821F96F8]();
  }

  return result;
}

- (id)unencryptedTitleDateStringFromDate:(id)date
{
  dateCopy = date;
  v5 = dateCopy;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__1;
  v16 = __Block_byref_object_dispose__1;
  v17 = 0;
  if (dateCopy)
  {
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __61__RCSavedRecordingsModel_unencryptedTitleDateStringFromDate___block_invoke;
    v9[3] = &unk_279E43B48;
    v11 = &v12;
    v9[4] = self;
    v10 = dateCopy;
    [(RCSavedRecordingsModel *)self performBlockAndWait:v9];

    v6 = v13[5];
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  _Block_object_dispose(&v12, 8);

  return v7;
}

void __61__RCSavedRecordingsModel_unencryptedTitleDateStringFromDate___block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) unencryptedTitleDateFormatter];
  v2 = [v5 stringFromDate:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (NSArray)allRecordings
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__1;
  v10 = __Block_byref_object_dispose__1;
  v11 = 0;
  context = self->_context;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __39__RCSavedRecordingsModel_allRecordings__block_invoke;
  v5[3] = &unk_279E43B70;
  v5[4] = self;
  v5[5] = &v6;
  [(NSManagedObjectContext *)context performBlockAndWait:v5];
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __39__RCSavedRecordingsModel_allRecordings__block_invoke(uint64_t a1)
{
  v7 = [MEMORY[0x277CBE428] fetchRequestWithEntityName:@"CloudRecording"];
  v2 = +[RCQueryManager defaultFetchedProperties];
  [v7 setPropertiesToFetch:v2];

  v3 = +[RCQueryManager defaultSortDescriptors];
  [v7 setSortDescriptors:v3];

  v4 = [*(*(a1 + 32) + 8) executeFetchRequest:v7 error:0];
  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

- (id)recordingWithID:(id)d
{
  dCopy = d;
  if (!dCopy)
  {
    v6 = 0;
    goto LABEL_12;
  }

  context = self->_context;
  v11 = 0;
  v6 = [(NSManagedObjectContext *)context existingObjectWithID:dCopy error:&v11];
  v7 = v11;
  v8 = v7;
  if (v6)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_11;
    }
  }

  else if (v7)
  {
    v9 = OSLogForCategory(@"Default");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [RCSavedRecordingsModel recordingWithID:];
    }
  }

  v6 = 0;
LABEL_11:

LABEL_12:

  return v6;
}

- (id)recordingWithURIRepresentation:(id)representation
{
  if (representation)
  {
    context = self->_context;
    representationCopy = representation;
    persistentStoreCoordinator = [(NSManagedObjectContext *)context persistentStoreCoordinator];
    v7 = [persistentStoreCoordinator managedObjectIDForURIRepresentation:representationCopy];

    if (v7)
    {
      v8 = [(RCSavedRecordingsModel *)self recordingWithID:v7];
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)recordingWithFileName:(id)name
{
  nameCopy = name;
  v5 = [RCQueryManager recordingsForFileNameFetchRequest:nameCopy];
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__1;
  v17 = __Block_byref_object_dispose__1;
  v18 = 0;
  context = self->_context;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __48__RCSavedRecordingsModel_recordingWithFileName___block_invoke;
  v10[3] = &unk_279E43B48;
  v12 = &v13;
  v10[4] = self;
  v7 = v5;
  v11 = v7;
  [(NSManagedObjectContext *)context performBlockAndWait:v10];
  lastObject = [v14[5] lastObject];

  _Block_object_dispose(&v13, 8);

  return lastObject;
}

uint64_t __48__RCSavedRecordingsModel_recordingWithFileName___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 8) executeFetchRequest:a1[5] error:0];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

- (id)_recordingsWithUniqueID:(id)d
{
  dCopy = d;
  if (dCopy)
  {
    v5 = [RCQueryManager recordingsWithUniqueIDFetchRequest:dCopy];
    v13 = 0;
    v14 = &v13;
    v15 = 0x3032000000;
    v16 = __Block_byref_object_copy__1;
    v17 = __Block_byref_object_dispose__1;
    v18 = 0;
    context = self->_context;
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __50__RCSavedRecordingsModel__recordingsWithUniqueID___block_invoke;
    v10[3] = &unk_279E43B48;
    v12 = &v13;
    v10[4] = self;
    v7 = v5;
    v11 = v7;
    [(NSManagedObjectContext *)context performBlockAndWait:v10];
    v8 = v14[5];

    _Block_object_dispose(&v13, 8);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

uint64_t __50__RCSavedRecordingsModel__recordingsWithUniqueID___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 8) executeFetchRequest:a1[5] error:0];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

- (id)recordingWithUniqueID:(id)d
{
  v3 = [(RCSavedRecordingsModel *)self _recordingsWithUniqueID:d];
  firstObject = [v3 firstObject];

  return firstObject;
}

- (id)recordingsWithUniqueIDs:(id)ds
{
  dsCopy = ds;
  v5 = [RCQueryManager recordingsWithUniqueIDsFetchRequest:dsCopy];
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__1;
  v17 = __Block_byref_object_dispose__1;
  v18 = 0;
  context = self->_context;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __50__RCSavedRecordingsModel_recordingsWithUniqueIDs___block_invoke;
  v10[3] = &unk_279E43B48;
  v12 = &v13;
  v10[4] = self;
  v7 = v5;
  v11 = v7;
  [(NSManagedObjectContext *)context performBlockAndWait:v10];
  v8 = v14[5];

  _Block_object_dispose(&v13, 8);

  return v8;
}

uint64_t __50__RCSavedRecordingsModel_recordingsWithUniqueIDs___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 8) executeFetchRequest:a1[5] error:0];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

- (id)cacheDeletedRecordings
{
  v3 = +[RCQueryManager cacheDeletedOnWatchPredicate];
  v4 = [(RCSavedRecordingsModel *)self recordingsWithPredicate:v3];

  return v4;
}

- (id)recordingsWithPredicate:(id)predicate
{
  predicateCopy = predicate;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__1;
  v17 = __Block_byref_object_dispose__1;
  v18 = 0;
  context = self->_context;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __50__RCSavedRecordingsModel_recordingsWithPredicate___block_invoke;
  v9[3] = &unk_279E43B98;
  v6 = predicateCopy;
  selfCopy = self;
  v12 = &v13;
  v10 = v6;
  [(NSManagedObjectContext *)context performBlockAndWait:v9];
  v7 = v14[5];

  _Block_object_dispose(&v13, 8);

  return v7;
}

void __50__RCSavedRecordingsModel_recordingsWithPredicate___block_invoke(void *a1)
{
  v6 = [MEMORY[0x277CBE428] fetchRequestWithEntityName:@"CloudRecording"];
  [v6 setPredicate:a1[4]];
  v2 = +[RCQueryManager defaultFetchedProperties];
  [v6 setPropertiesToFetch:v2];

  [v6 setFetchBatchSize:100];
  v3 = [*(a1[5] + 8) executeFetchRequest:v6 error:0];
  v4 = *(a1[6] + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

- (void)enumerateExistingRecordingsWithProperties:(id)properties sortDescriptors:(id)descriptors block:(id)block
{
  propertiesCopy = properties;
  descriptorsCopy = descriptors;
  blockCopy = block;
  context = self->_context;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __90__RCSavedRecordingsModel_enumerateExistingRecordingsWithProperties_sortDescriptors_block___block_invoke;
  v15[3] = &unk_279E43BC0;
  v16 = propertiesCopy;
  v17 = descriptorsCopy;
  selfCopy = self;
  v19 = blockCopy;
  v12 = blockCopy;
  v13 = descriptorsCopy;
  v14 = propertiesCopy;
  [(NSManagedObjectContext *)context performBlockAndWait:v15];
}

void __90__RCSavedRecordingsModel_enumerateExistingRecordingsWithProperties_sortDescriptors_block___block_invoke(void *a1)
{
  v26 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CBE428] fetchRequestWithEntityName:@"CloudRecording"];
  v3 = v2;
  if (a1[4])
  {
    [v2 setPropertiesToFetch:?];
  }

  else
  {
    v4 = +[RCQueryManager defaultFetchedProperties];
    [v3 setPropertiesToFetch:v4];
  }

  if (a1[5])
  {
    [v3 setSortDescriptors:?];
  }

  else
  {
    v5 = +[RCQueryManager defaultSortDescriptors];
    [v3 setSortDescriptors:v5];
  }

  v6 = *(a1[6] + 8);
  v24 = 0;
  v7 = [v6 executeFetchRequest:v3 error:&v24];
  v8 = v24;
  if (v7)
  {
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v9 = v7;
    v10 = [v9 countByEnumeratingWithState:&v20 objects:v25 count:16];
    if (!v10)
    {
      goto LABEL_24;
    }

    v11 = v10;
    v12 = *v21;
    while (1)
    {
      v13 = 0;
      do
      {
        if (*v21 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v20 + 1) + 8 * v13);
        if (a1[4])
        {
          v15 = v14;
          if (!v15)
          {
            goto LABEL_16;
          }

LABEL_15:
          (*(a1[7] + 16))();
          goto LABEL_16;
        }

        v16 = *(a1[6] + 8);
        v17 = [v14 objectID];
        v15 = [v16 existingObjectWithID:v17 error:0];

        if (v15)
        {
          goto LABEL_15;
        }

LABEL_16:

        ++v13;
      }

      while (v11 != v13);
      v18 = [v9 countByEnumeratingWithState:&v20 objects:v25 count:16];
      v11 = v18;
      if (!v18)
      {
        goto LABEL_24;
      }
    }
  }

  v9 = OSLogForCategory(@"Default");
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    __90__RCSavedRecordingsModel_enumerateExistingRecordingsWithProperties_sortDescriptors_block___block_invoke_cold_1();
  }

LABEL_24:

  v19 = *MEMORY[0x277D85DE8];
}

- (void)enumerateExistingRecordingsWithBlock:(id)block
{
  blockCopy = block;
  v5 = +[RCQueryManager defaultFetchedProperties];
  [(RCSavedRecordingsModel *)self enumerateExistingRecordingsWithProperties:v5 sortDescriptors:0 block:blockCopy];
}

- (id)_allTitles
{
  v3 = [MEMORY[0x277CBEB58] set];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __36__RCSavedRecordingsModel__allTitles__block_invoke;
  v6[3] = &unk_279E43BE8;
  v4 = v3;
  v7 = v4;
  [(RCSavedRecordingsModel *)self _enumerateFetchedRecordingTitles:v6];

  return v4;
}

void __36__RCSavedRecordingsModel__allTitles__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v7 = a3;
  v5 = [a2 deletionDate];

  v6 = v7;
  if (v7 && !v5)
  {
    [*(a1 + 32) addObject:v7];
    v6 = v7;
  }
}

- (void)_enumerateFetchedRecordingTitles:(id)titles
{
  titlesCopy = titles;
  v5 = +[RCQueryManager allCustomLabelsFetchRequest];
  context = self->_context;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __59__RCSavedRecordingsModel__enumerateFetchedRecordingTitles___block_invoke;
  v9[3] = &unk_279E43C10;
  v9[4] = self;
  v10 = v5;
  v11 = titlesCopy;
  v7 = titlesCopy;
  v8 = v5;
  [(NSManagedObjectContext *)context performBlockAndWait:v9];
}

void __59__RCSavedRecordingsModel__enumerateFetchedRecordingTitles___block_invoke(void *a1)
{
  v13 = *MEMORY[0x277D85DE8];
  [*(a1[4] + 8) executeFetchRequest:a1[5] error:0];
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v2 = v9 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = *v9;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v9 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = [*(*(&v8 + 1) + 8 * i) title];
        if (v6)
        {
          (*(a1[6] + 16))();
        }
      }

      v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v3);
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (id)_transactionHistorySinceToken:(id)token forStore:(id)store
{
  tokenCopy = token;
  storeCopy = store;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__1;
  v22 = __Block_byref_object_dispose__1;
  v23 = 0;
  context = self->_context;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __65__RCSavedRecordingsModel__transactionHistorySinceToken_forStore___block_invoke;
  v13[3] = &unk_279E43C38;
  v9 = tokenCopy;
  v14 = v9;
  v10 = storeCopy;
  selfCopy = self;
  v17 = &v18;
  v15 = v10;
  [(NSManagedObjectContext *)context performBlockAndWait:v13];
  v11 = v19[5];

  _Block_object_dispose(&v18, 8);

  return v11;
}

void __65__RCSavedRecordingsModel__transactionHistorySinceToken_forStore___block_invoke(uint64_t a1)
{
  v5 = [MEMORY[0x277CBE4B0] fetchHistoryAfterToken:*(a1 + 32)];
  [v5 setResultType:5];
  [v5 rc_setAffectedStore:*(a1 + 40)];
  [v5 setFetchBatchSize:100];
  v2 = [*(a1 + 48) _transactionsAndChangesWithRequest:v5];
  v3 = *(*(a1 + 56) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (id)enumerateChangeHistorySinceToken:(id)token forStore:(id)store usingBlock:(id)block
{
  tokenCopy = token;
  storeCopy = store;
  blockCopy = block;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy__1;
  v26 = __Block_byref_object_dispose__1;
  v27 = tokenCopy;
  context = self->_context;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __79__RCSavedRecordingsModel_enumerateChangeHistorySinceToken_forStore_usingBlock___block_invoke;
  v17[3] = &unk_279E43C60;
  v17[4] = self;
  v12 = v27;
  v18 = v12;
  v13 = storeCopy;
  v19 = v13;
  v14 = blockCopy;
  v20 = v14;
  v21 = &v22;
  [(NSManagedObjectContext *)context performBlockAndWait:v17];
  v15 = v23[5];

  _Block_object_dispose(&v22, 8);

  return v15;
}

void __79__RCSavedRecordingsModel_enumerateChangeHistorySinceToken_forStore_usingBlock___block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) _transactionHistorySinceToken:*(a1 + 40) forStore:*(a1 + 48)];
  v3 = v2;
  if (v2 && [v2 count])
  {
    v18 = 0;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v4 = v3;
    v5 = [v4 countByEnumeratingWithState:&v14 objects:v19 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v15;
LABEL_5:
      v8 = 0;
      while (1)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v14 + 1) + 8 * v8);
        (*(*(a1 + 56) + 16))(*(a1 + 56));
        v10 = [v9 token];
        v11 = *(*(a1 + 64) + 8);
        v12 = *(v11 + 40);
        *(v11 + 40) = v10;

        if (v18)
        {
          break;
        }

        if (v6 == ++v8)
        {
          v6 = [v4 countByEnumeratingWithState:&v14 objects:v19 count:16];
          if (v6)
          {
            goto LABEL_5;
          }

          break;
        }
      }
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (id)transactionForToken:(id)token forStore:(id)store
{
  tokenCopy = token;
  storeCopy = store;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__1;
  v22 = __Block_byref_object_dispose__1;
  v23 = 0;
  context = self->_context;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __55__RCSavedRecordingsModel_transactionForToken_forStore___block_invoke;
  v13[3] = &unk_279E43C38;
  v9 = tokenCopy;
  v14 = v9;
  v10 = storeCopy;
  selfCopy = self;
  v17 = &v18;
  v15 = v10;
  [(NSManagedObjectContext *)context performBlockAndWait:v13];
  v11 = v19[5];

  _Block_object_dispose(&v18, 8);

  return v11;
}

void __55__RCSavedRecordingsModel_transactionForToken_forStore___block_invoke(uint64_t a1)
{
  v6 = [MEMORY[0x277CBE4B0] fetchHistoryTransactionForToken:*(a1 + 32)];
  [v6 setResultType:5];
  [v6 rc_setAffectedStore:*(a1 + 40)];
  [v6 setFetchBatchSize:100];
  v2 = [*(a1 + 48) _transactionsAndChangesWithRequest:v6];
  v3 = [v2 firstObject];
  v4 = *(*(a1 + 56) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

- (id)transactionsAndChangesForObjectID:(id)d
{
  v4 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K == %@", @"changedObjectID", d];
  v5 = [(RCSavedRecordingsModel *)self _transactionsAndChangesWithPredicate:v4];

  return v5;
}

- (id)_transactionsAndChangesForObjectIDs:(id)ds
{
  v4 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K IN %@", @"changedObjectID", ds];
  v5 = [(RCSavedRecordingsModel *)self _transactionsAndChangesWithPredicate:v4];

  return v5;
}

- (id)_transactionsAndChangesWithPredicate:(id)predicate
{
  predicateCopy = predicate;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__1;
  v17 = __Block_byref_object_dispose__1;
  v18 = 0;
  context = self->_context;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __63__RCSavedRecordingsModel__transactionsAndChangesWithPredicate___block_invoke;
  v9[3] = &unk_279E43B98;
  v6 = predicateCopy;
  selfCopy = self;
  v12 = &v13;
  v10 = v6;
  [(NSManagedObjectContext *)context performBlockAndWait:v9];
  v7 = v14[5];

  _Block_object_dispose(&v13, 8);

  return v7;
}

void __63__RCSavedRecordingsModel__transactionsAndChangesWithPredicate___block_invoke(uint64_t a1)
{
  v6 = [MEMORY[0x277CBE4A8] fetchRequest];
  [v6 setPredicate:*(a1 + 32)];
  v2 = [MEMORY[0x277CBE4B0] fetchHistoryWithFetchRequest:v6];
  [v2 setResultType:5];
  v3 = [*(a1 + 40) _transactionsAndChangesWithRequest:v2];
  v4 = *(*(a1 + 48) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

- (id)_transactionsAndChangesWithRequest:(id)request
{
  requestCopy = request;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__1;
  v17 = __Block_byref_object_dispose__1;
  v18 = 0;
  context = self->_context;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __61__RCSavedRecordingsModel__transactionsAndChangesWithRequest___block_invoke;
  v10[3] = &unk_279E43C88;
  v10[4] = self;
  v6 = requestCopy;
  v11 = v6;
  v12 = &v13;
  [(NSManagedObjectContext *)context performBlockAndWait:v10];
  v7 = v14[5];
  if (!v7)
  {
    v7 = MEMORY[0x277CBEBF8];
  }

  v8 = v7;

  _Block_object_dispose(&v13, 8);

  return v8;
}

void __61__RCSavedRecordingsModel__transactionsAndChangesWithRequest___block_invoke(void *a1)
{
  v3 = a1 + 5;
  v2 = a1[5];
  v4 = *(a1[4] + 8);
  v11 = 0;
  v5 = [v4 executeRequest:v2 error:&v11];
  v6 = v11;
  if (v5 && [v5 resultType] == 5)
  {
    v7 = [v5 result];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = *(a1[6] + 8);
      v9 = v7;
      v10 = *(v8 + 40);
      *(v8 + 40) = v9;
    }

    else
    {
      v10 = OSLogForCategory(@"Default");
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        __61__RCSavedRecordingsModel__transactionsAndChangesWithRequest___block_invoke_cold_1(v7, v3);
      }
    }
  }

  else
  {
    v7 = OSLogForCategory(@"Default");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __61__RCSavedRecordingsModel__transactionsAndChangesWithRequest___block_invoke_cold_2(v6, v3);
    }
  }
}

- (id)nextRecordingDefaultLabelWithCustomTitleBase:(id)base
{
  baseCopy = base;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__1;
  v17 = __Block_byref_object_dispose__1;
  v18 = 0;
  context = self->_context;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __71__RCSavedRecordingsModel_nextRecordingDefaultLabelWithCustomTitleBase___block_invoke;
  v9[3] = &unk_279E43C88;
  v6 = baseCopy;
  v10 = v6;
  selfCopy = self;
  v12 = &v13;
  [(NSManagedObjectContext *)context performBlockAndWait:v9];
  v7 = v14[5];

  _Block_object_dispose(&v13, 8);

  return v7;
}

void __71__RCSavedRecordingsModel_nextRecordingDefaultLabelWithCustomTitleBase___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) length])
  {
    v2 = *(a1 + 32);
  }

  else
  {
    v2 = RCLocalizedFrameworkString(@"UNTITLED_NEW_RECORDING_LABEL");
  }

  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __71__RCSavedRecordingsModel_nextRecordingDefaultLabelWithCustomTitleBase___block_invoke_2;
  v13[3] = &unk_279E43CB0;
  v3 = v2;
  v14 = v3;
  v4 = MEMORY[0x2743CA3B0](v13);
  v5 = [*(a1 + 40) _allTitles];
  v6 = v4[2](v4, 1);
  v7 = *(*(a1 + 48) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  if ([v5 containsObject:*(*(*(a1 + 48) + 8) + 40)])
  {
    v9 = 2;
    do
    {
      v10 = v4[2](v4, v9);
      v11 = *(*(a1 + 48) + 8);
      v12 = *(v11 + 40);
      *(v11 + 40) = v10;

      ++v9;
    }

    while (([v5 containsObject:*(*(*(a1 + 48) + 8) + 40)] & 1) != 0);
  }
}

id __71__RCSavedRecordingsModel_nextRecordingDefaultLabelWithCustomTitleBase___block_invoke_2(uint64_t a1, uint64_t a2)
{
  if (a2 == 1)
  {
    v2 = *(a1 + 32);
  }

  else
  {
    v3 = MEMORY[0x277CCACA8];
    v4 = *(a1 + 32);
    v5 = RCLocalizedInteger(a2, 1);
    v2 = [v3 stringWithFormat:@"%@ %@", v4, v5];
  }

  return v2;
}

- (id)insertRecordingWithAudioFile:(id)file duration:(double)duration date:(id)date customTitleBase:(id)base uniqueID:(id)d error:(id *)error
{
  fileCopy = file;
  dateCopy = date;
  baseCopy = base;
  dCopy = d;
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  if (!dateCopy)
  {
    dateCopy = [MEMORY[0x277CBEAA8] date];
  }

  stringByStandardizingPath = [fileCopy stringByStandardizingPath];
  if (stringByStandardizingPath)
  {
    errorCopy = error;
    v35 = dateCopy;
    v20 = dCopy;
    v21 = baseCopy;
    v22 = fileCopy;
    v23 = RCRecordingsDirectoryURL();
    path = [v23 path];
    v25 = [defaultManager rc_path:stringByStandardizingPath isChildOf:path];

    if (v25)
    {
      fileCopy = v22;
      baseCopy = v21;
      dCopy = v20;
      dateCopy = v35;
    }

    else
    {
      v26 = [objc_opt_class() _copyFileIntoRecordingsDirectory:stringByStandardizingPath error:errorCopy];

      stringByStandardizingPath = v26;
      fileCopy = v22;
      baseCopy = v21;
      dCopy = v20;
      dateCopy = v35;
      if (!v26)
      {
        goto LABEL_13;
      }
    }
  }

  if ([defaultManager fileExistsAtPath:{stringByStandardizingPath, errorCopy}])
  {
    v27 = MEMORY[0x277CE6650];
    v28 = [MEMORY[0x277CBEBC0] fileURLWithPath:stringByStandardizingPath];
    v29 = [v27 rc_preciseTimingAssetWithURL:v28];
  }

  else
  {
    v29 = 0;
  }

  if (duration == -1.0)
  {
    [v29 rc_durationInSeconds];
    duration = v30;
  }

  v43 = 0;
  v44 = &v43;
  v45 = 0x3032000000;
  v46 = __Block_byref_object_copy__1;
  v47 = __Block_byref_object_dispose__1;
  v48 = 0;
  context = self->_context;
  v36[0] = MEMORY[0x277D85DD0];
  v36[1] = 3221225472;
  v36[2] = __100__RCSavedRecordingsModel_insertRecordingWithAudioFile_duration_date_customTitleBase_uniqueID_error___block_invoke;
  v36[3] = &unk_279E43CD8;
  v36[4] = self;
  v41 = &v43;
  v37 = dateCopy;
  v32 = stringByStandardizingPath;
  v38 = v32;
  durationCopy = duration;
  v39 = baseCopy;
  v40 = dCopy;
  [(NSManagedObjectContext *)context performBlockAndWait:v36];
  stringByStandardizingPath = v44[5];

  _Block_object_dispose(&v43, 8);
LABEL_13:

  return stringByStandardizingPath;
}

uint64_t __100__RCSavedRecordingsModel_insertRecordingWithAudioFile_duration_date_customTitleBase_uniqueID_error___block_invoke(uint64_t a1)
{
  if ([*(*(a1 + 32) + 8) hasChanges])
  {
    [*(a1 + 32) saveIfNecessary];
  }

  v2 = [[RCCloudRecording alloc] initWithContext:*(*(a1 + 32) + 8) andCreationDate:*(a1 + 40)];
  v3 = *(*(a1 + 72) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = [*(a1 + 48) lastPathComponent];
  [*(*(*(a1 + 72) + 8) + 40) setFileName:v5];

  [*(*(*(a1 + 72) + 8) + 40) setLength:*(a1 + 80)];
  v6 = [*(a1 + 32) nextRecordingDefaultLabelWithCustomTitleBase:*(a1 + 56)];
  [*(*(*(a1 + 72) + 8) + 40) setTitle:v6];

  if (*(a1 + 64))
  {
    [*(*(*(a1 + 72) + 8) + 40) setUuid:?];
  }

  else
  {
    v7 = [MEMORY[0x277CCAD78] UUID];
    v8 = [v7 UUIDString];
    [*(*(*(a1 + 72) + 8) + 40) setUuid:v8];
  }

  if (*(a1 + 80) > 0.0)
  {
    [*(*(*(a1 + 72) + 8) + 40) setPlayable:1];
    [*(*(*(a1 + 72) + 8) + 40) synchronizeRecordingMetadata];
  }

  v9 = *(a1 + 32);

  return [v9 saveIfNecessary];
}

void __109__RCSavedRecordingsModel__determineImportabilityOfRecordingWithAudioAsset_preferredFormat_completionHandler___block_invoke(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  if ([a2 isEqual:a1[4]])
  {
    v9 = a1[6];
    v10 = *(a1[7] + 16);
  }

  else
  {
    v11 = OSLogForCategory(@"Default");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      __109__RCSavedRecordingsModel__determineImportabilityOfRecordingWithAudioAsset_preferredFormat_completionHandler___block_invoke_cold_1(a1);
    }

    v12 = a1[6];
    v10 = *(a1[7] + 16);
  }

  v10();
}

+ (void)determineImportabilityOfRecordingWithAudioURL:(id)l completionHandler:(id)handler
{
  lCopy = l;
  handlerCopy = handler;
  v8 = [MEMORY[0x277CE6650] assetWithURL:lCopy];
  v9 = v8;
  if (v8 && [v8 isPlayable] && (objc_msgSend(v9, "rc_audioTracks"), v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v10, "count"), v10, v11))
  {
    mEMORY[0x277CBEBD0] = [MEMORY[0x277CBEBD0] sharedSettingsUserDefaults];
    if ([mEMORY[0x277CBEBD0] rc_audioQuality] == 1)
    {
      v13 = 1634492771;
    }

    else
    {
      v13 = 1633772320;
    }

    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __90__RCSavedRecordingsModel_determineImportabilityOfRecordingWithAudioURL_completionHandler___block_invoke;
    v16[3] = &unk_279E43D28;
    v17 = handlerCopy;
    v14 = MEMORY[0x2743CA3B0](v16);
    [self _determineImportabilityOfRecordingWithAudioAsset:v9 preferredFormat:v13 completionHandler:v14];
  }

  else
  {
    v15 = OSLogForCategory(@"Default");
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      +[RCSavedRecordingsModel determineImportabilityOfRecordingWithAudioURL:completionHandler:];
    }

    (*(handlerCopy + 2))(handlerCopy, -1);
  }
}

- (void)importRecordingWithSourceAudioURL:(id)l name:(id)name date:(id)date xpcConnection:(id)connection userInfo:(id)info completionHandler:(id)handler
{
  v13 = 1634492771;
  lCopy = l;
  nameCopy = name;
  dateCopy = date;
  connectionCopy = connection;
  infoCopy = info;
  handlerCopy = handler;
  v18 = [infoCopy objectForKeyedSubscript:@"uniqueID"];
  v19 = [infoCopy objectForKeyedSubscript:@"RCVoiceMemoMetadataKey"];
  mEMORY[0x277CBEBD0] = [MEMORY[0x277CBEBD0] sharedSettingsUserDefaults];
  if ([mEMORY[0x277CBEBD0] rc_audioQuality] == 1)
  {
    v21 = 1634492771;
  }

  else
  {
    v21 = 1633772320;
  }

  rcs_applicationIdentifier = [connectionCopy rcs_applicationIdentifier];
  v23 = [@"F3LWYJ7GM7.com.apple.musicmemos" isEqualToString:rcs_applicationIdentifier];

  v24 = &unk_272492000;
  if (v23)
  {
    if (v18)
    {
      v25 = v18;
      selfCopy = self;
      v46 = 0;
      v47 = &v46;
      v48 = 0x2020000000;
      v49 = 1;
      v42[0] = MEMORY[0x277D85DD0];
      v42[1] = 3221225472;
      v42[2] = __isUniqueMusicMemo_block_invoke;
      v42[3] = &unk_279E43C88;
      v27 = selfCopy;
      v43 = v27;
      v18 = v25;
      v44 = v18;
      v45 = &v46;
      [(RCSavedRecordingsModel *)v27 performBlockAndWait:v42];
      v28 = *(v47 + 24);

      _Block_object_dispose(&v46, 8);
      if ((v28 & 1) == 0)
      {
        v29 = OSLogForCategory(@"Service");
        if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
        {
          [RCSavedRecordingsModel importRecordingWithSourceAudioURL:name:date:xpcConnection:userInfo:completionHandler:];
        }

        v18 = 0;
      }

      v24 = &unk_272492000;
    }
  }

  else
  {
    v13 = v21;
  }

  v36[0] = MEMORY[0x277D85DD0];
  v36[1] = v24[145];
  v36[2] = __111__RCSavedRecordingsModel_importRecordingWithSourceAudioURL_name_date_xpcConnection_userInfo_completionHandler___block_invoke;
  v36[3] = &unk_279E43D78;
  v36[4] = self;
  v37 = nameCopy;
  v40 = v19 != 0;
  v41 = v23;
  v38 = infoCopy;
  v39 = handlerCopy;
  v30 = handlerCopy;
  v31 = infoCopy;
  v32 = nameCopy;
  [(RCSavedRecordingsModel *)self _importRecordingWithSourceAudioURL:lCopy name:v32 date:dateCopy uniqueID:v18 preferredFormat:v13 completionHandler:v36];
}

void __111__RCSavedRecordingsModel_importRecordingWithSourceAudioURL_name_date_xpcConnection_userInfo_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = *(a1 + 32);
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __111__RCSavedRecordingsModel_importRecordingWithSourceAudioURL_name_date_xpcConnection_userInfo_completionHandler___block_invoke_2;
  v16[3] = &unk_279E43D50;
  v16[4] = v10;
  v17 = v7;
  v18 = *(a1 + 40);
  v11 = *(a1 + 48);
  v23 = *(a1 + 64);
  v19 = v11;
  v20 = v8;
  v12 = *(a1 + 56);
  v21 = v9;
  v22 = v12;
  v13 = v9;
  v14 = v8;
  v15 = v7;
  [v10 performBlockAndWait:v16];
}

void __111__RCSavedRecordingsModel_importRecordingWithSourceAudioURL_name_date_xpcConnection_userInfo_completionHandler___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) _postProcessCloudRecordingForRecordingWithId:*(a1 + 40) named:*(a1 + 48) userInfo:*(a1 + 56) isMigrationImport:*(a1 + 88) isMusicMemoImport:*(a1 + 89) sharingMetadata:*(a1 + 64)];
  v2 = *(a1 + 80);
  v3 = [*(a1 + 40) URIRepresentation];
  (*(v2 + 16))(v2, v3, *(a1 + 72));
}

- (void)_postProcessCloudRecordingForRecordingWithId:(id)id named:(id)named userInfo:(id)info isMigrationImport:(BOOL)import isMusicMemoImport:(BOOL)memoImport sharingMetadata:(id)metadata
{
  memoImportCopy = memoImport;
  importCopy = import;
  v105 = *MEMORY[0x277D85DE8];
  idCopy = id;
  namedCopy = named;
  infoCopy = info;
  metadataCopy = metadata;
  v18 = metadataCopy;
  if (importCopy || memoImportCopy || [metadataCopy count])
  {
    v19 = [(RCSavedRecordingsModel *)self recordingWithID:idCopy];
    v20 = v19;
    if (!v19)
    {
      v49 = OSLogForCategory(@"Default");
      if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
      {
        [RCSavedRecordingsModel _postProcessCloudRecordingForRecordingWithId:named:userInfo:isMigrationImport:isMusicMemoImport:sharingMetadata:];
      }

      goto LABEL_70;
    }

    v97 = v18;
    v98 = v19;
    v96 = infoCopy;
    if (importCopy)
    {
      v21 = [infoCopy objectForKeyedSubscript:@"RCVoiceMemoMetadataKey"];
      if (v21)
      {
        v94 = namedCopy;
        v22 = idCopy;
        v23 = v20;
        v24 = v21;
        selfCopy = self;
        durationMillis = [v24 durationMillis];
        [durationMillis doubleValue];
        v28 = v27 / 1000.0;

        deletionTimeMillis = [v24 deletionTimeMillis];
        if (deletionTimeMillis)
        {
          v30 = deletionTimeMillis;
          deletionTimeMillis2 = [v24 deletionTimeMillis];

          if (deletionTimeMillis2)
          {
            v32 = MEMORY[0x277CBEAA8];
            deletionTimeMillis3 = [v24 deletionTimeMillis];
            [deletionTimeMillis3 doubleValue];
            v35 = [v32 dateWithTimeIntervalSince1970:v34 / 1000.0];

            [v23 setDeletionDate:v35];
          }
        }

        [v23 setLength:v28];
        title = [v24 title];
        [v23 setTitle:title];

        folder = [v24 folder];
        if (folder)
        {
          v38 = folder;
          folder2 = [v24 folder];
          v40 = [folder2 length];

          if (v40)
          {
            folder3 = [v24 folder];
            v42 = [(RCSavedRecordingsModel *)selfCopy folderWithName:folder3];

            [(RCSavedRecordingsModel *)selfCopy addRecording:v23 toFolder:v42];
          }
        }

        favorite = [v24 favorite];

        if (favorite)
        {
          favorite2 = [v24 favorite];
          [v23 setFavorite:{objc_msgSend(favorite2, "BOOLValue")}];
        }

        multiLayerMix = [v24 multiLayerMix];

        if (multiLayerMix)
        {
          multiLayerMix2 = [v24 multiLayerMix];
          [multiLayerMix2 floatValue];
          [v23 setLayerMix:?];
        }

        enhanced = [v24 enhanced];

        infoCopy = v96;
        if (enhanced)
        {
          enhanced2 = [v24 enhanced];
          [v23 setEnhanced:{objc_msgSend(enhanced2, "BOOLValue")}];
        }

        idCopy = v22;
        namedCopy = v94;
        v20 = v98;
      }

      else
      {
        v50 = OSLogForCategory(@"Default");
        if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
        {
          [RCSavedRecordingsModel _postProcessCloudRecordingForRecordingWithId:named:userInfo:isMigrationImport:isMusicMemoImport:sharingMetadata:];
        }
      }

      v18 = v97;
    }

    if (!memoImportCopy)
    {
LABEL_51:
      if ([v18 count])
      {
        v76 = v18;
        v77 = v20;
        v78 = [v76 objectForKeyedSubscript:@"com.apple.iTunes.voice-memo-lrmx"];
        if (v78 && (objc_opt_respondsToSelector() & 1) != 0)
        {
          [MEMORY[0x277CE63D8] rc_unscaleScaledMetadataValue:{objc_msgSend(v78, "intValue")}];
          [v77 setLayerMix:?];
        }

        v79 = [v76 objectForKeyedSubscript:@"com.apple.iTunes.voice-memo-plrt"];
        if (v79 && (objc_opt_respondsToSelector() & 1) != 0)
        {
          [MEMORY[0x277CE63D8] rc_unscaleScaledMetadataValue:{objc_msgSend(v79, "intValue")}];
          [v77 setPlayRate:?];
        }

        v80 = [v76 objectForKeyedSubscript:@"com.apple.iTunes.voice-memo-sivl"];
        if (v80 && (objc_opt_respondsToSelector() & 1) != 0)
        {
          [MEMORY[0x277CE63D8] rc_unscaleScaledMetadataValue:{objc_msgSend(v80, "intValue")}];
          [v77 setSpeechIsolatorValue:?];
          v81 = 1;
        }

        else
        {
          v81 = 0;
        }

        [v77 setIsSpeechIsolatorEnabled:v81];
        v82 = [v76 objectForKeyedSubscript:@"com.apple.iTunes.voice-memo-nhnc"];
        if (v82 && (objc_opt_respondsToSelector() & 1) != 0)
        {
          [v77 setEnhanced:{objc_msgSend(v82, "intValue") != 0}];
        }

        v83 = [v76 objectForKeyedSubscript:@"com.apple.iTunes.voice-memo-skps"];
        if (v83 && (objc_opt_respondsToSelector() & 1) != 0)
        {
          [v77 setIsSkipSilenceEnabled:{objc_msgSend(v83, "intValue") != 0}];
        }

        infoCopy = v96;
        v18 = v97;
        v20 = v98;
      }

      [(RCSavedRecordingsModel *)self saveIfNecessary];
LABEL_70:

      goto LABEL_71;
    }

    v91 = idCopy;
    v51 = v20;
    v95 = namedCopy;
    v52 = namedCopy;
    v53 = infoCopy;
    selfCopy2 = self;
    [v51 setMusicMemo:1];
    [v51 setTitle:v52];
    v55 = RCLocalizedFrameworkString(@"MUSIC_MEMOS_FOLDER_NAME");
    v56 = [(RCSavedRecordingsModel *)selfCopy2 folderWithName:v55];

    v89 = v56;
    [(RCSavedRecordingsModel *)selfCopy2 addRecording:v51 toFolder:v56];
    uuid = [v51 uuid];
    creationDate = [v51 creationDate];
    v92 = uuid;
    v90 = v53;
    v59 = [RCCaptureFormat AVAssetAuthoringMetadataWithCreationDate:creationDate title:v52 uniqueID:uuid musicMemoMetadata:v53];

    v60 = [v51 url];

    v88 = v59;
    if (v60)
    {
      v61 = MEMORY[0x277CE63D8];
      v62 = [v51 url];
      v103 = 0;
      LOBYTE(v61) = [v61 rc_updateMetadataInFile:v62 withMetadata:v59 error:&v103];
      v63 = v103;

      if (v61)
      {
        v87 = v63;
        v64 = v92;
        namedCopy = v95;
LABEL_37:
        objectID = [v51 objectID];
        v67 = [(RCSavedRecordingsModel *)selfCopy2 recordingsWithUniqueID:v64];
        if ([v67 count] >= 2)
        {
          v85 = v67;
          v86 = v52;
          selfCopy3 = self;
          v101 = 0u;
          v102 = 0u;
          v99 = 0u;
          v100 = 0u;
          v68 = v67;
          v69 = [v68 countByEnumeratingWithState:&v99 objects:v104 count:16];
          if (v69)
          {
            v70 = v69;
            v71 = *v100;
            do
            {
              for (i = 0; i != v70; ++i)
              {
                if (*v100 != v71)
                {
                  objc_enumerationMutation(v68);
                }

                v73 = *(*(&v99 + 1) + 8 * i);
                objectID2 = [v73 objectID];
                if ([objectID2 isEqual:objectID])
                {
                }

                else
                {
                  musicMemo = [v73 musicMemo];

                  if (musicMemo)
                  {
                    [(RCSavedRecordingsModel *)selfCopy2 eraseRecording:v73];
                  }
                }
              }

              v70 = [v68 countByEnumeratingWithState:&v99 objects:v104 count:16];
            }

            while (v70);
          }

          namedCopy = v95;
          infoCopy = v96;
          v18 = v97;
          v64 = v92;
          self = selfCopy3;
          v67 = v85;
          v52 = v86;
        }

        idCopy = v91;
        v20 = v98;
        goto LABEL_51;
      }

      v65 = OSLogForCategory(@"Service");
      v64 = v92;
      namedCopy = v95;
      if (os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
      {
        [RCSavedRecordingsModel _postProcessCloudRecordingForRecordingWithId:named:userInfo:isMigrationImport:isMusicMemoImport:sharingMetadata:];
      }
    }

    else
    {
      v65 = OSLogForCategory(@"Service");
      if (os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
      {
        [RCSavedRecordingsModel _postProcessCloudRecordingForRecordingWithId:v65 named:? userInfo:? isMigrationImport:? isMusicMemoImport:? sharingMetadata:?];
      }

      v63 = 0;
      v64 = v92;
      namedCopy = v95;
    }

    v87 = v63;

    goto LABEL_37;
  }

LABEL_71:

  v84 = *MEMORY[0x277D85DE8];
}

+ (void)importRecordingWithSourceAudioURL:(id)l name:(id)name date:(id)date userInfo:(id)info completionHandler:(id)handler
{
  nameCopy = name;
  dateCopy = date;
  infoCopy = info;
  v13 = *MEMORY[0x277D861B8];
  lCopy = l;
  handlerCopy = handler;
  lCopy2 = l;
  [lCopy2 fileSystemRepresentation];
  v17 = *MEMORY[0x277D861E8];
  v18 = sandbox_extension_issue_file();
  if (v18)
  {
    v19 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:v18 length:strlen(v18) + 1 freeWhenDone:1];
    v20 = [objc_alloc(MEMORY[0x277CCAC90]) initWithURL:lCopy2 readonly:1 scope:v19];

    v21 = +[RCSSavedRecordingService sharedService];
    [v21 importRecordingWithSourceAudioURL:v20 name:nameCopy date:dateCopy userInfo:infoCopy importCompletionBlock:handlerCopy];
  }

  else
  {
    v19 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:*__error() userInfo:0];
    v20 = [MEMORY[0x277CBEB38] dictionaryWithObject:v19 forKey:*MEMORY[0x277CCA7E8]];
    [v20 setObject:lCopy2 forKeyedSubscript:*MEMORY[0x277CCA760]];

    v21 = [MEMORY[0x277CCA9B8] errorWithDomain:@"RCSavedRecordingsImportErrorDomain" code:400 userInfo:v20];
    handlerCopy[2](handlerCopy, 0, v21);
  }
}

- (void)_importRecordingWithSourceAudioURL:(id)l name:(id)name date:(id)date uniqueID:(id)d preferredFormat:(unsigned int)format completionHandler:(id)handler
{
  v84[5] = *MEMORY[0x277D85DE8];
  lCopy = l;
  nameCopy = name;
  dateCopy = date;
  dCopy = d;
  handlerCopy = handler;
  v18 = lCopy;
  if (!dCopy)
  {
    uUID = [MEMORY[0x277CCAD78] UUID];
    dCopy = [uUID UUIDString];
  }

  startAccessingSecurityScopedResource = [v18 startAccessingSecurityScopedResource];
  v21 = &unk_272492000;
  v65 = dCopy;
  selfCopy = self;
  if (!startAccessingSecurityScopedResource)
  {
    rc_sharingMetadata = 0;
    v34 = v18;
LABEL_16:
    v45 = dateCopy;
    v73[0] = MEMORY[0x277D85DD0];
    v46 = v21[145];
    v73[1] = v46;
    v73[2] = __114__RCSavedRecordingsModel__importRecordingWithSourceAudioURL_name_date_uniqueID_preferredFormat_completionHandler___block_invoke;
    v73[3] = &unk_279E43DA0;
    v47 = v18;
    v74 = v47;
    v34 = v34;
    v75 = v34;
    v77 = handlerCopy;
    rc_sharingMetadata = rc_sharingMetadata;
    v76 = rc_sharingMetadata;
    v48 = MEMORY[0x2743CA3B0](v73);
    v49 = [MEMORY[0x277CE6650] assetWithURL:v34];
    v50 = v49;
    if (v49 && [v49 isPlayable] && (objc_msgSend(v50, "rc_audioTracks"), v62 = handlerCopy, v51 = objc_claimAutoreleasedReturnValue(), v52 = objc_msgSend(v51, "count"), v51, handlerCopy = v62, v52))
    {
      v53 = objc_opt_class();
      v66[0] = MEMORY[0x277D85DD0];
      v66[1] = v46;
      v66[2] = __114__RCSavedRecordingsModel__importRecordingWithSourceAudioURL_name_date_uniqueID_preferredFormat_completionHandler___block_invoke_103;
      v66[3] = &unk_279E43DC8;
      v67 = v47;
      v72 = v48;
      v68 = selfCopy;
      v69 = nameCopy;
      dateCopy = v45;
      v70 = v45;
      v71 = v65;
      v54 = v53;
      handlerCopy = v62;
      [v54 _determineImportabilityOfRecordingWithAudioAsset:v50 preferredFormat:format completionHandler:v66];

      v55 = v67;
    }

    else
    {
      v55 = [MEMORY[0x277CCA9B8] errorWithDomain:@"RCSavedRecordingsImportErrorDomain" code:200 userInfo:0];
      (v48)[2](v48, 0, v55);
      dateCopy = v45;
    }

    goto LABEL_22;
  }

  v61 = nameCopy;
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v23 = [objc_opt_class() standardNameForRecordingWithCreationDate:dateCopy uniqueID:dCopy];
  pathExtension = [v18 pathExtension];
  v25 = [v23 stringByAppendingPathExtension:pathExtension];

  v26 = MEMORY[0x277CBEBC0];
  v27 = NSTemporaryDirectory();
  v28 = [v26 fileURLWithPath:v27];
  v60 = v25;
  v29 = [v28 URLByAppendingPathComponent:v25];

  v30 = [defaultManager rc_uniqueFileSystemURLWithPreferredURL:v29];

  v79 = 0;
  v31 = [defaultManager copyItemAtURL:v18 toURL:v30 error:&v79];
  v32 = v79;
  [v18 stopAccessingSecurityScopedResource];
  v59 = v32;
  if (v31)
  {
    v57 = v31;
    v33 = handlerCopy;
    v58 = dateCopy;
    v34 = v30;

    v35 = [MEMORY[0x277CE6650] assetWithURL:v34];
    rc_sharingMetadata = [v35 rc_sharingMetadata];
    metadata = [v35 metadata];
    v38 = [metadata mutableCopy];

    v84[0] = @"com.apple.iTunes.voice-memo-lrmx";
    v84[1] = @"com.apple.iTunes.voice-memo-plrt";
    v84[2] = @"com.apple.iTunes.voice-memo-nhnc";
    v84[3] = @"com.apple.iTunes.voice-memo-skps";
    v84[4] = @"com.apple.iTunes.voice-memo-sivl";
    v39 = [MEMORY[0x277CBEA60] arrayWithObjects:v84 count:5];
    v40 = MEMORY[0x277CCAC30];
    v80[0] = MEMORY[0x277D85DD0];
    v80[1] = 3221225472;
    v80[2] = __removeSharingKeysPredicate_block_invoke;
    v80[3] = &unk_279E44150;
    v81 = v39;
    v41 = v39;
    v42 = [v40 predicateWithBlock:v80];

    [v38 filterUsingPredicate:v42];
    v78 = 0;
    LOBYTE(v42) = [MEMORY[0x277CE63D8] rc_updateMetadataInFile:v34 withMetadata:v38 error:&v78];
    v43 = v78;
    if ((v42 & 1) == 0)
    {
      v44 = OSLogForCategory(@"Default");
      if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
      {
        [RCSavedRecordingsModel _importRecordingWithSourceAudioURL:name:date:uniqueID:preferredFormat:completionHandler:];
      }
    }

    dateCopy = v58;
    v31 = v57;
  }

  else
  {
    v33 = handlerCopy;
    if (v32)
    {
      v82 = *MEMORY[0x277CCA7E8];
      v83 = v32;
      v35 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v83 forKeys:&v82 count:1];
    }

    else
    {
      v35 = 0;
    }

    v38 = [MEMORY[0x277CCA9B8] errorWithDomain:@"RCSavedRecordingsImportErrorDomain" code:200 userInfo:v35];
    (*(v33 + 2))(v33, 0, 0, v38);
    rc_sharingMetadata = 0;
    v34 = v18;
  }

  nameCopy = v61;
  handlerCopy = v33;
  v21 = &unk_272492000;
  if (v31)
  {
    goto LABEL_16;
  }

LABEL_22:

  v56 = *MEMORY[0x277D85DE8];
}

void __114__RCSavedRecordingsModel__importRecordingWithSourceAudioURL_name_date_uniqueID_preferredFormat_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (([*(a1 + 32) isEqual:*(a1 + 40)] & 1) == 0)
  {
    v7 = [MEMORY[0x277CCAA00] defaultManager];
    v8 = *(a1 + 40);
    v13 = 0;
    v9 = [v7 removeItemAtURL:v8 error:&v13];
    v10 = v13;

    if ((v9 & 1) == 0)
    {
      v11 = OSLogForCategory(@"Default");
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        __114__RCSavedRecordingsModel__importRecordingWithSourceAudioURL_name_date_uniqueID_preferredFormat_completionHandler___block_invoke_cold_1();
      }
    }
  }

  v12 = *(a1 + 48);
  (*(*(a1 + 56) + 16))();
}

void __114__RCSavedRecordingsModel__importRecordingWithSourceAudioURL_name_date_uniqueID_preferredFormat_completionHandler___block_invoke_103(uint64_t a1, unint64_t a2, void *a3, void *a4, void *a5)
{
  v19[1] = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (a2 != 0 && a2 < 0xFFFFFFFFFFFFFFFELL)
  {
    [*(a1 + 40) _importImportableRecordingWithAudioAsset:v9 name:*(a1 + 48) date:*(a1 + 56) uniqueID:*(a1 + 64) presetName:v10 outputFileType:v11 completionHandler:*(a1 + 72)];
  }

  else
  {
    v12 = qword_2724924E8[a2 + 2];
    v13 = MEMORY[0x277CCA9B8];
    v14 = *(a1 + 32);
    v18 = *MEMORY[0x277CCA760];
    v19[0] = v14;
    v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:&v18 count:1];
    v16 = [v13 errorWithDomain:@"RCSavedRecordingsImportErrorDomain" code:v12 userInfo:v15];

    (*(*(a1 + 72) + 16))();
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)_importImportableRecordingWithAudioAsset:(id)asset name:(id)name date:(id)date uniqueID:(id)d presetName:(id)presetName outputFileType:(id)type completionHandler:(id)handler
{
  v53[1] = *MEMORY[0x277D85DE8];
  assetCopy = asset;
  nameCopy = name;
  dateCopy = date;
  dCopy = d;
  presetNameCopy = presetName;
  typeCopy = type;
  handlerCopy = handler;
  v16 = [assetCopy URL];
  pathExtension = [v16 pathExtension];
  if (pathExtension && ([v16 pathExtension], v18 = objc_claimAutoreleasedReturnValue(), v19 = +[RCCaptureFormat supportsFileExtension:](RCCaptureFormat, "supportsFileExtension:", v18), v18, v19))
  {
    [(RCSavedRecordingsModel *)self _insertRecordingWithImportableAudioURL:v16 name:nameCopy date:dateCopy uniqueID:dCopy completionHandler:handlerCopy];
  }

  else
  {
    v20 = RCRecordingsDirectoryURL();
    lastPathComponent = [v16 lastPathComponent];
    stringByDeletingPathExtension = [lastPathComponent stringByDeletingPathExtension];
    v23 = [v20 URLByAppendingPathComponent:stringByDeletingPathExtension];
    v24 = [v23 URLByAppendingPathExtension:@"m4a"];

    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    v26 = [defaultManager rc_uniqueFileSystemURLWithPreferredURL:v24];

    v27 = [objc_alloc(MEMORY[0x277CE6400]) initWithAsset:assetCopy presetName:presetNameCopy];
    v28 = v27;
    if (v27)
    {
      [v27 setOutputFileType:typeCopy];
      [v28 setOutputURL:v26];
      v29 = [RCCaptureFormat AVAssetAuthoringMetadataWithCreationDate:dateCopy title:nameCopy uniqueID:dCopy];
      [v28 setMetadata:v29];

      v30 = OSLogForCategory(@"Default");
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
      {
        path = [v16 path];
        [RCSavedRecordingsModel _importImportableRecordingWithAudioAsset:path name:v26 date:buf uniqueID:v30 presetName:? outputFileType:? completionHandler:?];
      }

      v42[0] = MEMORY[0x277D85DD0];
      v42[1] = 3221225472;
      v42[2] = __130__RCSavedRecordingsModel__importImportableRecordingWithAudioAsset_name_date_uniqueID_presetName_outputFileType_completionHandler___block_invoke;
      v42[3] = &unk_279E43DF0;
      v43 = v16;
      v44 = v26;
      v45 = v28;
      selfCopy = self;
      v47 = nameCopy;
      v48 = dateCopy;
      v49 = dCopy;
      v50 = handlerCopy;
      [v45 exportAsynchronouslyWithCompletionHandler:v42];
    }

    else
    {
      v32 = MEMORY[0x277CCA9B8];
      v52 = *MEMORY[0x277CCA470];
      v53[0] = @"unsupported format";
      v33 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v53 forKeys:&v52 count:1];
      v34 = [v32 errorWithDomain:@"RCSavedRecordingsImportErrorDomain" code:300 userInfo:v33];
      (*(handlerCopy + 2))(handlerCopy, 0, v34);
    }
  }

  v35 = *MEMORY[0x277D85DE8];
}

void __130__RCSavedRecordingsModel__importImportableRecordingWithAudioAsset_name_date_uniqueID_presetName_outputFileType_completionHandler___block_invoke(uint64_t a1)
{
  v12[1] = *MEMORY[0x277D85DE8];
  v2 = OSLogForCategory(@"Default");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __130__RCSavedRecordingsModel__importImportableRecordingWithAudioAsset_name_date_uniqueID_presetName_outputFileType_completionHandler___block_invoke_cold_1();
  }

  v3 = (a1 + 48);
  if ([*(a1 + 48) status] == 3)
  {
    [*(a1 + 56) _insertRecordingWithImportableAudioURL:*(a1 + 40) name:*(a1 + 64) date:*(a1 + 72) uniqueID:*(a1 + 80) completionHandler:*(a1 + 88)];
  }

  else
  {
    v4 = [*v3 error];
    if (v4)
    {
      v11 = *MEMORY[0x277CCA7E8];
      v5 = [*v3 error];
      v12[0] = v5;
      v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:&v11 count:1];
    }

    else
    {
      v6 = 0;
    }

    v7 = OSLogForCategory(@"Default");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __130__RCSavedRecordingsModel__importImportableRecordingWithAudioAsset_name_date_uniqueID_presetName_outputFileType_completionHandler___block_invoke_cold_2((a1 + 48));
    }

    v8 = *(a1 + 88);
    v9 = [MEMORY[0x277CCA9B8] errorWithDomain:@"RCSavedRecordingsImportErrorDomain" code:300 userInfo:v6];
    (*(v8 + 16))(v8, 0, v9);
  }

  v10 = *MEMORY[0x277D85DE8];
}

void __130__RCSavedRecordingsModel__importImportableRecordingWithAudioAsset_name_date_uniqueID_presetName_outputFileType_completionHandler___block_invoke_108(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x277CCA9B8] errorWithDomain:@"RCSavedRecordingsImportErrorDomain" code:300 userInfo:0];
  (*(v1 + 16))(v1, 0, v2);
}

- (void)_insertRecordingWithImportableAudioURL:(id)l name:(id)name date:(id)date uniqueID:(id)d completionHandler:(id)handler
{
  nameCopy = name;
  dateCopy = date;
  dCopy = d;
  handlerCopy = handler;
  lCopy = l;
  savedRecordingsDirectory = [objc_opt_class() savedRecordingsDirectory];
  path = [lCopy path];

  stringByStandardizingPath = [path stringByStandardizingPath];
  if (stringByStandardizingPath)
  {
    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    v21 = [defaultManager rc_path:stringByStandardizingPath isChildOf:savedRecordingsDirectory];

    if ((v21 & 1) == 0)
    {
      v35 = 0;
      v22 = [objc_opt_class() _copyFileIntoRecordingsDirectory:path error:&v35];
      v23 = v35;

      if (!v22)
      {
        handlerCopy[2](handlerCopy, 0, v23);
      }

      stringByStandardizingPath = v22;
    }
  }

  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __102__RCSavedRecordingsModel__insertRecordingWithImportableAudioURL_name_date_uniqueID_completionHandler___block_invoke;
  v29[3] = &unk_279E43E40;
  v29[4] = self;
  v30 = stringByStandardizingPath;
  v31 = dateCopy;
  v32 = nameCopy;
  v33 = dCopy;
  v34 = handlerCopy;
  v24 = handlerCopy;
  v25 = dCopy;
  v26 = nameCopy;
  v27 = dateCopy;
  v28 = stringByStandardizingPath;
  [(RCSavedRecordingsModel *)self performBlockAndWait:v29];
}

void __102__RCSavedRecordingsModel__insertRecordingWithImportableAudioURL_name_date_uniqueID_completionHandler___block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v4 = a1[6];
  v5 = a1[7];
  v6 = a1[8];
  v11 = 0;
  v7 = [v2 insertRecordingWithAudioFile:v3 duration:v4 date:v5 customTitleBase:v6 uniqueID:&v11 error:-1.0];
  v8 = v11;
  v9 = a1[9];
  if (v7)
  {
    v10 = [v7 objectID];
    (*(v9 + 16))(v9, v10, v8);
  }

  else
  {
    (*(v9 + 16))(v9, 0, v8);
  }
}

- (void)setTitle:(id)title ofRecording:(id)recording
{
  titleCopy = title;
  recordingCopy = recording;
  context = self->_context;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __47__RCSavedRecordingsModel_setTitle_ofRecording___block_invoke;
  v11[3] = &unk_279E43E68;
  v12 = recordingCopy;
  v13 = titleCopy;
  selfCopy = self;
  v9 = titleCopy;
  v10 = recordingCopy;
  [(NSManagedObjectContext *)context performBlockAndWait:v11];
}

uint64_t __47__RCSavedRecordingsModel_setTitle_ofRecording___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setTitle:*(a1 + 40)];
  [*(a1 + 32) setManuallyRenamed:1];
  v2 = *(a1 + 48);

  return [v2 saveIfNecessary];
}

- (void)setFavorite:(BOOL)favorite ofRecording:(id)recording
{
  recordingCopy = recording;
  context = self->_context;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __50__RCSavedRecordingsModel_setFavorite_ofRecording___block_invoke;
  v9[3] = &unk_279E43E90;
  favoriteCopy = favorite;
  v10 = recordingCopy;
  selfCopy = self;
  v8 = recordingCopy;
  [(NSManagedObjectContext *)context performBlockAndWait:v9];
}

uint64_t __50__RCSavedRecordingsModel_setFavorite_ofRecording___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setFavorite:*(a1 + 48)];
  v2 = *(a1 + 40);

  return [v2 saveIfNecessary];
}

- (void)setEnhanced:(BOOL)enhanced ofRecording:(id)recording
{
  recordingCopy = recording;
  context = self->_context;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __50__RCSavedRecordingsModel_setEnhanced_ofRecording___block_invoke;
  v9[3] = &unk_279E43E90;
  enhancedCopy = enhanced;
  v10 = recordingCopy;
  selfCopy = self;
  v8 = recordingCopy;
  [(NSManagedObjectContext *)context performBlockAndWait:v9];
}

uint64_t __50__RCSavedRecordingsModel_setEnhanced_ofRecording___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setEnhanced:*(a1 + 48)];
  v2 = *(a1 + 40);

  return [v2 saveIfNecessary];
}

- (id)_foldersWithUUID:(id)d
{
  v3 = MEMORY[0x277CBEBF8];
  if (d)
  {
    v5 = [RCQueryManager foldersWithUUIDFetchRequest:?];
    v6 = [(NSManagedObjectContext *)self->_context executeFetchRequest:v5 error:0];
    v7 = v6;
    if (v6)
    {
      v8 = v6;
    }

    else
    {
      v8 = v3;
    }

    v3 = v8;
  }

  return v3;
}

- (id)folderWithName:(id)name
{
  nameCopy = name;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__1;
  v16 = __Block_byref_object_dispose__1;
  v17 = 0;
  context = self->_context;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __41__RCSavedRecordingsModel_folderWithName___block_invoke;
  v9[3] = &unk_279E43C88;
  v9[4] = self;
  v6 = nameCopy;
  v10 = v6;
  v11 = &v12;
  [(NSManagedObjectContext *)context performBlockAndWait:v9];
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

void __41__RCSavedRecordingsModel_folderWithName___block_invoke(uint64_t a1)
{
  v16[1] = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) _userDefinedFolders:*(a1 + 40) searchOption:0];
  v3 = [v2 firstObject];
  v4 = *(*(a1 + 48) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  if (!*(*(*(a1 + 48) + 8) + 40))
  {
    v6 = -[RCRecordingsFolder initWithContext:name:rank:uuid:]([RCRecordingsFolder alloc], "initWithContext:name:rank:uuid:", *(*(a1 + 32) + 8), *(a1 + 40), [*(a1 + 32) _rankForFolderInsert], 0);
    v7 = *(*(a1 + 48) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;

    v9 = *(*(a1 + 32) + 8);
    v16[0] = *(*(*(a1 + 48) + 8) + 40);
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:1];
    v15 = 0;
    v11 = [v9 obtainPermanentIDsForObjects:v10 error:&v15];
    v12 = v15;

    if ((v11 & 1) == 0)
    {
      v13 = OSLogForCategory(@"Default");
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        __41__RCSavedRecordingsModel_folderWithName___block_invoke_cold_1();
      }
    }

    [*(a1 + 32) saveIfNecessary];
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (id)_recordingsFetchRequestForFolder:(id)folder
{
  folderCopy = folder;
  folderType = [folderCopy folderType];
  v5 = 0;
  if (folderType <= 1)
  {
    if (!folderType)
    {
      v9 = [RCQueryManager playableRecordingsFetchRequestWithSubPredicate:0];
      goto LABEL_14;
    }

    if (folderType != 1)
    {
      goto LABEL_15;
    }

    v8 = +[RCQueryManager favoritePredicate];
LABEL_10:
    uuid = v8;
    v5 = [RCQueryManager playableRecordingsFetchRequestWithSubPredicate:v8];
LABEL_11:

    goto LABEL_15;
  }

  if (folderType == 2)
  {
    v8 = +[RCQueryManager watchOSPredicate];
    goto LABEL_10;
  }

  if (folderType != 3)
  {
    if (folderType != 4)
    {
      goto LABEL_15;
    }

    uuid = [folderCopy uuid];
    v7 = [RCQueryManager recordingsInFolderPredicate:uuid];
    v5 = [RCQueryManager playableRecordingsFetchRequestWithSubPredicate:v7];

    goto LABEL_11;
  }

  v9 = +[RCQueryManager deletedRecordingsFetchRequest];
LABEL_14:
  v5 = v9;
LABEL_15:

  return v5;
}

- (unint64_t)userFolderCount
{
  _userFolderFetchRequest = [(RCSavedRecordingsModel *)self _userFolderFetchRequest];
  v4 = [(RCSavedRecordingsModel *)self _countForFetchRequest:_userFolderFetchRequest];

  return v4;
}

- (unint64_t)_countForFetchRequest:(id)request
{
  requestCopy = request;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  context = self->_context;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __48__RCSavedRecordingsModel__countForFetchRequest___block_invoke;
  v9[3] = &unk_279E43B48;
  v11 = &v12;
  v9[4] = self;
  v6 = requestCopy;
  v10 = v6;
  [(NSManagedObjectContext *)context performBlockAndWait:v9];
  v7 = v13[3];

  _Block_object_dispose(&v12, 8);
  return v7;
}

void __48__RCSavedRecordingsModel__countForFetchRequest___block_invoke(void *a1)
{
  v3 = a1 + 5;
  v2 = a1[5];
  v4 = *(a1[4] + 8);
  v8 = 0;
  v5 = [v4 countForFetchRequest:v2 error:&v8];
  v6 = v8;
  *(*(v3[1] + 8) + 24) = v5;
  if (*(*(v3[1] + 8) + 24) == 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = OSLogForCategory(@"Default");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __48__RCSavedRecordingsModel__countForFetchRequest___block_invoke_cold_1(v6, v3);
    }

    *(*(a1[6] + 8) + 24) = 0;
  }
}

- (id)userFolders
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__1;
  v10 = __Block_byref_object_dispose__1;
  v11 = 0;
  context = self->_context;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __37__RCSavedRecordingsModel_userFolders__block_invoke;
  v5[3] = &unk_279E43AF8;
  v5[4] = self;
  v5[5] = &v6;
  [(NSManagedObjectContext *)context performBlockAndWait:v5];
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __37__RCSavedRecordingsModel_userFolders__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v2[1];
  v4 = [v2 _userFolderFetchRequest];
  v10 = 0;
  v5 = [v3 executeFetchRequest:v4 error:&v10];
  v6 = v10;

  if (!v5)
  {
    v7 = OSLogForCategory(@"Default");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __37__RCSavedRecordingsModel_userFolders__block_invoke_cold_1();
    }

    v8 = *(*(a1 + 40) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = MEMORY[0x277CBEBF8];
  }
}

- (unint64_t)playableCountForFolder:(id)folder
{
  v4 = [(RCSavedRecordingsModel *)self _recordingsFetchRequestForFolder:folder];
  v5 = [(RCSavedRecordingsModel *)self _countForFetchRequest:v4];

  return v5;
}

- (id)playableRecordingsForFolder:(id)folder
{
  v4 = [(RCSavedRecordingsModel *)self _recordingsFetchRequestForFolder:folder];
  v5 = [(RCSavedRecordingsModel *)self _recordingsWithFetchRequest:v4];

  return v5;
}

- (id)existingFolderWithName:(id)name
{
  v3 = [(RCSavedRecordingsModel *)self existingFoldersWithName:name searchOption:0];
  firstObject = [v3 firstObject];

  return firstObject;
}

- (id)existingFoldersWithName:(id)name searchOption:(int)option
{
  nameCopy = name;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__1;
  v19 = __Block_byref_object_dispose__1;
  v20 = 0;
  context = self->_context;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __63__RCSavedRecordingsModel_existingFoldersWithName_searchOption___block_invoke;
  v11[3] = &unk_279E43EB8;
  v13 = &v15;
  v11[4] = self;
  v8 = nameCopy;
  v12 = v8;
  optionCopy = option;
  [(NSManagedObjectContext *)context performBlockAndWait:v11];
  v9 = v16[5];

  _Block_object_dispose(&v15, 8);

  return v9;
}

uint64_t __63__RCSavedRecordingsModel_existingFoldersWithName_searchOption___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _userDefinedFolders:*(a1 + 40) searchOption:*(a1 + 56)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

- (id)existingFolderWithUUID:(id)d
{
  dCopy = d;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__1;
  v17 = __Block_byref_object_dispose__1;
  v18 = 0;
  context = self->_context;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __49__RCSavedRecordingsModel_existingFolderWithUUID___block_invoke;
  v9[3] = &unk_279E43C88;
  v6 = dCopy;
  v10 = v6;
  selfCopy = self;
  v12 = &v13;
  [(NSManagedObjectContext *)context performBlockAndWait:v9];
  v7 = v14[5];

  _Block_object_dispose(&v13, 8);

  return v7;
}

void __49__RCSavedRecordingsModel_existingFolderWithUUID___block_invoke(void *a1)
{
  v2 = [RCQueryManager foldersWithUUIDFetchRequest:a1[4]];
  v3 = [*(a1[5] + 8) executeFetchRequest:v2 error:0];
  if (!v3)
  {
    v4 = OSLogForCategory(@"Default");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __49__RCSavedRecordingsModel_existingFolderWithUUID___block_invoke_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  v12 = [v3 firstObject];
  v13 = *(a1[6] + 8);
  v14 = *(v13 + 40);
  *(v13 + 40) = v12;
}

- (void)deleteFolder:(id)folder
{
  folderCopy = folder;
  if (!folderCopy)
  {
    [RCSavedRecordingsModel deleteFolder:];
  }

  if ([folderCopy folderType] != 4)
  {
    [RCSavedRecordingsModel deleteFolder:];
  }

  context = self->_context;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __39__RCSavedRecordingsModel_deleteFolder___block_invoke;
  v7[3] = &unk_279E43AD0;
  v8 = folderCopy;
  selfCopy = self;
  v6 = folderCopy;
  [(NSManagedObjectContext *)context performBlockAndWait:v7];
}

void __39__RCSavedRecordingsModel_deleteFolder___block_invoke(uint64_t a1)
{
  v2 = OSLogForCategory(@"Default");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __39__RCSavedRecordingsModel_deleteFolder___block_invoke_cold_1(a1);
  }

  v3 = [*(a1 + 40) userFolders];
  v4 = [*(a1 + 32) rank];
  v5 = [v3 count];
  v6 = v4 + 1;
  if (v6 < v5)
  {
    v7 = v5;
    do
    {
      v8 = [v3 objectAtIndexedSubscript:v6];
      [v8 setRank:{objc_msgSend(v8, "rank") - 1}];

      ++v6;
    }

    while (v7 != v6);
  }

  [*(*(a1 + 40) + 8) deleteObject:*(a1 + 32)];
  v9 = *(a1 + 40);
  v13 = 0;
  v10 = [v9 saveIfNecessary:&v13];
  v11 = v13;
  if ((v10 & 1) == 0)
  {
    v12 = OSLogForCategory(@"Default");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      __39__RCSavedRecordingsModel_deleteFolder___block_invoke_cold_2();
    }
  }
}

- (void)renameFolder:(id)folder toName:(id)name
{
  folderCopy = folder;
  nameCopy = name;
  context = self->_context;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __46__RCSavedRecordingsModel_renameFolder_toName___block_invoke;
  v11[3] = &unk_279E43E68;
  v12 = folderCopy;
  v13 = nameCopy;
  selfCopy = self;
  v9 = nameCopy;
  v10 = folderCopy;
  [(NSManagedObjectContext *)context performBlockAndWait:v11];
}

void __46__RCSavedRecordingsModel_renameFolder_toName___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(a1 + 32);
  [v3 setName:v2];
  [*(a1 + 48) saveIfNecessary];
}

- (void)addRecordings:(id)recordings toFolder:(id)folder
{
  recordingsCopy = recordings;
  folderCopy = folder;
  context = self->_context;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __49__RCSavedRecordingsModel_addRecordings_toFolder___block_invoke;
  v11[3] = &unk_279E43E68;
  v12 = folderCopy;
  v13 = recordingsCopy;
  selfCopy = self;
  v9 = recordingsCopy;
  v10 = folderCopy;
  [(NSManagedObjectContext *)context performBlockAndWait:v11];
}

void __49__RCSavedRecordingsModel_addRecordings_toFolder___block_invoke(id *a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = a1[4];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = a1[5];
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v10 + 1) + 8 * i);
        if (([v2 containsRecording:{v8, v10}] & 1) == 0)
        {
          [v2 addRecording:v8];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  [a1[6] saveIfNecessary];
  v9 = *MEMORY[0x277D85DE8];
}

- (void)addRecording:(id)recording toFolder:(id)folder
{
  v12 = *MEMORY[0x277D85DE8];
  recordingCopy = recording;
  v6 = MEMORY[0x277CBEA60];
  folderCopy = folder;
  recordingCopy2 = recording;
  v9 = [v6 arrayWithObjects:&recordingCopy count:1];

  [(RCSavedRecordingsModel *)self addRecordings:v9 toFolder:folderCopy, recordingCopy, v12];
  v10 = *MEMORY[0x277D85DE8];
}

- (void)removeRecording:(id)recording fromFolder:(id)folder
{
  recordingCopy = recording;
  folderCopy = folder;
  context = self->_context;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __53__RCSavedRecordingsModel_removeRecording_fromFolder___block_invoke;
  v11[3] = &unk_279E43E68;
  v12 = folderCopy;
  v13 = recordingCopy;
  selfCopy = self;
  v9 = recordingCopy;
  v10 = folderCopy;
  [(NSManagedObjectContext *)context performBlockAndWait:v11];
}

void __53__RCSavedRecordingsModel_removeRecording_fromFolder___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(a1 + 32);
  [v3 removeRecording:v2];
  [*(a1 + 48) saveIfNecessary];
}

- (void)eraseRecording:(id)recording
{
  v7[1] = *MEMORY[0x277D85DE8];
  recordingCopy = recording;
  if (!recordingCopy)
  {
    [RCSavedRecordingsModel eraseRecording:];
  }

  v7[0] = recordingCopy;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:1];
  [(RCSavedRecordingsModel *)self eraseRecordings:v5];

  v6 = *MEMORY[0x277D85DE8];
}

- (void)eraseRecordings:(id)recordings
{
  recordingsCopy = recordings;
  context = self->_context;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __42__RCSavedRecordingsModel_eraseRecordings___block_invoke;
  v7[3] = &unk_279E43AD0;
  v8 = recordingsCopy;
  selfCopy = self;
  v6 = recordingsCopy;
  [(NSManagedObjectContext *)context performBlockAndWait:v7];
}

void __42__RCSavedRecordingsModel_eraseRecordings___block_invoke(uint64_t a1)
{
  v25 = *MEMORY[0x277D85DE8];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v16 objects:v24 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v17;
    do
    {
      v6 = 0;
      do
      {
        if (*v17 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v16 + 1) + 8 * v6);
        v8 = OSLogForCategory(@"Default");
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315394;
          v21 = "[RCSavedRecordingsModel eraseRecordings:]_block_invoke";
          v22 = 2112;
          v23 = v7;
          _os_log_debug_impl(&dword_272442000, v8, OS_LOG_TYPE_DEBUG, "%s -- erasing recording: %@", buf, 0x16u);
        }

        v9 = [v7 url];
        [RCComposition deleteFromFilesystem:v9];

        [*(*(a1 + 40) + 8) deleteObject:v7];
        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v16 objects:v24 count:16];
    }

    while (v4);
  }

  v10 = *(a1 + 40);
  v15 = 0;
  v11 = [v10 saveIfNecessary:&v15];
  v12 = v15;
  if ((v11 & 1) == 0)
  {
    v13 = OSLogForCategory(@"Default");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      __42__RCSavedRecordingsModel_eraseRecordings___block_invoke_cold_1();
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)deleteRecording:(id)recording
{
  v7[1] = *MEMORY[0x277D85DE8];
  recordingCopy = recording;
  if (!recordingCopy)
  {
    [RCSavedRecordingsModel deleteRecording:];
  }

  v7[0] = recordingCopy;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:1];
  [(RCSavedRecordingsModel *)self deleteRecordings:v5];

  v6 = *MEMORY[0x277D85DE8];
}

- (void)deleteRecordings:(id)recordings
{
  recordingsCopy = recordings;
  context = self->_context;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __43__RCSavedRecordingsModel_deleteRecordings___block_invoke;
  v7[3] = &unk_279E43AD0;
  v8 = recordingsCopy;
  selfCopy = self;
  v6 = recordingsCopy;
  [(NSManagedObjectContext *)context performBlockAndWait:v7];
}

void __43__RCSavedRecordingsModel_deleteRecordings___block_invoke(uint64_t a1)
{
  v26 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CBEAA8] date];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v15 = a1;
  v3 = *(a1 + 32);
  v4 = [v3 countByEnumeratingWithState:&v17 objects:v25 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v18;
    do
    {
      v7 = 0;
      do
      {
        if (*v18 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v17 + 1) + 8 * v7);
        v9 = OSLogForCategory(@"Default");
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315394;
          v22 = "[RCSavedRecordingsModel deleteRecordings:]_block_invoke";
          v23 = 2112;
          v24 = v8;
          _os_log_debug_impl(&dword_272442000, v9, OS_LOG_TYPE_DEBUG, "%s -- deleting recording: %@", buf, 0x16u);
        }

        [v8 setDeletionDate:v2];
        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v17 objects:v25 count:16];
    }

    while (v5);
  }

  v10 = *(v15 + 40);
  v16 = 0;
  v11 = [v10 saveIfNecessary:&v16];
  v12 = v16;
  if ((v11 & 1) == 0)
  {
    v13 = OSLogForCategory(@"Default");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      __43__RCSavedRecordingsModel_deleteRecordings___block_invoke_cold_1();
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)restoreDeletedRecording:(id)recording
{
  v7[1] = *MEMORY[0x277D85DE8];
  recordingCopy = recording;
  if (!recordingCopy)
  {
    [RCSavedRecordingsModel restoreDeletedRecording:];
  }

  v7[0] = recordingCopy;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:1];
  [(RCSavedRecordingsModel *)self restoreDeletedRecordings:v5];

  v6 = *MEMORY[0x277D85DE8];
}

- (void)restoreDeletedRecordings:(id)recordings
{
  recordingsCopy = recordings;
  context = self->_context;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __51__RCSavedRecordingsModel_restoreDeletedRecordings___block_invoke;
  v7[3] = &unk_279E43AD0;
  v8 = recordingsCopy;
  selfCopy = self;
  v6 = recordingsCopy;
  [(NSManagedObjectContext *)context performBlockAndWait:v7];
}

void __51__RCSavedRecordingsModel_restoreDeletedRecordings___block_invoke(uint64_t a1)
{
  v25 = *MEMORY[0x277D85DE8];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v1 = *(a1 + 32);
  v2 = [v1 countByEnumeratingWithState:&v16 objects:v24 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v17;
    do
    {
      v5 = 0;
      do
      {
        if (*v17 != v4)
        {
          objc_enumerationMutation(v1);
        }

        v6 = *(*(&v16 + 1) + 8 * v5);
        v7 = OSLogForCategory(@"Default");
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315394;
          v21 = "[RCSavedRecordingsModel restoreDeletedRecordings:]_block_invoke";
          v22 = 2112;
          v23 = v6;
          _os_log_debug_impl(&dword_272442000, v7, OS_LOG_TYPE_DEBUG, "%s -- restoring recording: %@", buf, 0x16u);
        }

        [v6 setDeletionDate:0];
        ++v5;
      }

      while (v3 != v5);
      v3 = [v1 countByEnumeratingWithState:&v16 objects:v24 count:16];
    }

    while (v3);
  }

  v8 = *(a1 + 40);
  v15 = 0;
  v9 = [v8 saveIfNecessary:&v15];
  v10 = v15;
  v11 = v10;
  if ((v9 & 1) == 0 && v10)
  {
    v12 = OSLogForCategory(@"Default");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      __51__RCSavedRecordingsModel_restoreDeletedRecordings___block_invoke_cold_1();
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)eraseRecordingsDeletedBeforeDate:(id)date
{
  dateCopy = date;
  context = self->_context;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __59__RCSavedRecordingsModel_eraseRecordingsDeletedBeforeDate___block_invoke;
  v7[3] = &unk_279E43AD0;
  v8 = dateCopy;
  selfCopy = self;
  v6 = dateCopy;
  [(NSManagedObjectContext *)context performBlockAndWait:v7];
}

void __59__RCSavedRecordingsModel_eraseRecordingsDeletedBeforeDate___block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  v2 = [RCQueryManager evictionDateBeforeFetchRequest:*(a1 + 32)];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v3 = [*(*(a1 + 40) + 8) executeFetchRequest:v2 error:0];
  v4 = [v3 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v17;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v17 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v16 + 1) + 8 * i);
        v9 = [v8 url];
        [RCComposition deleteFromFilesystem:v9];

        [*(*(a1 + 40) + 8) deleteObject:v8];
      }

      v5 = [v3 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v5);
  }

  v10 = *(a1 + 40);
  v15 = 0;
  v11 = [v10 saveIfNecessary:&v15];
  v12 = v15;
  if ((v11 & 1) == 0)
  {
    v13 = OSLogForCategory(@"Default");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      __59__RCSavedRecordingsModel_eraseRecordingsDeletedBeforeDate___block_invoke_cold_1();
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)eraseAllDeleted
{
  context = self->_context;
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __41__RCSavedRecordingsModel_eraseAllDeleted__block_invoke;
  v3[3] = &unk_279E43B20;
  v3[4] = self;
  [(NSManagedObjectContext *)context performBlockAndWait:v3];
}

void __41__RCSavedRecordingsModel_eraseAllDeleted__block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  v2 = +[RCQueryManager allDeletedRecordingsFetchRequest];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v3 = [*(*(a1 + 32) + 8) executeFetchRequest:v2 error:0];
  v4 = [v3 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v17;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v17 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v16 + 1) + 8 * i);
        v9 = [v8 url];
        [RCComposition deleteFromFilesystem:v9];

        [*(*(a1 + 32) + 8) deleteObject:v8];
      }

      v5 = [v3 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v5);
  }

  v10 = *(a1 + 32);
  v15 = 0;
  v11 = [v10 saveIfNecessary:&v15];
  v12 = v15;
  if ((v11 & 1) == 0)
  {
    v13 = OSLogForCategory(@"Default");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      __41__RCSavedRecordingsModel_eraseAllDeleted__block_invoke_cold_1();
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)_copyPropertiesFromOriginalRecording:(id)recording newRecording:(id)newRecording
{
  newRecordingCopy = newRecording;
  recordingCopy = recording;
  userFolderUUID = [recordingCopy userFolderUUID];
  if (userFolderUUID)
  {
    v8 = [(RCSavedRecordingsModel *)self existingFolderWithUUID:userFolderUUID];
    if (v8)
    {
      v9 = v8;
      [(RCSavedRecordingsModel *)self addRecording:newRecordingCopy toFolder:v8];
    }
  }

  [newRecordingCopy copySharedFlagsFromOriginalRecording:recordingCopy];
  [recordingCopy layerMix];
  v11 = v10;

  LODWORD(v12) = v11;
  [newRecordingCopy setLayerMix:v12];
}

- (id)duplicateRecording:(id)recording error:(id *)error
{
  recordingCopy = recording;
  creationDate = [recordingCopy creationDate];
  v8 = [(RCSavedRecordingsModel *)self duplicateRecording:recordingCopy copyingResources:1 creationDate:creationDate error:error];

  return v8;
}

- (id)duplicateRecording:(id)recording copyingResources:(BOOL)resources creationDate:(id)date error:(id *)error
{
  recordingCopy = recording;
  dateCopy = date;
  if (!recordingCopy)
  {
    [RCSavedRecordingsModel duplicateRecording:copyingResources:creationDate:error:];
  }

  v30 = 0;
  v31 = &v30;
  v32 = 0x3032000000;
  v33 = __Block_byref_object_copy__1;
  v34 = __Block_byref_object_dispose__1;
  v35 = 0;
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy__1;
  v28 = __Block_byref_object_dispose__1;
  v29 = 0;
  context = self->_context;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __81__RCSavedRecordingsModel_duplicateRecording_copyingResources_creationDate_error___block_invoke;
  v17[3] = &unk_279E43F08;
  v13 = recordingCopy;
  resourcesCopy = resources;
  v18 = v13;
  selfCopy = self;
  v21 = &v30;
  v22 = &v24;
  v14 = dateCopy;
  v20 = v14;
  [(NSManagedObjectContext *)context performBlockAndWait:v17];
  if (error)
  {
    *error = v31[5];
  }

  v15 = v25[5];

  _Block_object_dispose(&v24, 8);
  _Block_object_dispose(&v30, 8);

  return v15;
}

void __81__RCSavedRecordingsModel_duplicateRecording_copyingResources_creationDate_error___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) url];
  v3 = [v2 path];

  v4 = [MEMORY[0x277CCAD78] UUID];
  v5 = [v4 UUIDString];
  if (*(a1 + 72) == 1)
  {
    v6 = [*(a1 + 32) creationDate];
    v7 = [v3 pathExtension];
    v8 = [RCSavedRecordingsModel standardPathForRecordingWithCreationDate:v6 uniqueID:v5 fileExtension:v7];

    if (clonefile([v3 fileSystemRepresentation], objc_msgSend(v8, "fileSystemRepresentation"), 0))
    {
      v9 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:*__error() userInfo:0];
      v10 = *(*(a1 + 56) + 8);
      v11 = *(v10 + 40);
      *(v10 + 40) = v9;

      goto LABEL_15;
    }
  }

  else
  {
    v8 = 0;
  }

  v12 = RCLocalizedFrameworkString(@"RECORDING_COPY_SUFFIX");
  v13 = [*(a1 + 32) title];
  v14 = [v13 rangeOfString:v12];
  if (v14 == 0x7FFFFFFFFFFFFFFFLL)
  {
    [v13 stringByAppendingString:v12];
  }

  else
  {
    [v13 substringWithRange:{0, v14 + v15}];
  }
  v16 = ;

  v17 = *(a1 + 40);
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __81__RCSavedRecordingsModel_duplicateRecording_copyingResources_creationDate_error___block_invoke_2;
  v27[3] = &unk_279E43EE0;
  v33 = *(a1 + 64);
  v27[4] = v17;
  v8 = v8;
  v28 = v8;
  v29 = *(a1 + 32);
  v30 = *(a1 + 48);
  v18 = v16;
  v31 = v18;
  v19 = v5;
  v21 = a1 + 56;
  v20 = *(a1 + 56);
  v32 = v19;
  v34 = v20;
  [v17 performWithSavingDisabled:v27];
  if (*(*(*(a1 + 64) + 8) + 40))
  {
    [*(a1 + 40) _copyPropertiesFromOriginalRecording:*(a1 + 32) newRecording:?];
  }

  v22 = *(a1 + 40);
  v23 = *(*(a1 + 56) + 8);
  obj = *(v23 + 40);
  v24 = [v22 saveIfNecessary:&obj];
  objc_storeStrong((v23 + 40), obj);
  if ((v24 & 1) == 0)
  {
    v25 = OSLogForCategory(@"Default");
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      __81__RCSavedRecordingsModel_duplicateRecording_copyingResources_creationDate_error___block_invoke_cold_1(v21);
    }
  }

LABEL_15:
}

void __81__RCSavedRecordingsModel_duplicateRecording_copyingResources_creationDate_error___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  [*(a1 + 48) length];
  v4 = *(a1 + 56);
  v5 = *(a1 + 64);
  v6 = *(a1 + 72);
  v7 = *(*(a1 + 88) + 8);
  obj = *(v7 + 40);
  v8 = [v2 insertRecordingWithAudioFile:v3 duration:v4 date:v5 customTitleBase:v6 uniqueID:&obj error:?];
  objc_storeStrong((v7 + 40), obj);
  v9 = *(*(a1 + 80) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;
}

- (void)mergeRecordings:(id)recordings
{
  v48 = *MEMORY[0x277D85DE8];
  recordingsCopy = recordings;
  v5 = [recordingsCopy na_map:&__block_literal_global_2];
  v6 = [(RCSavedRecordingsModel *)self _transactionsAndChangesForObjectIDs:v5];
  [MEMORY[0x277CCAA00] defaultManager];
  v40 = v39 = v6;
  v7 = [v6 count] - 1;
  if (v7 < 0)
  {
    v33 = 0;
    v8 = 0;
  }

  else
  {
    v35 = v5;
    v36 = recordingsCopy;
    v37 = 0;
    v8 = 0;
    do
    {
      v9 = [v39 objectAtIndexedSubscript:v7];
      changes = [v9 changes];

      v11 = [changes count];
      if (v11 - 1 >= 0)
      {
        v12 = v11;
        while (1)
        {
          v13 = [changes objectAtIndexedSubscript:--v12];
          changedObjectID = [v13 changedObjectID];
          v15 = [(RCSavedRecordingsModel *)self recordingWithID:changedObjectID];

          if ([v15 playable])
          {
            v16 = [v15 url];
            path = [v16 path];
            v18 = [v40 fileExistsAtPath:path];

            if (v18)
            {
              break;
            }
          }

          if (v12 <= 0)
          {
            goto LABEL_10;
          }
        }

        objectID = [v15 objectID];

        v20 = [v15 url];
        path2 = [v20 path];

        v8 = path2;
        v37 = objectID;
      }

LABEL_10:
    }

    while (v7-- > 0);
    if (v37)
    {
      v45[0] = MEMORY[0x277D85DD0];
      v45[1] = 3221225472;
      v45[2] = __42__RCSavedRecordingsModel_mergeRecordings___block_invoke_2;
      v45[3] = &unk_279E43F50;
      v38 = v37;
      v46 = v38;
      v23 = [v36 na_filter:v45];
      v41 = 0u;
      v42 = 0u;
      v43 = 0u;
      v44 = 0u;
      v24 = [v23 countByEnumeratingWithState:&v41 objects:v47 count:16];
      if (v24)
      {
        v25 = v24;
        v26 = *v42;
        do
        {
          for (i = 0; i != v25; ++i)
          {
            if (*v42 != v26)
            {
              objc_enumerationMutation(v23);
            }

            v28 = *(*(&v41 + 1) + 8 * i);
            v29 = [v28 url];
            path3 = [v29 path];
            v31 = [v8 isEqualToString:path3];

            if (v31)
            {
              context = [(RCSavedRecordingsModel *)self context];
              [context deleteObject:v28];

              [(RCSavedRecordingsModel *)self saveIfNecessary];
            }

            else
            {
              [(RCSavedRecordingsModel *)self eraseRecording:v28];
            }
          }

          v25 = [v23 countByEnumeratingWithState:&v41 objects:v47 count:16];
        }

        while (v25);
      }

      v5 = v35;
      recordingsCopy = v36;
      v33 = v38;
    }

    else
    {
      v33 = 0;
      v5 = v35;
      recordingsCopy = v36;
    }
  }

  v34 = *MEMORY[0x277D85DE8];
}

uint64_t __42__RCSavedRecordingsModel_mergeRecordings___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 objectID];
  LODWORD(v2) = [v2 isEqual:v3];

  return v2 ^ 1;
}

- (id)_recordingsForFolderUUID:(id)d
{
  v4 = [RCQueryManager recordingsInFolderFetchRequest:d];
  context = self->_context;
  v11 = 0;
  v6 = [(NSManagedObjectContext *)context executeFetchRequest:v4 error:&v11];
  v7 = v11;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v9 = OSLogForCategory(@"Service");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [RCSavedRecordingsModel _recordingsForFolderUUID:];
    }

    v8 = MEMORY[0x277CBEBF8];
  }

  return v8;
}

- (void)_mergeFolders:(id)folders intoTargetFolder:(id)folder
{
  v21 = *MEMORY[0x277D85DE8];
  foldersCopy = folders;
  folderCopy = folder;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v8 = [foldersCopy countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v17;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(foldersCopy);
        }

        v12 = *(*(&v16 + 1) + 8 * i);
        uuid = [v12 uuid];
        v14 = [(RCSavedRecordingsModel *)self _recordingsForFolderUUID:uuid];

        if ([v14 count])
        {
          [(RCSavedRecordingsModel *)self addRecordings:v14 toFolder:folderCopy];
        }

        [(RCSavedRecordingsModel *)self deleteFolder:v12];
      }

      v9 = [foldersCopy countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v9);
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (BOOL)_mergeDuplicateUUIDFolders:(id)folders
{
  v31 = *MEMORY[0x277D85DE8];
  foldersCopy = folders;
  if ([foldersCopy count] >= 2)
  {
    v6 = objc_opt_new();
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v7 = foldersCopy;
    v8 = [v7 countByEnumeratingWithState:&v20 objects:v30 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v21;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v21 != v10)
          {
            objc_enumerationMutation(v7);
          }

          [v6 addObject:{*(*(&v20 + 1) + 8 * i), v20}];
        }

        v9 = [v7 countByEnumeratingWithState:&v20 objects:v30 count:16];
      }

      while (v9);
    }

    v12 = [v6 count];
    v5 = v12 > 1;
    if (v12 >= 2)
    {
      lastObject = [v6 lastObject];
      v14 = OSLogForCategory(@"Service");
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        name = [lastObject name];
        uuid = [lastObject uuid];
        *buf = 136315650;
        v25 = "[RCSavedRecordingsModel _mergeDuplicateUUIDFolders:]";
        v26 = 2112;
        v27 = name;
        v28 = 2112;
        v29 = uuid;
        _os_log_impl(&dword_272442000, v14, OS_LOG_TYPE_DEFAULT, "%s -- merging duplicate uuid user folder %@ - uuid = %@", buf, 0x20u);
      }

      v17 = [v6 subarrayWithRange:{0, objc_msgSend(v6, "count") - 1}];
      [(RCSavedRecordingsModel *)self _mergeFolders:v17 intoTargetFolder:lastObject];
    }
  }

  else
  {
    v5 = 0;
  }

  v18 = *MEMORY[0x277D85DE8];
  return v5;
}

- (BOOL)_mergeDuplicateNameFoldersWithName:(id)name
{
  v22[1] = *MEMORY[0x277D85DE8];
  v4 = [RCQueryManager foldersWithNameFetchRequest:name searchOption:0];
  v5 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"countOfRecordings" ascending:1];
  v22[0] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:1];
  [v4 setSortDescriptors:v6];

  context = self->_context;
  v17 = 0;
  v8 = [(NSManagedObjectContext *)context executeFetchRequest:v4 error:&v17];
  v9 = v17;
  v10 = [v8 count];
  if (v10 >= 2)
  {
    lastObject = [v8 lastObject];
    v12 = OSLogForCategory(@"Service");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      name = [lastObject name];
      *buf = 136315394;
      v19 = "[RCSavedRecordingsModel _mergeDuplicateNameFoldersWithName:]";
      v20 = 2112;
      v21 = name;
      _os_log_impl(&dword_272442000, v12, OS_LOG_TYPE_DEFAULT, "%s -- merging duplicate named user folder %@", buf, 0x16u);
    }

    v14 = [v8 subarrayWithRange:{0, objc_msgSend(v8, "count") - 1}];
    [(RCSavedRecordingsModel *)self _mergeFolders:v14 intoTargetFolder:lastObject];
  }

  v15 = *MEMORY[0x277D85DE8];
  return v10 > 1;
}

- (void)_rerankFolders
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_3(&dword_272442000, v0, v1, "%s -- fetch request failed - error: %@", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)reconcileChangedFolder:(id)folder change:(id)change
{
  folderCopy = folder;
  changeCopy = change;
  v8 = self->_context;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __56__RCSavedRecordingsModel_reconcileChangedFolder_change___block_invoke;
  v12[3] = &unk_279E43F78;
  v13 = changeCopy;
  v14 = v8;
  v15 = folderCopy;
  selfCopy = self;
  v9 = folderCopy;
  v10 = v8;
  v11 = changeCopy;
  [(NSManagedObjectContext *)v10 performBlockAndWait:v12];
}

void __56__RCSavedRecordingsModel_reconcileChangedFolder_change___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) changeType];
  if (v2 != 2)
  {
    v3 = v2;
    v4 = [*(a1 + 40) existingObjectWithID:*(a1 + 48) error:0];
    v5 = v4;
    if (v4)
    {
      if (!v3)
      {
        v6 = *(a1 + 56);
        v7 = [v4 uuid];
        v8 = [v6 _foldersWithUUID:v7];

        if ([*(a1 + 56) _mergeDuplicateUUIDFolders:v8])
        {
          [*(a1 + 56) saveIfNecessary];
        }
      }

      v9 = *(a1 + 56);
      v10 = [v5 name];
      LODWORD(v9) = [v9 _mergeDuplicateNameFoldersWithName:v10];

      if (v9)
      {
        [*(a1 + 56) _rerankFolders];
        [*(a1 + 56) saveIfNecessary];
      }

      else
      {
        v11 = +[RCQueryManager foldersWithhRankFetchRequest:](RCQueryManager, "foldersWithhRankFetchRequest:", [v5 rank]);
        v12 = *(a1 + 40);
        v16 = 0;
        v13 = [v12 executeFetchRequest:v11 error:&v16];
        v14 = v16;
        if (v13)
        {
          if ([v13 count] >= 2)
          {
            [*(a1 + 56) _rerankFolders];
            [*(a1 + 56) saveIfNecessary];
          }
        }

        else
        {
          v15 = OSLogForCategory(@"Orphan-Handling");
          if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
          {
            __56__RCSavedRecordingsModel_reconcileChangedFolder_change___block_invoke_cold_1();
          }
        }
      }
    }
  }
}

- (BOOL)saveIfNecessary:(id *)necessary
{
  if (self->_isSavingDisabledCount || ![(NSManagedObjectContext *)self->_context hasChanges])
  {
    return 0;
  }

  return [(RCSavedRecordingsModel *)self __saveManagedObjectContext:necessary];
}

- (BOOL)__saveManagedObjectContext:(id *)context
{
  v3 = 0;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  isSavingDisabledCount = self->_isSavingDisabledCount;
  if (isSavingDisabledCount <= 0)
  {
    self->_isSavingDisabledCount = isSavingDisabledCount + 1;
    v10 = 0;
    v11 = &v10;
    v12 = 0x3032000000;
    v13 = __Block_byref_object_copy__1;
    v14 = __Block_byref_object_dispose__1;
    v15 = 0;
    context = self->_context;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __53__RCSavedRecordingsModel___saveManagedObjectContext___block_invoke;
    v9[3] = &unk_279E43FA0;
    v9[4] = self;
    v9[5] = &v16;
    v9[6] = &v10;
    [(NSManagedObjectContext *)context performBlockAndWait:v9];
    v3 = *(v17 + 24);
    if (context && (v17[3] & 1) == 0)
    {
      *context = v11[5];
      v3 = *(v17 + 24);
    }

    --self->_isSavingDisabledCount;
    _Block_object_dispose(&v10, 8);
  }

  _Block_object_dispose(&v16, 8);
  return v3 & 1;
}

void __53__RCSavedRecordingsModel___saveManagedObjectContext___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _synchronizeRecordingsMetadata];
  [*(*(a1 + 32) + 8) processPendingChanges];
  v2 = *(*(a1 + 32) + 8);
  v3 = *(*(a1 + 48) + 8);
  obj = *(v3 + 40);
  v4 = [v2 save:&obj];
  objc_storeStrong((v3 + 40), obj);
  *(*(*(a1 + 40) + 8) + 24) = v4;
  if ((*(*(*(a1 + 40) + 8) + 24) & 1) == 0)
  {
    v5 = OSLogForCategory(@"Default");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      __53__RCSavedRecordingsModel___saveManagedObjectContext___block_invoke_cold_1(a1 + 48);
    }

    [*(*(a1 + 32) + 8) rollback];
  }
}

- (void)_synchronizeRecordingsMetadata
{
  v19 = *MEMORY[0x277D85DE8];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  updatedObjects = [(NSManagedObjectContext *)self->_context updatedObjects];
  v3 = [updatedObjects countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v15;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v15 != v5)
        {
          objc_enumerationMutation(updatedObjects);
        }

        v7 = *(*(&v14 + 1) + 8 * i);
        entity = [v7 entity];
        name = [entity name];
        v10 = [name isEqualToString:@"CloudRecording"];

        if (v10)
        {
          changedValues = [v7 changedValues];
          v12 = [changedValues objectForKeyedSubscript:@"customLabelForSorting"];

          if (v12)
          {
            [v7 synchronizeRecordingMetadata];
          }
        }
      }

      v4 = [updatedObjects countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v4);
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)performWithSavingDisabled:(id)disabled
{
  ++self->_isSavingDisabledCount;
  (*(disabled + 2))(disabled, a2);
  --self->_isSavingDisabledCount;
}

+ (id)_copyFileIntoRecordingsDirectory:(id)directory error:(id *)error
{
  v5 = MEMORY[0x277CBEBC0];
  directoryCopy = directory;
  v7 = [v5 fileURLWithPath:directoryCopy];
  v16 = 0;
  [v7 getResourceValue:&v16 forKey:*MEMORY[0x277CBE7C0] error:0];
  v8 = v16;
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  pathExtension = [directoryCopy pathExtension];

  v11 = [RCSavedRecordingsModel standardURLForRecordingWithCreationDate:v8 fileExtension:pathExtension];
  v12 = [defaultManager rc_uniqueFileSystemURLWithPreferredURL:v11];

  if (([defaultManager copyItemAtURL:v7 toURL:v12 error:error] & 1) == 0)
  {
    v13 = OSLogForCategory(@"Default");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [RCSavedRecordingsModel _copyFileIntoRecordingsDirectory:error error:?];
    }

    v12 = 0;
  }

  path = [v12 path];

  return path;
}

- (BOOL)resetCloudForStore:(id)store completionHandler:(id)handler
{
  storeCopy = store;
  handlerCopy = handler;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 1;
  context = self->_context;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __63__RCSavedRecordingsModel_resetCloudForStore_completionHandler___block_invoke;
  v12[3] = &unk_279E44038;
  v12[4] = self;
  v9 = handlerCopy;
  v14 = v9;
  v10 = storeCopy;
  v13 = v10;
  v15 = &v16;
  [(NSManagedObjectContext *)context performBlockAndWait:v12];
  LOBYTE(storeCopy) = *(v17 + 24);

  _Block_object_dispose(&v16, 8);
  return storeCopy;
}

void __63__RCSavedRecordingsModel_resetCloudForStore_completionHandler___block_invoke(uint64_t a1)
{
  v2 = objc_alloc(MEMORY[0x277CBE3E8]);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __63__RCSavedRecordingsModel_resetCloudForStore_completionHandler___block_invoke_2;
  v8[3] = &unk_279E44010;
  v8[4] = *(a1 + 32);
  v9 = *(a1 + 48);
  v3 = [v2 initWithOptions:0 completionBlock:v8];
  [v3 rc_setAffectedStore:*(a1 + 40)];
  v4 = *(*(a1 + 32) + 8);
  v7 = 0;
  v5 = [v4 executeRequest:v3 error:&v7];
  v6 = v7;
  if (!v5)
  {
    (*(*(a1 + 48) + 16))();
    *(*(*(a1 + 56) + 8) + 24) = 0;
  }
}

void __63__RCSavedRecordingsModel_resetCloudForStore_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = *(v5 + 8);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __63__RCSavedRecordingsModel_resetCloudForStore_completionHandler___block_invoke_3;
  v8[3] = &unk_279E43FE8;
  v9 = v3;
  v10 = v5;
  v11 = v3;
  v12 = v4;
  v7 = v3;
  [v6 performBlock:v8];
}

void __63__RCSavedRecordingsModel_resetCloudForStore_completionHandler___block_invoke_3(uint64_t a1)
{
  if ([*(a1 + 32) madeChanges])
  {
    [*(a1 + 40) enumerateExistingRecordingsWithBlock:&__block_literal_global_140];
  }

  v4 = a1 + 48;
  v2 = *(a1 + 48);
  v3 = *(v4 + 8);
  v5 = [v2 error];
  (*(v3 + 16))(v3, v2, v5);
}

- (BOOL)exportToCloudForStore:(id)store completionHandler:(id)handler
{
  storeCopy = store;
  handlerCopy = handler;
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 1;
  context = self->_context;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __66__RCSavedRecordingsModel_exportToCloudForStore_completionHandler___block_invoke;
  v12[3] = &unk_279E44088;
  v9 = handlerCopy;
  v15 = v9;
  v10 = storeCopy;
  v13 = v10;
  selfCopy = self;
  v16 = &v17;
  [(NSManagedObjectContext *)context performBlockAndWait:v12];
  LOBYTE(self) = *(v18 + 24);

  _Block_object_dispose(&v17, 8);
  return self;
}

void __66__RCSavedRecordingsModel_exportToCloudForStore_completionHandler___block_invoke(uint64_t a1)
{
  v2 = objc_alloc(MEMORY[0x277CBE3B8]);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __66__RCSavedRecordingsModel_exportToCloudForStore_completionHandler___block_invoke_2;
  v8[3] = &unk_279E44060;
  v9 = *(a1 + 48);
  v3 = [v2 initWithOptions:0 completionBlock:v8];
  [v3 rc_setAffectedStore:*(a1 + 32)];
  v4 = *(*(a1 + 40) + 8);
  v7 = 0;
  v5 = [v4 executeRequest:v3 error:&v7];
  v6 = v7;
  if (!v5)
  {
    (*(*(a1 + 48) + 16))();
    *(*(*(a1 + 56) + 8) + 24) = 0;
  }
}

void __66__RCSavedRecordingsModel_exportToCloudForStore_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v3 error];
  (*(v2 + 16))(v2, v3, v4);
}

- (BOOL)importFromCloudForStore:(id)store completionHandler:(id)handler
{
  storeCopy = store;
  handlerCopy = handler;
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 1;
  context = self->_context;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __68__RCSavedRecordingsModel_importFromCloudForStore_completionHandler___block_invoke;
  v12[3] = &unk_279E44088;
  v9 = handlerCopy;
  v15 = v9;
  v10 = storeCopy;
  v13 = v10;
  selfCopy = self;
  v16 = &v17;
  [(NSManagedObjectContext *)context performBlockAndWait:v12];
  LOBYTE(self) = *(v18 + 24);

  _Block_object_dispose(&v17, 8);
  return self;
}

void __68__RCSavedRecordingsModel_importFromCloudForStore_completionHandler___block_invoke(uint64_t a1)
{
  v2 = objc_alloc(MEMORY[0x277CBE3C8]);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __68__RCSavedRecordingsModel_importFromCloudForStore_completionHandler___block_invoke_2;
  v8[3] = &unk_279E44060;
  v9 = *(a1 + 48);
  v3 = [v2 initWithOptions:0 completionBlock:v8];
  [v3 rc_setAffectedStore:*(a1 + 32)];
  v4 = *(*(a1 + 40) + 8);
  v7 = 0;
  v5 = [v4 executeRequest:v3 error:&v7];
  v6 = v7;
  if (!v5)
  {
    (*(*(a1 + 48) + 16))();
    *(*(*(a1 + 56) + 8) + 24) = 0;
  }
}

void __68__RCSavedRecordingsModel_importFromCloudForStore_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v3 error];
  (*(v2 + 16))(v2, v3, v4);
}

- (BOOL)fetchObjectsFromCloud:(id)cloud entityToAttributesToFetch:(id)fetch forStore:(id)store completionHandler:(id)handler
{
  cloudCopy = cloud;
  fetchCopy = fetch;
  storeCopy = store;
  handlerCopy = handler;
  v27 = 0;
  v28 = &v27;
  v29 = 0x2020000000;
  v30 = 0;
  context = self->_context;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __101__RCSavedRecordingsModel_fetchObjectsFromCloud_entityToAttributesToFetch_forStore_completionHandler___block_invoke;
  v20[3] = &unk_279E440B0;
  v15 = handlerCopy;
  v25 = v15;
  v16 = cloudCopy;
  v21 = v16;
  v17 = fetchCopy;
  v22 = v17;
  v18 = storeCopy;
  v23 = v18;
  selfCopy = self;
  v26 = &v27;
  [(NSManagedObjectContext *)context performBlockAndWait:v20];
  LOBYTE(self) = *(v28 + 24);

  _Block_object_dispose(&v27, 8);
  return self;
}

void __101__RCSavedRecordingsModel_fetchObjectsFromCloud_entityToAttributesToFetch_forStore_completionHandler___block_invoke(uint64_t a1)
{
  v2 = objc_alloc(MEMORY[0x277CBE3C0]);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __101__RCSavedRecordingsModel_fetchObjectsFromCloud_entityToAttributesToFetch_forStore_completionHandler___block_invoke_2;
  v9[3] = &unk_279E44060;
  v10 = *(a1 + 64);
  v3 = [v2 initWithOptions:0 completionBlock:v9];
  [v3 setObjectIDsToFetch:*(a1 + 32)];
  [v3 setEntityNameToAttributesToFetch:*(a1 + 40)];
  [v3 rc_setAffectedStore:*(a1 + 48)];
  v4 = *(*(a1 + 56) + 8);
  v8 = 0;
  v5 = [v4 executeRequest:v3 error:&v8];
  v6 = v8;
  if (v5)
  {
    v7 = 1;
  }

  else
  {
    (*(*(a1 + 64) + 16))();
    v7 = 0;
  }

  *(*(*(a1 + 72) + 8) + 24) = v7;
}

void __101__RCSavedRecordingsModel_fetchObjectsFromCloud_entityToAttributesToFetch_forStore_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v3 error];
  (*(v2 + 16))(v2, v3, v4);
}

- (BOOL)fetchExportProgress:(id)progress forStore:(id)store completionHandler:(id)handler
{
  progressCopy = progress;
  storeCopy = store;
  handlerCopy = handler;
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v25 = 0;
  context = self->_context;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __73__RCSavedRecordingsModel_fetchExportProgress_forStore_completionHandler___block_invoke;
  v16[3] = &unk_279E440D8;
  v12 = handlerCopy;
  v20 = v12;
  v13 = progressCopy;
  v17 = v13;
  v14 = storeCopy;
  v18 = v14;
  selfCopy = self;
  v21 = &v22;
  [(NSManagedObjectContext *)context performBlockAndWait:v16];
  LOBYTE(self) = *(v23 + 24);

  _Block_object_dispose(&v22, 8);
  return self;
}

void __73__RCSavedRecordingsModel_fetchExportProgress_forStore_completionHandler___block_invoke(uint64_t a1)
{
  v2 = objc_alloc(MEMORY[0x277CBE3A8]);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __73__RCSavedRecordingsModel_fetchExportProgress_forStore_completionHandler___block_invoke_2;
  v10[3] = &unk_279E44060;
  v11 = *(a1 + 56);
  v3 = [v2 initWithOptions:0 completionBlock:v10];
  v4 = [MEMORY[0x277CBEB98] setWithArray:*(a1 + 32)];
  [v3 setObjectIDsToFetch:v4];

  [v3 rc_setAffectedStore:*(a1 + 40)];
  v5 = *(*(a1 + 48) + 8);
  v9 = 0;
  v6 = [v5 executeRequest:v3 error:&v9];
  v7 = v9;
  if (v6)
  {
    v8 = 1;
  }

  else
  {
    (*(*(a1 + 56) + 16))();
    v8 = 0;
  }

  *(*(*(a1 + 64) + 8) + 24) = v8;
}

void __73__RCSavedRecordingsModel_fetchExportProgress_forStore_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v3 error];
  (*(v2 + 16))(v2, v3, v4);
}

- (id)objectIDsForRecordingsNeedingAssetExport
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__1;
  v14 = __Block_byref_object_dispose__1;
  v15 = 0;
  v3 = +[RCQueryManager recordingsNeedingAssetExportFetchRequest];
  [v3 setResultType:1];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __66__RCSavedRecordingsModel_objectIDsForRecordingsNeedingAssetExport__block_invoke;
  v7[3] = &unk_279E43B48;
  v9 = &v10;
  v7[4] = self;
  v4 = v3;
  v8 = v4;
  [(RCSavedRecordingsModel *)self performBlockAndWait:v7];
  v5 = v11[5];

  _Block_object_dispose(&v10, 8);

  return v5;
}

void __66__RCSavedRecordingsModel_objectIDsForRecordingsNeedingAssetExport__block_invoke(void *a1)
{
  v2 = a1[5];
  v3 = *(a1[4] + 8);
  v11 = 0;
  v4 = [v3 executeFetchRequest:v2 error:&v11];
  v5 = v11;
  v6 = *(a1[6] + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v4;

  if (!*(*(a1[6] + 8) + 40))
  {
    v8 = OSLogForCategory(@"Service");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __66__RCSavedRecordingsModel_objectIDsForRecordingsNeedingAssetExport__block_invoke_cold_1();
    }

    v9 = *(a1[6] + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = MEMORY[0x277CBEBF8];
  }
}

- (unint64_t)fetchPlayableRecordingsCount
{
  v3 = [RCQueryManager playableRecordingsFetchRequestWithSubPredicate:0];
  v4 = [(RCSavedRecordingsModel *)self _countForFetchRequest:v3];

  return v4;
}

- (id)createEncryptedFieldsMigration:(int)migration
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__1;
  v12 = __Block_byref_object_dispose__1;
  v13 = 0;
  context = self->_context;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __57__RCSavedRecordingsModel_createEncryptedFieldsMigration___block_invoke;
  v6[3] = &unk_279E44100;
  migrationCopy = migration;
  v6[4] = self;
  v6[5] = &v8;
  [(NSManagedObjectContext *)context performBlockAndWait:v6];
  v4 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v4;
}

uint64_t __57__RCSavedRecordingsModel_createEncryptedFieldsMigration___block_invoke(uint64_t a1)
{
  v2 = [RCMigration createEncryptedFieldsMigration:*(a1 + 48) context:*(*(a1 + 32) + 8)];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

- (BOOL)encryptedFieldsMigrationExists
{
  v3 = +[RCQueryManager encryptedFieldsMigrationsFetchRequest];
  [v3 setFetchLimit:1];
  LOBYTE(self) = [(RCSavedRecordingsModel *)self _countForFetchRequest:v3]!= 0;

  return self;
}

- (id)encryptedFieldMigrations
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__1;
  v9 = __Block_byref_object_dispose__1;
  v10 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __50__RCSavedRecordingsModel_encryptedFieldMigrations__block_invoke;
  v4[3] = &unk_279E43B70;
  v4[4] = self;
  v4[5] = &v5;
  [(RCSavedRecordingsModel *)self performBlockAndWait:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

void __50__RCSavedRecordingsModel_encryptedFieldMigrations__block_invoke(uint64_t a1)
{
  v2 = +[RCQueryManager encryptedFieldsMigrationsFetchRequest];
  v3 = *(*(a1 + 32) + 8);
  v11 = 0;
  v4 = [v3 executeFetchRequest:v2 error:&v11];
  v5 = v11;
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v4;

  if (!*(*(*(a1 + 40) + 8) + 40))
  {
    v8 = OSLogForCategory(@"Default");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __50__RCSavedRecordingsModel_encryptedFieldMigrations__block_invoke_cold_1();
    }

    v9 = *(*(a1 + 40) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = MEMORY[0x277CBEBF8];
  }
}

- (id)recordingsWithNilEncryptedTitleOrCustomLabel
{
  v3 = +[RCQueryManager recordingsWithNilEncryptedTitleOrCustomLabelFetchRequest];
  v4 = [(RCSavedRecordingsModel *)self _recordingsWithFetchRequest:v3];

  return v4;
}

- (id)recordingsWithNilAudioFutures
{
  v3 = +[RCQueryManager recordingsWithNilAudioFuturesFetchRequest];
  v4 = [(RCSavedRecordingsModel *)self _recordingsWithFetchRequest:v3];

  return v4;
}

- (id)_recordingsWithFetchRequest:(id)request error:(id *)error
{
  requestCopy = request;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy__1;
  v26 = __Block_byref_object_dispose__1;
  v27 = 0;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__1;
  v20 = __Block_byref_object_dispose__1;
  v21 = 0;
  context = self->_context;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __60__RCSavedRecordingsModel__recordingsWithFetchRequest_error___block_invoke;
  v12[3] = &unk_279E44128;
  v14 = &v22;
  v12[4] = self;
  v8 = requestCopy;
  v13 = v8;
  v15 = &v16;
  [(NSManagedObjectContext *)context performBlockAndWait:v12];
  v9 = v23[5];
  if (error && !v9)
  {
    *error = v17[5];
    v9 = v23[5];
  }

  v10 = v9;

  _Block_object_dispose(&v16, 8);
  _Block_object_dispose(&v22, 8);

  return v10;
}

void __60__RCSavedRecordingsModel__recordingsWithFetchRequest_error___block_invoke(void *a1)
{
  v2 = a1[5];
  v3 = *(a1[4] + 8);
  v4 = *(a1[7] + 8);
  obj = *(v4 + 40);
  v5 = [v3 executeFetchRequest:v2 error:&obj];
  objc_storeStrong((v4 + 40), obj);
  v6 = *(a1[6] + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

- (id)_recordingsWithFetchRequest:(id)request
{
  requestCopy = request;
  v11 = 0;
  v5 = [(RCSavedRecordingsModel *)self _recordingsWithFetchRequest:requestCopy error:&v11];
  v6 = v11;
  v7 = v5;
  if (!v5)
  {
    v8 = OSLogForCategory(@"Default");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [RCSavedRecordingsModel _recordingsWithFetchRequest:];
    }

    v7 = MEMORY[0x277CBEBF8];
  }

  v9 = v7;

  return v7;
}

- (id)recordingsWithTitle:(id)title
{
  titleCopy = title;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__1;
  v17 = __Block_byref_object_dispose__1;
  v18 = 0;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __46__RCSavedRecordingsModel_recordingsWithTitle___block_invoke;
  v9[3] = &unk_279E43B98;
  v5 = titleCopy;
  selfCopy = self;
  v12 = &v13;
  v10 = v5;
  [(RCSavedRecordingsModel *)self performBlockAndWait:v9];
  v6 = v14[5];
  if (!v6)
  {
    v6 = MEMORY[0x277CBEBF8];
  }

  v7 = v6;

  _Block_object_dispose(&v13, 8);

  return v7;
}

void __46__RCSavedRecordingsModel_recordingsWithTitle___block_invoke(void *a1)
{
  v2 = [RCQueryManager recordingsWithTitleFetchRequest:a1[4]];
  v3 = *(a1[5] + 8);
  v9 = 0;
  v4 = [v3 executeFetchRequest:v2 error:&v9];
  v5 = v9;
  v6 = *(a1[6] + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v4;

  if (!*(*(a1[6] + 8) + 40))
  {
    v8 = OSLogForCategory(@"Default");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __46__RCSavedRecordingsModel_recordingsWithTitle___block_invoke_cold_1();
    }
  }
}

- (id)visibleRecordingsFetchedResultsController
{
  v3 = +[RCQueryManager visibleRecordingsFetchRequest];
  v4 = [objc_alloc(MEMORY[0x277CBE430]) initWithFetchRequest:v3 managedObjectContext:self->_context sectionNameKeyPath:0 cacheName:0];

  return v4;
}

- (id)userFoldersFetchedResultsController
{
  _userFolderFetchRequest = [(RCSavedRecordingsModel *)self _userFolderFetchRequest];
  v4 = [objc_alloc(MEMORY[0x277CBE430]) initWithFetchRequest:_userFolderFetchRequest managedObjectContext:self->_context sectionNameKeyPath:0 cacheName:0];

  return v4;
}

+ (void)fetchRecordingUUIDsForExport:(id)export
{
  v12 = *MEMORY[0x277D85DE8];
  exportCopy = export;
  v4 = OSLogForCategory(@"Service");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v11 = "+[RCSavedRecordingsModel(ExportAdditions) fetchRecordingUUIDsForExport:]";
    _os_log_impl(&dword_272442000, v4, OS_LOG_TYPE_DEFAULT, "%s -- Sending service request to fetchRecordingUUIDsForExport", buf, 0xCu);
  }

  v5 = +[RCSSavedRecordingService sharedService];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __72__RCSavedRecordingsModel_ExportAdditions__fetchRecordingUUIDsForExport___block_invoke;
  v8[3] = &unk_279E44578;
  v9 = exportCopy;
  v6 = exportCopy;
  [v5 fetchRecordingUUIDsForExport:v8];

  v7 = *MEMORY[0x277D85DE8];
}

+ (void)fetchMetadataForRecordingWithUUID:(id)d completionHandler:(id)handler
{
  dCopy = d;
  handlerCopy = handler;
  v11 = MEMORY[0x277D85DD0];
  v12 = 3221225472;
  v13 = __95__RCSavedRecordingsModel_ExportAdditions__fetchMetadataForRecordingWithUUID_completionHandler___block_invoke;
  v14 = &unk_279E445A0;
  v15 = dCopy;
  v16 = handlerCopy;
  v7 = dCopy;
  v8 = handlerCopy;
  v9 = MEMORY[0x2743CA3B0](&v11);
  v10 = [RCSSavedRecordingService sharedService:v11];
  [v10 fetchMetadataForRecordingWithUUID:v7 completionBlock:v9];
}

void __95__RCSavedRecordingsModel_ExportAdditions__fetchMetadataForRecordingWithUUID_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [v5 wrappedURL];
  v8 = [v7 url];
  v9 = [v8 startAccessingSecurityScopedResource];

  if (v9)
  {
    v10 = [v5 wrappedURL];
    v11 = [v10 url];
    v12 = [v11 path];
    [v5 setPath:v12];

    v13 = *(a1 + 40);
    if (v13)
    {
      (*(v13 + 16))(v13, v5, v6);
    }

    v14 = [v5 wrappedURL];
    v15 = [v14 url];
    [v15 stopAccessingSecurityScopedResource];
  }

  else
  {
    v16 = OSLogForCategory(@"Service");
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      __95__RCSavedRecordingsModel_ExportAdditions__fetchMetadataForRecordingWithUUID_completionHandler___block_invoke_cold_1(a1, v16);
    }

    if (*(a1 + 40))
    {
      v17 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"com.apple.VoiceMemos.ErrorDomain" code:-1 userInfo:0];
      (*(*(a1 + 40) + 16))();
    }
  }
}

+ (void)sizeOfRecordingsForExport:(id)export
{
  exportCopy = export;
  v4 = +[RCSSavedRecordingService sharedService];
  [v4 sizeOfRecordingsForExport:exportCopy];
}

void __102__RCSavedRecordingsModel_ImportAdditions__importFileWithURL_shouldUseMetadataTitle_completionHandler___block_invoke_2_cold_1(uint64_t a1, NSObject *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = 136315394;
  v4 = "+[RCSavedRecordingsModel(ImportAdditions) importFileWithURL:shouldUseMetadataTitle:completionHandler:]_block_invoke_2";
  v5 = 2112;
  v6 = a1;
  _os_log_error_impl(&dword_272442000, a2, OS_LOG_TYPE_ERROR, "%s -- removeError = %@", &v3, 0x16u);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)recordingWithID:.cold.1()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_3(&dword_272442000, v0, v1, "%s -- ERROR: Unable to fetch recording (%@.)", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

void __90__RCSavedRecordingsModel_enumerateExistingRecordingsWithProperties_sortDescriptors_block___block_invoke_cold_1()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_3(&dword_272442000, v0, v1, "%s -- ERROR: Unable to fetch recordings (%@.)", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

void __61__RCSavedRecordingsModel__transactionsAndChangesWithRequest___block_invoke_cold_1(uint64_t a1, uint64_t *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = *a2;
  v6 = 136315650;
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_4(&dword_272442000, v3, v4, "%s -- ERROR: Unexpected result type - result = %@, request = %@", v6);
  v5 = *MEMORY[0x277D85DE8];
}

void __61__RCSavedRecordingsModel__transactionsAndChangesWithRequest___block_invoke_cold_2(uint64_t a1, uint64_t *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = *a2;
  v6 = 136315650;
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_4(&dword_272442000, v3, v4, "%s -- ERROR: Unable to fetch change history (%@.), request = %@", v6);
  v5 = *MEMORY[0x277D85DE8];
}

+ (void)_determineImportabilityOfRecordingWithAudioAsset:(void *)a1 preferredFormat:completionHandler:.cold.1(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [a1 path];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_8();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

void __109__RCSavedRecordingsModel__determineImportabilityOfRecordingWithAudioAsset_preferredFormat_completionHandler___block_invoke_cold_1(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [*(a1 + 40) path];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_8();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

+ (void)determineImportabilityOfRecordingWithAudioURL:completionHandler:.cold.1()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_3(&dword_272442000, v0, v1, "%s -- Failed to load playable asset for URL: %@", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)importRecordingWithSourceAudioURL:name:date:xpcConnection:userInfo:completionHandler:.cold.1()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_3(&dword_272442000, v0, v1, "%s -- could not import Music Memo with conflicting uniqueID = %@", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_postProcessCloudRecordingForRecordingWithId:named:userInfo:isMigrationImport:isMusicMemoImport:sharingMetadata:.cold.1()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_3(&dword_272442000, v0, v1, "%s -- No metadata present in userinfo %@", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_postProcessCloudRecordingForRecordingWithId:named:userInfo:isMigrationImport:isMusicMemoImport:sharingMetadata:.cold.2()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_3(&dword_272442000, v0, v1, "%s -- updateError = %@", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_postProcessCloudRecordingForRecordingWithId:(os_log_t)log named:userInfo:isMigrationImport:isMusicMemoImport:sharingMetadata:.cold.3(os_log_t log)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 136315138;
  v3 = "postProcessMusicMemo";
  _os_log_error_impl(&dword_272442000, log, OS_LOG_TYPE_ERROR, "%s -- Cannot update metadata for cloudrecording with nil url", &v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

- (void)_postProcessCloudRecordingForRecordingWithId:named:userInfo:isMigrationImport:isMusicMemoImport:sharingMetadata:.cold.4()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_3(&dword_272442000, v0, v1, "%s -- Failed to get recording with Id %@", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_importRecordingWithSourceAudioURL:name:date:uniqueID:preferredFormat:completionHandler:.cold.1()
{
  v4 = *MEMORY[0x277D85DE8];
  v3 = 136315650;
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_4(&dword_272442000, v0, v1, "%s -- Failed to remove sharing metadata for recording %@. Error: %@.", v3);
  v2 = *MEMORY[0x277D85DE8];
}

void __114__RCSavedRecordingsModel__importRecordingWithSourceAudioURL_name_date_uniqueID_preferredFormat_completionHandler___block_invoke_cold_1()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_3(&dword_272442000, v0, v1, "%s -- removeError = %@", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_importImportableRecordingWithAudioAsset:(uint8_t *)buf name:(os_log_t)log date:uniqueID:presetName:outputFileType:completionHandler:.cold.1(void *a1, uint64_t a2, uint8_t *buf, os_log_t log)
{
  *buf = 136315650;
  *(buf + 4) = "[RCSavedRecordingsModel _importImportableRecordingWithAudioAsset:name:date:uniqueID:presetName:outputFileType:completionHandler:]";
  *(buf + 6) = 2112;
  *(buf + 14) = a1;
  *(buf + 11) = 2112;
  *(buf + 3) = a2;
  _os_log_debug_impl(&dword_272442000, log, OS_LOG_TYPE_DEBUG, "%s -- Preparing asset %@ (exporting to %@) for import...", buf, 0x20u);
}

void __130__RCSavedRecordingsModel__importImportableRecordingWithAudioAsset_name_date_uniqueID_presetName_outputFileType_completionHandler___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_6();
  v7 = *MEMORY[0x277D85DE8];
  v3 = [*(v2 + 32) path];
  v4 = *(v1 + 40);
  v6[0] = 136315650;
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(&dword_272442000, v0, OS_LOG_TYPE_DEBUG, "%s -- Finished preparing asset %@ (exported to %@) for import...", v6, 0x20u);

  v5 = *MEMORY[0x277D85DE8];
}

void __130__RCSavedRecordingsModel__importImportableRecordingWithAudioAsset_name_date_uniqueID_presetName_outputFileType_completionHandler___block_invoke_cold_2(id *a1)
{
  v7 = *MEMORY[0x277D85DE8];
  [*a1 status];
  OUTLINED_FUNCTION_8();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x26u);
  v6 = *MEMORY[0x277D85DE8];
}

void __41__RCSavedRecordingsModel_folderWithName___block_invoke_cold_1()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_3(&dword_272442000, v0, v1, "%s -- obtainPermanentIDsForObjects failed %@", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

void __48__RCSavedRecordingsModel__countForFetchRequest___block_invoke_cold_1(uint64_t a1, uint64_t *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = *a2;
  v6 = 136315650;
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_4(&dword_272442000, v3, v4, "%s -- countForFetchRequest failed with error = %@, fetchRequest = %@", v6);
  v5 = *MEMORY[0x277D85DE8];
}

void __37__RCSavedRecordingsModel_userFolders__block_invoke_cold_1()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_3(&dword_272442000, v0, v1, "%s -- executeFetchRequest error = %@", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

void __49__RCSavedRecordingsModel_existingFolderWithUUID___block_invoke_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3(&dword_272442000, a1, a3, "%s -- executeFetchRequest failed %@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)deleteFolder:.cold.1()
{
  OUTLINED_FUNCTION_6();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_7();
  [v0 handleFailureInMethod:@"folder != nil" object:? file:? lineNumber:? description:?];
}

- (void)deleteFolder:.cold.2()
{
  OUTLINED_FUNCTION_6();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_7();
  [v0 handleFailureInMethod:@"folder.folderType == RCFolderTypeUserDefined" object:? file:? lineNumber:? description:?];
}

void __39__RCSavedRecordingsModel_deleteFolder___block_invoke_cold_1(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5(&dword_272442000, v2, v3, "%s -- deleting folder: %@", v4, v5, v6, v7, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

void __39__RCSavedRecordingsModel_deleteFolder___block_invoke_cold_2()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_5(&dword_272442000, v0, v1, "%s -- Error deleting folder: %@", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)eraseRecording:.cold.1()
{
  OUTLINED_FUNCTION_6();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_7();
  [v0 handleFailureInMethod:@"recording != nil" object:? file:? lineNumber:? description:?];
}

void __42__RCSavedRecordingsModel_eraseRecordings___block_invoke_cold_1()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_5(&dword_272442000, v0, v1, "%s -- Error erasing recordings: %@", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)deleteRecording:.cold.1()
{
  OUTLINED_FUNCTION_6();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_7();
  [v0 handleFailureInMethod:@"recording != nil" object:? file:? lineNumber:? description:?];
}

void __43__RCSavedRecordingsModel_deleteRecordings___block_invoke_cold_1()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_5(&dword_272442000, v0, v1, "%s -- Error deleting recordings: %@", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)restoreDeletedRecording:.cold.1()
{
  OUTLINED_FUNCTION_6();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_7();
  [v0 handleFailureInMethod:@"recording != nil" object:? file:? lineNumber:? description:?];
}

void __51__RCSavedRecordingsModel_restoreDeletedRecordings___block_invoke_cold_1()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_5(&dword_272442000, v0, v1, "%s -- Error restoring recordings: %@", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

void __59__RCSavedRecordingsModel_eraseRecordingsDeletedBeforeDate___block_invoke_cold_1()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_5(&dword_272442000, v0, v1, "%s -- Error restoring recording: %@", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

void __41__RCSavedRecordingsModel_eraseAllDeleted__block_invoke_cold_1()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_5(&dword_272442000, v0, v1, "%s -- Error deleting all recordings: %@", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)duplicateRecording:copyingResources:creationDate:error:.cold.1()
{
  OUTLINED_FUNCTION_6();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_7();
  [v0 handleFailureInMethod:@"recording != nil" object:? file:? lineNumber:? description:?];
}

void __81__RCSavedRecordingsModel_duplicateRecording_copyingResources_creationDate_error___block_invoke_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_9(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3(&dword_272442000, v1, v2, "%s -- Error duplicating recording: %@", v3, v4, v5, v6, 2u);
  v7 = *MEMORY[0x277D85DE8];
}

- (void)_recordingsForFolderUUID:.cold.1()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_3(&dword_272442000, v0, v1, "%s -- fetch request failed - error: %@", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

void __56__RCSavedRecordingsModel_reconcileChangedFolder_change___block_invoke_cold_1()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_3(&dword_272442000, v0, v1, "%s -- fetchError = %@", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

void __53__RCSavedRecordingsModel___saveManagedObjectContext___block_invoke_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_9(a1, *MEMORY[0x277D85DE8]);
  v4[0] = 136315394;
  OUTLINED_FUNCTION_2();
  v5 = v1;
  _os_log_fault_impl(&dword_272442000, v2, OS_LOG_TYPE_FAULT, "%s -- ERROR: Attempt to save database failed, possibly due to an entity with an invalid value.  Core Data error = %@", v4, 0x16u);
  v3 = *MEMORY[0x277D85DE8];
}

+ (void)_copyFileIntoRecordingsDirectory:(uint64_t *)a1 error:.cold.1(uint64_t *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v1 = *a1;
  }

  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3(&dword_272442000, v2, v3, "%s -- Warning: Could not copy audio file to recordings directory. %@", v4, v5, v6, v7, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

void __66__RCSavedRecordingsModel_objectIDsForRecordingsNeedingAssetExport__block_invoke_cold_1()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_3(&dword_272442000, v0, v1, "%s -- fetch request failed - error: %@", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

void __50__RCSavedRecordingsModel_encryptedFieldMigrations__block_invoke_cold_1()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_3(&dword_272442000, v0, v1, "%s -- Failed to fetch migrations, error = %@", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_recordingsWithFetchRequest:.cold.1()
{
  v4 = *MEMORY[0x277D85DE8];
  v3 = 136315650;
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_4(&dword_272442000, v0, v1, "%s -- Recordings fetch request failed - error = %@, fetch request = %@", v3);
  v2 = *MEMORY[0x277D85DE8];
}

void __46__RCSavedRecordingsModel_recordingsWithTitle___block_invoke_cold_1()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_3(&dword_272442000, v0, v1, "%s -- Failed to executeFetchRequest %@", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

void __95__RCSavedRecordingsModel_ExportAdditions__fetchMetadataForRecordingWithUUID_completionHandler___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v4 = 136315394;
  v5 = "+[RCSavedRecordingsModel(ExportAdditions) fetchMetadataForRecordingWithUUID:completionHandler:]_block_invoke";
  v6 = 2112;
  v7 = v2;
  _os_log_debug_impl(&dword_272442000, a2, OS_LOG_TYPE_DEBUG, "%s -- Failed to access secure url for recording with UUID %@", &v4, 0x16u);
  v3 = *MEMORY[0x277D85DE8];
}

@end