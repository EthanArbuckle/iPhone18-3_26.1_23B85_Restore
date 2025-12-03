@interface TSPDirectoryPackageConverter
- (BOOL)enumeratePackageEntriesWithZipArchive:(id)archive needsReadChannel:(BOOL)channel accessor:(id)accessor;
- (BOOL)isValid;
- (BOOL)performAccessor:(id)accessor filePathCharacterIndex:(unint64_t)index fileURL:(id)l needsReadChannel:(BOOL)channel zipArchive:(id)archive error:(id *)error;
- (unint64_t)progressTotalUnitCountWithZipArchive:(id)archive;
@end

@implementation TSPDirectoryPackageConverter

- (unint64_t)progressTotalUnitCountWithZipArchive:(id)archive
{
  v45 = *MEMORY[0x277D85DE8];
  v42.receiver = self;
  v42.super_class = TSPDirectoryPackageConverter;
  v4 = [(TSPPackageConverter *)&v42 progressTotalUnitCountWithZipArchive:archive];
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v7 = objc_msgSend_defaultManager(MEMORY[0x277CCAA00], v5, v6);
  v10 = objc_msgSend_URL(self, v8, v9);
  v11 = *MEMORY[0x277CBE868];
  v12 = *MEMORY[0x277CBE838];
  v43[0] = *MEMORY[0x277CBE868];
  v43[1] = v12;
  v14 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v13, v43, 2);
  v16 = objc_msgSend_enumeratorAtURL_includingPropertiesForKeys_options_errorHandler_(v7, v15, v10, v14, 0, 0);

  v19 = objc_msgSend_countByEnumeratingWithState_objects_count_(v16, v17, &v38, v44, 16);
  if (v19)
  {
    v20 = *v39;
    do
    {
      v21 = 0;
      do
      {
        if (*v39 != v20)
        {
          objc_enumerationMutation(v16);
        }

        v22 = *(*(&v38 + 1) + 8 * v21);
        v37 = 0;
        ResourceValue_forKey_error = objc_msgSend_getResourceValue_forKey_error_(v22, v18, &v37, v11, 0);
        v24 = v37;
        v27 = v24;
        if (ResourceValue_forKey_error && (objc_msgSend_BOOLValue(v24, v25, v26) & 1) == 0)
        {
          v36 = 0;
          v29 = objc_msgSend_getResourceValue_forKey_error_(v22, v28, &v36, v12, 0);
          v30 = v36;
          v33 = v30;
          if (v29)
          {
            v4 += objc_msgSend_unsignedLongLongValue(v30, v31, v32);
          }
        }

        ++v21;
      }

      while (v19 != v21);
      v19 = objc_msgSend_countByEnumeratingWithState_objects_count_(v16, v18, &v38, v44, 16);
    }

    while (v19);
  }

  v34 = *MEMORY[0x277D85DE8];
  return v4;
}

- (BOOL)performAccessor:(id)accessor filePathCharacterIndex:(unint64_t)index fileURL:(id)l needsReadChannel:(BOOL)channel zipArchive:(id)archive error:(id *)error
{
  channelCopy = channel;
  accessorCopy = accessor;
  lCopy = l;
  v18 = objc_msgSend_path(lCopy, v16, v17);
  v21 = objc_msgSend_stringByStandardizingPath(v18, v19, v20);
  v24 = objc_msgSend_precomposedStringWithCanonicalMapping(v21, v22, v23);

  v26 = objc_msgSend_substringFromIndex_(v24, v25, index);
  if (objc_msgSend_isEqualToString_(v26, v27, @"Index.zip") & 1) != 0 || (objc_msgSend_isDocumentPropertiesPath_(self, v28, v26) & 1) != 0 || archive && (objc_msgSend_isObjectArchivePath_(self, v29, v26))
  {
    v30 = 0;
    v31 = 1;
    goto LABEL_6;
  }

  if (!channelCopy)
  {
    v30 = 0;
    v51 = 0;
    goto LABEL_13;
  }

  v34 = objc_alloc(MEMORY[0x277D811D0]);
  v57 = 0;
  v36 = objc_msgSend_initForReadingURL_error_(v34, v35, lCopy, &v57);
  v30 = v57;
  if (v36)
  {
    v51 = v36;
LABEL_13:
    v56 = 0;
    v37 = *MEMORY[0x277CBE838];
    v55 = 0;
    ResourceValue_forKey_error = objc_msgSend_getResourceValue_forKey_error_(lCopy, v29, &v56, v37, &v55, v51);
    v39 = v56;
    v41 = v39;
    if ((ResourceValue_forKey_error & 1) == 0)
    {

      if (*MEMORY[0x277D81408] != -1)
      {
        sub_276BD34CC();
      }

      v41 = 0;
    }

    v54 = 0;
    v42 = *MEMORY[0x277CBE7B0];
    v53 = 0;
    v43 = objc_msgSend_getResourceValue_forKey_error_(lCopy, v40, &v54, v42, &v53);
    v44 = v54;
    v47 = v53;
    if ((v43 & 1) == 0)
    {

      if (*MEMORY[0x277D81408] != -1)
      {
        sub_276BD34F4();
      }

      v44 = 0;
    }

    v48 = objc_msgSend_unsignedLongLongValue(v41, v45, v46);
    v31 = accessorCopy[2](accessorCopy, v26, v44, v48, 0, v52);
    objc_msgSend_close(v52, v49, v50);

    goto LABEL_6;
  }

  if (*MEMORY[0x277D81408] != -1)
  {
    sub_276BD351C();
  }

  v31 = 0;
LABEL_6:
  if (error)
  {
    v32 = v30;
    *error = v30;
  }

  return v31;
}

- (BOOL)enumeratePackageEntriesWithZipArchive:(id)archive needsReadChannel:(BOOL)channel accessor:(id)accessor
{
  channelCopy = channel;
  v142[3] = *MEMORY[0x277D85DE8];
  archiveCopy = archive;
  accessorCopy = accessor;
  selfCopy = self;
  v103 = objc_msgSend_URL(self, v7, v8);
  v11 = objc_msgSend_defaultManager(MEMORY[0x277CCAA00], v9, v10);
  v12 = *MEMORY[0x277CBE838];
  v105 = *MEMORY[0x277CBE868];
  v142[0] = *MEMORY[0x277CBE868];
  v142[1] = v12;
  v142[2] = *MEMORY[0x277CBE7B0];
  v14 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v13, v142, 3);
  v99 = objc_msgSend_enumeratorAtURL_includingPropertiesForKeys_options_errorHandler_(v11, v15, v103, v14, 0, 0);

  v18 = objc_msgSend_path(v103, v16, v17);
  v21 = objc_msgSend_stringByStandardizingPath(v18, v19, v20);
  v100 = objc_msgSend_precomposedStringWithCanonicalMapping(v21, v22, v23);

  v114 = objc_msgSend_length(v100, v24, v25);
  v104 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v102 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v101 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v136 = 0u;
  v137 = 0u;
  v134 = 0u;
  v135 = 0u;
  obj = v99;
  v27 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v26, &v134, v141, 16);
  v28 = 0;
  if (!v27)
  {
    v29 = 1;
    goto LABEL_22;
  }

  v109 = *v135;
  v29 = 1;
  do
  {
    v30 = 0;
    v107 = v27;
    do
    {
      if (*v135 != v109)
      {
        objc_enumerationMutation(obj);
      }

      v31 = *(*(&v134 + 1) + 8 * v30);
      v32 = objc_autoreleasePoolPush();
      v36 = objc_msgSend_isCancelled(selfCopy, v33, v34) | v29 ^ 1;
      if (v36)
      {
        v29 = 0;
        goto LABEL_17;
      }

      v132 = 0;
      v133 = 0;
      ResourceValue_forKey_error = objc_msgSend_getResourceValue_forKey_error_(v31, v35, &v133, v105, &v132);
      v38 = v133;
      v39 = v132;

      if (ResourceValue_forKey_error && (objc_msgSend_BOOLValue(v38, v40, v41) & 1) == 0)
      {
        v44 = objc_msgSend_path(v31, v42, v43);
        v47 = objc_msgSend_stringByStandardizingPath(v44, v45, v46);
        v50 = objc_msgSend_precomposedStringWithCanonicalMapping(v47, v48, v49);

        v52 = objc_msgSend_substringFromIndex_(v50, v51, v114 + 1);
        isDataPath = objc_msgSend_isDataPath_(selfCopy, v53, v52);
        v56 = v104;
        if ((isDataPath & 1) == 0)
        {
          if (objc_msgSend_isObjectArchivePath_(selfCopy, v54, v52))
          {
            objc_msgSend_addObject_(v102, v54, v31, v99);
LABEL_15:

            goto LABEL_16;
          }

          v56 = v101;
        }

        objc_msgSend_addObject_(v56, v54, v31, v99);
        goto LABEL_15;
      }

LABEL_16:

      v28 = v39;
LABEL_17:
      objc_autoreleasePoolPop(v32);
      if (v36)
      {
        goto LABEL_22;
      }

      v30 = v30 + 1;
    }

    while (v107 != v30);
    v27 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v57, &v134, v141, 16);
  }

  while (v27);
LABEL_22:

  objc_msgSend_sortUsingComparator_(v104, v58, &unk_2885C16D8);
  v130 = 0u;
  v131 = 0u;
  v128 = 0u;
  v129 = 0u;
  v110 = v104;
  v60 = objc_msgSend_countByEnumeratingWithState_objects_count_(v110, v59, &v128, v140, 16);
  if (v60)
  {
    v61 = *v129;
LABEL_24:
    v62 = 0;
    while (1)
    {
      if (*v129 != v61)
      {
        objc_enumerationMutation(v110);
      }

      v63 = *(*(&v128 + 1) + 8 * v62);
      v64 = objc_autoreleasePoolPush();
      v68 = objc_msgSend_isCancelled(selfCopy, v65, v66) | v29 ^ 1;
      if (v68)
      {
        v29 = 0;
      }

      else
      {
        v127 = v28;
        v29 = objc_msgSend_performAccessor_filePathCharacterIndex_fileURL_needsReadChannel_zipArchive_error_(selfCopy, v67, accessorCopy, v114 + 1, v63, channelCopy, archiveCopy, &v127);
        v69 = v127;

        v28 = v69;
      }

      objc_autoreleasePoolPop(v64);
      if (v68)
      {
        break;
      }

      if (v60 == ++v62)
      {
        v60 = objc_msgSend_countByEnumeratingWithState_objects_count_(v110, v70, &v128, v140, 16);
        if (v60)
        {
          goto LABEL_24;
        }

        break;
      }
    }
  }

  if (v29)
  {
    v126.receiver = selfCopy;
    v126.super_class = TSPDirectoryPackageConverter;
    v71 = [(TSPPackageConverter *)&v126 enumeratePackageEntriesWithZipArchive:archiveCopy needsReadChannel:channelCopy accessor:accessorCopy];
  }

  else
  {
    v71 = 0;
  }

  v125 = 0u;
  v123 = 0u;
  v124 = 0u;
  v122 = 0u;
  v108 = v102;
  v73 = objc_msgSend_countByEnumeratingWithState_objects_count_(v108, v72, &v122, v139, 16);
  if (v73)
  {
    v74 = *v123;
LABEL_38:
    v75 = 0;
    while (1)
    {
      if (*v123 != v74)
      {
        objc_enumerationMutation(v108);
      }

      v76 = *(*(&v122 + 1) + 8 * v75);
      v77 = objc_autoreleasePoolPush();
      v81 = objc_msgSend_isCancelled(selfCopy, v78, v79) | v71 ^ 1;
      if (v81)
      {
        v71 = 0;
      }

      else
      {
        v121 = v28;
        v71 = objc_msgSend_performAccessor_filePathCharacterIndex_fileURL_needsReadChannel_zipArchive_error_(selfCopy, v80, accessorCopy, v114 + 1, v76, channelCopy, archiveCopy, &v121);
        v82 = v121;

        v28 = v82;
      }

      objc_autoreleasePoolPop(v77);
      if (v81)
      {
        break;
      }

      if (v73 == ++v75)
      {
        v73 = objc_msgSend_countByEnumeratingWithState_objects_count_(v108, v83, &v122, v139, 16);
        if (v73)
        {
          goto LABEL_38;
        }

        break;
      }
    }
  }

  v119 = 0u;
  v120 = 0u;
  v117 = 0u;
  v118 = 0u;
  v84 = v101;
  v86 = objc_msgSend_countByEnumeratingWithState_objects_count_(v84, v85, &v117, v138, 16);
  if (v86)
  {
    v87 = *v118;
LABEL_49:
    v88 = 0;
    while (1)
    {
      if (*v118 != v87)
      {
        objc_enumerationMutation(v84);
      }

      v89 = *(*(&v117 + 1) + 8 * v88);
      v90 = objc_autoreleasePoolPush();
      v94 = objc_msgSend_isCancelled(selfCopy, v91, v92) | v71 ^ 1;
      if (v94)
      {
        v71 = 0;
      }

      else
      {
        v116 = v28;
        v71 = objc_msgSend_performAccessor_filePathCharacterIndex_fileURL_needsReadChannel_zipArchive_error_(selfCopy, v93, accessorCopy, v114 + 1, v89, channelCopy, archiveCopy, &v116);
        v95 = v116;

        v28 = v95;
      }

      objc_autoreleasePoolPop(v90);
      if (v94)
      {
        break;
      }

      if (v86 == ++v88)
      {
        v86 = objc_msgSend_countByEnumeratingWithState_objects_count_(v84, v96, &v117, v138, 16);
        if (v86)
        {
          goto LABEL_49;
        }

        break;
      }
    }
  }

  v97 = *MEMORY[0x277D85DE8];
  return v71;
}

- (BOOL)isValid
{
  v3 = objc_msgSend_URL(self, a2, v2);
  if (objc_msgSend_isValidPackageAtURL_(TSPDirectoryPackage, v4, v3))
  {
    isValidPackageAtURL = 1;
  }

  else
  {
    isValidPackageAtURL = objc_msgSend_isValidPackageAtURL_(TSPExpandedDirectoryPackage, v5, v3);
  }

  return isValidPackageAtURL;
}

@end