@interface PLFetchRecording
+ (BOOL)_statsForStatementAreInteresting:(PLFetchRecordingFileNormalizedStatementHeader *)a3 totalPages:(unsigned int)a4;
+ (BOOL)deleteRecording:(id)a3 error:(id *)a4;
+ (PLFetchRecordingFileNormalizedStatementHeader)_currentVersionHeaderFrom_053Header:(PLFetchRecordingFileNormalizedStatementHeader_053 *)a3;
+ (_NSRange)_indexLocked_allocateSizeToFit:(unint64_t)a3 fileHeaderSize:(unint64_t)a4 currentEOF:(int64_t)a5 buffer:(void *)a6 bufferLength:(unint64_t)a7 index:(id)a8;
+ (double)meanPageCountForEntryHeader:(PLFetchRecordingFileNormalizedStatementHeader *)a3;
+ (double)varPageCountForEntryHeader:(PLFetchRecordingFileNormalizedStatementHeader *)a3;
+ (id)_backtrace;
+ (id)backtraceForEntryHeader:(PLFetchRecordingFileNormalizedStatementHeader *)a3;
+ (id)multiInCountsForEntryHeader:(PLFetchRecordingFileNormalizedStatementHeader *)a3;
+ (id)suggestedFilenameForCurrentProcess;
+ (void)_indexLocked_enumerateEntryHeadersFromBuffer:(const void *)a3 bufferLength:(unint64_t)a4 fileVersion:(id)a5 fileHeaderSize:(unint64_t)a6 block:(id)a7;
+ (void)_indexLocked_enumerateVariationsFromEntryHeader:(PLFetchRecordingFileNormalizedStatementHeader *)a3 block:(id)a4;
+ (void)_indexLocked_populateStatementIndex:(id)a3 fromBuffer:(void *)a4 bufferLength:(unint64_t)a5 fileHeaderSize:(unint64_t)a6 fileVersion:(id)a7;
+ (void)_updateRunningStatisticsForEntry:(PLFetchRecordingFileNormalizedStatementHeader *)a3 givenPageCount:(unsigned int)a4;
+ (void)_writeInitialHeaderToBuffer:(void *)a3 bufferLen:(unint64_t)a4;
- (BOOL)_indexLocked_remapFile;
- (BOOL)recordStatementWithNormalizedSQL:(id)a3 bindVariablesAsString:(id)a4 multiInCounts:(id)a5 contextName:(id)a6 pagesHit:(unsigned int)a7 pagesMissed:(unsigned int)a8 rowCount:(unsigned int)a9 duration:(double)a10 QOS:(unsigned int)a11;
- (BOOL)remap;
- (PLFetchRecording)initWithMode:(unint64_t)a3 atFileURL:(id)a4 size:(unint64_t)a5;
- (PLFetchRecordingFileNormalizedStatementHeader)entryForNormalizedSQL:(id)a3;
- (void)_considerIfRemapIsNeeded;
- (void)_indexLocked_close;
- (void)_indexLocked_unmapFile;
- (void)_recordVariationWithEntryHeader:(PLFetchRecordingFileNormalizedStatementHeader *)a3 timestamp:(double)a4 pagesHit:(unsigned int)a5 pagesMissed:(unsigned int)a6 rowsAffected:(unsigned int)a7 duration:(double)a8 QOS:(unsigned int)a9;
- (void)_scheduleRemapAfterDelay;
- (void)close;
- (void)dealloc;
- (void)enumerateEntryHeaders:(id)a3;
- (void)enumerateVariationsFromEntryHeader:(PLFetchRecordingFileNormalizedStatementHeader *)a3 block:(id)a4;
@end

@implementation PLFetchRecording

- (BOOL)recordStatementWithNormalizedSQL:(id)a3 bindVariablesAsString:(id)a4 multiInCounts:(id)a5 contextName:(id)a6 pagesHit:(unsigned int)a7 pagesMissed:(unsigned int)a8 rowCount:(unsigned int)a9 duration:(double)a10 QOS:(unsigned int)a11
{
  v12 = *&a8;
  v13 = *&a7;
  v18 = a3;
  v19 = a4;
  v20 = a5;
  v21 = a6;
  v22 = objc_autoreleasePoolPush();
  Current = CFAbsoluteTimeGetCurrent();
  os_unfair_lock_lock(&self->_indexLock);
  if (![(PLFetchRecording *)self _indexLocked_canRead])
  {
LABEL_9:
    os_unfair_lock_unlock(&self->_indexLock);
    goto LABEL_10;
  }

  v24 = [(PLFetchRecording *)self fileHeader];
  if (![v18 length])
  {
    v32 = PLBackendGetLog();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_19BF1F000, v32, OS_LOG_TYPE_DEBUG, "LOFR no normalized sql", buf, 2u);
    }

    ++*(&v24->var7 + 2);
    goto LABEL_9;
  }

  v25 = _hashForSQL(v18);
  if ([v25 length])
  {
    v63 = v21;
    v64 = v19;
    v26 = v13;
    v27 = v12;
    v28 = [(NSMutableDictionary *)self->_indexLocked_indexEntriesByNormSQLHash objectForKeyedSubscript:v25];
    v29 = v28;
    if (v28)
    {
      [v28 lock];
      v30 = [v29 entryLocked_statementEntryFomBuffer:self->_indexLocked_buffer];
      os_unfair_lock_unlock(&self->_indexLock);
      v61 = 0;
      v62 = 0;
      v31 = 1;
      v60 = 0x7FFFFFFFFFFFFFFFLL;
      goto LABEL_25;
    }

    v59 = v25;
    v56 = v22;
    v57 = v20;
    v35 = [v20 componentsJoinedByString:{@", "}];
    v36 = [objc_opt_class() _backtrace];
    v37 = [v36 dataUsingEncoding:4];
    v38 = [v37 compressedDataUsingAlgorithm:0 error:0];

    LODWORD(v36) = [v18 length];
    LODWORD(v37) = [v64 length];
    v62 = v35;
    v39 = [v35 length];
    LODWORD(v35) = [v63 length];
    v61 = v38;
    v40 = v36 + v37 + v39 + v35 + [v38 length] + 269;
    if (v40 <= 0xA000)
    {
      v42 = [objc_opt_class() _indexLocked_allocateSizeToFit:v40 fileHeaderSize:self->_fileHeaderSize currentEOF:*(&v24->var5 + 2) buffer:self->_indexLocked_buffer bufferLength:self->_indexLocked_bufferLen index:self->_indexLocked_indexEntriesByNormSQLHash];
      if (v42 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v44 = PLBackendGetLog();
        v22 = v56;
        v20 = v57;
        v25 = v59;
        if (os_log_type_enabled(v44, OS_LOG_TYPE_DEBUG))
        {
          *v67 = 0;
          _os_log_impl(&dword_19BF1F000, v44, OS_LOG_TYPE_DEBUG, "LOFR failed to allocate space.", v67, 2u);
        }

        os_unfair_lock_unlock(&self->_indexLock);
        v30 = 0;
        v31 = 0;
        v60 = 0x7FFFFFFFFFFFFFFFLL;
        v29 = 0;
LABEL_25:
        if ([v29 unavailable])
        {
          v47 = PLBackendGetLog();
          if (os_log_type_enabled(v47, OS_LOG_TYPE_DEBUG))
          {
            v66 = 0;
            v48 = "LOFR Can't use this index as it was just made unavailable";
            v49 = &v66;
            v50 = v47;
            v51 = OS_LOG_TYPE_DEBUG;
LABEL_40:
            _os_log_impl(&dword_19BF1F000, v50, v51, v48, v49, 2u);
          }
        }

        else
        {
          if (v30)
          {
            if (!v29)
            {
              v58 = v20;
              strncpy(v30 + 105, [v18 UTF8String], *(v30 + 93) + 1);
              v52 = &v30[*(v30 + 93) + 106];
              strncpy(v52, [v64 UTF8String], *(v30 + 95) + 1);
              v53 = &v52[*(v30 + 95) + 1];
              if (v62)
              {
                strncpy(v53, [v62 UTF8String], *(v30 + 97) + 1);
              }

              v54 = &v53[*(v30 + 97) + 1];
              strncpy(v54, [v63 UTF8String], *(v30 + 99) + 1);
              memcpy(&v54[*(v30 + 99) + 1], [v61 bytes], objc_msgSend(v61, "length"));
              v29 = 0;
              v20 = v58;
            }

            *(v30 + 49) += v26;
            *(v30 + 53) += v27;
            *(v30 + 41) = Current;
            if (v30[103] < 5u || [objc_opt_class() _statsForStatementAreInteresting:v30 totalPages:(v27 + v26)])
            {
              [(PLFetchRecording *)self _recordVariationWithEntryHeader:v30 timestamp:v26 pagesHit:v27 pagesMissed:a9 rowsAffected:a11 duration:Current QOS:a10];
            }

            [objc_opt_class() _updateRunningStatisticsForEntry:v30 givenPageCount:(v27 + v26)];
            if (v29)
            {
              [v29 unlock];
            }

            else
            {
              v55 = [[PLFetchRecordingIndexEntry alloc] initWithOffset:v60];
              [(NSMutableDictionary *)self->_indexLocked_indexEntriesByNormSQLHash setObject:v55 forKeyedSubscript:v25];
              os_unfair_lock_unlock(&self->_indexLock);
            }

            goto LABEL_44;
          }

          v47 = PLBackendGetLog();
          if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
          {
            *v65 = 0;
            v48 = "LOFR Unable to create new entry.";
            v49 = v65;
            v50 = v47;
            v51 = OS_LOG_TYPE_ERROR;
            goto LABEL_40;
          }
        }

        v31 = 0;
LABEL_44:
        v21 = v63;
        v19 = v64;
        goto LABEL_11;
      }

      v45 = v42;
      v46 = v43;
      v30 = self->_indexLocked_buffer + v42;
      *v30 = (v43 >> 11) - 80;
      v25 = v59;
      memcpy(v30 + 1, [v59 bytes], objc_msgSend(v59, "length"));
      *(v30 + 33) = Current;
      *(v30 + 93) = [v18 length];
      *(v30 + 95) = [v64 length];
      *(v30 + 99) = [v63 length];
      *(v30 + 97) = [v62 length];
      *(v30 + 101) = [v61 length];
      *(v30 + 57) = 0;
      v60 = v45;
      *(&v24->var5 + 2) = v45 + v46;
      v31 = 1;
      atomic_fetch_add(&self->_numberOfAllocationsSinceLastRemap, 1u);
      [(PLFetchRecording *)self _considerIfRemapIsNeeded];
      v22 = v56;
    }

    else
    {
      v41 = PLBackendGetLog();
      if (os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG))
      {
        *v68 = 0;
        _os_log_impl(&dword_19BF1F000, v41, OS_LOG_TYPE_DEBUG, "LOFR entry is too large to fit.", v68, 2u);
      }

      ++*(&v24->var7 + 2);
      os_unfair_lock_unlock(&self->_indexLock);
      v30 = 0;
      v31 = 0;
      v60 = 0x7FFFFFFFFFFFFFFFLL;
      v22 = v56;
      v25 = v59;
    }

    v20 = v57;
    v29 = 0;
    goto LABEL_25;
  }

  v34 = PLBackendGetLog();
  if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
  {
    *v69 = 0;
    _os_log_impl(&dword_19BF1F000, v34, OS_LOG_TYPE_DEBUG, "LOFR can't hash sql", v69, 2u);
  }

  ++*(&v24->var7 + 2);
  os_unfair_lock_unlock(&self->_indexLock);

LABEL_10:
  v31 = 0;
LABEL_11:
  objc_autoreleasePoolPop(v22);

  return v31;
}

- (void)enumerateVariationsFromEntryHeader:(PLFetchRecordingFileNormalizedStatementHeader *)a3 block:(id)a4
{
  v8 = a4;
  if (!v8)
  {
    v7 = [MEMORY[0x1E696AAA8] currentHandler];
    [v7 handleFailureInMethod:a2 object:self file:@"PLFetchRecording.m" lineNumber:953 description:{@"Invalid parameter not satisfying: %@", @"block"}];
  }

  os_unfair_lock_assert_owner(&self->_indexLock);
  [objc_opt_class() _indexLocked_enumerateVariationsFromEntryHeader:a3 block:v8];
}

- (void)enumerateEntryHeaders:(id)a3
{
  v6 = a3;
  if (!v6)
  {
    v5 = [MEMORY[0x1E696AAA8] currentHandler];
    [v5 handleFailureInMethod:a2 object:self file:@"PLFetchRecording.m" lineNumber:939 description:{@"Invalid parameter not satisfying: %@", @"block"}];
  }

  os_unfair_lock_lock(&self->_indexLock);
  if ([(PLFetchRecording *)self _indexLocked_canRead])
  {
    [objc_opt_class() _indexLocked_enumerateEntryHeadersFromBuffer:self->_indexLocked_buffer bufferLength:self->_indexLocked_bufferLen fileVersion:self->_fileVersion fileHeaderSize:self->_fileHeaderSize block:v6];
  }

  os_unfair_lock_unlock(&self->_indexLock);
}

- (PLFetchRecordingFileNormalizedStatementHeader)entryForNormalizedSQL:(id)a3
{
  v4 = _hashForSQL(a3);
  v5 = [(NSMutableDictionary *)self->_indexLocked_indexEntriesByNormSQLHash objectForKeyedSubscript:v4];
  v6 = v5;
  if (v5)
  {
    [v5 lock];
    v7 = [v6 entryLocked_statementEntryFomBuffer:self->_indexLocked_buffer];
    [v6 unlock];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)remap
{
  os_unfair_lock_lock(&self->_indexLock);
  v3 = [(PLFetchRecording *)self _indexLocked_remapFile];
  os_unfair_lock_unlock(&self->_indexLock);
  return v3;
}

- (void)close
{
  os_unfair_lock_lock(&self->_indexLock);
  [(PLFetchRecording *)self _indexLocked_close];

  os_unfair_lock_unlock(&self->_indexLock);
}

- (void)dealloc
{
  os_unfair_lock_lock(&self->_indexLock);
  [(PLFetchRecording *)self _indexLocked_close];
  os_unfair_lock_unlock(&self->_indexLock);
  v3.receiver = self;
  v3.super_class = PLFetchRecording;
  [(PLFetchRecording *)&v3 dealloc];
}

- (PLFetchRecording)initWithMode:(unint64_t)a3 atFileURL:(id)a4 size:(unint64_t)a5
{
  v50 = *MEMORY[0x1E69E9840];
  v9 = a4;
  if (v9)
  {
    if (!a3)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v43 = [MEMORY[0x1E696AAA8] currentHandler];
    [v43 handleFailureInMethod:a2 object:self file:@"PLFetchRecording.m" lineNumber:694 description:{@"Invalid parameter not satisfying: %@", @"url"}];

    if (!a3)
    {
      goto LABEL_5;
    }
  }

  if (a5 <= 0xEA)
  {
    v42 = [MEMORY[0x1E696AAA8] currentHandler];
    [v42 handleFailureInMethod:a2 object:self file:@"PLFetchRecording.m" lineNumber:695 description:{@"Invalid parameter not satisfying: %@", @"mode == PLFetchRecordingFileModeReadOnly || fileSize > sizeof(PLFetchRecordingFileHeader)"}];
  }

LABEL_5:
  v44.receiver = self;
  v44.super_class = PLFetchRecording;
  v10 = [(PLFetchRecording *)&v44 init];
  v11 = v10;
  if (v10)
  {
    v10->_fd = -1;
    v10->_indexLocked_buffer = -1;
    v10->_indexLocked_bufferLen = 0;
    v12 = dispatch_queue_create("com.apple.photos.fetchrecorder.remapqueue", 0);
    remapQueue = v11->_remapQueue;
    v11->_remapQueue = v12;

    v14 = [v9 path];
    v15 = [v14 fileSystemRepresentation];

    if (a3)
    {
      v16 = open(v15, 514, 436);
    }

    else
    {
      v16 = open(v15, 0, 436);
    }

    if (v16 == -1)
    {
      v26 = *__error();
      v27 = PLBackendGetLog();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        v28 = strerror(v26);
        v45.st_dev = 136315650;
        *&v45.st_mode = v15;
        WORD2(v45.st_ino) = 2080;
        *(&v45.st_ino + 6) = v28;
        HIWORD(v45.st_gid) = 1024;
        v45.st_rdev = v26;
        _os_log_impl(&dword_19BF1F000, v27, OS_LOG_TYPE_ERROR, "LOFR Could not open recording file at path %s: %s (%d)", &v45, 0x1Cu);
      }

      goto LABEL_49;
    }

    v17 = v16;
    if (a3 != 1 || (memset(&v45, 0, sizeof(v45)), fstat(v16, &v45) != -1) && v45.st_size)
    {
      v18 = 1;
LABEL_14:
      v11->_maxFileSize = a5;
      v11->_indexLock._os_unfair_lock_opaque = 0;
      v19 = [v9 copy];
      url = v11->_url;
      v11->_url = v19;

      v11->_mode = a3;
      v11->_fd = v17;
      atomic_store(0, &v11->_numberOfAllocationsSinceLastRemap);
      os_unfair_lock_lock(&v11->_indexLock);
      v21 = [(PLFetchRecording *)v11 _indexLocked_remapFile];
      v22 = v21;
      if (v18 && v21)
      {
        v23 = [MEMORY[0x1E696AEC0] stringWithCString:v11->_indexLocked_buffer + 2 encoding:4];
        fileVersion = v11->_fileVersion;
        v11->_fileVersion = v23;

        if ([(NSString *)v11->_fileVersion isEqualToString:@"0.54"]|| [(NSString *)v11->_fileVersion isEqualToString:@"0.53"])
        {
          v25 = 234;
LABEL_19:
          v11->_fileHeaderSize = v25;
          os_unfair_lock_unlock(&v11->_indexLock);
LABEL_24:
          if ((v18 & 1) == 0)
          {
            [objc_opt_class() _writeInitialHeaderToBuffer:v11->_indexLocked_buffer bufferLen:v11->_indexLocked_bufferLen];
            v11->_fileHeaderSize = 234;
          }

          if (a3 == 1)
          {
            os_unfair_lock_lock(&v11->_indexLock);
            v29 = [MEMORY[0x1E695DF90] dictionary];
            [objc_opt_class() _indexLocked_populateStatementIndex:v29 fromBuffer:v11->_indexLocked_buffer bufferLength:v11->_indexLocked_bufferLen fileHeaderSize:v11->_fileHeaderSize fileVersion:v11->_fileVersion];
            indexLocked_indexEntriesByNormSQLHash = v11->_indexLocked_indexEntriesByNormSQLHash;
            v11->_indexLocked_indexEntriesByNormSQLHash = v29;

            os_unfair_lock_unlock(&v11->_indexLock);
          }

          goto LABEL_28;
        }

        if ([(NSString *)v11->_fileVersion isEqualToString:@"0.52"])
        {
          v25 = 228;
          goto LABEL_19;
        }

        v35 = PLBackendGetLog();
        if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
        {
          v36 = v11->_fileVersion;
          v45.st_dev = 138412546;
          *&v45.st_mode = v36;
          WORD2(v45.st_ino) = 2112;
          *(&v45.st_ino + 6) = v9;
          _os_log_impl(&dword_19BF1F000, v35, OS_LOG_TYPE_ERROR, "PLFetchRecording: reader does not recognize file version: %@ for file at url: %@", &v45, 0x16u);
        }

        [(PLFetchRecording *)v11 _indexLocked_unmapFile];
        os_unfair_lock_unlock(&v11->_indexLock);
      }

      else
      {
        os_unfair_lock_unlock(&v11->_indexLock);
        if (v22)
        {
          goto LABEL_24;
        }
      }

      goto LABEL_48;
    }

    if (a5 && v17 >= 1)
    {
      *&v45.st_dev = 0x300000006;
      v45.st_ino = 0;
      *&v45.st_uid = a5;
      *&v45.st_rdev = 0;
      if (fcntl(v17, 42, &v45) == -1)
      {
        v32 = PLBackendGetLog();
        if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
        {
          v33 = __error();
          v34 = strerror(*v33);
          *buf = 67109378;
          v47 = v17;
          v48 = 2080;
          v49 = v34;
          _os_log_impl(&dword_19BF1F000, v32, OS_LOG_TYPE_ERROR, "LOFR expand: F_PREALLOCATE of %d returned -1: error=%s", buf, 0x12u);
        }
      }

      if (ftruncate(v17, a5) != -1)
      {
        v18 = 0;
        goto LABEL_14;
      }

      v37 = PLBackendGetLog();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
      {
        v38 = __error();
        v39 = strerror(*v38);
        *buf = 67109378;
        v47 = v17;
        v48 = 2080;
        v49 = v39;
        _os_log_impl(&dword_19BF1F000, v37, OS_LOG_TYPE_ERROR, "LOFR expand: F_TRUNCATE of %d returned -1: error=%s", buf, 0x12u);
      }
    }

    v40 = PLBackendGetLog();
    if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
    {
      v45.st_dev = 134217984;
      *&v45.st_mode = a5;
      _os_log_impl(&dword_19BF1F000, v40, OS_LOG_TYPE_ERROR, "LOFR Could not expand empty file to specified size: %ld", &v45, 0xCu);
    }

LABEL_48:
    close(v17);
LABEL_49:
    v31 = 0;
    goto LABEL_50;
  }

LABEL_28:
  v31 = v11;
LABEL_50:

  return v31;
}

- (void)_considerIfRemapIsNeeded
{
  v2 = atomic_load(&self->_numberOfAllocationsSinceLastRemap);
  if (v2 >= 0x32 && (atomic_exchange(&self->_remapPending._Value, 1u) & 1) == 0)
  {
    [(PLFetchRecording *)self _scheduleRemapAfterDelay];
    atomic_store(0, &self->_numberOfAllocationsSinceLastRemap);
  }
}

- (void)_scheduleRemapAfterDelay
{
  v3 = os_transaction_create();
  v4 = dispatch_time(0, 1000000000);
  remapQueue = self->_remapQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __44__PLFetchRecording__scheduleRemapAfterDelay__block_invoke;
  v7[3] = &unk_1E7578848;
  v7[4] = self;
  v8 = v3;
  v6 = v3;
  dispatch_after(v4, remapQueue, v7);
}

void __44__PLFetchRecording__scheduleRemapAfterDelay__block_invoke(uint64_t a1)
{
  v2 = os_unfair_lock_trylock((*(a1 + 32) + 56));
  v3 = *(a1 + 32);
  if (v2)
  {
    [v3 _indexLocked_remapFile];
    atomic_store(0, (*(a1 + 32) + 12));
    v4 = (*(a1 + 32) + 56);

    os_unfair_lock_unlock(v4);
  }

  else
  {

    [v3 _scheduleRemapAfterDelay];
  }
}

- (void)_recordVariationWithEntryHeader:(PLFetchRecordingFileNormalizedStatementHeader *)a3 timestamp:(double)a4 pagesHit:(unsigned int)a5 pagesMissed:(unsigned int)a6 rowsAffected:(unsigned int)a7 duration:(double)a8 QOS:(unsigned int)a9
{
  v16 = a3 + 32 * LOBYTE(a3->var11) + *(&a3->var9 + 5) + *(&a3->var9 + 7) + *(&a3->var10 + 1) + *(&a3->var10 + 3) + *(&a3->var10 + 5);
  [objc_opt_class() _assertAddress:v16 + 109 isValidWithLength:32 buffer:self->_indexLocked_buffer bufferLength:self->_indexLocked_bufferLen];
  *(v16 + 109) = a4;
  *(v16 + 117) = a9;
  *(v16 + 121) = a8;
  *(v16 + 133) = a6;
  *(v16 + 129) = a5;
  *(v16 + 137) = a7;
  var10_high = HIBYTE(a3->var10);
  if (var10_high <= 4)
  {
    HIBYTE(a3->var10) = var10_high + 1;
  }

  var11 = a3->var11;
  if ((var11 + 1) <= 4u)
  {
    v19 = var11 + 1;
  }

  else
  {
    v19 = 0;
  }

  LOBYTE(a3->var11) = v19;
}

- (void)_indexLocked_close
{
  [(PLFetchRecording *)self _indexLocked_unmapFile];
  fd = self->_fd;
  if ((fd & 0x80000000) == 0)
  {
    close(fd);
    self->_fd = -1;
  }
}

- (BOOL)_indexLocked_remapFile
{
  v19 = *MEMORY[0x1E69E9840];
  os_unfair_lock_assert_owner(&self->_indexLock);
  [(NSMutableDictionary *)self->_indexLocked_indexEntriesByNormSQLHash enumerateKeysAndObjectsWithOptions:0 usingBlock:&__block_literal_global_66348];
  [(PLFetchRecording *)self _indexLocked_unmapFile];
  mode = self->_mode;
  fd = self->_fd;
  memset(&v18, 0, sizeof(v18));
  if (fstat(fd, &v18) == -1 || (st_size = v18.st_size) == 0)
  {
    v9 = PLBackendGetLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      url = self->_url;
      v18.st_dev = 138412290;
      *&v18.st_mode = url;
      v11 = "LOFR Could not remap zero length recording file at: %@";
      v12 = v9;
      v13 = 12;
LABEL_12:
      _os_log_impl(&dword_19BF1F000, v12, OS_LOG_TYPE_ERROR, v11, &v18, v13);
    }

LABEL_13:

    v8 = 0;
    goto LABEL_14;
  }

  if (mode)
  {
    v6 = 3;
  }

  else
  {
    v6 = 1;
  }

  v7 = mmap(0, v18.st_size, v6, 1, self->_fd, 0);
  if (v7 == -1)
  {
    v14 = *__error();
    v9 = PLBackendGetLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v15 = self->_url;
      v16 = strerror(v14);
      v18.st_dev = 138412802;
      *&v18.st_mode = v15;
      WORD2(v18.st_ino) = 2080;
      *(&v18.st_ino + 6) = v16;
      HIWORD(v18.st_gid) = 1024;
      v18.st_rdev = v14;
      v11 = "LOFR Could not remap recording file at: %@, %s (%d)";
      v12 = v9;
      v13 = 28;
      goto LABEL_12;
    }

    goto LABEL_13;
  }

  self->_indexLocked_buffer = v7;
  self->_indexLocked_bufferLen = st_size;
  v8 = 1;
LABEL_14:
  [(NSMutableDictionary *)self->_indexLocked_indexEntriesByNormSQLHash enumerateKeysAndObjectsWithOptions:0 usingBlock:&__block_literal_global_37_66351, *&v18.st_dev, *&v18.st_uid];
  return v8;
}

- (void)_indexLocked_unmapFile
{
  os_unfair_lock_assert_owner(&self->_indexLock);
  indexLocked_buffer = self->_indexLocked_buffer;
  if (indexLocked_buffer)
  {
    indexLocked_bufferLen = self->_indexLocked_bufferLen;
    if (indexLocked_bufferLen)
    {
      munmap(indexLocked_buffer, indexLocked_bufferLen);
      self->_indexLocked_buffer = 0;
      self->_indexLocked_bufferLen = 0;
    }
  }
}

+ (id)suggestedFilenameForCurrentProcess
{
  v2 = objc_alloc(MEMORY[0x1E696AEC0]);
  v3 = [MEMORY[0x1E696AE30] processInfo];
  v4 = [v3 processName];
  v5 = [v2 initWithFormat:@"%@-recording-v%@.%@", v4, @"0.54", @"lofr"];

  return v5;
}

+ (BOOL)deleteRecording:(id)a3 error:(id *)a4
{
  if (!a3)
  {
    return 1;
  }

  v5 = a3;
  [v5 close];
  v6 = [MEMORY[0x1E696AC08] defaultManager];
  v7 = [v5 url];

  LOBYTE(a4) = [v6 removeItemAtURL:v7 error:a4];
  return a4;
}

+ (double)varPageCountForEntryHeader:(PLFetchRecordingFileNormalizedStatementHeader *)a3
{
  v3 = *(&a3->var4 + 1);
  result = 0.0;
  if (v3 >= 2)
  {
    return *(&a3->var8 + 5) / ((v3 - 1) % 0x1F4);
  }

  return result;
}

+ (double)meanPageCountForEntryHeader:(PLFetchRecordingFileNormalizedStatementHeader *)a3
{
  if (*(&a3->var4 + 1))
  {
    return *(&a3->var6 + 5);
  }

  else
  {
    return 0.0;
  }
}

+ (id)backtraceForEntryHeader:(PLFetchRecordingFileNormalizedStatementHeader *)a3
{
  v16 = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    v12 = [MEMORY[0x1E696AAA8] currentHandler];
    [v12 handleFailureInMethod:a2 object:a1 file:@"PLFetchRecording.m" lineNumber:845 description:{@"Invalid parameter not satisfying: %@", @"entry"}];
  }

  v4 = [MEMORY[0x1E695DEF0] dataWithBytes:&a3->var13 + *(&a3->var9 + 5) + *(&a3->var9 + 7) + *(&a3->var10 + 1) + *(&a3->var10 + 3) + 1 length:*(&a3->var10 + 5)];
  v13 = 0;
  v5 = [v4 decompressedDataUsingAlgorithm:0 error:&v13];
  v6 = v13;
  if (v5)
  {
    v7 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v5 encoding:4];
  }

  else
  {
    v8 = PLBackendGetLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v15 = v6;
      _os_log_impl(&dword_19BF1F000, v8, OS_LOG_TYPE_ERROR, "LOFR can't decompress backtrace: %@", buf, 0xCu);
    }

    v7 = 0;
  }

  return v7;
}

+ (id)multiInCountsForEntryHeader:(PLFetchRecordingFileNormalizedStatementHeader *)a3
{
  v19 = *MEMORY[0x1E69E9840];
  if (!*(&a3->var10 + 1) || (v3 = &a3->var0 + *(&a3->var9 + 5) + *(&a3->var9 + 7), v3 == -107))
  {
    v6 = 0;
  }

  else
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v3 + 107];
    v5 = [v4 componentsSeparatedByString:{@", "}];
    if ([v5 count])
    {
      v6 = [MEMORY[0x1E695DF70] array];
      v14 = 0u;
      v15 = 0u;
      v16 = 0u;
      v17 = 0u;
      v7 = v5;
      v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v15;
        do
        {
          for (i = 0; i != v9; ++i)
          {
            if (*v15 != v10)
            {
              objc_enumerationMutation(v7);
            }

            v12 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(*(*(&v14 + 1) + 8 * i), "integerValue", v14)}];
            [v6 addObject:v12];
          }

          v9 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
        }

        while (v9);
      }
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

+ (void)_updateRunningStatisticsForEntry:(PLFetchRecordingFileNormalizedStatementHeader *)a3 givenPageCount:(unsigned int)a4
{
  v4 = *(&a3->var4 + 1);
  *(&a3->var4 + 1) = v4 + 1;
  if (v4 && (v5 = (v4 + 1) % 0x1F4u) != 0)
  {
    v6 = *(&a3->var5 + 1);
    v7 = a4 - v6;
    v8 = v6 + v7 / v5;
    *(&a3->var6 + 5) = v8;
    v9 = *(&a3->var7 + 5) + v7 * (a4 - v8);
    *(&a3->var8 + 5) = v9;
    *(&a3->var5 + 1) = v8;
    *(&a3->var7 + 5) = v9;
  }

  else
  {
    *(&a3->var6 + 5) = a4;
    *(&a3->var5 + 1) = a4;
    *(&a3->var8 + 5) = 0.0;
    *(&a3->var7 + 5) = 0.0;
  }
}

+ (BOOL)_statsForStatementAreInteresting:(PLFetchRecordingFileNormalizedStatementHeader *)a3 totalPages:(unsigned int)a4
{
  [a1 stdDevPageCountForEntryHeader:?];
  v8 = v7;
  [a1 meanPageCountForEntryHeader:a3];
  v10 = a4 - v9;
  if (v10 < 0.0)
  {
    v10 = -v10;
  }

  return v10 > v8;
}

+ (void)_indexLocked_enumerateVariationsFromEntryHeader:(PLFetchRecordingFileNormalizedStatementHeader *)a3 block:(id)a4
{
  v7 = a4;
  if (v7)
  {
    if (!a3)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    [v10 handleFailureInMethod:a2 object:a1 file:@"PLFetchRecording.m" lineNumber:564 description:{@"Invalid parameter not satisfying: %@", @"block"}];

    if (!a3)
    {
      goto LABEL_7;
    }
  }

  v11 = 0;
  if (HIBYTE(a3->var10))
  {
    v8 = 0;
    v9 = &a3->var13 + *(&a3->var9 + 5) + *(&a3->var9 + 7) + *(&a3->var10 + 1) + *(&a3->var10 + 3) + *(&a3->var10 + 5) + 1;
    do
    {
      v7[2](v7, v9, v8, &v11);
      if (v11)
      {
        break;
      }

      ++v8;
      v9 += 32;
    }

    while (v8 < HIBYTE(a3->var10));
  }

LABEL_7:
}

+ (void)_writeInitialHeaderToBuffer:(void *)a3 bufferLen:(unint64_t)a4
{
  if (!a3)
  {
    v13 = [MEMORY[0x1E696AAA8] currentHandler];
    [v13 handleFailureInMethod:a2 object:a1 file:@"PLFetchRecording.m" lineNumber:529 description:{@"Invalid parameter not satisfying: %@", @"buffer"}];
  }

  *a3 = -257;
  strncpy(a3 + 2, [@"0.54" UTF8String], 0xDuLL);
  v5 = [MEMORY[0x1E696AE30] processInfo];
  v14 = [v5 processName];

  v6 = v14;
  strncpy(a3 + 15, [v14 UTF8String], 0x81uLL);
  v7 = PLPhotoLibraryServicesBinaryImageUUID();
  v8 = [v7 UUIDString];
  strncpy(a3 + 144, [v8 UTF8String], 0x25uLL);
  v9 = [MEMORY[0x1E696AFB0] UUID];
  v10 = [v9 UUIDString];
  strncpy(a3 + 181, [v10 UTF8String], 0x25uLL);
  *(a3 + 218) = dyld_get_active_platform();
  *(a3 + 222) = 234;
  *(a3 + 230) = 0;
}

+ (id)_backtrace
{
  v2 = [MEMORY[0x1E696AF00] callStackSymbols];
  v3 = [v2 debugDescription];

  return v3;
}

+ (_NSRange)_indexLocked_allocateSizeToFit:(unint64_t)a3 fileHeaderSize:(unint64_t)a4 currentEOF:(int64_t)a5 buffer:(void *)a6 bufferLength:(unint64_t)a7 index:(id)a8
{
  v10 = a3;
  v33 = *MEMORY[0x1E69E9840];
  v11 = a8;
  v12 = v10 >> 11;
  if ((v10 & 0x7FF) != 0)
  {
    ++v12;
  }

  if (v12 >= 0x14)
  {
    v13 = 20;
  }

  else
  {
    v13 = v12;
  }

  v14 = *(a6 + 222);
  v30 = v14;
  v15 = 0;
  if (v12)
  {
    v28 = a7;
    do
    {
      v16 = _allocationSizeForEntry(a6 + v14);
      if (v16)
      {
        v17 = v16;
        if (v16 == -1)
        {
          v18 = PLBackendGetLog();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
          {
            *buf = 0;
            _os_log_impl(&dword_19BF1F000, v18, OS_LOG_TYPE_DEBUG, "LOFR cannot read allocation block size marker, assuming single allocation...", buf, 2u);
          }

          bzero(a6 + v14, 0x800uLL);
          v14 += 2048;
          ++v15;
        }

        else
        {
          v19 = PLBackendGetLog();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
          {
            *buf = 134217984;
            v32 = v17;
            _os_log_impl(&dword_19BF1F000, v19, OS_LOG_TYPE_DEBUG, "LOFR Erasing existing entry with size: %lu...", buf, 0xCu);
          }

          v20 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:a6 + v14 + 1 length:32];
          v21 = [v11 objectForKeyedSubscript:v20];
          if (!v21)
          {
            v23 = PLBackendGetLog();
            if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
            {
              *buf = 0;
              _os_log_impl(&dword_19BF1F000, v23, OS_LOG_TYPE_ERROR, "LOFR Can't find existing entry in index, failing allocation.", buf, 2u);
            }

            break;
          }

          v22 = v21;
          [v21 lock];
          bzero(a6 + v14, v17);
          [v11 removeObjectForKey:v20];
          [v22 entryLocked_markUnavailable];
          [v22 unlock];
          v15 += v17 >> 11;
          v14 += v17;

          a7 = v28;
        }
      }

      else
      {
        ++v15;
        v14 += 2048;
      }

      if (v14 >= a7)
      {
        v15 = 0;
        ++*(a6 + 226);
        v14 = a4;
        v30 = a4;
      }
    }

    while (v15 < v13);
  }

  if (v15 >= v13)
  {
    v24 = v15 << 11;
  }

  else
  {
    v24 = 0;
  }

  if (v15 >= v13)
  {
    v25 = v30;
  }

  else
  {
    v25 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v26 = v25;
  v27 = v24;
  result.length = v27;
  result.location = v26;
  return result;
}

+ (void)_indexLocked_enumerateEntryHeadersFromBuffer:(const void *)a3 bufferLength:(unint64_t)a4 fileVersion:(id)a5 fileHeaderSize:(unint64_t)a6 block:(id)a7
{
  v12 = a5;
  v13 = a7;
  if (a4 < a6)
  {
    goto LABEL_19;
  }

  v21 = 0;
  if (a6 >= a4)
  {
    goto LABEL_19;
  }

  v14 = 0;
  v15 = 0;
  do
  {
    v16 = a3 + a6;
    if ([v12 isEqualToString:@"0.53"])
    {
      v16 = [a1 _currentVersionHeaderFrom_053Header:a3 + a6];
      v15 = 1;
    }

    if (*v16)
    {
      v17 = _allocationSizeForEntry(v16);
      if (v17 == -1)
      {
        v19 = PLBackendGetLog();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_impl(&dword_19BF1F000, v19, OS_LOG_TYPE_DEBUG, "LOFR can't read allocation block size.", buf, 2u);
        }

        (*(v13 + 2))(v13, 0, a6, v14, 0, &v21);
        v18 = 2048;
      }

      else
      {
        v18 = v17;
        (*(v13 + 2))(v13, v16, a6, v14, v16 + 105, &v21);
      }

      ++v14;
      a6 += v18;
      if (v15)
      {
LABEL_15:
        free(v16);
        v16 = 0;
      }
    }

    else
    {
      a6 += 2048;
      if (v15)
      {
        goto LABEL_15;
      }
    }
  }

  while (a6 < a4);
  if (((v16 != 0) & v15) == 1)
  {
    free(v16);
  }

LABEL_19:
}

+ (PLFetchRecordingFileNormalizedStatementHeader)_currentVersionHeaderFrom_053Header:(PLFetchRecordingFileNormalizedStatementHeader_053 *)a3
{
  v4 = malloc_type_calloc(1uLL, vaddvq_s32(vmovl_u16(*(&a3->var8 + 5))) + *(&a3->var9 + 5) + 269, 0x5FADE592uLL);
  v5 = *&a3->var1[32];
  *v4 = a3->var0;
  *(v4 + 33) = v5;
  *(v4 + 41) = 0;
  *(v4 + 49) = *(&a3->var2 + 1);
  *(v4 + 57) = *(&a3->var3 + 1);
  *(v4 + 61) = *(&a3->var4 + 1);
  *(v4 + 77) = *(&a3->var6 + 5);
  v6 = *(&a3->var8 + 5);
  *(v4 + 93) = v6;
  v7 = *(&a3->var8 + 7);
  *(v4 + 95) = v7;
  v8 = *(&a3->var9 + 1);
  *(v4 + 97) = v8;
  v9 = *(&a3->var9 + 3);
  *(v4 + 99) = v9;
  v10 = *(&a3->var9 + 5);
  *(v4 + 101) = v10;
  v4[103] = HIBYTE(a3->var9);
  v4[104] = a3->var10;
  memcpy(v4 + 105, &a3->var10 + 1, v6 + v7 + v8 + v9 + v10 + 160);
  return v4;
}

+ (void)_indexLocked_populateStatementIndex:(id)a3 fromBuffer:(void *)a4 bufferLength:(unint64_t)a5 fileHeaderSize:(unint64_t)a6 fileVersion:(id)a7
{
  v12 = a3;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __107__PLFetchRecording__indexLocked_populateStatementIndex_fromBuffer_bufferLength_fileHeaderSize_fileVersion___block_invoke;
  v14[3] = &unk_1E756FD88;
  v15 = v12;
  v13 = v12;
  [a1 _indexLocked_enumerateEntryHeadersFromBuffer:a4 bufferLength:a5 fileVersion:a7 fileHeaderSize:a6 block:v14];
}

void __107__PLFetchRecording__indexLocked_populateStatementIndex_fromBuffer_bufferLength_fileHeaderSize_fileVersion___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:a2 + 1 length:32];
    if (v5)
    {
      v7 = v5;
      v6 = [[PLFetchRecordingIndexEntry alloc] initWithOffset:a3];
      [*(a1 + 32) setObject:v6 forKeyedSubscript:v7];

      v5 = v7;
    }
  }
}

@end