@interface TSPDistributableFileManager
- (BOOL)commitWithError:(id *)a3;
- (BOOL)prepareForSaveToPath:(id)a3 error:(id *)a4;
- (BOOL)rehomeOntoPath:(id)a3;
- (TSPDistributableFileManager)initWithPath:(id)a3 shouldCreate:(BOOL)a4;
- (id)_claimedPaths;
- (id)_filePathForModifiedIdentifier:(id)a3;
- (id)_modifiedFilesDirectoryPath;
- (id)addDataFromInputStream:(id)a3 length:(int64_t)a4 filenameHint:(id)a5;
- (id)addDataRepresentation:(id)a3 filenameHint:(id)a4;
- (id)representationForIdentifier:(id)a3;
- (void)_writeDataFromInputStream:(id)a3 length:(int64_t)a4 toPath:(id)a5;
- (void)removeIdentifier:(id)a3;
- (void)setDataFromInputStream:(id)a3 length:(int64_t)a4 forIdentifier:(id)a5;
- (void)setDataRepresentation:(id)a3 forIdentifier:(id)a4;
@end

@implementation TSPDistributableFileManager

- (TSPDistributableFileManager)initWithPath:(id)a3 shouldCreate:(BOOL)a4
{
  v6 = a3;
  v18.receiver = self;
  v18.super_class = TSPDistributableFileManager;
  v8 = [(TSPDistributableFileManager *)&v18 init];
  if (v8)
  {
    v9 = objc_msgSend_stringByAppendingPathComponent_(v6, v7, @"data");
    directoryPath = v8->_directoryPath;
    v8->_directoryPath = v9;

    v8->_shouldCreate = a4;
    v11 = objc_alloc_init(MEMORY[0x277CBEB58]);
    newIdentifiers = v8->_newIdentifiers;
    v8->_newIdentifiers = v11;

    v13 = objc_alloc_init(MEMORY[0x277CBEB58]);
    modifiedIdentifiers = v8->_modifiedIdentifiers;
    v8->_modifiedIdentifiers = v13;

    v15 = objc_alloc_init(MEMORY[0x277CBEB58]);
    deletedIdentifiers = v8->_deletedIdentifiers;
    v8->_deletedIdentifiers = v15;
  }

  return v8;
}

- (BOOL)commitWithError:(id *)a3
{
  v62 = *MEMORY[0x277D85DE8];
  if (objc_msgSend_count(self->_modifiedIdentifiers, a2, a3) || objc_msgSend_count(self->_deletedIdentifiers, v4, v5))
  {
    v58 = 0u;
    v59 = 0u;
    v56 = 0u;
    v57 = 0u;
    v8 = self->_deletedIdentifiers;
    v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v9, &v56, v61, 16);
    if (v10)
    {
      v12 = v10;
      v13 = *v57;
      v14 = 1;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v57 != v13)
          {
            objc_enumerationMutation(v8);
          }

          v16 = *(*(&v56 + 1) + 8 * i);
          if ((objc_msgSend_containsObject_(self->_newIdentifiers, v11, v16) & 1) == 0)
          {
            v17 = objc_msgSend__filePathForIdentifier_(self, v11, v16);
            v18 = v17;
            v21 = objc_msgSend_fileSystemRepresentation(v18, v19, v20);
            v22 = unlink(v21) == 0;

            v14 &= v22;
          }
        }

        v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v11, &v56, v61, 16);
      }

      while (v12);
    }

    else
    {
      v14 = 1;
    }

    objc_msgSend_removeAllObjects(self->_deletedIdentifiers, v23, v24);
    v27 = objc_msgSend_defaultManager(MEMORY[0x277CCAA00], v25, v26);
    v52 = 0u;
    v53 = 0u;
    v54 = 0u;
    v55 = 0u;
    v28 = self->_modifiedIdentifiers;
    v30 = objc_msgSend_countByEnumeratingWithState_objects_count_(v28, v29, &v52, v60, 16);
    if (v30)
    {
      v32 = v30;
      v33 = *v53;
      do
      {
        for (j = 0; j != v32; ++j)
        {
          if (*v53 != v33)
          {
            objc_enumerationMutation(v28);
          }

          v35 = *(*(&v52 + 1) + 8 * j);
          v36 = objc_msgSend__filePathForIdentifier_(self, v31, v35);
          if (objc_msgSend_fileExistsAtPath_(v27, v37, v36))
          {
            v39 = v36;
            v42 = objc_msgSend_fileSystemRepresentation(v39, v40, v41);
            unlink(v42);
          }

          v43 = objc_msgSend__filePathForModifiedIdentifier_(self, v38, v35);
          v51 = 0;
          v45 = objc_msgSend_moveItemAtPath_toPath_error_(v27, v44, v43, v36, &v51);

          v14 &= v45;
        }

        v32 = objc_msgSend_countByEnumeratingWithState_objects_count_(v28, v31, &v52, v60, 16);
      }

      while (v32);
    }

    objc_msgSend_removeAllObjects(self->_modifiedIdentifiers, v46, v47);
    modifiedFilesDirectory = self->_modifiedFilesDirectory;
    self->_modifiedFilesDirectory = 0;
  }

  else
  {
    v14 = 1;
  }

  objc_msgSend_removeAllObjects(self->_newIdentifiers, v6, v7);
  v49 = *MEMORY[0x277D85DE8];
  return v14 & 1;
}

- (id)addDataRepresentation:(id)a3 filenameHint:(id)a4
{
  v6 = a3;
  v9 = a4;
  if (!v9)
  {
    v10 = MEMORY[0x277D81150];
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "[TSPDistributableFileManager addDataRepresentation:filenameHint:]");
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPDistributableFileManager.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v14, v11, v13, 80, 0, "invalid nil value for '%{public}s'", "filenameHint");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v15, v16);
  }

  v17 = objc_msgSend__claimedPaths(self, v7, v8);
  v19 = objc_msgSend_addPath_(v17, v18, v9);

  objc_msgSend_addObject_(self->_modifiedIdentifiers, v20, v19);
  v21 = objc_autoreleasePoolPush();
  v24 = objc_msgSend_bufferedInputStream(v6, v22, v23);
  v27 = objc_msgSend_dataLength(v6, v25, v26);
  v29 = objc_msgSend__filePathForModifiedIdentifier_(self, v28, v19);
  objc_msgSend__writeDataFromInputStream_length_toPath_(self, v30, v24, v27, v29);

  objc_msgSend_close(v24, v31, v32);
  objc_autoreleasePoolPop(v21);
  objc_msgSend_addObject_(self->_newIdentifiers, v33, v19);

  return v19;
}

- (id)addDataFromInputStream:(id)a3 length:(int64_t)a4 filenameHint:(id)a5
{
  v8 = a3;
  v11 = a5;
  if (!v11)
  {
    v12 = MEMORY[0x277D81150];
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "[TSPDistributableFileManager addDataFromInputStream:length:filenameHint:]");
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPDistributableFileManager.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v12, v16, v13, v15, 97, 0, "invalid nil value for '%{public}s'", "filenameHint");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v17, v18);
  }

  v19 = objc_msgSend__claimedPaths(self, v9, v10);
  v21 = objc_msgSend_addPath_(v19, v20, v11);

  objc_msgSend_addObject_(self->_modifiedIdentifiers, v22, v21);
  v23 = objc_autoreleasePoolPush();
  v25 = objc_msgSend__filePathForModifiedIdentifier_(self, v24, v21);
  objc_msgSend__writeDataFromInputStream_length_toPath_(self, v26, v8, a4, v25);

  objc_autoreleasePoolPop(v23);
  objc_msgSend_addObject_(self->_newIdentifiers, v27, v21);

  return v21;
}

- (void)setDataRepresentation:(id)a3 forIdentifier:(id)a4
{
  v17 = a3;
  v6 = a4;
  v7 = objc_autoreleasePoolPush();
  v10 = objc_msgSend_bufferedInputStream(v17, v8, v9);
  v13 = objc_msgSend_dataLength(v17, v11, v12);
  objc_msgSend_setDataFromInputStream_length_forIdentifier_(self, v14, v10, v13, v6);
  objc_msgSend_close(v10, v15, v16);

  objc_autoreleasePoolPop(v7);
}

- (void)setDataFromInputStream:(id)a3 length:(int64_t)a4 forIdentifier:(id)a5
{
  modifiedIdentifiers = self->_modifiedIdentifiers;
  v9 = a5;
  v10 = a3;
  objc_msgSend_addObject_(modifiedIdentifiers, v11, v9);
  v14 = objc_msgSend__filePathForModifiedIdentifier_(self, v12, v9);

  objc_msgSend__writeDataFromInputStream_length_toPath_(self, v13, v10, a4, v14);
}

- (id)representationForIdentifier:(id)a3
{
  v4 = a3;
  if (objc_msgSend_containsObject_(self->_deletedIdentifiers, v5, v4))
  {
    v7 = MEMORY[0x277D81150];
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "[TSPDistributableFileManager representationForIdentifier:]");
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPDistributableFileManager.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v11, v8, v10, 126, 0, "Requested the data representation for the uncommitted deleted file for identifier %@", v4);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v12, v13);
  }

  if (objc_msgSend_containsObject_(self->_modifiedIdentifiers, v6, v4))
  {
    objc_msgSend__filePathForModifiedIdentifier_(self, v14, v4);
  }

  else
  {
    objc_msgSend__filePathForIdentifier_(self, v14, v4);
  }
  v15 = ;
  v16 = objc_alloc(MEMORY[0x277D81100]);
  v18 = objc_msgSend_initWithPath_(v16, v17, v15);

  return v18;
}

- (void)removeIdentifier:(id)a3
{
  v16 = a3;
  if (!self->_isCullingDisabled)
  {
    objc_msgSend_addObject_(self->_deletedIdentifiers, v4, v16);
    if (objc_msgSend_containsObject_(self->_modifiedIdentifiers, v5, v16))
    {
      v8 = objc_msgSend__filePathForModifiedIdentifier_(self, v6, v16);
      v9 = v8;
      v12 = objc_msgSend_fileSystemRepresentation(v9, v10, v11);
      unlink(v12);

      objc_msgSend_removeObject_(self->_modifiedIdentifiers, v13, v16);
    }

    v14 = objc_msgSend__claimedPaths(self, v6, v7);
    objc_msgSend_pathIsNoLongerUsed_(v14, v15, v16);
  }
}

- (BOOL)prepareForSaveToPath:(id)a3 error:(id *)a4
{
  if (a3)
  {
    v5 = objc_msgSend_stringByAppendingPathComponent_(a3, a2, @"data", a4);
    directoryPath = self->_directoryPath;
    self->_directoryPath = v5;

    return self->_directoryPath != 0;
  }

  else
  {
    v8 = MEMORY[0x277D81150];
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSPDistributableFileManager prepareForSaveToPath:error:]", a4);
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPDistributableFileManager.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v12, v9, v11, 161, 0, "invalid nil value for '%{public}s'", "path");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v13, v14);
    return 0;
  }
}

- (BOOL)rehomeOntoPath:(id)a3
{
  v6 = a3;
  if (!v6)
  {
    v7 = MEMORY[0x277D81150];
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "[TSPDistributableFileManager rehomeOntoPath:]");
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPDistributableFileManager.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v11, v8, v10, 174, 0, "invalid nil value for '%{public}s'", "path");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v12, v13);
  }

  if (self->_modifiedFilesDirectory || objc_msgSend_count(self->_newIdentifiers, v4, v5) || objc_msgSend_count(self->_modifiedIdentifiers, v4, v14) || objc_msgSend_count(self->_deletedIdentifiers, v4, v15))
  {
    v16 = MEMORY[0x277D81150];
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "[TSPDistributableFileManager rehomeOntoPath:]");
    v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPDistributableFileManager.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v16, v20, v17, v19, 178, 0, "Can't rehome when we have modified files");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v21, v22);
    v23 = 0;
  }

  else
  {
    v25 = objc_msgSend_stringByAppendingPathComponent_(v6, v4, @"data");
    directoryPath = self->_directoryPath;
    self->_directoryPath = v25;

    v23 = 1;
  }

  return v23;
}

- (id)_claimedPaths
{
  claimedPaths = self->_claimedPaths;
  if (!claimedPaths)
  {
    v4 = objc_alloc_init(MEMORY[0x277D812B0]);
    v5 = self->_claimedPaths;
    self->_claimedPaths = v4;

    if (self->_shouldCreate)
    {
      v8 = 0;
    }

    else
    {
      v20 = objc_msgSend_defaultManager(MEMORY[0x277CCAA00], v6, v7);
      v8 = objc_msgSend_enumeratorAtPath_(v20, v21, self->_directoryPath);

      if (!self->_shouldCreate && v8)
      {
        v22 = objc_msgSend_nextObject(v8, v6, v7);
        if (v22)
        {
          v24 = v22;
          do
          {
            objc_msgSend_pathIsUsed_(self->_claimedPaths, v23, v24);
            v27 = objc_msgSend_nextObject(v8, v25, v26);

            v24 = v27;
          }

          while (v27);
        }

        goto LABEL_11;
      }
    }

    v9 = objc_msgSend_defaultManager(MEMORY[0x277CCAA00], v6, v7);
    DirectoryAtPath_withIntermediateDirectories_attributes_error = objc_msgSend_createDirectoryAtPath_withIntermediateDirectories_attributes_error_(v9, v10, self->_directoryPath, 0, 0, 0);

    if ((DirectoryAtPath_withIntermediateDirectories_attributes_error & 1) == 0)
    {
      v13 = MEMORY[0x277D81150];
      v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "[TSPDistributableFileManager _claimedPaths]");
      v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPDistributableFileManager.m");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v13, v17, v14, v16, 203, 0, "Failed to create TSPFileManager directory at path %@", self->_directoryPath);

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v18, v19);
    }

LABEL_11:

    claimedPaths = self->_claimedPaths;
  }

  return claimedPaths;
}

- (id)_modifiedFilesDirectoryPath
{
  modifiedFilesDirectory = self->_modifiedFilesDirectory;
  if (!modifiedFilesDirectory)
  {
    v5 = objc_alloc(MEMORY[0x277D81350]);
    v7 = objc_msgSend_initWithSignature_error_(v5, v6, @"DFF", 0);
    v8 = self->_modifiedFilesDirectory;
    self->_modifiedFilesDirectory = v7;

    modifiedFilesDirectory = self->_modifiedFilesDirectory;
  }

  v9 = objc_msgSend_URL(modifiedFilesDirectory, a2, v2);
  v12 = objc_msgSend_path(v9, v10, v11);

  return v12;
}

- (id)_filePathForModifiedIdentifier:(id)a3
{
  v4 = a3;
  v7 = objc_msgSend__modifiedFilesDirectoryPath(self, v5, v6);
  v9 = objc_msgSend_stringByAppendingPathComponent_(v7, v8, v4);

  return v9;
}

- (void)_writeDataFromInputStream:(id)a3 length:(int64_t)a4 toPath:(id)a5
{
  v7 = a3;
  v8 = a5;
  v9 = objc_alloc(MEMORY[0x277D81110]);
  v12 = objc_msgSend_initWithPath_(v9, v10, v8);
  while (1)
  {
    v16 = 0;
    v15 = objc_msgSend_readToOwnBuffer_size_(v7, v11, &v16, a4);
    if (!v15)
    {
      break;
    }

    objc_msgSend_writeBuffer_size_(v12, v13, v16, v15);
    a4 -= v15;
  }

  objc_msgSend_close(v12, v13, v14);
}

@end