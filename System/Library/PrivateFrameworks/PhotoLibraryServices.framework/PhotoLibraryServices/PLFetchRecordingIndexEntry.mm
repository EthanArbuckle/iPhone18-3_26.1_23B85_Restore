@interface PLFetchRecordingIndexEntry
- (PLFetchRecordingFileNormalizedStatementHeader)entryLocked_statementEntryFomBuffer:(void *)buffer;
- (PLFetchRecordingIndexEntry)initWithOffset:(int64_t)offset;
@end

@implementation PLFetchRecordingIndexEntry

- (PLFetchRecordingFileNormalizedStatementHeader)entryLocked_statementEntryFomBuffer:(void *)buffer
{
  if (!buffer)
  {
    return 0;
  }

  if ([(PLFetchRecordingIndexEntry *)self unavailable])
  {
    return 0;
  }

  return (buffer + [(PLFetchRecordingIndexEntry *)self offset]);
}

- (PLFetchRecordingIndexEntry)initWithOffset:(int64_t)offset
{
  if (offset <= 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLFetchRecording.m" lineNumber:182 description:{@"Invalid parameter not satisfying: %@", @"offset > 0"}];
  }

  v8.receiver = self;
  v8.super_class = PLFetchRecordingIndexEntry;
  result = [(PLFetchRecordingIndexEntry *)&v8 init];
  if (result)
  {
    result->_entryLock._os_unfair_lock_opaque = 0;
    result->_offset = offset;
  }

  return result;
}

@end