@interface TSPDistributableWriter
- (BOOL)_processEntry:(id)entry tocEntries:(id)entries progressContext:(id)context error:(id *)error;
- (BOOL)goAndReportProgress:(BOOL)progress error:(id *)error context:(id)context;
- (void)dealloc;
@end

@implementation TSPDistributableWriter

- (void)dealloc
{
  encodedIds = self->_encodedIds;
  if (encodedIds)
  {
    sub_276A579A4(self->_encodedIds, encodedIds[1]);
    MEMORY[0x277C9F670](encodedIds, 0x1020C4062D53EE8);
  }

  typesSeen = self->_typesSeen;
  if (typesSeen)
  {
    sub_276A579A4(self->_typesSeen, typesSeen[1]);
    MEMORY[0x277C9F670](typesSeen, 0x1020C4062D53EE8);
  }

  objc_msgSend_closeWithError_(self->_database, a2, 0);
  v5.receiver = self;
  v5.super_class = TSPDistributableWriter;
  [(TSPDistributableWriter *)&v5 dealloc];
}

- (BOOL)goAndReportProgress:(BOOL)progress error:(id *)error context:(id)context
{
  progressCopy = progress;
  contextCopy = context;
  v9 = [TSPDistributableArchiveEntry alloc];
  v12 = objc_msgSend_initWithIdentifier_(v9, v10, 1);
  if (!v12)
  {
    v13 = MEMORY[0x277D81150];
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "[TSPDistributableWriter goAndReportProgress:error:context:]");
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPDistributableWriter.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v13, v17, v14, v16, 111, 0, "invalid nil value for '%{public}s'", "rootEntry");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v18, v19);
  }

  v28 = 100;
  objc_msgSend_numberOfDatabaseObjects_error_(self->_database, v11, &v28, 0);
  if (progressCopy)
  {
    objc_msgSend_createStageWithSteps_(contextCopy, v20, v21, v28);
    v23 = objc_msgSend__processEntry_tocEntries_progressContext_error_(self, v22, v12, 0, contextCopy, error);
  }

  else
  {
    v23 = objc_msgSend__processEntry_tocEntries_progressContext_error_(self, v20, v12, 0, 0, error);
  }

  v26 = v23;
  if (progressCopy)
  {
    objc_msgSend_endStage(contextCopy, v24, v25);
  }

  return v26;
}

- (BOOL)_processEntry:(id)entry tocEntries:(id)entries progressContext:(id)context error:(id *)error
{
  entryCopy = entry;
  entriesCopy = entries;
  contextCopy = context;
  v15 = atomic_load(&self->_isCancelled);
  if (v15)
  {
    goto LABEL_38;
  }

  encodedIds = self->_encodedIds;
  v17 = objc_msgSend_identifier(entryCopy, v12, v13);
  v22 = encodedIds[1];
  v21 = (encodedIds + 1);
  v20 = v22;
  if (!v22)
  {
    goto LABEL_9;
  }

  v23 = v21;
  do
  {
    if (*(v20 + 4) >= v17)
    {
      v23 = v20;
    }

    v20 = *&v20[8 * (*(v20 + 4) < v17)];
  }

  while (v20);
  if (v23 == v21 || v17 < *(v23 + 4))
  {
LABEL_9:
    v23 = v21;
  }

  v24 = self->_encodedIds;
  if (v23 != v24 + 8)
  {
    v25 = MEMORY[0x277D81150];
    v26 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, "[TSPDistributableWriter(Private) _processEntry:tocEntries:progressContext:error:]");
    v28 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v27, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPDistributableWriter.mm");
    v31 = objc_msgSend_identifier(entryCopy, v29, v30);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v25, v32, v26, v28, 179, 0, "Already wrote entry for identifier %llu", v31);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v33, v34);
    v24 = self->_encodedIds;
  }

  if (v23 != v24 + 8)
  {
    goto LABEL_38;
  }

  v67 = objc_msgSend_identifier(entryCopy, v18, v19);
  sub_276A5B668(v24, &v67);
  if (!objc_msgSend_populateDistributableArchiveEntry_database_fileManager_(TSPDatabaseArchiveManager, v35, entryCopy, self->_database, self->_fileManager))
  {
    goto LABEL_38;
  }

  v38 = self->_processedEntriesCount + 1;
  self->_processedEntriesCount = v38;
  if (__ROR8__(0x8F5C28F5C28F5C29 * v38, 1) <= 0x51EB851EB851EB8uLL)
  {
    objc_msgSend_advanceProgress_(contextCopy, v36, v37, 50.0);
  }

  if (objc_msgSend_classType(entryCopy, v36, v37) == 201 || objc_msgSend_classType(entryCopy, v39, v40) == 208)
  {
    v42 = 1;
    goto LABEL_39;
  }

  if (!objc_msgSend_writeEntry_offset_headerLength_error_(self->_outputStream, v41, entryCopy, 0, 0, error))
  {
LABEL_38:
    v42 = 0;
    goto LABEL_39;
  }

  typesSeen = self->_typesSeen;
  v66 = objc_msgSend_classType(entryCopy, v43, v44);
  sub_276AE6AA0(typesSeen, &v66);
  v48 = objc_msgSend_ownedIds(entryCopy, v46, v47);
  v49 = v48 + 1;
  v50 = *v48;
  do
  {
    v42 = v50 == v49;
    if (v50 == v49)
    {
      break;
    }

    v51 = self->_encodedIds;
    v54 = v51[1];
    v52 = (v51 + 1);
    v53 = v54;
    if (!v54)
    {
      goto LABEL_29;
    }

    v55 = v50[4];
    v56 = v52;
    do
    {
      if (*(v53 + 4) >= v55)
      {
        v56 = v53;
      }

      v53 = *&v53[8 * (*(v53 + 4) < v55)];
    }

    while (v53);
    if (v56 != v52 && v55 >= *(v56 + 4))
    {
      v61 = 1;
    }

    else
    {
LABEL_29:
      v57 = [TSPDistributableArchiveEntry alloc];
      v59 = objc_msgSend_initWithIdentifier_(v57, v58, v50[4]);
      v61 = objc_msgSend__processEntry_tocEntries_progressContext_error_(self, v60, v59, entriesCopy, contextCopy, error);
    }

    v62 = v50[1];
    if (v62)
    {
      do
      {
        v63 = v62;
        v62 = *v62;
      }

      while (v62);
    }

    else
    {
      do
      {
        v63 = v50[2];
        v64 = *v63 == v50;
        v50 = v63;
      }

      while (!v64);
    }

    v50 = v63;
  }

  while ((v61 & 1) != 0);
LABEL_39:

  return v42;
}

@end