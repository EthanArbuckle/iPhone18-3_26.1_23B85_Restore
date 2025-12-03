@interface TSPFileManager
+ (BOOL)copyDataFromReadChannel:(id)channel decryptionInfo:(id)info size:(unint64_t)size toWriteChannel:(id)writeChannel encryptionInfo:(id)encryptionInfo encodedLength:(unint64_t *)length error:(id *)error;
+ (BOOL)linkOrCloneItemAtURL:(id)l toURL:(id)rL canLink:(BOOL)link canClone:(BOOL)clone error:(id *)error;
+ (BOOL)linkOrCopyItemAtURL:(id)l decryptionInfo:(id)info toURL:(id)rL encryptionInfo:(id)encryptionInfo canLink:(BOOL)link encodedLength:(unint64_t *)length error:(id *)error;
+ (id)errorWithDomain:(id)domain code:(int64_t)code sourcePath:(id)path targetPath:(id)targetPath;
+ (id)ioCompletionQueue;
+ (void)copyDataFromReadChannel:(id)channel size:(unint64_t)size toWriteChannel:(id)writeChannel synchronous:(BOOL)synchronous completion:(id)completion;
@end

@implementation TSPFileManager

+ (id)errorWithDomain:(id)domain code:(int64_t)code sourcePath:(id)path targetPath:(id)targetPath
{
  domainCopy = domain;
  pathCopy = path;
  targetPathCopy = targetPath;
  if (pathCopy | targetPathCopy)
  {
    v14 = objc_alloc(MEMORY[0x277CBEB38]);
    v16 = objc_msgSend_initWithCapacity_(v14, v15, 2);
    v17 = v16;
    if (pathCopy)
    {
      objc_msgSend_setObject_forKeyedSubscript_(v16, v11, pathCopy, *MEMORY[0x277CCA170]);
    }

    if (targetPathCopy)
    {
      objc_msgSend_setObject_forKeyedSubscript_(v17, v11, targetPathCopy, @"TSPTargetFilePath");
    }
  }

  else
  {
    v17 = 0;
  }

  v18 = MEMORY[0x277CCA9B8];
  v19 = objc_msgSend_copy(v17, v11, v12);
  v21 = objc_msgSend_errorWithDomain_code_userInfo_(v18, v20, domainCopy, code, v19);

  return v21;
}

+ (BOOL)linkOrCloneItemAtURL:(id)l toURL:(id)rL canLink:(BOOL)link canClone:(BOOL)clone error:(id *)error
{
  cloneCopy = clone;
  linkCopy = link;
  lCopy = l;
  rLCopy = rL;
  if (cloneCopy)
  {
    v16 = objc_msgSend_defaultManager(MEMORY[0x277CCAA00], v13, v14);
    v18 = objc_msgSend_copyItemAtURL_toURL_error_(v16, v17, lCopy, rLCopy, error);
LABEL_16:

    goto LABEL_17;
  }

  if (linkCopy)
  {
    v16 = objc_msgSend_path(lCopy, v13, v14);
    v21 = objc_msgSend_path(rLCopy, v19, v20);
    v24 = sub_276AB6F50(v21, v22, v23);
    v27 = objc_msgSend_bundlePath(v24, v25, v26);
    v30 = objc_msgSend_stringByStandardizingPath(v27, v28, v29);
    v33 = objc_msgSend_precomposedStringWithCanonicalMapping(v30, v31, v32);

    v36 = objc_msgSend_stringByStandardizingPath(v16, v34, v35);
    v39 = objc_msgSend_precomposedStringWithCanonicalMapping(v36, v37, v38);
    v62 = v33;
    v41 = objc_msgSend_stringByAppendingString_(v33, v40, @"/");
    LOBYTE(v33) = objc_msgSend_hasPrefix_(v39, v42, v41);

    if (v33)
    {
      if (!error)
      {
        v18 = 0;
        goto LABEL_15;
      }

      objc_msgSend_errorWithDomain_code_sourcePath_targetPath_(self, v43, *MEMORY[0x277CCA050], 257, v16, v21);
    }

    else
    {
      v49 = v16;
      v52 = objc_msgSend_fileSystemRepresentation(v49, v50, v51);
      v53 = v21;
      v56 = objc_msgSend_fileSystemRepresentation(v53, v54, v55);
      v57 = link(v52, v56);
      v18 = v57 == 0;
      if (!error || !v57)
      {
        goto LABEL_15;
      }

      v58 = *MEMORY[0x277CCA5B8];
      v59 = *__error();
      objc_msgSend_errorWithDomain_code_sourcePath_targetPath_(self, v60, v58, v59, v16, v21);
    }

    *error = v18 = 0;
LABEL_15:

    goto LABEL_16;
  }

  if (error)
  {
    v44 = *MEMORY[0x277CCA050];
    v16 = objc_msgSend_path(lCopy, v13, v14);
    v47 = objc_msgSend_path(rLCopy, v45, v46);
    *error = objc_msgSend_errorWithDomain_code_sourcePath_targetPath_(self, v48, v44, 257, v16, v47);

    v18 = 0;
    goto LABEL_16;
  }

  v18 = 0;
LABEL_17:

  return v18;
}

+ (BOOL)linkOrCopyItemAtURL:(id)l decryptionInfo:(id)info toURL:(id)rL encryptionInfo:(id)encryptionInfo canLink:(BOOL)link encodedLength:(unint64_t *)length error:(id *)error
{
  linkCopy = link;
  lCopy = l;
  infoCopy = info;
  rLCopy = rL;
  encryptionInfoCopy = encryptionInfo;
  LOBYTE(v21) = 0;
  v78 = 0;
  v79 = &v78;
  v80 = 0x2020000000;
  v81 = 0;
  v72 = 0;
  v73 = &v72;
  v74 = 0x3032000000;
  v75 = sub_276AA3A3C;
  v76 = sub_276AA3A4C;
  v77 = 0;
  if (lCopy && rLCopy)
  {
    if (sub_276AB65D0(infoCopy, encryptionInfoCopy))
    {
      v22 = objc_alloc(MEMORY[0x277D811D0]);
      v23 = (v73 + 5);
      obj = v73[5];
      v25 = objc_msgSend_initForReadingURL_error_(v22, v24, lCopy, &obj);
      objc_storeStrong(v23, obj);
      if (!v25)
      {
        LOBYTE(v21) = 0;
LABEL_26:

        goto LABEL_27;
      }

      v26 = objc_alloc(MEMORY[0x277D811D0]);
      v27 = (v73 + 5);
      v67 = v73[5];
      v29 = objc_msgSend_initForStreamWritingURL_error_(v26, v28, rLCopy, &v67);
      objc_storeStrong(v27, v67);
      if (!v29)
      {
        LOBYTE(v21) = 0;
        goto LABEL_25;
      }

      v66 = 0;
      v32 = *MEMORY[0x277CBE838];
      v65 = 0;
      ResourceValue_forKey_error = objc_msgSend_getResourceValue_forKey_error_(lCopy, v30, &v66, v32, &v65);
      v34 = v66;
      v63 = v65;
      if ((ResourceValue_forKey_error & 1) == 0)
      {

        if (*MEMORY[0x277D81408] != -1)
        {
          sub_276BD6124();
          v34 = 0;
          v37 = objc_msgSend_unsignedLongLongValue(0, v61, v62);
          goto LABEL_10;
        }

        v34 = 0;
      }

      v37 = objc_msgSend_unsignedLongLongValue(v34, v35, v36);
LABEL_10:
      v64[0] = MEMORY[0x277D85DD0];
      v64[1] = 3221225472;
      v64[2] = sub_276AA3ADC;
      v64[3] = &unk_27A6E65C0;
      v64[4] = &v78;
      v64[5] = &v72;
      objc_msgSend_transcodeReadChannel_decryptionInfo_size_toWriteChannel_encryptionInfo_synchronous_completion_(self, v38, v25, infoCopy, v37, v29, encryptionInfoCopy, 1, v64);
      v21 = v73[5];
      objc_msgSend_close(v29, v39, v40);
      LOBYTE(v21) = v21 == 0;

LABEL_25:
      objc_msgSend_close(v25, v30, v31);

      goto LABEL_26;
    }

    if (linkCopy && (objc_msgSend_defaultManager(MEMORY[0x277CCAA00], v18, v19), v41 = objc_claimAutoreleasedReturnValue(), canCloneItemAtURL_toURL = objc_msgSend_tsu_canCloneItemAtURL_toURL_(v41, v42, lCopy, rLCopy), v41, (canCloneItemAtURL_toURL & 1) == 0) && (objc_msgSend_linkOrCloneItemAtURL_toURL_canLink_canClone_error_(self, v18, lCopy, rLCopy, 1, 0, 0) & 1) != 0)
    {
      LODWORD(v21) = 1;
    }

    else
    {
      v44 = objc_msgSend_defaultManager(MEMORY[0x277CCAA00], v18, v19);
      v45 = (v73 + 5);
      v71 = v73[5];
      LODWORD(v21) = objc_msgSend_copyItemAtURL_toURL_error_(v44, v46, lCopy, rLCopy, &v71);
      objc_storeStrong(v45, v71);
    }

    if (length && v21)
    {
      v70 = 0;
      v47 = *MEMORY[0x277CBE838];
      v69 = 0;
      v48 = objc_msgSend_getResourceValue_forKey_error_(rLCopy, v18, &v70, v47, &v69);
      v21 = v70;
      v51 = v69;
      if (v48)
      {
        v52 = objc_msgSend_unsignedLongLongValue(v21, v49, v50);
        v79[3] = v52;
      }

      else if (*MEMORY[0x277D81408] != -1)
      {
        sub_276BD60FC();
      }

      LOBYTE(v21) = 1;
      goto LABEL_28;
    }
  }

LABEL_27:
  if (length)
  {
LABEL_28:
    *length = v79[3];
  }

  if (error && (v21 & 1) == 0)
  {
    v53 = v73[5];
    if (v53)
    {
      *error = v53;
    }

    else
    {
      v54 = objc_msgSend_path(lCopy, v18, v19);
      v57 = objc_msgSend_path(rLCopy, v55, v56);
      v59 = objc_msgSend_errorWithDomain_code_sourcePath_targetPath_(self, v58, *MEMORY[0x277CCA050], 4, v54, v57);
      *error = v59;
    }
  }

  _Block_object_dispose(&v72, 8);

  _Block_object_dispose(&v78, 8);
  return v21;
}

+ (BOOL)copyDataFromReadChannel:(id)channel decryptionInfo:(id)info size:(unint64_t)size toWriteChannel:(id)writeChannel encryptionInfo:(id)encryptionInfo encodedLength:(unint64_t *)length error:(id *)error
{
  channelCopy = channel;
  infoCopy = info;
  writeChannelCopy = writeChannel;
  encryptionInfoCopy = encryptionInfo;
  v30 = 0;
  v31 = &v30;
  v32 = 0x2020000000;
  v33 = 0;
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = sub_276AA3A3C;
  v28 = sub_276AA3A4C;
  v29 = 0;
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = sub_276AA3CC4;
  v23[3] = &unk_27A6E65C0;
  v23[4] = &v30;
  v23[5] = &v24;
  objc_msgSend_copyDataFromReadChannel_decryptionInfo_size_toWriteChannel_encryptionInfo_synchronous_completion_(self, v19, channelCopy, infoCopy, size, writeChannelCopy, encryptionInfoCopy, 1, v23);
  if (length)
  {
    *length = v31[3];
  }

  v20 = v25[5];
  if (error && v20)
  {
    *error = v20;
    v20 = v25[5];
  }

  v21 = v20 == 0;
  _Block_object_dispose(&v24, 8);

  _Block_object_dispose(&v30, 8);
  return v21;
}

+ (id)ioCompletionQueue
{
  if (qword_280A52A48 != -1)
  {
    sub_276BD614C();
  }

  v3 = qword_280A52A40;

  return v3;
}

+ (void)copyDataFromReadChannel:(id)channel size:(unint64_t)size toWriteChannel:(id)writeChannel synchronous:(BOOL)synchronous completion:(id)completion
{
  synchronousCopy = synchronous;
  channelCopy = channel;
  writeChannelCopy = writeChannel;
  completionCopy = completion;
  v17 = completionCopy;
  if (channelCopy && writeChannelCopy)
  {
    v47 = 0;
    v48 = &v47;
    v49 = 0x3032000000;
    v50 = sub_276AA3A3C;
    v51 = sub_276AA3A4C;
    v52 = 0;
    v45[0] = 0;
    v45[1] = v45;
    v45[2] = 0x2020000000;
    v46 = 0;
    v41 = 0;
    v42 = &v41;
    v43 = 0x2020000000;
    v44 = 0;
    if (synchronousCopy)
    {
      v18 = objc_msgSend_currentProgress(MEMORY[0x277CCAC48], v15, v16);

      if (v18)
      {
        v18 = objc_msgSend_progressWithTotalUnitCount_(MEMORY[0x277CCAC48], v19, size);
        v40[0] = MEMORY[0x277D85DD0];
        v40[1] = 3221225472;
        v40[2] = sub_276AA43BC;
        v40[3] = &unk_27A6E65E8;
        v40[4] = v45;
        objc_msgSend_setCancellationHandler_(v18, v20, v40);
      }
    }

    else
    {
      v18 = 0;
    }

    v22 = dispatch_group_create();
    dispatch_group_enter(v22);
    v33[0] = MEMORY[0x277D85DD0];
    v33[1] = 3221225472;
    v33[2] = sub_276AA43D0;
    v33[3] = &unk_27A6E6638;
    v37 = &v47;
    v23 = v22;
    v34 = v23;
    v35 = writeChannelCopy;
    v38 = &v41;
    v24 = v18;
    v36 = v24;
    v39 = v45;
    objc_msgSend_readWithHandler_(channelCopy, v25, v33);
    if (synchronousCopy)
    {
      dispatch_group_wait(v23, 0xFFFFFFFFFFFFFFFFLL);
      if (v17)
      {
        v17[2](v17, v42[3], v48[5]);
      }
    }

    else if (v17)
    {
      v28 = objc_msgSend_ioCompletionQueue(self, v26, v27);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = sub_276AA467C;
      block[3] = &unk_27A6E6660;
      v30 = v17;
      v31 = &v41;
      v32 = &v47;
      dispatch_group_notify(v23, v28, block);
    }

    _Block_object_dispose(&v41, 8);
    _Block_object_dispose(v45, 8);
    _Block_object_dispose(&v47, 8);
  }

  else if (completionCopy)
  {
    v21 = objc_msgSend_tsp_unknownReadErrorWithUserInfo_(MEMORY[0x277CCA9B8], v15, 0);
    (v17)[2](v17, 0, v21);
  }
}

@end