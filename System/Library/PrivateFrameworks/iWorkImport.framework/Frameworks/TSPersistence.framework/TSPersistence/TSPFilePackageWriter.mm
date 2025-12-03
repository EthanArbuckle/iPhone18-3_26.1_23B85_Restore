@interface TSPFilePackageWriter
- (TSPFilePackageWriter)initWithURL:(id)l documentTargetURL:(id)rL relativeURLForExternalData:(id)data packageIdentifier:(unsigned __int8)identifier documentProperties:(id)properties documentMetadata:(id)metadata fileFormatVersion:(unint64_t)version updateType:(int64_t)self0 cloneMode:(BOOL)self1 documentSaveValidationPolicy:(id)self2 encryptionKey:(id)self3 originalDocumentPackage:(id)self4 originalSupportPackage:(id)self5 fileCoordinatorDelegate:(id)self6 progress:(id)self7 error:(id *)self8;
- (id)componentZipArchiveWriter;
- (id)zipArchiveWriter;
- (void)closeWithQueue:(id)queue completion:(id)completion;
- (void)finalizeComponentAndDataSectionWithCompletionHandler:(id)handler;
- (void)truncateZipAtFirstDeletedData:(id)data;
- (void)willWriteData:(id)data;
@end

@implementation TSPFilePackageWriter

- (TSPFilePackageWriter)initWithURL:(id)l documentTargetURL:(id)rL relativeURLForExternalData:(id)data packageIdentifier:(unsigned __int8)identifier documentProperties:(id)properties documentMetadata:(id)metadata fileFormatVersion:(unint64_t)version updateType:(int64_t)self0 cloneMode:(BOOL)self1 documentSaveValidationPolicy:(id)self2 encryptionKey:(id)self3 originalDocumentPackage:(id)self4 originalSupportPackage:(id)self5 fileCoordinatorDelegate:(id)self6 progress:(id)self7 error:(id *)self8
{
  identifierCopy = identifier;
  lCopy = l;
  rLCopy = rL;
  dataCopy = data;
  propertiesCopy = properties;
  metadataCopy = metadata;
  policyCopy = policy;
  keyCopy = key;
  packageCopy = package;
  v30 = dataCopy;
  supportPackageCopy = supportPackage;
  delegateCopy = delegate;
  v76.receiver = self;
  v76.super_class = TSPFilePackageWriter;
  v77[0] = 0;
  progressCopy = progress;
  v63 = delegateCopy;
  v64 = supportPackageCopy;
  v65 = keyCopy;
  v71 = packageCopy;
  v61 = packageCopy;
  v33 = rLCopy;
  v34 = lCopy;
  v35 = v30;
  v36 = identifierCopy;
  v69 = propertiesCopy;
  v66 = policyCopy;
  v67 = metadataCopy;
  v37 = [(TSPPackageWriter *)&v76 initWithURL:v34 documentTargetURL:v33 relativeURLForExternalData:v30 packageIdentifier:v36 documentProperties:propertiesCopy documentMetadata:metadataCopy fileFormatVersion:version updateType:type cloneMode:mode documentSaveValidationPolicy:policyCopy encryptionKey:keyCopy originalDocumentPackage:v61 originalSupportPackage:supportPackageCopy fileCoordinatorDelegate:delegateCopy progress:progressCopy error:v77];
  v38 = v77[0];
  v40 = v38;
  if (v37 && mode)
  {

    v41 = objc_alloc(MEMORY[0x277D81318]);
    v75 = 0;
    v43 = objc_msgSend_initForSavingToURL_error_(v41, v42, v34, &v75);
    v44 = v75;
    safeSaveAssistant = v37->_safeSaveAssistant;
    v37->_safeSaveAssistant = v43;

    if (v37->_safeSaveAssistant)
    {
      v46 = v35;
      v47 = v34;
      v48 = objc_alloc(MEMORY[0x277D81388]);
      v51 = objc_msgSend_writeURL(v37->_safeSaveAssistant, v49, v50);
      v74 = v44;
      v53 = objc_msgSend_initWithURL_error_(v48, v52, v51, &v74);
      v40 = v74;

      delayedZipArchiveWriter = v37->_delayedZipArchiveWriter;
      v37->_delayedZipArchiveWriter = v53;

      if (v37->_delayedZipArchiveWriter)
      {
        v55 = v71;
        v34 = v47;
        v35 = v46;
        goto LABEL_17;
      }

      v34 = v47;
      if (UnsafePointer != -1)
      {
        sub_276BD6FB0();
      }

      v35 = v46;
    }

    else
    {
      if (UnsafePointer != -1)
      {
        sub_276BD6FD8();
      }

      v40 = v44;
    }

    v56 = v37;
    v57 = dispatch_get_global_queue(0, 0);
    v72[0] = MEMORY[0x277D85DD0];
    v72[1] = 3221225472;
    v72[2] = sub_276AFB6B8;
    v72[3] = &unk_27A6E3A70;
    v58 = v56;
    v73 = v58;
    objc_msgSend_closeWithQueue_completion_(v58, v59, v57, v72);

    v37 = 0;
  }

  if (error && !v37)
  {
    objc_msgSend_tsp_ensureSaveErrorWithError_(MEMORY[0x277CCA9B8], v39, v40);
    *error = v37 = 0;
  }

  v55 = v71;
LABEL_17:

  return v37;
}

- (id)componentZipArchiveWriter
{
  delayedZipArchiveWriter = self->_delayedZipArchiveWriter;
  if (delayedZipArchiveWriter)
  {
    componentZipArchiveWriter = delayedZipArchiveWriter;
  }

  else
  {
    v5.receiver = self;
    v5.super_class = TSPFilePackageWriter;
    componentZipArchiveWriter = [(TSPPackageWriter *)&v5 componentZipArchiveWriter];
  }

  return componentZipArchiveWriter;
}

- (id)zipArchiveWriter
{
  if (self->_onlyWriteToDelayedZipArchive)
  {
    delayedZipArchiveWriter = self->_delayedZipArchiveWriter;
    if (delayedZipArchiveWriter)
    {
      v3 = delayedZipArchiveWriter;
      goto LABEL_7;
    }

    [(TSPPackageWriter *)&v6 zipArchiveWriter:v5.receiver];
  }

  else
  {
    [(TSPPackageWriter *)&v5 zipArchiveWriter:self];
  }
  v3 = ;
LABEL_7:

  return v3;
}

- (void)truncateZipAtFirstDeletedData:(id)data
{
  dataCopy = data;
  v7 = objc_msgSend_mutableCopy(dataCopy, v5, v6);
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = sub_276AFBCC0;
  v28[3] = &unk_27A6E7588;
  v28[4] = self;
  v8 = v7;
  v29 = v8;
  objc_msgSend_enumerateKeysAndObjectsUsingBlock_(dataCopy, v9, v28);
  v10 = v8;

  v27.receiver = self;
  v27.super_class = TSPFilePackageWriter;
  zipArchiveWriter = [(TSPPackageWriter *)&v27 zipArchiveWriter];
  v14 = objc_msgSend_entriesCount(zipArchiveWriter, v12, v13);
  onlyWriteToDelayedZipArchive = self->_onlyWriteToDelayedZipArchive;
  v20 = objc_msgSend_sortedEntries(zipArchiveWriter, v16, v17);
  v21 = 0;
  if (onlyWriteToDelayedZipArchive && v14 != 0)
  {
    v22 = 0;
  }

  else
  {
    v22 = 0x7FFFFFFFFFFFFFFFLL;
  }

  while (v21 < objc_msgSend_count(v20, v18, v19) && v22 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v24 = objc_msgSend_objectAtIndexedSubscript_(v20, v23, v21);
    v26 = objc_msgSend_dataForZipEntry_inDataToWrite_(self, v25, v24, v10);

    if (v26)
    {
      v22 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      if (UnsafePointer != -1)
      {
        sub_276BD7014();
      }

      v22 = v21;
    }

    ++v21;
  }

  if (v22 != 0x7FFFFFFFFFFFFFFFLL)
  {
    objc_msgSend_truncateToNumberOfEntries_completion_(zipArchiveWriter, v23, v22, &unk_2885C5EE8);
  }
}

- (void)willWriteData:(id)data
{
  v40 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  v5 = dataCopy;
  if (self->_delayedZipArchiveWriter)
  {
    v34 = dataCopy;
    v6 = objc_alloc(MEMORY[0x277CBEB38]);
    v9 = objc_msgSend_count(v5, v7, v8);
    v11 = objc_msgSend_initWithCapacity_(v6, v10, v9);
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v12 = v5;
    v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v13, &v35, v39, 16);
    v33 = 144;
    v17 = 0;
    if (v16)
    {
      v18 = *v36;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v36 != v18)
          {
            objc_enumerationMutation(v12);
          }

          v20 = *(*(&v35 + 1) + 8 * i);
          v21 = objc_msgSend_lengthIfLocal(v20, v14, v15, v33);
          v24 = objc_msgSend_packageLocator(v20, v22, v23);
          v25 = v24 == 0;

          if (!v25)
          {
            v26 = objc_msgSend_packageLocator(v20, v14, v15);
            objc_msgSend_setObject_forKeyedSubscript_(v11, v27, v20, v26);
          }

          v17 += v21;
        }

        v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v14, &v35, v39, 16);
      }

      while (v16);
    }

    if (v17 < objc_msgSend_archiveLength(*(&self->super.super.isa + v33), v28, v29))
    {
      self->_onlyWriteToDelayedZipArchive = 1;
      objc_msgSend_removeAllObjects(v11, v30, v31);
    }

    objc_msgSend_truncateZipAtFirstDeletedData_(self, v30, v11, v33);

    v5 = v34;
  }

  v32 = *MEMORY[0x277D85DE8];
}

- (void)finalizeComponentAndDataSectionWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  objc_msgSend_closeCurrentChannel(self, v5, v6);
  delayedZipArchiveWriter = self->_delayedZipArchiveWriter;
  if (delayedZipArchiveWriter && objc_msgSend_entriesCount(delayedZipArchiveWriter, v7, v8))
  {
    v47 = 0;
    v48 = &v47;
    v49 = 0x2020000000;
    v50 = 0;
    v14 = objc_msgSend_progress(self, v10, v11);
    if (v14)
    {
      v15 = objc_msgSend_componentZipArchiveWriter(self, v12, v13);
      v46[0] = MEMORY[0x277D85DD0];
      v46[1] = 3221225472;
      v46[2] = sub_276AFC464;
      v46[3] = &unk_27A6E75D0;
      v46[4] = self;
      v46[5] = &v47;
      objc_msgSend_enumerateEntriesUsingBlock_(v15, v16, v46);

      if (self->_onlyWriteToDelayedZipArchive)
      {
        v18 = objc_msgSend_tsu_pendingUnitCountForIncompleteProgress_(v14, v17, v48[3]);
        objc_msgSend_becomeCurrentWithPendingUnitCount_(v14, v19, v18);
        v21 = objc_msgSend_progressWithTotalUnitCount_(MEMORY[0x277CCAC48], v20, 1);
        objc_msgSend_setCompletedUnitCount_(v21, v22, 1);
        objc_msgSend_resignCurrent(v14, v23, v24);

LABEL_9:
        v45.receiver = self;
        v45.super_class = TSPFilePackageWriter;
        zipArchiveWriter = [(TSPPackageWriter *)&v45 zipArchiveWriter];
        v28 = objc_msgSend_entriesCount(zipArchiveWriter, v26, v27);

        if (v28)
        {
          v30 = MEMORY[0x277D81150];
          v31 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v29, "[TSPFilePackageWriter finalizeComponentAndDataSectionWithCompletionHandler:]");
          v33 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v32, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPFilePackageWriter.mm");
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v30, v34, v31, v33, 247, 0, "Only the delayed zip archive writer should have entries");

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v35, v36);
        }

        if (handlerCopy)
        {
          handlerCopy[2](handlerCopy, 0);
        }

        goto LABEL_14;
      }
    }

    else if (self->_onlyWriteToDelayedZipArchive)
    {
      goto LABEL_9;
    }

    v37 = self->_delayedZipArchiveWriter;
    v38 = dispatch_get_global_queue(0, 0);
    v40[0] = MEMORY[0x277D85DD0];
    v40[1] = 3221225472;
    v40[2] = sub_276AFC564;
    v40[3] = &unk_27A6E7620;
    v41 = v14;
    v44 = &v47;
    selfCopy = self;
    v43 = handlerCopy;
    objc_msgSend_closeWithQueue_completion_(v37, v39, v38, v40);

LABEL_14:
    _Block_object_dispose(&v47, 8);
    goto LABEL_15;
  }

  if (handlerCopy)
  {
    handlerCopy[2](handlerCopy, 0);
  }

LABEL_15:
}

- (void)closeWithQueue:(id)queue completion:(id)completion
{
  queueCopy = queue;
  completionCopy = completion;
  v8 = dispatch_get_global_queue(0, 0);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = sub_276AFC89C;
  v12[3] = &unk_27A6E7648;
  v13 = queueCopy;
  v14 = completionCopy;
  v12[4] = self;
  v11.receiver = self;
  v11.super_class = TSPFilePackageWriter;
  v9 = queueCopy;
  v10 = completionCopy;
  [(TSPPackageWriter *)&v11 closeWithQueue:v8 completion:v12];
}

@end