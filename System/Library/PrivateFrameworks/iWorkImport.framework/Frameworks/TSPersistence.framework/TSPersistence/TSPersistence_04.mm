void sub_2769FD638(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

void sub_2769FD86C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);

  _Block_object_dispose(va, 8);
  _Block_object_dispose((v16 - 96), 8);

  _Unwind_Resume(a1);
}

uint64_t sub_2769FD8B4(uint64_t a1)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), *(*(a1 + 32) + 24));
  result = objc_msgSend_p_isMaterialized(*(a1 + 32), v2, v3);
  *(*(*(a1 + 48) + 8) + 24) = result;
  return result;
}

void sub_2769FE154(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, void *a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, id a31, char a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, id a37)
{
  _Block_object_dispose(&a26, 8);

  _Block_object_dispose(&a32, 8);
  _Block_object_dispose((v43 - 216), 8);
  _Block_object_dispose((v43 - 184), 8);

  _Block_object_dispose((v43 - 136), 8);
  _Unwind_Resume(a1);
}

void sub_2769FE270(void *a1)
{
  objc_storeStrong((*(a1[5] + 8) + 40), *(a1[4] + 24));
  v4 = objc_msgSend_copy(*(a1[4] + 40), v2, v3);
  v5 = *(a1[6] + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  objc_storeStrong((*(a1[7] + 8) + 40), *(a1[4] + 48));
  *(*(a1[8] + 8) + 24) = *(a1[4] + 32);
  v7 = *(a1[4] + 64);
  v8 = (*(a1[9] + 8) + 40);

  objc_storeStrong(v8, v7);
}

void sub_2769FE33C()
{
  v0 = TSULogCreateCategory();
  v1 = UnsafePointer;
  UnsafePointer = v0;
}

void sub_2769FE380()
{
  v0 = TSULogCreateCategory();
  v1 = UnsafePointer;
  UnsafePointer = v0;
}

void sub_2769FE474(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 32);
  v4 = *(a1 + 48);
  if (v3 < v4)
  {
    v15 = *(a1 + 48);
    v14 = *(v2 + 32);
    TSUSetCrashReporterInfo();
    v7 = MEMORY[0x277D81150];
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "[TSPRemoteDataStorage didSaveWithChangeCount:packageDataStorage:]_block_invoke", "[TSPRemoteDataStorage didSaveWithChangeCount:packageDataStorage:]_block_invoke", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPRemoteDataStorage.mm", 799, v14, v15);
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPRemoteDataStorage.mm");
    v12 = *(*(a1 + 32) + 32);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v13, v9, v11, 799, 1, "something terrible happened, _changeCount will underflow.  _changeCount=%lu, changeCount=%lu", v12, *(a1 + 48));

    TSUCrashBreakpoint();
    abort();
  }

  *(v2 + 32) = v3 - v4;
  objc_storeStrong((*(a1 + 32) + 48), *(a1 + 40));
  v5 = *(a1 + 32);
  if (!*(v5 + 32))
  {
    v6 = *(v5 + 24);
    *(v5 + 24) = 0;
  }
}

void sub_2769FE8CC(uint64_t a1)
{
  if (sub_276A7BCD0(*(*(a1 + 32) + 56)))
  {
    v2 = *(a1 + 32);
    v3 = v2[6];
    if (!v3 || v2[4])
    {
      v3 = v2[3];
    }

    v13 = v3;
    *(*(*(a1 + 40) + 8) + 24) = objc_msgSend_length(v13, v4, v5);
    v8 = *(*(a1 + 32) + 40);
    if (v8 && objc_msgSend_count(v8, v6, v7) && (objc_msgSend_lastIndex(*(*(a1 + 32) + 40), v9, v10) + 1) > *(*(*(a1 + 40) + 8) + 24))
    {
      *(*(*(a1 + 40) + 8) + 24) = objc_msgSend_lastIndex(*(*(a1 + 32) + 40), v11, v12) + 1;
    }
  }
}

uint64_t sub_2769FEC48(uint64_t a1, const char *a2, uint64_t a3)
{
  result = objc_msgSend_p_materializedLength(*(a1 + 32), a2, a3);
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

void sub_2769FED74(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_decryptionInfo(*(*(a1 + 32) + 24), a2, a3);
  v5 = v4;
  if (!v4)
  {
    v4 = *(*(a1 + 32) + 8);
  }

  objc_storeStrong((*(*(a1 + 40) + 8) + 40), v4);
}

void sub_2769FF0F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, id a30)
{
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(&a25, 8);

  _Block_object_dispose((v37 - 160), 8);
  _Block_object_dispose((v37 - 128), 8);

  _Unwind_Resume(a1);
}

uint64_t sub_2769FF180(uint64_t a1)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), *(*(a1 + 32) + 24));
  objc_storeStrong((*(*(a1 + 48) + 8) + 40), *(*(a1 + 32) + 48));
  *(*(*(a1 + 56) + 8) + 24) = *(*(a1 + 32) + 32);
  result = objc_msgSend_p_isMaterialized(*(a1 + 32), v2, v3);
  *(*(*(a1 + 64) + 8) + 24) = result;
  return result;
}

void sub_2769FF20C()
{
  v0 = TSULogCreateCategory();
  v1 = UnsafePointer;
  UnsafePointer = v0;
}

void sub_2769FF250()
{
  v0 = TSULogCreateCategory();
  v1 = UnsafePointer;
  UnsafePointer = v0;
}

uint64_t sub_2769FF32C(uint64_t a1, const char *a2, uint64_t a3)
{
  result = objc_msgSend_p_isMaterialized(*(a1 + 32), a2, a3);
  if (result)
  {
    v6 = *(a1 + 32);

    return objc_msgSend_p_notifyDownloadObserversWithStatus_error_(v6, v5, 1, 0);
  }

  return result;
}

uint64_t sub_2769FF454(void *a1, const char *a2)
{
  result = objc_msgSend_isInPackage_(*(a1[4] + 48), a2, a1[5]);
  *(*(a1[6] + 8) + 24) = result;
  return result;
}

void sub_2769FF64C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v8 - 128), 8);

  _Block_object_dispose((v8 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_2769FF684(void *a1)
{
  v1 = a1[4];
  if (!*(v1 + 24))
  {
    v3 = *(v1 + 48);
    if (v3)
    {
      v13 = v3;
      v6 = objc_opt_respondsToSelector();
      if (v6)
      {
        v7 = objc_msgSend_decryptionInfo(v13, v4, v5);
        v10 = objc_msgSend_mutableCryptoInfoCopy(v7, v8, v9);
      }

      else
      {
        v7 = 0;
        v10 = objc_msgSend_mutableCryptoInfoCopy(0, v4, v5);
      }

      v11 = *(a1[5] + 8);
      v12 = *(v11 + 40);
      *(v11 + 40) = v10;

      if (v6)
      {
      }

      *(*(a1[6] + 8) + 24) = 1;
      v3 = v13;
    }
  }
}

void sub_2769FF768(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  if (v10)
  {
  }

  _Unwind_Resume(a1);
}

void sub_2769FF78C(uint64_t a1, const char *a2)
{
  v3 = objc_msgSend_p_migrateToTemporaryDataStorageWithEncryptionInfo_updateInternalDataStorages_(*(a1 + 32), a2, *(*(*(a1 + 48) + 8) + 40), 1);
  *(*(*(a1 + 40) + 8) + 24) = v3 != 0;
}

void sub_2769FF9AC(uint64_t a1, const char *a2, uint64_t a3)
{
  if (!objc_msgSend_isUnmaterializedDueToPartiallyDownloadedDocument(*(a1 + 32), a2, a3))
  {
    if (objc_msgSend_p_copyPartiallyMaterializedDataToURL_encryptionInfo_(*(a1 + 32), v4, *(*(*(a1 + 48) + 8) + 40), *(a1 + 40)))
    {
      if (*(a1 + 56) != 1)
      {
        return;
      }

      v8 = [TSPTemporaryDataStorage alloc];
      isUnmaterializedDueToPartiallyDownloadedDocument = objc_msgSend_initWithTemporaryDataStorageURL_decryptionInfo_(v8, v9, *(*(*(a1 + 48) + 8) + 40), *(a1 + 40));
      goto LABEL_7;
    }

LABEL_11:
    v12 = (*(*(a1 + 48) + 8) + 40);
    goto LABEL_12;
  }

  if (*(a1 + 56) != 1)
  {
    if (!*(*(a1 + 32) + 48))
    {
      return;
    }

    if (UnsafePointer != -1)
    {
      sub_276BD3468();
    }

    goto LABEL_11;
  }

  v5 = [TSPTemporaryDataStorage alloc];
  isUnmaterializedDueToPartiallyDownloadedDocument = objc_msgSend_initWithTemporaryDataStorageURL_decryptionInfo_isMissingOriginalData_isMissingData_isUnmaterializedDueToPartiallyDownloadedDocument_(v5, v6, *(*(*(a1 + 48) + 8) + 40), *(a1 + 40), 0, 0, 1);
LABEL_7:
  v10 = *(a1 + 32);
  v11 = *(v10 + 24);
  *(v10 + 24) = isUnmaterializedDueToPartiallyDownloadedDocument;

  v12 = (*(a1 + 32) + 48);
LABEL_12:
  v13 = *v12;
  *v12 = 0;
}

void sub_2769FFADC()
{
  v0 = TSULogCreateCategory();
  v1 = UnsafePointer;
  UnsafePointer = v0;
}

void sub_2769FFB20()
{
  v0 = TSULogCreateCategory();
  v1 = UnsafePointer;
  UnsafePointer = v0;
}

void sub_2769FFDD4()
{
  v0 = TSULogCreateCategory();
  v1 = UnsafePointer;
  UnsafePointer = v0;
}

void sub_276A0012C(void **a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v8 = objc_msgSend_componentDataReferenceMap(v5, v6, v7);
  v12 = objc_msgSend_dataToObjectReferenceMap(v8, v9, v10);
  if (v12)
  {
    objc_msgSend_mergeWithReferenceMap_(a1[4], v11, v12);
    v15 = objc_msgSend_objectToDataReferenceMap(v8, v13, v14);
    v23 = MEMORY[0x277D85DD0];
    v24 = 3221225472;
    v25 = sub_276A002AC;
    v26 = &unk_27A6E4180;
    v27 = a1[5];
    v28 = a2;
    objc_msgSend_enumerateReferencesUsingBlock_(v15, v16, &v23);

    if (objc_msgSend_packageIdentifier(v5, v17, v18, v23, v24, v25, v26) == 1)
    {
      v22 = objc_msgSend_objectIdentifiersWithoutUUID(v8, v19, v20);
      if (v22)
      {
        objc_msgSend_addIndexes_(a1[6], v21, v22);
      }
    }
  }
}

void sub_276A002AC(uint64_t a1, uint64_t a2, void *a3)
{
  a3;
  v4 = *(*(a1 + 32) + 16);
  sub_276A008C0();
}

void sub_276A0096C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_2769ABE20(va);
  _Unwind_Resume(a1);
}

void sub_276A00980(void *a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v8 = a3;
  v9 = a4;
  v12 = a5;
  if (v12)
  {
    v13 = objc_msgSend_firstObject(a1, v10, v11);
    if (v13)
    {
      objc_opt_class();
      v16 = objc_msgSend_firstObject(a1, v14, v15);
      v17 = TSUDynamicCast();

      if (v17)
      {
        v19 = [TSPObjectCollection alloc];
        v22 = objc_msgSend_context(v17, v20, v21);
        v24 = objc_msgSend_initWithContext_objects_(v19, v23, v22, a1);

        if (v24)
        {
          v36[0] = MEMORY[0x277D85DD0];
          v36[1] = 3221225472;
          v36[2] = sub_276A00C8C;
          v36[3] = &unk_27A6E41D0;
          v37 = v12;
          objc_msgSend_tsp_deepCopyWithContext_options_completion_(v24, v26, v8, v9, v36);
        }

        else
        {
          v35 = objc_msgSend_tsp_readPOSIXErrorWithNumber_userInfo_(MEMORY[0x277CCA9B8], v25, 22, 0);
          (*(v12 + 2))(v12, 0, 0, v35);
        }
      }

      else
      {
        v27 = MEMORY[0x277D81150];
        v28 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, "[NSArray(TSPDeepCopy) tsp_deepCopyWithContext:options:completion:]");
        v30 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v29, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/NSArray_TSPDeepCopy.mm");
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v27, v31, v28, v30, 21, 0, "%@ is not a TSPObject.", v13);

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v32, v33);
        v24 = objc_msgSend_tsp_readPOSIXErrorWithNumber_userInfo_(MEMORY[0x277CCA9B8], v34, 22, 0);
        (*(v12 + 2))(v12, 0, 0, v24);
      }
    }

    else
    {
      (*(v12 + 2))(v12, MEMORY[0x277CBEBF8], 0, 0);
    }
  }
}

void sub_276A00C8C(uint64_t a1, void *a2, void *a3, void *a4)
{
  v14 = a2;
  v7 = a3;
  v8 = a4;
  v9 = *(a1 + 32);
  objc_opt_class();
  v10 = TSUDynamicCast();
  v13 = objc_msgSend_objects(v10, v11, v12);
  (*(v9 + 16))(v9, v13, v7, v8);
}

uint64_t sub_276A00D84(void *a1, uint64_t a2, void *a3, void *a4, uint64_t a5, void *a6)
{
  v10 = a3;
  v11 = a4;
  v14 = objc_msgSend_firstObject(a1, v12, v13);
  if (v14)
  {
    objc_opt_class();
    v17 = objc_msgSend_firstObject(a1, v15, v16);
    v18 = TSUDynamicCast();

    if (v18)
    {
      v20 = [TSPObjectCollection alloc];
      v23 = objc_msgSend_context(v18, v21, v22);
      v25 = objc_msgSend_initWithContext_objects_(v20, v24, v23, a1);

      if (v25)
      {
        v27 = objc_msgSend_tsp_deepCopyWithContext_options_objectMap_error_(v25, v26, v10, v11, a5, a6);
        v30 = objc_msgSend_objects(v27, v28, v29);

LABEL_10:
        goto LABEL_11;
      }
    }

    else
    {
      v31 = MEMORY[0x277D81150];
      v32 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, "[NSArray(TSPDeepCopy) tsp_deepCopyWithContext:options:objectMap:error:]");
      v34 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v33, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/NSArray_TSPDeepCopy.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v31, v35, v32, v34, 47, 0, "%@ is not a TSPObject.", v14);

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v36, v37);
    }

    if (a6)
    {
      objc_msgSend_tsp_readPOSIXErrorWithNumber_userInfo_(MEMORY[0x277CCA9B8], v26, 22, 0);
      *a6 = v30 = 0;
    }

    else
    {
      v30 = 0;
    }

    goto LABEL_10;
  }

  v30 = MEMORY[0x277CBEBF8];
LABEL_11:

  return v30;
}

uint64_t sub_276A00FEC(uint64_t a1)
{
  *a1 = &unk_2885C14E8;
  v2 = MEMORY[0x277D85CC8];
  v3 = MEMORY[0x277D85CC8];
  *(a1 + 8) = v2;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0;
  return a1;
}

void sub_276A01048(uint64_t a1, NSObject *a2)
{
  concat = dispatch_data_create_concat(*(a1 + 8), a2);
  v4 = *(a1 + 8);
  *(a1 + 8) = concat;
}

dispatch_data_t sub_276A010BC(void *a1, const char *a2)
{
  LODWORD(v2) = a2;
  if ((a2 & 0x80000000) != 0)
  {
    v4 = MEMORY[0x277D81150];
    v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "dispatch_data_t TSP::DispatchDataInputStream::ReadData(int)");
    v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPDispatchDataStream.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v4, v8, v5, v7, 30, 0, "Bad parameter");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v9, v10);
  }

  v11 = a1[1];
  v12 = a1[2];
  size = dispatch_data_get_size(v11);
  v14 = a1[3];
  if (size + v12 - v14 >= v2)
  {
    v2 = v2;
  }

  else
  {
    v2 = size + v12 - v14;
  }

  subrange = dispatch_data_create_subrange(v11, v14 - v12, v2);
  a1[3] += v2;

  return subrange;
}

BOOL sub_276A011CC(uint64_t a1, void *a2, _DWORD *a3)
{
  v6 = *(a1 + 8);
  size = dispatch_data_get_size(v6);
  v8 = *(a1 + 16);
  v9 = *(a1 + 24);
  v10 = v8 + size;
  if (v9 < v8 + size)
  {
    v11 = size;
    offset_ptr = 0;
    if (*(a1 + 32) && (v12 = *(a1 + 40), v9 < v12 + v8))
    {
      v13 = 0;
      v14 = v9;
    }

    else
    {
      v15 = dispatch_data_copy_region(v6, v9 - v8, &offset_ptr);
      v23 = 0;
      v16 = dispatch_data_create_map(v15, &v23, (a1 + 40));
      v17 = *(a1 + 32);
      *(a1 + 32) = v16;

      *(a1 + 48) = v23;
      v13 = offset_ptr;
      v12 = *(a1 + 40);
      v8 = *(a1 + 16);
      v14 = *(a1 + 24);
    }

    v18 = v13 + v8;
    v19 = v18 + v12;
    *a2 = *(a1 + 48) + v14 - v18;
    *a3 = v19 - v14;
    *(a1 + 24) = v19;
    if (v13)
    {
      subrange = dispatch_data_create_subrange(*(a1 + 8), v13, v11 - v13);
      v21 = *(a1 + 8);
      *(a1 + 8) = subrange;

      *(a1 + 16) += offset_ptr;
    }
  }

  return v9 < v10;
}

uint64_t sub_276A012FC(uint64_t result, const char *a2)
{
  v2 = a2;
  v3 = result;
  if ((a2 & 0x80000000) != 0)
  {
    v4 = MEMORY[0x277D81150];
    v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "virtual void TSP::DispatchDataInputStream::BackUp(int)");
    v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPDispatchDataStream.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v4, v8, v5, v7, 77, 0, "Bad parameter");

    result = objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v9, v10);
  }

  if (v3[4] && (v11 = v3[3], v11 - v3[2] >= v2))
  {
    v3[3] = v11 - v2;
  }

  else
  {
    v12 = MEMORY[0x277D81150];
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "virtual void TSP::DispatchDataInputStream::BackUp(int)");
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPDispatchDataStream.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v12, v16, v13, v15, 82, 0, "|count| is too big");

    v19 = MEMORY[0x277D81150];

    return objc_msgSend_logBacktraceThrottled(v19, v17, v18);
  }

  return result;
}

BOOL sub_276A01480(uint64_t a1, const char *a2)
{
  v2 = a2;
  if ((a2 & 0x80000000) != 0)
  {
    v4 = MEMORY[0x277D81150];
    v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "virtual BOOL TSP::DispatchDataInputStream::Skip(int)");
    v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPDispatchDataStream.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v4, v8, v5, v7, 87, 0, "Bad parameter");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v9, v10);
  }

  v11 = *(a1 + 16);
  v12 = dispatch_data_get_size(*(a1 + 8)) + v11;
  v13 = *(a1 + 24);
  v14 = v12 - v13;
  result = v12 - v13 >= v2;
  v16 = v13 + v2;
  if (v14 >= v2)
  {
    v12 = v16;
  }

  *(a1 + 24) = v12;
  return result;
}

void *sub_276A01570(void *a1, size_t a2)
{
  *a1 = &unk_2885C1528;
  v4 = MEMORY[0x277D85CC8];
  v5 = MEMORY[0x277D85CC8];
  a1[1] = v4;
  if (a2)
  {
    v6 = malloc_type_malloc(a2, 0x100004077774924uLL);
  }

  else
  {
    v6 = 0;
  }

  a1[2] = v6;
  a1[3] = a2;
  a1[4] = 0;
  return a1;
}

uint64_t sub_276A01610(uint64_t a1)
{
  *a1 = &unk_2885C1528;
  free(*(a1 + 16));

  return a1;
}

void sub_276A01660(uint64_t a1)
{
  *a1 = &unk_2885C1528;
  free(*(a1 + 16));

  JUMPOUT(0x277C9F670);
}

id sub_276A016D0(uint64_t a1, const char *a2)
{
  sub_276A01708(a1, a2);
  v3 = *(a1 + 8);

  return v3;
}

void sub_276A01708(uint64_t a1, const char *a2)
{
  if (*(a1 + 32))
  {
    v3 = *(a1 + 16);
    if (!v3)
    {
      v4 = MEMORY[0x277D81150];
      v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "void TSP::DispatchDataOutputStream::ConcatBuffer()");
      v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPDispatchDataStream.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v4, v8, v5, v7, 168, 0, "No buffer allocated");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v9, v10);
      v3 = *(a1 + 16);
    }

    v11 = dispatch_data_create(v3, *(a1 + 24), 0, *MEMORY[0x277D85CB0]);
    v12 = v11;
    v13 = *(a1 + 32);
    if (v13 >= *(a1 + 24))
    {
      v18 = v11;
    }

    else
    {
      subrange = dispatch_data_create_subrange(v11, 0, v13);
      v18 = subrange;
      if (*(a1 + 24) - *(a1 + 32) >= 0x80uLL)
      {
        map = dispatch_data_create_map(subrange, 0, 0);

        v18 = map;
      }
    }

    concat = dispatch_data_create_concat(*(a1 + 8), v18);
    v17 = *(a1 + 8);
    *(a1 + 8) = concat;

    *(a1 + 16) = 0;
    *(a1 + 32) = 0;
  }
}

uint64_t sub_276A0189C(void *a1, char *a2, _DWORD *a3)
{
  if (a1[4] == a1[3])
  {
    sub_276A01708(a1, a2);
  }

  v6 = a1[2];
  if (v6)
  {
    v8 = a1[3];
    v7 = a1[4];
  }

  else
  {
    v8 = 1024;
    v6 = malloc_type_malloc(0x400uLL, 0x100004077774924uLL);
    v7 = 0;
    a1[2] = v6;
    a1[3] = 1024;
  }

  *a2 = &v6[v7];
  *a3 = v8 - v7;
  a1[4] = v8;
  return 1;
}

uint64_t sub_276A0192C(uint64_t result, const char *a2)
{
  v2 = a2;
  v3 = result;
  if ((a2 & 0x80000000) != 0)
  {
    v4 = MEMORY[0x277D81150];
    v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "virtual void TSP::DispatchDataOutputStream::BackUp(int)");
    v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPDispatchDataStream.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v4, v8, v5, v7, 143, 0, "Bad parameter");

    result = objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v9, v10);
  }

  v11 = *(v3 + 32);
  if (v11 != *(v3 + 24))
  {
    v12 = MEMORY[0x277D81150];
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "virtual void TSP::DispatchDataOutputStream::BackUp(int)");
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPDispatchDataStream.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v12, v16, v13, v15, 144, 0, "BackUp() can only be called after a successful Next().");

    result = objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v17, v18);
    v11 = *(v3 + 32);
  }

  if (v11 < v2)
  {
    v19 = MEMORY[0x277D81150];
    v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "virtual void TSP::DispatchDataOutputStream::BackUp(int)");
    v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v21, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPDispatchDataStream.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v19, v23, v20, v22, 145, 0, "Can't back up over more bytes than were returned by the last call to Next().");

    result = objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v24, v25);
    v11 = *(v3 + 32);
  }

  *(v3 + 32) = v11 - v2;
  return result;
}

void sub_276A01B60(uint64_t a1)
{

  JUMPOUT(0x277C9F670);
}

void sub_276A02014(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_2769C1430(a16);
  }

  _Unwind_Resume(exception_object);
}

void sub_276A057E0(unsigned int *a1, int a2)
{
  v3 = a1[1];
  if (v3 >= a2)
  {
    return;
  }

  if (v3 < 1)
  {
    v6 = (a1 + 2);
    v5 = *(a1 + 1);
    v7 = 0;
    if (!v3)
    {
      if (a2 < 4)
      {
        goto LABEL_7;
      }

      goto LABEL_11;
    }
  }

  else
  {
    v6 = (a1 + 2);
    v5 = *(a1 + 1);
    v7 = v5 - 8;
  }

  v5 = *(v5 - 1);
  if (a2 < 4)
  {
LABEL_7:
    v8 = 4;
    goto LABEL_14;
  }

  if (v3 > 0x3FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
    goto LABEL_14;
  }

LABEL_11:
  v9 = 2 * v3;
  if (v9 <= a2)
  {
    v8 = a2;
  }

  else
  {
    v8 = v9;
  }

LABEL_14:
  v10 = 24 * v8;
  if (v5)
  {
    v11 = sub_2769B0A98(v5, v10 + 8);
  }

  else
  {
    v11 = operator new(v10 + 8);
  }

  *v11 = v5;
  v12 = v11 + 1;
  v13 = &v11[v10 + 8];
  if (v13 <= (v11 + 32))
  {
    v13 = (v11 + 32);
  }

  v14 = (v13 - 32);
  if (v14 == v11)
  {
    v12 = v11;
  }

  v15 = a1[1];
  a1[1] = v8;
  *(a1 + 1) = v11 + 8;
  v16 = (v14 - v12) / 0x18uLL;
  if (v14 != v11)
  {
    ++v16;
  }

  bzero(v11 + 8, 24 * v16 + 24);
  v17 = *a1;
  if (v17 >= 1)
  {
    v18 = *v6;
    v19 = (v7 + 8);
    v20 = 24 * v17;
    do
    {
      std::string::operator=(v18++, v19++);
      v20 -= 24;
    }

    while (v20);
  }

  sub_276A07E18(a1, v7, v15);
}

void sub_276A05D90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  TSP::Reference::~Reference(va);

  _Unwind_Resume(a1);
}

void sub_276A06178(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va1, a12);
  va_start(va, a12);
  v14 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  sub_276A07EA8(va);
  sub_276A07EA8(va1);

  _Unwind_Resume(a1);
}

void sub_276A0641C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);

  TSP::Reference::~Reference(va);
  _Unwind_Resume(a1);
}

void sub_276A06754(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  TSP::DataReference::~DataReference(&a9);

  _Unwind_Resume(a1);
}

void sub_276A06A20(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_276A08184(va);

  _Unwind_Resume(a1);
}

void sub_276A06FAC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_276A072D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_276A07EA8((v10 - 88));
  sub_276A07EA8(&a9);

  _Unwind_Resume(a1);
}

void sub_276A0756C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25)
{
  if (a2)
  {
    sub_276B7B560(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void *sub_276A07B90(_BYTE *__dst, void *__src, unint64_t a3)
{
  if (a3 > 0x16)
  {
    if (a3 < 0x7FFFFFFFFFFFFFF8)
    {
      operator new();
    }

    sub_2769DD7D8();
  }

  __dst[23] = a3;
  v3 = a3 + 1;

  return memmove(__dst, __src, v3);
}

void sub_276A07CA4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  a10 = 0;
  if (v10)
  {
    sub_276A07D48(&a10, v10);
  }

  _Unwind_Resume(exception_object);
}

void sub_276A07CC8(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x277C9F670);
}

uint64_t sub_276A07D08(uint64_t a1, uint64_t a2)
{
  if (sub_276A07DC4(a2, &unk_2885C1600))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_276A07D48(uint64_t a1, google::protobuf::UnknownFieldSet *a2)
{
  if (a2)
  {
    v3 = *a2;
    if (*a2 != *(a2 + 1))
    {
      google::protobuf::UnknownFieldSet::ClearFallback(a2);
      v3 = *a2;
    }

    if (v3)
    {
      *(a2 + 1) = v3;
      operator delete(v3);
    }

    JUMPOUT(0x277C9F670);
  }
}

BOOL sub_276A07DC4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  if (v2 == v3)
  {
    return 1;
  }

  if ((v3 & v2) < 0 != __OFSUB__(v2, v3))
  {
    return strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (v3 & 0x7FFFFFFFFFFFFFFFLL)) == 0;
  }

  return 0;
}

void sub_276A07E18(int a1, char *__p, int a3)
{
  if (__p)
  {
    if (a3 >= 1)
    {
      v4 = &__p[24 * a3 + 8];
      v5 = __p + 31;
      do
      {
        if (*v5 < 0)
        {
          operator delete(*(v5 - 23));
        }

        v6 = v5 + 1;
        v5 += 24;
      }

      while (v6 < v4);
    }

    if (!*__p)
    {

      operator delete(__p);
    }
  }
}

void sub_276A07EA8(void *a1)
{
  v2 = a1[2];
  if (v2 && !*a1)
  {
    v3 = v2 + 1;
    v4 = *v2;
    if (v4 >= 1)
    {
      do
      {
        if (*v3)
        {
          TSP::Reference::~Reference(*v3);
          MEMORY[0x277C9F670]();
        }

        ++v3;
        --v4;
      }

      while (v4);
      v2 = a1[2];
    }

    operator delete(v2);
  }

  a1[2] = 0;
}

unsigned int *sub_276A07F2C(unsigned int *result, const TSP::Reference *a2)
{
  v2 = *(a2 + 1);
  v3 = v2;
  if (v2)
  {
    v3 = *(v2 & 0xFFFFFFFFFFFFFFFELL);
  }

  if (*result == v3 && (v4 = *(result + 2)) != 0 && (v5 = *v4, v5 < result[3]))
  {
    v6 = v4 + 2;
    v7 = result[2];
    if (v7 < v5)
    {
      *&v6[2 * v5] = *&v6[2 * v7];
    }

    *&v6[2 * v7] = a2;
    result[2] = v7 + 1;
    ++**(result + 2);
  }

  else
  {
    if (v2)
    {
      v2 = *(v2 & 0xFFFFFFFFFFFFFFFELL);
    }

    return sub_276A07FB4(result, a2, v2, *result);
  }

  return result;
}

unsigned int *sub_276A07FB4(unsigned int *a1, const TSP::Reference *a2, char *a3, char *a4)
{
  v5 = a2;
  if (a3 || !a4)
  {
    if (a4 != a3)
    {
      v7 = google::protobuf::Arena::CreateMaybeMessage<TSP::Reference>(a4);
      sub_276A08074(v5, v7);
      if (!a3)
      {
        TSP::Reference::~Reference(v5);
        MEMORY[0x277C9F670]();
      }

      v5 = v7;
    }
  }

  else
  {
    sub_276A08058(a4, a2);
  }

  return sub_276A08084(a1, v5);
}

char *sub_276A08058(char *result, void *a2)
{
  if (a2)
  {
    return google::protobuf::internal::ArenaImpl::AddCleanup(result, a2, sub_276A08158);
  }

  return result;
}

unsigned int *sub_276A08084(unsigned int *this, uint64_t a2)
{
  v3 = this;
  v4 = *(this + 2);
  if (!v4)
  {
    v5 = this[3];
    goto LABEL_11;
  }

  v5 = this[2];
  v6 = this[3];
  if (v5 == v6)
  {
LABEL_11:
    this = google::protobuf::internal::RepeatedPtrFieldBase::Reserve(this, v5 + 1);
    goto LABEL_12;
  }

  v7 = *v4;
  if (v7 != v6)
  {
    if (v5 >= v7)
    {
      v9 = v7 + 1;
      goto LABEL_13;
    }

    *&v4[2 * v7 + 2] = *&v4[2 * v5 + 2];
LABEL_12:
    v4 = *(v3 + 2);
    v9 = *v4 + 1;
LABEL_13:
    *v4 = v9;
    goto LABEL_14;
  }

  this = *&v4[2 * v5 + 2];
  if (this)
  {
    v8 = *v3 == 0;
  }

  else
  {
    v8 = 0;
  }

  if (v8)
  {
    TSP::Reference::~Reference(this);
    this = MEMORY[0x277C9F670]();
    v4 = *(v3 + 2);
  }

LABEL_14:
  v10 = v3[2];
  v3[2] = v10 + 1;
  *&v4[2 * v10 + 2] = a2;
  return this;
}

uint64_t sub_276A08158(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void sub_276A08184(void *a1)
{
  v2 = a1[2];
  if (v2 && !*a1)
  {
    v3 = v2 + 1;
    v4 = *v2;
    if (v4 >= 1)
    {
      do
      {
        if (*v3)
        {
          TSP::DataReference::~DataReference(*v3);
          MEMORY[0x277C9F670]();
        }

        ++v3;
        --v4;
      }

      while (v4);
      v2 = a1[2];
    }

    operator delete(v2);
  }

  a1[2] = 0;
}

void sub_276A08998(uint64_t a1, const char *a2)
{
  v58[2] = *MEMORY[0x277D85DE8];
  v57 = 0;
  v2 = objc_msgSend_regularExpressionWithPattern_options_error_(MEMORY[0x277CCAC68], a2, @"Index\\/OperationStorage.*\\.iwa", 0, &v57);
  v3 = v57;
  v4 = v3;
  if (!v2)
  {
    v12 = objc_opt_class();
    v13 = NSStringFromClass(v12);
    v16 = objc_msgSend_domain(v4, v14, v15);
    v54 = objc_msgSend_code(v4, v17, v18);
    TSUSetCrashReporterInfo();

    v19 = MEMORY[0x277D81150];
    v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v20, "+[TSPPackageConverter regularRexpressionsForCachedCollaborationData]_block_invoke", "+[TSPPackageConverter regularRexpressionsForCachedCollaborationData]_block_invoke", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPPackageConverter.mm", 156, v13, v16, v54, v4);
    v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v22, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPPackageConverter.mm");
    v24 = objc_opt_class();
    v25 = NSStringFromClass(v24);
    v28 = objc_msgSend_domain(v4, v26, v27);
    v31 = objc_msgSend_code(v4, v29, v30);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v19, v32, v21, v23, 156, 1, "Failed to create regular expression with error: errorClass=%{public}@, domain=%{public}@, code=%zd (%@) ", v25, v28, v31, v4);

    TSUCrashBreakpoint();
    goto LABEL_6;
  }

  v56 = 0;
  v6 = objc_msgSend_regularExpressionWithPattern_options_error_(MEMORY[0x277CCAC68], v5, @"Index\\/ActivityStream.*\\.iwa", 0, &v56);
  v8 = v56;
  if (!v6)
  {
    v33 = objc_opt_class();
    v34 = NSStringFromClass(v33);
    v37 = objc_msgSend_domain(v8, v35, v36);
    v55 = objc_msgSend_code(v8, v38, v39);
    TSUSetCrashReporterInfo();

    v40 = MEMORY[0x277D81150];
    v42 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v41, "+[TSPPackageConverter regularRexpressionsForCachedCollaborationData]_block_invoke", "+[TSPPackageConverter regularRexpressionsForCachedCollaborationData]_block_invoke", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPPackageConverter.mm", 160, v34, v37, v55, v8);
    v44 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v43, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPPackageConverter.mm");
    v45 = objc_opt_class();
    v46 = NSStringFromClass(v45);
    v49 = objc_msgSend_domain(v8, v47, v48);
    v52 = objc_msgSend_code(v8, v50, v51);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v40, v53, v42, v44, 160, 1, "Failed to create regular expression with error: errorClass=%{public}@, domain=%{public}@, code=%zd (%@) ", v46, v49, v52, v8);

    TSUCrashBreakpoint();
LABEL_6:
    abort();
  }

  v58[0] = v2;
  v58[1] = v6;
  v9 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v7, v58, 2);
  v10 = qword_280A52640;
  qword_280A52640 = v9;

  v11 = *MEMORY[0x277D85DE8];
}

void sub_276A09154(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8, uint64_t a9, ...)
{
  va_start(va, a9);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_276A09184(uint64_t a1, const char *a2)
{
  v3 = objc_msgSend_path_matchesFilter_(*(a1 + 32), a2, a2, *(a1 + 40));
  if (v3)
  {
    *(*(*(a1 + 48) + 8) + 24) = 1;
  }

  return v3 ^ 1u;
}

void sub_276A096CC(_Unwind_Exception *a1)
{
  _Block_object_dispose((v6 - 136), 8);

  _Unwind_Resume(a1);
}

uint64_t sub_276A09790(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_276A097B8(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5, void *a6)
{
  v11 = a2;
  v12 = a3;
  v13 = a6;
  if (objc_msgSend_isCancelled(*(a1 + 32), v14, v15))
  {
    v17 = 0;
  }

  else if (objc_msgSend_path_matchesFilter_(*(a1 + 32), v16, v11, *(a1 + 40)))
  {
    v17 = 1;
  }

  else
  {
    v19 = *(a1 + 32);
    v20 = *(a1 + 48);
    v21 = *(*(a1 + 64) + 8);
    obj = *(v21 + 40);
    v22 = objc_msgSend_newWriteChannelAtPath_lastModificationDate_size_CRC_packageWriter_error_(v19, v18, v11, v12, a4, a5, v20, &obj);
    objc_storeStrong((v21 + 40), obj);
    if (v22)
    {
      v24 = objc_msgSend_tsu_pendingUnitCountForIncompleteProgress_(*(a1 + 56), v23, a4);
      objc_msgSend_becomeCurrentWithPendingUnitCount_(*(a1 + 56), v25, v24);
      v26 = *(*(a1 + 64) + 8);
      v33 = *(v26 + 40);
      v17 = objc_msgSend_copyDataFromReadChannel_decryptionInfo_size_toWriteChannel_encryptionInfo_encodedLength_error_(TSPFileManager, v27, v13, 0, a4, v22, 0, 0, &v33);
      objc_storeStrong((v26 + 40), v33);
      objc_msgSend_resignCurrent(*(a1 + 56), v28, v29);
      objc_msgSend_close(v22, v30, v31);
    }

    else
    {
      v17 = 0;
    }
  }

  return v17;
}

void sub_276A09A60(uint64_t a1, const char *a2)
{
  v2 = objc_msgSend_stringByAppendingString_(@"Index", a2, @"/");
  v3 = qword_280A52650;
  qword_280A52650 = v2;
}

void sub_276A09B14(uint64_t a1, const char *a2)
{
  v2 = objc_msgSend_stringByAppendingString_(@"Data", a2, @"/");
  v3 = qword_280A52660;
  qword_280A52660 = v2;
}

void sub_276A09C08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_276A09C20(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = a3;
  *(*(*(a1 + 32) + 8) + 24) += objc_msgSend_size(v6, v4, v5);
}

void sub_276A09E00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, void *a15)
{
  _Block_object_dispose((v18 - 96), 8);

  _Unwind_Resume(a1);
}

uint64_t sub_276A09E3C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  v10 = objc_msgSend_collapsedName(v5, v8, v9);
  v13 = v10;
  if (v10)
  {
    v14 = v10;
  }

  else
  {
    v14 = objc_msgSend_name(v5, v11, v12);
  }

  v15 = v14;

  v18 = objc_msgSend_collapsedName(v6, v16, v17);
  v21 = v18;
  if (v18)
  {
    v22 = v18;
  }

  else
  {
    v22 = objc_msgSend_name(v6, v19, v20);
  }

  v23 = v22;

  isDataPath = objc_msgSend_isDataPath_(*(a1 + 32), v24, v15);
  v27 = objc_msgSend_isDataPath_(*(a1 + 32), v26, v23);
  if (((isDataPath ^ 1 | v27) & 1) == 0)
  {
    goto LABEL_15;
  }

  if (((isDataPath | v27 ^ 1) & 1) == 0)
  {
    goto LABEL_16;
  }

  if ((isDataPath ^ 1 | v27 ^ 1))
  {
    isObjectArchivePath = objc_msgSend_isObjectArchivePath_(*(a1 + 32), v28, v15);
    v32 = objc_msgSend_isObjectArchivePath_(*(a1 + 32), v31, v23);
    if (v32 & 1 | ((isObjectArchivePath & 1) == 0))
    {
      if (isObjectArchivePath & 1 | ((v32 & 1) == 0))
      {
        v35 = objc_msgSend_offset(v5, v33, v34);
        if (v35 < objc_msgSend_offset(v6, v36, v37))
        {
          v38 = -1;
        }

        else
        {
          v38 = 1;
        }

        goto LABEL_20;
      }

LABEL_16:
      v38 = 1;
      goto LABEL_20;
    }

LABEL_15:
    v38 = -1;
    goto LABEL_20;
  }

  v39 = objc_msgSend_size(v5, v28, v29);
  if (v39 > objc_msgSend_size(v6, v40, v41))
  {
    v38 = -1;
  }

  else
  {
    v38 = 1;
  }

LABEL_20:

  objc_autoreleasePoolPop(v7);
  return v38;
}

void sub_276A0A01C(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v43 = a2;
  v6 = objc_autoreleasePoolPush();
  v9 = objc_msgSend_collapsedName(v43, v7, v8);
  v12 = v9;
  if (v9)
  {
    v13 = v9;
  }

  else
  {
    v13 = objc_msgSend_name(v43, v10, v11);
  }

  v14 = v13;

  if (objc_msgSend_isCancelled(*(a1 + 32), v15, v16))
  {
    *(*(*(a1 + 56) + 8) + 24) = 0;
    *a4 = 1;
  }

  else if (objc_msgSend_isEqualToString_(v14, v17, @"Index.zip") && objc_msgSend_packageType(*(a1 + 32), v18, v19) == 2 && (objc_msgSend_componentZipArchive(*(*(a1 + 32) + 32), v18, v20), v21 = objc_claimAutoreleasedReturnValue(), v21, v21))
  {
    v23 = *(a1 + 32);
    v24 = objc_msgSend_componentZipArchive(v23[4], v18, v22);
    objc_msgSend_enumeratePackageEntriesWithZipArchive_needsReadChannel_accessor_(v23, v25, v24, *(a1 + 64), *(a1 + 48));
  }

  else if ((objc_msgSend_isDocumentPropertiesPath_(*(a1 + 32), v18, v14) & 1) == 0 && (objc_msgSend_hasSuffix_(v14, v26, @"/") & 1) == 0)
  {
    if (*(a1 + 64) == 1)
    {
      v29 = *(a1 + 40);
      isObjectArchivePath = objc_msgSend_isObjectArchivePath_(*(a1 + 32), v27, v14);
      v32 = objc_msgSend_streamReadChannelForEntry_validateCRC_(v29, v31, v43, isObjectArchivePath);
    }

    else
    {
      v32 = 0;
    }

    *(*(*(a1 + 56) + 8) + 24) = *(a1 + 64) ^ 1 | (v32 != 0);
    if (*(*(*(a1 + 56) + 8) + 24) == 1)
    {
      v33 = *(a1 + 48);
      v34 = objc_msgSend_lastModificationDate(v43, v27, v28);
      v37 = objc_msgSend_size(v43, v35, v36);
      v40 = objc_msgSend_CRC(v43, v38, v39);
      *(*(*(a1 + 56) + 8) + 24) = (*(v33 + 16))(v33, v14, v34, v37, v40, v32);

      *a4 = *(*(*(a1 + 56) + 8) + 24) ^ 1;
      objc_msgSend_close(v32, v41, v42);
    }

    else
    {
      *a4 = 1;
    }
  }

  objc_autoreleasePoolPop(v6);
}

void sub_276A0AA3C()
{
  v0 = TSULogCreateCategory();
  v1 = *MEMORY[0x277D81410];
  *MEMORY[0x277D81410] = v0;
}

void sub_276A0AA80()
{
  v0 = TSULogCreateCategory();
  v1 = *MEMORY[0x277D81410];
  *MEMORY[0x277D81410] = v0;
}

void sub_276A0AAC4()
{
  v0 = TSULogCreateCategory();
  v1 = *MEMORY[0x277D81410];
  *MEMORY[0x277D81410] = v0;
}

uint64_t sub_276A0B330(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v8 = objc_msgSend_tsu_fileSize(a2, v6, v7);
  v11 = objc_msgSend_tsu_fileSize(v4, v9, v10);
  objc_autoreleasePoolPop(v5);
  if (v8 > v11)
  {
    v12 = -1;
  }

  else
  {
    v12 = 1;
  }

  return v12;
}

void sub_276A0BBD4()
{
  v0 = objc_alloc(MEMORY[0x277CCAC68]);
  v21 = 0;
  v2 = objc_msgSend_initWithPattern_options_error_(v0, v1, @"\\/Library\\/Containers\\/.*\\/Data\\/Library\\/Caches\\/", 0, &v21);
  v3 = v21;
  v4 = qword_280A52670;
  qword_280A52670 = v2;

  if (!qword_280A52670)
  {
    v6 = MEMORY[0x277D81150];
    v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "+[TSPData dataFromURL:useExternalReferenceIfAllowed:useFileCoordination:filename:context:]_block_invoke");
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPData.mm");
    v10 = objc_opt_class();
    v11 = NSStringFromClass(v10);
    v14 = objc_msgSend_domain(v3, v12, v13);
    v17 = objc_msgSend_code(v3, v15, v16);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v18, v7, v9, 156, 0, "Failed to create regular expression. errorClass=%{public}@, domain=%{public}@, code=%zd (%@) ", v11, v14, v17, v3);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v19, v20);
  }
}

void sub_276A0C260(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, id a30)
{
  if (!v36)
  {
  }

  _Block_object_dispose(&a19, 8);
  _Block_object_dispose(&a25, 8);

  _Unwind_Resume(a1);
}

uint64_t sub_276A0C2EC(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_276A0C304(uint64_t a1, int a2, void *a3, uint64_t a4, void *a5)
{
  v10 = a3;
  v9 = a5;
  if (a2)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a5);
    objc_storeStrong((*(*(a1 + 48) + 8) + 40), a3);
    dispatch_semaphore_signal(*(a1 + 32));
  }
}

void sub_276A0C3A4()
{
  v0 = TSULogCreateCategory();
  v1 = UnsafePointer;
  UnsafePointer = v0;
}

void sub_276A0C3E8()
{
  v0 = TSULogCreateCategory();
  v1 = UnsafePointer;
  UnsafePointer = v0;
}

void sub_276A0C518(_Unwind_Exception *a1)
{
  v6 = v5;

  _Unwind_Resume(a1);
}

void sub_276A0C598()
{
  v4 = objc_alloc_init(TSPDigest);
  v0 = [TSPData alloc];
  hasValidatedDigestMatch_filename_lastModificationDate_storage_manager = objc_msgSend_initWithIdentifier_digest_hasValidatedDigestMatch_filename_lastModificationDate_storage_manager_(v0, v1, 0, v4, 1, &stru_2885C9BB8, 0, 0, 0);
  v3 = qword_280A52680;
  qword_280A52680 = hasValidatedDigestMatch_filename_lastModificationDate_storage_manager;
}

void sub_276A0C758()
{
  v0 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v1 = dispatch_queue_create("TSPData.Culling", v0);
  v2 = qword_280A52698;
  qword_280A52698 = v1;

  v3 = objc_alloc(MEMORY[0x277CCAA50]);
  v5 = objc_msgSend_initWithOptions_capacity_(v3, v4, 517, 0);
  v6 = qword_280A526A0;
  qword_280A526A0 = v5;
}

void sub_276A0C9FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = TSPData;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_276A0CB38(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = a2;
  v6 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v4, &v10, v14, 16);
  if (v6)
  {
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v3);
        }

        objc_msgSend_willCullDataWithUniqueIdentifier_flags_(*(*(&v10 + 1) + 8 * v8++), v5, *(a1 + 32), *(a1 + 40), v10);
      }

      while (v6 != v8);
      v6 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v5, &v10, v14, 16);
    }

    while (v6);
  }

  v9 = *MEMORY[0x277D85DE8];
}

void sub_276A0CD14(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = a2;
  v6 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v4, &v10, v14, 16);
  if (v6)
  {
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v3);
        }

        objc_msgSend_didReplaceContentsOfDataWithUniqueIdentifier_flags_(*(*(&v10 + 1) + 8 * v8++), v5, *(a1 + 32), *(a1 + 40), v10);
      }

      while (v6 != v8);
      v6 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v5, &v10, v14, 16);
    }

    while (v6);
  }

  v9 = *MEMORY[0x277D85DE8];
}

void sub_276A0CF34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

void sub_276A0D394()
{
  v0 = TSULogCreateCategory();
  v1 = UnsafePointer;
  UnsafePointer = v0;
}

void sub_276A0D554(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_preferredFilename(*(a1 + 32), a2, a3);
  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

void sub_276A0D784(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_p_type(*(a1 + 32), a2, a3);
  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

void *sub_276A0D9A4(void *result)
{
  *(*(result[5] + 8) + 24) = *(result[4] + 48);
  *(*(result[6] + 8) + 24) = *(result[4] + 56);
  return result;
}

uint64_t sub_276A0D9CC(uint64_t a1, const char *a2, uint64_t a3)
{
  result = *(a1 + 32);
  if ((*(result + 56) & 1) == 0)
  {
    v5 = objc_msgSend_p_type(result, a2, a3);
    v8 = objc_msgSend_identifier(*MEMORY[0x277CE1DB0], v6, v7);
    v10 = objc_msgSend_tsu_conformsToUTI_(v5, v9, v8);

    if (v10)
    {
      v13 = *(a1 + 32);
      v14 = 1;
    }

    else
    {
      v15 = objc_msgSend_identifier(*MEMORY[0x277CE1E00], v11, v12);
      v17 = objc_msgSend_tsu_conformsToUTI_(v5, v16, v15);

      if (v17)
      {
        v13 = *(a1 + 32);
        v14 = 2;
      }

      else
      {
        v20 = objc_msgSend_identifier(*MEMORY[0x277CE1D00], v18, v19);
        v22 = objc_msgSend_tsu_conformsToUTI_(v5, v21, v20);

        if (v22)
        {
          v13 = *(a1 + 32);
          v14 = 3;
        }

        else
        {
          v25 = objc_msgSend_identifier(*MEMORY[0x277CE1CD0], v23, v24);
          v27 = objc_msgSend_tsu_conformsToUTI_(v5, v26, v25);

          v13 = *(a1 + 32);
          if (!v27)
          {
            *(v13 + 48) = 0;
            goto LABEL_11;
          }

          v14 = 4;
        }
      }
    }

    *(v13 + 48) = v14;
LABEL_11:
    *(*(a1 + 32) + 56) = 1;

    result = *(a1 + 32);
  }

  *(*(*(a1 + 40) + 8) + 24) = *(result + 48);
  return result;
}

void sub_276A0DC9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = v4[8];
  if (!v5)
  {
    v6 = objc_msgSend_preferredFilename(v4, 0, a3);
    v7 = *(a1 + 32);
    v8 = objc_opt_class();
    v10 = objc_msgSend_normalizedExtensionForFilename_(v8, v9, v6);
    v13 = objc_msgSend_copy(v10, v11, v12);
    v14 = *(a1 + 32);
    v15 = *(v14 + 64);
    *(v14 + 64) = v13;

    v5 = *(*(a1 + 32) + 64);
  }

  v16 = (*(*(a1 + 40) + 8) + 40);

  objc_storeStrong(v16, v5);
}

void sub_276A0DE40(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 72);
  if (!v1)
  {
    TSUSetCrashReporterInfo();
    v3 = MEMORY[0x277D81150];
    v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "[TSPData anonymousUniqueIdentifier]_block_invoke", "[TSPData anonymousUniqueIdentifier]_block_invoke", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPData.mm", 530, "_anonymousUniqueIdentifier");
    v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPData.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v3, v8, v5, v7, 530, 1, "invalid nil value for '%{public}s'", "_anonymousUniqueIdentifier");

    TSUCrashBreakpoint();
    abort();
  }

  v2 = (*(*(a1 + 40) + 8) + 40);

  objc_storeStrong(v2, v1);
}

void sub_276A0E5F0(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_copy(*(a1 + 40), a2, a3);
  v5 = *(a1 + 32);
  v6 = *(v5 + 88);
  *(v5 + 88) = v4;
}

void sub_276A0EDE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, char a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, id a48, uint64_t a49, id a50, uint64_t a51, char a52)
{
  _Block_object_dispose(&a43, 8);

  _Block_object_dispose(&a52, 8);
  _Block_object_dispose((v56 - 232), 8);
  _Block_object_dispose((v56 - 200), 8);

  _Block_object_dispose((v56 - 152), 8);
  _Unwind_Resume(a1);
}

void sub_276A0EF38(void *a1, void *a2)
{
  v4 = a2;
  *(*(a1[6] + 8) + 24) = v4 != 0;
  if (*(*(a1[6] + 8) + 24) == 1)
  {
    v5 = (a1[11] >> 1) & 1;
    v6 = *(a1[8] + 8);
    v7 = *(a1[9] + 8);
    v8 = *(a1[10] + 8);
    obj = 0;
    v9 = objc_msgSend_digestFromReadChannel_scanForOSLikeCorruption_foundLikelyOSCorruption_foundLikelyZeroBytesCorruption_error_(TSPDigest, v3, v4, v5, v6 + 24, v7 + 24, &obj);
    objc_storeStrong((v8 + 40), obj);
    v10 = *(a1[7] + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = v9;

    objc_msgSend_close(v4, v12, v13);
  }

  else if (UnsafePointer != -1)
  {
    sub_276BD365C();
  }
}

void sub_276A0F034()
{
  v0 = TSULogCreateCategory();
  v1 = UnsafePointer;
  UnsafePointer = v0;
}

id sub_276A0F078(uint64_t a1, uint64_t a2)
{
  *(a1 + 96) = *(a2 + 96);
  v4 = *(a2 + 104);
  v5 = *(a2 + 112);
  v6 = *(a2 + 120);
  *(a1 + 104) = v4;
  *(a1 + 112) = v5;
  result = v6;
  *(a1 + 120) = result;
  *(a1 + 128) = *(a2 + 128);
  return result;
}

void sub_276A0F0C4(uint64_t a1)
{
  v2 = *(a1 + 104);
}

void sub_276A0F10C()
{
  v0 = TSULogCreateCategory();
  v1 = UnsafePointer;
  UnsafePointer = v0;
}

void sub_276A0F15C()
{
  v0 = TSULogCreateCategory();
  v1 = UnsafePointer;
  UnsafePointer = v0;
}

void sub_276A0F1AC()
{
  v0 = TSULogCreateCategory();
  v1 = UnsafePointer;
  UnsafePointer = v0;
}

void sub_276A0F51C(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  if (!v4[19])
  {
    v5 = *(a1 + 40);
    v10 = objc_msgSend_context(v4, a2, a3);
    v7 = objc_msgSend_copyWithContext_(v5, v6, v10);
    v8 = *(a1 + 32);
    v9 = *(v8 + 152);
    *(v8 + 152) = v7;
  }
}

void sub_276A0F7FC(uint64_t a1, void *a2)
{
  v11 = a2;
  if (v11)
  {
    v3 = objc_alloc(MEMORY[0x277D812F8]);
    Channel_length = objc_msgSend_initWithReadChannel_length_(v3, v4, v11, *(a1 + 48));
  }

  else
  {
    v6 = objc_alloc(MEMORY[0x277D81120]);
    v9 = objc_msgSend_NSData(*(a1 + 32), v7, v8);
    Channel_length = objc_msgSend_initWithData_(v6, v10, v9);
  }

  (*(*(a1 + 40) + 16))();
}

void sub_276A10444(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32)
{
  objc_end_catch();

  _Block_object_dispose(&a28, 8);
  _Block_object_dispose(&a32, 8);
  _Block_object_dispose((v36 - 184), 8);

  _Block_object_dispose((v36 - 136), 8);
  _Unwind_Resume(a1);
}

void sub_276A10504(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = dispatch_semaphore_create(0);
    v25[0] = 0;
    v25[1] = v25;
    v25[2] = 0x2020000000;
    v26 = 0;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = sub_276A106F8;
    aBlock[3] = &unk_27A6E28C0;
    v24 = v25;
    v5 = v4;
    v23 = v5;
    v6 = _Block_copy(aBlock);
    v7 = *(a1 + 72);
    v8 = *(a1 + 80);
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = sub_276A10744;
    v15[3] = &unk_27A6E44B8;
    v18 = *(a1 + 40);
    v19 = *(a1 + 56);
    v21 = *(a1 + 88);
    v9 = *(a1 + 32);
    v10 = *(a1 + 64);
    v16 = v9;
    v20 = v10;
    v11 = v6;
    v17 = v11;
    objc_msgSend_readFromOffset_length_handler_(v3, v12, v7, v8, v15);
    dispatch_semaphore_wait(v5, 0xFFFFFFFFFFFFFFFFLL);
    objc_msgSend_close(v3, v13, v14);

    _Block_object_dispose(v25, 8);
  }

  else
  {
    *(*(*(a1 + 56) + 8) + 24) = 0;
  }
}

void sub_276A106B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25)
{
  _Block_object_dispose((v28 - 112), 8);

  _Unwind_Resume(a1);
}

intptr_t sub_276A106F8(intptr_t result)
{
  if ((*(*(*(result + 40) + 8) + 24) & 1) == 0)
  {
    v1 = result;
    result = dispatch_semaphore_signal(*(result + 32));
    *(*(*(v1 + 40) + 8) + 24) = 1;
  }

  return result;
}

void sub_276A10744(uint64_t a1, int a2, void *a3, void *a4)
{
  v7 = a3;
  v11 = a4;
  if ((*(*(*(a1 + 48) + 8) + 24) & 1) == 0)
  {
    if (v7)
    {
      v14 = *(a1 + 56);
      if (!*(*(v14 + 8) + 40))
      {
        v15 = *(*(a1 + 64) + 8);
        if (*(v15 + 24))
        {
          v21[0] = MEMORY[0x277D85DD0];
          v21[1] = 3221225472;
          v21[2] = sub_276A10930;
          v21[3] = &unk_27A6E4490;
          v25 = *(a1 + 80);
          v23 = v14;
          v16 = *(a1 + 32);
          v17 = *(a1 + 72);
          v22 = v16;
          v24 = v17;
          *(*(*(a1 + 64) + 8) + 24) = dispatch_data_apply(v7, v21);
        }

        else
        {
          *(v15 + 24) = 0;
        }
      }
    }
  }

  v12 = *(*(a1 + 56) + 8);
  if (*(v12 + 40))
  {
    v13 = v11;
    if (!a2)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  if (!v11)
  {
    if (*(*(*(a1 + 48) + 8) + 24) != 1 || (objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x277CCA9B8], v8, *MEMORY[0x277CCA050], 3072, 0), (v11 = objc_claimAutoreleasedReturnValue()) == 0))
    {
      v13 = 0;
      if (!a2)
      {
        goto LABEL_12;
      }

      goto LABEL_11;
    }

    v12 = *(*(a1 + 56) + 8);
  }

  objc_storeStrong((v12 + 40), v11);
  *(*(*(a1 + 64) + 8) + 24) = 0;
  v13 = v11;
  (*(*(a1 + 40) + 16))(*(a1 + 40), v18, v19, v20);
  if (a2)
  {
LABEL_11:
    (*(*(a1 + 40) + 16))(*(a1 + 40), v8, v9, v10);
  }

LABEL_12:
}

uint64_t sub_276A10930(uint64_t a1, int a2, int a3, void *__buf, size_t __nbyte)
{
  v7 = write(*(a1 + 56), __buf, __nbyte);
  if (v7 < 0)
  {
    v10 = MEMORY[0x277CCA9B8];
    v11 = __error();
    v13 = objc_msgSend_tsu_fileWritePOSIXErrorWithNumber_userInfo_(v10, v12, *v11, 0);
    v14 = *(*(a1 + 40) + 8);
    v15 = *(v14 + 40);
    *(v14 + 40) = v13;

    return 0;
  }

  if (v7 != __nbyte)
  {
    v16 = MEMORY[0x277D81150];
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "+[TSPData p_writeStorage:toURL:withRange:error:]_block_invoke_5");
    v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPData.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v16, v20, v17, v19, 1035, 0, "Didn't write as many bytes as we wanted to");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v21, v22);
    return 0;
  }

  if (*(a1 + 32))
  {
    *(*(*(a1 + 48) + 8) + 24) += __nbyte;
    objc_msgSend_setCompletedUnitCount_(*(a1 + 32), v8, *(*(*(a1 + 48) + 8) + 24));
  }

  return 1;
}

void sub_276A10E58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id a22)
{
  _Block_object_dispose(&a17, 8);

  _Block_object_dispose((v23 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_276A10EB4(uint64_t a1, void *a2)
{
  v3 = a2;
  v6 = objc_msgSend_storage(*(a1 + 32), v4, v5);
  v8 = v6;
  if (v6)
  {
    v9 = *(a1 + 40);
    v10 = *(*(a1 + 56) + 8);
    obj = *(v10 + 40);
    v11 = objc_msgSend_newDataCopyURLProviderWithDocumentURL_encryptionInfo_error_(v6, v7, v3, v9, &obj);
    objc_storeStrong((v10 + 40), obj);
    v12 = *(*(a1 + 48) + 8);
    v13 = *(v12 + 40);
    *(v12 + 40) = v11;
  }
}

void sub_276A1113C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id a22)
{
  _Block_object_dispose(&a17, 8);

  _Block_object_dispose((v23 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_276A11198(uint64_t a1, void *a2)
{
  v3 = a2;
  v6 = objc_msgSend_storage(*(a1 + 32), v4, v5);
  v8 = v6;
  if (v6)
  {
    v9 = *(a1 + 40);
    v10 = *(*(a1 + 56) + 8);
    obj = *(v10 + 40);
    v11 = objc_msgSend_newDataCopyReadChannelProviderWithDocumentURL_encryptionInfo_error_(v6, v7, v3, v9, &obj);
    objc_storeStrong((v10 + 40), obj);
    v12 = *(*(a1 + 48) + 8);
    v13 = *(v12 + 40);
    *(v12 + 40) = v11;
  }
}

void sub_276A11420(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id a22)
{
  _Block_object_dispose(&a17, 8);

  _Block_object_dispose((v23 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_276A1147C(uint64_t a1, void *a2)
{
  v3 = a2;
  v6 = objc_msgSend_storage(*(a1 + 32), v4, v5);
  v8 = v6;
  if (v6)
  {
    v9 = *(a1 + 40);
    v10 = *(*(a1 + 56) + 8);
    obj = *(v10 + 40);
    v11 = objc_msgSend_newDataCopyInputStreamProviderWithDocumentURL_encryptionInfo_error_(v6, v7, v3, v9, &obj);
    objc_storeStrong((v10 + 40), obj);
    v12 = *(*(a1 + 48) + 8);
    v13 = *(v12 + 40);
    *(v12 + 40) = v11;
  }
}

void sub_276A11B04(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (!v3 || *(v2 + 24) == v3)
  {
    objc_storeStrong((v2 + 32), *(a1 + 48));
    v4 = *(a1 + 56);
    v5 = (*(a1 + 40) + 24);

    objc_storeStrong(v5, v4);
  }
}

void sub_276A11CB8()
{
  v0 = TSULogCreateCategory();
  v1 = UnsafePointer;
  UnsafePointer = v0;
}

void sub_276A11FC0()
{
  v0 = TSULogCreateCategory();
  v1 = UnsafePointer;
  UnsafePointer = v0;
}

void sub_276A12170(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8, void *a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_276A121AC(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = *(a1 + 64);
  v5 = *(*(a1 + 32) + 120);
  *(v4 + 16) |= 0x800u;
  *(v4 + 112) = v5;
  v6 = objc_msgSend_digest(*(a1 + 32), a2, a3);
  v7 = *(a1 + 64);
  *(v7 + 16) |= 1u;
  v8 = *(v7 + 8);
  if (v8)
  {
    v8 = *(v8 & 0xFFFFFFFFFFFFFFFELL);
  }

  v9 = google::protobuf::internal::ArenaStringPtr::Mutable((v7 + 24), v8);
  objc_msgSend_saveToProtobufString_(v6, v10, v9);

  v13 = objc_msgSend_preferredFilename(*(a1 + 32), v11, v12);
  v14 = *(a1 + 64);
  *(v14 + 16) |= 2u;
  v15 = *(v14 + 8);
  if (v15)
  {
    v15 = *(v15 & 0xFFFFFFFFFFFFFFFELL);
  }

  v16 = google::protobuf::internal::ArenaStringPtr::Mutable((v14 + 32), v15);
  objc_msgSend_tsp_saveToProtobufString_(v13, v17, v16);

  result = objc_msgSend_archiveInfoMessage_archiver_packageWriter_(*(*(a1 + 32) + 24), v18, *(a1 + 64), *(a1 + 40), *(a1 + 48));
  *(*(*(a1 + 56) + 8) + 24) = result;
  return result;
}

void sub_276A1279C()
{
  v0 = TSULogCreateCategory();
  v1 = UnsafePointer;
  UnsafePointer = v0;
}

uint64_t sub_276A127E0(uint64_t a1, void *a2, uint64_t a3)
{
  v7 = a2;
  if (*(a1 + 40) == 1)
  {
    v8 = objc_msgSend_defaultManager(MEMORY[0x277CCAA00], v5, v6);
    v10 = objc_msgSend_moveItemAtURL_toURL_error_(v8, v9, *(a1 + 32), v7, a3);
  }

  else
  {
    v8 = objc_msgSend_defaultManager(MEMORY[0x277CCAA00], v5, v6);
    v10 = objc_msgSend_copyItemAtURL_toURL_error_(v8, v11, *(a1 + 32), v7, a3);
  }

  v12 = v10;

  return v12;
}

void sub_276A12BE4(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_fallbackColor(*(*(a1 + 32) + 152), a2, a3);
  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  if (!*(*(*(a1 + 40) + 8) + 40))
  {
    v7 = *(*(a1 + 32) + 24);
    v10 = objc_opt_respondsToSelector();
    if (v10)
    {
      v11 = objc_msgSend_fallbackColor(*(*(a1 + 32) + 24), v8, v9);
    }

    else
    {
      v11 = 0;
    }

    v12 = v11;
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), v11);
    if (v10)
    {
    }
  }
}

void sub_276A12D4C(uint64_t a1, const char *a2, uint64_t a3)
{
  v5 = objc_msgSend_createMetadataIfNeeded(*(a1 + 32), a2, a3);
  objc_msgSend_setFallbackColor_(v5, v4, *(a1 + 40));
}

__n128 sub_276A12EA0(__n128 *a1, __n128 *a2)
{
  result = a2[3];
  a1[3] = result;
  return result;
}

uint64_t sub_276A12EB0(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 24);
  result = objc_opt_respondsToSelector();
  if (result)
  {
    result = objc_msgSend_pixelSize(*(*(a1 + 32) + 24), v4, v5);
    v6 = *(*(a1 + 40) + 8);
    *(v6 + 48) = v7;
    *(v6 + 56) = v8;
  }

  return result;
}

void sub_276A13108(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_fallbackColor(*(*(a1 + 32) + 152), a2, a3);

  if (!v4)
  {
    v5 = *(*(a1 + 32) + 24);
    if (objc_opt_respondsToSelector())
    {
      v8 = objc_msgSend_fallbackColor(*(*(a1 + 32) + 24), v6, v7);
      if (v8)
      {
        v15 = v8;
        v11 = objc_msgSend_createMetadataIfNeeded(*(a1 + 32), v9, v10);
        objc_msgSend_willModifyForUpgrade(v11, v12, v13);
        objc_msgSend_setFallbackColor_(v11, v14, v15);
      }
    }
  }
}

void sub_276A13CC4(uint64_t a1, void *a2)
{
  v3 = objc_msgSend_URLByAppendingPathComponent_isDirectory_(a2, a2, *(*(a1 + 32) + 8), 0);
  (*(*(a1 + 40) + 16))();
}

void sub_276A13DF8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_alloc(MEMORY[0x277D811D0]);
  v6 = objc_msgSend_initForReadingURL_error_(v4, v5, v3, 0);
  v7 = *(*(a1 + 32) + 48);
  if (v7)
  {
    v8 = v6 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v9 = objc_alloc(MEMORY[0x277D81168]);
    v12 = objc_msgSend_blockInfos(v7, v10, v11);
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = sub_276A13F90;
    v15[3] = &unk_27A6E45C8;
    v16 = v7;
    ChannelBlock = objc_msgSend_initWithReadChannel_blockInfos_streamReadChannelBlock_(v9, v13, v6, v12, v15);

    (*(*(a1 + 40) + 16))();
  }
}

id sub_276A13F90(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [TSPCryptoReadChannel alloc];
  v10 = objc_msgSend_cryptoKey(*(a1 + 32), v8, v9);
  Channel_decryptionKey_blockInfos = objc_msgSend_initWithReadChannel_decryptionKey_blockInfos_(v7, v11, v5, v10, v6);

  return Channel_decryptionKey_blockInfos;
}

void sub_276A144FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, id a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34)
{
  _Block_object_dispose(&a24, 8);

  _Block_object_dispose(&a30, 8);
  _Block_object_dispose(&a34, 8);
  _Block_object_dispose((v39 - 184), 8);

  _Block_object_dispose((v39 - 136), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_276A145C0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_276A145D8()
{
  v0 = TSULogCreateCategory();
  v1 = UnsafePointer;
  UnsafePointer = v0;
}

void sub_276A1461C(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    v5 = *(a1 + 56);
    v6 = *(*(a1 + 48) + 48);
    v7 = *(a1 + 32);
    v8 = *(a1 + 40);
    v9 = *(*(a1 + 64) + 8);
    obj = *(v9 + 40);
    v10 = objc_msgSend_linkOrCopyData_fromURL_fromTemporaryLocation_decryptionInfo_preferredFilename_error_(v7, v3, v8, v4, 0, v6, v5, &obj);
    objc_storeStrong((v9 + 40), obj);
    if (v10)
    {
      v13 = objc_msgSend_filename(v10, v11, v12);
      v14 = *(*(a1 + 72) + 8);
      v15 = *(v14 + 40);
      *(v14 + 40) = v13;

      v18 = objc_msgSend_encryptionInfo(v10, v16, v17);
      v19 = *(*(a1 + 80) + 8);
      v20 = *(v19 + 40);
      *(v19 + 40) = v18;

      *(*(*(a1 + 88) + 8) + 24) = objc_msgSend_encodedLength(v10, v21, v22);
      *(*(*(a1 + 96) + 8) + 24) = 0;
    }

    else if (objc_msgSend_tsu_isNoSuchFileError(*(*(*(a1 + 64) + 8) + 40), v11, v12))
    {
      if (*(*(*(a1 + 96) + 8) + 24))
      {
        goto LABEL_10;
      }

      v24 = MEMORY[0x277D81150];
      v25 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v23, "[TSPDirectoryPackageDataStorage writeData:toPackageWriter:infoMessage:preferredFilename:shouldRemoveData:error:]_block_invoke_2");
      v27 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v26, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPDirectoryPackageDataStorage.mm");
      v28 = *(*(a1 + 48) + 8);
      v29 = *(*(*(a1 + 64) + 8) + 40);
      v30 = objc_opt_class();
      v31 = NSStringFromClass(v30);
      v34 = objc_msgSend_domain(*(*(*(a1 + 64) + 8) + 40), v32, v33);
      v37 = objc_msgSend_code(*(*(*(a1 + 64) + 8) + 40), v35, v36);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v24, v38, v25, v27, 215, 0, "Unexpected missing data: %@. errorClass=%{public}@, domain=%{public}@, code=%zd (%@) ", v28, v31, v34, v37, *(*(*(a1 + 64) + 8) + 40));

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v39, v40);
      atomic_store(0, (*(a1 + 48) + 17));
      if ((*(*(*(a1 + 96) + 8) + 24) & 1) != 0 || objc_msgSend_updateType(*(a1 + 32), v23, v41) != 2)
      {
LABEL_10:
        v42 = objc_msgSend_filenameForData_preferredFilename_(*(a1 + 32), v23, *(a1 + 40), *(a1 + 56));
        v43 = *(*(a1 + 72) + 8);
        v44 = *(v43 + 40);
        *(v43 + 40) = v42;

        *(*(*(a1 + 96) + 8) + 24) = 1;
        v47 = objc_msgSend_encryptionKey(*(a1 + 32), v45, v46);
        v48 = sub_276AB678C(*(*(a1 + 48) + 48), v47, 0x100000);
        v49 = v47;
        if (!v48)
        {
          v49 = *(*(a1 + 48) + 48);
        }

        objc_storeStrong((*(*(a1 + 80) + 8) + 40), v49);
      }
    }

    else if (*MEMORY[0x277D81408] != -1)
    {
      sub_276BD36D4();
    }
  }

  else if (*MEMORY[0x277D81408] != -1)
  {
    sub_276BD36FC();
  }
}

void sub_276A1497C()
{
  v0 = TSULogCreateCategory();
  v1 = *MEMORY[0x277D81410];
  *MEMORY[0x277D81410] = v0;
}

void sub_276A149C0()
{
  v0 = TSULogCreateCategory();
  v1 = *MEMORY[0x277D81410];
  *MEMORY[0x277D81410] = v0;
}

void sub_276A14BDC(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    v5 = *(a1 + 40);
    v6 = *(*(a1 + 32) + 48);
    v7 = *(a1 + 48);
    v8 = *(a1 + 64);
    v11 = 0;
    canLink_encodedLength_error = objc_msgSend_linkOrCopyItemAtURL_decryptionInfo_toURL_encryptionInfo_canLink_encodedLength_error_(TSPFileManager, v3, v4, v6, v5, v7, v8, 0, &v11);
    v10 = v11;
    *(*(*(a1 + 56) + 8) + 24) = canLink_encodedLength_error;
    if ((*(*(*(a1 + 56) + 8) + 24) & 1) == 0 && *MEMORY[0x277D81408] != -1)
    {
      sub_276BD3710();
    }
  }

  else if (*MEMORY[0x277D81408] != -1)
  {
    sub_276BD3738();
  }
}

void sub_276A14CCC()
{
  v0 = TSULogCreateCategory();
  v1 = *MEMORY[0x277D81410];
  *MEMORY[0x277D81410] = v0;
}

void sub_276A14D10()
{
  v0 = TSULogCreateCategory();
  v1 = *MEMORY[0x277D81410];
  *MEMORY[0x277D81410] = v0;
}

void sub_276A15040(uint64_t a1, void *a2)
{
  v6 = a2;
  if (v6)
  {
    v3 = objc_alloc(MEMORY[0x277D811D0]);
    v5 = objc_msgSend_initForReadingURL_error_(v3, v4, v6, 0);
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }
}

void sub_276A15268(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id a22)
{
  _Block_object_dispose(&a17, 8);

  _Unwind_Resume(a1);
}

uint64_t sub_276A152AC(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_276A152C4(uint64_t a1, void *a2)
{
  v8 = a2;
  v4 = objc_msgSend_URLAssetWithURL_options_(MEMORY[0x277CE6650], v3, v8, *(a1 + 32));
  v5 = *(*(a1 + 48) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  v7 = *(*(*(a1 + 48) + 8) + 40);
  if (v7)
  {
    objc_setAssociatedObject(v7, "com.apple.iWork.dataStorage", *(a1 + 40), 1);
  }
}

void sub_276A15464(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_276A1547C(uint64_t a1, void *a2)
{
  v5 = a2;
  if (v5)
  {
    v6 = objc_msgSend_defaultManager(MEMORY[0x277CCAA00], v3, v4);
    v9 = objc_msgSend_path(v5, v7, v8);
    v15 = 0;
    v11 = objc_msgSend_attributesOfItemAtPath_error_(v6, v10, v9, &v15);
    v12 = v15;

    if (v11)
    {
      *(*(*(a1 + 32) + 8) + 24) = objc_msgSend_fileSize(v11, v13, v14);
    }

    else if (*MEMORY[0x277D81408] != -1)
    {
      sub_276BD374C();
    }
  }
}

void sub_276A15590()
{
  v0 = TSULogCreateCategory();
  v1 = *MEMORY[0x277D81410];
  *MEMORY[0x277D81410] = v0;
}

void *sub_276A155D4(void *result)
{
  *result = 0;
  result[1] = 0;
  return result;
}

void sub_276A1579C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, void *a8, void *a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_276A15810(uint64_t a1, uint64_t a2, void *a3)
{
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = sub_276A15920;
  v12[3] = &unk_27A6E4668;
  v6 = (a1 + 56);
  v7 = *(a1 + 32);
  v15 = a2;
  v8 = *(a1 + 40);
  *&v9 = *(a1 + 48);
  *(&v9 + 1) = *v6;
  v16 = *(a1 + 64);
  *&v10 = v7;
  *(&v10 + 1) = v8;
  v13 = v10;
  v14 = v9;
  objc_msgSend_enumerateIdentifiersAndObjectUUIDsUsingBlock_(a3, v11, v12);
}

uint64_t sub_276A15920(uint64_t a1, const char *a2, uint64_t a3)
{
  result = objc_msgSend_setObjectLocation_forUUID_objectReferenceMap_delegate_(*(a1 + 32), a2, *(a1 + 64), a2, a3, *(a1 + 40), *(a1 + 48));
  if ((result & 1) == 0 && (*(a1 + 72) & 1) == 0)
  {
    *(*(*(a1 + 56) + 8) + 24) = 0;
  }

  return result;
}

void sub_276A15A1C(_Unwind_Exception *a1)
{
  MEMORY[0x277C9F670](v3, 0x10A0C408EF24B1CLL);

  _Unwind_Resume(a1);
}

uint64_t sub_276A16E7C(uint64_t a1)
{
  sub_276A16EB8(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_276A16EB8(uint64_t a1, id *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

uint64_t sub_276A16EFC(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  sub_2769AC06C(a1, *(a2 + 8));
  for (i = *(a2 + 16); i; i = *i)
  {
    sub_276A16F74(a1, i + 2, (i + 2));
  }

  return a1;
}

uint64_t **sub_276A16F74(void *a1, void **a2, uint64_t a3)
{
  v5 = objc_msgSend_hash(*a2, a2, a3);
  v7 = v5;
  v8 = a1[1];
  if (!*&v8)
  {
    goto LABEL_18;
  }

  v9 = vcnt_s8(v8);
  v9.i16[0] = vaddlv_u8(v9);
  v10 = v9.u32[0];
  if (v9.u32[0] > 1uLL)
  {
    v11 = v5;
    if (v5 >= *&v8)
    {
      v11 = v5 % *&v8;
    }
  }

  else
  {
    v11 = (*&v8 - 1) & v5;
  }

  v12 = *(*a1 + 8 * v11);
  if (!v12 || (v13 = *v12) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v14 = v13[1];
    if (v14 == v7)
    {
      break;
    }

    if (v10 > 1)
    {
      if (v14 >= *&v8)
      {
        v14 %= *&v8;
      }
    }

    else
    {
      v14 &= *&v8 - 1;
    }

    if (v14 != v11)
    {
      goto LABEL_18;
    }

LABEL_17:
    v13 = *v13;
    if (!v13)
    {
      goto LABEL_18;
    }
  }

  if ((objc_msgSend_isEqual_(v13[2], v6, *a2) & 1) == 0)
  {
    goto LABEL_17;
  }

  return v13;
}

void sub_276A171E8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_276A171FC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_276A171FC(uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t **sub_276A17248(void *a1, void **a2, uint64_t a3)
{
  v5 = objc_msgSend_hash(*a2, a2, a3);
  v7 = v5;
  v8 = a1[1];
  if (!*&v8)
  {
    goto LABEL_18;
  }

  v9 = vcnt_s8(v8);
  v9.i16[0] = vaddlv_u8(v9);
  v10 = v9.u32[0];
  if (v9.u32[0] > 1uLL)
  {
    v11 = v5;
    if (v5 >= *&v8)
    {
      v11 = v5 % *&v8;
    }
  }

  else
  {
    v11 = (*&v8 - 1) & v5;
  }

  v12 = *(*a1 + 8 * v11);
  if (!v12 || (v13 = *v12) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v14 = v13[1];
    if (v14 == v7)
    {
      break;
    }

    if (v10 > 1)
    {
      if (v14 >= *&v8)
      {
        v14 %= *&v8;
      }
    }

    else
    {
      v14 &= *&v8 - 1;
    }

    if (v14 != v11)
    {
      goto LABEL_18;
    }

LABEL_17:
    v13 = *v13;
    if (!v13)
    {
      goto LABEL_18;
    }
  }

  if ((objc_msgSend_isEqual_(v13[2], v6, *a2) & 1) == 0)
  {
    goto LABEL_17;
  }

  return v13;
}

void sub_276A174C0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_276A171FC(va);
  _Unwind_Resume(a1);
}

uint64_t **sub_276A174D4(void *a1, void **a2, uint64_t a3)
{
  v5 = objc_msgSend_hash(*a2, a2, a3);
  v7 = a1[1];
  if (!*&v7)
  {
    return 0;
  }

  v8 = v5;
  v9 = vcnt_s8(v7);
  v9.i16[0] = vaddlv_u8(v9);
  v10 = v9.u32[0];
  if (v9.u32[0] > 1uLL)
  {
    v11 = v5;
    if (v5 >= *&v7)
    {
      v11 = v5 % *&v7;
    }
  }

  else
  {
    v11 = (*&v7 - 1) & v5;
  }

  v12 = *(*a1 + 8 * v11);
  if (!v12)
  {
    return 0;
  }

  for (i = *v12; i; i = *i)
  {
    v14 = i[1];
    if (v14 == v8)
    {
      if (objc_msgSend_isEqual_(i[2], v6, *a2))
      {
        return i;
      }
    }

    else
    {
      if (v10 > 1)
      {
        if (v14 >= *&v7)
        {
          v14 %= *&v7;
        }
      }

      else
      {
        v14 &= *&v7 - 1;
      }

      if (v14 != v11)
      {
        return 0;
      }
    }
  }

  return i;
}

void sub_276A17E44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, id a26, uint64_t a27, uint64_t a28, id a29)
{
  sub_2769F1AC0(&a9);
  google::protobuf::io::CodedInputStream::~CodedInputStream(&a15);

  _Unwind_Resume(a1);
}

void sub_276A17ED0()
{
  v0 = TSULogCreateCategory();
  v1 = *MEMORY[0x277D81410];
  *MEMORY[0x277D81410] = v0;
}

void sub_276A17F14()
{
  v0 = TSULogCreateCategory();
  v1 = *MEMORY[0x277D81410];
  *MEMORY[0x277D81410] = v0;
}

void sub_276A17F58()
{
  v0 = TSULogCreateCategory();
  v1 = *MEMORY[0x277D81410];
  *MEMORY[0x277D81410] = v0;
}

void sub_276A17F9C()
{
  v0 = TSULogCreateCategory();
  v1 = *MEMORY[0x277D81410];
  *MEMORY[0x277D81410] = v0;
}

void sub_276A180C0()
{
  v0 = TSULogCreateCategory();
  v1 = *MEMORY[0x277D81410];
  *MEMORY[0x277D81410] = v0;
}

id sub_276A18690(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3.receiver = *(a1 + 40);
  v3.super_class = TSPMutableLargeUUIDArraySegment;
  return objc_msgSendSuper2(&v3, sel_saveToArchiver_, v1);
}

id sub_276A188BC(id result, int a2)
{
  if (a2)
  {
    v2 = *(result + 4);
    v3.receiver = *(result + 5);
    v3.super_class = TSPMutableLargeUUIDArraySegment;
    return objc_msgSendSuper2(&v3, sel_loadFromUnarchiver_, v2);
  }

  return result;
}

void sub_276A18F28(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, objc_super a10)
{
  a10.super_class = TSPTemporaryDataStorage;
  [(_Unwind_Exception *)&a10 dealloc];
  _Unwind_Resume(a1);
}

void sub_276A18F60()
{
  v0 = TSULogCreateCategory();
  v1 = UnsafePointer;
  UnsafePointer = v0;
}

void sub_276A18FA4()
{
  v0 = TSULogCreateCategory();
  v1 = UnsafePointer;
  UnsafePointer = v0;
}

void sub_276A19300(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_alloc(MEMORY[0x277D811D0]);
  v6 = objc_msgSend_initForReadingURL_error_(v4, v5, v3, 0);
  v7 = *(*(a1 + 32) + 24);
  if (v7)
  {
    v8 = v6 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v9 = objc_alloc(MEMORY[0x277D81168]);
    v12 = objc_msgSend_blockInfos(v7, v10, v11);
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = sub_276A19498;
    v15[3] = &unk_27A6E45C8;
    v16 = v7;
    ChannelBlock = objc_msgSend_initWithReadChannel_blockInfos_streamReadChannelBlock_(v9, v13, v6, v12, v15);

    (*(*(a1 + 40) + 16))();
  }
}

id sub_276A19498(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [TSPCryptoReadChannel alloc];
  v10 = objc_msgSend_cryptoKey(*(a1 + 32), v8, v9);
  Channel_decryptionKey_blockInfos = objc_msgSend_initWithReadChannel_decryptionKey_blockInfos_(v7, v11, v5, v10, v6);

  return Channel_decryptionKey_blockInfos;
}

void sub_276A19968()
{
  v0 = TSULogCreateCategory();
  v1 = UnsafePointer;
  UnsafePointer = v0;
}

void sub_276A199AC()
{
  v0 = TSULogCreateCategory();
  v1 = *MEMORY[0x277D81410];
  *MEMORY[0x277D81410] = v0;
}

void sub_276A19B18(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    v5 = *(a1 + 40);
    v6 = *(*(a1 + 32) + 24);
    v7 = *(a1 + 48);
    v8 = *(a1 + 64);
    v11 = 0;
    canLink_encodedLength_error = objc_msgSend_linkOrCopyItemAtURL_decryptionInfo_toURL_encryptionInfo_canLink_encodedLength_error_(TSPFileManager, v3, v4, v6, v5, v7, v8, 0, &v11);
    v10 = v11;
    *(*(*(a1 + 56) + 8) + 24) = canLink_encodedLength_error;
    if ((*(*(*(a1 + 56) + 8) + 24) & 1) == 0 && *MEMORY[0x277D81408] != -1)
    {
      sub_276BD388C();
    }
  }

  else if (*MEMORY[0x277D81408] != -1)
  {
    sub_276BD38B4();
  }
}

void sub_276A19C08()
{
  v0 = TSULogCreateCategory();
  v1 = *MEMORY[0x277D81410];
  *MEMORY[0x277D81410] = v0;
}

void sub_276A19C4C()
{
  v0 = TSULogCreateCategory();
  v1 = *MEMORY[0x277D81410];
  *MEMORY[0x277D81410] = v0;
}

uint64_t sub_276A19D24(uint64_t a1, int a2, void *a3, uint64_t a4, void *a5, int a6)
{
  v11 = a3;
  v12 = a5;
  *a1 = a2;
  *(a1 + 8) = v11;
  *(a1 + 16) = a4;
  *(a1 + 24) = v12;
  *(a1 + 32) = a6;
  return a1;
}

uint64_t sub_276A19D84(uint64_t result)
{
  *result = 0;
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 8) = 0;
  *(result + 32) = 0;
  return result;
}

__CFString *sub_276A19D98(int a1)
{
  v1 = @"unknown";
  if (a1 == 1)
  {
    v1 = @"match";
  }

  if (a1 == 2)
  {
    return @"mismatch";
  }

  else
  {
    return v1;
  }
}

void sub_276A1AD34(uint64_t a1, uint64_t a2, __int128 *a3, unint64_t a4)
{
  if (!*(a3 + 1))
  {
    return;
  }

  v8 = *(*(*(a1 + 40) + 8) + 24);
  if (!v8)
  {
    operator new();
  }

  v9 = sub_276A1BC18(v8, a2);
  if (!v9)
  {
    isContentUnknown = objc_msgSend_isContentUnknown(*(a1 + 32), v10, v11);
    v82 = *a3;
    v22 = *(a3 + 2);
    v36 = sub_276A1B8C0(*(*(*(a1 + 40) + 8) + 24), a2);
    *(v36 + 7) = v82;
    v37 = v36[9];
    v36[9] = v22;

    v36[10] = a4;
    *(v36 + 88) = isContentUnknown;
    return;
  }

  v12 = v9;
  v13 = objc_msgSend_isContentUnknown(*(a1 + 32), v10, v11);
  v15 = v13;
  v16 = *(v12 + 88);
  v17 = *a3;
  v18 = *(v12 + 14);
  v78 = v13;
  v75 = *a3;
  if (v13)
  {
    v19 = 0;
    v20 = (v18 != v17) | v16;
    if (v18 == v17 || (v12[11] & 1) != 0)
    {
      goto LABEL_28;
    }
  }

  else
  {
    v19 = *(v12 + 88);
    if (v18 == v17)
    {
      v23 = (v12 + 8);
      if (v12[8] == *(a3 + 1))
      {
        v20 = 0;
        v19 = *(v12 + 88);
        goto LABEL_40;
      }

      goto LABEL_33;
    }
  }

  v76 = a4;
  v24 = MEMORY[0x277D81150];
  v79 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "+[TSPKnownFieldVersionRequirementsMap updateMap:message:byAddingRulesFromKnownFieldRuleProvider:]_block_invoke");
  objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v25, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPKnownFieldVersionRequirementsMap.mm");
  v73 = v71 = v24;
  v26 = v17;
  v29 = objc_msgSend_stringWithString_(MEMORY[0x277CCAB68], v27, @"[");
  v30 = *(a2 + 16);
  if (v30 >= 1)
  {
    v31 = 0;
    v32 = 4 * v30;
    do
    {
      if (v31)
      {
        objc_msgSend_appendString_(v29, v28, @", ");
      }

      objc_msgSend_appendFormat_(v29, v28, @"%u", *(*(a2 + 24) + v31));
      v31 += 4;
    }

    while (v32 != v31);
  }

  objc_msgSend_appendString_(v29, v28, @"]");
  v34 = *(v12 + 14) - 1;
  if (v34 > 4)
  {
    v35 = @"None";
  }

  else
  {
    v35 = off_27A6E4728[v34];
  }

  v15 = v78;
  if ((v26 - 1) > 4)
  {
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v71, v33, v79, v73, 103, 0, "Field has two different rules for field path %{public}@: %{public}@ and %{public}@", v29, v35, @"None");
  }

  else
  {
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v71, v33, v79, v73, 103, 0, "Field has two different rules for field path %{public}@: %{public}@ and %{public}@", v29, v35, off_27A6E4728[v26 - 1]);
  }

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v38, v39);
  v20 = 0;
  if (v19)
  {
    *(v12 + 14) = v26;
    v19 = 1;
  }

  a4 = v76;
LABEL_28:
  v23 = (v12 + 8);
  if (v12[8] == *(a3 + 1))
  {
    goto LABEL_40;
  }

  if ((v20 & 1) == 0)
  {
    v16 = v19;
LABEL_33:
    v77 = a4;
    v40 = MEMORY[0x277D81150];
    v80 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "+[TSPKnownFieldVersionRequirementsMap updateMap:message:byAddingRulesFromKnownFieldRuleProvider:]_block_invoke");
    objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v41, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPKnownFieldVersionRequirementsMap.mm");
    v74 = v72 = v40;
    v44 = objc_msgSend_stringWithString_(MEMORY[0x277CCAB68], v42, @"[");
    v45 = *(a2 + 16);
    if (v45 >= 1)
    {
      v46 = 0;
      v47 = 4 * v45;
      do
      {
        if (v46)
        {
          objc_msgSend_appendString_(v44, v43, @", ");
        }

        objc_msgSend_appendFormat_(v44, v43, @"%u", *(*(a2 + 24) + v46));
        v46 += 4;
      }

      while (v47 != v46);
    }

    objc_msgSend_appendString_(v44, v43, @"]");
    v49 = NSStringFromTSPVersion(*v23, v48);
    v51 = NSStringFromTSPVersion(*(a3 + 1), v50);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v72, v52, v80, v74, 111, 0, "Field has two different file format versions for field path %{public}@: %{public}@ and %{public}@", v44, v49, v51);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v53, v54);
    v20 = 0;
    v19 = 0;
    a4 = v77;
    v15 = v78;
    if ((v16 & 1) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_39;
  }

  v20 = 1;
  if (v19)
  {
LABEL_39:
    *v23 = *(a3 + 1);
    v19 = 1;
  }

LABEL_40:
  v55 = *(a3 + 2);
  v81 = v55;
  if (v81)
  {
    v57 = v12[9];
    if (!v57)
    {
      goto LABEL_49;
    }

    if ((objc_msgSend_isEqualToString_(v57, v56, v81) & 1) == 0)
    {
      if ((v20 & 1) == 0)
      {
        v59 = MEMORY[0x277D81150];
        v60 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v58, "+[TSPKnownFieldVersionRequirementsMap updateMap:message:byAddingRulesFromKnownFieldRuleProvider:]_block_invoke");
        v61 = a4;
        v64 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v62, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPKnownFieldVersionRequirementsMap.mm");
        if ((v75 - 1) > 4)
        {
          v65 = @"None";
        }

        else
        {
          v65 = off_27A6E4728[v75 - 1];
        }

        v66 = sub_276A1B464(a2, v63);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v59, v67, v60, v64, 123, 0, "Field rule %{public}@ defined two different feature identifiers for field path %{public}@: %{public}@ and %{public}@", v65, v66, v12[9], v81);

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v68, v69);
        a4 = v61;
        v15 = v78;
      }

      if (v19)
      {
LABEL_49:
        objc_storeStrong(v12 + 9, v55);
      }
    }
  }

  v70 = v12[10];
  if (v70 >= a4)
  {
    v70 = a4;
  }

  v12[10] = v70;
  if ((v15 & 1) == 0)
  {
    *(v12 + 88) = 0;
  }
}

id sub_276A1B464(uint64_t a1, const char *a2)
{
  v4 = objc_msgSend_stringWithString_(MEMORY[0x277CCAB68], a2, @"[");
  v5 = *(a1 + 16);
  if (v5 >= 1)
  {
    v6 = 0;
    v7 = 4 * v5;
    do
    {
      if (v6)
      {
        objc_msgSend_appendString_(v4, v3, @", ");
      }

      objc_msgSend_appendFormat_(v4, v3, @"%u", *(*(a1 + 24) + v6));
      v6 += 4;
    }

    while (v7 != v6);
  }

  objc_msgSend_appendString_(v4, v3, @"]");

  return v4;
}

uint64_t sub_276A1B874(uint64_t *a1, uint64_t a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    sub_2769B0AEC(result);

    JUMPOUT(0x277C9F670);
  }

  return result;
}

uint64_t *sub_276A1B8C0(void *a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2 < 1)
  {
    v4 = 0;
  }

  else
  {
    v3 = 0;
    v4 = 0;
    v5 = 1;
    do
    {
      v6 = *(*(a2 + 24) + 4 * v3);
      if (v3)
      {
        v7 = v5;
        do
        {
          v6 *= 10;
          --v7;
        }

        while (v7 > 1);
      }

      v4 += v6;
      ++v3;
      ++v5;
    }

    while (v3 != v2);
  }

  v8 = a1[1];
  if (!*&v8)
  {
    goto LABEL_30;
  }

  v9 = vcnt_s8(v8);
  v9.i16[0] = vaddlv_u8(v9);
  if (v9.u32[0] > 1uLL)
  {
    v10 = v4;
    if (v4 >= *&v8)
    {
      v10 = v4 % *&v8;
    }
  }

  else
  {
    v10 = (*&v8 - 1) & v4;
  }

  v11 = *(*a1 + 8 * v10);
  if (!v11 || (result = *v11) == 0)
  {
LABEL_30:
    sub_276A1BB70();
  }

  while (1)
  {
    v13 = result[1];
    if (v13 == v4)
    {
      break;
    }

    if (v9.u32[0] > 1uLL)
    {
      if (v13 >= *&v8)
      {
        v13 %= *&v8;
      }
    }

    else
    {
      v13 &= *&v8 - 1;
    }

    if (v13 != v10)
    {
      goto LABEL_30;
    }

LABEL_29:
    result = *result;
    if (!result)
    {
      goto LABEL_30;
    }
  }

  if (*(result + 8) != v2)
  {
    goto LABEL_29;
  }

  if (v2 >= 1)
  {
    v14 = result[5];
    v15 = *(a2 + 24);
    v16 = *(a2 + 16);
    while (1)
    {
      v18 = *v14++;
      v17 = v18;
      v19 = *v15++;
      if (v17 != v19)
      {
        break;
      }

      if (!--v16)
      {
        return result;
      }
    }

    goto LABEL_29;
  }

  return result;
}

void sub_276A1BB4C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id *a10, uint64_t a11)
{
  if (a10)
  {
    sub_2769B0EC4(&a11, a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_276A1BBFC(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_2769B0EC4(v3, v2);
  _Unwind_Resume(a1);
}

uint64_t *sub_276A1BC18(void *a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2 < 1)
  {
    v4 = 0;
  }

  else
  {
    v3 = 0;
    v4 = 0;
    v5 = 1;
    do
    {
      v6 = *(*(a2 + 24) + 4 * v3);
      if (v3)
      {
        v7 = v5;
        do
        {
          v6 *= 10;
          --v7;
        }

        while (v7 > 1);
      }

      v4 += v6;
      ++v3;
      ++v5;
    }

    while (v3 != v2);
  }

  v8 = a1[1];
  if (!*&v8)
  {
    return 0;
  }

  v9 = vcnt_s8(v8);
  v9.i16[0] = vaddlv_u8(v9);
  if (v9.u32[0] > 1uLL)
  {
    v10 = v4;
    if (v4 >= *&v8)
    {
      v10 = v4 % *&v8;
    }
  }

  else
  {
    v10 = (*&v8 - 1) & v4;
  }

  v11 = *(*a1 + 8 * v10);
  if (!v11)
  {
    return 0;
  }

  result = *v11;
  if (*v11)
  {
    v13 = *(a2 + 24);
    do
    {
      v14 = result[1];
      if (v14 == v4)
      {
        if (*(result + 8) == v2)
        {
          if (v2 < 1)
          {
            return result;
          }

          v15 = result[5];
          v16 = v13;
          v17 = v2;
          while (1)
          {
            v19 = *v15++;
            v18 = v19;
            v20 = *v16++;
            if (v18 != v20)
            {
              break;
            }

            if (!--v17)
            {
              return result;
            }
          }
        }
      }

      else
      {
        if (v9.u32[0] > 1uLL)
        {
          if (v14 >= *&v8)
          {
            v14 %= *&v8;
          }
        }

        else
        {
          v14 &= *&v8 - 1;
        }

        if (v14 != v10)
        {
          return 0;
        }
      }

      result = *result;
    }

    while (result);
  }

  return result;
}

void sub_276A1C42C()
{
  v0 = TSULogCreateCategory();
  v1 = UnsafePointer;
  UnsafePointer = v0;
}

void sub_276A1D71C(_Unwind_Exception *a1)
{
  if (v3)
  {
  }

  _Unwind_Resume(a1);
}

void sub_276A1DA18(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = objc_opt_new();
  v3 = qword_280A526B8;
  qword_280A526B8 = v2;

  __dmb(0xBu);
  os_unfair_lock_lock(&unk_280A526C0);
  v5 = _Block_copy(qword_280A526A8);
  v4 = qword_280A526A8;
  qword_280A526A8 = 0;

  os_unfair_lock_unlock(&unk_280A526C0);
  if (v5)
  {
    v5[2](v5, qword_280A526B8);
  }
}

void sub_276A1DD3C()
{
  v0 = dispatch_get_global_queue(0, 0);
  dispatch_async(v0, &unk_2885C1B90);
}

uint64_t *sub_276A1F0D4(void *a1, unsigned int *a2)
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
    if (*&v2 <= v3)
    {
      v5 = v3 % v2.i32[0];
    }
  }

  else
  {
    v5 = (v2.i32[0] - 1) & v3;
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
      if (*(result + 4) == v3)
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

void *sub_276A1F188(void *a1, unint64_t *a2)
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
    v5 = *&v2 <= v3 ? v3 % *&v2 : *a2;
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

  result = *v6;
  if (*v6)
  {
    do
    {
      v8 = result[1];
      if (v8 == v3)
      {
        if (result[2] == v3)
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

      result = *result;
    }

    while (result);
  }

  return result;
}

uint64_t **sub_276A1F240(void *a1, const char **a2)
{
  v2 = *a2;
  v3 = **a2;
  if (v3)
  {
    v4 = (v2 + 1);
    v5 = 5381;
    do
    {
      v5 = 33 * v5 + v3;
      v6 = *v4++;
      v3 = v6;
    }

    while (v6);
  }

  else
  {
    v5 = 5381;
  }

  v7 = a1[1];
  if (!*&v7)
  {
    return 0;
  }

  v8 = vcnt_s8(v7);
  v8.i16[0] = vaddlv_u8(v8);
  v9 = v8.u32[0];
  if (v8.u32[0] > 1uLL)
  {
    v10 = v5;
    if (v5 >= *&v7)
    {
      v10 = v5 % *&v7;
    }
  }

  else
  {
    v10 = (*&v7 - 1) & v5;
  }

  v11 = *(*a1 + 8 * v10);
  if (!v11)
  {
    return 0;
  }

  for (i = *v11; i; i = *i)
  {
    v13 = i[1];
    if (v13 == v5)
    {
      if (!strcmp(i[2], v2))
      {
        return i;
      }
    }

    else
    {
      if (v9 > 1)
      {
        if (v13 >= *&v7)
        {
          v13 %= *&v7;
        }
      }

      else
      {
        v13 &= *&v7 - 1;
      }

      if (v13 != v10)
      {
        return 0;
      }
    }
  }

  return i;
}

void sub_276A1F3B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t **sub_276A1F46C(uint64_t *a1, uint64_t a2)
{
  v2 = a2;
  v4 = (a2 + 16);
  v5 = *(a2 + 16);
  v6 = *v5;
  if (*v5)
  {
    v7 = v5 + 1;
    v8 = 5381;
    do
    {
      v8 = 33 * v8 + v6;
      v9 = *v7++;
      v6 = v9;
    }

    while (v9);
  }

  else
  {
    v8 = 5381;
  }

  v2[1] = v8;
  v10 = sub_276A1F4F0(a1, v8, v4);
  if (v10)
  {
    return v10;
  }

  sub_2769ABFB8(a1, v2);
  return v2;
}

uint64_t **sub_276A1F4F0(uint64_t a1, unint64_t a2, const char **a3)
{
  v4 = *(a1 + 8);
  if (v4)
  {
    v6 = vcnt_s8(v4);
    v6.i16[0] = vaddlv_u8(v6);
    v7 = v6.u32[0];
    if (v6.u32[0] > 1uLL)
    {
      v8 = v4 <= a2 ? a2 % v4 : a2;
    }

    else
    {
      v8 = (v4 - 1) & a2;
    }

    v9 = *(*a1 + 8 * v8);
    if (v9)
    {
      v10 = *v9;
      if (*v9)
      {
        v11 = *a3;
        do
        {
          v12 = v10[1];
          if (v12 == a2)
          {
            if (!strcmp(v10[2], v11))
            {
              return v10;
            }
          }

          else
          {
            if (v7 > 1)
            {
              if (v12 >= v4)
              {
                v12 %= v4;
              }
            }

            else
            {
              v12 &= v4 - 1;
            }

            if (v12 != v8)
            {
              break;
            }
          }

          v10 = *v10;
        }

        while (v10);
      }
    }
  }

  v13 = (*(a1 + 24) + 1);
  v14 = *(a1 + 32);
  if (!v4 || (v14 * v4) < v13)
  {
    v15 = 1;
    if (v4 >= 3)
    {
      v15 = (v4 & (v4 - 1)) != 0;
    }

    v16 = v15 | (2 * v4);
    v17 = vcvtps_u32_f32(v13 / v14);
    if (v16 <= v17)
    {
      v18 = v17;
    }

    else
    {
      v18 = v16;
    }

    sub_2769AC06C(a1, v18);
  }

  return 0;
}

uint64_t sub_276A1F638(void *a1, uint64_t *a2)
{
  v2 = *a2;
  sub_2769D2814(a1, a2, &__p);
  v3 = __p;
  __p = 0;
  if (v3)
  {
    operator delete(v3);
  }

  return v2;
}

uint64_t *sub_276A1F67C(void *a1, unsigned int *a2)
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
      v5 = v2 % v3.i32[0];
    }
  }

  else
  {
    v5 = (v3.i32[0] - 1) & v2;
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

void *sub_276A1F8C0(void *a1, unint64_t *a2)
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

  if (v7[2] != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

uint64_t *sub_276A1FB00(void *a1, unsigned int *a2)
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
      v5 = v2 % v3.i32[0];
    }
  }

  else
  {
    v5 = (v3.i32[0] - 1) & v2;
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

uint64_t *sub_276A1FD44(void *a1, unsigned int *a2)
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
      v5 = v2 % v3.i32[0];
    }
  }

  else
  {
    v5 = (v3.i32[0] - 1) & v2;
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

uint64_t *sub_276A1FF78(void *a1, unsigned int *a2)
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
      v5 = v2 % v3.i32[0];
    }
  }

  else
  {
    v5 = (v3.i32[0] - 1) & v2;
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

uint64_t sub_276A2069C(uint64_t a1, int a2, void *a3, void *a4, _BYTE *a5)
{
  v9 = a3;
  v12 = a4;
  *a5 = 0;
  if (a2)
  {
    objc_msgSend_didReadObjects_(*(*(a1 + 32) + 16), v10, v12);
  }

  v13 = objc_msgSend_endReading(*(a1 + 40), v10, v11);

  return v13;
}

void sub_276A2072C()
{
  v0 = TSULogCreateCategory();
  v1 = *MEMORY[0x277D81410];
  *MEMORY[0x277D81410] = v0;
}

void sub_276A20E84(uint64_t a1, const char *a2, uint64_t a3)
{
  objc_msgSend_didFinishProcessing(*(*(a1 + 32) + 24), a2, a3);
  objc_msgSend_close(*(*(a1 + 32) + 16), v4, v5);
  v6 = *(a1 + 32);
  v7 = *(v6 + 16);
  *(v6 + 16) = 0;

  v8 = *(a1 + 32);
  v9 = *(v8 + 24);
  *(v8 + 24) = 0;
}

void sub_276A20F80(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 16);
  if (!v1)
  {
    sub_276BD3918();
  }

  v11[0] = 0;
  v11[1] = v11;
  v11[2] = 0x2020000000;
  v12 = 1;
  v3 = v1;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = sub_276A210C0;
  v8[3] = &unk_27A6E47B8;
  v10 = v11;
  v4 = v3;
  v9 = v4;
  objc_msgSend_setHandler_(*(*(a1 + 32) + 24), v5, v8);
  applier[0] = MEMORY[0x277D85DD0];
  applier[1] = 3221225472;
  applier[2] = sub_276A211B8;
  applier[3] = &unk_27A6E47E0;
  v6 = *(a1 + 40);
  applier[4] = *(a1 + 32);
  dispatch_data_apply(v6, applier);

  _Block_object_dispose(v11, 8);
}

uint64_t sub_276A210C0(uint64_t a1, void *a2, uint64_t a3, void *a4, void *a5)
{
  v8 = a2;
  v9 = a4;
  v10 = a5;
  v12 = v10;
  if (*(*(*(a1 + 40) + 8) + 24) == 1)
  {
    if (v10)
    {
      if (*MEMORY[0x277D814B8] != -1)
      {
        sub_276BD39BC();
      }

      *(*(*(a1 + 40) + 8) + 24) = 0;
    }

    else
    {
      objc_msgSend_writeData_(*(a1 + 32), v11, v9);
    }
  }

  v13 = *(*(*(a1 + 40) + 8) + 24);

  return v13;
}

void sub_276A21174()
{
  v0 = TSULogCreateCategory();
  v1 = *MEMORY[0x277D814C0];
  *MEMORY[0x277D814C0] = v0;
}

id sub_276A21AC4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3.receiver = *(a1 + 40);
  v3.super_class = TSPMutableLargeLazyReferenceArraySegment;
  return objc_msgSendSuper2(&v3, sel_saveToArchiver_, v1);
}

id sub_276A21D2C(id result, int a2)
{
  if (a2)
  {
    v2 = *(result + 4);
    v3.receiver = *(result + 5);
    v3.super_class = TSPMutableLargeLazyReferenceArraySegment;
    return objc_msgSendSuper2(&v3, sel_loadFromUnarchiver_, v2);
  }

  return result;
}

void sub_276A21DE8(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 0x2DFD70, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSPMessages.pb.cc", a4);
  TSP::CFUUIDArchive::CFUUIDArchive(&TSP::_CFUUIDArchive_default_instance_, 0);

  google::protobuf::internal::OnShutdownRun(google::protobuf::internal::DestroyMessage, &TSP::_CFUUIDArchive_default_instance_, v4);
}

void sub_276A21E58(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 0x2DFD70, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSPMessages.pb.cc", a4);
  TSP::_Color_default_instance_ = &unk_2885C2390;
  *algn_2812FD2C8 = 0;
  xmmword_2812FD2D0 = 0u;
  unk_2812FD2E0 = 0u;
  qword_2812FD2F0 = 0;
  qword_2812FD2F8 = 0x100000001;
  dword_2812FD300 = 1065353216;

  google::protobuf::internal::OnShutdownRun(google::protobuf::internal::DestroyMessage, &TSP::_Color_default_instance_, v4);
}

void sub_276A21EE8(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 0x2DFD70, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSPMessages.pb.cc", a4);
  TSP::_DataAttributes_default_instance_[0] = &unk_2885C3150;
  unk_2812FD770 = 0;
  google::protobuf::internal::ExtensionSet::ExtensionSet(&unk_2812FD778, 0);
  dword_2812FD790 = 0;

  google::protobuf::internal::OnShutdownRun(google::protobuf::internal::DestroyMessage, TSP::_DataAttributes_default_instance_, v4);
}

void sub_276A21F78(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 0x2DFD70, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSPMessages.pb.cc", a4);
  qword_2812FD148 = 0;
  unk_2812FD150 = 0;
  TSP::_DataReference_default_instance_ = &unk_2885C1CB0;
  qword_2812FD158 = 0;

  google::protobuf::internal::OnShutdownRun(google::protobuf::internal::DestroyMessage, &TSP::_DataReference_default_instance_, v4);
}

void sub_276A21FF4(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 0x2DFD70, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSPMessages.pb.cc", a4);
  qword_2812FD278 = 0;
  unk_2812FD280 = 0;
  TSP::_Date_default_instance_ = &unk_2885C2230;
  qword_2812FD288 = 0;

  google::protobuf::internal::OnShutdownRun(google::protobuf::internal::DestroyMessage, &TSP::_Date_default_instance_, v4);
}

void sub_276A22070(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 0x2DFD70, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSPMessages.pb.cc", a4);
  *&v5 = 0;
  unk_2812FDA08 = v5;
  TSP::_FieldOptions_default_instance_[0] = &unk_2885C3AF0;
  dword_2812FDA18 = 0;

  google::protobuf::internal::OnShutdownRun(google::protobuf::internal::DestroyMessage, TSP::_FieldOptions_default_instance_, v4);
}

void sub_276A220F4(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 0x2DFD70, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSPMessages.pb.cc", a4);
  TSP::IndexSet::IndexSet(&TSP::_IndexSet_default_instance_, 0);

  google::protobuf::internal::OnShutdownRun(google::protobuf::internal::DestroyMessage, &TSP::_IndexSet_default_instance_, v4);
}

void sub_276A22164(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 0x2DFD70, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSPMessages.pb.cc", a4);
  TSP::LargeArray::LargeArray(&TSP::_LargeArray_default_instance_, 0);

  google::protobuf::internal::OnShutdownRun(google::protobuf::internal::DestroyMessage, &TSP::_LargeArray_default_instance_, v4);
}

void sub_276A221D4(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 0x2DFD70, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSPMessages.pb.cc", a4);
  TSP::LargeArraySegment::LargeArraySegment(&TSP::_LargeArraySegment_default_instance_, 0);

  google::protobuf::internal::OnShutdownRun(google::protobuf::internal::DestroyMessage, &TSP::_LargeArraySegment_default_instance_, v4);
}

void sub_276A22244(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 0x2DFD70, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSPMessages.pb.cc", a4);
  *&v5 = 0;
  unk_2812FD9A8 = v5;
  TSP::_LargeLazyObjectArray_default_instance_[0] = &unk_2885C38E0;
  if (atomic_load_explicit(scc_info_LargeLazyObjectArray_TSPMessages_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_LargeLazyObjectArray_TSPMessages_2eproto);
  }

  qword_2812FD9B8 = 0;

  google::protobuf::internal::OnShutdownRun(google::protobuf::internal::DestroyMessage, TSP::_LargeLazyObjectArray_default_instance_, v4);
}

void sub_276A222F4(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 0x2DFD70, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSPMessages.pb.cc", a4);
  TSP::LargeLazyObjectArraySegment::LargeLazyObjectArraySegment(&TSP::_LargeLazyObjectArraySegment_default_instance_, 0);

  google::protobuf::internal::OnShutdownRun(google::protobuf::internal::DestroyMessage, &TSP::_LargeLazyObjectArraySegment_default_instance_, v4);
}

void sub_276A22364(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 0x2DFD70, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSPMessages.pb.cc", a4);
  *&v5 = 0;
  unk_2812FD968 = v5;
  TSP::_LargeNumberArray_default_instance_[0] = &unk_2885C3780;
  if (atomic_load_explicit(scc_info_LargeNumberArray_TSPMessages_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_LargeNumberArray_TSPMessages_2eproto);
  }

  qword_2812FD978 = 0;

  google::protobuf::internal::OnShutdownRun(google::protobuf::internal::DestroyMessage, TSP::_LargeNumberArray_default_instance_, v4);
}

void sub_276A22414(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 0x2DFD70, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSPMessages.pb.cc", a4);
  TSP::LargeNumberArraySegment::LargeNumberArraySegment(&TSP::_LargeNumberArraySegment_default_instance_, 0);

  google::protobuf::internal::OnShutdownRun(google::protobuf::internal::DestroyMessage, &TSP::_LargeNumberArraySegment_default_instance_, v4);
}

void sub_276A22484(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 0x2DFD70, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSPMessages.pb.cc", a4);
  *&v5 = 0;
  unk_2812FD9C8 = v5;
  TSP::_LargeObjectArray_default_instance_[0] = &unk_2885C3990;
  if (atomic_load_explicit(scc_info_LargeObjectArray_TSPMessages_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_LargeObjectArray_TSPMessages_2eproto);
  }

  qword_2812FD9D8 = 0;

  google::protobuf::internal::OnShutdownRun(google::protobuf::internal::DestroyMessage, TSP::_LargeObjectArray_default_instance_, v4);
}

void sub_276A22534(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 0x2DFD70, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSPMessages.pb.cc", a4);
  TSP::LargeObjectArraySegment::LargeObjectArraySegment(&TSP::_LargeObjectArraySegment_default_instance_, 0);

  google::protobuf::internal::OnShutdownRun(google::protobuf::internal::DestroyMessage, &TSP::_LargeObjectArraySegment_default_instance_, v4);
}

void sub_276A225A4(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 0x2DFD70, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSPMessages.pb.cc", a4);
  *&v5 = 0;
  unk_2812FD988 = v5;
  TSP::_LargeStringArray_default_instance_[0] = &unk_2885C3830;
  if (atomic_load_explicit(scc_info_LargeStringArray_TSPMessages_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_LargeStringArray_TSPMessages_2eproto);
  }

  qword_2812FD998 = 0;

  google::protobuf::internal::OnShutdownRun(google::protobuf::internal::DestroyMessage, TSP::_LargeStringArray_default_instance_, v4);
}

void sub_276A22654(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 0x2DFD70, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSPMessages.pb.cc", a4);
  TSP::LargeStringArraySegment::LargeStringArraySegment(&TSP::_LargeStringArraySegment_default_instance_, 0);

  google::protobuf::internal::OnShutdownRun(google::protobuf::internal::DestroyMessage, &TSP::_LargeStringArraySegment_default_instance_, v4);
}

void sub_276A226C4(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 0x2DFD70, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSPMessages.pb.cc", a4);
  *&v5 = 0;
  unk_2812FD7F8 = v5;
  TSP::_LargeStringArraySegment_OptionalElement_default_instance_[0] = &unk_2885C3360;
  if (atomic_load_explicit(scc_info_LargeStringArraySegment_OptionalElement_TSPMessages_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_LargeStringArraySegment_OptionalElement_TSPMessages_2eproto);
  }

  qword_2812FD808 = &google::protobuf::internal::fixed_address_empty_string;

  google::protobuf::internal::OnShutdownRun(google::protobuf::internal::DestroyMessage, TSP::_LargeStringArraySegment_OptionalElement_default_instance_, v4);
}

void sub_276A2277C(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 0x2DFD70, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSPMessages.pb.cc", a4);
  *&v5 = 0;
  unk_2812FD9E8 = v5;
  TSP::_LargeUUIDArray_default_instance_[0] = &unk_2885C3A40;
  if (atomic_load_explicit(scc_info_LargeUUIDArray_TSPMessages_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_LargeUUIDArray_TSPMessages_2eproto);
  }

  qword_2812FD9F8 = 0;

  google::protobuf::internal::OnShutdownRun(google::protobuf::internal::DestroyMessage, TSP::_LargeUUIDArray_default_instance_, v4);
}

void sub_276A2282C(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 0x2DFD70, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSPMessages.pb.cc", a4);
  TSP::LargeUUIDArraySegment::LargeUUIDArraySegment(&TSP::_LargeUUIDArraySegment_default_instance_, 0);

  google::protobuf::internal::OnShutdownRun(google::protobuf::internal::DestroyMessage, &TSP::_LargeUUIDArraySegment_default_instance_, v4);
}

void sub_276A2289C(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 0x2DFD70, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSPMessages.pb.cc", a4);
  TSP::ObjectCollection::ObjectCollection(&TSP::_ObjectCollection_default_instance_, 0);

  google::protobuf::internal::OnShutdownRun(google::protobuf::internal::DestroyMessage, &TSP::_ObjectCollection_default_instance_, v4);
}

void sub_276A2290C(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 0x2DFD70, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSPMessages.pb.cc", a4);
  TSP::ObjectContainer::ObjectContainer(&TSP::_ObjectContainer_default_instance_, 0);

  google::protobuf::internal::OnShutdownRun(google::protobuf::internal::DestroyMessage, &TSP::_ObjectContainer_default_instance_, v4);
}

void sub_276A2297C(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 0x2DFD70, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSPMessages.pb.cc", a4);
  TSP::PasteboardObject::PasteboardObject(&TSP::_PasteboardObject_default_instance_, 0);

  google::protobuf::internal::OnShutdownRun(google::protobuf::internal::DestroyMessage, &TSP::_PasteboardObject_default_instance_, v4);
}

void sub_276A229EC(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 0x2DFD70, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSPMessages.pb.cc", a4);
  TSP::Path::Path(&TSP::_Path_default_instance_, 0);

  google::protobuf::internal::OnShutdownRun(google::protobuf::internal::DestroyMessage, &TSP::_Path_default_instance_, v4);
}

void sub_276A22A5C(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 0x2DFD70, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSPMessages.pb.cc", a4);
  TSP::Path_Element::Path_Element(&TSP::_Path_Element_default_instance_, 0);

  google::protobuf::internal::OnShutdownRun(google::protobuf::internal::DestroyMessage, &TSP::_Path_Element_default_instance_, v4);
}

void sub_276A22ACC(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 0x2DFD70, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSPMessages.pb.cc", a4);
  qword_2812FD1C8 = 0;
  unk_2812FD1D0 = 0;
  TSP::_Point_default_instance_ = &unk_2885C1EC0;
  qword_2812FD1D8 = 0;

  google::protobuf::internal::OnShutdownRun(google::protobuf::internal::DestroyMessage, &TSP::_Point_default_instance_, v4);
}

void sub_276A22B48(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 0x2DFD70, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSPMessages.pb.cc", a4);
  qword_2812FD1E8 = 0;
  unk_2812FD1F0 = 0;
  TSP::_Pose3D_default_instance_ = &unk_2885C1F70;
  qword_2812FD1F8 = 0;
  dword_2812FD200 = 0;

  google::protobuf::internal::OnShutdownRun(google::protobuf::internal::DestroyMessage, &TSP::_Pose3D_default_instance_, v4);
}

void sub_276A22BC8(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 0x2DFD70, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSPMessages.pb.cc", a4);
  qword_2812FD258 = 0;
  unk_2812FD260 = 0;
  TSP::_Range_default_instance_ = &unk_2885C2180;
  qword_2812FD268 = 0;

  google::protobuf::internal::OnShutdownRun(google::protobuf::internal::DestroyMessage, &TSP::_Range_default_instance_, v4);
}

void sub_276A22C44(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 0x2DFD70, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSPMessages.pb.cc", a4);
  *&v5 = 0;
  *algn_2812FD210 = v5;
  TSP::_Rect_default_instance_ = &unk_2885C2020;
  if (atomic_load_explicit(scc_info_Rect_TSPMessages_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_Rect_TSPMessages_2eproto);
  }

  qword_2812FD220 = 0;
  unk_2812FD228 = 0;

  google::protobuf::internal::OnShutdownRun(google::protobuf::internal::DestroyMessage, &TSP::_Rect_default_instance_, v4);
}

void sub_276A22CF4(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 0x2DFD70, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSPMessages.pb.cc", a4);
  qword_2812FD120 = 0;
  unk_2812FD128 = 0;
  TSP::_Reference_default_instance_ = &unk_2885C1C00;
  qword_2812FD130 = 0;
  *(&qword_2812FD130 + 5) = 0;

  google::protobuf::internal::OnShutdownRun(google::protobuf::internal::DestroyMessage, &TSP::_Reference_default_instance_, v4);
}

void sub_276A22D74(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 0x2DFD70, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSPMessages.pb.cc", a4);
  TSP::ReferenceDictionary::ReferenceDictionary(&TSP::_ReferenceDictionary_default_instance_, 0);

  google::protobuf::internal::OnShutdownRun(google::protobuf::internal::DestroyMessage, &TSP::_ReferenceDictionary_default_instance_, v4);
}

void sub_276A22DE4(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 0x2DFD70, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSPMessages.pb.cc", a4);
  *&v5 = 0;
  unk_2812FD378 = v5;
  TSP::_ReferenceDictionary_Entry_default_instance_[0] = &unk_2885C25A0;
  if (atomic_load_explicit(scc_info_ReferenceDictionary_Entry_TSPMessages_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_ReferenceDictionary_Entry_TSPMessages_2eproto);
  }

  qword_2812FD388 = 0;
  unk_2812FD390 = 0;

  google::protobuf::internal::OnShutdownRun(google::protobuf::internal::DestroyMessage, TSP::_ReferenceDictionary_Entry_default_instance_, v4);
}

void sub_276A22E94(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 0x2DFD70, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSPMessages.pb.cc", a4);
  qword_2812FD238 = 0;
  unk_2812FD240 = 0;
  TSP::_Size_default_instance_ = &unk_2885C20D0;
  qword_2812FD248 = 0;

  google::protobuf::internal::OnShutdownRun(google::protobuf::internal::DestroyMessage, &TSP::_Size_default_instance_, v4);
}

void sub_276A22F10(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 0x2DFD70, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSPMessages.pb.cc", a4);
  TSP::SparseReferenceArray::SparseReferenceArray(&TSP::_SparseReferenceArray_default_instance_, 0);

  google::protobuf::internal::OnShutdownRun(google::protobuf::internal::DestroyMessage, &TSP::_SparseReferenceArray_default_instance_, v4);
}

void sub_276A22F80(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 0x2DFD70, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSPMessages.pb.cc", a4);
  *&v5 = 0;
  unk_2812FD168 = v5;
  TSP::_SparseReferenceArray_Entry_default_instance_[0] = &unk_2885C1D60;
  if (atomic_load_explicit(scc_info_SparseReferenceArray_Entry_TSPMessages_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_SparseReferenceArray_Entry_TSPMessages_2eproto);
  }

  dword_2812FD180 = 0;
  qword_2812FD178 = 0;

  google::protobuf::internal::OnShutdownRun(google::protobuf::internal::DestroyMessage, TSP::_SparseReferenceArray_Entry_default_instance_, v4);
}

void sub_276A23034(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 0x2DFD70, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSPMessages.pb.cc", a4);
  TSP::SparseUUIDArray::SparseUUIDArray(&TSP::_SparseUUIDArray_default_instance_, 0);

  google::protobuf::internal::OnShutdownRun(google::protobuf::internal::DestroyMessage, &TSP::_SparseUUIDArray_default_instance_, v4);
}

void sub_276A230A4(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 0x2DFD70, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSPMessages.pb.cc", a4);
  *&v5 = 0;
  unk_2812FD558 = v5;
  TSP::_SparseUUIDArray_Entry_default_instance_[0] = &unk_2885C2BD0;
  if (atomic_load_explicit(scc_info_SparseUUIDArray_Entry_TSPMessages_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_SparseUUIDArray_Entry_TSPMessages_2eproto);
  }

  dword_2812FD570 = 0;
  qword_2812FD568 = 0;

  google::protobuf::internal::OnShutdownRun(google::protobuf::internal::DestroyMessage, TSP::_SparseUUIDArray_Entry_default_instance_, v4);
}

void sub_276A23158(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 0x2DFD70, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSPMessages.pb.cc", a4);
  TSP::SparseUUIDPathArray::SparseUUIDPathArray(&TSP::_SparseUUIDPathArray_default_instance_, 0);

  google::protobuf::internal::OnShutdownRun(google::protobuf::internal::DestroyMessage, &TSP::_SparseUUIDPathArray_default_instance_, v4);
}

void sub_276A231C8(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 0x2DFD70, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSPMessages.pb.cc", a4);
  *&v5 = 0;
  unk_2812FD5E8 = v5;
  TSP::_SparseUUIDPathArray_Entry_default_instance_[0] = &unk_2885C2DE0;
  if (atomic_load_explicit(scc_info_SparseUUIDPathArray_Entry_TSPMessages_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_SparseUUIDPathArray_Entry_TSPMessages_2eproto);
  }

  dword_2812FD600 = 0;
  qword_2812FD5F8 = 0;

  google::protobuf::internal::OnShutdownRun(google::protobuf::internal::DestroyMessage, TSP::_SparseUUIDPathArray_Entry_default_instance_, v4);
}

void sub_276A2327C(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 0x2DFD70, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSPMessages.pb.cc", a4);
  qword_2812FD3D0 = 0;
  unk_2812FD3D8 = 0;
  TSP::_UUID_default_instance_ = &unk_2885C2700;
  qword_2812FD3E0 = 0;
  unk_2812FD3E8 = 0;

  google::protobuf::internal::OnShutdownRun(google::protobuf::internal::DestroyMessage, &TSP::_UUID_default_instance_, v4);
}

void sub_276A232F8(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 0x2DFD70, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSPMessages.pb.cc", a4);
  *&v5 = 0;
  unk_2812FD4E8 = v5;
  TSP::_UUIDCoordArchive_default_instance_[0] = &unk_2885C2A70;
  if (atomic_load_explicit(scc_info_UUIDCoordArchive_TSPMessages_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_UUIDCoordArchive_TSPMessages_2eproto);
  }

  qword_2812FD4F8 = 0;
  unk_2812FD500 = 0;

  google::protobuf::internal::OnShutdownRun(google::protobuf::internal::DestroyMessage, TSP::_UUIDCoordArchive_default_instance_, v4);
}

void sub_276A233A8(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 0x2DFD70, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSPMessages.pb.cc", a4);
  TSP::UUIDMapArchive::UUIDMapArchive(&TSP::_UUIDMapArchive_default_instance_, 0);

  google::protobuf::internal::OnShutdownRun(google::protobuf::internal::DestroyMessage, &TSP::_UUIDMapArchive_default_instance_, v4);
}

void sub_276A23418(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 0x2DFD70, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSPMessages.pb.cc", a4);
  TSP::UUIDMultiMapArchive::UUIDMultiMapArchive(&TSP::_UUIDMultiMapArchive_default_instance_, 0);

  google::protobuf::internal::OnShutdownRun(google::protobuf::internal::DestroyMessage, &TSP::_UUIDMultiMapArchive_default_instance_, v4);
}

void sub_276A23488(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 0x2DFD70, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSPMessages.pb.cc", a4);
  TSP::UUIDPath::UUIDPath(&TSP::_UUIDPath_default_instance_, 0);

  google::protobuf::internal::OnShutdownRun(google::protobuf::internal::DestroyMessage, &TSP::_UUIDPath_default_instance_, v4);
}

void sub_276A234F8(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 0x2DFD70, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSPMessages.pb.cc", a4);
  TSP::UUIDRectArchive::UUIDRectArchive(&TSP::_UUIDRectArchive_default_instance_, 0);

  google::protobuf::internal::OnShutdownRun(google::protobuf::internal::DestroyMessage, &TSP::_UUIDRectArchive_default_instance_, v4);
}

void sub_276A23568(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 0x2DFD70, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSPMessages.pb.cc", a4);
  TSP::UUIDSetArchive::UUIDSetArchive(&TSP::_UUIDSetArchive_default_instance_, 0);

  google::protobuf::internal::OnShutdownRun(google::protobuf::internal::DestroyMessage, &TSP::_UUIDSetArchive_default_instance_, v4);
}

void *TSP::Reference::Reference(void *this, Arena *a2)
{
  *this = &unk_2885C1C00;
  this[1] = a2;
  this[2] = 0;
  this[3] = 0;
  *(this + 29) = 0;
  return this;
}

{
  *this = &unk_2885C1C00;
  this[1] = a2;
  this[2] = 0;
  this[3] = 0;
  *(this + 29) = 0;
  return this;
}

TSP::Reference *TSP::Reference::Reference(TSP::Reference *this, const TSP::Reference *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_2885C1C00;
  *(this + 4) = *(a2 + 4);
  *(this + 5) = 0;
  v5 = *(a2 + 1);
  if (v5)
  {
    sub_2769F63D8(v4, ((v5 & 0xFFFFFFFFFFFFFFFELL) + 8));
  }

  v6 = *(a2 + 3);
  *(this + 29) = *(a2 + 29);
  *(this + 3) = v6;
  return this;
}

void TSP::Reference::~Reference(TSP::Reference *this)
{
  sub_2769DEC8C(this + 1);
}

{
  sub_2769DEC8C(this + 1);
}

{
  sub_2769DEC8C(this + 1);

  JUMPOUT(0x277C9F670);
}

uint64_t *TSP::Reference::default_instance(TSP::Reference *this)
{
  if (atomic_load_explicit(scc_info_Reference_TSPMessages_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_Reference_TSPMessages_2eproto);
  }

  return &TSP::_Reference_default_instance_;
}

google::protobuf::UnknownFieldSet *TSP::Reference::Clear(TSP::Reference *this)
{
  if ((*(this + 16) & 7) != 0)
  {
    *(this + 29) = 0;
    *(this + 3) = 0;
  }

  v2 = *(this + 8);
  result = (this + 8);
  *(result + 2) = 0;
  if (v2)
  {
    return sub_2769F6424(result);
  }

  return result;
}

google::protobuf::internal *TSP::Reference::_InternalParse(TSP::Reference *this, google::protobuf::internal *a2, google::protobuf::internal::ParseContext *a3)
{
  v33 = a2;
  v6 = 0;
  if ((sub_2769F6104(a3, &v33, *(a3 + 23)) & 1) == 0)
  {
    while (1)
    {
      v8 = (v33 + 1);
      v9 = *v33;
      if ((*v33 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v10 = v9 + (*v8 << 7);
      v9 = v10 - 128;
      if ((*v8 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v33, (v10 - 128));
      v33 = TagFallback;
      if (!TagFallback)
      {
        goto LABEL_47;
      }

      v8 = TagFallback;
      v9 = v26;
LABEL_7:
      v11 = v9 >> 3;
      if (v9 >> 3 == 3)
      {
        if (v9 != 24)
        {
          goto LABEL_13;
        }

        v6 |= 4u;
        v20 = (v8 + 1);
        v19 = *v8;
        if ((v19 & 0x8000000000000000) == 0)
        {
          goto LABEL_30;
        }

        v21 = *v20;
        v19 = (v21 << 7) + v19 - 128;
        if ((v21 & 0x80000000) == 0)
        {
          v20 = (v8 + 2);
LABEL_30:
          v33 = v20;
          *(this + 36) = v19 != 0;
          goto LABEL_35;
        }

        v31 = google::protobuf::internal::VarintParseSlow64(v8, v19);
        v33 = v31;
        *(this + 36) = v32 != 0;
        if (!v31)
        {
          goto LABEL_47;
        }
      }

      else if (v11 == 2)
      {
        if (v9 != 16)
        {
          goto LABEL_13;
        }

        v6 |= 2u;
        v17 = (v8 + 1);
        LODWORD(v16) = *v8;
        if ((v16 & 0x80) == 0)
        {
          goto LABEL_25;
        }

        v18 = *v17;
        v16 = v16 + (v18 << 7) - 128;
        if ((v18 & 0x80000000) == 0)
        {
          v17 = (v8 + 2);
LABEL_25:
          v33 = v17;
          *(this + 8) = v16;
          goto LABEL_35;
        }

        v27 = google::protobuf::internal::VarintParseSlow64(v8, v16);
        v33 = v27;
        *(this + 8) = v28;
        if (!v27)
        {
          goto LABEL_47;
        }
      }

      else
      {
        if (v11 != 1 || v9 != 8)
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
            *(a3 + 20) = v9 - 1;
            goto LABEL_2;
          }

          v14 = *(this + 1);
          if (v14)
          {
            v15 = ((v14 & 0xFFFFFFFFFFFFFFFELL) + 8);
          }

          else
          {
            v15 = sub_2769F617C(this + 1);
            v8 = v33;
          }

          v33 = google::protobuf::internal::UnknownFieldParse(v9, v15, v8, a3, v5);
          if (!v33)
          {
LABEL_47:
            v33 = 0;
            goto LABEL_2;
          }

          goto LABEL_35;
        }

        v6 |= 1u;
        v23 = (v8 + 1);
        v22 = *v8;
        if ((v22 & 0x8000000000000000) == 0)
        {
          goto LABEL_34;
        }

        v24 = *v23;
        v22 = (v24 << 7) + v22 - 128;
        if ((v24 & 0x80000000) == 0)
        {
          v23 = (v8 + 2);
LABEL_34:
          v33 = v23;
          *(this + 3) = v22;
          goto LABEL_35;
        }

        v29 = google::protobuf::internal::VarintParseSlow64(v8, v22);
        v33 = v29;
        *(this + 3) = v30;
        if (!v29)
        {
          goto LABEL_47;
        }
      }

LABEL_35:
      if (sub_2769F6104(a3, &v33, *(a3 + 23)))
      {
        goto LABEL_2;
      }
    }

    v8 = (v33 + 2);
LABEL_6:
    v33 = v8;
    goto LABEL_7;
  }

LABEL_2:
  *(this + 4) |= v6;
  return v33;
}

const google::protobuf::UnknownFieldSet *TSP::Reference::_InternalSerialize(TSP::Reference *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3, google::protobuf::io::EpsCopyOutputStream *a4)
{
  v6 = *(this + 4);
  if (v6)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v10 = *(this + 3);
    *a2 = 8;
    if (v10 > 0x7F)
    {
      a2[1] = v10 | 0x80;
      v11 = v10 >> 7;
      if (v10 >> 14)
      {
        a2 += 3;
        do
        {
          *(a2 - 1) = v11 | 0x80;
          v12 = v11 >> 7;
          ++a2;
          v13 = v11 >> 14;
          v11 >>= 7;
        }

        while (v13);
        *(a2 - 1) = v12;
        if ((v6 & 2) != 0)
        {
          goto LABEL_20;
        }
      }

      else
      {
        a2[2] = v11;
        a2 += 3;
        if ((v6 & 2) != 0)
        {
          goto LABEL_20;
        }
      }
    }

    else
    {
      a2[1] = v10;
      a2 += 2;
      if ((v6 & 2) != 0)
      {
        goto LABEL_20;
      }
    }

LABEL_3:
    if ((v6 & 4) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_4;
  }

  if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

LABEL_20:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v14 = *(this + 8);
  *a2 = 16;
  if (v14 > 0x7F)
  {
    a2[1] = v14 | 0x80;
    v15 = v14 >> 7;
    if (v14 >> 14)
    {
      a2 += 3;
      do
      {
        *(a2 - 1) = v15 | 0x80;
        v16 = v15 >> 7;
        ++a2;
        v17 = v15 >> 14;
        v15 >>= 7;
      }

      while (v17);
      *(a2 - 1) = v16;
      if ((v6 & 4) == 0)
      {
        goto LABEL_7;
      }
    }

    else
    {
      a2[2] = v15;
      a2 += 3;
      if ((v6 & 4) == 0)
      {
        goto LABEL_7;
      }
    }
  }

  else
  {
    a2[1] = v14;
    a2 += 2;
    if ((v6 & 4) == 0)
    {
      goto LABEL_7;
    }
  }

LABEL_4:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v7 = *(this + 36);
  *a2 = 24;
  a2[1] = v7;
  a2 += 2;
LABEL_7:
  v8 = *(this + 1);
  if ((v8 & 1) == 0)
  {
    return a2;
  }

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v8 & 0xFFFFFFFFFFFFFFFELL) + 8), a2, a3, a4);
}

const InternalMetadata *TSP::Reference::ByteSizeLong(TSP::Reference *this, uint64_t a2, uint64_t a3, CachedSize *a4)
{
  v4 = *(this + 4);
  if (v4)
  {
    v5 = (((9 * (__clz(*(this + 3) | 1) ^ 0x3F) + 73) >> 6) + 1);
  }

  else
  {
    v5 = 0;
  }

  if ((v4 & 6) != 0)
  {
    if ((v4 & 2) != 0)
    {
      v6 = *(this + 8);
      if (v6 < 0)
      {
        v7 = 11;
      }

      else
      {
        v7 = ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 1;
      }

      v5 = (v5 + v7);
    }

    v5 = (v5 + ((v4 >> 1) & 2));
  }

  if (*(this + 8))
  {
    return google::protobuf::internal::ComputeUnknownFieldsSize((this + 8), v5, this + 5, a4);
  }

  *(this + 5) = v5;
  return v5;
}

void TSP::Reference::MergeFrom(TSP::Reference *this, char **lpsrc)
{
  v4 = **lpsrc;
  if (v5)
  {

    TSP::Reference::MergeFrom(this, v5);
  }

  else
  {

    google::protobuf::internal::ReflectionOps::Merge(lpsrc, this, v6);
  }
}

void *TSP::Reference::MergeFrom(void *this, const TSP::Reference *a2)
{
  v3 = this;
  v4 = *(a2 + 1);
  if (v4)
  {
    this = sub_2769F63D8(this + 1, ((v4 & 0xFFFFFFFFFFFFFFFELL) + 8));
  }

  v5 = *(a2 + 4);
  if ((v5 & 7) != 0)
  {
    if (v5)
    {
      v3[3] = *(a2 + 3);
      if ((v5 & 2) == 0)
      {
LABEL_6:
        if ((v5 & 4) == 0)
        {
LABEL_8:
          *(v3 + 4) |= v5;
          return this;
        }

LABEL_7:
        *(v3 + 36) = *(a2 + 36);
        goto LABEL_8;
      }
    }

    else if ((v5 & 2) == 0)
    {
      goto LABEL_6;
    }

    *(v3 + 8) = *(a2 + 8);
    if ((v5 & 4) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  return this;
}

void TSP::Reference::CopyFrom(char **this, char **a2)
{
  if (a2 != this)
  {
    TSP::Reference::Clear(this);

    TSP::Reference::MergeFrom(this, a2);
  }
}

TSP::Reference *TSP::Reference::CopyFrom(TSP::Reference *this, const TSP::Reference *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSP::Reference::Clear(this);

    return TSP::Reference::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSP::Reference::InternalSwap(TSP::Reference *this, google::protobuf::Arena **a2)
{
  result = sub_2769DF630(this + 1, a2 + 1);
  v5 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v5;
  v6 = *(this + 3);
  *(this + 3) = a2[3];
  a2[3] = v6;
  LODWORD(v6) = *(this + 8);
  *(this + 8) = *(a2 + 8);
  *(a2 + 8) = v6;
  LOBYTE(v6) = *(this + 36);
  *(this + 36) = *(a2 + 36);
  *(a2 + 36) = v6;
  return result;
}

uint64_t TSP::Reference::GetMetadata(TSP::Reference *this)
{
  google::protobuf::internal::AssignDescriptors(&descriptor_table_TSPMessages_2eproto, 0);
  result = *off_2812FC248;
  v2 = off_2812FC248[1];
  return result;
}

void *TSP::DataReference::DataReference(void *this, Arena *a2)
{
  *this = &unk_2885C1CB0;
  this[1] = a2;
  this[2] = 0;
  this[3] = 0;
  return this;
}

{
  *this = &unk_2885C1CB0;
  this[1] = a2;
  this[2] = 0;
  this[3] = 0;
  return this;
}

TSP::DataReference *TSP::DataReference::DataReference(TSP::DataReference *this, const TSP::DataReference *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_2885C1CB0;
  *(this + 4) = *(a2 + 4);
  *(this + 5) = 0;
  v5 = *(a2 + 1);
  if (v5)
  {
    sub_2769F63D8(v4, ((v5 & 0xFFFFFFFFFFFFFFFELL) + 8));
  }

  *(this + 3) = *(a2 + 3);
  return this;
}

void TSP::DataReference::~DataReference(TSP::DataReference *this)
{
  sub_2769DEC8C(this + 1);
}

{
  sub_2769DEC8C(this + 1);
}

{
  sub_2769DEC8C(this + 1);

  JUMPOUT(0x277C9F670);
}

uint64_t *TSP::DataReference::default_instance(TSP::DataReference *this)
{
  if (atomic_load_explicit(scc_info_DataReference_TSPMessages_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_DataReference_TSPMessages_2eproto);
  }

  return &TSP::_DataReference_default_instance_;
}

google::protobuf::UnknownFieldSet *TSP::DataReference::Clear(TSP::DataReference *this)
{
  v2 = *(this + 8);
  result = (this + 8);
  *(result + 2) = 0;
  *(result + 2) = 0;
  if (v2)
  {
    return sub_2769F6424(result);
  }

  return result;
}

google::protobuf::internal *TSP::DataReference::_InternalParse(TSP::DataReference *this, google::protobuf::internal *a2, google::protobuf::internal::ParseContext *a3)
{
  v21 = a2;
  v6 = 0;
  if ((sub_2769F6104(a3, &v21, *(a3 + 23)) & 1) == 0)
  {
    while (1)
    {
      v7 = (v21 + 1);
      v8 = *v21;
      if ((*v21 & 0x80000000) == 0)
      {
        goto LABEL_5;
      }

      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if ((*v7 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v21, (v9 - 128));
      v21 = TagFallback;
      if (!TagFallback)
      {
        goto LABEL_28;
      }

      v7 = TagFallback;
      v8 = v17;
LABEL_6:
      if (v8 == 8)
      {
        v14 = (v7 + 1);
        v13 = *v7;
        if ((v13 & 0x8000000000000000) == 0)
        {
          goto LABEL_18;
        }

        v15 = *v14;
        v13 = (v15 << 7) + v13 - 128;
        if ((v15 & 0x80000000) == 0)
        {
          v14 = (v7 + 2);
LABEL_18:
          v21 = v14;
          *(this + 3) = v13;
          v6 = 1;
          goto LABEL_19;
        }

        v18 = google::protobuf::internal::VarintParseSlow64(v7, v13);
        v21 = v18;
        *(this + 3) = v19;
        v6 = 1;
        if (!v18)
        {
          goto LABEL_28;
        }
      }

      else
      {
        if (v8)
        {
          v10 = (v8 & 7) == 4;
        }

        else
        {
          v10 = 1;
        }

        if (v10)
        {
          *(a3 + 20) = v8 - 1;
          goto LABEL_27;
        }

        v11 = *(this + 1);
        if (v11)
        {
          v12 = ((v11 & 0xFFFFFFFFFFFFFFFELL) + 8);
        }

        else
        {
          v12 = sub_2769F617C(this + 1);
          v7 = v21;
        }

        v21 = google::protobuf::internal::UnknownFieldParse(v8, v12, v7, a3, v5);
        if (!v21)
        {
LABEL_28:
          v21 = 0;
          goto LABEL_27;
        }
      }

LABEL_19:
      if (sub_2769F6104(a3, &v21, *(a3 + 23)))
      {
        goto LABEL_27;
      }
    }

    v7 = (v21 + 2);
LABEL_5:
    v21 = v7;
    goto LABEL_6;
  }

LABEL_27:
  *(this + 4) |= v6;
  return v21;
}

const google::protobuf::UnknownFieldSet *TSP::DataReference::_InternalSerialize(TSP::DataReference *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3, google::protobuf::io::EpsCopyOutputStream *a4)
{
  if (*(this + 16))
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v6 = *(this + 3);
    *a2 = 8;
    if (v6 > 0x7F)
    {
      a2[1] = v6 | 0x80;
      v7 = v6 >> 7;
      if (v6 >> 14)
      {
        a2 += 3;
        do
        {
          *(a2 - 1) = v7 | 0x80;
          v8 = v7 >> 7;
          ++a2;
          v9 = v7 >> 14;
          v7 >>= 7;
        }

        while (v9);
        *(a2 - 1) = v8;
      }

      else
      {
        a2[2] = v7;
        a2 += 3;
      }
    }

    else
    {
      a2[1] = v6;
      a2 += 2;
    }
  }

  v10 = *(this + 1);
  if ((v10 & 1) == 0)
  {
    return a2;
  }

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v10 & 0xFFFFFFFFFFFFFFFELL) + 8), a2, a3, a4);
}

const InternalMetadata *TSP::DataReference::ByteSizeLong(TSP::DataReference *this, uint64_t a2, uint64_t a3, CachedSize *a4)
{
  if (*(this + 16))
  {
    v4 = (((9 * (__clz(*(this + 3) | 1) ^ 0x3F) + 73) >> 6) + 1);
  }

  else
  {
    v4 = 0;
  }

  if (*(this + 8))
  {
    return google::protobuf::internal::ComputeUnknownFieldsSize((this + 8), v4, this + 5, a4);
  }

  *(this + 5) = v4;
  return v4;
}

void TSP::DataReference::MergeFrom(TSP::DataReference *this, char **lpsrc)
{
  v4 = **lpsrc;
  if (v5)
  {

    TSP::DataReference::MergeFrom(this, v5);
  }

  else
  {

    google::protobuf::internal::ReflectionOps::Merge(lpsrc, this, v6);
  }
}

void *TSP::DataReference::MergeFrom(void *this, const TSP::DataReference *a2)
{
  v3 = this;
  v4 = *(a2 + 1);
  if (v4)
  {
    this = sub_2769F63D8(this + 1, ((v4 & 0xFFFFFFFFFFFFFFFELL) + 8));
  }

  if (*(a2 + 16))
  {
    v5 = *(a2 + 3);
    *(v3 + 4) |= 1u;
    v3[3] = v5;
  }

  return this;
}

void TSP::DataReference::CopyFrom(char **this, char **lpsrc)
{
  if (lpsrc != this)
  {
    v6 = *(this + 8);
    v5 = (this + 1);
    *(v5 + 2) = 0;
    *(v5 + 2) = 0;
    if (v6)
    {
      sub_2769F6424(v5);
    }

    TSP::DataReference::MergeFrom(this, lpsrc);
  }
}

const TSP::DataReference *TSP::DataReference::CopyFrom(const TSP::DataReference *this, const TSP::DataReference *a2)
{
  if (a2 != this)
  {
    v4 = this;
    v6 = *(this + 8);
    v5 = this + 8;
    *(v5 + 2) = 0;
    *(v5 + 2) = 0;
    if (v6)
    {
      sub_2769F6424(v5);
    }

    return TSP::DataReference::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSP::DataReference::InternalSwap(TSP::DataReference *this, google::protobuf::Arena **a2)
{
  result = sub_2769DF630(this + 1, a2 + 1);
  v5 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v5;
  v6 = *(this + 3);
  *(this + 3) = a2[3];
  a2[3] = v6;
  return result;
}

uint64_t TSP::DataReference::GetMetadata(TSP::DataReference *this)
{
  google::protobuf::internal::AssignDescriptors(&descriptor_table_TSPMessages_2eproto, 0);
  result = off_2812FC248[2];
  v2 = off_2812FC248[3];
  return result;
}

TSP::SparseReferenceArray_Entry *TSP::SparseReferenceArray_Entry::SparseReferenceArray_Entry(TSP::SparseReferenceArray_Entry *this, Arena *a2)
{
  *this = &unk_2885C1D60;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_SparseReferenceArray_Entry_TSPMessages_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_SparseReferenceArray_Entry_TSPMessages_2eproto);
  }

  *(this + 8) = 0;
  *(this + 3) = 0;
  return this;
}

{
  *this = &unk_2885C1D60;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_SparseReferenceArray_Entry_TSPMessages_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_SparseReferenceArray_Entry_TSPMessages_2eproto);
  }

  *(this + 8) = 0;
  *(this + 3) = 0;
  return this;
}

TSP::SparseReferenceArray_Entry *TSP::SparseReferenceArray_Entry::SparseReferenceArray_Entry(TSP::SparseReferenceArray_Entry *this, const TSP::SparseReferenceArray_Entry *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_2885C1D60;
  v5 = *(a2 + 4);
  *(this + 2) = v5;
  v6 = *(a2 + 1);
  if (v6)
  {
    sub_2769F63D8(v4, ((v6 & 0xFFFFFFFFFFFFFFFELL) + 8));
    v5 = *(a2 + 4);
  }

  if (v5)
  {
    operator new();
  }

  *(this + 3) = 0;
  *(this + 8) = *(a2 + 8);
  return this;
}

void TSP::SparseReferenceArray_Entry::~SparseReferenceArray_Entry(TSP::SparseReferenceArray_Entry *this)
{
  if (this != TSP::_SparseReferenceArray_Entry_default_instance_)
  {
    v2 = *(this + 3);
    if (v2)
    {
      sub_2769DEC8C((v2 + 8));
      MEMORY[0x277C9F670](v2, 0x1081C407D3F2757);
    }
  }

  sub_2769DEC8C(this + 1);
}

{
  TSP::SparseReferenceArray_Entry::~SparseReferenceArray_Entry(this);

  JUMPOUT(0x277C9F670);
}

uint64_t *TSP::SparseReferenceArray_Entry::default_instance(TSP::SparseReferenceArray_Entry *this)
{
  if (atomic_load_explicit(scc_info_SparseReferenceArray_Entry_TSPMessages_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_SparseReferenceArray_Entry_TSPMessages_2eproto);
  }

  return TSP::_SparseReferenceArray_Entry_default_instance_;
}

google::protobuf::UnknownFieldSet *TSP::SparseReferenceArray_Entry::Clear(google::protobuf::UnknownFieldSet *this)
{
  v1 = this;
  if (*(this + 16))
  {
    this = TSP::Reference::Clear(*(this + 3));
  }

  v3 = *(v1 + 8);
  v2 = v1 + 8;
  *(v2 + 24) = 0;
  *(v2 + 8) = 0;
  if (v3)
  {

    return sub_2769F6424(v2);
  }

  return this;
}

google::protobuf::internal *TSP::SparseReferenceArray_Entry::_InternalParse(TSP::SparseReferenceArray_Entry *this, google::protobuf::internal *a2, google::protobuf::internal::ParseContext *a3)
{
  v25 = a2;
  v6 = 0;
  if ((sub_2769F6104(a3, &v25, *(a3 + 23)) & 1) == 0)
  {
    while (1)
    {
      v8 = (v25 + 1);
      v9 = *v25;
      if ((*v25 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v10 = v9 + (*v8 << 7);
      v9 = v10 - 128;
      if ((*v8 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v25, (v10 - 128));
      v25 = TagFallback;
      if (!TagFallback)
      {
        goto LABEL_39;
      }

      v8 = TagFallback;
      v9 = v22;
LABEL_7:
      if (v9 >> 3 == 2)
      {
        if (v9 == 18)
        {
          *(this + 4) |= 1u;
          v16 = *(this + 3);
          if (!v16)
          {
            v17 = *(this + 1);
            if (v17)
            {
              v17 = *(v17 & 0xFFFFFFFFFFFFFFFELL);
            }

            v16 = google::protobuf::Arena::CreateMaybeMessage<TSP::Reference>(v17);
            *(this + 3) = v16;
            v8 = v25;
          }

          v15 = sub_276BD2124(a3, v16, v8);
        }

        else
        {
LABEL_12:
          if (v9)
          {
            v12 = (v9 & 7) == 4;
          }

          else
          {
            v12 = 1;
          }

          if (v12)
          {
            *(a3 + 20) = v9 - 1;
            goto LABEL_2;
          }

          v13 = *(this + 1);
          if (v13)
          {
            v14 = ((v13 & 0xFFFFFFFFFFFFFFFELL) + 8);
          }

          else
          {
            v14 = sub_2769F617C(this + 1);
            v8 = v25;
          }

          v15 = google::protobuf::internal::UnknownFieldParse(v9, v14, v8, a3, v5);
        }

        v25 = v15;
        if (!v15)
        {
          goto LABEL_39;
        }

        goto LABEL_31;
      }

      if (v9 >> 3 != 1 || v9 != 8)
      {
        goto LABEL_12;
      }

      v6 |= 2u;
      v18 = (v8 + 1);
      LODWORD(v19) = *v8;
      if ((*v8 & 0x80000000) == 0)
      {
        goto LABEL_30;
      }

      v20 = *v18;
      v19 = (v19 + (v20 << 7) - 128);
      if ((v20 & 0x80000000) == 0)
      {
        v18 = (v8 + 2);
LABEL_30:
        v25 = v18;
        *(this + 8) = v19;
        goto LABEL_31;
      }

      v23 = google::protobuf::internal::VarintParseSlow32(v8, v19);
      v25 = v23;
      *(this + 8) = v24;
      if (!v23)
      {
LABEL_39:
        v25 = 0;
        goto LABEL_2;
      }

LABEL_31:
      if (sub_2769F6104(a3, &v25, *(a3 + 23)))
      {
        goto LABEL_2;
      }
    }

    v8 = (v25 + 2);
LABEL_6:
    v25 = v8;
    goto LABEL_7;
  }

LABEL_2:
  *(this + 4) |= v6;
  return v25;
}

const google::protobuf::UnknownFieldSet *TSP::SparseReferenceArray_Entry::_InternalSerialize(TSP::SparseReferenceArray_Entry *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3, google::protobuf::io::EpsCopyOutputStream *a4)
{
  v6 = *(this + 4);
  if ((v6 & 2) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v7 = *(this + 8);
    *a2 = 8;
    if (v7 <= 0x7F)
    {
      a2[1] = v7;
      a2 += 2;
      if ((v6 & 1) == 0)
      {
        goto LABEL_24;
      }

      goto LABEL_10;
    }

    a2[1] = v7 | 0x80;
    v8 = v7 >> 7;
    if (v7 >> 14)
    {
      a2 += 3;
      do
      {
        *(a2 - 1) = v8 | 0x80;
        v13 = v8 >> 7;
        ++a2;
        v14 = v8 >> 14;
        v8 >>= 7;
      }

      while (v14);
      *(a2 - 1) = v13;
      if ((v6 & 1) == 0)
      {
        goto LABEL_24;
      }

      goto LABEL_10;
    }

    a2[2] = v8;
    a2 += 3;
  }

  if ((v6 & 1) == 0)
  {
    goto LABEL_24;
  }

LABEL_10:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v9 = *(this + 3);
  *a2 = 18;
  v10 = *(v9 + 5);
  if (v10 > 0x7F)
  {
    a2[1] = v10 | 0x80;
    v12 = v10 >> 7;
    if (v10 >> 14)
    {
      v11 = a2 + 3;
      do
      {
        *(v11 - 1) = v12 | 0x80;
        v15 = v12 >> 7;
        ++v11;
        v16 = v12 >> 14;
        v12 >>= 7;
      }

      while (v16);
      *(v11 - 1) = v15;
    }

    else
    {
      a2[2] = v12;
      v11 = a2 + 3;
    }
  }

  else
  {
    a2[1] = v10;
    v11 = a2 + 2;
  }

  a2 = TSP::Reference::_InternalSerialize(v9, v11, a3, a4);
LABEL_24:
  v17 = *(this + 1);
  if ((v17 & 1) == 0)
  {
    return a2;
  }

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v17 & 0xFFFFFFFFFFFFFFFELL) + 8), a2, a3, a4);
}

uint64_t TSP::SparseReferenceArray_Entry::RequiredFieldsByteSizeFallback(TSP::SparseReferenceArray_Entry *this, uint64_t a2, uint64_t a3, CachedSize *a4)
{
  v5 = *(this + 4);
  if (v5)
  {
    v7 = TSP::Reference::ByteSizeLong(*(this + 3), a2, a3, a4);
    result = &v7->ptr_ + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((*(this + 4) & 2) == 0)
    {
      return result;
    }

    goto LABEL_5;
  }

  result = 0;
  if ((v5 & 2) != 0)
  {
LABEL_5:
    result += ((9 * (__clz(*(this + 8) | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  return result;
}

const InternalMetadata *TSP::SparseReferenceArray_Entry::ByteSizeLong(TSP::Reference **this, uint64_t a2, uint64_t a3, CachedSize *a4)
{
  if ((~*(this + 4) & 3) != 0)
  {
    v7 = TSP::SparseReferenceArray_Entry::RequiredFieldsByteSizeFallback(this, a2, a3, a4);
  }

  else
  {
    v5 = TSP::Reference::ByteSizeLong(this[3], a2, a3, a4);
    v7 = (&v5->ptr_ + ((9 * (__clz(*(this + 8) | 1) ^ 0x1F) + 73) >> 6) + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 2);
  }

  if (this[1])
  {

    return google::protobuf::internal::ComputeUnknownFieldsSize((this + 1), v7, this + 5, v6);
  }

  else
  {
    *(this + 5) = v7;
    return v7;
  }
}

void TSP::SparseReferenceArray_Entry::MergeFrom(TSP::SparseReferenceArray_Entry *this, char **lpsrc)
{
  v4 = **lpsrc;
  if (v5)
  {

    TSP::SparseReferenceArray_Entry::MergeFrom(this, v5);
  }

  else
  {

    google::protobuf::internal::ReflectionOps::Merge(lpsrc, this, v6);
  }
}

void *TSP::SparseReferenceArray_Entry::MergeFrom(void *this, const TSP::SparseReferenceArray_Entry *a2)
{
  v3 = this;
  v4 = *(a2 + 1);
  if (v4)
  {
    this = sub_2769F63D8(this + 1, ((v4 & 0xFFFFFFFFFFFFFFFELL) + 8));
  }

  v5 = *(a2 + 4);
  if ((v5 & 3) != 0)
  {
    if (v5)
    {
      *(v3 + 4) |= 1u;
      v6 = v3[3];
      if (!v6)
      {
        v7 = v3[1];
        if (v7)
        {
          v7 = *(v7 & 0xFFFFFFFFFFFFFFFELL);
        }

        v6 = google::protobuf::Arena::CreateMaybeMessage<TSP::Reference>(v7);
        v3[3] = v6;
      }

      if (*(a2 + 3))
      {
        v8 = *(a2 + 3);
      }

      else
      {
        v8 = &TSP::_Reference_default_instance_;
      }

      this = TSP::Reference::MergeFrom(v6, v8);
    }

    if ((v5 & 2) != 0)
    {
      *(v3 + 8) = *(a2 + 8);
    }

    *(v3 + 4) |= v5;
  }

  return this;
}

void TSP::SparseReferenceArray_Entry::CopyFrom(char **this, char **a2)
{
  if (a2 != this)
  {
    TSP::SparseReferenceArray_Entry::Clear(this);

    TSP::SparseReferenceArray_Entry::MergeFrom(this, a2);
  }
}

google::protobuf::UnknownFieldSet *TSP::SparseReferenceArray_Entry::CopyFrom(google::protobuf::UnknownFieldSet *this, const TSP::SparseReferenceArray_Entry *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSP::SparseReferenceArray_Entry::Clear(this);

    return TSP::SparseReferenceArray_Entry::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t TSP::SparseReferenceArray_Entry::IsInitialized(TSP::SparseReferenceArray_Entry *this)
{
  if ((~*(this + 4) & 3) != 0)
  {
    return 0;
  }

  else
  {
    return *(*(this + 3) + 16) & 1;
  }
}

uint64_t *TSP::SparseReferenceArray_Entry::InternalSwap(TSP::SparseReferenceArray_Entry *this, google::protobuf::Arena **a2)
{
  result = sub_2769DF630(this + 1, a2 + 1);
  v5 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v5;
  v6 = *(this + 3);
  *(this + 3) = a2[3];
  a2[3] = v6;
  LODWORD(v6) = *(this + 8);
  *(this + 8) = *(a2 + 8);
  *(a2 + 8) = v6;
  return result;
}

uint64_t TSP::SparseReferenceArray_Entry::GetMetadata(TSP::SparseReferenceArray_Entry *this)
{
  google::protobuf::internal::AssignDescriptors(&descriptor_table_TSPMessages_2eproto, 0);
  result = off_2812FC248[4];
  v2 = off_2812FC248[5];
  return result;
}

TSP::SparseReferenceArray *TSP::SparseReferenceArray::SparseReferenceArray(TSP::SparseReferenceArray *this, Arena *a2)
{
  *this = &unk_2885C1E10;
  *(this + 1) = a2;
  *(this + 3) = a2;
  *(this + 2) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  if (atomic_load_explicit(scc_info_SparseReferenceArray_TSPMessages_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_SparseReferenceArray_TSPMessages_2eproto);
  }

  *(this + 12) = 0;
  return this;
}

TSP::SparseReferenceArray *TSP::SparseReferenceArray::SparseReferenceArray(TSP::SparseReferenceArray *this, const TSP::SparseReferenceArray *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_2885C1E10;
  *(this + 4) = *(a2 + 4);
  *(this + 11) = 0;
  *(this + 28) = 0;
  *(this + 36) = 0;
  *(this + 20) = 0;
  v5 = *(a2 + 8);
  if (v5)
  {
    v6 = *(a2 + 5);
    v7 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((this + 24), *(a2 + 8));
    sub_276A43378(this + 3, v7, (v6 + 8), v5, **(this + 5) - *(this + 8));
    v8 = *(this + 8) + v5;
    *(this + 8) = v8;
    v9 = *(this + 5);
    if (*v9 < v8)
    {
      *v9 = v8;
    }
  }

  v10 = *(a2 + 1);
  if (v10)
  {
    sub_2769F63D8(v4, ((v10 & 0xFFFFFFFFFFFFFFFELL) + 8));
  }

  *(this + 12) = *(a2 + 12);
  return this;
}

void TSP::SparseReferenceArray::~SparseReferenceArray(TSP::SparseReferenceArray *this)
{
  sub_2769DEC8C(this + 1);
  sub_276A432F4(this + 3);
}

{
  TSP::SparseReferenceArray::~SparseReferenceArray(this);

  JUMPOUT(0x277C9F670);
}

void *TSP::SparseReferenceArray::default_instance(TSP::SparseReferenceArray *this)
{
  if (atomic_load_explicit(scc_info_SparseReferenceArray_TSPMessages_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_SparseReferenceArray_TSPMessages_2eproto);
  }

  return &TSP::_SparseReferenceArray_default_instance_;
}

google::protobuf::UnknownFieldSet *TSP::SparseReferenceArray::Clear(google::protobuf::UnknownFieldSet *this)
{
  v1 = this;
  v2 = *(this + 8);
  if (v2 >= 1)
  {
    v3 = (*(this + 5) + 8);
    do
    {
      v4 = *v3++;
      this = TSP::SparseReferenceArray_Entry::Clear(v4);
      --v2;
    }

    while (v2);
    *(v1 + 32) = 0;
  }

  v6 = *(v1 + 8);
  v5 = v1 + 8;
  *(v5 + 40) = 0;
  *(v5 + 8) = 0;
  if (v6)
  {

    return sub_2769F6424(v5);
  }

  return this;
}

google::protobuf::internal *TSP::SparseReferenceArray::_InternalParse(TSP::SparseReferenceArray *this, google::protobuf::internal *a2, google::protobuf::internal::ParseContext *a3)
{
  v30 = a2;
  v6 = 0;
  if ((sub_2769F6104(a3, &v30, *(a3 + 23)) & 1) == 0)
  {
    while (1)
    {
      v8 = (v30 + 1);
      v9 = *v30;
      if ((*v30 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v10 = v9 + (*v8 << 7);
      v9 = v10 - 128;
      if ((*v8 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v30, (v10 - 128));
      v30 = TagFallback;
      if (!TagFallback)
      {
        goto LABEL_46;
      }

      v8 = TagFallback;
      v9 = v27;
LABEL_7:
      if (v9 >> 3 == 2)
      {
        if (v9 != 18)
        {
LABEL_12:
          if (v9)
          {
            v12 = (v9 & 7) == 4;
          }

          else
          {
            v12 = 1;
          }

          if (v12)
          {
            *(a3 + 20) = v9 - 1;
            goto LABEL_2;
          }

          v13 = *(this + 1);
          if (v13)
          {
            v14 = ((v13 & 0xFFFFFFFFFFFFFFFELL) + 8);
          }

          else
          {
            v14 = sub_2769F617C(this + 1);
            v8 = v30;
          }

          v30 = google::protobuf::internal::UnknownFieldParse(v9, v14, v8, a3, v5);
          if (!v30)
          {
LABEL_46:
            v30 = 0;
            goto LABEL_2;
          }

          goto LABEL_38;
        }

        v15 = (v8 - 1);
        while (2)
        {
          v16 = (v15 + 1);
          v30 = (v15 + 1);
          v17 = *(this + 5);
          if (!v17)
          {
            v18 = *(this + 9);
            goto LABEL_24;
          }

          v22 = *(this + 8);
          v18 = *v17;
          if (v22 >= *v17)
          {
            if (v18 == *(this + 9))
            {
LABEL_24:
              google::protobuf::internal::RepeatedPtrFieldBase::Reserve(this + 6, v18 + 1);
              v17 = *(this + 5);
              v18 = *v17;
            }

            *v17 = v18 + 1;
            v19 = google::protobuf::Arena::CreateMaybeMessage<TSP::SparseReferenceArray_Entry>(*(this + 3));
            v20 = *(this + 8);
            v21 = *(this + 5) + 8 * v20;
            *(this + 8) = v20 + 1;
            *(v21 + 8) = v19;
            v16 = v30;
          }

          else
          {
            *(this + 8) = v22 + 1;
            v19 = *&v17[2 * v22 + 2];
          }

          v15 = sub_276BD39D0(a3, v19, v16);
          v30 = v15;
          if (!v15)
          {
            goto LABEL_46;
          }

          if (*a3 <= v15 || *v15 != 18)
          {
            goto LABEL_38;
          }

          continue;
        }
      }

      if (v9 >> 3 != 1 || v9 != 8)
      {
        goto LABEL_12;
      }

      v23 = (v8 + 1);
      LODWORD(v24) = *v8;
      if ((*v8 & 0x80000000) == 0)
      {
        goto LABEL_37;
      }

      v25 = *v23;
      v24 = (v24 + (v25 << 7) - 128);
      if ((v25 & 0x80000000) == 0)
      {
        v23 = (v8 + 2);
LABEL_37:
        v30 = v23;
        *(this + 12) = v24;
        v6 = 1;
        goto LABEL_38;
      }

      v28 = google::protobuf::internal::VarintParseSlow32(v8, v24);
      v30 = v28;
      *(this + 12) = v29;
      v6 = 1;
      if (!v28)
      {
        goto LABEL_46;
      }

LABEL_38:
      if (sub_2769F6104(a3, &v30, *(a3 + 23)))
      {
        goto LABEL_2;
      }
    }

    v8 = (v30 + 2);
LABEL_6:
    v30 = v8;
    goto LABEL_7;
  }

LABEL_2:
  *(this + 4) |= v6;
  return v30;
}

const google::protobuf::UnknownFieldSet *TSP::SparseReferenceArray::_InternalSerialize(TSP::SparseReferenceArray *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3, google::protobuf::io::EpsCopyOutputStream *a4)
{
  if (*(this + 16))
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v6 = *(this + 12);
    *a2 = 8;
    if (v6 > 0x7F)
    {
      a2[1] = v6 | 0x80;
      v7 = v6 >> 7;
      if (v6 >> 14)
      {
        a2 += 3;
        do
        {
          *(a2 - 1) = v7 | 0x80;
          v8 = v7 >> 7;
          ++a2;
          v9 = v7 >> 14;
          v7 >>= 7;
        }

        while (v9);
        *(a2 - 1) = v8;
      }

      else
      {
        a2[2] = v7;
        a2 += 3;
      }
    }

    else
    {
      a2[1] = v6;
      a2 += 2;
    }
  }

  v10 = *(this + 8);
  if (v10)
  {
    for (i = 0; i != v10; ++i)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v12 = *(*(this + 5) + 8 * i + 8);
      *a2 = 18;
      v13 = *(v12 + 5);
      if (v13 > 0x7F)
      {
        a2[1] = v13 | 0x80;
        v15 = v13 >> 7;
        if (v13 >> 14)
        {
          v14 = a2 + 3;
          do
          {
            *(v14 - 1) = v15 | 0x80;
            v16 = v15 >> 7;
            ++v14;
            v17 = v15 >> 14;
            v15 >>= 7;
          }

          while (v17);
          *(v14 - 1) = v16;
        }

        else
        {
          a2[2] = v15;
          v14 = a2 + 3;
        }
      }

      else
      {
        a2[1] = v13;
        v14 = a2 + 2;
      }

      a2 = TSP::SparseReferenceArray_Entry::_InternalSerialize(v12, v14, a3, a4);
    }
  }

  v18 = *(this + 1);
  if ((v18 & 1) == 0)
  {
    return a2;
  }

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v18 & 0xFFFFFFFFFFFFFFFELL) + 8), a2, a3, a4);
}

const InternalMetadata *TSP::SparseReferenceArray::ByteSizeLong(TSP::SparseReferenceArray *this, uint64_t a2, uint64_t a3, CachedSize *a4)
{
  if (*(this + 16))
  {
    v5 = ((9 * (__clz(*(this + 12) | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  else
  {
    v5 = 0;
  }

  v6 = *(this + 8);
  v7 = (v5 + v6);
  v8 = *(this + 5);
  if (v8)
  {
    v9 = (v8 + 8);
  }

  else
  {
    v9 = 0;
  }

  if (v6)
  {
    v10 = 8 * v6;
    do
    {
      v11 = *v9++;
      v12 = TSP::SparseReferenceArray_Entry::ByteSizeLong(v11, a2, a3, a4);
      v7 = (v7 + v12 + ((9 * (__clz(v12 | 1) ^ 0x1F) + 73) >> 6));
      v10 -= 8;
    }

    while (v10);
  }

  if (*(this + 8))
  {

    return google::protobuf::internal::ComputeUnknownFieldsSize((this + 8), v7, this + 5, a4);
  }

  else
  {
    *(this + 5) = v7;
    return v7;
  }
}

void TSP::SparseReferenceArray::MergeFrom(TSP::SparseReferenceArray *this, char **lpsrc)
{
  v4 = **lpsrc;
  if (v5)
  {

    TSP::SparseReferenceArray::MergeFrom(this, v5);
  }

  else
  {

    google::protobuf::internal::ReflectionOps::Merge(lpsrc, this, v6);
  }
}

void *TSP::SparseReferenceArray::MergeFrom(void *this, const TSP::SparseReferenceArray *a2)
{
  v3 = this;
  v4 = *(a2 + 1);
  if (v4)
  {
    this = sub_2769F63D8(this + 1, ((v4 & 0xFFFFFFFFFFFFFFFELL) + 8));
  }

  v5 = *(a2 + 8);
  if (v5)
  {
    v6 = *(a2 + 5);
    v7 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((v3 + 3), *(a2 + 8));
    this = sub_276A43378(v3 + 3, v7, (v6 + 8), v5, *v3[5] - *(v3 + 8));
    v8 = *(v3 + 8) + v5;
    *(v3 + 8) = v8;
    v9 = v3[5];
    if (*v9 < v8)
    {
      *v9 = v8;
    }
  }

  if (*(a2 + 16))
  {
    v10 = *(a2 + 12);
    *(v3 + 4) |= 1u;
    *(v3 + 12) = v10;
  }

  return this;
}

void TSP::SparseReferenceArray::CopyFrom(char **this, char **a2)
{
  if (a2 != this)
  {
    TSP::SparseReferenceArray::Clear(this);

    TSP::SparseReferenceArray::MergeFrom(this, a2);
  }
}

google::protobuf::UnknownFieldSet *TSP::SparseReferenceArray::CopyFrom(google::protobuf::UnknownFieldSet *this, const TSP::SparseReferenceArray *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSP::SparseReferenceArray::Clear(this);

    return TSP::SparseReferenceArray::MergeFrom(v4, a2);
  }

  return this;
}

BOOL TSP::SparseReferenceArray::IsInitialized(TSP::SparseReferenceArray *this)
{
  if ((*(this + 16) & 1) == 0)
  {
    return 0;
  }

  v2 = *(this + 8);
  v3 = *(this + 5);
  do
  {
    result = v2 < 1;
    if (v2 < 1)
    {
      break;
    }

    v4 = *(v3 + 8 * v2);
    if ((~*(v4 + 16) & 3) != 0)
    {
      break;
    }

    --v2;
  }

  while ((*(*(v4 + 24) + 16) & 1) != 0);
  return result;
}

__n128 TSP::SparseReferenceArray::InternalSwap(__n128 *this, google::protobuf::Arena **a2)
{
  sub_2769DF630(&this->n128_i64[1], a2 + 1);
  v4 = this[1].n128_u32[0];
  this[1].n128_u32[0] = *(a2 + 4);
  *(a2 + 4) = v4;
  v5 = this[2].n128_u64[0];
  v6 = this[2].n128_u64[1];
  result = *(a2 + 2);
  this[2] = result;
  a2[4] = v5;
  a2[5] = v6;
  LODWORD(v5) = this[3].n128_u32[0];
  this[3].n128_u32[0] = *(a2 + 12);
  *(a2 + 12) = v5;
  return result;
}

uint64_t TSP::SparseReferenceArray::GetMetadata(TSP::SparseReferenceArray *this)
{
  google::protobuf::internal::AssignDescriptors(&descriptor_table_TSPMessages_2eproto, 0);
  result = off_2812FC248[6];
  v2 = off_2812FC248[7];
  return result;
}

void *TSP::Point::Point(void *this, Arena *a2)
{
  *this = &unk_2885C1EC0;
  this[1] = a2;
  this[2] = 0;
  this[3] = 0;
  return this;
}

{
  *this = &unk_2885C1EC0;
  this[1] = a2;
  this[2] = 0;
  this[3] = 0;
  return this;
}

TSP::Point *TSP::Point::Point(TSP::Point *this, const TSP::Point *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_2885C1EC0;
  *(this + 4) = *(a2 + 4);
  *(this + 5) = 0;
  v5 = *(a2 + 1);
  if (v5)
  {
    sub_2769F63D8(v4, ((v5 & 0xFFFFFFFFFFFFFFFELL) + 8));
  }

  *(this + 3) = *(a2 + 3);
  return this;
}

void TSP::Point::~Point(TSP::Point *this)
{
  sub_2769DEC8C(this + 1);
}

{
  sub_2769DEC8C(this + 1);
}

{
  sub_2769DEC8C(this + 1);

  JUMPOUT(0x277C9F670);
}

uint64_t *TSP::Point::default_instance(TSP::Point *this)
{
  if (atomic_load_explicit(scc_info_Point_TSPMessages_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_Point_TSPMessages_2eproto);
  }

  return &TSP::_Point_default_instance_;
}

google::protobuf::UnknownFieldSet *TSP::Point::Clear(TSP::Point *this)
{
  if ((*(this + 16) & 3) != 0)
  {
    *(this + 3) = 0;
  }

  v2 = *(this + 8);
  result = (this + 8);
  *(result + 2) = 0;
  if (v2)
  {
    return sub_2769F6424(result);
  }

  return result;
}

google::protobuf::internal *TSP::Point::_InternalParse(TSP::Point *this, google::protobuf::internal *a2, google::protobuf::internal::ParseContext *a3)
{
  v20 = a2;
  v6 = 0;
  if ((sub_2769F6104(a3, &v20, *(a3 + 23)) & 1) == 0)
  {
    while (1)
    {
      v8 = (v20 + 1);
      v9 = *v20;
      if ((*v20 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v10 = v9 + (*v8 << 7);
      v9 = v10 - 128;
      if ((*v8 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v20, (v10 - 128));
      v20 = TagFallback;
      if (!TagFallback)
      {
        goto LABEL_30;
      }

      v8 = TagFallback;
      v9 = v19;
LABEL_7:
      if (v9 >> 3 == 2)
      {
        if (v9 == 21)
        {
          v16 = *v8;
          v15 = (v8 + 4);
          v6 |= 2u;
          *(this + 7) = v16;
LABEL_23:
          v20 = v15;
          goto LABEL_24;
        }
      }

      else if (v9 >> 3 == 1 && v9 == 13)
      {
        v17 = *v8;
        v15 = (v8 + 4);
        v6 |= 1u;
        *(this + 6) = v17;
        goto LABEL_23;
      }

      if (v9)
      {
        v12 = (v9 & 7) == 4;
      }

      else
      {
        v12 = 1;
      }

      if (v12)
      {
        *(a3 + 20) = v9 - 1;
        goto LABEL_2;
      }

      v13 = *(this + 1);
      if (v13)
      {
        v14 = ((v13 & 0xFFFFFFFFFFFFFFFELL) + 8);
      }

      else
      {
        v14 = sub_2769F617C(this + 1);
        v8 = v20;
      }

      v20 = google::protobuf::internal::UnknownFieldParse(v9, v14, v8, a3, v5);
      if (!v20)
      {
LABEL_30:
        v20 = 0;
        goto LABEL_2;
      }

LABEL_24:
      if (sub_2769F6104(a3, &v20, *(a3 + 23)))
      {
        goto LABEL_2;
      }
    }

    v8 = (v20 + 2);
LABEL_6:
    v20 = v8;
    goto LABEL_7;
  }

LABEL_2:
  *(this + 4) |= v6;
  return v20;
}

const google::protobuf::UnknownFieldSet *TSP::Point::_InternalSerialize(TSP::Point *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3, google::protobuf::io::EpsCopyOutputStream *a4)
{
  v6 = *(this + 4);
  if (v6)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v7 = *(this + 6);
    *a2 = 13;
    *(a2 + 1) = v7;
    a2 += 5;
  }

  if ((v6 & 2) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v8 = *(this + 7);
    *a2 = 21;
    *(a2 + 1) = v8;
    a2 += 5;
  }

  v9 = *(this + 1);
  if ((v9 & 1) == 0)
  {
    return a2;
  }

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v9 & 0xFFFFFFFFFFFFFFFELL) + 8), a2, a3, a4);
}

uint64_t TSP::Point::RequiredFieldsByteSizeFallback(TSP::Point *this)
{
  v1 = *(this + 4);
  v2 = 5;
  if ((v1 & 1) == 0)
  {
    v2 = 0;
  }

  if ((v1 & 2) != 0)
  {
    return v2 + 5;
  }

  else
  {
    return v2;
  }
}

uint64_t TSP::Point::ByteSizeLong(TSP::Point *this, uint64_t a2, uint64_t a3, CachedSize *a4)
{
  v4 = *(this + 4);
  v5 = 5;
  if ((v4 & 1) == 0)
  {
    v5 = 0;
  }

  if ((v4 & 2) != 0)
  {
    v5 += 5;
  }

  if ((~v4 & 3) != 0)
  {
    v6 = v5;
  }

  else
  {
    v6 = 10;
  }

  if (*(this + 8))
  {
    return google::protobuf::internal::ComputeUnknownFieldsSize((this + 8), v6, this + 5, a4);
  }

  *(this + 5) = v6;
  return v6;
}

void TSP::Point::MergeFrom(TSP::Point *this, char **lpsrc)
{
  v4 = **lpsrc;
  if (v5)
  {

    TSP::Point::MergeFrom(this, v5);
  }

  else
  {

    google::protobuf::internal::ReflectionOps::Merge(lpsrc, this, v6);
  }
}

void *TSP::Point::MergeFrom(void *this, const TSP::Point *a2)
{
  v3 = this;
  v4 = *(a2 + 1);
  if (v4)
  {
    this = sub_2769F63D8(this + 1, ((v4 & 0xFFFFFFFFFFFFFFFELL) + 8));
  }

  v5 = *(a2 + 4);
  if ((v5 & 3) != 0)
  {
    if (v5)
    {
      v3[6] = *(a2 + 6);
    }

    if ((v5 & 2) != 0)
    {
      v3[7] = *(a2 + 7);
    }

    v3[4] |= v5;
  }

  return this;
}

void TSP::Point::CopyFrom(char **this, char **a2)
{
  if (a2 != this)
  {
    TSP::Point::Clear(this);

    TSP::Point::MergeFrom(this, a2);
  }
}

TSP::Point *TSP::Point::CopyFrom(TSP::Point *this, const TSP::Point *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSP::Point::Clear(this);

    return TSP::Point::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSP::Point::InternalSwap(TSP::Point *this, google::protobuf::Arena **a2)
{
  result = sub_2769DF630(this + 1, a2 + 1);
  v5 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v5;
  v6 = *(this + 3);
  *(this + 3) = a2[3];
  a2[3] = v6;
  return result;
}

uint64_t TSP::Point::GetMetadata(TSP::Point *this)
{
  google::protobuf::internal::AssignDescriptors(&descriptor_table_TSPMessages_2eproto, 0);
  result = off_2812FC248[8];
  v2 = off_2812FC248[9];
  return result;
}

uint64_t TSP::Pose3D::Pose3D(uint64_t this, Arena *a2)
{
  *this = &unk_2885C1F70;
  *(this + 8) = a2;
  *(this + 16) = 0;
  *(this + 24) = 0;
  *(this + 32) = 0;
  return this;
}

{
  *this = &unk_2885C1F70;
  *(this + 8) = a2;
  *(this + 16) = 0;
  *(this + 24) = 0;
  *(this + 32) = 0;
  return this;
}

TSP::Pose3D *TSP::Pose3D::Pose3D(TSP::Pose3D *this, const TSP::Pose3D *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_2885C1F70;
  *(this + 4) = *(a2 + 4);
  *(this + 5) = 0;
  v5 = *(a2 + 1);
  if (v5)
  {
    sub_2769F63D8(v4, ((v5 & 0xFFFFFFFFFFFFFFFELL) + 8));
  }

  v6 = *(a2 + 3);
  *(this + 8) = *(a2 + 8);
  *(this + 3) = v6;
  return this;
}

void TSP::Pose3D::~Pose3D(TSP::Pose3D *this)
{
  sub_2769DEC8C(this + 1);
}

{
  sub_2769DEC8C(this + 1);
}

{
  sub_2769DEC8C(this + 1);

  JUMPOUT(0x277C9F670);
}

uint64_t *TSP::Pose3D::default_instance(TSP::Pose3D *this)
{
  if (atomic_load_explicit(scc_info_Pose3D_TSPMessages_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_Pose3D_TSPMessages_2eproto);
  }

  return &TSP::_Pose3D_default_instance_;
}

google::protobuf::UnknownFieldSet *TSP::Pose3D::Clear(TSP::Pose3D *this)
{
  if ((*(this + 16) & 7) != 0)
  {
    *(this + 8) = 0;
    *(this + 3) = 0;
  }

  v2 = *(this + 8);
  result = (this + 8);
  *(result + 2) = 0;
  if (v2)
  {
    return sub_2769F6424(result);
  }

  return result;
}

google::protobuf::internal *TSP::Pose3D::_InternalParse(TSP::Pose3D *this, google::protobuf::internal *a2, google::protobuf::internal::ParseContext *a3)
{
  v22 = a2;
  v6 = 0;
  if ((sub_2769F6104(a3, &v22, *(a3 + 23)) & 1) == 0)
  {
    while (1)
    {
      v8 = (v22 + 1);
      v9 = *v22;
      if ((*v22 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v10 = v9 + (*v8 << 7);
      v9 = v10 - 128;
      if ((*v8 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v22, (v10 - 128));
      v22 = TagFallback;
      if (!TagFallback)
      {
        goto LABEL_33;
      }

      v8 = TagFallback;
      v9 = v21;
LABEL_7:
      v11 = v9 >> 3;
      if (v9 >> 3 == 3)
      {
        if (v9 == 29)
        {
          v18 = *v8;
          v16 = (v8 + 4);
          v6 |= 4u;
          *(this + 8) = v18;
          goto LABEL_26;
        }
      }

      else if (v11 == 2)
      {
        if (v9 == 21)
        {
          v17 = *v8;
          v16 = (v8 + 4);
          v6 |= 2u;
          *(this + 7) = v17;
LABEL_26:
          v22 = v16;
          goto LABEL_27;
        }
      }

      else if (v11 == 1 && v9 == 13)
      {
        v19 = *v8;
        v16 = (v8 + 4);
        v6 |= 1u;
        *(this + 6) = v19;
        goto LABEL_26;
      }

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
        *(a3 + 20) = v9 - 1;
        goto LABEL_2;
      }

      v14 = *(this + 1);
      if (v14)
      {
        v15 = ((v14 & 0xFFFFFFFFFFFFFFFELL) + 8);
      }

      else
      {
        v15 = sub_2769F617C(this + 1);
        v8 = v22;
      }

      v22 = google::protobuf::internal::UnknownFieldParse(v9, v15, v8, a3, v5);
      if (!v22)
      {
LABEL_33:
        v22 = 0;
        goto LABEL_2;
      }

LABEL_27:
      if (sub_2769F6104(a3, &v22, *(a3 + 23)))
      {
        goto LABEL_2;
      }
    }

    v8 = (v22 + 2);
LABEL_6:
    v22 = v8;
    goto LABEL_7;
  }

LABEL_2:
  *(this + 4) |= v6;
  return v22;
}

const google::protobuf::UnknownFieldSet *TSP::Pose3D::_InternalSerialize(TSP::Pose3D *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3, google::protobuf::io::EpsCopyOutputStream *a4)
{
  v6 = *(this + 4);
  if (v6)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v7 = *(this + 6);
    *a2 = 13;
    *(a2 + 1) = v7;
    a2 += 5;
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_11;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v8 = *(this + 7);
  *a2 = 21;
  *(a2 + 1) = v8;
  a2 += 5;
  if ((v6 & 4) != 0)
  {
LABEL_11:
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v9 = *(this + 8);
    *a2 = 29;
    *(a2 + 1) = v9;
    a2 += 5;
  }

LABEL_14:
  v10 = *(this + 1);
  if ((v10 & 1) == 0)
  {
    return a2;
  }

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v10 & 0xFFFFFFFFFFFFFFFELL) + 8), a2, a3, a4);
}

uint64_t TSP::Pose3D::RequiredFieldsByteSizeFallback(TSP::Pose3D *this)
{
  v1 = *(this + 4);
  v2 = 5;
  if ((v1 & 1) == 0)
  {
    v2 = 0;
  }

  if ((v1 & 2) != 0)
  {
    v2 += 5;
  }

  if ((v1 & 4) != 0)
  {
    return v2 + 5;
  }

  else
  {
    return v2;
  }
}

uint64_t TSP::Pose3D::ByteSizeLong(TSP::Pose3D *this, uint64_t a2, uint64_t a3, CachedSize *a4)
{
  v4 = *(this + 4);
  v5 = 5;
  if ((v4 & 1) == 0)
  {
    v5 = 0;
  }

  if ((v4 & 2) != 0)
  {
    v5 += 5;
  }

  if ((v4 & 4) != 0)
  {
    v5 += 5;
  }

  if ((~v4 & 7) != 0)
  {
    v6 = v5;
  }

  else
  {
    v6 = 15;
  }

  if (*(this + 8))
  {
    return google::protobuf::internal::ComputeUnknownFieldsSize((this + 8), v6, this + 5, a4);
  }

  *(this + 5) = v6;
  return v6;
}

void TSP::Pose3D::MergeFrom(TSP::Pose3D *this, char **lpsrc)
{
  v4 = **lpsrc;
  if (v5)
  {

    TSP::Pose3D::MergeFrom(this, v5);
  }

  else
  {

    google::protobuf::internal::ReflectionOps::Merge(lpsrc, this, v6);
  }
}

void *TSP::Pose3D::MergeFrom(void *this, const TSP::Pose3D *a2)
{
  v3 = this;
  v4 = *(a2 + 1);
  if (v4)
  {
    this = sub_2769F63D8(this + 1, ((v4 & 0xFFFFFFFFFFFFFFFELL) + 8));
  }

  v5 = *(a2 + 4);
  if ((v5 & 7) != 0)
  {
    if (v5)
    {
      v3[6] = *(a2 + 6);
      if ((v5 & 2) == 0)
      {
LABEL_6:
        if ((v5 & 4) == 0)
        {
LABEL_8:
          v3[4] |= v5;
          return this;
        }

LABEL_7:
        v3[8] = *(a2 + 8);
        goto LABEL_8;
      }
    }

    else if ((v5 & 2) == 0)
    {
      goto LABEL_6;
    }

    v3[7] = *(a2 + 7);
    if ((v5 & 4) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  return this;
}

void TSP::Pose3D::CopyFrom(char **this, char **a2)
{
  if (a2 != this)
  {
    TSP::Pose3D::Clear(this);

    TSP::Pose3D::MergeFrom(this, a2);
  }
}

TSP::Pose3D *TSP::Pose3D::CopyFrom(TSP::Pose3D *this, const TSP::Pose3D *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSP::Pose3D::Clear(this);

    return TSP::Pose3D::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSP::Pose3D::InternalSwap(TSP::Pose3D *this, google::protobuf::Arena **a2)
{
  result = sub_2769DF630(this + 1, a2 + 1);
  v5 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v5;
  v6 = *(this + 3);
  *(this + 3) = a2[3];
  a2[3] = v6;
  LODWORD(v6) = *(this + 8);
  *(this + 8) = *(a2 + 8);
  *(a2 + 8) = v6;
  return result;
}

uint64_t TSP::Pose3D::GetMetadata(TSP::Pose3D *this)
{
  google::protobuf::internal::AssignDescriptors(&descriptor_table_TSPMessages_2eproto, 0);
  result = off_2812FC248[10];
  v2 = off_2812FC248[11];
  return result;
}

TSP::Rect *TSP::Rect::Rect(TSP::Rect *this, Arena *a2)
{
  *this = &unk_2885C2020;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_Rect_TSPMessages_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_Rect_TSPMessages_2eproto);
  }

  *(this + 3) = 0;
  *(this + 4) = 0;
  return this;
}

{
  *this = &unk_2885C2020;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_Rect_TSPMessages_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_Rect_TSPMessages_2eproto);
  }

  *(this + 3) = 0;
  *(this + 4) = 0;
  return this;
}

TSP::Rect *TSP::Rect::Rect(TSP::Rect *this, const TSP::Rect *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_2885C2020;
  v5 = *(a2 + 4);
  *(this + 2) = v5;
  v6 = *(a2 + 1);
  if (v6)
  {
    sub_2769F63D8(v4, ((v6 & 0xFFFFFFFFFFFFFFFELL) + 8));
    v5 = *(a2 + 4);
  }

  if (v5)
  {
    operator new();
  }

  *(this + 3) = 0;
  if ((v5 & 2) != 0)
  {
    operator new();
  }

  *(this + 4) = 0;
  return this;
}

void TSP::Rect::~Rect(TSP::Rect *this)
{
  if (this != &TSP::_Rect_default_instance_)
  {
    v2 = *(this + 3);
    if (v2)
    {
      sub_2769DEC8C((v2 + 8));
      MEMORY[0x277C9F670](v2, 0x1081C404FE48876);
    }

    v3 = *(this + 4);
    if (v3)
    {
      sub_2769DEC8C((v3 + 8));
      MEMORY[0x277C9F670](v3, 0x1081C404FE48876);
    }
  }

  sub_2769DEC8C(this + 1);
}

{
  TSP::Rect::~Rect(this);

  JUMPOUT(0x277C9F670);
}

uint64_t *TSP::Rect::default_instance(TSP::Rect *this)
{
  if (atomic_load_explicit(scc_info_Rect_TSPMessages_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_Rect_TSPMessages_2eproto);
  }

  return &TSP::_Rect_default_instance_;
}

google::protobuf::UnknownFieldSet *TSP::Rect::Clear(google::protobuf::UnknownFieldSet *this)
{
  v1 = this;
  v2 = *(this + 4);
  if ((v2 & 3) != 0)
  {
    if (v2)
    {
      this = TSP::Point::Clear(*(this + 3));
    }

    if ((v2 & 2) != 0)
    {
      this = TSP::Size::Clear(*(v1 + 32));
    }
  }

  v4 = *(v1 + 8);
  v3 = v1 + 8;
  *(v3 + 8) = 0;
  if (v4)
  {

    return sub_2769F6424(v3);
  }

  return this;
}

google::protobuf::UnknownFieldSet *TSP::Size::Clear(TSP::Size *this)
{
  if ((*(this + 16) & 3) != 0)
  {
    *(this + 3) = 0;
  }

  v2 = *(this + 8);
  result = (this + 8);
  *(result + 2) = 0;
  if (v2)
  {
    return sub_2769F6424(result);
  }

  return result;
}

google::protobuf::internal *TSP::Rect::_InternalParse(TSP::Rect *this, google::protobuf::internal *a2, google::protobuf::internal::ParseContext *a3)
{
  v22 = a2;
  for (i = *(a3 + 23); (sub_2769F6104(a3, &v22, i) & 1) == 0; i = *(a3 + 23))
  {
    v7 = (v22 + 1);
    v8 = *v22;
    if ((*v22 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    v9 = v8 + (*v7 << 7);
    v8 = v9 - 128;
    if ((*v7 & 0x80000000) == 0)
    {
      v7 = (v22 + 2);
LABEL_6:
      v22 = v7;
      goto LABEL_7;
    }

    TagFallback = google::protobuf::internal::ReadTagFallback(v22, (v9 - 128));
    v22 = TagFallback;
    if (!TagFallback)
    {
      return 0;
    }

    v7 = TagFallback;
    v8 = v20;
LABEL_7:
    if (v8 >> 3 == 2)
    {
      if (v8 == 18)
      {
        *(this + 4) |= 2u;
        v15 = *(this + 4);
        if (!v15)
        {
          v16 = *(this + 1);
          if (v16)
          {
            v16 = *(v16 & 0xFFFFFFFFFFFFFFFELL);
          }

          v15 = google::protobuf::Arena::CreateMaybeMessage<TSP::Size>(v16);
          *(this + 4) = v15;
          v7 = v22;
        }

        v14 = sub_276BD3B70(a3, v15, v7);
        goto LABEL_30;
      }
    }

    else if (v8 >> 3 == 1 && v8 == 10)
    {
      *(this + 4) |= 1u;
      v17 = *(this + 3);
      if (!v17)
      {
        v18 = *(this + 1);
        if (v18)
        {
          v18 = *(v18 & 0xFFFFFFFFFFFFFFFELL);
        }

        v17 = google::protobuf::Arena::CreateMaybeMessage<TSP::Point>(v18);
        *(this + 3) = v17;
        v7 = v22;
      }

      v14 = sub_276BD3AA0(a3, v17, v7);
      goto LABEL_30;
    }

    if (v8)
    {
      v11 = (v8 & 7) == 4;
    }

    else
    {
      v11 = 1;
    }

    if (v11)
    {
      *(a3 + 20) = v8 - 1;
      return v22;
    }

    v12 = *(this + 1);
    if (v12)
    {
      v13 = ((v12 & 0xFFFFFFFFFFFFFFFELL) + 8);
    }

    else
    {
      v13 = sub_2769F617C(this + 1);
      v7 = v22;
    }

    v14 = google::protobuf::internal::UnknownFieldParse(v8, v13, v7, a3, v6);
LABEL_30:
    v22 = v14;
    if (!v14)
    {
      return 0;
    }
  }

  return v22;
}

const google::protobuf::UnknownFieldSet *TSP::Rect::_InternalSerialize(TSP::Rect *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3, google::protobuf::io::EpsCopyOutputStream *a4)
{
  v6 = *(this + 4);
  if (v6)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v7 = *(this + 3);
    *a2 = 10;
    v8 = *(v7 + 5);
    if (v8 > 0x7F)
    {
      a2[1] = v8 | 0x80;
      v10 = v8 >> 7;
      if (v8 >> 14)
      {
        v9 = a2 + 3;
        do
        {
          *(v9 - 1) = v10 | 0x80;
          v11 = v10 >> 7;
          ++v9;
          v12 = v10 >> 14;
          v10 >>= 7;
        }

        while (v12);
        *(v9 - 1) = v11;
      }

      else
      {
        a2[2] = v10;
        v9 = a2 + 3;
      }
    }

    else
    {
      a2[1] = v8;
      v9 = a2 + 2;
    }

    a2 = TSP::Point::_InternalSerialize(v7, v9, a3, a4);
  }

  if ((v6 & 2) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v13 = *(this + 4);
    *a2 = 18;
    v14 = *(v13 + 5);
    if (v14 > 0x7F)
    {
      a2[1] = v14 | 0x80;
      v16 = v14 >> 7;
      if (v14 >> 14)
      {
        v15 = a2 + 3;
        do
        {
          *(v15 - 1) = v16 | 0x80;
          v17 = v16 >> 7;
          ++v15;
          v18 = v16 >> 14;
          v16 >>= 7;
        }

        while (v18);
        *(v15 - 1) = v17;
      }

      else
      {
        a2[2] = v16;
        v15 = a2 + 3;
      }
    }

    else
    {
      a2[1] = v14;
      v15 = a2 + 2;
    }

    a2 = TSP::Size::_InternalSerialize(v13, v15, a3, a4);
  }

  v19 = *(this + 1);
  if ((v19 & 1) == 0)
  {
    return a2;
  }

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v19 & 0xFFFFFFFFFFFFFFFELL) + 8), a2, a3, a4);
}

uint64_t TSP::Rect::RequiredFieldsByteSizeFallback(TSP::Rect *this, uint64_t a2, uint64_t a3, CachedSize *a4)
{
  v5 = *(this + 4);
  if ((v5 & 1) == 0)
  {
    v6 = 0;
    if ((v5 & 2) == 0)
    {
      return v6;
    }

    goto LABEL_5;
  }

  v7 = TSP::Point::ByteSizeLong(*(this + 3), a2, a3, a4);
  v6 = v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((*(this + 4) & 2) != 0)
  {
LABEL_5:
    v8 = TSP::Size::ByteSizeLong(*(this + 4), a2, a3, a4);
    v6 += v8 + ((9 * (__clz(v8 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  return v6;
}

const InternalMetadata *TSP::Rect::ByteSizeLong(TSP::Point **this, uint64_t a2, uint64_t a3, CachedSize *a4)
{
  if ((~*(this + 4) & 3) != 0)
  {
    v11 = TSP::Rect::RequiredFieldsByteSizeFallback(this, a2, a3, a4);
  }

  else
  {
    v5 = TSP::Point::ByteSizeLong(this[3], a2, a3, a4);
    v9 = TSP::Size::ByteSizeLong(this[4], v6, v7, v8);
    v11 = (v5 + v9 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6) + 2);
  }

  if (this[1])
  {

    return google::protobuf::internal::ComputeUnknownFieldsSize((this + 1), v11, this + 5, v10);
  }

  else
  {
    *(this + 5) = v11;
    return v11;
  }
}

void TSP::Rect::MergeFrom(TSP::Rect *this, char **lpsrc)
{
  v4 = **lpsrc;
  if (v5)
  {

    TSP::Rect::MergeFrom(this, v5);
  }

  else
  {

    google::protobuf::internal::ReflectionOps::Merge(lpsrc, this, v6);
  }
}

void *TSP::Rect::MergeFrom(void *this, const TSP::Rect *a2)
{
  v3 = this;
  v4 = *(a2 + 1);
  if (v4)
  {
    this = sub_2769F63D8(this + 1, ((v4 & 0xFFFFFFFFFFFFFFFELL) + 8));
  }

  v5 = *(a2 + 4);
  if ((v5 & 3) != 0)
  {
    if (v5)
    {
      *(v3 + 4) |= 1u;
      v6 = v3[3];
      if (!v6)
      {
        v7 = v3[1];
        if (v7)
        {
          v7 = *(v7 & 0xFFFFFFFFFFFFFFFELL);
        }

        v6 = google::protobuf::Arena::CreateMaybeMessage<TSP::Point>(v7);
        v3[3] = v6;
      }

      if (*(a2 + 3))
      {
        v8 = *(a2 + 3);
      }

      else
      {
        v8 = &TSP::_Point_default_instance_;
      }

      this = TSP::Point::MergeFrom(v6, v8);
    }

    if ((v5 & 2) != 0)
    {
      *(v3 + 4) |= 2u;
      v9 = v3[4];
      if (!v9)
      {
        v10 = v3[1];
        if (v10)
        {
          v10 = *(v10 & 0xFFFFFFFFFFFFFFFELL);
        }

        v9 = google::protobuf::Arena::CreateMaybeMessage<TSP::Size>(v10);
        v3[4] = v9;
      }

      if (*(a2 + 4))
      {
        v11 = *(a2 + 4);
      }

      else
      {
        v11 = &TSP::_Size_default_instance_;
      }

      return TSP::Size::MergeFrom(v9, v11);
    }
  }

  return this;
}

void *TSP::Size::MergeFrom(void *this, const TSP::Size *a2)
{
  v3 = this;
  v4 = *(a2 + 1);
  if (v4)
  {
    this = sub_2769F63D8(this + 1, ((v4 & 0xFFFFFFFFFFFFFFFELL) + 8));
  }

  v5 = *(a2 + 4);
  if ((v5 & 3) != 0)
  {
    if (v5)
    {
      v3[6] = *(a2 + 6);
    }

    if ((v5 & 2) != 0)
    {
      v3[7] = *(a2 + 7);
    }

    v3[4] |= v5;
  }

  return this;
}

void TSP::Rect::CopyFrom(char **this, char **a2)
{
  if (a2 != this)
  {
    TSP::Rect::Clear(this);

    TSP::Rect::MergeFrom(this, a2);
  }
}

google::protobuf::UnknownFieldSet *TSP::Rect::CopyFrom(google::protobuf::UnknownFieldSet *this, const TSP::Rect *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSP::Rect::Clear(this);

    return TSP::Rect::MergeFrom(v4, a2);
  }

  return this;
}

__n128 TSP::Rect::InternalSwap(TSP::Rect *this, TSP::Rect *a2)
{
  sub_2769DF630(this + 1, a2 + 1);
  v4 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v4;
  v5 = *(this + 3);
  v6 = *(this + 4);
  result = *(a2 + 24);
  *(this + 24) = result;
  *(a2 + 3) = v5;
  *(a2 + 4) = v6;
  return result;
}

uint64_t TSP::Rect::GetMetadata(TSP::Rect *this)
{
  google::protobuf::internal::AssignDescriptors(&descriptor_table_TSPMessages_2eproto, 0);
  result = off_2812FC248[12];
  v2 = off_2812FC248[13];
  return result;
}

void *TSP::Size::Size(void *this, Arena *a2)
{
  *this = &unk_2885C20D0;
  this[1] = a2;
  this[2] = 0;
  this[3] = 0;
  return this;
}

{
  *this = &unk_2885C20D0;
  this[1] = a2;
  this[2] = 0;
  this[3] = 0;
  return this;
}

TSP::Size *TSP::Size::Size(TSP::Size *this, const TSP::Size *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_2885C20D0;
  *(this + 4) = *(a2 + 4);
  *(this + 5) = 0;
  v5 = *(a2 + 1);
  if (v5)
  {
    sub_2769F63D8(v4, ((v5 & 0xFFFFFFFFFFFFFFFELL) + 8));
  }

  *(this + 3) = *(a2 + 3);
  return this;
}

void TSP::Size::~Size(TSP::Size *this)
{
  sub_2769DEC8C(this + 1);
}

{
  sub_2769DEC8C(this + 1);
}

{
  sub_2769DEC8C(this + 1);

  JUMPOUT(0x277C9F670);
}

uint64_t *TSP::Size::default_instance(TSP::Size *this)
{
  if (atomic_load_explicit(scc_info_Size_TSPMessages_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_Size_TSPMessages_2eproto);
  }

  return &TSP::_Size_default_instance_;
}

google::protobuf::internal *TSP::Size::_InternalParse(TSP::Size *this, google::protobuf::internal *a2, google::protobuf::internal::ParseContext *a3)
{
  v20 = a2;
  v6 = 0;
  if ((sub_2769F6104(a3, &v20, *(a3 + 23)) & 1) == 0)
  {
    while (1)
    {
      v8 = (v20 + 1);
      v9 = *v20;
      if ((*v20 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v10 = v9 + (*v8 << 7);
      v9 = v10 - 128;
      if ((*v8 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v20, (v10 - 128));
      v20 = TagFallback;
      if (!TagFallback)
      {
        goto LABEL_30;
      }

      v8 = TagFallback;
      v9 = v19;
LABEL_7:
      if (v9 >> 3 == 2)
      {
        if (v9 == 21)
        {
          v16 = *v8;
          v15 = (v8 + 4);
          v6 |= 2u;
          *(this + 7) = v16;
LABEL_23:
          v20 = v15;
          goto LABEL_24;
        }
      }

      else if (v9 >> 3 == 1 && v9 == 13)
      {
        v17 = *v8;
        v15 = (v8 + 4);
        v6 |= 1u;
        *(this + 6) = v17;
        goto LABEL_23;
      }

      if (v9)
      {
        v12 = (v9 & 7) == 4;
      }

      else
      {
        v12 = 1;
      }

      if (v12)
      {
        *(a3 + 20) = v9 - 1;
        goto LABEL_2;
      }

      v13 = *(this + 1);
      if (v13)
      {
        v14 = ((v13 & 0xFFFFFFFFFFFFFFFELL) + 8);
      }

      else
      {
        v14 = sub_2769F617C(this + 1);
        v8 = v20;
      }

      v20 = google::protobuf::internal::UnknownFieldParse(v9, v14, v8, a3, v5);
      if (!v20)
      {
LABEL_30:
        v20 = 0;
        goto LABEL_2;
      }

LABEL_24:
      if (sub_2769F6104(a3, &v20, *(a3 + 23)))
      {
        goto LABEL_2;
      }
    }

    v8 = (v20 + 2);
LABEL_6:
    v20 = v8;
    goto LABEL_7;
  }

LABEL_2:
  *(this + 4) |= v6;
  return v20;
}

const google::protobuf::UnknownFieldSet *TSP::Size::_InternalSerialize(TSP::Size *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3, google::protobuf::io::EpsCopyOutputStream *a4)
{
  v6 = *(this + 4);
  if (v6)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v7 = *(this + 6);
    *a2 = 13;
    *(a2 + 1) = v7;
    a2 += 5;
  }

  if ((v6 & 2) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v8 = *(this + 7);
    *a2 = 21;
    *(a2 + 1) = v8;
    a2 += 5;
  }

  v9 = *(this + 1);
  if ((v9 & 1) == 0)
  {
    return a2;
  }

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v9 & 0xFFFFFFFFFFFFFFFELL) + 8), a2, a3, a4);
}

uint64_t TSP::Size::RequiredFieldsByteSizeFallback(TSP::Size *this)
{
  v1 = *(this + 4);
  v2 = 5;
  if ((v1 & 1) == 0)
  {
    v2 = 0;
  }

  if ((v1 & 2) != 0)
  {
    return v2 + 5;
  }

  else
  {
    return v2;
  }
}

uint64_t TSP::Size::ByteSizeLong(TSP::Size *this, uint64_t a2, uint64_t a3, CachedSize *a4)
{
  v4 = *(this + 4);
  v5 = 5;
  if ((v4 & 1) == 0)
  {
    v5 = 0;
  }

  if ((v4 & 2) != 0)
  {
    v5 += 5;
  }

  if ((~v4 & 3) != 0)
  {
    v6 = v5;
  }

  else
  {
    v6 = 10;
  }

  if (*(this + 8))
  {
    return google::protobuf::internal::ComputeUnknownFieldsSize((this + 8), v6, this + 5, a4);
  }

  *(this + 5) = v6;
  return v6;
}

void TSP::Size::MergeFrom(TSP::Size *this, char **lpsrc)
{
  v4 = **lpsrc;
  if (v5)
  {

    TSP::Size::MergeFrom(this, v5);
  }

  else
  {

    google::protobuf::internal::ReflectionOps::Merge(lpsrc, this, v6);
  }
}

void TSP::Size::CopyFrom(char **this, char **a2)
{
  if (a2 != this)
  {
    TSP::Size::Clear(this);

    TSP::Size::MergeFrom(this, a2);
  }
}

TSP::Size *TSP::Size::CopyFrom(TSP::Size *this, const TSP::Size *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSP::Size::Clear(this);

    return TSP::Size::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSP::Size::InternalSwap(TSP::Size *this, google::protobuf::Arena **a2)
{
  result = sub_2769DF630(this + 1, a2 + 1);
  v5 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v5;
  v6 = *(this + 3);
  *(this + 3) = a2[3];
  a2[3] = v6;
  return result;
}

uint64_t TSP::Size::GetMetadata(TSP::Size *this)
{
  google::protobuf::internal::AssignDescriptors(&descriptor_table_TSPMessages_2eproto, 0);
  result = off_2812FC248[14];
  v2 = off_2812FC248[15];
  return result;
}

void *TSP::Range::Range(void *this, Arena *a2)
{
  *this = &unk_2885C2180;
  this[1] = a2;
  this[2] = 0;
  this[3] = 0;
  return this;
}

{
  *this = &unk_2885C2180;
  this[1] = a2;
  this[2] = 0;
  this[3] = 0;
  return this;
}

TSP::Range *TSP::Range::Range(TSP::Range *this, const TSP::Range *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_2885C2180;
  *(this + 4) = *(a2 + 4);
  *(this + 5) = 0;
  v5 = *(a2 + 1);
  if (v5)
  {
    sub_2769F63D8(v4, ((v5 & 0xFFFFFFFFFFFFFFFELL) + 8));
  }

  *(this + 3) = *(a2 + 3);
  return this;
}

void TSP::Range::~Range(TSP::Range *this)
{
  sub_2769DEC8C(this + 1);
}

{
  sub_2769DEC8C(this + 1);
}

{
  sub_2769DEC8C(this + 1);

  JUMPOUT(0x277C9F670);
}

uint64_t *TSP::Range::default_instance(TSP::Range *this)
{
  if (atomic_load_explicit(scc_info_Range_TSPMessages_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_Range_TSPMessages_2eproto);
  }

  return &TSP::_Range_default_instance_;
}

google::protobuf::UnknownFieldSet *TSP::Range::Clear(TSP::Range *this)
{
  if ((*(this + 16) & 3) != 0)
  {
    *(this + 3) = 0;
  }

  v2 = *(this + 8);
  result = (this + 8);
  *(result + 2) = 0;
  if (v2)
  {
    return sub_2769F6424(result);
  }

  return result;
}

google::protobuf::internal *TSP::Range::_InternalParse(TSP::Range *this, google::protobuf::internal *a2, google::protobuf::internal::ParseContext *a3)
{
  v27 = a2;
  v6 = 0;
  if ((sub_2769F6104(a3, &v27, *(a3 + 23)) & 1) == 0)
  {
    while (1)
    {
      v8 = (v27 + 1);
      v9 = *v27;
      if ((*v27 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v10 = v9 + (*v8 << 7);
      v9 = v10 - 128;
      if ((*v8 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v27, (v10 - 128));
      v27 = TagFallback;
      if (!TagFallback)
      {
        goto LABEL_39;
      }

      v8 = TagFallback;
      v9 = v22;
LABEL_7:
      if (v9 >> 3 == 2)
      {
        if (v9 != 16)
        {
          goto LABEL_12;
        }

        v6 |= 2u;
        v15 = (v8 + 1);
        LODWORD(v16) = *v8;
        if ((*v8 & 0x80000000) == 0)
        {
          goto LABEL_24;
        }

        v17 = *v15;
        v16 = (v16 + (v17 << 7) - 128);
        if ((v17 & 0x80000000) == 0)
        {
          v15 = (v8 + 2);
LABEL_24:
          v27 = v15;
          *(this + 7) = v16;
          goto LABEL_29;
        }

        v23 = google::protobuf::internal::VarintParseSlow32(v8, v16);
        v27 = v23;
        *(this + 7) = v24;
        if (!v23)
        {
          goto LABEL_39;
        }
      }

      else
      {
        if (v9 >> 3 != 1 || v9 != 8)
        {
LABEL_12:
          if (v9)
          {
            v12 = (v9 & 7) == 4;
          }

          else
          {
            v12 = 1;
          }

          if (v12)
          {
            *(a3 + 20) = v9 - 1;
            goto LABEL_2;
          }

          v13 = *(this + 1);
          if (v13)
          {
            v14 = ((v13 & 0xFFFFFFFFFFFFFFFELL) + 8);
          }

          else
          {
            v14 = sub_2769F617C(this + 1);
            v8 = v27;
          }

          v27 = google::protobuf::internal::UnknownFieldParse(v9, v14, v8, a3, v5);
          if (!v27)
          {
LABEL_39:
            v27 = 0;
            goto LABEL_2;
          }

          goto LABEL_29;
        }

        v6 |= 1u;
        v18 = (v8 + 1);
        LODWORD(v19) = *v8;
        if ((*v8 & 0x80000000) == 0)
        {
          goto LABEL_28;
        }

        v20 = *v18;
        v19 = (v19 + (v20 << 7) - 128);
        if ((v20 & 0x80000000) == 0)
        {
          v18 = (v8 + 2);
LABEL_28:
          v27 = v18;
          *(this + 6) = v19;
          goto LABEL_29;
        }

        v25 = google::protobuf::internal::VarintParseSlow32(v8, v19);
        v27 = v25;
        *(this + 6) = v26;
        if (!v25)
        {
          goto LABEL_39;
        }
      }

LABEL_29:
      if (sub_2769F6104(a3, &v27, *(a3 + 23)))
      {
        goto LABEL_2;
      }
    }

    v8 = (v27 + 2);
LABEL_6:
    v27 = v8;
    goto LABEL_7;
  }

LABEL_2:
  *(this + 4) |= v6;
  return v27;
}

const google::protobuf::UnknownFieldSet *TSP::Range::_InternalSerialize(TSP::Range *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3, google::protobuf::io::EpsCopyOutputStream *a4)
{
  v6 = *(this + 4);
  if (v6)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v7 = *(this + 6);
    *a2 = 8;
    if (v7 <= 0x7F)
    {
      a2[1] = v7;
      a2 += 2;
      if ((v6 & 2) == 0)
      {
        goto LABEL_23;
      }

      goto LABEL_10;
    }

    a2[1] = v7 | 0x80;
    v8 = v7 >> 7;
    if (v7 >> 14)
    {
      a2 += 3;
      do
      {
        *(a2 - 1) = v8 | 0x80;
        v11 = v8 >> 7;
        ++a2;
        v12 = v8 >> 14;
        v8 >>= 7;
      }

      while (v12);
      *(a2 - 1) = v11;
      if ((v6 & 2) == 0)
      {
        goto LABEL_23;
      }

      goto LABEL_10;
    }

    a2[2] = v8;
    a2 += 3;
  }

  if ((v6 & 2) == 0)
  {
    goto LABEL_23;
  }

LABEL_10:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v9 = *(this + 7);
  *a2 = 16;
  if (v9 > 0x7F)
  {
    a2[1] = v9 | 0x80;
    v10 = v9 >> 7;
    if (v9 >> 14)
    {
      a2 += 3;
      do
      {
        *(a2 - 1) = v10 | 0x80;
        v13 = v10 >> 7;
        ++a2;
        v14 = v10 >> 14;
        v10 >>= 7;
      }

      while (v14);
      *(a2 - 1) = v13;
    }

    else
    {
      a2[2] = v10;
      a2 += 3;
    }
  }

  else
  {
    a2[1] = v9;
    a2 += 2;
  }

LABEL_23:
  v15 = *(this + 1);
  if ((v15 & 1) == 0)
  {
    return a2;
  }

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v15 & 0xFFFFFFFFFFFFFFFELL) + 8), a2, a3, a4);
}