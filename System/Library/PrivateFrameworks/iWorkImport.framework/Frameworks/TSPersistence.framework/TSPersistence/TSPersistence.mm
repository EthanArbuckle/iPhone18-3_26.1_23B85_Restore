void sub_27699443C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  objc_end_catch();

  _Unwind_Resume(a1);
}

void sub_276994610(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_2769960C4()
{
  v2 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v0 = dispatch_queue_create("TSPObjectContext.ReleaseQueue", v2);
  v1 = qword_280A523D0;
  qword_280A523D0 = v0;
}

void sub_2769971B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, void *a15, void *a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, id a31)
{
  _Block_object_dispose(&a26, 8);

  _Block_object_dispose((v37 - 136), 8);
  _Unwind_Resume(a1);
}

void sub_276997244()
{
  v0 = TSULogCreateCategory();
  v1 = UnsafePointer;
  UnsafePointer = v0;
}

uint64_t sub_276997288(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2769972AC(uint64_t a1, const char *a2, uint64_t a3)
{
  *(*(a1 + 32) + 448) = *(*(a1 + 32) + 448) & 0xFFDFFFFF | ((*(a1 + 84) & 1) << 21);
  v4 = objc_msgSend_copy(*(a1 + 40), a2, a3);
  v5 = *(a1 + 32);
  v6 = *(v5 + 48);
  *(v5 + 48) = v4;

  v7 = *(a1 + 80) >> 2;
  v9 = *(a1 + 32);
  v8 = *(a1 + 40);
  v10 = *(*(a1 + 64) + 8);
  obj = *(v10 + 40);
  v12 = objc_msgSend_newPackageWithURL_options_packageIdentifier_decryptionKey_fileCoordinatorDelegate_error_(TSPPackage, v11, v8, v7 & 8, 1, 0, v9, &obj);
  objc_storeStrong((v10 + 40), obj);
  v13 = *(a1 + 32);
  v14 = *(v13 + 56);
  *(v13 + 56) = v12;

  v17 = *(a1 + 32);
  if (*(v17 + 56))
  {
    v18 = objc_msgSend_documentProperties(*(v17 + 56), v15, v16);
    v21 = objc_msgSend_copy(v18, v19, v20);
    v22 = *(a1 + 32);
    v23 = *(v22 + 104);
    *(v22 + 104) = v21;

    *(*(*(a1 + 72) + 8) + 24) = *(*(a1 + 32) + 104) != 0;
    v27 = objc_msgSend_dataAtRelativePath_allowDecryption_error_(*(*(a1 + 32) + 56), v24, @"Metadata/BuildVersionHistory.plist", 0, 0);
    if (v27)
    {
      v28 = objc_msgSend_propertyListWithData_options_format_error_(MEMORY[0x277CCAC58], v25, v27, 0, 0, 0);
    }

    else
    {
      v28 = MEMORY[0x277CBEBF8];
    }

    if (UnsafePointer != -1)
    {
      sub_276BD0BEC();
    }

    v42 = objc_msgSend_passwordHint(*(*(a1 + 32) + 56), v25, v26);
    v43 = *(a1 + 32);
    v44 = *(v43 + 456);
    *(v43 + 456) = v42;

    if (*(*(*(a1 + 72) + 8) + 24) == 1 && objc_msgSend_isPasswordProtected(*(a1 + 32), v45, v46))
    {
      v49 = objc_msgSend_passwordVerifier(*(*(a1 + 32) + 56), v47, v48);
      v50 = *(a1 + 32);
      v51 = *(v50 + 584);
      *(v50 + 584) = v49;

      v54 = objc_msgSend_passwordVerifier(*(a1 + 32), v52, v53);

      if (!v54)
      {
        v57 = MEMORY[0x277D81150];
        v58 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v55, "[TSPObjectContext initWithURL:delegate:registry:resourceContext:mode:passphrase:skipDocumentUpgrade:error:]_block_invoke_2");
        v60 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v59, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPObjectContext.mm");
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v57, v61, v58, v60, 541, 0, "Unable to read password verifier data from %{public}@", @".iwpv2");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v62, v63);
      }

      v64 = objc_msgSend_passwordVerifier(*(a1 + 32), v55, v56);

      if (v64)
      {
        *(*(*(a1 + 72) + 8) + 24) = objc_msgSend_setPassphrase_(*(a1 + 32), v65, *(a1 + 48));
      }

      else
      {
        *(*(*(a1 + 72) + 8) + 24) = 0;
        v66 = objc_msgSend_tsp_unknownReadErrorWithUserInfo_(MEMORY[0x277CCA9B8], v65, 0);
        v67 = *(*(a1 + 64) + 8);
        v68 = *(v67 + 40);
        *(v67 + 40) = v66;
      }
    }

    if (*(*(*(a1 + 72) + 8) + 24) == 1)
    {
      v69 = *(a1 + 56);
      if (objc_opt_respondsToSelector())
      {
        objc_msgSend_willBeginReadingFromURL_(*(a1 + 56), v70, *(a1 + 40));
      }

      v71 = *(a1 + 32);
      v72 = *(v71 + 40);
      if (v72)
      {
        objc_msgSend_didRetrieveDecryptionKey_(*(v71 + 56), v70, v72);
        v71 = *(a1 + 32);
      }

      v73 = *(a1 + 40);
      v74 = *(*(a1 + 64) + 8);
      v83 = *(v74 + 40);
      v75 = objc_msgSend_readDocumentObjectFromPackageURL_error_(v71, v70, v73, &v83);
      objc_storeStrong((v74 + 40), v83);
      *(*(*(a1 + 72) + 8) + 24) = v75;
    }
  }

  else
  {
    v29 = objc_opt_class();
    if (objc_msgSend_isTangierEditingFormatURL_(v29, v30, *(a1 + 40)))
    {
      v33 = *(a1 + 56);
      if (objc_opt_respondsToSelector())
      {
        objc_msgSend_willBeginReadingFromURL_(*(a1 + 56), v34, *(a1 + 40));
      }

      v35 = *(*(a1 + 64) + 8);
      v36 = *(v35 + 40);
      *(v35 + 40) = 0;

      v37 = *(a1 + 32);
      v38 = *(a1 + 40);
      v39 = *(*(a1 + 64) + 8);
      v82 = *(v39 + 40);
      v41 = objc_msgSend_readDocumentObjectFromDatabasePackageURL_error_(v37, v40, v38, &v82);
      objc_storeStrong((v39 + 40), v82);
      *(*(*(a1 + 72) + 8) + 24) = v41;
    }

    else
    {
      *(*(*(a1 + 72) + 8) + 24) = 0;
    }
  }

  v76 = *(*(a1 + 32) + 56);
  if (v76)
  {
    v77 = objc_msgSend_fileFormatVersion(v76, v31, v32);
    if (v77)
    {
      if (v77 != objc_msgSend_fileFormatVersion(*(*(a1 + 32) + 104), v31, v32) && UnsafePointer != -1)
      {
        sub_276BD0C14();
      }
    }
  }

  if (*(*(*(a1 + 72) + 8) + 24) == 1)
  {
    objc_msgSend_createInternalMetadataIfNeeded(*(a1 + 32), v31, v32);
    objc_msgSend_updateAdditionalResourceRequests(*(a1 + 32), v78, v79);
    objc_msgSend_logDocumentStatistics(*(a1 + 32), v80, v81);
  }

  else if (UnsafePointer != -1)
  {
    sub_276BD0C3C();
  }
}

void sub_276997768()
{
  v0 = TSULogCreateCategory();
  v1 = UnsafePointer;
  UnsafePointer = v0;
}

void sub_2769977AC()
{
  v0 = TSULogCreateCategory();
  v1 = UnsafePointer;
  UnsafePointer = v0;
}

void sub_2769977F0()
{
  v0 = TSULogCreateCategory();
  v1 = UnsafePointer;
  UnsafePointer = v0;
}

void sub_276997A24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28)
{
  _Block_object_dispose(&a24, 8);
  _Block_object_dispose(&a28, 8);
  _Unwind_Resume(a1);
}

void sub_276997A74(uint64_t a1, void *a2)
{
  v7 = a2;
  if (objc_msgSend_packageIdentifier(v7, v3, v4) == 1)
  {
    *(*(*(a1 + 32) + 8) + 24) += objc_msgSend_encodedLength(v7, v5, v6);
  }

  ++*(*(*(a1 + 40) + 8) + 24);
}

void sub_276997B08()
{
  v0 = TSULogCreateCategory();
  v1 = UnsafePointer;
  UnsafePointer = v0;
}

void sub_276997E00(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = TSPObjectContext;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_2769980AC()
{
  v0 = TSULogCreateCategory();
  v1 = UnsafePointer;
  UnsafePointer = v0;
}

void sub_2769980F0()
{
  v0 = TSULogCreateCategory();
  v1 = UnsafePointer;
  UnsafePointer = v0;
}

void sub_276998134()
{
  v2 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v0 = dispatch_queue_create("TSPObjectContext.CloseFromDealloc", v2);
  v1 = qword_280A523E0;
  qword_280A523E0 = v0;
}

uint64_t sub_276998198(uint64_t a1, const char *a2, uint64_t a3)
{
  objc_msgSend_didCloseDocument(*(a1 + 32), a2, a3);
  objc_msgSend_didCloseDocument(*(a1 + 40), v4, v5);
  objc_msgSend_didCloseDocument(*(a1 + 48), v6, v7);
  v10 = *(a1 + 56);

  return objc_msgSend_removeFilePresenter(v10, v8, v9);
}

void sub_276998BD4(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_documentMetadata(*(a1 + 40), a2, a3);
  if (!v4)
  {
    TSUSetCrashReporterInfo();
    v10 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "[TSPObjectContext setProperties:forData:]_block_invoke", "[TSPObjectContext setProperties:forData:]_block_invoke", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPObjectContext.mm", 969, "documentMetadata");
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPObjectContext.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v15, v12, v14, 969, 1, "invalid nil value for '%{public}s'", "documentMetadata");

    TSUCrashBreakpoint();
    abort();
  }

  v5 = *(a1 + 32);
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3321888768;
  v16[2] = sub_276998D94;
  v16[3] = &unk_2885BF098;
  v17 = *(a1 + 48);
  v6 = *(a1 + 56);
  v7 = *(a1 + 64);
  v8 = *(a1 + 72);
  v18 = v6;
  v19 = v7;
  v20 = v8;
  v21 = *(a1 + 80);
  objc_msgSend_setPropertiesForData_usingBlock_(v4, v9, v5, v16);
}

void sub_276998D94(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  if (v4)
  {
    if (v4 != 1 && *a2 != 0)
    {
      v6 = MEMORY[0x277D81150];
      v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSPObjectContext setProperties:forData:]_block_invoke_2");
      v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPObjectContext.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v10, v7, v9, 973, 0, "Data digest status should not be set again to a not matched state.");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v11, v12);
      v4 = *(a1 + 32);
    }

    *a2 = v4;
  }

  v13 = *(a1 + 40);
  if (v13)
  {
    objc_storeStrong((a2 + 8), v13);
  }

  v14 = *(a1 + 48);
  if (v14)
  {
    *(a2 + 16) = v14;
  }

  v15 = *(a1 + 56);
  if (v15)
  {

    objc_storeStrong((a2 + 24), v15);
  }
}

id sub_276998EBC(uint64_t a1, uint64_t a2)
{
  *(a1 + 32) = *(a2 + 32);
  v4 = *(a2 + 40);
  v5 = *(a2 + 48);
  v6 = *(a2 + 56);
  *(a1 + 40) = v4;
  *(a1 + 48) = v5;
  result = v6;
  *(a1 + 56) = result;
  *(a1 + 64) = *(a2 + 64);
  return result;
}

void sub_276998F08(uint64_t a1)
{
  v2 = *(a1 + 40);
}

id sub_276998F78(uint64_t a1, uint64_t a2)
{
  *(a1 + 48) = *(a2 + 48);
  v4 = *(a2 + 56);
  v5 = *(a2 + 64);
  v6 = *(a2 + 72);
  *(a1 + 56) = v4;
  *(a1 + 64) = v5;
  result = v6;
  *(a1 + 72) = result;
  *(a1 + 80) = *(a2 + 80);
  return result;
}

void sub_276998FC4(uint64_t a1)
{
  v2 = *(a1 + 56);
}

void sub_276999358()
{
  v0 = TSULogCreateCategory();
  v1 = UnsafePointer;
  UnsafePointer = v0;
}

void sub_27699939C()
{
  v0 = TSULogCreateCategory();
  v1 = UnsafePointer;
  UnsafePointer = v0;
}

void sub_27699971C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, id a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, id a34)
{
  _Block_object_dispose(&a23, 8);

  _Unwind_Resume(a1);
}

void sub_276999794()
{
  v0 = TSULogCreateCategory();
  v1 = UnsafePointer;
  UnsafePointer = v0;
}

void sub_2769997D8(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (*(v1 + 264))
  {
    TSUSetCrashReporterInfo();
    v189 = MEMORY[0x277D81150];
    v191 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v190, "[TSPObjectContext beginWriteWithOriginalURL:relativeURLForExternalData:]_block_invoke_2", "[TSPObjectContext beginWriteWithOriginalURL:relativeURLForExternalData:]_block_invoke_2", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPObjectContext.mm", 1069);
    v193 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v192, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPObjectContext.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v189, v194, v191, v193, 1069, 1, "Didn't finish previous write");
    goto LABEL_63;
  }

  if (*(v1 + 392))
  {
    TSUSetCrashReporterInfo();
    v195 = MEMORY[0x277D81150];
    v191 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v196, "[TSPObjectContext beginWriteWithOriginalURL:relativeURLForExternalData:]_block_invoke_2", "[TSPObjectContext beginWriteWithOriginalURL:relativeURLForExternalData:]_block_invoke_2", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPObjectContext.mm", 1070);
    v193 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v197, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPObjectContext.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v195, v198, v191, v193, 1070, 1, "Didn't finish previous write");
    goto LABEL_63;
  }

  if (!*(v1 + 464))
  {
    TSUSetCrashReporterInfo();
    v199 = MEMORY[0x277D81150];
    v191 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v200, "[TSPObjectContext beginWriteWithOriginalURL:relativeURLForExternalData:]_block_invoke_2", "[TSPObjectContext beginWriteWithOriginalURL:relativeURLForExternalData:]_block_invoke_2", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPObjectContext.mm", 1071);
    v193 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v201, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPObjectContext.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v199, v202, v191, v193, 1071, 1, "Write before making a document object");
LABEL_63:

    TSUCrashBreakpoint();
    abort();
  }

  WeakRetained = objc_loadWeakRetained((v1 + 472));
  v6 = *(*(a1 + 32) + 48);
  v7 = *(a1 + 40);
  v204 = v6;
  v205 = WeakRetained;
  if (v7)
  {
    v8 = objc_msgSend_path(v7, v4, v5);
    v11 = objc_msgSend_stringByStandardizingPath(v8, v9, v10);
    v14 = objc_msgSend_precomposedStringWithCanonicalMapping(v11, v12, v13);

    v17 = objc_msgSend_path(v6, v15, v16);
    v20 = objc_msgSend_stringByStandardizingPath(v17, v18, v19);
    v23 = objc_msgSend_precomposedStringWithCanonicalMapping(v20, v21, v22);

    if (objc_msgSend_nested(*(a1 + 32), v24, v25))
    {
      v28 = objc_msgSend_stringByDeletingLastPathComponent(v23, v26, v27);
    }

    else
    {
      v28 = v23;
    }

    v30 = v28;
    if (!v28 || (objc_msgSend_isEqualToString_(v14, v29, v28) & 1) == 0)
    {
      v31 = MEMORY[0x277D81150];
      v32 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v29, "[TSPObjectContext beginWriteWithOriginalURL:relativeURLForExternalData:]_block_invoke_2");
      v34 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v33, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPObjectContext.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v31, v35, v32, v34, 1088, 0, "Expected original container path: %@ but it was: %@", v30, v14);

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v36, v37);
      if (objc_opt_respondsToSelector())
      {
        objc_msgSend_shouldAttemptRecoveryAfterOriginalDocumentURLMismatchForContext_(WeakRetained, v29, *(a1 + 32));
      }
    }

    v38 = *(a1 + 40);
    v207 = 0;
    if ((objc_msgSend_checkResourceIsReachableAndReturnError_(v38, v29, &v207) & 1) == 0 && UnsafePointer != -1)
    {
      sub_276BD0D18();
    }
  }

  objc_msgSend_setDocumentObject_(*(*(a1 + 32) + 256), v4, *(*(a1 + 32) + 464));
  objc_msgSend_setOriginalDocumentURL_(*(*(a1 + 32) + 256), v39, v6);
  v44 = objc_msgSend_copy(*(*(a1 + 32) + 104), v40, v41);
  if (!v44)
  {
    v45 = MEMORY[0x277D81150];
    v46 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v42, "[TSPObjectContext beginWriteWithOriginalURL:relativeURLForExternalData:]_block_invoke_2");
    v48 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v47, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPObjectContext.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v45, v49, v46, v48, 1108, 0, "invalid nil value for '%{public}s'", "documentProperties");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v50, v51);
  }

  v52 = *(*(a1 + 32) + 448);
  if (v52)
  {
    v53 = objc_msgSend_additionalDocumentPropertiesForWrite(WeakRetained, v42, v43);
    objc_msgSend_setAdditionalProperties_(v44, v56, v53);
  }

  else
  {
    v53 = 0;
    objc_msgSend_setAdditionalProperties_(v44, v42, 0);
  }

  if (v52)
  {
  }

  objc_msgSend_updateVersionUUID(v44, v54, v55);
  v59 = objc_msgSend_documentUUID(*(*(a1 + 32) + 256), v57, v58);

  v62 = *(*(a1 + 32) + 256);
  if (v59)
  {
    v63 = objc_msgSend_documentUUID(v62, v60, v61);
    objc_msgSend_setDocumentUUID_(v44, v64, v63);
  }

  else if ((objc_msgSend_isSavingCurrentDocument(v62, v60, v61) & 1) == 0)
  {
    objc_msgSend_updateDocumentUUIDAndPreserveShareUUID_preserveStableDocumentUUID_(v44, v65, 0, 1);
  }

  v66 = UnsafePointer();
  objc_msgSend_setFileFormatVersion_(v44, v67, v66);
  if (objc_msgSend_fileFormatVersion(*(*(a1 + 32) + 56), v68, v69) != v66 && UnsafePointer != -1)
  {
    sub_276BD0D40();
  }

  v72 = *(a1 + 32);
  if (*(v72 + 448) & 0x80) != 0 && (objc_msgSend_URL(*(v72 + 256), v70, v71), v73 = objc_claimAutoreleasedReturnValue(), v75 = objc_msgSend_preserveDocumentRevisionIdentifierForSaveURL_(WeakRetained, v74, v73), v73, (v75))
  {
    v78 = 0;
    v79 = objc_msgSend_copy(*(*(a1 + 32) + 136), v76, v77);
    objc_msgSend_setDocumentRevision_(*(*(a1 + 32) + 256), v80, v79);
  }

  else
  {
    v82 = [TSPDocumentRevision alloc];
    v85 = objc_msgSend_versionUUID(v44, v83, v84);
    v79 = objc_msgSend_initWithSequence_identifier_(v82, v86, 0, v85);

    v78 = 1;
    objc_msgSend_setDocumentRevision_(*(*(a1 + 32) + 256), v87, v79);
  }

  objc_msgSend_setDidResetDocumentRevision_(*(*(a1 + 32) + 256), v81, v78);
  objc_msgSend_setRevision_(v44, v88, v79);
  objc_msgSend_setSaveToken_(*(*(a1 + 32) + 256), v89, *(*(a1 + 32) + 576) + 1);
  objc_msgSend_setDocumentProperties_(*(*(a1 + 32) + 256), v90, v44);
  v206 = v66;
  v95 = objc_msgSend_copy(v44, v91, v92);
  if (!v95)
  {
    v96 = MEMORY[0x277D81150];
    v97 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v93, "[TSPObjectContext beginWriteWithOriginalURL:relativeURLForExternalData:]_block_invoke_2");
    v99 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v98, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPObjectContext.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v96, v100, v97, v99, 1146, 0, "invalid nil value for '%{public}s'", "documentSupportProperties");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v101, v102);
  }

  v103 = *(a1 + 32);
  if ((*(v103 + 448) & 2) != 0)
  {
    v106 = objc_msgSend_additionalDocumentSupportPropertiesForWrite(WeakRetained, v93, v94);
    if (v106)
    {
      v107 = objc_msgSend_additionalProperties(v95, v104, v105);
      v108 = objc_alloc(MEMORY[0x277CBEB38]);
      v111 = objc_msgSend_count(v107, v109, v110);
      v114 = objc_msgSend_count(v106, v112, v113);
      v116 = objc_msgSend_initWithCapacity_(v108, v115, v114 + v111);
      v118 = v116;
      if (v107)
      {
        objc_msgSend_addEntriesFromDictionary_(v116, v117, v107);
      }

      objc_msgSend_addEntriesFromDictionary_(v118, v117, v106);
      objc_msgSend_setAdditionalProperties_(v95, v119, v118);
    }

    v103 = *(a1 + 32);
  }

  objc_msgSend_setDocumentSupportProperties_(*(v103 + 256), v93, v95);
  v122 = objc_msgSend_isInCollaborationMode(*(a1 + 32), v120, v121);
  v124 = *(*(a1 + 32) + 560);
  if (!v124)
  {
    v125 = MEMORY[0x277D81150];
    v126 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v123, "[TSPObjectContext beginWriteWithOriginalURL:relativeURLForExternalData:]_block_invoke_2");
    v128 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v127, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPObjectContext.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v125, v129, v126, v128, 1173, 0, "invalid nil value for '%{public}s'", "documentMetadata");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v130, v131);
  }

  objc_msgSend_takeSnapshotWithCollaborationMode_(v124, v123, v122);
  objc_msgSend_snapshotDataReferenceCountsForAutosave(*(*(a1 + 32) + 512), v132, v133);
  if (objc_msgSend_isSavingCurrentDocument(*(*(a1 + 32) + 256), v134, v135))
  {
    v136 = 0;
  }

  else
  {
    v136 = 16;
  }

  if (v122)
  {
    v137 = v136 | 0x20;
  }

  else
  {
    v137 = v136;
  }

  v138 = [TSPPackageWriteCoordinator alloc];
  v139 = *(a1 + 32);
  v140 = objc_opt_class();
  v143 = objc_msgSend_saveToken(*(*(a1 + 32) + 256), v141, v142);
  v145 = objc_msgSend_initWithContext_archiverClass_archiverFlags_documentRevision_saveToken_packageIdentifier_fileFormatVersion_preferredPackageType_metadataObject_(v138, v144, v139, v140, v137, v79, v143, 1, v206, *(*(a1 + 32) + 144), v124);
  v146 = *(a1 + 32);
  v147 = *(v146 + 264);
  *(v146 + 264) = v145;

  objc_msgSend_setOriginalSupportURL_(*(*(a1 + 32) + 256), v148, *(*(a1 + 32) + 72));
  if ((objc_msgSend_ignoreDocumentSupport(*(a1 + 32), v149, v150) & 1) == 0 && (!objc_msgSend_isDocumentSupportTemporary(*(a1 + 32), v151, v152) || objc_msgSend_shouldUpdate(*(*(a1 + 32) + 256), v151, v153)))
  {
    objc_msgSend_setSupportObject_(*(*(a1 + 32) + 256), v151, *(*(a1 + 32) + 384));
    v156 = objc_msgSend_supportObject(*(*(a1 + 32) + 256), v154, v155);

    if (v156)
    {
      v158 = *(*(a1 + 32) + 568);
      if (!v158)
      {
        v159 = MEMORY[0x277D81150];
        v203 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v157, "[TSPObjectContext beginWriteWithOriginalURL:relativeURLForExternalData:]_block_invoke_2");
        v161 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v160, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPObjectContext.mm");
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v159, v162, v203, v161, 1211, 0, "invalid nil value for '%{public}s'", "supportMetadata");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v163, v164);
      }

      objc_msgSend_takeSnapshotWithCollaborationMode_(v158, v157, v122);
      v165 = [TSPSupportPackageWriteCoordinator alloc];
      v166 = *(a1 + 32);
      v167 = objc_opt_class();
      v170 = objc_msgSend_saveToken(*(*(a1 + 32) + 256), v168, v169);
      v172 = objc_msgSend_initWithContext_archiverClass_archiverFlags_documentRevision_saveToken_fileFormatVersion_metadataObject_packageWriteCoordinator_(v165, v171, v166, v167, v137, v79, v170, v206, v158, *(*(a1 + 32) + 264));
      v173 = *(a1 + 32);
      v174 = *(v173 + 392);
      *(v173 + 392) = v172;

      v177 = *(a1 + 32);
      if (*(v177 + 392))
      {
        v178 = *(v177 + 536);
        v179 = objc_msgSend_documentUUID(*(v177 + 104), v175, v176);
        v182 = objc_msgSend_versionUUID(*(*(a1 + 32) + 104), v180, v181);
        v183 = *(a1 + 32);
        v184 = *(v183 + 72);
        updated = objc_msgSend_updateType(*(v183 + 256), v185, v186);
        objc_msgSend_beginSaveWithDocumentUUID_versionUUID_originalURL_updateType_(v178, v188, v179, v182, v184, updated);
      }
    }
  }

  objc_msgSend_updateModifyObjectToken(*(a1 + 32), v151, v152);
}

void sub_27699A3E0()
{
  v0 = TSULogCreateCategory();
  v1 = UnsafePointer;
  UnsafePointer = v0;
}

void sub_27699A424()
{
  v0 = TSULogCreateCategory();
  v1 = UnsafePointer;
  UnsafePointer = v0;
}

void sub_27699A468(uint64_t a1, const char *a2)
{
  v3 = objc_msgSend_newSnapshotForContext_(TSPDataAttributesSnapshot, a2, *(a1 + 32));
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void sub_27699A7EC(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  if (*(v4 + 392))
  {
    if (objc_msgSend_ignoreDocumentSupport(v4, a2, a3))
    {
      v7 = MEMORY[0x277D81150];
      v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "[TSPObjectContext writeToURL:encryptionKey:error:]_block_invoke");
      v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPObjectContext.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v11, v8, v10, 1278, 0, "We shouldn't be writing the support package.");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v12, v13);
    }

    v66 = 0;
    v67 = &v66;
    v68 = 0x2020000000;
    v69 = 0;
    v62 = 0;
    v63 = &v62;
    v64 = 0x2020000000;
    v65 = 0;
    v14 = *(a1 + 32);
    v15 = *(v14 + 536);
    v16 = objc_msgSend_documentProperties(*(v14 + 256), v5, v6);
    v19 = objc_msgSend_documentUUID(v16, v17, v18);
    v61 = 0;
    v55[0] = MEMORY[0x277D85DD0];
    v55[1] = 3221225472;
    v55[2] = sub_27699AC60;
    v55[3] = &unk_27A6E28E8;
    v58 = &v66;
    v59 = &v62;
    v20 = *(a1 + 40);
    v55[4] = *(a1 + 32);
    v56 = v20;
    v21 = *(a1 + 48);
    v22 = *(a1 + 64);
    v57 = v21;
    v60 = v22;
    v24 = objc_msgSend_writeSupportForDocumentUUID_error_writer_(v15, v23, v19, &v61, v55);
    v25 = v61;
    v26 = v61;
    *(*(*(a1 + 56) + 8) + 24) = v24;

    if ((*(*(*(a1 + 56) + 8) + 24) & 1) == 0 && (*(v67 + 24) != 1 || *(v63 + 24) == 1))
    {
      if (UnsafePointer != -1)
      {
        sub_276BD0D68();
      }

      objc_storeStrong((*(*(a1 + 64) + 8) + 40), v25);
    }

    _Block_object_dispose(&v62, 8);
    _Block_object_dispose(&v66, 8);
  }

  else
  {
    v27 = objc_msgSend_originalSupportURL(*(v4 + 256), a2, a3);
    if (v27 && (v29 = *(*(a1 + 32) + 64), v27, v29))
    {
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 3221225472;
      aBlock[2] = sub_27699AD54;
      aBlock[3] = &unk_27A6E2910;
      v30 = *(a1 + 56);
      v48 = *(a1 + 32);
      v31 = *(&v48 + 1);
      *&v32 = *(a1 + 48);
      *(&v32 + 1) = v30;
      v52 = v48;
      v53 = v32;
      v54 = *(a1 + 64);
      v33 = _Block_copy(aBlock);
      v34 = MEMORY[0x277CCA9E8];
      v37 = objc_msgSend_originalSupportURL(*(*(a1 + 32) + 256), v35, v36);
      v38 = *(*(a1 + 32) + 536);
      v50 = 0;
      v40 = objc_msgSend_tsp_coordinateReadingItemAtURL_urlType_options_filePresenter_error_byAccessor_(v34, v39, v37, 1, 0, v38, &v50, v33);
      v41 = v50;

      if ((v40 & 1) == 0)
      {
        if (UnsafePointer != -1)
        {
          sub_276BD0D90();
        }

        v33[2](v33, 0);
      }
    }

    else
    {
      v42 = *(a1 + 32);
      v43 = *(a1 + 40);
      v44 = v42[7];
      v45 = *(a1 + 48);
      v46 = *(*(a1 + 64) + 8);
      obj = *(v46 + 40);
      v47 = objc_msgSend_writeToURL_originalPackage_supportURL_originalSupportPackage_encryptionKey_error_(v42, v28, v43, v44, 0, 0, v45, &obj);
      objc_storeStrong((v46 + 40), obj);
      *(*(*(a1 + 56) + 8) + 24) = v47;
    }
  }
}

uint64_t sub_27699AC60(void *a1, void *a2)
{
  v3 = a2;
  *(*(a1[7] + 8) + 24) = 1;
  v4 = a1[4];
  v5 = a1[5];
  v6 = v4[7];
  v7 = v4[8];
  v8 = a1[6];
  v9 = *(a1[9] + 8);
  obj = *(v9 + 40);
  v11 = objc_msgSend_writeToURL_originalPackage_supportURL_originalSupportPackage_encryptionKey_error_(v4, v10, v5, v6, v3, v7, v8, &obj);
  objc_storeStrong((v9 + 40), obj);
  *(*(a1[8] + 8) + 24) = v11;
  v12 = *(*(a1[8] + 8) + 24);

  return v12;
}

void sub_27699AD10()
{
  v0 = TSULogCreateCategory();
  v1 = UnsafePointer;
  UnsafePointer = v0;
}

void sub_27699AD54(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1[4];
  v5 = a1[5];
  v6 = v4[7];
  v7 = v4[8];
  v8 = a1[6];
  v9 = *(a1[8] + 8);
  obj = *(v9 + 40);
  v11 = objc_msgSend_writeToURL_originalPackage_supportURL_originalSupportPackage_encryptionKey_error_(v4, v10, v5, v6, v3, v7, v8, &obj);
  objc_storeStrong((v9 + 40), obj);
  *(*(a1[7] + 8) + 24) = v11;
}

void sub_27699ADE4()
{
  v0 = TSULogCreateCategory();
  v1 = UnsafePointer;
  UnsafePointer = v0;
}

void sub_27699B48C()
{
  v0 = TSULogCreateCategory();
  v1 = UnsafePointer;
  UnsafePointer = v0;
}

void sub_27699B4D0()
{
  v0 = TSULogCreateCategory();
  v1 = UnsafePointer;
  UnsafePointer = v0;
}

void sub_27699B514(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 264);
  *(v2 + 264) = 0;

  v5 = *(a1 + 32);
  if (*(v5 + 392))
  {
    objc_msgSend_endSaveWithSuccess_packageWriter_newURL_writtenPackage_(*(v5 + 536), v4, *(a1 + 40), 0, 0, 0);
    v6 = *(a1 + 32);
    v7 = *(v6 + 392);
    *(v6 + 392) = 0;
  }
}

void sub_27699B850()
{
  v0 = TSULogCreateCategory();
  v1 = UnsafePointer;
  UnsafePointer = v0;
}

void sub_27699B894(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(*(a1 + 32) + 264);
  v4 = *(*(a1 + 32) + 392);
  v5 = *(a1 + 32);
  v6 = *(v5 + 264);
  *(v5 + 264) = 0;

  v9 = *(a1 + 32);
  if (*(v9 + 392))
  {
    v10 = *(v9 + 536);
    v11 = objc_msgSend_supportPackageWriter(*(v9 + 256), v7, v8);
    v132 = 0;
    v133[0] = 0;
    LODWORD(v2) = objc_msgSend_endSaveWithSuccess_packageWriter_newURL_writtenPackage_(v10, v12, v2, v11, v133, &v132);
    v13 = v133[0];
    obj = v132;

    v14 = v13;
    v15 = *(a1 + 32);
    v16 = *(v15 + 392);
    *(v15 + 392) = 0;

    v9 = *(a1 + 32);
  }

  else
  {
    obj = 0;
    v14 = 0;
  }

  v17 = *(v9 + 168);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_27699BFC4;
  block[3] = &unk_27A6E29B0;
  block[4] = v9;
  v18 = v3;
  v130 = v18;
  v19 = v4;
  v131 = v19;
  dispatch_barrier_async(v17, block);
  if (v2)
  {
    v124 = objc_msgSend_documentPackageWriter(*(*(a1 + 32) + 256), v20, v21);
    if (!v124)
    {
      v24 = MEMORY[0x277D81150];
      v25 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v22, "[TSPObjectContext endSaveWithSuccess:]_block_invoke_2");
      v27 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v26, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPObjectContext.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v24, v28, v25, v27, 1702, 0, "invalid nil value for '%{public}s'", "documentPackageWriter");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v29, v30);
    }

    v33 = objc_msgSend_URL(*(*(a1 + 32) + 256), v22, v23);
    if (!v33)
    {
      v34 = MEMORY[0x277D81150];
      v35 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v31, "[TSPObjectContext endSaveWithSuccess:]_block_invoke_2");
      v37 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v36, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPObjectContext.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v34, v38, v35, v37, 1705, 0, "invalid nil value for '%{public}s'", "documentURL");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v39, v40);
    }

    v42 = objc_msgSend_allDataIdentifiersPostSave(*(*(a1 + 32) + 256), v31, v32);
    if (!v42)
    {
      v43 = MEMORY[0x277D81150];
      v44 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v41, "[TSPObjectContext endSaveWithSuccess:]_block_invoke_2");
      v46 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v45, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPObjectContext.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v43, v47, v44, v46, 1708, 0, "invalid nil value for '%{public}s'", "allDataIdentifiers");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v48, v49);
    }

    objc_msgSend_updateObjectContextForSuccessfulSaveWithPackageWriter_packageURL_allDataIdentifiers_(v18, v41, v124, v33, v42);
    v52 = objc_msgSend_objectContainer(v18, v50, v51);
    v53 = *(a1 + 32);
    v54 = *(v53 + 544);
    *(v53 + 544) = v52;

    objc_msgSend_updateForSuccessfulSave(*(*(a1 + 32) + 560), v55, v56);
    objc_msgSend_updateModifyObjectToken(*(a1 + 32), v57, v58);
    objc_msgSend_removeAllCachedResourceValues(v33, v59, v60);
    v63 = objc_msgSend_copy(v33, v61, v62);
    v64 = *(a1 + 32);
    v65 = *(v64 + 48);
    *(v64 + 48) = v63;

    v66 = *(a1 + 32);
    v69 = objc_msgSend_documentProperties(v66[32], v67, v68);
    objc_msgSend_setDocumentProperties_(v66, v70, v69);

    objc_msgSend_setNested_(*(a1 + 32), v71, 0);
    if (objc_msgSend_didResetDocumentRevision(*(*(a1 + 32) + 256), v72, v73))
    {
      v76 = objc_msgSend_documentRevision(*(*(a1 + 32) + 256), v74, v75);
      v77 = *(a1 + 32);
      v78 = *(v77 + 136);
      *(v77 + 136) = v76;
    }

    *(*(a1 + 32) + 576) = objc_msgSend_saveToken(*(*(a1 + 32) + 256), v74, v75);
    v80 = objc_msgSend_writtenPackageWithURL_(v124, v79, v33);
    v81 = *(a1 + 32);
    v82 = *(v81 + 56);
    *(v81 + 56) = v80;

    v85 = objc_msgSend_decryptionKey(*(*(a1 + 32) + 56), v83, v84);
    os_unfair_lock_lock((*(a1 + 32) + 96));
    objc_storeStrong((*(a1 + 32) + 40), v85);
    os_unfair_lock_unlock((*(a1 + 32) + 96));
    v88 = objc_msgSend_supportPackageWriter(*(*(a1 + 32) + 256), v86, v87);
    objc_msgSend_updateObjectContextForSuccessfulSaveWithPackageWriter_packageURL_allDataIdentifiers_(v19, v89, v88, v14, v42);

    objc_storeStrong((*(a1 + 32) + 72), v14);
    objc_storeStrong((*(a1 + 32) + 64), obj);
    v92 = objc_msgSend_objectContainer(v19, v90, v91);
    v93 = *(a1 + 32);
    v94 = *(v93 + 552);
    *(v93 + 552) = v92;

    objc_msgSend_didSaveWithSaveOperationState_(*(*(a1 + 32) + 504), v95, *(*(a1 + 32) + 256));
    objc_msgSend_discardOrphanedComponents(*(*(a1 + 32) + 488), v96, v97);
    v100 = objc_msgSend_passwordVerifier(*(*(a1 + 32) + 256), v98, v99);
    v101 = *(a1 + 32);
    v102 = *(v101 + 584);
    *(v101 + 584) = v100;

    v105 = objc_msgSend_documentPasswordHint(*(*(a1 + 32) + 256), v103, v104);
    v106 = *(a1 + 32);
    v107 = *(v106 + 456);
    *(v106 + 456) = v105;

    v110 = objc_msgSend_featureIdentifiers(v18, v108, v109);
    v113 = objc_msgSend_copy(v110, v111, v112);
    v114 = *(a1 + 32);
    v115 = *(v114 + 152);
    *(v114 + 152) = v113;

    *(*(a1 + 32) + 453) = 0;
    v116 = *(a1 + 32);
    v117 = *(v116 + 160);
    *(v116 + 160) = 0;
  }

  *(*(a1 + 32) + 280) = 0;
  v118 = *(a1 + 32);
  v119 = objc_opt_class();
  v122 = objc_msgSend_releaseQueue(v119, v120, v121);
  v126[0] = MEMORY[0x277D85DD0];
  v126[1] = 3221225472;
  v126[2] = nullsub_1;
  v126[3] = &unk_27A6E2898;
  v127 = v18;
  v128 = v19;
  v123 = v19;
  dispatch_async(v122, v126);
}

void sub_27699BFC4(uint64_t a1)
{
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = sub_27699C070;
  aBlock[3] = &unk_27A6E2988;
  aBlock[4] = *(a1 + 32);
  v2 = _Block_copy(aBlock);
  objc_msgSend_enumerateWrittenObjectsWithBlock_(*(a1 + 40), v3, v2);
  objc_msgSend_enumerateWrittenObjectsWithBlock_(*(a1 + 48), v4, v2);
}

void sub_27699C280(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, id a12)
{
  if (v12)
  {
  }

  _Unwind_Resume(a1);
}

void sub_27699C3E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, id a12)
{
  if (v12)
  {
  }

  _Unwind_Resume(a1);
}

void sub_27699C540(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, id a12)
{
  if (v12)
  {
  }

  _Unwind_Resume(a1);
}

void sub_27699C6A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, id a12)
{
  if (v12)
  {
  }

  _Unwind_Resume(a1);
}

uint64_t sub_27699C8E8(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_context(*(a1 + 32), a2, a3);
  v5 = *(a1 + 40);

  if (v4 != v5)
  {
    v7 = MEMORY[0x277D81150];
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "[TSPObjectContext replaceDocumentObject:]_block_invoke");
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPObjectContext.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v11, v8, v10, 1885, 0, "The replacement document object has the wrong context");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v12, v13);
  }

  v14 = *(a1 + 40);
  if (v14[58])
  {
    objc_msgSend_setTsp_identifier_(v14[58], v6, 0);
    v15 = *(a1 + 40);
    v16 = *(v15 + 464);
    *(v15 + 464) = 0;

    v14 = *(a1 + 40);
  }

  v17 = *(a1 + 32);

  return objc_msgSend_setDocumentObject_(v14, v6, v17);
}

void sub_27699CABC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

void sub_27699CEA0()
{
  v0 = TSULogCreateCategory();
  v1 = UnsafePointer;
  UnsafePointer = v0;
}

void sub_27699D1FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

void sub_27699D330(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_27699D348(uint64_t a1, const char *a2, uint64_t a3)
{
  result = objc_msgSend_packageType(*(*(a1 + 32) + 56), a2, a3);
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

void sub_27699D45C()
{
  v0 = TSULogCreateCategory();
  v1 = UnsafePointer;
  UnsafePointer = v0;
}

void sub_27699D670()
{
  v0 = TSULogCreateCategory();
  v1 = UnsafePointer;
  UnsafePointer = v0;
}

void sub_27699D6B4()
{
  v0 = TSULogCreateCategory();
  v1 = UnsafePointer;
  UnsafePointer = v0;
}

void sub_27699D850(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);

  _Unwind_Resume(a1);
}

void sub_27699D874(uint64_t a1, void *a2)
{
  v5 = a2;
  *(*(*(a1 + 32) + 8) + 24) += *(a1 + 40) * objc_msgSend_encodedLength(v5, v3, v4);
}

void sub_27699D8E4(uint64_t a1, void *a2)
{
  v5 = a2;
  *(*(*(a1 + 32) + 8) + 24) += objc_msgSend_encodedLengthIfLocal(v5, v3, v4);
}

void sub_27699DA64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_27699DA7C(uint64_t a1, void *a2)
{
  v7 = a2;
  if (objc_msgSend_packageIdentifier(v7, v3, v4) == 1)
  {
    *(*(*(a1 + 32) + 8) + 24) += objc_msgSend_encodedLength(v7, v5, v6);
  }
}

void sub_27699DBC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, ...)
{
  va_start(va, a7);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_27699DBE8(uint64_t a1, void *a2)
{
  v10 = a2;
  v5 = objc_msgSend_preferredLocator(v10, v3, v4);
  isEqualToString = objc_msgSend_isEqualToString_(v5, v6, *(a1 + 32));

  if (isEqualToString)
  {
    *(*(*(a1 + 40) + 8) + 24) += objc_msgSend_encodedLength(v10, v8, v9);
  }
}

void sub_27699DD38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_27699DD50(uint64_t a1, void *a2)
{
  v9 = a2;
  if ((objc_msgSend_isApplicationData(v9, v3, v4) & 1) == 0 && (objc_msgSend_isExternalData(v9, v5, v6) & 1) == 0)
  {
    *(*(*(a1 + 32) + 8) + 24) += objc_msgSend_encodedLengthIfLocal(v9, v7, v8);
  }
}

void sub_27699DE80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_27699DE98(uint64_t a1, void *a2)
{
  v9 = a2;
  if ((objc_msgSend_isApplicationData(v9, v3, v4) & 1) == 0 && (objc_msgSend_isExternalData(v9, v5, v6) & 1) == 0)
  {
    *(*(*(a1 + 32) + 8) + 24) += objc_msgSend_reservedLengthIfLocal(v9, v7, v8);
  }
}

void sub_27699E070(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id a22)
{
  _Block_object_dispose(&a17, 8);

  _Block_object_dispose((v23 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_27699E0A8(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 560);
  *(v2 + 560) = 0;

  v4 = *(a1 + 32);
  v5 = *(v4 + 568);
  *(v4 + 568) = 0;

  v7 = objc_msgSend_areExternalReferencesToDataAllowedAtURL_(*(a1 + 32), v6, *(a1 + 40));
  if (objc_msgSend_ignoreDocumentSupport(*(a1 + 32), v8, v9))
  {
    v12 = 0;
  }

  else
  {
    v12 = objc_msgSend_isDocumentSupportTemporary(*(a1 + 32), v10, v11) ^ 1;
  }

  v80 = 0;
  v81 = &v80;
  v82 = 0x3032000000;
  v83 = sub_276997288;
  v84 = sub_276997298;
  v85 = 0;
  v74 = 0;
  v75 = &v74;
  v76 = 0x3032000000;
  v77 = sub_276997288;
  v78 = sub_276997298;
  v79 = 0;
  v13 = [TSPFinalizeHandlerQueue alloc];
  v15 = objc_msgSend_initWithRootObjectIdentifier_cancellationState_(v13, v14, 1, *(*(a1 + 32) + 88));
  objc_msgSend_beginAddingLoadedObjects(*(a1 + 32), v16, v17);
  v19 = *(a1 + 32);
  if (v12)
  {
    v73 = 0;
    v65[0] = MEMORY[0x277D85DD0];
    v65[1] = 3221225472;
    v65[2] = sub_27699E638;
    v65[3] = &unk_27A6E2A78;
    v20 = *(a1 + 40);
    v68 = *(a1 + 48);
    v65[4] = v19;
    v72 = v7;
    v66 = v20;
    v67 = v15;
    v69 = &v80;
    v70 = &v74;
    v71 = *(a1 + 56);
    objc_msgSend_prepareToReadSupportObjectExternalDataReferencesAllowed_finalizeHandlerQueue_objects_accessor_(v19, v21, v7, v15, &v73, v65);
    v23 = v73;
    v24 = *(*(a1 + 48) + 8);
    v25 = *(v24 + 24) == 1 && v81[5] != 0;
    *(v24 + 24) = v25;
    if (*(*(*(a1 + 48) + 8) + 24) == 1)
    {
      objc_msgSend_addLoadedObjectsAndEnqueueNotifications_(*(a1 + 32), v22, v23);
    }
  }

  else
  {
    v26 = *(a1 + 40);
    v27 = v81;
    v28 = v81[5];
    v29 = (v75 + 5);
    v63 = v75[5];
    obj = v28;
    v30 = *(*(a1 + 56) + 8);
    v62 = *(v30 + 40);
    v31 = objc_msgSend_continueReadingDocumentObjectFromPackageURL_areExternalDataReferencesAllowed_finalizeHandlerQueue_readCoordinator_objects_error_(v19, v18, v26, v7, v15, &obj, &v63, &v62);
    objc_storeStrong(v27 + 5, obj);
    objc_storeStrong(v29, v63);
    objc_storeStrong((v30 + 40), v62);
    *(*(*(a1 + 48) + 8) + 24) = v31;
    v23 = 0;
    if (*(*(*(a1 + 48) + 8) + 24) == 1)
    {
      objc_msgSend_addLoadedObjectsAndEnqueueNotifications_(*(a1 + 32), v32, v75[5]);
    }
  }

  objc_msgSend_tearDown(v81[5], v32, v33);
  if (*(*(*(a1 + 48) + 8) + 24) == 1)
  {
    objc_msgSend_updatePersistedDataReferenceMap(v81[5], v34, v35);
    v38 = v75[5];
    if (v38 && v23)
    {
      v39 = objc_alloc(MEMORY[0x277CBEA60]);
      v41 = objc_msgSend_initWithObjects_(v39, v40, v75[5], v23, 0);
    }

    else
    {
      if (!v38)
      {
        if (v23)
        {
          v55 = MEMORY[0x277D81150];
          v56 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v36, "[TSPObjectContext readDocumentObjectFromPackageURL:error:]_block_invoke");
          v58 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v57, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPObjectContext.mm");
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v55, v59, v56, v58, 2227, 0, "Somehow read support objects without read document objects.");

          v44 = 0;
          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v60, v61);
        }

        else
        {
          v44 = 0;
        }

        goto LABEL_20;
      }

      v42 = objc_alloc(MEMORY[0x277CBEA60]);
      v41 = objc_msgSend_initWithObjects_(v42, v43, v75[5], 0);
    }

    v44 = v41;
LABEL_20:
    objc_msgSend_createInternalMetadataIfNeeded(*(a1 + 32), v36, v37);
    *(*(*(a1 + 48) + 8) + 24) = objc_msgSend_didFinishSuccessfullyReadingObjects_readCoordinator_finalizeHandlerQueue_(*(a1 + 32), v45, v44, v81[5], v15);
  }

  if ((objc_msgSend_endAddingLoadedObjects(*(a1 + 32), v34, v35) & 1) == 0)
  {
    v48 = MEMORY[0x277D81150];
    v49 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v46, "[TSPObjectContext readDocumentObjectFromPackageURL:error:]_block_invoke");
    v51 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v50, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPObjectContext.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v48, v52, v49, v51, 2238, 0, "Load observers queue should have been resumed when reading the document.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v53, v54);
  }

  if (*(*(*(a1 + 48) + 8) + 24) == 1)
  {
    objc_msgSend_checkForDataWarnings(*(a1 + 32), v46, v47);
  }

  _Block_object_dispose(&v74, 8);
  _Block_object_dispose(&v80, 8);
}

void sub_27699E590(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, id a32)
{
  _Block_object_dispose(&a27, 8);

  _Block_object_dispose((v36 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_27699E638(uint64_t a1, char a2, void *a3, void *a4, void *a5)
{
  v9 = a3;
  v10 = a4;
  v12 = a5;
  if (v10)
  {
    v33 = 0;
    v13 = objc_msgSend_readPackageMetadataWithError_(v10, v11, &v33);
    v14 = v33;
    if (!v13)
    {

      if (UnsafePointer != -1)
      {
        sub_276BD0EC0();
      }

      v12 = 0;
    }
  }

  v15 = *(a1 + 32);
  v16 = *(a1 + 40);
  v17 = *(a1 + 88);
  v18 = *(a1 + 48);
  v19 = *(*(a1 + 64) + 8);
  v20 = *(v19 + 40);
  v21 = *(*(a1 + 72) + 8);
  v31 = *(v21 + 40);
  obj = v20;
  v22 = *(*(a1 + 80) + 8);
  v30 = *(v22 + 40);
  v23 = objc_msgSend_continueReadingDocumentObjectFromPackageURL_areExternalDataReferencesAllowed_finalizeHandlerQueue_readCoordinator_objects_error_(v15, v11, v16, v17, v18, &obj, &v31, &v30);
  objc_storeStrong((v19 + 40), obj);
  objc_storeStrong((v21 + 40), v31);
  objc_storeStrong((v22 + 40), v30);
  *(*(*(a1 + 56) + 8) + 24) = v23;
  if (*(*(*(a1 + 56) + 8) + 24) == 1)
  {
    objc_msgSend_addLoadedObjectsAndEnqueueNotifications_(*(a1 + 32), v24, *(*(*(a1 + 72) + 8) + 40));
    if (*(*(*(a1 + 56) + 8) + 24))
    {
      if (v12)
      {
        if ((*(v12 + 2))(v12, *(*(*(a1 + 64) + 8) + 40)))
        {
          goto LABEL_19;
        }
      }

      else if ((a2 & 1) == 0)
      {
        goto LABEL_19;
      }

      WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 472));
      if (objc_opt_respondsToSelector())
      {
        v26 = objc_loadWeakRetained((*(a1 + 32) + 472));
        isDocumentSupportRequired = objc_msgSend_isDocumentSupportRequired(v26, v27, v28);

        if (isDocumentSupportRequired)
        {
          *(*(*(a1 + 56) + 8) + 24) = 0;
        }
      }

      else
      {
      }
    }
  }

  if (*(*(*(a1 + 56) + 8) + 24) == 1)
  {
    *(*(*(a1 + 56) + 8) + 24) = objc_msgSend_migrateDataToTemporaryStorageFromPackage_(*(*(a1 + 32) + 504), v24, *(*(a1 + 32) + 64));
  }

LABEL_19:
}

void sub_27699E8A8()
{
  v0 = TSULogCreateCategory();
  v1 = UnsafePointer;
  UnsafePointer = v0;
}

void sub_27699EC80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id a24)
{
  _Block_object_dispose(&a19, 8);

  _Unwind_Resume(a1);
}

uint64_t sub_27699ED28(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v7 = a3;
  v10 = a4;
  if (a2)
  {
    v11 = objc_msgSend_documentRevision(*(a1 + 40), v8, v9);
    v12 = *(a1 + 32);
    v13 = *(v12 + 136);
    *(v12 + 136) = v11;

    *(*(a1 + 32) + 576) = objc_msgSend_saveToken(*(a1 + 40), v14, v15);
    *(*(a1 + 32) + 144) = objc_msgSend_preferredPackageType(*(a1 + 40), v16, v17);
    if (*(*(a1 + 32) + 544))
    {
      TSUSetCrashReporterInfo();
      v36 = MEMORY[0x277D81150];
      v38 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v37, "[TSPObjectContext continueReadingDocumentObjectFromPackageURL:areExternalDataReferencesAllowed:finalizeHandlerQueue:readCoordinator:objects:error:]_block_invoke", "[TSPObjectContext continueReadingDocumentObjectFromPackageURL:areExternalDataReferencesAllowed:finalizeHandlerQueue:readCoordinator:objects:error:]_block_invoke", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPObjectContext.mm", 2270);
      v40 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v39, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPObjectContext.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v36, v41, v38, v40, 2270, 1, "Document object container should not be set.");

      TSUCrashBreakpoint();
      abort();
    }

    v20 = objc_msgSend_objectContainer(*(a1 + 40), v18, v19);
    v21 = *(a1 + 32);
    v22 = *(v21 + 544);
    *(v21 + 544) = v20;

    objc_opt_class();
    v25 = objc_msgSend_metadataObject(*(a1 + 40), v23, v24);
    v26 = TSUDynamicCast();
    v27 = *(a1 + 32);
    v28 = *(v27 + 560);
    *(v27 + 560) = v26;

    objc_msgSend_applyDeferredInitialDataProperties(*(a1 + 32), v29, v30);
    objc_msgSend_updateObjectContextForSuccessfulRead(*(a1 + 40), v31, v32);
  }

  objc_storeStrong((*(*(a1 + 48) + 8) + 40), a4);
  objc_msgSend_endAssertOnRead(*(*(a1 + 32) + 120), v33, v34);

  return a2;
}

void sub_27699F250(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, void *a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, id a28)
{
  _Block_object_dispose(&a23, 8);

  _Block_object_dispose((v33 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_27699F2D0()
{
  v0 = TSULogCreateCategory();
  v1 = UnsafePointer;
  UnsafePointer = v0;
}

void sub_27699F314(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v7 = a2;
  v8 = a3;
  if ((objc_msgSend_hasSuffix_(v7, v9, @"/") & 1) == 0)
  {
    v11 = objc_msgSend_URLByAppendingPathComponent_(*(a1 + 32), v10, v7);
    v15 = objc_msgSend_URLByDeletingLastPathComponent(v11, v12, v13);
    if (v15)
    {
      v16 = *(a1 + 40);
      v17 = *(*(a1 + 64) + 8);
      obj = *(v17 + 40);
      v18 = objc_msgSend_createDirectoryAtURL_withIntermediateDirectories_attributes_error_(v16, v14, v15, 1, 0, &obj);
      objc_storeStrong((v17 + 40), obj);
    }

    else
    {
      v18 = 0;
    }

    *(*(*(a1 + 56) + 8) + 24) = v18;
    v19 = *(*(a1 + 56) + 8);
    if (*(v19 + 24) == 1)
    {
      v20 = *(a1 + 48);
      v21 = *(*(a1 + 64) + 8);
      v23 = *(v21 + 40);
      v22 = objc_msgSend_tsp_writeZipEntry_toURL_validateCRC_error_(v20, v14, v8, v11, 1, &v23);
      objc_storeStrong((v21 + 40), v23);
      v19 = *(*(a1 + 56) + 8);
    }

    else
    {
      v22 = 0;
    }

    *(v19 + 24) = v22;
    *a4 = *(*(*(a1 + 56) + 8) + 24) ^ 1;
  }
}

void sub_27699F600(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id a22)
{
  _Block_object_dispose(&a17, 8);

  _Block_object_dispose((v23 - 64), 8);
  _Unwind_Resume(a1);
}

void sub_27699F63C(uint64_t a1, const char *a2)
{
  v3 = objc_msgSend_objectForIdentifier_(*(a1 + 32), a2, 1);
  *(*(*(a1 + 48) + 8) + 24) = v3 != 0;
  if (*(*(*(a1 + 48) + 8) + 24))
  {
    goto LABEL_12;
  }

  v4 = *(a1 + 32);
  v5 = *(v4 + 560);
  *(v4 + 560) = 0;

  v6 = *(a1 + 32);
  v7 = *(v6 + 568);
  *(v6 + 568) = 0;

  v8 = [TSPFinalizeHandlerQueue alloc];
  v10 = objc_msgSend_initWithRootObjectIdentifier_cancellationState_(v8, v9, 1, *(*(a1 + 32) + 88));
  v11 = [TSPDatabaseReadCoordinator alloc];
  v12 = *(a1 + 32);
  v13 = *(a1 + 40);
  v14 = *(*(a1 + 56) + 8);
  v59 = *(v14 + 40);
  v16 = objc_msgSend_initWithContext_packageURL_finalizeHandlerQueue_error_(v11, v15, v12, v13, v10, &v59);
  objc_storeStrong((v14 + 40), v59);
  if (v16)
  {
    v53 = 0;
    v54 = &v53;
    v55 = 0x3032000000;
    v56 = sub_276997288;
    v57 = sub_276997298;
    v58 = 0;
    objc_msgSend_beginAssertOnRead(*(*(a1 + 32) + 120), v17, v18);
    v19 = *(a1 + 32);
    v20 = *(*(a1 + 56) + 8);
    obj = *(v20 + 40);
    v52 = v3;
    v50[0] = MEMORY[0x277D85DD0];
    v50[1] = 3221225472;
    v50[2] = sub_27699FA18;
    v50[3] = &unk_27A6E2B18;
    v50[4] = v19;
    v50[5] = &v53;
    v22 = objc_msgSend_readWithReadCoordinator_finalizeHandlerQueue_rootObject_error_readCompletion_(v19, v21, v16, 0, &v52, &obj, v50);
    v23 = v52;

    objc_storeStrong((v20 + 40), obj);
    *(*(*(a1 + 48) + 8) + 24) = v22;
    if (*(*(*(a1 + 48) + 8) + 24) == 1)
    {
      objc_msgSend_updatePersistedDataReferenceMap(v16, v24, v25);
      v26 = objc_autoreleasePoolPush();
      objc_msgSend_beginAddingLoadedObjects(*(a1 + 32), v27, v28);
      objc_msgSend_addLoadedObjectsAndEnqueueNotifications_(*(a1 + 32), v29, v54[5]);
      objc_msgSend_createInternalMetadataIfNeeded(*(a1 + 32), v30, v31);
      if (v54[5])
      {
        v33 = objc_alloc(MEMORY[0x277CBEA60]);
        v35 = objc_msgSend_initWithObjects_(v33, v34, v54[5], 0);
        Coordinator_finalizeHandlerQueue = objc_msgSend_didFinishSuccessfullyReadingObjects_readCoordinator_finalizeHandlerQueue_(*(a1 + 32), v36, v35, v16, v10);
      }

      else
      {
        v35 = 0;
        Coordinator_finalizeHandlerQueue = objc_msgSend_didFinishSuccessfullyReadingObjects_readCoordinator_finalizeHandlerQueue_(*(a1 + 32), v32, 0, v16, v10);
      }

      *(*(*(a1 + 48) + 8) + 24) = Coordinator_finalizeHandlerQueue;
      if ((objc_msgSend_endAddingLoadedObjects(*(a1 + 32), v38, v39) & 1) == 0)
      {
        v41 = MEMORY[0x277D81150];
        v42 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v40, "[TSPObjectContext continueReadingDocumentObjectFromDatabasePackageURL:error:]_block_invoke");
        v44 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v43, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPObjectContext.mm");
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v41, v45, v42, v44, 2418, 0, "Load observers queue should have been resumed when reading the document.");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v46, v47);
      }

      objc_autoreleasePoolPop(v26);
    }

    _Block_object_dispose(&v53, 8);

    v3 = v23;
  }

  if (*(*(*(a1 + 48) + 8) + 24))
  {
LABEL_12:
    objc_storeStrong((*(a1 + 32) + 464), v3);
    objc_msgSend_checkForDataWarnings(*(a1 + 32), v48, v49);
  }
}

void sub_27699F998(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, id a23)
{
  _Block_object_dispose(&a18, 8);

  _Unwind_Resume(a1);
}

uint64_t sub_27699FA18(uint64_t a1, uint64_t a2, int a3, id obj)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), obj);
  v7 = obj;
  objc_msgSend_endAssertOnRead(*(*(a1 + 32) + 120), v8, v9);

  return a2;
}

void sub_2769A00EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *a35, char a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, void *a41)
{
  objc_destroyWeak((v45 + 32));
  objc_destroyWeak(&location);

  _Block_object_dispose(&a30, 8);
  _Block_object_dispose(&a36, 8);

  _Block_object_dispose((v46 - 184), 8);
  _Block_object_dispose((v46 - 136), 8);

  _Unwind_Resume(a1);
}

void sub_2769A01C0()
{
  v0 = TSULogCreateCategory();
  v1 = UnsafePointer;
  UnsafePointer = v0;
}

void sub_2769A0204(uint64_t a1, char a2, void *a3, void *a4, void *a5)
{
  v14 = a3;
  v10 = a4;
  v11 = a5;
  *(*(*(a1 + 40) + 8) + 24) = a2;
  objc_storeStrong((*(*(a1 + 48) + 8) + 40), a5);
  if (*(*(*(a1 + 40) + 8) + 24) == 1)
  {
    objc_storeStrong((*(*(a1 + 56) + 8) + 40), a3);
    objc_storeStrong((*(*(a1 + 64) + 8) + 40), a4);
  }

  else if ((objc_msgSend_tsp_isRecoverable(*(*(*(a1 + 48) + 8) + 40), v12, v13) & 1) == 0 && UnsafePointer != -1)
  {
    sub_276BD0F38();
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_2769A033C()
{
  v0 = TSULogCreateCategory();
  v1 = UnsafePointer;
  UnsafePointer = v0;
}

void sub_2769A0380(uint64_t a1, char a2, uint64_t a3, void *a4)
{
  v6 = a4;
  if ((a2 & 1) == 0)
  {
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = sub_2769A0478;
    v8[3] = &unk_27A6E2B90;
    objc_copyWeak(&v10, (a1 + 32));
    v9 = v6;
    Main = CFRunLoopGetMain();
    CFRunLoopPerformBlock(Main, *MEMORY[0x277CBF058], v8);
    CFRunLoopWakeUp(Main);

    objc_destroyWeak(&v10);
  }
}

void sub_2769A0454(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13)
{
  objc_destroyWeak((v14 + 40));

  _Unwind_Resume(a1);
}

void sub_2769A0478(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  objc_msgSend_presentPersistenceError_(WeakRetained, v2, *(a1 + 32));
}

void sub_2769A075C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, void *a8, uint64_t a9, ...)
{
  va_start(va, a9);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2769A079C(uint64_t a1, const char *a2, uint64_t a3)
{
  v16 = *MEMORY[0x277D85DE8];
  *(*(*(a1 + 48) + 8) + 24) = objc_msgSend_runFinalizeHandlers(*(a1 + 32), a2, a3);
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = *(a1 + 40);
  v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v5, &v11, v15, 16);
  if (v7)
  {
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v4);
        }

        objc_msgSend_tsp_enumerateObjectsUsingBlock_(*(*(&v11 + 1) + 8 * v9++), v6, &unk_2885BF340, v11);
      }

      while (v7 != v9);
      v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v6, &v11, v15, 16);
    }

    while (v7);
  }

  v10 = *MEMORY[0x277D85DE8];
}

void sub_2769A0A94(void *a1, const char *a2)
{
  v3 = objc_msgSend_tsp_objectForIdentifier_(*(a1[4] + 112), a2, a1[6]);
  v4 = *(a1[5] + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void sub_2769A0D20(uint64_t a1)
{
  if (!*(*(a1 + 32) + 312))
  {
    v3 = objc_alloc(MEMORY[0x277D81350]);
    v5 = objc_msgSend_initWithSignature_error_(v3, v4, @"ContextData", 0);
    v6 = *(a1 + 32);
    v7 = *(v6 + 312);
    *(v6 + 312) = v5;
  }
}

void sub_2769A0EA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

void sub_2769A0FD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

void sub_2769A0FF4(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_copy(*(*(a1 + 32) + 48), a2, a3);
  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

void sub_2769A1128(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

void sub_2769A1148(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_copy(*(*(a1 + 32) + 72), a2, a3);
  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

void sub_2769A1330()
{
  v0 = TSULogCreateCategory();
  v1 = UnsafePointer;
  UnsafePointer = v0;
}

void sub_2769A1374(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_copy(*(a1 + 40), a2, a3);
  v5 = *(a1 + 32);
  v6 = *(v5 + 48);
  *(v5 + 48) = v4;
}

void sub_2769A1484()
{
  v0 = TSULogCreateCategory();
  v1 = UnsafePointer;
  UnsafePointer = v0;
}

void sub_2769A14C8(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_copy(*(a1 + 40), a2, a3);
  v5 = *(a1 + 32);
  v6 = *(v5 + 72);
  *(v5 + 72) = v4;
}

void sub_2769A1980(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

void sub_2769A1AA0(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = *(*(a1 + 32) + 136);
  if (v4)
  {
    v5 = objc_msgSend_sequence(v4, a2, a3);
    if (v5 > objc_msgSend_sequence(*(a1 + 40), v6, v7))
    {
      v9 = MEMORY[0x277D81150];
      v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "[TSPObjectContext setDocumentRevision:]_block_invoke");
      v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPObjectContext.mm");
      v15 = objc_msgSend_sequence(*(*(a1 + 32) + 136), v13, v14);
      v18 = objc_msgSend_sequence(*(a1 + 40), v16, v17);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v19, v10, v12, 2798, 0, "Document revision is going down! Changing from %i to %i", v15, v18);

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v20, v21);
    }
  }

  v22 = *(a1 + 40);
  v23 = (*(a1 + 32) + 136);

  objc_storeStrong(v23, v22);
}

void sub_2769A1CC8(void *a1, const char *a2)
{
  v3 = objc_msgSend_nextRevisionWithIdentifier_(*(a1[4] + 136), a2, a1[5]);
  v4 = *(a1[6] + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  v6 = *(*(a1[6] + 8) + 40);
  v7 = (a1[4] + 136);

  objc_storeStrong(v7, v6);
}

void sub_2769A1DA0(uint64_t a1)
{
  v2 = [TSPDocumentRevision alloc];
  v9 = objc_msgSend_versionUUID(*(*(a1 + 32) + 104), v3, v4);
  v6 = objc_msgSend_initWithSequence_identifier_(v2, v5, 0);
  v7 = *(a1 + 32);
  v8 = *(v7 + 136);
  *(v7 + 136) = v6;
}

void sub_2769A1ED8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2769A22AC()
{
  v0 = objc_alloc_init(TSPTemporaryObjectContextDelegate);
  v1 = qword_280A523F0;
  qword_280A523F0 = v0;

  v2 = [TSPObjectContext alloc];
  v3 = qword_280A523F0;
  v9 = objc_msgSend_sharedRegistry(TSPRegistry, v4, v5);
  InternalMetadataObject = objc_msgSend_initWithDelegate_registry_resourceContext_mode_isLoadingDocument_shouldCreateInternalMetadataObject_(v2, v6, v3);
  v8 = qword_280A523F8;
  qword_280A523F8 = InternalMetadataObject;
}

void sub_2769A2BC4()
{
  v0 = TSULogCreateCategory();
  v1 = UnsafePointer;
  UnsafePointer = v0;
}

void sub_2769A2D00()
{
  v0 = TSULogCreateCategory();
  v1 = UnsafePointer;
  UnsafePointer = v0;
}

void sub_2769A2D44()
{
  v0 = TSULogCreateCategory();
  v1 = UnsafePointer;
  UnsafePointer = v0;
}

void sub_2769A3204(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, id a31, char a32, uint64_t a33, uint64_t a34, uint64_t a35, char a36)
{
  _Block_object_dispose(&a26, 8);

  _Block_object_dispose(&a32, 8);
  _Block_object_dispose(&a36, 8);
  _Block_object_dispose((v37 - 232), 8);

  _Block_object_dispose((v37 - 184), 8);
  _Block_object_dispose((v37 - 136), 8);

  _Unwind_Resume(a1);
}

void sub_2769A32D8(uint64_t a1, void *a2)
{
  v3 = a2;
  os_unfair_lock_lock((*(a1 + 32) + 96));
  v4 = *(*(a1 + 32) + 40);
  os_unfair_lock_unlock((*(a1 + 32) + 96));
  v5 = *(*(a1 + 32) + 536);
  v6 = *(*(a1 + 56) + 8);
  v60 = *(v6 + 40);
  v8 = objc_msgSend_newPackageWithURL_options_packageIdentifier_decryptionKey_fileCoordinatorDelegate_error_(TSPPackage, v7, v3, 0, 2, v4, v5, &v60);
  objc_storeStrong((v6 + 40), v60);
  v11 = objc_msgSend_documentProperties(v8, v9, v10);
  v14 = v11;
  *(*(*(a1 + 64) + 8) + 24) = v11 != 0;
  if (*(*(*(a1 + 64) + 8) + 24) != 1)
  {
    goto LABEL_8;
  }

  v15 = objc_msgSend_documentUUID(v11, v12, v13);
  v18 = objc_msgSend_documentUUID(*(*(a1 + 32) + 104), v16, v17);
  if (!objc_msgSend_isEqual_(v15, v19, v18))
  {
LABEL_7:

    goto LABEL_8;
  }

  v22 = objc_msgSend_versionUUID(v14, v20, v21);
  v25 = objc_msgSend_versionUUID(*(*(a1 + 32) + 104), v23, v24);
  if (!objc_msgSend_isEqual_(v22, v26, v25))
  {

    goto LABEL_7;
  }

  v29 = objc_msgSend_fileFormatVersion(v14, v27, v28);
  if (v29 == UnsafePointer())
  {

LABEL_13:
    objc_storeStrong((*(a1 + 32) + 64), v8);
    v53 = [TSPSupportPackageReadCoordinator alloc];
    v36 = *(a1 + 32);
    v52 = *(a1 + 40);
    v37 = *(v36 + 64);
    v38 = *(a1 + 104);
    v39 = *(v36 + 448);
    v42 = objc_msgSend_documentLoadValidationPolicy(v36, v40, v41);
    ValidationPolicy_documentPackage = objc_msgSend_initWithContext_package_packageURL_finalizeHandlerQueue_areExternalDataReferencesAllowed_skipDocumentUpgrade_documentLoadValidationPolicy_documentPackage_(v53, v43, v36, v37, v3, v52, v38, (v39 >> 21) & 1, v42, *(*(a1 + 32) + 56));

    objc_msgSend_setCancellationState_(ValidationPolicy_documentPackage, v45, *(*(a1 + 32) + 88));
    if (ValidationPolicy_documentPackage)
    {
      v46 = *(a1 + 48);
      v54[0] = MEMORY[0x277D85DD0];
      v54[1] = 3221225472;
      v54[2] = sub_2769A36E4;
      v54[3] = &unk_27A6E2CC8;
      v47 = ValidationPolicy_documentPackage;
      v48 = *(a1 + 32);
      v55 = v47;
      v56 = v48;
      v57 = *(a1 + 72);
      v49 = *(a1 + 88);
      v58 = *(a1 + 56);
      v59 = v49;
      (*(v46 + 16))(v46, 1, v3, v47, v54);
      *(*(*(a1 + 96) + 8) + 24) = 1;
      objc_msgSend_tearDown(v47, v50, v51);
    }

    else if (UnsafePointer != -1)
    {
      sub_276BD1000();
    }

    goto LABEL_18;
  }

  v35 = objc_msgSend_ignoreDocumentSupportVersioning(*(a1 + 32), v30, v31);

  if (v35)
  {
    goto LABEL_13;
  }

LABEL_8:
  if (v14)
  {
    v32 = objc_msgSend_tsp_errorWithCode_(MEMORY[0x277CCA9B8], v12, 12);
    v33 = *(*(a1 + 56) + 8);
    v34 = *(v33 + 40);
    *(v33 + 40) = v32;
  }

  else if ((*(*(*(a1 + 64) + 8) + 24) & 1) == 0)
  {
    *(*(*(a1 + 64) + 8) + 24) = objc_msgSend_tsu_isNoSuchFileError(*(*(*(a1 + 56) + 8) + 40), v12, v13) ^ 1;
  }

LABEL_18:
}

uint64_t sub_2769A36E4(uint64_t a1, const char *a2)
{
  objc_msgSend_setDocumentPackageReadCoordinator_(*(a1 + 32), a2, a2);
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(*(a1 + 56) + 8);
  v6 = *(v5 + 40);
  v7 = *(*(a1 + 64) + 8);
  v16 = *(v7 + 40);
  v17 = v6;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = sub_2769A3800;
  v13[3] = &unk_27A6E2AC8;
  v13[4] = v4;
  v8 = v3;
  v9 = *(a1 + 72);
  v14 = v8;
  v15 = v9;
  LOBYTE(v4) = objc_msgSend_readWithReadCoordinator_finalizeHandlerQueue_rootObject_error_readCompletion_(v4, v10, v8, 0, &v17, &v16, v13);
  objc_storeStrong((v5 + 40), v17);
  objc_storeStrong((v7 + 40), v16);
  *(*(*(a1 + 48) + 8) + 24) = v4;
  v11 = *(*(*(a1 + 48) + 8) + 24);

  return v11;
}

uint64_t sub_2769A3800(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v7 = a3;
  v10 = a4;
  if (a2)
  {
    if (*(*(a1 + 32) + 552))
    {
      TSUSetCrashReporterInfo();
      v23 = MEMORY[0x277D81150];
      v25 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v24, "[TSPObjectContext prepareToReadSupportObjectExternalDataReferencesAllowed:finalizeHandlerQueue:objects:accessor:]_block_invoke_3", "[TSPObjectContext prepareToReadSupportObjectExternalDataReferencesAllowed:finalizeHandlerQueue:objects:accessor:]_block_invoke_3", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPObjectContext.mm", 3121);
      v27 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v26, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPObjectContext.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v23, v28, v25, v27, 3121, 1, "Support object container should not be set.");

      TSUCrashBreakpoint();
      abort();
    }

    v11 = objc_msgSend_objectContainer(*(a1 + 40), v8, v9);
    v12 = *(a1 + 32);
    v13 = *(v12 + 552);
    *(v12 + 552) = v11;

    objc_opt_class();
    v16 = objc_msgSend_metadataObject(*(a1 + 40), v14, v15);
    v17 = TSUDynamicCast();
    v18 = *(a1 + 32);
    v19 = *(v18 + 568);
    *(v18 + 568) = v17;
  }

  v20 = *(*(a1 + 48) + 8);
  v21 = *(v20 + 40);
  *(v20 + 40) = v10;

  return a2;
}

void sub_2769A39A8()
{
  v0 = TSULogCreateCategory();
  v1 = UnsafePointer;
  UnsafePointer = v0;
}

void sub_2769A39EC()
{
  v0 = TSULogCreateCategory();
  v1 = UnsafePointer;
  UnsafePointer = v0;
}

void sub_2769A40E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, void *a15, void *a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, id a35, char a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, id a41)
{
  _Block_object_dispose(&a30, 8);

  _Block_object_dispose(&a36, 8);
  _Block_object_dispose((v43 - 184), 8);

  _Block_object_dispose((v43 - 136), 8);
  _Unwind_Resume(a1);
}

void sub_2769A41F0(uint64_t a1, int a2, void *a3, void *a4, void *a5)
{
  v18 = a3;
  v10 = a4;
  v13 = a5;
  if (a2)
  {
    v14 = objc_msgSend_endReading(*(a1 + 32), v11, v12);
  }

  else
  {
    v14 = 0;
  }

  *(*(*(a1 + 56) + 8) + 24) = v14;
  if (*(*(*(a1 + 56) + 8) + 24) == 1)
  {
    objc_storeStrong((*(*(a1 + 64) + 8) + 40), a3);
    objc_storeStrong((*(*(a1 + 72) + 8) + 40), a4);
  }

  else
  {
    v15 = objc_msgSend_tsp_ensureReadErrorWithError_(MEMORY[0x277CCA9B8], v11, v13);
    v16 = *(*(a1 + 80) + 8);
    v17 = *(v16 + 40);
    *(v16 + 40) = v15;

    if ((*(a1 + 88) & 1) == 0 && UnsafePointer != -1)
    {
      sub_276BD1028();
    }
  }

  dispatch_semaphore_signal(*(a1 + 48));
}

void sub_2769A433C()
{
  v0 = TSULogCreateCategory();
  v1 = UnsafePointer;
  UnsafePointer = v0;
}

void sub_2769A46D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, id a33)
{
  _Block_object_dispose(&a28, 8);

  _Block_object_dispose((v36 - 184), 8);
  _Block_object_dispose((v36 - 152), 8);

  _Unwind_Resume(a1);
}

void sub_2769A475C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  v7 = a3;
  v8 = a5;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = sub_2769A4884;
  v14[3] = &unk_27A6E2D40;
  v10 = *(a1 + 32);
  v9 = *(a1 + 40);
  v19 = *(a1 + 48);
  v15 = v7;
  v16 = v9;
  v17 = v8;
  v18 = *(a1 + 32);
  v22 = *(a1 + 80);
  v20 = *(a1 + 56);
  v21 = *(a1 + 72);
  v11 = v8;
  v12 = v7;
  objc_msgSend_performReadOperation_(v10, v13, v14);
}

void sub_2769A4884(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  if (v4)
  {
    LOBYTE(v4) = objc_msgSend_packageIdentifier(*(a1 + 40), a2, a3) != 2 || *(a1 + 48) != 0;
  }

  *(*(*(a1 + 64) + 8) + 24) = v4;
  if (*(*(*(a1 + 64) + 8) + 24) == 1)
  {
    v5 = *(a1 + 96);
    v7 = *(a1 + 32);
    v6 = *(a1 + 40);
    v9 = *(a1 + 48);
    v8 = *(a1 + 56);
    v10 = *(*(a1 + 72) + 8);
    v12 = *(v10 + 40);
    v11 = (v10 + 40);
    obj = v12;
    v13 = *(a1 + 97);
    if (v13 == 1)
    {
      v14 = *(*(a1 + 80) + 8);
      v16 = *(v14 + 40);
      v15 = (v14 + 40);
      v38 = v16;
      v17 = &v38;
    }

    else
    {
      v17 = 0;
      v15 = 0;
    }

    v33 = *(*(a1 + 88) + 8);
    v35 = *(v33 + 40);
    v34 = (v33 + 40);
    v37 = v35;
    isWeakReference_documentPackage_supportPackage_rootObject_allObjects_error = objc_msgSend_readComponent_isWeakReference_documentPackage_supportPackage_rootObject_allObjects_error_(v8, a2, v6, v5, v7, v9, &obj, v17, &v37);
    objc_storeStrong(v11, obj);
    if (v13)
    {
      objc_storeStrong(v15, v38);
    }

    objc_storeStrong(v34, v37);
    *(*(*(a1 + 64) + 8) + 24) = isWeakReference_documentPackage_supportPackage_rootObject_allObjects_error;
  }

  else
  {
    v18 = MEMORY[0x277D81150];
    v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSPObjectContext readComponent:isWeakReference:rootObject:allObjects:error:]_block_invoke_2");
    v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v20, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPObjectContext.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v18, v22, v19, v21, 3390, 0, "Package should not be nil while reading component root object.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v23, v24);
    v26 = objc_msgSend_tsp_unknownReadErrorWithUserInfo_(MEMORY[0x277CCA9B8], v25, 0);
    v27 = *(*(a1 + 88) + 8);
    v28 = *(v27 + 40);
    *(v27 + 40) = v26;

    v30 = objc_msgSend_tsp_errorWithError_hints_(MEMORY[0x277CCA9B8], v29, *(*(*(a1 + 88) + 8) + 40), &unk_2885E5998);
    v31 = *(*(a1 + 88) + 8);
    v32 = *(v31 + 40);
    *(v31 + 40) = v30;
  }
}

void sub_2769A4C90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id a24)
{
  _Block_object_dispose(&a19, 8);

  _Block_object_dispose((v25 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_2769A4CD8(uint64_t a1, const char *a2)
{
  v5 = objc_msgSend_componentForRootObjectOfLazyReference_(*(*(a1 + 32) + 488), a2, *(a1 + 40));
  *(*(*(a1 + 48) + 8) + 24) = v5 != 0;
  if (*(*(*(a1 + 48) + 8) + 24) == 1)
  {
    v6 = *(a1 + 64);
    v7 = *(a1 + 32);
    v8 = objc_msgSend_ownershipMode(*(a1 + 40), v3, v4);
    if (objc_msgSend_allowUnknownObject(*(a1 + 40), v9, v10))
    {
      v13 = 1;
    }

    else
    {
      v13 = objc_msgSend_ignoreUnknownContentWhileReading(*(a1 + 32), v11, v12);
    }

    v22 = v8 != 0;
    v23 = *(a1 + 72);
    v24 = *(*(a1 + 56) + 8);
    obj = *(v24 + 40);
    isWeakReference_ignoreUnknownContentWhileReading_rootObjectComponent_object_error = objc_msgSend_readObjectForIdentifier_isWeakReference_ignoreUnknownContentWhileReading_rootObjectComponent_object_error_(v7, v11, v6, v22, v13, v5, v23, &obj);
    objc_storeStrong((v24 + 40), obj);
    *(*(*(a1 + 48) + 8) + 24) = isWeakReference_ignoreUnknownContentWhileReading_rootObjectComponent_object_error;
  }

  else if (!objc_msgSend_ownershipMode(*(a1 + 40), v3, v4))
  {
    if (UnsafePointer != -1)
    {
      sub_276BD103C();
    }

    v15 = objc_msgSend_tsp_unknownReadErrorWithUserInfo_(MEMORY[0x277CCA9B8], v14, 0);
    v16 = *(*(a1 + 56) + 8);
    v17 = *(v16 + 40);
    *(v16 + 40) = v15;

    v19 = objc_msgSend_tsp_errorWithError_hints_(MEMORY[0x277CCA9B8], v18, *(*(*(a1 + 56) + 8) + 40), &unk_2885E59B0);
    v20 = *(*(a1 + 56) + 8);
    v21 = *(v20 + 40);
    *(v20 + 40) = v19;
  }
}

void sub_2769A4E64()
{
  v0 = TSULogCreateCategory();
  v1 = UnsafePointer;
  UnsafePointer = v0;
}

void sub_2769A4FCC()
{
  v0 = TSULogCreateCategory();
  v1 = UnsafePointer;
  UnsafePointer = v0;
}

void sub_2769A5010()
{
  v0 = TSULogCreateCategory();
  v1 = UnsafePointer;
  UnsafePointer = v0;
}

void sub_2769A542C(uint64_t a1, void *a2, void *a3)
{
  v46 = *MEMORY[0x277D85DE8];
  v37 = a2;
  v7 = a3;
  if (!v7 && objc_msgSend_count(v37, v5, v6))
  {
    v36 = objc_msgSend_delegate(*(a1 + 32), v8, v9);
    if (objc_opt_respondsToSelector())
    {
      v12 = objc_msgSend_documentResourceRegistry(*(*(a1 + 32) + 496), v10, v11);
      v43 = 0u;
      v44 = 0u;
      v41 = 0u;
      v42 = 0u;
      v13 = v37;
      v15 = 0;
      v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v14, &v41, v45, 16);
      if (v18)
      {
        v19 = *v42;
        do
        {
          for (i = 0; i != v18; ++i)
          {
            if (*v42 != v19)
            {
              objc_enumerationMutation(v13);
            }

            v21 = objc_msgSend_tags(*(*(&v41 + 1) + 8 * i), v16, v17, v36);
            v23 = objc_msgSend_documentResourceInfosForTags_(v12, v22, v21);

            if (v15)
            {
              objc_msgSend_unionSet_(v15, v24, v23);
            }

            else
            {
              v15 = objc_msgSend_mutableCopy(v23, v24, v25);
            }
          }

          v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v16, &v41, v45, 16);
        }

        while (v18);
      }

      if (objc_msgSend_count(v15, v26, v27))
      {
        v30 = *(a1 + 32);
        v31 = objc_msgSend_copy(v15, v28, v29);
        objc_msgSend_context_didDownloadDocumentResources_(v36, v32, v30, v31);
      }
    }
  }

  v33 = *(a1 + 48);
  if (v33)
  {
    v34 = *(a1 + 40);
    if (v34)
    {
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = sub_2769A5738;
      block[3] = &unk_27A6E2C78;
      v40 = v33;
      v39 = v7;
      dispatch_async(v34, block);
    }

    else
    {
      (v33)[2](v33, v7);
    }
  }

  v35 = *MEMORY[0x277D85DE8];
}

void sub_2769A5A18(uint64_t a1, void *a2)
{
  v20 = a2;
  v7 = objc_msgSend_documentResourceLocator(v20, v3, v4);
  if (v7)
  {
    v8 = objc_msgSend_storage(v20, v5, v6);
    if (objc_msgSend_conformsToProtocol_(v8, v9, &unk_2885F02A8))
    {
      v12 = objc_msgSend_documentResourceInfo(v8, v10, v11);
    }

    else
    {
      v13 = *(a1 + 32);
      v14 = objc_msgSend_digestString(v20, v10, v11);
      v12 = objc_msgSend_documentResourceInfoForDigestString_locator_(v13, v15, v14, v7);
    }

    if (v12)
    {
      objc_msgSend_isReadable(v20, v16, v17);
      objc_msgSend_fallbackColor(v12, v18, v19);

      (*(*(a1 + 40) + 16))();
    }
  }

  else
  {
    v12 = 0;
  }
}

void sub_2769A5C30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_2769A5C48(uint64_t result, uint64_t a2, char a3, _BYTE *a4)
{
  if ((a3 & 1) == 0)
  {
    v4 = *(*(result + 32) + 8);
    v5 = *(v4 + 24);
    v6 = v5 & 0xFFFFFFFFFFFFFFFELL;
    v7 = v5 | 2;
    if ((a3 & 2) == 0)
    {
      v7 = v6;
    }

    *(v4 + 24) = v7;
    if ((*(*(*(result + 32) + 8) + 24) & 3) == 2)
    {
      *a4 = 1;
    }
  }

  return result;
}

void sub_2769A5F7C()
{
  v0 = TSULogCreateCategory();
  v1 = UnsafePointer;
  UnsafePointer = v0;
}

void sub_2769A5FC0()
{
  v0 = TSULogCreateCategory();
  v1 = UnsafePointer;
  UnsafePointer = v0;
}

void sub_2769A6004()
{
  v0 = TSULogCreateCategory();
  v1 = UnsafePointer;
  UnsafePointer = v0;
}

void sub_2769A6048()
{
  v0 = TSULogCreateCategory();
  v1 = UnsafePointer;
  UnsafePointer = v0;
}

void sub_2769A608C()
{
  v0 = TSULogCreateCategory();
  v1 = UnsafePointer;
  UnsafePointer = v0;
}

void sub_2769A6208(uint64_t a1)
{
  os_unfair_lock_lock((*(a1 + 32) + 96));
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), *(*(a1 + 32) + 40));
  v2 = (*(a1 + 32) + 96);

  os_unfair_lock_unlock(v2);
}

void sub_2769A648C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, ...)
{
  va_start(va, a7);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2769A64B0(uint64_t a1, void *a2, _BYTE *a3)
{
  v10 = a2;
  v7 = objc_msgSend_filename(v10, v5, v6);
  v9 = objc_msgSend_tsu_pathConformsToUTI_(v7, v8, *(a1 + 32));
  *(*(*(a1 + 40) + 8) + 24) = v9;
  *a3 = v9;
}

uint64_t sub_2769A661C(uint64_t a1, const char *a2)
{
  objc_msgSend_addObject_(*(*(a1 + 32) + 272), a2, *(a1 + 40));
  v5 = *(a1 + 32);

  return objc_msgSend_updateModifyObjectToken(v5, v3, v4);
}

void sub_2769A68F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, id a29)
{
  _Block_object_dispose(&a24, 8);

  _Unwind_Resume(a1);
}

void sub_2769A6928(void *a1, const char *a2, uint64_t a3)
{
  v31 = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend_copy(*(a1[4] + 368), a2, a3);
  v5 = *(a1[5] + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v7 = *(*(a1[5] + 8) + 40);
  v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v8, &v26, v30, 16);
  if (v10)
  {
    v11 = 0;
    v12 = *v27;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v27 != v12)
        {
          objc_enumerationMutation(v7);
        }

        v14 = *(*(&v26 + 1) + 8 * i);
        if ((objc_msgSend_canSuspendAsynchronousModificationsForObjectTargetType_(v14, v9, a1[6], v26) & 1) == 0)
        {
          if (!v11)
          {
            v15 = objc_alloc(MEMORY[0x277CCAA50]);
            v18 = objc_msgSend_count(*(*(a1[5] + 8) + 40), v16, v17);
            v11 = objc_msgSend_initWithOptions_capacity_(v15, v19, 517, v18);
          }

          objc_msgSend_addObject_(v11, v9, v14);
        }
      }

      v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v9, &v26, v30, 16);
    }

    while (v10);

    if (v11)
    {
      objc_msgSend_minusHashTable_(*(*(a1[5] + 8) + 40), v20, v11);
    }
  }

  else
  {

    v11 = 0;
  }

  v21 = *(a1[4] + 376);
  if (!v21)
  {
    v22 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v23 = a1[4];
    v24 = *(v23 + 376);
    *(v23 + 376) = v22;

    v21 = *(a1[4] + 376);
  }

  objc_msgSend_addObject_(v21, v20, *(*(a1[5] + 8) + 40), v26);

  v25 = *MEMORY[0x277D85DE8];
}

void sub_2769A6B4C()
{
  v0 = TSULogCreateCategory();
  v1 = UnsafePointer;
  UnsafePointer = v0;
}

void sub_2769A6D44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, id a29)
{
  _Block_object_dispose(&a24, 8);

  _Unwind_Resume(a1);
}

void sub_2769A6D78(uint64_t a1, const char *a2, uint64_t a3)
{
  if (!objc_msgSend_count(*(*(a1 + 32) + 376), a2, a3))
  {
    TSUSetCrashReporterInfo();
    v15 = MEMORY[0x277D81150];
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, "[TSPObjectContext resumeAsynchronousModifications]_block_invoke", "[TSPObjectContext resumeAsynchronousModifications]_block_invoke", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPObjectContext.mm", 3785);
    v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPObjectContext.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v15, v20, v17, v19, 3785, 1, "Unbalanced calls to -suspendAsynchronousModifications and -resumeAsynchronousModifications");

    TSUCrashBreakpoint();
    abort();
  }

  v6 = objc_msgSend_lastObject(*(*(a1 + 32) + 376), v4, v5);
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  objc_msgSend_removeLastObject(*(*(a1 + 32) + 376), v9, v10);
  if (!objc_msgSend_count(*(*(a1 + 32) + 376), v11, v12))
  {
    v13 = *(a1 + 32);
    v14 = *(v13 + 376);
    *(v13 + 376) = 0;
  }
}

void sub_2769A6ED0()
{
  v0 = TSULogCreateCategory();
  v1 = UnsafePointer;
  UnsafePointer = v0;
}

void sub_2769A7164(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

void sub_2769A729C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

void sub_2769A7B1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, id a28)
{
  _Block_object_dispose(&a23, 8);

  _Block_object_dispose((v28 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_2769A7B50(void *a1, const char *a2, uint64_t a3)
{
  v4 = a1[4];
  if (*(v4 + 280) == 1)
  {
    v5 = MEMORY[0x277D81150];
    v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSPObjectContext prepareForDocumentReplacementWithSuccess:forSafeSave:]_block_invoke");
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPObjectContext.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v5, v9, v6, v8, 3976, 0, "It's already waiting for -endSave.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v10, v11);
    v4 = a1[4];
  }

  *(v4 + 280) = 1;
  v12 = objc_msgSend_copy(*(a1[4] + 48), a2, a3);
  v13 = *(a1[5] + 8);
  v14 = *(v13 + 40);
  *(v13 + 40) = v12;

  v15 = *(a1[4] + 56);
  v16 = (*(a1[6] + 8) + 40);

  objc_storeStrong(v16, v15);
}

void sub_2769A7C68(void *a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_copy(*(a1[4] + 48), a2, a3);
  v5 = *(a1[5] + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  v7 = *(a1[4] + 56);
  v8 = (*(a1[6] + 8) + 40);

  objc_storeStrong(v8, v7);
}

void sub_2769A7DE4(uint64_t a1, void *a2, void *a3, void *a4, void *a5, char a6)
{
  v11 = a2;
  v12 = a3;
  v13 = a4;
  v16 = a5;
  if (a6 & 1) != 0 || (objc_msgSend_tsp_hasReadFileAccess(MEMORY[0x277CCACC8], v14, v15))
  {
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v19 = MEMORY[0x277CCA9E8];
    v20 = objc_msgSend_filePresenter(*(a1 + 32), v17, v18);
    v28 = 0;
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = sub_2769A7FB8;
    v26[3] = &unk_27A6E2ED0;
    v27 = *(a1 + 40);
    v22 = objc_msgSend_tsp_coordinateReadingItemAtURL_urlType_options_filePresenter_error_byAccessor_(v19, v21, v11, 0, 0, v20, &v28, v26);
    v23 = v28;

    if ((v22 & 1) == 0)
    {
      if (UnsafePointer != -1)
      {
        sub_276BD11A4();
      }

      (*(*(a1 + 40) + 16))(*(a1 + 40), 0, v24, v25);
    }
  }
}

void sub_2769A7FB8(uint64_t a1, void *a2)
{
  v10 = a2;
  if (v10)
  {
    v5 = objc_msgSend_currentThread(MEMORY[0x277CCACC8], v3, v4);
    v8 = objc_msgSend_threadDictionary(v5, v6, v7);
    objc_msgSend_setObject_forKeyedSubscript_(v8, v9, v10, @"TSPDocumentURL");
  }

  (*(*(a1 + 32) + 16))();
}

void sub_2769A8080()
{
  v0 = TSULogCreateCategory();
  v1 = UnsafePointer;
  UnsafePointer = v0;
}

void sub_2769A8584(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, id a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, id a31, char a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, id a37)
{
  _Block_object_dispose(&a20, 8);

  _Block_object_dispose(&a26, 8);
  _Block_object_dispose(&a32, 8);

  _Block_object_dispose((v40 - 184), 8);
  _Block_object_dispose((v40 - 136), 8);

  _Unwind_Resume(a1);
}

void sub_2769A86B0(void *a1)
{
  *(*(a1[5] + 8) + 24) = *(a1[4] + 280);
  if ((*(*(a1[5] + 8) + 24) & 1) == 0)
  {
    dispatch_group_enter(*(a1[4] + 296));
    objc_storeStrong((*(a1[6] + 8) + 40), *(a1[4] + 48));
    objc_storeStrong((*(a1[7] + 8) + 40), *(a1[4] + 56));
    objc_storeStrong((*(a1[8] + 8) + 40), *(a1[4] + 72));
    v3 = *(a1[4] + 64);
    v4 = (*(a1[9] + 8) + 40);

    objc_storeStrong(v4, v3);
  }
}

void sub_2769A8EC8(uint64_t a1, const char *a2, uint64_t a3)
{
  v40 = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = atomic_load((v5 + 16));
  if (objc_msgSend_tsp_modifyObjectToken(v4, a2, a3) != v6)
  {
    if (*(a1 + 48))
    {
      goto LABEL_4;
    }

    objc_opt_class();
    v9 = objc_msgSend_currentThread(MEMORY[0x277CCACC8], v7, v8);
    v12 = objc_msgSend_threadDictionary(v9, v10, v11);
    v14 = objc_msgSend_objectForKeyedSubscript_(v12, v13, @"TSPObjectsToIgnoreModifications");
    v15 = TSUCheckedDynamicCast();
    v17 = objc_msgSend_containsObject_(v15, v16, *(a1 + 40));

    if (v17)
    {
LABEL_4:
      v20 = 0;
      v21 = 0;
    }

    else
    {
      v21 = objc_msgSend_allowedObjectTargetTypes(*(a1 + 40), v18, v19);
      v20 = 1;
    }

    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = sub_2769A918C;
    aBlock[3] = &unk_27A6E2F40;
    v38 = v20;
    v23 = *(a1 + 40);
    v22 = *(a1 + 48);
    aBlock[4] = v21;
    aBlock[5] = v22;
    aBlock[6] = v23;
    v24 = _Block_copy(aBlock);
    v24[2](v24, *(*(a1 + 32) + 264));
    v24[2](v24, *(*(a1 + 32) + 392));
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v25 = *(*(a1 + 32) + 272);
    v27 = objc_msgSend_countByEnumeratingWithState_objects_count_(v25, v26, &v33, v39, 16);
    if (v27)
    {
      v28 = *v34;
      do
      {
        v29 = 0;
        do
        {
          if (*v34 != v28)
          {
            objc_enumerationMutation(v25);
          }

          v24[2](v24, *(*(&v33 + 1) + 8 * v29++));
        }

        while (v27 != v29);
        v27 = objc_msgSend_countByEnumeratingWithState_objects_count_(v25, v30, &v33, v39, 16);
      }

      while (v27);
    }

    v24[2](v24, *(*(a1 + 32) + 488));
    objc_msgSend_setTsp_modifyObjectToken_(*(a1 + 40), v31, v6, v33);
  }

  v32 = *MEMORY[0x277D85DE8];
}

void sub_2769A918C(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v7 = v3;
    if (*(a1 + 56) == 1 && (v6 = *(a1 + 32)) != 0 && (v6 == 31 || (objc_msgSend_objectTargetType(v3, v4, v5) & ~*(a1 + 32)) == 0))
    {
      objc_msgSend_willModifyObject_options_(v7, v4, *(a1 + 48), *(a1 + 40));
    }

    else
    {
      objc_msgSend_willModifyObject_options_(v7, v4, *(a1 + 48), *(a1 + 40) | 1);
    }

    v3 = v7;
  }
}

void sub_2769A95C4(uint64_t a1, const char *a2, uint64_t a3)
{
  v9 = objc_msgSend_allObjects(*(*(a1 + 32) + 400), a2, a3);
  v6 = objc_msgSend_copy(v9, v4, v5);
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;
}

void sub_2769A9CEC()
{
  v0 = TSULogCreateCategory();
  v1 = UnsafePointer;
  UnsafePointer = v0;
}

void sub_2769A9E18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

void sub_2769A9F34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

void sub_2769AA12C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id a24)
{
  _Block_object_dispose(&a19, 8);

  _Block_object_dispose((v24 - 96), 8);
  _Block_object_dispose((v24 - 48), 8);
  _Unwind_Resume(a1);
}

__n128 sub_2769AA16C(uint64_t a1)
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = sub_2769AA200;
  v5[3] = &unk_27A6E2FB8;
  v9 = *(a1 + 72);
  v10 = *(a1 + 73);
  v1 = *(a1 + 32);
  v2 = *(a1 + 48);
  v3 = *(*(a1 + 32) + 192);
  v8 = *(a1 + 64);
  v6 = v1;
  v7 = v2;
  dispatch_barrier_sync(v3, v5);
  return result;
}

void sub_2769AA200(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_copy(*(*(a1 + 32) + 104), a2, a3);
  objc_msgSend_updateDocumentUUIDAndPreserveShareUUID_preserveStableDocumentUUID_(v4, v5, *(a1 + 72), *(a1 + 73));
  if ((objc_msgSend_ignoreDocumentSupport(*(a1 + 32), v6, v7) & 1) != 0 || objc_msgSend_isDocumentSupportTemporary(*(a1 + 32), v8, v9))
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    objc_msgSend_setDocumentProperties_(*(a1 + 32), v8, v4);
    objc_storeStrong((*(*(a1 + 48) + 8) + 40), *(*(a1 + 32) + 464));
    objc_msgSend_setSupportObjectImpl_(*(a1 + 32), v10, 0);
  }

  else
  {
    v11 = *(a1 + 32);
    v12 = v11[67];
    v13 = v11[13];
    v14 = *(a1 + 74);
    v15 = *(a1 + 72);
    v16 = v11[9];
    v22 = *(a1 + 64);
    v23 = 0;
    updated = objc_msgSend_didUpdateDocumentUUIDWithOriginalDocumentProperties_newDocumentProperties_preserveOriginalDocumentSupport_preserveShareUUID_originalURL_newURL_error_(v12, v8, v13, v4, v14, v15, v16, &v23, v22);
    v18 = v23;
    v20 = v23;
    *(*(*(a1 + 40) + 8) + 24) = updated;
    v21 = *(a1 + 32);
    if (*(*(*(a1 + 40) + 8) + 24) == 1)
    {
      objc_msgSend_setDocumentProperties_(v21, v19, v4);
      objc_storeStrong((*(a1 + 32) + 72), v18);
      objc_storeStrong((*(*(a1 + 48) + 8) + 40), *(*(a1 + 32) + 464));
      objc_storeStrong((*(*(a1 + 56) + 8) + 40), *(*(a1 + 32) + 384));
    }

    else
    {
      objc_msgSend_setSupportObjectImpl_(v21, v19, 0);
    }
  }
}

void sub_2769AAC94(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 208);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = sub_2769AAD2C;
  v5[3] = &unk_27A6E2898;
  v3 = *(a1 + 40);
  v4 = *(a1 + 32);
  v6 = v3;
  v7 = v4;
  dispatch_sync(v2, v5);
}

uint64_t sub_2769AAD2C(uint64_t a1, const char *a2)
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = sub_2769AADA4;
  v4[3] = &unk_27A6E2FE0;
  v2 = *(a1 + 32);
  v4[4] = *(a1 + 40);
  return objc_msgSend_tsp_enumerateObjectsUsingBlock_(v2, a2, v4);
}

void sub_2769AADA4(uint64_t a1, void *a2)
{
  v3 = a2;
  v6 = objc_msgSend_tsp_identifier(v3, v4, v5);
  v16 = v6;
  if ((objc_msgSend_tsp_isTransientObjectIdentifier_(TSPObject, v7, v6) & 1) == 0)
  {
    objc_msgSend_tsp_setObject_forIdentifier_(*(*(a1 + 32) + 112), v8, v3, v6);
    v9 = sub_2769ABC64((*(a1 + 32) + 320), &v16);
    if (v9)
    {
      v10 = objc_alloc(MEMORY[0x277CBEA60]);
      v12 = objc_msgSend_initWithArray_(v10, v11, v9[3]);
      v13 = *(*(a1 + 32) + 216);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = sub_2769AAECC;
      block[3] = &unk_27A6E2898;
      block[4] = v12;
      v15 = v3;
      dispatch_async(v13, block);
    }
  }
}

void sub_2769AAECC(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v2 = *(a1 + 32);
  v6 = objc_msgSend_countByEnumeratingWithState_objects_count_(v2, v3, &v16, v20, 16);
  if (v6)
  {
    v7 = *v17;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v17 != v7)
        {
          objc_enumerationMutation(v2);
        }

        v9 = *(*(&v16 + 1) + 8 * i);
        v10 = objc_msgSend_target(v9, v4, v5, v16);
        v13 = objc_msgSend_action(v9, v11, v12);
        objc_msgSend_performSelector_withObject_(v10, v14, v13, *(a1 + 40));
      }

      v6 = objc_msgSend_countByEnumeratingWithState_objects_count_(v2, v4, &v16, v20, 16);
    }

    while (v6);
  }

  v15 = *MEMORY[0x277D85DE8];
}

void sub_2769AB0F0(void *a1)
{
  v2 = [TSPObjectContextObserver alloc];
  v4 = objc_msgSend_initWithTarget_action_(v2, v3, a1[4], a1[7]);
  v5 = sub_2769ABC64((a1[5] + 320), a1 + 8);
  if (!v5)
  {
    v17 = a1[5];
    v18 = objc_alloc(MEMORY[0x277CBEB18]);
    v31 = objc_msgSend_initWithObjects_(v18, v19, v4, 0);
    sub_2769ABD18();
  }

  v6 = v5[3];
  for (i = objc_msgSend_count(v6, v7, v8) - 1; i < objc_msgSend_count(v6, v9, v10); --i)
  {
    v13 = objc_msgSend_objectAtIndex_(v6, v12, i);
    v16 = objc_msgSend_target(v13, v14, v15);

    if (!v16)
    {
      objc_msgSend_removeObjectAtIndex_(v6, v9, i);
    }
  }

  objc_msgSend_addObject_(v6, v12, v4);

  v20 = a1[6];
  if (v20)
  {
    v21 = a1[5];
    v22 = *(v21 + 168);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_2769AB2E4;
    block[3] = &unk_27A6E3008;
    v23 = a1[8];
    block[4] = v21;
    v29 = v23;
    v27 = v20;
    v24 = a1[4];
    v25 = a1[7];
    v28 = v24;
    v30 = v25;
    dispatch_async(v22, block);
  }
}

void sub_2769AB2E4(uint64_t a1, const char *a2)
{
  v3 = objc_msgSend_tsp_objectForIdentifier_(*(*(a1 + 32) + 112), a2, *(a1 + 56));
  v4 = *(a1 + 40);

  if (v3 == v4)
  {
    v5 = *(*(a1 + 32) + 216);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_2769AB3C4;
    block[3] = &unk_27A6E2C50;
    v6 = *(a1 + 48);
    v7 = *(a1 + 64);
    v9 = v6;
    v11 = v7;
    v10 = *(a1 + 40);
    dispatch_async(v5, block);
  }
}

uint64_t sub_2769ABBE4(uint64_t a1)
{
  sub_2769ABC20(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_2769ABC20(uint64_t a1, id *a2)
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

void *sub_2769ABC64(void *a1, unint64_t *a2)
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

void sub_2769ABDB4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_2769ABE20(va);
  _Unwind_Resume(a1);
}

void *sub_2769ABDC8(uint64_t *a1, void *a2)
{
  v2 = a2;
  v5 = a2 + 2;
  v4 = a2[2];
  *(v5 - 1) = v4;
  v6 = sub_2769ABEA0(a1, v4, v5);
  if (v6)
  {
    return v6;
  }

  sub_2769ABFB8(a1, v2);
  return v2;
}

uint64_t sub_2769ABE20(uint64_t a1)
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

void sub_2769ABE6C()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
  __cxa_throw(v1, MEMORY[0x277D82778], MEMORY[0x277D82620]);
}

void *sub_2769ABEA0(uint64_t a1, unint64_t a2, void *a3)
{
  v3 = *(a1 + 8);
  if (v3)
  {
    v4 = vcnt_s8(v3);
    v4.i16[0] = vaddlv_u8(v4);
    if (v4.u32[0] > 1uLL)
    {
      v5 = v3 <= a2 ? a2 % v3 : a2;
    }

    else
    {
      v5 = (v3 - 1) & a2;
    }

    v6 = *(*a1 + 8 * v5);
    if (v6)
    {
      for (i = *v6; i; i = *i)
      {
        v8 = i[1];
        if (v8 == a2)
        {
          if (i[2] == *a3)
          {
            return i;
          }
        }

        else
        {
          if (v4.u32[0] > 1uLL)
          {
            if (v8 >= v3)
            {
              v8 %= v3;
            }
          }

          else
          {
            v8 &= v3 - 1;
          }

          if (v8 != v5)
          {
            break;
          }
        }
      }
    }
  }

  v9 = (*(a1 + 24) + 1);
  v10 = *(a1 + 32);
  if (!v3 || (v10 * v3) < v9)
  {
    v11 = 2 * v3;
    v12 = v3 < 3 || (v3 & (v3 - 1)) != 0;
    v13 = v12 | v11;
    v14 = vcvtps_u32_f32(v9 / v10);
    if (v13 <= v14)
    {
      v15 = v14;
    }

    else
    {
      v15 = v13;
    }

    sub_2769AC06C(a1, v15);
  }

  return 0;
}

uint64_t *sub_2769ABFB8(uint64_t *result, void *a2)
{
  v2 = result[1];
  v3 = a2[1];
  v4 = vcnt_s8(v2);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    if (v3 >= *&v2)
    {
      v3 %= *&v2;
    }
  }

  else
  {
    v3 &= *&v2 - 1;
  }

  v5 = *result;
  v6 = *(*result + 8 * v3);
  if (v6)
  {
    *a2 = *v6;
LABEL_13:
    *v6 = a2;
    goto LABEL_14;
  }

  *a2 = result[2];
  result[2] = a2;
  *(v5 + 8 * v3) = result + 2;
  if (*a2)
  {
    v7 = *(*a2 + 8);
    if (v4.u32[0] > 1uLL)
    {
      if (v7 >= *&v2)
      {
        v7 %= *&v2;
      }
    }

    else
    {
      v7 &= *&v2 - 1;
    }

    v6 = (*result + 8 * v7);
    goto LABEL_13;
  }

LABEL_14:
  ++result[3];
  return result;
}

void sub_2769AC06C(uint64_t a1, size_t __n)
{
  if (__n == 1)
  {
    prime = 2;
  }

  else
  {
    prime = __n;
    if ((__n & (__n - 1)) != 0)
    {
      prime = std::__next_prime(__n);
    }
  }

  v4 = *(a1 + 8);
  if (prime > *&v4)
  {
    goto LABEL_6;
  }

  if (prime < *&v4)
  {
    v5 = vcvtps_u32_f32(*(a1 + 24) / *(a1 + 32));
    if (*&v4 < 3uLL || (v6 = vcnt_s8(v4), v6.i16[0] = vaddlv_u8(v6), v6.u32[0] > 1uLL))
    {
      v5 = std::__next_prime(v5);
    }

    else
    {
      v7 = 1 << -__clz(v5 - 1);
      if (v5 >= 2)
      {
        v5 = v7;
      }
    }

    if (prime <= v5)
    {
      prime = v5;
    }

    if (prime < *&v4)
    {
LABEL_6:

      sub_2769AC15C(a1, prime);
    }
  }
}

void sub_2769AC15C(uint64_t a1, unint64_t a2)
{
  if (a2)
  {
    if (!(a2 >> 61))
    {
      operator new();
    }

    sub_2769ABE6C();
  }

  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    operator delete(v3);
  }

  *(a1 + 8) = 0;
}

id sub_2769ACC84(uint64_t a1, const char *a2)
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

void sub_2769AE420()
{
  v0 = TSULogCreateCategory();
  v1 = *MEMORY[0x277D81410];
  *MEMORY[0x277D81410] = v0;
}

void sub_2769AECAC(_Unwind_Exception *a1)
{
  MEMORY[0x277C9F670](v2, 0x10A0C408EF24B1CLL);

  _Unwind_Resume(a1);
}

void sub_2769AF11C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2769AF134(uint64_t a1, uint64_t a2, void *a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v4 = a3;
  v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v5, &v16, v20, 16);
  if (v8)
  {
    v9 = *v17;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v4);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        if (objc_msgSend_isDiff(v11, v6, v7, v16))
        {
          v12 = *(*(*(a1 + 32) + 8) + 24);
          v13 = objc_msgSend_messageVersion(v11, v6, v7);
          if (v12 >= v13)
          {
            v14 = v13;
          }

          else
          {
            v14 = v12;
          }

          *(*(*(a1 + 32) + 8) + 24) = v14;
        }
      }

      v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v6, &v16, v20, 16);
    }

    while (v8);
  }

  v15 = *MEMORY[0x277D85DE8];
}

void sub_2769B08A0(_Unwind_Exception *a1)
{
  MEMORY[0x277C9F670](v2, 0x1081C40B6D36AFBLL);

  _Unwind_Resume(a1);
}

uint64_t sub_2769B0A98(google::protobuf::Arena *this, uint64_t a2)
{
  v3 = a2 + 7;
  if (*(this + 24))
  {
    sub_276BD11F4(this, v3 & 0xFFFFFFFFFFFFFFF8);
  }

  return google::protobuf::Arena::AllocateAlignedNoHook(this, v3 & 0xFFFFFFFFFFFFFFF8);
}

uint64_t sub_2769B0AEC(uint64_t a1)
{
  sub_2769B0B28(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_2769B0B28(uint64_t a1, id *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;

      sub_2769E22E8(v2 + 2);
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

uint64_t *sub_2769B0B74(void *a1, uint64_t a2)
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
    sub_2769B0E24();
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

void sub_2769B0E00(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id *a10, uint64_t a11)
{
  if (a10)
  {
    sub_2769B0EC4(&a11, a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_2769B0EA8(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_2769B0EC4(v3, v2);
  _Unwind_Resume(a1);
}

void sub_2769B0EC4(uint64_t a1, id *a2)
{
  if (*(a1 + 8) == 1)
  {

    sub_2769E22E8(a2 + 2);
  }

  else if (!a2)
  {
    return;
  }

  operator delete(a2);
}

void sub_2769B0FB0()
{
  v0 = [TSPDigest alloc];
  v4 = objc_opt_new();
  v2 = objc_msgSend_initFromNSData_(v0, v1, v4);
  v3 = qword_280A52410;
  qword_280A52410 = v2;
}

void sub_2769B11CC()
{
  v0 = TSULogCreateCategory();
  v1 = *MEMORY[0x277D81410];
  *MEMORY[0x277D81410] = v0;
}

uint64_t sub_2769B1604(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2769B161C(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  if (v6)
  {
    applier[0] = MEMORY[0x277D85DD0];
    applier[1] = 3221225472;
    applier[2] = sub_2769B16F4;
    applier[3] = &unk_27A6E3058;
    v8 = *(a1 + 64);
    v16 = *(a1 + 72);
    v13 = *(a1 + 32);
    v14 = *(a1 + 48);
    v15 = v8;
    dispatch_data_apply(v6, applier);
  }

  if (v7)
  {
    v9 = *(*(a1 + 56) + 8);
    v11 = *(v9 + 40);
    v10 = (v9 + 40);
    if (!v11)
    {
      objc_storeStrong(v10, a4);
    }
  }
}

uint64_t sub_2769B16F4(uint64_t a1, int a2, int a3, char *data, unint64_t len)
{
  CC_SHA1_Update(*(a1 + 56), data, len);
  v8 = *(*(a1 + 32) + 8);
  if ((*(v8 + 24) & 1) == 0 && *(a1 + 64) == 1)
  {
    if ((len + 0x7FFFFFFFFFFFFFF1) < 0)
    {
      v10 = len - 15;
      v11 = data;
      do
      {
        v12 = strncmp(v11, ".framework/apsd", 0xFuLL);
        v9 = v12 == 0;
        if (v12)
        {
          v13 = v10 == 0;
        }

        else
        {
          v13 = 1;
        }

        --v10;
        ++v11;
      }

      while (!v13);
    }

    else
    {
      v9 = 0;
    }

    *(v8 + 24) = v9;
  }

  if (!len)
  {
    goto LABEL_27;
  }

  if (len < 8)
  {
    if (len < 4)
    {
      if (len == 1)
      {
        if (!*data)
        {
LABEL_27:
          *(*(*(a1 + 40) + 8) + 24) += len;
          return 1;
        }
      }

      else if (!*data && !*&data[len - 2])
      {
        goto LABEL_27;
      }
    }

    else if (!*data && !*&data[len - 4])
    {
      goto LABEL_27;
    }
  }

  else if (!*data && !*&data[len - 8])
  {
    goto LABEL_27;
  }

  *(*(*(a1 + 40) + 8) + 24) = 0;
  *(*(*(a1 + 48) + 8) + 24) = 0;
  return 1;
}

void sub_2769B2064()
{
  v0 = TSULogCreateCategory();
  v1 = *MEMORY[0x277D81410];
  *MEMORY[0x277D81410] = v0;
}

void sub_2769B220C()
{
  v0 = TSULogCreateCategory();
  v1 = UnsafePointer;
  UnsafePointer = v0;
}

id sub_2769B2558(uint64_t a1, const char *a2)
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

uint64_t sub_2769B3C78(uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = sub_2769BA720(a1, a2);
  }

  else
  {
    v4 = *a2;
    v5 = *(a2 + 8);
    *(a2 + 8) = 0;
    *v3 = v4;
    *(v3 + 8) = v5;
    *(v3 + 16) = *(a2 + 16);
    v6 = *(a2 + 24);
    *(a2 + 32) = 0;
    *(v3 + 24) = v6;
    result = v3 + 40;
  }

  a1[1] = result;
  return result;
}

uint64_t sub_2769B4EE4(uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = sub_2769BAB88(a1, a2);
  }

  else
  {
    *v3 = 0;
    *(v3 + 8) = 0;
    *(v3 + 16) = 0;
    *v3 = *a2;
    v4 = *(a2 + 24);
    *(v3 + 16) = *(a2 + 16);
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    *(a2 + 24) = 0;
    *(v3 + 24) = v4;
    *(v3 + 32) = *(a2 + 32);
    v5 = *(a2 + 40);
    *(a2 + 48) = 0;
    *(v3 + 40) = v5;
    result = v3 + 56;
  }

  a1[1] = result;
  return result;
}

uint64_t sub_2769B4F5C(uint64_t a1)
{
  v2 = *a1;
  if (*a1)
  {
    *(a1 + 8) = v2;
    operator delete(v2);
  }

  return a1;
}

void *sub_2769B4FA0(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 3)
  {
    if (!(a2 >> 61))
    {
      v2 = result[1] - *result;
      sub_2769BAFA4(result, a2);
    }

    sub_2769BA860();
  }

  return result;
}

void sub_2769B5040(const void **a1, void *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v7 = *a1;
    v8 = v5 - *a1;
    v9 = (v8 >> 3) + 1;
    if (v9 >> 61)
    {
      sub_2769BA860();
    }

    v10 = v4 - v7;
    if (v10 >> 2 > v9)
    {
      v9 = v10 >> 2;
    }

    v11 = v10 >= 0x7FFFFFFFFFFFFFF8;
    v12 = 0x1FFFFFFFFFFFFFFFLL;
    if (!v11)
    {
      v12 = v9;
    }

    if (v12)
    {
      sub_2769BAFA4(a1, v12);
    }

    v13 = (8 * (v8 >> 3));
    *v13 = *a2;
    v6 = v13 + 1;
    memcpy(0, v7, v8);
    v14 = *a1;
    *a1 = 0;
    a1[1] = v6;
    a1[2] = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  a1[1] = v6;
}

void sub_2769B60DC(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    objc_msgSend_retainObject_(*(a1 + 32), v3, v4);
  }
}

void sub_2769B716C(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    objc_msgSend_retainObject_(*(a1 + 32), v3, v4);
  }
}

void sub_2769B7954(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_2769BB0E4(va);

  _Unwind_Resume(a1);
}

void sub_2769BA56C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2769BA720(uint64_t *a1, uint64_t *a2)
{
  v2 = 0xCCCCCCCCCCCCCCCDLL * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0x666666666666666)
  {
    sub_2769BA860();
  }

  if (0x999999999999999ALL * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0x999999999999999ALL * ((a1[2] - *a1) >> 3);
  }

  if (0xCCCCCCCCCCCCCCCDLL * ((a1[2] - *a1) >> 3) >= 0x333333333333333)
  {
    v6 = 0x666666666666666;
  }

  else
  {
    v6 = v3;
  }

  v20 = a1;
  if (v6)
  {
    sub_2769BA908(a1, v6);
  }

  v7 = 40 * v2;
  v17 = 0;
  v18 = 40 * v2;
  *(&v19 + 1) = 0;
  v8 = *a2;
  v9 = a2[1];
  a2[1] = 0;
  *v7 = v8;
  *(v7 + 8) = v9;
  *(v7 + 16) = *(a2 + 8);
  v10 = *(a2 + 3);
  a2[4] = 0;
  *(v7 + 24) = v10;
  *&v19 = 40 * v2 + 40;
  v11 = a1[1];
  v12 = 40 * v2 + *a1 - v11;
  sub_2769BA960(a1, *a1, v11, v12);
  v13 = *a1;
  *a1 = v12;
  v14 = a1[2];
  v16 = v19;
  *(a1 + 1) = v19;
  *&v19 = v13;
  *(&v19 + 1) = v14;
  v17 = v13;
  v18 = v13;
  sub_2769BAAF4(&v17);
  return v16;
}

void sub_2769BA84C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_2769BAAF4(va);
  _Unwind_Resume(a1);
}

void sub_2769BA878(const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  sub_2769BA8D4(exception, a1);
  __cxa_throw(exception, off_27A6E2760, MEMORY[0x277D825F0]);
}

std::logic_error *sub_2769BA8D4(std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x277D828E0] + 16);
  return result;
}

void sub_2769BA908(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x666666666666667)
  {
    operator new();
  }

  sub_2769ABE6C();
}

uint64_t sub_2769BA960(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = a4;
  v11 = a4;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
  if (a2 != a3)
  {
    v4 = a2;
    do
    {
      v5 = *v4;
      v6 = *(v4 + 8);
      *(v4 + 8) = 0;
      *a4 = v5;
      *(a4 + 8) = v6;
      *(a4 + 16) = *(v4 + 16);
      v7 = *(v4 + 24);
      *(v4 + 32) = 0;
      *(a4 + 24) = v7;
      v4 += 40;
      a4 += 40;
    }

    while (v4 != a3);
    v12 = a4;
  }

  v10 = 1;
  sub_2769BAA04(a1, a2, a3);
  return sub_2769BAA50(v9);
}

void sub_2769BAA04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    do
    {

      v4 += 40;
    }

    while (v4 != a3);
  }
}

uint64_t sub_2769BAA50(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_2769BAA9C(*a1, **(a1 + 16), **(a1 + 16), **(a1 + 8), **(a1 + 8));
  }

  return a1;
}

void sub_2769BAA9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a3 != a5)
  {
    v6 = a3;
    do
    {

      v6 -= 40;
    }

    while (v6 != a5);
  }
}

uint64_t sub_2769BAAF4(uint64_t a1)
{
  sub_2769BAB2C(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_2769BAB2C(uint64_t a1, uint64_t a2)
{
  for (i = *(a1 + 16); i != a2; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 40;
  }
}

uint64_t sub_2769BAB88(uint64_t *a1, uint64_t a2)
{
  v2 = 0x6DB6DB6DB6DB6DB7 * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if ((v2 + 1) > 0x492492492492492)
  {
    sub_2769BA860();
  }

  if (0xDB6DB6DB6DB6DB6ELL * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0xDB6DB6DB6DB6DB6ELL * ((a1[2] - *a1) >> 3);
  }

  if ((0x6DB6DB6DB6DB6DB7 * ((a1[2] - *a1) >> 3)) >= 0x249249249249249)
  {
    v6 = 0x492492492492492;
  }

  else
  {
    v6 = v3;
  }

  v19 = a1;
  if (v6)
  {
    sub_2769BACF8(a1, v6);
  }

  v7 = 56 * v2;
  v16 = 0;
  v17 = v7;
  *(&v18 + 1) = 0;
  *v7 = 0;
  *(v7 + 8) = 0;
  *(v7 + 16) = 0;
  *v7 = *a2;
  v8 = *(a2 + 24);
  *(v7 + 16) = *(a2 + 16);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(v7 + 24) = v8;
  *(v7 + 32) = *(a2 + 32);
  v9 = *(a2 + 40);
  *(a2 + 48) = 0;
  *(v7 + 40) = v9;
  *&v18 = 56 * v2 + 56;
  v10 = a1[1];
  v11 = 56 * v2 + *a1 - v10;
  sub_2769BAD54(a1, *a1, v10, v11);
  v12 = *a1;
  *a1 = v11;
  v13 = a1[2];
  v15 = v18;
  *(a1 + 1) = v18;
  *&v18 = v12;
  *(&v18 + 1) = v13;
  v16 = v12;
  v17 = v12;
  sub_2769BAF24(&v16);
  return v15;
}

void sub_2769BACE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_2769BAF24(va);
  _Unwind_Resume(a1);
}

void sub_2769BACF8(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x492492492492493)
  {
    operator new();
  }

  sub_2769ABE6C();
}

uint64_t sub_2769BAD54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13 = a4;
  v14 = a4;
  v11[0] = a1;
  v11[1] = &v13;
  v11[2] = &v14;
  if (a2 == a3)
  {
    v12 = 1;
  }

  else
  {
    v5 = a2;
    v7 = a2;
    do
    {
      *a4 = 0;
      *(a4 + 8) = 0;
      *(a4 + 16) = 0;
      *a4 = *v7;
      v8 = *(v7 + 24);
      *(a4 + 16) = *(v7 + 16);
      *v7 = 0;
      *(v7 + 8) = 0;
      *(v7 + 16) = 0;
      *(v7 + 24) = 0;
      *(a4 + 24) = v8;
      *(a4 + 32) = *(v7 + 32);
      v9 = *(v7 + 40);
      *(v7 + 48) = 0;
      *(a4 + 40) = v9;
      v7 += 56;
      a4 += 56;
    }

    while (v7 != a3);
    v14 = a4;
    v12 = 1;
    while (v5 != a3)
    {
      sub_2769BAE40(a1, v5);
      v5 += 56;
    }
  }

  return sub_2769BAE98(v11);
}

void sub_2769BAE40(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  if (*a2)
  {
    *(a2 + 8) = v3;

    operator delete(v3);
  }
}

uint64_t sub_2769BAE98(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_2769BAED0(a1);
  }

  return a1;
}

void sub_2769BAED0(uint64_t *a1)
{
  v2 = a1[1];
  v1 = a1[2];
  v3 = *v1;
  v4 = *v2;
  if (*v1 != *v2)
  {
    v5 = *a1;
    do
    {
      v3 -= 56;
      sub_2769BAE40(v5, v3);
    }

    while (v3 != v4);
  }
}

uint64_t sub_2769BAF24(uint64_t a1)
{
  sub_2769BAF5C(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_2769BAF5C(uint64_t a1, uint64_t a2)
{
  while (1)
  {
    v4 = *(a1 + 16);
    if (v4 == a2)
    {
      break;
    }

    v5 = *(a1 + 32);
    *(a1 + 16) = v4 - 56;
    sub_2769BAE40(v5, v4 - 56);
  }
}

void sub_2769BAFA4(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  sub_2769ABE6C();
}

void sub_2769BAFEC(uint64_t a1, void *a2)
{
  v5 = *a1;
  v4 = *(a1 + 8);
  v6 = a2[1] + *a1 - v4;
  if (v4 != *a1)
  {
    v7 = *a1;
    v8 = (a2[1] + *a1 - v4);
    do
    {
      v9 = *v7;
      *v7++ = 0;
      *v8++ = v9;
    }

    while (v7 != v4);
    do
    {
      v10 = *v5++;
    }

    while (v5 != v4);
  }

  a2[1] = v6;
  v11 = *a1;
  *a1 = v6;
  *(a1 + 8) = v11;
  a2[1] = v11;
  v12 = *(a1 + 8);
  *(a1 + 8) = a2[2];
  a2[2] = v12;
  v13 = *(a1 + 16);
  *(a1 + 16) = a2[3];
  a2[3] = v13;
  *a2 = a2[1];
}

void sub_2769BB09C(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  sub_2769ABE6C();
}

uint64_t sub_2769BB0E4(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 8;
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_2769BB138(uint64_t *a1, uint64_t a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    sub_2769BB184(result);

    JUMPOUT(0x277C9F670);
  }

  return result;
}

uint64_t sub_2769BB184(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *a1;
  *a1 = 0;
  if (v4)
  {
    operator delete(v4);
  }

  return a1;
}

void sub_2769BB1D0(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_2769BB224(v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_2769BB224(uint64_t a1, uint64_t a2)
{
  for (i = *(a1 + 8); i != a2; i -= 40)
  {
  }

  *(a1 + 8) = a2;
}

void sub_2769BB280(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_2769BB2D4(v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_2769BB2D4(uint64_t a1, uint64_t a2)
{
  for (i = *(a1 + 8); i != a2; sub_2769BAE40(a1, i))
  {
    i -= 56;
  }

  *(a1 + 8) = a2;
}

void sub_2769BB328(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v6 = *(v4 - 1);
        v4 -= 8;
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

BOOL sub_2769BB3A8(unint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a1 + a2;
  if (v3 >= *a1)
  {
    *a1 = v3;
  }

  return v3 >= v2;
}

void sub_2769BC5B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (v74)
  {
    if (SLOBYTE(STACK[0x20F]) < 0)
    {
      operator delete(__p);
    }
  }

  _Unwind_Resume(a1);
}

uint64_t sub_2769BC718(uint64_t a1, const char *a2)
{
  objc_msgSend_saveToArchiver_(*(a1 + 32), a2, *(a1 + 40));
  v4 = *(a1 + 40);
  v5 = *(v4 + 104);

  return objc_msgSend_saveToArchiver_(v5, v3, v4);
}

uint64_t sub_2769BC764(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2769BC77C(uint64_t a1, void *a2)
{
  v3 = a2;
  v6 = objc_msgSend_message(v3, v4, v5);
  isDiff = objc_msgSend_isDiff(v3, v7, v8);
  if (v6)
  {
    v12 = 0;
  }

  else
  {
    v12 = isDiff;
  }

  if ((v12 & 1) == 0 && (!v6 || (objc_msgSend_isDiff(v3, v10, v11) & 1) == 0 && ((*(*v6 + 48))(v6) & 1) == 0))
  {
    v13 = MEMORY[0x277D81150];
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "[TSPArchiver archive]_block_invoke");
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPArchiver.mm");
    if (v6)
    {
      (*(*v6 + 16))(v45, v6);
      if (v46 >= 0)
      {
        v17 = v45;
      }

      else
      {
        v17 = v45[0];
      }
    }

    else
    {
      v17 = "NULL";
    }

    v18 = *(a1 + 32);
    v19 = objc_opt_class();
    v20 = NSStringFromClass(v19);
    v23 = objc_msgSend_tsp_identifier(*(a1 + 32), v21, v22);
    v26 = objc_msgSend_messageVersion(v3, v24, v25);
    v29 = NSStringFromTSPVersion(v26, v27);
    if (v6)
    {
      (*(*v6 + 56))(__p, v6);
      if (v44 >= 0)
      {
        v31 = __p;
      }

      else
      {
        v31 = __p[0];
      }

      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v13, v30, v14, v16, 331, 0, "Didn't archive correctly %{public}s for [%{public}@-%llu] version %{public}@: %{public}s", v17, v20, v23, v29, v31);
    }

    else
    {
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v13, v28, v14, v16, 331, 0, "Didn't archive correctly %{public}s for [%{public}@-%llu] version %{public}@: %{public}s", v17, v20, v23, v29, "");
    }

    if (v6)
    {
      if (v44 < 0)
      {
        operator delete(__p[0]);
      }

      v32 = 0x277D81000;
      if (v46 < 0)
      {
        operator delete(v45[0]);
      }
    }

    else
    {

      v32 = 0x277D81000uLL;
    }

    objc_msgSend_logBacktraceThrottled(*(v32 + 336), v33, v34);
  }

  objc_msgSend_aggregateReferencesFromArchiver_(*(a1 + 40), v10, v3);
  v37 = *(*(*(a1 + 48) + 8) + 40);
  if (v37)
  {
    objc_msgSend_addRulesFromKnownFieldRuleProvider_(v37, v35, v3);
  }

  else
  {
    v38 = objc_msgSend_message(*(a1 + 40), v35, v36);
    v40 = objc_msgSend_newKnownFieldVersionRequirementsMapForMessage_knownFieldRuleProvider_(TSPKnownFieldVersionRequirementsMap, v39, v38, v3);
    v41 = *(*(a1 + 48) + 8);
    v42 = *(v41 + 40);
    *(v41 + 40) = v40;
  }
}

void sub_2769BCA18(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (v27)
  {
    if (a26 < 0)
    {
      operator delete(__p);
    }
  }

  _Unwind_Resume(a1);
}

void sub_2769BCAA8(uint64_t a1, uint64_t a2, void *a3)
{
  v23 = *MEMORY[0x277D85DE8];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v4 = a3;
  v6 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v5, &v18, v22, 16);
  if (v6)
  {
    v7 = *v19;
    do
    {
      v8 = 0;
      do
      {
        if (*v19 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v18 + 1) + 8 * v8);
        (*(*(a1 + 32) + 16))();
        v12 = objc_msgSend_alternates(v9, v10, v11);
        v16[0] = MEMORY[0x277D85DD0];
        v16[1] = 3221225472;
        v16[2] = sub_2769BCC74;
        v16[3] = &unk_27A6E3138;
        v17 = *(a1 + 32);
        objc_msgSend_enumerateKeysAndObjectsUsingBlock_(v12, v13, v16);

        ++v8;
      }

      while (v6 != v8);
      v6 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v14, &v18, v22, 16);
    }

    while (v6);
  }

  v15 = *MEMORY[0x277D85DE8];
}

void sub_2769BCC74(uint64_t a1, uint64_t a2, void *a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = a3;
  v6 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v5, &v12, v16, 16);
  if (v6)
  {
    v7 = *v13;
    do
    {
      v8 = 0;
      do
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v12 + 1) + 8 * v8);
        (*(*(a1 + 32) + 16))(*(a1 + 32));
        ++v8;
      }

      while (v6 != v8);
      v6 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v10, &v12, v16, 16);
    }

    while (v6);
  }

  v11 = *MEMORY[0x277D85DE8];
}

void sub_2769BD8B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, void *a19, void *a20, void *a21, void *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, char a43, uint64_t a44, uint64_t a45, uint64_t a46, char a47)
{
  if (v52)
  {
  }

  _Block_object_dispose(&a43, 8);
  _Block_object_dispose(&a47, 8);

  _Unwind_Resume(a1);
}

void sub_2769BDB2C(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = *a3;
  v7 = a1[6];
  v8 = *(v7 + 64);
  if (!v8)
  {
    v10 = *(v7 + 60);
LABEL_6:
    google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v7 + 48), v10 + 1);
    v8 = *(v7 + 64);
    v10 = *v8;
    goto LABEL_7;
  }

  v9 = *(v7 + 56);
  v10 = *v8;
  if (v9 < *v8)
  {
    *(v7 + 56) = v9 + 1;
    v11 = *&v8[2 * v9 + 2];
    goto LABEL_8;
  }

  if (v10 == *(v7 + 60))
  {
    goto LABEL_6;
  }

LABEL_7:
  *v8 = v10 + 1;
  v11 = sub_2769F4F5C(*(v7 + 48));
  v12 = *(v7 + 56);
  v13 = *(v7 + 64) + 8 * v12;
  *(v7 + 56) = v12 + 1;
  *(v13 + 8) = v11;
LABEL_8:
  v14 = *(v11 + 16);
  if (v6 > 2)
  {
    if (v6 != 3)
    {
      if (v6 == 4)
      {
        v14 |= 0x18u;
        *(v11 + 16) = v14;
        v16 = 0x1FFFFFFFFLL;
      }

      else
      {
        if (v6 != 5)
        {
          goto LABEL_23;
        }

        v14 |= 0x18u;
        *(v11 + 16) = v14;
        v16 = 0x2FFFFFFFFLL;
      }

      *(v11 + 116) = v16;
      goto LABEL_23;
    }

    v14 |= 8u;
    *(v11 + 16) = v14;
    v15 = 2;
LABEL_19:
    *(v11 + 116) = v15;
    goto LABEL_23;
  }

  if (!v6)
  {
    v14 |= 8u;
    *(v11 + 16) = v14;
    v15 = -1;
    goto LABEL_19;
  }

  if (v6 != 1)
  {
    if (v6 != 2)
    {
      goto LABEL_23;
    }

    v14 |= 8u;
    *(v11 + 16) = v14;
    v15 = 1;
    goto LABEL_19;
  }

  v14 |= 8u;
  *(v11 + 16) = v14;
  *(v11 + 116) = 0;
LABEL_23:
  *(v11 + 16) = v14 | 2;
  v17 = *(v11 + 104);
  if (!v17)
  {
    v18 = *(v11 + 8);
    if (v18)
    {
      v18 = *(v18 & 0xFFFFFFFFFFFFFFFELL);
    }

    v17 = sub_2769F4FE8(v18);
    *(v11 + 104) = v17;
  }

  sub_2769E26BC(v17, a2);
  if ((v6 - 1) > 1)
  {
    if ((v6 & 0xFFFFFFFE) == 4)
    {
      v20 = *(a3 + 8);
      if (v20)
      {
        UnsafePointer(v20, v11 + 72);
      }

      v25 = *(a3 + 16);
      if (v25)
      {
        *(v11 + 16) |= 1u;
        v21 = *(v11 + 8);
        if (v21)
        {
          v21 = *(v21 & 0xFFFFFFFFFFFFFFFELL);
        }

        v22 = google::protobuf::internal::ArenaStringPtr::Mutable((v11 + 96), v21);
        objc_msgSend_tsp_saveToProtobufString_(v25, v23, v22);
      }

      v24 = *(*(a1[5] + 8) + 24);
      if (!v24)
      {
        operator new();
      }

      sub_276ACFC20(v24, v11, 0);
    }
  }

  else
  {
    v19 = *(*(a1[4] + 8) + 24);
    if (!v19)
    {
      operator new();
    }

    sub_276ACFC20(v19, v11, 0);
  }
}

void sub_2769BDE34(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  MEMORY[0x277C9F670](v10, 0x1060C4094AFC76ALL);

  _Unwind_Resume(a1);
}

uint64_t sub_2769BDE7C(uint64_t a1, void *a2)
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = sub_2769BDEF0;
  v3[3] = &unk_27A6E3180;
  v3[4] = *(a1 + 32);
  return objc_msgSend_enumerateItemsUsingBlock_(a2, a2, v3);
}

uint64_t sub_2769BDEF0(uint64_t a1, void *a2)
{
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    v6 = *(a1 + 32);
    result = objc_msgSend_tsp_identifier(a2, v4, v5);
    v8 = *(v6 + 72);
    if (v8 == *(v6 + 76))
    {
      google::protobuf::RepeatedField<unsigned long long>::Reserve();
    }

    *(*(v6 + 80) + 8 * v8) = result;
    *(v6 + 72) = v8 + 1;
  }

  else
  {
    v9 = MEMORY[0x277D81150];
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "[TSPArchiver updateMessageInfo:withArchiver:]_block_invoke_3");
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPArchiver.mm");
    v13 = objc_opt_class();
    v14 = NSStringFromClass(v13);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v15, v10, v12, 544, 0, "Unexpected object class: %{public}@", v14);

    v18 = MEMORY[0x277D81150];

    return objc_msgSend_logBacktraceThrottled(v18, v16, v17);
  }

  return result;
}

void sub_2769BEF38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, void *a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, char a53)
{
  sub_2769DED20(&a53);

  _Unwind_Resume(a1);
}

uint64_t sub_2769BF1EC(uint64_t a1, void *a2, uint64_t a3, char *a4, unint64_t a5)
{
  for (i = a2; a5; a5 -= v9)
  {
    if (a5 >= 0x7FFFFFFF)
    {
      v9 = 0x7FFFFFFFLL;
    }

    else
    {
      v9 = a5;
    }

    v10 = *(a1 + 32);
    v11 = *(v10 + 64);
    if (*v10 - v11 < v9)
    {
      v12 = google::protobuf::io::EpsCopyOutputStream::WriteRawFallback(*(a1 + 32), a4, v9, *(v10 + 64));
    }

    else
    {
      memcpy(*(v10 + 64), a4, v9);
      v12 = (v11 + v9);
    }

    *(v10 + 64) = v12;
  }

  return 1;
}

void sub_2769BF528(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2769BF57C(uint64_t a1, uint64_t a2, void *a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v4 = a3;
  v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v5, &v15, v19, 16);
  if (v8)
  {
    v9 = *v16;
    do
    {
      v10 = 0;
      do
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v4);
        }

        v11 = objc_msgSend_alternates(*(*(&v15 + 1) + 8 * v10), v6, v7, v15);
        *(*(*(a1 + 32) + 8) + 24) += objc_msgSend_count(v11, v12, v13);

        ++v10;
      }

      while (v8 != v10);
      v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v6, &v15, v19, 16);
    }

    while (v8);
  }

  v14 = *MEMORY[0x277D85DE8];
}

void sub_2769BF6CC(uint64_t a1, uint64_t a2, void *a3)
{
  v23 = *MEMORY[0x277D85DE8];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v4 = a3;
  v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v5, &v18, v22, 16);
  if (v7)
  {
    v8 = *v19;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v19 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v18 + 1) + 8 * i);
        objc_msgSend_addObject_(*(a1 + 32), v6, v10);
        v13 = objc_msgSend_alternates(v10, v11, v12);
        v16[0] = MEMORY[0x277D85DD0];
        v16[1] = 3221225472;
        v16[2] = sub_2769BF890;
        v16[3] = &unk_27A6E31F0;
        v17 = *(a1 + 32);
        objc_msgSend_enumerateKeysAndObjectsUsingBlock_(v13, v14, v16);
      }

      v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v6, &v18, v22, 16);
    }

    while (v7);
  }

  v15 = *MEMORY[0x277D85DE8];
}

void sub_2769BF890(uint64_t a1, void *a2, void *a3)
{
  v31 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v6 = a3;
  v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v7, &v26, v30, 16);
  if (v9)
  {
    v10 = *v27;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v27 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v26 + 1) + 8 * i);
        objc_msgSend_addObject_(*(a1 + 32), v8, v12);
        v15 = objc_msgSend_alternates(v12, v13, v14);
        v18 = objc_msgSend_count(v15, v16, v17) == 0;

        if (!v18)
        {
          TSUSetCrashReporterInfo();
          v20 = MEMORY[0x277D81150];
          v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v21, "[TSPArchiver calculateOrderedArchivableContent]_block_invoke_3", "[TSPArchiver calculateOrderedArchivableContent]_block_invoke_3", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPArchiver.mm", 797);
          v24 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v23, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPArchiver.mm");
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v20, v25, v22, v24, 797, 1, "Diff alternate should not have alternates.");

          TSUCrashBreakpoint();
          abort();
        }
      }

      v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v8, &v26, v30, 16);
    }

    while (v9);
  }

  v19 = *MEMORY[0x277D85DE8];
}

uint64_t sub_2769BFAB4(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  isDiff = objc_msgSend_isDiff(v4, v6, v7);
  if (isDiff == objc_msgSend_isDiff(v5, v9, v10))
  {
    v14 = objc_msgSend_messageVersion(v4, v11, v12);
    v17 = objc_msgSend_messageVersion(v5, v15, v16);
    if (v14 == v17)
    {
      v20 = objc_msgSend_fieldPath(v4, v18, v19);
      v23 = objc_msgSend_fieldPath(v5, v21, v22);
      if (v20 == v23)
      {
        v13 = 0;
      }

      else if (v20)
      {
        if (v23)
        {
          v24 = *(v20 + 16);
          v25 = *(v23 + 16);
          if (v24 >= v25)
          {
            v26 = v25;
          }

          else
          {
            v26 = v24;
          }

          if (v26 < 1)
          {
LABEL_16:
            v33 = v24 == v25;
            v32 = v24 < v25;
            v34 = -1;
            if (!v32)
            {
              v34 = 1;
            }

            if (v33)
            {
              v13 = 0;
            }

            else
            {
              v13 = v34;
            }
          }

          else
          {
            v27 = *(v20 + 24);
            v28 = *(v23 + 24);
            while (1)
            {
              v30 = *v27++;
              v29 = v30;
              v31 = *v28++;
              v32 = v29 < v31;
              if (v29 != v31)
              {
                break;
              }

              if (!--v26)
              {
                goto LABEL_16;
              }
            }

            if (v32)
            {
              v13 = -1;
            }

            else
            {
              v13 = 1;
            }
          }
        }

        else
        {
          v13 = 1;
        }
      }

      else
      {
        v13 = -1;
      }
    }

    else if (v14 < v17)
    {
      v13 = 1;
    }

    else
    {
      v13 = -1;
    }
  }

  else if (isDiff)
  {
    v13 = 1;
  }

  else
  {
    v13 = -1;
  }

  return v13;
}

uint64_t sub_2769C1374(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) == 1)
  {
    v3 = *(a1 + 8);
    if (v3)
    {
      v4 = sub_2769E1248(v3, a2);
      MEMORY[0x277C9F670](v4, 0x10A1C40F8115D30);
    }
  }

  sub_2769C13D0(a1 + 24, *(a1 + 32));
  return a1;
}

void sub_2769C13D0(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_2769C13D0(a1, *a2);
    sub_2769C13D0(a1, a2[1]);
    v4 = a2[6];
    if (v4)
    {
      sub_2769C1430(v4);
    }

    operator delete(a2);
  }
}

void sub_2769C1430(std::__shared_weak_count *a1)
{
  if (!atomic_fetch_add(&a1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (a1->__on_zero_shared)(a1);

    std::__shared_weak_count::__release_weak(a1);
  }
}

google::protobuf::Arena **sub_2769C14B0(google::protobuf::Arena **result, google::protobuf::Arena ***a2, uint64_t *a3, unsigned int a4, unsigned int a5)
{
  v9 = result;
  if (a5 >= a4)
  {
    v10 = a4;
  }

  else
  {
    v10 = a5;
  }

  if (v10 >= 1)
  {
    v11 = a3;
    v12 = a2;
    do
    {
      v14 = *v11++;
      v13 = v14;
      v15 = *v12++;
      result = sub_2769C1560(v13, v15);
      --v10;
    }

    while (v10);
  }

  v16 = __OFSUB__(a4, a5);
  v17 = a4 - a5;
  if (!((v17 < 0) ^ v16 | (v17 == 0)))
  {
    v18 = *v9;
    v19 = &a3[a5];
    v20 = &a2[a5];
    do
    {
      v21 = *v19++;
      v22 = sub_2769F4FE8(v18);
      result = sub_2769C1560(v21, v22);
      *v20++ = v22;
      --v17;
    }

    while (v17);
  }

  return result;
}

void sub_2769C1814(void *a1)
{
  v2 = a1[4];
  v3 = *(v2 + 8);
  if (v3)
  {
    size = dispatch_data_get_size(*(v2 + 8));
    if (a1[6] >= size)
    {
      v5 = size;
    }

    else
    {
      v5 = a1[6];
    }

    if (a1[7] >= size - v5)
    {
      v6 = size - v5;
    }

    else
    {
      v6 = a1[7];
    }

    subrange = dispatch_data_create_subrange(v3, v5, v6);
  }

  else
  {
    subrange = 0;
  }

  v8 = subrange;
  (*(a1[5] + 16))();
}

uint64_t sub_2769C1B78(void *a1, const char *a2, uint64_t a3)
{
  v3 = objc_msgSend_objectForKeyedSubscript_(a1, a2, a3);
  v6 = objc_msgSend_integerValue(v3, v4, v5);

  return v6;
}

float TSPCGFloatToFloat(double a1, uint64_t a2, const char *a3)
{
  if (a1 == 1.79769313e308)
  {
    return 3.4028e38;
  }

  if (a1 == 2.22507386e-308)
  {
    return 1.1755e-38;
  }

  if ((*&a1 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
  {
    if (a1 > 0.0 && a1 > 3.40282347e38)
    {
      v5 = MEMORY[0x277D81150];
      v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a3, "float TSPCGFloatToFloat(CGFloat)");
      v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPArchivingUtility.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v5, v9, v6, v8, 32, 0, "Out-of-bounds type assignment was clamped to max");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v10, v11);
      return 3.4028e38;
    }

    if (a1 < 0.0 && a1 < -3.40282347e38)
    {
      v12 = MEMORY[0x277D81150];
      v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a3, "float TSPCGFloatToFloat(CGFloat)");
      v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPArchivingUtility.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v12, v16, v13, v15, 32, 0, "Out-of-bounds type assignment was clamped to min");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v17, v18);
      return -3.4028e38;
    }
  }

  return a1;
}

double TSPCGFloatFromFloat(float a1)
{
  if (a1 == 3.4028e38)
  {
    return 1.79769313e308;
  }

  if (a1 == 1.1755e-38)
  {
    return 2.22507386e-308;
  }

  return a1;
}

uint64_t TSPCGPointFromMessage(uint64_t result)
{
  v1 = *(result + 28);
  *(result + 24);
  return result;
}

void TSPCGPointCopyToMessage(CGPoint a1, TSP::Point *a2, const char *a3)
{
  y = a1.y;
  v5 = TSPCGFloatToFloat(a1.x, a2, a3);
  *(a2 + 4) |= 1u;
  *(a2 + 6) = v5;
  v8 = TSPCGFloatToFloat(y, v6, v7);
  *(a2 + 4) |= 2u;
  *(a2 + 7) = v8;
}

__n64 TSPSimdFloat3FromPose3DMessage(uint64_t a1)
{
  result.n64_u32[0] = *(a1 + 28);
  result.n64_u32[1] = *(a1 + 24);
  return result;
}

void TSPSimdFloat3CopyToPose3DMessage(uint64_t a1, const char *a2, __n128 a3)
{
  v4 = TSPCGFloatToFloat(a3.n128_f32[1], a1, a2);
  *(a1 + 16) |= 1u;
  *(a1 + 24) = v4;
  v7 = TSPCGFloatToFloat(a3.n128_f32[0], v5, v6);
  *(a1 + 16) |= 2u;
  *(a1 + 28) = v7;
  v10 = TSPCGFloatToFloat(a3.n128_f32[2], v8, v9);
  *(a1 + 16) |= 4u;
  *(a1 + 32) = v10;
}

double TSPCGRectFromMessage(const Rect *a1)
{
  v1 = &TSP::_Point_default_instance_;
  if (a1[3])
  {
    v1 = a1[3];
  }

  result = *(v1 + 6);
  v3 = *(v1 + 7);
  v4 = &TSP::_Size_default_instance_;
  if (a1[4])
  {
    v4 = a1[4];
  }

  v5 = *(v4 + 6);
  v6 = *(v4 + 7);
  return result;
}

void TSPCGRectCopyToMessage(CGRect a1, TSP::Rect **a2, const char *a3)
{
  v3 = a2;
  height = a1.size.height;
  width = a1.size.width;
  y = a1.origin.y;
  x = a1.origin.x;
  *(a2 + 4) |= 1u;
  v8 = a2[3];
  if (!v8)
  {
    v9 = a2[1];
    if (v9)
    {
      v9 = *(v9 & 0xFFFFFFFFFFFFFFFELL);
    }

    a2 = google::protobuf::Arena::CreateMaybeMessage<TSP::Point>(v9);
    v8 = a2;
    *(v3 + 3) = a2;
  }

  v10 = TSPCGFloatToFloat(x, a2, a3);
  *(v8 + 4) |= 1u;
  *(v8 + 6) = v10;
  v15 = TSPCGFloatToFloat(y, v11, v12);
  *(v8 + 4) |= 2u;
  *(v8 + 7) = v15;
  *(v3 + 4) |= 2u;
  v16 = *(v3 + 4);
  if (!v16)
  {
    v17 = *(v3 + 1);
    if (v17)
    {
      v17 = *(v17 & 0xFFFFFFFFFFFFFFFELL);
    }

    v13 = google::protobuf::Arena::CreateMaybeMessage<TSP::Size>(v17);
    v16 = v13;
    *(v3 + 4) = v13;
  }

  v18 = TSPCGFloatToFloat(width, v13, v14);
  *(v16 + 16) |= 1u;
  *(v16 + 24) = v18;
  v21 = TSPCGFloatToFloat(height, v19, v20);
  *(v16 + 16) |= 2u;
  *(v16 + 28) = v21;
}

void TSPCGSizeCopyToMessage(CGSize a1, TSP::Size *a2, const char *a3)
{
  height = a1.height;
  v5 = TSPCGFloatToFloat(a1.width, a2, a3);
  *(a2 + 4) |= 1u;
  *(a2 + 6) = v5;
  v8 = TSPCGFloatToFloat(height, v6, v7);
  *(a2 + 4) |= 2u;
  *(a2 + 7) = v8;
}

uint64_t TSPTSUColorCreateFromMessage(const TSP::Color *a1)
{
  v16[1] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 15);
  switch(v2)
  {
    case 3:
      v3 = &v14.f64[1];
      DeviceGray = CGColorSpaceCreateDeviceGray();
      v14.f64[0] = *(a1 + 13);
      break;
    case 2:
      v3 = v16;
      DeviceGray = CGColorSpaceCreateDeviceCMYK();
      v7 = vcvtq_f64_f32(*(a1 + 44));
      v14 = vcvtq_f64_f32(*(a1 + 36));
      v15 = v7;
      break;
    case 1:
      v3 = &v15.f64[1];
      if ((*(a1 + 17) & 1) == 0 || (v4 = *(a1 + 14), v4 == 1))
      {
        DeviceGray = TSUSRGBColorSpace();
        v5 = 0;
      }

      else
      {
        if (v4 != 2)
        {
          DeviceGray = 0;
          v5 = 0;
LABEL_15:
          v14 = vcvtq_f64_f32(*(a1 + 24));
          v15.f64[0] = *(a1 + 8);
          goto LABEL_16;
        }

        v5 = 1;
        DeviceGray = TSUP3ColorSpace();
      }

      if (DeviceGray)
      {
        CFRetain(DeviceGray);
      }

      goto LABEL_15;
    default:
LABEL_19:
      v11 = 0;
      goto LABEL_20;
  }

  v5 = 2;
LABEL_16:
  *v3 = *(a1 + 16);
  if (!DeviceGray)
  {
    goto LABEL_19;
  }

  v8 = CGColorCreate(DeviceGray, v14.f64);
  CFRelease(DeviceGray);
  if (!v8)
  {
    goto LABEL_19;
  }

  v9 = objc_alloc(MEMORY[0x277D81180]);
  v11 = objc_msgSend_initWithCGColor_colorSpace_(v9, v10, v8, v5, *&v14.f64[0]);
  CFRelease(v8);
LABEL_20:
  v12 = *MEMORY[0x277D85DE8];
  return v11;
}

void TSPTSUColorCopyToMessage(TSUColor *a1, TSP::Color *a2)
{
  v3 = a1;
  v237 = v3;
  if (!v3)
  {
    v6 = MEMORY[0x277D81150];
    v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "void TSPTSUColorCopyToMessage(TSUColor *__strong _Nonnull, TSP::Color &)");
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPArchivingUtility.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v10, v7, v9, 166, 0, "invalid nil value for '%{public}s'", "color");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v11, v12);
    v3 = 0;
  }

  v13 = objc_msgSend_CGColor(v3, v4, v5);
  ColorSpace = CGColorGetColorSpace(v13);
  if (CGColorSpaceGetModel(ColorSpace) < kCGColorSpaceModelLab)
  {
    v27 = v237;
  }

  else
  {
    v17 = MEMORY[0x277D81150];
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "void TSPTSUColorCopyToMessage(TSUColor *__strong _Nonnull, TSP::Color &)");
    v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPArchivingUtility.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v17, v21, v18, v20, 172, 0, "Asked to archive a CGColor that we can't handle. Falling back to archiving black.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v22, v23);
    v26 = objc_msgSend_blackColor(MEMORY[0x277D81180], v24, v25);

    v27 = v26;
  }

  v238 = v27;
  v28 = objc_msgSend_CGColor(v27, v15, v16);
  NumberOfComponents = CGColorGetNumberOfComponents(v28);
  Components = CGColorGetComponents(v28);
  v31 = CGColorGetColorSpace(v28);
  v34 = objc_msgSend_colorRGBSpace(v238, v32, v33);
  if (v34 == 1)
  {
    v43 = 2;
  }

  else
  {
    if (v34 == 2)
    {
      v36 = MEMORY[0x277D81150];
      v37 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v35, "void TSPTSUColorCopyToMessage(TSUColor *__strong _Nonnull, TSP::Color &)");
      v39 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v38, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPArchivingUtility.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v36, v40, v37, v39, 193, 0, "Color should be converted to RGB by the time it is archived!");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v41, v42);
    }

    v43 = 1;
  }

  Model = CGColorSpaceGetModel(v31);
  if (Model > kCGColorSpaceModelRGB)
  {
    if (Model != kCGColorSpaceModelCMYK)
    {
      if ((Model - 3) >= 5)
      {
        goto LABEL_90;
      }

LABEL_88:
      TSUSetCrashReporterInfo();
      v74 = MEMORY[0x277D81150];
      v76 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v75, "void TSPTSUColorCopyToMessage(TSUColor *__strong _Nonnull, TSP::Color &)", "void TSPTSUColorCopyToMessage(TSUColor *__strong _Nonnull, TSP::Color &)", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPArchivingUtility.mm", 241);
      v78 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v77, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPArchivingUtility.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v74, v79, v76, v78, 241, 1, "Fallback logic above should replace any colors with models that we can't archive.");

      TSUCrashBreakpoint();
      abort();
    }

    *(a2 + 4) |= 0x200u;
    *(a2 + 15) = 2;
    v55 = *Components;
    if ((*Components & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      goto LABEL_47;
    }

    if (v55 > 0.0 && v55 > 3.40282347e38)
    {
      v88 = MEMORY[0x277D81150];
      v89 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v45, "void TSPTSUColorCopyToMessage(TSUColor *__strong _Nonnull, TSP::Color &)");
      v91 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v90, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPArchivingUtility.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v88, v92, v89, v91, 216, 0, "Out-of-bounds type assignment was clamped to max");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v93, v94);
      v95 = 2139095039;
    }

    else
    {
      if (v55 >= 0.0 || v55 >= -3.40282347e38)
      {
LABEL_47:
        v56 = v55;
        goto LABEL_48;
      }

      v151 = MEMORY[0x277D81150];
      v152 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v45, "void TSPTSUColorCopyToMessage(TSUColor *__strong _Nonnull, TSP::Color &)");
      v154 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v153, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPArchivingUtility.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v151, v155, v152, v154, 216, 0, "Out-of-bounds type assignment was clamped to min");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v156, v157);
      v95 = -8388609;
    }

    v56 = *&v95;
LABEL_48:
    *(a2 + 4) |= 8u;
    *(a2 + 9) = v56;
    v57 = Components[1];
    if ((*&v57 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
    {
      if (v57 > 0.0 && v57 > 3.40282347e38)
      {
        v104 = MEMORY[0x277D81150];
        v105 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v45, "void TSPTSUColorCopyToMessage(TSUColor *__strong _Nonnull, TSP::Color &)");
        v107 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v106, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPArchivingUtility.mm");
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v104, v108, v105, v107, 217, 0, "Out-of-bounds type assignment was clamped to max");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v109, v110);
        v111 = 2139095039;
      }

      else
      {
        if (v57 >= 0.0 || v57 >= -3.40282347e38)
        {
          goto LABEL_53;
        }

        v165 = MEMORY[0x277D81150];
        v166 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v45, "void TSPTSUColorCopyToMessage(TSUColor *__strong _Nonnull, TSP::Color &)");
        v168 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v167, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPArchivingUtility.mm");
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v165, v169, v166, v168, 217, 0, "Out-of-bounds type assignment was clamped to min");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v170, v171);
        v111 = -8388609;
      }

      v58 = *&v111;
LABEL_54:
      *(a2 + 4) |= 0x10u;
      *(a2 + 10) = v58;
      v59 = Components[2];
      if ((*&v59 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
      {
        if (v59 > 0.0 && v59 > 3.40282347e38)
        {
          v120 = MEMORY[0x277D81150];
          v121 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v45, "void TSPTSUColorCopyToMessage(TSUColor *__strong _Nonnull, TSP::Color &)");
          v123 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v122, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPArchivingUtility.mm");
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v120, v124, v121, v123, 218, 0, "Out-of-bounds type assignment was clamped to max");

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v125, v126);
          v127 = 2139095039;
        }

        else
        {
          if (v59 >= 0.0 || v59 >= -3.40282347e38)
          {
            goto LABEL_59;
          }

          v179 = MEMORY[0x277D81150];
          v180 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v45, "void TSPTSUColorCopyToMessage(TSUColor *__strong _Nonnull, TSP::Color &)");
          v182 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v181, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPArchivingUtility.mm");
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v179, v183, v180, v182, 218, 0, "Out-of-bounds type assignment was clamped to min");

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v184, v185);
          v127 = -8388609;
        }

        v60 = *&v127;
LABEL_60:
        *(a2 + 4) |= 0x20u;
        *(a2 + 11) = v60;
        v61 = Components[3];
        if ((*&v61 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
        {
          if (v61 > 0.0 && v61 > 3.40282347e38)
          {
            v136 = MEMORY[0x277D81150];
            v137 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v45, "void TSPTSUColorCopyToMessage(TSUColor *__strong _Nonnull, TSP::Color &)");
            v139 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v138, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPArchivingUtility.mm");
            objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v136, v140, v137, v139, 219, 0, "Out-of-bounds type assignment was clamped to max");

            objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v141, v142);
            v143 = 2139095039;
          }

          else
          {
            if (v61 >= 0.0 || v61 >= -3.40282347e38)
            {
              goto LABEL_65;
            }

            v193 = MEMORY[0x277D81150];
            v194 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v45, "void TSPTSUColorCopyToMessage(TSUColor *__strong _Nonnull, TSP::Color &)");
            v196 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v195, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPArchivingUtility.mm");
            objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v193, v197, v194, v196, 219, 0, "Out-of-bounds type assignment was clamped to min");

            objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v198, v199);
            v143 = -8388609;
          }

          v62 = *&v143;
          goto LABEL_66;
        }

LABEL_65:
        v62 = v61;
LABEL_66:
        *(a2 + 4) |= 0x40u;
        *(a2 + 12) = v62;
        if (NumberOfComponents < 5)
        {
          goto LABEL_90;
        }

        v63 = Components[4];
        if ((*&v63 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
        {
          goto LABEL_85;
        }

        if (v63 <= 0.0 || v63 <= 3.40282347e38)
        {
          if (v63 >= 0.0 || v63 >= -3.40282347e38)
          {
            goto LABEL_85;
          }

          v64 = MEMORY[0x277D81150];
          v65 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v45, "void TSPTSUColorCopyToMessage(TSUColor *__strong _Nonnull, TSP::Color &)");
          v67 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v66, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPArchivingUtility.mm");
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v64, v68, v65, v67, 221, 0, "Out-of-bounds type assignment was clamped to min");

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v69, v70);
LABEL_122:
          v222 = -8388609;
          goto LABEL_123;
        }

        v215 = MEMORY[0x277D81150];
        v216 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v45, "void TSPTSUColorCopyToMessage(TSUColor *__strong _Nonnull, TSP::Color &)");
        v218 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v217, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPArchivingUtility.mm");
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v215, v219, v216, v218, 221, 0, "Out-of-bounds type assignment was clamped to max");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v220, v221);
LABEL_120:
        v222 = 2139095039;
LABEL_123:
        v73 = *&v222;
        goto LABEL_86;
      }

LABEL_59:
      v60 = v59;
      goto LABEL_60;
    }

LABEL_53:
    v58 = v57;
    goto LABEL_54;
  }

  switch(Model)
  {
    case kCGColorSpaceModelMonochrome:
      *(a2 + 4) |= 0x200u;
      *(a2 + 15) = 3;
      v71 = *Components;
      if ((*Components & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
      {
        if (v71 > 0.0 && v71 > 3.40282347e38)
        {
          v80 = MEMORY[0x277D81150];
          v81 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v45, "void TSPTSUColorCopyToMessage(TSUColor *__strong _Nonnull, TSP::Color &)");
          v83 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v82, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPArchivingUtility.mm");
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v80, v84, v81, v83, 228, 0, "Out-of-bounds type assignment was clamped to max");

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v85, v86);
          v87 = 2139095039;
        }

        else
        {
          if (v71 >= 0.0 || v71 >= -3.40282347e38)
          {
            goto LABEL_78;
          }

          v144 = MEMORY[0x277D81150];
          v145 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v45, "void TSPTSUColorCopyToMessage(TSUColor *__strong _Nonnull, TSP::Color &)");
          v147 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v146, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPArchivingUtility.mm");
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v144, v148, v145, v147, 228, 0, "Out-of-bounds type assignment was clamped to min");

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v149, v150);
          v87 = -8388609;
        }

        v72 = *&v87;
        goto LABEL_79;
      }

LABEL_78:
      v72 = v71;
LABEL_79:
      *(a2 + 4) |= 0x80u;
      *(a2 + 13) = v72;
      if (NumberOfComponents < 2)
      {
        break;
      }

      v63 = Components[1];
      if ((*&v63 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        goto LABEL_85;
      }

      if (v63 <= 0.0 || v63 <= 3.40282347e38)
      {
        if (v63 >= 0.0 || v63 >= -3.40282347e38)
        {
LABEL_85:
          v73 = v63;
LABEL_86:
          *(a2 + 4) |= 0x400u;
          *(a2 + 16) = v73;
          break;
        }

        v223 = MEMORY[0x277D81150];
        v224 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v45, "void TSPTSUColorCopyToMessage(TSUColor *__strong _Nonnull, TSP::Color &)");
        v226 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v225, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPArchivingUtility.mm");
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v223, v227, v224, v226, 230, 0, "Out-of-bounds type assignment was clamped to min");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v228, v229);
        goto LABEL_122;
      }

      v200 = MEMORY[0x277D81150];
      v201 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v45, "void TSPTSUColorCopyToMessage(TSUColor *__strong _Nonnull, TSP::Color &)");
      v203 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v202, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPArchivingUtility.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v200, v204, v201, v203, 230, 0, "Out-of-bounds type assignment was clamped to max");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v205, v206);
      goto LABEL_120;
    case kCGColorSpaceModelRGB:
      *(a2 + 4) |= 0x200u;
      *(a2 + 15) = 1;
      v46 = *Components;
      if ((*Components & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
      {
        if (v46 > 0.0 && v46 > 3.40282347e38)
        {
          v96 = MEMORY[0x277D81150];
          v97 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v45, "void TSPTSUColorCopyToMessage(TSUColor *__strong _Nonnull, TSP::Color &)");
          v99 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v98, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPArchivingUtility.mm");
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v96, v100, v97, v99, 203, 0, "Out-of-bounds type assignment was clamped to max");

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v101, v102);
          v103 = 2139095039;
        }

        else
        {
          if (v46 >= 0.0 || v46 >= -3.40282347e38)
          {
            goto LABEL_19;
          }

          v158 = MEMORY[0x277D81150];
          v159 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v45, "void TSPTSUColorCopyToMessage(TSUColor *__strong _Nonnull, TSP::Color &)");
          v161 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v160, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPArchivingUtility.mm");
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v158, v162, v159, v161, 203, 0, "Out-of-bounds type assignment was clamped to min");

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v163, v164);
          v103 = -8388609;
        }

        v47 = *&v103;
LABEL_20:
        *(a2 + 4) |= 1u;
        *(a2 + 6) = v47;
        v48 = Components[1];
        if ((*&v48 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
        {
          if (v48 > 0.0 && v48 > 3.40282347e38)
          {
            v112 = MEMORY[0x277D81150];
            v113 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v45, "void TSPTSUColorCopyToMessage(TSUColor *__strong _Nonnull, TSP::Color &)");
            v115 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v114, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPArchivingUtility.mm");
            objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v112, v116, v113, v115, 204, 0, "Out-of-bounds type assignment was clamped to max");

            objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v117, v118);
            v119 = 2139095039;
          }

          else
          {
            if (v48 >= 0.0 || v48 >= -3.40282347e38)
            {
              goto LABEL_25;
            }

            v172 = MEMORY[0x277D81150];
            v173 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v45, "void TSPTSUColorCopyToMessage(TSUColor *__strong _Nonnull, TSP::Color &)");
            v175 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v174, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPArchivingUtility.mm");
            objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v172, v176, v173, v175, 204, 0, "Out-of-bounds type assignment was clamped to min");

            objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v177, v178);
            v119 = -8388609;
          }

          v49 = *&v119;
LABEL_26:
          *(a2 + 4) |= 2u;
          *(a2 + 7) = v49;
          v50 = Components[2];
          if ((*&v50 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
          {
            if (v50 > 0.0 && v50 > 3.40282347e38)
            {
              v128 = MEMORY[0x277D81150];
              v129 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v45, "void TSPTSUColorCopyToMessage(TSUColor *__strong _Nonnull, TSP::Color &)");
              v131 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v130, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPArchivingUtility.mm");
              objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v128, v132, v129, v131, 205, 0, "Out-of-bounds type assignment was clamped to max");

              objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v133, v134);
              v135 = 2139095039;
            }

            else
            {
              if (v50 >= 0.0 || v50 >= -3.40282347e38)
              {
                goto LABEL_31;
              }

              v186 = MEMORY[0x277D81150];
              v187 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v45, "void TSPTSUColorCopyToMessage(TSUColor *__strong _Nonnull, TSP::Color &)");
              v189 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v188, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPArchivingUtility.mm");
              objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v186, v190, v187, v189, 205, 0, "Out-of-bounds type assignment was clamped to min");

              objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v191, v192);
              v135 = -8388609;
            }

            v51 = *&v135;
LABEL_32:
            v52 = *(a2 + 4) | 4;
            *(a2 + 4) = v52;
            *(a2 + 8) = v51;
            if (NumberOfComponents < 4)
            {
LABEL_40:
              *(a2 + 4) = v52 | 0x100;
              *(a2 + 14) = v43;
              break;
            }

            v53 = Components[3];
            if ((*&v53 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
            {
              goto LABEL_38;
            }

            if (v53 > 0.0 && v53 > 3.40282347e38)
            {
              v207 = MEMORY[0x277D81150];
              v208 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v45, "void TSPTSUColorCopyToMessage(TSUColor *__strong _Nonnull, TSP::Color &)");
              v210 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v209, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPArchivingUtility.mm");
              objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v207, v211, v208, v210, 207, 0, "Out-of-bounds type assignment was clamped to max");

              objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v212, v213);
              v214 = 2139095039;
            }

            else
            {
              if (v53 >= 0.0 || v53 >= -3.40282347e38)
              {
LABEL_38:
                v54 = v53;
LABEL_39:
                v52 = *(a2 + 4) | 0x400;
                *(a2 + 4) = v52;
                *(a2 + 16) = v54;
                goto LABEL_40;
              }

              v230 = MEMORY[0x277D81150];
              v231 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v45, "void TSPTSUColorCopyToMessage(TSUColor *__strong _Nonnull, TSP::Color &)");
              v233 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v232, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPArchivingUtility.mm");
              objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v230, v234, v231, v233, 207, 0, "Out-of-bounds type assignment was clamped to min");

              objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v235, v236);
              v214 = -8388609;
            }

            v54 = *&v214;
            goto LABEL_39;
          }

LABEL_31:
          v51 = v50;
          goto LABEL_32;
        }

LABEL_25:
        v49 = v48;
        goto LABEL_26;
      }

LABEL_19:
      v47 = v46;
      goto LABEL_20;
    case kCGColorSpaceModelUnknown:
      goto LABEL_88;
  }

LABEL_90:
}

CGPath *TSPCGPathCreateFromMessage(const TSP::Path *a1)
{
  Mutable = CGPathCreateMutable();
  v3 = *(a1 + 6);
  if (v3)
  {
    v4 = 0;
    while (1)
    {
      TSP::Path_Element::Path_Element(v42, *(*(a1 + 4) + 8 * v4 + 8));
      if (v45 > 2)
      {
        if (v45 == 3)
        {
          v7 = v43;
          if (v43 != 2)
          {
            v10 = MEMORY[0x277D81150];
            v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "CGPathRef TSPCGPathCreateFromMessage(const TSP::Path &)");
            v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPArchivingUtility.mm");
            objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v14, v11, v13, 286, 0, "Asked to unarchive a quadCurve element with the wrong number of elements (%u). Dropping the point.", v7);

            objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v15, v16);
            goto LABEL_20;
          }

          TSP::Point::Point(v41, v44[1]);
          TSP::Point::Point(v40, v44[2]);
          CGPathAddQuadCurveToPointSafe();
        }

        else
        {
          if (v45 != 4)
          {
            if (v45 == 5)
            {
              CGPathCloseSubpath(Mutable);
            }

            goto LABEL_20;
          }

          v8 = v43;
          if (v43 != 3)
          {
            v17 = MEMORY[0x277D81150];
            v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "CGPathRef TSPCGPathCreateFromMessage(const TSP::Path &)");
            v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPArchivingUtility.mm");
            objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v17, v21, v18, v20, 299, 0, "Asked to unarchive a curveto element with the wrong number of elements (%u). Dropping the point.", v8);

            objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v22, v23);
            goto LABEL_20;
          }

          TSP::Point::Point(v41, v44[1]);
          TSP::Point::Point(v40, v44[2]);
          TSP::Point::Point(v39, v44[3]);
          CGPathAddCurveToPointSafe();
          TSP::Point::~Point(v39);
        }

        TSP::Point::~Point(v40);
        goto LABEL_19;
      }

      if (v45 == 1)
      {
        break;
      }

      if (v45 == 2)
      {
        v6 = v43;
        if (v43 != 1)
        {
          v31 = MEMORY[0x277D81150];
          v32 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "CGPathRef TSPCGPathCreateFromMessage(const TSP::Path &)");
          v34 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v33, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPArchivingUtility.mm");
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v31, v35, v32, v34, 274, 0, "Asked to unarchive a lineTo element with the wrong number of elements (%u). Dropping the point.", v6);

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v36, v37);
          goto LABEL_20;
        }

        TSP::Point::Point(v41, v44[1]);
        CGPathAddLineToPointSafe();
LABEL_19:
        TSP::Point::~Point(v41);
      }

LABEL_20:
      TSP::Path_Element::~Path_Element(v42);
      if (v3 == ++v4)
      {
        return Mutable;
      }
    }

    v9 = v43;
    if (v43 != 1)
    {
      v24 = MEMORY[0x277D81150];
      v25 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "CGPathRef TSPCGPathCreateFromMessage(const TSP::Path &)");
      v27 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v26, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPArchivingUtility.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v24, v28, v25, v27, 263, 0, "Asked to unarchive a moveTo element with the wrong number of elements (%u). Dropping the point.", v9);

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v29, v30);
      goto LABEL_20;
    }

    TSP::Point::Point(v41, v44[1]);
    CGPathMoveToPointSafe();
    goto LABEL_19;
  }

  return Mutable;
}

void sub_2769C38FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v12 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  TSP::Point::~Point(va);
  TSP::Path_Element::~Path_Element(va1);
  _Unwind_Resume(a1);
}

void sub_2769C39BC(uint64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = *(a1 + 32);
  if (!v4)
  {
    v6 = *(a1 + 28);
LABEL_6:
    google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 16), v6 + 1);
    v4 = *(v3 + 32);
    v6 = *v4;
    goto LABEL_7;
  }

  v5 = *(a1 + 24);
  v6 = *v4;
  if (v5 < *v4)
  {
    *(a1 + 24) = v5 + 1;
    v7 = *&v4[2 * v5 + 2];
    goto LABEL_8;
  }

  if (v6 == *(a1 + 28))
  {
    goto LABEL_6;
  }

LABEL_7:
  *v4 = v6 + 1;
  a1 = google::protobuf::Arena::CreateMaybeMessage<TSP::Path_Element>(*(v3 + 16));
  v7 = a1;
  v8 = *(v3 + 24);
  v9 = *(v3 + 32) + 8 * v8;
  *(v3 + 24) = v8 + 1;
  *(v9 + 8) = a1;
LABEL_8:
  v10 = *a2;
  if (*a2 <= 1)
  {
    if (v10)
    {
      if (v10 != 1)
      {
        return;
      }

      v11 = 2;
    }

    else
    {
      v11 = 1;
    }

    v12 = 1;
    goto LABEL_20;
  }

  switch(v10)
  {
    case 2:
      v11 = 3;
      v12 = 2;
LABEL_20:
      v13 = 0;
      *(v7 + 16) |= 1u;
      *(v7 + 48) = v11;
      v14 = 16 * v12;
      while (1)
      {
        v15 = *(v7 + 40);
        if (!v15)
        {
          break;
        }

        v16 = *(v7 + 32);
        v17 = *v15;
        if (v16 >= *v15)
        {
          if (v17 == *(v7 + 36))
          {
LABEL_26:
            google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v7 + 24), v17 + 1);
            v15 = *(v7 + 40);
            v17 = *v15;
          }

          *v15 = v17 + 1;
          a1 = google::protobuf::Arena::CreateMaybeMessage<TSP::Point>(*(v7 + 24));
          v18 = a1;
          v19 = *(v7 + 32);
          v20 = *(v7 + 40) + 8 * v19;
          *(v7 + 32) = v19 + 1;
          *(v20 + 8) = a1;
          goto LABEL_28;
        }

        *(v7 + 32) = v16 + 1;
        v18 = *&v15[2 * v16 + 2];
LABEL_28:
        v21 = (*(a2 + 8) + v13);
        v22 = v21[1];
        v23 = TSPCGFloatToFloat(*v21, a1, a2);
        *(v18 + 16) |= 1u;
        *(v18 + 24) = v23;
        v26 = TSPCGFloatToFloat(v22, v24, v25);
        *(v18 + 16) |= 2u;
        *(v18 + 28) = v26;
        v13 += 16;
        if (v14 == v13)
        {
          return;
        }
      }

      v17 = *(v7 + 36);
      goto LABEL_26;
    case 3:
      v11 = 4;
      v12 = 3;
      goto LABEL_20;
    case 4:
      *(v7 + 16) |= 1u;
      *(v7 + 48) = 5;
      break;
  }
}

uint64_t TSPCGSizeCreateFromMessage(uint64_t result)
{
  v1 = *(result + 28);
  *(result + 24);
  return result;
}

uint64_t TSPNSRangeFromMessage(uint64_t a1)
{
  v1 = *(a1 + 28);
  if (*(a1 + 24) == -1)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    return *(a1 + 24);
  }
}

uint64_t TSPNSUIntegerFromUInt32(uint64_t result)
{
  if (result == -1)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    return result;
  }
}

uint64_t TSPNSRangeCopyToMessage(_NSRange a1, TSP::Range *a2)
{
  length = a1.length;
  result = TSPUInt32FromNSUInteger(a1.location, a1.length);
  v6 = *(a2 + 4) | 1;
  *(a2 + 4) = v6;
  *(a2 + 6) = result;
  if (HIDWORD(length))
  {
    v7 = MEMORY[0x277D81150];
    length = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "void TSPNSRangeCopyToMessage(NSRange, TSP::Range &)");
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPArchivingUtility.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v10, length, v9, 387, 0, "Out-of-bounds type assignment was clamped to max");

    result = objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v11, v12);
    v6 = *(a2 + 4);
    LODWORD(length) = -1;
  }

  *(a2 + 4) = v6 | 2;
  *(a2 + 7) = length;
  return result;
}

unint64_t TSPUInt32FromNSUInteger(unint64_t result, const char *a2)
{
  if (result == 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0xFFFFFFFFLL;
  }

  if (HIDWORD(result))
  {
    v2 = MEMORY[0x277D81150];
    v3 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "uint32_t TSPUInt32FromNSUInteger(NSUInteger)");
    v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPArchivingUtility.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v2, v6, v3, v5, 391, 0, "Out-of-bounds type assignment was clamped to max");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v7, v8);
    return 0xFFFFFFFFLL;
  }

  return result;
}

void *TSPTSUUUIDCopyToRepeatedUint64Message(void *result, unsigned int *a2)
{
  v3 = *a2;
  v2 = a2[1];
  if (v3 == v2)
  {
    google::protobuf::RepeatedField<unsigned long long>::Reserve();
  }

  v4 = *(a2 + 1);
  *(v4 + 8 * v3) = *result;
  *a2 = v3 + 1;
  if (v3 + 1 == v2)
  {
    google::protobuf::RepeatedField<unsigned long long>::Reserve();
  }

  *(v4 + 8 * (v3 + 1)) = result[1];
  *a2 = v3 + 2;
  return result;
}

void sub_2769C3F64(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

id sub_2769C3F80(objc_class *a1, uint64_t a2, uint64_t a3)
{
  v4 = [a1 alloc];
  v6 = objc_msgSend_tsp_initWithProtobufString_(v4, v5, a3);

  return v6;
}

uint64_t sub_2769C3FBC(void *a1, const char *a2, uint64_t a3)
{
  v3 = *(a3 + 23);
  if ((v3 & 0x80u) == 0)
  {
    return objc_msgSend_initWithBytes_length_encoding_(a1, a2, a3, v3, 4);
  }

  else
  {
    return objc_msgSend_initWithBytes_length_encoding_(a1, a2, *a3, *(a3 + 8), 4);
  }
}

uint64_t sub_2769C3FDC(void *a1)
{
  v1 = a1;

  return objc_msgSend_UTF8String(v1, v2, v3);
}

void sub_2769C4004(void *a1)
{
  v1 = a1;
  objc_msgSend_UTF8String(v1, v2, v3);

  JUMPOUT(0x277C9F450);
}

void sub_2769C4044(void *a1, uint64_t a2, uint64_t a3)
{
  v25 = *MEMORY[0x277D85DE8];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v4 = a1;
  v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v5, &v20, v24, 16);
  if (v8)
  {
    v9 = *v21;
    do
    {
      v10 = 0;
      do
      {
        if (*v21 != v9)
        {
          objc_enumerationMutation(v4);
        }

        v11 = *(*(&v20 + 1) + 8 * v10);
        v12 = *(a3 + 16);
        if (!v12)
        {
          v14 = *(a3 + 12);
LABEL_11:
          google::protobuf::internal::RepeatedPtrFieldBase::Reserve(a3, v14 + 1);
          v12 = *(a3 + 16);
          v14 = *v12;
          goto LABEL_12;
        }

        v13 = *(a3 + 8);
        v14 = *v12;
        if (v13 < *v12)
        {
          *(a3 + 8) = v13 + 1;
          v15 = *&v12[2 * v13 + 2];
          goto LABEL_13;
        }

        if (v14 == *(a3 + 12))
        {
          goto LABEL_11;
        }

LABEL_12:
        *v12 = v14 + 1;
        v15 = sub_2769C64F4(*a3);
        v16 = *(a3 + 8);
        v17 = *(a3 + 16) + 8 * v16;
        *(a3 + 8) = v16 + 1;
        *(v17 + 8) = v15;
LABEL_13:
        v18 = objc_msgSend_tsp_protobufString(v11, v6, v7, v20);
        MEMORY[0x277C9F450](v15, v18);
        ++v10;
      }

      while (v8 != v10);
      v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v6, &v20, v24, 16);
    }

    while (v8);
  }

  v19 = *MEMORY[0x277D85DE8];
}

uint64_t sub_2769C41E8(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 8);
  v6 = objc_alloc(MEMORY[0x277CBEB18]);
  v9 = objc_msgSend_initWithCapacity_(v6, v7, v5);
  if (v5 >= 1)
  {
    v10 = 8;
    do
    {
      v11 = objc_msgSend_tsp_stringWithProtobufString_(MEMORY[0x277CCACA8], v8, *(*(a3 + 16) + v10));
      objc_msgSend_addObject_(v9, v12, v11);

      v10 += 8;
      --v5;
    }

    while (v5);
  }

  v13 = a1;
  v15 = objc_msgSend_initWithArray_(v13, v14, v9);

  return v15;
}

void sub_2769C42D0(void *a1, uint64_t a2, void *a3)
{
  v23 = *MEMORY[0x277D85DE8];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v4 = a1;
  v6 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v5, &v18, v22, 16);
  if (v6)
  {
    v7 = *v19;
    do
    {
      v8 = 0;
      do
      {
        if (*v19 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v18 + 1) + 8 * v8);
        v10 = a3[2];
        if (!v10)
        {
          v12 = *(a3 + 3);
LABEL_11:
          google::protobuf::internal::RepeatedPtrFieldBase::Reserve(a3, v12 + 1);
          v10 = a3[2];
          v12 = *v10;
          goto LABEL_12;
        }

        v11 = *(a3 + 2);
        v12 = *v10;
        if (v11 < *v10)
        {
          *(a3 + 2) = v11 + 1;
          v13 = *&v10[2 * v11 + 2];
          goto LABEL_13;
        }

        if (v12 == *(a3 + 3))
        {
          goto LABEL_11;
        }

LABEL_12:
        *v10 = v12 + 1;
        v13 = google::protobuf::Arena::CreateMaybeMessage<TSP::Color>(*a3);
        v14 = *(a3 + 2);
        v15 = a3[2] + 8 * v14;
        *(a3 + 2) = v14 + 1;
        *(v15 + 8) = v13;
LABEL_13:
        TSPTSUColorCopyToMessage(v9, v13);
        ++v8;
      }

      while (v6 != v8);
      v6 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v16, &v18, v22, 16);
    }

    while (v6);
  }

  v17 = *MEMORY[0x277D85DE8];
}

uint64_t sub_2769C4468(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 8);
  v6 = objc_alloc(MEMORY[0x277CBEB18]);
  v8 = objc_msgSend_initWithCapacity_(v6, v7, v5);
  if (v5 >= 1)
  {
    v9 = 8;
    do
    {
      v10 = objc_alloc(MEMORY[0x277D81180]);
      v12 = objc_msgSend_initWithMessage_(v10, v11, *(*(a3 + 16) + v9));
      objc_msgSend_addObject_(v8, v13, v12);

      v9 += 8;
      --v5;
    }

    while (v5);
  }

  v14 = a1;
  v16 = objc_msgSend_initWithArray_(v14, v15, v8);

  return v16;
}

void sub_2769C4550(void *a1, uint64_t a2, unsigned int *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = a1;
  v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v5, &v14, v18, 16);
  if (v8)
  {
    v9 = *v15;
    do
    {
      v10 = 0;
      do
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v4);
        }

        v11 = objc_msgSend_unsignedIntValue(*(*(&v14 + 1) + 8 * v10), v6, v7, v14);
        v12 = *a3;
        if (v12 == a3[1])
        {
          google::protobuf::RepeatedField<unsigned int>::Reserve();
        }

        *(*(a3 + 1) + 4 * v12) = v11;
        *a3 = v12 + 1;
        ++v10;
      }

      while (v8 != v10);
      v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v6, &v14, v18, 16);
    }

    while (v8);
  }

  v13 = *MEMORY[0x277D85DE8];
}

uint64_t sub_2769C46AC(void *a1, uint64_t a2, int *a3)
{
  v5 = *a3;
  v6 = objc_alloc(MEMORY[0x277CBEB18]);
  v9 = objc_msgSend_initWithCapacity_(v6, v7, v5);
  if (v5 >= 1)
  {
    v10 = 0;
    v11 = 4 * v5;
    do
    {
      v12 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x277CCABB0], v8, *(*(a3 + 1) + v10));
      objc_msgSend_addObject_(v9, v13, v12);
      v10 += 4;
    }

    while (v11 != v10);
  }

  v14 = a1;
  v16 = objc_msgSend_initWithArray_(v14, v15, v9);

  return v16;
}

void sub_2769C4798(void *a1, uint64_t a2, unsigned int *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = a1;
  v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v5, &v14, v18, 16);
  if (v8)
  {
    v9 = *v15;
    do
    {
      v10 = 0;
      do
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v4);
        }

        objc_msgSend_doubleValue(*(*(&v14 + 1) + 8 * v10), v6, v7, v14);
        v12 = *a3;
        if (v12 == a3[1])
        {
          google::protobuf::RepeatedField<double>::Reserve();
        }

        *(*(a3 + 1) + 8 * v12) = v11;
        *a3 = v12 + 1;
        ++v10;
      }

      while (v8 != v10);
      v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v6, &v14, v18, 16);
    }

    while (v8);
  }

  v13 = *MEMORY[0x277D85DE8];
}

uint64_t sub_2769C48F4(void *a1, uint64_t a2, int *a3)
{
  v5 = *a3;
  v6 = objc_alloc(MEMORY[0x277CBEB18]);
  v10 = objc_msgSend_initWithCapacity_(v6, v7, v5);
  if (v5 >= 1)
  {
    v11 = 0;
    v12 = 8 * v5;
    do
    {
      v13 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v8, v9, *(*(a3 + 1) + v11));
      objc_msgSend_addObject_(v10, v14, v13);

      v11 += 8;
    }

    while (v12 != v11);
  }

  v15 = a1;
  v17 = objc_msgSend_initWithArray_(v15, v16, v10);

  return v17;
}

void sub_2769C49E0(void *a1, uint64_t a2, void *a3)
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
        v11 = a3[2];
        if (!v11)
        {
          v13 = *(a3 + 3);
LABEL_11:
          google::protobuf::internal::RepeatedPtrFieldBase::Reserve(a3, v13 + 1);
          v11 = a3[2];
          v13 = *v11;
          goto LABEL_12;
        }

        v12 = *(a3 + 2);
        v13 = *v11;
        if (v12 < *v11)
        {
          *(a3 + 2) = v12 + 1;
          objc_msgSend_tsp_saveToMessage_(v10, v6, *&v11[2 * v12 + 2], v19);
          goto LABEL_13;
        }

        if (v13 == *(a3 + 3))
        {
          goto LABEL_11;
        }

LABEL_12:
        *v11 = v13 + 1;
        v14 = google::protobuf::Arena::CreateMaybeMessage<TSP::UUID>(*a3);
        v15 = *(a3 + 2);
        v16 = a3[2] + 8 * v15;
        *(a3 + 2) = v15 + 1;
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

uint64_t sub_2769C4B78(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 8);
  v6 = objc_alloc(MEMORY[0x277CBEB18]);
  v8 = objc_msgSend_initWithCapacity_(v6, v7, v5);
  if (v5 >= 1)
  {
    v9 = 8;
    do
    {
      v10 = objc_alloc(MEMORY[0x277CCAD78]);
      v12 = objc_msgSend_tsp_initWithMessage_(v10, v11, *(*(a3 + 16) + v9));
      objc_msgSend_addObject_(v8, v13, v12);

      v9 += 8;
      --v5;
    }

    while (v5);
  }

  v14 = a1;
  v16 = objc_msgSend_initWithArray_(v14, v15, v8);

  return v16;
}

void sub_2769C4C60(void *a1, uint64_t a2, void *a3)
{
  v26 = *MEMORY[0x277D85DE8];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v4 = a1;
  v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v5, &v21, v25, 16);
  if (v8)
  {
    v9 = *v22;
    do
    {
      v10 = 0;
      do
      {
        if (*v22 != v9)
        {
          objc_enumerationMutation(v4);
        }

        v11 = objc_msgSend_rangeValue(*(*(&v21 + 1) + 8 * v10), v6, v7, v21);
        v13 = v12;
        v14 = a3[2];
        if (!v14)
        {
          v16 = *(a3 + 3);
LABEL_11:
          google::protobuf::internal::RepeatedPtrFieldBase::Reserve(a3, v16 + 1);
          v14 = a3[2];
          v16 = *v14;
          goto LABEL_12;
        }

        v15 = *(a3 + 2);
        v16 = *v14;
        if (v15 < *v14)
        {
          *(a3 + 2) = v15 + 1;
          v17 = *&v14[2 * v15 + 2];
          goto LABEL_13;
        }

        if (v16 == *(a3 + 3))
        {
          goto LABEL_11;
        }

LABEL_12:
        *v14 = v16 + 1;
        v17 = google::protobuf::Arena::CreateMaybeMessage<TSP::Range>(*a3);
        v18 = *(a3 + 2);
        v19 = a3[2] + 8 * v18;
        *(a3 + 2) = v18 + 1;
        *(v19 + 8) = v17;
LABEL_13:
        v27.location = v11;
        v27.length = v13;
        TSPNSRangeCopyToMessage(v27, v17);
        ++v10;
      }

      while (v8 != v10);
      v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v6, &v21, v25, 16);
    }

    while (v8);
  }

  v20 = *MEMORY[0x277D85DE8];
}

uint64_t sub_2769C4E08(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 8);
  v6 = objc_alloc(MEMORY[0x277CBEB18]);
  v9 = objc_msgSend_initWithCapacity_(v6, v7, v5);
  if (v5 >= 1)
  {
    v10 = 8;
    do
    {
      v11 = *(*(a3 + 16) + v10);
      v12 = *(v11 + 28);
      if (*(v11 + 24) == -1)
      {
        objc_msgSend_valueWithRange_(MEMORY[0x277CCAE60], v8, 0x7FFFFFFFFFFFFFFFLL, v12);
      }

      else
      {
        objc_msgSend_valueWithRange_(MEMORY[0x277CCAE60], v8, *(v11 + 24), v12);
      }
      v13 = ;
      objc_msgSend_addObject_(v9, v14, v13);

      v10 += 8;
      --v5;
    }

    while (v5);
  }

  v15 = a1;
  v17 = objc_msgSend_initWithArray_(v15, v16, v9);

  return v17;
}

void sub_2769C4F00(void *a1, uint64_t a2, uint64_t a3)
{
  v25 = *MEMORY[0x277D85DE8];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v4 = a1;
  v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v5, &v20, v24, 16);
  if (v8)
  {
    v9 = *v21;
    do
    {
      v10 = 0;
      do
      {
        if (*v21 != v9)
        {
          objc_enumerationMutation(v4);
        }

        v11 = *(*(&v20 + 1) + 8 * v10);
        v12 = *(a3 + 16);
        if (!v12)
        {
          v14 = *(a3 + 12);
LABEL_11:
          google::protobuf::internal::RepeatedPtrFieldBase::Reserve(a3, v14 + 1);
          v12 = *(a3 + 16);
          v14 = *v12;
          goto LABEL_12;
        }

        v13 = *(a3 + 8);
        v14 = *v12;
        if (v13 < *v12)
        {
          *(a3 + 8) = v13 + 1;
          v15 = *&v12[2 * v13 + 2];
          goto LABEL_13;
        }

        if (v14 == *(a3 + 12))
        {
          goto LABEL_11;
        }

LABEL_12:
        *v12 = v14 + 1;
        v15 = sub_2769C64F4(*a3);
        v16 = *(a3 + 8);
        v17 = *(a3 + 16) + 8 * v16;
        *(a3 + 8) = v16 + 1;
        *(v17 + 8) = v15;
LABEL_13:
        v18 = objc_msgSend_tsp_protobufString(v11, v6, v7, v20);
        MEMORY[0x277C9F450](v15, v18);
        ++v10;
      }

      while (v8 != v10);
      v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v6, &v20, v24, 16);
    }

    while (v8);
  }

  v19 = *MEMORY[0x277D85DE8];
}

uint64_t sub_2769C50A4(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 8);
  v6 = objc_alloc(MEMORY[0x277CBEB58]);
  v9 = objc_msgSend_initWithCapacity_(v6, v7, v5);
  if (v5 >= 1)
  {
    v10 = 8;
    do
    {
      v11 = objc_msgSend_tsp_stringWithProtobufString_(MEMORY[0x277CCACA8], v8, *(*(a3 + 16) + v10));
      objc_msgSend_addObject_(v9, v12, v11);

      v10 += 8;
      --v5;
    }

    while (v5);
  }

  v13 = a1;
  v15 = objc_msgSend_initWithSet_(v13, v14, v9);

  return v15;
}

uint64_t sub_2769C518C(void *a1, const char *a2, uint64_t a3)
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = sub_2769C51F8;
  v4[3] = &unk_27A6E32D0;
  v4[4] = a3;
  return objc_msgSend_enumerateRangesUsingBlock_(a1, a2, v4);
}

uint64_t sub_2769C51F8(uint64_t a1, _NSRange a2)
{
  length = a2.length;
  location = a2.location;
  v4 = *(a1 + 32);
  v5 = *(v4 + 32);
  if (!v5)
  {
    v7 = *(v4 + 28);
LABEL_6:
    google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v4 + 16), v7 + 1);
    v5 = *(v4 + 32);
    v7 = *v5;
    goto LABEL_7;
  }

  v6 = *(v4 + 24);
  v7 = *v5;
  if (v6 < *v5)
  {
    *(v4 + 24) = v6 + 1;
    v8 = *&v5[2 * v6 + 2];
    goto LABEL_8;
  }

  if (v7 == *(v4 + 28))
  {
    goto LABEL_6;
  }

LABEL_7:
  *v5 = v7 + 1;
  v8 = google::protobuf::Arena::CreateMaybeMessage<TSP::Range>(*(v4 + 16));
  v9 = *(v4 + 24);
  v10 = *(v4 + 32) + 8 * v9;
  *(v4 + 24) = v9 + 1;
  *(v10 + 8) = v8;
LABEL_8:
  v11.location = location;
  v11.length = length;

  return TSPNSRangeCopyToMessage(v11, v8);
}

uint64_t sub_2769C52C0(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = objc_alloc_init(MEMORY[0x277CCAB58]);
  v7 = *(a3 + 24);
  if (v7 >= 1)
  {
    v8 = 8;
    do
    {
      v9 = *(*(a3 + 32) + v8);
      v10 = *(v9 + 28);
      if (*(v9 + 24) == -1)
      {
        objc_msgSend_addIndexesInRange_(v6, v5, 0x7FFFFFFFFFFFFFFFLL, v10);
      }

      else
      {
        objc_msgSend_addIndexesInRange_(v6, v5, *(v9 + 24), v10);
      }

      v8 += 8;
      --v7;
    }

    while (v7);
  }

  v11 = a1;
  v13 = objc_msgSend_initWithIndexSet_(v11, v12, v6);

  return v13;
}

void sub_2769C5380(void *a1, uint64_t a2, void *a3, void *a4)
{
  v27 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v7 = a1;
  v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v8, &v22, v26, 16);
  if (v10)
  {
    v11 = *v23;
    do
    {
      v12 = 0;
      do
      {
        if (*v23 != v11)
        {
          objc_enumerationMutation(v7);
        }

        v13 = *(*(&v22 + 1) + 8 * v12);
        v14 = a3[2];
        if (!v14)
        {
          v16 = *(a3 + 3);
LABEL_11:
          google::protobuf::internal::RepeatedPtrFieldBase::Reserve(a3, v16 + 1);
          v14 = a3[2];
          v16 = *v14;
          goto LABEL_12;
        }

        v15 = *(a3 + 2);
        v16 = *v14;
        if (v15 < *v14)
        {
          *(a3 + 2) = v15 + 1;
          objc_msgSend_setStrongReference_message_(v6, v9, v13, *&v14[2 * v15 + 2], v22);
          goto LABEL_13;
        }

        if (v16 == *(a3 + 3))
        {
          goto LABEL_11;
        }

LABEL_12:
        *v14 = v16 + 1;
        v17 = google::protobuf::Arena::CreateMaybeMessage<TSP::Reference>(*a3);
        v18 = *(a3 + 2);
        v19 = a3[2] + 8 * v18;
        *(a3 + 2) = v18 + 1;
        *(v19 + 8) = v17;
        objc_msgSend_setStrongReference_message_(v6, v20, v13, v17, v22);
LABEL_13:
        ++v12;
      }

      while (v10 != v12);
      v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v9, &v22, v26, 16);
    }

    while (v10);
  }

  v21 = *MEMORY[0x277D85DE8];
}

uint64_t sub_2769C5534(void *a1, int a2, TSP::Color *a3)
{
  v4 = TSPTSUColorCreateFromMessage(a3);

  return v4;
}

uint64_t sub_2769C5588(void *a1, const char *a2, uint64_t a3)
{
  result = objc_msgSend_timeIntervalSinceReferenceDate(a1, a2, a3);
  *(a3 + 16) |= 1u;
  *(a3 + 24) = v5;
  return result;
}

uint64_t sub_2769C55BC(void *a1, int a2, TSP::UUID *a3)
{
  TSP::UUIDData::UUIDData(&v9, a3);
  v8 = v9;
  v4 = a1;
  v6 = objc_msgSend_initWithUUIDBytes_(v4, v5, &v8);

  return v6;
}

void sub_2769C583C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, id a33)
{
  v35 = v33;

  _Block_object_dispose(&a24, 8);
  _Block_object_dispose(&a28, 8);

  _Unwind_Resume(a1);
}

uint64_t sub_2769C5890(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2769C58A8(void *a1, void *a2)
{
  v5 = a2;
  if (*(*(a1[5] + 8) + 24) == 1)
  {
    v4 = a1[4];
    if (v4)
    {
      (*(v4 + 16))(v4, v5, *(*(a1[6] + 8) + 40));
    }
  }

  else
  {
    objc_storeStrong((*(a1[6] + 8) + 40), a2);
    *(*(a1[5] + 8) + 24) = 1;
  }
}

void sub_2769C5964(void *a1, void *a2)
{
  v5 = a2;
  if (*(*(a1[5] + 8) + 24) == 1)
  {
    v4 = a1[4];
    if (v4)
    {
      (*(v4 + 16))(v4, *(*(a1[6] + 8) + 40), v5);
    }
  }

  else
  {
    objc_storeStrong((*(a1[6] + 8) + 40), a2);
    *(*(a1[5] + 8) + 24) = 1;
  }
}

void sub_2769C5BF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, id a33)
{
  v35 = v33;

  _Block_object_dispose(&a24, 8);
  _Block_object_dispose(&a28, 8);

  _Unwind_Resume(a1);
}

void sub_2769C5C44(void *a1, void *a2)
{
  v5 = a2;
  if (*(*(a1[5] + 8) + 24) == 1)
  {
    v4 = a1[4];
    if (v4)
    {
      (*(v4 + 16))(v4, v5, *(*(a1[6] + 8) + 40));
    }
  }

  else
  {
    objc_storeStrong((*(a1[6] + 8) + 40), a2);
    *(*(a1[5] + 8) + 24) = 1;
  }
}

void sub_2769C5D00(void *a1, void *a2)
{
  v5 = a2;
  if (*(*(a1[5] + 8) + 24) == 1)
  {
    v4 = a1[4];
    if (v4)
    {
      (*(v4 + 16))(v4, *(*(a1[6] + 8) + 40), v5);
    }
  }

  else
  {
    objc_storeStrong((*(a1[6] + 8) + 40), a2);
    *(*(a1[5] + 8) + 24) = 1;
  }
}

void sub_2769C5F94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, id a33)
{
  _Block_object_dispose(&a24, 8);
  _Block_object_dispose(&a28, 8);

  _Unwind_Resume(a1);
}

void sub_2769C5FE0(void *a1, void *a2)
{
  v5 = a2;
  if (*(*(a1[5] + 8) + 24) == 1)
  {
    v4 = a1[4];
    if (v4)
    {
      (*(v4 + 16))(v4, v5, *(*(a1[6] + 8) + 40));
    }
  }

  else
  {
    objc_storeStrong((*(a1[6] + 8) + 40), a2);
    *(*(a1[5] + 8) + 24) = 1;
  }
}

void sub_2769C609C(void *a1, void *a2)
{
  v5 = a2;
  if (*(*(a1[5] + 8) + 24) == 1)
  {
    v4 = a1[4];
    if (v4)
    {
      (*(v4 + 16))(v4, *(*(a1[6] + 8) + 40), v5);
    }
  }

  else
  {
    objc_storeStrong((*(a1[6] + 8) + 40), a2);
    *(*(a1[5] + 8) + 24) = 1;
  }
}

void sub_2769C6330(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, id a33)
{
  _Block_object_dispose(&a24, 8);
  _Block_object_dispose(&a28, 8);

  _Unwind_Resume(a1);
}

void sub_2769C637C(void *a1, void *a2)
{
  v5 = a2;
  if (*(*(a1[5] + 8) + 24) == 1)
  {
    v4 = a1[4];
    if (v4)
    {
      (*(v4 + 16))(v4, v5, *(*(a1[6] + 8) + 40));
    }
  }

  else
  {
    objc_storeStrong((*(a1[6] + 8) + 40), a2);
    *(*(a1[5] + 8) + 24) = 1;
  }
}

void sub_2769C6438(void *a1, void *a2)
{
  v5 = a2;
  if (*(*(a1[5] + 8) + 24) == 1)
  {
    v4 = a1[4];
    if (v4)
    {
      (*(v4 + 16))(v4, *(*(a1[6] + 8) + 40), v5);
    }
  }

  else
  {
    objc_storeStrong((*(a1[6] + 8) + 40), a2);
    *(*(a1[5] + 8) + 24) = 1;
  }
}

void *sub_2769C64F4(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  result = sub_2769C6538(a1, 0);
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  return result;
}

void *sub_2769C6538(google::protobuf::Arena *this, int a2)
{
  if (*(this + 24))
  {
    sub_276BD12A4(this);
    if (a2)
    {
      goto LABEL_3;
    }
  }

  else if (a2)
  {
LABEL_3:

    return google::protobuf::Arena::AllocateAlignedNoHook(this, 0x18uLL);
  }

  return google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(this, 0x18uLL, sub_2769C65C0);
}

void sub_2769C65C0(uint64_t a1)
{
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }
}

void *sub_2769C65D4(void *a1, void *a2)
{
  v3 = a2;
  v5 = v3;
  if (v3)
  {
    objc_msgSend_getUUIDBytes_(v3, v4, a1);
  }

  else
  {
    *a1 = 0;
    a1[1] = 0;
  }

  return a1;
}

void sub_2769C6874(_Unwind_Exception *a1)
{
  MEMORY[0x277C9F670](v4, 0x1081C40B6D36AFBLL);

  _Unwind_Resume(a1);
}

uint64_t sub_2769C7638(uint64_t result, uint64_t a2, _DWORD *a3)
{
  if ((*a3 & 0xFFFFFFFE) == 4)
  {
    v3 = *(*(result + 32) + 136);
    return (*(*(result + 40) + 16))(*(result + 40));
  }

  return result;
}

void sub_2769C7730(void *a1)
{
  v2 = a1[2];
  if (v2 && !*a1)
  {
    v3 = v2 + 2;
    v4 = *v2;
    if (v4 >= 1)
    {
      do
      {
        if (*v3)
        {
          v5 = sub_2769E22E8(*v3);
          MEMORY[0x277C9F670](v5, 0x1081C40B6D36AFBLL);
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

void sub_2769C7D8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id a22)
{
  _Block_object_dispose(&a17, 8);

  _Unwind_Resume(a1);
}

uint64_t sub_2769C7DC0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2769C7DD8(void *a1, void *a2)
{
  v21 = a2;
  v3 = objc_alloc(MEMORY[0x277D81320]);
  v5 = objc_msgSend_initWithURL_(v3, v4, v21);
  v6 = objc_alloc(MEMORY[0x277D811D0]);
  v9 = objc_msgSend_URL(v5, v7, v8);
  v11 = objc_msgSend_initForReadingURL_error_(v6, v10, v9, 0);

  if (v11)
  {
    v15 = a1[4];
    v14 = a1[5];
    v16 = objc_msgSend_URL(v5, v12, v13);
    v18 = objc_msgSend_dataFromReadChannel_filename_dataURL_canLink_(v15, v17, v11, v14, v16, 0);
    v19 = *(a1[6] + 8);
    v20 = *(v19 + 40);
    *(v19 + 40) = v18;
  }

  objc_msgSend_close(v11, v12, v13);
}

void sub_2769C80E0(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_msgSend_close(*(a1 + 32), v4, v5);
  v6 = *(a1 + 56);
  if (v6)
  {
    v7 = *(a1 + 48);
    if (v7)
    {
      v8[0] = MEMORY[0x277D85DD0];
      v8[1] = 3221225472;
      v8[2] = sub_2769C81C0;
      v8[3] = &unk_27A6E2C78;
      v10 = v6;
      v9 = v3;
      dispatch_async(v7, v8);
    }

    else
    {
      (v6)[2](v6, v3);
    }
  }
}

void sub_2769C82F4()
{
  v0 = TSULogCreateCategory();
  v1 = *MEMORY[0x277D81410];
  *MEMORY[0x277D81410] = v0;
}

void sub_2769C84E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

void sub_2769C8518(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_2769C8830(uint64_t a1, int a2, void *a3, void *a4)
{
  v12 = a3;
  v8 = a4;
  if (a2)
  {
    v9 = objc_msgSend_dataForExistingData_digest_hasValidatedDigestMatch_filename_temporaryDataStorageURL_(*(a1 + 32), v7, v12, v8, 1, *(a1 + 40), *(a1 + 48));

    v10 = v9;
  }

  else
  {
    v10 = v12;
  }

  v13 = v10;
  v11 = *(a1 + 56);
  if (v11)
  {
    (*(v11 + 16))(v11, v13);
  }
}

void sub_2769C88FC(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t a5, char a6)
{
  v11 = a3;
  v10 = a4;
  if (v11 && (a6 & 1) == 0)
  {
    objc_msgSend_removeFileAtURL_(*(a1 + 32), v9, *(a1 + 40));
  }

  (*(*(a1 + 48) + 16))();
}

void sub_2769C8D4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, void *a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, void *a26)
{
  _Block_object_dispose((v30 - 136), 8);

  _Unwind_Resume(a1);
}

void sub_2769C8DD0(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = atomic_load((*(*(a1 + 48) + 8) + 24));
  if (v5 && (v6 & 1) != 0)
  {
    applier[0] = MEMORY[0x277D85DD0];
    applier[1] = 3221225472;
    applier[2] = sub_2769C8F08;
    applier[3] = &unk_27A6E34A8;
    v10 = *(a1 + 56);
    v8 = *(a1 + 32);
    v9 = *(a1 + 40);
    if (!dispatch_data_apply(v5, applier))
    {
      atomic_store(0, (*(*(a1 + 48) + 8) + 24));
    }
  }

  if (a2 && close(*(a1 + 56)))
  {
    if (UnsafePointer != -1)
    {
      sub_276BD1304();
    }

    atomic_store(0, (*(*(a1 + 48) + 8) + 24));
  }
}

uint64_t sub_2769C8F08(uint64_t a1, int a2, int a3, void *__buf, size_t __nbyte)
{
  v6 = write(*(a1 + 48), __buf, __nbyte);
  if (v6 < 0)
  {
    if (UnsafePointer == -1)
    {
      return 0;
    }

    sub_276BD1340();
  }

  else
  {
    if (v6 == __nbyte)
    {
      return 1;
    }

    if (UnsafePointer == -1)
    {
      return 0;
    }

    sub_276BD132C();
  }

  return 0;
}

void sub_2769C8F94()
{
  v0 = TSULogCreateCategory();
  v1 = UnsafePointer;
  UnsafePointer = v0;
}

void sub_2769C8FD8()
{
  v0 = TSULogCreateCategory();
  v1 = UnsafePointer;
  UnsafePointer = v0;
}

void sub_2769C901C()
{
  v0 = TSULogCreateCategory();
  v1 = UnsafePointer;
  UnsafePointer = v0;
}

void sub_2769C9060(uint64_t a1, int a2, void *a3, void *a4, uint64_t a5)
{
  v9 = a3;
  v11 = a4;
  if (a2 && (v12 = atomic_load((*(*(a1 + 64) + 8) + 24)), (v12 & 1) != 0))
  {
    v13 = objc_autoreleasePoolPush();
    v25 = 0;
    v26 = &v25;
    v27 = 0x2020000000;
    v28 = 0;
    v14 = v9;
    v17 = v14;
    if (!v14 || objc_msgSend_needsDownload(v14, v15, v16))
    {
      v22[0] = MEMORY[0x277D85DD0];
      v22[1] = 3221225472;
      v22[2] = sub_2769C9284;
      v22[3] = &unk_27A6E34F8;
      v24 = &v25;
      v19 = *(a1 + 32);
      v23 = *(a1 + 40);
      v21 = objc_msgSend_dataForDigestImpl_documentResourceInfo_skipDocumentResourcesLookup_expectedLength_accessorBlock_(v19, v20, v11, 0, 0, a5, v22);

      v17 = v21;
    }

    if ((*(a1 + 72) & 1) == 0 && (v26[3] & 1) == 0 && v17)
    {
      objc_msgSend_removeFileAtURL_(*(a1 + 32), v18, *(a1 + 40));
    }

    (*(*(a1 + 56) + 16))(*(a1 + 56), 1, v17, v11);

    _Block_object_dispose(&v25, 8);
    objc_autoreleasePoolPop(v13);
  }

  else
  {
    if (UnsafePointer != -1)
    {
      sub_276BD1354();
    }

    objc_msgSend_removeFileAtURL_(*(a1 + 32), v10, *(a1 + 40));
    (*(*(a1 + 56) + 16))();
  }
}

void sub_2769C9248(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, ...)
{
  va_start(va, a7);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2769C9284(uint64_t a1, void *a2)
{
  v3 = a2;
  *(*(*(a1 + 40) + 8) + 24) = v3[2](v3, *(a1 + 32), 2);
}

void sub_2769C92FC()
{
  v0 = TSULogCreateCategory();
  v1 = UnsafePointer;
  UnsafePointer = v0;
}

void sub_2769C95C0(uint64_t a1, int a2, void *a3, void *a4, void *a5, uint64_t a6)
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  if (a2)
  {
    v14 = *(a1 + 48);
    if (v14)
    {
      if (v12)
      {
        v15 = v12;
      }

      else
      {
        v15 = MEMORY[0x277D85CC8];
      }

      (*(v14 + 16))(v14, 1, v15);
    }

    v16 = *(*(a1 + 32) + 8);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_2769C9740;
    block[3] = &unk_27A6E3570;
    v17 = v11;
    v18 = *(a1 + 32);
    v24 = v17;
    v25 = v18;
    v26 = v13;
    v29 = a6;
    v19 = *(a1 + 40);
    v21 = *(a1 + 56);
    v20 = *(a1 + 64);
    v27 = v19;
    v30 = v20;
    v28 = v21;
    dispatch_async(v16, block);
  }

  else if (v12)
  {
    v22 = *(a1 + 48);
    if (v22)
    {
      (*(v22 + 16))(v22, 0, v12);
    }
  }
}

void sub_2769C9740(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = *(a1 + 64);
    v3 = *(*(a1 + 64) + 16);

    v3();
  }

  else
  {
    v4 = objc_autoreleasePoolPush();
    v17 = 0;
    v18 = &v17;
    v19 = 0x2020000000;
    v20 = 0;
    v5 = *(a1 + 40);
    v6 = *(a1 + 48);
    v7 = *(a1 + 72);
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = sub_2769C98DC;
    v13[3] = &unk_27A6E3548;
    v14 = *(a1 + 56);
    v15 = &v17;
    v16 = *(a1 + 80);
    v9 = objc_msgSend_dataForDigestImpl_documentResourceInfo_skipDocumentResourcesLookup_expectedLength_accessorBlock_(v5, v8, v6, 0, 0, v7, v13);
    v10 = *(a1 + 48);
    v11 = *(a1 + 72);
    v12 = *(v18 + 24);
    (*(*(a1 + 64) + 16))();

    _Block_object_dispose(&v17, 8);
    objc_autoreleasePoolPop(v4);
  }
}

void sub_2769C98B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2769C98DC(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1[4];
  if (v4)
  {
    v5 = v3;
    *(*(a1[5] + 8) + 24) = (*(v3 + 2))(v3, v4, a1[6]);
    v3 = v5;
  }
}

void sub_2769C9C08(uint64_t a1, int a2, void *a3, void *a4, void *a5)
{
  v20 = a3;
  v10 = a4;
  v13 = a5;
  if (a2)
  {
    objc_msgSend_close(*(a1 + 32), v11, v12);
  }

  v14 = *(*(a1 + 48) + 8);
  v16 = *(v14 + 40);
  v15 = (v14 + 40);
  if (!v16)
  {
    objc_storeStrong(v15, a3);
    v17 = *(*(*(a1 + 48) + 8) + 40);
  }

  (*(*(a1 + 40) + 16))();
  if (a2)
  {
    v18 = *(*(a1 + 48) + 8);
    v19 = *(v18 + 40);
    *(v18 + 40) = 0;
  }
}

void sub_2769CA070(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v13 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, id);

  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v11 - 80), 8);

  _Unwind_Resume(a1);
}

void sub_2769CA0C8(void *a1, int a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  v9 = *(a1[5] + 8);
  v12 = *(v9 + 40);
  v10 = (v9 + 40);
  v11 = v12;
  if (!v8 || v11)
  {
    if (!v11)
    {
      if (v7)
      {
        size = dispatch_data_get_size(v7);
        if (size)
        {
          v15 = size;
          applier[0] = MEMORY[0x277D85DD0];
          applier[1] = 3221225472;
          applier[2] = sub_2769CA32C;
          applier[3] = &unk_27A6E35E8;
          applier[4] = a1[6];
          dispatch_data_apply(v7, applier);
          *(*(a1[7] + 8) + 24) += v15;
          if ((a2 & 1) == 0)
          {
            v16 = *(*(a1[7] + 8) + 24);
            (*(a1[4] + 16))();
            goto LABEL_15;
          }
        }

        else if ((a2 & 1) == 0)
        {
          goto LABEL_15;
        }
      }

      else if (!a2)
      {
        goto LABEL_15;
      }

      v17 = [TSPDigest alloc];
      v19 = objc_msgSend_initFromSHA1Context_(v17, v18, *(*(a1[6] + 8) + 24));
      free(*(*(a1[6] + 8) + 24));
      v20 = *(*(a1[7] + 8) + 24);
      (*(a1[4] + 16))();
    }
  }

  else
  {
    objc_storeStrong(v10, a4);
    if (*MEMORY[0x277D81408] != -1)
    {
      sub_276BD1368();
    }

    free(*(*(a1[6] + 8) + 24));
    v13 = *(*(a1[5] + 8) + 40);
    (*(a1[4] + 16))();
  }

LABEL_15:
}

void sub_2769CA2E8()
{
  v0 = TSULogCreateCategory();
  v1 = *MEMORY[0x277D81410];
  *MEMORY[0x277D81410] = v0;
}

void sub_2769CA8BC(uint64_t a1, const char *a2)
{
  if ((*(*(*(a1 + 56) + 8) + 24) & 1) == 0)
  {
    v3 = objc_msgSend_temporaryDataStorageURLForFilename_(*(a1 + 32), a2, *(a1 + 40));
    v4 = *(*(a1 + 64) + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;

    v6 = *(a1 + 48);
    v7 = *(*(*(a1 + 64) + 8) + 40);
    v8 = *(*(a1 + 80) + 8);
    obj = *(v8 + 40);
    v10 = objc_msgSend_writeToURL_options_error_(v6, v9, v7, 0, &obj);
    objc_storeStrong((v8 + 40), obj);
    *(*(*(a1 + 72) + 8) + 24) = v10;
    *(*(*(a1 + 56) + 8) + 24) = 1;
  }
}

void sub_2769CA97C(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = objc_msgSend_length(*(a1 + 48), a2, a3);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = sub_2769CAA6C;
  v11[3] = &unk_27A6E3660;
  v12 = *(a1 + 56);
  v13 = *(a1 + 72);
  v14 = *(a1 + 88);
  v8 = objc_msgSend_dataForDigestImpl_documentResourceInfo_skipDocumentResourcesLookup_expectedLength_accessorBlock_(v4, v7, v5, 0, 0, v6, v11);
  v9 = *(*(a1 + 64) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;
}

void sub_2769CAA6C(void *a1, void *a2)
{
  v4 = a2;
  (*(a1[4] + 16))();
  if (*(*(a1[5] + 8) + 24) == 1)
  {
    v3 = *(*(a1[7] + 8) + 40);
    *(*(a1[6] + 8) + 24) = v4[2]();
  }

  else
  {
    v4[2]();
  }
}

void sub_2769CAB28()
{
  v0 = TSULogCreateCategory();
  v1 = *MEMORY[0x277D81410];
  *MEMORY[0x277D81410] = v0;
}

void sub_2769CB048(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, void *a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, id a30)
{
  _Block_object_dispose(&a25, 8);

  _Unwind_Resume(a1);
}

void sub_2769CB0C4(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v27 = objc_msgSend_digest(*(a1 + 40), a2, a3);
  v6 = objc_msgSend_dataForDigestImpl_documentResourceInfo_skipDocumentResourcesLookup_expectedLength_accessorBlock_(v4, v5, v27, 0, 0, 0, 0);
  v7 = *(*(a1 + 56) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  if (!*(*(*(a1 + 56) + 8) + 40))
  {
    v9 = *(a1 + 48);
    if (objc_opt_respondsToSelector())
    {
      v12 = *(a1 + 32);
      v28 = objc_msgSend_storageForDataCopyFromOtherContext(*(a1 + 48), v10, v11);
      v15 = objc_msgSend_digest(*(a1 + 40), v13, v14);
      v18 = objc_msgSend_filename(*(a1 + 40), v16, v17);
      hasValidatedDigestMatch_filename = objc_msgSend_addNewDataForStorage_digest_hasValidatedDigestMatch_filename_(v12, v19, v28, v15, 0, v18);
      v21 = *(*(a1 + 56) + 8);
      v22 = *(v21 + 40);
      *(v21 + 40) = hasValidatedDigestMatch_filename;

      v23 = *(*(*(a1 + 56) + 8) + 40);
      v29 = objc_msgSend_metadata(*(a1 + 40), v24, v25);
      objc_msgSend_setToCopyOfMetadataIfNil_(v23, v26, v29);
    }
  }
}

void sub_2769CB258(uint64_t a1, void *a2)
{
  v17 = a2;
  if (v17)
  {
    v5 = objc_msgSend_filename(*(a1 + 32), v3, v4);
    v7 = objc_msgSend_dataFromReadChannel_filename_context_(TSPData, v6, v17, v5, *(a1 + 40));
    v8 = *(*(a1 + 48) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;

    v10 = *(*(*(a1 + 48) + 8) + 40);
    v13 = objc_msgSend_metadata(*(a1 + 32), v11, v12);
    objc_msgSend_setToCopyOfMetadataIfNil_(v10, v14, v13);

    objc_msgSend_close(v17, v15, v16);
  }
}

void sub_2769CB4BC(uint64_t a1, const char *a2, uint64_t a3)
{
  v85 = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend_context(*(a1 + 32), a2, a3);
  v74 = v4;
  if (v4)
  {
    v71 = objc_msgSend_resourceContext(v4, v5, v6);
    v73 = objc_msgSend_documentResourceRegistry(v71, v7, v8);
    v81 = 0u;
    v82 = 0u;
    v83 = 1065353216;
    v80 = 0;
    if (*(a1 + 80) <= 0)
    {
      v9 = 0;
    }

    else
    {
      v9 = 0;
      p_cache = &OBJC_METACLASS___TSPLazyReferenceInternal.cache;
      do
      {
        v11 = objc_autoreleasePoolPush();
        v12 = *(*(*(a1 + 72) + 16) + 8 * v80 + 8);
        objc_msgSend_addIndex_(*(a1 + 40), v13, *(v12 + 112));
        v79 = 0;
        if ((objc_msgSend_ignoreDocumentResourcesWhileReading(v74, v14, v15) & 1) == 0)
        {
          v17 = [TSPDigest alloc];
          v19 = objc_msgSend_initFromProtobufString_(v17, v18, *(v12 + 24) & 0xFFFFFFFFFFFFFFFELL);
          v23 = objc_msgSend_digestString(v19, v20, v21);
          if ((*(v12 + 16) & 8) != 0)
          {
            v24 = objc_msgSend_tsp_stringWithProtobufString_(MEMORY[0x277CCACA8], v22, *(v12 + 48) & 0xFFFFFFFFFFFFFFFELL);
            v26 = objc_msgSend_documentResourceInfoForDigestString_locator_(v73, v25, v23, v24);
            v27 = v79;
            v79 = v26;

            if (!v79)
            {
              v72 = v9;
              v29 = p_cache;
              v30 = objc_msgSend_tsp_stringWithProtobufString_(MEMORY[0x277CCACA8], v28, *(v12 + 32) & 0xFFFFFFFFFFFFFFFELL);
              v31 = [TSPDocumentResourceInfo alloc];
              v34 = objc_msgSend_tsu_normalizedFilenameExtension(v30, v32, v33);
              v79 = objc_msgSend_initWithDigestString_locator_fileExtension_fileSize_tags_pixelSize_fallbackColor_(v31, v35, v23, v24, v34, 0, 0, 0, *MEMORY[0x277CBF3A8], *(MEMORY[0x277CBF3A8] + 8));

              p_cache = v29;
              v9 = v72;
            }
          }

          else
          {
            objc_msgSend_documentResourceInfoForDigestString_locator_(v73, v22, v23, 0);
            v79 = v24 = v79;
          }
        }

        v36 = v79;
        if (v79)
        {
          if (!v9)
          {
            v37 = objc_opt_new();
            v36 = v79;
            v9 = v37;
          }

          objc_msgSend_addDocumentResourceInfo_(v9, v16, v36);
          sub_2769D25A0(&v81, &v80);
        }

        else
        {
          objc_msgSend_addDataFromPackage_packageURL_dataInfo_packageMetadata_documentResourceInfo_areExternalReferencesAllowed_(*(a1 + 32), v16, *(a1 + 48), *(a1 + 56), v12, *(a1 + 64), 0, *(a1 + 84));
        }

        objc_autoreleasePoolPop(v11);
        ++v80;
      }

      while (v80 < *(a1 + 80));
      if (v9)
      {
        v40 = objc_msgSend_resourceRequests(v71, v38, v39);
        v41 = objc_alloc_init(MEMORY[0x277CBEB58]);
        v77 = 0u;
        v78 = 0u;
        v75 = 0u;
        v76 = 0u;
        v42 = v40;
        v46 = objc_msgSend_countByEnumeratingWithState_objects_count_(v42, v43, &v75, v84, 16);
        if (v46)
        {
          v47 = *v76;
          do
          {
            v48 = 0;
            do
            {
              if (*v76 != v47)
              {
                objc_enumerationMutation(v42);
              }

              v49 = objc_msgSend_tags(*(*(&v75 + 1) + 8 * v48), v44, v45);
              objc_msgSend_unionSet_(v41, v50, v49);

              ++v48;
            }

            while (v46 != v48);
            v46 = objc_msgSend_countByEnumeratingWithState_objects_count_(v42, v44, &v75, v84, 16);
          }

          while (v46);
        }

        v52 = objc_msgSend_minimumTagsWithPreferredTags_(v9, v51, v41);
        v55 = objc_msgSend_mutableCopy(v52, v53, v54);

        objc_msgSend_minusSet_(v55, v56, v41);
        if (objc_msgSend_count(v55, v57, v58))
        {
          v61 = objc_msgSend_sharedManager(TSPResourceRequestManager, v59, v60);
          ResourceRequestForTags_resourceContext = objc_msgSend_createResourceRequestForTags_resourceContext_(v61, v62, v55, v71);

          if (ResourceRequestForTags_resourceContext)
          {
            v65 = objc_msgSend_setWithObject_(MEMORY[0x277CBEB98], v64, ResourceRequestForTags_resourceContext);
            objc_msgSend_addResourceRequests_(v71, v66, v65);
          }
        }
      }
    }

    for (i = v82; i; i = *i)
    {
      v68 = objc_autoreleasePoolPush();
      objc_msgSend_addDataFromPackage_packageURL_dataInfo_packageMetadata_documentResourceInfo_areExternalReferencesAllowed_(*(a1 + 32), v69, *(a1 + 48), *(a1 + 56), *(*(*(a1 + 72) + 16) + 8 * *(i + 4) + 8), *(a1 + 64), i[3], *(a1 + 84));
      objc_autoreleasePoolPop(v68);
    }

    sub_2769ABBE4(&v81);
    v4 = v74;
  }

  v70 = *MEMORY[0x277D85DE8];
}

void sub_2769CB940(_Unwind_Exception *a1, void *a2, uint64_t a3, void *a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);

  sub_2769ABBE4(va);
  _Unwind_Resume(a1);
}

void sub_2769CBB7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, void *a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2769CBBB4(uint64_t a1, void *a2, BOOL *a3)
{
  v5 = a2;
  v6 = objc_autoreleasePoolPush();
  if ((objc_msgSend_hasNewStorageForData_(*(a1 + 32), v7, v5) & 1) == 0)
  {
    v10 = objc_msgSend_storage(v5, v8, v9);
    if (objc_msgSend_isInPackage_(v10, v11, *(a1 + 40)))
    {
      v13 = *(a1 + 48);
      v24 = 0;
      v14 = objc_msgSend_prepareTemporaryDataStorageForData_temporaryDataStorage_(v13, v12, v5, &v24);
      v15 = v24;
      v17 = v15;
      *(*(*(a1 + 56) + 8) + 24) = v14;
      v18 = *(*(*(a1 + 56) + 8) + 24);
      if (v18 == 1 && v15 != 0)
      {
        objc_msgSend_addNewStorage_forData_(*(a1 + 32), v16, v15, v5);
        LOBYTE(v18) = *(*(*(a1 + 56) + 8) + 24);
      }

      *a3 = (v18 & 1) == 0;
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) != 0 && (objc_msgSend_hasRemoteData_(*(a1 + 32), v20, v5) & 1) == 0)
      {
        objc_msgSend_willMigrateRemoteDataToTemporaryStorage_(*(a1 + 32), v21, v5);
        *(*(*(a1 + 56) + 8) + 24) = objc_msgSend_migrateToTemporaryDataStorageIfNeeded(v10, v22, v23);
        *a3 = *(*(*(a1 + 56) + 8) + 24) ^ 1;
      }
    }
  }

  objc_autoreleasePoolPop(v6);
}

void sub_2769CBE28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2769CBE4C(uint64_t *a1, void *a2, BOOL *a3)
{
  v5 = a2;
  v6 = objc_autoreleasePoolPush();
  v9 = objc_msgSend_storage(v5, v7, v8);
  if (objc_msgSend_isInPackage_(v9, v10, a1[4]))
  {
    v12 = a1[5];
    v22 = 0;
    v13 = objc_msgSend_prepareTemporaryDataStorageForData_temporaryDataStorage_(v12, v11, v5, &v22);
    v14 = v22;
    v16 = v14;
    *(*(a1[6] + 8) + 24) = v13;
    v17 = *(*(a1[6] + 8) + 24);
    if (v17 == 1 && v14 != 0)
    {
      objc_msgSend_setStorage_(v5, v15, v14);
      LOBYTE(v17) = *(*(a1[6] + 8) + 24);
    }

    *a3 = (v17 & 1) == 0;
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && objc_msgSend_isPartialDataInPackage_(v9, v19, a1[4]))
    {
      *(*(a1[6] + 8) + 24) = objc_msgSend_migrateToTemporaryDataStorageIfNeeded(v9, v20, v21);
      *a3 = *(*(a1[6] + 8) + 24) ^ 1;
    }
  }

  objc_autoreleasePoolPop(v6);
}

void sub_2769CC3E8(uint64_t a1, void *a2, void *a3)
{
  v46 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v40 = a3;
  if (*(a1 + 48))
  {
    v39 = objc_msgSend_storage(v5, v6, v7);
    v10 = objc_msgSend_packageIdentifier(v39, v8, v9);
    v13 = objc_msgSend_packageLocator(v39, v11, v12);
    v16 = objc_msgSend_packageIdentifier(v40, v14, v15);
    v19 = objc_msgSend_packageLocator(v40, v17, v18);
    v21 = v19;
    if (v10 != v16 || v13 != v19 && (objc_msgSend_isEqual_(v13, v20, v19) & 1) == 0)
    {
      v43 = 0u;
      v44 = 0u;
      v41 = 0u;
      v42 = 0u;
      v22 = *(a1 + 32);
      v25 = objc_msgSend_countByEnumeratingWithState_objects_count_(v22, v23, &v41, v45, 16);
      if (v25)
      {
        v26 = *v42;
        do
        {
          for (i = 0; i != v25; ++i)
          {
            if (*v42 != v26)
            {
              objc_enumerationMutation(v22);
            }

            objc_msgSend_data_didMoveFromPackageIdentifier_packageLocator_toPackageIdentifier_packageLocator_(*(*(&v41 + 1) + 8 * i), v24, v5, v10, v13, v16, v21);
          }

          v25 = objc_msgSend_countByEnumeratingWithState_objects_count_(v22, v24, &v41, v45, 16);
        }

        while (v25);
      }
    }
  }

  objc_msgSend_setStorage_(v5, v6, v40);
  v30 = objc_msgSend_documentProperties(*(a1 + 40), v28, v29);
  v33 = objc_msgSend_encryptionKey(*(a1 + 40), v31, v32);
  v36 = objc_msgSend_passphrase(v33, v34, v35);
  objc_msgSend_updateAnonymousUniqueIdentifierWithDocumentProperties_passphrase_(v5, v37, v30, v36);

  v38 = *MEMORY[0x277D85DE8];
}

void sub_2769CC680(uint64_t a1, void *a2)
{
  v45 = *MEMORY[0x277D85DE8];
  v3 = a2;
  objc_opt_class();
  v6 = objc_msgSend_storage(v3, v4, v5);
  v7 = TSUCheckedDynamicCast();

  if (v7)
  {
    v9 = objc_msgSend_saveOperationStateForRemoteStorage_(*(a1 + 32), v8, v7);
    if (v9)
    {
      v39 = v9;
      v38 = objc_msgSend_updatedPackageDataStorage(v9, v10, v11);
      if (*(a1 + 48))
      {
        v37 = objc_msgSend_originalPackageDataStorage(v39, v12, v13);
        v16 = objc_msgSend_packageIdentifier(v37, v14, v15);
        v19 = objc_msgSend_packageLocator(v37, v17, v18);
        v22 = objc_msgSend_packageIdentifier(v38, v20, v21);
        v25 = objc_msgSend_packageLocator(v38, v23, v24);
        v27 = v25;
        if (v16 != v22 || v19 != v25 && (objc_msgSend_isEqual_(v19, v26, v25) & 1) == 0)
        {
          v42 = 0u;
          v43 = 0u;
          v40 = 0u;
          v41 = 0u;
          v28 = *(a1 + 40);
          v31 = objc_msgSend_countByEnumeratingWithState_objects_count_(v28, v29, &v40, v44, 16);
          if (v31)
          {
            v32 = *v41;
            do
            {
              for (i = 0; i != v31; ++i)
              {
                if (*v41 != v32)
                {
                  objc_enumerationMutation(v28);
                }

                objc_msgSend_data_didMoveFromPackageIdentifier_packageLocator_toPackageIdentifier_packageLocator_(*(*(&v40 + 1) + 8 * i), v30, v3, v16, v19, v22, v27);
              }

              v31 = objc_msgSend_countByEnumeratingWithState_objects_count_(v28, v30, &v40, v44, 16);
            }

            while (v31);
          }
        }
      }

      if (v38)
      {
        v34 = objc_msgSend_changeCount(v39, v12, v13);
        objc_msgSend_didSaveWithChangeCount_packageDataStorage_(v7, v35, v34, v38);
      }
    }
  }

  v36 = *MEMORY[0x277D85DE8];
}

void sub_2769CD4D4()
{
  v0 = TSULogCreateCategory();
  v1 = *MEMORY[0x277D81410];
  *MEMORY[0x277D81410] = v0;
}

void sub_2769CD75C(uint64_t a1)
{
  v2 = objc_alloc(MEMORY[0x277CBEB18]);
  v4 = objc_msgSend_initWithCapacity_(v2, v3, *(*(a1 + 32) + 48));
  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  for (i = *(*(a1 + 32) + 40); i; i = *i)
  {
    WeakRetained = objc_loadWeakRetained(i + 3);
    if (WeakRetained)
    {
      objc_msgSend_addObject_(*(*(*(a1 + 40) + 8) + 40), v8, WeakRetained);
    }
  }
}

void sub_2769CD898(uint64_t a1)
{
  for (i = *(*(a1 + 32) + 40); i; i = *i)
  {
    WeakRetained = objc_loadWeakRetained(i + 3);
    v6 = WeakRetained;
    if (WeakRetained)
    {
      v7 = *(a1 + 40);
      v8 = objc_msgSend_identifier(WeakRetained, v4, v5);
      objc_msgSend_addIndex_(v7, v9, v8);
    }
  }
}

void sub_2769CDA00(uint64_t a1)
{
  v2 = objc_alloc(MEMORY[0x277CBEB38]);
  v4 = objc_msgSend_initWithCapacity_(v2, v3, *(*(a1 + 32) + 48));
  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  for (i = *(*(a1 + 32) + 40); i; i = *i)
  {
    WeakRetained = objc_loadWeakRetained(i + 3);
    if (WeakRetained)
    {
      v10 = *(*(*(a1 + 40) + 8) + 40);
      v11 = objc_msgSend_numberWithLongLong_(MEMORY[0x277CCABB0], v8, i[2]);
      objc_msgSend_setObject_forKeyedSubscript_(v10, v12, WeakRetained, v11);
    }
  }
}

void sub_2769CDBC8(uint64_t a1)
{
  v2 = objc_alloc(MEMORY[0x277CBEB38]);
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
      v12 = *(*(*(a1 + 40) + 8) + 40);
      v13 = objc_msgSend_digest(WeakRetained, v9, v10);
      objc_msgSend_setObject_forKeyedSubscript_(v12, v14, v11, v13);
    }
  }
}

void sub_2769CDD9C(uint64_t a1)
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
    if (WeakRetained && (objc_msgSend_isMaterialized(WeakRetained, v9, v10) & 1) == 0 && ((*(a1 + 48) & 1) != 0 || objc_msgSend_uploadStatus(v11, v12, v13) != 5) && ((*(a1 + 49) & 1) != 0 || objc_msgSend_isInDocument(v11, v12, v13)))
    {
      objc_msgSend_addObject_(*(*(*(a1 + 40) + 8) + 40), v12, v11);
    }
  }
}