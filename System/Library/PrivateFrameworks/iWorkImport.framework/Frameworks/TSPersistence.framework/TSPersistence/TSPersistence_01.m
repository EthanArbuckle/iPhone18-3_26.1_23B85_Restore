void sub_2769CDF64(uint64_t a1)
{
  v2 = objc_alloc(MEMORY[0x277CBEB18]);
  v4 = objc_msgSend_initWithCapacity_(v2, v3, *(*(a1 + 32) + 48));
  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  for (i = *(*(a1 + 32) + 40); i; i = *i)
  {
    WeakRetained = objc_loadWeakRetained(i + 3);
    v11 = WeakRetained;
    if (WeakRetained)
    {
      v12 = objc_msgSend_storage(WeakRetained, v9, v10);
      if ((objc_msgSend_isMaterialized(v11, v13, v14) & 1) == 0 && objc_msgSend_uploadStatus(v11, v15, v16) != 5 || v12 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) && objc_msgSend_isMissingData(v12, v18, v19))
      {
        objc_msgSend_addObject_(*(*(*(a1 + 40) + 8) + 40), v17, v11);
      }
    }
  }
}

void sub_2769CE12C(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 40);
  if (!v1)
  {
    return;
  }

  while (1)
  {
    WeakRetained = objc_loadWeakRetained(v1 + 3);
    if (WeakRetained)
    {
      break;
    }

LABEL_13:

    v1 = *v1;
    if (!v1)
    {
      return;
    }
  }

  v13 = WeakRetained;
  v8 = objc_msgSend_storage(WeakRetained, v4, v5);
  if (*(a1 + 48) != 1 || (objc_msgSend_isMaterialized(v13, v6, v7) & 1) != 0 || objc_msgSend_uploadStatus(v13, v9, v10) == 5)
  {
    if (!v8 || (*(a1 + 49) != 1 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0)) && (*(a1 + 50) != 1 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) || (objc_msgSend_isMissingData(v8, v11, v12) & 1) == 0))
    {

      WeakRetained = v13;
      goto LABEL_13;
    }
  }

  *(*(*(a1 + 40) + 8) + 24) = 1;
}

void sub_2769CE37C(uint64_t a1, const char *a2)
{
  v3 = objc_msgSend_dataForIdentifierImpl_(*(a1 + 32), a2, *(a1 + 48));
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void sub_2769CE624()
{
  v0 = TSULogCreateCategory();
  v1 = *MEMORY[0x277D81410];
  *MEMORY[0x277D81410] = v0;
}

void sub_2769CE8E0(void *a1, const char *a2)
{
  v3 = a1[4];
  if (!*(v3 + 112))
  {
    v4 = objc_alloc(MEMORY[0x277D81350]);
    v58 = 0;
    v6 = objc_msgSend_initWithSignature_error_(v4, v5, @"DocumentData", &v58);
    v7 = v58;
    v8 = a1[4];
    v9 = *(v8 + 112);
    *(v8 + 112) = v6;

    v11 = a1[4];
    if (!*(v11 + 112))
    {
      v36 = objc_opt_class();
      v37 = NSStringFromClass(v36);
      v40 = objc_msgSend_domain(v7, v38, v39);
      v57 = objc_msgSend_code(v7, v41, v42);
      TSUSetCrashReporterInfo();

      v43 = MEMORY[0x277D81150];
      v45 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v44, "[TSPDataManager temporaryDataStorageURLForFilename:]_block_invoke", "[TSPDataManager temporaryDataStorageURLForFilename:]_block_invoke", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPDataManager.mm", 1279, v37, v40, v57, v7);
      v47 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v46, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPDataManager.mm");
      v48 = objc_opt_class();
      v49 = NSStringFromClass(v48);
      v52 = objc_msgSend_domain(v7, v50, v51);
      v55 = objc_msgSend_code(v7, v53, v54);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v43, v56, v45, v47, 1279, 1, "Cannot continue without a temporary directory. errorClass=%{public}@, domain=%{public}@, code=%zd (%@) ", v49, v52, v55, v7);

      TSUCrashBreakpoint();
      abort();
    }

    if (*(v11 + 120))
    {
      v12 = MEMORY[0x277D81150];
      v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "[TSPDataManager temporaryDataStorageURLForFilename:]_block_invoke");
      v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPDataManager.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v12, v16, v13, v15, 1282, 0, "expected nil value for '%{public}s'", "_temporaryDirectoryPathSet");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v17, v18);
    }

    v19 = objc_alloc_init(MEMORY[0x277D812B0]);
    v20 = a1[4];
    v21 = *(v20 + 120);
    *(v20 + 120) = v19;

    v3 = a1[4];
  }

  v22 = objc_msgSend_addPath_(*(v3 + 120), a2, a1[5]);
  v23 = [TSPTemporaryDataStorageURL alloc];
  v26 = objc_msgSend_URL(*(a1[4] + 112), v24, v25);
  v29 = objc_msgSend_path(v26, v27, v28);
  v31 = objc_msgSend_stringByAppendingPathComponent_(v29, v30, v22);
  inited = objc_msgSend_initFileURLWithPath_parentDirectory_(v23, v32, v31, *(a1[4] + 112));
  v34 = *(a1[6] + 8);
  v35 = *(v34 + 40);
  *(v34 + 40) = inited;
}

void sub_2769CED90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, ...)
{
  va_start(va, a7);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2769CEDD4(uint64_t a1, void *a2)
{
  v3 = a2;
  *(*(*(a1 + 40) + 8) + 24) = v3[2](v3, *(a1 + 32), 2);
}

void sub_2769CF118(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, void *a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, id a30)
{
  v36 = v33;

  _Block_object_dispose(&a19, 8);
  _Block_object_dispose(&a25, 8);

  _Unwind_Resume(a1);
}

void sub_2769CF1A8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_alloc(MEMORY[0x277D811D0]);
  v5 = *(*(a1 + 56) + 8);
  v24 = *(v5 + 40);
  v7 = objc_msgSend_initForReadingURL_error_(v4, v6, v3, &v24);
  objc_storeStrong((v5 + 40), v24);
  if (v7)
  {
    v8 = dispatch_semaphore_create(0);
    v9 = *(a1 + 32);
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = sub_2769CF350;
    v17[3] = &unk_27A6E3840;
    v10 = v3;
    v11 = *(a1 + 32);
    v12 = *(a1 + 40);
    v18 = v10;
    v19 = v11;
    v23 = *(a1 + 64);
    v20 = v12;
    v21 = *(a1 + 48);
    v13 = v8;
    v22 = v13;
    objc_msgSend_findExistingDataForReadChannel_dataURL_dataURLType_readHandler_completion_(v9, v14, v7, v10, 3, 0, v17);
    objc_msgSend_close(v7, v15, v16);
    dispatch_semaphore_wait(v13, 0xFFFFFFFFFFFFFFFFLL);
  }
}

void sub_2769CF350(uint64_t a1, int a2, void *a3, void *a4, uint64_t a5)
{
  v21 = a3;
  v10 = a4;
  if (a2)
  {
    if (v21)
    {
      if (*(a1 + 32) && objc_msgSend_shouldAttemptToMaterializeData_expectedLength_(*(a1 + 40), v9, v21, a5))
      {
        objc_msgSend_attemptToMaterializeData_dataURL_dataURLType_(*(a1 + 40), v11, v21, *(a1 + 32), 3);
      }

      v12 = *(*(a1 + 72) + 8);
      v13 = v21;
      v14 = *(v12 + 40);
      *(v12 + 40) = v13;
    }

    else
    {
      v15 = [TSPExternalReferenceDataStorage alloc];
      v14 = objc_msgSend_initWithURL_(v15, v16, *(a1 + 32));
      hasValidatedDigestMatch_filename = objc_msgSend_addNewDataForStorage_digest_hasValidatedDigestMatch_filename_(*(a1 + 48), v17, v14, v10, 1, *(a1 + 56));
      v19 = *(*(a1 + 72) + 8);
      v20 = *(v19 + 40);
      *(v19 + 40) = hasValidatedDigestMatch_filename;
    }
  }

  dispatch_semaphore_signal(*(a1 + 64));
}

void sub_2769CF47C()
{
  v0 = TSULogCreateCategory();
  v1 = *MEMORY[0x277D81410];
  *MEMORY[0x277D81410] = v0;
}

void sub_2769CF544(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (*(v1 + 128) == 1)
  {
    v2 = *(v1 + 40);
    if (v2)
    {
      do
      {
        WeakRetained = objc_loadWeakRetained(v2 + 3);
        objc_opt_class();
        v7 = objc_msgSend_storage(WeakRetained, v5, v6);
        v8 = TSUDynamicCast();

        if (v8)
        {
          objc_msgSend_removeExternalReferenceForData_storage_(*(a1 + 32), v9, WeakRetained, v8);
        }

        v2 = *v2;
      }

      while (v2);
      v1 = *(a1 + 32);
    }

    *(v1 + 128) = 0;
  }
}

void sub_2769CF700(uint64_t a1, const char *a2, uint64_t a3)
{
  if (objc_msgSend_isReadable(*(a1 + 32), a2, a3))
  {
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = sub_2769CF7F8;
    v8[3] = &unk_27A6E38B8;
    v4 = *(a1 + 32);
    v5 = *(a1 + 48);
    v8[4] = *(a1 + 40);
    v9 = v5;
    v10 = *(a1 + 32);
    objc_msgSend_performIOChannelReadWithAccessor_(v4, v6, v8);
  }

  else
  {
    v7 = *(*(a1 + 40) + 144);

    dispatch_group_leave(v7);
  }
}

void sub_2769CF7F8(void **a1, void *a2)
{
  v5 = a2;
  if (v5)
  {
    v6 = objc_msgSend_filename(a1[5], v3, v4);
    v8 = objc_msgSend_temporaryDataStorageURLForFilename_(a1[4], v7, v6);
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = sub_2769CF988;
    v17[3] = &unk_27A6E3890;
    v9 = a1[4];
    v18 = a1[5];
    v10 = v8;
    v19 = v10;
    v11 = v6;
    v20 = v11;
    v12 = a1[6];
    v13 = a1[4];
    v21 = v12;
    v22 = v13;
    objc_msgSend_findExistingDataForReadChannel_dataURL_dataURLType_temporaryDataStorageURL_keepTemporaryFileOnSuccess_completion_(v9, v14, v5, 0, 0, v10, 1, v17);
    objc_msgSend_close(v5, v15, v16);
  }

  else
  {
    dispatch_group_leave(*(a1[4] + 18));
  }
}

void sub_2769CF988(uint64_t a1, int a2, void *a3, void *a4)
{
  v20 = a3;
  v8 = a4;
  if (a2)
  {
    if (*(a1 + 32) != v20)
    {
      v9 = MEMORY[0x277D81150];
      v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "[TSPDataManager removeExternalReferenceForData:storage:]_block_invoke_3");
      v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPDataManager.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v13, v10, v12, 1414, 0, "Found duplicate data. External data must have been changed since it was added to the document.");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v14, v15);
    }

    v16 = [TSPTemporaryDataStorage alloc];
    v18 = objc_msgSend_initWithTemporaryDataStorageURL_decryptionInfo_(v16, v17, *(a1 + 40), 0);
    objc_msgSend_setFilename_storage_ifStorageIs_(*(a1 + 32), v19, *(a1 + 48), v18, *(a1 + 56));
  }

  dispatch_group_leave(*(*(a1 + 64) + 144));
}

void sub_2769D0064(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, void *a32, void *a33)
{
  _Block_object_dispose((v39 - 168), 8);

  _Unwind_Resume(a1);
}

id sub_2769D0184(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = objc_msgSend_preferredFilenameForDocumentResourceInfo_(*(a1 + 32), v4, *(a1 + 40));
  hasValidatedDigestMatch_filename = objc_msgSend_addNewDataForStorage_digest_hasValidatedDigestMatch_filename_(*(a1 + 32), v6, v3, *(a1 + 48), 0, v5);

  return hasValidatedDigestMatch_filename;
}

id sub_2769D0218(void *a1, const char *a2)
{
  v3 = a1[4];
  v4 = a1[5];
  v9 = 0;
  v5 = objc_msgSend_newDataStorageForDocumentResourceInfo_createResourceRequestIfNeeded_error_(v3, a2, v4, 1, &v9);
  v6 = v9;
  if (v5)
  {
    v7 = (*(a1[6] + 16))();
  }

  else
  {
    if (UnsafePointer != -1)
    {
      sub_276BD1430();
    }

    v7 = 0;
  }

  return v7;
}

void sub_2769D02E8()
{
  v0 = TSULogCreateCategory();
  v1 = UnsafePointer;
  UnsafePointer = v0;
}

uint64_t sub_2769D032C(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = dispatch_semaphore_create(0);
    v6 = *(a1 + 32);
    v5 = *(a1 + 40);
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = sub_2769D0424;
    v9[3] = &unk_27A6E3958;
    v12 = *(a1 + 48);
    v10 = v5;
    v11 = v4;
    objc_msgSend_cacheResourceAtURL_forInfo_copy_completionQueue_completionHandler_(v6, v7, v3, v10, 1, 0, v9);
    dispatch_semaphore_wait(v4, 0xFFFFFFFFFFFFFFFFLL);
  }

  return 0;
}

void sub_2769D0424(uint64_t a1, char a2, void *a3)
{
  v10 = a3;
  if ((a2 & 1) != 0 || objc_msgSend_tsu_isFileExistsError(v10, v5, v6))
  {
    v7 = (*(*(a1 + 48) + 16))();
    v8 = *(*(a1 + 56) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;
  }

  else if (UnsafePointer != -1)
  {
    sub_276BD1458();
  }

  dispatch_semaphore_signal(*(a1 + 40));
}

void sub_2769D04E0()
{
  v0 = TSULogCreateCategory();
  v1 = UnsafePointer;
  UnsafePointer = v0;
}

void sub_2769D0524()
{
  v0 = TSULogCreateCategory();
  v1 = UnsafePointer;
  UnsafePointer = v0;
}

void sub_2769D0740(uint64_t a1, const char *a2)
{
  v3 = objc_msgSend_dataForDigestImpl_documentResourceInfo_skipDocumentResourcesLookup_expectedLength_accessorBlock_(*(a1 + 32), a2, *(a1 + 40), 0, 0, 0, 0);
  v4 = *(*(a1 + 48) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void sub_2769D08DC(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = sub_2769D0A10;
    aBlock[3] = &unk_27A6E39A8;
    v15 = v2;
    v3 = _Block_copy(aBlock);
  }

  else
  {
    v3 = 0;
  }

  v4 = [TSPDigest alloc];
  v7 = objc_msgSend_digestString(*(a1 + 40), v5, v6);
  v9 = objc_msgSend_initWithDigestString_(v4, v8, v7);

  v11 = objc_msgSend_dataForDigestImpl_documentResourceInfo_skipDocumentResourcesLookup_expectedLength_accessorBlock_(*(a1 + 48), v10, v9, *(a1 + 40), 0, 0, v3);
  v12 = *(*(a1 + 56) + 8);
  v13 = *(v12 + 40);
  *(v12 + 40) = v11;
}

void sub_2769D0B10(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v4 = objc_msgSend_dataForDigestImpl_documentResourceInfo_skipDocumentResourcesLookup_expectedLength_accessorBlock_(*(a1 + 32), v3, *(a1 + 40), 0, 0, 0, 0);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = sub_2769D0BE8;
  v8[3] = &unk_27A6E2C78;
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  v9 = v4;
  v10 = v6;
  v7 = v4;
  dispatch_async(v5, v8);

  objc_autoreleasePoolPop(v2);
}

void sub_2769D0EE0(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 80);
  v7 = objc_msgSend_length(*(a1 + 48), a2, a3);
  hasValidatedDigestMatch_filename = objc_msgSend_dataForDigestImpl_documentResourceInfo_skipDocumentResourcesLookup_expectedLength_accessorBlock_(v4, v8, v5, 0, v6, v7, *(a1 + 64));
  v12 = hasValidatedDigestMatch_filename;
  if (!hasValidatedDigestMatch_filename)
  {
    hasValidatedDigestMatch_filename = objc_msgSend_addNewDataForStorage_digest_hasValidatedDigestMatch_filename_(*(a1 + 32), v9, *(a1 + 48), *(a1 + 40), *(a1 + 81), *(a1 + 56));
  }

  objc_storeStrong((*(*(a1 + 72) + 8) + 40), hasValidatedDigestMatch_filename);
  v11 = v12;
  if (!v12)
  {

    v11 = 0;
  }
}

void sub_2769D17E0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v7 = v4;
  if (v4 && (objc_msgSend_tsu_isFileExistsError(v4, v5, v6) & 1) == 0 && *MEMORY[0x277D81408] != -1)
  {
    sub_276BD1494();
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_2769D1868()
{
  v0 = TSULogCreateCategory();
  v1 = *MEMORY[0x277D81410];
  *MEMORY[0x277D81410] = v0;
}

void sub_2769D18AC(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3 && *MEMORY[0x277D81408] != -1)
  {
    sub_276BD14A8();
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_2769D1918()
{
  v0 = TSULogCreateCategory();
  v1 = *MEMORY[0x277D81410];
  *MEMORY[0x277D81410] = v0;
}

void sub_2769D195C()
{
  v0 = TSULogCreateCategory();
  v1 = *MEMORY[0x277D81410];
  *MEMORY[0x277D81410] = v0;
}

void sub_2769D21E4(uint64_t a1, void *a2)
{
  v16 = a2;
  if ((objc_msgSend_isApplicationData(v16, v3, v4) & 1) == 0)
  {
    isReadable = objc_msgSend_isReadable(v16, v5, v6);
    v10 = objc_msgSend_storage(v16, v8, v9);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = isReadable | 2;
    }

    else
    {
      v12 = isReadable;
    }

    v13 = *(a1 + 32);
    v14 = objc_msgSend_persistenceWarningsForData_flags_(*(a1 + 40), v11, v16, v12);
    objc_msgSend_unionSet_(v13, v15, v14);
  }
}

void sub_2769D23C0()
{
  v0 = TSULogCreateCategory();
  v1 = UnsafePointer;
  UnsafePointer = v0;
}

void sub_2769D2404()
{
  v0 = TSULogCreateCategory();
  v1 = UnsafePointer;
  UnsafePointer = v0;
}

uint64_t sub_2769D2520(uint64_t a1)
{
  sub_2769D255C(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_2769D255C(uint64_t a1, id *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      objc_destroyWeak(v2 + 3);
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

uint64_t *sub_2769D25A0(void *a1, int *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (*&v3 <= v2)
    {
      v5 = v2 % *&v3;
    }
  }

  else
  {
    v5 = (*&v3 - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == v2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= *&v3)
      {
        v8 %= *&v3;
      }
    }

    else
    {
      v8 &= *&v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  if (*(v7 + 4) != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

void sub_2769D2800(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_2769ABE20(va);
  _Unwind_Resume(a1);
}

void *sub_2769D2814@<X0>(void *result@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = result[1];
  v4 = a2[1];
  v5 = vcnt_s8(v3);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    if (v4 >= *&v3)
    {
      v4 %= *&v3;
    }
  }

  else
  {
    v4 &= *&v3 - 1;
  }

  v6 = *(*result + 8 * v4);
  do
  {
    v7 = v6;
    v6 = *v6;
  }

  while (v6 != a2);
  if (v7 == result + 2)
  {
    goto LABEL_18;
  }

  v8 = v7[1];
  if (v5.u32[0] > 1uLL)
  {
    if (v8 >= *&v3)
    {
      v8 %= *&v3;
    }
  }

  else
  {
    v8 &= *&v3 - 1;
  }

  if (v8 != v4)
  {
LABEL_18:
    if (!*a2)
    {
      goto LABEL_19;
    }

    v9 = *(*a2 + 8);
    if (v5.u32[0] > 1uLL)
    {
      if (v9 >= *&v3)
      {
        v9 %= *&v3;
      }
    }

    else
    {
      v9 &= *&v3 - 1;
    }

    if (v9 != v4)
    {
LABEL_19:
      *(*result + 8 * v4) = 0;
    }
  }

  v10 = *a2;
  if (*a2)
  {
    v11 = *(v10 + 8);
    if (v5.u32[0] > 1uLL)
    {
      if (v11 >= *&v3)
      {
        v11 %= *&v3;
      }
    }

    else
    {
      v11 &= *&v3 - 1;
    }

    if (v11 != v4)
    {
      *(*result + 8 * v11) = v7;
      v10 = *a2;
    }
  }

  *v7 = v10;
  *a2 = 0;
  --result[3];
  *a3 = a2;
  *(a3 + 8) = result;
  *(a3 + 16) = 1;
  *(a3 + 17) = 0;
  *(a3 + 20) = 0;
  return result;
}

uint64_t sub_2769D2950(uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      objc_destroyWeak(v2 + 3);
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t *sub_2769D299C(void *a1, unint64_t *a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = vcnt_s8(v2);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (v3 >= *&v2)
    {
      v5 = v3 % *&v2;
    }
  }

  else
  {
    v5 = (*&v2 - 1) & v3;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6)
  {
    return 0;
  }

  for (result = *v6; result; result = *result)
  {
    v8 = result[1];
    if (v8 == v3)
    {
      if (result[2] == *a2 && result[3] == a2[1] && *(result + 8) == *(a2 + 4))
      {
        return result;
      }
    }

    else
    {
      if (v4.u32[0] > 1uLL)
      {
        if (v8 >= *&v2)
        {
          v8 %= *&v2;
        }
      }

      else
      {
        v8 &= *&v2 - 1;
      }

      if (v8 != v5)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_2769D2A64(uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      objc_destroyWeak(v2 + 5);
    }

    operator delete(v2);
  }

  return a1;
}

void *sub_2769D2AB0(void *a1, unint64_t *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (v2 >= *&v3)
    {
      v5 = v2 % *&v3;
    }
  }

  else
  {
    v5 = (*&v3 - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == v2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= *&v3)
      {
        v8 %= *&v3;
      }
    }

    else
    {
      v8 &= *&v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  if (v7[2] != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

void sub_2769D2CF8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_2769D2950(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_2769D2D0C(void *a1, unint64_t *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_25;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (v2 >= *&v3)
    {
      v5 = v2 % *&v3;
    }
  }

  else
  {
    v5 = (*&v3 - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_25:
    operator new();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == v2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= *&v3)
      {
        v8 %= *&v3;
      }
    }

    else
    {
      v8 &= *&v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_25;
    }

LABEL_24:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_25;
    }
  }

  if (v7[2] != *a2 || v7[3] != a2[1] || *(v7 + 8) != *(a2 + 4))
  {
    goto LABEL_24;
  }

  return v7;
}

void sub_2769D2F74(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_2769D2A64(va);
  _Unwind_Resume(a1);
}

uint64_t sub_2769D2F88(uint64_t a1)
{
  sub_2769D2FC4(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_2769D2FC4(uint64_t a1, id *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      objc_destroyWeak(v2 + 5);
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void sub_2769D3350(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id a24)
{
  _Block_object_dispose(&a19, 8);

  _Unwind_Resume(a1);
}

uint64_t sub_2769D33A0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2769D33B8(uint64_t a1, const char *a2)
{
  v3 = objc_msgSend_componentFileURLForPackageURL_packageLocator_(TSPDirectoryPackage, a2, a2, *(a1 + 32));
  v25 = 0;
  v4 = *MEMORY[0x277CBE838];
  v24 = 0;
  ResourceValue_forKey_error = objc_msgSend_getResourceValue_forKey_error_(v3, v5, &v25, v4, &v24);
  v7 = v25;
  v9 = v24;
  if (ResourceValue_forKey_error)
  {
    v23 = 0;
    v10 = *MEMORY[0x277CBE7B0];
    v22 = 0;
    v11 = objc_msgSend_getResourceValue_forKey_error_(v3, v8, &v23, v10, &v22);
    v12 = v23;
    v13 = v22;

    if (v11)
    {
      v14 = [TSPPackageEntryInfo alloc];
      v17 = objc_msgSend_unsignedLongLongValue(v7, v15, v16);
      ModificationDate_CRC = objc_msgSend_initWithEncodedLength_lastModificationDate_CRC_(v14, v18, v17, v12, 0);
      v20 = *(*(a1 + 40) + 8);
      v21 = *(v20 + 40);
      *(v20 + 40) = ModificationDate_CRC;

      goto LABEL_9;
    }

    v9 = v13;
  }

  else
  {
    v12 = 0;
  }

  if (*MEMORY[0x277D81408] != -1)
  {
    sub_276BD14F8();
  }

  v13 = v9;
LABEL_9:
}

void sub_2769D3554()
{
  v0 = TSULogCreateCategory();
  v1 = *MEMORY[0x277D81410];
  *MEMORY[0x277D81410] = v0;
}

void sub_2769D3804(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, id a26)
{
  _Block_object_dispose(&a21, 8);

  _Block_object_dispose((v29 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_2769D3868(void *a1, void *a2)
{
  v3 = a2;
  v5 = objc_msgSend_componentFileURLForPackageURL_packageLocator_(TSPDirectoryPackage, v4, v3, a1[4]);
  v6 = objc_alloc(MEMORY[0x277D811D0]);
  v7 = *(a1[6] + 8);
  obj = *(v7 + 40);
  v9 = objc_msgSend_initForReadingURL_error_(v6, v8, v5, &obj);
  objc_storeStrong((v7 + 40), obj);
  v10 = *(a1[5] + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v9;

  if (!*(*(a1[5] + 8) + 40) && *MEMORY[0x277D81408] != -1)
  {
    sub_276BD1520();
  }
}

void sub_2769D3960()
{
  v0 = TSULogCreateCategory();
  v1 = *MEMORY[0x277D81410];
  *MEMORY[0x277D81410] = v0;
}

uint64_t sub_2769D3D2C(uint64_t a1, const char *a2)
{
  v3 = MEMORY[0x277D81150];
  v4 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSPDirectoryPackage copyComponent:toPackageURL:packageLocator:zipFileWriter:encryptionKey:canLink:completion:]_block_invoke");
  v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPDirectoryPackage.mm");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v3, v7, v4, v6, 116, 0, "Can't get package URL");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v8, v9);
  result = *(a1 + 32);
  if (result)
  {
    v11 = *(result + 16);

    return v11();
  }

  return result;
}

void sub_2769D3E20(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    v5 = objc_msgSend_componentFileURLForPackageURL_packageLocator_(TSPDirectoryPackage, v3, v4, *(a1 + 32));
    v31 = 0;
    v7 = objc_msgSend_checkResourceIsReachableAndReturnError_(v5, v6, &v31);
    v9 = v31;
    if (v7)
    {
      v10 = objc_msgSend_componentFileURLForPackageURL_packageLocator_(TSPDirectoryPackage, v8, *(a1 + 40), *(a1 + 48));
      v13 = objc_msgSend_defaultManager(MEMORY[0x277CCAA00], v11, v12);
      v16 = objc_msgSend_URLByDeletingLastPathComponent(v10, v14, v15);
      v30 = v9;
      v18 = objc_msgSend_createDirectoryAtURL_withIntermediateDirectories_attributes_error_(v13, v17, v16, 1, 0, &v30);
      v19 = v30;

      if (v18)
      {
        v22 = objc_msgSend_decryptionKey(*(a1 + 56), v20, v21);
        v23 = *(a1 + 64);
        v24 = *(a1 + 88);
        v29 = v19;
        canLink_encodedLength_error = objc_msgSend_linkOrCopyItemAtURL_decryptionInfo_toURL_encryptionInfo_canLink_encodedLength_error_(TSPFileManager, v25, v5, v22, v10, v23, v24, 0, &v29);
        v9 = v29;

        if (canLink_encodedLength_error)
        {
          v27 = 1;
        }

        else
        {
          if (*MEMORY[0x277D81408] != -1)
          {
            sub_276BD1570();
          }

          v27 = 0;
        }
      }

      else
      {
        if (*MEMORY[0x277D81408] != -1)
        {
          sub_276BD1548();
        }

        v27 = 0;
        v9 = v19;
      }
    }

    else
    {
      v27 = 0;
    }

    v28 = *(a1 + 72);
    if (v28)
    {
      (*(v28 + 16))(v28, v27, v9);
    }
  }

  else
  {
    (*(*(a1 + 80) + 16))();
  }
}

void sub_2769D4084()
{
  v0 = TSULogCreateCategory();
  v1 = *MEMORY[0x277D81410];
  *MEMORY[0x277D81410] = v0;
}

void sub_2769D40C8()
{
  v0 = TSULogCreateCategory();
  v1 = *MEMORY[0x277D81410];
  *MEMORY[0x277D81410] = v0;
}

void sub_2769D4280()
{
  v0 = TSULogCreateCategory();
  v1 = *MEMORY[0x277D81410];
  *MEMORY[0x277D81410] = v0;
}

void sub_2769D4554(uint64_t *a1, void *a2)
{
  v3 = objc_msgSend_URLByAppendingPathComponent_(a2, a2, a1[4]);
  v25 = 0;
  v4 = *MEMORY[0x277CBE838];
  v5 = *(a1[5] + 8);
  obj = 0;
  ResourceValue_forKey_error = objc_msgSend_getResourceValue_forKey_error_(v3, v6, &v25, v4, &obj);
  v8 = v25;
  objc_storeStrong((v5 + 40), obj);
  if (ResourceValue_forKey_error)
  {
    v23 = 0;
    v10 = *MEMORY[0x277CBE7B0];
    v11 = *(a1[5] + 8);
    v22 = 0;
    v12 = objc_msgSend_getResourceValue_forKey_error_(v3, v9, &v23, v10, &v22);
    v13 = v23;
    objc_storeStrong((v11 + 40), v22);
    if (v12)
    {
      v14 = [TSPPackageEntryInfo alloc];
      v17 = objc_msgSend_unsignedLongLongValue(v8, v15, v16);
      ModificationDate_CRC = objc_msgSend_initWithEncodedLength_lastModificationDate_CRC_(v14, v18, v17, v13, 0);
      v20 = *(a1[6] + 8);
      v21 = *(v20 + 40);
      *(v20 + 40) = ModificationDate_CRC;
    }
  }

  else
  {
    v13 = 0;
  }
}

void sub_2769D48C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id a24)
{
  _Block_object_dispose(&a19, 8);

  _Block_object_dispose((v26 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_2769D490C(uint64_t *a1, void *a2)
{
  v3 = a2;
  v5 = objc_msgSend_URLByAppendingPathComponent_(v3, v4, a1[4]);
  v6 = *(a1[6] + 8);
  obj = *(v6 + 40);
  v8 = objc_msgSend_dataWithContentsOfURL_options_error_(MEMORY[0x277CBEA90], v7, v5, 0, &obj);
  objc_storeStrong((v6 + 40), obj);
  v9 = *(a1[5] + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;
}

void sub_2769D4AE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

void sub_2769D4B20(uint64_t a1, void *a2)
{
  v10 = a2;
  v4 = objc_msgSend_URLByAppendingPathComponent_(v10, v3, *(a1 + 32));
  v5 = objc_alloc(MEMORY[0x277D811D0]);
  v7 = objc_msgSend_initForReadingURL_error_(v5, v6, v4, 0);
  v8 = *(*(a1 + 40) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;
}

void sub_2769D4CA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, ...)
{
  va_start(va, a7);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2769D4CD8(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = objc_msgSend_URLByAppendingPathComponent_(v3, v4, *(a1 + 32));
  v12 = 0;
  v7 = objc_msgSend_checkResourceIsReachableAndReturnError_(v5, v6, &v12);
  v8 = v12;
  v11 = v8;
  *(*(*(a1 + 40) + 8) + 24) = v7;
  if ((*(*(*(a1 + 40) + 8) + 24) & 1) == 0 && (objc_msgSend_tsu_isNoSuchFileError(v8, v9, v10) & 1) == 0 && *MEMORY[0x277D81408] != -1)
  {
    sub_276BD15C0();
  }
}

void sub_2769D4DB8()
{
  v0 = TSULogCreateCategory();
  v1 = *MEMORY[0x277D81410];
  *MEMORY[0x277D81410] = v0;
}

void sub_2769D5BA8()
{
  v0 = TSULogCreateCategory();
  v1 = UnsafePointer;
  UnsafePointer = v0;
}

void sub_2769D5BEC()
{
  v0 = TSULogCreateCategory();
  v1 = UnsafePointer;
  UnsafePointer = v0;
}

void sub_2769D5C30()
{
  v0 = TSULogCreateCategory();
  v1 = UnsafePointer;
  UnsafePointer = v0;
}

void sub_2769D5F9C()
{
  v0 = TSULogCreateCategory();
  v1 = UnsafePointer;
  UnsafePointer = v0;
}

void sub_2769D626C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (v5)
  {
    objc_msgSend_setError_(*(a1 + 32), v4, v5);
  }
}

void sub_2769D62D4()
{
  v0 = TSULogCreateCategory();
  v1 = UnsafePointer;
  UnsafePointer = v0;
}

void sub_2769D6718()
{
  v0 = TSULogCreateCategory();
  v1 = UnsafePointer;
  UnsafePointer = v0;
}

void sub_2769D675C()
{
  v0 = TSULogCreateCategory();
  v1 = UnsafePointer;
  UnsafePointer = v0;
}

void sub_2769D6B28()
{
  v0 = TSULogCreateCategory();
  v1 = UnsafePointer;
  UnsafePointer = v0;
}

void sub_2769D71B8(_Unwind_Exception *a1)
{
  v6 = v5;

  _Unwind_Resume(a1);
}

void sub_2769D7250(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  v10 = v9;
  a9.receiver = v10;
  a9.super_class = TSPAVAssetResourceLoaderDelegate;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_2769D735C(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_standardUserDefaults(MEMORY[0x277CBEBD0], a2, a3);
  byte_280A52420 = objc_msgSend_BOOLForKey_(v4, v3, @"TSPAVAssetResourceLoadingDisableEntireLengthAvailableOnDemand");
}

void sub_2769D7468(uint64_t a1, const char *a2, uint64_t a3)
{
  if ((objc_msgSend_isCancelled(*(a1 + 32), a2, a3) & 1) == 0)
  {
    v23 = objc_msgSend_contentInformationRequest(*(a1 + 32), v4, v5);
    v8 = objc_msgSend_type(*(*(a1 + 40) + 8), v6, v7);
    objc_msgSend_setContentType_(v23, v9, v8);

    objc_msgSend_setContentLength_(v23, v10, *(*(a1 + 40) + 16));
    objc_msgSend_setByteRangeAccessSupported_(v23, v11, 1);
    v12 = *(a1 + 40);
    v13 = objc_opt_class();
    shouldDisableEntireLengthAvailableOnDemand = objc_msgSend_shouldDisableEntireLengthAvailableOnDemand(v13, v14, v15);
    objc_msgSend_setEntireLengthAvailableOnDemand_(v23, v17, shouldDisableEntireLengthAvailableOnDemand ^ 1u);
    v20 = objc_msgSend_dataRequest(*(a1 + 32), v18, v19);

    if (!v20)
    {
      objc_msgSend_finishLoading(*(a1 + 32), v21, v22);
    }
  }
}

void sub_2769D7600(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 40))
  {
    dispatch_suspend(*(v2 + 32));
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = sub_2769D771C;
    v10[3] = &unk_27A6E27F8;
    v10[4] = v3;
    objc_msgSend__provideNextDataBlockToLoadingRequest_completion_(v3, v5, v4, v10);
  }

  else
  {
    v6 = *(v2 + 8);
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = sub_2769D7728;
    v8[3] = &unk_27A6E3B90;
    v8[4] = v2;
    v9 = *(a1 + 40);
    objc_msgSend_performIOChannelReadWithAccessor_(v6, v7, v8);
  }
}

void sub_2769D7728(uint64_t a1, void *a2)
{
  v5 = a2;
  if (v5)
  {
    objc_storeStrong((*(a1 + 32) + 40), a2);
    dispatch_suspend(*(*(a1 + 32) + 32));
    v6 = *(a1 + 32);
    v7 = *(a1 + 40);
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = sub_2769D7800;
    v9[3] = &unk_27A6E27F8;
    v9[4] = v6;
    objc_msgSend__provideNextDataBlockToLoadingRequest_completion_(v6, v8, v7, v9);
  }

  else
  {
    objc_msgSend_finishLoadingWithError_(*(a1 + 40), v4, 0);
  }
}

void sub_2769D7AF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, id a26)
{
  _Block_object_dispose(&a21, 8);

  _Unwind_Resume(a1);
}

uint64_t sub_2769D7B88(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2769D7BA0(uint64_t a1, int a2, void *a3, void *a4)
{
  data2 = a3;
  v9 = a4;
  if (*(*(*(a1 + 56) + 8) + 40))
  {
    if (objc_msgSend_isCancelled(*(a1 + 32), v7, v8))
    {
      v11 = *(a1 + 56) + 8;
LABEL_6:
      v17 = *(*v11 + 40);
      *(*v11 + 40) = 0;

LABEL_7:
      (*(*(a1 + 48) + 16))();
      goto LABEL_8;
    }

    if (v9)
    {
      v12 = *(*(a1 + 56) + 8);
      v13 = *(v12 + 40);
      *(v12 + 40) = 0;

      objc_msgSend_finishLoadingWithError_(*(a1 + 32), v14, v9);
      v11 = a1 + 40;
      objc_msgSend_close(*(*(a1 + 40) + 40), v15, v16);
      goto LABEL_6;
    }

    v18 = data2;
    if (data2)
    {
      concat = dispatch_data_create_concat(*(*(*(a1 + 56) + 8) + 40), data2);
      v20 = *(*(a1 + 56) + 8);
      v21 = *(v20 + 40);
      *(v20 + 40) = concat;
    }

    if (a2)
    {
      v22 = objc_msgSend_dataRequest(*(a1 + 32), v18, v10);
      objc_msgSend_respondWithData_(v22, v23, *(*(*(a1 + 56) + 8) + 40));

      v24 = *(*(a1 + 56) + 8);
      v25 = *(v24 + 40);
      *(v24 + 40) = 0;

      if (*(a1 + 64) <= *(a1 + 72))
      {
        objc_msgSend_finishLoading(*(a1 + 32), v26, v27);
        goto LABEL_7;
      }

      objc_msgSend__provideNextDataBlockToLoadingRequest_completion_(*(a1 + 40), v26, *(a1 + 32), *(a1 + 48));
    }
  }

LABEL_8:
}

void sub_2769D80E8()
{
  v0 = TSULogCreateCategory();
  v1 = UnsafePointer;
  UnsafePointer = v0;
}

void sub_2769D83A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

id sub_2769D845C(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = objc_msgSend_tsp_errorWithCode_userInfo_isRecoverable_(a1, a2, a3, a4, 0);

  return v4;
}

id sub_2769D848C(void *a1, uint64_t a2, uint64_t a3, void *a4, int a5)
{
  v34[1] = *MEMORY[0x277D85DE8];
  v8 = a4;
  v11 = v8;
  v12 = 0;
  if (a3 > 4)
  {
    if (a3 != 5 && a3 != 6)
    {
      if (a3 != 7)
      {
        goto LABEL_17;
      }

      v20 = sub_276AB6F50(v8, v9, v10);
      v22 = objc_msgSend_localizedStringForKey_value_table_(v20, v21, @"To open this document, download the latest version of the app from the App Store.", &stru_2885C9BB8, @"TSPersistence");
      goto LABEL_11;
    }

LABEL_10:
    v20 = sub_276AB6F50(v8, v9, v10);
    v22 = objc_msgSend_localizedStringForKey_value_table_(v20, v23, @"Encountered a critical error.", &stru_2885C9BB8, @"TSPersistence");
LABEL_11:
    v15 = v22;
    v12 = 0;
    goto LABEL_14;
  }

  if ((a3 - 2) >= 2)
  {
    if (a3 != 4)
    {
      goto LABEL_17;
    }

    goto LABEL_10;
  }

  v13 = sub_276AB6F50(v8, v9, v10);
  v15 = objc_msgSend_localizedStringForKey_value_table_(v13, v14, @"The document could not be autosaved.", &stru_2885C9BB8, @"TSPersistence");

  v20 = sub_276AB6F50(v16, v17, v18);
  if (a3 == 2)
  {
    objc_msgSend_localizedStringForKey_value_table_(v20, v19, @"Your most recent changes might be lost.", &stru_2885C9BB8, @"TSPersistence");
  }

  else
  {
    objc_msgSend_localizedStringForKey_value_table_(v20, v19, @"The disk is full. Free up some space, then return to your document. Your most recent changes might be lost.", &stru_2885C9BB8, @"TSPersistence");
  }
  v12 = ;
LABEL_14:

  if (!v15)
  {
LABEL_17:
    v26 = sub_276AB6F50(v8, v9, v10);
    v15 = objc_msgSend_localizedStringForKey_value_table_(v26, v27, @"An error occurred while reading the document.", &stru_2885C9BB8, @"TSPersistence");

    if (a5)
    {
      goto LABEL_16;
    }

    goto LABEL_18;
  }

  if (a5)
  {
LABEL_16:
    v33 = @"TSPErrorIsRecoverable";
    v34[0] = MEMORY[0x277CBEC38];
    v24 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v9, v34, &v33, 1);
    objc_msgSend_tsp_userInfoWithUserInfo_additionalUserInfo_(a1, v25, v11, v24);
    goto LABEL_19;
  }

LABEL_18:
  v24 = 0;
  objc_msgSend_tsp_userInfoWithUserInfo_additionalUserInfo_(a1, v9, v11, 0);
  v28 = LABEL_19:;
  v30 = objc_msgSend_tsu_errorWithDomain_code_alertTitle_alertMessage_userInfo_(a1, v29, @"com.apple.iWork.TSPersistence", a3, v15, v12, v28);

  if (a5)
  {
  }

  v31 = *MEMORY[0x277D85DE8];

  return v30;
}

id sub_2769D8858(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v5 = a3;
  v6 = a4;
  v7 = objc_alloc(MEMORY[0x277CBEB38]);
  v10 = objc_msgSend_count(v5, v8, v9);
  v13 = objc_msgSend_count(v6, v11, v12);
  v15 = objc_msgSend_initWithCapacity_(v7, v14, v10 + v13 + 1);
  v17 = v15;
  if (v5)
  {
    objc_msgSend_addEntriesFromDictionary_(v15, v16, v5);
  }

  if (v6)
  {
    objc_msgSend_addEntriesFromDictionary_(v17, v16, v6);
  }

  objc_msgSend_setObject_forKeyedSubscript_(v17, v16, MEMORY[0x277CBEC38], @"TSPErrorIsTSPError");

  return v17;
}

id sub_2769D893C(void *a1, uint64_t a2, void *a3)
{
  v24[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v7 = v4;
  if (v4)
  {
    v8 = objc_msgSend_domain(v4, v5, v6);
    v11 = objc_msgSend_code(v7, v9, v10);
    v14 = objc_msgSend_userInfo(v7, v12, v13);
    v23 = @"TSPErrorIsRecoverable";
    v24[0] = MEMORY[0x277CBEC38];
    v16 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v15, v24, &v23, 1);
    v18 = objc_msgSend_tsp_userInfoWithUserInfo_additionalUserInfo_(a1, v17, v14, v16);
    v20 = objc_msgSend_errorWithDomain_code_userInfo_(a1, v19, v8, v11, v18);
  }

  else
  {
    v20 = 0;
  }

  v21 = *MEMORY[0x277D85DE8];

  return v20;
}

id sub_2769D8AC4(void *a1, uint64_t a2, void *a3, void *a4)
{
  v46[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v10 = v7;
  if (!v6)
  {
    v28 = 0;
    goto LABEL_12;
  }

  v13 = objc_msgSend_count(v7, v8, v9);
  if (!v13)
  {
    v28 = v6;
    goto LABEL_12;
  }

  v14 = objc_msgSend_userInfo(v6, v11, v12);
  v16 = objc_msgSend_objectForKeyedSubscript_(v14, v15, @"TSPErrorHints");

  v20 = objc_msgSend_count(v16, v17, v18);
  if (!v20)
  {
    v26 = objc_msgSend_setWithArray_(MEMORY[0x277CBEB98], v19, v10);
LABEL_10:
    v31 = objc_msgSend_domain(v6, v29, v30);
    v34 = objc_msgSend_code(v6, v32, v33);
    v37 = objc_msgSend_userInfo(v6, v35, v36);
    v45 = @"TSPErrorHints";
    v46[0] = v26;
    v39 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v38, v46, &v45, 1);
    v41 = objc_msgSend_tsp_userInfoWithUserInfo_additionalUserInfo_(a1, v40, v37, v39);
    v28 = objc_msgSend_errorWithDomain_code_userInfo_(a1, v42, v31, v34, v41);

    goto LABEL_11;
  }

  v21 = objc_alloc(MEMORY[0x277CBEB58]);
  v23 = objc_msgSend_initWithCapacity_(v21, v22, v20 + v13);
  objc_msgSend_unionSet_(v23, v24, v16);
  objc_msgSend_addObjectsFromArray_(v23, v25, v10);
  v26 = v23;
  if (!objc_msgSend_isEqualToSet_(v26, v27, v16))
  {

    goto LABEL_10;
  }

  v28 = v6;

LABEL_11:
LABEL_12:

  v43 = *MEMORY[0x277D85DE8];

  return v28;
}

id sub_2769D8D6C(void *a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_tsp_userInfoWithUserInfo_additionalUserInfo_(a1, a2, a3, 0);
  v6 = objc_msgSend_tsu_fileReadUnknownErrorWithUserInfo_(a1, v5, v4);

  return v6;
}

id sub_2769D8DD8(void *a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_tsp_userInfoWithUserInfo_additionalUserInfo_(a1, a2, a3, 0);
  v6 = objc_msgSend_tsu_fileReadCorruptedFileErrorWithUserInfo_(a1, v5, v4);

  return v6;
}

id sub_2769D8E44(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v6 = objc_msgSend_tsp_userInfoWithUserInfo_additionalUserInfo_(a1, a2, a4, 0);
  v8 = objc_msgSend_tsu_fileReadPOSIXErrorWithNumber_userInfo_(a1, v7, a3, v6);

  return v8;
}

id sub_2769D8EC4(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = objc_alloc(MEMORY[0x277CBEB38]);
  v8 = objc_msgSend_count(v4, v6, v7);
  v10 = objc_msgSend_initWithCapacity_(v5, v9, v8 + 1);
  v12 = v10;
  if (v4)
  {
    objc_msgSend_addEntriesFromDictionary_(v10, v11, v4);
  }

  objc_msgSend_setObject_forKeyedSubscript_(v12, v11, MEMORY[0x277CBEC38], @"TSPIsUnsupportedVersionError");
  v14 = objc_msgSend_tsp_unknownReadErrorWithUserInfo_(a1, v13, v12);

  return v14;
}

id sub_2769D8F90(void *a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_tsp_userInfoWithUserInfo_additionalUserInfo_(a1, a2, a3, 0);
  v6 = objc_msgSend_tsu_fileWriteUnknownErrorWithUserInfo_(a1, v5, v4);

  return v6;
}

id sub_2769D8FFC(void *a1, const char *a2, uint64_t a3)
{
  v3 = objc_msgSend_tsp_errorWithCode_userInfo_(a1, a2, 2, a3);

  return v3;
}

id sub_2769D9030(void *a1, const char *a2, uint64_t a3)
{
  v3 = objc_msgSend_tsp_errorWithCode_userInfo_(a1, a2, 3, a3);

  return v3;
}

id sub_2769D9064(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = objc_alloc(MEMORY[0x277CBEB38]);
  v8 = objc_msgSend_count(v4, v6, v7);
  v10 = objc_msgSend_initWithCapacity_(v5, v9, v8 + 1);
  v12 = v10;
  if (v4)
  {
    objc_msgSend_addEntriesFromDictionary_(v10, v11, v4);
  }

  objc_msgSend_setObject_forKeyedSubscript_(v12, v11, MEMORY[0x277CBEC38], @"TSPIsCorruptZipOfPackageError");
  v14 = objc_msgSend_tsp_readCorruptedDocumentErrorWithUserInfo_(a1, v13, v12);

  return v14;
}

id sub_2769D9130(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v6 = objc_msgSend_tsp_userInfoWithUserInfo_additionalUserInfo_(a1, a2, a4, 0);
  v8 = objc_msgSend_tsu_fileWritePOSIXErrorWithNumber_userInfo_(a1, v7, a3, v6);

  return v8;
}

id sub_2769D91B0(void *a1, uint64_t a2, void *a3)
{
  v36[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v7 = v4;
  if (!v4)
  {
    v21 = objc_msgSend_tsp_unknownReadErrorWithUserInfo_(a1, v5, 0);
LABEL_13:
    v25 = v21;
    goto LABEL_17;
  }

  if (objc_msgSend_code(v4, v5, v6) != 2 && objc_msgSend_code(v7, v8, v9) != 3)
  {
    v10 = objc_msgSend_domain(v7, v8, v9);
    isEqualToString = objc_msgSend_isEqualToString_(v10, v11, @"com.apple.iWork.TSPersistence");

    if (isEqualToString)
    {
      goto LABEL_12;
    }
  }

  if (objc_msgSend_tsu_isCancelError(v7, v8, v9))
  {
    if (objc_msgSend_code(v7, v13, v14) != 3072)
    {
      v18 = *MEMORY[0x277CCA050];
LABEL_15:
      v26 = MEMORY[0x277CCA9B8];
      v35 = *MEMORY[0x277CCA7E8];
      v36[0] = v7;
      v27 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v15, v36, &v35, 1);
      v25 = objc_msgSend_errorWithDomain_code_userInfo_(v26, v28, v18, 3072, v27);

      goto LABEL_17;
    }

    v17 = objc_msgSend_domain(v7, v15, v16);
    v18 = *MEMORY[0x277CCA050];
    v20 = objc_msgSend_isEqualToString_(v17, v19, *MEMORY[0x277CCA050]);

    if ((v20 & 1) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_12;
  }

  if (objc_msgSend_tsp_isReadError(v7, v13, v14) & 1) != 0 || (objc_msgSend_tsp_isCorruptedError(v7, v22, v23))
  {
LABEL_12:
    v21 = v7;
    goto LABEL_13;
  }

  v33 = *MEMORY[0x277CCA7E8];
  v34 = v7;
  v29 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v24, &v34, &v33, 1);
  v25 = objc_msgSend_tsp_unknownReadErrorWithUserInfo_(a1, v30, v29);

LABEL_17:
  v31 = *MEMORY[0x277D85DE8];

  return v25;
}

id sub_2769D93F0(void *a1, uint64_t a2, void *a3)
{
  v16[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v7 = v4;
  if (!v4)
  {
    v9 = objc_msgSend_tsp_readCorruptedDocumentErrorWithUserInfo_(a1, v5, 0);
    goto LABEL_5;
  }

  if (objc_msgSend_tsp_isCorruptedError(v4, v5, v6))
  {
    v9 = v7;
LABEL_5:
    v10 = v9;
    goto LABEL_7;
  }

  v15 = *MEMORY[0x277CCA7E8];
  v16[0] = v7;
  v11 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v8, v16, &v15, 1);
  v10 = objc_msgSend_tsp_readCorruptedDocumentErrorWithUserInfo_(a1, v12, v11);

LABEL_7:
  v13 = *MEMORY[0x277D85DE8];

  return v10;
}

id sub_2769D9508(void *a1, uint64_t a2, void *a3)
{
  v26[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v7 = objc_msgSend_domain(v4, v5, v6);
  isEqualToString = objc_msgSend_isEqualToString_(v7, v8, @"com.apple.iWork.TSPersistence");

  if (!v4)
  {
    v18 = objc_msgSend_tsp_saveDocumentErrorWithUserInfo_(a1, v10, 0);
    goto LABEL_9;
  }

  if ((isEqualToString & 1) == 0 && objc_msgSend_tsu_isOutOfSpaceError(v4, v10, v11))
  {
    v25 = *MEMORY[0x277CCA7E8];
    v26[0] = v4;
    v12 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v10, v26, &v25, 1);
    v14 = objc_msgSend_tsp_storageSpaceErrorWithUserInfo_(a1, v13, v12);

    goto LABEL_10;
  }

  if (((objc_msgSend_code(v4, v10, v11) == 3) & isEqualToString) == 1 || ((objc_msgSend_code(v4, v15, v16) == 2) & isEqualToString) != 0)
  {
    v18 = v4;
LABEL_9:
    v14 = v18;
    goto LABEL_10;
  }

  v23 = *MEMORY[0x277CCA7E8];
  v24 = v4;
  v21 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v17, &v24, &v23, 1);
  v14 = objc_msgSend_tsp_saveDocumentErrorWithUserInfo_(a1, v22, v21);

LABEL_10:
  v19 = *MEMORY[0x277D85DE8];

  return v14;
}

uint64_t sub_2769D96E8(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v5 = a2;
  v7 = objc_msgSend_objectForKeyedSubscript_(a4, v6, @"TSPErrorIsTSPError");
  if (objc_msgSend_BOOLValue(v7, v8, v9))
  {
    isEqualToString = 1;
  }

  else
  {
    isEqualToString = objc_msgSend_isEqualToString_(v5, v10, @"com.apple.iWork.TSPersistence");
  }

  return isEqualToString;
}

uint64_t sub_2769D9794(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a2;
  v8 = a4;
  if (a3 - 11) <= 1 && (objc_msgSend_isEqualToString_(v6, v7, @"com.apple.iWork.TSPersistence"))
  {
    v9 = 1;
  }

  else
  {
    v10 = objc_msgSend_objectForKeyedSubscript_(v8, v7, @"TSPErrorIsRecoverable");
    v9 = objc_msgSend_BOOLValue(v10, v11, v12);
  }

  return v9;
}

id sub_2769D9848(void *a1, const char *a2)
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = sub_2769D99CC;
  v17 = sub_2769D99DC;
  v18 = 0;
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = sub_2769D99CC;
  v11 = sub_2769D99DC;
  v12 = 0;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_2769D99E4;
  v6[3] = &unk_27A6E3C08;
  v6[4] = &v13;
  v6[5] = &v7;
  objc_msgSend_tsu_enumerateErrorUsingBlock_(a1, a2, v6);
  v2 = v8[5];
  if (v2 || (v2 = v14[5]) != 0)
  {
    v3 = v2;
  }

  else
  {
    v3 = objc_opt_new();
  }

  v4 = v3;
  _Block_object_dispose(&v7, 8);

  _Block_object_dispose(&v13, 8);

  return v4;
}

void sub_2769D9998(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Block_object_dispose((v20 - 64), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_2769D99CC(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2769D99E4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v23 = a4;
  v6 = objc_msgSend_objectForKeyedSubscript_(v23, v5, @"TSPErrorHints");
  v10 = objc_msgSend_count(v6, v7, v8);
  if (v10)
  {
    v11 = *(*(a1 + 32) + 8);
    v13 = *(v11 + 40);
    v12 = (v11 + 40);
    if (v13)
    {
      v14 = *(*(*(a1 + 40) + 8) + 40);
      if (!v14)
      {
        v15 = objc_alloc(MEMORY[0x277CBEB58]);
        v18 = objc_msgSend_count(*(*(*(a1 + 32) + 8) + 40), v16, v17);
        v20 = objc_msgSend_initWithCapacity_(v15, v19, v18 + v10);
        v21 = *(*(a1 + 40) + 8);
        v22 = *(v21 + 40);
        *(v21 + 40) = v20;

        v14 = *(*(*(a1 + 40) + 8) + 40);
      }

      objc_msgSend_unionSet_(v14, v9, v6);
    }

    else
    {
      objc_storeStrong(v12, v6);
    }
  }
}

id sub_2769D9AF4(void *a1)
{
  v22 = *MEMORY[0x277D85DE8];
  v2 = objc_opt_new();
  objc_msgSend_appendString_(v2, v3, @"[");
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = objc_msgSend_tsp_hints(a1, v4, v5, 0);
  v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v7, &v17, v21, 16);
  if (v9)
  {
    v10 = *v18;
    v11 = 1;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v18 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v13 = *(*(&v17 + 1) + 8 * i);
        if ((v11 & 1) == 0)
        {
          objc_msgSend_appendString_(v2, v8, @", ");
        }

        objc_msgSend_appendString_(v2, v8, v13);
        v11 = 0;
      }

      v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v8, &v17, v21, 16);
      v11 = 0;
    }

    while (v9);
  }

  objc_msgSend_appendString_(v2, v14, @"]");
  v15 = *MEMORY[0x277D85DE8];

  return v2;
}

uint64_t sub_2769D9CA4(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = a2;
  v6 = v4;
  if (a3 == 7)
  {
    isEqualToString = objc_msgSend_isEqualToString_(v4, v5, @"com.apple.iWork.TSPersistence");
  }

  else
  {
    isEqualToString = 0;
  }

  return isEqualToString;
}

uint64_t sub_2769D9D14(uint64_t a1, const char *a2, uint64_t a3, void *a4)
{
  v4 = objc_msgSend_objectForKeyedSubscript_(a4, a2, @"TSPIsUnsupportedVersionError");
  v7 = objc_msgSend_BOOLValue(v4, v5, v6);

  return v7;
}

uint64_t sub_2769D9D74(uint64_t a1, const char *a2, uint64_t a3, void *a4)
{
  v4 = objc_msgSend_objectForKeyedSubscript_(a4, a2, @"TSPIsCorruptZipOfPackageError");
  v7 = objc_msgSend_BOOLValue(v4, v5, v6);

  return v7;
}

uint64_t sub_2769D9DD4(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = a2;
  v6 = v4;
  if ((a3 - 9) > 1)
  {
    isEqualToString = 0;
  }

  else
  {
    isEqualToString = objc_msgSend_isEqualToString_(v4, v5, @"com.apple.iWork.TSPersistence");
  }

  return isEqualToString;
}

uint64_t sub_2769D9E48(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v4 = a4;
  objc_opt_class();
  v6 = objc_msgSend_objectForKeyedSubscript_(v4, v5, @"TSPIsDataCorruptionError");
  v7 = TSUCheckedDynamicCast();
  v10 = objc_msgSend_BOOLValue(v7, v8, v9);

  return v10;
}

void sub_2769D9EC8(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

id sub_2769D9EF4(void *a1, const char *a2)
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = sub_2769D99CC;
  v9 = sub_2769D99DC;
  v10 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = sub_2769D9FFC;
  v4[3] = &unk_27A6E3C30;
  v4[4] = &v5;
  objc_msgSend_tsu_enumerateErrorUsingBlock_(a1, a2, v4);
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

void sub_2769D9FDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

void sub_2769D9FFC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, BOOL *a5)
{
  v12 = a4;
  objc_opt_class();
  v8 = objc_msgSend_objectForKeyedSubscript_(v12, v7, @"TSPDataValidationReason");
  v9 = TSUCheckedDynamicCast();
  v10 = *(*(a1 + 32) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v9;

  *a5 = *(*(*(a1 + 32) + 8) + 40) != 0;
}

uint64_t sub_2769DA0E0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v4 = a4;
  objc_opt_class();
  v6 = objc_msgSend_objectForKeyedSubscript_(v4, v5, @"TSPIsDataDigestMismatchError");
  v7 = TSUCheckedDynamicCast();
  v10 = objc_msgSend_BOOLValue(v7, v8, v9);

  return v10;
}

void sub_2769DA160(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

uint64_t sub_2769DA18C(void *a1, const char *a2)
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = sub_2769D99CC;
  v11 = sub_2769D99DC;
  v12 = 0;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_2769DA284;
  v6[3] = &unk_27A6E3C30;
  v6[4] = &v7;
  objc_msgSend_tsu_enumerateErrorUsingBlock_(a1, a2, v6);
  v4 = objc_msgSend_longLongValue(v8[5], v2, v3);
  _Block_object_dispose(&v7, 8);

  return v4;
}

void sub_2769DA264(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

void sub_2769DA284(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, BOOL *a5)
{
  v12 = a4;
  objc_opt_class();
  v8 = objc_msgSend_objectForKeyedSubscript_(v12, v7, @"TSPDataIdentifier");
  v9 = TSUCheckedDynamicCast();
  v10 = *(*(a1 + 32) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v9;

  *a5 = *(*(*(a1 + 32) + 8) + 40) != 0;
}

id sub_2769DA35C(void *a1, const char *a2)
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = sub_2769D99CC;
  v9 = sub_2769D99DC;
  v10 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = sub_2769DA464;
  v4[3] = &unk_27A6E3C30;
  v4[4] = &v5;
  objc_msgSend_tsu_enumerateErrorUsingBlock_(a1, a2, v4);
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

void sub_2769DA444(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

void sub_2769DA464(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, BOOL *a5)
{
  v12 = a4;
  objc_opt_class();
  v8 = objc_msgSend_objectForKeyedSubscript_(v12, v7, @"TSPExpectedDataDigest");
  v9 = TSUCheckedDynamicCast();
  v10 = *(*(a1 + 32) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v9;

  *a5 = *(*(*(a1 + 32) + 8) + 40) != 0;
}

id sub_2769DA53C(void *a1, const char *a2)
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = sub_2769D99CC;
  v9 = sub_2769D99DC;
  v10 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = sub_2769DA644;
  v4[3] = &unk_27A6E3C30;
  v4[4] = &v5;
  objc_msgSend_tsu_enumerateErrorUsingBlock_(a1, a2, v4);
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

void sub_2769DA624(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

void sub_2769DA644(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, BOOL *a5)
{
  v12 = a4;
  objc_opt_class();
  v8 = objc_msgSend_objectForKeyedSubscript_(v12, v7, @"TSPActualDataDigest");
  v9 = TSUCheckedDynamicCast();
  v10 = *(*(a1 + 32) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v9;

  *a5 = *(*(*(a1 + 32) + 8) + 40) != 0;
}

uint64_t sub_2769DA728(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v4 = a4;
  objc_opt_class();
  v6 = objc_msgSend_objectForKeyedSubscript_(v4, v5, @"TSPExpectedDataDigestMatch");
  v7 = TSUCheckedDynamicCast();
  v10 = objc_msgSend_BOOLValue(v7, v8, v9);

  return v10;
}

void sub_2769DA7A8(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

uint64_t sub_2769DA7E0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v4 = a4;
  objc_opt_class();
  v6 = objc_msgSend_objectForKeyedSubscript_(v4, v5, @"TSPIsLikelyOSCorruption");
  v7 = TSUCheckedDynamicCast();
  v10 = objc_msgSend_BOOLValue(v7, v8, v9);

  return v10;
}

void sub_2769DA860(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

uint64_t sub_2769DA898(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v4 = a4;
  objc_opt_class();
  v6 = objc_msgSend_objectForKeyedSubscript_(v4, v5, @"TSPIsLikelyZeroBytesCorruption");
  v7 = TSUCheckedDynamicCast();
  v10 = objc_msgSend_BOOLValue(v7, v8, v9);

  return v10;
}

void sub_2769DA918(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

id sub_2769DA944(void *a1, const char *a2)
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = sub_2769D99CC;
  v9 = sub_2769D99DC;
  v10 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = sub_2769DAA4C;
  v4[3] = &unk_27A6E3C30;
  v4[4] = &v5;
  objc_msgSend_tsu_enumerateErrorUsingBlock_(a1, a2, v4);
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

void sub_2769DAA2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

void sub_2769DAA4C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, BOOL *a5)
{
  v12 = a4;
  objc_opt_class();
  v8 = objc_msgSend_objectForKeyedSubscript_(v12, v7, @"TSPDataCreationTime");
  v9 = TSUCheckedDynamicCast();
  v10 = *(*(a1 + 32) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v9;

  *a5 = *(*(*(a1 + 32) + 8) + 40) != 0;
}

id sub_2769DAB24(void *a1, const char *a2)
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = sub_2769D99CC;
  v9 = sub_2769D99DC;
  v10 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = sub_2769DAC2C;
  v4[3] = &unk_27A6E3C30;
  v4[4] = &v5;
  objc_msgSend_tsu_enumerateErrorUsingBlock_(a1, a2, v4);
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

void sub_2769DAC0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

void sub_2769DAC2C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, BOOL *a5)
{
  v12 = a4;
  objc_opt_class();
  v8 = objc_msgSend_objectForKeyedSubscript_(v12, v7, @"TSPDataCreationVersion");
  v9 = TSUCheckedDynamicCast();
  v10 = *(*(a1 + 32) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v9;

  *a5 = *(*(*(a1 + 32) + 8) + 40) != 0;
}

uint64_t sub_2769DAD04(void *a1, const char *a2)
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = sub_2769D99CC;
  v11 = sub_2769D99DC;
  v12 = 0;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_2769DADFC;
  v6[3] = &unk_27A6E3C30;
  v6[4] = &v7;
  objc_msgSend_tsu_enumerateErrorUsingBlock_(a1, a2, v6);
  v4 = objc_msgSend_unsignedLongLongValue(v8[5], v2, v3);
  _Block_object_dispose(&v7, 8);

  return v4;
}

void sub_2769DADDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

void sub_2769DADFC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, BOOL *a5)
{
  v12 = a4;
  objc_opt_class();
  v8 = objc_msgSend_objectForKeyedSubscript_(v12, v7, @"TSPDataLength");
  v9 = TSUCheckedDynamicCast();
  v10 = *(*(a1 + 32) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v9;

  *a5 = *(*(*(a1 + 32) + 8) + 40) != 0;
}

id sub_2769DAED4(void *a1, const char *a2)
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = sub_2769D99CC;
  v9 = sub_2769D99DC;
  v10 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = sub_2769DAFDC;
  v4[3] = &unk_27A6E3C30;
  v4[4] = &v5;
  objc_msgSend_tsu_enumerateErrorUsingBlock_(a1, a2, v4);
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

void sub_2769DAFBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

void sub_2769DAFDC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, BOOL *a5)
{
  v12 = a4;
  objc_opt_class();
  v8 = objc_msgSend_objectForKeyedSubscript_(v12, v7, @"TSPDataType");
  v9 = TSUCheckedDynamicCast();
  v10 = *(*(a1 + 32) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v9;

  *a5 = *(*(*(a1 + 32) + 8) + 40) != 0;
}

id sub_2769DB0B4(void *a1, uint64_t a2, void *a3, void *a4, void *a5, uint64_t a6, void *a7, uint64_t a8, unsigned __int8 a9)
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a7;
  v18 = objc_alloc(MEMORY[0x277CBEB38]);
  v20 = objc_msgSend_initWithCapacity_(v18, v19, 14);
  objc_msgSend_setObject_forKeyedSubscript_(v20, v21, MEMORY[0x277CBEC38], @"TSPIsDataCorruptionError");
  v23 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v22, *a6 == 1);
  objc_msgSend_setObject_forKeyedSubscript_(v20, v24, v23, @"TSPExpectedDataDigestMatch");

  v26 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v25, a8);
  objc_msgSend_setObject_forKeyedSubscript_(v20, v27, v26, @"TSPIsLikelyOSCorruption");

  v29 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v28, a9);
  objc_msgSend_setObject_forKeyedSubscript_(v20, v30, v29, @"TSPIsLikelyZeroBytesCorruption");

  if (v15)
  {
    objc_msgSend_setObject_forKeyedSubscript_(v20, v31, v15, @"TSPDataValidationReason");
  }

  v33 = MEMORY[0x277CCABB0];
  v34 = objc_msgSend_identifier(v16, v31, v32);
  v36 = objc_msgSend_numberWithLongLong_(v33, v35, v34);
  objc_msgSend_setObject_forKeyedSubscript_(v20, v37, v36, @"TSPDataIdentifier");

  v40 = objc_msgSend_digest(v16, v38, v39);
  v43 = v40;
  if (v40)
  {
    v44 = objc_msgSend_digestString(v40, v41, v42);
    objc_msgSend_setObject_forKeyedSubscript_(v20, v45, v44, @"TSPExpectedDataDigest");
  }

  if (v17)
  {
    v46 = objc_msgSend_digestString(v17, v41, v42);
    objc_msgSend_setObject_forKeyedSubscript_(v20, v47, v46, @"TSPActualDataDigest");

    v49 = MEMORY[0x277CCABB0];
    if (v43)
    {
      v50 = objc_msgSend_isEqual_(v43, v48, v17) ^ 1;
      objc_msgSend_numberWithBool_(v49, v51, v50);
    }

    else
    {
      objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v48, 0);
    }
    v52 = ;
    objc_msgSend_setObject_forKeyedSubscript_(v20, v53, v52, @"TSPIsDataDigestMismatchError");
  }

  v56 = *(a6 + 8);
  if (v56)
  {
    objc_msgSend_setObject_forKeyedSubscript_(v20, v54, v56, @"TSPDataCreationTime");
  }

  v57 = *(a6 + 16);
  if (v57)
  {
    v58 = NSStringFromTSPVersion(v57, v54);
    objc_msgSend_setObject_forKeyedSubscript_(v20, v59, v58, @"TSPDataCreationVersion");
  }

  v60 = MEMORY[0x277CCABB0];
  v61 = objc_msgSend_length(v16, v54, v55);
  v63 = objc_msgSend_numberWithUnsignedLongLong_(v60, v62, v61);
  objc_msgSend_setObject_forKeyedSubscript_(v20, v64, v63, @"TSPDataLength");

  v68 = objc_msgSend_type(v16, v65, v66);
  if (v68)
  {
    objc_msgSend_setObject_forKeyedSubscript_(v20, v67, v68, @"TSPDataType");
  }

  if (v14)
  {
    objc_msgSend_setObject_forKeyedSubscript_(v20, v67, v14, *MEMORY[0x277CCA7E8]);
  }

  v69 = objc_msgSend_tsp_readCorruptedDocumentErrorWithUserInfo_(a1, v67, v20);

  return v69;
}

void sub_2769DB414(_Unwind_Exception *a1)
{
  sub_276998F44(v3);

  _Unwind_Resume(a1);
}

void sub_2769DB5D4(_Unwind_Exception *a1)
{
  v4 = sub_2769ABBE4(v2);
  MEMORY[0x277C9F670](v4, 0x10A0C408EF24B1CLL);

  _Unwind_Resume(a1);
}

void sub_2769DB858(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_2769ABE20(va);
  _Unwind_Resume(a1);
}

void sub_2769DBE18(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  if (!a10)
  {
  }

  _Unwind_Resume(a1);
}

void sub_2769DC2A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  _Block_object_dispose(&a17, 8);
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose((v32 - 112), 8);

  _Unwind_Resume(a1);
}

void sub_2769DC320(uint64_t a1, const char *a2)
{
  v3 = *(a1 + 32);
  v5 = objc_msgSend_objectAtIndexedSubscript_(v3[10], a2, a2);
  *(*(*(a1 + 40) + 8) + 24) += objc_msgSend_estimatedByteSizeOfElement_(v3, v4, v5);
}

__n128 sub_2769DC3B0(__n128 *a1, __n128 *a2)
{
  result = a2[3];
  a1[3] = result;
  return result;
}

void sub_2769DC3C0(void *a1, const char *a2, uint64_t a3)
{
  if (*(*(a1[5] + 8) + 24) == 1)
  {
    *(*(a1[6] + 8) + 24) = a2;
    *(*(a1[5] + 8) + 24) = 0;
  }

  else
  {
    for (i = *(*(a1[7] + 8) + 56) + *(*(a1[7] + 8) + 48); i < a2; ++i)
    {
      v7 = objc_msgSend_objectAtIndexedSubscript_(*(a1[4] + 80), a2, i);
      v8 = *(a1[4] + 80);
      ++*(*(a1[6] + 8) + 24);
      objc_msgSend_setObject_atIndexedSubscript_(v8, v9, v7);
    }
  }

  v10 = *(a1[7] + 8);
  *(v10 + 48) = a2;
  *(v10 + 56) = a3;
}

void sub_2769DC5A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  if (!a10)
  {
  }

  _Unwind_Resume(a1);
}

void sub_2769DCAD0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  if (!a10)
  {
  }

  _Unwind_Resume(a1);
}

void sub_2769DD4F8(uint64_t a1, char *__s)
{
  *(a1 + 16) |= 1u;
  v4 = strlen(__s);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_2769DD7D8();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  v8 = v4;
  if (v4)
  {
    memcpy(&__dst, __s, v4);
  }

  __dst.n128_u8[v5] = 0;
  v6 = *(a1 + 8);
  if (v6)
  {
    v6 = *(v6 & 0xFFFFFFFFFFFFFFFELL);
  }

  google::protobuf::internal::ArenaStringPtr::Set((a1 + 24), &__dst, v6);
  if (v8 < 0)
  {
    operator delete(__dst.n128_u64[0]);
  }
}

void sub_2769DD5F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2769DD85C(void *a1, char a2, uint64_t a3, uint64_t a4)
{
  v20 = *MEMORY[0x277D85DE8];
  v7 = a1;
  v17 = a2;
  v16 = a3;
  v15 = a4;
  if (v7)
  {
    CC_SHA1_Init(&c);
    data = 0uLL;
    objc_msgSend_getUUIDBytes_(v7, v8, &data);
    CC_SHA1_Update(&c, &data, 0x10u);
    CC_SHA1_Update(&c, &v17, 1u);
    CC_SHA1_Update(&c, &v16, 8u);
    CC_SHA1_Update(&c, &v15, 8u);
    CC_SHA1_Final(md, &c);
    data = *md;
    BYTE6(data) = md[6] & 0xF | 0x50;
    BYTE8(data) = md[8] & 0x3F | 0x80;
    v9 = objc_alloc(MEMORY[0x277CCAD78]);
    v11 = objc_msgSend_initWithUUIDBytes_(v9, v10, &data);
  }

  else
  {
    v11 = 0;
  }

  v12 = *MEMORY[0x277D85DE8];
  return v11;
}

id sub_2769DD9AC(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 24);
  v6 = objc_alloc(MEMORY[0x277CBEB18]);
  v9 = objc_msgSend_initWithCapacity_(v6, v7, v5);
  if (v5 >= 1)
  {
    v10 = 8;
    do
    {
      v11 = objc_alloc(MEMORY[0x277CCAD78]);
      v14 = objc_msgSend_tsp_initWithMessage_(v11, v12, *(*(a3 + 32) + v10));
      if (!v14)
      {
        objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "[TSUUUIDPath(TSPArchivingInternal) initWithMessage:]");
        objc_claimAutoreleasedReturnValue();
        objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPArchivingInternal.mm");
        objc_claimAutoreleasedReturnValue();
        google::protobuf::Message::DebugString(&__p);
      }

      objc_msgSend_addObject_(v9, v13, v14);

      v10 += 8;
      --v5;
    }

    while (v5);
  }

  v15 = objc_msgSend_initWithArray_(a1, v8, v9);

  return v15;
}

void sub_2769DDB28(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_2769DDB90(void *a1, uint64_t a2, uint64_t a3)
{
  v24 = *MEMORY[0x277D85DE8];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v4 = a1;
  v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v5, &v19, v23, 16);
  if (v7)
  {
    v8 = *v20;
    do
    {
      v9 = 0;
      do
      {
        if (*v20 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v19 + 1) + 8 * v9);
        v11 = *(a3 + 32);
        if (!v11)
        {
          v13 = *(a3 + 28);
LABEL_11:
          google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a3 + 16), v13 + 1);
          v11 = *(a3 + 32);
          v13 = *v11;
          goto LABEL_12;
        }

        v12 = *(a3 + 24);
        v13 = *v11;
        if (v12 < *v11)
        {
          *(a3 + 24) = v12 + 1;
          objc_msgSend_tsp_saveToMessage_(v10, v6, *&v11[2 * v12 + 2], v19);
          goto LABEL_13;
        }

        if (v13 == *(a3 + 28))
        {
          goto LABEL_11;
        }

LABEL_12:
        *v11 = v13 + 1;
        v14 = google::protobuf::Arena::CreateMaybeMessage<TSP::UUID>(*(a3 + 16));
        v15 = *(a3 + 24);
        v16 = *(a3 + 32) + 8 * v15;
        *(a3 + 24) = v15 + 1;
        *(v16 + 8) = v14;
        objc_msgSend_tsp_saveToMessage_(v10, v17, v14, v19);
LABEL_13:
        ++v9;
      }

      while (v7 != v9);
      v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v6, &v19, v23, 16);
    }

    while (v7);
  }

  v18 = *MEMORY[0x277D85DE8];
}

void sub_2769DDD28(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 0x2DFD70, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPArchiveMessages.pb.cc", a4);
  sub_2769DEAA8(&unk_2812FC7A8, 0);

  google::protobuf::internal::OnShutdownRun(google::protobuf::internal::DestroyMessage, &unk_2812FC7A8, v4);
}

void sub_2769DDD98(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 0x2DFD70, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPArchiveMessages.pb.cc", a4);
  sub_2769E5E14(qword_2812FCAF8, 0);

  google::protobuf::internal::OnShutdownRun(google::protobuf::internal::DestroyMessage, qword_2812FCAF8, v4);
}

void sub_2769DDE08(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 0x2DFD70, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPArchiveMessages.pb.cc", a4);
  qword_2812FCAD8 = 0;
  unk_2812FCAE0 = 0;
  qword_2812FCAD0 = &unk_2885C00E0;
  qword_2812FCAE8 = 0;
  dword_2812FCAF0 = 0;

  google::protobuf::internal::OnShutdownRun(google::protobuf::internal::DestroyMessage, &qword_2812FCAD0, v4);
}

void sub_2769DDE88(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 0x2DFD70, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPArchiveMessages.pb.cc", a4);
  qword_2812FCAA8 = 0;
  unk_2812FCAB0 = 0;
  qword_2812FCAA0 = &unk_2885C0030;
  qword_2812FCAB8 = 0;
  unk_2812FCAC0 = 0;
  byte_2812FCAC8 = 0;

  google::protobuf::internal::OnShutdownRun(google::protobuf::internal::DestroyMessage, &qword_2812FCAA0, v4);
}

void sub_2769DDF08(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 0x2DFD70, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPArchiveMessages.pb.cc", a4);
  sub_2769E2754(&unk_2812FC968, 0);

  google::protobuf::internal::OnShutdownRun(google::protobuf::internal::DestroyMessage, &unk_2812FC968, v4);
}

void sub_2769DDF78(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 0x2DFD70, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPArchiveMessages.pb.cc", a4);
  sub_2769EA698(&unk_2812FCD20, 0);

  google::protobuf::internal::OnShutdownRun(google::protobuf::internal::DestroyMessage, &unk_2812FCD20, v4);
}

void sub_2769DDFE8(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 0x2DFD70, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPArchiveMessages.pb.cc", a4);
  *&v5 = 0;
  unk_2812FCE20 = v5;
  qword_2812FCE18[0] = &unk_2885C07C0;
  if (atomic_load_explicit(dword_2812FB908, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(dword_2812FB908);
  }

  qword_2812FCE30 = 0;

  google::protobuf::internal::OnShutdownRun(google::protobuf::internal::DestroyMessage, qword_2812FCE18, v4);
}

void sub_2769DE098(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 0x2DFD70, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPArchiveMessages.pb.cc", a4);
  sub_2769ED104(&unk_2812FCDE8, 0);

  google::protobuf::internal::OnShutdownRun(google::protobuf::internal::DestroyMessage, &unk_2812FCDE8, v4);
}

void sub_2769DE108(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 0x2DFD70, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPArchiveMessages.pb.cc", a4);
  *&v5 = 0;
  unk_2812FCDC8 = v5;
  qword_2812FCDC0[0] = &unk_2885C0660;
  if (atomic_load_explicit(dword_2812FB948, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(dword_2812FB948);
  }

  qword_2812FCDD8 = 0;
  unk_2812FCDE0 = 0;

  google::protobuf::internal::OnShutdownRun(google::protobuf::internal::DestroyMessage, qword_2812FCDC0, v4);
}

void sub_2769DE1B8(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 0x2DFD70, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPArchiveMessages.pb.cc", a4);
  sub_2769F2130(&unk_2812FD008, 0);

  google::protobuf::internal::OnShutdownRun(google::protobuf::internal::DestroyMessage, &unk_2812FD008, v4);
}

void sub_2769DE228(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 0x2DFD70, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPArchiveMessages.pb.cc", a4);
  sub_2769F2B20(&unk_2812FD058, 0);

  google::protobuf::internal::OnShutdownRun(google::protobuf::internal::DestroyMessage, &unk_2812FD058, v4);
}

void sub_2769DE298(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 0x2DFD70, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPArchiveMessages.pb.cc", a4);
  *&v5 = 0;
  *algn_2812FD090 = v5;
  qword_2812FD088 = &unk_2885C0DF0;
  if (atomic_load_explicit(dword_2812FB9A0, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(dword_2812FB9A0);
  }

  byte_2812FD0A8 = 0;
  qword_2812FD0A0 = 0;

  google::protobuf::internal::OnShutdownRun(google::protobuf::internal::DestroyMessage, &qword_2812FD088, v4);
}

void sub_2769DE34C(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 0x2DFD70, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPArchiveMessages.pb.cc", a4);
  sub_2769E9064(&unk_2812FCC78, 0);

  google::protobuf::internal::OnShutdownRun(google::protobuf::internal::DestroyMessage, &unk_2812FCC78, v4);
}

void sub_2769DE3BC(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 0x2DFD70, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPArchiveMessages.pb.cc", a4);
  qword_2812FCE80 = 0;
  unk_2812FCE88 = 0;
  qword_2812FCE78 = &unk_2885C0920;
  qword_2812FCE90 = 0;
  unk_2812FCE98 = 0;

  google::protobuf::internal::OnShutdownRun(google::protobuf::internal::DestroyMessage, &qword_2812FCE78, v4);
}

void sub_2769DE438(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 0x2DFD70, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPArchiveMessages.pb.cc", a4);
  sub_2769EDF24(qword_2812FCE38, 0);

  google::protobuf::internal::OnShutdownRun(google::protobuf::internal::DestroyMessage, qword_2812FCE38, v4);
}

void sub_2769DE4A8(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 0x2DFD70, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPArchiveMessages.pb.cc", a4);
  sub_2769E6E58(qword_2812FCB58, 0);

  google::protobuf::internal::OnShutdownRun(google::protobuf::internal::DestroyMessage, qword_2812FCB58, v4);
}

void sub_2769DE518(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 0x2DFD70, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPArchiveMessages.pb.cc", a4);
  sub_2769E0E3C(&unk_2812FC8C0, 0);

  google::protobuf::internal::OnShutdownRun(google::protobuf::internal::DestroyMessage, &unk_2812FC8C0, v4);
}

void sub_2769DE588(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 0x2DFD70, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPArchiveMessages.pb.cc", a4);
  qword_2812FC948 = 0;
  unk_2812FC950 = 0;
  qword_2812FC940 = &unk_2885BFED0;
  dword_2812FC964 = 0;
  qword_2812FC958 = 0;

  google::protobuf::internal::OnShutdownRun(google::protobuf::internal::DestroyMessage, &qword_2812FC940, v4);
}

void sub_2769DE608(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 0x2DFD70, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPArchiveMessages.pb.cc", a4);
  sub_2769DF6D4(&unk_2812FC7E8, 0);

  google::protobuf::internal::OnShutdownRun(google::protobuf::internal::DestroyMessage, &unk_2812FC7E8, v4);
}

void sub_2769DE678(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 0x2DFD70, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPArchiveMessages.pb.cc", a4);
  sub_2769F19F8(&unk_2812FCFD8, 0);

  google::protobuf::internal::OnShutdownRun(google::protobuf::internal::DestroyMessage, &unk_2812FCFD8, v4);
}

void sub_2769DE6E8(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 0x2DFD70, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPArchiveMessages.pb.cc", a4);
  sub_2769F1128(qword_2812FCFA8, 0);

  google::protobuf::internal::OnShutdownRun(google::protobuf::internal::DestroyMessage, qword_2812FCFA8, v4);
}

void sub_2769DE758(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 0x2DFD70, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPArchiveMessages.pb.cc", a4);
  sub_2769EFCA4(&unk_2812FCF10, 0);

  google::protobuf::internal::OnShutdownRun(google::protobuf::internal::DestroyMessage, &unk_2812FCF10, v4);
}

void sub_2769DE7C8(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 0x2DFD70, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPArchiveMessages.pb.cc", a4);
  *&v5 = 0;
  unk_2812FCB38 = v5;
  qword_2812FCB30[0] = &unk_2885C0240;
  if (atomic_load_explicit(dword_2812FBB00, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(dword_2812FBB00);
  }

  qword_2812FCB48 = 0;
  unk_2812FCB50 = 0;

  google::protobuf::internal::OnShutdownRun(google::protobuf::internal::DestroyMessage, qword_2812FCB30, v4);
}

void sub_2769DE878(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 0x2DFD70, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPArchiveMessages.pb.cc", a4);
  sub_2769E768C(&unk_2812FCBA8, 0);

  google::protobuf::internal::OnShutdownRun(google::protobuf::internal::DestroyMessage, &unk_2812FCBA8, v4);
}

void sub_2769DE8E8(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 0x2DFD70, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPArchiveMessages.pb.cc", a4);
  sub_2769E9778(qword_2812FCCA8, 0);

  google::protobuf::internal::OnShutdownRun(google::protobuf::internal::DestroyMessage, qword_2812FCCA8, v4);
}

void sub_2769DE958(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 0x2DFD70, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPArchiveMessages.pb.cc", a4);
  sub_2769F45D4(&unk_2812FD0E0, 0);

  google::protobuf::internal::OnShutdownRun(google::protobuf::internal::DestroyMessage, &unk_2812FD0E0, v4);
}

void sub_2769DE9C8(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 0x2DFD70, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPArchiveMessages.pb.cc", a4);
  sub_2769F39D8(qword_2812FD0B0, 0);

  google::protobuf::internal::OnShutdownRun(google::protobuf::internal::DestroyMessage, qword_2812FD0B0, v4);
}

void sub_2769DEA38(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 0x2DFD70, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPArchiveMessages.pb.cc", a4);
  sub_2769EEE8C(qword_2812FCEA0, 0);

  google::protobuf::internal::OnShutdownRun(google::protobuf::internal::DestroyMessage, qword_2812FCEA0, v4);
}

uint64_t sub_2769DEAA8(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_2885BFCC0;
  *(a1 + 8) = a2;
  *(a1 + 24) = a2;
  *(a1 + 16) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  if (atomic_load_explicit(dword_2812FB830, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(dword_2812FB830);
  }

  *(a1 + 56) = 0;
  *(a1 + 48) = 0;
  return a1;
}

uint64_t sub_2769DEB3C(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  *a1 = &unk_2885BFCC0;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 44) = 0;
  *(a1 + 28) = 0;
  *(a1 + 36) = 0;
  *(a1 + 20) = 0;
  v5 = *(a2 + 32);
  if (v5)
  {
    v6 = *(a2 + 40);
    v7 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((a1 + 24), *(a2 + 32));
    sub_2769F6474((a1 + 24), v7, (v6 + 8), v5, **(a1 + 40) - *(a1 + 32));
    v8 = *(a1 + 32) + v5;
    *(a1 + 32) = v8;
    v9 = *(a1 + 40);
    if (*v9 < v8)
    {
      *v9 = v8;
    }
  }

  v10 = *(a2 + 8);
  if (v10)
  {
    sub_2769F63D8(v4, ((v10 & 0xFFFFFFFFFFFFFFFELL) + 8));
  }

  v11 = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 48) = v11;
  return a1;
}

uint64_t sub_2769DEC50(uint64_t a1)
{
  sub_2769DEC8C((a1 + 8));
  sub_2769F6354((a1 + 24));
  return a1;
}

uint64_t *sub_2769DEC8C(uint64_t *result)
{
  v1 = *result;
  if (*result)
  {
    v2 = v1 & 0xFFFFFFFFFFFFFFFELL;
    if (!*(v1 & 0xFFFFFFFFFFFFFFFELL) && v2 != 0)
    {
      v4 = *(v2 + 8);
      if (v4 != *(v2 + 16))
      {
        google::protobuf::UnknownFieldSet::ClearFallback((v2 + 8));
        v4 = *(v2 + 8);
      }

      if (v4)
      {
        *(v2 + 16) = v4;
        operator delete(v4);
      }

      JUMPOUT(0x277C9F670);
    }
  }

  return result;
}

void sub_2769DED24(uint64_t a1)
{
  sub_2769DEC50(a1);

  JUMPOUT(0x277C9F670);
}

google::protobuf::UnknownFieldSet *sub_2769DED64(google::protobuf::UnknownFieldSet *result)
{
  v1 = result;
  v2 = *(result + 8);
  if (v2 >= 1)
  {
    v3 = (*(result + 5) + 8);
    do
    {
      v4 = *v3++;
      result = sub_2769DF988(v4);
      --v2;
    }

    while (v2);
    *(v1 + 8) = 0;
  }

  if ((*(v1 + 16) & 3) != 0)
  {
    *(v1 + 56) = 0;
    *(v1 + 6) = 0;
  }

  v6 = *(v1 + 8);
  v5 = v1 + 8;
  *(v5 + 2) = 0;
  if (v6)
  {

    return sub_2769F6424(v5);
  }

  return result;
}

google::protobuf::internal *sub_2769DEDF8(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v36 = a2;
  v6 = 0;
  if ((sub_2769F6104(a3, &v36, *(a3 + 92)) & 1) == 0)
  {
    while (1)
    {
      v8 = (v36 + 1);
      v9 = *v36;
      if ((*v36 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v10 = v9 + (*v8 << 7);
      v9 = v10 - 128;
      if ((*v8 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v36, (v10 - 128));
      v36 = TagFallback;
      if (!TagFallback)
      {
        goto LABEL_54;
      }

      v8 = TagFallback;
      v9 = v31;
LABEL_7:
      v11 = v9 >> 3;
      if (v9 >> 3 == 3)
      {
        if (v9 != 24)
        {
          goto LABEL_13;
        }

        v6 |= 2u;
        v25 = (v8 + 1);
        v24 = *v8;
        if ((v24 & 0x8000000000000000) == 0)
        {
          goto LABEL_39;
        }

        v26 = *v25;
        v24 = (v26 << 7) + v24 - 128;
        if ((v26 & 0x80000000) == 0)
        {
          v25 = (v8 + 2);
LABEL_39:
          v36 = v25;
          *(a1 + 56) = v24 != 0;
          goto LABEL_44;
        }

        v34 = google::protobuf::internal::VarintParseSlow64(v8, v24);
        v36 = v34;
        *(a1 + 56) = v35 != 0;
        if (!v34)
        {
          goto LABEL_54;
        }
      }

      else
      {
        if (v11 == 2)
        {
          if (v9 != 18)
          {
LABEL_13:
            if (v9)
            {
              v13 = (v9 & 7) == 4;
            }

            else
            {
              v13 = 1;
            }

            if (v13)
            {
              *(a3 + 80) = v9 - 1;
              goto LABEL_2;
            }

            v14 = *(a1 + 8);
            if (v14)
            {
              v15 = ((v14 & 0xFFFFFFFFFFFFFFFELL) + 8);
            }

            else
            {
              v15 = sub_2769F617C((a1 + 8));
              v8 = v36;
            }

            v36 = google::protobuf::internal::UnknownFieldParse(v9, v15, v8, a3, v5);
            if (!v36)
            {
LABEL_54:
              v36 = 0;
              goto LABEL_2;
            }

            goto LABEL_44;
          }

          v16 = (v8 - 1);
          while (2)
          {
            v17 = (v16 + 1);
            v36 = (v16 + 1);
            v18 = *(a1 + 40);
            if (!v18)
            {
              v19 = *(a1 + 36);
              goto LABEL_25;
            }

            v23 = *(a1 + 32);
            v19 = *v18;
            if (v23 >= *v18)
            {
              if (v19 == *(a1 + 36))
              {
LABEL_25:
                google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 24), v19 + 1);
                v18 = *(a1 + 40);
                v19 = *v18;
              }

              *v18 = v19 + 1;
              v20 = sub_2769F4ED0(*(a1 + 24));
              v21 = *(a1 + 32);
              v22 = *(a1 + 40) + 8 * v21;
              *(a1 + 32) = v21 + 1;
              *(v22 + 8) = v20;
              v17 = v36;
            }

            else
            {
              *(a1 + 32) = v23 + 1;
              v20 = *&v18[2 * v23 + 2];
            }

            v16 = sub_276BD1764(a3, v20, v17);
            v36 = v16;
            if (!v16)
            {
              goto LABEL_54;
            }

            if (*a3 <= v16 || *v16 != 18)
            {
              goto LABEL_44;
            }

            continue;
          }
        }

        if (v11 != 1 || v9 != 8)
        {
          goto LABEL_13;
        }

        v6 |= 1u;
        v28 = (v8 + 1);
        v27 = *v8;
        if ((v27 & 0x8000000000000000) == 0)
        {
          goto LABEL_43;
        }

        v29 = *v28;
        v27 = (v29 << 7) + v27 - 128;
        if ((v29 & 0x80000000) == 0)
        {
          v28 = (v8 + 2);
LABEL_43:
          v36 = v28;
          *(a1 + 48) = v27;
          goto LABEL_44;
        }

        v32 = google::protobuf::internal::VarintParseSlow64(v8, v27);
        v36 = v32;
        *(a1 + 48) = v33;
        if (!v32)
        {
          goto LABEL_54;
        }
      }

LABEL_44:
      if (sub_2769F6104(a3, &v36, *(a3 + 92)))
      {
        goto LABEL_2;
      }
    }

    v8 = (v36 + 2);
LABEL_6:
    v36 = v8;
    goto LABEL_7;
  }

LABEL_2:
  *(a1 + 16) |= v6;
  return v36;
}

unint64_t sub_2769DF0C0(google::protobuf::internal **a1)
{
  v2 = *a1;
  v3 = *a1;
  v6 = *v3;
  v4 = (v3 + 1);
  v5 = v6;
  if ((v6 & 0x8000000000000000) != 0)
  {
    v5 = (*v4 << 7) + v5 - 128;
    if (*v4 < 0)
    {
      v4 = google::protobuf::internal::VarintParseSlow64(v2, v5);
    }

    else
    {
      v4 = (v2 + 2);
    }
  }

  *a1 = v4;
  return v5;
}

const google::protobuf::UnknownFieldSet *sub_2769DF120(uint64_t a1, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3, google::protobuf::io::EpsCopyOutputStream *a4)
{
  v6 = *(a1 + 16);
  if (v6)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v7 = *(a1 + 48);
    *a2 = 8;
    if (v7 > 0x7F)
    {
      a2[1] = v7 | 0x80;
      v8 = v7 >> 7;
      if (v7 >> 14)
      {
        a2 += 3;
        do
        {
          *(a2 - 1) = v8 | 0x80;
          v9 = v8 >> 7;
          ++a2;
          v10 = v8 >> 14;
          v8 >>= 7;
        }

        while (v10);
        *(a2 - 1) = v9;
      }

      else
      {
        a2[2] = v8;
        a2 += 3;
      }
    }

    else
    {
      a2[1] = v7;
      a2 += 2;
    }
  }

  v11 = *(a1 + 32);
  if (v11)
  {
    for (i = 0; i != v11; ++i)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v13 = *(*(a1 + 40) + 8 * i + 8);
      *a2 = 18;
      v14 = *(v13 + 20);
      if (v14 > 0x7F)
      {
        a2[1] = v14 | 0x80;
        v16 = v14 >> 7;
        if (v14 >> 14)
        {
          v15 = (a2 + 3);
          do
          {
            *(v15 - 1) = v16 | 0x80;
            v17 = v16 >> 7;
            v15 = (v15 + 1);
            v18 = v16 >> 14;
            v16 >>= 7;
          }

          while (v18);
          *(v15 - 1) = v17;
        }

        else
        {
          a2[2] = v16;
          v15 = (a2 + 3);
        }
      }

      else
      {
        a2[1] = v14;
        v15 = (a2 + 2);
      }

      a2 = sub_2769E006C(v13, v15, a3);
    }
  }

  if ((v6 & 2) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v19 = *(a1 + 56);
    *a2 = 24;
    a2[1] = v19;
    a2 += 2;
  }

  v20 = *(a1 + 8);
  if ((v20 & 1) == 0)
  {
    return a2;
  }

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v20 & 0xFFFFFFFFFFFFFFFELL) + 8), a2, a3, a4);
}

uint64_t sub_2769DF300(uint64_t a1, uint64_t a2, uint64_t a3, CachedSize *a4)
{
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  if (v6)
  {
    v7 = (v6 + 8);
  }

  else
  {
    v7 = 0;
  }

  if (v5)
  {
    v8 = 8 * v5;
    do
    {
      v9 = *v7++;
      v10 = sub_2769E05DC(v9);
      v5 = (v5 + v10 + ((9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6));
      v8 -= 8;
    }

    while (v8);
  }

  else
  {
    v5 = 0;
  }

  v11 = *(a1 + 16);
  if ((v11 & 3) != 0)
  {
    if (v11)
    {
      v5 = (v5 + ((9 * (__clz(*(a1 + 48) | 1) ^ 0x3F) + 73) >> 6) + 1);
    }

    v5 = (v5 + (v11 & 2));
  }

  if (*(a1 + 8))
  {

    return google::protobuf::internal::ComputeUnknownFieldsSize((a1 + 8), v5, (a1 + 20), a4);
  }

  else
  {
    *(a1 + 20) = v5;
    return v5;
  }
}

void sub_2769DF3F0(google::protobuf::Arena **a1, char **lpsrc)
{
  v4 = **lpsrc;
  if (v5)
  {

    sub_2769DF498(a1, v5);
  }

  else
  {

    google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v6);
  }
}

google::protobuf::Arena **sub_2769DF498(google::protobuf::Arena **result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 8);
  if (v4)
  {
    result = sub_2769F63D8(result + 1, ((v4 & 0xFFFFFFFFFFFFFFFELL) + 8));
  }

  v5 = *(a2 + 32);
  if (v5)
  {
    v6 = *(a2 + 40);
    v7 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((v3 + 3), *(a2 + 32));
    result = sub_2769F6474(v3 + 3, v7, (v6 + 8), v5, *v3[5] - *(v3 + 8));
    v8 = *(v3 + 8) + v5;
    *(v3 + 8) = v8;
    v9 = v3[5];
    if (*v9 < v8)
    {
      *v9 = v8;
    }
  }

  v10 = *(a2 + 16);
  if ((v10 & 3) != 0)
  {
    if (v10)
    {
      v3[6] = *(a2 + 48);
    }

    if ((v10 & 2) != 0)
    {
      *(v3 + 56) = *(a2 + 56);
    }

    *(v3 + 4) |= v10;
  }

  return result;
}

void sub_2769DF568(google::protobuf::UnknownFieldSet *a1, char **a2)
{
  if (a2 != a1)
  {
    sub_2769DED64(a1);

    sub_2769DF3F0(a1, a2);
  }
}

BOOL sub_2769DF5BC(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 < 1)
  {
    return 1;
  }

  v2 = *(a1 + 16) + 8;
  do
  {
    v3 = *(v2 + 8 * (v1 - 1));
    result = (*(v3 + 16) & 6) == 6;
    if ((*(v3 + 16) & 6) != 6)
    {
      break;
    }

    v5 = *(v3 + 56);
    v6 = *(v3 + 64);
    while (v5 >= 1)
    {
      v7 = *(v6 + 8 * v5--);
      if ((*(v7 + 16) & 2) == 0)
      {
        return 0;
      }
    }
  }

  while (v1-- >= 2);
  return result;
}

uint64_t *sub_2769DF630(uint64_t *result, google::protobuf::Arena **a2)
{
  v2 = result;
  v3 = *a2;
  if (*result)
  {
    if ((v3 & 1) == 0)
    {
      v4 = sub_2769F617C(a2);
      goto LABEL_6;
    }
  }

  else if ((v3 & 1) == 0)
  {
    return result;
  }

  v4 = ((v3 & 0xFFFFFFFFFFFFFFFELL) + 8);
LABEL_6:

  return sub_2769F6534(v2, v4);
}

uint64_t sub_2769DF69C()
{
  google::protobuf::internal::AssignDescriptors(&unk_2812FBBF0, 0);
  result = *off_2812FBC48;
  v1 = off_2812FBC48[1];
  return result;
}

uint64_t sub_2769DF6D4(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_2885BFD70;
  *(a1 + 8) = a2;
  *(a1 + 32) = a2;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 48) = a2;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0u;
  *(a1 + 80) = a2;
  *(a1 + 96) = 0;
  *(a1 + 104) = a2;
  *(a1 + 120) = 0;
  *(a1 + 128) = a2;
  *(a1 + 144) = a2;
  *(a1 + 176) = a2;
  *(a1 + 160) = 0;
  *(a1 + 168) = 0;
  *(a1 + 152) = 0;
  if (atomic_load_explicit(dword_2812FBA60, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(dword_2812FBA60);
  }

  *(a1 + 192) = 0;
  *(a1 + 200) = 0;
  *(a1 + 208) = 0;
  return a1;
}

void sub_2769DF7A0(_Unwind_Exception *a1)
{
  if (*(v1 + 172) >= 1)
  {
    sub_276BD2A14(v5);
  }

  sub_2769C7730(v4);
  if (*(v1 + 124) >= 1)
  {
    v7 = *(v1 + 128);
    v9 = *(v7 - 8);
    v8 = (v7 - 8);
    if (!v9)
    {
      operator delete(v8);
    }
  }

  if (*(v1 + 100) >= 1)
  {
    v10 = *(v1 + 104);
    v12 = *(v10 - 8);
    v11 = (v10 - 8);
    if (!v12)
    {
      operator delete(v11);
    }
  }

  if (*(v1 + 76) >= 1)
  {
    v13 = *(v1 + 80);
    v15 = *(v13 - 8);
    v14 = (v13 - 8);
    if (!v15)
    {
      operator delete(v14);
    }
  }

  sub_2769F659C(v3);
  sub_276BD2A28((v1 + 28), v2);
  _Unwind_Resume(a1);
}

uint64_t sub_2769DF840(uint64_t a1)
{
  if (a1 != &unk_2812FC7E8)
  {
    v2 = *(a1 + 192);
    if (v2)
    {
      v3 = sub_2769E229C(v2);
      MEMORY[0x277C9F670](v3, 0x1081C40B6D36AFBLL);
    }
  }

  sub_2769DEC8C((a1 + 8));
  if (*(a1 + 172) >= 1)
  {
    v4 = *(a1 + 176);
    v6 = *(v4 - 8);
    v5 = (v4 - 8);
    if (!v6)
    {
      operator delete(v5);
    }
  }

  sub_2769C7730((a1 + 144));
  if (*(a1 + 124) >= 1)
  {
    v7 = *(a1 + 128);
    v9 = *(v7 - 8);
    v8 = (v7 - 8);
    if (!v9)
    {
      operator delete(v8);
    }
  }

  if (*(a1 + 100) >= 1)
  {
    v10 = *(a1 + 104);
    v12 = *(v10 - 8);
    v11 = (v10 - 8);
    if (!v12)
    {
      operator delete(v11);
    }
  }

  if (*(a1 + 76) >= 1)
  {
    v13 = *(a1 + 80);
    v15 = *(v13 - 8);
    v14 = (v13 - 8);
    if (!v15)
    {
      operator delete(v14);
    }
  }

  sub_2769F659C((a1 + 48));
  if (*(a1 + 28) >= 1)
  {
    v16 = *(a1 + 32);
    v18 = *(v16 - 8);
    v17 = (v16 - 8);
    if (!v18)
    {
      operator delete(v17);
    }
  }

  return a1;
}

void sub_2769DF948(uint64_t a1)
{
  sub_2769DF840(a1);

  JUMPOUT(0x277C9F670);
}

google::protobuf::UnknownFieldSet *sub_2769DF988(uint64_t a1)
{
  *(a1 + 24) = 0;
  v2 = *(a1 + 56);
  if (v2 >= 1)
  {
    v3 = (*(a1 + 64) + 8);
    do
    {
      v4 = *v3++;
      sub_2769E128C(v4);
      --v2;
    }

    while (v2);
    *(a1 + 56) = 0;
  }

  *(a1 + 72) = 0;
  *(a1 + 96) = 0;
  *(a1 + 120) = 0;
  result = sub_2769F62F4((a1 + 144));
  *(a1 + 168) = 0;
  v6 = *(a1 + 16);
  if (v6)
  {
    v7 = *(a1 + 192);
    v8 = *(v7 + 8);
    result = (v7 + 8);
    *(result + 2) = 0;
    if (v8)
    {
      result = sub_2769F6424(result);
    }
  }

  if ((v6 & 0xE) != 0)
  {
    *(a1 + 208) = 0;
    *(a1 + 200) = 0;
  }

  v10 = *(a1 + 8);
  v9 = a1 + 8;
  *(v9 + 8) = 0;
  if (v10)
  {

    return sub_2769F6424(v9);
  }

  return result;
}

google::protobuf::UnknownFieldSet *sub_2769DFA50(uint64_t a1)
{
  v2 = *(a1 + 8);
  result = (a1 + 8);
  *(result + 2) = 0;
  if (v2)
  {
    return sub_2769F6424(result);
  }

  return result;
}

google::protobuf::internal *sub_2769DFA64(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v54 = a2;
  v7 = 0;
  if ((sub_2769F6104(a3, &v54, *(a3 + 92)) & 1) == 0)
  {
    while (1)
    {
      v9 = (v54 + 1);
      v10 = *v54;
      if ((*v54 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v11 = v10 + (*v9 << 7);
      v10 = v11 - 128;
      if ((*v9 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v54, (v11 - 128));
      v54 = TagFallback;
      if (!TagFallback)
      {
        goto LABEL_112;
      }

      v9 = TagFallback;
      v10 = v17;
LABEL_7:
      v12 = v10 >> 3;
      if (v10 >> 3 <= 5)
      {
        if (v10 >> 3 <= 2)
        {
          if (v12 != 1)
          {
            if (v12 == 2)
            {
              if (v10 == 18)
              {
                v13 = (a1 + 24);
LABEL_29:
                v15 = google::protobuf::internal::PackedUInt32Parser(v13, v9, a3, v5);
LABEL_107:
                v54 = v15;
                if (!v15)
                {
LABEL_112:
                  v54 = 0;
                  goto LABEL_2;
                }

                goto LABEL_108;
              }

              if (v10 == 16)
              {
                goto LABEL_97;
              }
            }

            goto LABEL_100;
          }

          if (v10 != 8)
          {
            goto LABEL_100;
          }

          v7 |= 2u;
          v18 = (v9 + 1);
          LODWORD(v19) = *v9;
          if (*v9 < 0)
          {
            v20 = *v18;
            v19 = (v19 + (v20 << 7) - 128);
            if (v20 < 0)
            {
              v45 = google::protobuf::internal::VarintParseSlow32(v9, v19);
              v54 = v45;
              *(a1 + 200) = v46;
              if (!v45)
              {
                goto LABEL_112;
              }

              goto LABEL_108;
            }

            v18 = (v9 + 2);
          }

          v54 = v18;
          *(a1 + 200) = v19;
        }

        else
        {
          if (v12 != 3)
          {
            if (v12 != 4)
            {
              if (v12 != 5)
              {
                goto LABEL_100;
              }

              if (v10 != 42)
              {
                if (v10 == 40)
                {
                  goto LABEL_99;
                }

                goto LABEL_100;
              }

              v14 = (a1 + 72);
LABEL_77:
              v15 = google::protobuf::internal::PackedUInt64Parser(v14, v9, a3, v5);
              goto LABEL_107;
            }

            if (v10 != 34)
            {
              goto LABEL_100;
            }

            v21 = (v9 - 1);
            while (2)
            {
              v22 = (v21 + 1);
              v54 = (v21 + 1);
              v23 = *(a1 + 64);
              if (!v23)
              {
                v24 = *(a1 + 60);
                goto LABEL_41;
              }

              v28 = *(a1 + 56);
              v24 = *v23;
              if (v28 >= *v23)
              {
                if (v24 == *(a1 + 60))
                {
LABEL_41:
                  google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 48), v24 + 1);
                  v23 = *(a1 + 64);
                  v24 = *v23;
                }

                *v23 = v24 + 1;
                v25 = sub_2769F4F5C(*(a1 + 48));
                v26 = *(a1 + 56);
                v27 = *(a1 + 64) + 8 * v26;
                *(a1 + 56) = v26 + 1;
                *(v27 + 8) = v25;
                v22 = v54;
              }

              else
              {
                *(a1 + 56) = v28 + 1;
                v25 = *&v23[2 * v28 + 2];
              }

              v21 = sub_276BD1834(a3, v25, v22);
              v54 = v21;
              if (!v21)
              {
                goto LABEL_112;
              }

              if (*a3 <= v21 || *v21 != 34)
              {
                goto LABEL_108;
              }

              continue;
            }
          }

          if (v10 != 24)
          {
            goto LABEL_100;
          }

          v7 |= 4u;
          v40 = (v9 + 1);
          LODWORD(v41) = *v9;
          if (*v9 < 0)
          {
            v42 = *v40;
            v41 = (v41 + (v42 << 7) - 128);
            if (v42 < 0)
            {
              v49 = google::protobuf::internal::VarintParseSlow32(v9, v41);
              v54 = v49;
              *(a1 + 204) = v50;
              if (!v49)
              {
                goto LABEL_112;
              }

              goto LABEL_108;
            }

            v40 = (v9 + 2);
          }

          v54 = v40;
          *(a1 + 204) = v41;
        }
      }

      else
      {
        if (v10 >> 3 > 8)
        {
          if (v12 == 9)
          {
            if (v10 == 74)
            {
              *(a1 + 16) |= 1u;
              v43 = *(a1 + 192);
              if (!v43)
              {
                v44 = *(a1 + 8);
                if (v44)
                {
                  v44 = *(v44 & 0xFFFFFFFFFFFFFFFELL);
                }

                v43 = sub_2769F4FE8(v44);
                *(a1 + 192) = v43;
                v9 = v54;
              }

              v15 = sub_276BD1904(a3, v43, v9);
              goto LABEL_107;
            }

            goto LABEL_100;
          }

          if (v12 != 10)
          {
            if (v12 == 11)
            {
              if (v10 == 90)
              {
                v13 = (a1 + 168);
                goto LABEL_29;
              }

              if (v10 == 88)
              {
LABEL_97:
                LODWORD(v55) = sub_2769E000C(&v54);
                google::protobuf::RepeatedField<unsigned int>::Add();
              }
            }

            goto LABEL_100;
          }

          if (v10 != 82)
          {
LABEL_100:
            if (v10)
            {
              v51 = (v10 & 7) == 4;
            }

            else
            {
              v51 = 1;
            }

            if (v51)
            {
              *(a3 + 80) = v10 - 1;
              goto LABEL_2;
            }

            v52 = *(a1 + 8);
            if (v52)
            {
              v53 = ((v52 & 0xFFFFFFFFFFFFFFFELL) + 8);
            }

            else
            {
              v53 = sub_2769F617C((a1 + 8));
              v9 = v54;
            }

            v15 = google::protobuf::internal::UnknownFieldParse(v10, v53, v9, a3, v6);
            goto LABEL_107;
          }

          v32 = (v9 - 1);
          while (2)
          {
            v33 = (v32 + 1);
            v54 = (v32 + 1);
            v34 = *(a1 + 160);
            if (!v34)
            {
              v35 = *(a1 + 156);
              goto LABEL_60;
            }

            v39 = *(a1 + 152);
            v35 = *v34;
            if (v39 >= *v34)
            {
              if (v35 == *(a1 + 156))
              {
LABEL_60:
                google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 144), v35 + 1);
                v34 = *(a1 + 160);
                v35 = *v34;
              }

              *v34 = v35 + 1;
              v36 = sub_2769F4FE8(*(a1 + 144));
              v37 = *(a1 + 152);
              v38 = *(a1 + 160) + 8 * v37;
              *(a1 + 152) = v37 + 1;
              *(v38 + 8) = v36;
              v33 = v54;
            }

            else
            {
              *(a1 + 152) = v39 + 1;
              v36 = *&v34[2 * v39 + 2];
            }

            v32 = sub_276BD1904(a3, v36, v33);
            v54 = v32;
            if (!v32)
            {
              goto LABEL_112;
            }

            if (*a3 <= v32 || *v32 != 82)
            {
              goto LABEL_108;
            }

            continue;
          }
        }

        if (v12 == 6)
        {
          if (v10 != 50)
          {
            if (v10 == 48)
            {
LABEL_99:
              v55 = sub_2769DF0C0(&v54);
              google::protobuf::RepeatedField<unsigned long long>::Add();
            }

            goto LABEL_100;
          }

          v14 = (a1 + 96);
          goto LABEL_77;
        }

        if (v12 != 7)
        {
          if (v12 == 8)
          {
            if (v10 == 66)
            {
              v13 = (a1 + 120);
              goto LABEL_29;
            }

            if (v10 == 64)
            {
              goto LABEL_97;
            }
          }

          goto LABEL_100;
        }

        if (v10 != 56)
        {
          goto LABEL_100;
        }

        v7 |= 8u;
        v29 = (v9 + 1);
        LODWORD(v30) = *v9;
        if (*v9 < 0)
        {
          v31 = *v29;
          v30 = (v30 + (v31 << 7) - 128);
          if (v31 < 0)
          {
            v47 = google::protobuf::internal::VarintParseSlow32(v9, v30);
            v54 = v47;
            *(a1 + 208) = v48;
            if (!v47)
            {
              goto LABEL_112;
            }

            goto LABEL_108;
          }

          v29 = (v9 + 2);
        }

        v54 = v29;
        *(a1 + 208) = v30;
      }

LABEL_108:
      if (sub_2769F6104(a3, &v54, *(a3 + 92)))
      {
        goto LABEL_2;
      }
    }

    v9 = (v54 + 2);
LABEL_6:
    v54 = v9;
    goto LABEL_7;
  }

LABEL_2:
  *(a1 + 16) |= v7;
  return v54;
}

unint64_t sub_2769E000C(google::protobuf::internal **a1)
{
  v2 = *a1;
  v3 = *a1;
  v5 = *v3;
  v4 = v3 + 1;
  v6 = v5;
  if (v5 < 0)
  {
    v6 = v6 + (*v4 << 7) - 128;
    if (*v4 < 0)
    {
      v4 = google::protobuf::internal::VarintParseSlow32(v2, v6);
    }

    else
    {
      v4 = v2 + 2;
    }
  }

  *a1 = v4;
  return v6;
}

const google::protobuf::UnknownFieldSet *sub_2769E006C(uint64_t a1, google::protobuf::UnknownFieldSet *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v4 = a2;
  v6 = *(a1 + 16);
  if ((v6 & 2) != 0)
  {
    if (*a3 <= a2)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v7 = *(a1 + 200);
    *v4 = 8;
    if (v7 > 0x7F)
    {
      v4[1] = v7 | 0x80;
      v8 = v7 >> 7;
      if (v7 >> 14)
      {
        v4 += 3;
        do
        {
          *(v4 - 1) = v8 | 0x80;
          v9 = v8 >> 7;
          ++v4;
          v10 = v8 >> 14;
          v8 >>= 7;
        }

        while (v10);
        *(v4 - 1) = v9;
      }

      else
      {
        v4[2] = v8;
        v4 += 3;
      }
    }

    else
    {
      v4[1] = v7;
      v4 += 2;
    }
  }

  v11 = *(a1 + 40);
  if (v11 >= 1)
  {
    v4 = sub_2769F6620(a3, 2, (a1 + 24), v11, v4, google::protobuf::io::EpsCopyOutputStream::Encode32);
  }

  if ((v6 & 4) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v12 = *(a1 + 204);
    *v4 = 24;
    if (v12 > 0x7F)
    {
      v4[1] = v12 | 0x80;
      v13 = v12 >> 7;
      if (v12 >> 14)
      {
        v4 += 3;
        do
        {
          *(v4 - 1) = v13 | 0x80;
          v14 = v13 >> 7;
          ++v4;
          v15 = v13 >> 14;
          v13 >>= 7;
        }

        while (v15);
        *(v4 - 1) = v14;
      }

      else
      {
        v4[2] = v13;
        v4 += 3;
      }
    }

    else
    {
      v4[1] = v12;
      v4 += 2;
    }
  }

  v16 = *(a1 + 56);
  if (v16)
  {
    for (i = 0; i != v16; ++i)
    {
      if (*a3 <= v4)
      {
        v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
      }

      v18 = *(*(a1 + 64) + 8 * i + 8);
      *v4 = 34;
      v19 = *(v18 + 20);
      if (v19 > 0x7F)
      {
        v4[1] = v19 | 0x80;
        v21 = v19 >> 7;
        if (v19 >> 14)
        {
          v20 = v4 + 3;
          do
          {
            *(v20 - 1) = v21 | 0x80;
            v22 = v21 >> 7;
            ++v20;
            v23 = v21 >> 14;
            v21 >>= 7;
          }

          while (v23);
          *(v20 - 1) = v22;
        }

        else
        {
          v4[2] = v21;
          v20 = v4 + 3;
        }
      }

      else
      {
        v4[1] = v19;
        v20 = v4 + 2;
      }

      v4 = sub_2769E1750(v18, v20, a3);
    }
  }

  v24 = *(a1 + 88);
  if (v24 > 0)
  {
    v4 = sub_2769F67C4(a3, 5, (a1 + 72), v24, v4, google::protobuf::io::EpsCopyOutputStream::Encode64);
  }

  v25 = *(a1 + 112);
  if (v25 >= 1)
  {
    v4 = sub_2769F67C4(a3, 6, (a1 + 96), v25, v4, google::protobuf::io::EpsCopyOutputStream::Encode64);
  }

  if ((v6 & 8) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v26 = *(a1 + 208);
    *v4 = 56;
    if (v26 > 0x7F)
    {
      v4[1] = v26 | 0x80;
      v27 = v26 >> 7;
      if (v26 >> 14)
      {
        v4 += 3;
        do
        {
          *(v4 - 1) = v27 | 0x80;
          v28 = v27 >> 7;
          ++v4;
          v29 = v27 >> 14;
          v27 >>= 7;
        }

        while (v29);
        *(v4 - 1) = v28;
      }

      else
      {
        v4[2] = v27;
        v4 += 3;
      }
    }

    else
    {
      v4[1] = v26;
      v4 += 2;
    }
  }

  v30 = *(a1 + 136);
  if (v30 >= 1)
  {
    v4 = sub_2769F6620(a3, 8, (a1 + 120), v30, v4, google::protobuf::io::EpsCopyOutputStream::Encode32);
  }

  if (v6)
  {
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v31 = *(a1 + 192);
    *v4 = 74;
    v32 = *(v31 + 36);
    if (v32 > 0x7F)
    {
      v4[1] = v32 | 0x80;
      v34 = v32 >> 7;
      if (v32 >> 14)
      {
        v33 = (v4 + 3);
        do
        {
          *(v33 - 1) = v34 | 0x80;
          v35 = v34 >> 7;
          v33 = (v33 + 1);
          v36 = v34 >> 14;
          v34 >>= 7;
        }

        while (v36);
        *(v33 - 1) = v35;
      }

      else
      {
        v4[2] = v34;
        v33 = (v4 + 3);
      }
    }

    else
    {
      v4[1] = v32;
      v33 = (v4 + 2);
    }

    v4 = sub_2769E248C(v31, v33, a3);
  }

  v37 = *(a1 + 152);
  if (v37)
  {
    for (j = 0; j != v37; ++j)
    {
      if (*a3 <= v4)
      {
        v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
      }

      v39 = *(*(a1 + 160) + 8 * j + 8);
      *v4 = 82;
      v40 = *(v39 + 36);
      if (v40 > 0x7F)
      {
        v4[1] = v40 | 0x80;
        v42 = v40 >> 7;
        if (v40 >> 14)
        {
          v41 = (v4 + 3);
          do
          {
            *(v41 - 1) = v42 | 0x80;
            v43 = v42 >> 7;
            v41 = (v41 + 1);
            v44 = v42 >> 14;
            v42 >>= 7;
          }

          while (v44);
          *(v41 - 1) = v43;
        }

        else
        {
          v4[2] = v42;
          v41 = (v4 + 3);
        }
      }

      else
      {
        v4[1] = v40;
        v41 = (v4 + 2);
      }

      v4 = sub_2769E248C(v39, v41, a3);
    }
  }

  v45 = *(a1 + 184);
  if (v45 > 0)
  {
    v4 = sub_2769F6620(a3, 11, (a1 + 168), v45, v4, google::protobuf::io::EpsCopyOutputStream::Encode32);
  }

  v46 = *(a1 + 8);
  if ((v46 & 1) == 0)
  {
    return v4;
  }

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v46 & 0xFFFFFFFFFFFFFFFELL) + 8), v4, a3, v45);
}

uint64_t sub_2769E0578(_DWORD *a1)
{
  v2 = a1[4];
  if ((v2 & 2) != 0)
  {
    result = ((9 * (__clz(a1[50] | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v2 & 4) == 0)
    {
      return result;
    }

    goto LABEL_5;
  }

  result = 0;
  if ((v2 & 4) != 0)
  {
LABEL_5:
    result += ((9 * (__clz(a1[51] | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  return result;
}

uint64_t sub_2769E05DC(uint64_t a1)
{
  if ((~*(a1 + 16) & 6) != 0)
  {
    v2 = sub_2769E0578(a1);
  }

  else
  {
    v2 = ((9 * (__clz(*(a1 + 200) | 1) ^ 0x1F) + 73) >> 6) + ((9 * (__clz(*(a1 + 204) | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

  v3 = google::protobuf::internal::WireFormatLite::UInt32Size((a1 + 24));
  v4 = 11;
  v5 = ((9 * (__clz(v3 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if (v3 >= 0)
  {
    v4 = v5;
  }

  v6 = v4 + v2;
  if (v3)
  {
    v7 = v3;
  }

  else
  {
    v7 = 0;
  }

  if (!v3)
  {
    v6 = v2;
  }

  *(a1 + 40) = v7;
  v8 = v6 + v3;
  v9 = *(a1 + 56);
  v10 = v8 + v9;
  v11 = *(a1 + 64);
  if (v11)
  {
    v12 = (v11 + 8);
  }

  else
  {
    v12 = 0;
  }

  if (v9)
  {
    v13 = 8 * v9;
    do
    {
      v14 = *v12++;
      v15 = sub_2769E1BE0(v14);
      v10 += v15 + ((9 * (__clz(v15 | 1) ^ 0x1F) + 73) >> 6);
      v13 -= 8;
    }

    while (v13);
  }

  v16 = google::protobuf::internal::WireFormatLite::UInt64Size((a1 + 72));
  v17 = 11;
  v18 = ((9 * (__clz(v16 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if (v16 >= 0)
  {
    v17 = v18;
  }

  v19 = v17 + v10;
  if (v16)
  {
    v20 = v16;
  }

  else
  {
    v20 = 0;
  }

  if (!v16)
  {
    v19 = v10;
  }

  *(a1 + 88) = v20;
  v21 = v19 + v16;
  v22 = google::protobuf::internal::WireFormatLite::UInt64Size((a1 + 96));
  v23 = 11;
  v24 = ((9 * (__clz(v22 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if (v22 >= 0)
  {
    v23 = v24;
  }

  v25 = v23 + v21;
  if (v22)
  {
    v26 = v22;
  }

  else
  {
    v26 = 0;
  }

  if (!v22)
  {
    v25 = v21;
  }

  *(a1 + 112) = v26;
  v27 = v25 + v22;
  v28 = google::protobuf::internal::WireFormatLite::UInt32Size((a1 + 120));
  v29 = 11;
  v30 = ((9 * (__clz(v28 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if (v28 >= 0)
  {
    v29 = v30;
  }

  v31 = v29 + v27;
  if (v28)
  {
    v32 = v28;
  }

  else
  {
    v32 = 0;
  }

  if (v28)
  {
    v33 = v31;
  }

  else
  {
    v33 = v27;
  }

  *(a1 + 136) = v32;
  v34 = *(a1 + 152);
  v35 = v33 + v28 + v34;
  v36 = *(a1 + 160);
  if (v36)
  {
    v37 = (v36 + 8);
  }

  else
  {
    v37 = 0;
  }

  if (v34)
  {
    v38 = 8 * v34;
    do
    {
      v39 = *v37++;
      v40 = sub_2769E251C(v39);
      v35 += v40 + ((9 * (__clz(v40 | 1) ^ 0x1F) + 73) >> 6);
      v38 -= 8;
    }

    while (v38);
  }

  v41 = google::protobuf::internal::WireFormatLite::UInt32Size((a1 + 168));
  v43 = 11;
  v44 = ((9 * (__clz(v41 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if (v41 >= 0)
  {
    v43 = v44;
  }

  v45 = v43 + v35;
  if (v41)
  {
    v46 = v41;
  }

  else
  {
    v46 = 0;
  }

  if (!v41)
  {
    v45 = v35;
  }

  *(a1 + 184) = v46;
  v47 = (v45 + v41);
  v48 = *(a1 + 16);
  if (v48)
  {
    v49 = sub_2769E251C(*(a1 + 192));
    v47 = (v47 + v49 + ((9 * (__clz(v49 | 1) ^ 0x1F) + 73) >> 6) + 1);
  }

  if ((v48 & 8) != 0)
  {
    v47 = (v47 + ((9 * (__clz(*(a1 + 208) | 1) ^ 0x1F) + 73) >> 6) + 1);
  }

  if (*(a1 + 8))
  {

    return google::protobuf::internal::ComputeUnknownFieldsSize((a1 + 8), v47, (a1 + 20), v42);
  }

  else
  {
    *(a1 + 20) = v47;
    return v47;
  }
}

void sub_2769E08FC(google::protobuf::Arena **a1, char **lpsrc)
{
  v4 = **lpsrc;
  if (v5)
  {

    sub_2769E09A4(a1, v5);
  }

  else
  {

    google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v6);
  }
}

google::protobuf::Arena **sub_2769E09A4(google::protobuf::Arena **result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 8);
  if (v4)
  {
    result = sub_2769F63D8(result + 1, ((v4 & 0xFFFFFFFFFFFFFFFELL) + 8));
  }

  if (*(a2 + 24))
  {
    v5 = *(v3 + 6);
    google::protobuf::RepeatedField<unsigned int>::Reserve();
  }

  v6 = *(a2 + 56);
  if (v6)
  {
    v7 = *(a2 + 64);
    v8 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((v3 + 6), *(a2 + 56));
    result = sub_2769F68D4(v3 + 6, v8, (v7 + 8), v6, *v3[8] - *(v3 + 14));
    v9 = *(v3 + 14) + v6;
    *(v3 + 14) = v9;
    v10 = v3[8];
    if (*v10 < v9)
    {
      *v10 = v9;
    }
  }

  if (*(a2 + 72))
  {
    v11 = *(v3 + 18);
    google::protobuf::RepeatedField<unsigned long long>::Reserve();
  }

  if (*(a2 + 96))
  {
    v12 = *(v3 + 24);
    google::protobuf::RepeatedField<unsigned long long>::Reserve();
  }

  if (*(a2 + 120))
  {
    v13 = *(v3 + 30);
    google::protobuf::RepeatedField<unsigned int>::Reserve();
  }

  v14 = *(a2 + 152);
  if (v14)
  {
    v15 = *(a2 + 160);
    v16 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((v3 + 18), *(a2 + 152));
    result = sub_2769C14B0(v3 + 18, v16, (v15 + 8), v14, *v3[20] - *(v3 + 38));
    v17 = *(v3 + 38) + v14;
    *(v3 + 38) = v17;
    v18 = v3[20];
    if (*v18 < v17)
    {
      *v18 = v17;
    }
  }

  if (*(a2 + 168))
  {
    v19 = *(v3 + 42);
    google::protobuf::RepeatedField<unsigned int>::Reserve();
  }

  v20 = *(a2 + 16);
  if ((v20 & 0xF) != 0)
  {
    if (v20)
    {
      *(v3 + 4) |= 1u;
      v21 = v3[24];
      if (!v21)
      {
        v22 = v3[1];
        if (v22)
        {
          v22 = *(v22 & 0xFFFFFFFFFFFFFFFELL);
        }

        v21 = sub_2769F4FE8(v22);
        v3[24] = v21;
      }

      if (*(a2 + 192))
      {
        v23 = *(a2 + 192);
      }

      else
      {
        v23 = &qword_2812FC940;
      }

      result = sub_2769E0C8C(v21, v23);
      if ((v20 & 2) == 0)
      {
LABEL_22:
        if ((v20 & 4) == 0)
        {
          goto LABEL_23;
        }

        goto LABEL_36;
      }
    }

    else if ((v20 & 2) == 0)
    {
      goto LABEL_22;
    }

    *(v3 + 50) = *(a2 + 200);
    if ((v20 & 4) == 0)
    {
LABEL_23:
      if ((v20 & 8) == 0)
      {
LABEL_25:
        *(v3 + 4) |= v20;
        return result;
      }

LABEL_24:
      *(v3 + 52) = *(a2 + 208);
      goto LABEL_25;
    }

LABEL_36:
    *(v3 + 51) = *(a2 + 204);
    if ((v20 & 8) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_24;
  }

  return result;
}

google::protobuf::Arena **sub_2769E0C8C(google::protobuf::Arena **result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 8);
  if (v4)
  {
    result = sub_2769F63D8(result + 1, ((v4 & 0xFFFFFFFFFFFFFFFELL) + 8));
  }

  if (*(a2 + 16))
  {
    v5 = *(v3 + 4);
    google::protobuf::RepeatedField<unsigned int>::Reserve();
  }

  return result;
}

void sub_2769E0D2C(google::protobuf::Arena **a1, char **a2)
{
  if (a2 != a1)
  {
    sub_2769DF988(a1);

    sub_2769E08FC(a1, a2);
  }
}

google::protobuf::Arena **sub_2769E0D78(google::protobuf::Arena **result, uint64_t a2)
{
  if (a2 != result)
  {
    v4 = result;
    sub_2769DF988(result);

    return sub_2769E09A4(v4, a2);
  }

  return result;
}

BOOL sub_2769E0DC4(uint64_t a1)
{
  if ((~*(a1 + 16) & 6) != 0)
  {
    return 0;
  }

  v1 = *(a1 + 56);
  v2 = *(a1 + 64);
  do
  {
    result = v1 < 1;
    if (v1 < 1)
    {
      break;
    }

    v4 = *(v2 + 8 * v1--);
  }

  while ((*(v4 + 16) & 2) != 0);
  return result;
}

uint64_t sub_2769E0E04()
{
  google::protobuf::internal::AssignDescriptors(&unk_2812FBBF0, 0);
  result = off_2812FBC48[2];
  v1 = off_2812FBC48[3];
  return result;
}

uint64_t sub_2769E0E3C(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_2885BFE20;
  *(a1 + 8) = a2;
  *(a1 + 32) = a2;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = a2;
  *(a1 + 72) = 0;
  *(a1 + 80) = a2;
  if (atomic_load_explicit(dword_2812FBA28, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(dword_2812FBA28);
  }

  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  *(a1 + 96) = &google::protobuf::internal::fixed_address_empty_string;
  *(a1 + 120) = 0;
  return a1;
}

void sub_2769E0EE8(_Unwind_Exception *a1)
{
  if (v1[19] >= 1)
  {
    sub_276BD2A14(v4);
  }

  sub_276BD2A48(v1 + 13, v3, v1 + 7, v2);
  _Unwind_Resume(a1);
}

uint64_t sub_2769E0F20(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  *a1 = &unk_2885BFE20;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 36) = 0;
  *(a1 + 20) = 0;
  *(a1 + 28) = 0;
  if (*(a2 + 24))
  {
    google::protobuf::RepeatedField<unsigned long long>::Reserve();
  }

  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  if (*(a2 + 48))
  {
    google::protobuf::RepeatedField<unsigned long long>::Reserve();
  }

  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  if (*(a2 + 72))
  {
    google::protobuf::RepeatedField<unsigned int>::Reserve();
  }

  v5 = *(a2 + 8);
  if (v5)
  {
    sub_2769F63D8(v4, ((v5 & 0xFFFFFFFFFFFFFFFELL) + 8));
  }

  *(a1 + 96) = &google::protobuf::internal::fixed_address_empty_string;
  v6 = *(a2 + 16);
  if (v6)
  {
    v7 = *v4;
    if (*v4)
    {
      v7 = *(v7 & 0xFFFFFFFFFFFFFFFELL);
    }

    google::protobuf::internal::ArenaStringPtr::Set((a1 + 96), (*(a2 + 96) & 0xFFFFFFFFFFFFFFFELL), v7);
    v6 = *(a2 + 16);
  }

  if ((v6 & 2) != 0)
  {
    operator new();
  }

  *(a1 + 104) = 0;
  v8 = *(a2 + 112);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 112) = v8;
  return a1;
}

void sub_2769E10C4(_Unwind_Exception *a1)
{
  MEMORY[0x277C9F670](v2, 0x1081C40B6D36AFBLL);
  if (*(v1 + 76) >= 1)
  {
    v4 = *(v1 + 80);
    v6 = *(v4 - 8);
    v5 = (v4 - 8);
    if (!v6)
    {
      operator delete(v5);
    }
  }

  if (*(v1 + 52) >= 1)
  {
    v7 = *(v1 + 56);
    v9 = *(v7 - 8);
    v8 = (v7 - 8);
    if (!v9)
    {
      operator delete(v8);
    }
  }

  if (*(v1 + 28) >= 1)
  {
    v10 = *(v1 + 32);
    v12 = *(v10 - 8);
    v11 = (v10 - 8);
    if (!v12)
    {
      operator delete(v11);
    }
  }

  _Unwind_Resume(a1);
}

uint64_t sub_2769E1158(uint64_t a1)
{
  v2 = *(a1 + 96);
  if (v2 != &google::protobuf::internal::fixed_address_empty_string)
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    MEMORY[0x277C9F670](v2, 0x1012C40EC159624);
  }

  if (a1 != &unk_2812FC8C0)
  {
    v3 = *(a1 + 104);
    if (v3)
    {
      v4 = sub_2769E229C(v3);
      MEMORY[0x277C9F670](v4, 0x1081C40B6D36AFBLL);
    }
  }

  sub_2769DEC8C((a1 + 8));
  if (*(a1 + 76) >= 1)
  {
    v5 = *(a1 + 80);
    v7 = *(v5 - 8);
    v6 = (v5 - 8);
    if (!v7)
    {
      operator delete(v6);
    }
  }

  if (*(a1 + 52) >= 1)
  {
    v8 = *(a1 + 56);
    v10 = *(v8 - 8);
    v9 = (v8 - 8);
    if (!v10)
    {
      operator delete(v9);
    }
  }

  if (*(a1 + 28) >= 1)
  {
    v11 = *(a1 + 32);
    v13 = *(v11 - 8);
    v12 = (v11 - 8);
    if (!v13)
    {
      operator delete(v12);
    }
  }

  return a1;
}

void sub_2769E124C(uint64_t a1)
{
  sub_2769E1158(a1);

  JUMPOUT(0x277C9F670);
}

google::protobuf::UnknownFieldSet *sub_2769E128C(google::protobuf::UnknownFieldSet *result)
{
  v1 = result;
  *(result + 6) = 0;
  *(result + 12) = 0;
  *(result + 18) = 0;
  v2 = *(result + 4);
  if ((v2 & 3) == 0)
  {
    goto LABEL_9;
  }

  if (v2)
  {
    v3 = *(result + 12) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v3 + 23) < 0)
    {
      **v3 = 0;
      *(v3 + 8) = 0;
      if ((v2 & 2) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_6;
    }

    *v3 = 0;
    *(v3 + 23) = 0;
  }

  if ((v2 & 2) == 0)
  {
    goto LABEL_9;
  }

LABEL_6:
  v4 = *(result + 13);
  v5 = *(v4 + 8);
  result = (v4 + 8);
  *(result + 2) = 0;
  if (v5)
  {
    result = sub_2769F6424(result);
  }

LABEL_9:
  if ((v2 & 0x1C) != 0)
  {
    *(v1 + 30) = 0;
    *(v1 + 14) = 0;
  }

  v7 = *(v1 + 8);
  v6 = v1 + 8;
  *(v6 + 2) = 0;
  if (v7)
  {

    return sub_2769F6424(v6);
  }

  return result;
}

google::protobuf::internal *sub_2769E1348(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v34 = a2;
  for (i = *(a3 + 92); (sub_2769F6104(a3, &v34, i) & 1) == 0; i = *(a3 + 92))
  {
    v8 = (v34 + 1);
    v9 = *v34;
    if ((*v34 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    v10 = v9 + (*v8 << 7);
    v9 = v10 - 128;
    if ((*v8 & 0x80000000) == 0)
    {
      v8 = (v34 + 2);
LABEL_6:
      v34 = v8;
      goto LABEL_7;
    }

    TagFallback = google::protobuf::internal::ReadTagFallback(v34, (v10 - 128));
    v34 = TagFallback;
    if (!TagFallback)
    {
      return 0;
    }

    v8 = TagFallback;
    v9 = v24;
LABEL_7:
    v11 = v9 >> 3;
    if (v9 >> 3 > 4)
    {
      if (v9 >> 3 > 6)
      {
        if (v11 == 7)
        {
          if (v9 == 58)
          {
            v22 = google::protobuf::internal::PackedUInt32Parser((a1 + 72), v8, a3, v6);
            goto LABEL_80;
          }

          if (v9 == 56)
          {
            LODWORD(v35) = sub_2769E000C(&v34);
            google::protobuf::RepeatedField<unsigned int>::Add();
          }
        }

        else if (v11 == 8 && v9 == 66)
        {
          *(a1 + 16) |= 1u;
          v20 = *(a1 + 8);
          if (v20)
          {
            v20 = *(v20 & 0xFFFFFFFFFFFFFFFELL);
          }

          v21 = google::protobuf::internal::ArenaStringPtr::Mutable((a1 + 96), v20);
          v22 = google::protobuf::internal::InlineGreedyStringParser(v21, v34, a3);
          goto LABEL_80;
        }
      }

      else if (v11 == 5)
      {
        if (v9 == 42)
        {
          v19 = (a1 + 48);
          goto LABEL_51;
        }

        if (v9 == 40)
        {
          goto LABEL_72;
        }
      }

      else if (v11 == 6 && v9 == 48)
      {
        v17 = (v8 + 1);
        v16 = *v8;
        if ((v16 & 0x8000000000000000) == 0)
        {
          goto LABEL_28;
        }

        v18 = *v17;
        v16 = (v18 << 7) + v16 - 128;
        if (v18 < 0)
        {
          v34 = google::protobuf::internal::VarintParseSlow64(v8, v16);
          if (!v34)
          {
            return 0;
          }
        }

        else
        {
          v17 = (v8 + 2);
LABEL_28:
          v34 = v17;
        }

        if (v16 > 2)
        {
          sub_276BD2ABC((a1 + 8));
        }

        else
        {
          *(a1 + 16) |= 0x10u;
          *(a1 + 120) = v16;
        }

        continue;
      }
    }

    else if (v9 >> 3 > 2)
    {
      if (v11 == 3)
      {
        if (v9 == 24)
        {
          v28 = (v8 + 1);
          v27 = *v8;
          if ((v27 & 0x8000000000000000) == 0)
          {
            goto LABEL_56;
          }

          v29 = *v28;
          v27 = (v29 << 7) + v27 - 128;
          if (v29 < 0)
          {
            v34 = google::protobuf::internal::VarintParseSlow64(v8, v27);
            if (!v34)
            {
              return 0;
            }
          }

          else
          {
            v28 = (v8 + 2);
LABEL_56:
            v34 = v28;
          }

          if ((v27 + 1) > 3)
          {
            sub_276BD2AF8((a1 + 8));
          }

          else
          {
            *(a1 + 16) |= 8u;
            *(a1 + 116) = v27;
          }

          continue;
        }
      }

      else if (v11 == 4)
      {
        if (v9 == 34)
        {
          v19 = (a1 + 24);
LABEL_51:
          v22 = google::protobuf::internal::PackedUInt64Parser(v19, v8, a3, v6);
          goto LABEL_80;
        }

        if (v9 == 32)
        {
LABEL_72:
          v35 = sub_2769DF0C0(&v34);
          google::protobuf::RepeatedField<unsigned long long>::Add();
        }
      }
    }

    else if (v11 == 1)
    {
      if (v9 == 10)
      {
        *(a1 + 16) |= 2u;
        v25 = *(a1 + 104);
        if (!v25)
        {
          v26 = *(a1 + 8);
          if (v26)
          {
            v26 = *(v26 & 0xFFFFFFFFFFFFFFFELL);
          }

          v25 = sub_2769F4FE8(v26);
          *(a1 + 104) = v25;
          v8 = v34;
        }

        v22 = sub_276BD1904(a3, v25, v8);
        goto LABEL_80;
      }
    }

    else if (v11 == 2 && v9 == 16)
    {
      v14 = (v8 + 1);
      v13 = *v8;
      if ((v13 & 0x8000000000000000) == 0)
      {
        goto LABEL_18;
      }

      v15 = *v14;
      v13 = (v15 << 7) + v13 - 128;
      if (v15 < 0)
      {
        v34 = google::protobuf::internal::VarintParseSlow64(v8, v13);
        if (!v34)
        {
          return 0;
        }
      }

      else
      {
        v14 = (v8 + 2);
LABEL_18:
        v34 = v14;
      }

      if (v13 > 3)
      {
        sub_276BD2B34((a1 + 8));
      }

      else
      {
        *(a1 + 16) |= 4u;
        *(a1 + 112) = v13;
      }

      continue;
    }

    if (v9)
    {
      v30 = (v9 & 7) == 4;
    }

    else
    {
      v30 = 1;
    }

    if (v30)
    {
      *(a3 + 80) = v9 - 1;
      return v34;
    }

    v31 = *(a1 + 8);
    if (v31)
    {
      v32 = ((v31 & 0xFFFFFFFFFFFFFFFELL) + 8);
    }

    else
    {
      v32 = sub_2769F617C((a1 + 8));
      v8 = v34;
    }

    v22 = google::protobuf::internal::UnknownFieldParse(v9, v32, v8, a3, v7);
LABEL_80:
    v34 = v22;
    if (!v22)
    {
      return 0;
    }
  }

  return v34;
}

const google::protobuf::UnknownFieldSet *sub_2769E1750(uint64_t a1, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v4 = a2;
  v6 = *(a1 + 16);
  if ((v6 & 2) != 0)
  {
    if (*a3 <= a2)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v8 = *(a1 + 104);
    *v4 = 10;
    v9 = *(v8 + 36);
    if (v9 > 0x7F)
    {
      v4[1] = v9 | 0x80;
      v12 = v9 >> 7;
      if (v9 >> 14)
      {
        v10 = (v4 + 3);
        do
        {
          *(v10 - 1) = v12 | 0x80;
          v15 = v12 >> 7;
          v10 = (v10 + 1);
          v16 = v12 >> 14;
          v12 >>= 7;
        }

        while (v16);
        *(v10 - 1) = v15;
      }

      else
      {
        v4[2] = v12;
        v10 = (v4 + 3);
      }
    }

    else
    {
      v4[1] = v9;
      v10 = (v4 + 2);
    }

    v4 = sub_2769E248C(v8, v10, a3);
    if ((v6 & 4) == 0)
    {
LABEL_3:
      if ((v6 & 8) == 0)
      {
        goto LABEL_34;
      }

      goto LABEL_4;
    }
  }

  else if ((v6 & 4) == 0)
  {
    goto LABEL_3;
  }

  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v17 = *(a1 + 112);
  *v4 = 16;
  if (v17 > 0x7F)
  {
    v4[1] = v17 | 0x80;
    v18 = v17 >> 7;
    if (v17 >> 14)
    {
      v4 += 3;
      do
      {
        *(v4 - 1) = v18 | 0x80;
        v19 = v18 >> 7;
        ++v4;
        v20 = v18 >> 14;
        v18 >>= 7;
      }

      while (v20);
      *(v4 - 1) = v19;
      if ((v6 & 8) == 0)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v4[2] = v18;
      v4 += 3;
      if ((v6 & 8) == 0)
      {
        goto LABEL_34;
      }
    }
  }

  else
  {
    v4[1] = v17;
    v4 += 2;
    if ((v6 & 8) == 0)
    {
      goto LABEL_34;
    }
  }

LABEL_4:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v7 = *(a1 + 116);
  *v4 = 24;
  if (v7 > 0x7F)
  {
    v4[1] = v7 | 0x80;
    v11 = v7 >> 7;
    if (v7 >> 14)
    {
      v4 += 3;
      do
      {
        *(v4 - 1) = v11 | 0x80;
        v13 = v11 >> 7;
        ++v4;
        v14 = v11 >> 14;
        v11 >>= 7;
      }

      while (v14);
      *(v4 - 1) = v13;
    }

    else
    {
      v4[2] = v11;
      v4 += 3;
    }
  }

  else
  {
    v4[1] = v7;
    v4 += 2;
  }

LABEL_34:
  v21 = *(a1 + 40);
  if (v21 >= 1)
  {
    v4 = sub_2769F67C4(a3, 4, (a1 + 24), v21, v4, google::protobuf::io::EpsCopyOutputStream::Encode64);
  }

  v22 = *(a1 + 64);
  if (v22 >= 1)
  {
    v4 = sub_2769F67C4(a3, 5, (a1 + 48), v22, v4, google::protobuf::io::EpsCopyOutputStream::Encode64);
  }

  if ((v6 & 0x10) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v23 = *(a1 + 120);
    *v4 = 48;
    if (v23 > 0x7F)
    {
      v4[1] = v23 | 0x80;
      v24 = v23 >> 7;
      if (v23 >> 14)
      {
        v4 += 3;
        do
        {
          *(v4 - 1) = v24 | 0x80;
          v25 = v24 >> 7;
          ++v4;
          v26 = v24 >> 14;
          v24 >>= 7;
        }

        while (v26);
        *(v4 - 1) = v25;
      }

      else
      {
        v4[2] = v24;
        v4 += 3;
      }
    }

    else
    {
      v4[1] = v23;
      v4 += 2;
    }
  }

  v27 = *(a1 + 88);
  if (v27 >= 1)
  {
    v4 = sub_2769F6620(a3, 7, (a1 + 72), v27, v4, google::protobuf::io::EpsCopyOutputStream::Encode32);
  }

  if (v6)
  {
    v4 = sub_2769E1AB4(a3, 8, (*(a1 + 96) & 0xFFFFFFFFFFFFFFFELL), v4);
  }

  v28 = *(a1 + 8);
  if ((v28 & 1) == 0)
  {
    return v4;
  }

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v28 & 0xFFFFFFFFFFFFFFFELL) + 8), v4, a3, v27);
}

unsigned __int8 *sub_2769E1AB4(google::protobuf::io::EpsCopyOutputStream *a1, int a2, const void **a3, unsigned __int8 *a4)
{
  v4 = *(a3 + 23);
  if ((v4 & 0x8000000000000000) == 0 || (v4 = a3[1], v4 <= 127))
  {
    v5 = *a1;
    v6 = 8 * a2;
    if ((8 * a2) >= 0x80)
    {
      v8 = 2;
      v9 = 3;
      v10 = 4;
      if (v6 >> 28)
      {
        v10 = 5;
      }

      if (v6 >= 0x200000)
      {
        v9 = v10;
      }

      if (v6 >= 0x4000)
      {
        v8 = v9;
      }

      if ((v5 + ~&a4[v8] + 16) >= v4)
      {
        *a4 = v6 | 0x82;
        v11 = v6 >> 7;
        if (v6 >> 14)
        {
          v7 = a4 + 2;
          do
          {
            *(v7 - 1) = v11 | 0x80;
            v12 = v11 >> 7;
            ++v7;
            v13 = v11 >> 14;
            v11 >>= 7;
          }

          while (v13);
          *(v7 - 1) = v12;
        }

        else
        {
          a4[1] = v11;
          v7 = a4 + 2;
        }

LABEL_18:
        *v7 = v4;
        v14 = (v7 + 1);
        if (*(a3 + 23) >= 0)
        {
          v15 = a3;
        }

        else
        {
          v15 = *a3;
        }

        memcpy(v14, v15, v4);
        return &v14[v4];
      }
    }

    else if (v5 - a4 + 14 >= v4)
    {
      *a4 = v6 | 2;
      v7 = a4 + 1;
      goto LABEL_18;
    }
  }

  return google::protobuf::io::EpsCopyOutputStream::WriteStringMaybeAliasedOutline(a1, a2, a3, a4);
}

uint64_t sub_2769E1BE0(uint64_t a1)
{
  if ((*(a1 + 16) & 2) != 0)
  {
    v3 = sub_2769E251C(*(a1 + 104));
    v2 = v3 + ((9 * (__clz(v3 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  else
  {
    v2 = 0;
  }

  v4 = google::protobuf::internal::WireFormatLite::UInt64Size((a1 + 24));
  if (v4)
  {
    v5 = v4;
    if ((v4 & 0x80000000) != 0)
    {
      v6 = 11;
    }

    else
    {
      v6 = ((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    v2 += v6;
  }

  else
  {
    v5 = 0;
  }

  *(a1 + 40) = v5;
  v7 = v2 + v4;
  v8 = google::protobuf::internal::WireFormatLite::UInt64Size((a1 + 48));
  if (v8)
  {
    v9 = v8;
    if ((v8 & 0x80000000) != 0)
    {
      v10 = 11;
    }

    else
    {
      v10 = ((9 * (__clz(v8 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    v7 += v10;
  }

  else
  {
    v9 = 0;
  }

  *(a1 + 64) = v9;
  v11 = v7 + v8;
  v12 = google::protobuf::internal::WireFormatLite::UInt32Size((a1 + 72));
  if (v12)
  {
    v14 = v12;
    if ((v12 & 0x80000000) != 0)
    {
      v15 = 11;
    }

    else
    {
      v15 = ((9 * (__clz(v12 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    v11 += v15;
  }

  else
  {
    v14 = 0;
  }

  *(a1 + 88) = v14;
  v16 = (v11 + v12);
  v17 = *(a1 + 16);
  if (v17)
  {
    v18 = *(a1 + 96) & 0xFFFFFFFFFFFFFFFELL;
    v19 = *(v18 + 23);
    v20 = *(v18 + 8);
    if ((v19 & 0x80u) == 0)
    {
      v20 = v19;
    }

    v16 = (v16 + v20 + ((9 * (__clz(v20 | 1) ^ 0x1F) + 73) >> 6) + 1);
  }

  if ((v17 & 0x1C) != 0)
  {
    if ((v17 & 4) != 0)
    {
      v21 = *(a1 + 112);
      if (v21 < 0)
      {
        v22 = 11;
      }

      else
      {
        v22 = ((9 * (__clz(v21 | 1) ^ 0x1F) + 73) >> 6) + 1;
      }

      v16 = (v16 + v22);
      if ((v17 & 8) == 0)
      {
LABEL_29:
        if ((v17 & 0x10) == 0)
        {
          goto LABEL_43;
        }

LABEL_39:
        v25 = *(a1 + 120);
        if (v25 < 0)
        {
          v26 = 11;
        }

        else
        {
          v26 = ((9 * (__clz(v25 | 1) ^ 0x1F) + 73) >> 6) + 1;
        }

        v16 = (v16 + v26);
        goto LABEL_43;
      }
    }

    else if ((v17 & 8) == 0)
    {
      goto LABEL_29;
    }

    v23 = *(a1 + 116);
    if (v23 < 0)
    {
      v24 = 11;
    }

    else
    {
      v24 = ((9 * (__clz(v23 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    v16 = (v16 + v24);
    if ((v17 & 0x10) == 0)
    {
      goto LABEL_43;
    }

    goto LABEL_39;
  }

LABEL_43:
  if (*(a1 + 8))
  {

    return google::protobuf::internal::ComputeUnknownFieldsSize((a1 + 8), v16, (a1 + 20), v13);
  }

  else
  {
    *(a1 + 20) = v16;
    return v16;
  }
}

void sub_2769E1E48(google::protobuf::Arena **a1, char **lpsrc)
{
  v4 = **lpsrc;
  if (v5)
  {

    sub_2769E1EF0(a1, v5);
  }

  else
  {

    google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v6);
  }
}

google::protobuf::Arena **sub_2769E1EF0(google::protobuf::Arena **result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 8);
  if (v4)
  {
    result = sub_2769F63D8(result + 1, ((v4 & 0xFFFFFFFFFFFFFFFELL) + 8));
  }

  if (*(a2 + 24))
  {
    v5 = *(v3 + 6);
    google::protobuf::RepeatedField<unsigned long long>::Reserve();
  }

  if (*(a2 + 48))
  {
    v6 = *(v3 + 12);
    google::protobuf::RepeatedField<unsigned long long>::Reserve();
  }

  if (*(a2 + 72))
  {
    v7 = *(v3 + 18);
    google::protobuf::RepeatedField<unsigned int>::Reserve();
  }

  v8 = *(a2 + 16);
  if ((v8 & 0x1F) != 0)
  {
    if (v8)
    {
      v9 = *(a2 + 96);
      *(v3 + 4) |= 1u;
      v10 = v3[1];
      if (v10)
      {
        v10 = *(v10 & 0xFFFFFFFFFFFFFFFELL);
      }

      result = google::protobuf::internal::ArenaStringPtr::Set(v3 + 12, (v9 & 0xFFFFFFFFFFFFFFFELL), v10);
      if ((v8 & 2) == 0)
      {
LABEL_12:
        if ((v8 & 4) == 0)
        {
          goto LABEL_13;
        }

        goto LABEL_29;
      }
    }

    else if ((v8 & 2) == 0)
    {
      goto LABEL_12;
    }

    *(v3 + 4) |= 2u;
    v11 = v3[13];
    if (!v11)
    {
      v12 = v3[1];
      if (v12)
      {
        v12 = *(v12 & 0xFFFFFFFFFFFFFFFELL);
      }

      v11 = sub_2769F4FE8(v12);
      v3[13] = v11;
    }

    if (*(a2 + 104))
    {
      v13 = *(a2 + 104);
    }

    else
    {
      v13 = &qword_2812FC940;
    }

    result = sub_2769E0C8C(v11, v13);
    if ((v8 & 4) == 0)
    {
LABEL_13:
      if ((v8 & 8) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_30;
    }

LABEL_29:
    *(v3 + 28) = *(a2 + 112);
    if ((v8 & 8) == 0)
    {
LABEL_14:
      if ((v8 & 0x10) == 0)
      {
LABEL_16:
        *(v3 + 4) |= v8;
        return result;
      }

LABEL_15:
      *(v3 + 30) = *(a2 + 120);
      goto LABEL_16;
    }

LABEL_30:
    *(v3 + 29) = *(a2 + 116);
    if ((v8 & 0x10) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  return result;
}

void sub_2769E20D0(google::protobuf::UnknownFieldSet *a1, char **a2)
{
  if (a2 != a1)
  {
    sub_2769E128C(a1);

    sub_2769E1E48(a1, a2);
  }
}

google::protobuf::Arena **sub_2769E211C(google::protobuf::Arena **result, uint64_t a2)
{
  if (a2 != result)
  {
    v4 = result;
    sub_2769E128C(result);

    return sub_2769E1EF0(v4, a2);
  }

  return result;
}

uint64_t sub_2769E2174()
{
  google::protobuf::internal::AssignDescriptors(&unk_2812FBBF0, 0);
  result = off_2812FBC48[4];
  v1 = off_2812FBC48[5];
  return result;
}

uint64_t sub_2769E21AC(uint64_t result, uint64_t a2)
{
  *result = &unk_2885BFED0;
  *(result + 8) = a2;
  *(result + 16) = 0;
  *(result + 24) = a2;
  *(result + 36) = 0;
  return result;
}

uint64_t sub_2769E21D4(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_2885BFED0;
  *(a1 + 24) = 0;
  if (*(a2 + 16))
  {
    google::protobuf::RepeatedField<unsigned int>::Reserve();
  }

  *(a1 + 36) = 0;
  v3 = *(a2 + 8);
  if (v3)
  {
    sub_2769F63D8((a1 + 8), ((v3 & 0xFFFFFFFFFFFFFFFELL) + 8));
  }

  return a1;
}

void sub_2769E227C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 20) >= 1)
  {
    sub_276BD2B70(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2769E229C(uint64_t a1)
{
  sub_2769DEC8C((a1 + 8));
  if (*(a1 + 20) >= 1)
  {
    v2 = *(a1 + 24);
    v4 = *(v2 - 8);
    v3 = (v2 - 8);
    if (!v4)
    {
      operator delete(v3);
    }
  }

  return a1;
}

void sub_2769E22EC(uint64_t a1)
{
  sub_2769E229C(a1);

  JUMPOUT(0x277C9F670);
}

google::protobuf::internal *sub_2769E232C(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v17 = a2;
  if ((sub_2769F6104(a3, &v17, *(a3 + 92)) & 1) == 0)
  {
    while (1)
    {
      v7 = (v17 + 1);
      v8 = *v17;
      if ((*v17 & 0x80000000) == 0)
      {
        goto LABEL_5;
      }

      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if ((*v7 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v17, (v9 - 128));
      v17 = TagFallback;
      if (!TagFallback)
      {
        return 0;
      }

      v7 = TagFallback;
      v8 = v12;
LABEL_6:
      if ((v8 & 0xFFFFFFF8) == 8)
      {
        if (v8 == 10)
        {
          v10 = google::protobuf::internal::PackedUInt32Parser((a1 + 16), v7, a3, v5);
          goto LABEL_20;
        }

        if (v8 == 8)
        {
          v18 = sub_2769E000C(&v17);
          google::protobuf::RepeatedField<unsigned int>::Add();
        }
      }

      if (v8)
      {
        v13 = (v8 & 7) == 4;
      }

      else
      {
        v13 = 1;
      }

      if (v13)
      {
        *(a3 + 80) = v8 - 1;
        return v17;
      }

      v14 = *(a1 + 8);
      if (v14)
      {
        v15 = ((v14 & 0xFFFFFFFFFFFFFFFELL) + 8);
      }

      else
      {
        v15 = sub_2769F617C((a1 + 8));
        v7 = v17;
      }

      v10 = google::protobuf::internal::UnknownFieldParse(v8, v15, v7, a3, v6);
LABEL_20:
      v17 = v10;
      if (!v10)
      {
        return 0;
      }

      if (sub_2769F6104(a3, &v17, *(a3 + 92)))
      {
        return v17;
      }
    }

    v7 = (v17 + 2);
LABEL_5:
    v17 = v7;
    goto LABEL_6;
  }

  return v17;
}

const google::protobuf::UnknownFieldSet *sub_2769E248C(uint64_t a1, google::protobuf::UnknownFieldSet *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v4 = a2;
  v6 = *(a1 + 32);
  if (v6 >= 1)
  {
    v4 = sub_2769F6620(a3, 1, (a1 + 16), v6, a2, google::protobuf::io::EpsCopyOutputStream::Encode32);
  }

  v7 = *(a1 + 8);
  if ((v7 & 1) == 0)
  {
    return v4;
  }

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v7 & 0xFFFFFFFFFFFFFFFELL) + 8), v4, a3, v6);
}

uint64_t sub_2769E251C(unsigned int *a1)
{
  v2 = google::protobuf::internal::WireFormatLite::UInt32Size(a1 + 4);
  if (v2)
  {
    v4 = v2;
    if ((v2 & 0x80000000) != 0)
    {
      v5 = 11;
    }

    else
    {
      v5 = ((9 * (__clz(v2 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }
  }

  else
  {
    v4 = 0;
    v5 = 0;
  }

  a1[8] = v4;
  v6 = (v5 + v2);
  if (a1[2])
  {

    return google::protobuf::internal::ComputeUnknownFieldsSize((a1 + 2), v6, a1 + 9, v3);
  }

  else
  {
    a1[9] = v6;
    return v5 + v2;
  }
}

void sub_2769E25BC(google::protobuf::Arena **a1, char **lpsrc)
{
  v4 = **lpsrc;
  if (v5)
  {

    sub_2769E0C8C(a1, v5);
  }

  else
  {

    google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v6);
  }
}

void sub_2769E2664(uint64_t a1, char **lpsrc)
{
  if (lpsrc != a1)
  {
    v6 = *(a1 + 8);
    v5 = a1 + 8;
    *(v5 + 8) = 0;
    if (v6)
    {
      sub_2769F6424(v5);
    }

    sub_2769E25BC(a1, lpsrc);
  }
}

google::protobuf::Arena **sub_2769E26BC(google::protobuf::Arena **result, uint64_t a2)
{
  if (a2 != result)
  {
    v4 = result;
    v6 = *(result + 8);
    v5 = result + 1;
    *(v5 + 2) = 0;
    if (v6)
    {
      sub_2769F6424(v5);
    }

    return sub_2769E0C8C(v4, a2);
  }

  return result;
}

uint64_t sub_2769E271C()
{
  google::protobuf::internal::AssignDescriptors(&unk_2812FBBF0, 0);
  result = off_2812FBC48[6];
  v1 = off_2812FBC48[7];
  return result;
}

uint64_t sub_2769E2754(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_2885BFF80;
  *(a1 + 8) = a2;
  *(a1 + 32) = a2;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = a2;
  *(a1 + 72) = a2;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 96) = a2;
  *(a1 + 120) = a2;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  *(a1 + 144) = a2;
  *(a1 + 152) = 0;
  *(a1 + 160) = 0;
  *(a1 + 168) = 0;
  *(a1 + 248) = a2;
  *(a1 + 176) = a2;
  *(a1 + 192) = 0;
  *(a1 + 200) = a2;
  *(a1 + 216) = a2;
  *(a1 + 232) = 0;
  *(a1 + 240) = 0;
  *(a1 + 224) = 0;
  if (atomic_load_explicit(dword_2812FB8A0, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(dword_2812FB8A0);
  }

  *(a1 + 264) = &google::protobuf::internal::fixed_address_empty_string;
  *(a1 + 272) = &google::protobuf::internal::fixed_address_empty_string;
  *(a1 + 288) = 0;
  *(a1 + 296) = 0;
  *(a1 + 280) = 0;
  *(a1 + 304) = 0;
  return a1;
}

void sub_2769E2874(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int *a10)
{
  v27 = v17;
  if (*(v13 + 244) >= 1)
  {
    sub_276BD2A14(v19);
  }

  sub_2769F6994(v16);
  if (*(v13 + 196) >= 1)
  {
    v21 = *(v13 + 200);
    v23 = *(v21 - 8);
    v22 = (v21 - 8);
    if (!v23)
    {
      operator delete(v22);
    }
  }

  if (*(v13 + 172) >= 1)
  {
    v24 = *(v13 + 176);
    v26 = *(v24 - 8);
    v25 = (v24 - 8);
    if (!v26)
    {
      operator delete(v25);
    }
  }

  sub_2769F6B34(v18);
  sub_2769F6AB0(v15);
  sub_2769F6A2C(v14);
  sub_2769F6994(v12);
  sub_276BD2B84(v27, v10, a10, v11);
  _Unwind_Resume(a1);
}

uint64_t sub_2769E291C(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  *a1 = &unk_2885BFF80;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 36) = 0;
  *(a1 + 20) = 0;
  *(a1 + 28) = 0;
  if (*(a2 + 24))
  {
    google::protobuf::RepeatedField<unsigned int>::Reserve();
  }

  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  if (*(a2 + 48))
  {
    google::protobuf::RepeatedField<unsigned int>::Reserve();
  }

  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  v5 = *(a2 + 80);
  if (v5)
  {
    v6 = *(a2 + 88);
    v7 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((a1 + 72), *(a2 + 80));
    sub_2769F6BB8((a1 + 72), v7, (v6 + 8), v5, **(a1 + 88) - *(a1 + 80));
    v8 = *(a1 + 80) + v5;
    *(a1 + 80) = v8;
    v9 = *(a1 + 88);
    if (*v9 < v8)
    {
      *v9 = v8;
    }
  }

  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  v10 = *(a2 + 104);
  if (v10)
  {
    v11 = *(a2 + 112);
    v12 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((a1 + 96), *(a2 + 104));
    sub_2769F6C78((a1 + 96), v12, (v11 + 8), v10, **(a1 + 112) - *(a1 + 104));
    v13 = *(a1 + 104) + v10;
    *(a1 + 104) = v13;
    v14 = *(a1 + 112);
    if (*v14 < v13)
    {
      *v14 = v13;
    }
  }

  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  v15 = *(a2 + 128);
  if (v15)
  {
    v16 = *(a2 + 136);
    v17 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((a1 + 120), *(a2 + 128));
    sub_2769F6D38((a1 + 120), v17, (v16 + 8), v15, **(a1 + 136) - *(a1 + 128));
    v18 = *(a1 + 128) + v15;
    *(a1 + 128) = v18;
    v19 = *(a1 + 136);
    if (*v19 < v18)
    {
      *v19 = v18;
    }
  }

  *(a1 + 144) = 0;
  *(a1 + 152) = 0;
  *(a1 + 160) = 0;
  v20 = *(a2 + 152);
  if (v20)
  {
    v21 = *(a2 + 160);
    v22 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((a1 + 144), *(a2 + 152));
    sub_2769F6DF8((a1 + 144), v22, (v21 + 8), v20, **(a1 + 160) - *(a1 + 152));
    v23 = *(a1 + 152) + v20;
    *(a1 + 152) = v23;
    v24 = *(a1 + 160);
    if (*v24 < v23)
    {
      *v24 = v23;
    }
  }

  *(a1 + 168) = 0;
  *(a1 + 176) = 0;
  if (*(a2 + 168))
  {
    google::protobuf::RepeatedField<unsigned int>::Reserve();
  }

  *(a1 + 192) = 0;
  *(a1 + 200) = 0;
  if (*(a2 + 192))
  {
    google::protobuf::RepeatedField<unsigned int>::Reserve();
  }

  *(a1 + 216) = 0;
  *(a1 + 224) = 0;
  *(a1 + 232) = 0;
  v25 = *(a2 + 224);
  if (v25)
  {
    v26 = *(a2 + 232);
    v27 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((a1 + 216), *(a2 + 224));
    sub_2769F6BB8((a1 + 216), v27, (v26 + 8), v25, **(a1 + 232) - *(a1 + 224));
    v28 = *(a1 + 224) + v25;
    *(a1 + 224) = v28;
    v29 = *(a1 + 232);
    if (*v29 < v28)
    {
      *v29 = v28;
    }
  }

  *(a1 + 240) = 0;
  *(a1 + 248) = 0;
  if (*(a2 + 240))
  {
    google::protobuf::RepeatedField<unsigned long long>::Reserve();
  }

  v30 = *(a2 + 8);
  if (v30)
  {
    sub_2769F63D8(v4, ((v30 & 0xFFFFFFFFFFFFFFFELL) + 8));
  }

  *(a1 + 264) = &google::protobuf::internal::fixed_address_empty_string;
  v31 = *(a2 + 16);
  if (v31)
  {
    v32 = *v4;
    if (*v4)
    {
      v32 = *(v32 & 0xFFFFFFFFFFFFFFFELL);
    }

    google::protobuf::internal::ArenaStringPtr::Set((a1 + 264), (*(a2 + 264) & 0xFFFFFFFFFFFFFFFELL), v32);
    v31 = *(a2 + 16);
  }

  *(a1 + 272) = &google::protobuf::internal::fixed_address_empty_string;
  if ((v31 & 2) != 0)
  {
    v33 = *v4;
    if (*v4)
    {
      v33 = *(v33 & 0xFFFFFFFFFFFFFFFELL);
    }

    google::protobuf::internal::ArenaStringPtr::Set((a1 + 272), (*(a2 + 272) & 0xFFFFFFFFFFFFFFFELL), v33);
  }

  v34 = *(a2 + 280);
  *(a1 + 292) = *(a2 + 292);
  *(a1 + 280) = v34;
  return a1;
}

void sub_2769E2D50(_Unwind_Exception *a1)
{
  sub_2769F6994(v6);
  if (*(v1 + 196) >= 1)
  {
    v8 = *(v1 + 200);
    v10 = *(v8 - 8);
    v9 = (v8 - 8);
    if (!v10)
    {
      operator delete(v9);
    }
  }

  if (*(v1 + 172) >= 1)
  {
    v11 = *(v1 + 176);
    v13 = *(v11 - 8);
    v12 = (v11 - 8);
    if (!v13)
    {
      operator delete(v12);
    }
  }

  sub_2769F6B34(v5);
  sub_2769F6AB0(v4);
  sub_2769F6A2C(v3);
  sub_2769F6994(v2);
  if (*(v1 + 52) >= 1)
  {
    v14 = *(v1 + 56);
    v16 = *(v14 - 8);
    v15 = (v14 - 8);
    if (!v16)
    {
      operator delete(v15);
    }
  }

  if (*(v1 + 28) >= 1)
  {
    v17 = *(v1 + 32);
    v19 = *(v17 - 8);
    v18 = (v17 - 8);
    if (!v19)
    {
      operator delete(v18);
    }
  }

  _Unwind_Resume(a1);
}

uint64_t sub_2769E2E70(uint64_t a1)
{
  v2 = *(a1 + 264);
  if (v2 != &google::protobuf::internal::fixed_address_empty_string)
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    MEMORY[0x277C9F670](v2, 0x1012C40EC159624);
  }

  v3 = *(a1 + 272);
  if (v3 != &google::protobuf::internal::fixed_address_empty_string)
  {
    if (*(v3 + 23) < 0)
    {
      operator delete(*v3);
    }

    MEMORY[0x277C9F670](v3, 0x1012C40EC159624);
  }

  sub_2769DEC8C((a1 + 8));
  if (*(a1 + 244) >= 1)
  {
    v4 = *(a1 + 248);
    v6 = *(v4 - 8);
    v5 = (v4 - 8);
    if (!v6)
    {
      operator delete(v5);
    }
  }

  sub_2769F6994((a1 + 216));
  if (*(a1 + 196) >= 1)
  {
    v7 = *(a1 + 200);
    v9 = *(v7 - 8);
    v8 = (v7 - 8);
    if (!v9)
    {
      operator delete(v8);
    }
  }

  if (*(a1 + 172) >= 1)
  {
    v10 = *(a1 + 176);
    v12 = *(v10 - 8);
    v11 = (v10 - 8);
    if (!v12)
    {
      operator delete(v11);
    }
  }

  sub_2769F6B34((a1 + 144));
  sub_2769F6AB0((a1 + 120));
  sub_2769F6A2C((a1 + 96));
  sub_2769F6994((a1 + 72));
  if (*(a1 + 52) >= 1)
  {
    v13 = *(a1 + 56);
    v15 = *(v13 - 8);
    v14 = (v13 - 8);
    if (!v15)
    {
      operator delete(v14);
    }
  }

  if (*(a1 + 28) >= 1)
  {
    v16 = *(a1 + 32);
    v18 = *(v16 - 8);
    v17 = (v16 - 8);
    if (!v18)
    {
      operator delete(v17);
    }
  }

  return a1;
}

void sub_2769E2FDC(uint64_t a1)
{
  sub_2769E2E70(a1);

  JUMPOUT(0x277C9F670);
}

google::protobuf::UnknownFieldSet *sub_2769E301C(google::protobuf::UnknownFieldSet *result)
{
  v1 = result;
  *(result + 6) = 0;
  *(result + 12) = 0;
  v2 = *(result + 20);
  if (v2 >= 1)
  {
    v3 = (*(result + 11) + 8);
    do
    {
      v4 = *v3++;
      result = sub_2769E50B8(v4);
      --v2;
    }

    while (v2);
    *(v1 + 20) = 0;
  }

  v5 = *(v1 + 26);
  if (v5 >= 1)
  {
    v6 = (*(v1 + 14) + 8);
    do
    {
      v7 = *v6++;
      result = sub_2769E5F20(v7);
      --v5;
    }

    while (v5);
    *(v1 + 26) = 0;
  }

  v8 = *(v1 + 32);
  if (v8 >= 1)
  {
    v9 = (*(v1 + 17) + 8);
    do
    {
      v10 = *v9++;
      result = sub_2769E6758(v10);
      --v8;
    }

    while (v8);
    *(v1 + 32) = 0;
  }

  v11 = *(v1 + 38);
  if (v11 >= 1)
  {
    v12 = (*(v1 + 20) + 8);
    do
    {
      v13 = *v12++;
      result = sub_2769E6FF8(v13);
      --v11;
    }

    while (v11);
    *(v1 + 38) = 0;
  }

  *(v1 + 42) = 0;
  *(v1 + 48) = 0;
  v14 = *(v1 + 56);
  if (v14 >= 1)
  {
    v15 = (*(v1 + 29) + 8);
    do
    {
      v16 = *v15++;
      result = sub_2769E50B8(v16);
      --v14;
    }

    while (v14);
    *(v1 + 56) = 0;
  }

  *(v1 + 60) = 0;
  v17 = *(v1 + 4);
  if ((v17 & 3) != 0)
  {
    if (v17)
    {
      v18 = *(v1 + 33) & 0xFFFFFFFFFFFFFFFELL;
      if (*(v18 + 23) < 0)
      {
        **v18 = 0;
        *(v18 + 8) = 0;
        if ((v17 & 2) == 0)
        {
          goto LABEL_31;
        }

        goto LABEL_26;
      }

      *v18 = 0;
      *(v18 + 23) = 0;
    }

    if ((v17 & 2) == 0)
    {
      goto LABEL_31;
    }

LABEL_26:
    v19 = *(v1 + 34) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v19 + 23) < 0)
    {
      **v19 = 0;
      *(v19 + 8) = 0;
    }

    else
    {
      *v19 = 0;
      *(v19 + 23) = 0;
    }
  }

LABEL_31:
  if ((v17 & 0xFC) != 0)
  {
    *(v1 + 35) = 0;
    *(v1 + 36) = 0;
    *(v1 + 37) = 0;
  }

  v21 = *(v1 + 8);
  v20 = v1 + 8;
  *(v20 + 74) = 0;
  *(v20 + 2) = 0;
  if (v21)
  {

    return sub_2769F6424(v20);
  }

  return result;
}

google::protobuf::internal *sub_2769E31CC(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v97 = a2;
  v7 = 0;
  if ((sub_2769F6104(a3, &v97, *(a3 + 92)) & 1) == 0)
  {
    while (2)
    {
      v9 = (v97 + 1);
      v10 = *v97;
      if (*v97 < 0)
      {
        v11 = v10 + (*v9 << 7);
        v10 = v11 - 128;
        if (*v9 < 0)
        {
          TagFallback = google::protobuf::internal::ReadTagFallback(v97, (v11 - 128));
          v97 = TagFallback;
          if (!TagFallback)
          {
            goto LABEL_171;
          }

          v9 = TagFallback;
          v10 = v16;
LABEL_7:
          switch(v10 >> 3)
          {
            case 1u:
              if (v10 != 8)
              {
                goto LABEL_159;
              }

              v7 |= 4u;
              v13 = (v9 + 1);
              v12 = *v9;
              if ((v12 & 0x8000000000000000) == 0)
              {
                goto LABEL_12;
              }

              v14 = *v13;
              v12 = (v14 << 7) + v12 - 128;
              if (v14 < 0)
              {
                v84 = google::protobuf::internal::VarintParseSlow64(v9, v12);
                v97 = v84;
                *(a1 + 280) = v85;
                if (!v84)
                {
                  goto LABEL_171;
                }
              }

              else
              {
                v13 = (v9 + 2);
LABEL_12:
                v97 = v13;
                *(a1 + 280) = v12;
              }

              goto LABEL_167;
            case 2u:
              if (v10 != 18)
              {
                goto LABEL_159;
              }

              *(a1 + 16) |= 1u;
              v32 = *(a1 + 8);
              if (v32)
              {
                v32 = *(v32 & 0xFFFFFFFFFFFFFFFELL);
              }

              v33 = (a1 + 264);
              goto LABEL_70;
            case 3u:
              if (v10 != 26)
              {
                goto LABEL_159;
              }

              *(a1 + 16) |= 2u;
              v32 = *(a1 + 8);
              if (v32)
              {
                v32 = *(v32 & 0xFFFFFFFFFFFFFFFELL);
              }

              v33 = (a1 + 272);
LABEL_70:
              v43 = google::protobuf::internal::ArenaStringPtr::Mutable(v33, v32);
              v42 = google::protobuf::internal::InlineGreedyStringParser(v43, v97, a3);
              goto LABEL_166;
            case 4u:
              if (v10 == 34)
              {
                v31 = (a1 + 24);
                goto LABEL_65;
              }

              if (v10 == 32)
              {
LABEL_156:
                LODWORD(v98) = sub_2769E000C(&v97);
                google::protobuf::RepeatedField<unsigned int>::Add();
              }

              goto LABEL_159;
            case 5u:
              if (v10 == 42)
              {
                v31 = (a1 + 48);
LABEL_65:
                v42 = google::protobuf::internal::PackedUInt32Parser(v31, v9, a3, v5);
                goto LABEL_166;
              }

              if (v10 == 40)
              {
                goto LABEL_156;
              }

              goto LABEL_159;
            case 6u:
              if (v10 != 50)
              {
                goto LABEL_159;
              }

              v34 = (v9 - 1);
              while (1)
              {
                v35 = (v34 + 1);
                v97 = (v34 + 1);
                v36 = *(a1 + 88);
                if (!v36)
                {
                  break;
                }

                v41 = *(a1 + 80);
                v37 = *v36;
                if (v41 < *v36)
                {
                  *(a1 + 80) = v41 + 1;
                  v38 = *&v36[2 * v41 + 2];
                  goto LABEL_55;
                }

                if (v37 == *(a1 + 84))
                {
                  goto LABEL_51;
                }

LABEL_52:
                *v36 = v37 + 1;
                v38 = sub_2769F5108(*(a1 + 72));
                v39 = *(a1 + 80);
                v40 = *(a1 + 88) + 8 * v39;
                *(a1 + 80) = v39 + 1;
                *(v40 + 8) = v38;
                v35 = v97;
LABEL_55:
                v34 = sub_276BD19D4(a3, v38, v35);
                v97 = v34;
                if (!v34)
                {
                  goto LABEL_171;
                }

                if (*a3 <= v34 || *v34 != 50)
                {
                  goto LABEL_167;
                }
              }

              v37 = *(a1 + 84);
LABEL_51:
              google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 72), v37 + 1);
              v36 = *(a1 + 88);
              v37 = *v36;
              goto LABEL_52;
            case 7u:
              if (v10 != 58)
              {
                goto LABEL_159;
              }

              v44 = (v9 - 1);
              while (1)
              {
                v45 = (v44 + 1);
                v97 = (v44 + 1);
                v46 = *(a1 + 112);
                if (!v46)
                {
                  break;
                }

                v51 = *(a1 + 104);
                v47 = *v46;
                if (v51 < *v46)
                {
                  *(a1 + 104) = v51 + 1;
                  v48 = *&v46[2 * v51 + 2];
                  goto LABEL_79;
                }

                if (v47 == *(a1 + 108))
                {
                  goto LABEL_75;
                }

LABEL_76:
                *v46 = v47 + 1;
                v48 = sub_2769F51F4(*(a1 + 96));
                v49 = *(a1 + 104);
                v50 = *(a1 + 112) + 8 * v49;
                *(a1 + 104) = v49 + 1;
                *(v50 + 8) = v48;
                v45 = v97;
LABEL_79:
                v44 = sub_276BD1AA4(a3, v48, v45);
                v97 = v44;
                if (!v44)
                {
                  goto LABEL_171;
                }

                if (*a3 <= v44 || *v44 != 58)
                {
                  goto LABEL_167;
                }
              }

              v47 = *(a1 + 108);
LABEL_75:
              google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 96), v47 + 1);
              v46 = *(a1 + 112);
              v47 = *v46;
              goto LABEL_76;
            case 0xAu:
              if (v10 != 80)
              {
                goto LABEL_159;
              }

              v7 |= 0x10u;
              v53 = (v9 + 1);
              v52 = *v9;
              if ((v52 & 0x8000000000000000) == 0)
              {
                goto LABEL_89;
              }

              v54 = *v53;
              v52 = (v54 << 7) + v52 - 128;
              if (v54 < 0)
              {
                v86 = google::protobuf::internal::VarintParseSlow64(v9, v52);
                v97 = v86;
                *(a1 + 296) = v87 != 0;
                if (!v86)
                {
                  goto LABEL_171;
                }
              }

              else
              {
                v53 = (v9 + 2);
LABEL_89:
                v97 = v53;
                *(a1 + 296) = v52 != 0;
              }

              goto LABEL_167;
            case 0xBu:
              if (v10 != 90)
              {
                goto LABEL_159;
              }

              v69 = (v9 - 1);
              while (1)
              {
                v70 = (v69 + 1);
                v97 = (v69 + 1);
                v71 = *(a1 + 136);
                if (!v71)
                {
                  break;
                }

                v76 = *(a1 + 128);
                v72 = *v71;
                if (v76 < *v71)
                {
                  *(a1 + 128) = v76 + 1;
                  v73 = *&v71[2 * v76 + 2];
                  goto LABEL_122;
                }

                if (v72 == *(a1 + 132))
                {
                  goto LABEL_118;
                }

LABEL_119:
                *v71 = v72 + 1;
                v73 = sub_2769F5280(*(a1 + 120));
                v74 = *(a1 + 128);
                v75 = *(a1 + 136) + 8 * v74;
                *(a1 + 128) = v74 + 1;
                *(v75 + 8) = v73;
                v70 = v97;
LABEL_122:
                v69 = sub_276BD1B74(a3, v73, v70);
                v97 = v69;
                if (!v69)
                {
                  goto LABEL_171;
                }

                if (*a3 <= v69 || *v69 != 90)
                {
                  goto LABEL_167;
                }
              }

              v72 = *(a1 + 132);
LABEL_118:
              google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 120), v72 + 1);
              v71 = *(a1 + 136);
              v72 = *v71;
              goto LABEL_119;
            case 0xCu:
              if (v10 != 96)
              {
                goto LABEL_159;
              }

              v7 |= 8u;
              v67 = (v9 + 1);
              v66 = *v9;
              if ((v66 & 0x8000000000000000) == 0)
              {
                goto LABEL_113;
              }

              v68 = *v67;
              v66 = (v68 << 7) + v66 - 128;
              if (v68 < 0)
              {
                v90 = google::protobuf::internal::VarintParseSlow64(v9, v66);
                v97 = v90;
                *(a1 + 288) = v91;
                if (!v90)
                {
                  goto LABEL_171;
                }
              }

              else
              {
                v67 = (v9 + 2);
LABEL_113:
                v97 = v67;
                *(a1 + 288) = v66;
              }

              goto LABEL_167;
            case 0xDu:
              if (v10 != 106)
              {
                goto LABEL_159;
              }

              v23 = (v9 - 1);
              while (1)
              {
                v24 = (v23 + 1);
                v97 = (v23 + 1);
                v25 = *(a1 + 160);
                if (!v25)
                {
                  break;
                }

                v30 = *(a1 + 152);
                v26 = *v25;
                if (v30 < *v25)
                {
                  *(a1 + 152) = v30 + 1;
                  v27 = *&v25[2 * v30 + 2];
                  goto LABEL_33;
                }

                if (v26 == *(a1 + 156))
                {
                  goto LABEL_29;
                }

LABEL_30:
                *v25 = v26 + 1;
                v27 = sub_2769F534C(*(a1 + 144));
                v28 = *(a1 + 152);
                v29 = *(a1 + 160) + 8 * v28;
                *(a1 + 152) = v28 + 1;
                *(v29 + 8) = v27;
                v24 = v97;
LABEL_33:
                v23 = sub_276BD1C44(a3, v27, v24);
                v97 = v23;
                if (!v23)
                {
                  goto LABEL_171;
                }

                if (*a3 <= v23 || *v23 != 106)
                {
                  goto LABEL_167;
                }
              }

              v26 = *(a1 + 156);
LABEL_29:
              google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 144), v26 + 1);
              v25 = *(a1 + 160);
              v26 = *v25;
              goto LABEL_30;
            case 0xEu:
              if (v10 == 114)
              {
                v31 = (a1 + 168);
                goto LABEL_65;
              }

              if (v10 == 112)
              {
                goto LABEL_156;
              }

              goto LABEL_159;
            case 0xFu:
              if (v10 == 122)
              {
                v31 = (a1 + 192);
                goto LABEL_65;
              }

              if (v10 == 120)
              {
                goto LABEL_156;
              }

              goto LABEL_159;
            case 0x10u:
              if (v10 != 128)
              {
                goto LABEL_159;
              }

              v7 |= 0x80u;
              v20 = (v9 + 1);
              LODWORD(v21) = *v9;
              if ((*v9 & 0x80000000) == 0)
              {
                goto LABEL_24;
              }

              v22 = *v20;
              v21 = (v21 + (v22 << 7) - 128);
              if (v22 < 0)
              {
                v82 = google::protobuf::internal::VarintParseSlow32(v9, v21);
                v97 = v82;
                *(a1 + 300) = v83;
                if (!v82)
                {
                  goto LABEL_171;
                }
              }

              else
              {
                v20 = (v9 + 2);
LABEL_24:
                v97 = v20;
                *(a1 + 300) = v21;
              }

              goto LABEL_167;
            case 0x11u:
              if (v10 != 136)
              {
                goto LABEL_159;
              }

              v7 |= 0x20u;
              v56 = (v9 + 1);
              v55 = *v9;
              if ((v55 & 0x8000000000000000) == 0)
              {
                goto LABEL_94;
              }

              v57 = *v56;
              v55 = (v57 << 7) + v55 - 128;
              if (v57 < 0)
              {
                v88 = google::protobuf::internal::VarintParseSlow64(v9, v55);
                v97 = v88;
                *(a1 + 297) = v89 != 0;
                if (!v88)
                {
                  goto LABEL_171;
                }
              }

              else
              {
                v56 = (v9 + 2);
LABEL_94:
                v97 = v56;
                *(a1 + 297) = v55 != 0;
              }

              goto LABEL_167;
            case 0x12u:
              if (v10 != 146)
              {
                goto LABEL_159;
              }

              v58 = (v9 - 2);
              break;
            case 0x13u:
              if (v10 != 152)
              {
                goto LABEL_159;
              }

              v7 |= 0x40u;
              v78 = (v9 + 1);
              v77 = *v9;
              if ((v77 & 0x8000000000000000) == 0)
              {
                goto LABEL_134;
              }

              v79 = *v78;
              v77 = (v79 << 7) + v77 - 128;
              if (v79 < 0)
              {
                v92 = google::protobuf::internal::VarintParseSlow64(v9, v77);
                v97 = v92;
                *(a1 + 298) = v93 != 0;
                if (!v92)
                {
                  goto LABEL_171;
                }
              }

              else
              {
                v78 = (v9 + 2);
LABEL_134:
                v97 = v78;
                *(a1 + 298) = v77 != 0;
              }

              goto LABEL_167;
            case 0x14u:
              if (v10 == 162)
              {
                v42 = google::protobuf::internal::PackedUInt64Parser((a1 + 240), v9, a3, v5);
              }

              else
              {
                if (v10 == 160)
                {
                  v98 = sub_2769DF0C0(&v97);
                  google::protobuf::RepeatedField<unsigned long long>::Add();
                }

LABEL_159:
                if (v10)
                {
                  v94 = (v10 & 7) == 4;
                }

                else
                {
                  v94 = 1;
                }

                if (v94)
                {
                  *(a3 + 80) = v10 - 1;
                  goto LABEL_2;
                }

                v95 = *(a1 + 8);
                if (v95)
                {
                  v96 = ((v95 & 0xFFFFFFFFFFFFFFFELL) + 8);
                }

                else
                {
                  v96 = sub_2769F617C((a1 + 8));
                  v9 = v97;
                }

                v42 = google::protobuf::internal::UnknownFieldParse(v10, v96, v9, a3, v6);
              }

LABEL_166:
              v97 = v42;
              if (!v42)
              {
LABEL_171:
                v97 = 0;
                goto LABEL_2;
              }

LABEL_167:
              if (sub_2769F6104(a3, &v97, *(a3 + 92)))
              {
                goto LABEL_2;
              }

              continue;
            case 0x15u:
              if (v10 != 168)
              {
                goto LABEL_159;
              }

              v7 |= 0x100u;
              v17 = (v9 + 1);
              LODWORD(v18) = *v9;
              if ((*v9 & 0x80000000) == 0)
              {
                goto LABEL_19;
              }

              v19 = *v17;
              v18 = (v18 + (v19 << 7) - 128);
              if (v19 < 0)
              {
                v80 = google::protobuf::internal::VarintParseSlow32(v9, v18);
                v97 = v80;
                *(a1 + 304) = v81;
                if (!v80)
                {
                  goto LABEL_171;
                }
              }

              else
              {
                v17 = (v9 + 2);
LABEL_19:
                v97 = v17;
                *(a1 + 304) = v18;
              }

              goto LABEL_167;
            default:
              goto LABEL_159;
          }

          while (1)
          {
            v59 = (v58 + 2);
            v97 = (v58 + 2);
            v60 = *(a1 + 232);
            if (!v60)
            {
              break;
            }

            v65 = *(a1 + 224);
            v61 = *v60;
            if (v65 < *v60)
            {
              *(a1 + 224) = v65 + 1;
              v62 = *&v60[2 * v65 + 2];
              goto LABEL_103;
            }

            if (v61 == *(a1 + 228))
            {
              goto LABEL_99;
            }

LABEL_100:
            *v60 = v61 + 1;
            v62 = sub_2769F5108(*(a1 + 216));
            v63 = *(a1 + 224);
            v64 = *(a1 + 232) + 8 * v63;
            *(a1 + 224) = v63 + 1;
            *(v64 + 8) = v62;
            v59 = v97;
LABEL_103:
            v58 = sub_276BD19D4(a3, v62, v59);
            v97 = v58;
            if (!v58)
            {
              goto LABEL_171;
            }

            if (*a3 <= v58 || *v58 != 402)
            {
              goto LABEL_167;
            }
          }

          v61 = *(a1 + 228);
LABEL_99:
          google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 216), v61 + 1);
          v60 = *(a1 + 232);
          v61 = *v60;
          goto LABEL_100;
        }

        v9 = (v97 + 2);
      }

      break;
    }

    v97 = v9;
    goto LABEL_7;
  }

LABEL_2:
  *(a1 + 16) |= v7;
  return v97;
}

const google::protobuf::UnknownFieldSet *sub_2769E3BA4(uint64_t a1, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v4 = a2;
  v6 = *(a1 + 16);
  if ((v6 & 4) != 0)
  {
    if (*a3 <= a2)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v35 = *(a1 + 280);
    *v4 = 8;
    if (v35 > 0x7F)
    {
      v4[1] = v35 | 0x80;
      v37 = v35 >> 7;
      if (v35 >> 14)
      {
        v4 += 3;
        do
        {
          *(v4 - 1) = v37 | 0x80;
          v65 = v37 >> 7;
          ++v4;
          v66 = v37 >> 14;
          v37 >>= 7;
        }

        while (v66);
        *(v4 - 1) = v65;
        if (v6)
        {
          goto LABEL_123;
        }
      }

      else
      {
        v4[2] = v37;
        v4 += 3;
        if (v6)
        {
          goto LABEL_123;
        }
      }
    }

    else
    {
      v4[1] = v35;
      v4 += 2;
      if (v6)
      {
        goto LABEL_123;
      }
    }

LABEL_3:
    if ((v6 & 2) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  if ((v6 & 1) == 0)
  {
    goto LABEL_3;
  }

LABEL_123:
  v4 = sub_2769E1AB4(a3, 2, (*(a1 + 264) & 0xFFFFFFFFFFFFFFFELL), v4);
  if ((v6 & 2) != 0)
  {
LABEL_4:
    v4 = sub_2769E1AB4(a3, 3, (*(a1 + 272) & 0xFFFFFFFFFFFFFFFELL), v4);
  }

LABEL_5:
  v7 = *(a1 + 40);
  if (v7 >= 1)
  {
    v4 = sub_2769F6620(a3, 4, (a1 + 24), v7, v4, google::protobuf::io::EpsCopyOutputStream::Encode32);
  }

  v8 = *(a1 + 64);
  if (v8 >= 1)
  {
    v4 = sub_2769F6620(a3, 5, (a1 + 48), v8, v4, google::protobuf::io::EpsCopyOutputStream::Encode32);
  }

  v9 = *(a1 + 80);
  if (v9)
  {
    for (i = 0; i != v9; ++i)
    {
      if (*a3 <= v4)
      {
        v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
      }

      v11 = *(*(a1 + 88) + 8 * i + 8);
      *v4 = 50;
      v12 = *(v11 + 20);
      if (v12 > 0x7F)
      {
        v4[1] = v12 | 0x80;
        v14 = v12 >> 7;
        if (v12 >> 14)
        {
          v13 = v4 + 3;
          do
          {
            *(v13 - 1) = v14 | 0x80;
            v15 = v14 >> 7;
            ++v13;
            v16 = v14 >> 14;
            v14 >>= 7;
          }

          while (v16);
          *(v13 - 1) = v15;
        }

        else
        {
          v4[2] = v14;
          v13 = v4 + 3;
        }
      }

      else
      {
        v4[1] = v12;
        v13 = v4 + 2;
      }

      v4 = sub_2769E533C(v11, v13, a3, v8);
    }
  }

  v17 = *(a1 + 104);
  if (v17)
  {
    for (j = 0; j != v17; ++j)
    {
      if (*a3 <= v4)
      {
        v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
      }

      v19 = *(*(a1 + 112) + 8 * j + 8);
      *v4 = 58;
      v20 = *(v19 + 20);
      if (v20 > 0x7F)
      {
        v4[1] = v20 | 0x80;
        v22 = v20 >> 7;
        if (v20 >> 14)
        {
          v21 = v4 + 3;
          do
          {
            *(v21 - 1) = v22 | 0x80;
            v23 = v22 >> 7;
            ++v21;
            v24 = v22 >> 14;
            v22 >>= 7;
          }

          while (v24);
          *(v21 - 1) = v23;
        }

        else
        {
          v4[2] = v22;
          v21 = v4 + 3;
        }
      }

      else
      {
        v4[1] = v20;
        v21 = v4 + 2;
      }

      v4 = sub_2769E61FC(v19, v21, a3, v8);
    }
  }

  if ((v6 & 0x10) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v25 = *(a1 + 296);
    *v4 = 80;
    v4[1] = v25;
    v4 += 2;
  }

  v26 = *(a1 + 128);
  if (v26)
  {
    for (k = 0; k != v26; ++k)
    {
      if (*a3 <= v4)
      {
        v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
      }

      v28 = *(*(a1 + 136) + 8 * k + 8);
      *v4 = 90;
      v29 = *(v28 + 20);
      if (v29 > 0x7F)
      {
        v4[1] = v29 | 0x80;
        v31 = v29 >> 7;
        if (v29 >> 14)
        {
          v30 = v4 + 3;
          do
          {
            *(v30 - 1) = v31 | 0x80;
            v32 = v31 >> 7;
            ++v30;
            v33 = v31 >> 14;
            v31 >>= 7;
          }

          while (v33);
          *(v30 - 1) = v32;
        }

        else
        {
          v4[2] = v31;
          v30 = v4 + 3;
        }
      }

      else
      {
        v4[1] = v29;
        v30 = v4 + 2;
      }

      v4 = sub_2769E6994(v28, v30, a3, v8);
    }
  }

  if ((v6 & 8) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v34 = *(a1 + 288);
    *v4 = 96;
    if (v34 > 0x7F)
    {
      v4[1] = v34 | 0x80;
      v36 = v34 >> 7;
      if (v34 >> 14)
      {
        v4 += 3;
        do
        {
          *(v4 - 1) = v36 | 0x80;
          v38 = v36 >> 7;
          ++v4;
          v39 = v36 >> 14;
          v36 >>= 7;
        }

        while (v39);
        *(v4 - 1) = v38;
      }

      else
      {
        v4[2] = v36;
        v4 += 3;
      }
    }

    else
    {
      v4[1] = v34;
      v4 += 2;
    }
  }

  v40 = *(a1 + 152);
  if (v40)
  {
    for (m = 0; m != v40; ++m)
    {
      if (*a3 <= v4)
      {
        v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
      }

      v42 = *(*(a1 + 160) + 8 * m + 8);
      *v4 = 106;
      v43 = *(v42 + 20);
      if (v43 > 0x7F)
      {
        v4[1] = v43 | 0x80;
        v45 = v43 >> 7;
        if (v43 >> 14)
        {
          v44 = v4 + 3;
          do
          {
            *(v44 - 1) = v45 | 0x80;
            v46 = v45 >> 7;
            ++v44;
            v47 = v45 >> 14;
            v45 >>= 7;
          }

          while (v47);
          *(v44 - 1) = v46;
        }

        else
        {
          v4[2] = v45;
          v44 = v4 + 3;
        }
      }

      else
      {
        v4[1] = v43;
        v44 = v4 + 2;
      }

      v4 = sub_2769E7218(v42, v44, a3);
    }
  }

  v48 = *(a1 + 184);
  if (v48 > 0)
  {
    v4 = sub_2769F6620(a3, 14, (a1 + 168), v48, v4, google::protobuf::io::EpsCopyOutputStream::Encode32);
  }

  v49 = *(a1 + 208);
  if (v49 >= 1)
  {
    v4 = sub_2769F6620(a3, 15, (a1 + 192), v49, v4, google::protobuf::io::EpsCopyOutputStream::Encode32);
  }

  if ((v6 & 0x80) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v50 = *(a1 + 300);
    *v4 = 384;
    if (v50 <= 0x7F)
    {
      v4[2] = v50;
      v4 += 3;
      if ((v6 & 0x20) == 0)
      {
        goto LABEL_95;
      }

      goto LABEL_92;
    }

    v4[2] = v50 | 0x80;
    v51 = v50 >> 7;
    if (v50 >> 14)
    {
      v4 += 4;
      do
      {
        *(v4 - 1) = v51 | 0x80;
        v67 = v51 >> 7;
        ++v4;
        v68 = v51 >> 14;
        v51 >>= 7;
      }

      while (v68);
      *(v4 - 1) = v67;
      if ((v6 & 0x20) == 0)
      {
        goto LABEL_95;
      }

      goto LABEL_92;
    }

    v4[3] = v51;
    v4 += 4;
  }

  if ((v6 & 0x20) == 0)
  {
    goto LABEL_95;
  }

LABEL_92:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v52 = *(a1 + 297);
  *v4 = 392;
  v4[2] = v52;
  v4 += 3;
LABEL_95:
  v53 = *(a1 + 224);
  if (v53)
  {
    for (n = 0; n != v53; ++n)
    {
      if (*a3 <= v4)
      {
        v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
      }

      v55 = *(*(a1 + 232) + 8 * n + 8);
      *v4 = 402;
      v56 = *(v55 + 20);
      if (v56 > 0x7F)
      {
        v4[2] = v56 | 0x80;
        v58 = v56 >> 7;
        if (v56 >> 14)
        {
          v57 = v4 + 4;
          do
          {
            *(v57 - 1) = v58 | 0x80;
            v59 = v58 >> 7;
            ++v57;
            v60 = v58 >> 14;
            v58 >>= 7;
          }

          while (v60);
          *(v57 - 1) = v59;
        }

        else
        {
          v4[3] = v58;
          v57 = v4 + 4;
        }
      }

      else
      {
        v4[2] = v56;
        v57 = v4 + 3;
      }

      v4 = sub_2769E533C(v55, v57, a3, v49);
    }
  }

  if ((v6 & 0x40) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v61 = *(a1 + 298);
    *v4 = 408;
    v4[2] = v61;
    v4 += 3;
  }

  v62 = *(a1 + 256);
  if (v62 >= 1)
  {
    v4 = sub_2769F67C4(a3, 20, (a1 + 240), v62, v4, google::protobuf::io::EpsCopyOutputStream::Encode64);
  }

  if ((v6 & 0x100) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v63 = *(a1 + 304);
    *v4 = 424;
    if (v63 > 0x7F)
    {
      v4[2] = v63 | 0x80;
      v64 = v63 >> 7;
      if (v63 >> 14)
      {
        v4 += 4;
        do
        {
          *(v4 - 1) = v64 | 0x80;
          v69 = v64 >> 7;
          ++v4;
          v70 = v64 >> 14;
          v64 >>= 7;
        }

        while (v70);
        *(v4 - 1) = v69;
      }

      else
      {
        v4[3] = v64;
        v4 += 4;
      }
    }

    else
    {
      v4[2] = v63;
      v4 += 3;
    }
  }

  v71 = *(a1 + 8);
  if ((v71 & 1) == 0)
  {
    return v4;
  }

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v71 & 0xFFFFFFFFFFFFFFFELL) + 8), v4, a3, v62);
}

uint64_t sub_2769E43CC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if ((v1 & 1) == 0)
  {
    v2 = 0;
    if ((v1 & 4) == 0)
    {
      return v2;
    }

    goto LABEL_7;
  }

  v3 = *(a1 + 264) & 0xFFFFFFFFFFFFFFFELL;
  v4 = *(v3 + 23);
  v5 = *(v3 + 8);
  if ((v4 & 0x80u) == 0)
  {
    v5 = v4;
  }

  v2 = v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v1 & 4) != 0)
  {
LABEL_7:
    v2 += ((9 * (__clz(*(a1 + 280) | 1) ^ 0x3F) + 73) >> 6) + 1;
  }

  return v2;
}

uint64_t sub_2769E4448(uint64_t a1)
{
  if ((~*(a1 + 16) & 5) != 0)
  {
    v5 = sub_2769E43CC(a1);
  }

  else
  {
    v2 = *(a1 + 264) & 0xFFFFFFFFFFFFFFFELL;
    v3 = *(v2 + 23);
    v4 = *(v2 + 8);
    if ((v3 & 0x80u) == 0)
    {
      v4 = v3;
    }

    v5 = v4 + ((9 * (__clz(*(a1 + 280) | 1) ^ 0x3F) + 73) >> 6) + ((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

  v6 = google::protobuf::internal::WireFormatLite::UInt32Size((a1 + 24));
  v7 = 11;
  v8 = ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if (v6 >= 0)
  {
    v7 = v8;
  }

  v9 = v7 + v5;
  if (v6)
  {
    v10 = v6;
  }

  else
  {
    v10 = 0;
  }

  if (!v6)
  {
    v9 = v5;
  }

  *(a1 + 40) = v10;
  v11 = v9 + v6;
  v12 = google::protobuf::internal::WireFormatLite::UInt32Size((a1 + 48));
  v16 = 11;
  v17 = ((9 * (__clz(v12 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if (v12 >= 0)
  {
    v16 = v17;
  }

  v18 = v16 + v11;
  if (v12)
  {
    v19 = v12;
  }

  else
  {
    v19 = 0;
  }

  if (!v12)
  {
    v18 = v11;
  }

  *(a1 + 64) = v19;
  v20 = v18 + v12;
  v21 = *(a1 + 80);
  v22 = v20 + v21;
  v23 = *(a1 + 88);
  if (v23)
  {
    v24 = (v23 + 8);
  }

  else
  {
    v24 = 0;
  }

  if (v21)
  {
    v25 = 8 * v21;
    do
    {
      v26 = *v24++;
      v27 = sub_2769E54FC(v26, v13, v14, v15);
      v22 += v27 + ((9 * (__clz(v27 | 1) ^ 0x1F) + 73) >> 6);
      v25 -= 8;
    }

    while (v25);
  }

  v28 = *(a1 + 104);
  v29 = v22 + v28;
  v30 = *(a1 + 112);
  if (v30)
  {
    v31 = (v30 + 8);
  }

  else
  {
    v31 = 0;
  }

  if (v28)
  {
    v32 = 8 * v28;
    do
    {
      v33 = *v31++;
      v34 = sub_2769E63A8(v33, v13, v14, v15);
      v29 += v34 + ((9 * (__clz(v34 | 1) ^ 0x1F) + 73) >> 6);
      v32 -= 8;
    }

    while (v32);
  }

  v35 = *(a1 + 128);
  v36 = v29 + v35;
  v37 = *(a1 + 136);
  if (v37)
  {
    v38 = (v37 + 8);
  }

  else
  {
    v38 = 0;
  }

  if (v35)
  {
    v39 = 8 * v35;
    do
    {
      v40 = *v38++;
      v41 = sub_2769E6BA0(v40, v13, v14, v15);
      v36 += v41 + ((9 * (__clz(v41 | 1) ^ 0x1F) + 73) >> 6);
      v39 -= 8;
    }

    while (v39);
  }

  v42 = *(a1 + 152);
  v43 = v36 + v42;
  v44 = *(a1 + 160);
  if (v44)
  {
    v45 = (v44 + 8);
  }

  else
  {
    v45 = 0;
  }

  if (v42)
  {
    v46 = 8 * v42;
    do
    {
      v47 = *v45++;
      v48 = sub_2769E72FC(v47);
      v43 += v48 + ((9 * (__clz(v48 | 1) ^ 0x1F) + 73) >> 6);
      v46 -= 8;
    }

    while (v46);
  }

  v49 = google::protobuf::internal::WireFormatLite::UInt32Size((a1 + 168));
  v50 = 11;
  v51 = ((9 * (__clz(v49 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if (v49 >= 0)
  {
    v50 = v51;
  }

  v52 = v50 + v43;
  if (v49)
  {
    v53 = v49;
  }

  else
  {
    v53 = 0;
  }

  if (!v49)
  {
    v52 = v43;
  }

  *(a1 + 184) = v53;
  v54 = v52 + v49;
  v55 = google::protobuf::internal::WireFormatLite::UInt32Size((a1 + 192));
  v59 = 11;
  v60 = ((9 * (__clz(v55 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if (v55 >= 0)
  {
    v59 = v60;
  }

  v61 = v59 + v54;
  if (v55)
  {
    v62 = v55;
  }

  else
  {
    v62 = 0;
  }

  if (!v55)
  {
    v61 = v54;
  }

  *(a1 + 208) = v62;
  v63 = v61 + v55;
  v64 = *(a1 + 224);
  v65 = v63 + 2 * v64;
  v66 = *(a1 + 232);
  if (v66)
  {
    v67 = (v66 + 8);
  }

  else
  {
    v67 = 0;
  }

  if (v64)
  {
    v68 = 8 * v64;
    do
    {
      v69 = *v67++;
      v70 = sub_2769E54FC(v69, v56, v57, v58);
      v65 += v70 + ((9 * (__clz(v70 | 1) ^ 0x1F) + 73) >> 6);
      v68 -= 8;
    }

    while (v68);
  }

  v71 = google::protobuf::internal::WireFormatLite::UInt64Size((a1 + 240));
  v73 = 12;
  v74 = ((9 * (__clz(v71 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if (v71 >= 0)
  {
    v73 = v74;
  }

  v75 = v73 + v65;
  if (v71)
  {
    v76 = v71;
  }

  else
  {
    v76 = 0;
  }

  if (!v71)
  {
    v75 = v65;
  }

  *(a1 + 256) = v76;
  v77 = (v75 + v71);
  v78 = *(a1 + 16);
  if ((v78 & 2) != 0)
  {
    v79 = *(a1 + 272) & 0xFFFFFFFFFFFFFFFELL;
    v80 = *(v79 + 23);
    v81 = *(v79 + 8);
    if ((v80 & 0x80u) == 0)
    {
      v81 = v80;
    }

    v77 = (v77 + v81 + ((9 * (__clz(v81 | 1) ^ 0x1F) + 73) >> 6) + 1);
  }

  if ((v78 & 0xF8) != 0)
  {
    if ((v78 & 8) != 0)
    {
      v77 = (v77 + ((9 * (__clz(*(a1 + 288) | 1) ^ 0x3F) + 73) >> 6) + 1);
    }

    v82 = v77 + ((v78 >> 3) & 2);
    if ((v78 & 0x20) != 0)
    {
      v82 += 3;
    }

    if ((v78 & 0x40) != 0)
    {
      v77 = (v82 + 3);
    }

    else
    {
      v77 = v82;
    }

    if ((v78 & 0x80) != 0)
    {
      v77 = (v77 + ((9 * (__clz(*(a1 + 300) | 1) ^ 0x1F) + 73) >> 6) + 2);
    }
  }

  if ((v78 & 0x100) != 0)
  {
    v77 = (v77 + ((9 * (__clz(*(a1 + 304) | 1) ^ 0x1F) + 73) >> 6) + 2);
  }

  if (*(a1 + 8))
  {

    return google::protobuf::internal::ComputeUnknownFieldsSize((a1 + 8), v77, (a1 + 20), v72);
  }

  else
  {
    *(a1 + 20) = v77;
    return v77;
  }
}

void sub_2769E4900(google::protobuf::Arena **a1, char **lpsrc)
{
  v4 = **lpsrc;
  if (v5)
  {

    sub_2769E49A8(a1, v5);
  }

  else
  {

    google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v6);
  }
}

google::protobuf::Arena **sub_2769E49A8(google::protobuf::Arena **result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 8);
  if (v4)
  {
    result = sub_2769F63D8(result + 1, ((v4 & 0xFFFFFFFFFFFFFFFELL) + 8));
  }

  if (*(a2 + 24))
  {
    v5 = *(v3 + 6);
    google::protobuf::RepeatedField<unsigned int>::Reserve();
  }

  if (*(a2 + 48))
  {
    v6 = *(v3 + 12);
    google::protobuf::RepeatedField<unsigned int>::Reserve();
  }

  v7 = *(a2 + 80);
  if (v7)
  {
    v8 = *(a2 + 88);
    v9 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((v3 + 9), *(a2 + 80));
    result = sub_2769F6BB8(v3 + 9, v9, (v8 + 8), v7, *v3[11] - *(v3 + 20));
    v10 = *(v3 + 20) + v7;
    *(v3 + 20) = v10;
    v11 = v3[11];
    if (*v11 < v10)
    {
      *v11 = v10;
    }
  }

  v12 = *(a2 + 104);
  if (v12)
  {
    v13 = *(a2 + 112);
    v14 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((v3 + 12), *(a2 + 104));
    result = sub_2769F6C78(v3 + 12, v14, (v13 + 8), v12, *v3[14] - *(v3 + 26));
    v15 = *(v3 + 26) + v12;
    *(v3 + 26) = v15;
    v16 = v3[14];
    if (*v16 < v15)
    {
      *v16 = v15;
    }
  }

  v17 = *(a2 + 128);
  if (v17)
  {
    v18 = *(a2 + 136);
    v19 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((v3 + 15), *(a2 + 128));
    result = sub_2769F6D38(v3 + 15, v19, (v18 + 8), v17, *v3[17] - *(v3 + 32));
    v20 = *(v3 + 32) + v17;
    *(v3 + 32) = v20;
    v21 = v3[17];
    if (*v21 < v20)
    {
      *v21 = v20;
    }
  }

  v22 = *(a2 + 152);
  if (v22)
  {
    v23 = *(a2 + 160);
    v24 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((v3 + 18), *(a2 + 152));
    result = sub_2769F6DF8(v3 + 18, v24, (v23 + 8), v22, *v3[20] - *(v3 + 38));
    v25 = *(v3 + 38) + v22;
    *(v3 + 38) = v25;
    v26 = v3[20];
    if (*v26 < v25)
    {
      *v26 = v25;
    }
  }

  if (*(a2 + 168))
  {
    v27 = *(v3 + 42);
    google::protobuf::RepeatedField<unsigned int>::Reserve();
  }

  if (*(a2 + 192))
  {
    v28 = *(v3 + 48);
    google::protobuf::RepeatedField<unsigned int>::Reserve();
  }

  v29 = *(a2 + 224);
  if (v29)
  {
    v30 = *(a2 + 232);
    v31 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((v3 + 27), *(a2 + 224));
    result = sub_2769F6BB8(v3 + 27, v31, (v30 + 8), v29, *v3[29] - *(v3 + 56));
    v32 = *(v3 + 56) + v29;
    *(v3 + 56) = v32;
    v33 = v3[29];
    if (*v33 < v32)
    {
      *v33 = v32;
    }
  }

  if (*(a2 + 240))
  {
    v34 = *(v3 + 60);
    google::protobuf::RepeatedField<unsigned long long>::Reserve();
  }

  v35 = *(a2 + 16);
  if (v35)
  {
    if (v35)
    {
      v37 = *(a2 + 264);
      *(v3 + 4) |= 1u;
      v38 = v3[1];
      if (v38)
      {
        v38 = *(v38 & 0xFFFFFFFFFFFFFFFELL);
      }

      result = google::protobuf::internal::ArenaStringPtr::Set(v3 + 33, (v37 & 0xFFFFFFFFFFFFFFFELL), v38);
      if ((v35 & 2) == 0)
      {
LABEL_31:
        if ((v35 & 4) == 0)
        {
          goto LABEL_32;
        }

        goto LABEL_48;
      }
    }

    else if ((v35 & 2) == 0)
    {
      goto LABEL_31;
    }

    v39 = *(a2 + 272);
    *(v3 + 4) |= 2u;
    v40 = v3[1];
    if (v40)
    {
      v40 = *(v40 & 0xFFFFFFFFFFFFFFFELL);
    }

    result = google::protobuf::internal::ArenaStringPtr::Set(v3 + 34, (v39 & 0xFFFFFFFFFFFFFFFELL), v40);
    if ((v35 & 4) == 0)
    {
LABEL_32:
      if ((v35 & 8) == 0)
      {
        goto LABEL_33;
      }

      goto LABEL_49;
    }

LABEL_48:
    v3[35] = *(a2 + 280);
    if ((v35 & 8) == 0)
    {
LABEL_33:
      if ((v35 & 0x10) == 0)
      {
        goto LABEL_34;
      }

      goto LABEL_50;
    }

LABEL_49:
    v3[36] = *(a2 + 288);
    if ((v35 & 0x10) == 0)
    {
LABEL_34:
      if ((v35 & 0x20) == 0)
      {
        goto LABEL_35;
      }

      goto LABEL_51;
    }

LABEL_50:
    *(v3 + 296) = *(a2 + 296);
    if ((v35 & 0x20) == 0)
    {
LABEL_35:
      if ((v35 & 0x40) == 0)
      {
        goto LABEL_36;
      }

      goto LABEL_52;
    }

LABEL_51:
    *(v3 + 297) = *(a2 + 297);
    if ((v35 & 0x40) == 0)
    {
LABEL_36:
      if ((v35 & 0x80) == 0)
      {
LABEL_38:
        *(v3 + 4) |= v35;
        goto LABEL_39;
      }

LABEL_37:
      *(v3 + 75) = *(a2 + 300);
      goto LABEL_38;
    }

LABEL_52:
    *(v3 + 298) = *(a2 + 298);
    if ((v35 & 0x80) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_37;
  }

LABEL_39:
  if ((v35 & 0x100) != 0)
  {
    v36 = *(a2 + 304);
    *(v3 + 4) |= 0x100u;
    *(v3 + 76) = v36;
  }

  return result;
}