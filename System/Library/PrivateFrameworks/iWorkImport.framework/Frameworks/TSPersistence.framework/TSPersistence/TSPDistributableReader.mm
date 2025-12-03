@interface TSPDistributableReader
- (BOOL)_initializeNewDocumentDirectory:(id)directory;
- (BOOL)handleArchivedVersions:(id)versions error:(id *)error;
- (BOOL)readFromDistributableArchiveStream:(id)stream estimatedDataLength:(int64_t)length supplementalDataBundle:(id)bundle error:(id *)error;
- (TSPDistributableReader)initWithDestinationPath:(id)path;
@end

@implementation TSPDistributableReader

- (TSPDistributableReader)initWithDestinationPath:(id)path
{
  pathCopy = path;
  v20.receiver = self;
  v20.super_class = TSPDistributableReader;
  v5 = [(TSPDistributableReader *)&v20 init];
  v7 = v5;
  if (v5)
  {
    atomic_store(0, &v5->_isCancelled);
    if (objc_msgSend__initializeNewDocumentDirectory_(v5, v6, pathCopy))
    {
      v8 = [TSPDatabase alloc];
      v19 = 0;
      v10 = objc_msgSend_initWithPath_error_(v8, v9, pathCopy, &v19);
      v11 = v19;
      database = v7->_database;
      v7->_database = v10;

      if (v7->_database)
      {
        v13 = [TSPDistributableFileManager alloc];
        v15 = objc_msgSend_initWithPath_shouldCreate_(v13, v14, pathCopy, 1);
        fileManager = v7->_fileManager;
        v7->_fileManager = v15;

        v17 = v7->_fileManager;
        v7->_hasReadTangierVersionRoot = 0;
        if (v17)
        {
LABEL_9:

          goto LABEL_10;
        }

LABEL_8:

        v7 = 0;
        goto LABEL_9;
      }
    }

    else
    {
      v11 = 0;
    }

    v7->_hasReadTangierVersionRoot = 0;
    goto LABEL_8;
  }

LABEL_10:

  return v7;
}

- (BOOL)readFromDistributableArchiveStream:(id)stream estimatedDataLength:(int64_t)length supplementalDataBundle:(id)bundle error:(id *)error
{
  streamCopy = stream;
  bundleCopy = bundle;
  if (!streamCopy)
  {
    v13 = MEMORY[0x277D81150];
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "[TSPDistributableReader readFromDistributableArchiveStream:estimatedDataLength:supplementalDataBundle:error:]");
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPDistributableReader.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v13, v17, v14, v16, 73, 0, "invalid nil value for '%{public}s'", "archiveStream");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v18, v19);
  }

  v20 = atomic_load(&self->_isCancelled);
  if ((v20 & 1) == 0)
  {
    v23 = objc_msgSend_beginTransactionWithError_(self->_database, v11, error);
    v24 = atomic_load(&self->_isCancelled);
    if ((v24 & 1) == 0)
    {
      v31 = 0;
      if (v23)
      {
        v23 = objc_msgSend_streamDistributableArchive_estimatedDataLength_toUnarchiver_supplementalDataBundle_closedCleanly_context_error_(TSPDistributableArchive, v11, streamCopy, length, self, bundleCopy, &v31, 0, error);
        if (v23)
        {
          v23 = objc_msgSend_setClosedCleanlyToken_error_(self->_database, v11, v31, error);
        }
      }
    }

    goto LABEL_11;
  }

  v21 = atomic_load(&self->_isCancelled);
  if ((v21 & 1) == 0)
  {
    v23 = 0;
LABEL_11:
    v25 = atomic_load(&self->_isCancelled);
    v22 = v25 & v23;
    if ((v25 & 1) == 0 && v23)
    {
      if (objc_msgSend_commitTransactionWithError_(self->_database, v11, error))
      {
        v22 = objc_msgSend_commitWithError_(self->_fileManager, v11, error);
      }

      else
      {
        v22 = 0;
      }
    }

    goto LABEL_16;
  }

  v22 = 0;
  atomic_load(&self->_isCancelled);
LABEL_16:
  v26 = atomic_load(&self->_isCancelled);
  if ((v26 & 1) == 0)
  {
    objc_msgSend_closeWithError_(self->_database, v11, error);
  }

  if ((v22 & 1) == 0)
  {
    goto LABEL_24;
  }

  if (self->_hasReadTangierVersionRoot || (v27 = atomic_load(&self->_isCancelled), (v27 & 1) != 0))
  {
    v28 = 1;
    goto LABEL_25;
  }

  if (error)
  {
    objc_msgSend_tsp_errorWithCode_(MEMORY[0x277CCA9B8], v11, 7);
    *error = v28 = 0;
  }

  else
  {
LABEL_24:
    v28 = 0;
  }

LABEL_25:
  v29 = atomic_load(&self->_isCancelled);
  if (v29)
  {
    objc_msgSend_closeWithError_(self->_database, v11, 0);
    v28 = 0;
  }

  return v28;
}

- (BOOL)handleArchivedVersions:(id)versions error:(id *)error
{
  if (versions.var1 <= 0x774120E28)
  {
    database = self->_database;

    return MEMORY[0x2821F9670](database, sel_setDocumentVersion_error_, versions.var0);
  }

  else
  {
    if (error)
    {
      *error = objc_msgSend_tsp_errorWithCode_(MEMORY[0x277CCA9B8], a2, 7);
    }

    return 0;
  }
}

- (BOOL)_initializeNewDocumentDirectory:(id)directory
{
  directoryCopy = directory;
  if (!directoryCopy)
  {
    v6 = MEMORY[0x277D81150];
    v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v3, "[TSPDistributableReader _initializeNewDocumentDirectory:]");
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPDistributableReader.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v10, v7, v9, 221, 0, "Can't init object context with nil path.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v11, v12);
  }

  v13 = objc_msgSend_defaultManager(MEMORY[0x277CCAA00], v3, v4);
  if ((objc_msgSend_fileExistsAtPath_(v13, v14, directoryCopy) & 1) == 0)
  {
    if (objc_msgSend_createDirectoryAtPath_withIntermediateDirectories_attributes_error_(v13, v15, directoryCopy, 1, 0, 0))
    {
      v16 = 1;
      goto LABEL_10;
    }

    if (*MEMORY[0x277D81408] == -1)
    {
      v16 = 0;
      goto LABEL_10;
    }

    sub_276BD6A10();
LABEL_13:
    v16 = 0;
    goto LABEL_10;
  }

  if (*MEMORY[0x277D81408] != -1)
  {
    sub_276BD6A24();
    goto LABEL_13;
  }

  v16 = 0;
LABEL_10:

  return v16;
}

@end