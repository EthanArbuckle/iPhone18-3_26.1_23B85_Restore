@interface TSPDistributableArchiveOutputStream
- (BOOL)writeEntry:(id)entry offset:(int64_t *)offset headerLength:(unsigned int *)length error:(id *)error;
- (TSPDistributableArchiveOutputStream)initWithOutputStream:(id)stream checkCrc:(unsigned int)crc enableDescriptors:(BOOL)descriptors enableToc:(BOOL)toc closedCleanly:(BOOL)cleanly archivedVersions:(id)versions;
@end

@implementation TSPDistributableArchiveOutputStream

- (TSPDistributableArchiveOutputStream)initWithOutputStream:(id)stream checkCrc:(unsigned int)crc enableDescriptors:(BOOL)descriptors enableToc:(BOOL)toc closedCleanly:(BOOL)cleanly archivedVersions:(id)versions
{
  cleanlyCopy = cleanly;
  tocCopy = toc;
  descriptorsCopy = descriptors;
  v38 = *MEMORY[0x277D85DE8];
  streamCopy = stream;
  if (!streamCopy)
  {
    v16 = MEMORY[0x277D81150];
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "[TSPDistributableArchiveOutputStream initWithOutputStream:checkCrc:enableDescriptors:enableToc:closedCleanly:archivedVersions:]");
    v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPDistributableArchiveOutputStream.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v16, v20, v17, v19, 30, 0, "Invalid parameter not satisfying: %{public}s", "outputStream != nil");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v21, v22);
  }

  v37.receiver = self;
  v37.super_class = TSPDistributableArchiveOutputStream;
  v23 = [(TSPDistributableArchiveOutputStream *)&v37 init];
  v24 = v23;
  if (v23)
  {
    objc_storeStrong(&v23->_outputStream, stream);
    MEMORY[0x28223BE20](v25);
    LODWORD(v34) = 1179010153;
    HIDWORD(v34) = crc;
    *v35 = 1;
    *&v35[2] = v27;
    *&v35[10] = v28;
    *&v35[18] = 1;
    if (tocCopy)
    {
      v29 = 2;
    }

    else
    {
      v29 = 0;
    }

    v30 = v29 | descriptorsCopy;
    if (cleanlyCopy)
    {
      v31 = 4;
    }

    else
    {
      v31 = 0;
    }

    *&v35[22] = v30 | v31;
    LODWORD(v36) = 0;
    objc_msgSend_writeBuffer_size_(v24->_outputStream, v26, &v34, 36, v34, *v35, *&v35[8], *&v35[16]);
    v24->_offset += 36;
  }

  v32 = *MEMORY[0x277D85DE8];
  return v24;
}

- (BOOL)writeEntry:(id)entry offset:(int64_t *)offset headerLength:(unsigned int *)length error:(id *)error
{
  entryCopy = entry;
  if (!entryCopy)
  {
    v12 = MEMORY[0x277D81150];
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "[TSPDistributableArchiveOutputStream writeEntry:offset:headerLength:error:]");
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPDistributableArchiveOutputStream.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v12, v16, v13, v15, 91, 0, "Invalid parameter not satisfying: %{public}s", "entry != nil");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v17, v18);
  }

  if (self->_doneWritingObjectEntries)
  {
    v19 = MEMORY[0x277D81150];
    v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "[TSPDistributableArchiveOutputStream writeEntry:offset:headerLength:error:]");
    v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v21, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPDistributableArchiveOutputStream.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v19, v23, v20, v22, 92, 0, "Attempting to write object entries after starting to write descriptor entries");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v24, v25);
  }

  if (offset)
  {
    *offset = self->_offset;
  }

  v26 = objc_msgSend_relativeDataPath(entryCopy, v9, v10);

  if (v26)
  {
    objc_msgSend_relativeDataPath(entryCopy, v27, v28);
  }

  else
  {
    objc_msgSend_fileStateIdentifier(entryCopy, v27, v28);
  }
  v29 = ;
  v32 = v29;
  if (v29)
  {
    v33 = objc_msgSend_lengthOfBytesUsingEncoding_(v29, v30, 4);
    v35 = v33;
    if (v33 >= 0x10000)
    {
      if (error)
      {
        goto LABEL_21;
      }

      goto LABEL_42;
    }

    v37 = malloc_type_malloc(v33 + 1, 0x100004077774924uLL);
    objc_msgSend_getCString_maxLength_encoding_(v32, v38, v37, v35 + 1, 4);
    v36 = v35;
  }

  else
  {
    v36 = 0;
    v37 = 0;
  }

  v85 = v37;
  v41 = objc_msgSend_version(entryCopy, v30, v31) != 1;
  if (v26)
  {
    v84 = 0;
    v41 |= 2u;
  }

  else
  {
    v42 = objc_msgSend_dataRepresentation(entryCopy, v39, v40);
    v84 = objc_msgSend_dataLength(v42, v43, v44);
  }

  if (*(objc_msgSend_ownedIds(entryCopy, v39, v40) + 20))
  {
    if (error)
    {
LABEL_21:
      objc_msgSend_tsp_saveDocumentErrorWithUserInfo_(MEMORY[0x277CCA9B8], v34, 0);
      *error = v46 = 0;
      goto LABEL_43;
    }

LABEL_42:
    v46 = 0;
    goto LABEL_43;
  }

  v83 = v32;
  v47 = *(objc_msgSend_ownedIds(entryCopy, v34, v45) + 16);
  v48 = 4 * ((v41 & 1) != 0) + v36 + *" ";
  v49 = (v48 + 8 * v47);
  if (length)
  {
    *length = v49;
  }

  v52 = malloc_type_malloc((v48 + 8 * v47), 0x100004077774924uLL);
  if (!v52)
  {
    v53 = MEMORY[0x277D81150];
    v82 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v50, "[TSPDistributableArchiveOutputStream writeEntry:offset:headerLength:error:]");
    v55 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v54, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPDistributableArchiveOutputStream.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v53, v56, v82, v55, 155, 0, "invalid nil value for '%{public}s'", "buffer");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v57, v58);
  }

  *v52 = *"ObjE";
  *(v52 + 4) = objc_msgSend_identifier(entryCopy, v50, v51);
  *(v52 + 3) = objc_msgSend_classType(entryCopy, v59, v60);
  *(v52 + 8) = v41;
  *(v52 + 9) = v36;
  *(v52 + 5) = v47;
  *(v52 + 3) = v84;
  memcpy(v52 + 32, v85, v36);
  v63 = objc_msgSend_ownedIds(entryCopy, v61, v62);
  v66 = &v52[v36 + 32];
  v69 = *v63;
  v67 = v63 + 1;
  v68 = v69;
  if (v69 != v67)
  {
    do
    {
      *v66 = v68[4];
      v66 += 8;
      v70 = v68[1];
      if (v70)
      {
        do
        {
          v71 = v70;
          v70 = *v70;
        }

        while (v70);
      }

      else
      {
        do
        {
          v71 = v68[2];
          v72 = *v71 == v68;
          v68 = v71;
        }

        while (!v72);
      }

      v68 = v71;
    }

    while (v71 != v67);
  }

  if (v41)
  {
    *v66 = objc_msgSend_version(entryCopy, v64, v65);
  }

  objc_msgSend_writeBuffer_size_(self->_outputStream, v64, v52, v49);
  self->_offset += v49;
  v32 = v83;
  if (v52)
  {
    free(v52);
  }

  if (v85)
  {
    free(v85);
  }

  if (v26)
  {
    v75 = 0;
  }

  else
  {
    v77 = objc_msgSend_dataRepresentation(entryCopy, v73, v74);
    v75 = objc_msgSend_bufferedInputStream(v77, v78, v79);

    while (1)
    {
      v87 = 0;
      v81 = objc_msgSend_readToOwnBuffer_size_(v75, v80, &v87, -1);
      if (!v81)
      {
        break;
      }

      objc_msgSend_writeBuffer_size_(self->_outputStream, v73, v87, v81);
      self->_offset += v81;
    }
  }

  v46 = 1;
  objc_msgSend_close(v75, v73, v74);

LABEL_43:
  return v46;
}

@end