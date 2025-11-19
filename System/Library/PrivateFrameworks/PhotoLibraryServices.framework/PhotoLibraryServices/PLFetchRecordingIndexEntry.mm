@interface PLFetchRecordingIndexEntry
- (PLFetchRecordingFileNormalizedStatementHeader)entryLocked_statementEntryFomBuffer:(void *)a3;
- (PLFetchRecordingIndexEntry)initWithOffset:(int64_t)a3;
@end

@implementation PLFetchRecordingIndexEntry

- (PLFetchRecordingFileNormalizedStatementHeader)entryLocked_statementEntryFomBuffer:(void *)a3
{
  if (!a3)
  {
    return 0;
  }

  if ([(PLFetchRecordingIndexEntry *)self unavailable])
  {
    return 0;
  }

  return (a3 + [(PLFetchRecordingIndexEntry *)self offset]);
}

- (PLFetchRecordingIndexEntry)initWithOffset:(int64_t)a3
{
  if (a3 <= 0)
  {
    v7 = [MEMORY[0x1E696AAA8] currentHandler];
    [v7 handleFailureInMethod:a2 object:self file:@"PLFetchRecording.m" lineNumber:182 description:{@"Invalid parameter not satisfying: %@", @"offset > 0"}];
  }

  v8.receiver = self;
  v8.super_class = PLFetchRecordingIndexEntry;
  result = [(PLFetchRecordingIndexEntry *)&v8 init];
  if (result)
  {
    result->_entryLock._os_unfair_lock_opaque = 0;
    result->_offset = a3;
  }

  return result;
}

@end