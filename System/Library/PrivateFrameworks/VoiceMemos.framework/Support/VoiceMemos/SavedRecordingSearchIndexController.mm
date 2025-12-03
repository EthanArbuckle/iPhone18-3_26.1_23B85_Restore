@interface SavedRecordingSearchIndexController
+ (id)_lookupSearchableItemForRecordingInModel:(id)model recordingURI:(id)i;
- (BOOL)deleteSearchMetadata:(id *)metadata;
- (SavedRecordingSearchIndexController)init;
- (id)_voiceMemosSearchableIndex;
- (void)_reloadSearchMetadataAsReset:(BOOL)reset completionBlock:(id)block;
- (void)_updateSearchMetadataWithRecordingURIsToInsert:(id)insert recordingURIsToUpdate:(id)update recordingURIsToDelete:(id)delete completionBlock:(id)block;
@end

@implementation SavedRecordingSearchIndexController

- (SavedRecordingSearchIndexController)init
{
  v6.receiver = self;
  v6.super_class = SavedRecordingSearchIndexController;
  v2 = [(SavedRecordingSearchIndexController *)&v6 init];
  if (v2)
  {
    v3 = dispatch_queue_create(0, 0);
    processingQueue = v2->_processingQueue;
    v2->_processingQueue = v3;
  }

  return v2;
}

- (BOOL)deleteSearchMetadata:(id *)metadata
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = sub_100001D9C;
  v17 = sub_10000CDC4;
  v18 = 0;
  if (self->__searchableIndex)
  {
    v5 = dispatch_semaphore_create(0);
    searchableIndex = self->__searchableIndex;
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_10000CDCC;
    v10[3] = &unk_100055718;
    v12 = &v13;
    v7 = v5;
    v11 = v7;
    [(CSSearchableIndex *)searchableIndex deleteAllSearchableItemsWithCompletionHandler:v10];
    dispatch_semaphore_wait(v7, 0xFFFFFFFFFFFFFFFFLL);
    if (metadata)
    {
      *metadata = v14[5];
    }

    v8 = v14[5] != 0;
  }

  else
  {
    v8 = 0;
  }

  _Block_object_dispose(&v13, 8);

  return v8;
}

- (id)_voiceMemosSearchableIndex
{
  searchableIndex = self->__searchableIndex;
  if (!searchableIndex)
  {
    v4 = [CSSearchableIndex alloc];
    v5 = [v4 initWithName:@"VoiceMemos" protectionClass:NSFileProtectionCompleteUnlessOpen bundleIdentifier:RCVoiceMemosBundleID];
    v6 = self->__searchableIndex;
    self->__searchableIndex = v5;

    searchableIndex = self->__searchableIndex;
  }

  return searchableIndex;
}

- (void)_reloadSearchMetadataAsReset:(BOOL)reset completionBlock:(id)block
{
  blockCopy = block;
  _voiceMemosSearchableIndex = [(SavedRecordingSearchIndexController *)self _voiceMemosSearchableIndex];
  v8 = [[SerializedIndexUpdateTransaction alloc] initWithSearchIndex:_voiceMemosSearchableIndex identifier:@"SavedRecordingSearchIndexController.reload"];
  v9 = dispatch_queue_create(0, 0);
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_10000D004;
  v16[3] = &unk_1000557F8;
  resetCopy = reset;
  v17 = v8;
  v18 = _voiceMemosSearchableIndex;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10000D330;
  v13[3] = &unk_1000554A8;
  v14 = v17;
  v15 = blockCopy;
  v10 = v17;
  v11 = blockCopy;
  v12 = _voiceMemosSearchableIndex;
  [(SerializedIndexUpdateTransaction *)v10 performTransactionOnQueue:v9 processingBlock:v16 finishedBlock:v13];
}

- (void)_updateSearchMetadataWithRecordingURIsToInsert:(id)insert recordingURIsToUpdate:(id)update recordingURIsToDelete:(id)delete completionBlock:(id)block
{
  blockCopy = block;
  if (insert)
  {
    insertCopy = insert;
  }

  else
  {
    insertCopy = &__NSArray0__struct;
  }

  v12 = insertCopy;
  deleteCopy = delete;
  updateCopy = update;
  v15 = updateCopy;
  if (updateCopy)
  {
    v16 = updateCopy;
  }

  else
  {
    v16 = &__NSArray0__struct;
  }

  v17 = v16;

  if (deleteCopy)
  {
    v18 = deleteCopy;
  }

  else
  {
    v18 = &__NSArray0__struct;
  }

  v19 = v18;

  _voiceMemosSearchableIndex = [(SavedRecordingSearchIndexController *)self _voiceMemosSearchableIndex];
  v21 = [[SerializedIndexUpdateTransaction alloc] initWithSearchIndex:_voiceMemosSearchableIndex identifier:@"SavedRecordingSearchIndexController.update"];
  processingQueue = self->_processingQueue;
  v32[0] = _NSConcreteStackBlock;
  v32[1] = 3221225472;
  v32[2] = sub_10000D5A8;
  v32[3] = &unk_100055888;
  v33 = v12;
  v34 = v17;
  v35 = v19;
  v36 = v21;
  v37 = _voiceMemosSearchableIndex;
  v29[0] = _NSConcreteStackBlock;
  v29[1] = 3221225472;
  v29[2] = sub_10000D950;
  v29[3] = &unk_1000554A8;
  v30 = v36;
  v31 = blockCopy;
  v23 = v36;
  v24 = blockCopy;
  v25 = _voiceMemosSearchableIndex;
  v26 = v19;
  v27 = v17;
  v28 = v12;
  [(SerializedIndexUpdateTransaction *)v23 performTransactionOnQueue:processingQueue processingBlock:v32 finishedBlock:v29];
}

+ (id)_lookupSearchableItemForRecordingInModel:(id)model recordingURI:(id)i
{
  v4 = [model recordingWithURIRepresentation:i];
  v5 = RCSearchableItemForRecording();

  return v5;
}

@end