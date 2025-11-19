@interface TSPStreamDataStorage
- (BOOL)isReadable;
- (CGDataProvider)newCGDataProvider;
- (CGImageSource)newCGImageSource;
- (id)AVAssetWithOptions:(id)a3 forData:(id)a4;
- (id)AVAssetWithOptions:(id)a3 usingResourceLoaderForData:(id)a4;
- (id)NSDataWithOptions:(unint64_t)a3;
- (id)newDataCopyInputStreamProviderWithDocumentURL:(id)a3 encryptionInfo:(id)a4 error:(id *)a5;
- (id)newDataCopyReadChannelProviderWithDocumentURL:(id)a3 encryptionInfo:(id)a4 error:(id *)a5;
- (id)newDataCopyURLProviderWithDocumentURL:(id)a3 encryptionInfo:(id)a4 error:(id *)a5;
- (id)writeData:(id)a3 toPackageWriter:(id)a4 infoMessage:(void *)a5 preferredFilename:(id)a6 shouldRemoveData:(BOOL)a7 error:(id *)a8;
- (unint64_t)encodedLength;
- (unint64_t)materializedLength;
- (void)performIOChannelReadWithAccessor:(id)a3;
@end

@implementation TSPStreamDataStorage

- (void)performIOChannelReadWithAccessor:(id)a3
{
  v3 = a3;
  v4 = MEMORY[0x277D81150];
  v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "[TSPStreamDataStorage performIOChannelReadWithAccessor:]");
  v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPStreamDataStorage.mm");
  v9 = objc_opt_class();
  v10 = NSStringFromClass(v9);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v4, v11, v6, v8, 34, 0, "Abstract method not overridden by %{public}@", v10);

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v12, v13);
  v14 = MEMORY[0x277CBEAD8];
  v15 = MEMORY[0x277CCACA8];
  v16 = objc_opt_class();
  v17 = NSStringFromClass(v16);
  v19 = objc_msgSend_stringWithFormat_(v15, v18, @"Abstract method not overridden by %@: %s", v17, "[TSPStreamDataStorage performIOChannelReadWithAccessor:]");
  v21 = objc_msgSend_exceptionWithName_reason_userInfo_(v14, v20, *MEMORY[0x277CBE658], v19, 0);
  v22 = v21;

  objc_exception_throw(v21);
}

- (id)newDataCopyURLProviderWithDocumentURL:(id)a3 encryptionInfo:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [TSPDataCopyProviderConcrete alloc];
  v45 = 0;
  v12 = objc_msgSend_initWithDocumentURL_error_(v10, v11, v8, &v45);
  v15 = v45;
  if (v12)
  {
    v16 = objc_msgSend_directory(v12, v13, v14);
    v44 = v9;
    v19 = objc_msgSend_UUID(MEMORY[0x277CCAD78], v17, v18);
    v22 = objc_msgSend_UUIDString(v19, v20, v21);
    v24 = objc_msgSend_URLByAppendingPathComponent_(v16, v23, v22);
    objc_msgSend_setURLInternal_(v12, v25, v24);

    v9 = v44;
    if (objc_opt_respondsToSelector())
    {
      v28 = objc_msgSend_URL(v12, v26, v27);
      canLink = objc_msgSend_linkOrCopyToURL_encryptionInfo_canLink_(self, v29, v28, v44, 0);

      if (canLink)
      {
        goto LABEL_13;
      }
    }

    else
    {
      v31 = MEMORY[0x277D81150];
      v32 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v26, "[TSPStreamDataStorage newDataCopyURLProviderWithDocumentURL:encryptionInfo:error:]");
      v34 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v33, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPStreamDataStorage.mm");
      if (self)
      {
        v35 = objc_opt_class();
        v36 = NSStringFromClass(v35);
      }

      else
      {
        v36 = @"Nil";
      }

      v37 = NSStringFromSelector(sel_linkOrCopyToURL_encryptionInfo_canLink_);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v31, v38, v32, v34, 47, 0, "<%{public}@: %{public}p> does not implement %{public}@", v36, self, v37);

      if (self)
      {
      }

      v9 = v44;
      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v39, v40);
    }
  }

  objc_msgSend_cleanUp(v12, v13, v14);

  v12 = 0;
  if (!v15)
  {
    v15 = objc_msgSend_tsp_unknownReadErrorWithUserInfo_(MEMORY[0x277CCA9B8], v41, 0);
  }

LABEL_13:
  if (a5)
  {
    v42 = v15;
    *a5 = v15;
  }

  return v12;
}

- (id)newDataCopyReadChannelProviderWithDocumentURL:(id)a3 encryptionInfo:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [TSPDataCopyProviderConcrete alloc];
  v62 = 0;
  v12 = objc_msgSend_initWithDocumentURL_error_(v10, v11, v8, &v62);
  v13 = v62;
  v16 = objc_msgSend_decryptionInfo(self, v14, v15);
  v19 = objc_msgSend_mutableCryptoInfoCopy(v16, v17, v18);

  if (!v12 || (objc_msgSend_directory(v12, v20, v21), v22 = objc_claimAutoreleasedReturnValue(), v22, !v22))
  {
    v31 = 0;
    v34 = v13;
    goto LABEL_21;
  }

  v23 = objc_msgSend_directory(v12, v20, v21);
  v58 = v9;
  v26 = objc_msgSend_UUID(MEMORY[0x277CCAD78], v24, v25);
  v29 = objc_msgSend_UUIDString(v26, v27, v28);
  v31 = objc_msgSend_URLByAppendingPathComponent_(v23, v30, v29);

  if (!v31)
  {
    goto LABEL_20;
  }

  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    v55 = MEMORY[0x277D81150];
    v57 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v32, "[TSPStreamDataStorage newDataCopyReadChannelProviderWithDocumentURL:encryptionInfo:error:]");
    v56 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v35, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPStreamDataStorage.mm");
    if (self)
    {
      v36 = objc_opt_class();
      v37 = NSStringFromClass(v36);
    }

    else
    {
      v37 = @"Nil";
    }

    v48 = NSStringFromSelector(sel_linkOrCopyToURL_encryptionInfo_canLink_);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v55, v49, v57, v56, 84, 0, "<%{public}@: %{public}p> does not implement %{public}@", v37, self, v48);

    if (self)
    {
    }

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v50, v51);
    goto LABEL_20;
  }

  if (v58)
  {
    canLink = objc_msgSend_linkOrCopyToURL_encryptionInfo_canLink_(self, v32, v31, v58, 0);
  }

  else
  {
    canLink = objc_msgSend_linkOrCopyToURL_encryptionInfo_canLink_(self, v32, v31, v19, 0);
  }

  if (!canLink)
  {
LABEL_20:
    v34 = v13;
    v9 = v58;
    goto LABEL_21;
  }

  v9 = v58;
  v38 = objc_alloc(MEMORY[0x277D811D0]);
  v61 = v13;
  v40 = objc_msgSend_initForReadingURL_error_(v38, v39, v31, &v61);
  v34 = v61;

  if (v40)
  {
    if (v58 || !v19)
    {
      objc_msgSend_setReadChannelInternal_(v12, v20, v40);
    }

    else
    {
      v41 = objc_alloc(MEMORY[0x277D81168]);
      v44 = objc_msgSend_blockInfos(v19, v42, v43);
      v59[0] = MEMORY[0x277D85DD0];
      v59[1] = 3221225472;
      v59[2] = sub_276A673E8;
      v59[3] = &unk_27A6E45C8;
      v60 = v19;
      ChannelBlock = objc_msgSend_initWithReadChannel_blockInfos_streamReadChannelBlock_(v41, v45, v40, v44, v59);

      objc_msgSend_setReadChannelInternal_(v12, v47, ChannelBlock);
      v9 = v58;
    }

    goto LABEL_24;
  }

LABEL_21:
  objc_msgSend_cleanUp(v12, v20, v21);

  v12 = 0;
  if (v34)
  {
    v40 = 0;
  }

  else
  {
    objc_msgSend_tsp_unknownReadErrorWithUserInfo_(MEMORY[0x277CCA9B8], v52, 0);
    v34 = v40 = 0;
  }

LABEL_24:
  if (a5)
  {
    v53 = v34;
    *a5 = v34;
  }

  return v12;
}

- (id)newDataCopyInputStreamProviderWithDocumentURL:(id)a3 encryptionInfo:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  objc_opt_class();
  v29 = 0;
  v11 = objc_msgSend_newDataCopyReadChannelProviderWithDocumentURL_encryptionInfo_error_(self, v10, v8, v9, &v29);
  v12 = v29;
  v13 = TSUDynamicCast();

  if (v13)
  {
    v16 = objc_msgSend_readChannel(v13, v14, v15);

    if (v16)
    {
      v19 = MEMORY[0x277CBEAE0];
      v20 = objc_msgSend_readChannel(v13, v17, v18);
      v23 = objc_msgSend_length(self, v21, v22);
      v25 = objc_msgSend_tsu_inputStreamWithReadChannel_length_(v19, v24, v20, v23);
      objc_msgSend_setInputStreamInternal_(v13, v26, v25);
    }
  }

  if (a5)
  {
    v27 = v12;
    *a5 = v12;
  }

  return v13;
}

- (CGDataProvider)newCGDataProvider
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  v4 = objc_msgSend_length(self, a2, v2);
  if (v4 >> 15)
  {
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = sub_276A67728;
    v11[3] = &unk_27A6E5420;
    v11[4] = &v12;
    v11[5] = v4;
    objc_msgSend_performIOChannelReadWithAccessor_(self, v5, v11);
  }

  else
  {
    v6 = objc_msgSend_NSDataWithOptions_(self, v5, 0);
    v7 = v6;
    if (v6)
    {
      v8 = CGDataProviderCreateWithCFData(v6);
      v13[3] = v8;
    }
  }

  v9 = v13[3];
  _Block_object_dispose(&v12, 8);
  return v9;
}

- (CGImageSource)newCGImageSource
{
  result = objc_msgSend_newCGDataProvider(self, a2, v2);
  if (result)
  {
    v4 = result;
    v5 = CGImageSourceCreateWithDataProvider(result, 0);
    CGDataProviderRelease(v4);
    return v5;
  }

  return result;
}

- (id)NSDataWithOptions:(unint64_t)a3
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_276A678F0;
  v10 = sub_276A67900;
  v11 = 0;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = sub_276A67908;
  v5[3] = &unk_27A6E5448;
  v5[4] = &v6;
  objc_msgSend_performIOChannelReadWithAccessor_(self, a2, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (id)AVAssetWithOptions:(id)a3 forData:(id)a4
{
  v4 = objc_msgSend_AVAssetWithOptions_usingResourceLoaderForData_(self, a2, a3, a4);

  return v4;
}

- (id)AVAssetWithOptions:(id)a3 usingResourceLoaderForData:(id)a4
{
  v5 = a3;
  v6 = a4;
  v9 = objc_msgSend_UUID(MEMORY[0x277CCAD78], v7, v8);
  v12 = objc_msgSend_UUIDString(v9, v10, v11);

  v13 = MEMORY[0x277CBEBC0];
  v16 = objc_msgSend_filename(v6, v14, v15);
  v19 = objc_msgSend_type(v6, v17, v18);
  v21 = objc_msgSend_tsp_iWorkAVAssetURLWithUUID_filename_contentTypeUTI_(v13, v20, v12, v16, v19);

  v23 = objc_msgSend_URLAssetWithURL_options_(MEMORY[0x277CE6650], v22, v21, v5);
  if (v23)
  {
    v24 = [TSPAVAssetResourceLoaderDelegate alloc];
    v28 = objc_msgSend_initWithData_(v24, v25, v6);
    if (v28)
    {
      v29 = objc_msgSend_resourceLoader(v23, v26, v27);
      v32 = objc_msgSend_delegateQueue(v28, v30, v31);
      objc_msgSend_setDelegate_queue_(v29, v33, v28, v32);

      objc_setAssociatedObject(v23, "com.apple.iWork.resourceLoaderDelegate", v28, 1);
    }

    else
    {
      v29 = v23;
      v23 = 0;
    }
  }

  return v23;
}

- (BOOL)isReadable
{
  v2 = MEMORY[0x277D81150];
  v3 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSPStreamDataStorage isReadable]");
  v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPStreamDataStorage.mm");
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v2, v8, v3, v5, 228, 0, "Abstract method not overridden by %{public}@", v7);

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v9, v10);
  v11 = MEMORY[0x277CBEAD8];
  v12 = MEMORY[0x277CCACA8];
  v13 = objc_opt_class();
  v14 = NSStringFromClass(v13);
  v16 = objc_msgSend_stringWithFormat_(v12, v15, @"Abstract method not overridden by %@: %s", v14, "[TSPStreamDataStorage isReadable]");
  v18 = objc_msgSend_exceptionWithName_reason_userInfo_(v11, v17, *MEMORY[0x277CBE658], v16, 0);
  v19 = v18;

  objc_exception_throw(v18);
}

- (id)writeData:(id)a3 toPackageWriter:(id)a4 infoMessage:(void *)a5 preferredFilename:(id)a6 shouldRemoveData:(BOOL)a7 error:(id *)a8
{
  v8 = [TSPDataStorageWriteResult alloc];
  v10 = objc_msgSend_initWithFilename_encryptionInfo_packageStorageType_encodedLength_isMissingData_changeCount_(v8, v9, &stru_2885C9BB8, 0, 0, 0, 0, 0);

  return v10;
}

- (unint64_t)encodedLength
{
  v2 = MEMORY[0x277D81150];
  v3 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSPStreamDataStorage encodedLength]");
  v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPStreamDataStorage.mm");
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v2, v8, v3, v5, 255, 0, "Abstract method not overridden by %{public}@", v7);

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v9, v10);
  v11 = MEMORY[0x277CBEAD8];
  v12 = MEMORY[0x277CCACA8];
  v13 = objc_opt_class();
  v14 = NSStringFromClass(v13);
  v16 = objc_msgSend_stringWithFormat_(v12, v15, @"Abstract method not overridden by %@: %s", v14, "[TSPStreamDataStorage encodedLength]");
  v18 = objc_msgSend_exceptionWithName_reason_userInfo_(v11, v17, *MEMORY[0x277CBE658], v16, 0);
  v19 = v18;

  objc_exception_throw(v18);
}

- (unint64_t)materializedLength
{
  v2 = MEMORY[0x277D81150];
  v3 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSPStreamDataStorage materializedLength]");
  v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPStreamDataStorage.mm");
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v2, v8, v3, v5, 259, 0, "Abstract method not overridden by %{public}@", v7);

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v9, v10);
  v11 = MEMORY[0x277CBEAD8];
  v12 = MEMORY[0x277CCACA8];
  v13 = objc_opt_class();
  v14 = NSStringFromClass(v13);
  v16 = objc_msgSend_stringWithFormat_(v12, v15, @"Abstract method not overridden by %@: %s", v14, "[TSPStreamDataStorage materializedLength]");
  v18 = objc_msgSend_exceptionWithName_reason_userInfo_(v11, v17, *MEMORY[0x277CBE658], v16, 0);
  v19 = v18;

  objc_exception_throw(v18);
}

@end