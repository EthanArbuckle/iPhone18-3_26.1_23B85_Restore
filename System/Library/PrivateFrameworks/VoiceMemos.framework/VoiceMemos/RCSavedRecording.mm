@interface RCSavedRecording
+ (id)fetchLegacyRecordingsForMigrationWithContext:(id)context;
+ (id)legacyRecordingWithUniqueIDFetchRequest:(id)request;
+ (void)deleteOrphanedEntityRevisionsWithContext:(id)context;
- (BOOL)isContentBeingModified;
- (NSString)customLabel;
- (NSString)path;
- (NSURL)url;
- (double)duration;
- (id)URIRepresentation;
- (id)avAsset;
- (int64_t)recordingID;
- (void)_validatePath;
- (void)awakeFromFetch;
- (void)awakeFromInsert;
- (void)setCustomLabel:(id)label;
- (void)setDuration:(double)duration;
- (void)setPath:(id)path;
- (void)setRecordingID:(int64_t)d;
- (void)willSave;
@end

@implementation RCSavedRecording

- (void)awakeFromInsert
{
  v4.receiver = self;
  v4.super_class = RCSavedRecording;
  [(RCSavedRecording *)&v4 awakeFromInsert];
  date = [MEMORY[0x277CBEAA8] date];
  [(RCSavedRecording *)self setDate:date];
}

- (void)awakeFromFetch
{
  v3.receiver = self;
  v3.super_class = RCSavedRecording;
  [(RCSavedRecording *)&v3 awakeFromFetch];
  [(RCSavedRecording *)self _validatePath];
}

- (void)willSave
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:self object:a2 file:@"RCSavedRecording.m" lineNumber:53 description:@"no duration for recording when saving"];
}

- (BOOL)isContentBeingModified
{
  v2 = [(RCSavedRecording *)self url];
  v3 = [RCComposition _isSessionWithModificationAccessActiveForComposedAVURL:v2];

  return v3;
}

- (double)duration
{
  [(RCSavedRecording *)self willAccessValueForKey:@"duration"];
  v3 = [(RCSavedRecording *)self primitiveValueForKey:@"duration"];
  [v3 doubleValue];
  Seconds = v4;

  [(RCSavedRecording *)self didAccessValueForKey:@"duration"];
  if (Seconds < 0.0 && ![(RCSavedRecording *)self isContentBeingModified])
  {
    avAsset = [(RCSavedRecording *)self avAsset];
    v7 = avAsset;
    if (avAsset)
    {
      [avAsset duration];
    }

    else
    {
      memset(&time, 0, sizeof(time));
    }

    Seconds = CMTimeGetSeconds(&time);

    if (Seconds > 0.0)
    {
      [(RCSavedRecording *)self setDuration:Seconds];
    }
  }

  result = 0.0;
  if (Seconds >= 0.0)
  {
    return Seconds;
  }

  return result;
}

- (void)setDuration:(double)duration
{
  [(RCSavedRecording *)self willChangeValueForKey:@"duration"];
  v5 = [MEMORY[0x277CCABB0] numberWithDouble:duration];
  [(RCSavedRecording *)self setPrimitiveValue:v5 forKey:@"duration"];

  avAsset = self->_avAsset;
  self->_avAsset = 0;

  [(RCSavedRecording *)self didChangeValueForKey:@"duration"];
}

- (NSString)customLabel
{
  [(RCSavedRecording *)self willAccessValueForKey:@"customLabel"];
  v3 = [(RCSavedRecording *)self primitiveValueForKey:@"customLabel"];
  [(RCSavedRecording *)self didAccessValueForKey:@"customLabel"];

  return v3;
}

- (void)setCustomLabel:(id)label
{
  v4 = MEMORY[0x277CCA900];
  labelCopy = label;
  whitespaceCharacterSet = [v4 whitespaceCharacterSet];
  v7 = [labelCopy stringByTrimmingCharactersInSet:whitespaceCharacterSet];

  if ([v7 length])
  {
    [(RCSavedRecording *)self willChangeValueForKey:@"customLabel"];
    [(RCSavedRecording *)self setPrimitiveValue:v7 forKey:@"customLabel"];
    [(RCSavedRecording *)self didChangeValueForKey:@"customLabel"];
  }
}

- (int64_t)recordingID
{
  [(RCSavedRecording *)self willAccessValueForKey:@"recordingID"];
  v3 = [(RCSavedRecording *)self primitiveValueForKey:@"recordingID"];
  longLongValue = [v3 longLongValue];

  [(RCSavedRecording *)self didAccessValueForKey:@"recordingID"];
  return longLongValue;
}

- (void)setRecordingID:(int64_t)d
{
  [(RCSavedRecording *)self willChangeValueForKey:@"recordingID"];
  v5 = [MEMORY[0x277CCABB0] numberWithLongLong:d];
  [(RCSavedRecording *)self setPrimitiveValue:v5 forKey:@"recordingID"];

  [(RCSavedRecording *)self didChangeValueForKey:@"recordingID"];
}

- (NSString)path
{
  [(RCSavedRecording *)self willAccessValueForKey:@"path"];
  v3 = [(RCSavedRecording *)self primitiveValueForKey:@"path"];
  [(RCSavedRecording *)self didAccessValueForKey:@"path"];

  return v3;
}

- (void)setPath:(id)path
{
  pathCopy = path;
  [(RCSavedRecording *)self willChangeValueForKey:@"path"];
  [(RCSavedRecording *)self setPrimitiveValue:pathCopy forKey:@"path"];

  [(RCSavedRecording *)self _validatePath];

  [(RCSavedRecording *)self didChangeValueForKey:@"path"];
}

- (NSURL)url
{
  path = [(RCSavedRecording *)self path];

  if (path)
  {
    v4 = MEMORY[0x277CBEBC0];
    path2 = [(RCSavedRecording *)self path];
    v6 = [v4 fileURLWithPath:path2];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)URIRepresentation
{
  objectID = [(RCSavedRecording *)self objectID];
  uRIRepresentation = [objectID URIRepresentation];

  return uRIRepresentation;
}

- (id)avAsset
{
  if (!self->_avAsset)
  {
    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    v4 = [(RCSavedRecording *)self url];
    path = [v4 path];
    v6 = [defaultManager fileExistsAtPath:path];

    if (v6)
    {
      v7 = MEMORY[0x277CE6650];
      v8 = [(RCSavedRecording *)self url];
      v9 = [v7 rc_preciseTimingAssetWithURL:v8];
      avAsset = self->_avAsset;
      self->_avAsset = v9;
    }
  }

  v11 = self->_avAsset;

  return v11;
}

- (void)_validatePath
{
  v13 = *MEMORY[0x277D85DE8];
  path = [self path];
  v7 = 136315650;
  v8 = "[RCSavedRecording _validatePath]";
  v9 = 2112;
  v10 = path;
  v11 = 2112;
  v12 = a2;
  _os_log_error_impl(&dword_272442000, a3, OS_LOG_TYPE_ERROR, "%s -- WARNING: bogus path (%@) detected for recording %@", &v7, 0x20u);

  v6 = *MEMORY[0x277D85DE8];
}

+ (void)deleteOrphanedEntityRevisionsWithContext:(id)context
{
  v22 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  v4 = objc_alloc_init(MEMORY[0x277CBE428]);
  v5 = [MEMORY[0x277CBE408] entityForName:@"Recording" inManagedObjectContext:contextCopy];
  [v4 setEntity:v5];

  [v4 setPropertiesToFetch:&unk_2881AE2A8];
  v6 = [contextCopy executeFetchRequest:v4 error:0];
  v7 = [v6 valueForKey:@"recordingID"];

  v8 = objc_alloc_init(MEMORY[0x277CBE428]);
  v9 = [MEMORY[0x277CBE408] entityForName:@"EntityRevision" inManagedObjectContext:contextCopy];
  [v8 setEntity:v9];

  v10 = [MEMORY[0x277CCAC30] predicateWithFormat:@"NOT (recording_id IN %@)", v7];
  [v8 setPredicate:v10];

  v11 = [contextCopy executeFetchRequest:v8 error:0];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v12 = [v11 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v18;
    do
    {
      v15 = 0;
      do
      {
        if (*v18 != v14)
        {
          objc_enumerationMutation(v11);
        }

        [contextCopy deleteObject:*(*(&v17 + 1) + 8 * v15++)];
      }

      while (v13 != v15);
      v13 = [v11 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v13);
  }

  v16 = *MEMORY[0x277D85DE8];
}

+ (id)fetchLegacyRecordingsForMigrationWithContext:(id)context
{
  v42 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  v4 = objc_alloc_init(MEMORY[0x277CBE428]);
  v5 = [MEMORY[0x277CBE408] entityForName:@"EntityRevision" inManagedObjectContext:contextCopy];
  [v4 setEntity:v5];

  [v4 setPropertiesToFetch:&unk_2881AE2C0];
  v29 = [objc_alloc(MEMORY[0x277CCAC98]) initWithKey:@"revision_id" ascending:1];
  v6 = [MEMORY[0x277CBEA60] arrayWithObject:?];
  [v4 setSortDescriptors:v6];

  v7 = objc_opt_new();
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v30 = v4;
  v8 = [contextCopy executeFetchRequest:v4 error:0];
  v9 = [v8 countByEnumeratingWithState:&v36 objects:v41 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v37;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v37 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v36 + 1) + 8 * i);
        v14 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v13, "revisionID")}];
        v15 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v13, "recordingID")}];
        [v7 setObject:v14 forKeyedSubscript:v15];
      }

      v10 = [v8 countByEnumeratingWithState:&v36 objects:v41 count:16];
    }

    while (v10);
  }

  v16 = objc_alloc_init(MEMORY[0x277CBE428]);
  v17 = [MEMORY[0x277CBE408] entityForName:@"Recording" inManagedObjectContext:contextCopy];
  [v16 setEntity:v17];

  [v16 setPropertiesToFetch:&unk_2881AE2D8];
  v31 = contextCopy;
  v18 = [contextCopy executeFetchRequest:v16 error:0];
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v19 = [v18 countByEnumeratingWithState:&v32 objects:v40 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v33;
    do
    {
      for (j = 0; j != v20; ++j)
      {
        if (*v33 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v23 = *(*(&v32 + 1) + 8 * j);
        v24 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v23, "recordingID")}];
        v25 = [v7 objectForKeyedSubscript:v24];
        [v23 setRevisionID:{objc_msgSend(v25, "longLongValue")}];
      }

      v20 = [v18 countByEnumeratingWithState:&v32 objects:v40 count:16];
    }

    while (v20);
  }

  v26 = [v18 sortedArrayUsingComparator:&__block_literal_global_4];

  v27 = *MEMORY[0x277D85DE8];

  return v26;
}

uint64_t __65__RCSavedRecording_fetchLegacyRecordingsForMigrationWithContext___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 revisionID];
  v6 = [v4 revisionID];

  if (v5 < v6)
  {
    return -1;
  }

  else
  {
    return v5 > v6;
  }
}

+ (id)legacyRecordingWithUniqueIDFetchRequest:(id)request
{
  v3 = MEMORY[0x277CBE428];
  requestCopy = request;
  v5 = [v3 fetchRequestWithEntityName:@"Recording"];
  requestCopy = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K == %@", @"uniqueID", requestCopy];

  [v5 setPredicate:requestCopy];

  return v5;
}

@end