@interface TSAImportController
- (BOOL)_saveContextToTemporaryURL:(id)l passphrase:(id)passphrase originalURL:(id)rL documentUUID:(id)d error:(id *)error;
- (BOOL)areNewExternalReferencesToDataAllowed;
- (Class)importerClass;
- (NSDictionary)additionalDocumentPropertiesForWrite;
- (NSDictionary)additionalDocumentSupportPropertiesForWrite;
- (TSADocumentPassphraseProvider)passphraseProvider;
- (TSADocumentRoot)documentRoot;
- (TSAImportController)initWithPath:(id)path documentType:(id)type delegate:(id)delegate;
- (TSUImage)documentPreviewImage;
- (id)additionalResourceRequestsForObjectContext:(id)context;
- (id)displayNameForURL:(id)l;
- (id)importErrorWithCode:(int64_t)code description:(id)description failureReason:(id)reason underlyingError:(id)error;
- (id)importWithCompletionQueue:(id)queue completionHandler:(id)handler;
- (id)name;
- (id)obscuredProgressImage;
- (id)packageDataForWrite;
- (id)templateDocumentWithName:(id)name variantIndex:(unint64_t)index;
- (int64_t)documentTypeCategory;
- (void)_beginImportWithProgress:(id)progress completionQueue:(id)queue completionHandler:(id)handler;
- (void)_continueImportWithProgress:(id)progress success:(BOOL)success error:(id)error completedSteps:(int)steps completionQueue:(id)queue completionHandler:(id)handler;
- (void)_performImportWithProgress:(id)progress completedSteps:(int)steps completionQueue:(id)queue completionHandler:(id)handler;
- (void)_setBuildVersionHistory;
- (void)_setPresentedItemURL:(id)l;
- (void)addIncompatibleMediaContainer:(id)container incompatibleData:(id)data compatibilityLevel:(int64_t)level;
- (void)addPersistenceWarnings:(id)warnings;
- (void)addWarning:(id)warning;
- (void)cancelImport;
- (void)dealloc;
- (void)finishImportWithProgress:(id)progress success:(BOOL)success error:(id)error completionQueue:(id)queue completionHandler:(id)handler;
- (void)importWithProgress:(id)progress completionQueue:(id)queue completionHandler:(id)handler;
- (void)prepareDocumentPreviewImage;
- (void)prepareForImportDisplayingProgress:(id)progress completionQueue:(id)queue completionHandler:(id)handler;
- (void)presentPersistenceError:(id)error;
- (void)presentedItemDidMoveToURL:(id)l;
- (void)relinquishPresentedItemToWriter:(id)writer;
- (void)retrievePassphraseForEncryptedDocumentWithImporter:(id)importer completion:(id)completion;
@end

@implementation TSAImportController

- (TSAImportController)initWithPath:(id)path documentType:(id)type delegate:(id)delegate
{
  pathCopy = path;
  typeCopy = type;
  delegateCopy = delegate;
  if (pathCopy)
  {
    v66.receiver = self;
    v66.super_class = TSAImportController;
    v16 = [(TSAImportController *)&v66 init];
    if (v16)
    {
      v17 = objc_msgSend_copy(pathCopy, v13, v14, v15);
      v18 = *(v16 + 12);
      *(v16 + 12) = v17;

      v22 = objc_msgSend_copy(typeCopy, v19, v20, v21);
      v23 = *(v16 + 18);
      *(v16 + 18) = v22;

      *(v16 + 11) = delegateCopy;
      v24 = pathCopy;
      v28 = objc_msgSend_pathExtension(v24, v25, v26, v27);
      v31 = objc_msgSend_caseInsensitiveCompare_(v28, v29, @"zip", v30);

      if (!v31)
      {
        v35 = objc_msgSend_stringByDeletingPathExtension(v24, v32, v33, v34);

        v24 = v35;
      }

      if (!*(v16 + 18))
      {
        v36 = objc_msgSend_tsu_pathUTI(v24, v32, v33, v34);
        v40 = objc_msgSend_copy(v36, v37, v38, v39);
        v41 = *(v16 + 18);
        *(v16 + 18) = v40;
      }

      v42 = objc_alloc_init(MEMORY[0x277CCABD8]);
      v43 = *(v16 + 5);
      *(v16 + 5) = v42;

      objc_msgSend_setMaxConcurrentOperationCount_(*(v16 + 5), v44, 1, v45);
      objc_msgSend_setName_(*(v16 + 5), v46, @"com.iwork.importPresentedItem", v47);
      v48 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v49 = *(v16 + 6);
      *(v16 + 6) = v48;

      v52 = objc_msgSend_tsu_fileURLWithPath_(MEMORY[0x277CBEBC0], v50, *(v16 + 12), v51);
      objc_msgSend__setPresentedItemURL_(v16, v53, v52, v54);
    }

    self = v16;
    selfCopy = self;
  }

  else
  {
    v56 = MEMORY[0x277D81150];
    v57 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "[TSAImportController initWithPath:documentType:delegate:]", v11);
    v60 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v58, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/application/common/TSAImportController.m", v59);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v56, v61, v57, v60, 95, 0, "Path for document to import is nil");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v62, v63, v64);
    selfCopy = 0;
  }

  return selfCopy;
}

- (void)dealloc
{
  if (self->_importer && (*&self->_flags & 2) == 0)
  {
    v4 = MEMORY[0x277D81150];
    v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSAImportController dealloc]", v2);
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/application/common/TSAImportController.m", v7);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v4, v9, v5, v8, 126, 0, "Import did not finish properly before deallocating.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v10, v11, v12);
  }

  objc_msgSend__setPresentedItemURL_(self, a2, 0, v2);
  v13.receiver = self;
  v13.super_class = TSAImportController;
  [(TSAImportController *)&v13 dealloc];
}

- (int64_t)documentTypeCategory
{
  v5 = objc_msgSend_tsa_sharedPropertiesProvider(TSABaseApplicationDelegate, a2, v2, v3);
  v9 = objc_msgSend_compatibilityDelegate(v5, v6, v7, v8);
  isSageDocumentType = objc_msgSend_isSageDocumentType_(v9, v10, self->_documentType, v11);

  if (isSageDocumentType)
  {
    v16 = 1;
  }

  else
  {
    documentType = self->_documentType;
    v18 = objc_msgSend_tangierEditingFormatDocumentType(v5, v13, v14, v15);
    LODWORD(documentType) = objc_msgSend_tsu_conformsToUTI_(documentType, v19, v18, v20);

    if (documentType)
    {
      v16 = 0;
    }

    else
    {
      v16 = 2;
    }
  }

  return v16;
}

- (id)importWithCompletionQueue:(id)queue completionHandler:(id)handler
{
  queueCopy = queue;
  handlerCopy = handler;
  v10 = objc_msgSend_discreteProgressWithTotalUnitCount_(MEMORY[0x277CCAC48], v8, 100, v9);
  objc_initWeak(&location, self);
  v15 = MEMORY[0x277D85DD0];
  v16 = 3221225472;
  v17 = sub_2760BF58C;
  v18 = &unk_27A6B0550;
  objc_copyWeak(&v19, &location);
  objc_msgSend_setCancellationHandler_(v10, v11, &v15, v12);
  objc_msgSend_importWithProgress_completionQueue_completionHandler_(self, v13, v10, queueCopy, handlerCopy, v15, v16, v17, v18);
  objc_destroyWeak(&v19);
  objc_destroyWeak(&location);

  return v10;
}

- (id)displayNameForURL:(id)l
{
  v4 = MEMORY[0x277CCAA00];
  lCopy = l;
  v9 = objc_msgSend_defaultManager(v4, v6, v7, v8);
  v13 = objc_msgSend_path(lCopy, v10, v11, v12);

  v16 = objc_msgSend_displayNameAtPath_(v9, v14, v13, v15);

  if ((objc_opt_respondsToSelector() & 1) != 0 && objc_msgSend_shouldObscureFileExtension(self->_importer, v17, v18, v19))
  {
    v23 = objc_msgSend_stringByDeletingPathExtension(v16, v20, v21, v22);

    v16 = v23;
  }

  return v16;
}

- (id)obscuredProgressImage
{
  if (objc_opt_respondsToSelector())
  {
    v6 = objc_msgSend_obscuredProgressImage(self->_importer, v3, v4, v5);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)prepareForImportDisplayingProgress:(id)progress completionQueue:(id)queue completionHandler:(id)handler
{
  progressCopy = progress;
  queueCopy = queue;
  handlerCopy = handler;
  if (self->_importer)
  {
    v14 = MEMORY[0x277D81150];
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "[TSAImportController prepareForImportDisplayingProgress:completionQueue:completionHandler:]", v12);
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/application/common/TSAImportController.m", v17);
    v19 = objc_opt_class();
    v20 = NSStringFromClass(v19);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v14, v21, v15, v18, 182, 0, "Importer should not yet exist. Create a new %@ to perform another import.", v20);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v22, v23, v24);
  }

  v27 = objc_msgSend_importerClass(self, v10, v11, v12);
  if (!v27)
  {
    v28 = MEMORY[0x277D81150];
    v29 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v25, "[TSAImportController prepareForImportDisplayingProgress:completionQueue:completionHandler:]", v26);
    v32 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v30, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/application/common/TSAImportController.m", v31);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v28, v33, v29, v32, 185, 0, "Could not determine importer class for document type = %@", self->_documentType);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v34, v35, v36);
  }

  if ((objc_msgSend_conformsToProtocol_(v27, v25, &unk_2885444A0, v26) & 1) == 0)
  {
    v39 = MEMORY[0x277D81150];
    v40 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v37, "[TSAImportController prepareForImportDisplayingProgress:completionQueue:completionHandler:]", v38);
    v43 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v41, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/application/common/TSAImportController.m", v42);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v39, v44, v40, v43, 186, 0, "Expecting the importer class for type %@ to conform to the TSKImporter protocol", self->_documentType);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v45, v46, v47);
  }

  v48 = [v27 alloc];
  v51 = objc_msgSend_tsu_fileURLWithPath_(MEMORY[0x277CBEBC0], v49, self->_sourcePath, v50);
  v54 = objc_msgSend_initWithURL_(v48, v52, v51, v53);
  importer = self->_importer;
  self->_importer = v54;

  if (self->_importer)
  {
    v58 = objc_opt_new();
    v128[0] = MEMORY[0x277D85DD0];
    v128[1] = 3221225472;
    v128[2] = sub_2760BFF3C;
    v128[3] = &unk_27A6B0578;
    v59 = progressCopy;
    v129 = v59;
    v62 = objc_msgSend_addProgressObserverBlock_(v58, v60, v128, v61);
    objc_msgSend_setProgressContext_(self->_importer, v63, v58, v64);
    v123[0] = MEMORY[0x277D85DD0];
    v123[1] = 3221225472;
    v123[2] = sub_2760BFF90;
    v123[3] = &unk_27A6B05C8;
    v124 = v59;
    selfCopy = self;
    v65 = handlerCopy;
    v127 = v65;
    v66 = queueCopy;
    v126 = v66;
    v67 = MEMORY[0x277C95D60](v123);
    if (!objc_msgSend_conformsToProtocol_(self->_importer, v68, &unk_28854A6F8, v69))
    {
      v67[2](v67);
LABEL_35:

      v97 = v129;
      goto LABEL_36;
    }

    v70 = progressCopy;
    v71 = self->_importer;
    v122 = 0;
    v121 = 0;
    v107 = v71;
    isDocumentEncryptedUnsupportedVersion_errorMessage = objc_msgSend_isDocumentEncryptedUnsupportedVersion_errorMessage_(v71, v72, &v122, &v121);
    v74 = v121;
    v78 = v74;
    if (isDocumentEncryptedUnsupportedVersion_errorMessage)
    {
      *&self->_flags |= 1u;
      if ((v122 & 1) == 0)
      {
        v117[0] = MEMORY[0x277D85DD0];
        v117[1] = 3221225472;
        v117[2] = sub_2760C01B0;
        v117[3] = &unk_27A6B05F0;
        v119 = v67;
        v120 = v65;
        v118 = v66;
        selfCopy2 = self;
        v100 = v107;
        objc_msgSend_retrievePassphraseForEncryptedDocumentWithImporter_completion_(selfCopy2, v101, v107, v117);

        progressCopy = v70;
LABEL_34:

        goto LABEL_35;
      }

      if (v74)
      {
        progressCopy = v70;
        v79 = v74;
        objc_msgSend_importErrorWithCode_description_failureReason_underlyingError_(self, v80, 0, 0, v79, 0);
      }

      else
      {
        v102 = objc_msgSend_tsu_resourcesBundle(MEMORY[0x277CCA8D8], v75, v76, v77);
        v106 = objc_msgSend_localizedStringForKey_value_table_(v102, v103, @"The document can\\U2019t be opened because it uses an unsupported method of encryption.", &stru_288512028, @"TSApplication");

        progressCopy = v70;
        v79 = v106;
        objc_msgSend_importErrorWithCode_description_failureReason_underlyingError_(self, v104, 0, 0, v106, 0);
      }
      v105 = ;
      if (v65)
      {
        if (v66)
        {
          v114[0] = MEMORY[0x277D85DD0];
          v114[1] = 3221225472;
          v114[2] = sub_2760C02B8;
          v114[3] = &unk_27A6B02C0;
          v116 = v65;
          v115 = v105;
          dispatch_async(v66, v114);
        }

        else
        {
          (*(v65 + 2))(v65, 0, v105);
        }
      }
    }

    else if (v74)
    {
      v98 = objc_msgSend_importErrorWithCode_description_failureReason_underlyingError_(self, v75, 0, 0, v74, 0);
      progressCopy = v70;
      if (v65)
      {
        if (v66)
        {
          v111[0] = MEMORY[0x277D85DD0];
          v111[1] = 3221225472;
          v111[2] = sub_2760C02D0;
          v111[3] = &unk_27A6B02C0;
          v113 = v65;
          v112 = v98;
          dispatch_async(v66, v111);
        }

        else
        {
          (*(v65 + 2))(v65, 0, v98);
        }
      }
    }

    else
    {
      v67[2](v67);
      progressCopy = v70;
    }

    v100 = v107;
    goto LABEL_34;
  }

  v81 = progressCopy;
  v82 = MEMORY[0x277D81150];
  v83 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v56, "[TSAImportController prepareForImportDisplayingProgress:completionQueue:completionHandler:]", v57);
  v86 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v84, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/application/common/TSAImportController.m", v85);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v82, v87, v83, v86, 243, 0, "Could not create importer for document at %@.", self->_sourcePath);

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v88, v89, v90);
  v94 = objc_msgSend_tsu_resourcesBundle(MEMORY[0x277CCA8D8], v91, v92, v93);
  v58 = objc_msgSend_localizedStringForKey_value_table_(v94, v95, @"The file format is invalid.", &stru_288512028, @"TSApplication");

  v97 = objc_msgSend_importErrorWithCode_description_failureReason_underlyingError_(self, v96, 0, 0, v58, 0);
  if (handlerCopy)
  {
    if (queueCopy)
    {
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = sub_2760C02E8;
      block[3] = &unk_27A6B02C0;
      v110 = handlerCopy;
      v97 = v97;
      v109 = v97;
      dispatch_async(queueCopy, block);
    }

    else
    {
      (*(handlerCopy + 2))(handlerCopy, 0, v97);
    }
  }

  progressCopy = v81;
LABEL_36:
}

- (void)importWithProgress:(id)progress completionQueue:(id)queue completionHandler:(id)handler
{
  progressCopy = progress;
  queueCopy = queue;
  handlerCopy = handler;
  v14 = objc_msgSend_importQueue(self, v11, v12, v13);
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = sub_2760C0408;
  v19[3] = &unk_27A6B0640;
  v19[4] = self;
  v20 = progressCopy;
  v21 = queueCopy;
  v22 = handlerCopy;
  v15 = handlerCopy;
  v16 = queueCopy;
  v17 = progressCopy;
  objc_msgSend_prepareForImportDisplayingProgress_completionQueue_completionHandler_(self, v18, v17, v14, v19);
}

- (Class)importerClass
{
  v5 = objc_msgSend_sharedPropertiesProvider(TSABaseApplicationDelegate, a2, v2, v3);
  v9 = objc_msgSend_compatibilityDelegate(v5, v6, v7, v8);
  documentType = self->_documentType;
  v14 = objc_msgSend_sourcePath(self, v11, v12, v13);
  v16 = objc_msgSend_importerClassForType_path_(v9, v15, documentType, v14);

  return v16;
}

- (void)retrievePassphraseForEncryptedDocumentWithImporter:(id)importer completion:(id)completion
{
  importerCopy = importer;
  completionCopy = completion;
  v7 = MEMORY[0x277D81150];
  v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "[TSAImportController retrievePassphraseForEncryptedDocumentWithImporter:completion:]", v9);
  v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/application/common/TSAImportController.m", v12);
  v14 = objc_opt_class();
  v15 = NSStringFromClass(v14);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v16, v10, v13, 276, 0, "Abstract method not overridden by %{public}@", v15);

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v17, v18, v19);
  v20 = MEMORY[0x277CBEAD8];
  v21 = *MEMORY[0x277CBE658];
  v22 = MEMORY[0x277CCACA8];
  v23 = objc_opt_class();
  v24 = NSStringFromClass(v23);
  v27 = objc_msgSend_stringWithFormat_(v22, v25, @"Abstract method not overridden by %@: %s", v26, v24, "[TSAImportController retrievePassphraseForEncryptedDocumentWithImporter:completion:]");
  v29 = objc_msgSend_exceptionWithName_reason_userInfo_(v20, v28, v21, v27, 0);
  v30 = v29;

  objc_exception_throw(v29);
}

- (void)_beginImportWithProgress:(id)progress completionQueue:(id)queue completionHandler:(id)handler
{
  progressCopy = progress;
  queueCopy = queue;
  handlerCopy = handler;
  if (TSAImportCat_init_token != -1)
  {
    sub_27610CB78();
  }

  if (!self->_temporaryURLShouldBeAppropriateForReplacingSourcePath)
  {
    v75 = objc_alloc(MEMORY[0x277D81350]);
    v143 = 0;
    v16 = objc_msgSend_initWithSignature_error_(v75, v76, @"import", &v143);
    v17 = v143;
    if (v16)
    {
      goto LABEL_5;
    }

LABEL_10:
    handlerCopy[2](handlerCopy, 0, v17, &unk_28850F810);
    goto LABEL_21;
  }

  v13 = objc_msgSend_tsu_fileURLWithPath_(MEMORY[0x277CBEBC0], v10, self->_sourcePath, v11);
  v14 = objc_alloc(MEMORY[0x277D81350]);
  v144[0] = 0;
  v16 = objc_msgSend_initForWritingToURL_error_(v14, v15, v13, v144);
  v17 = v144[0];

  if (!v16)
  {
    goto LABEL_10;
  }

LABEL_5:
  v127 = progressCopy;
  v128 = queueCopy;
  objc_storeStrong(&self->_temporaryDirectory, v16);
  v21 = objc_msgSend_tsa_sharedPropertiesProvider(TSABaseApplicationDelegate, v18, v19, v20);
  v25 = objc_msgSend_stringByDeletingLastPathComponent(self->_sourcePath, v22, v23, v24);
  v29 = objc_msgSend_tangierEditingFormatDocumentType(v21, v26, v27, v28);
  v35 = objc_msgSend_tsu_pathConformsToUTI_(v25, v30, v29, v31);
  sourcePath = v25;
  if ((v35 & 1) == 0)
  {
    sourcePath = self->_sourcePath;
  }

  v37 = objc_msgSend_lastPathComponent(sourcePath, v32, v33, v34);

  v126 = v37;
  v41 = objc_msgSend_stringByDeletingPathExtension(v37, v38, v39, v40);
  v45 = objc_msgSend_nativeDocumentExtension(v21, v42, v43, v44);
  v48 = objc_msgSend_tsu_tolerantStringByAppendingPathExtension_(v41, v46, v45, v47);

  v52 = objc_msgSend_URL(v16, v49, v50, v51);
  v125 = v48;
  v55 = objc_msgSend_URLByAppendingPathComponent_(v52, v53, v48, v54);
  temporaryURL = self->_temporaryURL;
  self->_temporaryURL = v55;

  v60 = objc_msgSend_progressContext(self->_importer, v57, v58, v59);
  objc_msgSend_reset(v60, v61, v62, v63);
  objc_msgSend_createStageWithSteps_takingSteps_(v60, v64, v65, v66, 100.0, 100.0);
  v67 = TSUProtocolCast();
  LOBYTE(v45) = objc_msgSend_canCreateFile(v67, v68, v69, v70, &unk_28854A758);

  if (v45)
  {
    v129[0] = MEMORY[0x277D85DD0];
    v129[1] = 3221225472;
    v129[2] = sub_2760C0F5C;
    v129[3] = &unk_27A6B06B8;
    v131 = handlerCopy;
    v130 = v16;
    objc_msgSend__continueImportWithProgress_success_error_completedSteps_completionQueue_completionHandler_(self, v74, progressCopy, 1, 0, 0, v128, v129);
  }

  else
  {
    v139 = 0;
    v140 = &v139;
    v141 = 0x2020000000;
    v142 = 0;
    v77 = objc_msgSend_initialTemplateName(self->_importer, v71, v72, v73);
    if (objc_opt_respondsToSelector())
    {
      v81 = objc_msgSend_initialVariantIndex(self->_importer, v78, v79, v80);
    }

    else
    {
      v81 = 0;
    }

    v123 = v77;
    v82 = objc_msgSend_templateDocumentWithName_variantIndex_(self, v78, v77, v81);
    v133[0] = MEMORY[0x277D85DD0];
    v133[1] = 3221225472;
    v133[2] = sub_2760C0CDC;
    v133[3] = &unk_27A6B0690;
    v133[4] = self;
    v134 = progressCopy;
    v138 = &v139;
    v135 = v128;
    v137 = handlerCopy;
    v136 = v16;
    v86 = MEMORY[0x277C95D60](v133);
    v87 = *(v140 + 6);
    v124 = v82;
    if (v82)
    {
      *(v140 + 6) = v87 + 5;
      objc_msgSend_createStageWithSteps_takingSteps_(v60, v83, v84, v85, 1.0, 5.0);
      v132 = 0;
      v89 = objc_msgSend_makeObjectContextWithTemplateDocument_error_(self, v88, v82, &v132);
      inited = v132;
      v94 = objc_msgSend_calculationEngine(v89, v91, v92, v93);
      objc_msgSend_pauseRecalculation(v94, v95, v96, v97);

      if (objc_msgSend_writingDirection(v89, v98, v99, v100) == 2)
      {
        objc_msgSend_updateWritingDirection_(v89, v101, 1, v103);
      }

      objc_msgSend_endStage(v60, v101, v102, v103);
      (v86)[2](v86, v89, inited);
    }

    else
    {
      *(v140 + 6) = v87 + 1;
      objc_msgSend_createStageWithSteps_takingSteps_(v60, v83, v84, v85, 1.0, 1.0);
      v104 = objc_alloc(MEMORY[0x277D80878]);
      v107 = objc_msgSend_initWithDelegate_(v104, v105, self, v106);
      documentContext = self->_documentContext;
      self->_documentContext = v107;

      v112 = objc_msgSend_sharedPropertiesProvider(TSABaseApplicationDelegate, v109, v110, v111);
      v116 = objc_msgSend_documentRootClass(v112, v113, v114, v115);

      v117 = [v116 alloc];
      inited = objc_msgSend_initDocumentObjectWithContext_(v117, v118, self->_documentContext, v119);
      objc_msgSend_endStage(v60, v120, v121, v122);
      (v86)[2](v86, inited, 0);
    }

    _Block_object_dispose(&v139, 8);
    progressCopy = v127;
  }

  queueCopy = v128;
LABEL_21:
}

- (void)_continueImportWithProgress:(id)progress success:(BOOL)success error:(id)error completedSteps:(int)steps completionQueue:(id)queue completionHandler:(id)handler
{
  v10 = *&steps;
  successCopy = success;
  progressCopy = progress;
  errorCopy = error;
  queueCopy = queue;
  handlerCopy = handler;
  if (successCopy)
  {
    objc_msgSend__performImportWithProgress_completedSteps_completionQueue_completionHandler_(self, v16, progressCopy, v10, queueCopy, handlerCopy);
  }

  else
  {
    if (objc_msgSend_tsu_isOutOfSpaceError(errorCopy, v16, v17, v18) && (objc_opt_respondsToSelector() & 1) != 0)
    {
      objc_msgSend_importControllerDidRunOutOfSpace_(self->_delegate, v20, self, v21);
    }

    objc_msgSend_finishImportWithProgress_success_error_completionQueue_completionHandler_(self, v20, progressCopy, 0, errorCopy, queueCopy, handlerCopy);
  }
}

- (id)templateDocumentWithName:(id)name variantIndex:(unint64_t)index
{
  nameCopy = name;
  v5 = MEMORY[0x277D81150];
  v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "[TSAImportController templateDocumentWithName:variantIndex:]", v7);
  v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/application/common/TSAImportController.m", v10);
  v12 = objc_opt_class();
  v13 = NSStringFromClass(v12);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v5, v14, v8, v11, 477, 0, "Abstract method not overridden by %{public}@", v13);

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v15, v16, v17);
  v18 = MEMORY[0x277CBEAD8];
  v19 = *MEMORY[0x277CBE658];
  v20 = MEMORY[0x277CCACA8];
  v21 = objc_opt_class();
  v22 = NSStringFromClass(v21);
  v25 = objc_msgSend_stringWithFormat_(v20, v23, @"Abstract method not overridden by %@: %s", v24, v22, "[TSAImportController templateDocumentWithName:variantIndex:]");
  v27 = objc_msgSend_exceptionWithName_reason_userInfo_(v18, v26, v19, v25, 0);
  v28 = v27;

  objc_exception_throw(v27);
}

- (BOOL)_saveContextToTemporaryURL:(id)l passphrase:(id)passphrase originalURL:(id)rL documentUUID:(id)d error:(id *)error
{
  lCopy = l;
  passphraseCopy = passphrase;
  rLCopy = rL;
  dCopy = d;
  if (passphraseCopy && !objc_msgSend_setPassphrase_(self->_documentContext, v15, passphraseCopy, v16))
  {
    LOBYTE(v44) = 0;
  }

  else
  {
    objc_msgSend_beginSaveToURL_updateType_packageType_documentUUID_(self->_documentContext, v15, lCopy, 4, 2, dCopy);
    objc_msgSend_beginWriteWithOriginalURL_(self->_documentContext, v18, rLCopy, v19);
    documentContext = self->_documentContext;
    v24 = objc_msgSend_decryptionKey(documentContext, v21, v22, v23);
    v26 = objc_msgSend_writeToURL_encryptionKey_error_(documentContext, v25, lCopy, v24, error);

    if ((objc_msgSend_isPasswordProtected(self, v27, v28, v29) & 1) == 0)
    {
      v36 = objc_msgSend_documentPreviewImage(self, v30, v31, v32);
      if (v36)
      {
        v37 = objc_msgSend_documentRoot(self, v33, v34, v35);
        v38 = objc_opt_class();
        v42 = objc_msgSend_currentPackageDataWriter(self->_documentContext, v39, v40, v41);
        v26 = objc_msgSend_writePreviewImagesToPackageDataWriter_scalableImage_(v38, v43, v42, v36);
      }
    }

    v44 = objc_msgSend_endWriteWithSuccess_error_(self->_documentContext, v30, v26, error);
    objc_msgSend_endSaveWithSuccess_(self->_documentContext, v45, v44, v46);
  }

  return v44;
}

- (void)_setBuildVersionHistory
{
  v16[1] = *MEMORY[0x277D85DE8];
  v5 = objc_msgSend_documentRoot(self, a2, v2, v3);
  if (v5)
  {
    if ((objc_opt_respondsToSelector() & 1) == 0 || (objc_msgSend_buildVersionHistory(self->_importer, v6, v7, v8), (v9 = objc_claimAutoreleasedReturnValue()) == 0))
    {
      v10 = objc_msgSend_sourcePath(self, v6, v7, v8);
      v14 = objc_msgSend_pathExtension(v10, v11, v12, v13);
      v16[0] = v14;
      v9 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v15, v16, 1);
    }

    objc_msgSend_setBuildVersionHistory_(v5, v6, v9, v8);
  }
}

- (void)_performImportWithProgress:(id)progress completedSteps:(int)steps completionQueue:(id)queue completionHandler:(id)handler
{
  progressCopy = progress;
  queueCopy = queue;
  handlerCopy = handler;
  v51 = 0;
  v52 = &v51;
  v53 = 0x2020000000;
  v54 = 1;
  v45 = 0;
  v46 = &v45;
  v47 = 0x3032000000;
  v48 = sub_2760C17A0;
  v49 = sub_2760C17B0;
  v50 = 0;
  v15 = objc_msgSend_tsu_fileURLWithPath_(MEMORY[0x277CBEBC0], v13, self->_sourcePath, v14);
  v40[0] = MEMORY[0x277D85DD0];
  v40[1] = 3221225472;
  v40[2] = sub_2760C17B8;
  v40[3] = &unk_27A6B0758;
  v40[4] = self;
  stepsCopy = steps;
  v16 = progressCopy;
  v41 = v16;
  v42 = &v51;
  v43 = &v45;
  v17 = MEMORY[0x277C95D60](v40);
  if (objc_msgSend_needsFileCoordination(self, v18, v19, v20))
  {
    v21 = objc_alloc(MEMORY[0x277CCA9E8]);
    v26 = objc_msgSend_initWithFilePresenter_(v21, v22, self, v23);
    if (!v26)
    {
      v27 = MEMORY[0x277D81150];
      v28 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v24, "[TSAImportController _performImportWithProgress:completedSteps:completionQueue:completionHandler:]", v25);
      v31 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v29, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/application/common/TSAImportController.m", v30);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v27, v32, v28, v31, 811, 0, "invalid nil value for '%{public}s'", "importFileCoordinator");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v33, v34, v35);
    }

    v39 = 0;
    objc_msgSend_coordinateReadingItemAtURL_options_error_byAccessor_(v26, v24, v15, 0, &v39, v17);
    v36 = v39;
    v37 = v39;
    if (v37 && TSAImportCat_init_token != -1)
    {
      sub_27610CB8C();
    }

    if ((v52[3] & 1) == 0 && v37 && !v46[5])
    {
      objc_storeStrong(v46 + 5, v36);
    }
  }

  else
  {
    (v17)[2](v17, v15);
  }

  objc_msgSend_finishImportWithProgress_success_error_completionQueue_completionHandler_(self, v38, v16, *(v52 + 24), v46[5], queueCopy, handlerCopy);

  _Block_object_dispose(&v45, 8);
  _Block_object_dispose(&v51, 8);
}

- (void)prepareDocumentPreviewImage
{
  if (objc_msgSend_shouldSaveDocumentPreviewImage(self, a2, v2, v3) && (objc_msgSend_isPasswordProtected(self, v5, v6, v7) & 1) == 0)
  {
    v19 = objc_msgSend_documentRoot(self, v8, v9, v10);
    objc_msgSend_prepareToGeneratePreview(v19, v11, v12, v13);
    v17 = objc_msgSend_previewImage(v19, v14, v15, v16);
    documentPreviewImage = self->_documentPreviewImage;
    self->_documentPreviewImage = v17;
  }
}

- (TSUImage)documentPreviewImage
{
  if (objc_msgSend_isPasswordProtected(self, a2, v2, v3))
  {
    v7 = MEMORY[0x277D81150];
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "[TSAImportController documentPreviewImage]", v6);
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/application/common/TSAImportController.m", v10);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v12, v8, v11, 957, 0, "documentPreviewImage isn't valid on password protected documents");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v13, v14, v15);
  }

  documentPreviewImage = self->_documentPreviewImage;

  return documentPreviewImage;
}

- (TSADocumentRoot)documentRoot
{
  v6 = objc_msgSend_documentObject(self->_documentContext, a2, v2, v3);
  if (!v6)
  {
    v7 = MEMORY[0x277D81150];
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "[TSAImportController documentRoot]", v5);
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/application/common/TSAImportController.m", v10);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v12, v8, v11, 963, 0, "invalid nil value for '%{public}s'", "documentObject");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v13, v14, v15);
  }

  objc_opt_class();
  v16 = TSUCheckedDynamicCast();

  return v16;
}

- (void)finishImportWithProgress:(id)progress success:(BOOL)success error:(id)error completionQueue:(id)queue completionHandler:(id)handler
{
  successCopy = success;
  v69 = *MEMORY[0x277D85DE8];
  progressCopy = progress;
  errorCopy = error;
  queueCopy = queue;
  handlerCopy = handler;
  if (TSAImportCat_init_token != -1)
  {
    sub_27610CC98();
  }

  isCancelled = objc_msgSend_isCancelled(progressCopy, v15, v16, v17);
  v59 = queueCopy;
  v23 = progressCopy;
  if (!errorCopy && isCancelled)
  {
    errorCopy = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x277CCA9B8], v20, *MEMORY[0x277CCA050], 3072, 0);
  }

  if (errorCopy)
  {
    v24 = 0;
  }

  else
  {
    v24 = successCopy;
  }

  v25 = objc_msgSend_documentRoot(self, v20, v21, v22);
  v64 = 0u;
  v65 = 0u;
  v66 = 0u;
  v67 = 0u;
  v26 = self->_importWarnings;
  v28 = objc_msgSend_countByEnumeratingWithState_objects_count_(v26, v27, &v64, v68, 16);
  if (v28)
  {
    v31 = v28;
    v32 = *v65;
    do
    {
      for (i = 0; i != v31; ++i)
      {
        if (*v65 != v32)
        {
          objc_enumerationMutation(v26);
        }

        objc_msgSend_addWarning_(v25, v29, *(*(&v64 + 1) + 8 * i), v30);
      }

      v31 = objc_msgSend_countByEnumeratingWithState_objects_count_(v26, v29, &v64, v68, 16);
    }

    while (v31);
  }

  objc_msgSend_setDelegate_(v25, v34, 0, v35);
  if (v24)
  {
    objc_msgSend__setBuildVersionHistory(self, v36, v37, v38);
    v42 = v23;
    v43 = v59;
  }

  else
  {
    objc_msgSend_cleanupForImportFailure(v25, v36, v37, v38);
    v42 = v23;
    v43 = v59;
    if (objc_msgSend_tsu_isOutOfSpaceError(errorCopy, v44, v45, v46) && (objc_opt_respondsToSelector() & 1) != 0)
    {
      objc_msgSend_importControllerDidRunOutOfSpace_(self->_delegate, v39, self, v41);
    }
  }

  v47 = objc_msgSend_progressContext(self->_importer, v39, v40, v41);
  objc_msgSend_endStage(v47, v48, v49, v50);
  *&self->_flags |= 2u;
  v54 = objc_msgSend_calculationEngine(v25, v51, v52, v53);
  objc_msgSend_resumeRecalculation(v54, v55, v56, v57);

  if (handlerCopy)
  {
    if (v43)
    {
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = sub_2760C2B88;
      block[3] = &unk_27A6B0780;
      v63 = v24;
      v62 = handlerCopy;
      block[4] = self;
      v61 = errorCopy;
      dispatch_async(v43, block);
    }

    else
    {
      if (v24)
      {
        temporaryURL = self->_temporaryURL;
      }

      else
      {
        temporaryURL = 0;
      }

      (*(handlerCopy + 2))(handlerCopy, temporaryURL, errorCopy);
    }
  }
}

- (void)cancelImport
{
  if (TSAImportCat_init_token != -1)
  {
    sub_27610CCAC();
  }

  resourceAccessProgress = self->_resourceAccessProgress;
  if (resourceAccessProgress)
  {
    objc_msgSend_cancel(resourceAccessProgress, a2, v2, v3);
    v6 = self->_resourceAccessProgress;
    self->_resourceAccessProgress = 0;
  }

  else
  {
    importer = self->_importer;

    objc_msgSend_cancel(importer, a2, v2, v3);
  }
}

- (id)importErrorWithCode:(int64_t)code description:(id)description failureReason:(id)reason underlyingError:(id)error
{
  v23[1] = *MEMORY[0x277D85DE8];
  descriptionCopy = description;
  reasonCopy = reason;
  errorCopy = error;
  v15 = errorCopy;
  if (reasonCopy)
  {
    if (errorCopy)
    {
LABEL_3:
      v22 = *MEMORY[0x277CCA7E8];
      v23[0] = v15;
      v16 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v12, v23, &v22, 1);
      objc_msgSend_tsu_errorWithDomain_code_alertTitle_alertMessage_userInfo_(MEMORY[0x277CCA9B8], v17, @"com.apple.iWork.TSApplication", code, descriptionCopy, reasonCopy, v16);
      goto LABEL_6;
    }
  }

  else
  {
    v18 = objc_msgSend_tsu_resourcesBundle(MEMORY[0x277CCA8D8], v12, v13, v14);
    reasonCopy = objc_msgSend_localizedStringForKey_value_table_(v18, v19, @"An error occurred.", &stru_288512028, @"TSApplication");

    if (v15)
    {
      goto LABEL_3;
    }
  }

  v16 = 0;
  objc_msgSend_tsu_errorWithDomain_code_alertTitle_alertMessage_userInfo_(MEMORY[0x277CCA9B8], v12, @"com.apple.iWork.TSApplication", code, descriptionCopy, reasonCopy, 0);
  v20 = LABEL_6:;

  return v20;
}

- (void)relinquishPresentedItemToWriter:(id)writer
{
  deferredWriters = self->_deferredWriters;
  v7 = objc_msgSend_copy(writer, a2, writer, v3);
  objc_msgSend_addObject_(deferredWriters, v5, v7, v6);
}

- (void)presentedItemDidMoveToURL:(id)l
{
  lCopy = l;
  if (objc_opt_respondsToSelector())
  {
    v7 = MEMORY[0x277D85DD0];
    v8 = 3221225472;
    v9 = sub_2760C2EF4;
    v10 = &unk_27A6B0248;
    selfCopy = self;
    v12 = lCopy;
    dispatch_async(MEMORY[0x277D85CD0], &v7);
  }

  objc_msgSend__setPresentedItemURL_(self, v5, lCopy, v6, v7, v8, v9, v10, selfCopy);
}

- (void)_setPresentedItemURL:(id)l
{
  v31 = *MEMORY[0x277D85DE8];
  lCopy = l;
  if (objc_msgSend_needsFileCoordination(self, v5, v6, v7))
  {
    if (self->_presentedItemURL)
    {
      objc_msgSend_removeFilePresenter_(MEMORY[0x277CCA9E8], v8, self, v10);
      if (objc_msgSend_count(self->_deferredWriters, v11, v12, v13))
      {
        v28 = 0u;
        v29 = 0u;
        v26 = 0u;
        v27 = 0u;
        v14 = self->_deferredWriters;
        v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v14, v15, &v26, v30, 16);
        if (v16)
        {
          v17 = v16;
          v18 = *v27;
          do
          {
            v19 = 0;
            do
            {
              if (*v27 != v18)
              {
                objc_enumerationMutation(v14);
              }

              (*(*(*(&v26 + 1) + 8 * v19) + 16))(*(*(&v26 + 1) + 8 * v19));
              ++v19;
            }

            while (v17 != v19);
            v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(v14, v20, &v26, v30, 16);
          }

          while (v17);
        }

        objc_msgSend_removeAllObjects(self->_deferredWriters, v21, v22, v23, v26);
      }
    }

    if (lCopy)
    {
      objc_msgSend_addFilePresenter_(MEMORY[0x277CCA9E8], v8, self, v10);
    }
  }

  if (self->_presentedItemURL != lCopy)
  {
    v24 = objc_msgSend_copy(lCopy, v8, v9, v10);
    presentedItemURL = self->_presentedItemURL;
    self->_presentedItemURL = v24;
  }
}

- (id)name
{
  v4 = objc_msgSend_lastPathComponent(self->_fileURL, a2, v2, v3);
  v8 = objc_msgSend_tsa_displayNameFromFilename(v4, v5, v6, v7);

  return v8;
}

- (void)addWarning:(id)warning
{
  warningCopy = warning;
  v22 = warningCopy;
  if (!self->_importWarnings)
  {
    v8 = objc_alloc_init(MEMORY[0x277CBEB58]);
    importWarnings = self->_importWarnings;
    self->_importWarnings = v8;

    warningCopy = v22;
  }

  v10 = objc_msgSend_message(warningCopy, v5, v6, v7);

  if (!v10)
  {
    v13 = MEMORY[0x277D81150];
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "[TSAImportController addWarning:]", v12);
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/application/common/TSAImportController.m", v16);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v13, v18, v14, v17, 1134, 0, "Given a warning with a nil message, probably not going to be very useful");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v19, v20, v21);
  }

  objc_msgSend_addObject_(self->_importWarnings, v11, v22, v12);
}

- (void)addIncompatibleMediaContainer:(id)container incompatibleData:(id)data compatibilityLevel:(int64_t)level
{
  v7 = objc_msgSend_documentRoot(self, a2, container, data, level);
  objc_msgSend_setNeedsMediaCompatibilityUpgrade_(v7, v5, 1, v6);
}

- (id)packageDataForWrite
{
  v4 = objc_msgSend_documentRoot(self, a2, v2, v3);
  v8 = objc_msgSend_packageDataForWrite(v4, v5, v6, v7);

  return v8;
}

- (NSDictionary)additionalDocumentPropertiesForWrite
{
  v4 = objc_msgSend_documentRoot(self, a2, v2, v3);
  v8 = objc_msgSend_additionalDocumentPropertiesForWrite(v4, v5, v6, v7);

  return v8;
}

- (NSDictionary)additionalDocumentSupportPropertiesForWrite
{
  v4 = objc_msgSend_documentRoot(self, a2, v2, v3);
  v8 = objc_msgSend_additionalDocumentSupportPropertiesForWrite(v4, v5, v6, v7);

  return v8;
}

- (id)additionalResourceRequestsForObjectContext:(id)context
{
  contextCopy = context;
  objc_opt_class();
  v7 = objc_msgSend_documentObject(contextCopy, v4, v5, v6);
  v8 = TSUDynamicCast();

  v11 = objc_msgSend_additionalResourceRequestsForObjectContext_(v8, v9, contextCopy, v10);

  return v11;
}

- (void)presentPersistenceError:(id)error
{
  errorCopy = error;
  v9 = objc_msgSend_sharedDelegate(TSABaseApplicationDelegate, v4, v5, v6);
  objc_msgSend_persistenceError_(v9, v7, errorCopy, v8);
}

- (void)addPersistenceWarnings:(id)warnings
{
  v17 = *MEMORY[0x277D85DE8];
  warningsCopy = warnings;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = objc_msgSend_countByEnumeratingWithState_objects_count_(warningsCopy, v5, &v12, v16, 16);
  if (v6)
  {
    v9 = v6;
    v10 = *v13;
    do
    {
      v11 = 0;
      do
      {
        if (*v13 != v10)
        {
          objc_enumerationMutation(warningsCopy);
        }

        objc_msgSend_addWarning_(self, v7, *(*(&v12 + 1) + 8 * v11++), v8);
      }

      while (v9 != v11);
      v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(warningsCopy, v7, &v12, v16, 16);
    }

    while (v9);
  }
}

- (BOOL)areNewExternalReferencesToDataAllowed
{
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  delegate = self->_delegate;

  return MEMORY[0x2821F9670](delegate, sel_areNewExternalReferencesToDataAllowedForImportController_, self, v3);
}

- (TSADocumentPassphraseProvider)passphraseProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_passphraseProvider);

  return WeakRetained;
}

@end