@interface TSPPackageConverter
+ (BOOL)convertDocumentAtURL:(id)l toPackageType:(int64_t)type removeEntriesMatchingFilter:(id)filter error:(id *)error;
+ (NSArray)regularRexpressionsForCachedCollaborationData;
- (BOOL)enumeratePackageEntriesWithZipArchive:(id)archive needsReadChannel:(BOOL)channel accessor:(id)accessor;
- (BOOL)hasEntriesMatchingFilter:(id)filter;
- (BOOL)isDataPath:(id)path;
- (BOOL)isDocumentPropertiesPath:(id)path;
- (BOOL)isObjectArchivePath:(id)path;
- (BOOL)isValid;
- (BOOL)path:(id)path matchesFilter:(id)filter;
- (BOOL)writeToURL:(id)l packageType:(int64_t)type removeEntriesMatchingFilter:(id)filter error:(id *)error;
- (TSPPackageConverter)init;
- (TSPPackageConverter)initWithURL:(id)l package:(id)package fileCoordinatorDelegate:(id)delegate preserveExtendedAttributes:(BOOL)attributes error:(id *)error;
- (unint64_t)progressTotalUnitCountWithZipArchive:(id)archive;
@end

@implementation TSPPackageConverter

+ (BOOL)convertDocumentAtURL:(id)l toPackageType:(int64_t)type removeEntriesMatchingFilter:(id)filter error:(id *)error
{
  lCopy = l;
  filterCopy = filter;
  v12 = objc_msgSend_newPackageConverterWithURL_preserveExtendedAttributes_error_(TSPPackageConverter, v11, lCopy, 0, error);
  v15 = v12;
  if (v12)
  {
    if (objc_msgSend_packageType(v12, v13, v14) == type)
    {
      v16 = 1;
    }

    else
    {
      v17 = objc_alloc(MEMORY[0x277D81318]);
      v19 = objc_msgSend_initForSavingToURL_error_(v17, v18, lCopy, error);
      v22 = v19;
      if (v19)
      {
        v23 = objc_msgSend_writeURL(v19, v20, v21);
        v25 = objc_msgSend_writeToURL_packageType_removeEntriesMatchingFilter_error_(v15, v24, v23, type, filterCopy, error);

        v16 = objc_msgSend_endSaveWithSuccess_addingAttributes_error_(v22, v26, v25, 0, error);
      }

      else
      {
        v16 = 0;
      }

      objc_msgSend_removeAllCachedResourceValues(lCopy, v20, v21);
    }
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (TSPPackageConverter)init
{
  v2 = MEMORY[0x277D81150];
  v3 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSPPackageConverter init]");
  v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPPackageConverter.mm");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v2, v6, v3, v5, 122, 0, "Do not call method");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v7, v8);
  v9 = MEMORY[0x277CBEAD8];
  v11 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v10, @"%s: %s", "Do not call method", "[TSPPackageConverter init]");
  v13 = objc_msgSend_exceptionWithName_reason_userInfo_(v9, v12, *MEMORY[0x277CBE658], v11, 0);
  v14 = v13;

  objc_exception_throw(v13);
}

- (TSPPackageConverter)initWithURL:(id)l package:(id)package fileCoordinatorDelegate:(id)delegate preserveExtendedAttributes:(BOOL)attributes error:(id *)error
{
  attributesCopy = attributes;
  lCopy = l;
  packageCopy = package;
  delegateCopy = delegate;
  if (objc_msgSend_isFileURL(lCopy, v15, v16))
  {
    v32.receiver = self;
    v32.super_class = TSPPackageConverter;
    v20 = [(TSPPackageConverter *)&v32 init];
    if (!v20)
    {
      goto LABEL_5;
    }

    v21 = objc_msgSend_copy(lCopy, v18, v19);
    URL = v20->_URL;
    v20->_URL = v21;

    objc_storeStrong(&v20->_package, package);
    objc_storeStrong(&v20->_fileCoordinatorDelegate, delegate);
    if (!attributesCopy)
    {
      goto LABEL_5;
    }

    v23 = objc_alloc(MEMORY[0x277D811C0]);
    v26 = objc_msgSend_path(lCopy, v24, v25);
    v28 = objc_msgSend_initWithPath_options_error_(v23, v27, v26, 0, error);
    extendedAttributeCollection = v20->_extendedAttributeCollection;
    v20->_extendedAttributeCollection = v28;

    if (!v20->_extendedAttributeCollection)
    {
      selfCopy = 0;
      self = v20;
    }

    else
    {
LABEL_5:
      self = v20;
      selfCopy = self;
    }
  }

  else if (error)
  {
    objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x277CCA9B8], v17, *MEMORY[0x277CCA738], -1000, 0);
    *error = selfCopy = 0;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

+ (NSArray)regularRexpressionsForCachedCollaborationData
{
  if (qword_280A52648 != -1)
  {
    sub_276BD3490();
  }

  v3 = qword_280A52640;

  return v3;
}

- (BOOL)isValid
{
  v2 = MEMORY[0x277D81150];
  v3 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSPPackageConverter isValid]");
  v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPPackageConverter.mm");
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v2, v8, v3, v5, 173, 0, "Abstract method not overridden by %{public}@", v7);

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v9, v10);
  v11 = MEMORY[0x277CBEAD8];
  v12 = MEMORY[0x277CCACA8];
  v13 = objc_opt_class();
  v14 = NSStringFromClass(v13);
  v16 = objc_msgSend_stringWithFormat_(v12, v15, @"Abstract method not overridden by %@: %s", v14, "[TSPPackageConverter isValid]");
  v18 = objc_msgSend_exceptionWithName_reason_userInfo_(v11, v17, *MEMORY[0x277CBE658], v16, 0);
  v19 = v18;

  objc_exception_throw(v18);
}

- (BOOL)path:(id)path matchesFilter:(id)filter
{
  v23 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  filterCopy = filter;
  v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(filterCopy, v7, &v18, v22, 16);
  if (v10)
  {
    v11 = *v19;
    while (2)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v19 != v11)
        {
          objc_enumerationMutation(filterCopy);
        }

        v13 = *(*(&v18 + 1) + 8 * i);
        v14 = objc_msgSend_length(pathCopy, v8, v9, v18);
        if (objc_msgSend_rangeOfFirstMatchInString_options_range_(v13, v15, pathCopy, 0, 0, v14) != 0x7FFFFFFFFFFFFFFFLL)
        {
          LOBYTE(v10) = 1;
          goto LABEL_11;
        }
      }

      v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(filterCopy, v8, &v18, v22, 16);
      if (v10)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v16 = *MEMORY[0x277D85DE8];
  return v10;
}

- (BOOL)hasEntriesMatchingFilter:(id)filter
{
  filterCopy = filter;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  v7 = objc_msgSend_zipArchive(self->_package, v5, v6);
  if (v7)
  {
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = sub_276A09184;
    v11[3] = &unk_27A6E42A0;
    v11[4] = self;
    v12 = filterCopy;
    v13 = &v14;
    objc_msgSend_enumeratePackageEntriesWithZipArchive_needsReadChannel_accessor_(self, v8, v7, 0, v11);
  }

  v9 = *(v15 + 24);

  _Block_object_dispose(&v14, 8);
  return v9;
}

- (BOOL)writeToURL:(id)l packageType:(int64_t)type removeEntriesMatchingFilter:(id)filter error:(id *)error
{
  lCopy = l;
  filterCopy = filter;
  if ((objc_msgSend_isFileURL(lCopy, v12, v13) & 1) == 0)
  {
    if (error)
    {
      objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x277CCA9B8], v14, *MEMORY[0x277CCA738], -1000, 0);
      *error = v25 = 0;
    }

    else
    {
      v25 = 0;
    }

    goto LABEL_37;
  }

  v80 = 0;
  v81 = &v80;
  v82 = 0x3032000000;
  v83 = sub_276A09790;
  v84 = sub_276A097A0;
  v85 = 0;
  v17 = objc_msgSend_zipArchive(self->_package, v14, v15);
  if (!v17)
  {
    package = self->_package;
    v27 = objc_opt_class();
    if ((objc_msgSend_hasZipArchive(v27, v28, v29) & 1) == 0)
    {
      goto LABEL_12;
    }

LABEL_24:
    v35 = objc_msgSend_lastReloadError(self->_package, v23, v24);
    updated = v35;
    if (!v35)
    {
      updated = objc_msgSend_tsp_unknownReadErrorWithUserInfo_(MEMORY[0x277CCA9B8], v64, 0);
    }

    objc_storeStrong(v81 + 5, updated);
    v55 = 0;
    v25 = 0;
    if (v35)
    {
      goto LABEL_31;
    }

    goto LABEL_30;
  }

  v18 = objc_msgSend_objectArchiveEntryPathForPackageLocator_(TSPPackage, v16, @"Metadata");
  v20 = objc_msgSend_entryForName_(v17, v19, v18);

  if (!v20)
  {
    if (objc_msgSend_packageType(self, v21, v22) == 2)
    {
      v32 = objc_msgSend_componentZipArchive(self->_package, v30, v31);
      v34 = objc_msgSend_entryForName_(v32, v33, v18);

      if (v34)
      {
        goto LABEL_12;
      }
    }

    else
    {
    }

    goto LABEL_24;
  }

LABEL_12:
  v69 = filterCopy;
  v35 = objc_msgSend_currentProgress(MEMORY[0x277CCAC48], v23, v24);

  if (v35)
  {
    v38 = MEMORY[0x277CCAC48];
    v39 = objc_msgSend_progressTotalUnitCountWithZipArchive_(self, v36, v17);
    v35 = objc_msgSend_progressWithTotalUnitCount_(v38, v40, v39);
    v79[0] = MEMORY[0x277D85DD0];
    v79[1] = 3221225472;
    v79[2] = sub_276A097A8;
    v79[3] = &unk_27A6E27F8;
    v79[4] = self;
    objc_msgSend_setCancellationHandler_(v35, v41, v79);
  }

  v42 = objc_msgSend_documentProperties(self->_package, v36, v37);
  v43 = self->_package;
  fileCoordinatorDelegate = self->_fileCoordinatorDelegate;
  v45 = v81;
  v78 = v81[5];
  updated = objc_msgSend_newPackageWriterWithPackageType_URL_documentTargetURL_relativeURLForExternalData_packageIdentifier_documentProperties_documentMetadata_fileFormatVersion_updateType_cloneMode_documentSaveValidationPolicy_encryptionKey_originalDocumentPackage_originalSupportPackage_fileCoordinatorDelegate_progress_error_(TSPPackageWriter, v46, type, lCopy, lCopy, lCopy, 1, v42, 0, 0, 2, 0, 0, 0, v43, 0, fileCoordinatorDelegate, 0, &v78);
  objc_storeStrong(v45 + 5, v78);

  if (updated)
  {
    v73[0] = MEMORY[0x277D85DD0];
    v73[1] = 3221225472;
    v73[2] = sub_276A097B8;
    v73[3] = &unk_27A6E42C8;
    v73[4] = self;
    v74 = filterCopy;
    updated = updated;
    v75 = updated;
    v77 = &v80;
    v35 = v35;
    v76 = v35;
    if (objc_msgSend_enumeratePackageEntriesWithZipArchive_needsReadChannel_accessor_(self, v48, v17, 1, v73))
    {
      v51 = objc_msgSend_documentProperties(self->_package, v49, v50);
      v52 = v81;
      obj = v81[5];
      v54 = objc_msgSend_writeToPackageWriter_error_(v51, v53, updated, &obj);
      objc_storeStrong(v52 + 5, obj);
    }

    else
    {
      v54 = 0;
    }

    v56 = v81;
    v71 = v81[5];
    v57 = objc_msgSend_closeAndReturnError_(updated, v49, &v71);
    objc_storeStrong(v56 + 5, v71);
    if ((v57 & v54) == 1)
    {
      extendedAttributeCollection = self->_extendedAttributeCollection;
      if (extendedAttributeCollection)
      {
        v61 = objc_msgSend_path(lCopy, v58, v59);
        v62 = v81;
        v70 = v81[5];
        v55 = objc_msgSend_setAttributeCollectionToPath_intent_options_error_(extendedAttributeCollection, v63, v61, 2, 0, &v70);
        objc_storeStrong(v62 + 5, v70);
      }

      else
      {
        v55 = 1;
      }
    }

    else
    {
      v55 = 0;
    }

    filterCopy = v69;
  }

  else
  {
    v55 = 0;
  }

LABEL_30:

  v25 = v55;
LABEL_31:

  if (error && !v25)
  {
    v66 = v81[5];
    if (v66)
    {
      *error = v66;
    }

    else
    {
      v67 = objc_msgSend_tsp_unknownWriteErrorWithUserInfo_(MEMORY[0x277CCA9B8], v65, 0);
      *error = v67;
    }
  }

  _Block_object_dispose(&v80, 8);
LABEL_37:

  return v25;
}

- (BOOL)isDocumentPropertiesPath:(id)path
{
  pathCopy = path;
  v6 = objc_msgSend_documentPropertiesRelativePath(TSPDocumentProperties, v4, v5);
  if (objc_msgSend_isEqualToString_(pathCopy, v7, v6))
  {
    isEqualToString = 1;
  }

  else
  {
    v11 = objc_msgSend_shareIdentifierRelativePath(TSPDocumentProperties, v8, v9);
    isEqualToString = objc_msgSend_isEqualToString_(pathCopy, v12, v11);
  }

  return isEqualToString;
}

- (BOOL)isObjectArchivePath:(id)path
{
  pathCopy = path;
  if (qword_280A52658 != -1)
  {
    sub_276BD34A4();
  }

  hasPrefix = objc_msgSend_hasPrefix_(pathCopy, v3, qword_280A52650);

  return hasPrefix;
}

- (BOOL)isDataPath:(id)path
{
  pathCopy = path;
  if (qword_280A52668 != -1)
  {
    sub_276BD34B8();
  }

  hasPrefix = objc_msgSend_hasPrefix_(pathCopy, v3, qword_280A52660);

  return hasPrefix;
}

- (unint64_t)progressTotalUnitCountWithZipArchive:(id)archive
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = sub_276A09C20;
  v5[3] = &unk_27A6E42F0;
  v5[4] = &v6;
  objc_msgSend_enumerateEntriesUsingBlock_(archive, a2, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (BOOL)enumeratePackageEntriesWithZipArchive:(id)archive needsReadChannel:(BOOL)channel accessor:(id)accessor
{
  archiveCopy = archive;
  accessorCopy = accessor;
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v25 = 1;
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = sub_276A09E3C;
  v21[3] = &unk_27A6E4318;
  v21[4] = self;
  v11 = objc_msgSend_sortedEntriesUsingComparator_(archiveCopy, v10, v21);
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = sub_276A0A01C;
  v16[3] = &unk_27A6E4340;
  v16[4] = self;
  v19 = &v22;
  channelCopy = channel;
  v12 = accessorCopy;
  v18 = v12;
  v13 = archiveCopy;
  v17 = v13;
  objc_msgSend_enumerateObjectsUsingBlock_(v11, v14, v16);
  LOBYTE(archiveCopy) = *(v23 + 24);

  _Block_object_dispose(&v22, 8);
  return archiveCopy;
}

@end