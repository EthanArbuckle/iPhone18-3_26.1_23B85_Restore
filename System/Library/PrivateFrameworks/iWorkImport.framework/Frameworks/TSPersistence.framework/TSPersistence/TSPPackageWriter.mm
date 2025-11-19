@interface TSPPackageWriter
+ (id)newPackageWriterWithPackageType:(int64_t)a3 URL:(id)a4 documentTargetURL:(id)a5 relativeURLForExternalData:(id)a6 packageIdentifier:(unsigned __int8)a7 documentProperties:(id)a8 documentMetadata:(id)a9 fileFormatVersion:(unint64_t)a10 updateType:(int64_t)a11 cloneMode:(BOOL)a12 documentSaveValidationPolicy:(id)a13 encryptionKey:(id)a14 originalDocumentPackage:(id)a15 originalSupportPackage:(id)a16 fileCoordinatorDelegate:(id)a17 progress:(id)a18 error:(id *)a19;
- (BOOL)addData:(id)a3 infoMessage:(void *)a4 saveOperationState:(id)a5 error:(id *)a6;
- (BOOL)closeAndReturnError:(id *)a3;
- (BOOL)flushPendingWritesReturningError:(id *)a3;
- (BOOL)writeData:(id)a3 toRelativePath:(id)a4 allowEncryption:(BOOL)a5 error:(id *)a6;
- (CGDataConsumer)newCGDataConsumerAtRelativePath:(id)a3;
- (TSPPackage)originalPackage;
- (TSPPackageWriter)init;
- (TSPPackageWriter)initWithURL:(id)a3 documentTargetURL:(id)a4 relativeURLForExternalData:(id)a5 packageIdentifier:(unsigned __int8)a6 documentProperties:(id)a7 documentMetadata:(id)a8 fileFormatVersion:(unint64_t)a9 updateType:(int64_t)a10 cloneMode:(BOOL)a11 documentSaveValidationPolicy:(id)a12 encryptionKey:(id)a13 originalDocumentPackage:(id)a14 originalSupportPackage:(id)a15 fileCoordinatorDelegate:(id)a16 progress:(id)a17 error:(id *)a18;
- (id)copyData:(id)a3 withReadChannel:(id)a4 decryptionInfo:(id)a5 size:(unint64_t)a6 calculateCRC:(BOOL)a7 preferredFilename:(id)a8 error:(id *)a9;
- (id)dataForZipEntry:(id)a3 inDataToWrite:(id)a4;
- (id)filenameForData:(id)a3 preferredFilename:(id)a4;
- (id)linkOrCopyData:(id)a3 fromURL:(id)a4 fromTemporaryLocation:(BOOL)a5 decryptionInfo:(id)a6 preferredFilename:(id)a7 error:(id *)a8;
- (id)newCompressionComponentWriteChannelWithComponentWriteChannel:(id)a3 compressionAlgorithm:(int64_t)a4;
- (id)newPackageWithPackageIdentifier:(unsigned __int8)a3 documentProperties:(id)a4 fileFormatVersion:(unint64_t)a5 decryptionKey:(id)a6 fileCoordinatorDelegate:(id)a7;
- (id)newRawDataWriteChannelForRelativePath:(id)a3 originalLastModificationDate:(id)a4 originalSize:(unint64_t)a5 originalCRC:(unsigned int)a6 forceCalculatingSizeAndCRCForPreservingLastModificationDate:(BOOL)a7;
- (id)packageEntryInfoForComponentLocator:(id)a3 isStoredOutsideObjectArchive:(BOOL)a4 packageURL:(id)a5;
- (id)writtenPackageWithURL:(id)a3;
- (void)closeCurrentChannel;
- (void)closeWithQueue:(id)a3 completion:(id)a4;
- (void)copyComponent:(id)a3 locator:(id)a4 completion:(id)a5;
- (void)dealloc;
- (void)finalizeComponentAndDataSectionWithCompletionHandler:(id)a3;
- (void)setError:(id)a3;
@end

@implementation TSPPackageWriter

+ (id)newPackageWriterWithPackageType:(int64_t)a3 URL:(id)a4 documentTargetURL:(id)a5 relativeURLForExternalData:(id)a6 packageIdentifier:(unsigned __int8)a7 documentProperties:(id)a8 documentMetadata:(id)a9 fileFormatVersion:(unint64_t)a10 updateType:(int64_t)a11 cloneMode:(BOOL)a12 documentSaveValidationPolicy:(id)a13 encryptionKey:(id)a14 originalDocumentPackage:(id)a15 originalSupportPackage:(id)a16 fileCoordinatorDelegate:(id)a17 progress:(id)a18 error:(id *)a19
{
  v43 = a7;
  v45 = a4;
  v49 = a5;
  v48 = a6;
  v47 = a8;
  v46 = a9;
  v23 = a13;
  v24 = a14;
  v25 = a15;
  v26 = a16;
  v27 = a17;
  v29 = a18;
  if (a3 == 2)
  {
    v30 = v45;
    v38 = objc_opt_class();
    v31 = a12;
LABEL_7:
    if (v38)
    {
      goto LABEL_11;
    }

    goto LABEL_8;
  }

  v30 = v45;
  v31 = a12;
  if (a3 == 1)
  {
LABEL_5:
    v38 = objc_opt_class();
    v31 = 0;
    goto LABEL_7;
  }

  if (!a3)
  {
    v44 = MEMORY[0x277D81150];
    v32 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v28, "+[TSPPackageWriter newPackageWriterWithPackageType:URL:documentTargetURL:relativeURLForExternalData:packageIdentifier:documentProperties:documentMetadata:fileFormatVersion:updateType:cloneMode:documentSaveValidationPolicy:encryptionKey:originalDocumentPackage:originalSupportPackage:fileCoordinatorDelegate:progress:error:]");
    v34 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v33, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPPackageWriter.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v44, v35, v32, v34, 97, 0, "Specify a package type other than TSPPackageTypeDefault for new package writer");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v36, v37);
    goto LABEL_5;
  }

LABEL_8:
  if (UnsafePointer != -1)
  {
    sub_276BD6704();
  }

  v38 = 0;
LABEL_11:
  v39 = [v38 alloc];
  updated = objc_msgSend_initWithURL_documentTargetURL_relativeURLForExternalData_packageIdentifier_documentProperties_documentMetadata_fileFormatVersion_updateType_cloneMode_documentSaveValidationPolicy_encryptionKey_originalDocumentPackage_originalSupportPackage_fileCoordinatorDelegate_progress_error_(v39, v40, v30, v49, v48, v43, v47, v46, a10, a11, v31, v23, v24, v25, v26, v27, v29, a19);

  return updated;
}

- (TSPPackageWriter)init
{
  v2 = MEMORY[0x277D81150];
  v3 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSPPackageWriter init]");
  v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPPackageWriter.mm");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v2, v6, v3, v5, 136, 0, "Do not call method");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v7, v8);
  v9 = MEMORY[0x277CBEAD8];
  v11 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v10, @"%s: %s", "Do not call method", "[TSPPackageWriter init]");
  v13 = objc_msgSend_exceptionWithName_reason_userInfo_(v9, v12, *MEMORY[0x277CBE658], v11, 0);
  v14 = v13;

  objc_exception_throw(v13);
}

- (TSPPackageWriter)initWithURL:(id)a3 documentTargetURL:(id)a4 relativeURLForExternalData:(id)a5 packageIdentifier:(unsigned __int8)a6 documentProperties:(id)a7 documentMetadata:(id)a8 fileFormatVersion:(unint64_t)a9 updateType:(int64_t)a10 cloneMode:(BOOL)a11 documentSaveValidationPolicy:(id)a12 encryptionKey:(id)a13 originalDocumentPackage:(id)a14 originalSupportPackage:(id)a15 fileCoordinatorDelegate:(id)a16 progress:(id)a17 error:(id *)a18
{
  v77 = a6;
  v22 = a3;
  v88 = a4;
  v87 = a5;
  v23 = a7;
  v83 = a8;
  v82 = a12;
  v86 = a13;
  v81 = a14;
  v80 = a15;
  v85 = a16;
  v79 = a17;
  v89 = v22;
  v27 = a18;
  if (objc_msgSend_isFileURL(v22, v24, v25))
  {
    v78 = v23;
    v94.receiver = self;
    v94.super_class = TSPPackageWriter;
    v30 = [(TSPPackageWriter *)&v94 init];
    if (!v30)
    {
      v68 = 0;
      if (!a18)
      {
LABEL_30:
        v69 = v30;

        v67 = v69;
        v23 = v78;
        goto LABEL_31;
      }

LABEL_28:
      if (!v30)
      {
        *v27 = objc_msgSend_tsp_ensureSaveErrorWithError_(MEMORY[0x277CCA9B8], v28, v68);
      }

      goto LABEL_30;
    }

    v31 = objc_msgSend_copy(v22, v28, v29);
    URL = v30->_URL;
    v30->_URL = v31;

    v35 = objc_msgSend_copy(v88, v33, v34);
    documentTargetURL = v30->_documentTargetURL;
    v30->_documentTargetURL = v35;

    v39 = objc_msgSend_copy(v87, v37, v38);
    relativeURLForExternalData = v30->_relativeURLForExternalData;
    v30->_relativeURLForExternalData = v39;

    objc_storeStrong(&v30->_documentMetadata, a8);
    objc_storeStrong(&v30->_documentSaveValidationPolicy, a12);
    objc_storeStrong(&v30->_encryptionKey, a13);
    objc_storeStrong(&v30->_originalDocumentPackage, a14);
    objc_storeStrong(&v30->_originalSupportPackage, a15);
    objc_storeWeak(&v30->_fileCoordinatorDelegate, v85);
    v42 = objc_msgSend_newPackageWithPackageIdentifier_documentProperties_fileFormatVersion_decryptionKey_fileCoordinatorDelegate_(v30, v41, v77, v23, a9, v86, v30);
    writtenPackage = v30->_writtenPackage;
    v30->_writtenPackage = v42;

    v30->_updateType = a10;
    objc_storeStrong(&v30->_progress, a17);
    v44 = v30->_writtenPackage;
    v45 = objc_opt_class();
    v47 = objc_msgSend_zipArchiveURLFromPackageURL_(v45, v46, v22);
    v49 = v47;
    if (!a11)
    {
      goto LABEL_20;
    }

    v93 = 0;
    v50 = objc_msgSend_checkResourceIsReachableAndReturnError_(v47, v48, &v93);
    v52 = v93;
    if (v50)
    {
      v92 = v52;
      v53 = objc_msgSend_zipArchiveFromURL_options_error_(MEMORY[0x277D81380], v51, v49, 0, &v92);
      v54 = v92;

      if (v53)
      {
        v55 = objc_alloc(MEMORY[0x277D81388]);
        v91 = 0;
        v56 = &v91;
        v58 = objc_msgSend_initWithZipFileArchive_error_(v55, v57, v53, &v91);
        goto LABEL_22;
      }

      if (v54)
      {
        if (UnsafePointer != -1)
        {
          sub_276BD6718();
        }

        v52 = v54;
        goto LABEL_21;
      }

      if (UnsafePointer != -1)
      {
        sub_276BD6740();
LABEL_20:
        v52 = 0;
        goto LABEL_21;
      }

      v52 = 0;
    }

LABEL_21:
    v70 = objc_alloc(MEMORY[0x277D81388]);
    v90 = 0;
    v56 = &v90;
    v58 = objc_msgSend_initWithURL_error_(v70, v71, v49, &v90);
    v53 = 0;
    v54 = v52;
LABEL_22:
    v68 = *v56;
    zipArchiveWriter = v30->_zipArchiveWriter;
    v30->_zipArchiveWriter = v58;

    if (v30->_zipArchiveWriter)
    {
      v73 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
      v74 = dispatch_queue_create("TSPPackageWriter.Error", v73);
      errorQueue = v30->_errorQueue;
      v30->_errorQueue = v74;

      v30->_isOpened = 1;
      v27 = a18;
    }

    else
    {
      v27 = a18;
      if (UnsafePointer != -1)
      {
        sub_276BD6768();
      }

      v30 = 0;
    }

    if (!v27)
    {
      goto LABEL_30;
    }

    goto LABEL_28;
  }

  v59 = MEMORY[0x277D81150];
  v60 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v26, "[TSPPackageWriter initWithURL:documentTargetURL:relativeURLForExternalData:packageIdentifier:documentProperties:documentMetadata:fileFormatVersion:updateType:cloneMode:documentSaveValidationPolicy:encryptionKey:originalDocumentPackage:originalSupportPackage:fileCoordinatorDelegate:progress:error:]", a17, a12, a8, a14);
  v62 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v61, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPPackageWriter.mm");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v59, v63, v60, v62, 156, 0, "Don't support writing to non-file URLs");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v64, v65);
  if (a18)
  {
    objc_msgSend_tsp_saveDocumentErrorWithUserInfo_(MEMORY[0x277CCA9B8], v66, 0);
    *a18 = v67 = 0;
  }

  else
  {
    v67 = 0;
  }

  v69 = self;
LABEL_31:

  return v67;
}

- (void)dealloc
{
  if (self->_isOpened)
  {
    TSUSetCrashReporterInfo();
    v2 = MEMORY[0x277D81150];
    v4 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v3, "[TSPPackageWriter dealloc]", "[TSPPackageWriter dealloc]", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPPackageWriter.mm", 229);
    v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPPackageWriter.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v2, v7, v4, v6, 229, 1, "Didn't close");

    TSUCrashBreakpoint();
    abort();
  }

  v8.receiver = self;
  v8.super_class = TSPPackageWriter;
  [(TSPPackageWriter *)&v8 dealloc];
}

- (TSPPackage)originalPackage
{
  v4 = objc_msgSend_packageIdentifier(self->_writtenPackage, a2, v2);
  if (v4 == 1)
  {
    v5 = 16;
    goto LABEL_5;
  }

  if (v4 == 2)
  {
    v5 = 24;
LABEL_5:
    v6 = *(&self->super.isa + v5);
    goto LABEL_7;
  }

  v6 = 0;
LABEL_7:

  return v6;
}

- (void)setError:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    errorQueue = self->_errorQueue;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = sub_276AC1E00;
    v7[3] = &unk_27A6E2898;
    v7[4] = self;
    v8 = v4;
    dispatch_async(errorQueue, v7);
  }
}

- (id)packageEntryInfoForComponentLocator:(id)a3 isStoredOutsideObjectArchive:(BOOL)a4 packageURL:(id)a5
{
  v6 = a4;
  v8 = a3;
  v11 = a5;
  if (!v8)
  {
    v12 = MEMORY[0x277D81150];
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "[TSPPackageWriter packageEntryInfoForComponentLocator:isStoredOutsideObjectArchive:packageURL:]");
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPPackageWriter.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v12, v16, v13, v15, 269, 0, "Invalid parameter not satisfying: %{public}s", "locator");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v17, v18);
  }

  if (v6)
  {
    v19 = MEMORY[0x277D81150];
    v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "[TSPPackageWriter packageEntryInfoForComponentLocator:isStoredOutsideObjectArchive:packageURL:]");
    v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v21, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPPackageWriter.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v19, v23, v20, v22, 270, 0, "Components outside the object archive are not supported");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v24, v25);
  }

  v26 = objc_msgSend_componentZipArchiveWriter(self, v9, v10);
  v28 = objc_msgSend_objectArchiveEntryPathForPackageLocator_(TSPPackage, v27, v8);
  v30 = objc_msgSend_entryWithName_(v26, v29, v28);

  if (v30)
  {
    v31 = [TSPPackageEntryInfo alloc];
    v34 = objc_msgSend_size(v30, v32, v33);
    v37 = objc_msgSend_lastModificationDate(v30, v35, v36);
    v40 = objc_msgSend_CRC(v30, v38, v39);
    ModificationDate_CRC = objc_msgSend_initWithEncodedLength_lastModificationDate_CRC_(v31, v41, v34, v37, v40);
  }

  else
  {
    ModificationDate_CRC = 0;
  }

  return ModificationDate_CRC;
}

- (void)closeCurrentChannel
{
  objc_msgSend_close(self->_componentWriteChannel, a2, v2);
  componentWriteChannel = self->_componentWriteChannel;
  self->_componentWriteChannel = 0;
}

- (id)newCompressionComponentWriteChannelWithComponentWriteChannel:(id)a3 compressionAlgorithm:(int64_t)a4
{
  v5 = a3;
  v6 = v5;
  v7 = 0;
  if (a4 > 2)
  {
    switch(a4)
    {
      case 3:
        v15 = [TSPCompressionComponentWriteChannel alloc];
        v10 = objc_msgSend_initWithWriteChannel_compressionAlgorithm_operation_(v15, v16, v6, 517, 0);
        goto LABEL_14;
      case 4:
        v17 = [TSPCompressionComponentWriteChannel alloc];
        v10 = objc_msgSend_initWithWriteChannel_compressionAlgorithm_operation_(v17, v18, v6, 774, 0);
        goto LABEL_14;
      case 5:
        v11 = [TSPCompressionComponentWriteChannel alloc];
        v10 = objc_msgSend_initWithWriteChannel_compressionAlgorithm_operation_(v11, v12, v6, 2049, 0);
        goto LABEL_14;
    }
  }

  else
  {
    switch(a4)
    {
      case 0:
        v13 = [TSPSnappyComponentWriteChannel alloc];
        v10 = objc_msgSend_initWithWriteChannel_(v13, v14, v6);
        goto LABEL_14;
      case 1:
        v10 = v5;
        goto LABEL_14;
      case 2:
        v8 = [TSPCompressionComponentWriteChannel alloc];
        v10 = objc_msgSend_initWithWriteChannel_compressionAlgorithm_operation_(v8, v9, v6, 256, 0);
LABEL_14:
        v7 = v10;
        break;
    }
  }

  return v7;
}

- (void)copyComponent:(id)a3 locator:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  objc_msgSend_closeCurrentChannel(self, v11, v12);
  v15 = objc_msgSend_packageIdentifier(v8, v13, v14);
  if (v15 == 1)
  {
    v17 = 16;
  }

  else
  {
    if (v15 != 2)
    {
      goto LABEL_7;
    }

    v17 = 24;
  }

  v18 = *(&self->super.isa + v17);
  if (v18)
  {
    v20 = v18;
    URL = self->_URL;
    v22 = objc_msgSend_componentZipArchiveWriter(self, v16, v19);
    encryptionKey = self->_encryptionKey;
    canLinkData = objc_msgSend_canLinkData(self, v24, v25);
    v35[0] = MEMORY[0x277D85DD0];
    v35[1] = 3221225472;
    v35[2] = sub_276AC2774;
    v35[3] = &unk_27A6E58D0;
    v35[4] = self;
    v36 = v10;
    objc_msgSend_copyComponent_toPackageURL_packageLocator_zipFileWriter_encryptionKey_canLink_completion_(v20, v27, v8, URL, v9, v22, encryptionKey, canLinkData, v35);

    goto LABEL_9;
  }

LABEL_7:
  v28 = MEMORY[0x277D81150];
  v29 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, "[TSPPackageWriter copyComponent:locator:completion:]");
  v31 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v30, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPPackageWriter.mm");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v28, v32, v29, v31, 368, 0, "Component %{public}@ doesn't have an original package to copy from", v8);

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v33, v34);
  if (v10)
  {
    (*(v10 + 2))(v10, 0, 0);
  }

LABEL_9:
}

- (BOOL)flushPendingWritesReturningError:(id *)a3
{
  objc_msgSend_closeCurrentChannel(self, a2, a3);
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = sub_276AC29A4;
  v23 = sub_276AC29B4;
  v24 = 0;
  v5 = dispatch_semaphore_create(0);
  v8 = objc_msgSend_componentZipArchiveWriter(self, v6, v7);
  v9 = dispatch_get_global_queue(0, 0);
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = sub_276AC29BC;
  v16[3] = &unk_27A6E6AE8;
  v18 = &v19;
  v10 = v5;
  v17 = v10;
  objc_msgSend_flushCurrentEntryWithQueue_completion_(v8, v11, v9, v16);

  dispatch_semaphore_wait(v10, 0xFFFFFFFFFFFFFFFFLL);
  v12 = v20;
  if (a3)
  {
    v13 = v20[5];
    if (v13)
    {
      *a3 = v13;
      v12 = v20;
    }
  }

  v14 = v12[5] == 0;

  _Block_object_dispose(&v19, 8);
  return v14;
}

- (id)filenameForData:(id)a3 preferredFilename:(id)a4
{
  v5 = a3;
  v6 = a4;
  v9 = objc_msgSend_stringByDeletingPathExtension(v6, v7, v8);
  v10 = MEMORY[0x277CCACA8];
  v13 = objc_msgSend_identifier(v5, v11, v12);
  v15 = objc_msgSend_stringWithFormat_(v10, v14, @"-%llu", v13);
  v18 = objc_msgSend_pathExtension(v6, v16, v17);
  v21 = objc_msgSend_length(v18, v19, v20);
  if (objc_msgSend_hasPrefix_(v9, v22, @"~"))
  {
    v25 = objc_msgSend_stringByAppendingString_(@"x", v23, v9);

    v9 = v25;
  }

  v28 = objc_msgSend_length(v15, v23, v24);
  if (v21)
  {
    v29 = 247 - v21;
  }

  else
  {
    v29 = 248;
  }

  v30 = objc_msgSend_length(v9, v26, v27);
  v31 = @"data";
  if (v30)
  {
    v31 = v9;
  }

  v32 = v31;

  v33 = v32;
  v34 = v32;
  v39 = objc_msgSend_fileSystemRepresentation(v33, v35, v36);
  if (v39)
  {
    v40 = objc_msgSend_defaultManager(MEMORY[0x277CCAA00], v37, v38);
    v41 = strlen(v39);
    v43 = objc_msgSend_stringWithFileSystemRepresentation_length_(v40, v42, v39, v41);
    v45 = objc_msgSend_tsu_substringWithComposedCharacterSequencesTruncatedToLength_(v43, v44, v29 - v28);

    v34 = v45;
  }

  v46 = objc_msgSend_stringByAppendingString_(v34, v37, v15);
  v48 = v46;
  if (v21)
  {
    v49 = objc_msgSend_stringByAppendingPathExtension_(v46, v47, v18);

    v48 = v49;
  }

  return v48;
}

- (BOOL)addData:(id)a3 infoMessage:(void *)a4 saveOperationState:(id)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a5;
  v181 = v11;
  if (!objc_msgSend_validateDataDigest(self->_documentSaveValidationPolicy, v12, v13) || (objc_msgSend_isApplicationData(v10, v14, v15) & 1) != 0 || (objc_msgSend_isExternalData(v10, v14, v15) & 1) != 0 || (objc_msgSend_isUnmaterializedRemoteData(v10, v14, v15) & 1) != 0)
  {
    isLikelyOSCorruption = 0;
    goto LABEL_6;
  }

  documentMetadata = self->_documentMetadata;
  if (documentMetadata)
  {
    objc_msgSend_propertiesForData_(documentMetadata, v14, v10);
  }

  else
  {
    v187 = 0;
    v185 = 0u;
    v186 = 0u;
  }

  hasValidatedDigestMatch = objc_msgSend_hasValidatedDigestMatch(v10, v14, v15);
  if (objc_msgSend_scanForOSLikeCorruption(self->_documentSaveValidationPolicy, v125, v126))
  {
    v128 = 2;
  }

  else
  {
    v128 = 0;
  }

  v129 = self->_documentMetadata;
  v184 = 0;
  v130 = objc_msgSend_validateDataDigestWithReason_options_documentMetadata_error_(v10, v127, @"save", v128, v129, &v184);
  v133 = v184;
  if (v130)
  {
    isLikelyOSCorruption = 0;
    v134 = 1;
    goto LABEL_116;
  }

  v135 = objc_msgSend_context(v10, v131, v132);
  objc_msgSend_didEncounterValidationError_forData_timing_(v135, v136, v133, v10, 3);

  v139 = objc_msgSend_corruptedDataFailToSaveMitigationPolicy(self->_documentSaveValidationPolicy, v137, v138);
  if (v139 > 2)
  {
    if (v139 == 3)
    {
      if (v185 != 1)
      {
        goto LABEL_71;
      }
    }

    else if (v139 != 4)
    {
      goto LABEL_71;
    }

LABEL_78:
    if (a6)
    {
      v147 = v133;
      v134 = 0;
      isLikelyOSCorruption = 0;
      *a6 = v133;
      goto LABEL_116;
    }

    v134 = 0;
    goto LABEL_101;
  }

  if (v139 == 1)
  {
    if (!objc_msgSend_tsp_isLikelyOSCorruption(v133, v140, v141))
    {
      goto LABEL_71;
    }

    goto LABEL_78;
  }

  if (v139 == 2)
  {
    v142 = v185 == 1 ? hasValidatedDigestMatch : 0;
    if (v142)
    {
      goto LABEL_78;
    }
  }

LABEL_71:
  v143 = objc_msgSend_corruptedDataRemovalMitigationPolicy(self->_documentSaveValidationPolicy, v140, v141);
  isLikelyOSCorruption = 0;
  v134 = 1;
  if (v143 > 3)
  {
    if (v143 == 4)
    {
      v146 = v185 == 1;
    }

    else
    {
      if (v143 != 5)
      {
        isLikelyOSCorruption = v143 == 6;
        goto LABEL_116;
      }

      if (v186)
      {
        v146 = v185 == 1;
      }

      else
      {
        v146 = 1;
      }
    }

    goto LABEL_113;
  }

  if (v143 == 1)
  {
    if (!v186)
    {
      goto LABEL_108;
    }

LABEL_101:
    isLikelyOSCorruption = 0;
    goto LABEL_116;
  }

  if (v143 == 2)
  {
LABEL_108:
    isLikelyOSCorruption = objc_msgSend_tsp_isLikelyOSCorruption(v133, v144, v145);
    goto LABEL_116;
  }

  if (v143 != 3)
  {
    goto LABEL_116;
  }

  v146 = v186 == 0;
LABEL_113:
  isLikelyOSCorruption = v146;
LABEL_116:

  if ((v134 & 1) == 0)
  {
    v52 = 0;
    goto LABEL_92;
  }

LABEL_6:
  v17 = objc_msgSend_filename(v10, v14, v15);
  v22 = objc_msgSend_storage(v10, v18, v19);
  if (self->_encryptionKey)
  {
    v23 = objc_msgSend_pathExtension(v17, v20, v21);
    if (objc_msgSend_length(v23, v24, v25))
    {
      v27 = objc_msgSend_stringByAppendingPathExtension_(@"data", v26, v23);
    }

    else
    {
      v27 = @"data";
    }

    v28 = v27;

    v17 = v28;
  }

  v183 = 0;
  v29 = objc_msgSend_writeData_toPackageWriter_infoMessage_preferredFilename_shouldRemoveData_error_(v22, v20, v10, self, a4, v17, isLikelyOSCorruption, &v183);
  v32 = v183;
  if (!v29)
  {
    v52 = 0;
    if (a6)
    {
      goto LABEL_87;
    }

    goto LABEL_91;
  }

  v182 = objc_msgSend_filename(v29, v30, v31);
  v35 = objc_msgSend_filename(v10, v33, v34);
  isEqualToString = objc_msgSend_isEqualToString_(v182, v36, v35);

  if ((isEqualToString & 1) == 0)
  {
    *(a4 + 4) |= 4u;
    v40 = *(a4 + 1);
    if (v40)
    {
      v40 = *(v40 & 0xFFFFFFFFFFFFFFFELL);
    }

    v41 = google::protobuf::internal::ArenaStringPtr::Mutable(a4 + 5, v40);
    objc_msgSend_tsp_saveToProtobufString_(v182, v42, v41);
  }

  v180 = objc_msgSend_encryptionInfo(v29, v38, v39);
  if (v180)
  {
    *(a4 + 4) |= 0x200u;
    v45 = *(a4 + 12);
    if (!v45)
    {
      v46 = *(a4 + 1);
      if (v46)
      {
        v46 = *(v46 & 0xFFFFFFFFFFFFFFFELL);
      }

      v45 = sub_2769F582C(v46);
      *(a4 + 12) = v45;
    }

    sub_276AB6B2C(v180, v45);
  }

  if (objc_msgSend_packageStorageType(v29, v43, v44) != 1)
  {
    v53 = objc_msgSend_storage(v10, v47, v48);
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v57 = v22;
      if (objc_msgSend_packageStorageType(v29, v58, v59) == 2 && objc_msgSend_shouldUpdate(v181, v60, v61))
      {
        writtenPackage = self->_writtenPackage;
        v175 = v57;
        v63 = objc_msgSend_dataEntryPathForFilename_(TSPPackage, v60, v182);
        v66 = objc_msgSend_materializedLength(v57, v64, v65);
        ModificationDate = objc_msgSend_newDataStorageAtRelativePath_decryptionInfo_materializedLength_packageURL_lastModificationDate_(writtenPackage, v67, v63, v180, v66, self->_URL, 0);

        v70 = objc_msgSend_changeCount(v29, v68, v69);
        objc_msgSend_addNewPackageDataStorage_forRemoteDataStorage_changeCount_(v181, v71, ModificationDate, v57, v70);
        if (objc_msgSend_isMissingData(v29, v72, v73))
        {
          v75 = MEMORY[0x277D81150];
          v76 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v74, "[TSPPackageWriter addData:infoMessage:saveOperationState:error:]");
          v78 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v77, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPPackageWriter.mm");
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v75, v79, v76, v78, 589, 0, "Result should not be missing data for TSPDataStorageWriteResultPackageStorageTypePartial");

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v80, v81);
        }

        v57 = v175;
      }

      objc_msgSend_addRemoteData_(v181, v60, v10);
      v52 = 1;
      goto LABEL_85;
    }

    if (objc_msgSend_packageStorageType(v29, v55, v56))
    {
      v98 = MEMORY[0x277D81150];
      v99 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v82, "[TSPPackageWriter addData:infoMessage:saveOperationState:error:]");
      v101 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v100, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPPackageWriter.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v98, v102, v99, v101, 594, 0, "We only support partial data for remote data.");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v103, v104);
    }

LABEL_43:
    v52 = 1;
    goto LABEL_86;
  }

  if (objc_opt_respondsToSelector())
  {
    isUnmaterializedDueToPartiallyDownloadedDocument = objc_msgSend_isUnmaterializedDueToPartiallyDownloadedDocument(v22, v49, v50);
  }

  else
  {
    isUnmaterializedDueToPartiallyDownloadedDocument = 0;
  }

  if (!objc_msgSend_shouldUpdate(v181, v49, v50))
  {
    goto LABEL_43;
  }

  v83 = self->_writtenPackage;
  v84 = objc_msgSend_dataEntryPathForFilename_(TSPPackage, v82, v182);
  v87 = objc_msgSend_materializedLength(v22, v85, v86);
  v89 = objc_msgSend_newDataStorageAtRelativePath_decryptionInfo_materializedLength_packageURL_lastModificationDate_(v83, v88, v84, v180, v87, self->_URL, 0);

  if (objc_opt_respondsToSelector())
  {
    v176 = objc_msgSend_encodedLength(v29, v90, v91);
    isMissingData = objc_msgSend_isMissingData(v29, v92, v93);
    objc_msgSend_setEncodedLength_isMissingData_(v89, v95, v176, isMissingData);
    if (((isMissingData | isUnmaterializedDueToPartiallyDownloadedDocument) & 1) == 0 && ((objc_opt_respondsToSelector() & 1) == 0 || (objc_msgSend_isMissingData(v22, v106, v107) & 1) == 0) && ((objc_opt_respondsToSelector() & 1) == 0 || (objc_msgSend_needsDownload(v22, v108, v109) & 1) == 0))
    {
      if ((objc_opt_respondsToSelector() & 1) != 0 && !objc_msgSend_isLengthPrecise(v22, v110, v111))
      {
        if (objc_opt_respondsToSelector())
        {
          v155 = objc_msgSend_fileFormatVersion(v22, v153, v154);
        }

        else
        {
          v155 = UnsafePointer();
        }

        v156 = v155;
        if (v155 >= 0x2000000000000)
        {
          v167 = MEMORY[0x277D81150];
          v179 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v90, "[TSPPackageWriter addData:infoMessage:saveOperationState:error:]");
          v170 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v157, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPPackageWriter.mm");
          v158 = objc_opt_class();
          v174 = NSStringFromClass(v158);
          v164 = NSStringFromTSPVersion(v156, v159);
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v167, v160, v179, v170, 565, 0, "%{public}@ length is not precise for a storage with file format version %{public}@", v174, v164);

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v161, v162);
        }
      }

      else
      {
        v113 = objc_msgSend_length(v22, v110, v111);
        if (v113)
        {
          v114 = objc_msgSend_length(v89, v90, v112);
          if (v113 != v114)
          {
            v165 = MEMORY[0x277D81150];
            v168 = v114;
            v172 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v90, "[TSPPackageWriter addData:infoMessage:saveOperationState:error:]");
            objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v115, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPPackageWriter.mm");
            v177 = v163 = v176;
            objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v165, v116, v172, v177, 560, 0, "Unexpected length. data=(%@), previousLength=%llu, length=%llu, encodedLength=%llu, isMissingData=%{public}@", v10, v113, v168, v163, @"NO");

            objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v117, v118);
          }
        }
      }
    }
  }

  if (isUnmaterializedDueToPartiallyDownloadedDocument)
  {
    v57 = v89;
    if (objc_opt_respondsToSelector())
    {
      v52 = 1;
      objc_msgSend_setIsUnmaterializedDueToPartiallyDownloadedDocument_(v89, v96, 1);
    }

    else
    {
      v166 = MEMORY[0x277D81150];
      v178 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v96, "[TSPPackageWriter addData:infoMessage:saveOperationState:error:]");
      v173 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v119, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPPackageWriter.mm");
      v120 = objc_opt_class();
      v169 = NSStringFromClass(v120);
      if (v89)
      {
        v122 = objc_opt_class();
        v123 = NSStringFromClass(v122);
      }

      else
      {
        v123 = @"Nil";
      }

      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v166, v121, v178, v173, 575, 0, "Cannot migrate a remote data to a storage that cannot be remote. previousClass=%{public}@, newClass=%{public}@", v169, v123);
      if (v89)
      {
      }

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v148, v149);
      v52 = 0;
    }

    objc_msgSend_addNewStorage_forData_(v181, v97, v89, v10);
  }

  else
  {
    v52 = 1;
    v57 = v89;
    objc_msgSend_addNewStorage_forData_(v181, v90, v89, v10);
  }

LABEL_85:

LABEL_86:
  objc_msgSend_didReferenceData_(self->_writtenPackage, v82, v10);

  v11 = v181;
  if (a6)
  {
LABEL_87:
    if (!v52)
    {
      if (v32)
      {
        v150 = v32;
        *a6 = v32;
      }

      else
      {
        v151 = objc_msgSend_tsp_unknownWriteErrorWithUserInfo_(MEMORY[0x277CCA9B8], v30, 0);
        *a6 = v151;
      }
    }
  }

LABEL_91:

LABEL_92:
  return v52;
}

- (id)linkOrCopyData:(id)a3 fromURL:(id)a4 fromTemporaryLocation:(BOOL)a5 decryptionInfo:(id)a6 preferredFilename:(id)a7 error:(id *)a8
{
  v13 = a3;
  v14 = a4;
  v15 = a6;
  v16 = a7;
  v17 = objc_alloc(MEMORY[0x277D811D0]);
  v20 = objc_msgSend_initForReadingURL_error_(v17, v18, v14, a8);
  if (v20)
  {
    v36 = 0;
    v21 = *MEMORY[0x277CBE838];
    v35 = 0;
    ResourceValue_forKey_error = objc_msgSend_getResourceValue_forKey_error_(v14, v19, &v36, v21, &v35);
    v23 = v36;
    v26 = v35;
    if ((ResourceValue_forKey_error & 1) == 0)
    {

      if (UnsafePointer != -1)
      {
        sub_276BD6790();
        v23 = 0;
        v27 = objc_msgSend_unsignedLongLongValue(0, v33, v34);
        goto LABEL_6;
      }

      v23 = 0;
    }

    v27 = objc_msgSend_unsignedLongLongValue(v23, v24, v25);
LABEL_6:
    Channel_decryptionInfo_size_calculateCRC_preferredFilename_error = objc_msgSend_copyData_withReadChannel_decryptionInfo_size_calculateCRC_preferredFilename_error_(self, v28, v13, v20, v15, v27, 1, v16, a8);
    objc_msgSend_close(v20, v30, v31);

    goto LABEL_8;
  }

  Channel_decryptionInfo_size_calculateCRC_preferredFilename_error = 0;
LABEL_8:

  return Channel_decryptionInfo_size_calculateCRC_preferredFilename_error;
}

- (id)copyData:(id)a3 withReadChannel:(id)a4 decryptionInfo:(id)a5 size:(unint64_t)a6 calculateCRC:(BOOL)a7 preferredFilename:(id)a8 error:(id *)a9
{
  v10 = a7;
  v15 = a3;
  v71 = a4;
  v16 = a5;
  v68 = a8;
  v69 = v16;
  objc_msgSend_closeCurrentChannel(self, v17, v18);
  v70 = objc_msgSend_filenameForData_preferredFilename_(self, v19, v15, v68);
  v21 = objc_msgSend_stringByAppendingPathComponent_(@"Data", v20, v70);
  if (sub_276AB678C(v16, self->_encryptionKey, 0x100000))
  {
    v72 = sub_276AB683C(self->_encryptionKey, 0x100000);
    v26 = 0;
    v27 = 0;
  }

  else
  {
    v72 = objc_msgSend_mutableCryptoInfoCopy(v16, v22, v23);
    v30 = objc_msgSend_storage(v15, v28, v29);
    if (objc_opt_respondsToSelector())
    {
      v27 = objc_msgSend_CRC(v30, v31, v32);
    }

    else
    {
      v27 = 0;
    }

    v26 = a6;
  }

  v33 = objc_msgSend_zipArchiveWriter(self, v24, v25);
  v67 = a6;
  v35 = objc_msgSend_entryWithName_(v33, v34, v21);

  v73 = objc_msgSend_size(v35, v36, v37);
  v42 = objc_msgSend_packageLocator(v15, v38, v39);
  if (v42)
  {
    v43 = objc_msgSend_packageLocator(v15, v40, v41);
    isEqualToString = objc_msgSend_isEqualToString_(v43, v44, v21);
    if (v35)
    {
      v48 = isEqualToString;
    }

    else
    {
      v48 = 0;
    }

    if (v48 == 1 && (v49 = objc_msgSend_encodedLength(v15, v46, v47), v49 == objc_msgSend_size(v35, v50, v51)))
    {
      v54 = objc_msgSend_CRC(v35, v52, v53);

      if (v27 == v54)
      {
        if (UnsafePointer != -1)
        {
          sub_276BD67B8();
        }

        goto LABEL_24;
      }
    }

    else
    {
    }
  }

  v56 = objc_msgSend_lastModificationDate(v15, v40, v41);
  if (v10)
  {
    v57 = objc_msgSend_newRawDataWriteChannelForRelativePath_originalLastModificationDate_originalSize_originalCRC_forceCalculatingSizeAndCRCForPreservingLastModificationDate_(self, v55, v21, v56, v26, 0, 0);
  }

  else
  {
    v57 = objc_msgSend_newRawDataWriteChannelForRelativePath_originalLastModificationDate_originalSize_originalCRC_forceCalculatingSizeAndCRCForPreservingLastModificationDate_(self, v55, v21, v56, v26, v27, 0);
  }

  v58 = v57;

  v61 = v69;
  if (v58)
  {
    v62 = objc_msgSend_copyDataFromReadChannel_decryptionInfo_size_toWriteChannel_encryptionInfo_encodedLength_error_(TSPFileManager, v59, v71, v69, v67, v58, v72, &v73, a9);
  }

  else
  {
    v62 = 0;
  }

  objc_msgSend_close(v58, v59, v60);

  if (!v62)
  {
    v65 = 0;
    goto LABEL_26;
  }

LABEL_24:
  v63 = [TSPPackageWriterCopyDataResult alloc];
  v65 = objc_msgSend_initWithFilename_encryptionInfo_encodedLength_(v63, v64, v70, v72, v73);
  v61 = v69;
LABEL_26:

  return v65;
}

- (id)dataForZipEntry:(id)a3 inDataToWrite:(id)a4
{
  v5 = a3;
  v6 = a4;
  v9 = objc_msgSend_name(v5, v7, v8);
  v11 = objc_msgSend_objectForKeyedSubscript_(v6, v10, v9);

  v14 = objc_msgSend_storage(v11, v12, v13);
  if (objc_opt_respondsToSelector())
  {
    v17 = objc_msgSend_CRC(v14, v15, v16);
  }

  else
  {
    v17 = 0;
  }

  if (objc_msgSend_lengthIfLocal(v11, v15, v16) && (v20 = objc_msgSend_encodedLength(v11, v18, v19), v20 == objc_msgSend_size(v5, v21, v22)) && v17 == objc_msgSend_CRC(v5, v23, v24))
  {
    v25 = v11;
  }

  else
  {
    v25 = 0;
  }

  v26 = v25;

  return v25;
}

- (BOOL)writeData:(id)a3 toRelativePath:(id)a4 allowEncryption:(BOOL)a5 error:(id *)a6
{
  v7 = a5;
  v10 = a3;
  v11 = a4;
  objc_msgSend_closeCurrentChannel(self, v12, v13);
  if (v11)
  {
    if (v10)
    {
      v16 = objc_msgSend_originalPackage(self, v14, v15);
      v19 = v16;
      if (v7)
      {
        v20 = objc_msgSend_decryptionKey(v16, v17, v18);
        v21 = sub_276AB678C(v20, self->_encryptionKey, 0x100000);
      }

      else
      {
        v21 = 0;
      }

      v30 = 0;
      if (!v21 && v19)
      {
        v59 = 0;
        v30 = objc_msgSend_packageEntryInfoAtRelativePath_error_(v19, v17, v11, &v59);
        v31 = v59;
        v34 = v31;
        if (!v30 && (objc_msgSend_tsu_isNoSuchFileError(v31, v32, v33) & 1) == 0 && UnsafePointer != -1)
        {
          sub_276BD67CC();
        }
      }

      v35 = [TSPMemoryReadChannel alloc];
      v37 = objc_msgSend_initWithNSData_(v35, v36, v10);
      v40 = objc_msgSend_lastModificationDate(v30, v38, v39);
      v43 = objc_msgSend_encodedLength(v30, v41, v42);
      v46 = objc_msgSend_CRC(v30, v44, v45);
      v48 = objc_msgSend_newRawDataWriteChannelForRelativePath_originalLastModificationDate_originalSize_originalCRC_forceCalculatingSizeAndCRCForPreservingLastModificationDate_(self, v47, v11, v40, v43, v46, 1);

      v52 = objc_msgSend_length(v10, v49, v50);
      if (v7)
      {
        v53 = objc_msgSend_copyDataFromReadChannel_decryptionInfo_size_toWriteChannel_encryptionInfo_encodedLength_error_(TSPFileManager, v51, v37, 0, v52, v48, self->_encryptionKey, 0, a6);
      }

      else
      {
        v53 = objc_msgSend_copyDataFromReadChannel_decryptionInfo_size_toWriteChannel_encryptionInfo_encodedLength_error_(TSPFileManager, v51, v37, 0, v52, v48, 0, 0, a6);
      }

      v29 = v53;
      objc_msgSend_close(v48, v54, v55);
      objc_msgSend_close(v37, v56, v57);
    }

    else
    {
      v29 = 1;
    }
  }

  else
  {
    v22 = MEMORY[0x277D81150];
    v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "[TSPPackageWriter writeData:toRelativePath:allowEncryption:error:]");
    v25 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v24, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPPackageWriter.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v22, v26, v23, v25, 704, 0, "Path should be defined.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v27, v28);
    v29 = 0;
  }

  return v29;
}

- (CGDataConsumer)newCGDataConsumerAtRelativePath:(id)a3
{
  v4 = a3;
  objc_msgSend_closeCurrentChannel(self, v5, v6);
  if (v4)
  {
    v9 = objc_msgSend_originalPackage(self, v7, v8);
    v12 = v9;
    if (v9)
    {
      v37 = 0;
      v13 = objc_msgSend_packageEntryInfoAtRelativePath_error_(v9, v10, v4, &v37);
      v14 = v37;
      v17 = v14;
      if (!v13 && (objc_msgSend_tsu_isNoSuchFileError(v14, v15, v16) & 1) == 0 && UnsafePointer != -1)
      {
        sub_276BD67F4();
      }
    }

    else
    {
      v13 = 0;
    }

    v26 = objc_msgSend_lastModificationDate(v13, v10, v11);
    v29 = objc_msgSend_encodedLength(v13, v27, v28);
    v32 = objc_msgSend_CRC(v13, v30, v31);
    v34 = objc_msgSend_newRawDataWriteChannelForRelativePath_originalLastModificationDate_originalSize_originalCRC_forceCalculatingSizeAndCRCForPreservingLastModificationDate_(self, v33, v4, v26, v29, v32, 1);

    v25 = objc_msgSend_newCGDataConsumerForWriteChannel_(TSPCGDataConsumer, v35, v34);
  }

  else
  {
    v18 = MEMORY[0x277D81150];
    v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "[TSPPackageWriter newCGDataConsumerAtRelativePath:]");
    v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v20, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPPackageWriter.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v18, v22, v19, v21, 740, 0, "Path should be defined.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v23, v24);
    v25 = 0;
  }

  return v25;
}

- (void)finalizeComponentAndDataSectionWithCompletionHandler:(id)a3
{
  v3 = a3;
  if (v3)
  {
    v3[2](v3, 0);
  }
}

- (void)closeWithQueue:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_msgSend_closeCurrentChannel(self, v8, v9);
  v12 = _Block_copy(v7);
  if (v7)
  {
    v24 = 0;
    v25 = &v24;
    v26 = 0x3032000000;
    v27 = sub_276AC29A4;
    v28 = sub_276AC29B4;
    v29 = 0;
    errorQueue = self->_errorQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_276AC4778;
    block[3] = &unk_27A6E28C0;
    block[4] = self;
    block[5] = &v24;
    dispatch_sync(errorQueue, block);
    if (v25[5])
    {
      v17 = MEMORY[0x277D85DD0];
      v18 = 3221225472;
      v19 = sub_276AC478C;
      v20 = &unk_27A6E6B10;
      v21 = v7;
      v22 = &v24;
      v14 = _Block_copy(&v17);

      v12 = v14;
    }

    _Block_object_dispose(&v24, 8);
  }

  v15 = objc_msgSend_zipArchiveWriter(self, v10, v11, v17, v18, v19, v20);
  objc_msgSend_closeWithQueue_completion_(v15, v16, v6, v12);

  self->_isOpened = 0;
}

- (BOOL)closeAndReturnError:(id *)a3
{
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = sub_276AC29A4;
  v19 = sub_276AC29B4;
  v20 = 0;
  v5 = dispatch_semaphore_create(0);
  v6 = dispatch_get_global_queue(0, 0);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = sub_276AC499C;
  v12[3] = &unk_27A6E6AE8;
  v14 = &v15;
  v7 = v5;
  v13 = v7;
  objc_msgSend_closeWithQueue_completion_(self, v8, v6, v12);

  dispatch_semaphore_wait(v7, 0xFFFFFFFFFFFFFFFFLL);
  v9 = v16[5];
  if (a3 && v9 && !*a3)
  {
    *a3 = v9;
    v9 = v16[5];
  }

  v10 = v9 == 0;

  _Block_object_dispose(&v15, 8);
  return v10;
}

- (id)writtenPackageWithURL:(id)a3
{
  v4 = a3;
  writtenPackage = self->_writtenPackage;
  v6 = objc_opt_class();
  v7 = objc_alloc(MEMORY[0x277D81380]);
  v10 = objc_msgSend_zipArchiveWriter(self, v8, v9);
  v12 = objc_msgSend_zipArchiveURLFromPackageURL_(v6, v11, v4);
  v15 = objc_msgSend_zipArchiveOptions(v6, v13, v14);
  v25 = 0;
  v17 = objc_msgSend_initWithWriter_forReadingFromURL_options_error_(v7, v16, v10, v12, v15, &v25);
  v18 = v25;

  if (!v17 && UnsafePointer != -1)
  {
    sub_276BD681C();
  }

  v19 = self->_writtenPackage;
  WeakRetained = objc_loadWeakRetained(&self->_fileCoordinatorDelegate);
  objc_msgSend_setZipArchive_fileCoordinatorDelegate_(v19, v21, v17, WeakRetained);

  v22 = self->_writtenPackage;
  v23 = v22;

  return v22;
}

- (id)newPackageWithPackageIdentifier:(unsigned __int8)a3 documentProperties:(id)a4 fileFormatVersion:(unint64_t)a5 decryptionKey:(id)a6 fileCoordinatorDelegate:(id)a7
{
  v9 = a4;
  v10 = a6;
  v11 = a7;
  v12 = MEMORY[0x277D81150];
  v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "[TSPPackageWriter newPackageWithPackageIdentifier:documentProperties:fileFormatVersion:decryptionKey:fileCoordinatorDelegate:]");
  v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPPackageWriter.mm");
  v17 = objc_opt_class();
  v30 = NSStringFromClass(v17);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v12, v18, v14, v16, 833, 0, "Abstract method not overridden by %{public}@", v30);

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v19, v20);
  v21 = MEMORY[0x277CBEAD8];
  v22 = MEMORY[0x277CCACA8];
  v23 = objc_opt_class();
  v24 = NSStringFromClass(v23);
  v26 = objc_msgSend_stringWithFormat_(v22, v25, @"Abstract method not overridden by %@: %s", v24, "[TSPPackageWriter newPackageWithPackageIdentifier:documentProperties:fileFormatVersion:decryptionKey:fileCoordinatorDelegate:]");
  v28 = objc_msgSend_exceptionWithName_reason_userInfo_(v21, v27, *MEMORY[0x277CBE658], v26, 0);
  v29 = v28;

  objc_exception_throw(v28);
}

- (id)newRawDataWriteChannelForRelativePath:(id)a3 originalLastModificationDate:(id)a4 originalSize:(unint64_t)a5 originalCRC:(unsigned int)a6 forceCalculatingSizeAndCRCForPreservingLastModificationDate:(BOOL)a7
{
  v8 = a3;
  v9 = a4;
  v10 = MEMORY[0x277D81150];
  v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "[TSPPackageWriter newRawDataWriteChannelForRelativePath:originalLastModificationDate:originalSize:originalCRC:forceCalculatingSizeAndCRCForPreservingLastModificationDate:]");
  v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPPackageWriter.mm");
  v15 = objc_opt_class();
  v16 = NSStringFromClass(v15);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v17, v12, v14, 837, 0, "Abstract method not overridden by %{public}@", v16);

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v18, v19);
  v20 = MEMORY[0x277CBEAD8];
  v21 = MEMORY[0x277CCACA8];
  v22 = objc_opt_class();
  v23 = NSStringFromClass(v22);
  v25 = objc_msgSend_stringWithFormat_(v21, v24, @"Abstract method not overridden by %@: %s", v23, "[TSPPackageWriter newRawDataWriteChannelForRelativePath:originalLastModificationDate:originalSize:originalCRC:forceCalculatingSizeAndCRCForPreservingLastModificationDate:]");
  v27 = objc_msgSend_exceptionWithName_reason_userInfo_(v20, v26, *MEMORY[0x277CBE658], v25, 0);
  v28 = v27;

  objc_exception_throw(v27);
}

@end